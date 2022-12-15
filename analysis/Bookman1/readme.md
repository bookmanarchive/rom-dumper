# Bookman1 General Analysis notes / Findings

See `utils/Bookman1` for programmatic descriptions / usages of RE findings.

```
0x48 = filesize of the entire ROM as a UInt32LE

```

## Temporary notes / Suspects

Searching for a reference to the ROM bytesize offset `0x48` with the query `0x48, 0x80` (due to ROM being loaded at `0x8000`):

```
WGM-2037 instances:

- 0xF99
- 0xFA4
- 0x74E2
- 0x7553
- 0x76FD
- 0x7787
- 0x80F3
- 0x34107


```