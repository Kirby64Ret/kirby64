glabel func_801AEA20_ovl7
/* 154A90 801AEA20 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 154A94 801AEA24 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 154A98 801AEA28 8D030000 */  lw         $v1, 0x0($t0)
/* 154A9C 801AEA2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 154AA0 801AEA30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 154AA4 801AEA34 AFA40018 */  sw         $a0, 0x18($sp)
/* 154AA8 801AEA38 8C620000 */  lw         $v0, 0x0($v1)
/* 154AAC 801AEA3C 3C0E800C */  lui        $t6, %hi(func_800B8630)
/* 154AB0 801AEA40 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 154AB4 801AEA44 00021080 */  sll        $v0, $v0, 2
/* 154AB8 801AEA48 00220821 */  addu       $at, $at, $v0
/* 154ABC 801AEA4C 25CE8630 */  addiu      $t6, $t6, %lo(func_800B8630)
/* 154AC0 801AEA50 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 154AC4 801AEA54 8C780000 */  lw         $t8, 0x0($v1)
/* 154AC8 801AEA58 3C01800E */  lui        $at, %hi(D_800DF150)
/* 154ACC 801AEA5C 3C0F801B */  lui        $t7, %hi(func_801AEE04_ovl7)
/* 154AD0 801AEA60 0018C880 */  sll        $t9, $t8, 2
/* 154AD4 801AEA64 00390821 */  addu       $at, $at, $t9
/* 154AD8 801AEA68 25EFEE04 */  addiu      $t7, $t7, %lo(func_801AEE04_ovl7)
/* 154ADC 801AEA6C AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
/* 154AE0 801AEA70 8C6B0000 */  lw         $t3, 0x0($v1)
/* 154AE4 801AEA74 3C07800E */  lui        $a3, %hi(D_800E1B50)
/* 154AE8 801AEA78 00E23821 */  addu       $a3, $a3, $v0
/* 154AEC 801AEA7C 8CE71B50 */  lw         $a3, %lo(D_800E1B50)($a3)
/* 154AF0 801AEA80 3C01800E */  lui        $at, %hi(D_800DDA90)
/* 154AF4 801AEA84 000B6080 */  sll        $t4, $t3, 2
/* 154AF8 801AEA88 002C0821 */  addu       $at, $at, $t4
/* 154AFC 801AEA8C 240A0023 */  addiu      $t2, $zero, 0x23
/* 154B00 801AEA90 3C0D801D */  lui        $t5, %hi(D_801CD33C_ovl7)
/* 154B04 801AEA94 AC2ADA90 */  sw         $t2, %lo(D_800DDA90)($at)
/* 154B08 801AEA98 25ADD33C */  addiu      $t5, $t5, %lo(D_801CD33C_ovl7)
/* 154B0C 801AEA9C ACED0098 */  sw         $t5, 0x98($a3)
/* 154B10 801AEAA0 8D030000 */  lw         $v1, 0x0($t0)
/* 154B14 801AEAA4 3C09800F */  lui        $t1, %hi(D_800E9AA0)
/* 154B18 801AEAA8 25299AA0 */  addiu      $t1, $t1, %lo(D_800E9AA0)
/* 154B1C 801AEAAC 8C620000 */  lw         $v0, 0x0($v1)
/* 154B20 801AEAB0 3C01800F */  lui        $at, %hi(D_800E93A0)
/* 154B24 801AEAB4 240F000A */  addiu      $t7, $zero, 0xA
/* 154B28 801AEAB8 00021080 */  sll        $v0, $v0, 2
/* 154B2C 801AEABC 01227021 */  addu       $t6, $t1, $v0
/* 154B30 801AEAC0 8DD80000 */  lw         $t8, 0x0($t6)
/* 154B34 801AEAC4 00220821 */  addu       $at, $at, $v0
/* 154B38 801AEAC8 3C04801D */  lui        $a0, %hi(D_801CD530_ovl7)
/* 154B3C 801AEACC AC3893A0 */  sw         $t8, %lo(D_800E93A0)($at)
/* 154B40 801AEAD0 8C790000 */  lw         $t9, 0x0($v1)
/* 154B44 801AEAD4 3C01800F */  lui        $at, %hi(D_800E9560)
/* 154B48 801AEAD8 24050023 */  addiu      $a1, $zero, 0x23
/* 154B4C 801AEADC 00195880 */  sll        $t3, $t9, 2
/* 154B50 801AEAE0 002B0821 */  addu       $at, $at, $t3
/* 154B54 801AEAE4 AC2F9560 */  sw         $t7, %lo(D_800E9560)($at)
/* 154B58 801AEAE8 8C6A0000 */  lw         $t2, 0x0($v1)
/* 154B5C 801AEAEC 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 154B60 801AEAF0 24060010 */  addiu      $a2, $zero, 0x10
/* 154B64 801AEAF4 000A6080 */  sll        $t4, $t2, 2
/* 154B68 801AEAF8 002C0821 */  addu       $at, $at, $t4
/* 154B6C 801AEAFC AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
/* 154B70 801AEB00 8C6D0000 */  lw         $t5, 0x0($v1)
/* 154B74 801AEB04 000D7080 */  sll        $t6, $t5, 2
/* 154B78 801AEB08 012EC021 */  addu       $t8, $t1, $t6
/* 154B7C 801AEB0C 8F190000 */  lw         $t9, 0x0($t8)
/* 154B80 801AEB10 00197880 */  sll        $t7, $t9, 2
/* 154B84 801AEB14 01F97823 */  subu       $t7, $t7, $t9
/* 154B88 801AEB18 000F7880 */  sll        $t7, $t7, 2
/* 154B8C 801AEB1C 008F2021 */  addu       $a0, $a0, $t7
/* 154B90 801AEB20 0C02A619 */  jal        func_800A9864
/* 154B94 801AEB24 8C84D530 */   lw        $a0, %lo(D_801CD530_ovl7)($a0)
/* 154B98 801AEB28 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 154B9C 801AEB2C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 154BA0 801AEB30 3C0B800F */  lui        $t3, %hi(D_800E9AA0)
/* 154BA4 801AEB34 3C0C801D */  lui        $t4, %hi(D_801CD530_ovl7)
/* 154BA8 801AEB38 8C620000 */  lw         $v0, 0x0($v1)
/* 154BAC 801AEB3C 258CD530 */  addiu      $t4, $t4, %lo(D_801CD530_ovl7)
/* 154BB0 801AEB40 00021080 */  sll        $v0, $v0, 2
/* 154BB4 801AEB44 01625821 */  addu       $t3, $t3, $v0
/* 154BB8 801AEB48 8D6B9AA0 */  lw         $t3, %lo(D_800E9AA0)($t3)
/* 154BBC 801AEB4C 000B5080 */  sll        $t2, $t3, 2
/* 154BC0 801AEB50 014B5023 */  subu       $t2, $t2, $t3
/* 154BC4 801AEB54 000A5080 */  sll        $t2, $t2, 2
/* 154BC8 801AEB58 014C2021 */  addu       $a0, $t2, $t4
/* 154BCC 801AEB5C 8C850004 */  lw         $a1, 0x4($a0)
/* 154BD0 801AEB60 50A00011 */  beql       $a1, $zero, .L801AEBA8_ovl7
/* 154BD4 801AEB64 8C850008 */   lw        $a1, 0x8($a0)
/* 154BD8 801AEB68 0C02A806 */  jal        func_800AA018
/* 154BDC 801AEB6C 00A02025 */   or        $a0, $a1, $zero
/* 154BE0 801AEB70 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 154BE4 801AEB74 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 154BE8 801AEB78 3C0D800F */  lui        $t5, %hi(D_800E9AA0)
/* 154BEC 801AEB7C 3C18801D */  lui        $t8, %hi(D_801CD530_ovl7)
/* 154BF0 801AEB80 8C620000 */  lw         $v0, 0x0($v1)
/* 154BF4 801AEB84 2718D530 */  addiu      $t8, $t8, %lo(D_801CD530_ovl7)
/* 154BF8 801AEB88 00021080 */  sll        $v0, $v0, 2
/* 154BFC 801AEB8C 01A26821 */  addu       $t5, $t5, $v0
/* 154C00 801AEB90 8DAD9AA0 */  lw         $t5, %lo(D_800E9AA0)($t5)
/* 154C04 801AEB94 000D7080 */  sll        $t6, $t5, 2
/* 154C08 801AEB98 01CD7023 */  subu       $t6, $t6, $t5
/* 154C0C 801AEB9C 000E7080 */  sll        $t6, $t6, 2
/* 154C10 801AEBA0 01D82021 */  addu       $a0, $t6, $t8
/* 154C14 801AEBA4 8C850008 */  lw         $a1, 0x8($a0)
.L801AEBA8_ovl7:
/* 154C18 801AEBA8 10A00007 */  beqz       $a1, .L801AEBC8_ovl7
/* 154C1C 801AEBAC 00000000 */   nop
/* 154C20 801AEBB0 0C02A806 */  jal        func_800AA018
/* 154C24 801AEBB4 00A02025 */   or        $a0, $a1, $zero
/* 154C28 801AEBB8 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 154C2C 801AEBBC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 154C30 801AEBC0 8C620000 */  lw         $v0, 0x0($v1)
/* 154C34 801AEBC4 00021080 */  sll        $v0, $v0, 2
.L801AEBC8_ovl7:
/* 154C38 801AEBC8 3C01801D */  lui        $at, %hi(D_801CE220_ovl7)
/* 154C3C 801AEBCC C424E220 */  lwc1       $f4, %lo(D_801CE220_ovl7)($at)
/* 154C40 801AEBD0 3C04800E */  lui        $a0, %hi(gEntitiesScaleZArray)
/* 154C44 801AEBD4 248448D0 */  addiu      $a0, $a0, %lo(gEntitiesScaleZArray)
/* 154C48 801AEBD8 0082C821 */  addu       $t9, $a0, $v0
/* 154C4C 801AEBDC E7240000 */  swc1       $f4, 0x0($t9)
/* 154C50 801AEBE0 8C620000 */  lw         $v0, 0x0($v1)
/* 154C54 801AEBE4 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 154C58 801AEBE8 3C0C800F */  lui        $t4, %hi(D_800E8AE0)
/* 154C5C 801AEBEC 00021080 */  sll        $v0, $v0, 2
/* 154C60 801AEBF0 00827821 */  addu       $t7, $a0, $v0
/* 154C64 801AEBF4 C5E00000 */  lwc1       $f0, 0x0($t7)
/* 154C68 801AEBF8 00220821 */  addu       $at, $at, $v0
/* 154C6C 801AEBFC 3C05800E */  lui        $a1, %hi(D_800E6A10)
/* 154C70 801AEC00 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 154C74 801AEC04 8C6B0000 */  lw         $t3, 0x0($v1)
/* 154C78 801AEC08 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 154C7C 801AEC0C 24A56A10 */  addiu      $a1, $a1, %lo(D_800E6A10)
/* 154C80 801AEC10 000B5080 */  sll        $t2, $t3, 2
/* 154C84 801AEC14 002A0821 */  addu       $at, $at, $t2
/* 154C88 801AEC18 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 154C8C 801AEC1C 8C620000 */  lw         $v0, 0x0($v1)
/* 154C90 801AEC20 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 154C94 801AEC24 00021080 */  sll        $v0, $v0, 2
/* 154C98 801AEC28 01826021 */  addu       $t4, $t4, $v0
/* 154C9C 801AEC2C 8D8C8AE0 */  lw         $t4, %lo(D_800E8AE0)($t4)
/* 154CA0 801AEC30 318D0001 */  andi       $t5, $t4, 0x1
/* 154CA4 801AEC34 11A00038 */  beqz       $t5, .L801AED18_ovl7
/* 154CA8 801AEC38 00A26021 */   addu      $t4, $a1, $v0
/* 154CAC 801AEC3C 3C05800E */  lui        $a1, %hi(D_800E6A10)
/* 154CB0 801AEC40 24A56A10 */  addiu      $a1, $a1, %lo(D_800E6A10)
/* 154CB4 801AEC44 3C01801D */  lui        $at, %hi(D_801CE224_ovl7)
/* 154CB8 801AEC48 00A27021 */  addu       $t6, $a1, $v0
/* 154CBC 801AEC4C C420E224 */  lwc1       $f0, %lo(D_801CE224_ovl7)($at)
/* 154CC0 801AEC50 C5C60000 */  lwc1       $f6, 0x0($t6)
/* 154CC4 801AEC54 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 154CC8 801AEC58 00220821 */  addu       $at, $at, $v0
/* 154CCC 801AEC5C 46003202 */  mul.s      $f8, $f6, $f0
/* 154CD0 801AEC60 44808000 */  mtc1       $zero, $f16
/* 154CD4 801AEC64 3C04800F */  lui        $a0, %hi(D_800E98E0)
/* 154CD8 801AEC68 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 154CDC 801AEC6C 8C620000 */  lw         $v0, 0x0($v1)
/* 154CE0 801AEC70 3C01800E */  lui        $at, %hi(D_800E6690)
/* 154CE4 801AEC74 00021080 */  sll        $v0, $v0, 2
/* 154CE8 801AEC78 00A2C021 */  addu       $t8, $a1, $v0
/* 154CEC 801AEC7C C70A0000 */  lwc1       $f10, 0x0($t8)
/* 154CF0 801AEC80 00220821 */  addu       $at, $at, $v0
/* 154CF4 801AEC84 46105482 */  mul.s      $f18, $f10, $f16
/* 154CF8 801AEC88 E4326690 */  swc1       $f18, %lo(D_800E6690)($at)
/* 154CFC 801AEC8C 8C790000 */  lw         $t9, 0x0($v1)
/* 154D00 801AEC90 3C01800E */  lui        $at, %hi(D_800E6850)
/* 154D04 801AEC94 00197880 */  sll        $t7, $t9, 2
/* 154D08 801AEC98 002F0821 */  addu       $at, $at, $t7
/* 154D0C 801AEC9C E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
/* 154D10 801AECA0 8C620000 */  lw         $v0, 0x0($v1)
/* 154D14 801AECA4 24010002 */  addiu      $at, $zero, 0x2
/* 154D18 801AECA8 00021080 */  sll        $v0, $v0, 2
/* 154D1C 801AECAC 00822021 */  addu       $a0, $a0, $v0
/* 154D20 801AECB0 8C8498E0 */  lw         $a0, %lo(D_800E98E0)($a0)
/* 154D24 801AECB4 14810006 */  bne        $a0, $at, .L801AECD0_ovl7
/* 154D28 801AECB8 3C0140D0 */   lui       $at, (0x40D00000 >> 16)
/* 154D2C 801AECBC 44812000 */  mtc1       $at, $f4
/* 154D30 801AECC0 3C01800E */  lui        $at, %hi(D_800E3210)
/* 154D34 801AECC4 00220821 */  addu       $at, $at, $v0
/* 154D38 801AECC8 1000000B */  b          .L801AECF8_ovl7
/* 154D3C 801AECCC E4243210 */   swc1      $f4, %lo(D_800E3210)($at)
.L801AECD0_ovl7:
/* 154D40 801AECD0 24010001 */  addiu      $at, $zero, 0x1
/* 154D44 801AECD4 14810003 */  bne        $a0, $at, .L801AECE4_ovl7
/* 154D48 801AECD8 3C01801D */   lui       $at, %hi(D_801CE228_ovl7)
/* 154D4C 801AECDC 10000003 */  b          .L801AECEC_ovl7
/* 154D50 801AECE0 C420E228 */   lwc1      $f0, %lo(D_801CE228_ovl7)($at)
.L801AECE4_ovl7:
/* 154D54 801AECE4 3C01801D */  lui        $at, %hi(D_801CE22C_ovl7)
/* 154D58 801AECE8 C420E22C */  lwc1       $f0, %lo(D_801CE22C_ovl7)($at)
.L801AECEC_ovl7:
/* 154D5C 801AECEC 3C01800E */  lui        $at, %hi(D_800E3210)
/* 154D60 801AECF0 00220821 */  addu       $at, $at, $v0
/* 154D64 801AECF4 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
.L801AECF8_ovl7:
/* 154D68 801AECF8 8C6B0000 */  lw         $t3, 0x0($v1)
/* 154D6C 801AECFC 3C01801D */  lui        $at, %hi(D_801CE230_ovl7)
/* 154D70 801AED00 C426E230 */  lwc1       $f6, %lo(D_801CE230_ovl7)($at)
/* 154D74 801AED04 3C01800E */  lui        $at, %hi(D_800E3750)
/* 154D78 801AED08 000B5080 */  sll        $t2, $t3, 2
/* 154D7C 801AED0C 002A0821 */  addu       $at, $at, $t2
/* 154D80 801AED10 10000032 */  b          .L801AEDDC_ovl7
/* 154D84 801AED14 E4263750 */   swc1      $f6, %lo(D_800E3750)($at)
.L801AED18_ovl7:
/* 154D88 801AED18 44810000 */  mtc1       $at, $f0
/* 154D8C 801AED1C C5880000 */  lwc1       $f8, 0x0($t4)
/* 154D90 801AED20 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 154D94 801AED24 00220821 */  addu       $at, $at, $v0
/* 154D98 801AED28 46004282 */  mul.s      $f10, $f8, $f0
/* 154D9C 801AED2C 44808000 */  mtc1       $zero, $f16
/* 154DA0 801AED30 3C04800F */  lui        $a0, %hi(D_800E98E0)
/* 154DA4 801AED34 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* 154DA8 801AED38 8C6D0000 */  lw         $t5, 0x0($v1)
/* 154DAC 801AED3C 3C01800E */  lui        $at, %hi(D_800E6690)
/* 154DB0 801AED40 000D7080 */  sll        $t6, $t5, 2
/* 154DB4 801AED44 002E0821 */  addu       $at, $at, $t6
/* 154DB8 801AED48 E4306690 */  swc1       $f16, %lo(D_800E6690)($at)
/* 154DBC 801AED4C 8C780000 */  lw         $t8, 0x0($v1)
/* 154DC0 801AED50 3C01800E */  lui        $at, %hi(D_800E6850)
/* 154DC4 801AED54 0018C880 */  sll        $t9, $t8, 2
/* 154DC8 801AED58 00390821 */  addu       $at, $at, $t9
/* 154DCC 801AED5C E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
/* 154DD0 801AED60 8C620000 */  lw         $v0, 0x0($v1)
/* 154DD4 801AED64 24010002 */  addiu      $at, $zero, 0x2
/* 154DD8 801AED68 00021080 */  sll        $v0, $v0, 2
/* 154DDC 801AED6C 00822021 */  addu       $a0, $a0, $v0
/* 154DE0 801AED70 8C8498E0 */  lw         $a0, %lo(D_800E98E0)($a0)
/* 154DE4 801AED74 14810006 */  bne        $a0, $at, .L801AED90_ovl7
/* 154DE8 801AED78 3C014120 */   lui       $at, (0x41200000 >> 16)
/* 154DEC 801AED7C 44819000 */  mtc1       $at, $f18
/* 154DF0 801AED80 3C01800E */  lui        $at, %hi(D_800E3210)
/* 154DF4 801AED84 00220821 */  addu       $at, $at, $v0
/* 154DF8 801AED88 1000000D */  b          .L801AEDC0_ovl7
/* 154DFC 801AED8C E4323210 */   swc1      $f18, %lo(D_800E3210)($at)
.L801AED90_ovl7:
/* 154E00 801AED90 24010001 */  addiu      $at, $zero, 0x1
/* 154E04 801AED94 14810004 */  bne        $a0, $at, .L801AEDA8_ovl7
/* 154E08 801AED98 3C0140E0 */   lui       $at, (0x40E00000 >> 16)
/* 154E0C 801AED9C 44810000 */  mtc1       $at, $f0
/* 154E10 801AEDA0 10000004 */  b          .L801AEDB4_ovl7
/* 154E14 801AEDA4 00000000 */   nop
.L801AEDA8_ovl7:
/* 154E18 801AEDA8 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 154E1C 801AEDAC 44810000 */  mtc1       $at, $f0
/* 154E20 801AEDB0 00000000 */  nop
.L801AEDB4_ovl7:
/* 154E24 801AEDB4 3C01800E */  lui        $at, %hi(D_800E3210)
/* 154E28 801AEDB8 00220821 */  addu       $at, $at, $v0
/* 154E2C 801AEDBC E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
.L801AEDC0_ovl7:
/* 154E30 801AEDC0 8C6F0000 */  lw         $t7, 0x0($v1)
/* 154E34 801AEDC4 3C01801D */  lui        $at, %hi(D_801CE234_ovl7)
/* 154E38 801AEDC8 C424E234 */  lwc1       $f4, %lo(D_801CE234_ovl7)($at)
/* 154E3C 801AEDCC 3C01800E */  lui        $at, %hi(D_800E3750)
/* 154E40 801AEDD0 000F5880 */  sll        $t3, $t7, 2
/* 154E44 801AEDD4 002B0821 */  addu       $at, $at, $t3
/* 154E48 801AEDD8 E4243750 */  swc1       $f4, %lo(D_800E3750)($at)
.L801AEDDC_ovl7:
/* 154E4C 801AEDDC 8C6A0000 */  lw         $t2, 0x0($v1)
/* 154E50 801AEDE0 3C01800F */  lui        $at, %hi(D_800E8920)
/* 154E54 801AEDE4 000A6080 */  sll        $t4, $t2, 2
/* 154E58 801AEDE8 002C0821 */  addu       $at, $at, $t4
/* 154E5C 801AEDEC 0C02BE85 */  jal        func_800AFA14
/* 154E60 801AEDF0 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 154E64 801AEDF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 154E68 801AEDF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 154E6C 801AEDFC 03E00008 */  jr         $ra
/* 154E70 801AEE00 00000000 */   nop
