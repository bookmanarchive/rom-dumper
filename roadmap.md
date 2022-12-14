# Reverse-Engineering Roadmap

## Approach

We are taking a bottom-up approach to digitally preserving the Bookman ecosystem: focus most of the efforts on details that can be gained from individual pieces of the Bookman platform and using them to piece together the entire picture.

We don't dismiss the possibility of useful information from a top-down approach, but the volume of useful information is limited in that avenue.

## Prerequisites

- Identify + acquire as many Bookman cards / devices as possible, as there may be variants / revisions of ROM content
    - Additionally, DIAG cards (at least 2 types) are known to exist for Bookman2

- Determine pinouts and signals for the hardware
    - This is to allow correct dumping of ROM content
    - Figuring out signals / off-the-shelf aspects of the different systems will help in analysis once ROM content is dumped

- Build dumping / analysis hardware

## Tiers of Reverse Engineering Progress

Each tier offers a distinct benefit when significant progress is made or task completed. Every tier also has multiple possible points of entry for paths that lead to the overall completion of the tier / project.

If stuck any at particular task / tier, it may be wise to take pause and shift  to another task / tier. This might allow findings to consolidate subconsiciously (in regards to the project) into a more useful development later on.

We will do our best to stay methodical and keep notes on every step where possible.


### RE Level 1

- ROM Dumping
    - External ROMs (Bookman Cards)
    - Internal ROMs (onboard ROM banks)
    - Peripherals (Bookman Writer / Brother BKMN daughter-boards)

### RE Level 2

- SDK Development
    - Allows possibility to author custom content: ebooks, apps, etc.

- Reproduction Device Schematics
    - Allows users to create Bookman compatible hardware using modern technologies, components, and manufacturers

### RE Level 3

- Emulator Development
    - Bookman1 (6502)
        - Figure out memory map
        - Figure out if any custom opcodes used
        - Figure out ROM structure
    - Bookman2 (ES1, custom ASIC)
    - Bookman3 (ES2? ~ SNK,SNK24,SNK32? perhaps same tech as eBookman)
