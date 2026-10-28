#!/bin/sh
set -eu
cd "$(dirname "$0")"
ASL=${ASL:-asl}
P2BIN=${P2BIN:-p2bin}
PYTHON=${PYTHON:-python3}
mkdir -p build
for case in static single same_line; do
  "$ASL" -o "build/$case.p" "src/$case.asm"
  "$P2BIN" "build/$case.p" "build/$case.bin" -r '$-$'
  title="SCROLL$case"
  [ "$case" != static ] || title=SCROLLSTATIC
  "$PYTHON" tools/ngpc_romtool.py "build/$case.bin" --output "build/$case.ngc" --title "$title" --pad
  cmp "build/$case.ngc" "roms/$case.ngc"
done
printf '%s\n' 'All three rebuilt ROMs match the published binaries.'
