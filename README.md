# ann2pl: Artificial Neuronet to Prolog

ann2pl reads a [pl2ann](https://github.com/luciangreen/pl2ann) network back as a Prolog program **with variables** and proves the program equals the network. It is the read-back step of the Manual Neuronets pipeline. Where pl2ann turns Prolog into a threshold network, ann2pl turns the network back into Prolog.

## How it works

1. **Decode.** Each hidden unit is read from its weights alone as one ground clause:
   - the output it feeds is the head;
   - inputs with weight +w are body atoms, and inputs with weight −w are negated atoms;
   - the threshold must be w × (positives − 0.5), so the unit is an AND gate.

   This step is `net_clauses/2` in `prover.pl`.
2. **Types.** The values seen at each argument position of each predicate's neurons become a typed domain. These are inferred from the network alone.
3. **Group.** Ground clauses with the same shape (head predicate, body predicates and their polarity) are grouped.
4. **Generalise.** Each group is generalised by anti-unification (Plotkin's least general generalisation). Bodies with repeated predicates are aligned by the permutation that keeps the most structure.
5. **Constrain.** The general clause is grounded over the types and compared with the group. If it covers too much, candidate constraints that every instance satisfies are added: `X \= Y`, `X @< Y`, `X < Y`, `X =< Y`, `X =:= Y ± c`, `X =:= Y * c`, `X =:= Y * Y`, `X =:= Y mod c` and `X =:= Y // c`. Then constraints are removed one at a time while the grounding still matches. The surviving constraints are reordered so the clause runs left to right (`X =:= Y + 1` with Y bound becomes `X is Y + 1`).
6. **Prove.** The lifted program is checked with `net_matches_program/4` against the same network, using the inferred types. A group that can't be lifted stays as ground clauses, so the output always equals the network exactly.

## Example

pl2ann compiles pair 43 (sibling with disequality) to 455 hidden units. ann2pl reads them back as the seven `parent/2` facts plus:

```prolog
sibling(A, B) :- parent(C, A), parent(C, B), B \= A.
```

The prover checks all 455 ground clauses against the network: `proved(same_ground_clauses(455))`.

## Run

```
PL2ANN_DIR=/path/to/pl2ann ./run_tests.sh
```

This builds all 176 fixtures (the non-error pairs of the pl2ann 200-pair set) with pl2ann, lifts each network and requires a proof for every one.

```prolog
?- use_module(prolog/ann2pl).
?- ann2pl('build/043/net.pl', Program, Report), write_program(user_output, Program).
```

## Limits

- Only pl2ann-style networks: every hidden unit must be an AND gate with weights ±w and threshold w(p − 0.5). Trained networks with arbitrary weights are rejected (renn-inverse handles RENN's real-valued networks).
- A group with one instance stays ground, because one example cannot show which constants should be variables.
- Facts stay facts. A set of facts is the data, not a rule.
- Constraints come from a fixed list. A relation outside it, such as `X =:= Y*Y + 1`, leaves its group ground. The output is still exact, just not general.
