# Provenance

- `src/*.asm`: diagnostic programs and original grid/band patterns developed for these tests; no commercial game code or graphics.
- Startup conventions were consulted in the MIT-licensed NgpCraft_MCP toolchain's `vendor/toolchain/runtime/crt0.asm` at [commit 299e704aa03227fc4f984b23d04ba47ce35f514b](https://github.com/Tixul/NgpCraft_MCP/tree/299e704aa03227fc4f984b23d04ba47ce35f514b). Its MIT notice is retained in `LICENSES/NgpCraft-MIT.txt`.
- `tools/ngpc_romtool.py` is copied unchanged from `vendor/toolchain/tools/ngpc_romtool.py` in that source snapshot (local SHA-256 `41268e6dc9b85ab7a11781ac0de12200214b390bee34a80956e34f16fd9b825a`). Copyright (c) 2026 Tixul, MIT.
- External assembler: Alfred Arnold's Macroassembler AS, GPL; [release source mirror](https://github.com/Macroassembler-AS/asl-releases), tested commit `c7155b4fd3d33110f0eb098dede4295a8c008772`. Its source, executable and GPL code are not redistributed here.
- `docs/reference/*.png`: captures of only these original synthetic patterns from the local Beetle/Mednafen NGP reference core, not commercial games.
- `docs/results/*.csv`: numeric scroll-table observations from NGPDS runs. Emulator implementations and proprietary inputs are not redistributed.
