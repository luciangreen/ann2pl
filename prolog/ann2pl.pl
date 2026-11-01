/*  ann2pl.pl -- read a pl2ann network back as a Prolog program with variables.

    pl2ann compiles every ground instance of every clause into one hidden unit. The
    prover (prover.pl, net_clauses/2) already decodes the units back into ground
    clauses from their weights alone. ann2pl takes the next step and LIFTS those
    ground clauses into rules with variables:

      1. types: the values seen at each argument position of each predicate's
         neurons (a typed domain, inferred from the network alone);
      2. groups: ground clauses with the same shape (head predicate, body
         predicates and polarity) belong together;
      3. lgg: each group is generalised by anti-unification (Plotkin's least
         general generalisation), aligning bodies with repeated predicates by
         the permutation that keeps most constants and shared variables;
      4. constraints: the lifted rule is grounded over the types and compared with
         the group. If it covers more, candidate constraints between its variables
         (X \= Y, X < Y, X =< Y, X is Y + C, X is Y * C, X is Y mod C) that every
         instance satisfies are added and then removed one by one while the
         grounding still equals the group (so only the needed ones stay);
      5. proof: the lifted program is checked with net_matches_program/4 against
         the same network, with the inferred types. Only a proved program is
         reported as lifted; a group that cannot be lifted stays ground, so the
         output is always exactly the network.

    ann2pl(+NetFile, -Program, -Report)
        Program: list of clauses; Report: report(Groups, Lifted, Ground, Proof)
*/
:- module(ann2pl, [ann2pl/3, write_program/2]).
:- use_module(library(lists)).
:- use_module(library(apply)).
:- use_module(library(yall)).
:- use_module(library(ordsets)).
:- use_module(prover).

ann2pl(NetFile, Program, report(NG, NL, NGr, Proof)) :-
    net_clauses(NetFile, Gs0),
    prover:net_module(NetFile, M),
    findall(A, M:neuron(out(A), output, _, _), Atoms),
    types(Atoms, Types),
    maplist([(H :- B), H-B]>>true, Gs0, Gs),
    group_by_shape(Gs, Groups), length(Groups, NG),
    maplist(lift_group(Types-Atoms), Groups, Lifted),
    aggregate_all(count, member(lifted(_), Lifted), NL),
    aggregate_all(count, member(ground(_), Lifted), NGr),
    findall(C, ( member(L, Lifted), ( L = lifted(Cs) ; L = ground(Cs) ), member(C, Cs) ), Program),
    domain_facts(Types, Dom),
    (   catch(net_matches_program(NetFile, Program, Dom, R), E, R = error(E)) -> Proof = R ; Proof = failed ).

% ---------------------------------------------------------------- types from the network
% Types = [P/A-I-Values]: the values seen at argument I of P/A
types(Atoms, Types) :-
    findall(K-I-V, ( member(A, Atoms), compound(A), functor(A, P, N), K = P/N, arg(I, A, V) ), T0),
    sort(T0, T1),
    findall(K-I-Vs, ( member(K-I-_, T1), findall(V, member(K-I-V, T1), Vs0), sort(Vs0, Vs) ), T2),
    sort(T2, Types).
domain_facts(Types, Dom) :-
    findall([domain(T, Vs), type(K, I, T)],
            ( member(K-I-Vs, Types), K = P/N, format(atom(T), 't_~w_~w_~w', [P, N, I]) ), L),
    append(L, Dom).

% ---------------------------------------------------------------- shapes
shape(H-B, s(KH, KB)) :- functor(H, P, N), KH = P/N, maplist(lit_key, B, KB0), msort(KB0, KB).
lit_key(\+ G, neg(K)) :- !, functor(G, P, N), K = P/N.
lit_key(G, pos(P/N)) :- functor(G, P, N).
group_by_shape(Gs, Groups) :-
    maplist([C, S-C]>>shape(C, S), Gs, SC), keysort(SC, Sorted),
    group_pairs_by_key(Sorted, Grouped), pairs_values(Grouped, Groups).

% ---------------------------------------------------------------- lifting one group
lift_group(_, [C], ground([Cl])) :- !, to_clause(C, Cl).
lift_group(Types-Atoms, Group, Result) :-
    Group = [First|Rest],
    sort_body(First, F1),
    foldl(lgg_clause, Rest, F1, Gen),
    (   Gen = (GH-GB), term_variables(GH-GB, Vars), Vars \== [],
        typed_vars(GH-GB, Types, VT),
        grounding_equals(GH-GB, VT, [], Group)
    ->  guard(Types, Atoms, Group, GH-GB, Gd), to_clause(Gd, Cl), Result = lifted([Cl])
    ;   Gen = (GH-GB), typed_vars(GH-GB, Types, VT),
        candidate_constraints(GH-GB, Group, Cands),
        grounding_equals(GH-GB, VT, Cands, Group),
        minimise(Cands, GH-GB, VT, Group, Needed)
    ->  executable(GH, GB, Needed, Body), guard(Types, Atoms, Group, GH-Body, Gd), to_clause(Gd, Cl), Result = lifted([Cl])
    ;   maplist(to_clause, Group, Cls), Result = ground(Cls)
    ).

% ---------------------------------------------------------------- type guards
% The lifted clause equals the group when each variable ranges over its inferred type. Run
% as plain Prolog, a variable ranges over every value instead, so a clause such as
% div4(A) :- num(A) (correct only for A in {4,8,12,16,20}) or the fact bird(A) would say
% more than the network. guard/5 finds the ground instances that plain Prolog would add
% (body atoms taken from the network's atoms, other variables from every constant) and,
% if there are any, adds member(V, Values) guards for the fewest variables that remove
% them. The guards hold for every typed value, so the proof is unchanged, and the printed
% program is correct on its own.
guard(Types, Atoms, Group, H-B, H-B1) :-
    findall(V, ( member(_-_-Vs, Types), member(V, Vs) ), C0), sort(C0, Consts),
    typed_vars(H-B, Types, VT),
    maplist(canon, Group, G0), sort(G0, GroupS),
    partition([G]>>( G \= (\+ _), \+ builtin(G) ), B, Pos, Others),
    % a variable that no positive literal binds ranges over every term in plain Prolog
    % (bird(A) says everything is a bird), so it is always guarded
    term_variables(Pos, PV), term_variables(H-B, All),
    exclude({PV}/[V]>>( member(W, PV), W == V ), All, Forced0),
    include({VT}/[V]>>( member(W-Vals, VT), W == V, Vals \== [] ), Forced0, Forced),
    length(PV, NP),
    (   between(0, NP, K), length(Gv0, K), subseq(Gv0, PV), append(Forced, Gv0, Gv),
        % (no findall here: it would copy the variables and cut them off from the clause)
        maplist({VT}/[V, V-Vals]>>( member(W-Vals, VT), W == V, ! ), Gv, Guards),
        \+ plain_extra(H-B, Guards, Consts, Atoms, GroupS)
    ->  maplist([V-Vals, member(V, Vals)]>>true, Guards, Gs)
    ;   Gs = []
    ),
    % a guard on a variable that X is E binds goes right after that goal (as a test); the
    % others go after the positive literals, before negations and constraints that use them
    partition({Others}/[member(V, _)]>>( member(O, Others), O = (X is _), X == V ), Gs, AfterIs, Early),
    foldl(place_after_is, AfterIs, Others, Others1),
    append([Pos, Early, Others1], B1).
place_after_is(member(V, Vals), L0, L) :-
    append(Pre, [O|Post], L0), O = (X is _), X == V, !, append(Pre, [O, member(V, Vals)|Post], L).
subseq([], _).
subseq([X|Xs], [X|Ys]) :- subseq(Xs, Ys).
subseq(Xs, [_|Ys]) :- subseq(Xs, Ys).

% a ground instance plain Prolog allows that is not one of the group's clauses
plain_extra(H-B, Guards, Consts, Atoms, GroupS) :-
    copy_term(H-B-Guards, H1-B1-G1),
    partition([G]>>( G \= (\+ _), \+ builtin(G) ), B1, Pos, Others),
    maplist({Atoms}/[L]>>member(L, Atoms), Pos),
    maplist([V-Vals]>>( var(V) -> member(V, Vals) ; memberchk(V, Vals) ), G1),
    term_variables(H1-Others, Free), maplist({Consts}/[V]>>member(V, Consts), Free),
    forall(( member(G, Others), builtin(G) ), holds(G)),
    exclude(builtin, B1, Lits), msort(Lits, BS),
    \+ ord_memberchk(H1-BS, GroupS).
builtin(G) :- prover:builtin(G).

to_clause(H-[], H) :- !.
to_clause(H-B, (H :- C)) :- list_conj(B, C).
list_conj([G], G) :- !.
list_conj([G|Gs], (G, C)) :- list_conj(Gs, C).

sort_body(H-B, H-B1) :- msort(B, B1).

% generalise the accumulated clause with the next ground clause, aligning the body by
% the permutation that yields the smallest generalisation (fewest new variables)
lgg_clause(C, Gen0, Gen) :-
    C = H-B, Gen0 = GH-GB,
    findall(NV-G, ( permutation(B, BP), same_shape(GB, BP),
                    lgg(GH-GB, H-BP, G, [], S1), length(S1, NV) ), Cands),
    keysort(Cands, [_-Gen|_]).
same_shape(A, B) :- maplist([X, Y]>>(lit_key(X, K), lit_key(Y, K)), A, B).

lgg(A, B, G, S0, S) :-
    (   A == B -> G = A, S = S0
    ;   compound(A), compound(B), A =.. [F|As], B =.. [F|Bs], same_length(As, Bs)
    ->  foldl([X, Y, Z, T0, T]>>lgg(X, Y, Z, T0, T), As, Bs, Gs, S0, S), G =.. [F|Gs]
    ;   member((A1-B1)-V, S0), A1 == A, B1 == B -> G = V, S = S0
    ;   S = [(A-B)-G|S0]
    ).

% each variable ranges over the intersection of the types of the positions it occupies
typed_vars(C, Types, VT) :-
    term_variables(C, Vs),
    C = H-B, lits(H, B, Ls),
    maplist({Ls, Types}/[V, V-Vals]>>var_type(V, Ls, Types, Vals), Vs, VT).
lits(H, B, [H|Ls]) :- maplist([G, L]>>( G = (\+ L) -> true ; L = G ), B, Ls).
var_type(V, Ls, Types, Vals) :-
    findall(Vs, ( member(L, Ls), compound(L), functor(L, P, N), arg(I, L, X), X == V,
                  memberchk(P/N-I-Vs, Types) ), Sets),
    (   Sets = [S1|Ss] -> foldl([S, A0, A]>>intersection(A0, S, A), Ss, S1, Vals)
    ;   Vals = []
    ).

% the grounding of the lifted clause, filtered by Constraints, equals the group exactly
grounding_equals(C, VT, Constraints, Group) :-
    findall(G, ( copy_term(C-VT-Constraints, G-VT1-Cs1),
                 maplist([V-Vals]>>member(V, Vals), VT1),
                 maplist(holds, Cs1) ), L0),
    maplist(canon, L0, L1), sort(L1, S1),
    maplist(canon, Group, L2), sort(L2, S2),
    S1 == S2.
canon(H-B, H-B1) :- msort(B, B1).
holds(C) :- catch(C, _, fail).

% candidate constraints: relations between two variables of the clause that hold in
% every ground instance of the group
candidate_constraints(Gen, Group, Cands) :-
    term_variables(Gen, Vs),
    % not findall/3: it would copy the relations and cut them off from Gen's variables
    foldl({Vs}/[X, A0, A]>>foldl({X}/[Y, B0, B]>>( X == Y -> B = B0
                                                 ; rels(X, Y, Rs), append(B0, Rs, B) ), Vs, A0, A),
          Vs, [], All),
    include({Gen, Group}/[R]>>holds_in_all(Gen, R, Group), All, Cands0),
    dedup(Cands0, Cands).
rels(X, Y, Rs) :- rels_list(X, Y, Rs).
rels_list(X, Y, [X \= Y, X @< Y, X < Y, X =< Y,
                 X =:= Y + -3, X =:= Y + -2, X =:= Y + -1, X =:= Y + 1, X =:= Y + 2, X =:= Y + 3,
                 X =:= Y * 2, X =:= Y * 3, X =:= Y * Y, X =:= Y mod 2, X =:= Y mod 3, X =:= Y // 2, X =:= Y // 3]).
rel(X, Y, X \= Y).
rel(X, Y, X @< Y).
rel(X, Y, X < Y).
rel(X, Y, X =< Y).
rel(X, Y, X =:= Y + C) :- member(C, [-3, -2, -1, 1, 2, 3]).
rel(X, Y, X =:= Y * C) :- member(C, [2, 3]).
rel(X, Y, X =:= Y mod C) :- member(C, [2, 3]).
rel(X, Y, X =:= Y // C) :- member(C, [2, 3]).
holds_in_all(Gen, R, Group) :-
    forall(member(G, Group),
           ( copy_term(Gen-R, GC-RC), canon(G, Gc), canon(GC, GCc),
             \+ \+ ( unify_aligned(GCc, Gc), holds(RC) ) )).
unify_aligned(H-B, H2-B2) :- H = H2, permutation(B, B2), !.
dedup([], []).
dedup([X|Xs], [X|Ys]) :- exclude(==(X), Xs, Xs1), dedup(Xs1, Ys).

% drop constraints one at a time while the grounding still equals the group
minimise(Cands, C, VT, Group, Needed) :-
    foldl({C, VT, Group}/[K, Keep0, Keep]>>(
              exclude(==(K), Keep0, Try),
              ( grounding_equals(C, VT, Try, Group) -> Keep = Try ; Keep = Keep0 )),
          Cands, Cands, Needed).

write_program(Stream, Program) :-
    forall(member(C, Program), ( copy_term(C, C1), numbervars(C1, 0, _), portray_clause(Stream, C1) )).

% order the clause so it runs left to right in Prolog: positive literals first, then
% each constraint once its inputs are bound; X =:= Y + C with X bound and Y not becomes
% Y is X - C (and X =:= Y * Y with only Y bound becomes X is Y * Y)
executable(_H, B, Cs, Body) :-
    partition([G]>>(G \= (\+ _)), B, Pos, Neg),
    term_variables(Pos, Bound0),
    order_constraints(Cs, Bound0, Ordered),
    append([Pos, Neg, Ordered], Body).
order_constraints([], _, []) :- !.
order_constraints(Cs, Bound, [C1|Rest]) :-
    (   select(C, Cs, Cs1), ready(C, Bound, C1)
    ->  term_variables(C1, V1), append(Bound, V1, Bound1), order_constraints(Cs1, Bound1, Rest)
    ;   Cs = [C1|Rest]
    ).
ready(C, Bound, C) :- term_variables(C, Vs), forall(member(V, Vs), (member(B, Bound), B == V)), !.
ready(X =:= Y + K, Bound, G) :- bound_in(X, Bound), \+ bound_in(Y, Bound), !, K1 is -K, plus_goal(Y, X, K1, G).
ready(X =:= Y + K, Bound, G) :- bound_in(Y, Bound), \+ bound_in(X, Bound), !, plus_goal(X, Y, K, G).
ready(X =:= E, Bound, X is E) :- \+ bound_in(X, Bound), term_variables(E, Vs), forall(member(V, Vs), bound_in(V, Bound)), !.
bound_in(V, Bound) :- member(B, Bound), B == V, !.

plus_goal(X, Y, K, X is Y + K) :- K >= 0, !.
plus_goal(X, Y, K, X is Y - K1) :- K1 is -K.
