# ann2pl: 200 input/output pairs

Each pair is a pl2ann network read back as Prolog with variables. The input is the source program pl2ann compiled (with its options and any domain file); the output is ann2pl's program and the proof that it equals the network, clause by clause. Every output was produced by running this repository's code with `io_pairs/generate.pl`; nothing was written by hand. The first 176 pairs are the fixture networks; the rest are fixtures rebuilt as sigmoid networks.

| Category | Pairs |
|---|---|
| `ann2pl/lift` | 176 |
| `ann2pl/lift-sigmoid` | 24 |

## 1. Network 001 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, b).
edge(b, a).
edge(c, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '001').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, b).
edge(b, a).
edge(c, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(39))
```

## 2. Network 002 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, d).
edge(c, d).
edge(d, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '002').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, d).
edge(c, d).
edge(d, b).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(83))
```

## 3. Network 003 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, e).
edge(a, f).
edge(b, d).
edge(c, b).
edge(e, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '003').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, e).
edge(a, f).
edge(b, d).
edge(c, b).
edge(e, b).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(257))
```

## 4. Network 004 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(b, d).
edge(b, f).
edge(c, d).
edge(c, f).
edge(f, d).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '004').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(b, d).
edge(b, f).
edge(c, d).
edge(c, f).
edge(f, d).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(85))
```

## 5. Network 005 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, c).
edge(a, d).
edge(b, a).
edge(b, c).
edge(d, a).
edge(e, a).
edge(e, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '005').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, c).
edge(a, d).
edge(b, a).
edge(b, c).
edge(d, a).
edge(e, a).
edge(e, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(157))
```

## 6. Network 006 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, c).
edge(b, d).
edge(c, b).
edge(d, c).
edge(e, b).
edge(e, c).
edge(e, d).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '006').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, c).
edge(b, d).
edge(c, b).
edge(d, c).
edge(e, b).
edge(e, c).
edge(e, d).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(157))
```

## 7. Network 007 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, e).
edge(b, c).
edge(b, d).
edge(e, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '007').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, e).
edge(b, c).
edge(b, d).
edge(e, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(154))
```

## 8. Network 008 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, b).
edge(b, d).
edge(b, e).
edge(c, a).
edge(d, a).
edge(e, a).
edge(e, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '008').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, b).
edge(b, d).
edge(b, e).
edge(c, a).
edge(d, a).
edge(e, a).
edge(e, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(157))
```

## 9. Network 009 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, d).
edge(b, a).
edge(c, b).
edge(d, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '009').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, d).
edge(b, a).
edge(c, b).
edge(d, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(84))
```

## 10. Network 010 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(b, a).
edge(b, c).
edge(c, d).
edge(d, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '010').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(b, a).
edge(b, c).
edge(c, d).
edge(d, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(84))
```

## 11. Network 011 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(b, a).
edge(c, b).
edge(d, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '011').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(b, a).
edge(c, b).
edge(d, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(83))
```

## 12. Network 012 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, d).
edge(c, d).
edge(e, a).
edge(f, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '012').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, d).
edge(c, d).
edge(e, a).
edge(f, b).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(256))
```

## 13. Network 013 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(b, a).
edge(c, a).
edge(d, a).
edge(d, e).
edge(e, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '013').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(b, a).
edge(c, a).
edge(d, a).
edge(d, e).
edge(e, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(155))
```

## 14. Network 014 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, f).
edge(b, f).
edge(c, e).
edge(c, f).
edge(f, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '014').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, f).
edge(b, f).
edge(c, e).
edge(c, f).
edge(f, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(155))
```

## 15. Network 015 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(b, c).
edge(c, a).
edge(c, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '015').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(b, c).
edge(c, a).
edge(c, b).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(39))
```

## 16. Network 016 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(b, e).
edge(c, a).
edge(c, b).
edge(c, f).
edge(d, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '016').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(b, e).
edge(c, a).
edge(c, b).
edge(c, f).
edge(d, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(257))
```

## 17. Network 017 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, b).
edge(a, c).
edge(b, c).
edge(d, a).
edge(d, b).
edge(d, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '017').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, b).
edge(a, c).
edge(b, c).
edge(d, a).
edge(d, b).
edge(d, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(86))
```

## 18. Network 018 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, c).
edge(a, d).
edge(c, e).
edge(d, b).
edge(e, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '018').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, c).
edge(a, d).
edge(c, e).
edge(d, b).
edge(e, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(155))
```

## 19. Network 019 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, b).
edge(b, a).
edge(b, c).
edge(c, a).
edge(c, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '019').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, b).
edge(b, a).
edge(b, c).
edge(c, a).
edge(c, b).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(41))
```

## 20. Network 020 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, b).
edge(b, d).
edge(c, a).
edge(d, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '020').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, b).
edge(b, d).
edge(c, a).
edge(d, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(84))
```

## 21. Network 021 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(b, c).
edge(b, d).
edge(b, e).
edge(c, b).
edge(c, f).
edge(d, e).
edge(f, a).
edge(f, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '021').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(b, c).
edge(b, d).
edge(b, e).
edge(c, b).
edge(c, f).
edge(d, e).
edge(f, a).
edge(f, b).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(260))
```

## 22. Network 022 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, e).
edge(b, a).
edge(c, b).
edge(c, f).
edge(d, c).
edge(d, e).
edge(d, f).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '022').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, e).
edge(b, a).
edge(c, b).
edge(c, f).
edge(d, c).
edge(d, e).
edge(d, f).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(259))
```

## 23. Network 023 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '023').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(13))
```

## 24. Network 024 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, c).
edge(c, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '024').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 3; left ground: 0
edge(A, B) :-
    member(A, [a, c]),
    member(B, [a, c]),
    B\=A.
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(14))
```

## 25. Network 025 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, d).
edge(b, c).
edge(c, b).
edge(c, d).
edge(d, a).
edge(d, b).
edge(d, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '025').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, d).
edge(b, c).
edge(c, b).
edge(c, d).
edge(d, a).
edge(d, b).
edge(d, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(87))
```

## 26. Network 026 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, e).
edge(b, e).
edge(d, a).
edge(e, d).
edge(f, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '026').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, e).
edge(b, e).
edge(d, a).
edge(e, d).
edge(f, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(257))
```

## 27. Network 027 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(b, d).
edge(b, f).
edge(c, e).
edge(c, f).
edge(d, e).
edge(f, e).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '027').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(b, d).
edge(b, f).
edge(c, e).
edge(c, f).
edge(d, e).
edge(f, e).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(156))
```

## 28. Network 028 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, d).
edge(c, d).
edge(d, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '028').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, d).
edge(c, d).
edge(d, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(39))
```

## 29. Network 029 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, c).
edge(b, a).
edge(b, c).
edge(c, a).
edge(c, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '029').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, c).
edge(b, a).
edge(b, c).
edge(c, a).
edge(c, b).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(41))
```

## 30. Network 030 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, c).
edge(a, d).
edge(c, b).
edge(e, b).
edge(e, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '030').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, c).
edge(a, d).
edge(c, b).
edge(e, b).
edge(e, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(155))
```

## 31. Network 031 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, d).
edge(b, a).
edge(c, b).
edge(e, d).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '031').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, d).
edge(b, a).
edge(c, b).
edge(e, d).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(154))
```

## 32. Network 032 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(c, d).
edge(d, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '032').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(c, d).
edge(d, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(38))
```

## 33. Network 033 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(b, d).
edge(c, a).
edge(c, f).
edge(e, f).
edge(f, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '033').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(b, d).
edge(c, a).
edge(c, f).
edge(e, f).
edge(f, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(257))
```

## 34. Network 034 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, b).
edge(a, d).
edge(b, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '034').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, b).
edge(a, d).
edge(b, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(39))
```

## 35. Network 035 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(b, a).
edge(c, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '035').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(b, a).
edge(c, b).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(38))
```

## 36. Network 036 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, b).
edge(b, c).
edge(d, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '036').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, b).
edge(b, c).
edge(d, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(83))
```

## 37. Network 037 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, d).
edge(c, d).
edge(d, a).
edge(d, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '037').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, d).
edge(c, d).
edge(d, a).
edge(d, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(40))
```

## 38. Network 038 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, b).
edge(b, e).
edge(c, e).
edge(e, f).
edge(f, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '038').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, b).
edge(b, e).
edge(c, e).
edge(e, f).
edge(f, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(155))
```

## 39. Network 039 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, b).
edge(c, a).
edge(c, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '039').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, b).
edge(c, a).
edge(c, b).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(39))
```

## 40. Network 040 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
edge(a, d).
edge(c, d).
edge(d, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '040').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, d).
edge(c, d).
edge(d, b).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(83))
```

## 41. Network 041 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(fay, dee).
parent(dee, cy).
parent(fay, ann).
parent(cy, ivy).
parent(dee, jo).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build, '041').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(cy, ivy).
parent(dee, cy).
parent(dee, jo).
parent(fay, ann).
parent(fay, dee).
% proof that the program equals the network: proved(same_ground_clauses(257))
```

## 42. Network 042 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(fay, ivy).
parent(ivy, gus).
parent(fay, ann).
parent(fay, jo).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

?- lift(build, '042').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
grandparent(A, B) :-
    parent(A, C),
    parent(C, B).
parent(fay, ann).
parent(fay, ivy).
parent(fay, jo).
parent(ivy, gus).
% proof that the program equals the network: proved(same_ground_clauses(129))
```

## 43. Network 043 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(ann, cy).
parent(cy, gus).
parent(cy, fay).
parent(fay, dee).
parent(cy, jo).
parent(ann, hal).
parent(jo, ivy).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

?- lift(build, '043').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
parent(ann, cy).
parent(ann, hal).
parent(cy, fay).
parent(cy, gus).
parent(cy, jo).
parent(fay, dee).
parent(jo, ivy).
sibling(A, B) :-
    parent(C, A),
    parent(C, B),
    B\=A.
% proof that the program equals the network: proved(same_ground_clauses(455))
```

## 44. Network 044 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(hal, bob).
parent(hal, gus).
parent(bob, cy).
parent(cy, ivy).
parent(cy, ann).
parent(cy, eli).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build, '044').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(bob, cy).
parent(cy, ann).
parent(cy, eli).
parent(cy, ivy).
parent(hal, bob).
parent(hal, gus).
% proof that the program equals the network: proved(same_ground_clauses(398))
```

## 45. Network 045 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(dee, gus).
parent(dee, hal).
parent(hal, ann).
parent(ann, ivy).
parent(ann, cy).
parent(dee, eli).
parent(ann, fay).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

?- lift(build, '045').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
grandparent(A, B) :-
    parent(A, C),
    parent(C, B).
parent(ann, cy).
parent(ann, fay).
parent(ann, ivy).
parent(dee, eli).
parent(dee, gus).
parent(dee, hal).
parent(hal, ann).
% proof that the program equals the network: proved(same_ground_clauses(519))
```

## 46. Network 046 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(gus, ivy).
parent(gus, jo).
parent(jo, ann).
parent(jo, bob).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

?- lift(build, '046').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
parent(gus, ivy).
parent(gus, jo).
parent(jo, ann).
parent(jo, bob).
sibling(A, B) :-
    parent(C, A),
    parent(C, B),
    B\=A.
% proof that the program equals the network: proved(same_ground_clauses(104))
```

## 47. Network 047 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(ann, cy).
parent(cy, ivy).
parent(cy, fay).
parent(ann, hal).
parent(ivy, gus).
parent(cy, dee).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build, '047').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(ann, cy).
parent(ann, hal).
parent(cy, dee).
parent(cy, fay).
parent(cy, ivy).
parent(ivy, gus).
% proof that the program equals the network: proved(same_ground_clauses(398))
```

## 48. Network 048 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(dee, ann).
parent(dee, hal).
parent(ann, bob).
parent(ann, jo).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

?- lift(build, '048').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
grandparent(A, B) :-
    parent(A, C),
    parent(C, B).
parent(ann, bob).
parent(ann, jo).
parent(dee, ann).
parent(dee, hal).
% proof that the program equals the network: proved(same_ground_clauses(129))
```

## 49. Network 049 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(cy, ivy).
parent(ivy, gus).
parent(ivy, jo).
parent(jo, ann).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

?- lift(build, '049').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
parent(cy, ivy).
parent(ivy, gus).
parent(ivy, jo).
parent(jo, ann).
sibling(A, B) :-
    parent(C, A),
    parent(C, B),
    B\=A.
% proof that the program equals the network: proved(same_ground_clauses(104))
```

## 50. Network 050 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(fay, dee).
parent(dee, ivy).
parent(ivy, jo).
parent(dee, hal).
parent(fay, cy).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build, '050').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(dee, hal).
parent(dee, ivy).
parent(fay, cy).
parent(fay, dee).
parent(ivy, jo).
% proof that the program equals the network: proved(same_ground_clauses(257))
```

## 51. Network 051 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(fay, ivy).
parent(fay, cy).
parent(ivy, gus).
parent(cy, eli).
parent(gus, ann).
parent(ann, bob).
parent(ivy, dee).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

?- lift(build, '051').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
grandparent(A, B) :-
    parent(A, C),
    parent(C, B).
parent(ann, bob).
parent(cy, eli).
parent(fay, cy).
parent(fay, ivy).
parent(gus, ann).
parent(ivy, dee).
parent(ivy, gus).
% proof that the program equals the network: proved(same_ground_clauses(519))
```

## 52. Network 052 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(ann, dee).
parent(dee, cy).
parent(ann, hal).
parent(hal, jo).
parent(cy, fay).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

?- lift(build, '052').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
parent(ann, dee).
parent(ann, hal).
parent(cy, fay).
parent(dee, cy).
parent(hal, jo).
sibling(A, B) :-
    parent(C, A),
    parent(C, B),
    B\=A.
% proof that the program equals the network: proved(same_ground_clauses(185))
```

## 53. Network 053 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(dee, ivy).
parent(ivy, hal).
parent(ivy, bob).
parent(hal, jo).
parent(hal, eli).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build, '053').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(dee, ivy).
parent(hal, eli).
parent(hal, jo).
parent(ivy, bob).
parent(ivy, hal).
% proof that the program equals the network: proved(same_ground_clauses(257))
```

## 54. Network 054 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(cy, ann).
parent(ann, fay).
parent(cy, hal).
parent(fay, ivy).
parent(ann, bob).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

?- lift(build, '054').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
grandparent(A, B) :-
    parent(A, C),
    parent(C, B).
parent(ann, bob).
parent(ann, fay).
parent(cy, ann).
parent(cy, hal).
parent(fay, ivy).
% proof that the program equals the network: proved(same_ground_clauses(221))
```

## 55. Network 055 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(ann, eli).
parent(ann, ivy).
parent(ivy, gus).
parent(ivy, jo).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

?- lift(build, '055').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
parent(ann, eli).
parent(ann, ivy).
parent(ivy, gus).
parent(ivy, jo).
sibling(A, B) :-
    parent(C, A),
    parent(C, B),
    B\=A.
% proof that the program equals the network: proved(same_ground_clauses(104))
```

## 56. Network 056 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(gus, hal).
parent(hal, ann).
parent(ann, fay).
parent(ann, jo).
parent(fay, ivy).
parent(jo, cy).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build, '056').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(ann, fay).
parent(ann, jo).
parent(fay, ivy).
parent(gus, hal).
parent(hal, ann).
parent(jo, cy).
% proof that the program equals the network: proved(same_ground_clauses(398))
```

## 57. Network 057 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(ann, jo).
parent(ann, bob).
parent(ann, eli).
parent(eli, hal).
parent(bob, ivy).
parent(hal, fay).
parent(fay, cy).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

?- lift(build, '057').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
grandparent(A, B) :-
    parent(A, C),
    parent(C, B).
parent(ann, bob).
parent(ann, eli).
parent(ann, jo).
parent(bob, ivy).
parent(eli, hal).
parent(fay, cy).
parent(hal, fay).
% proof that the program equals the network: proved(same_ground_clauses(519))
```

## 58. Network 058 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(fay, cy).
parent(cy, dee).
parent(fay, eli).
parent(eli, hal).
parent(cy, ann).
parent(hal, bob).
parent(cy, jo).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

?- lift(build, '058').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
parent(cy, ann).
parent(cy, dee).
parent(cy, jo).
parent(eli, hal).
parent(fay, cy).
parent(fay, eli).
parent(hal, bob).
sibling(A, B) :-
    parent(C, A),
    parent(C, B),
    B\=A.
% proof that the program equals the network: proved(same_ground_clauses(455))
```

## 59. Network 059 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(eli, cy).
parent(eli, jo).
parent(jo, hal).
parent(eli, dee).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build, '059').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(eli, cy).
parent(eli, dee).
parent(eli, jo).
parent(jo, hal).
% proof that the program equals the network: proved(same_ground_clauses(154))
```

## 60. Network 060 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(ivy, gus).
parent(gus, dee).
parent(gus, hal).
parent(dee, fay).
parent(ivy, cy).
parent(dee, bob).
parent(hal, eli).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

?- lift(build, '060').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
grandparent(A, B) :-
    parent(A, C),
    parent(C, B).
parent(dee, bob).
parent(dee, fay).
parent(gus, dee).
parent(gus, hal).
parent(hal, eli).
parent(ivy, cy).
parent(ivy, gus).
% proof that the program equals the network: proved(same_ground_clauses(519))
```

## 61. Network 061 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(bob, dee).
parent(dee, ann).
parent(ann, cy).
parent(dee, hal).
parent(bob, ivy).
parent(ann, gus).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

?- lift(build, '061').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
parent(ann, cy).
parent(ann, gus).
parent(bob, dee).
parent(bob, ivy).
parent(dee, ann).
parent(dee, hal).
sibling(A, B) :-
    parent(C, A),
    parent(C, B),
    B\=A.
% proof that the program equals the network: proved(same_ground_clauses(300))
```

## 62. Network 062 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(gus, fay).
parent(fay, eli).
parent(gus, ivy).
parent(ivy, ann).
parent(gus, jo).
parent(jo, bob).
parent(jo, dee).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build, '062').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(fay, eli).
parent(gus, fay).
parent(gus, ivy).
parent(gus, jo).
parent(ivy, ann).
parent(jo, bob).
parent(jo, dee).
% proof that the program equals the network: proved(same_ground_clauses(583))
```

## 63. Network 063 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(gus, ann).
parent(ann, ivy).
parent(gus, hal).
parent(ann, eli).
parent(ivy, cy).
parent(eli, jo).
parent(eli, dee).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

?- lift(build, '063').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
grandparent(A, B) :-
    parent(A, C),
    parent(C, B).
parent(ann, eli).
parent(ann, ivy).
parent(eli, dee).
parent(eli, jo).
parent(gus, ann).
parent(gus, hal).
parent(ivy, cy).
% proof that the program equals the network: proved(same_ground_clauses(519))
```

## 64. Network 064 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(hal, jo).
parent(hal, cy).
parent(cy, fay).
parent(hal, bob).
parent(cy, gus).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

?- lift(build, '064').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
parent(cy, fay).
parent(cy, gus).
parent(hal, bob).
parent(hal, cy).
parent(hal, jo).
sibling(A, B) :-
    parent(C, A),
    parent(C, B),
    B\=A.
% proof that the program equals the network: proved(same_ground_clauses(185))
```

## 65. Network 065 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
parent(jo, ann).
parent(ann, gus).
parent(gus, dee).
parent(jo, eli).
parent(dee, ivy).
parent(jo, hal).
parent(gus, fay).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build, '065').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(ann, gus).
parent(dee, ivy).
parent(gus, dee).
parent(gus, fay).
parent(jo, ann).
parent(jo, eli).
parent(jo, hal).
% proof that the program equals the network: proved(same_ground_clauses(583))
```

## 66. Network 066 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode step
% source program compiled by pl2ann:
bit(0).
bit(1).

and(X, Y) :- bit(X), bit(Y), X = 1, Y = 1.

?- lift(build, '066').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
and(1, 1) :-
    bit(1),
    bit(1).
bit(A) :-
    member(A, [0, 1]).
% proof that the program equals the network: proved(same_ground_clauses(3))
```

## 67. Network 067 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode step
% source program compiled by pl2ann:
bit(0).
bit(1).

or(X, Y) :- bit(X), bit(Y), X = 1.
or(X, Y) :- bit(X), bit(Y), Y = 1.

?- lift(build, '067').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
bit(A) :-
    member(A, [0, 1]).
or(0, 1) :-
    bit(0),
    bit(1).
or(1, 0) :-
    bit(0),
    bit(1).
or(1, 1) :-
    bit(1),
    bit(1).
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 68. Network 068 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode step
% source program compiled by pl2ann:
bit(0).
bit(1).

both(X, Y) :- bit(X), bit(Y), X = 1, Y = 1.
nand(X, Y) :- bit(X), bit(Y), \+ both(X, Y).

?- lift(build, '068').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bit(A) :-
    member(A, [0, 1]).
both(1, 1) :-
    bit(1),
    bit(1).
nand(A, B) :-
    bit(A),
    bit(B),
    \+ both(A, B).
% proof that the program equals the network: proved(same_ground_clauses(7))
```

## 69. Network 069 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode step
% source program compiled by pl2ann:
bit(0).
bit(1).

any(X, Y) :- bit(X), bit(Y), X = 1.
any(X, Y) :- bit(X), bit(Y), Y = 1.
nor(X, Y) :- bit(X), bit(Y), \+ any(X, Y).

?- lift(build, '069').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
any(0, 1) :-
    bit(0),
    bit(1).
any(1, 0) :-
    bit(0),
    bit(1).
any(1, 1) :-
    bit(1),
    bit(1).
bit(A) :-
    member(A, [0, 1]).
nor(A, B) :-
    bit(A),
    bit(B),
    \+ any(A, B).
% proof that the program equals the network: proved(same_ground_clauses(9))
```

## 70. Network 070 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode step
% source program compiled by pl2ann:
bit(0).
bit(1).

same(X, Y) :- bit(X), bit(Y), X = Y.
xor(X, Y) :- bit(X), bit(Y), \+ same(X, Y).

?- lift(build, '070').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 3; left ground: 0
bit(A) :-
    member(A, [0, 1]).
same(A, A) :-
    bit(A),
    bit(A).
A xor B :-
    bit(A),
    bit(B),
    \+ same(A, B).
% proof that the program equals the network: proved(same_ground_clauses(8))
```

## 71. Network 071 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode step
% source program compiled by pl2ann:
bit(0).
bit(1).

xnor(X, Y) :- bit(X), bit(Y), X = Y.

?- lift(build, '071').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 2; left ground: 0
bit(A) :-
    member(A, [0, 1]).
xnor(A, A) :-
    bit(A),
    bit(A).
% proof that the program equals the network: proved(same_ground_clauses(4))
```

## 72. Network 072 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
bit(0).
bit(1).

and(X, Y) :- bit(X), bit(Y), X = 1, Y = 1.

?- lift(build, '072').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
and(1, 1) :-
    bit(1),
    bit(1).
bit(A) :-
    member(A, [0, 1]).
% proof that the program equals the network: proved(same_ground_clauses(3))
```

## 73. Network 073 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
bit(0).
bit(1).

or(X, Y) :- bit(X), bit(Y), X = 1.
or(X, Y) :- bit(X), bit(Y), Y = 1.

?- lift(build, '073').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
bit(A) :-
    member(A, [0, 1]).
or(0, 1) :-
    bit(0),
    bit(1).
or(1, 0) :-
    bit(0),
    bit(1).
or(1, 1) :-
    bit(1),
    bit(1).
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 74. Network 074 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
bit(0).
bit(1).

both(X, Y) :- bit(X), bit(Y), X = 1, Y = 1.
nand(X, Y) :- bit(X), bit(Y), \+ both(X, Y).

?- lift(build, '074').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bit(A) :-
    member(A, [0, 1]).
both(1, 1) :-
    bit(1),
    bit(1).
nand(A, B) :-
    bit(A),
    bit(B),
    \+ both(A, B).
% proof that the program equals the network: proved(same_ground_clauses(7))
```

## 75. Network 075 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
bit(0).
bit(1).

any(X, Y) :- bit(X), bit(Y), X = 1.
any(X, Y) :- bit(X), bit(Y), Y = 1.
nor(X, Y) :- bit(X), bit(Y), \+ any(X, Y).

?- lift(build, '075').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
any(0, 1) :-
    bit(0),
    bit(1).
any(1, 0) :-
    bit(0),
    bit(1).
any(1, 1) :-
    bit(1),
    bit(1).
bit(A) :-
    member(A, [0, 1]).
nor(A, B) :-
    bit(A),
    bit(B),
    \+ any(A, B).
% proof that the program equals the network: proved(same_ground_clauses(9))
```

## 76. Network 076 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
bit(0).
bit(1).

same(X, Y) :- bit(X), bit(Y), X = Y.
xor(X, Y) :- bit(X), bit(Y), \+ same(X, Y).

?- lift(build, '076').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 3; left ground: 0
bit(A) :-
    member(A, [0, 1]).
same(A, A) :-
    bit(A),
    bit(A).
A xor B :-
    bit(A),
    bit(B),
    \+ same(A, B).
% proof that the program equals the network: proved(same_ground_clauses(8))
```

## 77. Network 077 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
bit(0).
bit(1).

xnor(X, Y) :- bit(X), bit(Y), X = Y.

?- lift(build, '077').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 2; left ground: 0
bit(A) :-
    member(A, [0, 1]).
xnor(A, A) :-
    bit(A),
    bit(A).
% proof that the program equals the network: proved(same_ground_clauses(4))
```

## 78. Network 078 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(pingu).
bird(tweety).
bird(opus).
bird(polly).
bird(emu).
bird(robin).
penguin(emu).

flies(X) :- bird(X), \+ penguin(X).

?- lift(build, '078').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [emu, opus, pingu, polly, robin, tweety]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(emu).
% proof that the program equals the network: proved(same_ground_clauses(13))
```

## 79. Network 079 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(tweety).
bird(robin).
bird(opus).
bird(emu).
penguin(emu).

flies(X) :- bird(X), \+ penguin(X).

?- lift(build, '079').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [emu, opus, robin, tweety]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(emu).
% proof that the program equals the network: proved(same_ground_clauses(9))
```

## 80. Network 080 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(opus).
bird(emu).
bird(tweety).
bird(polly).
penguin(polly).

injured(tweety).
abnormal(X) :- penguin(X).
abnormal(X) :- injured(X).
flies(X) :- bird(X), \+ abnormal(X).

?- lift(build, '080').
```

**Output**

```text
% clause shapes read from the weights: 6; lifted to rules: 4; left ground: 2
abnormal(A) :-
    injured(A).
abnormal(A) :-
    penguin(A).
bird(A) :-
    member(A, [emu, opus, polly, tweety]).
flies(A) :-
    bird(A),
    \+ abnormal(A).
injured(tweety).
penguin(polly).
% proof that the program equals the network: proved(same_ground_clauses(18))
```

## 81. Network 081 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(opus).
bird(pingu).
bird(robin).
bird(emu).
bird(kiwi).
penguin(opus).
penguin(emu).

flies(X) :- bird(X), \+ penguin(X).

?- lift(build, '081').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [emu, kiwi, opus, pingu, robin]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(emu).
penguin(opus).
% proof that the program equals the network: proved(same_ground_clauses(12))
```

## 82. Network 082 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(tweety).
bird(pingu).
bird(robin).
bird(kiwi).
bird(emu).
penguin(tweety).

flies(X) :- bird(X), \+ penguin(X).

?- lift(build, '082').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [emu, kiwi, pingu, robin, tweety]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(tweety).
% proof that the program equals the network: proved(same_ground_clauses(11))
```

## 83. Network 083 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(pingu).
bird(opus).
bird(robin).
penguin(opus).
penguin(pingu).

injured(robin).
abnormal(X) :- penguin(X).
abnormal(X) :- injured(X).
flies(X) :- bird(X), \+ abnormal(X).

?- lift(build, '083').
```

**Output**

```text
% clause shapes read from the weights: 6; lifted to rules: 4; left ground: 2
abnormal(A) :-
    injured(A).
abnormal(A) :-
    penguin(A).
bird(A) :-
    member(A, [opus, pingu, robin]).
flies(A) :-
    bird(A),
    \+ abnormal(A).
injured(robin).
penguin(opus).
penguin(pingu).
% proof that the program equals the network: proved(same_ground_clauses(15))
```

## 84. Network 084 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(tweety).
bird(emu).
bird(kiwi).
bird(robin).
penguin(tweety).

flies(X) :- bird(X), \+ penguin(X).

?- lift(build, '084').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [emu, kiwi, robin, tweety]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(tweety).
% proof that the program equals the network: proved(same_ground_clauses(9))
```

## 85. Network 085 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(robin).
bird(kiwi).
bird(polly).
penguin(kiwi).

flies(X) :- bird(X), \+ penguin(X).

?- lift(build, '085').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [kiwi, polly, robin]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(kiwi).
% proof that the program equals the network: proved(same_ground_clauses(7))
```

## 86. Network 086 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(emu).
bird(kiwi).
bird(tweety).
bird(polly).
bird(robin).
bird(opus).
penguin(robin).

injured(opus).
abnormal(X) :- penguin(X).
abnormal(X) :- injured(X).
flies(X) :- bird(X), \+ abnormal(X).

?- lift(build, '086').
```

**Output**

```text
% clause shapes read from the weights: 6; lifted to rules: 4; left ground: 2
abnormal(A) :-
    injured(A).
abnormal(A) :-
    penguin(A).
bird(A) :-
    member(A, [emu, kiwi, opus, polly, robin, tweety]).
flies(A) :-
    bird(A),
    \+ abnormal(A).
injured(opus).
penguin(robin).
% proof that the program equals the network: proved(same_ground_clauses(26))
```

## 87. Network 087 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(opus).
bird(tweety).
bird(polly).
bird(emu).
bird(robin).
penguin(polly).
penguin(emu).

flies(X) :- bird(X), \+ penguin(X).

?- lift(build, '087').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [emu, opus, polly, robin, tweety]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(emu).
penguin(polly).
% proof that the program equals the network: proved(same_ground_clauses(12))
```

## 88. Network 088 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(kiwi).
bird(tweety).
bird(opus).
bird(emu).
bird(pingu).
penguin(pingu).

flies(X) :- bird(X), \+ penguin(X).

?- lift(build, '088').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [emu, kiwi, opus, pingu, tweety]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(pingu).
% proof that the program equals the network: proved(same_ground_clauses(11))
```

## 89. Network 089 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(robin).
bird(kiwi).
bird(polly).
bird(opus).
bird(pingu).
bird(emu).
penguin(kiwi).

injured(robin).
abnormal(X) :- penguin(X).
abnormal(X) :- injured(X).
flies(X) :- bird(X), \+ abnormal(X).

?- lift(build, '089').
```

**Output**

```text
% clause shapes read from the weights: 6; lifted to rules: 4; left ground: 2
abnormal(A) :-
    injured(A).
abnormal(A) :-
    penguin(A).
bird(A) :-
    member(A, [emu, kiwi, opus, pingu, polly, robin]).
flies(A) :-
    bird(A),
    \+ abnormal(A).
injured(robin).
penguin(kiwi).
% proof that the program equals the network: proved(same_ground_clauses(26))
```

## 90. Network 090 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(kiwi).
bird(emu).
bird(pingu).
penguin(emu).
penguin(kiwi).

flies(X) :- bird(X), \+ penguin(X).

?- lift(build, '090').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [emu, kiwi, pingu]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(emu).
penguin(kiwi).
% proof that the program equals the network: proved(same_ground_clauses(8))
```

## 91. Network 091 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(tweety).
bird(pingu).
bird(kiwi).
bird(opus).
bird(emu).
penguin(pingu).
penguin(emu).

flies(X) :- bird(X), \+ penguin(X).

?- lift(build, '091').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [emu, kiwi, opus, pingu, tweety]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(emu).
penguin(pingu).
% proof that the program equals the network: proved(same_ground_clauses(12))
```

## 92. Network 092 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
bird(pingu).
bird(robin).
bird(emu).
bird(polly).
bird(tweety).
bird(kiwi).
penguin(polly).
penguin(pingu).

injured(kiwi).
abnormal(X) :- penguin(X).
abnormal(X) :- injured(X).
flies(X) :- bird(X), \+ abnormal(X).

?- lift(build, '092').
```

**Output**

```text
% clause shapes read from the weights: 6; lifted to rules: 4; left ground: 2
abnormal(A) :-
    injured(A).
abnormal(A) :-
    penguin(A).
bird(A) :-
    member(A, [emu, kiwi, pingu, polly, robin, tweety]).
flies(A) :-
    bird(A),
    \+ abnormal(A).
injured(kiwi).
penguin(pingu).
penguin(polly).
% proof that the program equals the network: proved(same_ground_clauses(27))
```

## 93. Network 093 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
even(0).
even(N) :- odd(M), N is M + 1.
odd(N) :- even(M), N is M + 1.

% domain file:
range(n, 0, 4).

?- lift(build, '093').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
even(0).
even(A) :-
    odd(B),
    A is B+1,
    member(A, [0, 1, 2, 3, 4]).
odd(A) :-
    even(B),
    A is B+1,
    member(A, [0, 1, 2, 3, 4]).
% proof that the program equals the network: proved(same_ground_clauses(9))
```

## 94. Network 094 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
even(0).
even(N) :- odd(M), N is M + 1.
odd(N) :- even(M), N is M + 1.

% domain file:
range(n, 0, 6).

?- lift(build, '094').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
even(0).
even(A) :-
    odd(B),
    A is B+1,
    member(A, [0, 1, 2, 3, 4, 5, 6]).
odd(A) :-
    even(B),
    A is B+1,
    member(A, [0, 1, 2, 3, 4, 5, 6]).
% proof that the program equals the network: proved(same_ground_clauses(13))
```

## 95. Network 095 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
even(0).
even(N) :- odd(M), N is M + 1.
odd(N) :- even(M), N is M + 1.

% domain file:
range(n, 0, 8).

?- lift(build, '095').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
even(0).
even(A) :-
    odd(B),
    A is B+1,
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8]).
odd(A) :-
    even(B),
    A is B+1,
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8]).
% proof that the program equals the network: proved(same_ground_clauses(17))
```

## 96. Network 096 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
even(0).
even(N) :- odd(M), N is M + 1.
odd(N) :- even(M), N is M + 1.

% domain file:
range(n, 0, 10).

?- lift(build, '096').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
even(0).
even(A) :-
    odd(B),
    A is B+1,
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).
odd(A) :-
    even(B),
    A is B+1,
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

## 97. Network 097 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
even(0).
even(N) :- odd(M), N is M + 1.
odd(N) :- even(M), N is M + 1.

% domain file:
range(n, 0, 12).

?- lift(build, '097').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
even(0).
even(A) :-
    odd(B),
    A is B+1,
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]).
odd(A) :-
    even(B),
    A is B+1,
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]).
% proof that the program equals the network: proved(same_ground_clauses(25))
```

## 98. Network 098 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
num(N) :- N >= 0.
square(N, S) :- num(N), S is N * N.

% domain file:
range(n, 0, 5).

?- lift(build, '098').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 2; left ground: 0
num(A) :-
    member(A, [0, 1, 2, 3, 4, 5]).
square(A, B) :-
    num(A),
    B is A*A,
    member(B, [0, 1, 4]).
% proof that the program equals the network: proved(same_ground_clauses(9))
```

## 99. Network 099 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
num(N) :- N >= 0.
square(N, S) :- num(N), S is N * N.

% domain file:
range(n, 0, 7).

?- lift(build, '099').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 2; left ground: 0
num(A) :-
    member(A, [0, 1, 2, 3, 4, 5, 6, 7]).
square(A, B) :-
    num(A),
    B is A*A,
    member(B, [0, 1, 4]).
% proof that the program equals the network: proved(same_ground_clauses(11))
```

## 100. Network 100 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
num(N) :- N >= 0.
square(N, S) :- num(N), S is N * N.

% domain file:
range(n, 0, 9).

?- lift(build, '100').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 2; left ground: 0
num(A) :-
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]).
square(A, B) :-
    num(A),
    B is A*A,
    member(B, [0, 1, 4, 9]).
% proof that the program equals the network: proved(same_ground_clauses(14))
```

## 101. Network 101 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
num(N) :- N >= 0.
square(N, S) :- num(N), S is N * N.

% domain file:
range(n, 0, 11).

?- lift(build, '101').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 2; left ground: 0
num(A) :-
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]).
square(A, B) :-
    num(A),
    B is A*A,
    member(B, [0, 1, 4, 9]).
% proof that the program equals the network: proved(same_ground_clauses(16))
```

## 102. Network 102 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
num(N) :- N >= 0.
square(N, S) :- num(N), S is N * N.

% domain file:
range(n, 0, 15).

?- lift(build, '102').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 2; left ground: 0
num(A) :-
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]).
square(A, B) :-
    num(A),
    B is A*A,
    member(B, [0, 1, 4, 9]).
% proof that the program equals the network: proved(same_ground_clauses(20))
```

## 103. Network 103 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
pair(X, Y) :- num(X), num(Y), X < Y, S is X + Y, S =:= 6.
num(X) :- X >= 0.

% domain file:
range(n, 0, 6).

?- lift(build, '103').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
num(A) :-
    member(A, [0, 1, 2, 3, 4, 5, 6]).
pair(0, 6) :-
    num(0),
    num(6).
pair(1, 5) :-
    num(1),
    num(5).
pair(2, 4) :-
    num(2),
    num(4).
% proof that the program equals the network: proved(same_ground_clauses(10))
```

## 104. Network 104 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
pair(X, Y) :- num(X), num(Y), X < Y, S is X + Y, S =:= 6.
num(X) :- X >= 0.

% domain file:
range(n, 0, 8).

?- lift(build, '104').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
num(A) :-
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8]).
pair(0, 6) :-
    num(0),
    num(6).
pair(1, 5) :-
    num(1),
    num(5).
pair(2, 4) :-
    num(2),
    num(4).
% proof that the program equals the network: proved(same_ground_clauses(12))
```

## 105. Network 105 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
pair(X, Y) :- num(X), num(Y), X < Y, S is X + Y, S =:= 6.
num(X) :- X >= 0.

% domain file:
range(n, 0, 10).

?- lift(build, '105').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
num(A) :-
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).
pair(0, 6) :-
    num(0),
    num(6).
pair(1, 5) :-
    num(1),
    num(5).
pair(2, 4) :-
    num(2),
    num(4).
% proof that the program equals the network: proved(same_ground_clauses(14))
```

## 106. Network 106 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
pair(X, Y) :- num(X), num(Y), X < Y, S is X + Y, S =:= 6.
num(X) :- X >= 0.

% domain file:
range(n, 0, 12).

?- lift(build, '106').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
num(A) :-
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]).
pair(0, 6) :-
    num(0),
    num(6).
pair(1, 5) :-
    num(1),
    num(5).
pair(2, 4) :-
    num(2),
    num(4).
% proof that the program equals the network: proved(same_ground_clauses(16))
```

## 107. Network 107 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
pair(X, Y) :- num(X), num(Y), X < Y, S is X + Y, S =:= 6.
num(X) :- X >= 0.

% domain file:
range(n, 0, 20).

?- lift(build, '107').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
num(A) :-
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]).
pair(0, 6) :-
    num(0),
    num(6).
pair(1, 5) :-
    num(1),
    num(5).
pair(2, 4) :-
    num(2),
    num(4).
% proof that the program equals the network: proved(same_ground_clauses(24))
```

## 108. Network 108 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
num(X) :- X >= 1.
div2(X) :- num(X), 0 =:= X mod 2.

% domain file:
range(n, 1, 20).

?- lift(build, '108').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
div2(A) :-
    num(A),
    member(A, [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20]).
num(1).
num(2).
num(3).
num(4).
num(5).
num(6).
num(7).
num(8).
num(9).
num(10).
num(11).
num(12).
num(13).
num(14).
num(15).
num(16).
num(17).
num(18).
num(19).
num(20).
% proof that the program equals the network: proved(same_ground_clauses(31))
```

## 109. Network 109 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
num(X) :- X >= 1.
div3(X) :- num(X), 0 =:= X mod 3.

% domain file:
range(n, 1, 20).

?- lift(build, '109').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
div3(A) :-
    num(A),
    member(A, [0, 3, 6, 9, 12, 15, 18]).
num(1).
num(2).
num(3).
num(4).
num(5).
num(6).
num(7).
num(8).
num(9).
num(10).
num(11).
num(12).
num(13).
num(14).
num(15).
num(16).
num(17).
num(18).
num(19).
num(20).
% proof that the program equals the network: proved(same_ground_clauses(27))
```

## 110. Network 110 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
num(X) :- X >= 1.
div4(X) :- num(X), 0 =:= X mod 4.

% domain file:
range(n, 1, 20).

?- lift(build, '110').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
div4(A) :-
    num(A),
    member(A, [0, 4, 8, 12, 16, 20]).
num(1).
num(2).
num(3).
num(4).
num(5).
num(6).
num(7).
num(8).
num(9).
num(10).
num(11).
num(12).
num(13).
num(14).
num(15).
num(16).
num(17).
num(18).
num(19).
num(20).
% proof that the program equals the network: proved(same_ground_clauses(26))
```

## 111. Network 111 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
num(X) :- X >= 1.
div5(X) :- num(X), 0 =:= X mod 5.

% domain file:
range(n, 1, 20).

?- lift(build, '111').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
div5(A) :-
    num(A),
    member(A, [0, 5, 10, 15, 20]).
num(1).
num(2).
num(3).
num(4).
num(5).
num(6).
num(7).
num(8).
num(9).
num(10).
num(11).
num(12).
num(13).
num(14).
num(15).
num(16).
num(17).
num(18).
num(19).
num(20).
% proof that the program equals the network: proved(same_ground_clauses(25))
```

## 112. Network 112 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
num(X) :- X >= 1.
div6(X) :- num(X), 0 =:= X mod 6.

% domain file:
range(n, 1, 20).

?- lift(build, '112').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
div6(A) :-
    num(A),
    member(A, [0, 6, 12, 18]).
num(1).
num(2).
num(3).
num(4).
num(5).
num(6).
num(7).
num(8).
num(9).
num(10).
num(11).
num(12).
num(13).
num(14).
num(15).
num(16).
num(17).
num(18).
num(19).
num(20).
% proof that the program equals the network: proved(same_ground_clauses(24))
```

## 113. Network 113 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
count(0).
count(N) :- count(M), N is M + 1.

% domain file:
range(n, 0, 20).

?- lift(build, '113').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
count(0).
count(A) :-
    count(B),
    A is B+1,
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

## 114. Network 114 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
count(0).
count(N) :- count(M), N is M + 2.

% domain file:
range(n, 0, 20).

?- lift(build, '114').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
count(0).
count(A) :-
    count(B),
    A is B+2,
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]).
% proof that the program equals the network: proved(same_ground_clauses(20))
```

## 115. Network 115 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
count(0).
count(N) :- count(M), N is M + 3.

% domain file:
range(n, 0, 20).

?- lift(build, '115').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
count(0).
count(A) :-
    count(B),
    A is B+3,
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]).
% proof that the program equals the network: proved(same_ground_clauses(19))
```

## 116. Network 116 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
count(0).
count(N) :- count(M), N is M + 4.

% domain file:
range(n, 0, 20).

?- lift(build, '116').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 0; left ground: 2
count(0).
count(4) :-
    count(0).
count(5) :-
    count(1).
count(6) :-
    count(2).
count(7) :-
    count(3).
count(8) :-
    count(4).
count(9) :-
    count(5).
count(10) :-
    count(6).
count(11) :-
    count(7).
count(12) :-
    count(8).
count(13) :-
    count(9).
count(14) :-
    count(10).
count(15) :-
    count(11).
count(16) :-
    count(12).
count(17) :-
    count(13).
count(18) :-
    count(14).
count(19) :-
    count(15).
count(20) :-
    count(16).
% proof that the program equals the network: proved(same_ground_clauses(18))
```

## 117. Network 117 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
count(0).
count(N) :- count(M), N is M + 5.

% domain file:
range(n, 0, 20).

?- lift(build, '117').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 0; left ground: 2
count(0).
count(5) :-
    count(0).
count(6) :-
    count(1).
count(7) :-
    count(2).
count(8) :-
    count(3).
count(9) :-
    count(4).
count(10) :-
    count(5).
count(11) :-
    count(6).
count(12) :-
    count(7).
count(13) :-
    count(8).
count(14) :-
    count(9).
count(15) :-
    count(10).
count(16) :-
    count(11).
count(17) :-
    count(12).
count(18) :-
    count(13).
count(19) :-
    count(14).
count(20) :-
    count(15).
% proof that the program equals the network: proved(same_ground_clauses(17))
```

## 118. Network 118 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
likes(bob, gold).
likes(hal, gold).
likes(fay, green).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.

% domain file:
domain(person, [bob, hal, fay, cy]).
domain(colour, [green, gold, purple]).
type(likes/2, 1, person).
type(likes/2, 2, colour).
type(liked/1, 1, colour).
type(unliked/1, 1, colour).
type(colour/1, 1, colour).

?- lift(build, '118').
```

**Output**

```text
% clause shapes read from the weights: 4; lifted to rules: 3; left ground: 1
colour(A) :-
    member(A, [gold, green, purple]).
liked(A) :-
    likes(B, A).
likes(bob, gold).
likes(fay, green).
likes(hal, gold).
unliked(A) :-
    colour(A),
    \+ liked(A).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

## 119. Network 119 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
likes(fay, red).
likes(cy, blue).
likes(bob, blue).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.

% domain file:
domain(person, [fay, cy, bob, jo]).
domain(colour, [blue, red, purple]).
type(likes/2, 1, person).
type(likes/2, 2, colour).
type(liked/1, 1, colour).
type(unliked/1, 1, colour).
type(colour/1, 1, colour).

?- lift(build, '119').
```

**Output**

```text
% clause shapes read from the weights: 4; lifted to rules: 3; left ground: 1
colour(A) :-
    member(A, [blue, purple, red]).
liked(A) :-
    likes(B, A).
likes(bob, blue).
likes(cy, blue).
likes(fay, red).
unliked(A) :-
    colour(A),
    \+ liked(A).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

## 120. Network 120 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
likes(jo, gold).
likes(fay, green).
likes(gus, green).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.

% domain file:
domain(person, [jo, fay, gus, bob]).
domain(colour, [gold, green, purple]).
type(likes/2, 1, person).
type(likes/2, 2, colour).
type(liked/1, 1, colour).
type(unliked/1, 1, colour).
type(colour/1, 1, colour).

?- lift(build, '120').
```

**Output**

```text
% clause shapes read from the weights: 4; lifted to rules: 3; left ground: 1
colour(A) :-
    member(A, [gold, green, purple]).
liked(A) :-
    likes(B, A).
likes(fay, green).
likes(gus, green).
likes(jo, gold).
unliked(A) :-
    colour(A),
    \+ liked(A).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

## 121. Network 121 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
likes(eli, green).
likes(gus, green).
likes(cy, green).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.

% domain file:
domain(person, [eli, gus, cy, fay]).
domain(colour, [green, red, purple]).
type(likes/2, 1, person).
type(likes/2, 2, colour).
type(liked/1, 1, colour).
type(unliked/1, 1, colour).
type(colour/1, 1, colour).

?- lift(build, '121').
```

**Output**

```text
% clause shapes read from the weights: 4; lifted to rules: 3; left ground: 1
colour(A) :-
    member(A, [green, purple, red]).
liked(A) :-
    likes(B, A).
likes(cy, green).
likes(eli, green).
likes(gus, green).
unliked(A) :-
    colour(A),
    \+ liked(A).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

## 122. Network 122 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
likes(eli, red).
likes(fay, red).
likes(ivy, red).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.

% domain file:
domain(person, [eli, fay, ivy, gus]).
domain(colour, [red, gold, purple]).
type(likes/2, 1, person).
type(likes/2, 2, colour).
type(liked/1, 1, colour).
type(unliked/1, 1, colour).
type(colour/1, 1, colour).

?- lift(build, '122').
```

**Output**

```text
% clause shapes read from the weights: 4; lifted to rules: 3; left ground: 1
colour(A) :-
    member(A, [gold, purple, red]).
liked(A) :-
    likes(B, A).
likes(eli, red).
likes(fay, red).
likes(ivy, red).
unliked(A) :-
    colour(A),
    \+ liked(A).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

## 123. Network 123 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
likes(ann, blue).
likes(hal, gold).
likes(eli, blue).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.

% domain file:
domain(person, [ann, hal, eli, dee]).
domain(colour, [blue, gold, purple]).
type(likes/2, 1, person).
type(likes/2, 2, colour).
type(liked/1, 1, colour).
type(unliked/1, 1, colour).
type(colour/1, 1, colour).

?- lift(build, '123').
```

**Output**

```text
% clause shapes read from the weights: 4; lifted to rules: 3; left ground: 1
colour(A) :-
    member(A, [blue, gold, purple]).
liked(A) :-
    likes(B, A).
likes(ann, blue).
likes(eli, blue).
likes(hal, gold).
unliked(A) :-
    colour(A),
    \+ liked(A).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

## 124. Network 124 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
likes(gus, gold).
likes(eli, gold).
likes(cy, gold).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.

% domain file:
domain(person, [gus, eli, cy, ivy]).
domain(colour, [gold, red, purple]).
type(likes/2, 1, person).
type(likes/2, 2, colour).
type(liked/1, 1, colour).
type(unliked/1, 1, colour).
type(colour/1, 1, colour).

?- lift(build, '124').
```

**Output**

```text
% clause shapes read from the weights: 4; lifted to rules: 3; left ground: 1
colour(A) :-
    member(A, [gold, purple, red]).
liked(A) :-
    likes(B, A).
likes(cy, gold).
likes(eli, gold).
likes(gus, gold).
unliked(A) :-
    colour(A),
    \+ liked(A).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

## 125. Network 125 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
likes(ivy, red).
likes(ann, green).
likes(gus, red).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.

% domain file:
domain(person, [ivy, ann, gus, jo]).
domain(colour, [green, red, purple]).
type(likes/2, 1, person).
type(likes/2, 2, colour).
type(liked/1, 1, colour).
type(unliked/1, 1, colour).
type(colour/1, 1, colour).

?- lift(build, '125').
```

**Output**

```text
% clause shapes read from the weights: 4; lifted to rules: 3; left ground: 1
colour(A) :-
    member(A, [green, purple, red]).
liked(A) :-
    likes(B, A).
likes(ann, green).
likes(gus, red).
likes(ivy, red).
unliked(A) :-
    colour(A),
    \+ liked(A).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

## 126. Network 126 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
likes(ivy, gold).
likes(dee, gold).
likes(jo, red).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.

% domain file:
domain(person, [ivy, dee, jo, bob]).
domain(colour, [gold, red, purple]).
type(likes/2, 1, person).
type(likes/2, 2, colour).
type(liked/1, 1, colour).
type(unliked/1, 1, colour).
type(colour/1, 1, colour).

?- lift(build, '126').
```

**Output**

```text
% clause shapes read from the weights: 4; lifted to rules: 3; left ground: 1
colour(A) :-
    member(A, [gold, purple, red]).
liked(A) :-
    likes(B, A).
likes(dee, gold).
likes(ivy, gold).
likes(jo, red).
unliked(A) :-
    colour(A),
    \+ liked(A).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

## 127. Network 127 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
likes(fay, gold).
likes(gus, gold).
likes(bob, red).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.

% domain file:
domain(person, [fay, gus, bob, ivy]).
domain(colour, [gold, red, purple]).
type(likes/2, 1, person).
type(likes/2, 2, colour).
type(liked/1, 1, colour).
type(unliked/1, 1, colour).
type(colour/1, 1, colour).

?- lift(build, '127').
```

**Output**

```text
% clause shapes read from the weights: 4; lifted to rules: 3; left ground: 1
colour(A) :-
    member(A, [gold, purple, red]).
liked(A) :-
    likes(B, A).
likes(bob, red).
likes(fay, gold).
likes(gus, gold).
unliked(A) :-
    colour(A),
    \+ liked(A).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

## 128. Network 128 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --term-depth 1
% source program compiled by pl2ann:
nat(z).
nat(s(X)) :- nat(X).

?- lift(build, '128').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 0; left ground: 2
nat(z).
nat(s(z)) :-
    nat(z).
% proof that the program equals the network: proved(same_ground_clauses(2))
```

## 129. Network 129 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --term-depth 2
% source program compiled by pl2ann:
nat(z).
nat(s(X)) :- nat(X).

?- lift(build, '129').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 0; left ground: 2
nat(z).
nat(s(z)) :-
    nat(z).
nat(s(s(z))) :-
    nat(s(z)).
% proof that the program equals the network: proved(same_ground_clauses(3))
```

## 130. Network 130 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --term-depth 3
% source program compiled by pl2ann:
nat(z).
nat(s(X)) :- nat(X).

?- lift(build, '130').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 0; left ground: 2
nat(z).
nat(s(z)) :-
    nat(z).
nat(s(s(z))) :-
    nat(s(z)).
nat(s(s(s(z)))) :-
    nat(s(s(z))).
% proof that the program equals the network: proved(same_ground_clauses(4))
```

## 131. Network 131 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --term-depth 1
% source program compiled by pl2ann:
p(a).
p(f(X)) :- p(X).

?- lift(build, '131').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 0; left ground: 2
p(a).
p(f(a)) :-
    p(a).
% proof that the program equals the network: proved(same_ground_clauses(2))
```

## 132. Network 132 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --term-depth 2
% source program compiled by pl2ann:
p(a).
p(f(X)) :- p(X).

?- lift(build, '132').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 0; left ground: 2
p(a).
p(f(a)) :-
    p(a).
p(f(f(a))) :-
    p(f(a)).
% proof that the program equals the network: proved(same_ground_clauses(3))
```

## 133. Network 133 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --term-depth 3
% source program compiled by pl2ann:
p(a).
p(f(X)) :- p(X).

?- lift(build, '133').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 0; left ground: 2
p(a).
p(f(a)) :-
    p(a).
p(f(f(a))) :-
    p(f(a)).
p(f(f(f(a)))) :-
    p(f(f(a))).
% proof that the program equals the network: proved(same_ground_clauses(4))
```

## 134. Network 134 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --term-depth 2
% source program compiled by pl2ann:
item(a).
item(b).
lst([]).
lst([H|T]) :- item(H), lst(T).

?- lift(build, '134').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 0; left ground: 3
item(a).
item(b).
lst([]).
lst([[]]) :-
    item([]),
    lst([]).
lst([[]|a]) :-
    item([]),
    lst(a).
lst([[]|b]) :-
    item([]),
    lst(b).
lst([[], []]) :-
    item([]),
    lst([[]]).
lst([[], []|a]) :-
    item([]),
    lst([[]|a]).
lst([[], []|b]) :-
    item([]),
    lst([[]|b]).
lst([[], a]) :-
    item([]),
    lst([a]).
lst([[], a|a]) :-
    item([]),
    lst([a|a]).
lst([[], a|b]) :-
    item([]),
    lst([a|b]).
lst([[], b]) :-
    item([]),
    lst([b]).
lst([[], b|a]) :-
    item([]),
    lst([b|a]).
lst([[], b|b]) :-
    item([]),
    lst([b|b]).
lst([a]) :-
    item(a),
    lst([]).
lst([a|a]) :-
    item(a),
    lst(a).
lst([a|b]) :-
    item(a),
    lst(b).
lst([a, []]) :-
    item(a),
    lst([[]]).
lst([a, []|a]) :-
    item(a),
    lst([[]|a]).
lst([a, []|b]) :-
    item(a),
    lst([[]|b]).
lst([a, a]) :-
    item(a),
    lst([a]).
lst([a, a|a]) :-
    item(a),
    lst([a|a]).
lst([a, a|b]) :-
    item(a),
    lst([a|b]).
lst([a, b]) :-
    item(a),
    lst([b]).
lst([a, b|a]) :-
    item(a),
    lst([b|a]).
lst([a, b|b]) :-
    item(a),
    lst([b|b]).
lst([b]) :-
    item(b),
    lst([]).
lst([b|a]) :-
    item(b),
    lst(a).
lst([b|b]) :-
    item(b),
    lst(b).
lst([b, []]) :-
    item(b),
    lst([[]]).
lst([b, []|a]) :-
    item(b),
    lst([[]|a]).
lst([b, []|b]) :-
    item(b),
    lst([[]|b]).
lst([b, a]) :-
    item(b),
    lst([a]).
lst([b, a|a]) :-
    item(b),
    lst([a|a]).
lst([b, a|b]) :-
    item(b),
    lst([a|b]).
lst([b, b]) :-
    item(b),
    lst([b]).
lst([b, b|a]) :-
    item(b),
    lst([b|a]).
lst([b, b|b]) :-
    item(b),
    lst([b|b]).
lst([[[]]]) :-
    item([[]]),
    lst([]).
lst([[[]]|a]) :-
    item([[]]),
    lst(a).
lst([[[]]|b]) :-
    item([[]]),
    lst(b).
lst([[[]], []]) :-
    item([[]]),
    lst([[]]).
lst([[[]], []|a]) :-
    item([[]]),
    lst([[]|a]).
lst([[[]], []|b]) :-
    item([[]]),
    lst([[]|b]).
lst([[[]], a]) :-
    item([[]]),
    lst([a]).
lst([[[]], a|a]) :-
    item([[]]),
    lst([a|a]).
lst([[[]], a|b]) :-
    item([[]]),
    lst([a|b]).
lst([[[]], b]) :-
    item([[]]),
    lst([b]).
lst([[[]], b|a]) :-
    item([[]]),
    lst([b|a]).
lst([[[]], b|b]) :-
    item([[]]),
    lst([b|b]).
lst([[[]|a]]) :-
    item([[]|a]),
    lst([]).
lst([[[]|a]|a]) :-
    item([[]|a]),
    lst(a).
lst([[[]|a]|b]) :-
    item([[]|a]),
    lst(b).
lst([[[]|a], []]) :-
    item([[]|a]),
    lst([[]]).
lst([[[]|a], []|a]) :-
    item([[]|a]),
    lst([[]|a]).
lst([[[]|a], []|b]) :-
    item([[]|a]),
    lst([[]|b]).
lst([[[]|a], a]) :-
    item([[]|a]),
    lst([a]).
lst([[[]|a], a|a]) :-
    item([[]|a]),
    lst([a|a]).
lst([[[]|a], a|b]) :-
    item([[]|a]),
    lst([a|b]).
lst([[[]|a], b]) :-
    item([[]|a]),
    lst([b]).
lst([[[]|a], b|a]) :-
    item([[]|a]),
    lst([b|a]).
lst([[[]|a], b|b]) :-
    item([[]|a]),
    lst([b|b]).
lst([[[]|b]]) :-
    item([[]|b]),
    lst([]).
lst([[[]|b]|a]) :-
    item([[]|b]),
    lst(a).
lst([[[]|b]|b]) :-
    item([[]|b]),
    lst(b).
lst([[[]|b], []]) :-
    item([[]|b]),
    lst([[]]).
lst([[[]|b], []|a]) :-
    item([[]|b]),
    lst([[]|a]).
lst([[[]|b], []|b]) :-
    item([[]|b]),
    lst([[]|b]).
lst([[[]|b], a]) :-
    item([[]|b]),
    lst([a]).
lst([[[]|b], a|a]) :-
    item([[]|b]),
    lst([a|a]).
lst([[[]|b], a|b]) :-
    item([[]|b]),
    lst([a|b]).
lst([[[]|b], b]) :-
    item([[]|b]),
    lst([b]).
lst([[[]|b], b|a]) :-
    item([[]|b]),
    lst([b|a]).
lst([[[]|b], b|b]) :-
    item([[]|b]),
    lst([b|b]).
lst([[a]]) :-
    item([a]),
    lst([]).
lst([[a]|a]) :-
    item([a]),
    lst(a).
lst([[a]|b]) :-
    item([a]),
    lst(b).
lst([[a], []]) :-
    item([a]),
    lst([[]]).
lst([[a], []|a]) :-
    item([a]),
    lst([[]|a]).
lst([[a], []|b]) :-
    item([a]),
    lst([[]|b]).
lst([[a], a]) :-
    item([a]),
    lst([a]).
lst([[a], a|a]) :-
    item([a]),
    lst([a|a]).
lst([[a], a|b]) :-
    item([a]),
    lst([a|b]).
lst([[a], b]) :-
    item([a]),
    lst([b]).
lst([[a], b|a]) :-
    item([a]),
    lst([b|a]).
lst([[a], b|b]) :-
    item([a]),
    lst([b|b]).
lst([[a|a]]) :-
    item([a|a]),
    lst([]).
lst([[a|a]|a]) :-
    item([a|a]),
    lst(a).
lst([[a|a]|b]) :-
    item([a|a]),
    lst(b).
lst([[a|a], []]) :-
    item([a|a]),
    lst([[]]).
lst([[a|a], []|a]) :-
    item([a|a]),
    lst([[]|a]).
lst([[a|a], []|b]) :-
    item([a|a]),
    lst([[]|b]).
lst([[a|a], a]) :-
    item([a|a]),
    lst([a]).
lst([[a|a], a|a]) :-
    item([a|a]),
    lst([a|a]).
lst([[a|a], a|b]) :-
    item([a|a]),
    lst([a|b]).
lst([[a|a], b]) :-
    item([a|a]),
    lst([b]).
lst([[a|a], b|a]) :-
    item([a|a]),
    lst([b|a]).
lst([[a|a], b|b]) :-
    item([a|a]),
    lst([b|b]).
lst([[a|b]]) :-
    item([a|b]),
    lst([]).
lst([[a|b]|a]) :-
    item([a|b]),
    lst(a).
lst([[a|b]|b]) :-
    item([a|b]),
    lst(b).
lst([[a|b], []]) :-
    item([a|b]),
    lst([[]]).
lst([[a|b], []|a]) :-
    item([a|b]),
    lst([[]|a]).
lst([[a|b], []|b]) :-
    item([a|b]),
    lst([[]|b]).
lst([[a|b], a]) :-
    item([a|b]),
    lst([a]).
lst([[a|b], a|a]) :-
    item([a|b]),
    lst([a|a]).
lst([[a|b], a|b]) :-
    item([a|b]),
    lst([a|b]).
lst([[a|b], b]) :-
    item([a|b]),
    lst([b]).
lst([[a|b], b|a]) :-
    item([a|b]),
    lst([b|a]).
lst([[a|b], b|b]) :-
    item([a|b]),
    lst([b|b]).
lst([[b]]) :-
    item([b]),
    lst([]).
lst([[b]|a]) :-
    item([b]),
    lst(a).
lst([[b]|b]) :-
    item([b]),
    lst(b).
lst([[b], []]) :-
    item([b]),
    lst([[]]).
lst([[b], []|a]) :-
    item([b]),
    lst([[]|a]).
lst([[b], []|b]) :-
    item([b]),
    lst([[]|b]).
lst([[b], a]) :-
    item([b]),
    lst([a]).
lst([[b], a|a]) :-
    item([b]),
    lst([a|a]).
lst([[b], a|b]) :-
    item([b]),
    lst([a|b]).
lst([[b], b]) :-
    item([b]),
    lst([b]).
lst([[b], b|a]) :-
    item([b]),
    lst([b|a]).
lst([[b], b|b]) :-
    item([b]),
    lst([b|b]).
lst([[b|a]]) :-
    item([b|a]),
    lst([]).
lst([[b|a]|a]) :-
    item([b|a]),
    lst(a).
lst([[b|a]|b]) :-
    item([b|a]),
    lst(b).
lst([[b|a], []]) :-
    item([b|a]),
    lst([[]]).
lst([[b|a], []|a]) :-
    item([b|a]),
    lst([[]|a]).
lst([[b|a], []|b]) :-
    item([b|a]),
    lst([[]|b]).
lst([[b|a], a]) :-
    item([b|a]),
    lst([a]).
lst([[b|a], a|a]) :-
    item([b|a]),
    lst([a|a]).
lst([[b|a], a|b]) :-
    item([b|a]),
    lst([a|b]).
lst([[b|a], b]) :-
    item([b|a]),
    lst([b]).
lst([[b|a], b|a]) :-
    item([b|a]),
    lst([b|a]).
lst([[b|a], b|b]) :-
    item([b|a]),
    lst([b|b]).
lst([[b|b]]) :-
    item([b|b]),
    lst([]).
lst([[b|b]|a]) :-
    item([b|b]),
    lst(a).
lst([[b|b]|b]) :-
    item([b|b]),
    lst(b).
lst([[b|b], []]) :-
    item([b|b]),
    lst([[]]).
lst([[b|b], []|a]) :-
    item([b|b]),
    lst([[]|a]).
lst([[b|b], []|b]) :-
    item([b|b]),
    lst([[]|b]).
lst([[b|b], a]) :-
    item([b|b]),
    lst([a]).
lst([[b|b], a|a]) :-
    item([b|b]),
    lst([a|a]).
lst([[b|b], a|b]) :-
    item([b|b]),
    lst([a|b]).
lst([[b|b], b]) :-
    item([b|b]),
    lst([b]).
lst([[b|b], b|a]) :-
    item([b|b]),
    lst([b|a]).
lst([[b|b], b|b]) :-
    item([b|b]),
    lst([b|b]).
% proof that the program equals the network: proved(same_ground_clauses(147))
```

## 135. Network 136 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --term-depth 2
% source program compiled by pl2ann:
item(X) :- X = X.
leaf(Y) :- item(node(Y)).

% domain file:
domain(term, [node(a), node(b), [a, b]]).
type(item/1, 1, term).
type(boxed/1, 1, term).

?- lift(build, '136').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 0; left ground: 2
item(node(a)).
item(node(b)).
item([a, b]).
leaf(node(a)) :-
    item(node(node(a))).
leaf(node(b)) :-
    item(node(node(b))).
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 136. Network 138 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
parent(ann, bob).
parent(bob, cy).
parent(cy, dee).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build, '138').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(ann, bob).
parent(bob, cy).
parent(cy, dee).
% proof that the program equals the network: proved(same_ground_clauses(83))
```

## 137. Network 139 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode tanh
% source program compiled by pl2ann:
parent(ann, bob).
parent(bob, cy).
parent(cy, dee).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build, '139').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(ann, bob).
parent(bob, cy).
parent(cy, dee).
% proof that the program equals the network: proved(same_ground_clauses(83))
```

## 138. Network 140 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --step-limit 1
% source program compiled by pl2ann:
parent(ann, bob).
parent(bob, cy).
parent(cy, dee).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build, '140').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(ann, bob).
parent(bob, cy).
parent(cy, dee).
% proof that the program equals the network: proved(same_ground_clauses(83))
```

## 139. Network 141 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
edge(a, b).
edge(b, c).
edge(c, a).
reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '141').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, b).
edge(b, c).
edge(c, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(39))
```

## 140. Network 142 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode tanh
% source program compiled by pl2ann:
edge(a, b).
edge(b, c).
edge(c, a).
reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '142').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, b).
edge(b, c).
edge(c, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(39))
```

## 141. Network 143 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --step-limit 1
% source program compiled by pl2ann:
edge(a, b).
edge(b, c).
edge(c, a).
reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build, '143').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, b).
edge(b, c).
edge(c, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(39))
```

## 142. Network 144 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
bird(tweety).
bird(polly).
bird(pingu).
penguin(pingu).
flies(X) :- bird(X), \+ penguin(X).

?- lift(build, '144').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [pingu, polly, tweety]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(pingu).
% proof that the program equals the network: proved(same_ground_clauses(7))
```

## 143. Network 145 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode tanh
% source program compiled by pl2ann:
bird(tweety).
bird(polly).
bird(pingu).
penguin(pingu).
flies(X) :- bird(X), \+ penguin(X).

?- lift(build, '145').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [pingu, polly, tweety]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(pingu).
% proof that the program equals the network: proved(same_ground_clauses(7))
```

## 144. Network 146 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --step-limit 1
% source program compiled by pl2ann:
bird(tweety).
bird(polly).
bird(pingu).
penguin(pingu).
flies(X) :- bird(X), \+ penguin(X).

?- lift(build, '146').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [pingu, polly, tweety]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(pingu).
% proof that the program equals the network: proved(same_ground_clauses(7))
```

## 145. Network 147 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
a(1).
b(2).
c(3).
ab(X) :- ( a(X) ; b(X) ).

?- lift(build, '147').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 2; left ground: 3
a(1).
ab(A) :-
    a(A).
ab(A) :-
    b(A).
b(2).
c(3).
% proof that the program equals the network: proved(same_ground_clauses(9))
```

## 146. Network 148 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --mode tanh
% source program compiled by pl2ann:
a(1).
b(2).
c(3).
ab(X) :- ( a(X) ; b(X) ).

?- lift(build, '148').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 2; left ground: 3
a(1).
ab(A) :-
    a(A).
ab(A) :-
    b(A).
b(2).
c(3).
% proof that the program equals the network: proved(same_ground_clauses(9))
```

## 147. Network 149 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: --step-limit 1
% source program compiled by pl2ann:
a(1).
b(2).
c(3).
ab(X) :- ( a(X) ; b(X) ).

?- lift(build, '149').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 2; left ground: 3
a(1).
ab(A) :-
    a(A).
ab(A) :-
    b(A).
b(2).
c(3).
% proof that the program equals the network: proved(same_ground_clauses(9))
```

## 148. Network 172 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
s.
v.
t :- v, \+ s.
w :- t, v.
u :- v, \+ s.

?- lift(build, '172').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
s.
t :-
    v,
    \+ s.
u :-
    v,
    \+ s.
v.
w :-
    t,
    v.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 149. Network 173 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
r.
s.
w :- u.
w :- t.
t :- s, w.
u :- r.
u :- t.

?- lift(build, '173').
```

**Output**

```text
% clause shapes read from the weights: 7; lifted to rules: 0; left ground: 7
r.
s.
t :-
    s,
    w.
u :-
    r.
u :-
    t.
w :-
    t.
w :-
    u.
% proof that the program equals the network: proved(same_ground_clauses(7))
```

## 150. Network 174 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
v.
u.
s :- u, v.
q :- u, v.
r :- s, \+ v.

?- lift(build, '174').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
q :-
    u,
    v.
r :-
    s,
    \+ v.
s :-
    u,
    v.
u.
v.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 151. Network 175 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
t.
p.
s :- t.
s :- q.
q :- p.
q :- t.
u :- s, q.

?- lift(build, '175').
```

**Output**

```text
% clause shapes read from the weights: 7; lifted to rules: 0; left ground: 7
p.
q :-
    p.
q :-
    t.
s :-
    q.
s :-
    t.
t.
u :-
    q,
    s.
% proof that the program equals the network: proved(same_ground_clauses(7))
```

## 152. Network 176 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
p.
u.
w :- p.
q :- u, p.
s :- \+ p.

?- lift(build, '176').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
p.
q :-
    p,
    u.
s :-
    \+ p.
u.
w :-
    p.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 153. Network 177 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
w.
v.
p :- u, w.
s :- p.
u :- s.

?- lift(build, '177').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
p :-
    u,
    w.
s :-
    p.
u :-
    s.
v.
w.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 154. Network 178 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
p.
t.
r :- \+ t.
u :- \+ p.
s :- u, p.

?- lift(build, '178').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
p.
r :-
    \+ t.
s :-
    p,
    u.
t.
u :-
    \+ p.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 155. Network 179 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
q.
s.
t :- s, q.
t :- s.
v :- q, s.
p :- v.

?- lift(build, '179').
```

**Output**

```text
% clause shapes read from the weights: 6; lifted to rules: 0; left ground: 6
p :-
    v.
q.
s.
t :-
    q,
    s.
t :-
    s.
v :-
    q,
    s.
% proof that the program equals the network: proved(same_ground_clauses(6))
```

## 156. Network 180 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
s.
q.
u :- s.
t :- \+ s.
r :- q, \+ t.

?- lift(build, '180').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
q.
r :-
    q,
    \+ t.
s.
t :-
    \+ s.
u :-
    s.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 157. Network 181 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
w.
p.
u :- s, v.
s :- w, u.
s :- v.
v :- w, u.

?- lift(build, '181').
```

**Output**

```text
% clause shapes read from the weights: 6; lifted to rules: 0; left ground: 6
p.
s :-
    u,
    w.
s :-
    v.
u :-
    s,
    v.
v :-
    u,
    w.
w.
% proof that the program equals the network: proved(same_ground_clauses(6))
```

## 158. Network 182 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
t.
p.
r :- t, \+ p.
u :- t.
s :- t, \+ p.

?- lift(build, '182').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
p.
r :-
    t,
    \+ p.
s :-
    t,
    \+ p.
t.
u :-
    t.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 159. Network 183 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
t.
q.
w :- t.
u :- r.
r :- t, u.

?- lift(build, '183').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
q.
r :-
    t,
    u.
t.
u :-
    r.
w :-
    t.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 160. Network 184 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
r.
s.
t :- \+ r.
w :- t, s.
q :- \+ w.

?- lift(build, '184').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
q :-
    \+ w.
r.
s.
t :-
    \+ r.
w :-
    s,
    t.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 161. Network 185 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
v.
q.
s :- t.
t :- s.
u :- t.
u :- q.

?- lift(build, '185').
```

**Output**

```text
% clause shapes read from the weights: 6; lifted to rules: 0; left ground: 6
q.
s :-
    t.
t :-
    s.
u :-
    q.
u :-
    t.
v.
% proof that the program equals the network: proved(same_ground_clauses(6))
```

## 162. Network 186 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
u.
p.
q :- \+ p.
r :- \+ u.
v :- p, u.

?- lift(build, '186').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
p.
q :-
    \+ p.
r :-
    \+ u.
u.
v :-
    p,
    u.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 163. Network 187 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
v.
q.
u :- v.
p :- v.
p :- v.
r :- v, p.
r :- p.

?- lift(build, '187').
```

**Output**

```text
% clause shapes read from the weights: 6; lifted to rules: 0; left ground: 6
p :-
    v.
q.
r :-
    p.
r :-
    p,
    v.
u :-
    v.
v.
% proof that the program equals the network: proved(same_ground_clauses(6))
```

## 164. Network 188 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
u.
r.
v :- \+ r.
t :- v.
s :- u, \+ v.

?- lift(build, '188').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
r.
s :-
    u,
    \+ v.
t :-
    v.
u.
v :-
    \+ r.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 165. Network 189 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
p.
q.
v :- u, w.
v :- u.
u :- v, q.
u :- v.
w :- q, u.

?- lift(build, '189').
```

**Output**

```text
% clause shapes read from the weights: 7; lifted to rules: 0; left ground: 7
p.
q.
u :-
    q,
    v.
u :-
    v.
v :-
    u.
v :-
    u,
    w.
w :-
    q,
    u.
% proof that the program equals the network: proved(same_ground_clauses(7))
```

## 166. Network 190 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
t.
v.
r :- t.
p :- v, \+ r.
s :- \+ v.

?- lift(build, '190').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
p :-
    v,
    \+ r.
r :-
    t.
s :-
    \+ v.
t.
v.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 167. Network 191 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
s.
t.
q :- r, t.
r :- t, q.
u :- s.

?- lift(build, '191').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
q :-
    r,
    t.
r :-
    q,
    t.
s.
t.
u :-
    s.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 168. Network 192 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
t.
r.
q :- t.
s :- q, r.
u :- t.

?- lift(build, '192').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
q :-
    t.
r.
s :-
    q,
    r.
t.
u :-
    t.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 169. Network 193 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
r.
p.
q :- u, r.
v :- p.
u :- p.
u :- v.

?- lift(build, '193').
```

**Output**

```text
% clause shapes read from the weights: 6; lifted to rules: 0; left ground: 6
p.
q :-
    r,
    u.
r.
u :-
    p.
u :-
    v.
v :-
    p.
% proof that the program equals the network: proved(same_ground_clauses(6))
```

## 170. Network 194 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
v.
q.
r :- q, \+ v.
s :- r.
w :- q, s.

?- lift(build, '194').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
q.
r :-
    q,
    \+ v.
s :-
    r.
v.
w :-
    q,
    s.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 171. Network 195 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
u.
w.
t :- u, w.
p :- r, t.
r :- t, u.

?- lift(build, '195').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
p :-
    r,
    t.
r :-
    t,
    u.
t :-
    u,
    w.
u.
w.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 172. Network 196 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
t.
q.
s :- \+ t.
u :- \+ q.
v :- u, \+ s.

?- lift(build, '196').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
q.
s :-
    \+ t.
t.
u :-
    \+ q.
v :-
    u,
    \+ s.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 173. Network 197 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
u.
s.
r :- v.
p :- u.
v :- s, p.

?- lift(build, '197').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
p :-
    u.
r :-
    v.
s.
u.
v :-
    p,
    s.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 174. Network 198 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
s.
u.
q :- \+ u.
w :- u, \+ q.
p :- q, w.

?- lift(build, '198').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
p :-
    q,
    w.
q :-
    \+ u.
s.
u.
w :-
    u,
    \+ q.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 175. Network 199 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
u.
p.
w :- s, q.
s :- u, p.
s :- p.
q :- p, s.

?- lift(build, '199').
```

**Output**

```text
% clause shapes read from the weights: 6; lifted to rules: 0; left ground: 6
p.
q :-
    p,
    s.
s :-
    p.
s :-
    p,
    u.
u.
w :-
    q,
    s.
% proof that the program equals the network: proved(same_ground_clauses(6))
```

## 176. Network 200 read back as Prolog with variables

*Category:* `ann2pl/lift`

**Input**

```prolog
% pl2ann options: (defaults: --mode step)
% source program compiled by pl2ann:
u.
t.
w :- u, \+ t.
p :- \+ t.
s :- w, u.

?- lift(build, '200').
```

**Output**

```text
% clause shapes read from the weights: 5; lifted to rules: 0; left ground: 5
p :-
    \+ t.
s :-
    u,
    w.
t.
u.
w :-
    u,
    \+ t.
% proof that the program equals the network: proved(same_ground_clauses(5))
```

## 177. Network 005 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
edge(a, c).
edge(a, d).
edge(b, a).
edge(b, c).
edge(d, a).
edge(e, a).
edge(e, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build_alt, '005').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, c).
edge(a, d).
edge(b, a).
edge(b, c).
edge(d, a).
edge(e, a).
edge(e, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(157))
```

## 178. Network 010 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
edge(b, a).
edge(b, c).
edge(c, d).
edge(d, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build_alt, '010').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(b, a).
edge(b, c).
edge(c, d).
edge(d, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(84))
```

## 179. Network 015 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
edge(b, c).
edge(c, a).
edge(c, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build_alt, '015').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(b, c).
edge(c, a).
edge(c, b).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(39))
```

## 180. Network 020 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
edge(a, b).
edge(b, d).
edge(c, a).
edge(d, a).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build_alt, '020').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, b).
edge(b, d).
edge(c, a).
edge(d, a).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(84))
```

## 181. Network 025 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
edge(a, d).
edge(b, c).
edge(c, b).
edge(c, d).
edge(d, a).
edge(d, b).
edge(d, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build_alt, '025').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, d).
edge(b, c).
edge(c, b).
edge(c, d).
edge(d, a).
edge(d, b).
edge(d, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(87))
```

## 182. Network 030 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
edge(a, c).
edge(a, d).
edge(c, b).
edge(e, b).
edge(e, c).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build_alt, '030').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, c).
edge(a, d).
edge(c, b).
edge(e, b).
edge(e, c).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(155))
```

## 183. Network 035 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
edge(b, a).
edge(c, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build_alt, '035').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(b, a).
edge(c, b).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(38))
```

## 184. Network 040 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
edge(a, d).
edge(c, d).
edge(d, b).

reach(X, Y) :- edge(X, Y).
reach(X, Y) :- edge(X, Z), reach(Z, Y).

?- lift(build_alt, '040').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
edge(a, d).
edge(c, d).
edge(d, b).
reach(A, B) :-
    edge(A, B).
reach(A, B) :-
    edge(A, C),
    reach(C, B).
% proof that the program equals the network: proved(same_ground_clauses(83))
```

## 185. Network 045 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
parent(dee, gus).
parent(dee, hal).
parent(hal, ann).
parent(ann, ivy).
parent(ann, cy).
parent(dee, eli).
parent(ann, fay).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

?- lift(build_alt, '045').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
grandparent(A, B) :-
    parent(A, C),
    parent(C, B).
parent(ann, cy).
parent(ann, fay).
parent(ann, ivy).
parent(dee, eli).
parent(dee, gus).
parent(dee, hal).
parent(hal, ann).
% proof that the program equals the network: proved(same_ground_clauses(519))
```

## 186. Network 050 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
parent(fay, dee).
parent(dee, ivy).
parent(ivy, jo).
parent(dee, hal).
parent(fay, cy).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build_alt, '050').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(dee, hal).
parent(dee, ivy).
parent(fay, cy).
parent(fay, dee).
parent(ivy, jo).
% proof that the program equals the network: proved(same_ground_clauses(257))
```

## 187. Network 055 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
parent(ann, eli).
parent(ann, ivy).
parent(ivy, gus).
parent(ivy, jo).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

?- lift(build_alt, '055').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
parent(ann, eli).
parent(ann, ivy).
parent(ivy, gus).
parent(ivy, jo).
sibling(A, B) :-
    parent(C, A),
    parent(C, B),
    B\=A.
% proof that the program equals the network: proved(same_ground_clauses(104))
```

## 188. Network 060 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
parent(ivy, gus).
parent(gus, dee).
parent(gus, hal).
parent(dee, fay).
parent(ivy, cy).
parent(dee, bob).
parent(hal, eli).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

?- lift(build_alt, '060').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
grandparent(A, B) :-
    parent(A, C),
    parent(C, B).
parent(dee, bob).
parent(dee, fay).
parent(gus, dee).
parent(gus, hal).
parent(hal, eli).
parent(ivy, cy).
parent(ivy, gus).
% proof that the program equals the network: proved(same_ground_clauses(519))
```

## 189. Network 065 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
parent(jo, ann).
parent(ann, gus).
parent(gus, dee).
parent(jo, eli).
parent(dee, ivy).
parent(jo, hal).
parent(gus, fay).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

?- lift(build_alt, '065').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
ancestor(A, B) :-
    ancestor(C, B),
    parent(A, C).
ancestor(A, B) :-
    parent(A, B).
parent(ann, gus).
parent(dee, ivy).
parent(gus, dee).
parent(gus, fay).
parent(jo, ann).
parent(jo, eli).
parent(jo, hal).
% proof that the program equals the network: proved(same_ground_clauses(583))
```

## 190. Network 070 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
bit(0).
bit(1).

same(X, Y) :- bit(X), bit(Y), X = Y.
xor(X, Y) :- bit(X), bit(Y), \+ same(X, Y).

?- lift(build_alt, '070').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 3; left ground: 0
bit(A) :-
    member(A, [0, 1]).
same(A, A) :-
    bit(A),
    bit(A).
A xor B :-
    bit(A),
    bit(B),
    \+ same(A, B).
% proof that the program equals the network: proved(same_ground_clauses(8))
```

## 191. Network 080 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
bird(opus).
bird(emu).
bird(tweety).
bird(polly).
penguin(polly).

injured(tweety).
abnormal(X) :- penguin(X).
abnormal(X) :- injured(X).
flies(X) :- bird(X), \+ abnormal(X).

?- lift(build_alt, '080').
```

**Output**

```text
% clause shapes read from the weights: 6; lifted to rules: 4; left ground: 2
abnormal(A) :-
    injured(A).
abnormal(A) :-
    penguin(A).
bird(A) :-
    member(A, [emu, opus, polly, tweety]).
flies(A) :-
    bird(A),
    \+ abnormal(A).
injured(tweety).
penguin(polly).
% proof that the program equals the network: proved(same_ground_clauses(18))
```

## 192. Network 085 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
bird(robin).
bird(kiwi).
bird(polly).
penguin(kiwi).

flies(X) :- bird(X), \+ penguin(X).

?- lift(build_alt, '085').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [kiwi, polly, robin]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(kiwi).
% proof that the program equals the network: proved(same_ground_clauses(7))
```

## 193. Network 090 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
bird(kiwi).
bird(emu).
bird(pingu).
penguin(emu).
penguin(kiwi).

flies(X) :- bird(X), \+ penguin(X).

?- lift(build_alt, '090').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
bird(A) :-
    member(A, [emu, kiwi, pingu]).
flies(A) :-
    bird(A),
    \+ penguin(A).
penguin(emu).
penguin(kiwi).
% proof that the program equals the network: proved(same_ground_clauses(8))
```

## 194. Network 095 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
even(0).
even(N) :- odd(M), N is M + 1.
odd(N) :- even(M), N is M + 1.

% domain file:
range(n, 0, 8).

?- lift(build_alt, '095').
```

**Output**

```text
% clause shapes read from the weights: 3; lifted to rules: 2; left ground: 1
even(0).
even(A) :-
    odd(B),
    A is B+1,
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8]).
odd(A) :-
    even(B),
    A is B+1,
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8]).
% proof that the program equals the network: proved(same_ground_clauses(17))
```

## 195. Network 100 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
num(N) :- N >= 0.
square(N, S) :- num(N), S is N * N.

% domain file:
range(n, 0, 9).

?- lift(build_alt, '100').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 2; left ground: 0
num(A) :-
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]).
square(A, B) :-
    num(A),
    B is A*A,
    member(B, [0, 1, 4, 9]).
% proof that the program equals the network: proved(same_ground_clauses(14))
```

## 196. Network 105 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
pair(X, Y) :- num(X), num(Y), X < Y, S is X + Y, S =:= 6.
num(X) :- X >= 0.

% domain file:
range(n, 0, 10).

?- lift(build_alt, '105').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
num(A) :-
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).
pair(0, 6) :-
    num(0),
    num(6).
pair(1, 5) :-
    num(1),
    num(5).
pair(2, 4) :-
    num(2),
    num(4).
% proof that the program equals the network: proved(same_ground_clauses(14))
```

## 197. Network 110 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
num(X) :- X >= 1.
div4(X) :- num(X), 0 =:= X mod 4.

% domain file:
range(n, 1, 20).

?- lift(build_alt, '110').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
div4(A) :-
    num(A),
    member(A, [0, 4, 8, 12, 16, 20]).
num(1).
num(2).
num(3).
num(4).
num(5).
num(6).
num(7).
num(8).
num(9).
num(10).
num(11).
num(12).
num(13).
num(14).
num(15).
num(16).
num(17).
num(18).
num(19).
num(20).
% proof that the program equals the network: proved(same_ground_clauses(26))
```

## 198. Network 115 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
count(0).
count(N) :- count(M), N is M + 3.

% domain file:
range(n, 0, 20).

?- lift(build_alt, '115').
```

**Output**

```text
% clause shapes read from the weights: 2; lifted to rules: 1; left ground: 1
count(0).
count(A) :-
    count(B),
    A is B+3,
    member(A, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]).
% proof that the program equals the network: proved(same_ground_clauses(19))
```

## 199. Network 120 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
likes(jo, gold).
likes(fay, green).
likes(gus, green).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.

% domain file:
domain(person, [jo, fay, gus, bob]).
domain(colour, [gold, green, purple]).
type(likes/2, 1, person).
type(likes/2, 2, colour).
type(liked/1, 1, colour).
type(unliked/1, 1, colour).
type(colour/1, 1, colour).

?- lift(build_alt, '120').
```

**Output**

```text
% clause shapes read from the weights: 4; lifted to rules: 3; left ground: 1
colour(A) :-
    member(A, [gold, green, purple]).
liked(A) :-
    likes(B, A).
likes(fay, green).
likes(gus, green).
likes(jo, gold).
unliked(A) :-
    colour(A),
    \+ liked(A).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

## 200. Network 125 compiled as a sigmoid network, read back as Prolog

*Category:* `ann2pl/lift-sigmoid`

**Input**

```prolog
% pl2ann options: --mode sigmoid --weight auto
% source program compiled by pl2ann:
likes(ivy, red).
likes(ann, green).
likes(gus, red).

unliked(C) :- colour(C), \+ liked(C).
liked(C) :- likes(_, C).
colour(C) :- C = C.

% domain file:
domain(person, [ivy, ann, gus, jo]).
domain(colour, [green, red, purple]).
type(likes/2, 1, person).
type(likes/2, 2, colour).
type(liked/1, 1, colour).
type(unliked/1, 1, colour).
type(colour/1, 1, colour).

?- lift(build_alt, '125').
```

**Output**

```text
% clause shapes read from the weights: 4; lifted to rules: 3; left ground: 1
colour(A) :-
    member(A, [green, purple, red]).
liked(A) :-
    likes(B, A).
likes(ann, green).
likes(gus, red).
likes(ivy, red).
unliked(A) :-
    colour(A),
    \+ liked(A).
% proof that the program equals the network: proved(same_ground_clauses(21))
```

