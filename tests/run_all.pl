/*  Lift every fixture network with ann2pl and require a proof that the lifted
    program equals the network. NETS_DIR holds <id>/net.pl built by run_tests.sh.
    Prints one line per network and a summary; exits 1 unless every network is proved. */
:- use_module('../prolog/ann2pl.pl').
main :-
    getenv('NETS_DIR', D),
    directory_files(D, Fs0), exclude([F]>>sub_atom(F, 0, 1, _, '.'), Fs0, Fs1), msort(Fs1, Fs),
    findall(F-R-NL-NG, ( member(F, Fs), atomic_list_concat([D, '/', F, '/net.pl'], NF), exists_file(NF),
                         ( catch(call_with_time_limit(600, ann2pl(NF, _, report(_, NL, NG, R))), E, (R = error(E), NL = 0, NG = 0)) -> true ; R = failed, NL = 0, NG = 0 ),
                         format("~w lifted_groups=~w ground_groups=~w ~w~n", [F, NL, NG, R]) ), Rs),
    length(Rs, N), aggregate_all(count, member(_-proved(_)-_-_, Rs), P),
    aggregate_all(sum(X), member(_-_-X-_, Rs), L), aggregate_all(sum(X), member(_-_-_-X, Rs), G),
    format("~d of ~d networks proved; ~d groups lifted to rules, ~d left ground~n", [P, N, L, G]),
    ( P =:= N -> halt(0) ; halt(1) ).
