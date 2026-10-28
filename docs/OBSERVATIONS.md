# Recorded observations and limits

## Reproduction

1. Open `static.ngc`; confirm the two-layer control pattern.
2. Open `single.ngc` and let initialization settle. The program polls raster line 64, changes SCR1 Y to 8, and resets at line 160. It repeats without input.
3. Open `same_line.ngc`; four ordered writes occur after the same poll.
4. Inspect zero-based row 63 versus row 64. A scroll effect leaking into row 63 reproduces the issue recorded in unmodified NGPDS.

The rows should be assessed against the recorded reference behavior, not treated as physical-hardware specifications.

## Recorded comparisons

| Test | Unmodified NGPDS vs reference | Accepted combined renderer vs reference |
| --- | --- | --- |
| Static | 0 different RGB5 pixels | 0 |
| Single write | 40 pixels, all on row 63 | 0 |
| Same-line writes | 120 pixels, all on row 63 | 0 |

An independent current-main NGPDS source build reproduced the two dynamic differences. A later **interval-only** K2GE experiment (`stmdbpl`→`stmdbgt`, `bpl`→`bgt`) also matched these three tests. It still differed from the reference in a separate line-151 repeated-write test; it is not presented here as a validated general fix. No emulator patch is bundled.

The old loop writes `[L-1,N-1]` inclusively for `N>=L`, where `L=scrollLine` and `N=min(scanline,159)`. A repeated write at `N=L` therefore still overwrites the preceding row with the pre-write register pair. The interval-only experiment fills `[L,N)` instead. The input table and converted display-table excerpts are in `results/`; each line contains two 32-bit words. In the single-write test, raw row 63 contains `00080000 00000000` in both old and combined builds, but the combined renderer's separate sampled row 63 is `00000000 00000000`, and that input is used for conversion. Row 64 uses the new value.

## Identities and alignment

- Source-build host: NGPDS `5069cacf1afcdd0aeb014abdc2b419b50ed0d2fa`; K2GE `e6b936de7abe43b5244893e59a4323d97e910c17`.
- Initial unmodified release NDS SHA-256: `af2ed33f28a0b0f4d27d31e3084f1932c7b5e4c86b84521cac0d29ef059a24dd`.
- Unmodified main source-build NDS SHA-256: `4f27c61d702e8ce5fa6fdb8a8ca250f6ba6b10dd6df4f82c3a167cc313c7c837`.
- Accepted combined renderer NDS SHA-256: `4bef19f289a08ea53caec4d80da32cdc4f9a48018099a1053cba91afb21b1cf9`.
- Local reference core SHA-256: `d6c72840c4424990df34e00245fc913f8f6396f55776ad997e2ae8fc96e2444d`. Observation-only extension SHA-256: `6b8900b5ff60dc02c7eea9826f789f077fffbfc661f11b9a514746fade88c270`; the captured final images match before/after that extension. This is a local instrumented Beetle/Mednafen core, not a claim of an unmodified official release.

Each NDS binary cold-booted independently with isolated writable storage. No cross-binary DS snapshot was restored. The fixed DS LCD rectangle was `(48,20,160,152)`, validated by the static control. Reference output frames 60, 150 and the final frame were identical; the NDS captures at 600/601 were likewise stable with equal double-buffer contents. This relies on a repeated steady-state pattern, not a fixed conversion between DS and NGPC frame counts.

## Limits

- No physical NGPC or DS hardware verification.
- Reference and NGPDS used their respective HLE implementations, which differ.
- These three ROMs do not test all scanlines, horizontal scroll, priorities, frame periods or other graphics features.
- The reference's last-visible-line latch behavior requires separate consideration; no hardware claim is made for it.
- Game regressions of the independent small patch remain inconclusive because guest states/presentation were not reliably aligned.
