# Input/output pairs

[`io_pairs.md`](io_pairs.md) holds 200 input/output pairs for ann2pl. Every output was produced by running this repository's code; nothing was written by hand.

| File | What it is |
|---|---|
| `generate.pl` | the queries, and the code that runs them (writes `pairs.jsonl` and `io_pairs.md`) |
| `harness.pl` | runs one query with a time limit and records what it printed and its variable bindings |
| `build_sigmoid.sh` | builds every fifth fixture again as a sigmoid network, into `build_alt/` |
| `to_markdown.pl` | writes the recorded pairs as markdown |
| `pairs.jsonl` | the pairs, one JSON object per line |
| `io_pairs.md` | the pairs as markdown |

To regenerate them, build the fixture networks and the sigmoid networks first, from the repository root:

```
PL2ANN_DIR=/path/to/pl2ann ./run_tests.sh
PL2ANN_DIR=/path/to/pl2ann io_pairs/build_sigmoid.sh
swipl -q -g main -t halt io_pairs/generate.pl
```
