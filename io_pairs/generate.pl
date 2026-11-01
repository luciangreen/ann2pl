/*  generate.pl -- 200 input/output pairs for ann2pl, each produced by running the code:
    every fixture network (built by ./run_tests.sh into build/) read back as Prolog, then
    sigmoid builds (io_pairs/build_sigmoid.sh, into build_alt/) up to 200. From the root:
        swipl -q -g main -t halt io_pairs/generate.pl
    writes io_pairs/pairs.jsonl and io_pairs/io_pairs.md. */
:- prolog_load_context(directory, D), assertz(user:io_dir(D)), atom_concat(D, '/..', R0), absolute_file_name(R0, R), assertz(user:root(R)).
:- use_module(harness).
:- use_module(to_markdown).
:- use_module('../prolog/ann2pl.pl').
:- style_check(-singleton).

lift(Dir, Id) :-
    root(Root), atomic_list_concat([Root, '/', Dir, '/', Id, '/net.pl'], F),
    ann2pl(F, P, report(NG, NL, NGr, Proof)),
    format("% clause shapes read from the weights: ~w; lifted to rules: ~w; left ground: ~w~n", [NG, NL, NGr]),
    current_output(S), write_program(S, P),
    format("% proof that the program equals the network: ~q~n", [Proof]).

input(Id, Opts, T) :-
    root(Root), atomic_list_concat([Root, '/fixtures/', Id, '/'], D),
    atom_concat(D, 'src.pl', S), read_file_to_string(S, Src, []),
    atom_concat(D, 'domain.pl', Dm), ( exists_file(Dm) -> read_file_to_string(Dm, DT, []), format(string(DS), "~n% domain file:~n~s", [DT]) ; DS = "" ),
    format(string(T), "% pl2ann options: ~w~n% source program compiled by pl2ann:~n~s~s", [Opts, Src, DS]).
opts(Id, O) :- root(Root), atomic_list_concat([Root, '/fixtures/', Id, '/options.txt'], F),
    ( exists_file(F) -> read_file_to_string(F, O0, []), normalize_space(string(O1), O0) ; O1 = "" ),
    ( O1 == "" -> O = "(defaults: --mode step)" ; O = O1 ).

ids(Dir, Ids) :- root(Root), atomic_list_concat([Root, '/', Dir], P), directory_files(P, Fs0),
    exclude([F]>>sub_atom(F, 0, 1, _, '.'), Fs0, Fs1), msort(Fs1, Ids).

main :-
    set_limit(300),
    io_dir(IO), atom_concat(IO, '/pairs.jsonl', PF), open_pairs(PF),
    ids(build, Ids),
    forall(member(Id, Ids), ( opts(Id, O), input(Id, O, T), format(string(Q), "lift(build, '~w')", [Id]),
                              format(string(Ti), "Network ~w read back as Prolog with variables", [Id]), pair('ann2pl/lift', Ti, T, Q) )),
    length(Ids, N), Extra is 200 - N, ids(build_alt, Alt), length(Take, Extra), append(Take, _, Alt),
    forall(member(Id, Take), ( input(Id, "--mode sigmoid --weight auto", T), format(string(Q), "lift(build_alt, '~w')", [Id]),
                               format(string(Ti), "Network ~w compiled as a sigmoid network, read back as Prolog", [Id]),
                               pair('ann2pl/lift-sigmoid', Ti, T, Q) )),
    close_pairs,
    atom_concat(IO, '/io_pairs.md', MF),
    to_markdown(PF, MF, "ann2pl",
        "Each pair is a pl2ann network read back as Prolog with variables. The input is the source program pl2ann compiled (with its options and any domain file); the output is ann2pl's program and the proof that it equals the network, clause by clause. Every output was produced by running this repository's code with `io_pairs/generate.pl`; nothing was written by hand. The first 176 pairs are the fixture networks; the rest are fixtures rebuilt as sigmoid networks.").
