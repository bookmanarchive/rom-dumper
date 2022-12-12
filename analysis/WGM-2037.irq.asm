;;; IRQ routine
;;; 356 bytes from offset 30849

0000: 48 DA E6 17 D0 06 E6 18
0008: D0 02 E6 19 18 AD 9A 7B
0010: F0 0C 2C 00 02 10 07 AD
0018: 07 02 29 04 D0 17 AD 0D
0020: 02 F0 12 AE CE FF 8D CE
0028: FF AD CA FF 8E CE FF 2D
0030: 0E 02 D0 01 38 AD CB FF
0038: B0 0F 10 19 2C 01 02 10
0040: 14 A9 04 0C 01 02 FA 68
0048: 40 30 0A 4C 6A 7A EE 02
0050: 02 F0 09 80 EC A9 20 1C
0058: 00 02 F0 F2 5A D8 A5 0B
0060: 48 A5 0A 48 9C 02 02 AD
0068: 01 02 29 02 D0 13 20 46
0070: 7B 90 3D AD 00 02 29 40
0078: F0 07 A9 10 0C 01 02 80
0080: 62 20 98 79 AD 44 02 CD
0088: 41 02 B0 06 A2 03 00 00
0090: 90 8E AD 00 02 29 30 48
0098: AD 01 02 29 88 48 A9 92
00A0: 1C 01 02 20 6D 7A 68 0C
00A8: 01 02 68 0C 00 02 80 62
00B0: AD 01 02 29 10 D0 BC 20
00B8: 33 7B 90 17 A9 04 0C 00
00C0: 02 D0 20 AD 01 02 29 08
00C8: D0 81 20 98 79 20 01 74
00D0: 20 C3 79 9C 12 02 9C 13
00D8: 02 A9 04 1C 00 02 AD 2D
00E0: 02 D0 0F 68 85 0A 68 85
00E8: 0B A9 20 0C 00 02 7A 4C
00F0: C2 78 20 A2 74 CD 42 02
00F8: D0 E9 CE 2D 02 D0 E4 AD
0100: 00 02 29 50 F0 05 EE 2D
0108: 02 80 D8 20 98 79 00 00
0110: 9B 83 20 C3 79 80 CC 68
0118: 85 0A 68 85 0B A5 26 48
0120: A2 09 BD 14 02 48 CA 10
0128: F9 A5 0C 48 20 74 77 A9
0130: 00 20 57 77 20 FE 74 00
0138: 00 1F 82 A5 0B 48 A5 0A
0140: 48 60 68 85 0A 68 85 0B
0148: 20 19 75 20 A3 77 68 85
0150: 0C A2 00 68 9D 14 02 E8
0158: E0 0A 90 F7 68 85 26 80
0160: DA 4C 6A 7B


;;; ASM start
;;; Illegal opcodes decoded

                            * = $0000
0000   48                   PHA
0001   DA                   nop
0002   E6 17                INC $17
0004   D0 06                BNE L000C
0006   E6 18                INC $18
0008   D0 02                BNE L000C
000A   E6 19                INC $19
000C   18         L000C     CLC
000D   AD 9A 7B             LDA $7B9A
0010   F0 0C                BEQ L001E
0012   2C 00 02             BIT $0200
0015   10 07                BPL L001E
0017   AD 07 02             LDA $0207
001A   29 04                AND #$04
001C   D0 17                BNE L0035
001E   AD 0D 02   L001E     LDA $020D
0021   F0 12                BEQ L0035
0023   AE CE FF             LDX $FFCE
0026   8D CE FF             STA $FFCE
0029   AD CA FF             LDA $FFCA
002C   8E CE FF             STX $FFCE
002F   2D 0E 02             AND $020E
0032   D0 01                BNE L0035
0034   38                   SEC
0035   AD CB FF   L0035     LDA $FFCB
0038   B0 0F                BCS L0049
003A   10 19                BPL L0055
003C   2C 01 02             BIT $0201
003F   10 14                BPL L0055
0041   A9 04                LDA #$04
0043   0C 01 02             nop $0201
0046   FA                   nop
0047   68                   PLA
0048   40                   RTI
0049   30 0A      L0049     BMI L0055
004B   4C 6A 7A   L004B     JMP $7A6A
004E   EE 02 02   L004E     INC $0202
0051   F0 09                BEQ L005C
0053   80 EC                nop #$EC
0055   A9 20      L0055     LDA #$20
0057   1C 00 02             nop $0200,X
005A   F0 F2                BEQ L004E
005C   5A         L005C     nop
005D   D8                   CLD
005E   A5 0B                LDA $0B
0060   48                   PHA
0061   A5 0A                LDA $0A
0063   48                   PHA
0064   9C 02 02             SHY $0202,X
0067   AD 01 02             LDA $0201
006A   29 02                AND #$02
006C   D0 13                BNE L0081
006E   20 46 7B             JSR $7B46
0071   90 3D                BCC L00B0
0073   AD 00 02   L0073     LDA $0200
0076   29 40                AND #$40
0078   F0 07                BEQ L0081
007A   A9 10                LDA #$10
007C   0C 01 02             nop $0201
007F   80 62                nop #$62
0081   20 98 79   L0081     JSR $7998
0084   AD 44 02             LDA $0244
0087   CD 41 02             CMP $0241
008A   B0 06                BCS L0092
008C   A2 03                LDX #$03
008E   00                   BRK
008F   00                   BRK
0090   90 8E                BCC L0020
0092   AD 00 02   L0092     LDA $0200
0095   29 30                AND #$30
0097   48                   PHA
0098   AD 01 02             LDA $0201
009B   29 88                AND #$88
009D   48                   PHA
009E   A9 92                LDA #$92
00A0   1C 01 02             nop $0201,X
00A3   20 6D 7A             JSR $7A6D
00A6   68                   PLA
00A7   0C 01 02             nop $0201
00AA   68                   PLA
00AB   0C 00 02             nop $0200
00AE   80 62                nop #$62
00B0   AD 01 02   L00B0     LDA $0201
00B3   29 10                AND #$10
00B5   D0 BC                BNE L0073
00B7   20 33 7B             JSR $7B33
00BA   90 17                BCC L00D3
00BC   A9 04                LDA #$04
00BE   0C 00 02             nop $0200
00C1   D0 20                BNE L00E3
00C3   AD 01 02             LDA $0201
00C6   29 08                AND #$08
00C8   D0 81                BNE L004B
00CA   20 98 79             JSR $7998
00CD   20 01 74             JSR $7401
00D0   20 C3 79             JSR $79C3
00D3   9C 12 02   L00D3     SHY $0212,X
00D6   9C 13 02             SHY $0213,X
00D9   A9 04                LDA #$04
00DB   1C 00 02             nop $0200,X
00DE   AD 2D 02             LDA $022D
00E1   D0 0F                BNE L00F2
00E3   68         L00E3     PLA
00E4   85 0A                STA $0A
00E6   68                   PLA
00E7   85 0B                STA $0B
00E9   A9 20                LDA #$20
00EB   0C 00 02             nop $0200
00EE   7A                   nop
00EF   4C C2 78             JMP $78C2
00F2   20 A2 74   L00F2     JSR $74A2
00F5   CD 42 02             CMP $0242
00F8   D0 E9                BNE L00E3
00FA   CE 2D 02             DEC $022D
00FD   D0 E4                BNE L00E3
00FF   AD 00 02             LDA $0200
0102   29 50                AND #$50
0104   F0 05                BEQ L010B
0106   EE 2D 02             INC $022D
0109   80 D8                nop #$D8
010B   20 98 79   L010B     JSR $7998
010E   00                   BRK
010F   00                   BRK
0110   9B 83 20             TAS $2083,Y
0113   C3 79                DCP ($79,X)
0115   80 CC                nop #$CC
0117   68                   PLA
0118   85 0A                STA $0A
011A   68                   PLA
011B   85 0B                STA $0B
011D   A5 26                LDA $26
011F   48                   PHA
0120   A2 09                LDX #$09
0122   BD 14 02   L0122     LDA $0214,X
0125   48                   PHA
0126   CA                   DEX
0127   10 F9                BPL L0122
0129   A5 0C                LDA L000C
012B   48                   PHA
012C   20 74 77             JSR $7774
012F   A9 00                LDA #$00
0131   20 57 77             JSR $7757
0134   20 FE 74             JSR $74FE
0137   00                   BRK
0138   00                   BRK
0139   1F 82 A5             SLO $A582,X
013C   0B 48                ANC #$48
013E   A5 0A                LDA $0A
0140   48                   PHA
0141   60                   RTS
0142   68                   PLA
0143   85 0A                STA $0A
0145   68                   PLA
0146   85 0B                STA $0B
0148   20 19 75             JSR $7519
014B   20 A3 77             JSR $77A3
014E   68                   PLA
014F   85 0C                STA L000C
0151   A2 00                LDX #$00
0153   68         L0153     PLA
0154   9D 14 02             STA $0214,X
0157   E8                   INX
0158   E0 0A                CPX #$0A
015A   90 F7                BCC L0153
015C   68                   PLA
015D   85 26                STA $26
015F   80 DA                nop #$DA
0161   4C 6A 7B             JMP $7B6A
                            .END

;auto-generated symbols and labels
 L000C        $0C
 L001E        $1E
 L0035        $35
 L0049        $49
 L0055        $55
 L005C        $5C
 L004E        $4E
 L0081        $81
 L00B0        $B0
 L0092        $92
 L0020        $20
 L0073        $73
 L00D3        $D3
 L00E3        $E3
 L004B        $4B
 L00F2        $F2
 L010B      $010B
 L0122      $0122
 L0153      $0153
