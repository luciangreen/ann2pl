#!/usr/bin/env bash
# Build every fifth fixture again as a sigmoid network (pl2ann --mode sigmoid --weight auto)
# into build_alt/<id>, for the extra pairs in io_pairs/generate.pl. Run ./run_tests.sh first.
# Usage: PL2ANN_DIR=/path/to/pl2ann io_pairs/build_sigmoid.sh
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
: "${PL2ANN_DIR:?set PL2ANN_DIR to a pl2ann checkout}"
mkdir -p "$root/build_alt"
i=0; n=0
for d in "$root"/fixtures/*/; do
  i=$((i+1)); [ $((i % 5)) -ne 0 ] && continue
  id="$(basename "$d")"; opts="$(cat "$d/options.txt" 2>/dev/null || true)"
  case "$opts" in *sigmoid*) continue;; esac
  dom=(); [ -f "$d/domain.pl" ] && dom=(--domain "$d/domain.pl")
  mkdir -p "$root/build_alt/$id"
  # shellcheck disable=SC2086
  if ( cd "$PL2ANN_DIR" && swipl bin/prolog2ann.pl convert "$d/src.pl" "${dom[@]}" ${opts//--mode step/} \
         --mode sigmoid --weight auto --out "$root/build_alt/$id/net.pl" --module "net_alt_$id" >/dev/null 2>&1 ); then
    n=$((n+1))
  else rm -rf "$root/build_alt/$id"; fi
  [ $n -ge 30 ] && break
done
echo "built $n sigmoid networks"
