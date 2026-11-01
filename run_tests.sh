#!/usr/bin/env bash
# Build every fixture with pl2ann, then lift each network with ann2pl and prove it.
# Usage: PL2ANN_DIR=/path/to/pl2ann ./run_tests.sh
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
: "${PL2ANN_DIR:?set PL2ANN_DIR to a pl2ann checkout}"
export PL2ANN_PROLOG="$PL2ANN_DIR/prolog"
export NETS_DIR="${NETS_DIR:-$here/build}"
for d in "$here"/fixtures/*/; do
  id="$(basename "$d")"; mkdir -p "$NETS_DIR/$id"
  opts="$(cat "$d/options.txt")"
  dom=(); [ -f "$d/domain.pl" ] && dom=(--domain "$d/domain.pl")
  # shellcheck disable=SC2086
  ( cd "$PL2ANN_DIR" && swipl bin/prolog2ann.pl convert "$d/src.pl" "${dom[@]}" $opts \
      --out "$NETS_DIR/$id/net.pl" --module "net_$id" >/dev/null 2>&1 )
done
cd "$here/tests" && swipl -q -g main -t 'halt(1)' run_all.pl
# the printed programs must also be correct as plain Prolog, without the inferred types
cd "$here/tests" && swipl -q -g main -t 'halt(1)' standalone.pl
