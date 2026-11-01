/*  The printed program must be correct as plain Prolog, without the inferred types: its least
    model must equal the least model of the source program pl2ann compiled. (Before type guards
    were added, network 110 printed div4(A) :- num(A), which as plain Prolog says every number
    is divisible by 4.) Fixtures with a pl2ann domain file or bounded term depth are skipped,
    because their source program alone does not fix its grounding. Exits 1 on any difference. */
:- use_module('../prolog/ann2pl.pl').
:- use_module('../prolog/prover.pl', [least_model/3, read_program/2]).

main :-
    getenv('NETS_DIR', D),
    directory_files(D, Fs0), exclude([F]>>sub_atom(F, 0, 1, _, '.'), Fs0, Fs1), msort(Fs1, Ids),
    findall(Id-R, ( member(Id, Ids), check(D, Id, R), ( R = differ(_, _) -> format("~w ~q~n", [Id, R]) ; true ) ), Rs),
    aggregate_all(count, member(_-equal, Rs), E), aggregate_all(count, member(_-differ(_, _), Rs), X),
    aggregate_all(count, member(_-skipped(_), Rs), S),
    format("~d equal as plain Prolog, ~d differ, ~d skipped~n", [E, X, S]),
    ( X =:= 0 -> halt(0) ; halt(1) ).

check(D, Id, R) :-
    atomic_list_concat(['../fixtures/', Id, '/'], FD),
    atom_concat(FD, 'options.txt', OF), ( exists_file(OF) -> read_file_to_string(OF, Opts, []) ; Opts = "" ),
    atom_concat(FD, 'domain.pl', DF),
    (   exists_file(DF) -> R = skipped(domain)
    ;   sub_string(Opts, _, _, _, "term-depth") -> R = skipped(term_depth)
    ;   atom_concat(FD, 'src.pl', SF), read_program(SF, Src),
        atomic_list_concat([D, '/', Id, '/net.pl'], NF), ann2pl(NF, P, _),
        (   catch(call_with_time_limit(60, ( least_model(Src, [], M1), least_model(P, [], M2) )), E, ( R = skipped(E), true ))
        ->  ( var(R) -> ( ground(M1-M2), msort(M1, S1), msort(M2, S2), S1 == S2 -> R = equal
                         ; ord_subtract_safe(M1, M2, A), ord_subtract_safe(M2, M1, B), R = differ(only_source(A), only_printed(B)) )
            ; true )
        ;   R = skipped(no_model) )
    ).
ord_subtract_safe(X, Y, Z) :- msort(X, X1), msort(Y, Y1), ord_subtract(X1, Y1, Z).
