# ann2pl: program requirements

## Purpose

Turn a pl2ann network back into a readable Prolog program with variables, and prove that the program and the network compute the same thing.

## Functional requirements

| Id | Requirement | Status |
| --- | --- | --- |
| R1 | Decode every hidden unit from weights only (neuron/4, edge/3) | done (`prover.pl` `net_clauses/2`) |
| R2 | Reject units that are not AND gates (wrong threshold or weights) | done |
| R3 | Infer per-position types from the network's neurons | done |
| R4 | Generalise ground clauses of the same shape by anti-unification | done |
| R5 | Add only the constraints needed (≠, order, ±c, ×c, square, mod, div) | done |
| R6 | Order constraints so the clause runs left to right | done |
| R7 | Prove the lifted program equals the network (clause by clause, typed grounding) | done |
| R8 | Never lose exactness: groups that cannot be lifted stay ground | done |
| R9 | Test on all 176 non-error networks of the pl2ann 200-pair set | done (`run_tests.sh`) |

## Work remaining

1. **Compound and list terms.** Groups whose arguments are compound terms (bounded-depth Peano terms, lists) are left ground. Anti-unification across nesting depths, for example `p(f(X)) :- p(X)`, needs a depth-aware generaliser.
2. **Recursive arithmetic chains.** The chain category lifts 3 of 10 groups. Generalising across chains needs the "successor" relation to be found between head and body arguments of different clauses, not only inside one clause.
3. **More constraint forms.** Add affine combinations of two variables and compositions (`X is 2*Y + 1`) by fitting rather than enumerating.
4. **Minimal programs.** Lifted rules are correct but not always minimal: for example, two clauses that could merge into one with a disjunction are kept separate. The S2A2 optimiser can be run on the output.
5. **Trained networks.** Accept units with arbitrary positive weights by extracting M-of-N rules: the unit fires when any M of its N inputs are on.
