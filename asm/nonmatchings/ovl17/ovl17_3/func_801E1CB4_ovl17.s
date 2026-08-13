nonmatching func_801E1CB4_ovl17, 0x4BC

glabel func_801E1CB4_ovl17
    /* 22CEA4 801E1CB4 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 22CEA8 801E1CB8 AFB00018 */  sw         $s0, 0x18($sp)
    /* 22CEAC 801E1CBC 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 22CEB0 801E1CC0 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* 22CEB4 801E1CC4 8E030000 */  lw         $v1, 0x0($s0)
    /* 22CEB8 801E1CC8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 22CEBC 801E1CCC AFA40040 */  sw         $a0, 0x40($sp)
    /* 22CEC0 801E1CD0 8C620000 */  lw         $v0, 0x0($v1)
    /* 22CEC4 801E1CD4 3C0E800E */  lui        $t6, %hi(D_800E1B50)
    /* 22CEC8 801E1CD8 3C0F800B */  lui        $t7, %hi(func_800B4924)
    /* 22CECC 801E1CDC 00021080 */  sll        $v0, $v0, 2
    /* 22CED0 801E1CE0 01C27021 */  addu       $t6, $t6, $v0
    /* 22CED4 801E1CE4 8DCE1B50 */  lw         $t6, %lo(D_800E1B50)($t6)
    /* 22CED8 801E1CE8 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 22CEDC 801E1CEC 00220821 */  addu       $at, $at, $v0
    /* 22CEE0 801E1CF0 25EF4924 */  addiu      $t7, $t7, %lo(func_800B4924)
    /* 22CEE4 801E1CF4 AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
    /* 22CEE8 801E1CF8 AFAE002C */  sw         $t6, 0x2C($sp)
    /* 22CEEC 801E1CFC 8C790000 */  lw         $t9, 0x0($v1)
    /* 22CEF0 801E1D00 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 22CEF4 801E1D04 3C18801E */  lui        $t8, %hi(func_801E2170_ovl17)
    /* 22CEF8 801E1D08 00196080 */  sll        $t4, $t9, 2
    /* 22CEFC 801E1D0C 002C0821 */  addu       $at, $at, $t4
    /* 22CF00 801E1D10 27182170 */  addiu      $t8, $t8, %lo(func_801E2170_ovl17)
    /* 22CF04 801E1D14 AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
    /* 22CF08 801E1D18 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 22CF0C 801E1D1C 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 22CF10 801E1D20 3C05800E */  lui        $a1, %hi(D_800E0D50)
    /* 22CF14 801E1D24 000D7080 */  sll        $t6, $t5, 2
    /* 22CF18 801E1D28 002E0821 */  addu       $at, $at, $t6
    /* 22CF1C 801E1D2C AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* 22CF20 801E1D30 8C620000 */  lw         $v0, 0x0($v1)
    /* 22CF24 801E1D34 24A50D50 */  addiu      $a1, $a1, %lo(D_800E0D50)
    /* 22CF28 801E1D38 3C09800E */  lui        $t1, %hi(gEntitiesAngleXArray)
    /* 22CF2C 801E1D3C 00021080 */  sll        $v0, $v0, 2
    /* 22CF30 801E1D40 00A27821 */  addu       $t7, $a1, $v0
    /* 22CF34 801E1D44 8DF90000 */  lw         $t9, 0x0($t7)
    /* 22CF38 801E1D48 25294010 */  addiu      $t1, $t1, %lo(gEntitiesAngleXArray)
    /* 22CF3C 801E1D4C 01226821 */  addu       $t5, $t1, $v0
    /* 22CF40 801E1D50 0019C080 */  sll        $t8, $t9, 2
    /* 22CF44 801E1D54 01386021 */  addu       $t4, $t1, $t8
    /* 22CF48 801E1D58 C5840000 */  lwc1       $f4, 0x0($t4)
    /* 22CF4C 801E1D5C 3C0A800E */  lui        $t2, %hi(gEntitiesAngleYArray)
    /* 22CF50 801E1D60 254A41D0 */  addiu      $t2, $t2, %lo(gEntitiesAngleYArray)
    /* 22CF54 801E1D64 E5A40000 */  swc1       $f4, 0x0($t5)
    /* 22CF58 801E1D68 8C620000 */  lw         $v0, 0x0($v1)
    /* 22CF5C 801E1D6C 3C0B800E */  lui        $t3, %hi(gEntitiesAngleZArray)
    /* 22CF60 801E1D70 256B4390 */  addiu      $t3, $t3, %lo(gEntitiesAngleZArray)
    /* 22CF64 801E1D74 00021080 */  sll        $v0, $v0, 2
    /* 22CF68 801E1D78 00A27021 */  addu       $t6, $a1, $v0
    /* 22CF6C 801E1D7C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 22CF70 801E1D80 01426021 */  addu       $t4, $t2, $v0
    /* 22CF74 801E1D84 3C06800F */  lui        $a2, %hi(D_800EA6E0)
    /* 22CF78 801E1D88 000FC880 */  sll        $t9, $t7, 2
    /* 22CF7C 801E1D8C 0159C021 */  addu       $t8, $t2, $t9
    /* 22CF80 801E1D90 C7060000 */  lwc1       $f6, 0x0($t8)
    /* 22CF84 801E1D94 24C6A6E0 */  addiu      $a2, $a2, %lo(D_800EA6E0)
    /* 22CF88 801E1D98 3C07800F */  lui        $a3, %hi(D_800EA8A0)
    /* 22CF8C 801E1D9C E5860000 */  swc1       $f6, 0x0($t4)
    /* 22CF90 801E1DA0 8C620000 */  lw         $v0, 0x0($v1)
    /* 22CF94 801E1DA4 24E7A8A0 */  addiu      $a3, $a3, %lo(D_800EA8A0)
    /* 22CF98 801E1DA8 3C08800F */  lui        $t0, %hi(D_800EAA60)
    /* 22CF9C 801E1DAC 00021080 */  sll        $v0, $v0, 2
    /* 22CFA0 801E1DB0 00A26821 */  addu       $t5, $a1, $v0
    /* 22CFA4 801E1DB4 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 22CFA8 801E1DB8 0162C021 */  addu       $t8, $t3, $v0
    /* 22CFAC 801E1DBC 2508AA60 */  addiu      $t0, $t0, %lo(D_800EAA60)
    /* 22CFB0 801E1DC0 000E7880 */  sll        $t7, $t6, 2
    /* 22CFB4 801E1DC4 016FC821 */  addu       $t9, $t3, $t7
    /* 22CFB8 801E1DC8 C7280000 */  lwc1       $f8, 0x0($t9)
    /* 22CFBC 801E1DCC E7080000 */  swc1       $f8, 0x0($t8)
    /* 22CFC0 801E1DD0 8C620000 */  lw         $v0, 0x0($v1)
    /* 22CFC4 801E1DD4 00021080 */  sll        $v0, $v0, 2
    /* 22CFC8 801E1DD8 00A26021 */  addu       $t4, $a1, $v0
    /* 22CFCC 801E1DDC 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 22CFD0 801E1DE0 00C2C821 */  addu       $t9, $a2, $v0
    /* 22CFD4 801E1DE4 000D7080 */  sll        $t6, $t5, 2
    /* 22CFD8 801E1DE8 00CE7821 */  addu       $t7, $a2, $t6
    /* 22CFDC 801E1DEC C5EA0000 */  lwc1       $f10, 0x0($t7)
    /* 22CFE0 801E1DF0 E72A0000 */  swc1       $f10, 0x0($t9)
    /* 22CFE4 801E1DF4 8C620000 */  lw         $v0, 0x0($v1)
    /* 22CFE8 801E1DF8 00021080 */  sll        $v0, $v0, 2
    /* 22CFEC 801E1DFC 00A2C021 */  addu       $t8, $a1, $v0
    /* 22CFF0 801E1E00 8F0C0000 */  lw         $t4, 0x0($t8)
    /* 22CFF4 801E1E04 00E27821 */  addu       $t7, $a3, $v0
    /* 22CFF8 801E1E08 000C6880 */  sll        $t5, $t4, 2
    /* 22CFFC 801E1E0C 00ED7021 */  addu       $t6, $a3, $t5
    /* 22D000 801E1E10 C5D00000 */  lwc1       $f16, 0x0($t6)
    /* 22D004 801E1E14 E5F00000 */  swc1       $f16, 0x0($t7)
    /* 22D008 801E1E18 8C620000 */  lw         $v0, 0x0($v1)
    /* 22D00C 801E1E1C 00021080 */  sll        $v0, $v0, 2
    /* 22D010 801E1E20 00A2C821 */  addu       $t9, $a1, $v0
    /* 22D014 801E1E24 8F380000 */  lw         $t8, 0x0($t9)
    /* 22D018 801E1E28 01027021 */  addu       $t6, $t0, $v0
    /* 22D01C 801E1E2C 00186080 */  sll        $t4, $t8, 2
    /* 22D020 801E1E30 010C6821 */  addu       $t5, $t0, $t4
    /* 22D024 801E1E34 C5B20000 */  lwc1       $f18, 0x0($t5)
    /* 22D028 801E1E38 0C0788F8 */  jal        func_801E23E0_ovl17
    /* 22D02C 801E1E3C E5D20000 */   swc1      $f18, 0x0($t6)
    /* 22D030 801E1E40 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 22D034 801E1E44 3C18800E */  lui        $t8, %hi(D_800E7880)
    /* 22D038 801E1E48 24040006 */  addiu      $a0, $zero, 0x6
    /* 22D03C 801E1E4C 8DF90000 */  lw         $t9, 0x0($t7)
    /* 22D040 801E1E50 24050003 */  addiu      $a1, $zero, 0x3
    /* 22D044 801E1E54 0319C021 */  addu       $t8, $t8, $t9
    /* 22D048 801E1E58 93187880 */  lbu        $t8, %lo(D_800E7880)($t8)
    /* 22D04C 801E1E5C 5700000C */  bnel       $t8, $zero, .L801E1E90_ovl17
    /* 22D050 801E1E60 24040006 */   addiu     $a0, $zero, 0x6
    /* 22D054 801E1E64 0C02A08D */  jal        func_800A8234
    /* 22D058 801E1E68 24060003 */   addiu     $a2, $zero, 0x3
    /* 22D05C 801E1E6C 8E030000 */  lw         $v1, 0x0($s0)
    /* 22D060 801E1E70 3C06800F */  lui        $a2, %hi(D_800E98E0)
    /* 22D064 801E1E74 24C698E0 */  addiu      $a2, $a2, %lo(D_800E98E0)
    /* 22D068 801E1E78 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 22D06C 801E1E7C 000C6880 */  sll        $t5, $t4, 2
    /* 22D070 801E1E80 00CD7021 */  addu       $t6, $a2, $t5
    /* 22D074 801E1E84 1000000C */  b          .L801E1EB8_ovl17
    /* 22D078 801E1E88 ADC20000 */   sw        $v0, 0x0($t6)
    /* 22D07C 801E1E8C 24040006 */  addiu      $a0, $zero, 0x6
  .L801E1E90_ovl17:
    /* 22D080 801E1E90 24050003 */  addiu      $a1, $zero, 0x3
    /* 22D084 801E1E94 0C02A08D */  jal        func_800A8234
    /* 22D088 801E1E98 24060006 */   addiu     $a2, $zero, 0x6
    /* 22D08C 801E1E9C 8E030000 */  lw         $v1, 0x0($s0)
    /* 22D090 801E1EA0 3C06800F */  lui        $a2, %hi(D_800E98E0)
    /* 22D094 801E1EA4 24C698E0 */  addiu      $a2, $a2, %lo(D_800E98E0)
    /* 22D098 801E1EA8 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 22D09C 801E1EAC 000FC880 */  sll        $t9, $t7, 2
    /* 22D0A0 801E1EB0 00D9C021 */  addu       $t8, $a2, $t9
    /* 22D0A4 801E1EB4 AF020000 */  sw         $v0, 0x0($t8)
  .L801E1EB8_ovl17:
    /* 22D0A8 801E1EB8 8C620000 */  lw         $v0, 0x0($v1)
    /* 22D0AC 801E1EBC 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 22D0B0 801E1EC0 00021080 */  sll        $v0, $v0, 2
    /* 22D0B4 801E1EC4 00C26021 */  addu       $t4, $a2, $v0
    /* 22D0B8 801E1EC8 8D840000 */  lw         $a0, 0x0($t4)
    /* 22D0BC 801E1ECC 00220821 */  addu       $at, $at, $v0
    /* 22D0C0 801E1ED0 8C85004C */  lw         $a1, 0x4C($a0)
    /* 22D0C4 801E1ED4 10A0002E */  beqz       $a1, .L801E1F90_ovl17
    /* 22D0C8 801E1ED8 00000000 */   nop
    /* 22D0CC 801E1EDC C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 22D0D0 801E1EE0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 22D0D4 801E1EE4 E4A40004 */  swc1       $f4, 0x4($a1)
    /* 22D0D8 801E1EE8 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 22D0DC 801E1EEC 8C99004C */  lw         $t9, 0x4C($a0)
    /* 22D0E0 801E1EF0 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 22D0E4 801E1EF4 000E7880 */  sll        $t7, $t6, 2
    /* 22D0E8 801E1EF8 002F0821 */  addu       $at, $at, $t7
    /* 22D0EC 801E1EFC C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 22D0F0 801E1F00 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 22D0F4 801E1F04 E7260008 */  swc1       $f6, 0x8($t9)
    /* 22D0F8 801E1F08 8E180000 */  lw         $t8, 0x0($s0)
    /* 22D0FC 801E1F0C 8C8E004C */  lw         $t6, 0x4C($a0)
    /* 22D100 801E1F10 8F0C0000 */  lw         $t4, 0x0($t8)
    /* 22D104 801E1F14 000C6880 */  sll        $t5, $t4, 2
    /* 22D108 801E1F18 002D0821 */  addu       $at, $at, $t5
    /* 22D10C 801E1F1C C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 22D110 801E1F20 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* 22D114 801E1F24 E5C8000C */  swc1       $f8, 0xC($t6)
    /* 22D118 801E1F28 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 22D11C 801E1F2C 8C8C004C */  lw         $t4, 0x4C($a0)
    /* 22D120 801E1F30 8DF90000 */  lw         $t9, 0x0($t7)
    /* 22D124 801E1F34 0019C080 */  sll        $t8, $t9, 2
    /* 22D128 801E1F38 00380821 */  addu       $at, $at, $t8
    /* 22D12C 801E1F3C C42A4010 */  lwc1       $f10, %lo(gEntitiesAngleXArray)($at)
    /* 22D130 801E1F40 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 22D134 801E1F44 E58A0010 */  swc1       $f10, 0x10($t4)
    /* 22D138 801E1F48 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 22D13C 801E1F4C 8C99004C */  lw         $t9, 0x4C($a0)
    /* 22D140 801E1F50 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 22D144 801E1F54 000E7880 */  sll        $t7, $t6, 2
    /* 22D148 801E1F58 002F0821 */  addu       $at, $at, $t7
    /* 22D14C 801E1F5C C43041D0 */  lwc1       $f16, %lo(gEntitiesAngleYArray)($at)
    /* 22D150 801E1F60 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
    /* 22D154 801E1F64 E7300014 */  swc1       $f16, 0x14($t9)
    /* 22D158 801E1F68 8E180000 */  lw         $t8, 0x0($s0)
    /* 22D15C 801E1F6C 8C8E004C */  lw         $t6, 0x4C($a0)
    /* 22D160 801E1F70 8F0C0000 */  lw         $t4, 0x0($t8)
    /* 22D164 801E1F74 000C6880 */  sll        $t5, $t4, 2
    /* 22D168 801E1F78 002D0821 */  addu       $at, $at, $t5
    /* 22D16C 801E1F7C C4324390 */  lwc1       $f18, %lo(gEntitiesAngleZArray)($at)
    /* 22D170 801E1F80 E5D20018 */  swc1       $f18, 0x18($t6)
    /* 22D174 801E1F84 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 22D178 801E1F88 8DE20000 */  lw         $v0, 0x0($t7)
    /* 22D17C 801E1F8C 00021080 */  sll        $v0, $v0, 2
  .L801E1F90_ovl17:
    /* 22D180 801E1F90 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 22D184 801E1F94 00822021 */  addu       $a0, $a0, $v0
    /* 22D188 801E1F98 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 22D18C 801E1F9C 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* 22D190 801E1FA0 0C02C7DA */  jal        setProcessMain
    /* 22D194 801E1FA4 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 22D198 801E1FA8 00002025 */  or         $a0, $zero, $zero
    /* 22D19C 801E1FAC 0C02BEED */  jal        func_800AFBB4
    /* 22D1A0 801E1FB0 8E050000 */   lw        $a1, 0x0($s0)
    /* 22D1A4 801E1FB4 8E180000 */  lw         $t8, 0x0($s0)
    /* 22D1A8 801E1FB8 3C01800E */  lui        $at, %hi(D_800DDA90)
    /* 22D1AC 801E1FBC 24190025 */  addiu      $t9, $zero, 0x25
    /* 22D1B0 801E1FC0 8F0C0000 */  lw         $t4, 0x0($t8)
    /* 22D1B4 801E1FC4 27A40034 */  addiu      $a0, $sp, 0x34
    /* 22D1B8 801E1FC8 000C6880 */  sll        $t5, $t4, 2
    /* 22D1BC 801E1FCC 002D0821 */  addu       $at, $at, $t5
    /* 22D1C0 801E1FD0 0C078D0F */  jal        func_801E343C_ovl17
    /* 22D1C4 801E1FD4 AC39DA90 */   sw        $t9, %lo(D_800DDA90)($at)
    /* 22D1C8 801E1FD8 3C014170 */  lui        $at, (0x41700000 >> 16)
    /* 22D1CC 801E1FDC 44811000 */  mtc1       $at, $f2
    /* 22D1D0 801E1FE0 C7A40034 */  lwc1       $f4, 0x34($sp)
    /* 22D1D4 801E1FE4 8E030000 */  lw         $v1, 0x0($s0)
    /* 22D1D8 801E1FE8 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* 22D1DC 801E1FEC 46022002 */  mul.s      $f0, $f4, $f2
    /* 22D1E0 801E1FF0 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 22D1E4 801E1FF4 44816000 */  mtc1       $at, $f12
    /* 22D1E8 801E1FF8 C7A60034 */  lwc1       $f6, 0x34($sp)
    /* 22D1EC 801E1FFC 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 22D1F0 801E2000 000E7880 */  sll        $t7, $t6, 2
    /* 22D1F4 801E2004 44807000 */  mtc1       $zero, $f14
    /* 22D1F8 801E2008 002F0821 */  addu       $at, $at, $t7
    /* 22D1FC 801E200C 460C3202 */  mul.s      $f8, $f6, $f12
    /* 22D200 801E2010 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
    /* 22D204 801E2014 8C780000 */  lw         $t8, 0x0($v1)
    /* 22D208 801E2018 460E003C */  c.lt.s     $f0, $f14
    /* 22D20C 801E201C 3C01800E */  lui        $at, %hi(D_800E3590)
    /* 22D210 801E2020 00186080 */  sll        $t4, $t8, 2
    /* 22D214 801E2024 002C0821 */  addu       $at, $at, $t4
    /* 22D218 801E2028 45000008 */  bc1f       .L801E204C_ovl17
    /* 22D21C 801E202C E4283590 */   swc1      $f8, %lo(D_800E3590)($at)
    /* 22D220 801E2030 8C790000 */  lw         $t9, 0x0($v1)
    /* 22D224 801E2034 3C01800E */  lui        $at, %hi(D_800E3AD0)
    /* 22D228 801E2038 46000287 */  neg.s      $f10, $f0
    /* 22D22C 801E203C 00196880 */  sll        $t5, $t9, 2
    /* 22D230 801E2040 002D0821 */  addu       $at, $at, $t5
    /* 22D234 801E2044 10000006 */  b          .L801E2060_ovl17
    /* 22D238 801E2048 E42A3AD0 */   swc1      $f10, %lo(D_800E3AD0)($at)
  .L801E204C_ovl17:
    /* 22D23C 801E204C 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 22D240 801E2050 3C01800E */  lui        $at, %hi(D_800E3AD0)
    /* 22D244 801E2054 000E7880 */  sll        $t7, $t6, 2
    /* 22D248 801E2058 002F0821 */  addu       $at, $at, $t7
    /* 22D24C 801E205C E4203AD0 */  swc1       $f0, %lo(D_800E3AD0)($at)
  .L801E2060_ovl17:
    /* 22D250 801E2060 C7B00038 */  lwc1       $f16, 0x38($sp)
    /* 22D254 801E2064 8C780000 */  lw         $t8, 0x0($v1)
    /* 22D258 801E2068 C7B20038 */  lwc1       $f18, 0x38($sp)
    /* 22D25C 801E206C 46028002 */  mul.s      $f0, $f16, $f2
    /* 22D260 801E2070 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 22D264 801E2074 00186080 */  sll        $t4, $t8, 2
    /* 22D268 801E2078 002C0821 */  addu       $at, $at, $t4
    /* 22D26C 801E207C 460C9102 */  mul.s      $f4, $f18, $f12
    /* 22D270 801E2080 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
    /* 22D274 801E2084 8C790000 */  lw         $t9, 0x0($v1)
    /* 22D278 801E2088 460E003C */  c.lt.s     $f0, $f14
    /* 22D27C 801E208C 3C01800E */  lui        $at, %hi(D_800E3750)
    /* 22D280 801E2090 00196880 */  sll        $t5, $t9, 2
    /* 22D284 801E2094 002D0821 */  addu       $at, $at, $t5
    /* 22D288 801E2098 45000008 */  bc1f       .L801E20BC_ovl17
    /* 22D28C 801E209C E4243750 */   swc1      $f4, %lo(D_800E3750)($at)
    /* 22D290 801E20A0 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 22D294 801E20A4 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* 22D298 801E20A8 46000187 */  neg.s      $f6, $f0
    /* 22D29C 801E20AC 000E7880 */  sll        $t7, $t6, 2
    /* 22D2A0 801E20B0 002F0821 */  addu       $at, $at, $t7
    /* 22D2A4 801E20B4 10000006 */  b          .L801E20D0_ovl17
    /* 22D2A8 801E20B8 E4263C90 */   swc1      $f6, %lo(D_800E3C90)($at)
  .L801E20BC_ovl17:
    /* 22D2AC 801E20BC 8C780000 */  lw         $t8, 0x0($v1)
    /* 22D2B0 801E20C0 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* 22D2B4 801E20C4 00186080 */  sll        $t4, $t8, 2
    /* 22D2B8 801E20C8 002C0821 */  addu       $at, $at, $t4
    /* 22D2BC 801E20CC E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
  .L801E20D0_ovl17:
    /* 22D2C0 801E20D0 C7A8003C */  lwc1       $f8, 0x3C($sp)
    /* 22D2C4 801E20D4 8C790000 */  lw         $t9, 0x0($v1)
    /* 22D2C8 801E20D8 C7AA003C */  lwc1       $f10, 0x3C($sp)
    /* 22D2CC 801E20DC 46024002 */  mul.s      $f0, $f8, $f2
    /* 22D2D0 801E20E0 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 22D2D4 801E20E4 00196880 */  sll        $t5, $t9, 2
    /* 22D2D8 801E20E8 002D0821 */  addu       $at, $at, $t5
    /* 22D2DC 801E20EC 460C5402 */  mul.s      $f16, $f10, $f12
    /* 22D2E0 801E20F0 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
    /* 22D2E4 801E20F4 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 22D2E8 801E20F8 460E003C */  c.lt.s     $f0, $f14
    /* 22D2EC 801E20FC 3C01800E */  lui        $at, %hi(D_800E3910)
    /* 22D2F0 801E2100 000E7880 */  sll        $t7, $t6, 2
    /* 22D2F4 801E2104 002F0821 */  addu       $at, $at, $t7
    /* 22D2F8 801E2108 45000008 */  bc1f       .L801E212C_ovl17
    /* 22D2FC 801E210C E4303910 */   swc1      $f16, %lo(D_800E3910)($at)
    /* 22D300 801E2110 8C780000 */  lw         $t8, 0x0($v1)
    /* 22D304 801E2114 3C01800E */  lui        $at, %hi(D_800E3E50)
    /* 22D308 801E2118 46000487 */  neg.s      $f18, $f0
    /* 22D30C 801E211C 00186080 */  sll        $t4, $t8, 2
    /* 22D310 801E2120 002C0821 */  addu       $at, $at, $t4
    /* 22D314 801E2124 10000006 */  b          .L801E2140_ovl17
    /* 22D318 801E2128 E4323E50 */   swc1      $f18, %lo(D_800E3E50)($at)
  .L801E212C_ovl17:
    /* 22D31C 801E212C 8C790000 */  lw         $t9, 0x0($v1)
    /* 22D320 801E2130 3C01800E */  lui        $at, %hi(D_800E3E50)
    /* 22D324 801E2134 00196880 */  sll        $t5, $t9, 2
    /* 22D328 801E2138 002D0821 */  addu       $at, $at, $t5
    /* 22D32C 801E213C E4203E50 */  swc1       $f0, %lo(D_800E3E50)($at)
  .L801E2140_ovl17:
    /* 22D330 801E2140 0C002DAF */  jal        ohSleep
    /* 22D334 801E2144 2404002D */   addiu     $a0, $zero, 0x2D
    /* 22D338 801E2148 8FAF002C */  lw         $t7, 0x2C($sp)
    /* 22D33C 801E214C 240E0001 */  addiu      $t6, $zero, 0x1
    /* 22D340 801E2150 A1EE0040 */  sb         $t6, 0x40($t7)
    /* 22D344 801E2154 0C068FA0 */  jal        func_801A3E80_ovl7
    /* 22D348 801E2158 8FA40040 */   lw        $a0, 0x40($sp)
    /* 22D34C 801E215C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 22D350 801E2160 8FB00018 */  lw         $s0, 0x18($sp)
    /* 22D354 801E2164 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 22D358 801E2168 03E00008 */  jr         $ra
    /* 22D35C 801E216C 00000000 */   nop
endlabel func_801E1CB4_ovl17
.size func_801E1CB4_ovl17, . - func_801E1CB4_ovl17
