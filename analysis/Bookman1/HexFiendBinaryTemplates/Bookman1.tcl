requires 0 "42 6F 6F 6B 6D 61 6E 31";

section "Header" {
    goto 0x0
    ascii 8 "Magic number"
    bytes 3 "?? Flags ??"
    uint16 "Model#"
    bytes 1 "??"
    uint8 -hex "01"
    uint8 -hex "00"

    goto 0x48
    uint32 "Bytesize U1"
    uint32 "Bytesize U2"

    goto 0x80
    ascii 22 "Model info"
}

section "App Icon" {
    goto 0x7E
    uint16 "Struct addr"
    move -2
    set imgoffset [uint16]
    goto $imgoffset
    uint8 "Width"
    move 1
    uint8 "Height"
    move 1
    move 2
    uint32 "Icon data addr"
}

section "SoftKeys" {
    goto 0xAA
    set fkeystart [uint16]
    goto $fkeystart
    cstr "ascii" "Func1"

    goto 0xAC
    set fkeystart [uint16]
    goto $fkeystart
    cstr "ascii" "Func2"

    goto 0xAE
    set fkeystart [uint16]
    goto $fkeystart
    cstr "ascii" "Func3"

    goto 0xB0
    set fkeystart [uint16]
    goto $fkeystart
    cstr "ascii" "Func4"
}

section "6502 Vectors" {
    goto 0x7FFC
    uint16 "RESET addr"

    goto 0x7FFA
    uint16 "IRQ addr"

    goto 0x7FFE
    uint16 "NMI addr"
}