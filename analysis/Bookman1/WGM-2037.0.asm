                            * = $0000
0000   AD CB FF             LDA $FFCB
0003   29 02                AND #$02
0005   F0 03                BEQ L000A
0007   4C 88 73             JMP $7388
000A   78         L000A     SEI
000B   9C                   ???                ;10011100
000C   0D 02 9C   L000C     ORA $9C02
000F   0E 02 9C             ASL $9C02
0012   02                   ???                ;00000010
0013   02                   ???                ;00000010
0014   A9 74                LDA #$74
0016   1C                   ???                ;00011100
0017   00                   BRK
0018   02                   ???                ;00000010
0019   A9 FF                LDA #$FF
001B   1C                   ???                ;00011100
001C   01 02                ORA ($02,X)
001E   AE 0F 02             LDX $020F
0021   9A                   TXS
0022   20 42 74             JSR $7442
0025   9C                   ???                ;10011100
0026   12                   ???                ;00010010
0027   02                   ???                ;00000010
0028   9C                   ???                ;10011100
0029   13                   ???                ;00010011
002A   02                   ???                ;00000010
002B   A9 01                LDA #$01
002D   2C 00 02             BIT $0200
0030   F0 03                BEQ L0035
0032   4C 88 73             JMP $7388
0035   20 2E 7B   L0035     JSR $7B2E
0038   90 03                BCC L003D
003A   4C 88 73             JMP $7388
003D   00         L003D     BRK
003E   00                   BRK
003F   3B                   ???                ;00111011 ';'
0040   88                   DEY
0041   00                   BRK
0042   00                   BRK
0043   4D 85 9C             EOR $9C85
0046   02                   ???                ;00000010
0047   02                   ???                ;00000010
0048   00                   BRK
0049   00                   BRK
004A   D6 81                DEC $81,X
004C   9C                   ???                ;10011100
004D   02                   ???                ;00000010
004E   02                   ???                ;00000010
004F   CC 10 02             CPY $0210
0052   F0 03                BEQ L0057
0054   4C 88 73             JMP $7388
0057   EC 11 02   L0057     CPX $0211
005A   F0 03                BEQ L005F
005C   4C 88 73             JMP $7388
005F   9C         L005F     ???                ;10011100
0060   10 02                BPL L0064
0062   9C                   ???                ;10011100
0063   11 02                ORA ($02),Y
0065   00                   BRK
0066   00                   BRK
0067   FA                   ???                ;11111010
0068   8D A9 08             STA $08A9
006B   2C 00 02             BIT $0200
006E   F0 06                BEQ L0076
0070   AD 40 02             LDA $0240
0073   3A                   ???                ;00111010 ':'
0074   F0 43                BEQ L00B9
0076   AD 44 02   L0076     LDA $0244
0079   1A                   ???                ;00011010
007A   F0 3D                BEQ L00B9
007C   AD 46 02             LDA $0246
007F   0D 47 02             ORA $0247
0082   F0 35                BEQ L00B9
0084   AD 42 02             LDA $0242
0087   1A                   ???                ;00011010
0088   F0 2F                BEQ L00B9
008A   A5 10                LDA $10
008C   48                   PHA
008D   A5 0F                LDA $0F
008F   48                   PHA
0090   A5 12                LDA $12
0092   48                   PHA
0093   A5 11                LDA $11
0095   48                   PHA
0096   AD 47 02             LDA $0247
0099   85 10                STA $10
009B   AD 46 02             LDA $0246
009E   85 0F                STA $0F
00A0   AD 45 02             LDA L0245
00A3   85 11                STA $11
00A5   AD 42 02             LDA $0242
00A8   20 7F 7A             JSR $7A7F
00AB   68                   PLA
00AC   85 11                STA $11
00AE   68                   PLA
00AF   85 12                STA $12
00B1   68                   PLA
00B2   85 0F                STA $0F
00B4   68                   PLA
00B5   85 10                STA $10
00B7   B0 0E                BCS L00C7
00B9   00         L00B9     BRK
00BA   00                   BRK
00BB   E0 8D                CPX #$8D
00BD   A0 04      L00BD     LDY #$04
00BF   20 9B 7B             JSR $7B9B
00C2   A9 04                LDA #$04
00C4   4C 17 74             JMP $7417
00C7   AD 42 02   L00C7     LDA $0242
00CA   00                   BRK
00CB   00                   BRK
00CC   5F                   ???                ;01011111 '_'
00CD   8E 8D 43             STX $438D
00D0   02                   ???                ;00000010
00D1   AD 43 02             LDA $0243
00D4   AE 45 02             LDX L0245
00D7   00                   BRK
00D8   00                   BRK
00D9   70 8E                BVS L0069
00DB   8D 44 02             STA $0244
00DE   A9 02                LDA #$02
00E0   2C 00 02             BIT $0200
00E3   D0 D8                BNE L00BD
00E5   4C 50 77             JMP $7750
00E8   78                   SEI
00E9   9C                   ???                ;10011100
00EA   0D 02 9C             ORA $9C02
00ED   0E 02 9C             ASL $9C02
00F0   02                   ???                ;00000010
00F1   02                   ???                ;00000010
00F2   A9 74                LDA #$74
00F4   1C                   ???                ;00011100
00F5   00                   BRK
00F6   02                   ???                ;00000010
00F7   A9 FF                LDA #$FF
00F9   1C                   ???                ;00011100
00FA   01 02                ORA ($02,X)
00FC   A9 20                LDA #$20
00FE   8D C8 FF             STA $FFC8
0101   A2 FF                LDX #$FF
0103   9A                   TXS
0104   A2 00                LDX #$00
0106   74         L0106     ???                ;01110100 't'
0107   00                   BRK
0108   E8                   INX
0109   D0 FB                BNE L0106
010B   9C                   ???                ;10011100
010C   02                   ???                ;00000010
010D   02                   ???                ;00000010
010E   A9 02                LDA #$02
0110   85 01                STA $01
0112   64                   ???                ;01100100 'd'
0113   00                   BRK
0114   A9 00                LDA #$00
0116   A8                   TAY
0117   A2 1D                LDX #$1D
0119   91 00      L0119     STA ($00),Y
011B   C8                   INY
011C   D0 FB                BNE L0119
011E   E6 01                INC $01
0120   CA                   DEX
0121   10 F6                BPL L0119
0123   9C                   ???                ;10011100
0124   02                   ???                ;00000010
0125   02                   ???                ;00000010
0126   9C                   ???                ;10011100
0127   12                   ???                ;00010010
0128   02                   ???                ;00000010
0129   9C                   ???                ;10011100
012A   13                   ???                ;00010011
012B   02                   ???                ;00000010
012C   A9 0C                LDA #$0C
012E   0C                   ???                ;00001100
012F   00         L012F     BRK
0130   02                   ???                ;00000010
0131   A9 13                LDA #$13
0133   1C                   ???                ;00011100
0134   00                   BRK
0135   02                   ???                ;00000010
0136   20 42 74             JSR $7442
0139   A0 04                LDY #$04
013B   20 9B 7B             JSR $7B9B
013E   00                   BRK
013F   00                   BRK
0140   4D 85 00             EOR $0085
0143   00                   BRK
0144   DA                   ???                ;11011010
0145   8D 9C 02             STA $029C
0148   02                   ???                ;00000010
0149   20 2E 7B             JSR $7B2E
014C   B0 F8                BCS L0146
014E   00                   BRK
014F   00                   BRK
0150   3B                   ???                ;00111011 ';'
0151   88                   DEY
0152   9C                   ???                ;10011100
0153   12                   ???                ;00010010
0154   02                   ???                ;00000010
0155   9C                   ???                ;10011100
0156   13                   ???                ;00010011
0157   02                   ???                ;00000010
0158   A9 04                LDA #$04
015A   1C                   ???                ;00011100
015B   00                   BRK
015C   02                   ???                ;00000010
015D   A9 00                LDA #$00
015F   80                   ???                ;10000000
0160   16 EE                ASL $EE,X
0162   12                   ???                ;00010010
0163   02                   ???                ;00000010
0164   D0 03                BNE L0169
0166   EE 13 02             INC $0213
0169   AD 13 02   L0169     LDA $0213
016C   C9 05                CMP #$05
016E   90 05                BCC L0175
0170   00                   BRK
0171   00                   BRK
0172   00                   BRK
0173   81 60                STA ($60,X)
0175   A9 06      L0175     LDA #$06
0177   A2 FF                LDX #$FF
0179   9A                   TXS
017A   48                   PHA
017B   00                   BRK
017C   00                   BRK
017D   97                   ???                ;10010111
017E   83                   ???                ;10000011
017F   64                   ???                ;01100100 'd'
0180   00                   BRK
0181   00                   BRK
0182   00                   BRK
0183   0D 88 A9             ORA $A988
0186   20 0C 00             JSR L000C
0189   02                   ???                ;00000010
018A   A9 80                LDA #$80
018C   1C                   ???                ;00011100
018D   01 02                ORA ($02,X)
018F   00                   BRK
0190   00                   BRK
0191   51 88                EOR ($88),Y
0193   FA                   ???                ;11111010
0194   AD 44 02             LDA $0244
0197   C9 FF                CMP #$FF
0199   D0 02                BNE L019D
019B   A9 00                LDA #$00
019D   00         L019D     BRK
019E   00                   BRK
019F   90 8E                BCC L012F
01A1   60                   RTS
01A2   20 48 74             JSR $7448
01A5   4C 9E 94             JMP $949E
01A8   A9 80                LDA #$80
01AA   2C F9 FF             BIT $FFF9
01AD   10 21                BPL L01D0
01AF   1C                   ???                ;00011100
01B0   00                   BRK
01B1   02                   ???                ;00000010
01B2   9C                   ???                ;10011100
01B3   0C                   ???                ;00001100
01B4   02                   ???                ;00000010
01B5   AD CB FF             LDA $FFCB
01B8   29 20                AND #$20
01BA   F0 04                BEQ L01C0
01BC   A9 01                LDA #$01
01BE   80                   ???                ;10000000
01BF   05 A9                ORA $A9
01C1   03                   ???                ;00000011
01C2   EE 0C 02             INC $020C
01C5   8D 0B 02             STA $020B
01C8   8D 05 02             STA $0205
01CB   8D CB FF             STA $FFCB
01CE   80                   ???                ;10000000
01CF   1F                   ???                ;00011111
01D0   0C         L01D0     ???                ;00001100
01D1   00                   BRK
01D2   02                   ???                ;00000010
01D3   AD FF FF             LDA $FFFF
01D6   29 F0                AND #$F0
01D8   8D 0B 02             STA $020B
01DB   2A                   ROL A
01DC   2A                   ROL A
01DD   2A                   ROL A
01DE   29 03                AND #$03
01E0   8D 0C 02             STA $020C
01E3   AD CB FF             LDA $FFCB
01E6   29 08                AND #$08
01E8   F0 05                BEQ L01EF
01EA   A9 01                LDA #$01
01EC   0C                   ???                ;00001100
01ED   00                   BRK
01EE   02                   ???                ;00000010
01EF   AD E8 FF   L01EF     LDA $FFE8
01F2   8D 08 02             STA $0208
01F5   20 FC 75             JSR $75FC
01F8   A9 00                LDA #$00
01FA   20 43 82             JSR $8243
01FD   60                   RTS
01FE   20 63 78             JSR $7863
0201   60                   RTS
0202   2C 00 02             BIT $0200
0205   30 07                BMI L020E
0207   AD 05 02             LDA $0205
020A   29 03                AND #$03
020C   4A                   LSR A
020D   60                   RTS
020E   AD FF FF   L020E     LDA $FFFF
0211   2A                   ROL A
0212   2A                   ROL A
0213   2A                   ROL A
0214   29 03                AND #$03
0216   60                   RTS
0217   AD 09 02             LDA $0209
021A   80                   ???                ;10000000
021B   02                   ???                ;00000010
021C   A9 00      L021C     LDA #$00
021E   8D 1B 02             STA $021B
0221   20 45 78             JSR $7845
0224   2C 00 02             BIT $0200
0227   30 1C                BMI L0245
0229   AD 09 02   L0229     LDA $0209
022C   48                   PHA
022D   AD 03 02             LDA $0203
0230   29 18                AND #$18
0232   48                   PHA
0233   20 A2 74             JSR $74A2
0236   48                   PHA
0237   AD 05 02             LDA $0205
023A   29 03                AND #$03
023C   48                   PHA
023D   AD 07 02             LDA $0207
0240   29 10                AND #$10
0242   48                   PHA
0243   80                   ???                ;10000000
0244   10 AD                BPL L01F3
0246   FB                   ???                ;11111011
0247   FF                   ???                ;11111111
0248   48                   PHA
0249   AD 09 02             LDA $0209
024C   48                   PHA
024D   20 A2 74             JSR $74A2
0250   48                   PHA
0251   AD FF FF             LDA $FFFF
0254   48                   PHA
0255   AD 1B 02             LDA $021B
0258   20 FE 75             JSR $75FE
025B   4C 9E 74             JMP $749E
025E   20 45 78             JSR $7845
0261   AD 0A 02             LDA $020A
0264   48                   PHA
0265   AD 07 02             LDA $0207
0268   29 C0                AND #$C0
026A   48                   PHA
026B   2C 00 02             BIT $0200
026E   30 06                BMI L0276
0270   AD 03 02             LDA $0203
0273   29 60                AND #$60
0275   48                   PHA
0276   4C 9E 74   L0276     JMP $749E
0279   20 45 78             JSR $7845
027C   2C 00 02             BIT $0200
027F   30 0F                BMI L0290
0281   64                   ???                ;01100100 'd'
0282   26 A9                ROL $A9
0284   BF                   ???                ;10111111
0285   20 EB 77             JSR $77EB
0288   68                   PLA
0289   85 26                STA $26
028B   A9 9F                LDA #$9F
028D   20 DF 77             JSR $77DF
0290   68         L0290     PLA
0291   85 26                STA $26
0293   A9 3F                LDA #$3F
0295   20 EB 77             JSR $77EB
0298   68                   PLA
0299   8D 0A 02             STA $020A
029C   8D E6 FF             STA $FFE6
029F   4C 9E 74             JMP $749E
02A2   20 45 78             JSR $7845
02A5   2C 00 02             BIT $0200
02A8   30 0C                BMI L02B6
02AA   AD 07 02             LDA $0207
02AD   29 10                AND #$10
02AF   48                   PHA
02B0   AD 09 02             LDA $0209
02B3   48                   PHA
02B4   80                   ???                ;10000000
02B5   0E AD FB             ASL $FBAD
02B8   FF                   ???                ;11111111
02B9   48                   PHA
02BA   AD 09 02             LDA $0209
02BD   48                   PHA
02BE   AD FF FF             LDA $FFFF
02C1   29 30                AND #$30
02C3   48                   PHA
02C4   4C 9E 74             JMP $749E
02C7   20 45 78             JSR $7845
02CA   2C 00 02             BIT $0200
02CD   30 11                BMI L02E0
02CF   68                   PLA
02D0   8D 09 02             STA $0209
02D3   8D D6 FF             STA $FFD6
02D6   68                   PLA
02D7   85 26                STA $26
02D9   A9 EF                LDA #$EF
02DB   20 EB 77             JSR $77EB
02DE   80                   ???                ;10000000
02DF   13                   ???                ;00010011
02E0   68         L02E0     PLA
02E1   85 26                STA $26
02E3   A9 CF                LDA #$CF
02E5   20 F7 77             JSR $77F7
02E8   68                   PLA
02E9   8D 09 02             STA $0209
02EC   8D D6 FF             STA $FFD6
02EF   68                   PLA
02F0   8D FB FF             STA $FFFB
02F3   4C 9E 74             JMP $749E
02F6   20 45 78             JSR $7845
02F9   2C 00 02             BIT $0200
02FC   10 04                BPL L0302
02FE   AD FB FF             LDA $FFFB
0301   48                   PHA
0302   AD 09 02   L0302     LDA $0209
0305   48                   PHA
0306   4C 9E 74             JMP $749E
0309   20 45 78             JSR $7845
030C   68                   PLA
030D   8D 09 02             STA $0209
0310   8D D6 FF             STA $FFD6
0313   2C 00 02             BIT $0200
0316   10 04                BPL L031C
0318   68                   PLA
0319   8D FB FF             STA $FFFB
031C   4C 9E 74   L031C     JMP $749E
031F   2C 00 02             BIT $0200
0322   30 0B                BMI L032F
0324   85 26                STA $26
0326   20 A2 74             JSR $74A2
0329   C5 26                CMP $26
032B   F0 13                BEQ L0340
032D   80                   ???                ;10000000
032E   13                   ???                ;00010011
032F   C9 04      L032F     CMP #$04
0331   B0 0F                BCS L0342
0333   0A                   ASL A
0334   0A                   ASL A
0335   0A                   ASL A
0336   0A                   ASL A
0337   29 30                AND #$30
0339   85 26                STA $26
033B   A9 CF                LDA #$CF
033D   20 F7 77             JSR $77F7
0340   38         L0340     SEC
0341   60                   RTS
0342   18         L0342     CLC
0343   60                   RTS
0344   2C 00 02             BIT $0200
0347   30 03                BMI L034C
0349   4C A2 74             JMP $74A2
034C   AD FF FF   L034C     LDA $FFFF
034F   29 30                AND #$30
0351   4A                   LSR A
0352   4A                   LSR A
0353   4A                   LSR A
0354   4A                   LSR A
0355   60                   RTS
0356   20 FC 75             JSR $75FC
0359   4C 0D 7F             JMP $7F0D
035C   A9 00                LDA #$00
035E   8D 09 02             STA $0209
0361   8D D6 FF             STA $FFD6
0364   2C 00 02             BIT $0200
0367   10 03                BPL L036C
0369   9C                   ???                ;10011100
036A   FB                   ???                ;11111011
036B   FF                   ???                ;11111111
036C   38         L036C     SEC
036D   60                   RTS
036E   AD 09 02             LDA $0209
0371   60                   RTS
0372   A9 60                LDA #$60
0374   85 26                STA $26
0376   A9 9F                LDA #$9F
0378   20 DF 77             JSR $77DF
037B   A9 40                LDA #$40
037D   85 26                STA $26
037F   A9 3F                LDA #$3F
0381   20 EB 77             JSR $77EB
0384   A9 0F                LDA #$0F
0386   8D 0A 02             STA $020A
0389   8D E6 FF             STA $FFE6
038C   60                   RTS
038D   20 45 78             JSR $7845
0390   AD 0A 02             LDA $020A
0393   48                   PHA
0394   AD 07 02             LDA $0207
0397   29 C0                AND #$C0
0399   48                   PHA
039A   2C 00 02             BIT $0200
039D   30 06                BMI L03A5
039F   AD 03 02             LDA $0203
03A2   29 60                AND #$60
03A4   48                   PHA
03A5   20 12 76   L03A5     JSR $7612
03A8   4C 9E 74             JMP $749E
03AB   20 5D 76             JSR $765D
03AE   90 0C                BCC L03BC
03B0   2C 00 02             BIT $0200
03B3   10 06                BPL L03BB
03B5   AD 0D 80             LDA $800D
03B8   20 C1 76             JSR $76C1
03BB   38         L03BB     SEC
03BC   60         L03BC     RTS
03BD   2C 00 02             BIT $0200
03C0   30 25                BMI L03E7
03C2   AA                   TAX
03C3   AD 05 02             LDA $0205
03C6   29 03                AND #$03
03C8   C9 01                CMP #$01
03CA   F0 06                BEQ L03D2
03CC   E0 01                CPX #$01
03CE   D0 3C                BNE L040C
03D0   80                   ???                ;10000000
03D1   33                   ???                ;00110011 '3'
03D2   E0 00      L03D2     CPX #$00
03D4   F0 2F                BEQ L0405
03D6   E0 01                CPX #$01
03D8   D0 32                BNE L040C
03DA   A9 10                LDA #$10
03DC   85 26                STA $26
03DE   A9 EF                LDA #$EF
03E0   20 EB 77             JSR $77EB
03E3   A9 80                LDA #$80
03E5   80                   ???                ;10000000
03E6   20 C9 04             JSR L04C9
03E9   B0 21                BCS L040C
03EB   48                   PHA
03EC   0A                   ASL A
03ED   0A                   ASL A
03EE   0A                   ASL A
03EF   0A                   ASL A
03F0   29 30                AND #$30
03F2   85 26                STA $26
03F4   A9 C1                LDA #$C1
03F6   20 F7 77             JSR $77F7
03F9   20 A5 76             JSR $76A5
03FC   AD 0D 80             LDA $800D
03FF   FA                   ???                ;11111010
0400   20 B6 76             JSR $76B6
0403   80                   ???                ;10000000
0404   05 A9                ORA $A9
0406   00                   BRK
0407   20 FE 75             JSR $75FE
040A   38                   SEC
040B   60                   RTS
040C   18         L040C     CLC
040D   60                   RTS
040E   00                   BRK
040F   08                   PHP
0410   10 18                BPL L042A
0412   18                   CLC
0413   18                   CLC
0414   18                   CLC
0415   18                   CLC
0416   E0 00                CPX #$00
0418   D0 07                BNE L0421
041A   2C 00 02             BIT $0200
041D   30 02                BMI L0421
041F   A9 04                LDA #$04
0421   2C 00 02   L0421     BIT $0200
0424   30 1A                BMI L0440
0426   AA                   TAX
0427   BD AE 76             LDA $76AE,X
042A   85 26      L042A     STA $26
042C   A9 E7                LDA #$E7
042E   20 DF 77             JSR $77DF
0431   A9 10                LDA #$10
0433   E0 04                CPX #$04
0435   F0 02                BEQ L0439
0437   A9 00                LDA #$00
0439   85 26      L0439     STA $26
043B   A9 EF                LDA #$EF
043D   4C EB 77             JMP $77EB
0440   0A         L0440     ASL A
0441   29 0E                AND #$0E
0443   85 26                STA $26
0445   A9 F1                LDA #$F1
0447   4C F7 77             JMP $77F7
044A   20 45 78             JSR $7845
044D   2C 00 02             BIT $0200
0450   30 0E                BMI L0460
0452   AD 07 02             LDA $0207
0455   29 10                AND #$10
0457   48                   PHA
0458   AD 03 02             LDA $0203
045B   29 18                AND #$18
045D   48                   PHA
045E   80                   ???                ;10000000
045F   06 AD                ASL $AD
0461   FF                   ???                ;11111111
0462   FF                   ???                ;11111111
0463   29 0E                AND #$0E
0465   48                   PHA
0466   4C 9E 74             JMP $749E
0469   20 45 78             JSR $7845
046C   2C 00 02             BIT $0200
046F   30 12                BMI L0483
0471   68                   PLA
0472   85 26                STA $26
0474   A9 E7                LDA #$E7
0476   20 DF 77             JSR $77DF
0479   68                   PLA
047A   85 26                STA $26
047C   A9 EF                LDA #$EF
047E   20 EB 77             JSR $77EB
0481   80                   ???                ;10000000
0482   08                   PHP
0483   68         L0483     PLA
0484   85 26                STA $26
0486   A9 F1                LDA #$F1
0488   20 F7 77             JSR $77F7
048B   4C 9E 74             JMP $749E
048E   20 BC 74             JSR $74BC
0491   20 FE 74             JSR $74FE
0494   BA                   TSX
0495   8E 0F 02             STX $020F
0498   A9 00                LDA #$00
049A   8D E3 FF             STA $FFE3
049D   A9 01                LDA #$01
049F   2C 00 02             BIT $0200
04A2   30 02                BMI L04A6
04A4   A9 39                LDA #$39
04A6   8D C8 FF   L04A6     STA $FFC8
04A9   EA                   NOP
04AA   EA                   NOP
04AB   EA                   NOP
04AC   EA                   NOP
04AD   EA                   NOP
04AE   80                   ???                ;10000000
04AF   F6 20                INC $20,X
04B1   19 75 20             ORA $2075,Y
04B4   0D 7F 60             ORA $607F
04B7   2C 00 02             BIT $0200
04BA   30 0C                BMI L04C8
04BC   A8                   TAY
04BD   F0 02                BEQ L04C1
04BF   A9 04                LDA #$04
04C1   85 26      L04C1     STA $26
04C3   A9 FB                LDA #$FB
04C5   4C DF 77             JMP $77DF
04C8   A8         L04C8     TAY
04C9   F0 02      L04C9     BEQ L04CD
04CB   A9 04                LDA #$04
04CD   85 26      L04CD     STA $26
04CF   A9 FB                LDA #$FB
04D1   4C 00 78             JMP $7800
04D4   20 45 78             JSR $7845
04D7   2C 00 02             BIT $0200
04DA   30 0E                BMI L04EA
04DC   AD 03 02             LDA $0203
04DF   29 04                AND #$04
04E1   48                   PHA
04E2   AD 07 02             LDA $0207
04E5   29 02                AND #$02
04E7   48                   PHA
04E8   80                   ???                ;10000000
04E9   16 AD                ASL $AD,X
04EB   05 02                ORA $02
04ED   29 04                AND #$04
04EF   48                   PHA
04F0   AD 03 02             LDA $0203
04F3   29 04                AND #$04
04F5   48                   PHA
04F6   AD 65 02             LDA $0265
04F9   48                   PHA
04FA   AD 07 02             LDA $0207
04FD   29 08                AND #$08
04FF   48                   PHA
0500   4C 9E 74             JMP $749E
0503   20 45 78             JSR $7845
0506   2C 00 02             BIT $0200
0509   30 12                BMI L051D
050B   68                   PLA
050C   85 26                STA $26
050E   A9 FD                LDA #$FD
0510   20 EB 77             JSR $77EB
0513   68                   PLA
0514   85 26                STA $26
0516   A9 FB                LDA #$FB
0518   20 DF 77             JSR $77DF
051B   80                   ???                ;10000000
051C   1F                   ???                ;00011111
051D   68         L051D     PLA
051E   85 26                STA $26
0520   A9 F7                LDA #$F7
0522   20 EB 77             JSR $77EB
0525   68                   PLA
0526   8D 65 02             STA $0265
0529   8D FE FF             STA $FFFE
052C   68                   PLA
052D   85 26                STA $26
052F   A9 FB                LDA #$FB
0531   20 DF 77             JSR $77DF
0534   68                   PLA
0535   85 26                STA $26
0537   A9 FB                LDA #$FB
0539   20 00 78             JSR $7800
053C   4C 9E 74             JMP $749E
053F   2D 03 02             AND $0203
0542   05 26                ORA $26
0544   8D 03 02             STA $0203
0547   8D C8 FF             STA $FFC8
054A   60                   RTS
054B   2D 07 02             AND $0207
054E   05 26                ORA $26
0550   8D 07 02             STA $0207
0553   8D E5 FF             STA $FFE5
0556   60                   RTS
0557   2D FF FF             AND $FFFF
055A   05 26                ORA $26
055C   8D FF FF             STA $FFFF
055F   60                   RTS
0560   2D 05 02             AND $0205
0563   05 26                ORA $26
0565   8D 05 02             STA $0205
0568   8D CB FF             STA $FFCB
056B   60                   RTS
056C   20 45 78             JSR $7845
056F   2C 00 02             BIT $0200
0572   10 07                BPL L057B
0574   AD F9 FF             LDA $FFF9
0577   48                   PHA
0578   9C                   ???                ;10011100
0579   F9 FF AD             SBC $ADFF,Y
057C   D0 FF                BNE L057D
057E   48                   PHA
057F   AD CF FF             LDA $FFCF
0582   48                   PHA
0583   AD CE FF             LDA $FFCE
0586   48                   PHA
0587   4C 9E 74             JMP $749E
058A   20 45 78             JSR $7845
058D   68                   PLA
058E   8D CE FF             STA $FFCE
0591   68                   PLA
0592   8D CF FF             STA $FFCF
0595   68                   PLA
0596   8D D0 FF             STA $FFD0
0599   2C 00 02             BIT $0200
059C   10 04                BPL L05A2
059E   68                   PLA
059F   8D F9 FF             STA $FFF9
05A2   4C 9E 74   L05A2     JMP $749E
05A5   DA                   ???                ;11011010
05A6   BA                   TSX
05A7   BD 05 01             LDA $0105,X
05AA   8D 19 02             STA L0219
05AD   BD 04 01             LDA $0104,X
05B0   8D 1A 02             STA $021A
05B3   BD 02 01             LDA $0102,X
05B6   9D 04 01             STA $0104,X
05B9   BD 03 01             LDA $0103,X
05BC   9D 05 01             STA $0105,X
05BF   FA                   ???                ;11111010
05C0   68                   PLA
05C1   68                   PLA
05C2   60                   RTS
05C3   48                   PHA
05C4   48                   PHA
05C5   DA                   ???                ;11011010
05C6   BA                   TSX
05C7   BD 04 01             LDA $0104,X
05CA   9D 02 01             STA $0102,X
05CD   BD 05 01             LDA $0105,X
05D0   9D 03 01             STA $0103,X
05D3   AD 19 02             LDA L0219
05D6   9D 05 01             STA $0105,X
05D9   AD 1A 02             LDA $021A
05DC   9D 04 01             STA $0104,X
05DF   FA                   ???                ;11111010
05E0   60                   RTS
05E1   48                   PHA
05E2   DA                   ???                ;11011010
05E3   E6 17                INC $17
05E5   D0 06                BNE L05ED
05E7   E6 18                INC $18
05E9   D0 02                BNE L05ED
05EB   E6 19                INC $19
05ED   18         L05ED     CLC
05EE   AD 9A 7B             LDA $7B9A
05F1   F0 0C                BEQ L05FF
05F3   2C 00 02             BIT $0200
05F6   10 07                BPL L05FF
05F8   AD 07 02             LDA $0207
05FB   29 04                AND #$04
05FD   D0 17                BNE L0616
05FF   AD 0D 02   L05FF     LDA $020D
0602   F0 12                BEQ L0616
0604   AE CE FF             LDX $FFCE
0607   8D CE FF             STA $FFCE
060A   AD CA FF             LDA $FFCA
060D   8E CE FF             STX $FFCE
0610   2D 0E 02             AND L020E
0613   D0 01                BNE L0616
0615   38                   SEC
0616   AD CB FF   L0616     LDA $FFCB
0619   B0 0F                BCS L062A
061B   10 19                BPL L0636
061D   2C 01 02             BIT $0201
0620   10 14                BPL L0636
0622   A9 04                LDA #$04
0624   0C                   ???                ;00001100
0625   01 02                ORA ($02,X)
0627   FA                   ???                ;11111010
0628   68                   PLA
0629   40                   RTI
062A   30 0A      L062A     BMI L0636
062C   4C 6A 7A   L062C     JMP $7A6A
062F   EE 02 02   L062F     INC $0202
0632   F0 09                BEQ L063D
0634   80                   ???                ;10000000
0635   EC A9 20             CPX $20A9
0638   1C                   ???                ;00011100
0639   00                   BRK
063A   02                   ???                ;00000010
063B   F0 F2                BEQ L062F
063D   5A         L063D     ???                ;01011010 'Z'
063E   D8                   CLD
063F   A5 0B                LDA $0B
0641   48                   PHA
0642   A5 0A                LDA L000A
0644   48                   PHA
0645   9C                   ???                ;10011100
0646   02                   ???                ;00000010
0647   02                   ???                ;00000010
0648   AD 01 02             LDA $0201
064B   29 02                AND #$02
064D   D0 13                BNE L0662
064F   20 46 7B             JSR $7B46
0652   90 3D                BCC L0691
0654   AD 00 02   L0654     LDA $0200
0657   29 40                AND #$40
0659   F0 07                BEQ L0662
065B   A9 10                LDA #$10
065D   0C                   ???                ;00001100
065E   01 02                ORA ($02,X)
0660   80                   ???                ;10000000
0661   62                   ???                ;01100010 'b'
0662   20 98 79   L0662     JSR $7998
0665   AD 44 02             LDA $0244
0668   CD 41 02             CMP $0241
066B   B0 06                BCS L0673
066D   A2 03                LDX #$03
066F   00                   BRK
0670   00                   BRK
0671   90 8E                BCC L0601
0673   AD 00 02   L0673     LDA $0200
0676   29 30                AND #$30
0678   48                   PHA
0679   AD 01 02             LDA $0201
067C   29 88                AND #$88
067E   48                   PHA
067F   A9 92                LDA #$92
0681   1C                   ???                ;00011100
0682   01 02                ORA ($02,X)
0684   20 6D 7A             JSR $7A6D
0687   68                   PLA
0688   0C                   ???                ;00001100
0689   01 02                ORA ($02,X)
068B   68                   PLA
068C   0C                   ???                ;00001100
068D   00                   BRK
068E   02                   ???                ;00000010
068F   80                   ???                ;10000000
0690   62                   ???                ;01100010 'b'
0691   AD 01 02   L0691     LDA $0201
0694   29 10                AND #$10
0696   D0 BC                BNE L0654
0698   20 33 7B             JSR $7B33
069B   90 17                BCC L06B4
069D   A9 04                LDA #$04
069F   0C                   ???                ;00001100
06A0   00                   BRK
06A1   02                   ???                ;00000010
06A2   D0 20                BNE L06C4
06A4   AD 01 02             LDA $0201
06A7   29 08                AND #$08
06A9   D0 81                BNE L062C
06AB   20 98 79             JSR $7998
06AE   20 01 74             JSR $7401
06B1   20 C3 79             JSR $79C3
06B4   9C         L06B4     ???                ;10011100
06B5   12                   ???                ;00010010
06B6   02                   ???                ;00000010
06B7   9C                   ???                ;10011100
06B8   13                   ???                ;00010011
06B9   02                   ???                ;00000010
06BA   A9 04                LDA #$04
06BC   1C                   ???                ;00011100
06BD   00                   BRK
06BE   02                   ???                ;00000010
06BF   AD 2D 02             LDA $022D
06C2   D0 0F                BNE L06D3
06C4   68         L06C4     PLA
06C5   85 0A                STA L000A
06C7   68                   PLA
06C8   85 0B                STA $0B
06CA   A9 20                LDA #$20
06CC   0C                   ???                ;00001100
06CD   00                   BRK
06CE   02                   ???                ;00000010
06CF   7A                   ???                ;01111010 'z'
06D0   4C C2 78             JMP $78C2
06D3   20 A2 74   L06D3     JSR $74A2
06D6   CD 42 02             CMP $0242
06D9   D0 E9                BNE L06C4
06DB   CE 2D 02             DEC $022D
06DE   D0 E4                BNE L06C4
06E0   AD 00 02             LDA $0200
06E3   29 50                AND #$50
06E5   F0 05                BEQ L06EC
06E7   EE 2D 02             INC $022D
06EA   80                   ???                ;10000000
06EB   D8                   CLD
06EC   20 98 79   L06EC     JSR $7998
06EF   00                   BRK
06F0   00                   BRK
06F1   9B                   ???                ;10011011
06F2   83                   ???                ;10000011
06F3   20 C3 79             JSR $79C3
06F6   80                   ???                ;10000000
06F7   CC 68 85             CPY $8568
06FA   0A                   ASL A
06FB   68                   PLA
06FC   85 0B                STA $0B
06FE   A5 26                LDA $26
0700   48                   PHA
0701   A2 09                LDX #$09
0703   BD 14 02   L0703     LDA $0214,X
0706   48                   PHA
0707   CA                   DEX
0708   10 F9                BPL L0703
070A   A5 0C                LDA L000C
070C   48                   PHA
070D   20 74 77             JSR $7774
0710   A9 00                LDA #$00
0712   20 57 77             JSR $7757
0715   20 FE 74             JSR $74FE
0718   00                   BRK
0719   00                   BRK
071A   1F                   ???                ;00011111
071B   82                   ???                ;10000010
071C   A5 0B                LDA $0B
071E   48                   PHA
071F   A5 0A                LDA L000A
0721   48                   PHA
0722   60                   RTS
0723   68                   PLA
0724   85 0A                STA L000A
0726   68                   PLA
0727   85 0B                STA $0B
0729   20 19 75             JSR $7519
072C   20 A3 77             JSR $77A3
072F   68                   PLA
0730   85 0C                STA L000C
0732   A2 00                LDX #$00
0734   68         L0734     PLA
0735   9D 14 02             STA $0214,X
0738   E8                   INX
0739   E0 0A                CPX #$0A
073B   90 F7                BCC L0734
073D   68                   PLA
073E   85 26      L073E     STA $26
0740   80                   ???                ;10000000
0741   DA                   ???                ;11011010
0742   4C 6A 7B             JMP $7B6A
0745   48                   PHA
0746   DA                   ???                ;11011010
0747   BA                   TSX
0748   BD 03 01             LDA $0103,X
074B   89                   ???                ;10001001
074C   10 F0                BPL L073E
074E   F3                   ???                ;11110011
074F   D8                   CLD
0750   89                   ???                ;10001001
0751   04                   ???                ;00000100
0752   D0 01                BNE L0755
0754   58                   CLI
0755   8C 16 02   L0755     STY $0216
0758   68                   PLA
0759   8D 15 02             STA $0215
075C   68                   PLA
075D   8D 14 02             STA $0214
0760   68                   PLA
0761   8D 17 02             STA $0217
0764   7A                   ???                ;01111010 'z'
0765   8C 19 02             STY L0219
0768   68                   PLA
0769   AA                   TAX
076A   C8                   INY
076B   D0 01                BNE L076E
076D   1A                   ???                ;00011010
076E   48         L076E     PHA
076F   5A                   ???                ;01011010 'Z'
0770   AC 19 02             LDY L0219
0773   D0 01                BNE L0776
0775   CA                   DEX
0776   88         L0776     DEY
0777   20 42 75             JSR $7542
077A   20 A2 74             JSR $74A2
077D   20 BF 75             JSR $75BF
0780   20 37 7A             JSR $7A37
0783   8D 14 02             STA $0214
0786   08                   PHP
0787   68                   PLA
0788   8D 17 02             STA $0217
078B   20 67 75             JSR $7567
078E   AD 17 02             LDA $0217
0791   48                   PHA
0792   28                   PLP
0793   AD 14 02             LDA $0214
0796   60                   RTS
0797   A5 02                LDA $02
0799   48                   PHA
079A   A5 03                LDA $03
079C   48                   PHA
079D   84 02                STY $02
079F   86 03                STX $03
07A1   A0 02                LDY #$02
07A3   B1 02                LDA ($02),Y
07A5   8D 1A 02             STA $021A
07A8   88                   DEY
07A9   B1 02                LDA ($02),Y
07AB   8D 19 02             STA L0219
07AE   B2                   ???                ;10110010
07AF   02                   ???                ;00000010
07B0   FA                   ???                ;11111010
07B1   86 03                STX $03
07B3   FA                   ???                ;11111010
07B4   86 02                STX $02
07B6   20 FE 75             JSR $75FE
07B9   AE 15 02             LDX $0215
07BC   AC 16 02             LDY $0216
07BF   AD 17 02             LDA $0217
07C2   48                   PHA
07C3   28                   PLP
07C4   AD 14 02             LDA $0214
07C7   6C 19 02             JMP (L0219)
07CA   20 E3 7A             JSR $7AE3
07CD   20 E3 7A             JSR $7AE3
07D0   20 E3 7A             JSR $7AE3
07D3   20 E3 7A             JSR $7AE3
07D6   20 E3 7A             JSR $7AE3
07D9   20 E3 7A             JSR $7AE3
07DC   20 E3 7A             JSR $7AE3
07DF   20 E3 7A             JSR $7AE3
07E2   20 E3 7A             JSR $7AE3
07E5   20 E3 7A             JSR $7AE3
07E8   20 E3 7A             JSR $7AE3
07EB   20 E3 7A             JSR $7AE3
07EE   20 E3 7A             JSR $7AE3
07F1   20 E3 7A             JSR $7AE3
07F4   20 E3 7A             JSR $7AE3
07F7   20 E3 7A             JSR $7AE3
07FA   20 E3 7A             JSR $7AE3
07FD   20 E3 7A             JSR $7AE3
0800   20 E3 7A             JSR $7AE3
0803   20 E7 7A             JSR $7AE7
0806   20 E7 7A             JSR $7AE7
0809   20 C3 7A             JSR $7AC3
080C   20 C3 7A             JSR $7AC3
080F   20 C3 7A             JSR $7AC3
0812   20 C3 7A             JSR $7AC3
0815   20 C3 7A             JSR $7AC3
0818   20 C3 7A             JSR $7AC3
081B   20 BE 7A             JSR $7ABE
081E   48                   PHA
081F   A9 00                LDA #$00
0821   80                   ???                ;10000000
0822   03                   ???                ;00000011
0823   48                   PHA
0824   A9 02                LDA #$02
0826   DA                   ???                ;11011010
0827   A2 02                LDX #$02
0829   5A                   ???                ;01011010 'Z'
082A   85 0A                STA L000A
082C   86 0B                STX $0B
082E   20 70 7A             JSR $7A70
0831   98                   TYA
0832   C5 0A                CMP L000A
0834   8A                   TXA
0835   E5 0B                SBC $0B
0837   7A                   ???                ;01111010 'z'
0838   FA                   ???                ;11111010
0839   68                   PLA
083A   B0 07                BCS L0843
083C   85 26                STA $26
083E   20 A2 74             JSR $74A2
0841   80                   ???                ;10000000
0842   04                   ???                ;00000100
0843   85 26      L0843     STA $26
0845   A9 FF                LDA #$FF
0847   8D 18 02             STA $0218
084A   38                   SEC
084B   68                   PLA
084C   E9 6C                SBC #$6C
084E   18                   CLC
084F   69 40                ADC #$40
0851   8D 1C 02             STA L021C
0854   68                   PLA
0855   EA                   NOP
0856   A9 7E                LDA #$7E
0858   8D 1D 02             STA $021D
085B   08                   PHP
085C   68                   PLA
085D   29 04                AND #$04
085F   48                   PHA
0860   AD 18 02             LDA $0218
0863   48                   PHA
0864   10 01                BPL L0867
0866   78                   SEI
0867   AD 2D 02   L0867     LDA $022D
086A   48                   PHA
086B   9C                   ???                ;10011100
086C   2D 02 A5             AND $A502
086F   26 20                ROL $20
0871   9D 7E 68             STA $687E,X
0874   8D 2D 02             STA $022D
0877   68                   PLA
0878   30 05                BMI L087F
087A   68                   PLA
087B   A9 00                LDA #$00
087D   80                   ???                ;10000000
087E   06 A9                ASL $A9
0880   04                   ???                ;00000100
0881   1C                   ???                ;00011100
0882   17                   ???                ;00010111
0883   02                   ???                ;00000010
0884   68                   PLA
0885   0D 17 02             ORA $0217
0888   48                   PHA
0889   28                   PLP
088A   AD 14 02             LDA $0214
088D   60                   RTS
088E   A9 03                LDA #$03
0890   4C BB 7A             JMP $7ABB
0893   AD 0D 02             LDA $020D
0896   F0 0C                BEQ L08A4
0898   DA                   ???                ;11011010
0899   20 51 7B             JSR $7B51
089C   FA                   ???                ;11111010
089D   2D 0E 02             AND L020E
08A0   D0 02                BNE L08A4
08A2   38                   SEC
08A3   60                   RTS
08A4   18         L08A4     CLC
08A5   60                   RTS
08A6   AD CB FF             LDA $FFCB
08A9   29 80                AND #$80
08AB   D0 02                BNE L08AF
08AD   38                   SEC
08AE   60                   RTS
08AF   18         L08AF     CLC
08B0   60                   RTS
08B1   AE CE FF             LDX $FFCE
08B4   8D CE FF             STA $FFCE
08B7   AD CA FF             LDA $FFCA
08BA   8E CE FF             STX $FFCE
08BD   60                   RTS
08BE   A8                   TAY
08BF   A9 04                LDA #$04
08C1   4C BB 7A             JMP $7ABB
08C4   A8                   TAY
08C5   A9 06                LDA #$06
08C7   4C BB 7A             JMP $7ABB
08CA   4C 0D 82             JMP $820D
08CD   C9 00                CMP #$00
08CF   D0 03                BNE L08D4
08D1   4C A0 7B             JMP $7BA0
08D4   C9 03      L08D4     CMP #$03
08D6   D0 05                BNE L08DD
08D8   00                   BRK
08D9   00                   BRK
08DA   8C 94 60             STY $6094
08DD   C9 04      L08DD     CMP #$04
08DF   D0 05                BNE L08E6
08E1   00                   BRK
08E2   00                   BRK
08E3   D6 8E                DEC $8E,X
08E5   60                   RTS
08E6   C9 05      L08E6     CMP #$05
08E8   D0 05                BNE L08EF
08EA   00                   BRK
08EB   00                   BRK
08EC   B7                   ???                ;10110111
08ED   9F                   ???                ;10011111
08EE   60                   RTS
08EF   C9 06      L08EF     CMP #$06
08F1   D0 05                BNE L08F8
08F3   00                   BRK
08F4   00                   BRK
08F5   E1 8E                SBC ($8E,X)
08F7   60                   RTS
08F8   18         L08F8     CLC
08F9   60                   RTS
08FA   00                   BRK
08FB   A9 00                LDA #$00
08FD   4C BB 7A             JMP $7ABB
0900   88                   DEY
0901   10 27                BPL L092A
0903   2C 00 02             BIT $0200
0906   10 0E                BPL L0916
0908   9C                   ???                ;10011100
0909   F9 FF 9C             SBC $9CFF,Y
090C   FA                   ???                ;11111010
090D   FF                   ???                ;11111111
090E   A9 20                LDA #$20
0910   8D 07 02             STA $0207
0913   8D E5 FF             STA $FFE5
0916   9C         L0916     ???                ;10011100
0917   D0 FF                BNE L0918
0919   9C                   ???                ;10011100
091A   CF                   ???                ;11001111
091B   FF                   ???                ;11111111
091C   9C                   ???                ;10011100
091D   CE FF 9C             DEC $9CFF
0920   D5 FF                CMP $FF,X
0922   9C                   ???                ;10011100
0923   D4                   ???                ;11010100
0924   FF                   ???                ;11111111
0925   9C                   ???                ;10011100
0926   D3                   ???                ;11010011
0927   FF                   ???                ;11111111
0928   80                   ???                ;10000000
0929   12                   ???                ;00010010
092A   88         L092A     DEY
092B   10 08                BPL L0935
092D   64                   ???                ;01100100 'd'
092E   17                   ???                ;00010111
092F   64                   ???                ;01100100 'd'
0930   18                   CLC
0931   64                   ???                ;01100100 'd'
0932   19 80 07             ORA $0780,Y
0935   88         L0935     DEY
0936   10 04                BPL L093C
0938   8A                   TXA
0939   4C 51 7B             JMP $7B51
093C   18         L093C     CLC
093D   60                   RTS
093E   48                   PHA
093F   A9 40                LDA #$40
0941   0C                   ???                ;00001100
0942   00                   BRK
0943   02                   ???                ;00000010
0944   68                   PLA
0945   60                   RTS
0946   48                   PHA
0947   A9 40                LDA #$40
0949   1C                   ???                ;00011100
094A   00                   BRK
094B   02                   ???                ;00000010
094C   68                   PLA
094D   60                   RTS
094E   AD 08 02             LDA $0208
0951   29 03                AND #$03
0953   AA                   TAX
0954   60                   RTS
0955   42                   ???                ;01000010 'B'
0956   6F                   ???                ;01101111 'o'
0957   6F                   ???                ;01101111 'o'
0958   6B                   ???                ;01101011 'k'
0959   6D 61 6E             ADC $6E61
095C   31 A8                AND ($A8),Y
095E   00                   BRK
095F   00                   BRK
0960   61 82                ADC ($82,X)
0962   90 1E                BCC L0982
0964   20 42 75             JSR $7542
0967   98                   TYA
0968   20 5D 76             JSR $765D
096B   90 12                BCC L097F
096D   A2 07                LDX #$07
096F   BD F5 7B   L096F     LDA $7BF5,X
0972   DD 00 80             CMP $8000,X
0975   D0 08                BNE L097F
0977   CA                   DEX
0978   10 F5                BPL L096F
097A   20 67 75             JSR $7567
097D   38                   SEC
097E   60                   RTS
097F   20 67 75   L097F     JSR $7567
0982   18         L0982     CLC
0983   60                   RTS
0984   85 26                STA $26
0986   A5 10                LDA $10
0988   48                   PHA
0989   A5 0F                LDA $0F
098B   48                   PHA
098C   A5 11                LDA $11
098E   48                   PHA
098F   20 FE 74             JSR $74FE
0992   20 BC 74             JSR $74BC
0995   A5 26                LDA $26
0997   85 10                STA $10
0999   86 0F                STX $0F
099B   84 11                STY $11
099D   00                   BRK
099E   00                   BRK
099F   61 82                ADC ($82,X)
09A1   B0 03                BCS L09A6
09A3   4C F5 7C             JMP $7CF5
09A6   A5 10      L09A6     LDA $10
09A8   A6 0F                LDX $0F
09AA   A0 00                LDY #$00
09AC   20 76 7D             JSR $7D76
09AF   8E 1D 02             STX $021D
09B2   8C 1C 02             STY L021C
09B5   E0 20                CPX #$20
09B7   90 0A                BCC L09C3
09B9   E0 7F                CPX #$7F
09BB   F0 02                BEQ L09BF
09BD   B0 04                BCS L09C3
09BF   C0 FA      L09BF     CPY #$FA
09C1   90 03                BCC L09C6
09C3   4C F5 7C   L09C3     JMP $7CF5
09C6   A9 00      L09C6     LDA #$00
09C8   00                   BRK
09C9   00                   BRK
09CA   43                   ???                ;01000011 'C'
09CB   82                   ???                ;10000010
09CC   A9 00                LDA #$00
09CE   00                   BRK
09CF   00                   BRK
09D0   4A                   LSR A
09D1   82                   ???                ;10000010
09D2   00                   BRK
09D3   00                   BRK
09D4   1F                   ???                ;00011111
09D5   82                   ???                ;10000010
09D6   A5 10                LDA $10
09D8   A6 0F                LDX $0F
09DA   A0 2A                LDY #$2A
09DC   20 76 7D             JSR $7D76
09DF   29 01                AND #$01
09E1   F0 28                BEQ L0A0B
09E3   AD 1D 02             LDA $021D
09E6   C9 40                CMP #$40
09E8   90 D9                BCC L09C3
09EA   00                   BRK
09EB   00                   BRK
09EC   31 82                AND ($82),Y
09EE   A5 10                LDA $10
09F0   A0 0F                LDY #$0F
09F2   20 F7 7D             JSR $7DF7
09F5   C0 00                CPY #$00
09F7   D0 06                BNE L09FF
09F9   E0 00                CPX #$00
09FB   D0 02                BNE L09FF
09FD   C9 00                CMP #$00
09FF   F0 0A      L09FF     BEQ L0A0B
0A01   A5 10                LDA $10
0A03   F0 06                BEQ L0A0B
0A05   A9 01                LDA #$01
0A07   00                   BRK
0A08   00                   BRK
0A09   4A                   LSR A
0A0A   82                   ???                ;10000010
0A0B   A5 10      L0A0B     LDA $10
0A0D   A0 0D                LDY #$0D
0A0F   20 F2 7D             JSR $7DF2
0A12   48                   PHA
0A13   A9 01                LDA #$01
0A15   20 FE 75             JSR $75FE
0A18   68                   PLA
0A19   A6 10                LDX $10
0A1B   20 B6 76             JSR $76B6
0A1E   A4 11                LDY $11
0A20   C0 03                CPY #$03
0A22   F0 05                BEQ L0A29
0A24   A9 03                LDA #$03
0A26   1C                   ???                ;00011100
0A27   00                   BRK
0A28   02                   ???                ;00000010
0A29   A5 10      L0A29     LDA $10
0A2B   8D 18 02             STA $0218
0A2E   98                   TYA
0A2F   20 01 7D             JSR $7D01
0A32   D0 03                BNE L0A37
0A34   A2 FF                LDX #$FF
0A36   9A                   TXS
0A37   48         L0A37     PHA
0A38   20 9D 7E             JSR $7E9D
0A3B   85 26                STA $26
0A3D   68                   PLA
0A3E   20 01 7D             JSR $7D01
0A41   F0 12                BEQ L0A55
0A43   20 F6 75             JSR $75F6
0A46   20 19 75             JSR $7519
0A49   68                   PLA
0A4A   85 11                STA $11
0A4C   68                   PLA
0A4D   85 0F                STA $0F
0A4F   68                   PLA
0A50   85 10                STA $10
0A52   A5 26                LDA $26
0A54   60                   RTS
0A55   A9 01      L0A55     LDA #$01
0A57   0C                   ???                ;00001100
0A58   00                   BRK
0A59   02                   ???                ;00000010
0A5A   00                   BRK
0A5B   00                   BRK
0A5C   00                   BRK
0A5D   81 4C                STA ($4C,X)
0A5F   6A                   ROR A
0A60   7A                   ???                ;01111010 'z'
0A61   C9 00                CMP #$00
0A63   F0 06                BEQ L0A6B
0A65   C9 04                CMP #$04
0A67   F0 02                BEQ L0A6B
0A69   C9 06                CMP #$06
0A6B   60         L0A6B     RTS
0A6C   85 0A                STA L000A
0A6E   86 0B                STX $0B
0A70   00                   BRK
0A71   00                   BRK
0A72   61 82                ADC ($82,X)
0A74   B0 02                BCS L0A78
0A76   18                   CLC
0A77   60                   RTS
0A78   20 BC 74   L0A78     JSR $74BC
0A7B   A5 0A                LDA L000A
0A7D   20 4B 76             JSR $764B
0A80   B0 05                BCS L0A87
0A82   20 F6 75             JSR $75F6
0A85   18                   CLC
0A86   60                   RTS
0A87   A5 0A      L0A87     LDA L000A
0A89   A6 0B                LDX $0B
0A8B   A0 04                LDY #$04
0A8D   20 76 7D             JSR $7D76
0A90   84 1A                STY $1A
0A92   8A                   TXA
0A93   09 80                ORA #$80
0A95   85 1B                STA $1B
0A97   A0 06                LDY #$06
0A99   B1 1A                LDA ($1A),Y
0A9B   8D CE FF             STA $FFCE
0A9E   C8                   INY
0A9F   B1 1A                LDA ($1A),Y
0AA1   8D CF FF             STA $FFCF
0AA4   C8                   INY
0AA5   AD 09 02             LDA $0209
0AA8   4A                   LSR A
0AA9   18                   CLC
0AAA   71 1A                ADC ($1A),Y
0AAC   8D D0 FF             STA $FFD0
0AAF   00                   BRK
0AB0   00                   BRK
0AB1   7D 85 00             ADC $0085,X
0AB4   00                   BRK
0AB5   BA                   TSX
0AB6   95 20                STA $20,X
0AB8   F6 75                INC $75,X
0ABA   38                   SEC
0ABB   60                   RTS
0ABC   DA                   ???                ;11011010
0ABD   20 BC 74             JSR $74BC
0AC0   A5 0A                LDA L000A
0AC2   20 4B 76             JSR $764B
0AC5   A0 00                LDY #$00
0AC7   AD CC FF   L0AC7     LDA $FFCC
0ACA   91 02                STA ($02),Y
0ACC   C8                   INY
0ACD   C0 05                CPY #$05
0ACF   90 F6                BCC L0AC7
0AD1   20 F6 75             JSR $75F6
0AD4   FA                   ???                ;11111010
0AD5   60                   RTS
0AD6   20 7B 7D             JSR $7D7B
0AD9   98                   TYA
0ADA   60                   RTS
0ADB   85 26                STA $26
0ADD   A5 0C                LDA L000C
0ADF   48                   PHA
0AE0   A5 0B                LDA $0B
0AE2   48                   PHA
0AE3   A5 0A                LDA L000A
0AE5   48                   PHA
0AE6   A5 02                LDA $02
0AE8   48                   PHA
0AE9   A5 03                LDA $03
0AEB   48                   PHA
0AEC   A5 04                LDA $04
0AEE   48                   PHA
0AEF   A5 26                LDA $26
0AF1   85 02                STA $02
0AF3   86 03                STX $03
0AF5   84 04                STY $04
0AF7   A2 00                LDX #$00
0AF9   A0 40                LDY #$40
0AFB   A5 03                LDA $03
0AFD   00                   BRK
0AFE   00                   BRK
0AFF   47                   ???                ;01000111 'G'
0B00   94 86                STY $86,X
0B02   0B                   ???                ;00001011
0B03   84 0A                STY L000A
0B05   18                   CLC
0B06   A5 0A                LDA L000A
0B08   69 7A                ADC #$7A
0B0A   85 0A                STA L000A
0B0C   A5 0B                LDA $0B
0B0E   69 80                ADC #$80
0B10   85 0B                STA $0B
0B12   20 42 75             JSR $7542
0B15   A5 02                LDA $02
0B17   20 5D 76             JSR $765D
0B1A   A4 04                LDY $04
0B1C   C8                   INY
0B1D   C8                   INY
0B1E   B1 0A                LDA (L000A),Y
0B20   85 26                STA $26
0B22   88                   DEY
0B23   B1 0A                LDA (L000A),Y
0B25   AA                   TAX
0B26   88                   DEY
0B27   B1 0A                LDA (L000A),Y
0B29   A8                   TAY
0B2A   A5 26                LDA $26
0B2C   85 0C                STA L000C
0B2E   86 0B                STX $0B
0B30   84 0A                STY L000A
0B32   20 67 75             JSR $7567
0B35   68                   PLA
0B36   85 04                STA $04
0B38   68                   PLA
0B39   85 03                STA $03
0B3B   68                   PLA
0B3C   85 02                STA $02
0B3E   A5 0C                LDA L000C
0B40   A6 0B                LDX $0B
0B42   A4 0A                LDY L000A
0B44   85 26                STA $26
0B46   68                   PLA
0B47   85 0A                STA L000A
0B49   68                   PLA
0B4A   85 0B                STA $0B
0B4C   68                   PLA
0B4D   85 0C                STA L000C
0B4F   A5 26                LDA $26
0B51   60                   RTS
0B52   20 F7 7D             JSR $7DF7
0B55   98                   TYA
0B56   60                   RTS
0B57   85 26                STA $26
0B59   A5 0C                LDA L000C
0B5B   48                   PHA
0B5C   A5 0B                LDA $0B
0B5E   48                   PHA
0B5F   A5 0A                LDA L000A
0B61   48                   PHA
0B62   A5 02                LDA $02
0B64   48                   PHA
0B65   A5 03                LDA $03
0B67   48                   PHA
0B68   A5 04                LDA $04
0B6A   48                   PHA
0B6B   A5 26                LDA $26
0B6D   85 02                STA $02
0B6F   84 04                STY $04
0B71   A9 80                LDA #$80
0B73   85 0B                STA $0B
0B75   64                   ???                ;01100100 'd'
0B76   0A                   ASL A
0B77   80                   ???                ;10000000
0B78   99 48 5A             STA $5A48,Y
0B7B   DA                   ???                ;11011010
0B7C   20 A2 74             JSR $74A2
0B7F   48                   PHA
0B80   A0 0D                LDY #$0D
0B82   20 F2 7D             JSR $7DF2
0B85   FA                   ???                ;11111010
0B86   20 B6 76             JSR $76B6
0B89   FA                   ???                ;11111010
0B8A   7A                   ???                ;01111010 'z'
0B8B   68                   PLA
0B8C   60                   RTS
0B8D   FF                   ???                ;11111111
0B8E   FF                   ???                ;11111111
0B8F   FF                   ???                ;11111111
0B90   FF                   ???                ;11111111
0B91   FF                   ???                ;11111111
0B92   FF                   ???                ;11111111
0B93   FF                   ???                ;11111111
0B94   FF                   ???                ;11111111
0B95   FF                   ???                ;11111111
0B96   FF                   ???                ;11111111
0B97   FF                   ???                ;11111111
0B98   FF                   ???                ;11111111
0B99   FF                   ???                ;11111111
0B9A   FF                   ???                ;11111111
0B9B   FF                   ???                ;11111111
0B9C   FF                   ???                ;11111111
0B9D   FF                   ???                ;11111111
0B9E   FF                   ???                ;11111111
0B9F   FF                   ???                ;11111111
0BA0   88                   DEY
0BA1   73                   ???                ;01110011 's'
0BA2   00                   BRK
0BA3   37                   ???                ;00110111 '7'
0BA4   81 00                STA ($00,X)
0BA6   75 9D                ADC $9D,X
0BA8   00                   BRK
0BA9   7A                   ???                ;01111010 'z'
0BAA   9D 00 5C             STA $5C00,X
0BAD   95 00                STA $00,X
0BAF   61 82                ADC ($82,X)
0BB1   00                   BRK
0BB2   FD 7B 00             SBC $007B,X
0BB5   21 96                AND ($96,X)
0BB7   00                   BRK
0BB8   D1 9B                CMP ($9B),Y
0BBA   00                   BRK
0BBB   24 7C                BIT $7C
0BBD   00                   BRK
0BBE   0C                   ???                ;00001100
0BBF   7D 00 99             ADC $9900,X
0BC2   96 00                STX $00,Y
0BC4   59 96 00             EOR $0096,Y
0BC7   3D 96 00             AND $0096,X
0BCA   C8                   INY
0BCB   99 00 53             STA $5300,Y
0BCE   97                   ???                ;10010111
0BCF   00                   BRK
0BD0   5D 98 00             EOR $0098,X
0BD3   9C                   ???                ;10011100
0BD4   98                   TYA
0BD5   00                   BRK
0BD6   4D 90 00             EOR $0090
0BD9   E7                   ???                ;11100111
0BDA   99 00 AD             STA $AD00,Y
0BDD   9A                   TXS
0BDE   00                   BRK
0BDF   FB                   ???                ;11111011
0BE0   9D 00 12             STA $1200,X
0BE3   9F                   ???                ;10011111
0BE4   00                   BRK
0BE5   3C                   ???                ;00111100 '<'
0BE6   9F                   ???                ;10011111
0BE7   00                   BRK
0BE8   97                   ???                ;10010111
0BE9   9F                   ???                ;10011111
0BEA   00                   BRK
0BEB   EB                   ???                ;11101011
0BEC   9D 00 D4             STA $D400,X
0BEF   97                   ???                ;10010111
0BF0   00                   BRK
0BF1   6D 7B 00             ADC $007B
0BF4   FF                   ???                ;11111111
0BF5   FF                   ???                ;11111111
0BF6   FF                   ???                ;11111111
0BF7   FF                   ???                ;11111111
0BF8   FF                   ???                ;11111111
0BF9   FF                   ???                ;11111111
0BFA   FF                   ???                ;11111111
0BFB   FF                   ???                ;11111111
0BFC   FF                   ???                ;11111111
0BFD   8D 14 02             STA $0214
0C00   20 B7 74             JSR $74B7
0C03   AD 18 02             LDA $0218
0C06   C9 FE                CMP #$FE
0C08   D0 0B                BNE L0C15
0C0A   1A                   ???                ;00011010
0C0B   8D 18 02             STA $0218
0C0E   A9 40                LDA #$40
0C10   2C 01 02             BIT $0201
0C13   F0 0F                BEQ L0C24
0C15   A9 FF      L0C15     LDA #$FF
0C17   20 79 7F             JSR $7F79
0C1A   AD 18 02             LDA $0218
0C1D   1A                   ???                ;00011010
0C1E   F0 04                BEQ L0C24
0C20   3A                   ???                ;00111010 ':'
0C21   20 79 7F             JSR $7F79
0C24   AD 1D 02   L0C24     LDA $021D
0C27   C9 7E                CMP #$7E
0C29   D0 25                BNE L0C50
0C2B   AD 1C 02             LDA L021C
0C2E   38                   SEC
0C2F   E9 40                SBC #$40
0C31   90 1D                BCC L0C50
0C33   C9 5D                CMP #$5D
0C35   B0 19                BCS L0C50
0C37   5A                   ???                ;01011010 'Z'
0C38   A8                   TAY
0C39   B9 40 7E             LDA $7E40,Y
0C3C   8D 1C 02             STA L021C
0C3F   B9 41 7E             LDA $7E41,Y
0C42   8D 1D 02             STA $021D
0C45   B9 42 7E             LDA $7E42,Y
0C48   7A                   ???                ;01111010 'z'
0C49   C9 FF                CMP #$FF
0C4B   F0 09                BEQ L0C56
0C4D   20 FE 75             JSR $75FE
0C50   AD 14 02   L0C50     LDA $0214
0C53   20 0A 7F             JSR $7F0A
0C56   8D 14 02   L0C56     STA $0214
0C59   08                   PHP
0C5A   68                   PLA
0C5B   8D 17 02             STA $0217
0C5E   20 0D 7F             JSR $7F0D
0C61   AD 17 02             LDA $0217
0C64   48                   PHA
0C65   28                   PLP
0C66   AD 14 02             LDA $0214
0C69   60                   RTS
0C6A   6C 1C 02             JMP (L021C)
0C6D   68                   PLA
0C6E   8D 19 02             STA L0219
0C71   68                   PLA
0C72   8D 1A 02             STA $021A
0C75   2C 00 02             BIT $0200
0C78   30 43                BMI L0CBD
0C7A   68                   PLA
0C7B   8D 1B 02             STA $021B
0C7E   AD 07 02             LDA $0207
0C81   29 EF                AND #$EF
0C83   0D 1B 02             ORA $021B
0C86   8D 07 02             STA $0207
0C89   8D E5 FF             STA $FFE5
0C8C   68                   PLA
0C8D   8D 1B 02             STA $021B
0C90   AD 05 02             LDA $0205
0C93   29 FC                AND #$FC
0C95   0D 1B 02             ORA $021B
0C98   8D 05 02             STA $0205
0C9B   8D CB FF             STA $FFCB
0C9E   68                   PLA
0C9F   8D 0C 02             STA $020C
0CA2   68                   PLA
0CA3   8D 1B 02             STA $021B
0CA6   AD 03 02             LDA $0203
0CA9   29 E7                AND #$E7
0CAB   0D 1B 02             ORA $021B
0CAE   8D 03 02             STA $0203
0CB1   8D C8 FF             STA $FFC8
0CB4   68                   PLA
0CB5   8D 09 02             STA $0209
0CB8   8D D6 FF             STA $FFD6
0CBB   80                   ???                ;10000000
0CBC   13                   ???                ;00010011
0CBD   68         L0CBD     PLA
0CBE   8D FF FF             STA $FFFF
0CC1   68                   PLA
0CC2   8D 0C 02             STA $020C
0CC5   68                   PLA
0CC6   8D 09 02             STA $0209
0CC9   8D D6 FF             STA $FFD6
0CCC   68                   PLA
0CCD   8D FB FF             STA $FFFB
0CD0   AD 1A 02             LDA $021A
0CD3   48                   PHA
0CD4   AD 19 02             LDA L0219
0CD7   48                   PHA
0CD8   60                   RTS
0CD9   2C 00 02             BIT $0200
0CDC   30 34                BMI L0D12
0CDE   C9 FF                CMP #$FF
0CE0   F0 0C                BEQ L0CEE
0CE2   C9 00                CMP #$00
0CE4   F0 0D                BEQ L0CF3
0CE6   C9 01                CMP #$01
0CE8   D0 5C                BNE L0D46
0CEA   A9 03                LDA #$03
0CEC   80                   ???                ;10000000
0CED   07                   ???                ;00000111
0CEE   AD 0B 02   L0CEE     LDA $020B
0CF1   80                   ???                ;10000000
0CF2   02                   ???                ;00000010
0CF3   A9 01      L0CF3     LDA #$01
0CF5   9C                   ???                ;10011100
0CF6   0C                   ???                ;00001100
0CF7   02                   ???                ;00000010
0CF8   C9 01                CMP #$01
0CFA   F0 03                BEQ L0CFF
0CFC   EE 0C 02             INC $020C
0CFF   8D 1B 02   L0CFF     STA $021B
0D02   AD 05 02             LDA $0205
0D05   29 FC                AND #$FC
0D07   0D 1B 02             ORA $021B
0D0A   8D 05 02             STA $0205
0D0D   8D CB FF             STA $FFCB
0D10   80                   ???                ;10000000
0D11   32                   ???                ;00110010 '2'
0D12   C9 FF      L0D12     CMP #$FF
0D14   F0 12                BEQ L0D28
0D16   C9 04                CMP #$04
0D18   B0 2C                BCS L0D46
0D1A   0A                   ASL A
0D1B   0A                   ASL A
0D1C   0A                   ASL A
0D1D   0A                   ASL A
0D1E   8D 1B 02             STA $021B
0D21   0A                   ASL A
0D22   0A                   ASL A
0D23   0D 1B 02             ORA $021B
0D26   80                   ???                ;10000000
0D27   03                   ???                ;00000011
0D28   AD 0B 02   L0D28     LDA $020B
0D2B   8D 1B 02             STA $021B
0D2E   AD FF FF             LDA $FFFF
0D31   29 0F                AND #$0F
0D33   0D 1B 02             ORA $021B
0D36   8D FF FF             STA $FFFF
0D39   4A                   LSR A
0D3A   4A                   LSR A
0D3B   4A                   LSR A
0D3C   4A                   LSR A
0D3D   4A                   LSR A
0D3E   4A                   LSR A
0D3F   29 03                AND #$03
0D41   8D 0C 02             STA $020C
0D44   38                   SEC
0D45   60                   RTS
0D46   18         L0D46     CLC
0D47   60                   RTS
0D48   FF                   ???                ;11111111
0D49   FF                   ???                ;11111111
0D4A   FF                   ???                ;11111111
0D4B   FF                   ???                ;11111111
0D4C   FF                   ???                ;11111111
0D4D   FF                   ???                ;11111111
0D4E   FF                   ???                ;11111111
0D4F   FF                   ???                ;11111111
0D50   FF                   ???                ;11111111
0D51   FF                   ???                ;11111111
0D52   FF                   ???                ;11111111
0D53   FF                   ???                ;11111111
0D54   FF                   ???                ;11111111
0D55   FF                   ???                ;11111111
0D56   FF                   ???                ;11111111
0D57   FF                   ???                ;11111111
0D58   FF                   ???                ;11111111
0D59   FE 81 78             INC $7881,X
0D5C   A0 72                LDY #$72
0D5E   E5 79                SBC $79
0D60   C9 01                CMP #$01
0D62   D0 18                BNE L0D7C
0D64   9C                   ???                ;10011100
0D65   8E 03 9C             STX $9C03
0D68   8D 03 A9             STA $A903
0D6B   00                   BRK
0D6C   8D 8C 03             STA $038C
0D6F   A9 C0                LDA #$C0
0D71   8D 8B 03             STA $038B
0D74   A9 D2                LDA #$D2
0D76   8D 8A 03             STA $038A
0D79   4C F1 80             JMP $80F1
0D7C   C9 00      L0D7C     CMP #$00
0D7E   F0 03                BEQ L0D83
0D80   4C B9 80             JMP $80B9
0D83   CE 8E 03   L0D83     DEC $038E
0D86   30 03                BMI L0D8B
0D88   4C B0 80             JMP $80B0
0D8B   9C         L0D8B     ???                ;10011100
0D8C   8E 03 AD             STX $AD03
0D8F   8C 03 8D             STY $8D03
0D92   D0 FF                BNE L0D93
0D94   AD 8B 03             LDA $038B
0D97   8D CF FF             STA $FFCF
0D9A   AD 8A 03             LDA $038A
0D9D   8D CE FF             STA $FFCE
0DA0   AD CC FF             LDA $FFCC
0DA3   0A                   ASL A
0DA4   AA                   TAX
0DA5   7C                   ???                ;01111100 '|'
0DA6   F3                   ???                ;11110011
0DA7   80                   ???                ;10000000
0DA8   20 F5 28             JSR L28F5
0DAB   80                   ???                ;10000000
0DAC   67                   ???                ;01100111 'g'
0DAD   20 80 80             JSR $8080
0DB0   AD 8D 03             LDA $038D
0DB3   0A                   ASL A
0DB4   6D 8D 03             ADC $038D
0DB7   EE 8D 03             INC $038D
0DBA   69 AE                ADC #$AE
0DBC   8D CE FF             STA $FFCE
0DBF   A9 00                LDA #$00
0DC1   69 C0                ADC #$C0
0DC3   8D CF FF             STA $FFCF
0DC6   A9 00                LDA #$00
0DC8   69 00                ADC #$00
0DCA   8D D0 FF             STA $FFD0
0DCD   AC CC FF             LDY $FFCC
0DD0   AE CC FF             LDX $FFCC
0DD3   AD CC FF             LDA $FFCC
0DD6   20 B8 A1             JSR $A1B8
0DD9   A9 01                LDA #$01
0DDB   38                   SEC
0DDC   60                   RTS
0DDD   AC CC FF             LDY $FFCC
0DE0   AD D0 FF             LDA $FFD0
0DE3   8D 8C 03             STA $038C
0DE6   AD CF FF             LDA $FFCF
0DE9   8D 8B 03             STA $038B
0DEC   AD CE FF             LDA $FFCE
0DEF   8D 8A 03             STA $038A
0DF2   98                   TYA
0DF3   C9 01                CMP #$01
0DF5   60                   RTS
0DF6   AC CC FF             LDY $FFCC
0DF9   20 80 80             JSR $8080
0DFC   A2 00                LDX #$00
0DFE   20 01 94             JSR $9401
0E01   80                   ???                ;10000000
0E02   D6 AD                DEC $AD,X
0E04   CC FF 8D             CPY $8DFF
0E07   8E 03 A0             STX $A003
0E0A   00                   BRK
0E0B   80                   ???                ;10000000
0E0C   D3                   ???                ;11010011
0E0D   20 E9 28             JSR L28E9
0E10   A9 00                LDA #$00
0E12   18                   CLC
0E13   60                   RTS
0E14   A9 06                LDA #$06
0E16   4C 88 23             JMP L2388
0E19   85 0F                STA $0F
0E1B   38                   SEC
0E1C   AD 8A 03             LDA $038A
0E1F   E9 02                SBC #$02
0E21   A8                   TAY
0E22   AD 8B 03             LDA $038B
0E25   E9 00                SBC #$00
0E27   AA                   TAX
0E28   AD 8C 03             LDA $038C
0E2B   E9 00                SBC #$00
0E2D   85 10                STA $10
0E2F   8D D0 FF             STA $FFD0
0E32   8E CF FF             STX $FFCF
0E35   8C CE FF             STY $FFCE
0E38   AD CC FF             LDA $FFCC
0E3B   C9 02                CMP #$02
0E3D   D0 12                BNE L0E51
0E3F   AD CC FF             LDA $FFCC
0E42   C5 0F                CMP $0F
0E44   D0 0B                BNE L0E51
0E46   A5 10                LDA $10
0E48   8D 8C 03             STA $038C
0E4B   8E 8B 03             STX $038B
0E4E   8C 8A 03             STY $038A
0E51   80         L0E51     ???                ;10000000
0E52   BD 48 80             LDA $8048,X
0E55   4D 80 7D             EOR $7D80
0E58   80                   ???                ;10000000
0E59   A3                   ???                ;10100011
0E5A   80                   ???                ;10000000
0E5B   AD 80 96             LDA $9680
0E5E   80                   ???                ;10000000
0E5F   A2 81                LDX #$81
0E61   A0 26                LDY #$26
0E63   A9 09                LDA #$09
0E65   85 10                STA $10
0E67   A9 53                LDA #$53
0E69   85 0F                STA $0F
0E6B   20 39 6E             JSR $6E39
0E6E   A2 09                LDX #$09
0E70   A0 53                LDY #$53
0E72   A9 09                LDA #$09
0E74   85 10                STA $10
0E76   A9 62                LDA #$62
0E78   85 0F                STA $0F
0E7A   20 39 6E             JSR $6E39
0E7D   85 89                STA $89
0E7F   A2 09                LDX #$09
0E81   A0 53                LDY #$53
0E83   4C B7 66             JMP $66B7
0E86   72                   ???                ;01110010 'r'
0E87   65 76                ADC L0076
0E89   65 61                ADC $61
0E8B   6C 69 6E             JMP ($6E69)
0E8E   67                   ???                ;01100111 'g'
0E8F   00                   BRK
0E90   C9 08                CMP #$08
0E92   D0 0F                BNE L0EA3
0E94   A5 8E                LDA $8E
0E96   F0 08                BEQ L0EA0
0E98   9C                   ???                ;10011100
0E99   53                   ???                ;01010011 'S'
0E9A   09 64                ORA #$64
0E9C   8E 4C F4             STX $F44C
0E9F   62                   ???                ;01100010 'b'
0EA0   4C 1A 65   L0EA0     JMP $651A
0EA3   4C FB 62   L0EA3     JMP $62FB
0EA6   20 19 33             JSR L3319
0EA9   20 34 68             JSR $6834
0EAC   64                   ???                ;01100100 'd'
0EAD   8E 64 9F             STX $9F64
0EB0   64                   ???                ;01100100 'd'
0EB1   A0 64                LDY #$64
0EB3   A1 A2                LDA ($A2,X)
0EB5   09 A0                ORA #$A0
0EB7   62                   ???                ;01100010 'b'
0EB8   A9 11                LDA #$11
0EBA   85 10                STA $10
0EBC   A9 13                LDA #$13
0EBE   85 0F                STA $0F
0EC0   20 39 6E             JSR $6E39
0EC3   9C                   ???                ;10011100
0EC4   53                   ???                ;01010011 'S'
0EC5   09 AE                ORA #$AE
0EC7   E1 08                SBC ($08,X)
0EC9   AC E0 08             LDY $08E0
0ECC   C0 76                CPY #$76
0ECE   D0 02                BNE L0ED2
0ED0   E0 00                CPX #$00
0ED2   D0 09      L0ED2     BNE L0EDD
0ED4   20 19 85             JSR $8519
0ED7   A5 89                LDA $89
0ED9   85 9C                STA $9C
0EDB   80                   ???                ;10000000
0EDC   21 C0                AND ($C0,X)
0EDE   71 D0                ADC ($D0),Y
0EE0   02                   ???                ;00000010
0EE1   E0 00                CPX #$00
0EE3   D0 17                BNE L0EFC
0EE5   A5 88                LDA $88
0EE7   85 A1                STA $A1
0EE9   A5 87                LDA $87
0EEB   85 A0                STA $A0
0EED   A5 86                LDA $86
0EEF   85 9F                STA $9F
0EF1   38                   SEC
0EF2   A5 89                LDA $89
0EF4   E9 05                SBC #$05
0EF6   90 04                BCC L0EFC
0EF8   C9 03                CMP #$03
0EFA   B0 02                BCS L0EFE
0EFC   A9 03      L0EFC     LDA #$03
0EFE   85 9C      L0EFE     STA $9C
0F00   64                   ???                ;01100100 'd'
0F01   96 A2                STX $A2,Y
0F03   82                   ???                ;10000010
0F04   A0 60                LDY #$60
0F06   20 AC 67             JSR $67AC
0F09   A5 96                LDA $96
0F0B   F0 12                BEQ L0F1F
0F0D   A9 00                LDA #$00
0F0F   20 BC 69             JSR $69BC
0F12   90 0B                BCC L0F1F
0F14   A5 96                LDA $96
0F16   C5 B2                CMP $B2
0F18   90 05                BCC L0F1F
0F1A   20 44 69             JSR $6944
0F1D   80                   ???                ;10000000
0F1E   EE A9 00             INC $00A9
0F21   20 BC 69             JSR $69BC
0F24   A5 B2                LDA $B2
0F26   85 9C                STA $9C
0F28   A0 02                LDY #$02
0F2A   B1 AD                LDA ($AD),Y
0F2C   D0 21                BNE L0F4F
0F2E   AD E0 08             LDA $08E0
0F31   C9 00                CMP #$00
0F33   D0 07                BNE L0F3C
0F35   AD E1 08             LDA $08E1
0F38   C9 00                CMP #$00
0F3A   F0 07                BEQ L0F43
0F3C   AD 78 03   L0F3C     LDA $0378
0F3F   C9 08                CMP #$08
0F41   D0 09                BNE L0F4C
0F43   A9 00      L0F43     LDA #$00
0F45   A2 C6                LDX #$C6
0F47   A0 98                LDY #$98
0F49   20 B8 A1             JSR $A1B8
0F4C   4C F4 62   L0F4C     JMP $62F4
0F4F   85 9D      L0F4F     STA $9D
0F51   A5 89                LDA $89
0F53   1A                   ???                ;00011010
0F54   0A                   ASL A
0F55   85 0F                STA $0F
0F57   0A                   ASL A
0F58   65 0F                ADC $0F
0F5A   A6 40                LDX $40
0F5C   A4 3F                LDY $3F
0F5E   00                   BRK
0F5F   00                   BRK
0F60   67                   ???                ;01100111 'g'
0F61   94 84                STY $84,X
0F63   99 64 97             STA $9764,Y
0F66   64                   ???                ;01100100 'd'
0F67   9A                   TXS
0F68   A9 01                LDA #$01
0F6A   85 98                STA $98
0F6C   64                   ???                ;01100100 'd'
0F6D   9B                   ???                ;10011011
0F6E   64                   ???                ;01100100 'd'
0F6F   8F                   ???                ;10001111
0F70   A9 04                LDA #$04
0F72   85 8D                STA $8D
0F74   AE E1 08             LDX $08E1
0F77   AC E0 08             LDY $08E0
0F7A   C0 00                CPY #$00
0F7C   D0 02                BNE L0F80
0F7E   E0 00                CPX #$00
0F80   D0 0A      L0F80     BNE L0F8C
0F82   A9 07                LDA #$07
0F84   85 8D                STA $8D
0F86   64                   ???                ;01100100 'd'
0F87   98                   TYA
0F88   A5 9D                LDA $9D
0F8A   85 97                STA $97
0F8C   C0 71      L0F8C     CPY #$71
0F8E   D0 02                BNE L0F92
0F90   E0 00                CPX #$00
0F92   D0 23      L0F92     BNE L0FB7
0F94   A9 00                LDA #$00
0F96   A2 C6                LDX #$C6
0F98   A0 7D                LDY #$7D
0F9A   20 BE A1             JSR $A1BE
0F9D   A9 09                LDA #$09
0F9F   85 10                STA $10
0FA1   A9 13                LDA #$13
0FA3   85 0F                STA $0F
0FA5   20 39 6E             JSR $6E39
0FA8   A5 9C                LDA $9C
0FAA   20 40 6D             JSR $6D40
0FAD   20 39 6E             JSR $6E39
0FB0   A2 09                LDX #$09
0FB2   A0 13                LDY #$13
0FB4   20 C3 2D             JSR L2DC3
0FB7   9C         L0FB7     ???                ;10011100
0FB8   8D 06 20             STA $2006
0FBB   9A                   TXS
0FBC   29 4C                AND #$4C
0FBE   FB                   ???                ;11111011
0FBF   62                   ???                ;01100010 'b'
0FC0   85 04                STA $04
0FC2   86 03                STX $03
0FC4   84 02                STY $02
0FC6   A5 10                LDA $10
0FC8   85 09                STA $09
0FCA   A5 0F                LDA $0F
0FCC   85 08                STA $08
0FCE   A9 11                LDA #$11
0FD0   85 10                STA $10
0FD2   A9 13                LDA #$13
0FD4   85 0F                STA $0F
0FD6   A2 09                LDX #$09
0FD8   A0 13                LDY #$13
0FDA   20 BA 6E             JSR $6EBA
0FDD   64                   ???                ;01100100 'd'
0FDE   11 A4                ORA ($A4),Y
0FE0   11 B1                ORA ($B1),Y
0FE2   08                   PHP
0FE3   F0 39                BEQ L101E
0FE5   AE 13 09             LDX $0913
0FE8   D0 03                BNE L0FED
0FEA   A5 11      L0FEA     LDA $11
0FEC   60                   RTS
0FED   AA         L0FED     TAX
0FEE   BD 00 20             LDA $2000,X
0FF1   29 20                AND #$20
0FF3   D0 14                BNE L1009
0FF5   AD 7C 03             LDA $037C
0FF8   C9 02                CMP #$02
0FFA   D0 EE                BNE L0FEA
0FFC   98                   TYA
0FFD   D0 EB                BNE L0FEA
0FFF   B1 08                LDA ($08),Y
1001   AA                   TAX
1002   BD 00 20             LDA $2000,X
1005   29 40                AND #$40
1007   F0 E1                BEQ L0FEA
1009   BD D0 20   L1009     LDA $20D0,X
100C   A2 09                LDX #$09
100E   A0 13                LDY #$13
1010   20 77 6E             JSR $6E77
1013   90 D5                BCC L0FEA
1015   A9 00                LDA #$00
1017   20 27 6E             JSR $6E27
101A   E6 11                INC $11
101C   80                   ???                ;10000000
101D   C1 C4                CMP ($C4,X)
101F   9C                   ???                ;10011100
1020   90 31                BCC L1053
1022   A5 02                LDA $02
1024   C5 9F                CMP $9F
1026   D0 0C                BNE L1034
1028   A5 03                LDA $03
102A   C5 A0                CMP $A0
102C   D0 06                BNE L1034
102E   A5 04                LDA $04
1030   C5 A1                CMP $A1
1032   F0 1F                BEQ L1053
1034   9C         L1034     ???                ;10011100
1035   A6 12                LDX $12
1037   5A                   ???                ;01011010 'Z'
1038   84 0F                STY $0F
103A   A5 04                LDA $04
103C   A6 03                LDX $03
103E   A4 02                LDY $02
1040   20 06 6B             JSR $6B06
1043   68                   PLA
1044   90 09                BCC L104F
1046   A5 96                LDA $96
1048   D0 09                BNE L1053
104A   AD A6 12             LDA L12A6
104D   F0 04                BEQ L1053
104F   85 9C      L104F     STA $9C
1051   85 96                STA $96
1053   A9 FC      L1053     LDA #$FC
1055   60                   RTS
1056   20 C0 26             JSR L26C0
1059   A5 99                LDA $99
105B   A6 40                LDX $40
105D   A4 3F                LDY $3F
105F   00                   BRK
1060   00                   BRK
1061   67                   ???                ;01100111 'g'
1062   94 84                STY $84,X
1064   43                   ???                ;01000011 'C'
1065   38                   SEC
1066   A5 41                LDA $41
1068   E9 10                SBC #$10
106A   4A                   LSR A
106B   4A                   LSR A
106C   4A                   LSR A
106D   85 A2                STA $A2
106F   A4 9A                LDY $9A
1071   A2 00                LDX #$00
1073   A5 99                LDA $99
1075   00                   BRK
1076   00                   BRK
1077   67                   ???                ;01100111 'g'
1078   94 85                STY $85,X
107A   96 A4                STX $A4,Y
107C   9B                   ???                ;10011011
107D   A2 00                LDX #$00
107F   A5 99                LDA $99
1081   00                   BRK
1082   00                   BRK
1083   47                   ???                ;01000111 'G'
1084   94 65                STY $65,X
1086   96 85                STX $85,Y
1088   96 38                STX $38,Y
108A   A5 9A                LDA $9A
108C   E5 96                SBC $96
108E   85 96                STA $96
1090   F0 05                BEQ L1097
1092   A9 01                LDA #$01
1094   20 F5 26             JSR L26F5
1097   64         L1097     ???                ;01100100 'd'
1098   9E                   ???                ;10011110
1099   A5 9E                LDA $9E
109B   C5 96                CMP $96
109D   B0 07                BCS L10A6
109F   20 D5 84             JSR $84D5
10A2   E6 9E                INC $9E
10A4   80                   ???                ;10000000
10A5   F3                   ???                ;11110011
10A6   64         L10A6     ???                ;01100100 'd'
10A7   96 A0                STX $A0,Y
10A9   10 20                BPL L10CB
10AB   E4 2D                CPX $2D
10AD   A9 09                LDA #$09
10AF   85 09                STA $09
10B1   A9 13                LDA #$13
10B3   85 08                STA $08
10B5   A9 00                LDA #$00
10B7   92                   ???                ;10010010
10B8   08                   PHP
10B9   A5 9E                LDA $9E
10BB   C5 97                CMP $97
10BD   B0 0B                BCS L10CA
10BF   A5 96                LDA $96
10C1   C5 A2                CMP $A2
10C3   90 07                BCC L10CC
10C5   A9 02                LDA #$02
10C7   20 F5 26             JSR L26F5
10CA   80         L10CA     ???                ;10000000
10CB   7D A5 9E   L10CB     ADC $9EA5,X
10CE   20 D5 84             JSR $84D5
10D1   A5 8E                LDA $8E
10D3   F0 2B                BEQ L1100
10D5   A5 9E                LDA $9E
10D7   C5 9A                CMP $9A
10D9   D0 25                BNE L1100
10DB   A9 13                LDA #$13
10DD   92                   ???                ;10010010
10DE   08                   PHP
10DF   E6 08                INC $08
10E1   D0 02                BNE L10E5
10E3   E6 09                INC $09
10E5   A5 B1      L10E5     LDA $B1
10E7   85 88                STA $88
10E9   A5 B0                LDA $B0
10EB   85 87                STA $87
10ED   A5 AF                LDA $AF
10EF   85 86                STA $86
10F1   A2 11                LDX #$11
10F3   A0 DB                LDY #$DB
10F5   A9 09                LDA #$09
10F7   85 10                STA $10
10F9   A9 53                LDA #$53
10FB   85 0F                STA $0F
10FD   20 39 6E             JSR $6E39
1100   A5 09      L1100     LDA $09
1102   85 10                STA $10
1104   A5 08                LDA $08
1106   85 0F                STA $0F
1108   A2 11                LDX #$11
110A   A0 DB                LDY #$DB
110C   20 39 6E             JSR $6E39
110F   86 09                STX $09
1111   84 08                STY $08
1113   A9 11                LDA #$11
1115   92                   ???                ;10010010
1116   08                   PHP
1117   E6 08                INC $08
1119   D0 02                BNE L111D
111B   E6 09                INC $09
111D   A9 00      L111D     LDA #$00
111F   92                   ???                ;10010010
1120   08                   PHP
1121   E6 9E                INC $9E
1123   A4 9E                LDY $9E
1125   A2 00                LDX #$00
1127   A5 99                LDA $99
1129   00                   BRK
112A   00                   BRK
112B   67                   ???                ;01100111 'g'
112C   94 AA                STY $AA,X
112E   D0 0C                BNE L113C
1130   A2 09                LDX #$09
1132   A0 13                LDY #$13
1134   20 9E 32             JSR L329E
1137   E6 96                INC $96
1139   4C 4D 83             JMP $834D
113C   A9 09      L113C     LDA #$09
113E   92                   ???                ;10010010
113F   08                   PHP
1140   E6 08                INC $08
1142   D0 02                BNE L1146
1144   E6 09                INC $09
1146   4C 55 83   L1146     JMP $8355
1149   A5 96                LDA $96
114B   C5 A2                CMP $A2
114D   B0 0E                BCS L115D
114F   E6 96                INC $96
1151   A2 09                LDX #$09
1153   A0 13                LDY #$13
1155   20 9E 32             JSR L329E
1158   9C                   ???                ;10011100
1159   13                   ???                ;00010011
115A   09 80                ORA #$80
115C   EC 60 20             CPX $2060
115F   BE 2F A2             LDX $A22F,Y
1162   11 A0                ORA ($A0),Y
1164   13                   ???                ;00010011
1165   4C 9E 32             JMP L329E
1168   38                   SEC
1169   A5 3F                LDA $3F
116B   E9 12                SBC #$12
116D   AA                   TAX
116E   A0 00                LDY #$00
1170   20 E6 2D             JSR L2DE6
1173   A4 9D                LDY $9D
1175   A2 00                LDX #$00
1177   A9 03                LDA #$03
1179   20 45 6D             JSR $6D45
117C   4C 9E 32             JMP L329E
117F   9C                   ???                ;10011100
1180   8D 06 A9             STA $A906
1183   03                   ???                ;00000011
1184   20 B7 39             JSR L39B7
1187   20 FE 83             JSR $83FE
118A   20 08 84             JSR $8408
118D   20 F6 82             JSR $82F6
1190   4C FB 62             JMP $62FB
1193   C9 17                CMP #$17
1195   D0 09                BNE L11A0
1197   38                   SEC
1198   98                   TYA
1199   E9 05                SBC #$05
119B   A8                   TAY
119C   B0 01                BCS L119F
119E   CA                   DEX
119F   60         L119F     RTS
11A0   C9 0A      L11A0     CMP #$0A
11A2   F0 03                BEQ L11A7
11A4   4C FB 62             JMP $62FB
11A7   AD 8D 06   L11A7     LDA $068D
11AA   F0 24                BEQ L11D0
11AC   20 20 88             JSR $8820
11AF   B0 05                BCS L11B6
11B1   9C                   ???                ;10011100
11B2   8D 06 80             STA $8006
11B5   2D 9C 8D             AND $8D9C
11B8   06 64                ASL L0064
11BA   8E A9 04             STX $04A9
11BD   85 8D                STA $8D
11BF   64                   ???                ;01100100 'd'
11C0   9B                   ???                ;10011011
11C1   64                   ???                ;01100100 'd'
11C2   9A                   TXS
11C3   A5 9D                LDA $9D
11C5   D0 07                BNE L11CE
11C7   20 0E 41             JSR L410E
11CA   A9 07                LDA #$07
11CC   85 8D                STA $8D
11CE   80         L11CE     ???                ;10000000
11CF   13                   ???                ;00010011
11D0   A5 97      L11D0     LDA $97
11D2   F0 06                BEQ L11DA
11D4   A5 8D                LDA $8D
11D6   C9 07                CMP #$07
11D8   F0 0C                BEQ L11E6
11DA   A9 00      L11DA     LDA #$00
11DC   A2 C3                LDX #$C3
11DE   A0 F9                LDY #$F9
11E0   20 B8 A1             JSR $A1B8
11E3   4C F4 62             JMP $62F4
11E6   A5 8E      L11E6     LDA $8E
11E8   F0 46                BEQ L1230
11EA   A9 00                LDA #$00
11EC   09 00                ORA #$00
11EE   D0 08                BNE L11F8
11F0   A9 00                LDA #$00
11F2   A2 C5                LDX #$C5
11F4   A0 B0                LDY #$B0
11F6   80                   ???                ;10000000
11F7   E8                   INX
11F8   A5 8D      L11F8     LDA $8D
11FA   C9 03                CMP #$03
11FC   D0 04                BNE L1202
11FE   A9 04                LDA #$04
1200   85 8D                STA $8D
1202   20 0E 65   L1202     JSR $650E
1205   9C                   ???                ;10011100
1206   D4                   ???                ;11010100
1207   06 9C                ASL $9C
1209   D5 06                CMP $06,X
120B   9C                   ???                ;10011100
120C   D6 06                DEC $06,X
120E   A9 19                LDA #$19
1210   8D 8D 06             STA $068D
1213   AD 7C 03             LDA $037C
1216   20 86 33             JSR L3386
1219   A9 06                LDA #$06
121B   85 10                STA $10
121D   A9 8E                LDA #$8E
121F   85 0F                STA $0F
1221   20 39 6E             JSR $6E39
1224   A2 09                LDX #$09
1226   A0 53                LDY #$53
1228   20 39 6E             JSR $6E39
122B   A2 00                LDX #$00
122D   A0 00                LDY #$00
122F   60                   RTS
1230   1A         L1230     ???                ;00011010
1231   85 8E                STA $8E
1233   80                   ???                ;10000000
1234   AE 48 AA             LDX $AA48
1237   D0 03                BNE L123C
1239   20 B5 69             JSR $69B5
123C   68         L123C     PLA
123D   D0 11                BNE L1250
123F   A5 98      L123F     LDA $98
1241   C9 02                CMP #$02
1243   F0 04                BEQ L1249
1245   C5 B3                CMP $B3
1247   D0 07                BNE L1250
1249   A9 01      L1249     LDA #$01
124B   20 58 68             JSR $6858
124E   38                   SEC
124F   60                   RTS
1250   A9 00      L1250     LDA #$00
1252   20 27 6A             JSR $6A27
1255   B0 E8                BCS L123F
1257   60                   RTS
1258   C9 2A                CMP #$2A
125A   D0 06                BNE L1262
125C   A5 8D                LDA $8D
125E   C9 07                CMP #$07
1260   D0 03                BNE L1265
1262   4C FB 62   L1262     JMP $62FB
1265   A9 00      L1265     LDA #$00
1267   A2 C6                LDX #$C6
1269   A0 A1                LDY #$A1
126B   20 02 A2             JSR $A202
126E   20 19 85             JSR $8519
1271   20 E5 2F             JSR L2FE5
1274   E6 8F                INC $8F
1276   4C F4 62             JMP $62F4
1279   A2 11      L1279     LDX #$11
127B   A0 13                LDY #$13
127D   A9 09                LDA #$09
127F   85 10                STA $10
1281   A9 13                LDA #$13
1283   85 0F                STA $0F
1285   20 39 6E             JSR $6E39
1288   85 11                STA $11
128A   A5 11                LDA $11
128C   F0 18                BEQ L12A6
128E   20 3B 61             JSR $613B
1291   AA                   TAX
1292   BD 13 09             LDA $0913,X
1295   C6 11                DEC $11
1297   A4 11                LDY $11
1299   99 13 11             STA $1113,Y
129C   8A                   TXA
129D   A2 09                LDX #$09
129F   A0 13                LDY #$13
12A1   20 27 6E             JSR $6E27
12A4   80                   ???                ;10000000
12A5   E4 A2                CPX $A2
12A7   11 A0                ORA ($A0),Y
12A9   13                   ???                ;00010011
12AA   20 B4 66             JSR $66B4
12AD   B0 CA                BCS L1279
12AF   60                   RTS
12B0   C9 83                CMP #$83
12B2   D0 1F                BNE L12D3
12B4   A5 8E                LDA $8E
12B6   F0 19                BEQ L12D1
12B8   A5 9A                LDA $9A
12BA   F0 3C                BEQ L12F8
12BC   A4 9A                LDY $9A
12BE   A2 00                LDX #$00
12C0   A5 99                LDA $99
12C2   00                   BRK
12C3   00                   BRK
12C4   67                   ???                ;01100111 'g'
12C5   94 C6                STY $C6,X
12C7   9A                   TXS
12C8   AA                   TAX
12C9   D0 06                BNE L12D1
12CB   A5 9B                LDA $9B
12CD   F0 02                BEQ L12D1
12CF   C6 9B                DEC $9B
12D1   80         L12D1     ???                ;10000000
12D2   40                   RTI
12D3   C9 05      L12D3     CMP #$05
12D5   F0 04                BEQ L12DB
12D7   C9 80                CMP #$80
12D9   D0 0E                BNE L12E9
12DB   A5 9A      L12DB     LDA $9A
12DD   C5 99                CMP $99
12DF   90 17                BCC L12F8
12E1   A5 9A                LDA $9A
12E3   E5 99                SBC $99
12E5   85 9A                STA $9A
12E7   80                   ???                ;10000000
12E8   E2                   ???                ;11100010
12E9   C9 82      L12E9     CMP #$82
12EB   D0 29                BNE L1316
12ED   A5 8E                LDA $8E
12EF   F0 22                BEQ L1313
12F1   A4 9A                LDY $9A
12F3   C8                   INY
12F4   C4 97                CPY $97
12F6   90 05                BCC L12FD
12F8   20 B2 A1   L12F8     JSR $A1B2
12FB   80                   ???                ;10000000
12FC   16 84                ASL $84,X
12FE   9A                   TXS
12FF   A2 00                LDX #$00
1301   A5 99                LDA $99
1303   00                   BRK
1304   00                   BRK
1305   67                   ???                ;01100111 'g'
1306   94 AA                STY $AA,X
1308   D0 09                BNE L1313
130A   A5 9B                LDA $9B
130C   1A                   ???                ;00011010
130D   C5 A2                CMP $A2
130F   B0 02                BCS L1313
1311   85 9B                STA $9B
1313   4C F4 62   L1313     JMP $62F4
1316   C9 06      L1316     CMP #$06
1318   F0 04                BEQ L131E
131A   C9 81                CMP #$81
131C   D0 3F                BNE L135D
131E   18         L131E     CLC
131F   A5 9A                LDA $9A
1321   65 99                ADC $99
1323   C5 97                CMP $97
1325   90 13                BCC L133A
1327   48                   PHA
1328   A8                   TAY
1329   A2 00                LDX #$00
132B   A5 99                LDA $99
132D   00                   BRK
132E   00                   BRK
132F   67                   ???                ;01100111 'g'
1330   94 85                STY $85,X
1332   0F                   ???                ;00001111
1333   68                   PLA
1334   E5 0F                SBC $0F
1336   C5 97                CMP $97
1338   B0 BE                BCS L12F8
133A   A4 8E      L133A     LDY $8E
133C   F0 04                BEQ L1342
133E   85 9A                STA $9A
1340   80                   ???                ;10000000
1341   C8                   INY
1342   38         L1342     SEC
1343   85 0F                STA $0F
1345   E5 97                SBC $97
1347   49 FF                EOR #$FF
1349   A8                   TAY
134A   A2 00                LDX #$00
134C   A5 99                LDA $99
134E   00                   BRK
134F   00                   BRK
1350   67                   ???                ;01100111 'g'
1351   94 C8                STY $C8,X
1353   C4 A2                CPY $A2
1355   90 A1                BCC L12F8
1357   A5 0F                LDA $0F
1359   85 9A                STA $9A
135B   80                   ???                ;10000000
135C   B6 C9                LDX $C9,Y
135E   0D D0 06             ORA $06D0
1361   64                   ???                ;01100100 'd'
1362   9B                   ???                ;10011011
1363   64                   ???                ;01100100 'd'
1364   9A                   TXS
1365   80                   ???                ;10000000
1366   38                   SEC
1367   C9 0C                CMP #$0C
1369   D0 31                BNE L139C
136B   A4 97                LDY $97
136D   F0 2B                BEQ L139A
136F   88                   DEY
1370   84 9A                STY $9A
1372   A2 00                LDX #$00
1374   A5 99                LDA $99
1376   00                   BRK
1377   00                   BRK
1378   67                   ???                ;01100111 'g'
1379   94 C4                STY $C4,X
137B   A2 90                LDX #$90
137D   03                   ???                ;00000011
137E   A4 A2                LDY $A2
1380   88                   DEY
1381   84 9B                STY $9B
1383   A5 8E                LDA $8E
1385   D0 13                BNE L139A
1387   A2 00                LDX #$00
1389   A5 99                LDA $99
138B   00                   BRK
138C   00                   BRK
138D   47                   ???                ;01000111 'G'
138E   94 84                STY $84,X
1390   0F                   ???                ;00001111
1391   38                   SEC
1392   A5 9A                LDA $9A
1394   E5 0F                SBC $0F
1396   85 9A                STA $9A
1398   64                   ???                ;01100100 'd'
1399   9B                   ???                ;10011011
139A   80         L139A     ???                ;10000000
139B   03                   ???                ;00000011
139C   4C FB 62   L139C     JMP $62FB
139F   4C F4 62             JMP $62F4
13A2   C9 20                CMP #$20
13A4   F0 08                BEQ L13AE
13A6   C9 04                CMP #$04
13A8   F0 04                BEQ L13AE
13AA   C9 17                CMP #$17
13AC   D0 03                BNE L13B1
13AE   4C F4 62   L13AE     JMP $62F4
13B1   4C FB 62   L13B1     JMP $62FB
13B4   A5 8D                LDA $8D
13B6   C9 07                CMP #$07
13B8   D0 11                BNE L13CB
13BA   A0 08                LDY #$08
13BC   20 E4 2D             JSR L2DE4
13BF   A9 00                LDA #$00
13C1   A2 C5                LDX #$C5
13C3   A0 77                LDY #$77
13C5   20 FC A1             JSR $A1FC
13C8   4C FB 62             JMP $62FB
13CB   4C F4 62   L13CB     JMP $62F4
13CE   20 1D 3D             JSR L3D1D
13D1   85 04                STA $04
13D3   20 8A 6C             JSR $6C8A
13D6   98                   TYA
13D7   65 04                ADC $04
13D9   85 04                STA $04
13DB   8A                   TXA
13DC   69 00                ADC #$00
13DE   85 05                STA $05
13E0   A2 11                LDX #$11
13E2   A0 13                LDY #$13
13E4   20 CC 60             JSR $60CC
13E7   69 0A                ADC #$0A
13E9   65 04                ADC $04
13EB   85 04                STA $04
13ED   90 02                BCC L13F1
13EF   E6 05                INC $05
13F1   A5 A1      L13F1     LDA $A1
13F3   A6 A0                LDX $A0
13F5   A4 9F                LDY $9F
13F7   20 21 60             JSR $6021
13FA   A5 9A                LDA $9A
13FC   20 2D 60             JSR $602D
13FF   A5 97                LDA $97
1401   20 2D 60             JSR $602D
1404   A5 9C                LDA $9C
1406   20 2D 60             JSR $602D
1409   A5 9D                LDA $9D
140B   20 2D 60             JSR $602D
140E   A5 98                LDA $98
1410   20 2D 60             JSR $602D
1413   A5 99                LDA $99
1415   20 2D 60             JSR $602D
1418   A5 9B                LDA $9B
141A   20 2D 60             JSR $602D
141D   A6 05                LDX $05
141F   A4 04                LDY $04
1421   4C 9B 60             JMP $609B
1424   C8                   INY
1425   D0 01                BNE L1428
1427   E8                   INX
1428   A5 8D      L1428     LDA $8D
142A   C9 07                CMP #$07
142C   D0 04                BNE L1432
142E   9C                   ???                ;10011100
142F   8D 06 60             STA $6006
1432   86 91      L1432     STX $91
1434   84 90                STY $90
1436   A9 03                LDA #$03
1438   85 8D                STA $8D
143A   20 0E 65             JSR $650E
143D   A9 01                LDA #$01
143F   8D D3 06             STA L06D3
1442   A9 00                LDA #$00
1444   8D CF 06             STA $06CF
1447   A9 C0                LDA #$C0
1449   8D CE 06             STA $06CE
144C   A9 00                LDA #$00
144E   8D CD 06             STA $06CD
1451   A9 00                LDA #$00
1453   A2 C3                LDX #$C3
1455   A0 D5                LDY #$D5
1457   20 BE A1             JSR $A1BE
145A   A9 09                LDA #$09
145C   85 10                STA $10
145E   A9 13                LDA #$13
1460   85 0F                STA $0F
1462   20 39 6E             JSR $6E39
1465   A9 09                LDA #$09
1467   8D D1 06             STA $06D1
146A   A9 13                LDA #$13
146C   8D D0 06             STA $06D0
146F   A0 08                LDY #$08
1471   20 E4 2D             JSR L2DE4
1474   A2 00                LDX #$00
1476   A0 11                LDY #$11
1478   60                   RTS
1479   C9 3F                CMP #$3F
147B   D0 06                BNE L1483
147D   A9 07                LDA #$07
147F   C5 8D                CMP $8D
1481   D0 03                BNE L1486
1483   4C FB 62   L1483     JMP $62FB
1486   85 8D      L1486     STA $8D
1488   64                   ???                ;01100100 'd'
1489   9B                   ???                ;10011011
148A   64                   ???                ;01100100 'd'
148B   9A                   TXS
148C   A5 9D                LDA $9D
148E   85 97                STA $97
1490   64                   ???                ;01100100 'd'
1491   98                   TYA
1492   4C F4 62             JMP $62F4
1495   20 1A 68             JSR $681A
1498   AD E0 08             LDA $08E0
149B   C9 71                CMP #$71
149D   D0 05                BNE L14A4
149F   AD E1 08             LDA $08E1
14A2   C9 00                CMP #$00
14A4   D0 10      L14A4     BNE L14B6
14A6   AD 79 03             LDA $0379
14A9   D0 0B                BNE L14B6
14AB   AD 78 03             LDA $0378
14AE   C9 07                CMP #$07
14B0   B0 04                BCS L14B6
14B2   A9 09                LDA #$09
14B4   85 8B                STA $8B
14B6   AD 89 02   L14B6     LDA $0289
14B9   0D 8A 02             ORA $028A
14BC   F0 42                BEQ L1500
14BE   20 BE 6C             JSR $6CBE
14C1   A2 11                LDX #$11
14C3   A0 13                LDY #$13
14C5   20 FE 5F             JSR $5FFE
14C8   20 9D 5F             JSR $5F9D
14CB   85 A1                STA $A1
14CD   86 A0                STX $A0
14CF   84 9F                STY $9F
14D1   20 B2 5F             JSR $5FB2
14D4   85 9A                STA $9A
14D6   20 B2 5F             JSR $5FB2
14D9   85 97                STA $97
14DB   20 B2 5F             JSR $5FB2
14DE   85 9C                STA $9C
14E0   20 B2 5F             JSR $5FB2
14E3   85 9D                STA $9D
14E5   20 B2 5F             JSR $5FB2
14E8   85 98                STA $98
14EA   20 B2 5F             JSR $5FB2
14ED   85 99                STA $99
14EF   20 B2 5F             JSR $5FB2
14F2   85 9B                STA $9B
14F4   9C                   ???                ;10011100
14F5   8D 06 9C             STA $9C06
14F8   89                   ???                ;10001001
14F9   02                   ???                ;00000010
14FA   9C                   ???                ;10011100
14FB   8A                   TXA
14FC   02                   ???                ;00000010
14FD   4C F4 62             JMP $62F4
1500   64         L1500     ???                ;01100100 'd'
1501   92                   ???                ;10010010
1502   4C FB 62             JMP $62FB
1505   85 04                STA $04
1507   86 03                STX $03
1509   84 02                STY $02
150B   64                   ???                ;01100100 'd'
150C   01 A0                ORA ($A0,X)
150E   FF                   ???                ;11111111
150F   C8         L150F     INY
1510   B1 0F                LDA ($0F),Y
1512   F0 21                BEQ L1535
1514   A6 01                LDX $01
1516   DD 8D 06             CMP $068D,X
1519   F0 0F                BEQ L152A
151B   AA                   TAX
151C   BD D0 20             LDA $20D0,X
151F   F0 09                BEQ L152A
1521   A6 01                LDX $01
1523   DD 8D 06             CMP $068D,X
1526   F0 02                BEQ L152A
1528   98                   TYA
1529   60                   RTS
152A   A6 01      L152A     LDX $01
152C   BD 8D 06             LDA $068D,X
152F   F0 DE                BEQ L150F
1531   E6 01                INC $01
1533   80                   ???                ;10000000
1534   DA                   ???                ;11011010
1535   A6 01      L1535     LDX $01
1537   BD 8D 06             LDA $068D,X
153A   D0 41                BNE L157D
153C   A5 04                LDA $04
153E   A6 03                LDX $03
1540   A4 02                LDY $02
1542   20 0F 6C             JSR $6C0F
1545   90 16                BCC L155D
1547   A5 B3                LDA $B3
1549   F0 07                BEQ L1552
154B   A9 04                LDA #$04
154D   85 9E                STA $9E
154F   A9 FF                LDA #$FF
1551   60                   RTS
1552   E6 97      L1552     INC $97
1554   C6 9D                DEC $9D
1556   20 4A 6C             JSR $6C4A
1559   A9 05                LDA #$05
155B   80                   ???                ;10000000
155C   1E A5 02             ASL $02A5,X
155F   C5 9F                CMP $9F
1561   D0 0A                BNE L156D
1563   A5 03                LDA $03
1565   C5 A0                CMP $A0
1567   D0 04                BNE L156D
1569   A5 04                LDA $04
156B   C5 A1                CMP $A1
156D   D0 0A      L156D     BNE L1579
156F   A5 9E                LDA $9E
1571   C9 01                CMP #$01
1573   D0 08                BNE L157D
1575   A9 03                LDA #$03
1577   80                   ???                ;10000000
1578   02                   ???                ;00000010
1579   A9 02      L1579     LDA #$02
157B   85 9E                STA $9E
157D   A9 FC      L157D     LDA #$FC
157F   60                   RTS
1580   A2 06                LDX #$06
1582   A0 8D                LDY #$8D
1584   20 45 6F             JSR $6F45
1587   C5 9C                CMP $9C
1589   B0 06                BCS L1591
158B   A9 00                LDA #$00
158D   85 9E                STA $9E
158F   80                   ???                ;10000000
1590   0B                   ???                ;00001011
1591   A9 01      L1591     LDA #$01
1593   85 9E                STA $9E
1595   A2 87                LDX #$87
1597   A0 A5                LDY #$A5
1599   20 AC 67             JSR $67AC
159C   A5 9E                LDA $9E
159E   0A                   ASL A
159F   65 9E                ADC $9E
15A1   69 C9                ADC #$C9
15A3   8D CE FF             STA $FFCE
15A6   A9 00                LDA #$00
15A8   69 C9                ADC #$C9
15AA   8D CF FF             STA $FFCF
15AD   A9 00                LDA #$00
15AF   69 00                ADC #$00
15B1   8D D0 FF             STA $FFD0
15B4   AC CC FF             LDY $FFCC
15B7   AE CC FF             LDX $FFCC
15BA   AD CC FF             LDA $FFCC
15BD   20 B8 A1             JSR $A1B8
15C0   A5 9E                LDA $9E
15C2   C9 05                CMP #$05
15C4   F0 01                BEQ L15C7
15C6   18                   CLC
15C7   60         L15C7     RTS
15C8   AD 89 02             LDA $0289
15CB   F0 03                BEQ L15D0
15CD   4C F4 62             JMP $62F4
15D0   A9 04      L15D0     LDA #$04
15D2   85 8D                STA $8D
15D4   A5 54                LDA $54
15D6   C9 17                CMP #$17
15D8   F0 0B                BEQ L15E5
15DA   A6 97                LDX $97
15DC   A4 96                LDY $96
15DE   C0 10                CPY #$10
15E0   8A                   TXA
15E1   E9 27                SBC #$27
15E3   90 04                BCC L15E9
15E5   A2 00      L15E5     LDX #$00
15E7   A0 00                LDY #$00
15E9   18         L15E9     CLC
15EA   98                   TYA
15EB   69 F0                ADC #$F0
15ED   85 96                STA $96
15EF   8A                   TXA
15F0   69 00                ADC #$00
15F2   85 97                STA $97
15F4   A2 00                LDX #$00
15F6   A0 23                LDY #$23
15F8   AD 7B 03             LDA $037B
15FB   00                   BRK
15FC   00                   BRK
15FD   47                   ???                ;01000111 'G'
15FE   94 84                STY $84,X
1600   0F                   ???                ;00001111
1601   38                   SEC
1602   A5 96                LDA $96
1604   E5 0F                SBC $0F
1606   85 96                STA $96
1608   B0 02                BCS L160C
160A   C6 97                DEC $97
160C   A6 89      L160C     LDX $89
160E   A9 24                LDA #$24
1610   9E                   ???                ;10011110
1611   13                   ???                ;00010011
1612   11 9D                ORA ($9D),Y
1614   12                   ???                ;00010010
1615   11 CA                ORA ($CA),Y
1617   D0 FA                BNE L1613
1619   9C                   ???                ;10011100
161A   22                   ???                ;00100010 '"'
161B   11 4C                ORA ($4C),Y
161D   FB                   ???                ;11111011
161E   62                   ???                ;01100010 'b'
161F   20 C0 26             JSR L26C0
1622   20 BE 2F             JSR L2FBE
1625   A9 03                LDA #$03
1627   20 B7 39             JSR L39B7
162A   A2 11                LDX #$11
162C   A0 13                LDY #$13
162E   20 B8 31             JSR L31B8
1631   A9 00                LDA #$00
1633   A2 C6                LDX #$C6
1635   A0 B7                LDY #$B7
1637   20 BE A1             JSR $A1BE
163A   A9 09                LDA #$09
163C   85 10                STA $10
163E   A9 13                LDA #$13
1640   85 0F                STA $0F
1642   20 39 6E             JSR $6E39
1645   A6 97                LDX $97
1647   A4 96                LDY $96
1649   A9 01                LDA #$01
164B   20 45 6D             JSR $6D45
164E   20 39 6E             JSR $6E39
1651   A2 09                LDX #$09
1653   A0 13                LDY #$13
1655   20 B8 31             JSR L31B8
1658   A5 8D                LDA $8D
165A   C9 07                CMP #$07
165C   D0 19                BNE L1677
165E   A9 00                LDA #$00
1660   09 00                ORA #$00
1662   09 00                ORA #$00
1664   F0 09                BEQ L166F
1666   A9 00                LDA #$00
1668   A2 00                LDX #$00
166A   A0 00                LDY #$00
166C   20 FC A1             JSR $A1FC
166F   A9 00      L166F     LDA #$00
1671   A2 C5                LDX #$C5
1673   A0 77                LDY #$77
1675   80                   ???                ;10000000
1676   0F                   ???                ;00001111
1677   A9 00      L1677     LDA #$00
1679   A2 C4                LDX #$C4
167B   A0 FE                LDY #$FE
167D   20 FC A1             JSR $A1FC
1680   A9 00                LDA #$00
1682   A2 C6                LDX #$C6
1684   A0 C3                LDY #$C3
1686   20 FC A1             JSR $A1FC
1689   A9 0C                LDA #$0C
168B   20 6E 29             JSR L296E
168E   4C FB 62             JMP $62FB
1691   AA                   TAX
1692   A5 8D                LDA $8D
1694   C9 07                CMP #$07
1696   F0 07                BEQ L169F
1698   BD 00 20             LDA $2000,X
169B   29 20                AND #$20
169D   D0 03                BNE L16A2
169F   4C FB 62   L169F     JMP $62FB
16A2   A2 00      L16A2     LDX #$00
16A4   BC 13 11   L16A4     LDY $1113,X
16A7   B9 D0 20             LDA $20D0,Y
16AA   C5 54                CMP $54
16AC   F0 10                BEQ L16BE
16AE   E8                   INX
16AF   E4 89                CPX $89
16B1   90 F1                BCC L16A4
16B3   A5 54                LDA $54
16B5   A2 11                LDX #$11
16B7   A0 22                LDY #$22
16B9   20 77 6E             JSR $6E77
16BC   90 16                BCC L16D4
16BE   38         L16BE     SEC
16BF   A5 96                LDA $96
16C1   E9 0A                SBC #$0A
16C3   85 96                STA $96
16C5   B0 02                BCS L16C9
16C7   C6 97                DEC $97
16C9   A9 00      L16C9     LDA #$00
16CB   A2 C4                LDX #$C4
16CD   A0 6F                LDY #$6F
16CF   20 B8 A1             JSR $A1B8
16D2   80                   ???                ;10000000
16D3   46 A5                LSR $A5
16D5   54                   ???                ;01010100 'T'
16D6   20 9C 3B             JSR L3B9C
16D9   85 0F                STA $0F
16DB   38                   SEC
16DC   A5 96                LDA $96
16DE   E5 0F                SBC $0F
16E0   85 96                STA $96
16E2   B0 02                BCS L16E6
16E4   C6 97                DEC $97
16E6   A5 54      L16E6     LDA $54
16E8   A2 09                LDX #$09
16EA   A0 62                LDY #$62
16EC   20 77 6E             JSR $6E77
16EF   B0 12                BCS L1703
16F1   A2 11                LDX #$11
16F3   A0 22                LDY #$22
16F5   20 45 6F             JSR $6F45
16F8   AA                   TAX
16F9   A5 54                LDA $54
16FB   9D 22 11             STA $1122,X
16FE   9E                   ???                ;10011110
16FF   23                   ???                ;00100011 '#'
1700   11 80                ORA ($80),Y
1702   17                   ???                ;00010111
1703   98         L1703     TYA
1704   E9 62                SBC #$62
1706   A8                   TAY
1707   B9 53 09             LDA $0953,Y
170A   99 13 11             STA $1113,Y
170D   A4 0F                LDY $0F
170F   C8                   INY
1710   D0 01                BNE L1713
1712   E8                   INX
1713   A5 54      L1713     LDA $54
1715   20 77 6E             JSR $6E77
1718   B0 E9                BCS L1703
171A   4C F4 62             JMP $62F4
171D   C9 2A                CMP #$2A
171F   D0 06                BNE L1727
1721   A5 8D                LDA $8D
1723   C9 07                CMP #$07
1725   D0 03                BNE L172A
1727   4C FB 62   L1727     JMP $62FB
172A   A5 89      L172A     LDA $89
172C   20 3B 61             JSR $613B
172F   AA                   TAX
1730   BD 13 11             LDA $1113,X
1733   C9 24                CMP #$24
1735   D0 F3                BNE L172A
1737   38                   SEC
1738   A5 96                LDA $96
173A   E9 19                SBC #$19
173C   85 96                STA $96
173E   B0 02                BCS L1742
1740   C6 97                DEC $97
1742   BD 62 09   L1742     LDA $0962,X
1745   20 50 4E             JSR $4E50
1748   4C F4 62             JMP $62F4
174B   20 1D 3D             JSR L3D1D
174E   86 05                STX $05
1750   84 04                STY $04
1752   A2 11                LDX #$11
1754   A0 13                LDY #$13
1756   20 CC 60             JSR $60CC
1759   18                   CLC
175A   65 04                ADC $04
175C   85 04                STA $04
175E   90 02                BCC L1762
1760   E6 05                INC $05
1762   A2 11      L1762     LDX #$11
1764   A0 22                LDY #$22
1766   20 CC 60             JSR $60CC
1769   18                   CLC
176A   69 02                ADC #$02
176C   65 04                ADC $04
176E   85 04                STA $04
1770   90 02                BCC L1774
1772   E6 05                INC $05
1774   A6 97      L1774     LDX $97
1776   A4 96                LDY $96
1778   20 27 60             JSR $6027
177B   A6 05                LDX $05
177D   A4 04                LDY $04
177F   4C 9B 60             JMP $609B
1782   C9 3F                CMP #$3F
1784   D0 06                BNE L178C
1786   A5 8D                LDA $8D
1788   C9 07                CMP #$07
178A   D0 03                BNE L178F
178C   4C FB 62   L178C     JMP $62FB
178F   64         L178F     ???                ;01100100 'd'
1790   96 64                STX L0064,Y
1792   97                   ???                ;10010111
1793   A9 07                LDA #$07
1795   85 8D                STA $8D
1797   A2 09                LDX #$09
1799   A0 53                LDY #$53
179B   A9 11                LDA #$11
179D   85 10                STA $10
179F   A9 13                LDA #$13
17A1   85 0F                STA $0F
17A3   20 39 6E             JSR $6E39
17A6   A9 00                LDA #$00
17A8   A2 C6                LDX #$C6
17AA   A0 2A                LDY #$2A
17AC   4C F4 62             JMP $62F4
17AF   AD 89 02             LDA $0289
17B2   F0 1E                BEQ L17D2
17B4   A2 11                LDX #$11
17B6   A0 13                LDY #$13
17B8   20 FE 5F             JSR $5FFE
17BB   A2 11                LDX #$11
17BD   A0 22                LDY #$22
17BF   20 FE 5F             JSR $5FFE
17C2   20 A8 5F             JSR $5FA8
17C5   86 97                STX $97
17C7   84 96                STY $96
17C9   9C                   ???                ;10011100
17CA   89                   ???                ;10001001
17CB   02                   ???                ;00000010
17CC   9C                   ???                ;10011100
17CD   8A                   TXA
17CE   02                   ???                ;00000010
17CF   4C F4 62             JMP $62F4
17D2   64         L17D2     ???                ;01100100 'd'
17D3   96 64                STX L0064,Y
17D5   97                   ???                ;10010111
17D6   4C FB 62             JMP $62FB
17D9   A5 8D                LDA $8D
17DB   C9 07                CMP #$07
17DD   F0 49                BEQ L1828
17DF   A5 97                LDA $97
17E1   30 25                BMI L1808
17E3   A9 24                LDA #$24
17E5   A2 11                LDX #$11
17E7   A0 13                LDY #$13
17E9   20 77 6E             JSR $6E77
17EC   B0 3A                BCS L1828
17EE   A5 96                LDA $96
17F0   C9 10                CMP #$10
17F2   A5 97                LDA $97
17F4   E9 27                SBC #$27
17F6   90 0B                BCC L1803
17F8   20 41 99             JSR $9941
17FB   A9 00                LDA #$00
17FD   A2 C6                LDX #$C6
17FF   A0 17                LDY #$17
1801   80                   ???                ;10000000
1802   1E 20 0E             ASL $0E20,X
1805   41 80                EOR ($80,X)
1807   1C                   ???                ;00011100
1808   64         L1808     ???                ;01100100 'd'
1809   96 64                STX L0064,Y
180B   97                   ???                ;10010111
180C   A2 09                LDX #$09
180E   A0 53                LDY #$53
1810   A9 11                LDA #$11
1812   85 10                STA $10
1814   A9 13                LDA #$13
1816   85 0F                STA $0F
1818   20 39 6E             JSR $6E39
181B   A9 00                LDA #$00
181D   A2 C6                LDX #$C6
181F   A0 2A                LDY #$2A
1821   20 B8 A1             JSR $A1B8
1824   A9 07                LDA #$07
1826   85 8D                STA $8D
1828   4C FB 62   L1828     JMP $62FB
182B   C9 08                CMP #$08
182D   D0 06                BNE L1835
182F   A5 8D                LDA $8D
1831   C9 07                CMP #$07
1833   D0 03                BNE L1838
1835   4C FB 62   L1835     JMP $62FB
1838   4C F4 62   L1838     JMP $62F4
183B   AD 89 02             LDA $0289
183E   F0 03                BEQ L1843
1840   4C F4 62             JMP $62F4
1843   A6 89      L1843     LDX $89
1845   86 96                STX $96
1847   9E                   ???                ;10011110
1848   13                   ???                ;00010011
1849   11 A9                ORA ($A9),Y
184B   5F                   ???                ;01011111 '_'
184C   9D 12 11   L184C     STA $1112,X
184F   CA                   DEX
1850   D0 FA                BNE L184C
1852   A9 04                LDA #$04
1854   85 8D                STA $8D
1856   9C                   ???                ;10011100
1857   8D 06 4C             STA $4C06
185A   FB                   ???                ;11111011
185B   62                   ???                ;01100010 'b'
185C   20 C0 26             JSR L26C0
185F   20 BE 2F             JSR L2FBE
1862   A9 03                LDA #$03
1864   20 B7 39             JSR L39B7
1867   A5 8D                LDA $8D
1869   C9 07                CMP #$07
186B   F0 0F                BEQ L187C
186D   A2 11                LDX #$11
186F   A0 13                LDY #$13
1871   20 B8 31             JSR L31B8
1874   A9 00                LDA #$00
1876   A2 C6                LDX #$C6
1878   A0 DA                LDY #$DA
187A   80                   ???                ;10000000
187B   2D A2 09             AND $09A2
187E   A0 53                LDY #$53
1880   A9 11                LDA #$11
1882   85 10                STA $10
1884   A9 13                LDA #$13
1886   85 0F                STA $0F
1888   20 39 6E             JSR $6E39
188B   A2 11                LDX #$11
188D   A0 13                LDY #$13
188F   20 B8 31             JSR L31B8
1892   A9 00                LDA #$00
1894   09 00                ORA #$00
1896   09 00                ORA #$00
1898   F0 09                BEQ L18A3
189A   A9 00                LDA #$00
189C   A2 00                LDX #$00
189E   A0 00                LDY #$00
18A0   20 FC A1             JSR $A1FC
18A3   A9 00      L18A3     LDA #$00
18A5   A2 C5                LDX #$C5
18A7   A0 77                LDY #$77
18A9   20 FC A1             JSR $A1FC
18AC   A9 0C                LDA #$0C
18AE   20 6E 29             JSR L296E
18B1   4C FB 62             JMP $62FB
18B4   C9 0A                CMP #$0A
18B6   D0 0B                BNE L18C3
18B8   AD 8D 06             LDA $068D
18BB   F0 06                BEQ L18C3
18BD   A5 8D                LDA $8D
18BF   C9 07                CMP #$07
18C1   D0 03                BNE L18C6
18C3   4C FB 62   L18C3     JMP $62FB
18C6   A2 06      L18C6     LDX #$06
18C8   A0 8D                LDY #$8D
18CA   A9 09                LDA #$09
18CC   85 10                STA $10
18CE   A9 53                LDA #$53
18D0   85 0F                STA $0F
18D2   20 17 6F             JSR $6F17
18D5   D0 15                BNE L18EC
18D7   64                   ???                ;01100100 'd'
18D8   96 A9                STX $A9,Y
18DA   07                   ???                ;00000111
18DB   85 8D                STA $8D
18DD   A9 00                LDA #$00
18DF   A2 C4                LDX #$C4
18E1   A0 7C                LDY #$7C
18E3   20 B8 A1             JSR $A1B8
18E6   20 06 41             JSR L4106
18E9   4C F4 62             JMP $62F4
18EC   A2 06      L18EC     LDX #$06
18EE   A0 8D                LDY #$8D
18F0   20 49 98             JSR $9849
18F3   90 08                BCC L18FD
18F5   A9 00                LDA #$00
18F7   A2 C5                LDX #$C5
18F9   A0 31                LDY #$31
18FB   80                   ???                ;10000000
18FC   17                   ???                ;00010111
18FD   A2 06      L18FD     LDX #$06
18FF   A0 8D                LDY #$8D
1901   20 B4 66             JSR $66B4
1904   B0 08                BCS L190E
1906   A9 00                LDA #$00
1908   A2 C4                LDX #$C4
190A   A0 E9                LDY #$E9
190C   80                   ???                ;10000000
190D   06 A9                ASL $A9
190F   00                   BRK
1910   A2 C6                LDX #$C6
1912   A0 0C                LDY #$0C
1914   20 B8 A1             JSR $A1B8
1917   AD 7B 03             LDA $037B
191A   F0 03                BEQ L191F
191C   9C                   ???                ;10011100
191D   8D 06 C9             STA $C906
1920   02                   ???                ;00000010
1921   B0 0D                BCS L1930
1923   AD EA 08             LDA $08EA
1926   E9 04                SBC #$04
1928   A8                   TAY
1929   AD EB 08             LDA $08EB
192C   E9 00                SBC #$00
192E   AA                   TAX
192F   60                   RTS
1930   4C FB 62   L1930     JMP $62FB
1933   C9 2A                CMP #$2A
1935   D0 06                BNE L193D
1937   A5 8D                LDA $8D
1939   C9 07                CMP #$07
193B   D0 03                BNE L1940
193D   4C FB 62   L193D     JMP $62FB
1940   A2 11      L1940     LDX #$11
1942   A0 13                LDY #$13
1944   20 F1 2C             JSR L2CF1
1947   A2 00                LDX #$00
1949   A0 3D                LDY #$3D
194B   20 D2 4D             JSR $4DD2
194E   20 E5 2F             JSR L2FE5
1951   4C F4 62             JMP $62F4
1954   20 1D 3D             JSR L3D1D
1957   85 04                STA $04
1959   A2 11                LDX #$11
195B   A0 13                LDY #$13
195D   20 CC 60             JSR $60CC
1960   18                   CLC
1961   65 04                ADC $04
1963   4C 98 60             JMP $6098
1966   A6 8D                LDX $8D
1968   E0 07                CPX #$07
196A   D0 03                BNE L196F
196C   4C FB 62   L196C     JMP $62FB
196F   C9 08      L196F     CMP #$08
1971   D0 03                BNE L1976
1973   4C 1A 65             JMP $651A
1976   C9 3F      L1976     CMP #$3F
1978   F0 F2                BEQ L196C
197A   C9 1C                CMP #$1C
197C   F0 EE                BEQ L196C
197E   AA                   TAX
197F   BD 00 20             LDA $2000,X
1982   29 20                AND #$20
1984   F0 04                BEQ L198A
1986   8A                   TXA
1987   20 50 4E             JSR $4E50
198A   18         L198A     CLC
198B   A9 01                LDA #$01
198D   6D EA 08             ADC $08EA
1990   85 90                STA $90
1992   AD EB 08             LDA $08EB
1995   69 00                ADC #$00
1997   85 91                STA $91
1999   A9 03                LDA #$03
199B   85 8D                STA $8D
199D   20 0E 65             JSR $650E
19A0   20 9A 29             JSR L299A
19A3   20 BE 2F             JSR L2FBE
19A6   A9 00                LDA #$00
19A8   09 00                ORA #$00
19AA   09 00                ORA #$00
19AC   F0 09                BEQ L19B7
19AE   A9 00                LDA #$00
19B0   A2 00                LDX #$00
19B2   A0 00                LDY #$00
19B4   20 F6 A1             JSR $A1F6
19B7   A9 00      L19B7     LDA #$00
19B9   A2 C4                LDX #$C4
19BB   A0 99                LDY #$99
19BD   20 F6 A1             JSR $A1F6
19C0   9C                   ???                ;10011100
19C1   D0 06                BNE L19C9
19C3   9C                   ???                ;10011100
19C4   D1 06                CMP ($06),Y
19C6   A9 01                LDA #$01
19C8   8D D3 06             STA L06D3
19CB   A9 00                LDA #$00
19CD   8D CF 06             STA $06CF
19D0   A9 CF                LDA #$CF
19D2   8D CE 06             STA $06CE
19D5   A9 4F                LDA #$4F
19D7   8D CD 06             STA $06CD
19DA   A2 00                LDX #$00
19DC   A0 11                LDY #$11
19DE   60                   RTS
19DF   A6 8D                LDX $8D
19E1   E0 07                CPX #$07
19E3   F0 0D                BEQ L19F2
19E5   C9 3F                CMP #$3F
19E7   F0 0C                BEQ L19F5
19E9   C9 0A                CMP #$0A
19EB   D0 05                BNE L19F2
19ED   AD 8D 06             LDA $068D
19F0   F0 03                BEQ L19F5
19F2   4C FB 62   L19F2     JMP $62FB
19F5   A9 07      L19F5     LDA #$07
19F7   85 8D                STA $8D
19F9   64                   ???                ;01100100 'd'
19FA   96 20                STX $20,Y
19FC   AF                   ???                ;10101111
19FD   3C                   ???                ;00111100 '<'
19FE   4C F4 62             JMP $62F4
1A01   AD 89 02             LDA $0289
1A04   F0 29                BEQ L1A2F
1A06   64                   ???                ;01100100 'd'
1A07   04                   ???                ;00000100
1A08   64                   ???                ;01100100 'd'
1A09   96 20                STX $20,Y
1A0B   B2                   ???                ;10110010
1A0C   5F                   ???                ;01011111 '_'
1A0D   C9 5F                CMP #$5F
1A0F   D0 02                BNE L1A13
1A11   E6 96                INC $96
1A13   A6 04      L1A13     LDX $04
1A15   9D 13 11             STA $1113,X
1A18   E6 04                INC $04
1A1A   AA                   TAX
1A1B   D0 ED                BNE L1A0A
1A1D   A9 03                LDA #$03
1A1F   C5 8D                CMP $8D
1A21   D0 03                BNE L1A26
1A23   1A                   ???                ;00011010
1A24   85 8D                STA $8D
1A26   9C         L1A26     ???                ;10011100
1A27   89                   ???                ;10001001
1A28   02                   ???                ;00000010
1A29   9C                   ???                ;10011100
1A2A   8A                   TXA
1A2B   02                   ???                ;00000010
1A2C   4C F4 62             JMP $62F4
1A2F   4C FB 62   L1A2F     JMP $62FB
1A32   A5 8D                LDA $8D
1A34   C9 07                CMP #$07
1A36   D0 03                BNE L1A3B
1A38   4C FB 62             JMP $62FB
1A3B   A2 01      L1A3B     LDX #$01
1A3D   A0 E8                LDY #$E8
1A3F   AD 7B 03             LDA $037B
1A42   1A                   ???                ;00011010
1A43   00                   BRK
1A44   00                   BRK
1A45   67                   ???                ;01100111 'g'
1A46   94 20                STY $20,X
1A48   D2                   ???                ;11010010
1A49   4D B0 EC             EOR $ECB0
1A4C   A5 89      L1A4C     LDA $89
1A4E   20 3B 61             JSR $613B
1A51   AA                   TAX
1A52   BD 13 11             LDA $1113,X
1A55   C9 5F                CMP #$5F
1A57   D0 F3                BNE L1A4C
1A59   BD 53 09             LDA $0953,X
1A5C   9D 13 11             STA $1113,X
1A5F   C6 96                DEC $96
1A61   D0 0A                BNE L1A6D
1A63   20 B4 3C             JSR L3CB4
1A66   A9 07                LDA #$07
1A68   85 8D                STA $8D
1A6A   20 AF 3C             JSR L3CAF
1A6D   4C F4 62   L1A6D     JMP $62F4
1A70   AD 89 02             LDA $0289
1A73   F0 03                BEQ L1A78
1A75   4C F4 62             JMP $62F4
1A78   A6 89      L1A78     LDX $89
1A7A   9E                   ???                ;10011110
1A7B   13                   ???                ;00010011
1A7C   11 A9                ORA ($A9),Y
1A7E   5F                   ???                ;01011111 '_'
1A7F   9D 12 11   L1A7F     STA $1112,X
1A82   CA                   DEX
1A83   D0 FA                BNE L1A7F
1A85   A9 0A                LDA #$0A
1A87   85 96                STA $96
1A89   A9 04                LDA #$04
1A8B   85 8D                STA $8D
1A8D   85 8F                STA $8F
1A8F   4C FB 62             JMP $62FB
1A92   20 C0 26             JSR L26C0
1A95   20 BE 2F             JSR L2FBE
1A98   A9 03                LDA #$03
1A9A   20 B7 39             JSR L39B7
1A9D   A5 8D                LDA $8D
1A9F   C9 07                CMP #$07
1AA1   F0 2C                BEQ L1ACF
1AA3   38                   SEC
1AA4   A5 3F                LDA $3F
1AA6   E9 0C                SBC #$0C
1AA8   85 43                STA $43
1AAA   A2 11                LDX #$11
1AAC   A0 13                LDY #$13
1AAE   20 79 31             JSR L3179
1AB1   A9 09                LDA #$09
1AB3   20 6E 29             JSR L296E
1AB6   A4 96                LDY $96
1AB8   A2 00                LDX #$00
1ABA   A9 02                LDA #$02
1ABC   20 45 6D             JSR $6D45
1ABF   20 9E 32             JSR L329E
1AC2   A9 0A                LDA #$0A
1AC4   20 6E 29             JSR L296E
1AC7   A9 00                LDA #$00
1AC9   A2 C5                LDX #$C5
1ACB   A0 A0                LDY #$A0
1ACD   80                   ???                ;10000000
1ACE   2D A2 09             AND $09A2
1AD1   A0 53                LDY #$53
1AD3   A9 11                LDA #$11
1AD5   85 10                STA $10
1AD7   A9 13                LDA #$13
1AD9   85 0F                STA $0F
1ADB   20 39 6E             JSR $6E39
1ADE   A2 11                LDX #$11
1AE0   A0 13                LDY #$13
1AE2   20 B8 31             JSR L31B8
1AE5   A9 00                LDA #$00
1AE7   09 00                ORA #$00
1AE9   09 00                ORA #$00
1AEB   F0 09                BEQ L1AF6
1AED   A9 00                LDA #$00
1AEF   A2 00                LDX #$00
1AF1   A0 00                LDY #$00
1AF3   20 FC A1             JSR $A1FC
1AF6   A9 00      L1AF6     LDA #$00
1AF8   A2 C5                LDX #$C5
1AFA   A0 77                LDY #$77
1AFC   20 FC A1             JSR $A1FC
1AFF   A9 0C                LDA #$0C
1B01   20 6E 29             JSR L296E
1B04   4C FB 62             JMP $62FB
1B07   20 1D 3D             JSR L3D1D
1B0A   85 04                STA $04
1B0C   A5 96                LDA $96
1B0E   20 2D 60             JSR $602D
1B11   A2 11                LDX #$11
1B13   A0 13                LDY #$13
1B15   20 CC 60             JSR $60CC
1B18   38                   SEC
1B19   65 04                ADC $04
1B1B   4C 98 60             JMP $6098
1B1E   A6 8D                LDX $8D
1B20   E0 07                CPX #$07
1B22   F0 04                BEQ L1B28
1B24   C9 3F                CMP #$3F
1B26   F0 03                BEQ L1B2B
1B28   4C FB 62   L1B28     JMP $62FB
1B2B   A9 07      L1B2B     LDA #$07
1B2D   85 8D                STA $8D
1B2F   20 AF 3C             JSR L3CAF
1B32   4C F4 62             JMP $62F4
1B35   A2 01                LDX #$01
1B37   A0 E8                LDY #$E8
1B39   AD 7B 03             LDA $037B
1B3C   1A                   ???                ;00011010
1B3D   00                   BRK
1B3E   00                   BRK
1B3F   67                   ???                ;01100111 'g'
1B40   94 86                STY $86,X
1B42   98                   TYA
1B43   84 97                STY $97
1B45   AD 89 02             LDA $0289
1B48   F0 15                BEQ L1B5F
1B4A   20 B2 5F             JSR $5FB2
1B4D   85 96                STA $96
1B4F   A2 11                LDX #$11
1B51   A0 13                LDY #$13
1B53   20 FE 5F             JSR $5FFE
1B56   9C                   ???                ;10011100
1B57   89                   ???                ;10001001
1B58   02                   ???                ;00000010
1B59   9C                   ???                ;10011100
1B5A   8A                   TXA
1B5B   02                   ???                ;00000010
1B5C   4C F4 62             JMP $62F4
1B5F   4C FB 62   L1B5F     JMP $62FB
1B62   A5 8D                LDA $8D
1B64   C9 07                CMP #$07
1B66   F0 6A                BEQ L1BD2
1B68   A5 89      L1B68     LDA $89
1B6A   20 3B 61             JSR $613B
1B6D   AA                   TAX
1B6E   BD 13 11             LDA $1113,X
1B71   C9 5F                CMP #$5F
1B73   D0 F3                BNE L1B68
1B75   86 8E                STX $8E
1B77   A9 03                LDA #$03
1B79   20 B7 39             JSR L39B7
1B7C   A6 98                LDX $98
1B7E   A4 97                LDY $97
1B80   A9 00                LDA #$00
1B82   00                   BRK
1B83   00                   BRK
1B84   7B                   ???                ;01111011 '{'
1B85   88                   DEY
1B86   8D 15 09             STA $0915
1B89   8E 14 09             STX $0914
1B8C   8C 13 09             STY $0913
1B8F   AD 15 09   L1B8F     LDA $0915
1B92   AE 14 09             LDX $0914
1B95   AC 13 09             LDY $0913
1B98   00                   BRK
1B99   00                   BRK
1B9A   8C 88 B0             STY $B088
1B9D   57                   ???                ;01010111 'W'
1B9E   A6 8E                LDX $8E
1BA0   A9 5F                LDA #$5F
1BA2   DD 13 11             CMP $1113,X
1BA5   D0 03                BNE L1BAA
1BA7   BD 53 09             LDA $0953,X
1BAA   9D 13 11   L1BAA     STA $1113,X
1BAD   20 BE 2F             JSR L2FBE
1BB0   A2 11                LDX #$11
1BB2   A0 13                LDY #$13
1BB4   20 79 31             JSR L3179
1BB7   20 CA 4D             JSR $4DCA
1BBA   90 D3                BCC L1B8F
1BBC   20 03 4E             JSR $4E03
1BBF   AA                   TAX
1BC0   BD 00 20             LDA $2000,X
1BC3   29 20                AND #$20
1BC5   D0 0E                BNE L1BD5
1BC7   8A                   TXA
1BC8   20 50 4E             JSR $4E50
1BCB   A6 8E                LDX $8E
1BCD   A9 5F                LDA #$5F
1BCF   9D 13 11             STA $1113,X
1BD2   4C FB 62   L1BD2     JMP $62FB
1BD5   8A         L1BD5     TXA
1BD6   A6 8E                LDX $8E
1BD8   DD 53 09             CMP $0953,X
1BDB   D0 B2                BNE L1B8F
1BDD   9D 13 11             STA $1113,X
1BE0   A2 11                LDX #$11
1BE2   A0 13                LDY #$13
1BE4   A9 5F                LDA #$5F
1BE6   20 77 6E             JSR $6E77
1BE9   B0 07                BCS L1BF2
1BEB   20 06 41             JSR L4106
1BEE   A9 07                LDA #$07
1BF0   85 8D                STA $8D
1BF2   4C F4 62   L1BF2     JMP $62F4
1BF5   A6 8E                LDX $8E
1BF7   A9 5F                LDA #$5F
1BF9   9D 13 11             STA $1113,X
1BFC   C6 96                DEC $96
1BFE   D0 F2                BNE L1BF2
1C00   20 B4 3C             JSR L3CB4
1C03   20 AF 3C             JSR L3CAF
1C06   80                   ???                ;10000000
1C07   E6 20                INC $20
1C09   9A                   TXS
1C0A   29 AD                AND #$AD
1C0C   89                   ???                ;10001001
1C0D   02                   ???                ;00000010
1C0E   0D 8A 02             ORA $028A
1C11   F0 06                BEQ L1C19
1C13   9C                   ???                ;10011100
1C14   89                   ???                ;10001001
1C15   02                   ???                ;00000010
1C16   9C                   ???                ;10011100
1C17   8A                   TXA
1C18   02                   ???                ;00000010
1C19   AE E1 08   L1C19     LDX $08E1
1C1C   AC E0 08             LDY $08E0
1C1F   C0 00                CPY #$00
1C21   D0 02                BNE L1C25
1C23   E0 00                CPX #$00
1C25   D0 2E      L1C25     BNE L1C55
1C27   AD 79 03             LDA $0379
1C2A   D0 02                BNE L1C2E
1C2C   A9 04                LDA #$04
1C2E   C9 08      L1C2E     CMP #$08
1C30   90 02                BCC L1C34
1C32   A9 07                LDA #$07
1C34   85 89      L1C34     STA $89
1C36   4A                   LSR A
1C37   18                   CLC
1C38   65 89                ADC $89
1C3A   85 96                STA $96
1C3C   A2 00                LDX #$00
1C3E   DA         L1C3E     ???                ;11011010
1C3F   A5 96                LDA $96
1C41   20 3B 61             JSR $613B
1C44   18                   CLC
1C45   69 61                ADC #$61
1C47   FA                   ???                ;11111010
1C48   9D 53 09             STA $0953,X
1C4B   E8                   INX
1C4C   E4 89                CPX $89
1C4E   90 EE                BCC L1C3E
1C50   9E                   ???                ;10011110
1C51   53                   ???                ;01010011 'S'
1C52   09 80                ORA #$80
1C54   15 C0                ORA $C0,X
1C56   A7                   ???                ;10100111
1C57   D0 02                BNE L1C5B
1C59   E0 00                CPX #$00
1C5B   D0 0D      L1C5B     BNE L1C6A
1C5D   A5 89                LDA $89
1C5F   C9 08                CMP #$08
1C61   90 03                BCC L1C66
1C63   4C F4 62             JMP $62F4
1C66   A9 1A      L1C66     LDA #$1A
1C68   85 96                STA $96
1C6A   38         L1C6A     SEC
1C6B   A5 89                LDA $89
1C6D   ED 7B 03             SBC $037B
1C70   1A                   ???                ;00011010
1C71   0A                   ASL A
1C72   69 06                ADC #$06
1C74   85 98                STA $98
1C76   64                   ???                ;01100100 'd'
1C77   9A                   TXS
1C78   64                   ???                ;01100100 'd'
1C79   99 64 97             STA $9764,Y
1C7C   A9 04                LDA #$04
1C7E   85 8D                STA $8D
1C80   64                   ???                ;01100100 'd'
1C81   8E 64 8F             STX $8F64
1C84   20 2A 8F             JSR $8F2A
1C87   4C FB 62             JMP $62FB
1C8A   A5 99                LDA $99
1C8C   20 3D 8F             JSR $8F3D
1C8F   A4 89                LDY $89
1C91   A9 00                LDA #$00
1C93   91 9C                STA ($9C),Y
1C95   A9 5F                LDA #$5F
1C97   88         L1C97     DEY
1C98   91 9C                STA ($9C),Y
1C9A   D0 FB                BNE L1C97
1C9C   60                   RTS
1C9D   85 9C                STA $9C
1C9F   0A                   ASL A
1CA0   0A                   ASL A
1CA1   65 9C                ADC $9C
1CA3   0A                   ASL A
1CA4   69 02                ADC #$02
1CA6   69 13                ADC #$13
1CA8   85 9C                STA $9C
1CAA   A8                   TAY
1CAB   A9 00                LDA #$00
1CAD   69 11                ADC #$11
1CAF   85 9D                STA $9D
1CB1   AA                   TAX
1CB2   60                   RTS
1CB3   A6 8D                LDX $8D
1CB5   E0 07                CPX #$07
1CB7   D0 4D                BNE L1D06
1CB9   A9 00                LDA #$00
1CBB   A2 C6                LDX #$C6
1CBD   A0 F3                LDY #$F3
1CBF   20 F0 A1             JSR $A1F0
1CC2   A9 03                LDA #$03
1CC4   20 B7 39             JSR L39B7
1CC7   A5 8E                LDA $8E
1CC9   F0 29                BEQ L1CF4
1CCB   A5 9A                LDA $9A
1CCD   C5 99                CMP $99
1CCF   D0 23                BNE L1CF4
1CD1   A9 13                LDA #$13
1CD3   20 6E 29             JSR L296E
1CD6   A2 09                LDX #$09
1CD8   A0 53                LDY #$53
1CDA   A9 06                LDA #$06
1CDC   85 10                STA $10
1CDE   A9 8D                LDA #$8D
1CE0   85 0F                STA $0F
1CE2   20 39 6E             JSR $6E39
1CE5   A5 88                LDA $88
1CE7   8D D6 06             STA $06D6
1CEA   A5 87                LDA $87
1CEC   8D D5 06             STA $06D5
1CEF   A5 86                LDA $86
1CF1   8D D4 06             STA $06D4
1CF4   A2 09      L1CF4     LDX #$09
1CF6   A0 53                LDY #$53
1CF8   20 79 31             JSR L3179
1CFB   A9 11                LDA #$11
1CFD   20 6E 29             JSR L296E
1D00   A9 0A                LDA #$0A
1D02   20 6E 29             JSR L296E
1D05   60                   RTS
1D06   48         L1D06     PHA
1D07   A4 99                LDY $99
1D09   C8                   INY
1D0A   A2 00                LDX #$00
1D0C   A9 02                LDA #$02
1D0E   20 45 6D             JSR $6D45
1D11   20 79 31             JSR L3179
1D14   38                   SEC
1D15   A9 09                LDA #$09
1D17   E5 89                SBC $89
1D19   4A                   LSR A
1D1A   20 C9 2D             JSR L2DC9
1D1D   A5 99                LDA $99
1D1F   20 3D 8F             JSR $8F3D
1D22   B2                   ???                ;10110010
1D23   9C                   ???                ;10011100
1D24   F0 21                BEQ L1D47
1D26   68                   PLA
1D27   D0 0F                BNE L1D38
1D29   A9 03                LDA #$03
1D2B   85 0F                STA $0F
1D2D   A9 20                LDA #$20
1D2F   A6 37                LDX $37
1D31   A4 39                LDY $39
1D33   20 C9 26             JSR L26C9
1D36   A9 00                LDA #$00
1D38   3A         L1D38     ???                ;00111010 ':'
1D39   48                   PHA
1D3A   B2                   ???                ;10110010
1D3B   9C                   ???                ;10011100
1D3C   20 6E 29             JSR L296E
1D3F   E6 9C                INC $9C
1D41   D0 02                BNE L1D45
1D43   E6 9D                INC $9D
1D45   80         L1D45     ???                ;10000000
1D46   DB                   ???                ;11011011
1D47   68         L1D47     PLA
1D48   38                   SEC
1D49   A9 0A                LDA #$0A
1D4B   E5 89                SBC $89
1D4D   4A                   LSR A
1D4E   20 C9 2D             JSR L2DC9
1D51   38                   SEC
1D52   A5 98                LDA $98
1D54   E5 99                SBC $99
1D56   A8                   TAY
1D57   A2 00                LDX #$00
1D59   A9 02                LDA #$02
1D5B   20 45 6D             JSR $6D45
1D5E   20 79 31             JSR L3179
1D61   A9 00                LDA #$00
1D63   A2 C6                LDX #$C6
1D65   A0 FC                LDY #$FC
1D67   20 F6 A1             JSR $A1F6
1D6A   60                   RTS
1D6B   20 C0 26             JSR L26C0
1D6E   20 BE 2F             JSR L2FBE
1D71   A9 2F                LDA #$2F
1D73   85 43                STA $43
1D75   A5 99                LDA $99
1D77   F0 08                BEQ L1D81
1D79   A9 00                LDA #$00
1D7B   A2 C7                LDX #$C7
1D7D   A0 02                LDY #$02
1D7F   80                   ???                ;10000000
1D80   31 AD                AND ($AD),Y
1D82   E0 08                CPX #$08
1D84   C9 00                CMP #$00
1D86   D0 05                BNE L1D8D
1D88   AD E1 08             LDA $08E1
1D8B   C9 00                CMP #$00
1D8D   D0 1D      L1D8D     BNE L1DAC
1D8F   A9 00                LDA #$00
1D91   A2 C7                LDX #$C7
1D93   A0 1A                LDY #$1A
1D95   20 F0 A1             JSR $A1F0
1D98   18                   CLC
1D99   A9 40                LDA #$40
1D9B   65 96                ADC $96
1D9D   20 6E 29             JSR L296E
1DA0   A9 0F                LDA #$0F
1DA2   20 6E 29             JSR L296E
1DA5   A9 0A                LDA #$0A
1DA7   20 6E 29             JSR L296E
1DAA   80                   ???                ;10000000
1DAB   09 A9                ORA #$A9
1DAD   00                   BRK
1DAE   A2 C4                LDX #$C4
1DB0   A0 99                LDY #$99
1DB2   20 F6 A1             JSR $A1F6
1DB5   A6 9A                LDX $9A
1DB7   38                   SEC
1DB8   A5 99                LDA $99
1DBA   E5 9A                SBC $9A
1DBC   C5 9B                CMP $9B
1DBE   B0 0A                BCS L1DCA
1DC0   A2 00                LDX #$00
1DC2   38                   SEC
1DC3   A5 99                LDA $99
1DC5   E5 9B                SBC $9B
1DC7   90 01                BCC L1DCA
1DC9   AA                   TAX
1DCA   8A         L1DCA     TXA
1DCB   85 90                STA $90
1DCD   F0 05                BEQ L1DD4
1DCF   A9 01                LDA #$01
1DD1   20 F5 26             JSR L26F5
1DD4   A9 03      L1DD4     LDA #$03
1DD6   20 B7 39             JSR L39B7
1DD9   A2 FF                LDX #$FF
1DDB   DA                   ???                ;11011010
1DDC   A5 90                LDA $90
1DDE   C5 99                CMP $99
1DE0   B0 0C                BCS L1DEE
1DE2   FA                   ???                ;11111010
1DE3   E8                   INX
1DE4   DA                   ???                ;11011010
1DE5   E4 9B                CPX $9B
1DE7   90 0E                BCC L1DF7
1DE9   A9 02                LDA #$02
1DEB   20 F5 26             JSR L26F5
1DEE   68         L1DEE     PLA
1DEF   A5 97                LDA $97
1DF1   20 53 8F             JSR $8F53
1DF4   4C FB 62             JMP $62FB
1DF7   A4 90      L1DF7     LDY $90
1DF9   C8                   INY
1DFA   A2 00                LDX #$00
1DFC   A9 02                LDA #$02
1DFE   20 45 6D             JSR $6D45
1E01   20 79 31             JSR L3179
1E04   38                   SEC
1E05   A9 09                LDA #$09
1E07   E5 89                SBC $89
1E09   4A                   LSR A
1E0A   20 C9 2D             JSR L2DC9
1E0D   A5 8E                LDA $8E
1E0F   F0 2B                BEQ L1E3C
1E11   A5 90                LDA $90
1E13   C5 9A                CMP $9A
1E15   D0 25                BNE L1E3C
1E17   A9 13                LDA #$13
1E19   20 6E 29             JSR L296E
1E1C   A5 90                LDA $90
1E1E   20 3D 8F             JSR $8F3D
1E21   A9 06                LDA #$06
1E23   85 10                STA $10
1E25   A9 8D                LDA #$8D
1E27   85 0F                STA $0F
1E29   20 39 6E             JSR $6E39
1E2C   A2 06                LDX #$06
1E2E   A0 8D                LDY #$8D
1E30   20 B7 66             JSR $66B7
1E33   8D D6 06             STA $06D6
1E36   8E D5 06             STX $06D5
1E39   8C D4 06             STY $06D4
1E3C   A5 90      L1E3C     LDA $90
1E3E   20 3D 8F             JSR $8F3D
1E41   20 79 31             JSR L3179
1E44   A9 11                LDA #$11
1E46   20 6E 29             JSR L296E
1E49   38                   SEC
1E4A   A9 08                LDA #$08
1E4C   E5 89                SBC $89
1E4E   4A                   LSR A
1E4F   1A                   ???                ;00011010
1E50   20 C9 2D             JSR L2DC9
1E53   A5 90                LDA $90
1E55   0A                   ASL A
1E56   0A                   ASL A
1E57   65 90                ADC $90
1E59   0A                   ASL A
1E5A   48                   PHA
1E5B   AA                   TAX
1E5C   BC 13 11             LDY $1113,X
1E5F   A2 00                LDX #$00
1E61   A9 01                LDA #$01
1E63   20 45 6D             JSR $6D45
1E66   20 79 31             JSR L3179
1E69   A9 06                LDA #$06
1E6B   20 C9 2D             JSR L2DC9
1E6E   FA                   ???                ;11111010
1E6F   BC 14 11             LDY $1114,X
1E72   A2 00                LDX #$00
1E74   A9 01                LDA #$01
1E76   20 45 6D             JSR $6D45
1E79   20 9E 32             JSR L329E
1E7C   E6 90                INC $90
1E7E   4C 7C 90             JMP $907C
1E81   C9 08                CMP #$08
1E83   D0 29                BNE L1EAE
1E85   A5 8E                LDA $8E
1E87   F0 04                BEQ L1E8D
1E89   64                   ???                ;01100100 'd'
1E8A   8E 80 39             STX $3980
1E8D   A5 99      L1E8D     LDA $99
1E8F   20 3D 8F             JSR $8F3D
1E92   A5 8D                LDA $8D
1E94   C9 07                CMP #$07
1E96   F0 0A                BEQ L1EA2
1E98   A9 5F                LDA #$5F
1E9A   A4 97                LDY $97
1E9C   D0 07                BNE L1EA5
1E9E   D1 9C                CMP ($9C),Y
1EA0   D0 05                BNE L1EA7
1EA2   4C 1A 65   L1EA2     JMP $651A
1EA5   C6 97      L1EA5     DEC $97
1EA7   91 9C      L1EA7     STA ($9C),Y
1EA9   80                   ???                ;10000000
1EAA   1B                   ???                ;00011011
1EAB   4C FB 62   L1EAB     JMP $62FB
1EAE   C9 82      L1EAE     CMP #$82
1EB0   D0 0C                BNE L1EBE
1EB2   E6 97                INC $97
1EB4   A5 97                LDA $97
1EB6   C5 89                CMP $89
1EB8   D0 0C                BNE L1EC6
1EBA   C6 97      L1EBA     DEC $97
1EBC   80                   ???                ;10000000
1EBD   08                   PHP
1EBE   C9 83      L1EBE     CMP #$83
1EC0   D0 E9                BNE L1EAB
1EC2   A5 97                LDA $97
1EC4   D0 F4                BNE L1EBA
1EC6   4C F4 62   L1EC6     JMP $62F4
1EC9   C9 0A                CMP #$0A
1ECB   F0 03                BEQ L1ED0
1ECD   4C FB 62   L1ECD     JMP $62FB
1ED0   A5 99      L1ED0     LDA $99
1ED2   20 3D 8F             JSR $8F3D
1ED5   A5 8D                LDA $8D
1ED7   C9 07                CMP #$07
1ED9   F0 0B                BEQ L1EE6
1EDB   A6 9D                LDX $9D
1EDD   A4 9C                LDY $9C
1EDF   A9 5F                LDA #$5F
1EE1   20 77 6E             JSR $6E77
1EE4   90 16                BCC L1EFC
1EE6   A5 8E      L1EE6     LDA $8E
1EE8   F0 0E                BEQ L1EF8
1EEA   A9 00                LDA #$00
1EEC   09 00                ORA #$00
1EEE   F0 DD                BEQ L1ECD
1EF0   20 0E 65             JSR $650E
1EF3   A2 00                LDX #$00
1EF5   A0 00                LDY #$00
1EF7   60                   RTS
1EF8   E6 8E      L1EF8     INC $8E
1EFA   80                   ???                ;10000000
1EFB   20 AD E0             JSR $E0AD
1EFE   08                   PHP
1EFF   C9 A7                CMP #$A7
1F01   D0 05                BNE L1F08
1F03   AD E1 08             LDA $08E1
1F06   C9 00                CMP #$00
1F08   D0 15      L1F08     BNE L1F1F
1F0A   A6 9D                LDX $9D
1F0C   A4 9C                LDY $9C
1F0E   20 B4 66             JSR $66B4
1F11   B0 0C                BCS L1F1F
1F13   A9 00                LDA #$00
1F15   A2 C4                LDX #$C4
1F17   A0 E9                LDY #$E9
1F19   20 B8 A1             JSR $A1B8
1F1C   4C F4 62   L1F1C     JMP $62F4
1F1F   64         L1F1F     ???                ;01100100 'd'
1F20   97                   ???                ;10010111
1F21   A5 99                LDA $99
1F23   0A                   ASL A
1F24   0A                   ASL A
1F25   65 99                ADC $99
1F27   E6 99                INC $99
1F29   0A                   ASL A
1F2A   69 13                ADC #$13
1F2C   A8                   TAY
1F2D   A9 00                LDA #$00
1F2F   69 11                ADC #$11
1F31   AA                   TAX
1F32   20 1E 93             JSR $931E
1F35   90 09                BCC L1F40
1F37   A5 8F                LDA $8F
1F39   D0 0E                BNE L1F49
1F3B   20 06 41             JSR L4106
1F3E   80                   ???                ;10000000
1F3F   0C                   ???                ;00001100
1F40   A5 99      L1F40     LDA $99
1F42   C5 98                CMP $98
1F44   90 0C                BCC L1F52
1F46   20 B4 3C             JSR L3CB4
1F49   20 AF 3C   L1F49     JSR L3CAF
1F4C   A9 07                LDA #$07
1F4E   85 8D                STA $8D
1F50   80                   ???                ;10000000
1F51   03                   ???                ;00000011
1F52   20 2A 8F   L1F52     JSR $8F2A
1F55   18                   CLC
1F56   A5 99                LDA $99
1F58   E5 9B                SBC $9B
1F5A   90 C0                BCC L1F1C
1F5C   1A                   ???                ;00011010
1F5D   85 9A                STA $9A
1F5F   80                   ???                ;10000000
1F60   BB                   ???                ;10111011
1F61   C9 2A                CMP #$2A
1F63   D0 13                BNE L1F78
1F65   A5 8D                LDA $8D
1F67   C9 07                CMP #$07
1F69   F0 0D                BEQ L1F78
1F6B   E6 8F                INC $8F
1F6D   A9 06                LDA #$06
1F6F   85 8D                STA $8D
1F71   A6 97                LDX $97
1F73   BD 53 09             LDA $0953,X
1F76   85 54                STA $54
1F78   4C FB 62   L1F78     JMP $62FB
1F7B   AA                   TAX
1F7C   BD 00 20             LDA $2000,X
1F7F   29 20                AND #$20
1F81   D0 07                BNE L1F8A
1F83   E0 20                CPX #$20
1F85   F0 16                BEQ L1F9D
1F87   4C FB 62             JMP $62FB
1F8A   38         L1F8A     SEC
1F8B   8A                   TXA
1F8C   E9 61                SBC #$61
1F8E   C5 96                CMP $96
1F90   90 0F                BCC L1FA1
1F92   A9 00                LDA #$00
1F94   A2 C7                LDX #$C7
1F96   A0 2E                LDY #$2E
1F98   20 B8 A1             JSR $A1B8
1F9B   80                   ???                ;10000000
1F9C   19 A9 5F             ORA $5FA9,Y
1F9F   85 54                STA $54
1FA1   A5 99      L1FA1     LDA $99
1FA3   20 3D 8F             JSR $8F3D
1FA6   A4 97                LDY $97
1FA8   A5 54                LDA $54
1FAA   91 9C                STA ($9C),Y
1FAC   E6 97                INC $97
1FAE   A5 97                LDA $97
1FB0   C5 89                CMP $89
1FB2   D0 02                BNE L1FB6
1FB4   C6 97                DEC $97
1FB6   4C F4 62   L1FB6     JMP $62F4
1FB9   C9 80                CMP #$80
1FBB   D0 0C                BNE L1FC9
1FBD   A5 99                LDA $99
1FBF   F0 2D                BEQ L1FEE
1FC1   A5 9A                LDA $9A
1FC3   F0 26                BEQ L1FEB
1FC5   C6 9A      L1FC5     DEC $9A
1FC7   80                   ???                ;10000000
1FC8   25 C9                AND $C9
1FCA   0D D0 04             ORA $04D0
1FCD   64                   ???                ;01100100 'd'
1FCE   9A                   TXS
1FCF   80                   ???                ;10000000
1FD0   1D C9 81             ORA $81C9,X
1FD3   D0 30                BNE L2005
1FD5   A5 8E                LDA $8E
1FD7   F0 18                BEQ L1FF1
1FD9   E6 9A                INC $9A
1FDB   A5 9A                LDA $9A
1FDD   C5 99                CMP $99
1FDF   90 0D                BCC L1FEE
1FE1   D0 06                BNE L1FE9
1FE3   A5 8D                LDA $8D
1FE5   C9 07                CMP #$07
1FE7   F0 05                BEQ L1FEE
1FE9   C6 9A      L1FE9     DEC $9A
1FEB   20 B2 A1   L1FEB     JSR $A1B2
1FEE   4C F4 62   L1FEE     JMP $62F4
1FF1   A5 99      L1FF1     LDA $99
1FF3   F0 F9                BEQ L1FEE
1FF5   18                   CLC
1FF6   A5 9A                LDA $9A
1FF8   65 9B                ADC $9B
1FFA   C5 99                CMP $99
1FFC   B0 ED                BCS L1FEB
1FFE   E6 9A                INC $9A
2000   80                   ???                ;10000000
2001   EC 4C FB             CPX $FB4C
2004   62                   ???                ;01100010 'b'
2005   C9 0C      L2005     CMP #$0C
2007   D0 F9                BNE L2002
2009   A5 8E                LDA $8E
200B   F0 0C                BEQ L2019
200D   A5 99                LDA $99
200F   85 9A                STA $9A
2011   A5 8D                LDA $8D
2013   C9 07                CMP #$07
2015   D0 AE                BNE L1FC5
2017   80                   ???                ;10000000
2018   D5 18                CMP $18,X
201A   A5 99                LDA $99
201C   E5 9B                SBC $9B
201E   90 CE                BCC L1FEE
2020   1A                   ???                ;00011010
2021   85 9A                STA $9A
2023   80                   ???                ;10000000
2024   C9 20                CMP #$20
2026   1D 3D 18             ORA $183D,X
2029   69 05                ADC #$05
202B   85 04                STA $04
202D   64                   ???                ;01100100 'd'
202E   05 A5                ORA $A5
2030   96 20                STX $20,Y
2032   2D 60 A5             AND $A560
2035   97                   ???                ;10010111
2036   20 2D 60             JSR $602D
2039   A5 98                LDA $98
203B   20 2D 60             JSR $602D
203E   A5 99                LDA $99
2040   20 2D 60             JSR $602D
2043   A5 9A                LDA $9A
2045   20 2D 60             JSR $602D
2048   A5 99                LDA $99
204A   0A                   ASL A
204B   0A                   ASL A
204C   65 99                ADC $99
204E   0A                   ASL A
204F   48                   PHA
2050   65 04                ADC $04
2052   85 04                STA $04
2054   90 02                BCC L2058
2056   E6 05                INC $05
2058   68         L2058     PLA
2059   A2 11                LDX #$11
205B   A0 13                LDY #$13
205D   20 66 60             JSR $6066
2060   A6 05                LDX $05
2062   A4 04                LDY $04
2064   4C 9B 60             JMP $609B
2067   C9 3F                CMP #$3F
2069   D0 06                BNE L2071
206B   A5 8D                LDA $8D
206D   C9 07                CMP #$07
206F   D0 03                BNE L2074
2071   4C FB 62   L2071     JMP $62FB
2074   20 AF 3C   L2074     JSR L3CAF
2077   A9 07                LDA #$07
2079   85 8D                STA $8D
207B   4C F4 62             JMP $62F4
207E   86 9D                STX $9D
2080   84 9C                STY $9C
2082   64                   ???                ;01100100 'd'
2083   02                   ???                ;00000010
2084   A0 02                LDY #$02
2086   A2 00                LDX #$00
2088   B1 9C      L2088     LDA ($9C),Y
208A   DD 53 09             CMP $0953,X
208D   D0 02                BNE L2091
208F   E6 02                INC $02
2091   C8         L2091     INY
2092   E8                   INX
2093   E4 89                CPX $89
2095   90 F1                BCC L2088
2097   A0 00                LDY #$00
2099   A5 02                LDA $02
209B   91 9C                STA ($9C),Y
209D   64                   ???                ;01100100 'd'
209E   02                   ???                ;00000010
209F   A2 09                LDX #$09
20A1   A0 53                LDY #$53
20A3   A9 09                LDA #$09
20A5   85 10                STA $10
20A7   A9 13                LDA #$13
20A9   85 0F                STA $0F
20AB   20 39 6E             JSR $6E39
20AE   A0 02                LDY #$02
20B0   A2 00                LDX #$00
20B2   5A         L20B2     ???                ;01011010 'Z'
20B3   DA                   ???                ;11011010
20B4   B1 9C                LDA ($9C),Y
20B6   A2 09                LDX #$09
20B8   A0 13                LDY #$13
20BA   20 77 6E             JSR $6E77
20BD   90 07                BCC L20C6
20BF   E6 02                INC $02
20C1   A9 00                LDA #$00
20C3   20 27 6E             JSR $6E27
20C6   FA         L20C6     ???                ;11111010
20C7   7A                   ???                ;01111010 'z'
20C8   C8                   INY
20C9   E8                   INX
20CA   E4 89                CPX $89
20CC   90 E4                BCC L20B2
20CE   38                   SEC
20CF   A5 02                LDA $02
20D1   A0 00                LDY #$00
20D3   F1 9C                SBC ($9C),Y
20D5   A0 01                LDY #$01
20D7   91 9C                STA ($9C),Y
20D9   A0 00                LDY #$00
20DB   B1 9C                LDA ($9C),Y
20DD   C5 89                CMP $89
20DF   60                   RTS
20E0   A6 42                LDX $42
20E2   A4 41                LDY $41
20E4   A9 08                LDA #$08
20E6   00                   BRK
20E7   00                   BRK
20E8   67                   ???                ;01100111 'g'
20E9   94 88                STY $88,X
20EB   88                   DEY
20EC   84 9B                STY $9B
20EE   64                   ???                ;01100100 'd'
20EF   99 A9 08             STA $08A9,Y
20F2   85 8B                STA $8B
20F4   AD 79 03             LDA $0379
20F7   F0 0E                BEQ L2107
20F9   C9 08                CMP #$08
20FB   90 02                BCC L20FF
20FD   A9 07                LDA #$07
20FF   C5 8C      L20FF     CMP $8C
2101   B0 02                BCS L2105
2103   A5 8C                LDA $8C
2105   80         L2105     ???                ;10000000
2106   02                   ???                ;00000010
2107   A9 04      L2107     LDA #$04
2109   85 8A                STA $8A
210B   AD 89 02             LDA $0289
210E   0D 8A 02             ORA $028A
2111   F0 2F                BEQ L2142
2113   20 B2 5F             JSR $5FB2
2116   85 96                STA $96
2118   20 B2 5F             JSR $5FB2
211B   85 97                STA $97
211D   20 B2 5F             JSR $5FB2
2120   85 98                STA $98
2122   20 B2 5F             JSR $5FB2
2125   85 99                STA $99
2127   20 B2 5F             JSR $5FB2
212A   85 9A                STA $9A
212C   AD 89 02             LDA $0289
212F   A2 11                LDX #$11
2131   A0 13                LDY #$13
2133   20 DA 5F             JSR $5FDA
2136   20 9A 29             JSR L299A
2139   9C                   ???                ;10011100
213A   89                   ???                ;10001001
213B   02                   ???                ;00000010
213C   9C                   ???                ;10011100
213D   8A                   TXA
213E   02                   ???                ;00000010
213F   4C F4 62             JMP $62F4
2142   AD E0 08   L2142     LDA $08E0
2145   C9 00                CMP #$00
2147   D0 05                BNE L214E
2149   AD E1 08             LDA $08E1
214C   C9 00                CMP #$00
214E   D0 0E      L214E     BNE L215E
2150   18                   CLC
2151   A9 03                LDA #$03
2153   6D EA 08             ADC $08EA
2156   A8                   TAY
2157   AD EB 08             LDA $08EB
215A   69 00                ADC #$00
215C   AA                   TAX
215D   60                   RTS
215E   4C FB 62   L215E     JMP $62FB
2161   DA                   ???                ;11011010
2162   5A                   ???                ;01011010 'Z'
2163   20 92 2F             JSR L2F92
2166   20 9A 29             JSR L299A
2169   AD 33 02             LDA $0233
216C   38                   SEC
216D   E9 7F                SBC #$7F
216F   4A                   LSR A
2170   85 4B                STA $4B
2172   AD 35 02             LDA $0235
2175   38                   SEC
2176   E9 18                SBC #$18
2178   4A                   LSR A
2179   85 4C                STA $4C
217B   7A                   ???                ;01111010 'z'
217C   FA                   ???                ;11111010
217D   98                   TYA
217E   0A                   ASL A
217F   A8                   TAY
2180   8A                   TXA
2181   2A                   ROL A
2182   AA                   TAX
2183   98                   TYA
2184   69 AF                ADC #$AF
2186   8D CE FF             STA $FFCE
2189   8A                   TXA
218A   69 D0                ADC #$D0
218C   8D CF FF             STA $FFCF
218F   A9 00                LDA #$00
2191   69 02                ADC #$02
2193   8D D0 FF             STA $FFD0
2196   AC CC FF             LDY $FFCC
2199   AE CC FF             LDX $FFCC
219C   86 4A                STX $4A
219E   84 49                STY $49
21A0   AC CC FF             LDY $FFCC
21A3   AE CC FF             LDX $FFCC
21A6   86 48                STX $48
21A8   84 47                STY $47
21AA   00                   BRK
21AB   00                   BRK
21AC   97                   ???                ;10010111
21AD   83                   ???                ;10000011
21AE   A0 00                LDY #$00
21B0   80                   ???                ;10000000
21B1   02                   ???                ;00000010
21B2   A0 28                LDY #$28
21B4   A5 49                LDA $49
21B6   C5 47                CMP $47
21B8   D0 09                BNE L21C3
21BA   A5 4A                LDA $4A
21BC   C5 48                CMP $48
21BE   D0 03                BNE L21C3
21C0   4C 1C 95             JMP $951C
21C3   A9 00      L21C3     LDA #$00
21C5   AA                   TAX
21C6   00                   BRK
21C7   00                   BRK
21C8   7B                   ???                ;01111011 '{'
21C9   88                   DEY
21CA   85 46                STA $46
21CC   86 45                STX $45
21CE   84 44                STY $44
21D0   A5 4A                LDA $4A
21D2   85 01                STA $01
21D4   A5 49                LDA $49
21D6   0A                   ASL A
21D7   26 01                ROL $01
21D9   0A                   ASL A
21DA   26 01                ROL $01
21DC   0A                   ASL A
21DD   26 01                ROL $01
21DF   69 DD                ADC #$DD
21E1   8D CE FF             STA $FFCE
21E4   A5 01                LDA $01
21E6   69 D0                ADC #$D0
21E8   8D CF FF             STA $FFCF
21EB   A9 00                LDA #$00
21ED   69 02                ADC #$02
21EF   8D D0 FF             STA $FFD0
21F2   AD CC FF             LDA $FFCC
21F5   18                   CLC
21F6   65 4B                ADC $4B
21F8   85 22                STA $22
21FA   64                   ???                ;01100100 'd'
21FB   23                   ???                ;00100011 '#'
21FC   AD CC FF             LDA $FFCC
21FF   18                   CLC
2200   65 4C                ADC $4C
2202   85 24                STA $24
2204   64                   ???                ;01100100 'd'
2205   25 A9                AND $A9
2207   02                   ???                ;00000010
2208   85 21                STA $21
220A   A9 33                LDA #$33
220C   85 20                STA $20
220E   BA                   TSX
220F   8A                   TXA
2210   38                   SEC
2211   E9 0A                SBC #$0A
2213   AA                   TAX
2214   9A                   TXS
2215   E8                   INX
2216   86 1A                STX $1A
2218   A9 01                LDA #$01
221A   85 1B                STA $1B
221C   64                   ???                ;01100100 'd'
221D   1C                   ???                ;00011100
221E   64                   ???                ;01100100 'd'
221F   1D 64 1E             ORA $1E64,X
2222   64                   ???                ;01100100 'd'
2223   1F                   ???                ;00011111
2224   9E                   ???                ;10011110
2225   01 01                ORA ($01,X)
2227   9E                   ???                ;10011110
2228   03                   ???                ;00000011
2229   01 9E                ORA ($9E,X)
222B   05 01                ORA $01
222D   AD CC FF             LDA $FFCC
2230   9D 00 01             STA $0100,X
2233   AD CC FF             LDA $FFCC
2236   9D 02 01   L2236     STA $0102,X
2239   A8                   TAY
223A   AD CC FF             LDA $FFCC
223D   9D 04 01             STA $0104,X
2240   AD CC FF             LDA $FFCC
2243   9D 06 01             STA L0106,X
2246   AD CC FF             LDA $FFCC
2249   9D 07 01             STA $0107,X
224C   AD CC FF             LDA $FFCC
224F   9D 08 01             STA $0108,X
2252   BD 00 01             LDA $0100,X
2255   AA                   TAX
2256   A9 08                LDA #$08
2258   8D 3D 02             STA $023D
225B   00                   BRK
225C   00                   BRK
225D   C5 88                CMP $88
225F   BA                   TSX
2260   8A                   TXA
2261   18                   CLC
2262   69 0A                ADC #$0A
2264   AA                   TAX
2265   9A                   TXS
2266   A5 46                LDA $46
2268   A6 45                LDX $45
226A   A4 44                LDY $44
226C   00                   BRK
226D   00                   BRK
226E   8C 88 B0             STY $B088
2271   0B                   ???                ;00001011
2272   00                   BRK
2273   00                   BRK
2274   CB                   ???                ;11001011
2275   86 90                STX $90
2277   EE 00 00             INC $0000
227A   FB                   ???                ;11111011
227B   86 60                STX $60
227D   A6 4A                LDX $4A
227F   A4 49                LDY $49
2281   C8                   INY
2282   D0 01                BNE L2285
2284   E8                   INX
2285   86 4A      L2285     STX $4A
2287   84 49                STY $49
2289   4C 52 94             JMP $9452
228C   AE E1 08             LDX $08E1
228F   AC E0 08             LDY $08E0
2292   C0 00                CPY #$00
2294   D0 02                BNE L2298
2296   E0 00                CPX #$00
2298   D0 08      L2298     BNE L22A2
229A   64                   ???                ;01100100 'd'
229B   96 64                STX L0064,Y
229D   98                   TYA
229E   64                   ???                ;01100100 'd'
229F   99 80 28             STA $2880,Y
22A2   C0 00      L22A2     CPY #$00
22A4   D0 02                BNE L22A8
22A6   E0 00                CPX #$00
22A8   D0 08      L22A8     BNE L22B2
22AA   64                   ???                ;01100100 'd'
22AB   96 A2                STX $A2,Y
22AD   01 A0                ORA ($A0,X)
22AF   E8                   INX
22B0   80                   ???                ;10000000
22B1   0C                   ???                ;00001100
22B2   C0 8E      L22B2     CPY #$8E
22B4   D0 02                BNE L22B8
22B6   E0 00                CPX #$00
22B8   D0 10      L22B8     BNE L22CA
22BA   A2 02                LDX #$02
22BC   A0 DC                LDY #$DC
22BE   AD 7B 03             LDA $037B
22C1   1A                   ???                ;00011010
22C2   00                   BRK
22C3   00                   BRK
22C4   67                   ???                ;01100111 'g'
22C5   94 86                STY $86,X
22C7   99 84 98             STA $9884,Y
22CA   A5 96      L22CA     LDA $96
22CC   D0 03                BNE L22D1
22CE   20 34 68             JSR $6834
22D1   E6 96      L22D1     INC $96
22D3   64                   ???                ;01100100 'd'
22D4   97                   ???                ;10010111
22D5   A5 88                LDA $88
22D7   A6 87                LDX $87
22D9   A4 86                LDY $86
22DB   20 B8 6A             JSR $6AB8
22DE   B0 09                BCS L22E9
22E0   C6 96                DEC $96
22E2   A5 96                LDA $96
22E4   20 3C 69             JSR $693C
22E7   80                   ???                ;10000000
22E8   EC 64 8F             CPX $8F64
22EB   A9 04                LDA #$04
22ED   85 8D                STA $8D
22EF   4C FB 62             JMP $62FB
22F2   AD E0 08             LDA $08E0
22F5   C9 00                CMP #$00
22F7   D0 05                BNE L22FE
22F9   AD E1 08             LDA $08E1
22FC   C9 00                CMP #$00
22FE   D0 04      L22FE     BNE L2304
2300   A9 07                LDA #$07
2302   85 8D                STA $8D
2304   20 C0 26   L2304     JSR L26C0
2307   A5 8D                LDA $8D
2309   C9 04                CMP #$04
230B   D0 73                BNE L2380
230D   64                   ???                ;01100100 'd'
230E   97                   ???                ;10010111
230F   A5 97                LDA $97
2311   C5 96                CMP $96
2313   B0 60                BCS L2375
2315   20 58 96             JSR $9658
2318   A9 09                LDA #$09
231A   85 10                STA $10
231C   A9 13                LDA #$13
231E   85 0F                STA $0F
2320   AD E0 08             LDA $08E0
2323   C9 8E                CMP #$8E
2325   D0 05                BNE L232C
2327   AD E1 08             LDA $08E1
232A   C9 00                CMP #$00
232C   D0 13      L232C     BNE L2341
232E   A5 97                LDA $97
2330   1A                   ???                ;00011010
2331   20 40 6D             JSR $6D40
2334   20 39 6E             JSR $6E39
2337   A9 20                LDA #$20
2339   92                   ???                ;10010010
233A   0F                   ???                ;00001111
233B   E6 0F                INC $0F
233D   D0 02                BNE L2341
233F   E6 10                INC $10
2341   A2 09      L2341     LDX #$09
2343   A0 53                LDY #$53
2345   20 39 6E             JSR $6E39
2348   20 BE 2F             JSR L2FBE
234B   A2 09                LDX #$09
234D   A0 13                LDY #$13
234F   20 B8 31             JSR L31B8
2352   A9 0C                LDA #$0C
2354   20 6E 29             JSR L296E
2357   A6 99                LDX $99
2359   A4 98                LDY $98
235B   20 D2 4D             JSR $4DD2
235E   90 03                BCC L2363
2360   20 03 4E             JSR $4E03
2363   A5 98      L2363     LDA $98
2365   05 99                ORA $99
2367   F0 08                BEQ L2371
2369   20 BE 2F             JSR L2FBE
236C   A9 0A                LDA #$0A
236E   20 6E 29             JSR L296E
2371   E6 97      L2371     INC $97
2373   80                   ???                ;10000000
2374   9A                   TXS
2375   64         L2375     ???                ;01100100 'd'
2376   97                   ???                ;10010111
2377   A9 00                LDA #$00
2379   20 58 96             JSR $9658
237C   A9 05                LDA #$05
237E   85 8D                STA $8D
2380   C9 07      L2380     CMP #$07
2382   D0 2E                BNE L23B2
2384   20 BE 2F             JSR L2FBE
2387   A5 97                LDA $97
2389   20 58 96             JSR $9658
238C   A2 09                LDX #$09
238E   A0 53      L238E     LDY #$53
2390   20 B8 31             JSR L31B8
2393   A9 00                LDA #$00
2395   09 00                ORA #$00
2397   09 00                ORA #$00
2399   F0 09                BEQ L23A4
239B   A9 00                LDA #$00
239D   A2 00                LDX #$00
239F   A0 00                LDY #$00
23A1   20 FC A1             JSR $A1FC
23A4   A9 00      L23A4     LDA #$00
23A6   A2 C5                LDX #$C5
23A8   A0 77                LDY #$77
23AA   20 FC A1             JSR $A1FC
23AD   A9 0C                LDA #$0C
23AF   20 6E 29             JSR L296E
23B2   9C         L23B2     ???                ;10011100
23B3   8D 06 4C             STA $4C06
23B6   FB                   ???                ;11111011
23B7   62                   ???                ;01100010 'b'
23B8   A8                   TAY
23B9   A2 00                LDX #$00
23BB   A9 01                LDA #$01
23BD   20 FA 68             JSR $68FA
23C0   A5 B1                LDA $B1
23C2   85 88                STA $88
23C4   A5 B0                LDA $B0
23C6   85 87                STA $87
23C8   A5 AF                LDA $AF
23CA   85 86                STA $86
23CC   A2 11                LDX #$11
23CE   A0 DB                LDY #$DB
23D0   A9 09                LDA #$09
23D2   85 10                STA $10
23D4   A9 53                LDA #$53
23D6   85 0F                STA $0F
23D8   4C 39 6E             JMP $6E39
23DB   C9 0A                CMP #$0A
23DD   D0 06                BNE L23E5
23DF   A5 8D                LDA $8D
23E1   C9 07                CMP #$07
23E3   D0 03                BNE L23E8
23E5   4C FB 62   L23E5     JMP $62FB
23E8   A2 06      L23E8     LDX #$06
23EA   A0 8D                LDY #$8D
23EC   A9 09                LDA #$09
23EE   85 10                STA $10
23F0   A9 53                LDA #$53
23F2   85 0F                STA $0F
23F4   20 17 6F             JSR $6F17
23F7   D0 2C                BNE L2425
23F9   A9 00                LDA #$00
23FB   A2 C4                LDX #$C4
23FD   A0 7C                LDY #$7C
23FF   20 B8 A1             JSR $A1B8
2402   E6 97                INC $97
2404   A5 97                LDA $97
2406   C5 96                CMP $96
2408   90 14                BCC L241E
240A   C6 97                DEC $97
240C   A5 8F                LDA $8F
240E   F0 07                BEQ L2417
2410   64                   ???                ;01100100 'd'
2411   96 20                STX $20,Y
2413   AF                   ???                ;10101111
2414   3C                   ???                ;00111100 '<'
2415   80                   ???                ;10000000
2416   03                   ???                ;00000011
2417   20 06 41   L2417     JSR L4106
241A   A9 07                LDA #$07
241C   85 8D                STA $8D
241E   A5 97      L241E     LDA $97
2420   20 58 96             JSR $9658
2423   80                   ???                ;10000000
2424   2B                   ???                ;00101011 '+'
2425   A2 06      L2425     LDX #$06
2427   A0 8D                LDY #$8D
2429   20 49 98             JSR $9849
242C   90 08                BCC L2436
242E   A9 00                LDA #$00
2430   A2 C5                LDX #$C5
2432   A0 31                LDY #$31
2434   80                   ???                ;10000000
2435   17                   ???                ;00010111
2436   A2 06      L2436     LDX #$06
2438   A0 8D                LDY #$8D
243A   20 B4 66             JSR $66B4
243D   B0 08                BCS L2447
243F   A9 00                LDA #$00
2441   A2 C4                LDX #$C4
2443   A0 E9                LDY #$E9
2445   80                   ???                ;10000000
2446   06 A9                ASL $A9
2448   00                   BRK
2449   A2 C6                LDX #$C6
244B   A0 0C                LDY #$0C
244D   20 B8 A1             JSR $A1B8
2450   9C                   ???                ;10011100
2451   8D 06 4C             STA $4C06
2454   F4                   ???                ;11110100
2455   62                   ???                ;01100010 'b'
2456   C9 2A                CMP #$2A
2458   D0 06                BNE L2460
245A   A5 8D                LDA $8D
245C   C9 07                CMP #$07
245E   D0 03                BNE L2463
2460   4C FB 62   L2460     JMP $62FB
2463   A2 09      L2463     LDX #$09
2465   A0 53                LDY #$53
2467   20 F1 2C             JSR L2CF1
246A   A2 00                LDX #$00
246C   A0 3D                LDY #$3D
246E   20 D2 4D             JSR $4DD2
2471   A9 0A                LDA #$0A
2473   85 54                STA $54
2475   20 E5 2F             JSR L2FE5
2478   E6 8F                INC $8F
247A   4C F4 62             JMP $62F4
247D   20 1D 3D             JSR L3D1D
2480   18                   CLC
2481   69 04                ADC #$04
2483   85 04                STA $04
2485   20 8A 6C             JSR $6C8A
2488   18                   CLC
2489   98                   TYA
248A   65 04                ADC $04
248C   85 04                STA $04
248E   8A                   TXA
248F   69 00                ADC #$00
2491   85 05                STA $05
2493   A6 99                LDX $99
2495   A4 98                LDY $98
2497   20 27 60             JSR $6027
249A   A5 96                LDA $96
249C   20 2D 60             JSR $602D
249F   A5 97                LDA $97
24A1   20 2D 60             JSR $602D
24A4   A6 05                LDX $05
24A6   A4 04                LDY $04
24A8   4C 9B 60             JMP $609B
24AB   C8                   INY
24AC   D0 01                BNE L24AF
24AE   E8                   INX
24AF   A5 8D      L24AF     LDA $8D
24B1   C9 07                CMP #$07
24B3   D0 03                BNE L24B8
24B5   4C E6 97             JMP $97E6
24B8   86 91      L24B8     STX $91
24BA   84 90                STY $90
24BC   A9 03                LDA #$03
24BE   85 8D                STA $8D
24C0   20 0E 65             JSR $650E
24C3   A9 00                LDA #$00
24C5   A2 C3                LDX #$C3
24C7   A0 D5                LDY #$D5
24C9   20 BE A1             JSR $A1BE
24CC   A9 09                LDA #$09
24CE   85 10                STA $10
24D0   A9 13                LDA #$13
24D2   85 0F                STA $0F
24D4   20 39 6E             JSR $6E39
24D7   AA                   TAX
24D8   AD E0 08             LDA $08E0
24DB   C9 8E                CMP #$8E
24DD   D0 05                BNE L24E4
24DF   AD E1 08             LDA $08E1
24E2   C9 00                CMP #$00
24E4   D0 1D      L24E4     BNE L2503
24E6   A9 20                LDA #$20
24E8   9D 11 09             STA $0911,X
24EB   A5 0F                LDA $0F
24ED   D0 02                BNE L24F1
24EF   C6 10                DEC $10
24F1   C6 0F      L24F1     DEC $0F
24F3   A5 97                LDA $97
24F5   1A                   ???                ;00011010
24F6   20 40 6D             JSR $6D40
24F9   20 39 6E             JSR $6E39
24FC   A2 97                LDX #$97
24FE   A0 E7                LDY #$E7
2500   20 39 6E             JSR $6E39
2503   A0 10      L2503     LDY #$10
2505   20 E4 2D             JSR L2DE4
2508   A9 00                LDA #$00
250A   09 00                ORA #$00
250C   09 00                ORA #$00
250E   F0 09                BEQ L2519
2510   A9 00                LDA #$00
2512   A2 00                LDX #$00
2514   A0 00                LDY #$00
2516   20 FC A1             JSR $A1FC
2519   A9 0C      L2519     LDA #$0C
251B   20 6E 29             JSR L296E
251E   20 BE 2F             JSR L2FBE
2521   A2 09                LDX #$09
2523   A0 13                LDY #$13
2525   20 9E 32             JSR L329E
2528   A9 01                LDA #$01
252A   8D D3 06             STA L06D3
252D   9C                   ???                ;10011100
252E   D0 06                BNE L2536
2530   9C                   ???                ;10011100
2531   D1 06                CMP ($06),Y
2533   A9 00                LDA #$00
2535   8D CF 06             STA $06CF
2538   A9 CF                LDA #$CF
253A   8D CE 06             STA $06CE
253D   A9 78                LDA #$78
253F   8D CD 06             STA $06CD
2542   A2 00                LDX #$00
2544   A0 11                LDY #$11
2546   60                   RTS
2547   3A                   ???                ;00111010 ':'
2548   20 00 A6             JSR $A600
254B   8D E0 07             STA $07E0
254E   F0 0D                BEQ L255D
2550   C9 3F                CMP #$3F
2552   F0 0C                BEQ L2560
2554   C9 0A                CMP #$0A
2556   D0 05                BNE L255D
2558   AD 8D 06             LDA $068D
255B   F0 03                BEQ L2560
255D   4C FB 62   L255D     JMP $62FB
2560   20 AF 3C   L2560     JSR L3CAF
2563   64                   ???                ;01100100 'd'
2564   96 A9                STX $A9,Y
2566   07                   ???                ;00000111
2567   85 8D                STA $8D
2569   4C F4 62             JMP $62F4
256C   20 1A 68             JSR $681A
256F   AD 89 02             LDA $0289
2572   0D 8A 02             ORA $028A
2575   F0 1D                BEQ L2594
2577   20 BE 6C             JSR $6CBE
257A   20 A8 5F             JSR $5FA8
257D   86 99                STX $99
257F   84 98                STY $98
2581   20 B2 5F             JSR $5FB2
2584   85 96                STA $96
2586   20 B2 5F             JSR $5FB2
2589   85 97                STA $97
258B   9C                   ???                ;10011100
258C   89                   ???                ;10001001
258D   02                   ???                ;00000010
258E   9C                   ???                ;10011100
258F   8A                   TXA
2590   02                   ???                ;00000010
2591   4C F4 62             JMP $62F4
2594   64         L2594     ???                ;01100100 'd'
2595   96 AD                STX $AD,Y
2597   E0 08                CPX #$08
2599   C9 00                CMP #$00
259B   D0 05                BNE L25A2
259D   AD E1 08             LDA $08E1
25A0   C9 00                CMP #$00
25A2   D0 02      L25A2     BNE L25A6
25A4   64                   ???                ;01100100 'd'
25A5   93                   ???                ;10010011
25A6   4C FB 62   L25A6     JMP $62FB
25A9   86 07                STX $07
25AB   84 06                STY $06
25AD   A0 FF                LDY #$FF
25AF   C8         L25AF     INY
25B0   B1 06                LDA ($06),Y
25B2   AA                   TAX
25B3   BD D0 20             LDA $20D0,X
25B6   D9 62 09             CMP $0962,Y
25B9   D0 04                BNE L25BF
25BB   8A                   TXA
25BC   D0 F1                BNE L25AF
25BE   60                   RTS
25BF   18         L25BF     CLC
25C0   60                   RTS
25C1   AA                   TAX
25C2   BD 00 20             LDA $2000,X
25C5   29 20                AND #$20
25C7   C9 20                CMP #$20
25C9   F0 0B                BEQ L25D6
25CB   AD 85 02             LDA $0285
25CE   20 71 4E             JSR $4E71
25D1   AA                   TAX
25D2   BD 58 23             LDA $2358,X
25D5   4A                   LSR A
25D6   60         L25D6     RTS
25D7   86 07                STX $07
25D9   84 06                STY $06
25DB   A0 00                LDY #$00
25DD   B1 06      L25DD     LDA ($06),Y
25DF   F0 1A                BEQ L25FB
25E1   99 53 09             STA $0953,Y
25E4   AA                   TAX
25E5   BD D0 20             LDA $20D0,X
25E8   99 62 09             STA $0962,Y
25EB   C8                   INY
25EC   C4 8B                CPY $8B
25EE   90 ED                BCC L25DD
25F0   A9 00                LDA #$00
25F2   A2 C5                LDX #$C5
25F4   A0 DE                LDY #$DE
25F6   20 B8 A1             JSR $A1B8
25F9   18                   CLC
25FA   60                   RTS
25FB   84 89      L25FB     STY $89
25FD   99 53 09             STA $0953,Y
2600   99 62 09             STA $0962,Y
2603   98                   TYA
2604   D0 08                BNE L260E
2606   A9 00                LDA #$00
2608   A2 C3                LDX #$C3
260A   A0 F9                LDY #$F9
260C   80                   ???                ;10000000
260D   E8                   INX
260E   C4 8C      L260E     CPY $8C
2610   B0 08                BCS L261A
2612   A9 00                LDA #$00
2614   A2 C5                LDX #$C5
2616   A0 F0                LDY #$F0
2618   80                   ???                ;10000000
2619   DC                   ???                ;11011100
261A   A2 09      L261A     LDX #$09
261C   A0 53                LDY #$53
261E   20 B7 66             JSR $66B7
2621   85 88                STA $88
2623   86 87                STX $87
2625   84 86                STY $86
2627   AD E0 08             LDA $08E0
262A   C9 00                CMP #$00
262C   D0 07                BNE L2635
262E   AD E1 08             LDA $08E1
2631   C9 00                CMP #$00
2633   F0 23                BEQ L2658
2635   A5 86      L2635     LDA $86
2637   05 87                ORA $87
2639   05 88                ORA $88
263B   F0 13                BEQ L2650
263D   A9 09                LDA #$09
263F   85 10                STA $10
2641   A9 53                LDA #$53
2643   85 0F                STA $0F
2645   A5 88                LDA $88
2647   A6 87                LDX $87
2649   A4 86                LDY $86
264B   20 FA 98             JSR $98FA
264E   B0 08                BCS L2658
2650   A9 00      L2650     LDA #$00
2652   A2 C4                LDX #$C4
2654   A0 E9                LDY #$E9
2656   80                   ???                ;10000000
2657   9E                   ???                ;10011110
2658   38         L2658     SEC
2659   60                   RTS
265A   85 04                STA $04
265C   86 03                STX $03
265E   84 02                STY $02
2660   20 26 40             JSR L4026
2663   B2                   ???                ;10110010
2664   0F                   ???                ;00001111
2665   20 61 98             JSR $9861
2668   90 20                BCC L268A
266A   A0 00                LDY #$00
266C   B1 0F      L266C     LDA ($0F),Y
266E   F0 1B                BEQ L268B
2670   AA                   TAX
2671   BD 00 20             LDA $2000,X
2674   29 20                AND #$20
2676   D0 03                BNE L267B
2678   98                   TYA
2679   D0 0E                BNE L2689
267B   B1 0F      L267B     LDA ($0F),Y
267D   AA                   TAX
267E   BD D0 20             LDA $20D0,X
2681   99 62 09             STA $0962,Y
2684   C8                   INY
2685   C4 8B                CPY $8B
2687   90 E3                BCC L266C
2689   18         L2689     CLC
268A   60         L268A     RTS
268B   99 62 09   L268B     STA $0962,Y
268E   C4 8C                CPY $8C
2690   90 F7                BCC L2689
2692   85 0F                STA $0F
2694   A5 04                LDA $04
2696   A6 03                LDX $03
2698   A4 02                LDY $02
269A   20 5A 3D             JSR L3D5A
269D   B0 EA                BCS L2689
269F   38                   SEC
26A0   60                   RTS
26A1   AD 7B 03             LDA $037B
26A4   C9 04                CMP #$04
26A6   B0 03                BCS L26AB
26A8   EE 7B 03             INC $037B
26AB   60         L26AB     RTS
26AC   9C                   ???                ;10011100
26AD   79 03 A9             ADC $A903,Y
26B0   01 8D                ORA ($8D,X)
26B2   78                   SEI
26B3   03                   ???                ;00000011
26B4   9C                   ???                ;10011100
26B5   7B                   ???                ;01111011 '{'
26B6   03                   ???                ;00000011
26B7   9C                   ???                ;10011100
26B8   7A                   ???                ;01111010 'z'
26B9   03                   ???                ;00000011
26BA   AD 0B 22             LDA $220B
26BD   8D 7C 03             STA $037C
26C0   60         L26C0     RTS
26C1   AD 89 02             LDA $0289
26C4   F0 03                BEQ L26C9
26C6   4C F4 62             JMP $62F4
26C9   A9 05      L26C9     LDA #$05
26CB   85 8D                STA $8D
26CD   64                   ???                ;01100100 'd'
26CE   8F                   ???                ;10001111
26CF   64                   ???                ;01100100 'd'
26D0   99 A9 04             STA $04A9,Y
26D3   85 98                STA $98
26D5   64                   ???                ;01100100 'd'
26D6   9A         L26D6     TXS
26D7   38                   SEC
26D8   A9 09                LDA #$09
26DA   ED 7B 03             SBC $037B
26DD   85 96                STA $96
26DF   38                   SEC
26E0   A9 09                LDA #$09
26E2   E5 96                SBC $96
26E4   85 97                STA $97
26E6   A2 00                LDX #$00
26E8   A9 3F                LDA #$3F
26EA   9D 13 11   L26EA     STA $1113,X
26ED   E8                   INX
26EE   E4 89                CPX $89
26F0   90 F8                BCC L26EA
26F2   9E                   ???                ;10011110
26F3   13                   ???                ;00010011
26F4   11 A2                ORA ($A2),Y
26F6   00                   BRK
26F7   A9 23                LDA #$23
26F9   9D 22 11   L26F9     STA $1122,X
26FC   E8                   INX
26FD   E4 96                CPX $96
26FF   90 F8                BCC L26F9
2701   9E                   ???                ;10011110
2702   22                   ???                ;00100010 '"'
2703   11 20                ORA ($20),Y
2705   9A                   TXS
2706   29 4C                AND #$4C
2708   FB                   ???                ;11111011
2709   62                   ???                ;01100010 'b'
270A   48                   PHA
270B   20 BE 2F             JSR L2FBE
270E   A9 03                LDA #$03
2710   20 B7 39             JSR L39B7
2713   A2 11                LDX #$11
2715   A0 13                LDY #$13
2717   20 79 31             JSR L3179
271A   A9 0A                LDA #$0A
271C   E5 97                SBC $97
271E   B0 02                BCS L2722
2720   A9 00                LDA #$00
2722   48         L2722     PHA
2723   A0 08                LDY #$08
2725   20 E4 2D             JSR L2DE4
2728   A2 11                LDX #$11
272A   A0 22                LDY #$22
272C   20 79 31             JSR L3179
272F   7A                   ???                ;01111010 'z'
2730   A2 00                LDX #$00
2732   A9 03                LDA #$03
2734   20 45 6D             JSR $6D45
2737   20 79 31             JSR L3179
273A   A9 01                LDA #$01
273C   20 C0 39             JSR L39C0
273F   A0 10                LDY #$10
2741   20 E4 2D             JSR L2DE4
2744   A9 00                LDA #$00
2746   A2 C4                LDX #$C4
2748   A0 FE                LDY #$FE
274A   20 F0 A1             JSR $A1F0
274D   38                   SEC
274E   A5 3F                LDA $3F
2750   E9 03                SBC #$03
2752   A8                   TAY
2753   A5 40                LDA $40
2755   E9 00                SBC #$00
2757   AA                   TAX
2758   64                   ???                ;01100100 'd'
2759   0F                   ???                ;00001111
275A   64                   ???                ;01100100 'd'
275B   10 20                BPL L277D
275D   04                   ???                ;00000100
275E   2E A2 00             ROL $00A2
2761   A0 03                LDY #$03
2763   A5 42                LDA $42
2765   85 10                STA $10
2767   A5 41                LDA $41
2769   85 0F                STA $0F
276B   A9 01                LDA #$01
276D   20 58 2E             JSR L2E58
2770   38                   SEC
2771   A5 3F                LDA $3F
2773   E9 0D                SBC #$0D
2775   A8                   TAY
2776   A5 40                LDA $40
2778   E9 00                SBC #$00
277A   AA                   TAX
277B   64                   ???                ;01100100 'd'
277C   0F                   ???                ;00001111
277D   64         L277D     ???                ;01100100 'd'
277E   10 20                BPL L27A0
2780   04                   ???                ;00000100
2781   2E A2 0A             ROL $0AA2
2784   A0 02                LDY #$02
2786   A9 01                LDA #$01
2788   20 50 2E             JSR L2E50
278B   38                   SEC
278C   A5 3F                LDA $3F
278E   E9 0C                SBC #$0C
2790   A8                   TAY
2791   A5 40                LDA $40
2793   E9 00                SBC #$00
2795   AA                   TAX
2796   64                   ???                ;01100100 'd'
2797   10 A9                BPL L2742
2799   02                   ???                ;00000010
279A   85 0F                STA $0F
279C   20 04 2E             JSR L2E04
279F   A5 97                LDA $97
27A1   C9 09                CMP #$09
27A3   B0 08                BCS L27AD
27A5   64                   ???                ;01100100 'd'
27A6   10 A9                BPL L2751
27A8   02                   ???                ;00000010
27A9   85 0F                STA $0F
27AB   80                   ???                ;10000000
27AC   08                   PHP
27AD   A5 99      L27AD     LDA $99
27AF   85 10                STA $10
27B1   A5 98                LDA $98
27B3   85 0F                STA $0F
27B5   A2 00                LDX #$00
27B7   A0 00                LDY #$00
27B9   A9 01                LDA #$01
27BB   20 F9 2B             JSR L2BF9
27BE   64                   ???                ;01100100 'd'
27BF   34                   ???                ;00110100 '4'
27C0   A9 06                LDA #$06
27C2   20 76 3A             JSR L3A76
27C5   18                   CLC
27C6   A5 97                LDA $97
27C8   69 30                ADC #$30
27CA   A6 8D                LDX $8D
27CC   E0 05                CPX #$05
27CE   D0 08                BNE L27D8
27D0   FA                   ???                ;11111010
27D1   DA                   ???                ;11011010
27D2   F0 21                BEQ L27F5
27D4   A9 3A                LDA #$3A
27D6   80                   ???                ;10000000
27D7   1D E0 06             ORA $06E0,X
27DA   D0 0A                BNE L27E6
27DC   A6 98                LDX $98
27DE   E0 1E                CPX #$1E
27E0   90 13                BCC L27F5
27E2   A2 07      L27E2     LDX #$07
27E4   86 8D                STX $8D
27E6   E0 07      L27E6     CPX #$07
27E8   D0 0B                BNE L27F5
27EA   A9 3B                LDA #$3B
27EC   A6 97                LDX $97
27EE   E0 09                CPX #$09
27F0   B0 01                BCS L27F3
27F2   1A                   ???                ;00011010
27F3   64         L27F3     ???                ;01100100 'd'
27F4   9A                   TXS
27F5   48         L27F5     PHA
27F6   38                   SEC
27F7   A5 3F                LDA $3F
27F9   E9 0F                SBC #$0F
27FB   A8                   TAY
27FC   A5 40                LDA $40
27FE   E9 00                SBC #$00
2800   AA                   TAX
2801   A5 99                LDA $99
2803   85 10                STA $10
2805   A5 98                LDA $98
2807   85 0F                STA $0F
2809   20 04 2E             JSR L2E04
280C   68                   PLA
280D   20 6E 29             JSR L296E
2810   A5 9A                LDA $9A
2812   F0 27                BEQ L283B
2814   A2 00                LDX #$00
2816   A0 F4                LDY #$F4
2818   A5 98                LDA $98
281A   00                   BRK
281B   00                   BRK
281C   67                   ???                ;01100111 'g'
281D   94 20                STY $20,X
281F   D2                   ???                ;11010010
2820   4D 18 A5             EOR $A518
2823   53                   ???                ;01010011 'S'
2824   65 98                ADC $98
2826   A8                   TAY
2827   A5 99                LDA $99
2829   69 00                ADC #$00
282B   AA                   TAX
282C   C4 41                CPY $41
282E   8A                   TXA
282F   E5 42                SBC $42
2831   B0 AF                BCS L27E2
2833   E6 98                INC $98
2835   D0 02                BNE L2839
2837   E6 99                INC $99
2839   80         L2839     ???                ;10000000
283A   8A                   TXA
283B   68         L283B     PLA
283C   A9 03                LDA #$03
283E   4C B7 39             JMP L39B7
2841   A5 9A                LDA $9A
2843   20 AA 99             JSR $99AA
2846   A5 8D                LDA $8D
2848   C9 07                CMP #$07
284A   D0 41                BNE L288D
284C   64                   ???                ;01100100 'd'
284D   34                   ???                ;00110100 '4'
284E   38                   SEC
284F   A5 3F                LDA $3F
2851   E9 0F                SBC #$0F
2853   85 43                STA $43
2855   A0 10                LDY #$10
2857   20 E4 2D             JSR L2DE4
285A   A5 41                LDA $41
285C   C9 20                CMP #$20
285E   A5 42                LDA $42
2860   E9 00                SBC #$00
2862   90 1B                BCC L287F
2864   A9 00                LDA #$00
2866   09 00                ORA #$00
2868   09 00                ORA #$00
286A   F0 13                BEQ L287F
286C   A9 00                LDA #$00
286E   A2 00                LDX #$00
2870   A0 00                LDY #$00
2872   20 F0 A1             JSR $A1F0
2875   A9 09                LDA #$09
2877   20 6E 29             JSR L296E
287A   A0 18                LDY #$18
287C   20 E4 2D             JSR L2DE4
287F   A9 00      L287F     LDA #$00
2881   A2 C5                LDX #$C5
2883   A0 77                LDY #$77
2885   20 F0 A1             JSR $A1F0
2888   A9 09                LDA #$09
288A   20 6E 29             JSR L296E
288D   4C FB 62   L288D     JMP $62FB
2890   AA                   TAX
2891   A5 8D                LDA $8D
2893   C9 07                CMP #$07
2895   F0 07                BEQ L289E
2897   BD 00 20             LDA $2000,X
289A   29 20                AND #$20
289C   D0 03                BNE L28A1
289E   4C FB 62   L289E     JMP $62FB
28A1   BD D0 20   L28A1     LDA $20D0,X
28A4   85 54                STA $54
28A6   A2 00                LDX #$00
28A8   BC 13 11   L28A8     LDY $1113,X
28AB   D9 D0 20             CMP $20D0,Y
28AE   F0 0E                BEQ L28BE
28B0   E8                   INX
28B1   E4 89                CPX $89
28B3   90 F3                BCC L28A8
28B5   A2 11                LDX #$11
28B7   A0 22                LDY #$22
28B9   20 77 6E             JSR $6E77
28BC   90 0C                BCC L28CA
28BE   A9 00      L28BE     LDA #$00
28C0   A2 C4                LDX #$C4
28C2   A0 6F                LDY #$6F
28C4   20 B8 A1             JSR $A1B8
28C7   4C F4 62   L28C7     JMP $62F4
28CA   A5 54      L28CA     LDA $54
28CC   A2 09                LDX #$09
28CE   A0 62                LDY #$62
28D0   20 77 6E             JSR $6E77
28D3   B0 23                BCS L28F8
28D5   A5 97                LDA $97
28D7   65 96                ADC $96
28D9   E9 08                SBC #$08
28DB   AA                   TAX
28DC   A5 54                LDA $54
28DE   9D 22 11             STA $1122,X
28E1   E6 97                INC $97
28E3   A5 97                LDA $97
28E5   C9 09                CMP #$09
28E7   90 DE                BCC L28C7
28E9   A9 00      L28E9     LDA #$00
28EB   20 AA 99             JSR $99AA
28EE   20 B4 3C             JSR L3CB4
28F1   A9 3F                LDA #$3F
28F3   20 50 4E             JSR $4E50
28F6   80                   ???                ;10000000
28F7   CF                   ???                ;11001111
28F8   98         L28F8     TYA
28F9   E9 62                SBC #$62
28FB   A8                   TAY
28FC   B9 53 09             LDA $0953,Y
28FF   99 13 11             STA $1113,Y
2902   A4 0F                LDY $0F
2904   C8                   INY
2905   D0 01                BNE L2908
2907   E8                   INX
2908   A5 54      L2908     LDA $54
290A   20 77 6E             JSR $6E77
290D   B0 E9                BCS L28F8
290F   A9 3F                LDA #$3F
2911   A2 11                LDX #$11
2913   A0 13                LDY #$13
2915   20 77 6E             JSR $6E77
2918   B0 AD                BCS L28C7
291A   A9 00                LDA #$00
291C   20 AA 99             JSR $99AA
291F   A5 8F                LDA $8F
2921   F0 0D                BEQ L2930
2923   A9 09                LDA #$09
2925   85 97                STA $97
2927   A9 06                LDA #$06
2929   85 8D                STA $8D
292B   20 AF 3C             JSR L3CAF
292E   80                   ???                ;10000000
292F   03                   ???                ;00000011
2930   20 06 41   L2930     JSR L4106
2933   E6 9A                INC $9A
2935   80                   ???                ;10000000
2936   90 C9                BCC L2901
2938   2A                   ROL A
2939   D0 06                BNE L2941
293B   A5 8D                LDA $8D
293D   C9 07                CMP #$07
293F   D0 03                BNE L2944
2941   4C FB 62   L2941     JMP $62FB
2944   A5 89      L2944     LDA $89
2946   20 3B 61             JSR $613B
2949   AA                   TAX
294A   BD 13 11             LDA $1113,X
294D   C9 3F                CMP #$3F
294F   D0 F3                BNE L2944
2951   BD 62 09             LDA $0962,X
2954   20 50 4E             JSR $4E50
2957   E6 8F                INC $8F
2959   4C F4 62             JMP $62F4
295C   20 1D 3D             JSR L3D1D
295F   85 04                STA $04
2961   A2 11                LDX #$11
2963   A0 13                LDY #$13
2965   20 CC 60             JSR $60CC
2968   18                   CLC
2969   65 04                ADC $04
296B   85 04                STA $04
296D   A2 11                LDX #$11
296F   A0 22                LDY #$22
2971   20 CC 60             JSR $60CC
2974   18                   CLC
2975   65 04                ADC $04
2977   69 04                ADC #$04
2979   48                   PHA
297A   A6 99                LDX $99
297C   A4 98                LDY $98
297E   20 27 60             JSR $6027
2981   A5 97                LDA $97
2983   20 2D 60             JSR $602D
2986   A5 9A                LDA $9A
2988   20 2D 60             JSR $602D
298B   68                   PLA
298C   4C 98 60             JMP $6098
298F   C9 3F                CMP #$3F
2991   D0 06                BNE L2999
2993   A5 8D                LDA $8D
2995   C9 07                CMP #$07
2997   D0 03                BNE L299C
2999   4C FB 62   L2999     JMP $62FB
299C   A2 09      L299C     LDX #$09
299E   A0 53                LDY #$53
29A0   A9 11                LDA #$11
29A2   85 10                STA $10
29A4   A9 13                LDA #$13
29A6   85 0F                STA $0F
29A8   20 39 6E             JSR $6E39
29AB   A9 09                LDA #$09
29AD   85 97                STA $97
29AF   A9 06                LDA #$06
29B1   85 8D                STA $8D
29B3   E6 9A                INC $9A
29B5   20 AF 3C             JSR L3CAF
29B8   4C F4 62             JMP $62F4
29BB   AD 89 02             LDA $0289
29BE   F0 2D                BEQ L29ED
29C0   A2 11                LDX #$11
29C2   A0 13                LDY #$13
29C4   20 FE 5F             JSR $5FFE
29C7   A2 11                LDX #$11
29C9   A0 22                LDY #$22
29CB   20 FE 5F             JSR $5FFE
29CE   85 96                STA $96
29D0   20 A8 5F             JSR $5FA8
29D3   86 99                STX $99
29D5   84 98                STY $98
29D7   20 B2 5F             JSR $5FB2
29DA   85 97                STA $97
29DC   20 B2 5F             JSR $5FB2
29DF   85 9A                STA $9A
29E1   20 9A 29             JSR L299A
29E4   9C                   ???                ;10011100
29E5   89                   ???                ;10001001
29E6   02                   ???                ;00000010
29E7   9C                   ???                ;10011100
29E8   8A                   TXA
29E9   02                   ???                ;00000010
29EA   4C F4 62             JMP $62F4
29ED   4C FB 62   L29ED     JMP $62FB
29F0   0A                   ASL A
29F1   AA                   TAX
29F2   7C                   ???                ;01111100 '|'
29F3   07                   ???                ;00000111
29F4   9D A2 00             STA $00A2,X
29F7   A0 01                LDY #$01
29F9   80                   ???                ;10000000
29FA   04                   ???                ;00000100
29FB   A6 84                LDX $84
29FD   A4 83                LDY $83
29FF   86 82                STX $82
2A01   84 81                STY $81
2A03   C0 00                CPY #$00
2A05   D0 01                BNE L2A08
2A07   CA                   DEX
2A08   88         L2A08     DEY
2A09   86 80                STX $80
2A0B   84 7F      L2A0B     STY $7F
2A0D   4C 25 9D             JMP $9D25
2A10   A5 7F                LDA $7F
2A12   05 80                ORA $80
2A14   F0 2B                BEQ L2A41
2A16   A6 80                LDX $80
2A18   A4 7F                LDY $7F
2A1A   80                   ???                ;10000000
2A1B   E7                   ???                ;11100111
2A1C   A6 82                LDX $82
2A1E   A4 81                LDY $81
2A20   C4 83                CPY $83
2A22   8A                   TXA
2A23   E5 84                SBC $84
2A25   B0 1A                BCS L2A41
2A27   E6 81                INC $81
2A29   D0 02                BNE L2A2D
2A2B   E6 82                INC $82
2A2D   4C 25 9D   L2A2D     JMP $9D25
2A30   A5 7F                LDA $7F
2A32   05 80                ORA $80
2A34   C9 01                CMP #$01
2A36   60                   RTS
2A37   A5 81                LDA $81
2A39   C5 83                CMP $83
2A3B   A5 82                LDA $82
2A3D   E5 84                SBC $84
2A3F   90 0E                BCC L2A4F
2A41   18         L2A41     CLC
2A42   60                   RTS
2A43   A5 0F                LDA $0F
2A45   65 7F                ADC $7F
2A47   85 7F                STA $7F
2A49   A5 10                LDA $10
2A4B   65 80                ADC $80
2A4D   85 80                STA $80
2A4F   38         L2A4F     SEC
2A50   60                   RTS
2A51   38                   SEC
2A52   A5 81                LDA $81
2A54   E5 0F                SBC $0F
2A56   85 81                STA $81
2A58   A5 82                LDA $82
2A5A   E5 10                SBC $10
2A5C   85 82                STA $82
2A5E   60                   RTS
2A5F   A6 10                LDX $10
2A61   A4 0F                LDY $0F
2A63   C8                   INY
2A64   D0 01                BNE L2A67
2A66   E8                   INX
2A67   80         L2A67     ???                ;10000000
2A68   96 95                STX $95,Y
2A6A   9C                   ???                ;10011100
2A6B   9B                   ???                ;10011011
2A6C   9C                   ???                ;10011100
2A6D   B0 9C                BCS L2A0B
2A6F   BC 9C E1             LDY $E19C,X
2A72   9C                   ???                ;10011100
2A73   E1 9C                SBC ($9C,X)
2A75   FF                   ???                ;11111111
2A76   9C                   ???                ;10011100
2A77   D0 9C                BNE L2A15
2A79   D7                   ???                ;11010111
2A7A   9C                   ???                ;10011100
2A7B   E1 9C                SBC ($9C,X)
2A7D   E1 9C                SBC ($9C,X)
2A7F   E1 9C                SBC ($9C,X)
2A81   E3                   ???                ;11100011
2A82   9C                   ???                ;10011100
2A83   F1 9C                SBC ($9C),Y
2A85   DA                   ???                ;11011010
2A86   5A                   ???                ;01011010 'Z'
2A87   64                   ???                ;01100100 'd'
2A88   85 A2                STA $A2
2A8A   52                   ???                ;01010010 'R'
2A8B   A0 4E                LDY #$4E
2A8D   A5 40                LDA $40
2A8F   85 10                STA $10
2A91   A5 3F                LDA $3F
2A93   85 0F                STA $0F
2A95   20 28 36             JSR L3628
2A98   A5 7E                LDA $7E
2A9A   8D D5 FF             STA $FFD5
2A9D   A5 7D                LDA $7D
2A9F   8D D4 FF             STA $FFD4
2AA2   A5 7C                LDA $7C
2AA4   8D D3 FF             STA $FFD3
2AA7   7A                   ???                ;01111010 'z'
2AA8   FA                   ???                ;11111010
2AA9   C0 00                CPY #$00
2AAB   D0 01                BNE L2AAE
2AAD   CA                   DEX
2AAE   88         L2AAE     DEY
2AAF   8A                   TXA
2AB0   30 0D                BMI L2ABF
2AB2   AD D1 FF   L2AB2     LDA $FFD1
2AB5   F0 06                BEQ L2ABD
2AB7   C9 0A                CMP #$0A
2AB9   D0 F7                BNE L2AB2
2ABB   80                   ???                ;10000000
2ABC   EC 18 60             CPX $6018
2ABF   AD D1 FF   L2ABF     LDA $FFD1
2AC2   20 E9 9E             JSR $9EE9
2AC5   B0 F8                BCS L2ABF
2AC7   AD D1 FF             LDA $FFD1
2ACA   D0 05                BNE L2AD1
2ACC   A9 0C                LDA #$0C
2ACE   20 15 34             JSR L3415
2AD1   20 8B 35   L2AD1     JSR L358B
2AD4   38                   SEC
2AD5   60                   RTS
2AD6   C9 0F                CMP #$0F
2AD8   D0 19                BNE L2AF3
2ADA   AD E0 08             LDA $08E0
2ADD   C9 1B                CMP #$1B
2ADF   D0 05                BNE L2AE6
2AE1   AD E1 08             LDA $08E1
2AE4   C9 00                CMP #$00
2AE6   D0 03      L2AE6     BNE L2AEB
2AE8   4C 1A 65             JMP $651A
2AEB   20 0E 65   L2AEB     JSR $650E
2AEE   A2 00                LDX #$00
2AF0   A0 1B                LDY #$1B
2AF2   60                   RTS
2AF3   4C FB 62   L2AF3     JMP $62FB
2AF6   DA                   ???                ;11011010
2AF7   5A                   ???                ;01011010 'Z'
2AF8   A2 9D                LDX #$9D
2AFA   A0 AE                LDY #$AE
2AFC   20 5B 34             JSR L345B
2AFF   7A                   ???                ;01111010 'z'
2B00   FA                   ???                ;11111010
2B01   20 5B 34             JSR L345B
2B04   A9 5D                LDA #$5D
2B06   20 15 34             JSR L3415
2B09   A9 0E                LDA #$0E
2B0B   4C 15 34             JMP L3415
2B0E   1E 43 5B             ASL $5B43,X
2B11   00                   BRK
2B12   86 0E                STX $0E
2B14   84 0D                STY $0D
2B16   A9 00                LDA #$00
2B18   8D D0 FF             STA $FFD0
2B1B   A9 CF                LDA #$CF
2B1D   8D CF FF             STA $FFCF
2B20   A9 80                LDA #$80
2B22   8D CE FF             STA $FFCE
2B25   AD CD FF   L2B25     LDA $FFCD
2B28   F0 32                BEQ L2B5C
2B2A   A0 FF                LDY #$FF
2B2C   C8         L2B2C     INY
2B2D   AD CC FF             LDA $FFCC
2B30   D1 0D                CMP ($0D),Y
2B32   F0 09                BEQ L2B3D
2B34   AC CC FF             LDY $FFCC
2B37   AA                   TAX
2B38   F0 EB                BEQ L2B25
2B3A   98                   TYA
2B3B   80                   ???                ;10000000
2B3C   F7                   ???                ;11110111
2B3D   AA         L2B3D     TAX
2B3E   D0 EC                BNE L2B2C
2B40   AD CC FF             LDA $FFCC
2B43   20 AC 7A             JSR $7AAC
2B46   48                   PHA
2B47   8A                   TXA
2B48   F0 0A                BEQ L2B54
2B4A   18                   CLC
2B4B   69 8D                ADC #$8D
2B4D   20 F5 9D             JSR $9DF5
2B50   86 0E                STX $0E
2B52   84 0D                STY $0D
2B54   68         L2B54     PLA
2B55   A6 0E                LDX $0E
2B57   A4 0D                LDY $0D
2B59   20 AF 7A             JSR $7AAF
2B5C   A6 0E      L2B5C     LDX $0E
2B5E   A4 0D                LDY $0D
2B60   DA                   ???                ;11011010
2B61   5A                   ???                ;01011010 'Z'
2B62   20 96 9D             JSR $9D96
2B65   7A                   ???                ;01111010 'z'
2B66   FA                   ???                ;11111010
2B67   60                   RTS
2B68   AD 89 02             LDA $0289
2B6B   F0 1E                BEQ L2B8B
2B6D   20 62 57             JSR $5762
2B70   20 9D 5F             JSR $5F9D
2B73   8D E4 08             STA $08E4
2B76   8E E3 08             STX $08E3
2B79   8C E2 08             STY $08E2
2B7C   20 A8 5F             JSR $5FA8
2B7F   8E 7F 03             STX $037F
2B82   8C 7E 03             STY $037E
2B85   9C                   ???                ;10011100
2B86   89                   ???                ;10001001
2B87   02                   ???                ;00000010
2B88   9C                   ???                ;10011100
2B89   8A                   TXA
2B8A   02                   ???                ;00000010
2B8B   AD E4 08   L2B8B     LDA $08E4
2B8E   AE E3 08             LDX $08E3
2B91   AC E2 08             LDY $08E2
2B94   20 95 9E             JSR $9E95
2B97   B0 13                BCS L2BAC
2B99   AD 84 02             LDA $0284
2B9C   85 0F                STA $0F
2B9E   AD E4 08             LDA $08E4
2BA1   AE E3 08             LDX $08E3
2BA4   AC E2 08             LDY $08E2
2BA7   20 36 9F             JSR $9F36
2BAA   90 2B                BCC L2BD7
2BAC   85 7E      L2BAC     STA $7E
2BAE   86 7D                STX $7D
2BB0   84 7C                STY $7C
2BB2   8D D0 FF             STA $FFD0
2BB5   8E CF FF             STX $FFCF
2BB8   8C CE FF             STY $FFCE
2BBB   A2 00                LDX #$00
2BBD   A0 00                LDY #$00
2BBF   AD CC FF   L2BBF     LDA $FFCC
2BC2   F0 0A                BEQ L2BCE
2BC4   C9 0A                CMP #$0A
2BC6   D0 F7                BNE L2BBF
2BC8   C8                   INY
2BC9   D0 F4                BNE L2BBF
2BCB   E8                   INX
2BCC   80                   ???                ;10000000
2BCD   F1 86                SBC ($86),Y
2BCF   84 84                STY $84
2BD1   83                   ???                ;10000011
2BD2   8A                   TXA
2BD3   05 83                ORA $83
2BD5   D0 0C                BNE L2BE3
2BD7   A9 00      L2BD7     LDA #$00
2BD9   A2 C4                LDX #$C4
2BDB   A0 D6                LDY #$D6
2BDD   20 B8 A1             JSR $A1B8
2BE0   4C 1A 65             JMP $651A
2BE3   A9 00      L2BE3     LDA #$00
2BE5   85 69                STA L0069
2BE7   A9 9C                LDA #$9C
2BE9   85 68                STA $68
2BEB   A9 90                LDA #$90
2BED   85 67                STA $67
2BEF   20 8B 35             JSR L358B
2BF2   4C F4 62             JMP $62F4
2BF5   8D D0 FF             STA $FFD0
2BF8   8E CF FF             STX $FFCF
2BFB   8C CE FF             STY $FFCE
2BFE   A9 00                LDA #$00
2C00   8D D5 FF             STA $FFD5
2C03   A9 C9                LDA #$C9
2C05   8D D4 FF             STA $FFD4
2C08   A9 F5                LDA #$F5
2C0A   8D D3 FF             STA $FFD3
2C0D   AD CC FF   L2C0D     LDA $FFCC
2C10   CD D1 FF             CMP $FFD1
2C13   D0 2E                BNE L2C43
2C15   AA                   TAX
2C16   D0 F5                BNE L2C0D
2C18   AE 7F 03             LDX $037F
2C1B   AC 7E 03             LDY $037E
2C1E   DA         L2C1E     ???                ;11011010
2C1F   5A                   ???                ;01011010 'Z'
2C20   A9 80                LDA #$80
2C22   20 8E 23             JSR L238E
2C25   90 13                BCC L2C3A
2C27   48                   PHA
2C28   AD 84 02             LDA $0284
2C2B   85 0F                STA $0F
2C2D   68                   PLA
2C2E   20 36 9F             JSR $9F36
2C31   90 07                BCC L2C3A
2C33   85 0F                STA $0F
2C35   68                   PLA
2C36   68                   PLA
2C37   A5 0F                LDA $0F
2C39   60                   RTS
2C3A   7A         L2C3A     ???                ;01111010 'z'
2C3B   FA                   ???                ;11111010
2C3C   A9 89                LDA #$89
2C3E   20 8E 23             JSR L238E
2C41   B0 DB                BCS L2C1E
2C43   A9 00      L2C43     LDA #$00
2C45   AA                   TAX
2C46   A8                   TAY
2C47   18                   CLC
2C48   60                   RTS
2C49   A6 85                LDX $85
2C4B   F0 19                BEQ L2C66
2C4D   C9 5D                CMP #$5D
2C4F   F0 07                BEQ L2C58
2C51   9D FA 08             STA $08FA,X
2C54   E6 85      L2C54     INC $85
2C56   38                   SEC
2C57   60                   RTS
2C58   9E         L2C58     ???                ;10011110
2C59   FA                   ???                ;11111010
2C5A   08                   PHP
2C5B   A2 08                LDX #$08
2C5D   A0 FB                LDY #$FB
2C5F   20 B2 9D             JSR $9DB2
2C62   64                   ???                ;01100100 'd'
2C63   85 38                STA $38
2C65   60                   RTS
2C66   C9 5B      L2C66     CMP #$5B
2C68   F0 EA                BEQ L2C54
2C6A   48                   PHA
2C6B   20 15 34             JSR L3415
2C6E   68                   PLA
2C6F   90 05                BCC L2C76
2C71   C9 0A                CMP #$0A
2C73   D0 EF                BNE L2C64
2C75   18                   CLC
2C76   60         L2C76     RTS
2C77   20 4A 57             JSR $574A
2C7A   48                   PHA
2C7B   AD E4 08             LDA $08E4
2C7E   AE E3 08             LDX $08E3
2C81   AC E2 08             LDY $08E2
2C84   20 21 60             JSR $6021
2C87   AE 7F 03             LDX $037F
2C8A   AC 7E 03             LDY $037E
2C8D   20 27 60             JSR $6027
2C90   68                   PLA
2C91   69 05                ADC #$05
2C93   4C 98 60             JMP $6098
2C96   48                   PHA
2C97   A9 00                LDA #$00
2C99   8D D0 FF             STA $FFD0
2C9C   A9 D3                LDA #$D3
2C9E   8D CF FF             STA $FFCF
2CA1   A9 2D                LDA #$2D
2CA3   8D CE FF             STA $FFCE
2CA6   AD CC FF             LDA $FFCC
2CA9   F0 36                BEQ L2CE1
2CAB   C5 0F                CMP $0F
2CAD   D0 2B                BNE L2CDA
2CAF   68                   PLA
2CB0   48                   PHA
2CB1   8D D5 FF             STA $FFD5
2CB4   8E D4 FF             STX $FFD4
2CB7   8C D3 FF             STY $FFD3
2CBA   AD CC FF   L2CBA     LDA $FFCC
2CBD   CD D1 FF             CMP $FFD1
2CC0   F0 09                BEQ L2CCB
2CC2   C9 00                CMP #$00
2CC4   F0 14                BEQ L2CDA
2CC6   AD CC FF             LDA $FFCC
2CC9   80                   ???                ;10000000
2CCA   F9 C9 00             SBC $00C9,Y
2CCD   D0 EB                BNE L2CBA
2CCF   68                   PLA
2CD0   AD D0 FF             LDA $FFD0
2CD3   AE CF FF             LDX $FFCF
2CD6   AC CE FF             LDY $FFCE
2CD9   60                   RTS
2CDA   AD CC FF   L2CDA     LDA $FFCC
2CDD   D0 FB                BNE L2CDA
2CDF   80                   ???                ;10000000
2CE0   C5 68                CMP $68
2CE2   A9 00                LDA #$00
2CE4   AA                   TAX
2CE5   A8                   TAY
2CE6   18                   CLC
2CE7   60                   RTS
2CE8   A5 96                LDA $96
2CEA   D0 08                BNE L2CF4
2CEC   A9 00                LDA #$00
2CEE   A2 C9                LDX #$C9
2CF0   A0 86                LDY #$86
2CF2   80                   ???                ;10000000
2CF3   0A                   ASL A
2CF4   A5 97      L2CF4     LDA $97
2CF6   D0 16                BNE L2D0E
2CF8   A9 00                LDA #$00
2CFA   A2 C9                LDX #$C9
2CFC   A0 9A                LDY #$9A
2CFE   20 BE A1             JSR $A1BE
2D01   A9 11                LDA #$11
2D03   85 10                STA $10
2D05   A9 22                LDA #$22
2D07   85 0F                STA $0F
2D09   20 39 6E             JSR $6E39
2D0C   80                   ???                ;10000000
2D0D   28                   PLP
2D0E   64         L2D0E     ???                ;01100100 'd'
2D0F   04                   ???                ;00000100
2D10   9C                   ???                ;10011100
2D11   22                   ???                ;00100010 '"'
2D12   11 9C                ORA ($9C),Y
2D14   13                   ???                ;00010011
2D15   11 A5                ORA ($A5),Y
2D17   97                   ???                ;10010111
2D18   20 3B 61             JSR $613B
2D1B   1A                   ???                ;00011010
2D1C   48                   PHA
2D1D   A2 11                LDX #$11
2D1F   A0 13                LDY #$13
2D21   20 77 6E             JSR $6E77
2D24   68                   PLA
2D25   B0 EF                BCS L2D16
2D27   A6 04                LDX $04
2D29   E6 04                INC $04
2D2B   9D 13 11             STA $1113,X
2D2E   9E                   ???                ;10011110
2D2F   14                   ???                ;00010100
2D30   11 E8                ORA ($E8),Y
2D32   E4 96                CPX $96
2D34   90 E0                BCC L2D16
2D36   4C FB 62             JMP $62FB
2D39   20 C0 26             JSR L26C0
2D3C   20 BE 2F             JSR L2FBE
2D3F   A5 96                LDA $96
2D41   F0 04                BEQ L2D47
2D43   A5 97                LDA $97
2D45   D0 09                BNE L2D50
2D47   A2 11      L2D47     LDX #$11
2D49   A0 22                LDY #$22
2D4B   20 9E 32             JSR L329E
2D4E   80                   ???                ;10000000
2D4F   42                   ???                ;01000010 'B'
2D50   A9 07      L2D50     LDA #$07
2D52   20 B7 39             JSR L39B7
2D55   A2 11                LDX #$11
2D57   A0 13                LDY #$13
2D59   86 01                STX $01
2D5B   B1 00                LDA ($00),Y
2D5D   F0 29                BEQ L2D88
2D5F   C8                   INY
2D60   D0 01                BNE L2D63
2D62   E8                   INX
2D63   DA         L2D63     ???                ;11011010
2D64   5A                   ???                ;01011010 'Z'
2D65   48                   PHA
2D66   18                   CLC
2D67   A9 11                LDA #$11
2D69   65 37                ADC $37
2D6B   A8                   TAY
2D6C   A5 38                LDA $38
2D6E   69 00                ADC #$00
2D70   AA                   TAX
2D71   C4 3F                CPY $3F
2D73   8A                   TXA
2D74   E5 40                SBC $40
2D76   90 05                BCC L2D7D
2D78   A9 0A                LDA #$0A
2D7A   20 6E 29             JSR L296E
2D7D   68         L2D7D     PLA
2D7E   18                   CLC
2D7F   69 20                ADC #$20
2D81   20 6E 29             JSR L296E
2D84   7A                   ???                ;01111010 'z'
2D85   FA                   ???                ;11111010
2D86   80                   ???                ;10000000
2D87   D1 A9                CMP ($A9),Y
2D89   0A                   ASL A
2D8A   20 6E 29             JSR L296E
2D8D   A9 03                LDA #$03
2D8F   20 B7 39             JSR L39B7
2D92   A9 0C                LDA #$0C
2D94   20 6E 29             JSR L296E
2D97   4C FB 62             JMP $62FB
2D9A   A5 96                LDA $96
2D9C   F0 04                BEQ L2DA2
2D9E   A5 97                LDA $97
2DA0   D0 5D                BNE L2DFF
2DA2   A2 11      L2DA2     LDX #$11
2DA4   A0 22                LDY #$22
2DA6   A9 3A                LDA #$3A
2DA8   20 77 6E             JSR $6E77
2DAB   18                   CLC
2DAC   98                   TYA
2DAD   69 02                ADC #$02
2DAF   A8                   TAY
2DB0   90 01                BCC L2DB3
2DB2   E8                   INX
2DB3   20 D0 6D   L2DB3     JSR $6DD0
2DB6   A5 54                LDA $54
2DB8   C9 0A                CMP #$0A
2DBA   D0 46                BNE L2E02
2DBC   A5 96                LDA $96
2DBE   D0 19                BNE L2DD9
2DC0   98                   TYA
2DC1   D0 07                BNE L2DCA
2DC3   A9 06      L2DC3     LDA #$06
2DC5   20 09 A1             JSR $A109
2DC8   A0 06                LDY #$06
2DCA   C0 0F      L2DCA     CPY #$0F
2DCC   90 07                BCC L2DD5
2DCE   A9 0E                LDA #$0E
2DD0   20 12 A1             JSR $A112
2DD3   80                   ???                ;10000000
2DD4   51 84                EOR ($84),Y
2DD6   96 80                STX $80,Y
2DD8   26 98                ROL $98
2DDA   D0 07                BNE L2DE3
2DDC   A9 30                LDA #$30
2DDE   20 09 A1             JSR $A109
2DE1   A0 30                LDY #$30
2DE3   C4 96      L2DE3     CPY $96
2DE5   B0 0B                BCS L2DF2
2DE7   A9 00                LDA #$00
2DE9   A2 C4                LDX #$C4
2DEB   A0 17                LDY #$17
2DED   20 B8 A1             JSR $A1B8
2DF0   80                   ???                ;10000000
2DF1   34                   ???                ;00110100 '4'
2DF2   C0 64      L2DF2     CPY #$64
2DF4   90 07                BCC L2DFD
2DF6   A9 63                LDA #$63
2DF8   20 12 A1             JSR $A112
2DFB   80                   ???                ;10000000
2DFC   29 84                AND #$84
2DFE   97                   ???                ;10010111
2DFF   4C FB 62   L2DFF     JMP $62FB
2E02   C9 08      L2E02     CMP #$08
2E04   F0 04      L2E04     BEQ L2E0A
2E06   C9 83                CMP #$83
2E08   D0 29                BNE L2E33
2E0A   A2 11      L2E0A     LDX #$11
2E0C   A0 22                LDY #$22
2E0E   20 45 6F             JSR $6F45
2E11   88                   DEY
2E12   88                   DEY
2E13   B9 22 11             LDA $1122,Y
2E16   C9 20                CMP #$20
2E18   D0 0F                BNE L2E29
2E1A   A5 54                LDA $54
2E1C   C9 08                CMP #$08
2E1E   D0 03                BNE L2E23
2E20   4C 1A 65             JMP $651A
2E23   20 B2 A1   L2E23     JSR $A1B2
2E26   4C F4 62             JMP $62F4
2E29   98         L2E29     TYA
2E2A   A2 11                LDX #$11
2E2C   A0 22                LDY #$22
2E2E   20 27 6E             JSR $6E27
2E31   80                   ???                ;10000000
2E32   F3                   ???                ;11110011
2E33   AA         L2E33     TAX
2E34   BD 00 20             LDA $2000,X
2E37   29 02                AND #$02
2E39   D0 12                BNE L2E4D
2E3B   8A                   TXA
2E3C   A2 02                LDX #$02
2E3E   5A                   ???                ;01011010 'Z'
2E3F   20 36 22             JSR L2236
2E42   7A                   ???                ;01111010 'z'
2E43   AA                   TAX
2E44   BD 00 20             LDA $2000,X
2E47   29 02                AND #$02
2E49   F0 B4                BEQ L2DFF
2E4B   86 54                STX $54
2E4D   C0 0A      L2E4D     CPY #$0A
2E4F   B0 D2                BCS L2E23
2E51   A2 11                LDX #$11
2E53   A0 22                LDY #$22
2E55   20 45 6F             JSR $6F45
2E58   AA         L2E58     TAX
2E59   9E                   ???                ;10011110
2E5A   23                   ???                ;00100011 '#'
2E5B   11 BD                ORA (L00BD),Y
2E5D   21 11                AND ($11,X)
2E5F   9D 22 11             STA $1122,X
2E62   A5 54                LDA $54
2E64   9D 21 11             STA $1121,X
2E67   80                   ???                ;10000000
2E68   BD 48 A9             LDA $A948,X
2E6B   00                   BRK
2E6C   A2 C9                LDX #$C9
2E6E   A0 69                LDY #$69
2E70   80                   ???                ;10000000
2E71   07                   ???                ;00000111
2E72   48                   PHA
2E73   A9 00                LDA #$00
2E75   A2 C9                LDX #$C9
2E77   A0 78                LDY #$78
2E79   20 BE A1             JSR $A1BE
2E7C   A9 09                LDA #$09
2E7E   85 10                STA $10
2E80   A9 13                LDA #$13
2E82   85 0F                STA $0F
2E84   20 39 6E             JSR $6E39
2E87   68                   PLA
2E88   20 40 6D             JSR $6D40
2E8B   20 39 6E             JSR $6E39
2E8E   A2 09                LDX #$09
2E90   A0 13                LDY #$13
2E92   4C C3 2D             JMP L2DC3
2E95   C9 0A                CMP #$0A
2E97   F0 0C                BEQ L2EA5
2E99   C9 04                CMP #$04
2E9B   F0 08                BEQ L2EA5
2E9D   C9 17                CMP #$17
2E9F   F0 04                BEQ L2EA5
2EA1   C9 20                CMP #$20
2EA3   D0 03                BNE L2EA8
2EA5   4C F4 62   L2EA5     JMP $62F4
2EA8   C9 08      L2EA8     CMP #$08
2EAA   D0 03                BNE L2EAF
2EAC   4C 1A 65             JMP $651A
2EAF   4C FB 62   L2EAF     JMP $62FB
2EB2   20 1D 3D             JSR L3D1D
2EB5   85 04                STA $04
2EB7   A2 11                LDX #$11
2EB9   A0 13                LDY #$13
2EBB   20 CC 60             JSR $60CC
2EBE   18                   CLC
2EBF   65 04                ADC $04
2EC1   85 04                STA $04
2EC3   A2 11                LDX #$11
2EC5   A0 22                LDY #$22
2EC7   20 CC 60             JSR $60CC
2ECA   18                   CLC
2ECB   65 04                ADC $04
2ECD   69 02                ADC #$02
2ECF   48                   PHA
2ED0   A5 96                LDA $96
2ED2   20 2D 60             JSR $602D
2ED5   A5 97                LDA $97
2ED7   20 2D 60             JSR $602D
2EDA   68                   PLA
2EDB   4C 98 60             JMP $6098
2EDE   9C                   ???                ;10011100
2EDF   53                   ???                ;01010011 'S'
2EE0   09 A9                ORA #$A9
2EE2   07                   ???                ;00000111
2EE3   85 8D                STA $8D
2EE5   AD 89 02             LDA $0289
2EE8   F0 21                BEQ L2F0B
2EEA   A2 11                LDX #$11
2EEC   A0 13                LDY #$13
2EEE   20 FE 5F             JSR $5FFE
2EF1   A2 11                LDX #$11
2EF3   A0 22                LDY #$22
2EF5   20 FE 5F             JSR $5FFE
2EF8   20 B2 5F             JSR $5FB2
2EFB   85 96                STA $96
2EFD   20 B2 5F             JSR $5FB2
2F00   85 97                STA $97
2F02   9C                   ???                ;10011100
2F03   89                   ???                ;10001001
2F04   02                   ???                ;00000010
2F05   9C                   ???                ;10011100
2F06   8A                   TXA
2F07   02                   ???                ;00000010
2F08   4C F4 62             JMP $62F4
2F0B   64         L2F0B     ???                ;01100100 'd'
2F0C   96 64                STX L0064,Y
2F0E   97                   ???                ;10010111
2F0F   4C FB 62             JMP $62FB
2F12   A9 00                LDA #$00
2F14   A2 C4                LDX #$C4
2F16   A0 05                LDY #$05
2F18   20 BE A1             JSR $A1BE
2F1B   4C C3 2D             JMP L2DC3
2F1E   8D D0 FF             STA $FFD0
2F21   8E CF FF             STX $FFCF
2F24   8C CE FF             STY $FFCE
2F27   0D CE FF             ORA $FFCE
2F2A   0D CF FF             ORA $FFCF
2F2D   C9 01                CMP #$01
2F2F   90 1E                BCC L2F4F
2F31   A9 06                LDA #$06
2F33   85 07                STA $07
2F35   A9 29                LDA #$29
2F37   85 06                STA $06
2F39   A9 1E                LDA #$1E
2F3B   92                   ???                ;10010010
2F3C   06 A0                ASL $A0
2F3E   01 A9                ORA ($A9,X)
2F40   41 91                EOR ($91,X)
2F42   06 C8                ASL $C8
2F44   AD CC FF             LDA $FFCC
2F47   91 06                STA ($06),Y
2F49   D0 F8                BNE L2F43
2F4B   A2 06                LDX #$06
2F4D   A0 29                LDY #$29
2F4F   60         L2F4F     RTS
2F50   20 BE A1             JSR $A1BE
2F53   4C 79 31             JMP L3179
2F56   20 BE A1             JSR $A1BE
2F59   4C 9E 32             JMP L329E
2F5C   20 BE A1             JSR $A1BE
2F5F   4C B8 31             JMP L31B8
2F62   20 BE A1             JSR $A1BE
2F65   4C 90 2D             JMP L2D90
2F68   A5 8D                LDA $8D
2F6A   C9 08                CMP #$08
2F6C   D0 4A                BNE L2FB8
2F6E   E6 8D                INC $8D
2F70   38                   SEC
2F71   A5 96                LDA $96
2F73   E9 0A                SBC #$0A
2F75   85 96                STA $96
2F77   B0 02                BCS L2F7B
2F79   C6 97                DEC $97
2F7B   38         L2F7B     SEC
2F7C   A5 98                LDA $98
2F7E   E9 0A                SBC #$0A
2F80   85 98                STA $98
2F82   B0 02                BCS L2F86
2F84   C6 99                DEC $99
2F86   18         L2F86     CLC
2F87   A9 14                LDA #$14
2F89   65 9A                ADC $9A
2F8B   85 9A                STA $9A
2F8D   90 02                BCC L2F91
2F8F   E6 9B                INC $9B
2F91   A9 0A      L2F91     LDA #$0A
2F93   48                   PHA
2F94   A9 00                LDA #$00
2F96   A2 C7                LDX #$C7
2F98   A0 3C                LDY #$3C
2F9A   20 BE A1             JSR $A1BE
2F9D   A9 09                LDA #$09
2F9F   85 10                STA $10
2FA1   A9 13                LDA #$13
2FA3   85 0F                STA $0F
2FA5   20 39 6E             JSR $6E39
2FA8   68                   PLA
2FA9   20 40 6D             JSR $6D40
2FAC   20 39 6E             JSR $6E39
2FAF   A2 09                LDX #$09
2FB1   A0 13                LDY #$13
2FB3   20 C3 2D             JSR L2DC3
2FB6   80                   ???                ;10000000
2FB7   3E C9 09             ROL $09C9,X
2FBA   D0 3D                BNE L2FF9
2FBC   E6 8D                INC $8D
2FBE   A9 00      L2FBE     LDA #$00
2FC0   A2 C7                LDX #$C7
2FC2   A0 7A                LDY #$7A
2FC4   20 02 A2             JSR $A202
2FC7   64         L2FC7     ???                ;01100100 'd'
2FC8   9D 20 9C             STA $9C20,X
2FCB   A4 B0                LDY $B0
2FCD   02                   ???                ;00000010
2FCE   E6 9D                INC $9D
2FD0   A9 00                LDA #$00
2FD2   A2 C7                LDX #$C7
2FD4   A0 4D                LDY #$4D
2FD6   20 B8 A1             JSR $A1B8
2FD9   A5 89                LDA $89
2FDB   85 A3                STA $A3
2FDD   A9 00                LDA #$00
2FDF   A2 C7                LDX #$C7
2FE1   A0 43                LDY #$43
2FE3   20 BE A1             JSR $A1BE
2FE6   A9 11                LDA #$11
2FE8   85 10                STA $10
2FEA   A9 31                LDA #$31
2FEC   85 0F                STA $0F
2FEE   20 39 6E             JSR $6E39
2FF1   3A                   ???                ;00111010 ':'
2FF2   85 A2                STA $A2
2FF4   E6 8D                INC $8D
2FF6   4C F4 62             JMP $62F4
2FF9   C9 0A      L2FF9     CMP #$0A
2FFB   F0 CA                BEQ L2FC7
2FFD   C9 13                CMP #$13
2FFF   F0 C6                BEQ L2FC7
3001   C9 0C                CMP #$0C
3003   F0 07                BEQ L300C
3005   C9 15                CMP #$15
3007   F0 03                BEQ L300C
3009   4C CB A3             JMP $A3CB
300C   E6 8D      L300C     INC $8D
300E   A5 9C                LDA $9C
3010   D0 13                BNE L3025
3012   A9 02                LDA #$02
3014   20 3B 61             JSR $613B
3017   AA                   TAX
3018   F0 0B                BEQ L3025
301A   A9 00                LDA #$00
301C   A2 C8                LDX #$C8
301E   A0 E0                LDY #$E0
3020   20 B8 A1             JSR $A1B8
3023   80                   ???                ;10000000
3024   D1 E6                CMP ($E6),Y
3026   8D A9 00             STA $00A9
3029   A2 C8                LDX #$C8
302B   A0 2D                LDY #$2D
302D   20 B8 A1             JSR $A1B8
3030   A5 9C                LDA $9C
3032   30 62                BMI L3096
3034   F0 60                BEQ L3096
3036   A5 9D                LDA $9D
3038   F0 1D                BEQ L3057
303A   18                   CLC
303B   A5 9A                LDA $9A
303D   65 96                ADC $96
303F   85 96                STA $96
3041   A5 9B                LDA $9B
3043   65 97                ADC $97
3045   85 97                STA $97
3047   64                   ???                ;01100100 'd'
3048   9A                   TXS
3049   64                   ???                ;01100100 'd'
304A   9B                   ???                ;10011011
304B   A9 1C                LDA #$1C
304D   85 8D                STA $8D
304F   A9 00                LDA #$00
3051   A2 C7                LDX #$C7
3053   A0 A4                LDY #$A4
3055   80                   ???                ;10000000
3056   C9 38                CMP #$38
3058   A5 98                LDA $98
305A   E5 9C                SBC $9C
305C   85 98                STA $98
305E   B0 02                BCS L3062
3060   C6 99                DEC $99
3062   18         L3062     CLC
3063   A5 9C                LDA $9C
3065   65 9A                ADC $9A
3067   85 9A                STA $9A
3069   90 02                BCC L306D
306B   E6 9B                INC $9B
306D   A5 96      L306D     LDA $96
306F   05 97                ORA $97
3071   F0 0E                BEQ L3081
3073   A5 98                LDA $98
3075   05 99                ORA $99
3077   F0 08                BEQ L3081
3079   A9 05                LDA #$05
307B   20 3B 61             JSR $613B
307E   AA                   TAX
307F   F0 41                BEQ L30C2
3081   A9 00      L3081     LDA #$00
3083   A2 C7                LDX #$C7
3085   A0 D0                LDY #$D0
3087   20 B8 A1             JSR $A1B8
308A   18                   CLC
308B   A5 8D                LDA $8D
308D   69 03                ADC #$03
308F   85 8D                STA $8D
3091   64                   ???                ;01100100 'd'
3092   9C                   ???                ;10011100
3093   4C 96 A2             JMP $A296
3096   A5 9D      L3096     LDA $9D
3098   D0 14                BNE L30AE
309A   A5 96                LDA $96
309C   05 97                ORA $97
309E   F0 0E                BEQ L30AE
30A0   A5 98                LDA $98
30A2   05 99                ORA $99
30A4   F0 08                BEQ L30AE
30A6   A9 03                LDA #$03
30A8   20 3B 61             JSR $613B
30AB   AA                   TAX
30AC   D0 14                BNE L30C2
30AE   A5 9C      L30AE     LDA $9C
30B0   D0 08                BNE L30BA
30B2   A9 00                LDA #$00
30B4   A2 C7                LDX #$C7
30B6   A0 B5                LDY #$B5
30B8   80                   ???                ;10000000
30B9   9B                   ???                ;10011011
30BA   A9 00      L30BA     LDA #$00
30BC   A2 C7                LDX #$C7
30BE   A0 AB                LDY #$AB
30C0   80                   ???                ;10000000
30C1   C5 DA                CMP $DA
30C3   A6 99                LDX $99
30C5   A4 98                LDY $98
30C7   C4 96                CPY $96
30C9   8A                   TXA
30CA   E5 97                SBC $97
30CC   90 04                BCC L30D2
30CE   A6 97                LDX $97
30D0   A4 96                LDY $96
30D2   C0 65      L30D2     CPY #$65
30D4   8A                   TXA
30D5   E9 00                SBC #$00
30D7   90 04                BCC L30DD
30D9   A2 00                LDX #$00
30DB   A0 64                LDY #$64
30DD   C0 0A      L30DD     CPY #$0A
30DF   8A                   TXA
30E0   E9 00                SBC #$00
30E2   90 14                BCC L30F8
30E4   A9 0A                LDA #$0A
30E6   00                   BRK
30E7   00                   BRK
30E8   67                   ???                ;01100111 'g'
30E9   94 98                STY $98,X
30EB   20 3B 61             JSR $613B
30EE   1A                   ???                ;00011010
30EF   85 0F                STA $0F
30F1   0A                   ASL A
30F2   0A                   ASL A
30F3   65 0F                ADC $0F
30F5   0A                   ASL A
30F6   80                   ???                ;10000000
30F7   05 98                ORA $98
30F9   20 3B 61             JSR $613B
30FC   1A                   ???                ;00011010
30FD   85 9C                STA $9C
30FF   FA                   ???                ;11111010
3100   48                   PHA
3101   38                   SEC
3102   A5 98                LDA $98
3104   E5 9C                SBC $9C
3106   85 98                STA $98
3108   B0 02                BCS L310C
310A   C6 99                DEC $99
310C   18         L310C     CLC
310D   A5 9C                LDA $9C
310F   65 9A                ADC $9A
3111   85 9A                STA $9A
3113   90 02                BCC L3117
3115   E6 9B                INC $9B
3117   8A         L3117     TXA
3118   D0 08                BNE L3122
311A   A9 00                LDA #$00
311C   A2 C7                LDX #$C7
311E   A0 BF                LDY #$BF
3120   80                   ???                ;10000000
3121   06 A9                ASL $A9
3123   00                   BRK
3124   A2 C7                LDX #$C7
3126   A0 9C                LDY #$9C
3128   4C 3A A2             JMP $A23A
312B   C9 11                CMP #$11
312D   D0 0F                BNE L313E
312F   A5 89                LDA $89
3131   1A                   ???                ;00011010
3132   4A                   LSR A
3133   85 A3                STA $A3
3135   A9 00                LDA #$00
3137   A2 C7                LDX #$C7
3139   A0 85                LDY #$85
313B   4C 83 A2             JMP $A283
313E   C9 1A      L313E     CMP #$1A
3140   D0 4F                BNE L3191
3142   E6 8D                INC $8D
3144   E6 8D                INC $8D
3146   A2 11                LDX #$11
3148   A0 13                LDY #$13
314A   20 28 AC             JSR $AC28
314D   48                   PHA
314E   A2 11                LDX #$11
3150   A0 22                LDY #$22
3152   20 28 AC             JSR $AC28
3155   85 0F                STA $0F
3157   68                   PLA
3158   38                   SEC
3159   E5 0F                SBC $0F
315B   D0 09                BNE L3166
315D   A9 00                LDA #$00
315F   A2 C8                LDX #$C8
3161   A0 7E                LDY #$7E
3163   4C C0 A2             JMP $A2C0
3166   10 17      L3166     BPL L317F
3168   18                   CLC
3169   A5 9A                LDA $9A
316B   65 98                ADC $98
316D   85 98                STA $98
316F   A5 9B                LDA $9B
3171   65 99                ADC $99
3173   85 99                STA $99
3175   20 B4 3C             JSR L3CB4
3178   64                   ???                ;01100100 'd'
3179   9A         L3179     TXS
317A   64                   ???                ;01100100 'd'
317B   9B                   ???                ;10011011
317C   4C F4 62             JMP $62F4
317F   18         L317F     CLC
3180   A5 9A                LDA $9A
3182   65 96                ADC $96
3184   85 96                STA $96
3186   A5 9B                LDA $9B
3188   65 97                ADC $97
318A   85 97                STA $97
318C   20 0E 41             JSR L410E
318F   80                   ???                ;10000000
3190   E7                   ???                ;11100111
3191   C9 1B      L3191     CMP #$1B
3193   D0 1A                BNE L31AF
3195   18                   CLC
3196   A5 9A                LDA $9A
3198   65 98                ADC $98
319A   85 98                STA $98
319C   A5 9B                LDA $9B
319E   65 99                ADC $99
31A0   85 99                STA $99
31A2   E6 8D                INC $8D
31A4   A9 00                LDA #$00
31A6   A2 C7                LDX #$C7
31A8   A0 8F                LDY #$8F
31AA   20 B8 A1             JSR $A1B8
31AD   80                   ???                ;10000000
31AE   C9 C9                CMP #$C9
31B0   1C                   ???                ;00011100
31B1   D0 43                BNE L31F6
31B3   E6 8D                INC $8D
31B5   A5 97                LDA $97
31B7   30 08                BMI L31C1
31B9   D0 13                BNE L31CE
31BB   A5 96                LDA $96
31BD   C9 0A                CMP #$0A
31BF   B0 0D                BCS L31CE
31C1   A9 00      L31C1     LDA #$00
31C3   A2 C6                LDX #$C6
31C5   A0 2A                LDY #$2A
31C7   20 B8 A1             JSR $A1B8
31CA   64                   ???                ;01100100 'd'
31CB   96 64                STX L0064,Y
31CD   97                   ???                ;10010111
31CE   A5 99      L31CE     LDA $99
31D0   30 08                BMI L31DA
31D2   D0 20                BNE L31F4
31D4   A5 98                LDA $98
31D6   C9 0A                CMP #$0A
31D8   B0 1A                BCS L31F4
31DA   A9 00      L31DA     LDA #$00
31DC   A2 C6                LDX #$C6
31DE   A0 17                LDY #$17
31E0   20 B8 A1             JSR $A1B8
31E3   A9 00                LDA #$00
31E5   A2 C8                LDX #$C8
31E7   A0 35                LDY #$35
31E9   20 B8 A1             JSR $A1B8
31EC   64                   ???                ;01100100 'd'
31ED   98                   TYA
31EE   64                   ???                ;01100100 'd'
31EF   99 64 96             STA $9664,Y
31F2   64                   ???                ;01100100 'd'
31F3   97                   ???                ;10010111
31F4   80         L31F4     ???                ;10000000
31F5   03                   ???                ;00000011
31F6   4C FB 62   L31F6     JMP $62FB
31F9   4C F4 62             JMP $62F4
31FC   64                   ???                ;01100100 'd'
31FD   A0 64                LDY #$64
31FF   A1 64                LDA (L0064,X)
3201   9F                   ???                ;10011111
3202   A6 89                LDX $89
3204   9E         L3204     ???                ;10011110
3205   13                   ???                ;00010011
3206   09 CA                ORA #$CA
3208   10 FA                BPL L3204
320A   A2 AB                LDX #$AB
320C   A0 25                LDY #$25
320E   20 AC 67             JSR $67AC
3211   A4 A1                LDY $A1
3213   D0 09                BNE L321E
3215   A2 00                LDX #$00
3217   A0 7A                LDY #$7A
3219   20 D2 4D             JSR $4DD2
321C   18                   CLC
321D   60                   RTS
321E   A2 00      L321E     LDX #$00
3220   A9 05                LDA #$05
3222   00                   BRK
3223   00                   BRK
3224   67                   ???                ;01100111 'g'
3225   94 85                STY $85,X
3227   9F                   ???                ;10011111
3228   84 A0                STY $A0
322A   A2 FF                LDX #$FF
322C   E8                   INX
322D   EC 7B 03             CPX $037B
3230   B0 08                BCS L323A
3232   A5 A0                LDA $A0
3234   65 9F                ADC $9F
3236   85 9F                STA $9F
3238   80                   ???                ;10000000
3239   F2                   ???                ;11110010
323A   A5 A0      L323A     LDA $A0
323C   F0 09                BEQ L3247
323E   20 3B 61             JSR $613B
3241   1A                   ???                ;00011010
3242   18                   CLC
3243   65 9F                ADC $9F
3245   85 9F                STA $9F
3247   A2 FF      L3247     LDX #$FF
3249   E8                   INX
324A   38                   SEC
324B   A5 9F                LDA $9F
324D   FD 13 09             SBC $0913,X
3250   90 06                BCC L3258
3252   F0 04                BEQ L3258
3254   85 9F                STA $9F
3256   80                   ???                ;10000000
3257   F1 86                SBC ($86),Y
3259   A0 A2                LDY #$A2
325B   AB                   ???                ;10101011
325C   A0 25                LDY #$25
325E   20 AC 67             JSR $67AC
3261   38                   SEC
3262   60                   RTS
3263   A2 11                LDX #$11
3265   A0 22                LDY #$22
3267   A9 20                LDA #$20
3269   20 77 6E             JSR $6E77
326C   90 36                BCC L32A4
326E   DA                   ???                ;11011010
326F   5A                   ???                ;01011010 'Z'
3270   C8                   INY
3271   D0 01                BNE L3274
3273   E8                   INX
3274   20 B4 66   L3274     JSR $66B4
3277   7A                   ???                ;01111010 'z'
3278   FA                   ???                ;11111010
3279   B0 47                BCS L32C2
327B   DA                   ???                ;11011010
327C   5A                   ???                ;01011010 'Z'
327D   20 45 6F             JSR $6F45
3280   7A                   ???                ;01111010 'z'
3281   FA                   ???                ;11111010
3282   3A                   ???                ;00111010 ':'
3283   85 11                STA $11
3285   A5 89                LDA $89
3287   1A                   ???                ;00011010
3288   4A                   LSR A
3289   C5 11                CMP $11
328B   90 02                BCC L328F
328D   A5 11                LDA $11
328F   48         L328F     PHA
3290   85 11                STA $11
3292   86 10                STX $10
3294   84 0F                STY $0F
3296   38                   SEC
3297   98                   TYA
3298   65 11                ADC $11
329A   A8                   TAY
329B   90 01                BCC L329E
329D   E8                   INX
329E   20 39 6E   L329E     JSR $6E39
32A1   68                   PLA
32A2   80                   ???                ;10000000
32A3   1A                   ???                ;00011010
32A4   A5 9D      L32A4     LDA $9D
32A6   F0 16                BEQ L32BE
32A8   A5 89                LDA $89
32AA   1A                   ???                ;00011010
32AB   4A                   LSR A
32AC   85 0F                STA $0F
32AE   38                   SEC
32AF   A5 89                LDA $89
32B1   E5 0F      L32B1     SBC $0F
32B3   18                   CLC
32B4   69 22                ADC #$22
32B6   A8                   TAY
32B7   A9 11                LDA #$11
32B9   69 00                ADC #$00
32BB   AA                   TAX
32BC   A5 0F                LDA $0F
32BE   C9 00      L32BE     CMP #$00
32C0   D0 09                BNE L32CB
32C2   A9 00      L32C2     LDA #$00
32C4   A2 C8                LDX #$C8
32C6   A0 40                LDY #$40
32C8   4C B8 A1             JMP $A1B8
32CB   DA         L32CB     ???                ;11011010
32CC   5A                   ???                ;01011010 'Z'
32CD   48                   PHA
32CE   A9 00                LDA #$00
32D0   A2 C7                LDX #$C7
32D2   A0 DD                LDY #$DD
32D4   20 BE A1             JSR $A1BE
32D7   A9 09                LDA #$09
32D9   85 10                STA $10
32DB   A9 13                LDA #$13
32DD   85 0F                STA $0F
32DF   20 39 6E             JSR $6E39
32E2   68                   PLA
32E3   48                   PHA
32E4   20 40 6D             JSR $6D40
32E7   20 39 6E             JSR $6E39
32EA   A2 09                LDX #$09
32EC   A0 13                LDY #$13
32EE   20 C3 2D             JSR L2DC3
32F1   68                   PLA
32F2   7A                   ???                ;01111010 'z'
32F3   FA                   ???                ;11111010
32F4   86 10                STX $10
32F6   84 0F                STY $0F
32F8   3A         L32F8     ???                ;00111010 ':'
32F9   48                   PHA
32FA   20 60 3E             JSR L3E60
32FD   92                   ???                ;10010010
32FE   0F                   ???                ;00001111
32FF   E6 0F                INC $0F
3301   D0 02                BNE L3305
3303   E6 10                INC $10
3305   68         L3305     PLA
3306   D0 F0                BNE L32F8
3308   92                   ???                ;10010010
3309   0F                   ???                ;00001111
330A   60                   RTS
330B   A5 9E                LDA $9E
330D   F0 16                BEQ L3325
330F   64                   ???                ;01100100 'd'
3310   9A                   TXS
3311   64                   ???                ;01100100 'd'
3312   9B                   ???                ;10011011
3313   64         L3313     ???                ;01100100 'd'
3314   9E                   ???                ;10011110
3315   A9 03                LDA #$03
3317   85 97                STA $97
3319   A9 E8      L3319     LDA #$E8
331B   85 96                STA $96
331D   A9 13                LDA #$13
331F   85 99                STA $99
3321   A9 88                LDA #$88
3323   85 98                STA $98
3325   A9 08      L3325     LDA #$08
3327   85 8D                STA $8D
3329   AD 79 03             LDA $0379
332C   F0 04                BEQ L3332
332E   C9 05                CMP #$05
3330   B0 02                BCS L3334
3332   A9 05      L3332     LDA #$05
3334   C9 08      L3334     CMP #$08
3336   90 02                BCC L333A
3338   A9 07                LDA #$07
333A   85 89      L333A     STA $89
333C   AA                   TAX
333D   9E                   ???                ;10011110
333E   13                   ???                ;00010011
333F   11 9E                ORA ($9E),Y
3341   22                   ???                ;00100010 '"'
3342   11 DA                ORA ($DA),Y
3344   20 60 3E             JSR L3E60
3347   FA                   ???                ;11111010
3348   9D 12 11             STA $1112,X
334B   DA                   ???                ;11011010
334C   20 60 3E             JSR L3E60
334F   FA                   ???                ;11111010
3350   9D 21 11             STA $1121,X
3353   CA                   DEX
3354   D0 ED                BNE L3343
3356   4C FB 62             JMP $62FB
3359   85 A6                STA $A6
335B   86 A5                STX $A5
335D   84 A4                STY $A4
335F   A8                   TAY
3360   20 E4 2D             JSR L2DE4
3363   A6 40                LDX $40
3365   A4 3F                LDY $3F
3367   64                   ???                ;01100100 'd'
3368   10 A9                BPL L3313
336A   0B                   ???                ;00001011
336B   85 0F                STA $0F
336D   A9 00                LDA #$00
336F   20 58 2E             JSR L2E58
3372   A4 A6                LDY $A6
3374   C8                   INY
3375   C8                   INY
3376   20 E4 2D             JSR L2DE4
3379   A6 A5                LDX $A5
337B   A4 A4                LDY $A4
337D   A9 3A                LDA #$3A
337F   20 77 6E             JSR $6E77
3382   90 1D                BCC L33A1
3384   C8                   INY
3385   D0 01                BNE L3388
3387   E8                   INX
3388   86 01      L3388     STX $01
338A   B1 00                LDA ($00),Y
338C   48                   PHA
338D   A9 00                LDA #$00
338F   91 00                STA ($00),Y
3391   8A                   TXA
3392   A6 A5                LDX $A5
3394   85 A5                STA $A5
3396   98                   TYA
3397   A4 A4                LDY $A4
3399   85 A4                STA $A4
339B   20 79 31             JSR L3179
339E   68                   PLA
339F   92                   ???                ;10010010
33A0   A4 A9                LDY $A9
33A2   00                   BRK
33A3   48                   PHA
33A4   A6 A5                LDX $A5
33A6   A4 A4                LDY $A4
33A8   20 31 6F             JSR $6F31
33AB   C0 00                CPY #$00
33AD   D0 01                BNE L33B0
33AF   CA                   DEX
33B0   88         L33B0     DEY
33B1   86 01                STX $01
33B3   B1 00                LDA ($00),Y
33B5   AA                   TAX
33B6   BD 00 20             LDA $2000,X
33B9   29 20                AND #$20
33BB   D0 06                BNE L33C3
33BD   68                   PLA
33BE   DA                   ???                ;11011010
33BF   A9 00                LDA #$00
33C1   91 00                STA ($00),Y
33C3   A9 03      L33C3     LDA #$03
33C5   20 B7 39             JSR L39B7
33C8   A5 37                LDA $37
33CA   85 A7                STA $A7
33CC   A9 80                LDA #$80
33CE   85 A8                STA $A8
33D0   B2                   ???                ;10110010
33D1   A4 D0                LDY $D0
33D3   03                   ???                ;00000011
33D4   4C FB A6             JMP $A6FB
33D7   AA                   TAX
33D8   BD 00 20             LDA $2000,X
33DB   29 20                AND #$20
33DD   F0 65                BEQ L3444
33DF   A6 A7                LDX $A7
33E1   A4 A6                LDY $A6
33E3   20 E6 2D             JSR L2DE6
33E6   A2 09                LDX #$09
33E8   A0 0B                LDY #$0B
33EA   A9 10                LDA #$10
33EC   20 50 2E             JSR L2E50
33EF   A5 A8                LDA $A8
33F1   10 26                BPL L3419
33F3   A6 A5                LDX $A5
33F5   A4 A4                LDY $A4
33F7   A9 20                LDA #$20
33F9   20 77 6E             JSR $6E77
33FC   90 04                BCC L3402
33FE   A9 00                LDA #$00
3400   92                   ???                ;10010010
3401   0F                   ???                ;00001111
3402   86 12      L3402     STX $12
3404   84 11                STY $11
3406   A6 A5                LDX $A5
3408   A4 A4                LDY $A4
340A   20 B4 66             JSR $66B4
340D   26 A8                ROL $A8
340F   A5 11                LDA $11
3411   05 12                ORA $12
3413   F0 1B                BEQ L3430
3415   A9 20      L3415     LDA #$20
3417   92                   ???                ;10010010
3418   11 4A                ORA ($4A),Y
341A   90 14                BCC L3430
341C   A5 A6                LDA $A6
341E   69 03                ADC #$03
3420   A8                   TAY
3421   A6 A7                LDX $A7
3423   CA                   DEX
3424   20 E6 2D             JSR L2DE6
3427   A2 00                LDX #$00
3429   A0 02                LDY #$02
342B   A9 01                LDA #$01
342D   20 E8 2B             JSR L2BE8
3430   A6 A7      L3430     LDX $A7
3432   E8                   INX
3433   E8                   INX
3434   A4 A6                LDY $A6
3436   C8                   INY
3437   C8                   INY
3438   20 E6 2D             JSR L2DE6
343B   B2                   ???                ;10110010
343C   A4 20                LDY $20
343E   6E 29 A9             ROR $A929
3441   09 80                ORA #$80
3443   0A                   ASL A
3444   E0 20      L3444     CPX #$20
3446   D0 0A                BNE L3452
3448   A9 80                LDA #$80
344A   85 A8                STA $A8
344C   A9 04                LDA #$04
344E   65 A7                ADC $A7
3450   85 A7                STA $A7
3452   E6 A4      L3452     INC $A4
3454   D0 02                BNE L3458
3456   E6 A5                INC $A5
3458   4C 70 A6   L3458     JMP $A670
345B   68         L345B     PLA
345C   F0 10                BEQ L346E
345E   92                   ???                ;10010010
345F   A4 48                LDY $48
3461   A6 A7                LDX $A7
3463   A4 A6                LDY $A6
3465   C8                   INY
3466   C8                   INY
3467   20 E6 2D             JSR L2DE6
346A   68                   PLA
346B   20 6E 29             JSR L296E
346E   18         L346E     CLC
346F   A5 A6                LDA $A6
3471   69 0C                ADC #$0C
3473   A8                   TAY
3474   4C E4 2D             JMP L2DE4
3477   A9 03                LDA #$03
3479   20 B7 39             JSR L39B7
347C   A6 97                LDX $97
347E   A4 96                LDY $96
3480   A9 00                LDA #$00
3482   20 45 6D             JSR $6D45
3485   DA                   ???                ;11011010
3486   5A                   ???                ;01011010 'Z'
3487   20 45 6F             JSR $6F45
348A   1A                   ???                ;00011010
348B   0A                   ASL A
348C   85 0F                STA $0F
348E   0A                   ASL A
348F   65 0F                ADC $0F
3491   85 0F                STA $0F
3493   38                   SEC
3494   A5 3F                LDA $3F
3496   E5 0F                SBC $0F
3498   A8                   TAY
3499   A5 40                LDA $40
349B   E9 00                SBC #$00
349D   AA                   TAX
349E   64                   ???                ;01100100 'd'
349F   0F                   ???                ;00001111
34A0   64                   ???                ;01100100 'd'
34A1   10 20                BPL L34C3
34A3   04                   ???                ;00000100
34A4   2E A9 24             ROL $24A9
34A7   20 6E 29             JSR L296E
34AA   7A                   ???                ;01111010 'z'
34AB   FA                   ???                ;11111010
34AC   20 79 31             JSR L3179
34AF   4C FB 62             JMP $62FB
34B2   20 9A 29             JSR L299A
34B5   A5 8D                LDA $8D
34B7   C9 0B                CMP #$0B
34B9   90 3D                BCC L34F8
34BB   A9 00                LDA #$00
34BD   A2 C7                LDX #$C7
34BF   A0 96                LDY #$96
34C1   20 9B A7             JSR $A79B
34C4   A5 8D                LDA $8D
34C6   C9 1A                CMP #$1A
34C8   90 1E                BCC L34E8
34CA   A9 00                LDA #$00
34CC   A2 C7                LDX #$C7
34CE   A0 E8                LDY #$E8
34D0   20 9B A7             JSR $A79B
34D3   A2 11                LDX #$11
34D5   A0 22                LDY #$22
34D7   20 39 6E             JSR $6E39
34DA   A9 0C                LDA #$0C
34DC   20 91 A7             JSR $A791
34DF   A9 00                LDA #$00
34E1   A2 C8                LDX #$C8
34E3   A0 87                LDY #$87
34E5   20 9B A7             JSR $A79B
34E8   A2 11      L34E8     LDX #$11
34EA   A0 13                LDY #$13
34EC   20 39 6E             JSR $6E39
34EF   A9 00                LDA #$00
34F1   A2 09                LDX #$09
34F3   A0 13                LDY #$13
34F5   20 F9 A5             JSR $A5F9
34F8   4C FB 62   L34F8     JMP $62FB
34FB   20 BE A1             JSR $A1BE
34FE   A9 09                LDA #$09
3500   85 10                STA $10
3502   A9 13                LDA #$13
3504   85 0F                STA $0F
3506   4C 39 6E             JMP $6E39
3509   20 C0 26             JSR L26C0
350C   A0 0C                LDY #$0C
350E   20 E4 2D             JSR L2DE4
3511   A5 8D                LDA $8D
3513   A2 11                LDX #$11
3515   A0 31                LDY #$31
3517   C9 0B                CMP #$0B
3519   F0 08                BEQ L3523
351B   C9 14                CMP #$14
351D   F0 04                BEQ L3523
351F   C9 12                CMP #$12
3521   D0 07                BNE L352A
3523   A9 0C      L3523     LDA #$0C
3525   20 F9 A5             JSR $A5F9
3528   80                   ???                ;10000000
3529   36 C9                ROL $C9,X
352B   0F                   ???                ;00001111
352C   F0 0C                BEQ L353A
352E   C9 18                CMP #$18
3530   F0 08                BEQ L353A
3532   C9 10                CMP #$10
3534   F0 04                BEQ L353A
3536   C9 19                CMP #$19
3538   D0 05                BNE L353F
353A   20 9E 32   L353A     JSR L329E
353D   80                   ???                ;10000000
353E   21 C9                AND ($C9,X)
3540   0D F0 04             ORA $04F0
3543   C9 16                CMP #$16
3545   D0 08                BNE L354F
3547   A9 00                LDA #$00
3549   A2 C7                LDX #$C7
354B   A0 EC                LDY #$EC
354D   80                   ???                ;10000000
354E   0E C9 0E             ASL $0EC9
3551   F0 04                BEQ L3557
3553   C9 17                CMP #$17
3555   D0 09                BNE L3560
3557   A9 00      L3557     LDA #$00
3559   A2 C8                LDX #$C8
355B   A0 0C                LDY #$0C
355D   20 FC A1             JSR $A1FC
3560   4C FB 62   L3560     JMP $62FB
3563   A5 8D                LDA $8D
3565   0A                   ASL A
3566   AA                   TAX
3567   A5 54                LDA $54
3569   7C                   ???                ;01111100 '|'
356A   B6 AA                LDX $AA,Y
356C   A6 A2                LDX $A2
356E   C9 0A                CMP #$0A
3570   D0 6D                BNE L35DF
3572   9E                   ???                ;10011110
3573   31 11                AND ($11),Y
3575   A2 11                LDX #$11
3577   A0 31                LDY #$31
3579   A9 3A                LDA #$3A
357B   20 77 6E             JSR $6E77
357E   C8                   INY
357F   D0 01                BNE L3582
3581   E8                   INX
3582   A9 11      L3582     LDA #$11
3584   85 10                STA $10
3586   A9 31                LDA #$31
3588   85 0F                STA $0F
358A   20 39 6E             JSR $6E39
358D   AA                   TAX
358E   F0 4A                BEQ L35DA
3590   A2 11                LDX #$11
3592   A0 13                LDY #$13
3594   A9 20                LDA #$20
3596   20 77 6E             JSR $6E77
3599   90 07                BCC L35A2
359B   A9 00                LDA #$00
359D   20 27 6E             JSR $6E27
35A0   80                   ???                ;10000000
35A1   EE AD 13             INC $13AD
35A4   11 F0                ORA ($F0),Y
35A6   24 A2                BIT $A2
35A8   11 A0                ORA ($A0),Y
35AA   31 20                AND ($20),Y
35AC   31 6F                AND ($6F),Y
35AE   C0 00                CPY #$00
35B0   D0 01                BNE L35B3
35B2   CA                   DEX
35B3   88         L35B3     DEY
35B4   86 01                STX $01
35B6   A9 20                LDA #$20
35B8   D1 00                CMP ($00),Y
35BA   F0 08                BEQ L35C4
35BC   92                   ???                ;10010010
35BD   0F                   ???                ;00001111
35BE   E6 0F                INC $0F
35C0   D0 02                BNE L35C4
35C2   E6 10                INC $10
35C4   A2 11      L35C4     LDX #$11
35C6   A0 13                LDY #$13
35C8   20 39 6E             JSR $6E39
35CB   A2 11                LDX #$11
35CD   A0 31                LDY #$31
35CF   A9 11                LDA #$11
35D1   85 10                STA $10
35D3   A9 13                LDA #$13
35D5   85 0F                STA $0F
35D7   20 39 6E             JSR $6E39
35DA   64         L35DA     ???                ;01100100 'd'
35DB   9C                   ???                ;10011100
35DC   4C A6 A9             JMP $A9A6
35DF   C9 20      L35DF     CMP #$20
35E1   F0 08                BEQ L35EB
35E3   C9 82                CMP #$82
35E5   D0 11                BNE L35F8
35E7   A9 20                LDA #$20
35E9   85 54                STA $54
35EB   BC 30 11   L35EB     LDY $1130,X
35EE   B9 00 20             LDA $2000,Y
35F1   29 20                AND #$20
35F3   F0 57                BEQ L364C
35F5   4C 35 A9             JMP $A935
35F8   A6 A2      L35F8     LDX $A2
35FA   C9 0A                CMP #$0A
35FC   D0 35                BNE L3633
35FE   A2 FF                LDX #$FF
3600   E8         L3600     INX
3601   BD 13 11             LDA $1113,X
3604   F0 10                BEQ L3616
3606   C9 61                CMP #$61
3608   B0 F6                BCS L3600
360A   DA                   ???                ;11011010
360B   8A                   TXA
360C   A2 11                LDX #$11
360E   A0 13                LDY #$13
3610   20 27 6E             JSR $6E27
3613   FA                   ???                ;11111010
3614   80                   ???                ;10000000
3615   EB                   ???                ;11101011
3616   A9 20      L3616     LDA #$20
3618   9D 13 11             STA $1113,X
361B   E4 89                CPX $89
361D   E8                   INX
361E   B0 0A                BCS L362A
3620   DA                   ???                ;11011010
3621   20 60 3E             JSR L3E60
3624   FA                   ???                ;11111010
3625   9D 13 11             STA $1113,X
3628   80         L3628     ???                ;10000000
3629   F1 9E                SBC ($9E),Y
362B   13                   ???                ;00010011
362C   11 20                ORA ($20),Y
362E   03                   ???                ;00000011
362F   A5 4C                LDA $4C
3631   A6 A9                LDX $A9
3633   C9 08      L3633     CMP #$08
3635   F0 04                BEQ L363B
3637   C9 83                CMP #$83
3639   D0 3A                BNE L3675
363B   BC 30 11   L363B     LDY $1130,X
363E   C0 3A                CPY #$3A
3640   D0 0D                BNE L364F
3642   C9 08                CMP #$08
3644   D0 03                BNE L3649
3646   4C 1A 65             JMP $651A
3649   20 B2 A1   L3649     JSR $A1B2
364C   4C F4 62   L364C     JMP $62F4
364F   C6 A2      L364F     DEC $A2
3651   B9 00 20             LDA $2000,Y
3654   29 20                AND #$20
3656   F0 12                BEQ L366A
3658   5A                   ???                ;01011010 'Z'
3659   A2 11                LDX #$11
365B   A0 13                LDY #$13
365D   20 45 6F             JSR $6F45
3660   AA                   TAX
3661   68                   PLA
3662   9D 13 11             STA $1113,X
3665   9E                   ???                ;10011110
3666   14                   ???                ;00010100
3667   11 E6                ORA ($E6),Y
3669   A3                   ???                ;10100011
366A   A2 11      L366A     LDX #$11
366C   A0 31                LDY #$31
366E   A5 A2                LDA $A2
3670   20 27 6E             JSR $6E27
3673   80                   ???                ;10000000
3674   D7                   ???                ;11010111
3675   A8         L3675     TAY
3676   B9 00 20             LDA $2000,Y
3679   29 20                AND #$20
367B   D0 03                BNE L3680
367D   4C FB 62             JMP $62FB
3680   A5 A3      L3680     LDA $A3
3682   F0 C5                BEQ L3649
3684   98                   TYA
3685   A2 11                LDX #$11
3687   A0 13                LDY #$13
3689   20 77 6E             JSR $6E77
368C   90 1B                BCC L36A9
368E   C6 A3                DEC $A3
3690   A9 00                LDA #$00
3692   20 27 6E             JSR $6E27
3695   A6 A2                LDX $A2
3697   BD 31 11             LDA $1131,X
369A   9D 32 11             STA $1132,X
369D   A5 54                LDA $54
369F   9D 31 11             STA $1131,X
36A2   E6 A2                INC $A2
36A4   9E                   ???                ;10011110
36A5   33                   ???                ;00110011 '3'
36A6   11 80                ORA ($80),Y
36A8   A3                   ???                ;10100011
36A9   A9 00      L36A9     LDA #$00
36AB   A2 C8                LDX #$C8
36AD   A0 53                LDY #$53
36AF   20 B8 A1             JSR $A1B8
36B2   80                   ???                ;10000000
36B3   98                   TYA
36B4   C9 70                CMP #$70
36B6   D0 07                BNE L36BF
36B8   A9 FF                LDA #$FF
36BA   85 9C                STA $9C
36BC   4C 62 AA             JMP $AA62
36BF   C9 62      L36BF     CMP #$62
36C1   D0 1B                BNE L36DE
36C3   64                   ???                ;01100100 'd'
36C4   9C                   ???                ;10011100
36C5   A9 00                LDA #$00
36C7   A2 C7                LDX #$C7
36C9   A0 72                LDY #$72
36CB   20 BE A1             JSR $A1BE
36CE   A9 11                LDA #$11
36D0   85 10                STA $10
36D2   A9 31                LDA #$31
36D4   85 0F                STA $0F
36D6   20 39 6E             JSR $6E39
36D9   3A                   ???                ;00111010 ':'
36DA   85 A2                STA $A2
36DC   80                   ???                ;10000000
36DD   26 C9                ROL $C9
36DF   66 D0                ROR $D0
36E1   42                   ???                ;01000010 'B'
36E2   A9 1B      L36E2     LDA #$1B
36E4   85 8D                STA $8D
36E6   80                   ???                ;10000000
36E7   20 C9 73             JSR $73C9
36EA   D0 1E                BNE L370A
36EC   18                   CLC
36ED   A5 9C                LDA $9C
36EF   65 9A                ADC $9A
36F1   85 9A                STA $9A
36F3   90 02                BCC L36F7
36F5   E6 9B                INC $9B
36F7   38         L36F7     SEC
36F8   A5 96                LDA $96
36FA   E5 9C                SBC $9C
36FC   85 96                STA $96
36FE   B0 02                BCS L3702
3700   C6 97                DEC $97
3702   E6 8D      L3702     INC $8D
3704   E6 8D                INC $8D
3706   E6 8D                INC $8D
3708   80                   ???                ;10000000
3709   5F                   ???                ;01011111 '_'
370A   C9 72      L370A     CMP #$72
370C   D0 12                BNE L3720
370E   18                   CLC
370F   A5 8D                LDA $8D
3711   69 FD                ADC #$FD
3713   85 8D                STA $8D
3715   20 8C A9             JSR $A98C
3718   A9 00                LDA #$00
371A   A2 C8                LDX #$C8
371C   A0 61                LDY #$61
371E   80                   ???                ;10000000
371F   AB                   ???                ;10101011
3720   C9 66      L3720     CMP #$66
3722   F0 BE                BEQ L36E2
3724   4C FB 62             JMP $62FB
3727   A2 11                LDX #$11
3729   A0 31                LDY #$31
372B   A9 24                LDA #$24
372D   20 77 6E             JSR $6E77
3730   C8                   INY
3731   D0 01                BNE L3734
3733   E8                   INX
3734   20 D0 6D   L3734     JSR $6DD0
3737   84 9C                STY $9C
3739   A5 54                LDA $54
373B   C9 0A                CMP #$0A
373D   F0 03                BEQ L3742
373F   4C 66 AA             JMP $AA66
3742   C0 65      L3742     CPY #$65
3744   90 26                BCC L376C
3746   A9 00                LDA #$00
3748   A2 C8                LDX #$C8
374A   A0 6B                LDY #$6B
374C   20 BE A1             JSR $A1BE
374F   A9 09                LDA #$09
3751   85 10                STA $10
3753   A9 13                LDA #$13
3755   85 0F                STA $0F
3757   20 39 6E             JSR $6E39
375A   A9 64                LDA #$64
375C   20 40 6D             JSR $6D40
375F   20 39 6E             JSR $6E39
3762   A2 09                LDX #$09
3764   A0 13                LDY #$13
3766   20 C3 2D             JSR L2DC3
3769   4C F4 62             JMP $62F4
376C   A5 97      L376C     LDA $97
376E   D0 0F                BNE L377F
3770   A5 96                LDA $96
3772   C5 9C                CMP $9C
3774   B0 09                BCS L377F
3776   A9 00                LDA #$00
3778   A2 C8                LDX #$C8
377A   A0 A7                LDY #$A7
377C   4C 4F A9             JMP $A94F
377F   A5 99      L377F     LDA $99
3781   D0 08                BNE L378B
3783   A5 98                LDA $98
3785   C5 9C                CMP $9C
3787   B0 02                BCS L378B
3789   85 9C                STA $9C
378B   18         L378B     CLC
378C   A5 9C                LDA $9C
378E   65 9A                ADC $9A
3790   85 9A                STA $9A
3792   90 02                BCC L3796
3794   E6 9B                INC $9B
3796   38         L3796     SEC
3797   A5 96                LDA $96
3799   E5 9C                SBC $9C
379B   85 96                STA $96
379D   B0 02                BCS L37A1
379F   C6 97                DEC $97
37A1   A5 8D      L37A1     LDA $8D
37A3   C9 0F                CMP #$0F
37A5   F0 04                BEQ L37AB
37A7   C9 18                CMP #$18
37A9   D0 0A                BNE L37B5
37AB   A5 9C      L37AB     LDA $9C
37AD   D0 04                BNE L37B3
37AF   A9 FF                LDA #$FF
37B1   85 9C                STA $9C
37B3   80         L37B3     ???                ;10000000
37B4   09 A5                ORA #$A5
37B6   9C                   ???                ;10011100
37B7   D0 03                BNE L37BC
37B9   4C A6 A9             JMP $A9A6
37BC   C6 8D      L37BC     DEC $8D
37BE   C6 8D                DEC $8D
37C0   C6 8D                DEC $8D
37C2   C6 8D                DEC $8D
37C4   80                   ???                ;10000000
37C5   A3                   ???                ;10100011
37C6   C9 08                CMP #$08
37C8   F0 04                BEQ L37CE
37CA   C9 83                CMP #$83
37CC   D0 19                BNE L37E7
37CE   A6 A2      L37CE     LDX $A2
37D0   BC 31 11             LDY $1131,X
37D3   C0 24                CPY #$24
37D5   D0 03                BNE L37DA
37D7   4C E2 A8             JMP $A8E2
37DA   C6 A2      L37DA     DEC $A2
37DC   A5 A2                LDA $A2
37DE   A2 11                LDX #$11
37E0   A0 31                LDY #$31
37E2   20 27 6E             JSR $6E27
37E5   80                   ???                ;10000000
37E6   DD AA BD             CMP $BDAA,X
37E9   00                   BRK
37EA   20 29 02             JSR L0229
37ED   D0 10                BNE L37FF
37EF   8A                   TXA
37F0   A2 02                LDX #$02
37F2   20 36 22             JSR L2236
37F5   AA                   TAX
37F6   BD 00 20             LDA $2000,X
37F9   29 02                AND #$02
37FB   F0 26                BEQ L3823
37FD   86 54                STX $54
37FF   A5 9C      L37FF     LDA $9C
3801   C9 0B                CMP #$0B
3803   90 03                BCC L3808
3805   4C E6 A9             JMP $A9E6
3808   A6 A2      L3808     LDX $A2
380A   BD 31 11             LDA $1131,X
380D   9D 32 11             STA $1132,X
3810   A5 54                LDA $54
3812   9D 31 11             STA $1131,X
3815   E6 A2                INC $A2
3817   9E                   ???                ;10011110
3818   33                   ???                ;00110011 '3'
3819   11 80                ORA ($80),Y
381B   C9 C9                CMP #$C9
381D   08                   PHP
381E   D0 03                BNE L3823
3820   4C 1A 65             JMP $651A
3823   4C FB 62   L3823     JMP $62FB
3826   BC AA BC             LDY $BCAA,X
3829   AA                   TAX
382A   BC AA 0C             LDY $0CAA,X
382D   A8                   TAY
382E   BC AA 54             LDY $54AA,X
3831   A9 88                LDA #$88
3833   A9 C7                LDA #$C7
3835   A9 C7                LDA #$C7
3837   A9 BC                LDA #$BC
3839   AA                   TAX
383A   98                   TYA
383B   A8                   TAY
383C   BC AA 0C             LDY $0CAA,X
383F   A8                   TAY
3840   BC AA 54             LDY $54AA,X
3843   A9 88                LDA #$88
3845   A9 C7                LDA #$C7
3847   A9 C7                LDA #$C7
3849   A9 BC                LDA #$BC
384B   AA                   TAX
384C   BC AA BC             LDY $BCAA,X
384F   AA                   TAX
3850   BC AA C9             LDY $C9AA,X
3853   17                   ???                ;00010111
3854   F0 0E                BEQ L3864
3856   A4 8D                LDY $8D
3858   C0 1D                CPY #$1D
385A   D0 26                BNE L3882
385C   C9 20                CMP #$20
385E   F0 04                BEQ L3864
3860   C9 04                CMP #$04
3862   D0 1E                BNE L3882
3864   A5 96      L3864     LDA $96
3866   05 97                ORA $97
3868   D0 04                BNE L386E
386A   C6 9E                DEC $9E
386C   80                   ???                ;10000000
386D   11 A5                ORA ($A5),Y
386F   98                   TYA
3870   05 99                ORA $99
3872   D0 0B                BNE L387F
3874   20 41 99             JSR $9941
3877   A9 13                LDA #$13
3879   85 99                STA $99
387B   A9 88                LDA #$88
387D   85 98                STA $98
387F   4C F4 62   L387F     JMP $62F4
3882   4C FB 62   L3882     JMP $62FB
3885   A5 10                LDA $10
3887   85 12                STA $12
3889   A5 0F                LDA $0F
388B   85 11                STA $11
388D   A2 09                LDX #$09
388F   A0 53                LDY #$53
3891   A9 11                LDA #$11
3893   85 10                STA $10
3895   A9 22                LDA #$22
3897   85 0F                STA $0F
3899   20 BA 6E             JSR $6EBA
389C   A0 FF                LDY #$FF
389E   C8                   INY
389F   B1 11                LDA ($11),Y
38A1   F0 36                BEQ L38D9
38A3   AE 53 09             LDX $0953
38A6   F0 27                BEQ L38CF
38A8   AA                   TAX
38A9   BD 00 20             LDA $2000,X
38AC   29 20                AND #$20
38AE   D0 11                BNE L38C1
38B0   AD 7C 03             LDA $037C
38B3   C9 02                CMP #$02
38B5   D0 18                BNE L38CF
38B7   98                   TYA
38B8   D0 15                BNE L38CF
38BA   BD 00 20             LDA $2000,X
38BD   29 40                AND #$40
38BF   F0 0E                BEQ L38CF
38C1   BD D0 20   L38C1     LDA $20D0,X
38C4   5A                   ???                ;01011010 'Z'
38C5   A2 09                LDX #$09
38C7   A0 53                LDY #$53
38C9   20 77 6E             JSR $6E77
38CC   B0 03                BCS L38D1
38CE   7A                   ???                ;01111010 'z'
38CF   98         L38CF     TYA
38D0   60                   RTS
38D1   A9 00      L38D1     LDA #$00
38D3   20 27 6E             JSR $6E27
38D6   7A                   ???                ;01111010 'z'
38D7   80                   ???                ;10000000
38D8   C5 C0                CMP $C0
38DA   02                   ???                ;00000010
38DB   90 38                BCC L3915
38DD   A5 A0                LDA $A0
38DF   F0 2D                BEQ L390E
38E1   C4 A0                CPY $A0
38E3   D0 30                BNE L3915
38E5   C6 9F                DEC $9F
38E7   D0 2C                BNE L3915
38E9   A6 12                LDX $12
38EB   A4 11                LDY $11
38ED   A9 11                LDA #$11
38EF   85 10                STA $10
38F1   A9 22                LDA #$22
38F3   85 0F                STA $0F
38F5   20 39 6E             JSR $6E39
38F8   A9 20                LDA #$20
38FA   92                   ???                ;10010010
38FB   0F                   ???                ;00001111
38FC   C8                   INY
38FD   D0 01                BNE L3900
38FF   E8                   INX
3900   A9 09      L3900     LDA #$09
3902   85 10                STA $10
3904   A9 53                LDA #$53
3906   85 0F                STA $0F
3908   20 BA 6E             JSR $6EBA
390B   A9 FF                LDA #$FF
390D   60                   RTS
390E   E6 A1      L390E     INC $A1
3910   98                   TYA
3911   AA                   TAX
3912   FE 13 09             INC $0913,X
3915   A9 FC      L3915     LDA #$FC
3917   60                   RTS
3918   9C                   ???                ;10011100
3919   53                   ???                ;01010011 'S'
391A   09 20                ORA #$20
391C   1D 3D 85             ORA $853D,X
391F   04                   ???                ;00000100
3920   A2 11                LDX #$11
3922   A0 13                LDY #$13
3924   20 CC 60             JSR $60CC
3927   65 04                ADC $04
3929   85 04                STA $04
392B   A2 11                LDX #$11
392D   A0 22                LDY #$22
392F   20 CC 60             JSR $60CC
3932   65 04                ADC $04
3934   85 04                STA $04
3936   A2 11                LDX #$11
3938   A0 31      L3938     LDY #$31
393A   20 CC 60             JSR $60CC
393D   65 04                ADC $04
393F   69 0F                ADC #$0F
3941   48                   PHA
3942   A6 97                LDX $97
3944   A4 96                LDY $96
3946   20 27 60             JSR $6027
3949   A6 99                LDX $99
394B   A4 98                LDY $98
394D   20 27 60             JSR $6027
3950   A6 9B                LDX $9B
3952   A4 9A                LDY $9A
3954   20 27 60             JSR $6027
3957   A5 9C                LDA $9C
3959   20 2D 60             JSR $602D
395C   A5 9D                LDA $9D
395E   20 2D 60             JSR $602D
3961   A5 9E                LDA $9E
3963   20 2D 60             JSR $602D
3966   A5 9F                LDA $9F
3968   20 2D 60             JSR $602D
396B   A5 A0                LDA $A0
396D   20 2D 60             JSR $602D
3970   A5 A1                LDA $A1
3972   20 2D 60             JSR $602D
3975   A5 A2                LDA $A2
3977   20 2D 60             JSR $602D
397A   A5 A3                LDA $A3
397C   20 2D 60             JSR $602D
397F   A5 89                LDA $89
3981   20 2D 60             JSR $602D
3984   68                   PLA
3985   4C 98 60             JMP $6098
3988   64                   ???                ;01100100 'd'
3989   11 A9                ORA ($A9),Y
398B   09 85                ORA #$85
398D   10 A9                BPL L3938
398F   13                   ???                ;00010011
3990   85 0F                STA $0F
3992   20 39 6E             JSR $6E39
3995   A2 09                LDX #$09
3997   A0 13                LDY #$13
3999   A9 20                LDA #$20
399B   20 77 6E             JSR $6E77
399E   90 08                BCC L39A8
39A0   A9 00                LDA #$00
39A2   92                   ???                ;10010010
39A3   0F                   ???                ;00001111
39A4   C8                   INY
39A5   D0 01                BNE L39A8
39A7   E8                   INX
39A8   DA         L39A8     ???                ;11011010
39A9   5A                   ???                ;01011010 'Z'
39AA   A2 09                LDX #$09
39AC   A0 13                LDY #$13
39AE   20 B4 66             JSR $66B4
39B1   90 10                BCC L39C3
39B3   A2 09                LDX #$09
39B5   A0 13                LDY #$13
39B7   20 45 6F   L39B7     JSR $6F45
39BA   00                   BRK
39BB   00                   BRK
39BC   47                   ???                ;01000111 'G'
39BD   94 98                STY $98,X
39BF   65 11                ADC $11
39C1   85 11                STA $11
39C3   7A         L39C3     ???                ;01111010 'z'
39C4   FA                   ???                ;11111010
39C5   D0 C3                BNE L398A
39C7   A5 11                LDA $11
39C9   60                   RTS
39CA   AD 89 02             LDA $0289
39CD   F0 60                BEQ L3A2F
39CF   A2 11                LDX #$11
39D1   A0 13                LDY #$13
39D3   20 FE 5F             JSR $5FFE
39D6   A2 11                LDX #$11
39D8   A0 22                LDY #$22
39DA   20 FE 5F             JSR $5FFE
39DD   A2 11                LDX #$11
39DF   A0 31                LDY #$31
39E1   20 FE 5F             JSR $5FFE
39E4   20 A8 5F             JSR $5FA8
39E7   86 97                STX $97
39E9   84 96                STY $96
39EB   20 A8 5F             JSR $5FA8
39EE   86 99                STX $99
39F0   84 98                STY $98
39F2   20 A8 5F             JSR $5FA8
39F5   86 9B                STX $9B
39F7   84 9A                STY $9A
39F9   20 B2 5F             JSR $5FB2
39FC   85 9C                STA $9C
39FE   20 B2 5F             JSR $5FB2
3A01   85 9D                STA $9D
3A03   20 B2 5F             JSR $5FB2
3A06   85 9E                STA $9E
3A08   20 B2 5F             JSR $5FB2
3A0B   85 9F                STA $9F
3A0D   20 B2 5F             JSR $5FB2
3A10   85 A0                STA $A0
3A12   20 B2 5F             JSR $5FB2
3A15   85 A1                STA $A1
3A17   20 B2 5F             JSR $5FB2
3A1A   85 A2                STA $A2
3A1C   20 B2 5F             JSR $5FB2
3A1F   85 A3                STA $A3
3A21   20 B2 5F             JSR $5FB2
3A24   85 89                STA $89
3A26   9C                   ???                ;10011100
3A27   89                   ???                ;10001001
3A28   02                   ???                ;00000010
3A29   9C                   ???                ;10011100
3A2A   8A                   TXA
3A2B   02                   ???                ;00000010
3A2C   4C F4 62             JMP $62F4
3A2F   1A         L3A2F     ???                ;00011010
3A30   85 9E                STA $9E
3A32   20 92 2F             JSR L2F92
3A35   20 9A 29             JSR L299A
3A38   4C FB 62             JMP $62FB
3A3B   9C                   ???                ;10011100
3A3C   8D 06 9C             STA $9C06
3A3F   D4                   ???                ;11010100
3A40   06 9C                ASL $9C
3A42   D5 06                CMP $06,X
3A44   9C                   ???                ;10011100
3A45   D6 06                DEC $06,X
3A47   4C F4 62             JMP $62F4
3A4A   A0 00                LDY #$00
3A4C   20 A0 2C             JSR L2CA0
3A4F   AE D2 06             LDX $06D2
3A52   BD 8E 06             LDA $068E,X
3A55   48                   PHA
3A56   9E                   ???                ;10011110
3A57   8E 06 A5             STX $A506
3A5A   3F                   ???                ;00111111 '?'
3A5B   E9 04                SBC #$04
3A5D   A8                   TAY
3A5E   A5 40                LDA $40
3A60   E9 00                SBC #$00
3A62   AA                   TAX
3A63   AD D3 06             LDA L06D3
3A66   C9 01                CMP #$01
3A68   D0 16                BNE L3A80
3A6A   DA                   ???                ;11011010
3A6B   5A                   ???                ;01011010 'Z'
3A6C   AC D0 06             LDY $06D0
3A6F   AE D1 06             LDX $06D1
3A72   F0 03                BEQ L3A77
3A74   20 79 31             JSR L3179
3A77   38         L3A77     SEC
3A78   68                   PLA
3A79   E5 37                SBC $37
3A7B   A8                   TAY
3A7C   68                   PLA
3A7D   E5 38                SBC $38
3A7F   AA                   TAX
3A80   A9 06      L3A80     LDA #$06
3A82   85 09                STA $09
3A84   A9 8C                LDA #$8C
3A86   85 08                STA $08
3A88   DA         L3A88     ???                ;11011010
3A89   5A                   ???                ;01011010 'Z'
3A8A   64                   ???                ;01100100 'd'
3A8B   0F                   ???                ;00001111
3A8C   64                   ???                ;01100100 'd'
3A8D   10 A2                BPL L3A31
3A8F   38                   SEC
3A90   A0 5F                LDY #$5F
3A92   20 28 36             JSR L3628
3A95   E6 08                INC $08
3A97   D0 02                BNE L3A9B
3A99   E6 09                INC $09
3A9B   A6 09      L3A9B     LDX $09
3A9D   A4 08                LDY $08
3A9F   20 5B 34             JSR L345B
3AA2   20 8B 35             JSR L358B
3AA5   7A                   ???                ;01111010 'z'
3AA6   FA                   ???                ;11111010
3AA7   CC 51 05             CPY $0551
3AAA   8A                   TXA
3AAB   ED 52 05             SBC $0552
3AAE   90 D8                BCC L3A88
3AB0   68                   PLA
3AB1   AE D2 06             LDX $06D2
3AB4   9D 8E 06             STA $068E,X
3AB7   A6 09                LDX $09
3AB9   A4 08                LDY $08
3ABB   20 79 31             JSR L3179
3ABE   A9 0D                LDA #$0D
3AC0   20 6E 29             JSR L296E
3AC3   4C FB 62             JMP $62FB
3AC6   C9 08                CMP #$08
3AC8   D0 1F                BNE L3AE9
3ACA   AD D2 06             LDA $06D2
3ACD   D0 06                BNE L3AD5
3ACF   9C                   ???                ;10011100
3AD0   8D 06 4C             STA $4C06
3AD3   1A                   ???                ;00011010
3AD4   65 A2                ADC $A2
3AD6   06 A0                ASL $A0
3AD8   8D 20 27             STA $2720
3ADB   6E CE D2             ROR $D2CE
3ADE   06 AE                ASL $AE
3AE0   D2                   ???                ;11010010
3AE1   06 A9                ASL $A9
3AE3   06 9D                ASL $9D
3AE5   8D 06 80             STA $8006
3AE8   38                   SEC
3AE9   C9 82      L3AE9     CMP #$82
3AEB   D0 1D                BNE L3B0A
3AED   AE D2 06             LDX $06D2
3AF0   BD 8E 06             LDA $068E,X
3AF3   D0 05                BNE L3AFA
3AF5   20 B2 A1   L3AF5     JSR $A1B2
3AF8   80                   ???                ;10000000
3AF9   27                   ???                ;00100111 '''
3AFA   9D 8D 06   L3AFA     STA $068D,X
3AFD   EE D2 06             INC $06D2
3B00   A9 06                LDA #$06
3B02   9D 8E 06             STA $068E,X
3B05   80                   ???                ;10000000
3B06   1A                   ???                ;00011010
3B07   4C FB 62   L3B07     JMP $62FB
3B0A   C9 83      L3B0A     CMP #$83
3B0C   D0 F9                BNE L3B07
3B0E   AE D2 06             LDX $06D2
3B11   F0 E2                BEQ L3AF5
3B13   BD 8C 06             LDA $068C,X
3B16   9D 8D 06             STA $068D,X
3B19   A9 06                LDA #$06
3B1B   CE D2 06             DEC $06D2
3B1E   9D 8C 06             STA $068C,X
3B21   4C F4 62             JMP $62F4
3B24   AD CF 06             LDA $06CF
3B27   8D D0 FF             STA $FFD0
3B2A   AD CE 06             LDA $06CE
3B2D   8D CF FF             STA $FFCF
3B30   AD CD 06             LDA $06CD
3B33   8D CE FF             STA $FFCE
3B36   AD CC FF   L3B36     LDA $FFCC
3B39   F0 11                BEQ L3B4C
3B3B   C5 54                CMP $54
3B3D   D0 F7                BNE L3B36
3B3F   A2 06                LDX #$06
3B41   A0 8D                LDY #$8D
3B43   AD D2 06             LDA $06D2
3B46   20 27 6E             JSR $6E27
3B49   4C 1A 65             JMP $651A
3B4C   4C FB 62   L3B4C     JMP $62FB
3B4F   AA                   TAX
3B50   BD 00 20             LDA $2000,X
3B53   29 10                AND #$10
3B55   D0 03                BNE L3B5A
3B57   4C FB 62             JMP $62FB
3B5A   A2 06      L3B5A     LDX #$06
3B5C   A0 8D                LDY #$8D
3B5E   20 45 6F             JSR $6F45
3B61   C0 0F                CPY #$0F
3B63   90 05                BCC L3B6A
3B65   20 B2 A1             JSR $A1B2
3B68   80                   ???                ;10000000
3B69   2F                   ???                ;00101111 '/'
3B6A   A5 54      L3B6A     LDA $54
3B6C   C9 20                CMP #$20
3B6E   D0 0C                BNE L3B7C
3B70   AE D2 06             LDX $06D2
3B73   F0 24                BEQ L3B99
3B75   BD 8C 06             LDA $068C,X
3B78   C9 20                CMP #$20
3B7A   F0 1D                BEQ L3B99
3B7C   8C D2 06   L3B7C     STY $06D2
3B7F   B9 8D 06   L3B7F     LDA $068D,Y
3B82   99 8E 06             STA $068E,Y
3B85   CE D2 06             DEC $06D2
3B88   88                   DEY
3B89   C9 06                CMP #$06
3B8B   D0 F2                BNE L3B7F
3B8D   EE D2 06             INC $06D2
3B90   C8                   INY
3B91   A5 54                LDA $54
3B93   99 8D 06             STA $068D,Y
3B96   EE D2 06             INC $06D2
3B99   4C F4 62   L3B99     JMP $62F4
3B9C   AE D2 06   L3B9C     LDX $06D2
3B9F   BD 8D 06             LDA $068D,X
3BA2   C9 06                CMP #$06
3BA4   D0 08                BNE L3BAE
3BA6   8A                   TXA
3BA7   A2 06                LDX #$06
3BA9   A0 8D                LDY #$8D
3BAB   20 27 6E             JSR $6E27
3BAE   A2 06      L3BAE     LDX #$06
3BB0   A0 8D                LDY #$8D
3BB2   20 CC 60             JSR $60CC
3BB5   4C 98 60             JMP $6098
3BB8   A2 06                LDX #$06
3BBA   A0 8D                LDY #$8D
3BBC   A9 06                LDA #$06
3BBE   20 77 6E             JSR $6E77
3BC1   B0 15                BCS L3BD8
3BC3   A2 06                LDX #$06
3BC5   A0 8D                LDY #$8D
3BC7   20 45 6F             JSR $6F45
3BCA   8D D2 06             STA $06D2
3BCD   AA                   TAX
3BCE   A9 06                LDA #$06
3BD0   9D 8D 06             STA $068D,X
3BD3   9E                   ???                ;10011110
3BD4   8E 06 80             STX $8006
3BD7   03                   ???                ;00000011
3BD8   8D D2 06   L3BD8     STA $06D2
3BDB   AD D3 06             LDA L06D3
3BDE   C9 02                CMP #$02
3BE0   D0 64                BNE L3C46
3BE2   20 9A 29             JSR L299A
3BE5   AC D0 06             LDY $06D0
3BE8   AE D1 06             LDX $06D1
3BEB   F0 03                BEQ L3BF0
3BED   20 9E 32             JSR L329E
3BF0   38         L3BF0     SEC
3BF1   A5 41                LDA $41
3BF3   E5 39                SBC $39
3BF5   90 40                BCC L3C37
3BF7   E5 53                SBC $53
3BF9   90 3C                BCC L3C37
3BFB   E9 04                SBC #$04
3BFD   90 38                BCC L3C37
3BFF   4A                   LSR A
3C00   A8                   TAY
3C01   A2 00                LDX #$00
3C03   20 A2 2C             JSR L2CA2
3C06   18                   CLC
3C07   A5 53                LDA $53
3C09   69 04                ADC #$04
3C0B   85 0F                STA $0F
3C0D   64                   ???                ;01100100 'd'
3C0E   10 A6                BPL L3BB6
3C10   40                   RTI
3C11   A4 3F                LDY $3F
3C13   A9 10                LDA #$10
3C15   20 B1 32             JSR L32B1
3C18   E6 3B                INC $3B
3C1A   D0 02                BNE L3C1E
3C1C   E6 3C                INC $3C
3C1E   E6 3D      L3C1E     INC L003D
3C20   D0 02                BNE L3C24
3C22   E6 3E                INC $3E
3C24   A5 3F      L3C24     LDA $3F
3C26   D0 02                BNE L3C2A
3C28   C6 40                DEC $40
3C2A   C6 3F      L3C2A     DEC $3F
3C2C   A5 41                LDA $41
3C2E   D0 02                BNE L3C32
3C30   C6 42                DEC $42
3C32   C6 41      L3C32     DEC $41
3C34   4C BE 2F             JMP L2FBE
3C37   A5 53      L3C37     LDA $53
3C39   85 0F                STA $0F
3C3B   64                   ???                ;01100100 'd'
3C3C   10 A6                BPL L3BE4
3C3E   40                   RTI
3C3F   A4 3F                LDY $3F
3C41   A9 00                LDA #$00
3C43   20 B1 32             JSR L32B1
3C46   A9 02      L3C46     LDA #$02
3C48   F0 03                BEQ L3C4D
3C4A   4C B7 39             JMP L39B7
3C4D   60         L3C4D     RTS
3C4E   8E E1 08             STX $08E1
3C51   8C E0 08             STY $08E0
3C54   AD 89 02             LDA $0289
3C57   F0 0E                BEQ L3C67
3C59   A2 06                LDX #$06
3C5B   A0 8D                LDY #$8D
3C5D   20 FE 5F             JSR $5FFE
3C60   A9 01                LDA #$01
3C62   85 54                STA $54
3C64   4C 1A 65             JMP $651A
3C67   20 58 AE   L3C67     JSR $AE58
3C6A   4C FB 62             JMP $62FB
3C6D   C9 0A                CMP #$0A
3C6F   F0 03                BEQ L3C74
3C71   4C FB 62             JMP $62FB
3C74   A6 59      L3C74     LDX $59
3C76   BD 1F AF             LDA $AF1F,X
3C79   8D 83 02             STA $0283
3C7C   4C 1A 65             JMP $651A
3C7F   01 02                ORA ($02,X)
3C81   03                   ???                ;00000011
3C82   05 00                ORA $00
3C84   A9 02                LDA #$02
3C86   8D 83 02             STA $0283
3C89   60                   RTS
3C8A   A2 FF                LDX #$FF
3C8C   DA                   ???                ;11011010
3C8D   FA                   ???                ;11111010
3C8E   E8                   INX
3C8F   BD 1F AF             LDA $AF1F,X
3C92   F0 42                BEQ L3CD6
3C94   DA                   ???                ;11011010
3C95   48                   PHA
3C96   20 40 6D             JSR $6D40
3C99   A9 08                LDA #$08
3C9B   85 10                STA $10
3C9D   A9 FA                LDA #$FA
3C9F   85 0F                STA $0F
3CA1   20 39 6E             JSR $6E39
3CA4   68                   PLA
3CA5   48                   PHA
3CA6   3A                   ???                ;00111010 ':'
3CA7   D0 08                BNE L3CB1
3CA9   A9 00                LDA #$00
3CAB   A2 C4                LDX #$C4
3CAD   A0 3C                LDY #$3C
3CAF   80         L3CAF     ???                ;10000000
3CB0   06 A9                ASL $A9
3CB2   00                   BRK
3CB3   A2 C4                LDX #$C4
3CB5   A0 44                LDY #$44
3CB7   20 BE A1             JSR $A1BE
3CBA   20 39 6E             JSR $6E39
3CBD   A9 87                LDA #$87
3CBF   FA                   ???                ;11111010
3CC0   EC 83 02             CPX $0283
3CC3   D0 08                BNE L3CCD
3CC5   FA                   ???                ;11111010
3CC6   DA                   ???                ;11011010
3CC7   86 59                STX $59
3CC9   64                   ???                ;01100100 'd'
3CCA   5A                   ???                ;01011010 'Z'
3CCB   A9 86                LDA #$86
3CCD   A2 08      L3CCD     LDX #$08
3CCF   A0 FA                LDY #$FA
3CD1   20 9E 59             JSR $599E
3CD4   80                   ???                ;10000000
3CD5   B7                   ???                ;10110111
3CD6   A2 00      L3CD6     LDX #$00
3CD8   A0 00                LDY #$00
3CDA   60                   RTS
3CDB   20 9A 29             JSR L299A
3CDE   64                   ???                ;01100100 'd'
3CDF   89                   ???                ;10001001
3CE0   64                   ???                ;01100100 'd'
3CE1   86 64                STX L0064
3CE3   87                   ???                ;10000111
3CE4   64                   ???                ;01100100 'd'
3CE5   88                   DEY
3CE6   9C                   ???                ;10011100
3CE7   53                   ???                ;01010011 'S'
3CE8   09 A9                ORA #$A9
3CEA   04                   ???                ;00000100
3CEB   85 8D                STA $8D
3CED   A9 7A                LDA #$7A
3CEF   A2 1A                LDX #$1A
3CF1   9E                   ???                ;10011110
3CF2   13                   ???                ;00010011
3CF3   11 86                ORA ($86),Y
3CF5   96 9D                STX $9D,Y
3CF7   12                   ???                ;00010010
3CF8   11 3A                ORA ($3A),Y
3CFA   CA                   DEX
3CFB   D0 F9                BNE L3CF6
3CFD   A5 98                LDA $98
3CFF   85 97                STA $97
3D01   49 01                EOR #$01
3D03   85 98                STA $98
3D05   A5 40                LDA $40
3D07   85 9A                STA $9A
3D09   A5 3F                LDA $3F
3D0B   85 99                STA $99
3D0D   A9 20                LDA #$20
3D0F   20 77 B0             JSR $B077
3D12   4C FB 62             JMP $62FB
3D15   05 02                ORA $02
3D17   00                   BRK
3D18   FE FB A9             INC $A9FB,X
3D1B   FB                   ???                ;11111011
3D1C   A6 8D                LDX $8D
3D1E   E0 07                CPX #$07
3D20   F0 06                BEQ L3D28
3D22   AE 7B 03             LDX $037B
3D25   BD B5 AF             LDA $AFB5,X
3D28   48         L3D28     PHA
3D29   A5 96                LDA $96
3D2B   20 3B 61             JSR $613B
3D2E   48                   PHA
3D2F   AA                   TAX
3D30   BD 13 11             LDA $1113,X
3D33   A6 89                LDX $89
3D35   9D 53 09             STA $0953,X
3D38   9E                   ???                ;10011110
3D39   54                   ???                ;01010100 'T'
3D3A   09 A2                ORA #$A2
3D3C   09 A0                ORA #$A0
3D3E   53                   ???                ;01010011 'S'
3D3F   20 B4 66             JSR $66B4
3D42   FA                   ???                ;11111010
3D43   68                   PLA
3D44   F0 0C                BEQ L3D52
3D46   30 05                BMI L3D4D
3D48   90 08                BCC L3D52
3D4A   3A                   ???                ;00111010 ':'
3D4B   80                   ???                ;10000000
3D4C   03                   ???                ;00000011
3D4D   B0 03      L3D4D     BCS L3D52
3D4F   1A                   ???                ;00011010
3D50   D0 D6                BNE L3D28
3D52   BD 13 11   L3D52     LDA $1113,X
3D55   20 B4 B1             JSR $B1B4
3D58   C9 05                CMP #$05
3D5A   D0 03      L3D5A     BNE L3D5F
3D5C   A9 06                LDA #$06
3D5E   60                   RTS
3D5F   C9 06      L3D5F     CMP #$06
3D61   D0 02                BNE L3D65
3D63   A9 05                LDA #$05
3D65   60         L3D65     RTS
3D66   20 BE 2F             JSR L2FBE
3D69   A5 89                LDA $89
3D6B   D0 08                BNE L3D75
3D6D   A9 00                LDA #$00
3D6F   A2 C8                LDX #$C8
3D71   A0 EA                LDY #$EA
3D73   80                   ???                ;10000000
3D74   12                   ???                ;00010010
3D75   C9 03      L3D75     CMP #$03
3D77   B0 08                BCS L3D81
3D79   A9 00                LDA #$00
3D7B   A2 C9                LDX #$C9
3D7D   A0 00                LDY #$00
3D7F   80                   ???                ;10000000
3D80   06 A9                ASL $A9
3D82   00                   BRK
3D83   A2 C9                LDX #$C9
3D85   A0 19                LDY #$19
3D87   20 FC A1             JSR $A1FC
3D8A   38                   SEC
3D8B   A5 89                LDA $89
3D8D   29 01                AND #$01
3D8F   F0 06                BEQ L3D97
3D91   A5 3F                LDA $3F
3D93   E9 07                SBC #$07
3D95   80                   ???                ;10000000
3D96   04                   ???                ;00000100
3D97   A5 3F      L3D97     LDA $3F
3D99   E9 0D                SBC #$0D
3D9B   85 0F                STA $0F
3D9D   A5 40                LDA $40
3D9F   E9 00                SBC #$00
3DA1   85 10                STA $10
3DA3   A5 41                LDA $41
3DA5   E9 0E                SBC #$0E
3DA7   85 11                STA $11
3DA9   A5 42                LDA $42
3DAB   E9 00                SBC #$00
3DAD   85 12                STA $12
3DAF   A0 5F                LDY #$5F
3DB1   A9 03                LDA #$03
3DB3   20 72 B0             JSR $B072
3DB6   A5 9A                LDA $9A
3DB8   85 10                STA $10
3DBA   A5 99                LDA $99
3DBC   85 0F                STA $0F
3DBE   29 01                AND #$01
3DC0   49 21                EOR #$21
3DC2   A8                   TAY
3DC3   38                   SEC
3DC4   A5 41                LDA $41
3DC6   E9 10                SBC #$10
3DC8   85 11                STA $11
3DCA   A5 42                LDA $42
3DCC   E9 00                SBC #$00
3DCE   85 12                STA $12
3DD0   A9 06                LDA #$06
3DD2   A2 00                LDX #$00
3DD4   4C D6 26             JMP L26D6
3DD7   AA                   TAX
3DD8   D0 0D                BNE L3DE7
3DDA   A5 8D                LDA $8D
3DDC   C9 04                CMP #$04
3DDE   D0 07                BNE L3DE7
3DE0   A5 3F                LDA $3F
3DE2   E5 99                SBC $99
3DE4   29 0F                AND #$0F
3DE6   AA                   TAX
3DE7   86 9B      L3DE7     STX $9B
3DE9   E6 2A                INC $2A
3DEB   A9 06                LDA #$06
3DED   20 76 3A             JSR L3A76
3DF0   A5 41                LDA $41
3DF2   E9 10                SBC #$10
3DF4   85 0F                STA $0F
3DF6   A5 42                LDA $42
3DF8   E9 00                SBC #$00
3DFA   85 10                STA $10
3DFC   A6 9A                LDX $9A
3DFE   A4 99                LDY $99
3E00   20 04 2E             JSR L2E04
3E03   18                   CLC
3E04   A5 99                LDA $99
3E06   29 01                AND #$01
3E08   69 20                ADC #$20
3E0A   20 6E 29             JSR L296E
3E0D   A5 99                LDA $99
3E0F   69 0F                ADC #$0F
3E11   85 9C                STA $9C
3E13   A5 9A                LDA $9A
3E15   69 00                ADC #$00
3E17   85 9D                STA $9D
3E19   A5 9C                LDA $9C
3E1B   C5 3F                CMP $3F
3E1D   A5 9D                LDA $9D
3E1F   E5 40                SBC $40
3E21   B0 65                BCS L3E88
3E23   64                   ???                ;01100100 'd'
3E24   9E                   ???                ;10011110
3E25   A5 8D      L3E25     LDA $8D
3E27   C9 07                CMP #$07
3E29   D0 06                BNE L3E31
3E2B   A5 9E                LDA $9E
3E2D   C5 89                CMP $89
3E2F   F0 57                BEQ L3E88
3E31   A9 06      L3E31     LDA #$06
3E33   20 76 3A             JSR L3A76
3E36   64                   ???                ;01100100 'd'
3E37   34                   ???                ;00110100 '4'
3E38   A5 41                LDA $41
3E3A   E9 10                SBC #$10
3E3C   85 0F                STA $0F
3E3E   A5 42                LDA $42
3E40   E9 00                SBC #$00
3E42   85 10                STA $10
3E44   A6 9D                LDX $9D
3E46   A4 9C                LDY $9C
3E48   20 04 2E             JSR L2E04
3E4B   A9 22                LDA #$22
3E4D   20 6E 29             JSR L296E
3E50   A9 03                LDA #$03
3E52   20 B7 39             JSR L39B7
3E55   64                   ???                ;01100100 'd'
3E56   34                   ???                ;00110100 '4'
3E57   A5 9E                LDA $9E
3E59   C5 89                CMP $89
3E5B   B0 0C                BCS L3E69
3E5D   A2 F2                LDX #$F2
3E5F   A0 02                LDY #$02
3E61   20 A2 2C             JSR L2CA2
3E64   A6 9E                LDX $9E
3E66   20 54 B1             JSR $B154
3E69   E6 9E      L3E69     INC $9E
3E6B   A6 9E                LDX $9E
3E6D   E4 89                CPX $89
3E6F   B0 03                BCS L3E74
3E71   20 54 B1             JSR $B154
3E74   A5 9C      L3E74     LDA $9C
3E76   69 0F                ADC #$0F
3E78   85 9C                STA $9C
3E7A   A5 9D                LDA $9D
3E7C   69 00                ADC #$00
3E7E   85 9D                STA $9D
3E80   A5 9E                LDA $9E
3E82   C5 89                CMP $89
3E84   E6 9E                INC $9E
3E86   90 9D                BCC L3E25
3E88   A9 03      L3E88     LDA #$03
3E8A   20 B7 39             JSR L39B7
3E8D   64                   ???                ;01100100 'd'
3E8E   2A                   ROL A
3E8F   A2 00                LDX #$00
3E91   A0 1E                LDY #$1E
3E93   20 D2 4D             JSR $4DD2
3E96   90 06                BCC L3E9E
3E98   A5 8D                LDA $8D
3E9A   C9 07                CMP #$07
3E9C   F0 15                BEQ L3EB3
3E9E   C6 9B      L3E9E     DEC $9B
3EA0   30 11                BMI L3EB3
3EA2   A5 99                LDA $99
3EA4   05 9A                ORA $9A
3EA6   F0 0B                BEQ L3EB3
3EA8   A5 99                LDA $99
3EAA   D0 02                BNE L3EAE
3EAC   C6 9A                DEC $9A
3EAE   C6 99      L3EAE     DEC $99
3EB0   4C 89 B0             JMP $B089
3EB3   60         L3EB3     RTS
3EB4   BC 53 09             LDY $0953,X
3EB7   B9 D0 20             LDA $20D0,Y
3EBA   AA                   TAX
3EBB   BD 00 20             LDA $2000,X
3EBE   29 20                AND #$20
3EC0   F0 04                BEQ L3EC6
3EC2   8A                   TXA
3EC3   29 DF                AND #$DF
3EC5   AA                   TAX
3EC6   8A         L3EC6     TXA
3EC7   4C 6E 29             JMP L296E
3ECA   20 C0 26             JSR L26C0
3ECD   A9 00                LDA #$00
3ECF   20 77 B0             JSR $B077
3ED2   A5 8D                LDA $8D
3ED4   C9 04                CMP #$04
3ED6   D0 0C                BNE L3EE4
3ED8   A5 97                LDA $97
3EDA   C9 00                CMP #$00
3EDC   D0 33                BNE L3F11
3EDE   20 06 B0             JSR $B006
3EE1   4C FB 62             JMP $62FB
3EE4   C9 07      L3EE4     CMP #$07
3EE6   D0 29                BNE L3F11
3EE8   20 BE 2F             JSR L2FBE
3EEB   A5 41                LDA $41
3EED   C9 20                CMP #$20
3EEF   A5 42                LDA $42
3EF1   E9 00                SBC #$00
3EF3   90 11                BCC L3F06
3EF5   A9 00                LDA #$00
3EF7   09 00                ORA #$00
3EF9   09 00                ORA #$00
3EFB   F0 09                BEQ L3F06
3EFD   A9 00                LDA #$00
3EFF   A2 00                LDX #$00
3F01   A0 00                LDY #$00
3F03   20 FC A1             JSR $A1FC
3F06   A9 00      L3F06     LDA #$00
3F08   A2 C5                LDX #$C5
3F0A   A0 77                LDY #$77
3F0C   20 FC A1             JSR $A1FC
3F0F   80                   ???                ;10000000
3F10   D0 4C                BNE L3F5E
3F12   F4                   ???                ;11110100
3F13   62                   ???                ;01100010 'b'
3F14   48                   PHA
3F15   A2 11                LDX #$11
3F17   A0 13                LDY #$13
3F19   20 77 6E             JSR $6E77
3F1C   68                   PLA
3F1D   B0 03                BCS L3F22
3F1F   A9 06                LDA #$06
3F21   60                   RTS
3F22   A6 89      L3F22     LDX $89
3F24   E6 89                INC $89
3F26   9D 53 09             STA $0953,X
3F29   9E                   ???                ;10011110
3F2A   54                   ???                ;01010100 'T'
3F2B   09 E0                ORA #$E0
3F2D   03                   ???                ;00000011
3F2E   90 0C                BCC L3F3C
3F30   A2 09                LDX #$09
3F32   A0 53                LDY #$53
3F34   20 B4 66             JSR $66B4
3F37   90 03                BCC L3F3C
3F39   A9 05                LDA #$05
3F3B   60                   RTS
3F3C   A5 89      L3F3C     LDA $89
3F3E   29 01                AND #$01
3F40   D0 05                BNE L3F47
3F42   A9 10                LDA #$10
3F44   20 77 B0             JSR $B077
3F47   64         L3F47     ???                ;01100100 'd'
3F48   96 9C                STX $9C,Y
3F4A   13                   ???                ;00010011
3F4B   11 A2                ORA ($A2),Y
3F4D   B3                   ???                ;10110011
3F4E   A0 0A                LDY #$0A
3F50   20 AC 67             JSR $67AC
3F53   A9 04                LDA #$04
3F55   60                   RTS
3F56   A8                   TAY
3F57   A5 8D                LDA $8D
3F59   0A                   ASL A
3F5A   AA                   TAX
3F5B   7C                   ???                ;01111100 '|'
3F5C   FA                   ???                ;11111010
3F5D   B2                   ???                ;10110010
3F5E   A5 97      L3F5E     LDA $97
3F60   F0 03                BEQ L3F65
3F62   4C B5 B2             JMP $B2B5
3F65   B9 00 20   L3F65     LDA $2000,Y
3F68   29 20                AND #$20
3F6A   F0 53                BEQ L3FBF
3F6C   38                   SEC
3F6D   A5 41                LDA $41
3F6F   E9 0E                SBC #$0E
3F71   85 0F                STA $0F
3F73   A5 42                LDA $42
3F75   E9 00                SBC #$00
3F77   85 10                STA $10
3F79   A5 3F                LDA $3F
3F7B   E9 0D                SBC #$0D
3F7D   A8                   TAY
3F7E   A5 40                LDA $40
3F80   E9 00                SBC #$00
3F82   AA                   TAX
3F83   20 04 2E             JSR L2E04
3F86   A5 89                LDA $89
3F88   29 01                AND #$01
3F8A   F0 07                BEQ L3F93
3F8C   A2 06                LDX #$06
3F8E   A0 00                LDY #$00
3F90   20 A2 2C             JSR L2CA2
3F93   A6 54      L3F93     LDX $54
3F95   BD 00 20             LDA $2000,X
3F98   29 20                AND #$20
3F9A   F0 04                BEQ L3FA0
3F9C   8A                   TXA
3F9D   29 DF                AND #$DF
3F9F   AA                   TAX
3FA0   8A         L3FA0     TXA
3FA1   20 6E 29             JSR L296E
3FA4   A5 54                LDA $54
3FA6   20 B4 B1             JSR $B1B4
3FA9   85 8D                STA $8D
3FAB   C9 06                CMP #$06
3FAD   D0 0C                BNE L3FBB
3FAF   A9 00                LDA #$00
3FB1   A2 C5                LDX #$C5
3FB3   A0 47                LDY #$47
3FB5   20 B8 A1             JSR $A1B8
3FB8   20 B4 3C             JSR L3CB4
3FBB   E6 97      L3FBB     INC $97
3FBD   80                   ???                ;10000000
3FBE   49 C0                EOR #$C0
3FC0   08                   PHP
3FC1   D0 03                BNE L3FC6
3FC3   4C 1A 65             JMP $651A
3FC6   C0 3F      L3FC6     CPY #$3F
3FC8   D0 06                BNE L3FD0
3FCA   A9 06                LDA #$06
3FCC   85 8D                STA $8D
3FCE   80                   ???                ;10000000
3FCF   38                   SEC
3FD0   C0 2A      L3FD0     CPY #$2A
3FD2   D0 3E                BNE L4012
3FD4   E6 8F                INC $8F
3FD6   A5 96                LDA $96
3FD8   C9 1A                CMP #$1A
3FDA   B0 2E                BCS L400A
3FDC   A9 00                LDA #$00
3FDE   A2 C9                LDX #$C9
3FE0   A0 32                LDY #$32
3FE2   20 BE A1             JSR $A1BE
3FE5   A9 09                LDA #$09
3FE7   85 10                STA $10
3FE9   A9 13                LDA #$13
3FEB   85 0F                STA $0F
3FED   20 39 6E             JSR $6E39
3FF0   A2 11                LDX #$11
3FF2   A0 13                LDY #$13
3FF4   20 39 6E             JSR $6E39
3FF7   A2 09                LDX #$09
3FF9   A0 13                LDY #$13
3FFB   20 90 2D             JSR L2D90
3FFE   A2 07                LDX #$07
4000   A0 A0                LDY #$A0
4002   20 D2 4D             JSR $4DD2
4005   20 E5 2F             JSR L2FE5
4008   80                   ???                ;10000000
4009   55 A9                EOR $A9,X
400B   00                   BRK
400C   A2 C9                LDX #$C9
400E   A0 3C                LDY #$3C
4010   80                   ???                ;10000000
4011   4D 4C FB             EOR $FB4C
4014   62                   ???                ;01100010 'b'
4015   20 BA AF             JSR $AFBA
4018   85 8D                STA $8D
401A   C9 06                CMP #$06
401C   D0 15                BNE L4033
401E   A9 07                LDA #$07
4020   85 8D                STA $8D
4022   A9 00                LDA #$00
4024   20 77 B0             JSR $B077
4027   A9 00                LDA #$00
4029   A2 C9                LDX #$C9
402B   A0 4C                LDY #$4C
402D   20 B8 A1             JSR $A1B8
4030   20 AF 3C             JSR L3CAF
4033   64         L4033     ???                ;01100100 'd'
4034   97                   ???                ;10010111
4035   80                   ???                ;10000000
4036   28                   PLP
4037   20 06 41             JSR L4106
403A   A9 07                LDA #$07
403C   85 8D                STA $8D
403E   20 BE 2F             JSR L2FBE
4041   A9 00                LDA #$00
4043   A2 C5                LDX #$C5
4045   A0 77                LDY #$77
4047   20 FC A1             JSR $A1FC
404A   A9 7F                LDA #$7F
404C   20 77 B0             JSR $B077
404F   80                   ???                ;10000000
4050   0E 20 AF             ASL $AF20
4053   3C                   ???                ;00111100 '<'
4054   A9 07                LDA #$07
4056   85 8D                STA $8D
4058   20 BA AF   L4058     JSR $AFBA
405B   C9 04                CMP #$04
405D   F0 F9                BEQ L4058
405F   4C F4 62             JMP $62F4
4062   FE B1 D7             INC $D7B1,X
4065   B2                   ???                ;10110010
4066   F1 B2                SBC ($B2),Y
4068   B2                   ???                ;10110010
4069   B2                   ???                ;10110010
406A   64                   ???                ;01100100 'd'
406B   71 A0                ADC ($A0),Y
406D   FF                   ???                ;11111111
406E   C8         L406E     INY
406F   B9 53 09             LDA $0953,Y
4072   F0 0F                BEQ L4083
4074   B1 0F                LDA ($0F),Y
4076   AA                   TAX
4077   BD D0 20             LDA $20D0,X
407A   F0 05                BEQ L4081
407C   D9 53 09             CMP $0953,Y
407F   F0 ED                BEQ L406E
4081   98         L4081     TYA
4082   60                   RTS
4083   B1 0F      L4083     LDA ($0F),Y
4085   F0 09                BEQ L4090
4087   AA                   TAX
4088   BD D0 20             LDA $20D0,X
408B   F0 F4                BEQ L4081
408D   C8                   INY
408E   80                   ???                ;10000000
408F   F3                   ???                ;11110011
4090   C0 04      L4090     CPY #$04
4092   B0 03                BCS L4097
4094   A9 FC                LDA #$FC
4096   60                   RTS
4097   A4 89      L4097     LDY $89
4099   B1 0F                LDA ($0F),Y
409B   AA                   TAX
409C   BD D0 20             LDA $20D0,X
409F   48                   PHA
40A0   A2 11                LDX #$11
40A2   A0 13                LDY #$13
40A4   20 77 6E             JSR $6E77
40A7   68                   PLA
40A8   B0 0A                BCS L40B4
40AA   A6 96                LDX $96
40AC   E6 96                INC $96
40AE   9D 13 11             STA $1113,X
40B1   9E                   ???                ;10011110
40B2   14                   ???                ;00010100
40B3   11 A5                ORA ($A5),Y
40B5   89                   ???                ;10001001
40B6   60                   RTS
40B7   20 1D 3D             JSR L3D1D
40BA   85 04                STA $04
40BC   A6 9A                LDX $9A
40BE   A4 99                LDY $99
40C0   20 27 60             JSR $6027
40C3   A5 98                LDA $98
40C5   20 2D 60             JSR $602D
40C8   A5 97                LDA $97
40CA   20 2D 60             JSR $602D
40CD   A2 11                LDX #$11
40CF   A0 13                LDY #$13
40D1   20 CC 60             JSR $60CC
40D4   65 04                ADC $04
40D6   69 04                ADC #$04
40D8   4C 98 60             JMP $6098
40DB   AD 89 02             LDA $0289
40DE   F0 26                BEQ L4106
40E0   20 A8 5F             JSR $5FA8
40E3   86 9A                STX $9A
40E5   84 99                STY $99
40E7   20 B2 5F             JSR $5FB2
40EA   85 98                STA $98
40EC   20 B2 5F             JSR $5FB2
40EF   85 97                STA $97
40F1   A2 11                LDX #$11
40F3   A0 13                LDY #$13
40F5   20 FE 5F             JSR $5FFE
40F8   85 96                STA $96
40FA   20 9A 29             JSR L299A
40FD   9C                   ???                ;10011100
40FE   89                   ???                ;10001001
40FF   02                   ???                ;00000010
4100   9C                   ???                ;10011100
4101   8A                   TXA
4102   02                   ???                ;00000010
4103   4C F4 62             JMP $62F4
4106   64         L4106     ???                ;01100100 'd'
4107   98                   TYA
4108   A9 00                LDA #$00
410A   A2 C9                LDX #$C9
410C   A0 5D                LDY #$5D
410E   20 B8 A1   L410E     JSR $A1B8
4111   4C FB 62             JMP $62FB
4114   C9 0A                CMP #$0A
4116   D0 17                BNE L412F
4118   20 0E 65             JSR $650E
411B   A9 00                LDA #$00
411D   8D E4 08             STA $08E4
4120   A9 CA                LDA #$CA
4122   8D E3 08             STA $08E3
4125   A9 03                LDA #$03
4127   8D E2 08             STA $08E2
412A   A2 00                LDX #$00
412C   A0 1B                LDY #$1B
412E   60                   RTS
412F   4C FB 62   L412F     JMP $62FB
4132   2C 00 02             BIT $0200
4135   10 29                BPL L4160
4137   20 A2 74             JSR $74A2
413A   3A                   ???                ;00111010 ':'
413B   D0 23                BNE L4160
413D   9C                   ???                ;10011100
413E   D0 FF                BNE L413F
4140   9C                   ???                ;10011100
4141   CF                   ???                ;11001111
4142   FF                   ???                ;11111111
4143   A9 0D                LDA #$0D
4145   8D CE FF             STA $FFCE
4148   AC CC FF             LDY $FFCC
414B   AD 64 02             LDA $0264
414E   29 F9                AND #$F9
4150   C0 04                CPY #$04
4152   90 06                BCC L415A
4154   F0 02                BEQ L4158
4156   09 02                ORA #$02
4158   09 04      L4158     ORA #$04
415A   8D 64 02   L415A     STA $0264
415D   8D CA FF             STA $FFCA
4160   00         L4160     BRK
4161   00                   BRK
4162   99 82 60             STA $6082,Y
4165   20 DE 7B             JSR $7BDE
4168   8D D9 FF             STA $FFD9
416B   8E D8 FF             STX $FFD8
416E   9C                   ???                ;10011100
416F   DB                   ???                ;11011011
4170   FF                   ???                ;11111111
4171   A5 0F                LDA $0F
4173   8D DC FF             STA $FFDC
4176   EA                   NOP
4177   EA                   NOP
4178   EA                   NOP
4179   EA                   NOP
417A   EA                   NOP
417B   AE D9 FF             LDX $FFD9
417E   DA                   ???                ;11011010
417F   AE D8 FF             LDX $FFD8
4182   DA                   ???                ;11011010
4183   AE DA FF             LDX $FFDA
4186   8E D9 FF             STX $FFD9
4189   8C D8 FF             STY $FFD8
418C   9C                   ???                ;10011100
418D   DB                   ???                ;11011011
418E   FF                   ???                ;11111111
418F   8D DC FF             STA $FFDC
4192   EA                   NOP
4193   EA                   NOP
4194   EA                   NOP
4195   EA                   NOP
4196   18                   CLC
4197   AD DA FF             LDA $FFDA
419A   85 0F                STA $0F
419C   AC D8 FF             LDY $FFD8
419F   68                   PLA
41A0   6D D9 FF             ADC $FFD9
41A3   AA                   TAX
41A4   68                   PLA
41A5   69 00                ADC #$00
41A7   38                   SEC
41A8   20 E6 7B             JSR $7BE6
41AB   60                   RTS
                            .END

;auto-generated symbols and labels
 L1009      $1009
 L1034      $1034
 L1053      $1053
 L1097      $1097
 L1100      $1100
 L1146      $1146
 L1202      $1202
 L1230      $1230
 L1249      $1249
 L1250      $1250
 L1262      $1262
 L1265      $1265
 L1279      $1279
 L1313      $1313
 L1316      $1316
 L1342      $1342
 L1428      $1428
 L1432      $1432
 L1483      $1483
 L1486      $1486
 L1500      $1500
 L1535      $1535
 L1552      $1552
 L1579      $1579
 L1591      $1591
 L1613      $1613
 L1677      $1677
 L1703      $1703
 L1713      $1713
 L1727      $1727
 L1742      $1742
 L1762      $1762
 L1774      $1774
 L1803      $1803
 L1808      $1808
 L1828      $1828
 L1835      $1835
 L1838      $1838
 L1843      $1843
 L1930      $1930
 L1940      $1940
 L1976      $1976
 L2002      $2002
 L2005      $2005
 L2019      $2019
 L2058      $2058
 L2071      $2071
 L2074      $2074
 L2088      $2088
 L2091      $2091
 L2105      $2105
 L2107      $2107
 L2142      $2142
 L2236      $2236
 L2285      $2285
 L2298      $2298
 L2304      $2304
 L2341      $2341
 L2363      $2363
 L2371      $2371
 L2375      $2375
 L2380      $2380
 L2388      $2388
 L2417      $2417
 L2425      $2425
 L2436      $2436
 L2447      $2447
 L2460      $2460
 L2463      $2463
 L2503      $2503
 L2519      $2519
 L2536      $2536
 L2560      $2560
 L2594      $2594
 L2635      $2635
 L2650      $2650
 L2658      $2658
 L2689      $2689
 L2722      $2722
 L2742      $2742
 L2751      $2751
 L2839      $2839
 L2901      $2901
 L2908      $2908
 L2930      $2930
 L2941      $2941
 L2944      $2944
 L2999      $2999
 L3025      $3025
 L3057      $3057
 L3062      $3062
 L3081      $3081
 L3096      $3096
 L3117      $3117
 L3122      $3122
 L3166      $3166
 L3179      $3179
 L3191      $3191
 L3204      $3204
 L3247      $3247
 L3258      $3258
 L3274      $3274
 L3305      $3305
 L3313      $3313
 L3319      $3319
 L3325      $3325
 L3332      $3332
 L3334      $3334
 L3343      $3343
 L3386      $3386
 L3388      $3388
 L3402      $3402
 L3415      $3415
 L3419      $3419
 L3430      $3430
 L3444      $3444
 L3452      $3452
 L3458      $3458
 L3523      $3523
 L3557      $3557
 L3560      $3560
 L3582      $3582
 L3600      $3600
 L3616      $3616
 L3628      $3628
 L3633      $3633
 L3649      $3649
 L3675      $3675
 L3680      $3680
 L3702      $3702
 L3720      $3720
 L3734      $3734
 L3742      $3742
 L3796      $3796
 L3808      $3808
 L3823      $3823
 L3864      $3864
 L3882      $3882
 L3900      $3900
 L3915      $3915
 L3938      $3938
 L4012      $4012
 L4026      $4026
 L4033      $4033
 L4058      $4058
 L4081      $4081
 L4083      $4083
 L4090      $4090
 L4097      $4097
 L4106      $4106
 L4158      $4158
 L4160      $4160
 L000A        $0A
 L0035        $35
 L003D        $3D
 L0057        $57
 L005F        $5F
 L0064        $64
 L0076        $76
 L00B9        $B9
 L00C7        $C7
 L0069        $69
 L00BD        $BD
 L0106      $0106
 L0119      $0119
 L0146      $0146
 L0169      $0169
 L0175      $0175
 L000C        $0C
 L019D      $019D
 L012F      $012F
 L01D0      $01D0
 L01C0      $01C0
 L01EF      $01EF
 L020E      $020E
 L0245      $0245
 L01F3      $01F3
 L0276      $0276
 L0290      $0290
 L02B6      $02B6
 L02E0      $02E0
 L0302      $0302
 L031C      $031C
 L032F      $032F
 L0340      $0340
 L0342      $0342
 L034C      $034C
 L036C      $036C
 L03A5      $03A5
 L03BC      $03BC
 L03BB      $03BB
 L03E7      $03E7
 L03D2      $03D2
 L040C      $040C
 L0405      $0405
 L04C9      $04C9
 L042A      $042A
 L0421      $0421
 L0440      $0440
 L0439      $0439
 L0460      $0460
 L0483      $0483
 L04A6      $04A6
 L04C8      $04C8
 L04C1      $04C1
 L04CD      $04CD
 L04EA      $04EA
 L051D      $051D
 L057B      $057B
 L057D      $057D
 L05A2      $05A2
 L05ED      $05ED
 L05FF      $05FF
 L0616      $0616
 L062A      $062A
 L0636      $0636
 L063D      $063D
 L062F      $062F
 L0662      $0662
 L0691      $0691
 L0673      $0673
 L0601      $0601
 L0654      $0654
 L06B4      $06B4
 L06C4      $06C4
 L062C      $062C
 L06D3      $06D3
 L06EC      $06EC
 L0703      $0703
 L0734      $0734
 L073E      $073E
 L0755      $0755
 L076E      $076E
 L0776      $0776
 L0219      $0219
 L0843      $0843
 L0867      $0867
 L087F      $087F
 L08A4      $08A4
 L08AF      $08AF
 L08D4      $08D4
 L08DD      $08DD
 L08E6      $08E6
 L08EF      $08EF
 L08F8      $08F8
 L092A      $092A
 L0916      $0916
 L0918      $0918
 L0935      $0935
 L093C      $093C
 L0982      $0982
 L097F      $097F
 L096F      $096F
 L09A6      $09A6
 L09C3      $09C3
 L09BF      $09BF
 L09C6      $09C6
 L0A0B      $0A0B
 L09FF      $09FF
 L0A29      $0A29
 L0A37      $0A37
 L0A55      $0A55
 L0A6B      $0A6B
 L0A78      $0A78
 L0A87      $0A87
 L0AC7      $0AC7
 L0C15      $0C15
 L0C24      $0C24
 L0C50      $0C50
 L0C56      $0C56
 L021C      $021C
 L0CBD      $0CBD
 L0D12      $0D12
 L0CEE      $0CEE
 L0CF3      $0CF3
 L0D46      $0D46
 L0CFF      $0CFF
 L0D28      $0D28
 L0D7C      $0D7C
 L0D83      $0D83
 L0D8B      $0D8B
 L0D93      $0D93
 L28F5      $28F5
 L28E9      $28E9
 L0E51      $0E51
 L0EA3      $0EA3
 L0EA0      $0EA0
 L0ED2      $0ED2
 L0EDD      $0EDD
 L0EFC      $0EFC
 L0EFE      $0EFE
 L0F1F      $0F1F
 L0F4F      $0F4F
 L0F3C      $0F3C
 L0F43      $0F43
 L0F4C      $0F4C
 L0F80      $0F80
 L0F8C      $0F8C
 L0F92      $0F92
 L0FB7      $0FB7
 L2DC3      $2DC3
 L101E      $101E
 L0FED      $0FED
 L0FEA      $0FEA
 L104F      $104F
 L26C0      $26C0
 L26F5      $26F5
 L10A6      $10A6
 L10CB      $10CB
 L10CA      $10CA
 L10CC      $10CC
 L10E5      $10E5
 L111D      $111D
 L113C      $113C
 L329E      $329E
 L115D      $115D
 L2DE6      $2DE6
 L39B7      $39B7
 L11A0      $11A0
 L119F      $119F
 L11A7      $11A7
 L11D0      $11D0
 L11B6      $11B6
 L11CE      $11CE
 L410E      $410E
 L11DA      $11DA
 L11E6      $11E6
 L11F8      $11F8
 L123C      $123C
 L123F      $123F
 L2FE5      $2FE5
 L12A6      $12A6
 L12D3      $12D3
 L12D1      $12D1
 L12F8      $12F8
 L12DB      $12DB
 L12E9      $12E9
 L12FD      $12FD
 L131E      $131E
 L135D      $135D
 L133A      $133A
 L139C      $139C
 L139A      $139A
 L13AE      $13AE
 L13B1      $13B1
 L13CB      $13CB
 L2DE4      $2DE4
 L3D1D      $3D1D
 L13F1      $13F1
 L14A4      $14A4
 L14B6      $14B6
 L152A      $152A
 L150F      $150F
 L157D      $157D
 L155D      $155D
 L156D      $156D
 L15C7      $15C7
 L15D0      $15D0
 L15E5      $15E5
 L15E9      $15E9
 L160C      $160C
 L2FBE      $2FBE
 L31B8      $31B8
 L166F      $166F
 L296E      $296E
 L169F      $169F
 L16A2      $16A2
 L16BE      $16BE
 L16A4      $16A4
 L16D4      $16D4
 L16C9      $16C9
 L3B9C      $3B9C
 L16E6      $16E6
 L172A      $172A
 L178C      $178C
 L178F      $178F
 L17D2      $17D2
 L184C      $184C
 L187C      $187C
 L18A3      $18A3
 L18C3      $18C3
 L18C6      $18C6
 L18EC      $18EC
 L18FD      $18FD
 L190E      $190E
 L191F      $191F
 L193D      $193D
 L2CF1      $2CF1
 L196F      $196F
 L196C      $196C
 L198A      $198A
 L299A      $299A
 L19B7      $19B7
 L19C9      $19C9
 L19F2      $19F2
 L19F5      $19F5
 L1A2F      $1A2F
 L1A13      $1A13
 L1A0A      $1A0A
 L1A26      $1A26
 L1A3B      $1A3B
 L1A4C      $1A4C
 L1A6D      $1A6D
 L3CB4      $3CB4
 L3CAF      $3CAF
 L1A78      $1A78
 L1A7F      $1A7F
 L1ACF      $1ACF
 L1AF6      $1AF6
 L1B28      $1B28
 L1B2B      $1B2B
 L1B5F      $1B5F
 L1BD2      $1BD2
 L1B68      $1B68
 L1BAA      $1BAA
 L1B8F      $1B8F
 L1BD5      $1BD5
 L1BF2      $1BF2
 L1C19      $1C19
 L1C25      $1C25
 L1C55      $1C55
 L1C2E      $1C2E
 L1C34      $1C34
 L1C3E      $1C3E
 L1C5B      $1C5B
 L1C6A      $1C6A
 L1C66      $1C66
 L1C97      $1C97
 L1D06      $1D06
 L1CF4      $1CF4
 L2DC9      $2DC9
 L1D47      $1D47
 L1D38      $1D38
 L26C9      $26C9
 L1D45      $1D45
 L1D81      $1D81
 L1D8D      $1D8D
 L1DAC      $1DAC
 L1DCA      $1DCA
 L1DD4      $1DD4
 L1DEE      $1DEE
 L1DF7      $1DF7
 L1E3C      $1E3C
 L1EAE      $1EAE
 L1E8D      $1E8D
 L1EA2      $1EA2
 L1EA5      $1EA5
 L1EA7      $1EA7
 L1EBE      $1EBE
 L1EC6      $1EC6
 L1EAB      $1EAB
 L1EBA      $1EBA
 L1ED0      $1ED0
 L1EE6      $1EE6
 L1EFC      $1EFC
 L1EF8      $1EF8
 L1ECD      $1ECD
 L1F08      $1F08
 L1F1F      $1F1F
 L1F40      $1F40
 L1F49      $1F49
 L1F52      $1F52
 L1F1C      $1F1C
 L1F78      $1F78
 L1F8A      $1F8A
 L1F9D      $1F9D
 L1FA1      $1FA1
 L1FB6      $1FB6
 L1FC9      $1FC9
 L1FEE      $1FEE
 L1FEB      $1FEB
 L1FF1      $1FF1
 L1FE9      $1FE9
 L1FC5      $1FC5
 L20C6      $20C6
 L20B2      $20B2
 L20FF      $20FF
 L214E      $214E
 L215E      $215E
 L2F92      $2F92
 L21C3      $21C3
 L22A2      $22A2
 L22A8      $22A8
 L22B2      $22B2
 L22B8      $22B8
 L22CA      $22CA
 L22D1      $22D1
 L22E9      $22E9
 L22FE      $22FE
 L232C      $232C
 L23B2      $23B2
 L23A4      $23A4
 L23E5      $23E5
 L23E8      $23E8
 L241E      $241E
 L24AF      $24AF
 L24B8      $24B8
 L24E4      $24E4
 L24F1      $24F1
 L255D      $255D
 L25A2      $25A2
 L25A6      $25A6
 L25BF      $25BF
 L25AF      $25AF
 L25D6      $25D6
 L25FB      $25FB
 L25DD      $25DD
 L260E      $260E
 L261A      $261A
 L268A      $268A
 L268B      $268B
 L267B      $267B
 L266C      $266C
 L3D5A      $3D5A
 L26AB      $26AB
 L26EA      $26EA
 L26F9      $26F9
 L39C0      $39C0
 L277D      $277D
 L2E58      $2E58
 L27A0      $27A0
 L2E50      $2E50
 L2E04      $2E04
 L27AD      $27AD
 L2BF9      $2BF9
 L3A76      $3A76
 L27D8      $27D8
 L27F5      $27F5
 L27E6      $27E6
 L27F3      $27F3
 L283B      $283B
 L27E2      $27E2
 L288D      $288D
 L287F      $287F
 L289E      $289E
 L28A1      $28A1
 L28BE      $28BE
 L28A8      $28A8
 L28CA      $28CA
 L28F8      $28F8
 L28C7      $28C7
 L299C      $299C
 L29ED      $29ED
 L2A08      $2A08
 L2A41      $2A41
 L2A2D      $2A2D
 L2A4F      $2A4F
 L2A67      $2A67
 L2A0B      $2A0B
 L2A15      $2A15
 L2AAE      $2AAE
 L2ABF      $2ABF
 L2ABD      $2ABD
 L2AB2      $2AB2
 L2AD1      $2AD1
 L358B      $358B
 L2AF3      $2AF3
 L2AE6      $2AE6
 L2AEB      $2AEB
 L345B      $345B
 L2B5C      $2B5C
 L2B3D      $2B3D
 L2B25      $2B25
 L2B2C      $2B2C
 L2B54      $2B54
 L2B8B      $2B8B
 L2BAC      $2BAC
 L2BD7      $2BD7
 L2BCE      $2BCE
 L2BBF      $2BBF
 L2BE3      $2BE3
 L2C43      $2C43
 L2C0D      $2C0D
 L238E      $238E
 L2C3A      $2C3A
 L2C1E      $2C1E
 L2C66      $2C66
 L2C58      $2C58
 L2C54      $2C54
 L2C76      $2C76
 L2C64      $2C64
 L2CE1      $2CE1
 L2CDA      $2CDA
 L2CCB      $2CCB
 L2CBA      $2CBA
 L2CF4      $2CF4
 L2D0E      $2D0E
 L2D16      $2D16
 L2D47      $2D47
 L2D50      $2D50
 L2D88      $2D88
 L2D63      $2D63
 L2D7D      $2D7D
 L2DA2      $2DA2
 L2DFF      $2DFF
 L2DB3      $2DB3
 L2E02      $2E02
 L2DD9      $2DD9
 L2DCA      $2DCA
 L2DD5      $2DD5
 L2DE3      $2DE3
 L2DF2      $2DF2
 L2DFD      $2DFD
 L2E0A      $2E0A
 L2E33      $2E33
 L2E29      $2E29
 L2E23      $2E23
 L2E4D      $2E4D
 L2EA5      $2EA5
 L2EA8      $2EA8
 L2EAF      $2EAF
 L2F0B      $2F0B
 L2F4F      $2F4F
 L2F43      $2F43
 L2D90      $2D90
 L2FB8      $2FB8
 L2F7B      $2F7B
 L2F86      $2F86
 L2F91      $2F91
 L2FF9      $2FF9
 L2FC7      $2FC7
 L300C      $300C
 L306D      $306D
 L30C2      $30C2
 L30AE      $30AE
 L30BA      $30BA
 L30D2      $30D2
 L30DD      $30DD
 L30F8      $30F8
 L310C      $310C
 L313E      $313E
 L317F      $317F
 L31AF      $31AF
 L31F6      $31F6
 L31C1      $31C1
 L31CE      $31CE
 L31DA      $31DA
 L31F4      $31F4
 L321E      $321E
 L323A      $323A
 L32A4      $32A4
 L32C2      $32C2
 L328F      $328F
 L32BE      $32BE
 L32CB      $32CB
 L3E60      $3E60
 L32F8      $32F8
 L333A      $333A
 L33A1      $33A1
 L33B0      $33B0
 L33C3      $33C3
 L2BE8      $2BE8
 L346E      $346E
 L34C3      $34C3
 L34F8      $34F8
 L34E8      $34E8
 L352A      $352A
 L353A      $353A
 L353F      $353F
 L354F      $354F
 L35DF      $35DF
 L35DA      $35DA
 L35A2      $35A2
 L35B3      $35B3
 L35C4      $35C4
 L35EB      $35EB
 L35F8      $35F8
 L364C      $364C
 L362A      $362A
 L363B      $363B
 L364F      $364F
 L366A      $366A
 L36A9      $36A9
 L36BF      $36BF
 L36DE      $36DE
 L370A      $370A
 L36F7      $36F7
 L36E2      $36E2
 L376C      $376C
 L377F      $377F
 L378B      $378B
 L37A1      $37A1
 L37AB      $37AB
 L37B5      $37B5
 L37B3      $37B3
 L37BC      $37BC
 L37CE      $37CE
 L37E7      $37E7
 L37DA      $37DA
 L0229      $0229
 L37FF      $37FF
 L386E      $386E
 L387F      $387F
 L38D9      $38D9
 L38CF      $38CF
 L38C1      $38C1
 L38D1      $38D1
 L390E      $390E
 L39A8      $39A8
 L39C3      $39C3
 L398A      $398A
 L3A2F      $3A2F
 L2CA0      $2CA0
 L3A80      $3A80
 L3A77      $3A77
 L3A31      $3A31
 L3A9B      $3A9B
 L3A88      $3A88
 L3AE9      $3AE9
 L3AD5      $3AD5
 L3B0A      $3B0A
 L3AFA      $3AFA
 L3B07      $3B07
 L3AF5      $3AF5
 L3B4C      $3B4C
 L3B36      $3B36
 L3B5A      $3B5A
 L3B6A      $3B6A
 L3B7C      $3B7C
 L3B99      $3B99
 L3B7F      $3B7F
 L3BAE      $3BAE
 L3BD8      $3BD8
 L3C46      $3C46
 L3BF0      $3BF0
 L3C37      $3C37
 L2CA2      $2CA2
 L3BB6      $3BB6
 L32B1      $32B1
 L3C1E      $3C1E
 L3C24      $3C24
 L3C2A      $3C2A
 L3C32      $3C32
 L3BE4      $3BE4
 L3C4D      $3C4D
 L3C67      $3C67
 L3C74      $3C74
 L3CD6      $3CD6
 L3CB1      $3CB1
 L3CCD      $3CCD
 L3CF6      $3CF6
 L3D28      $3D28
 L3D52      $3D52
 L3D4D      $3D4D
 L3D5F      $3D5F
 L3D65      $3D65
 L3D75      $3D75
 L3D81      $3D81
 L3D97      $3D97
 L26D6      $26D6
 L3DE7      $3DE7
 L3E88      $3E88
 L3E31      $3E31
 L3E69      $3E69
 L3E74      $3E74
 L3E25      $3E25
 L3E9E      $3E9E
 L3EB3      $3EB3
 L3EAE      $3EAE
 L3EC6      $3EC6
 L3EE4      $3EE4
 L3F11      $3F11
 L3F06      $3F06
 L3F5E      $3F5E
 L3F22      $3F22
 L3F3C      $3F3C
 L3F47      $3F47
 L3F65      $3F65
 L3FBF      $3FBF
 L3F93      $3F93
 L3FA0      $3FA0
 L3FBB      $3FBB
 L3FC6      $3FC6
 L3FD0      $3FD0
 L400A      $400A
 L406E      $406E
 L40B4      $40B4
 L412F      $412F
 L413F      $413F
 L415A      $415A
