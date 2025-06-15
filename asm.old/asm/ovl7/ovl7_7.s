.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_801AEA20
/* 154A90 801AEA20 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 154A94 801AEA24 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 154A98 801AEA28 8D030000 */  lw    $v1, ($t0)
/* 154A9C 801AEA2C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 154AA0 801AEA30 AFBF0014 */  sw    $ra, 0x14($sp)
/* 154AA4 801AEA34 AFA40018 */  sw    $a0, 0x18($sp)
/* 154AA8 801AEA38 8C620000 */  lw    $v0, ($v1)
/* 154AAC 801AEA3C 3C0E800C */  lui   $t6, %hi(D_800B8630) # $t6, 0x800c
/* 154AB0 801AEA40 3C01800E */  lui   $at, 0x800e
/* 154AB4 801AEA44 00021080 */  sll   $v0, $v0, 2
/* 154AB8 801AEA48 00220821 */  addu  $at, $at, $v0
/* 154ABC 801AEA4C 25CE8630 */  addiu $t6, %lo(D_800B8630) # addiu $t6, $t6, -0x79d0
/* 154AC0 801AEA50 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 154AC4 801AEA54 8C780000 */  lw    $t8, ($v1)
/* 154AC8 801AEA58 3C01800E */  lui   $at, 0x800e
/* 154ACC 801AEA5C 3C0F801B */  lui   $t7, %hi(D_801AEE04) # $t7, 0x801b
/* 154AD0 801AEA60 0018C880 */  sll   $t9, $t8, 2
/* 154AD4 801AEA64 00390821 */  addu  $at, $at, $t9
/* 154AD8 801AEA68 25EFEE04 */  addiu $t7, %lo(D_801AEE04) # addiu $t7, $t7, -0x11fc
/* 154ADC 801AEA6C AC2FF150 */  sw    $t7, -0xeb0($at)
/* 154AE0 801AEA70 8C6B0000 */  lw    $t3, ($v1)
/* 154AE4 801AEA74 3C07800E */  lui   $a3, 0x800e
/* 154AE8 801AEA78 00E23821 */  addu  $a3, $a3, $v0
/* 154AEC 801AEA7C 8CE71B50 */  lw    $a3, 0x1b50($a3)
/* 154AF0 801AEA80 3C01800E */  lui   $at, 0x800e
/* 154AF4 801AEA84 000B6080 */  sll   $t4, $t3, 2
/* 154AF8 801AEA88 002C0821 */  addu  $at, $at, $t4
/* 154AFC 801AEA8C 240A0023 */  li    $t2, 35
/* 154B00 801AEA90 3C0D801D */  lui   $t5, %hi(D_801CD33C) # $t5, 0x801d
/* 154B04 801AEA94 AC2ADA90 */  sw    $t2, -0x2570($at)
/* 154B08 801AEA98 25ADD33C */  addiu $t5, %lo(D_801CD33C) # addiu $t5, $t5, -0x2cc4
/* 154B0C 801AEA9C ACED0098 */  sw    $t5, 0x98($a3)
/* 154B10 801AEAA0 8D030000 */  lw    $v1, ($t0)
/* 154B14 801AEAA4 3C09800F */  lui   $t1, %hi(D_800E9AA0) # $t1, 0x800f
/* 154B18 801AEAA8 25299AA0 */  addiu $t1, %lo(D_800E9AA0) # addiu $t1, $t1, -0x6560
/* 154B1C 801AEAAC 8C620000 */  lw    $v0, ($v1)
/* 154B20 801AEAB0 3C01800F */  lui   $at, 0x800f
/* 154B24 801AEAB4 240F000A */  li    $t7, 10
/* 154B28 801AEAB8 00021080 */  sll   $v0, $v0, 2
/* 154B2C 801AEABC 01227021 */  addu  $t6, $t1, $v0
/* 154B30 801AEAC0 8DD80000 */  lw    $t8, ($t6)
/* 154B34 801AEAC4 00220821 */  addu  $at, $at, $v0
/* 154B38 801AEAC8 3C04801D */  lui   $a0, 0x801d
/* 154B3C 801AEACC AC3893A0 */  sw    $t8, -0x6c60($at)
/* 154B40 801AEAD0 8C790000 */  lw    $t9, ($v1)
/* 154B44 801AEAD4 3C01800F */  lui   $at, 0x800f
/* 154B48 801AEAD8 24050023 */  li    $a1, 35
/* 154B4C 801AEADC 00195880 */  sll   $t3, $t9, 2
/* 154B50 801AEAE0 002B0821 */  addu  $at, $at, $t3
/* 154B54 801AEAE4 AC2F9560 */  sw    $t7, -0x6aa0($at)
/* 154B58 801AEAE8 8C6A0000 */  lw    $t2, ($v1)
/* 154B5C 801AEAEC 3C01800F */  lui   $at, 0x800f
/* 154B60 801AEAF0 24060010 */  li    $a2, 16
/* 154B64 801AEAF4 000A6080 */  sll   $t4, $t2, 2
/* 154B68 801AEAF8 002C0821 */  addu  $at, $at, $t4
/* 154B6C 801AEAFC AC209C60 */  sw    $zero, -0x63a0($at)
/* 154B70 801AEB00 8C6D0000 */  lw    $t5, ($v1)
/* 154B74 801AEB04 000D7080 */  sll   $t6, $t5, 2
/* 154B78 801AEB08 012EC021 */  addu  $t8, $t1, $t6
/* 154B7C 801AEB0C 8F190000 */  lw    $t9, ($t8)
/* 154B80 801AEB10 00197880 */  sll   $t7, $t9, 2
/* 154B84 801AEB14 01F97823 */  subu  $t7, $t7, $t9
/* 154B88 801AEB18 000F7880 */  sll   $t7, $t7, 2
/* 154B8C 801AEB1C 008F2021 */  addu  $a0, $a0, $t7
/* 154B90 801AEB20 0C02A619 */  jal   func_800A9864
/* 154B94 801AEB24 8C84D530 */   lw    $a0, -0x2ad0($a0)
/* 154B98 801AEB28 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 154B9C 801AEB2C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 154BA0 801AEB30 3C0B800F */  lui   $t3, 0x800f
/* 154BA4 801AEB34 3C0C801D */  lui   $t4, %hi(D_801CD530) # $t4, 0x801d
/* 154BA8 801AEB38 8C620000 */  lw    $v0, ($v1)
/* 154BAC 801AEB3C 258CD530 */  addiu $t4, %lo(D_801CD530) # addiu $t4, $t4, -0x2ad0
/* 154BB0 801AEB40 00021080 */  sll   $v0, $v0, 2
/* 154BB4 801AEB44 01625821 */  addu  $t3, $t3, $v0
/* 154BB8 801AEB48 8D6B9AA0 */  lw    $t3, -0x6560($t3)
/* 154BBC 801AEB4C 000B5080 */  sll   $t2, $t3, 2
/* 154BC0 801AEB50 014B5023 */  subu  $t2, $t2, $t3
/* 154BC4 801AEB54 000A5080 */  sll   $t2, $t2, 2
/* 154BC8 801AEB58 014C2021 */  addu  $a0, $t2, $t4
/* 154BCC 801AEB5C 8C850004 */  lw    $a1, 4($a0)
/* 154BD0 801AEB60 50A00011 */  beql  $a1, $zero, .L801AEBA8_ovl7
/* 154BD4 801AEB64 8C850008 */   lw    $a1, 8($a0)
/* 154BD8 801AEB68 0C02A806 */  jal   func_800AA018
/* 154BDC 801AEB6C 00A02025 */   move  $a0, $a1
/* 154BE0 801AEB70 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 154BE4 801AEB74 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 154BE8 801AEB78 3C0D800F */  lui   $t5, 0x800f
/* 154BEC 801AEB7C 3C18801D */  lui   $t8, %hi(D_801CD530) # $t8, 0x801d
/* 154BF0 801AEB80 8C620000 */  lw    $v0, ($v1)
/* 154BF4 801AEB84 2718D530 */  addiu $t8, %lo(D_801CD530) # addiu $t8, $t8, -0x2ad0
/* 154BF8 801AEB88 00021080 */  sll   $v0, $v0, 2
/* 154BFC 801AEB8C 01A26821 */  addu  $t5, $t5, $v0
/* 154C00 801AEB90 8DAD9AA0 */  lw    $t5, -0x6560($t5)
/* 154C04 801AEB94 000D7080 */  sll   $t6, $t5, 2
/* 154C08 801AEB98 01CD7023 */  subu  $t6, $t6, $t5
/* 154C0C 801AEB9C 000E7080 */  sll   $t6, $t6, 2
/* 154C10 801AEBA0 01D82021 */  addu  $a0, $t6, $t8
/* 154C14 801AEBA4 8C850008 */  lw    $a1, 8($a0)
.L801AEBA8_ovl7:
/* 154C18 801AEBA8 10A00007 */  beqz  $a1, .L801AEBC8_ovl7
/* 154C1C 801AEBAC 00000000 */   nop   
/* 154C20 801AEBB0 0C02A806 */  jal   func_800AA018
/* 154C24 801AEBB4 00A02025 */   move  $a0, $a1
/* 154C28 801AEBB8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 154C2C 801AEBBC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 154C30 801AEBC0 8C620000 */  lw    $v0, ($v1)
/* 154C34 801AEBC4 00021080 */  sll   $v0, $v0, 2
.L801AEBC8_ovl7:
/* 154C38 801AEBC8 3C01801D */  lui   $at, %hi(D_801CE220) # $at, 0x801d
/* 154C3C 801AEBCC C424E220 */  lwc1  $f4, %lo(D_801CE220)($at)
/* 154C40 801AEBD0 3C04800E */  lui   $a0, %hi(gEntitiesScaleZArray) # $a0, 0x800e
/* 154C44 801AEBD4 248448D0 */  addiu $a0, %lo(gEntitiesScaleZArray) # addiu $a0, $a0, 0x48d0
/* 154C48 801AEBD8 0082C821 */  addu  $t9, $a0, $v0
/* 154C4C 801AEBDC E7240000 */  swc1  $f4, ($t9)
/* 154C50 801AEBE0 8C620000 */  lw    $v0, ($v1)
/* 154C54 801AEBE4 3C01800E */  lui   $at, 0x800e
/* 154C58 801AEBE8 3C0C800F */  lui   $t4, 0x800f
/* 154C5C 801AEBEC 00021080 */  sll   $v0, $v0, 2
/* 154C60 801AEBF0 00827821 */  addu  $t7, $a0, $v0
/* 154C64 801AEBF4 C5E00000 */  lwc1  $f0, ($t7)
/* 154C68 801AEBF8 00220821 */  addu  $at, $at, $v0
/* 154C6C 801AEBFC 3C05800E */  lui   $a1, %hi(D_800E6A10) # $a1, 0x800e
/* 154C70 801AEC00 E4204710 */  swc1  $f0, 0x4710($at)
/* 154C74 801AEC04 8C6B0000 */  lw    $t3, ($v1)
/* 154C78 801AEC08 3C01800E */  lui   $at, 0x800e
/* 154C7C 801AEC0C 24A56A10 */  addiu $a1, %lo(D_800E6A10) # addiu $a1, $a1, 0x6a10
/* 154C80 801AEC10 000B5080 */  sll   $t2, $t3, 2
/* 154C84 801AEC14 002A0821 */  addu  $at, $at, $t2
/* 154C88 801AEC18 E4204550 */  swc1  $f0, 0x4550($at)
/* 154C8C 801AEC1C 8C620000 */  lw    $v0, ($v1)
/* 154C90 801AEC20 3C0140C0 */  lui   $at, 0x40c0
/* 154C94 801AEC24 00021080 */  sll   $v0, $v0, 2
/* 154C98 801AEC28 01826021 */  addu  $t4, $t4, $v0
/* 154C9C 801AEC2C 8D8C8AE0 */  lw    $t4, -0x7520($t4)
/* 154CA0 801AEC30 318D0001 */  andi  $t5, $t4, 1
/* 154CA4 801AEC34 11A00038 */  beqz  $t5, .L801AED18_ovl7
/* 154CA8 801AEC38 00A26021 */   addu  $t4, $a1, $v0
/* 154CAC 801AEC3C 3C05800E */  lui   $a1, %hi(D_800E6A10) # $a1, 0x800e
/* 154CB0 801AEC40 24A56A10 */  addiu $a1, %lo(D_800E6A10) # addiu $a1, $a1, 0x6a10
/* 154CB4 801AEC44 3C01801D */  lui   $at, %hi(D_801CE224) # $at, 0x801d
/* 154CB8 801AEC48 00A27021 */  addu  $t6, $a1, $v0
/* 154CBC 801AEC4C C420E224 */  lwc1  $f0, %lo(D_801CE224)($at)
/* 154CC0 801AEC50 C5C60000 */  lwc1  $f6, ($t6)
/* 154CC4 801AEC54 3C01800E */  lui   $at, 0x800e
/* 154CC8 801AEC58 00220821 */  addu  $at, $at, $v0
/* 154CCC 801AEC5C 46003202 */  mul.s $f8, $f6, $f0
/* 154CD0 801AEC60 44808000 */  mtc1  $zero, $f16
/* 154CD4 801AEC64 3C04800F */  lui   $a0, 0x800f
/* 154CD8 801AEC68 E42864D0 */  swc1  $f8, 0x64d0($at)
/* 154CDC 801AEC6C 8C620000 */  lw    $v0, ($v1)
/* 154CE0 801AEC70 3C01800E */  lui   $at, 0x800e
/* 154CE4 801AEC74 00021080 */  sll   $v0, $v0, 2
/* 154CE8 801AEC78 00A2C021 */  addu  $t8, $a1, $v0
/* 154CEC 801AEC7C C70A0000 */  lwc1  $f10, ($t8)
/* 154CF0 801AEC80 00220821 */  addu  $at, $at, $v0
/* 154CF4 801AEC84 46105482 */  mul.s $f18, $f10, $f16
/* 154CF8 801AEC88 E4326690 */  swc1  $f18, 0x6690($at)
/* 154CFC 801AEC8C 8C790000 */  lw    $t9, ($v1)
/* 154D00 801AEC90 3C01800E */  lui   $at, 0x800e
/* 154D04 801AEC94 00197880 */  sll   $t7, $t9, 2
/* 154D08 801AEC98 002F0821 */  addu  $at, $at, $t7
/* 154D0C 801AEC9C E4206850 */  swc1  $f0, 0x6850($at)
/* 154D10 801AECA0 8C620000 */  lw    $v0, ($v1)
/* 154D14 801AECA4 24010002 */  li    $at, 2
/* 154D18 801AECA8 00021080 */  sll   $v0, $v0, 2
/* 154D1C 801AECAC 00822021 */  addu  $a0, $a0, $v0
/* 154D20 801AECB0 8C8498E0 */  lw    $a0, -0x6720($a0)
/* 154D24 801AECB4 14810006 */  bne   $a0, $at, .L801AECD0_ovl7
/* 154D28 801AECB8 3C0140D0 */   li    $at, 0x40D00000 # 6.500000
/* 154D2C 801AECBC 44812000 */  mtc1  $at, $f4
/* 154D30 801AECC0 3C01800E */  lui   $at, 0x800e
/* 154D34 801AECC4 00220821 */  addu  $at, $at, $v0
/* 154D38 801AECC8 1000000B */  b     .L801AECF8_ovl7
/* 154D3C 801AECCC E4243210 */   swc1  $f4, 0x3210($at)
.L801AECD0_ovl7:
/* 154D40 801AECD0 24010001 */  li    $at, 1
/* 154D44 801AECD4 14810003 */  bne   $a0, $at, .L801AECE4_ovl7
/* 154D48 801AECD8 3C01801D */   lui   $at, %hi(D_801CE228) # $at, 0x801d
/* 154D4C 801AECDC 10000003 */  b     .L801AECEC_ovl7
/* 154D50 801AECE0 C420E228 */   lwc1  $f0, %lo(D_801CE228)($at)
.L801AECE4_ovl7:
/* 154D54 801AECE4 3C01801D */  lui   $at, %hi(D_801CE22C) # $at, 0x801d
/* 154D58 801AECE8 C420E22C */  lwc1  $f0, %lo(D_801CE22C)($at)
.L801AECEC_ovl7:
/* 154D5C 801AECEC 3C01800E */  lui   $at, 0x800e
/* 154D60 801AECF0 00220821 */  addu  $at, $at, $v0
/* 154D64 801AECF4 E4203210 */  swc1  $f0, 0x3210($at)
.L801AECF8_ovl7:
/* 154D68 801AECF8 8C6B0000 */  lw    $t3, ($v1)
/* 154D6C 801AECFC 3C01801D */  lui   $at, %hi(D_801CE230) # $at, 0x801d
/* 154D70 801AED00 C426E230 */  lwc1  $f6, %lo(D_801CE230)($at)
/* 154D74 801AED04 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 154D78 801AED08 000B5080 */  sll   $t2, $t3, 2
/* 154D7C 801AED0C 002A0821 */  addu  $at, $at, $t2
/* 154D80 801AED10 10000032 */  b     .L801AEDDC_ovl7
/* 154D84 801AED14 E4263750 */   swc1  $f6, 0x3750($at)
.L801AED18_ovl7:
/* 154D88 801AED18 44810000 */  mtc1  $at, $f0
/* 154D8C 801AED1C C5880000 */  lwc1  $f8, ($t4)
/* 154D90 801AED20 3C01800E */  lui   $at, 0x800e
/* 154D94 801AED24 00220821 */  addu  $at, $at, $v0
/* 154D98 801AED28 46004282 */  mul.s $f10, $f8, $f0
/* 154D9C 801AED2C 44808000 */  mtc1  $zero, $f16
/* 154DA0 801AED30 3C04800F */  lui   $a0, 0x800f
/* 154DA4 801AED34 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 154DA8 801AED38 8C6D0000 */  lw    $t5, ($v1)
/* 154DAC 801AED3C 3C01800E */  lui   $at, 0x800e
/* 154DB0 801AED40 000D7080 */  sll   $t6, $t5, 2
/* 154DB4 801AED44 002E0821 */  addu  $at, $at, $t6
/* 154DB8 801AED48 E4306690 */  swc1  $f16, 0x6690($at)
/* 154DBC 801AED4C 8C780000 */  lw    $t8, ($v1)
/* 154DC0 801AED50 3C01800E */  lui   $at, 0x800e
/* 154DC4 801AED54 0018C880 */  sll   $t9, $t8, 2
/* 154DC8 801AED58 00390821 */  addu  $at, $at, $t9
/* 154DCC 801AED5C E4206850 */  swc1  $f0, 0x6850($at)
/* 154DD0 801AED60 8C620000 */  lw    $v0, ($v1)
/* 154DD4 801AED64 24010002 */  li    $at, 2
/* 154DD8 801AED68 00021080 */  sll   $v0, $v0, 2
/* 154DDC 801AED6C 00822021 */  addu  $a0, $a0, $v0
/* 154DE0 801AED70 8C8498E0 */  lw    $a0, -0x6720($a0)
/* 154DE4 801AED74 14810006 */  bne   $a0, $at, .L801AED90_ovl7
/* 154DE8 801AED78 3C014120 */   li    $at, 0x41200000 # 10.000000
/* 154DEC 801AED7C 44819000 */  mtc1  $at, $f18
/* 154DF0 801AED80 3C01800E */  lui   $at, 0x800e
/* 154DF4 801AED84 00220821 */  addu  $at, $at, $v0
/* 154DF8 801AED88 1000000D */  b     .L801AEDC0_ovl7
/* 154DFC 801AED8C E4323210 */   swc1  $f18, 0x3210($at)
.L801AED90_ovl7:
/* 154E00 801AED90 24010001 */  li    $at, 1
/* 154E04 801AED94 14810004 */  bne   $a0, $at, .L801AEDA8_ovl7
/* 154E08 801AED98 3C0140E0 */   li    $at, 0x40E00000 # 7.000000
/* 154E0C 801AED9C 44810000 */  mtc1  $at, $f0
/* 154E10 801AEDA0 10000004 */  b     .L801AEDB4_ovl7
/* 154E14 801AEDA4 00000000 */   nop   
.L801AEDA8_ovl7:
/* 154E18 801AEDA8 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 154E1C 801AEDAC 44810000 */  mtc1  $at, $f0
/* 154E20 801AEDB0 00000000 */  nop   
.L801AEDB4_ovl7:
/* 154E24 801AEDB4 3C01800E */  lui   $at, 0x800e
/* 154E28 801AEDB8 00220821 */  addu  $at, $at, $v0
/* 154E2C 801AEDBC E4203210 */  swc1  $f0, 0x3210($at)
.L801AEDC0_ovl7:
/* 154E30 801AEDC0 8C6F0000 */  lw    $t7, ($v1)
/* 154E34 801AEDC4 3C01801D */  lui   $at, %hi(D_801CE234) # $at, 0x801d
/* 154E38 801AEDC8 C424E234 */  lwc1  $f4, %lo(D_801CE234)($at)
/* 154E3C 801AEDCC 3C01800E */  lui   $at, 0x800e
/* 154E40 801AEDD0 000F5880 */  sll   $t3, $t7, 2
/* 154E44 801AEDD4 002B0821 */  addu  $at, $at, $t3
/* 154E48 801AEDD8 E4243750 */  swc1  $f4, 0x3750($at)
.L801AEDDC_ovl7:
/* 154E4C 801AEDDC 8C6A0000 */  lw    $t2, ($v1)
/* 154E50 801AEDE0 3C01800F */  lui   $at, 0x800f
/* 154E54 801AEDE4 000A6080 */  sll   $t4, $t2, 2
/* 154E58 801AEDE8 002C0821 */  addu  $at, $at, $t4
/* 154E5C 801AEDEC 0C02BE85 */  jal   func_800AFA14
/* 154E60 801AEDF0 AC208920 */   sw    $zero, -0x76e0($at)
/* 154E64 801AEDF4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 154E68 801AEDF8 27BD0018 */  addiu $sp, $sp, 0x18
/* 154E6C 801AEDFC 03E00008 */  jr    $ra
/* 154E70 801AEE00 00000000 */   nop   

.type func_801AEA20, @function
.size func_801AEA20, . - func_801AEA20

glabel func_801AEE04_ovl7
/* 154E74 801AEE04 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 154E78 801AEE08 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 154E7C 801AEE0C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 154E80 801AEE10 AFBF0014 */  sw    $ra, 0x14($sp)
/* 154E84 801AEE14 8CC30000 */  lw    $v1, ($a2)
/* 154E88 801AEE18 3C0E800F */  lui   $t6, 0x800f
/* 154E8C 801AEE1C 3C0F800F */  lui   $t7, 0x800f
/* 154E90 801AEE20 00031880 */  sll   $v1, $v1, 2
/* 154E94 801AEE24 01C37021 */  addu  $t6, $t6, $v1
/* 154E98 801AEE28 8DCE83E0 */  lw    $t6, -0x7c20($t6)
/* 154E9C 801AEE2C 00003825 */  move  $a3, $zero
/* 154EA0 801AEE30 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 154EA4 801AEE34 11C00008 */  beqz  $t6, .L801AEE58_ovl7
/* 154EA8 801AEE38 01E37821 */   addu  $t7, $t7, $v1
/* 154EAC 801AEE3C 3C04800E */  lui   $a0, 0x800e
/* 154EB0 801AEE40 00832021 */  addu  $a0, $a0, $v1
/* 154EB4 801AEE44 8C84E510 */  lw    $a0, -0x1af0($a0)
/* 154EB8 801AEE48 0C02C7B2 */  jal   assign_new_process_entry
/* 154EBC 801AEE4C 24A5CF84 */   addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 154EC0 801AEE50 10000058 */  b     .L801AEFB4_ovl7
/* 154EC4 801AEE54 8FBF0014 */   lw    $ra, 0x14($sp)
.L801AEE58_ovl7:
/* 154EC8 801AEE58 8DEF9C60 */  lw    $t7, -0x63a0($t7)
/* 154ECC 801AEE5C 15E00008 */  bnez  $t7, .L801AEE80_ovl7
/* 154ED0 801AEE60 00000000 */   nop   
/* 154ED4 801AEE64 0C06835D */  jal   func_801A0D74_ovl7
/* 154ED8 801AEE68 AFA70018 */   sw    $a3, 0x18($sp)
/* 154EDC 801AEE6C 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 154EE0 801AEE70 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 154EE4 801AEE74 8FA70018 */  lw    $a3, 0x18($sp)
/* 154EE8 801AEE78 8CC30000 */  lw    $v1, ($a2)
/* 154EEC 801AEE7C 00031880 */  sll   $v1, $v1, 2
.L801AEE80_ovl7:
/* 154EF0 801AEE80 3C18800F */  lui   $t8, %hi(D_800E9560) # $t8, 0x800f
/* 154EF4 801AEE84 27189560 */  addiu $t8, %lo(D_800E9560) # addiu $t8, $t8, -0x6aa0
/* 154EF8 801AEE88 00781021 */  addu  $v0, $v1, $t8
/* 154EFC 801AEE8C 8C440000 */  lw    $a0, ($v0)
/* 154F00 801AEE90 1C800007 */  bgtz  $a0, .L801AEEB0_ovl7
/* 154F04 801AEE94 2499FFFF */   addiu $t9, $a0, -1
/* 154F08 801AEE98 0C068220 */  jal   func_801A0880_ovl7
/* 154F0C 801AEE9C 00000000 */   nop   
/* 154F10 801AEEA0 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 154F14 801AEEA4 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 154F18 801AEEA8 10000002 */  b     .L801AEEB4_ovl7
/* 154F1C 801AEEAC 00403825 */   move  $a3, $v0
.L801AEEB0_ovl7:
/* 154F20 801AEEB0 AC590000 */  sw    $t9, ($v0)
.L801AEEB4_ovl7:
/* 154F24 801AEEB4 14E0000A */  bnez  $a3, .L801AEEE0_ovl7
/* 154F28 801AEEB8 3C04801D */   lui   $a0, %hi(D_801CA910) # $a0, 0x801d
/* 154F2C 801AEEBC 8CC50000 */  lw    $a1, ($a2)
/* 154F30 801AEEC0 AFA70018 */  sw    $a3, 0x18($sp)
/* 154F34 801AEEC4 0C0445EF */  jal   func_801117BC
/* 154F38 801AEEC8 2484A910 */   addiu $a0, %lo(D_801CA910) # addiu $a0, $a0, -0x56f0
/* 154F3C 801AEECC 0C044713 */  jal   func_80111C4C
/* 154F40 801AEED0 00402025 */   move  $a0, $v0
/* 154F44 801AEED4 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 154F48 801AEED8 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 154F4C 801AEEDC 8FA70018 */  lw    $a3, 0x18($sp)
.L801AEEE0_ovl7:
/* 154F50 801AEEE0 54E0001D */  bnezl $a3, .L801AEF58_ovl7
/* 154F54 801AEEE4 8CCC0000 */   lw    $t4, ($a2)
/* 154F58 801AEEE8 8CC30000 */  lw    $v1, ($a2)
/* 154F5C 801AEEEC 3C08800F */  lui   $t0, 0x800f
/* 154F60 801AEEF0 24010001 */  li    $at, 1
/* 154F64 801AEEF4 00031880 */  sll   $v1, $v1, 2
/* 154F68 801AEEF8 01034021 */  addu  $t0, $t0, $v1
/* 154F6C 801AEEFC 8D088920 */  lw    $t0, -0x76e0($t0)
/* 154F70 801AEF00 3C09800F */  lui   $t1, 0x800f
/* 154F74 801AEF04 01234821 */  addu  $t1, $t1, $v1
/* 154F78 801AEF08 11010003 */  beq   $t0, $at, .L801AEF18_ovl7
/* 154F7C 801AEF0C 3C0A800F */   lui   $t2, %hi(D_800E9720) # $t2, 0x800f
/* 154F80 801AEF10 8D299C60 */  lw    $t1, -0x63a0($t1)
/* 154F84 801AEF14 1120000F */  beqz  $t1, .L801AEF54_ovl7
.L801AEF18_ovl7:
/* 154F88 801AEF18 254A9720 */   addiu $t2, %lo(D_800E9720) # addiu $t2, $t2, -0x68e0
/* 154F8C 801AEF1C 006A1021 */  addu  $v0, $v1, $t2
/* 154F90 801AEF20 8C440000 */  lw    $a0, ($v0)
/* 154F94 801AEF24 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 154F98 801AEF28 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 154F9C 801AEF2C 1C800008 */  bgtz  $a0, .L801AEF50_ovl7
/* 154FA0 801AEF30 248BFFFF */   addiu $t3, $a0, -1
/* 154FA4 801AEF34 3C04800E */  lui   $a0, 0x800e
/* 154FA8 801AEF38 00832021 */  addu  $a0, $a0, $v1
/* 154FAC 801AEF3C 0C02C7B2 */  jal   assign_new_process_entry
/* 154FB0 801AEF40 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 154FB4 801AEF44 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 154FB8 801AEF48 10000002 */  b     .L801AEF54_ovl7
/* 154FBC 801AEF4C 8CC6A7C4 */   lw    $a2, %lo(D_8004A7C4)($a2)
.L801AEF50_ovl7:
/* 154FC0 801AEF50 AC4B0000 */  sw    $t3, ($v0)
.L801AEF54_ovl7:
/* 154FC4 801AEF54 8CCC0000 */  lw    $t4, ($a2)
.L801AEF58_ovl7:
/* 154FC8 801AEF58 3C0E800E */  lui   $t6, %hi(gEntitiesAngleYArray) # $t6, 0x800e
/* 154FCC 801AEF5C 25CE41D0 */  addiu $t6, %lo(gEntitiesAngleYArray) # addiu $t6, $t6, 0x41d0
/* 154FD0 801AEF60 000C6880 */  sll   $t5, $t4, 2
/* 154FD4 801AEF64 01AE1021 */  addu  $v0, $t5, $t6
/* 154FD8 801AEF68 3C01801D */  lui   $at, %hi(D_801CE238) # $at, 0x801d
/* 154FDC 801AEF6C C426E238 */  lwc1  $f6, %lo(D_801CE238)($at)
/* 154FE0 801AEF70 C4440000 */  lwc1  $f4, ($v0)
/* 154FE4 801AEF74 3C0F800F */  lui   $t7, %hi(D_800E8760) # $t7, 0x800f
/* 154FE8 801AEF78 24010001 */  li    $at, 1
/* 154FEC 801AEF7C 46062201 */  sub.s $f8, $f4, $f6
/* 154FF0 801AEF80 3C04800E */  lui   $a0, 0x800e
/* 154FF4 801AEF84 E4480000 */  swc1  $f8, ($v0)
/* 154FF8 801AEF88 8DEF8760 */  lw    $t7, %lo(D_800E8760)($t7)
/* 154FFC 801AEF8C 55E10009 */  bnel  $t7, $at, .L801AEFB4_ovl7
/* 155000 801AEF90 8FBF0014 */   lw    $ra, 0x14($sp)
/* 155004 801AEF94 8CD80000 */  lw    $t8, ($a2)
/* 155008 801AEF98 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 15500C 801AEF9C 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 155010 801AEFA0 0018C880 */  sll   $t9, $t8, 2
/* 155014 801AEFA4 00992021 */  addu  $a0, $a0, $t9
/* 155018 801AEFA8 0C02C7B2 */  jal   assign_new_process_entry
/* 15501C 801AEFAC 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 155020 801AEFB0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801AEFB4_ovl7:
/* 155024 801AEFB4 27BD0020 */  addiu $sp, $sp, 0x20
/* 155028 801AEFB8 03E00008 */  jr    $ra
/* 15502C 801AEFBC 00000000 */   nop   

.type func_801AEE04_ovl7, @function
.size func_801AEE04_ovl7, . - func_801AEE04_ovl7

glabel func_801AEFC0_ovl7
/* 155030 801AEFC0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 155034 801AEFC4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 155038 801AEFC8 0C02CD48 */  jal   func_800B3520
/* 15503C 801AEFCC AFA40018 */   sw    $a0, 0x18($sp)
/* 155040 801AEFD0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 155044 801AEFD4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 155048 801AEFD8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15504C 801AEFDC 3C01800F */  lui   $at, 0x800f
/* 155050 801AEFE0 8DF80000 */  lw    $t8, ($t7)
/* 155054 801AEFE4 240E0001 */  li    $t6, 1
/* 155058 801AEFE8 27BD0018 */  addiu $sp, $sp, 0x18
/* 15505C 801AEFEC 0018C880 */  sll   $t9, $t8, 2
/* 155060 801AEFF0 00390821 */  addu  $at, $at, $t9
/* 155064 801AEFF4 03E00008 */  jr    $ra
/* 155068 801AEFF8 AC2E9C60 */   sw    $t6, -0x63a0($at)

.type func_801AEFC0_ovl7, @function
.size func_801AEFC0_ovl7, . - func_801AEFC0_ovl7

glabel func_801AEFFC_ovl7
/* 15506C 801AEFFC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 155070 801AF000 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 155074 801AF004 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 155078 801AF008 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15507C 801AF00C AFA0001C */  sw    $zero, 0x1c($sp)
/* 155080 801AF010 8DCF0000 */  lw    $t7, ($t6)
/* 155084 801AF014 3C19800F */  lui   $t9, 0x800f
/* 155088 801AF018 3C04801D */  lui   $a0, 0x801d
/* 15508C 801AF01C 000FC080 */  sll   $t8, $t7, 2
/* 155090 801AF020 0338C821 */  addu  $t9, $t9, $t8
/* 155094 801AF024 8F3993A0 */  lw    $t9, -0x6c60($t9)
/* 155098 801AF028 00194080 */  sll   $t0, $t9, 2
/* 15509C 801AF02C 01194023 */  subu  $t0, $t0, $t9
/* 1550A0 801AF030 00084080 */  sll   $t0, $t0, 2
/* 1550A4 801AF034 00882021 */  addu  $a0, $a0, $t0
/* 1550A8 801AF038 0C02A5D8 */  jal   func_800A9760
/* 1550AC 801AF03C 8C84D530 */   lw    $a0, -0x2ad0($a0)
/* 1550B0 801AF040 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 1550B4 801AF044 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 1550B8 801AF048 3C0C800F */  lui   $t4, 0x800f
/* 1550BC 801AF04C 3C0E801D */  lui   $t6, %hi(D_801CD530) # $t6, 0x801d
/* 1550C0 801AF050 8D2A0000 */  lw    $t2, ($t1)
/* 1550C4 801AF054 25CED530 */  addiu $t6, %lo(D_801CD530) # addiu $t6, $t6, -0x2ad0
/* 1550C8 801AF058 000A5880 */  sll   $t3, $t2, 2
/* 1550CC 801AF05C 018B6021 */  addu  $t4, $t4, $t3
/* 1550D0 801AF060 8D8C93A0 */  lw    $t4, -0x6c60($t4)
/* 1550D4 801AF064 000C6880 */  sll   $t5, $t4, 2
/* 1550D8 801AF068 01AC6823 */  subu  $t5, $t5, $t4
/* 1550DC 801AF06C 000D6880 */  sll   $t5, $t5, 2
/* 1550E0 801AF070 01AE1021 */  addu  $v0, $t5, $t6
/* 1550E4 801AF074 8C440004 */  lw    $a0, 4($v0)
/* 1550E8 801AF078 50800016 */  beql  $a0, $zero, .L801AF0D4_ovl7
/* 1550EC 801AF07C 8C440008 */   lw    $a0, 8($v0)
/* 1550F0 801AF080 0C02A806 */  jal   func_800AA018
/* 1550F4 801AF084 00000000 */   nop   
/* 1550F8 801AF088 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1550FC 801AF08C 0C02BB30 */  jal   func_800AECC0
/* 155100 801AF090 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 155104 801AF094 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 155108 801AF098 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 15510C 801AF09C 240F0001 */  li    $t7, 1
/* 155110 801AF0A0 AFAF001C */  sw    $t7, 0x1c($sp)
/* 155114 801AF0A4 8F190000 */  lw    $t9, ($t8)
/* 155118 801AF0A8 3C09800F */  lui   $t1, 0x800f
/* 15511C 801AF0AC 3C0B801D */  lui   $t3, %hi(D_801CD530) # $t3, 0x801d
/* 155120 801AF0B0 00194080 */  sll   $t0, $t9, 2
/* 155124 801AF0B4 01284821 */  addu  $t1, $t1, $t0
/* 155128 801AF0B8 8D2993A0 */  lw    $t1, -0x6c60($t1)
/* 15512C 801AF0BC 256BD530 */  addiu $t3, %lo(D_801CD530) # addiu $t3, $t3, -0x2ad0
/* 155130 801AF0C0 00095080 */  sll   $t2, $t1, 2
/* 155134 801AF0C4 01495023 */  subu  $t2, $t2, $t1
/* 155138 801AF0C8 000A5080 */  sll   $t2, $t2, 2
/* 15513C 801AF0CC 014B1021 */  addu  $v0, $t2, $t3
/* 155140 801AF0D0 8C440008 */  lw    $a0, 8($v0)
.L801AF0D4_ovl7:
/* 155144 801AF0D4 50800007 */  beql  $a0, $zero, .L801AF0F4_ovl7
/* 155148 801AF0D8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 15514C 801AF0DC 0C02A806 */  jal   func_800AA018
/* 155150 801AF0E0 00000000 */   nop   
/* 155154 801AF0E4 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 155158 801AF0E8 0C02BB48 */  jal   func_800AED20
/* 15515C 801AF0EC C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 155160 801AF0F0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801AF0F4_ovl7:
/* 155164 801AF0F4 8FA2001C */  lw    $v0, 0x1c($sp)
/* 155168 801AF0F8 27BD0020 */  addiu $sp, $sp, 0x20
/* 15516C 801AF0FC 03E00008 */  jr    $ra
/* 155170 801AF100 00000000 */   nop   

.type func_801AEFFC_ovl7, @function
.size func_801AEFFC_ovl7, . - func_801AEFFC_ovl7

glabel func_801AF104_ovl7
/* 155174 801AF104 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 155178 801AF108 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 15517C 801AF10C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 155180 801AF110 AFBF0014 */  sw    $ra, 0x14($sp)
/* 155184 801AF114 AFA40030 */  sw    $a0, 0x30($sp)
/* 155188 801AF118 8DF80000 */  lw    $t8, ($t7)
/* 15518C 801AF11C 3C0E800B */  lui   $t6, %hi(D_800B6474) # $t6, 0x800b
/* 155190 801AF120 3C01800E */  lui   $at, 0x800e
/* 155194 801AF124 0018C880 */  sll   $t9, $t8, 2
/* 155198 801AF128 00390821 */  addu  $at, $at, $t9
/* 15519C 801AF12C 25CE6474 */  addiu $t6, %lo(D_800B6474) # addiu $t6, $t6, 0x6474
/* 1551A0 801AF130 3C040002 */  lui   $a0, (0x00020031 >> 16) # lui $a0, 2
/* 1551A4 801AF134 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 1551A8 801AF138 34840031 */  ori   $a0, (0x00020031 & 0xFFFF) # ori $a0, $a0, 0x31
/* 1551AC 801AF13C 24050023 */  li    $a1, 35
/* 1551B0 801AF140 0C02A619 */  jal   func_800A9864
/* 1551B4 801AF144 24060010 */   li    $a2, 16
/* 1551B8 801AF148 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1551BC 801AF14C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1551C0 801AF150 3C01800E */  lui   $at, 0x800e
/* 1551C4 801AF154 24090023 */  li    $t1, 35
/* 1551C8 801AF158 8C6A0000 */  lw    $t2, ($v1)
/* 1551CC 801AF15C 3C08800E */  lui   $t0, %hi(gEntitiesScaleZArray) # $t0, 0x800e
/* 1551D0 801AF160 250848D0 */  addiu $t0, %lo(gEntitiesScaleZArray) # addiu $t0, $t0, 0x48d0
/* 1551D4 801AF164 000A5880 */  sll   $t3, $t2, 2
/* 1551D8 801AF168 002B0821 */  addu  $at, $at, $t3
/* 1551DC 801AF16C AC29DA90 */  sw    $t1, -0x2570($at)
/* 1551E0 801AF170 8C6C0000 */  lw    $t4, ($v1)
/* 1551E4 801AF174 3C01801D */  lui   $at, %hi(D_801CE23C) # $at, 0x801d
/* 1551E8 801AF178 C424E23C */  lwc1  $f4, %lo(D_801CE23C)($at)
/* 1551EC 801AF17C 000C6880 */  sll   $t5, $t4, 2
/* 1551F0 801AF180 010D7821 */  addu  $t7, $t0, $t5
/* 1551F4 801AF184 E5E40000 */  swc1  $f4, ($t7)
/* 1551F8 801AF188 8C670000 */  lw    $a3, ($v1)
/* 1551FC 801AF18C 3C01800E */  lui   $at, 0x800e
/* 155200 801AF190 240B0004 */  li    $t3, 4
/* 155204 801AF194 00073880 */  sll   $a3, $a3, 2
/* 155208 801AF198 0107C021 */  addu  $t8, $t0, $a3
/* 15520C 801AF19C C7000000 */  lwc1  $f0, ($t8)
/* 155210 801AF1A0 00270821 */  addu  $at, $at, $a3
/* 155214 801AF1A4 2404001F */  li    $a0, 31
/* 155218 801AF1A8 E4204710 */  swc1  $f0, 0x4710($at)
/* 15521C 801AF1AC 8C6E0000 */  lw    $t6, ($v1)
/* 155220 801AF1B0 3C01800E */  lui   $at, 0x800e
/* 155224 801AF1B4 27A5002C */  addiu $a1, $sp, 0x2c
/* 155228 801AF1B8 000EC880 */  sll   $t9, $t6, 2
/* 15522C 801AF1BC 00390821 */  addu  $at, $at, $t9
/* 155230 801AF1C0 E4204550 */  swc1  $f0, 0x4550($at)
/* 155234 801AF1C4 8C6A0000 */  lw    $t2, ($v1)
/* 155238 801AF1C8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 15523C 801AF1CC 44813000 */  mtc1  $at, $f6
/* 155240 801AF1D0 3C01800F */  lui   $at, 0x800f
/* 155244 801AF1D4 000A4880 */  sll   $t1, $t2, 2
/* 155248 801AF1D8 00290821 */  addu  $at, $at, $t1
/* 15524C 801AF1DC E426A6E0 */  swc1  $f6, -0x5920($at)
/* 155250 801AF1E0 8C6C0000 */  lw    $t4, ($v1)
/* 155254 801AF1E4 3C01800F */  lui   $at, 0x800f
/* 155258 801AF1E8 27A6002A */  addiu $a2, $sp, 0x2a
/* 15525C 801AF1EC 000C6880 */  sll   $t5, $t4, 2
/* 155260 801AF1F0 002D0821 */  addu  $at, $at, $t5
/* 155264 801AF1F4 AC2B9720 */  sw    $t3, -0x68e0($at)
/* 155268 801AF1F8 8C6F0000 */  lw    $t7, ($v1)
/* 15526C 801AF1FC 3C01800F */  lui   $at, 0x800f
/* 155270 801AF200 000FC080 */  sll   $t8, $t7, 2
/* 155274 801AF204 00380821 */  addu  $at, $at, $t8
/* 155278 801AF208 0C029DFA */  jal   func_800A77E8
/* 15527C 801AF20C AC208920 */   sw    $zero, -0x76e0($at)
/* 155280 801AF210 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 155284 801AF214 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 155288 801AF218 8FAE002C */  lw    $t6, 0x2c($sp)
/* 15528C 801AF21C 3C01800F */  lui   $at, 0x800f
/* 155290 801AF220 8C790000 */  lw    $t9, ($v1)
/* 155294 801AF224 97A9002A */  lhu   $t1, 0x2a($sp)
/* 155298 801AF228 24040001 */  li    $a0, 1
/* 15529C 801AF22C 00195080 */  sll   $t2, $t9, 2
/* 1552A0 801AF230 002A0821 */  addu  $at, $at, $t2
/* 1552A4 801AF234 AC2E9AA0 */  sw    $t6, -0x6560($at)
/* 1552A8 801AF238 8C6C0000 */  lw    $t4, ($v1)
/* 1552AC 801AF23C 3C01800F */  lui   $at, 0x800f
/* 1552B0 801AF240 24050001 */  li    $a1, 1
/* 1552B4 801AF244 000C5880 */  sll   $t3, $t4, 2
/* 1552B8 801AF248 002B0821 */  addu  $at, $at, $t3
/* 1552BC 801AF24C 2406000C */  li    $a2, 12
/* 1552C0 801AF250 0C02A08D */  jal   func_800A8234
/* 1552C4 801AF254 AC299C60 */   sw    $t1, -0x63a0($at)
/* 1552C8 801AF258 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1552CC 801AF25C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1552D0 801AF260 3C01800F */  lui   $at, 0x800f
/* 1552D4 801AF264 3C04800E */  lui   $a0, 0x800e
/* 1552D8 801AF268 8C6D0000 */  lw    $t5, ($v1)
/* 1552DC 801AF26C 3C06801D */  lui   $a2, %hi(D_801CD590) # $a2, 0x801d
/* 1552E0 801AF270 24C6D590 */  addiu $a2, %lo(D_801CD590) # addiu $a2, $a2, -0x2a70
/* 1552E4 801AF274 000D7880 */  sll   $t7, $t5, 2
/* 1552E8 801AF278 002F0821 */  addu  $at, $at, $t7
/* 1552EC 801AF27C AC2298E0 */  sw    $v0, -0x6720($at)
/* 1552F0 801AF280 8C780000 */  lw    $t8, ($v1)
/* 1552F4 801AF284 24050001 */  li    $a1, 1
/* 1552F8 801AF288 00982021 */  addu  $a0, $a0, $t8
/* 1552FC 801AF28C 0C02911F */  jal   call_virtual_function
/* 155300 801AF290 90847880 */   lbu   $a0, 0x7880($a0)
/* 155304 801AF294 8FBF0014 */  lw    $ra, 0x14($sp)
/* 155308 801AF298 27BD0030 */  addiu $sp, $sp, 0x30
/* 15530C 801AF29C 03E00008 */  jr    $ra
/* 155310 801AF2A0 00000000 */   nop   

.type func_801AF104_ovl7, @function
.size func_801AF104_ovl7, . - func_801AF104_ovl7

glabel func_801AF2A4_ovl7
/* 155314 801AF2A4 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 155318 801AF2A8 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 15531C 801AF2AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 155320 801AF2B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 155324 801AF2B4 AFA40018 */  sw    $a0, 0x18($sp)
/* 155328 801AF2B8 8DF80000 */  lw    $t8, ($t7)
/* 15532C 801AF2BC 3C0E801B */  lui   $t6, %hi(D_801AF398) # $t6, 0x801b
/* 155330 801AF2C0 3C01800E */  lui   $at, 0x800e
/* 155334 801AF2C4 0018C880 */  sll   $t9, $t8, 2
/* 155338 801AF2C8 00390821 */  addu  $at, $at, $t9
/* 15533C 801AF2CC 25CEF398 */  addiu $t6, %lo(D_801AF398) # addiu $t6, $t6, -0xc68
/* 155340 801AF2D0 3C04801B */  lui   $a0, %hi(D_801AF314) # $a0, 0x801b
/* 155344 801AF2D4 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 155348 801AF2D8 0C068354 */  jal   func_801A0D50
/* 15534C 801AF2DC 2484F314 */   addiu $a0, %lo(D_801AF314) # addiu $a0, $a0, -0xcec
/* 155350 801AF2E0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 155354 801AF2E4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 155358 801AF2E8 3C01800E */  lui   $at, 0x800e
/* 15535C 801AF2EC 8FA40018 */  lw    $a0, 0x18($sp)
/* 155360 801AF2F0 8D090000 */  lw    $t1, ($t0)
/* 155364 801AF2F4 00095080 */  sll   $t2, $t1, 2
/* 155368 801AF2F8 002A0821 */  addu  $at, $at, $t2
/* 15536C 801AF2FC 0C06BCC5 */  jal   D_801AF314_ovl7
/* 155370 801AF300 AC20DC50 */   sw    $zero, -0x23b0($at)
/* 155374 801AF304 8FBF0014 */  lw    $ra, 0x14($sp)
/* 155378 801AF308 27BD0018 */  addiu $sp, $sp, 0x18
/* 15537C 801AF30C 03E00008 */  jr    $ra
/* 155380 801AF310 00000000 */   nop   

.type func_801AF2A4_ovl7, @function
.size func_801AF2A4_ovl7, . - func_801AF2A4_ovl7

glabel func_801AF314_ovl7
/* 155384 801AF314 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 155388 801AF318 AFB20020 */  sw    $s2, 0x20($sp)
/* 15538C 801AF31C AFB1001C */  sw    $s1, 0x1c($sp)
/* 155390 801AF320 AFB00018 */  sw    $s0, 0x18($sp)
/* 155394 801AF324 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 155398 801AF328 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 15539C 801AF32C 3C12801D */  lui   $s2, %hi(D_801CD594) # $s2, 0x801d
/* 1553A0 801AF330 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1553A4 801AF334 AFA40028 */  sw    $a0, 0x28($sp)
/* 1553A8 801AF338 2652D594 */  addiu $s2, %lo(D_801CD594) # addiu $s2, $s2, -0x2a6c
/* 1553AC 801AF33C 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1553B0 801AF340 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 1553B4 801AF344 8E2E0000 */  lw    $t6, ($s1)
.L801AF348_ovl7:
/* 1553B8 801AF348 24050004 */  li    $a1, 4
/* 1553BC 801AF34C 02403025 */  move  $a2, $s2
/* 1553C0 801AF350 8DCF0000 */  lw    $t7, ($t6)
/* 1553C4 801AF354 000FC080 */  sll   $t8, $t7, 2
/* 1553C8 801AF358 0218C821 */  addu  $t9, $s0, $t8
/* 1553CC 801AF35C 0C02911F */  jal   call_virtual_function
/* 1553D0 801AF360 8F240000 */   lw    $a0, ($t9)
/* 1553D4 801AF364 1000FFF8 */  b     .L801AF348_ovl7
/* 1553D8 801AF368 8E2E0000 */   lw    $t6, ($s1)
/* 1553DC 801AF36C 00000000 */  nop   
/* 1553E0 801AF370 00000000 */  nop   
/* 1553E4 801AF374 00000000 */  nop   
/* 1553E8 801AF378 00000000 */  nop   
/* 1553EC 801AF37C 00000000 */  nop   
/* 1553F0 801AF380 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1553F4 801AF384 8FB00018 */  lw    $s0, 0x18($sp)
/* 1553F8 801AF388 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1553FC 801AF38C 8FB20020 */  lw    $s2, 0x20($sp)
/* 155400 801AF390 03E00008 */  jr    $ra
/* 155404 801AF394 27BD0028 */   addiu $sp, $sp, 0x28

.type func_801AF314_ovl7, @function
.size func_801AF314_ovl7, . - func_801AF314_ovl7

glabel func_801AF398_ovl7
/* 155408 801AF398 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 15540C 801AF39C AFB00018 */  sw    $s0, 0x18($sp)
/* 155410 801AF3A0 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 155414 801AF3A4 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 155418 801AF3A8 8E0E0000 */  lw    $t6, ($s0)
/* 15541C 801AF3AC AFBF001C */  sw    $ra, 0x1c($sp)
/* 155420 801AF3B0 AFA40050 */  sw    $a0, 0x50($sp)
/* 155424 801AF3B4 8DC20000 */  lw    $v0, ($t6)
/* 155428 801AF3B8 3C01800E */  lui   $at, 0x800e
/* 15542C 801AF3BC 3C0F800E */  lui   $t7, 0x800e
/* 155430 801AF3C0 00021080 */  sll   $v0, $v0, 2
/* 155434 801AF3C4 3C18800F */  lui   $t8, 0x800f
/* 155438 801AF3C8 00220821 */  addu  $at, $at, $v0
/* 15543C 801AF3CC 01E27821 */  addu  $t7, $t7, $v0
/* 155440 801AF3D0 0302C021 */  addu  $t8, $t8, $v0
/* 155444 801AF3D4 C42C25D0 */  lwc1  $f12, 0x25d0($at)
/* 155448 801AF3D8 8DEF1B50 */  lw    $t7, 0x1b50($t7)
/* 15544C 801AF3DC 8F1898E0 */  lw    $t8, -0x6720($t8)
/* 155450 801AF3E0 3C01800E */  lui   $at, 0x800e
/* 155454 801AF3E4 3C06800E */  lui   $a2, 0x800e
/* 155458 801AF3E8 00C23021 */  addu  $a2, $a2, $v0
/* 15545C 801AF3EC 00220821 */  addu  $at, $at, $v0
/* 155460 801AF3F0 C42E2790 */  lwc1  $f14, 0x2790($at)
/* 155464 801AF3F4 8CC62950 */  lw    $a2, 0x2950($a2)
/* 155468 801AF3F8 AFAF0034 */  sw    $t7, 0x34($sp)
/* 15546C 801AF3FC 0C02CC8D */  jal   func_800B3234
/* 155470 801AF400 AFB80030 */   sw    $t8, 0x30($sp)
/* 155474 801AF404 10400023 */  beqz  $v0, .L801AF494_ovl7
/* 155478 801AF408 00000000 */   nop   
/* 15547C 801AF40C 8E030000 */  lw    $v1, ($s0)
/* 155480 801AF410 3C09800F */  lui   $t1, 0x800f
/* 155484 801AF414 3C0C800F */  lui   $t4, 0x800f
/* 155488 801AF418 8C790000 */  lw    $t9, ($v1)
/* 15548C 801AF41C 27A4004C */  addiu $a0, $sp, 0x4c
/* 155490 801AF420 27A5004A */  addiu $a1, $sp, 0x4a
/* 155494 801AF424 00194080 */  sll   $t0, $t9, 2
/* 155498 801AF428 01284821 */  addu  $t1, $t1, $t0
/* 15549C 801AF42C 8D299AA0 */  lw    $t1, -0x6560($t1)
/* 1554A0 801AF430 AFA9004C */  sw    $t1, 0x4c($sp)
/* 1554A4 801AF434 8C6A0000 */  lw    $t2, ($v1)
/* 1554A8 801AF438 000A5880 */  sll   $t3, $t2, 2
/* 1554AC 801AF43C 018B6021 */  addu  $t4, $t4, $t3
/* 1554B0 801AF440 8D8C9C60 */  lw    $t4, -0x63a0($t4)
/* 1554B4 801AF444 0C029E1C */  jal   func_800A7870
/* 1554B8 801AF448 A7AC004A */   sh    $t4, 0x4a($sp)
/* 1554BC 801AF44C 8FAD0050 */  lw    $t5, 0x50($sp)
/* 1554C0 801AF450 3C018013 */  lui   $at, %hi(D_8012E860) # $at, 0x8013
/* 1554C4 801AF454 AC20E860 */  sw    $zero, %lo(D_8012E860)($at)
/* 1554C8 801AF458 ADA00048 */  sw    $zero, 0x48($t5)
/* 1554CC 801AF45C 8E0E0000 */  lw    $t6, ($s0)
/* 1554D0 801AF460 3C04800F */  lui   $a0, 0x800f
/* 1554D4 801AF464 8DCF0000 */  lw    $t7, ($t6)
/* 1554D8 801AF468 000FC080 */  sll   $t8, $t7, 2
/* 1554DC 801AF46C 00982021 */  addu  $a0, $a0, $t8
/* 1554E0 801AF470 0C0288B5 */  jal   func_800A22D4
/* 1554E4 801AF474 8C8498E0 */   lw    $a0, -0x6720($a0)
/* 1554E8 801AF478 0C066DF6 */  jal   func_8019B7D8_ovl7
/* 1554EC 801AF47C 8FA40050 */   lw    $a0, 0x50($sp)
/* 1554F0 801AF480 8E190000 */  lw    $t9, ($s0)
/* 1554F4 801AF484 0C067628 */  jal   func_8019D8A0_ovl7
/* 1554F8 801AF488 97240002 */   lhu   $a0, 2($t9)
/* 1554FC 801AF48C 100000DD */  b     .L801AF804_ovl7
/* 155500 801AF490 8FBF001C */   lw    $ra, 0x1c($sp)
.L801AF494_ovl7:
/* 155504 801AF494 0C06835D */  jal   func_801A0D74_ovl7
/* 155508 801AF498 8FA40050 */   lw    $a0, 0x50($sp)
/* 15550C 801AF49C AFA20044 */  sw    $v0, 0x44($sp)
/* 155510 801AF4A0 0C066FA7 */  jal   func_8019BE9C_ovl7
/* 155514 801AF4A4 24040001 */   li    $a0, 1
/* 155518 801AF4A8 8E080000 */  lw    $t0, ($s0)
/* 15551C 801AF4AC 3C0B800F */  lui   $t3, 0x800f
/* 155520 801AF4B0 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 155524 801AF4B4 8D090000 */  lw    $t1, ($t0)
/* 155528 801AF4B8 00095080 */  sll   $t2, $t1, 2
/* 15552C 801AF4BC 016A5821 */  addu  $t3, $t3, $t2
/* 155530 801AF4C0 8D6B8AE0 */  lw    $t3, -0x7520($t3)
/* 155534 801AF4C4 316C0001 */  andi  $t4, $t3, 1
/* 155538 801AF4C8 1180000B */  beqz  $t4, .L801AF4F8_ovl7
/* 15553C 801AF4CC 00000000 */   nop   
/* 155540 801AF4D0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 155544 801AF4D4 44816000 */  mtc1  $at, $f12
/* 155548 801AF4D8 0C02BB30 */  jal   func_800AECC0
/* 15554C 801AF4DC 00000000 */   nop   
/* 155550 801AF4E0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 155554 801AF4E4 44816000 */  mtc1  $at, $f12
/* 155558 801AF4E8 0C02BB48 */  jal   func_800AED20
/* 15555C 801AF4EC 00000000 */   nop   
/* 155560 801AF4F0 10000007 */  b     .L801AF510_ovl7
/* 155564 801AF4F4 8FAD0044 */   lw    $t5, 0x44($sp)
.L801AF4F8_ovl7:
/* 155568 801AF4F8 0C02BB30 */  jal   func_800AECC0
/* 15556C 801AF4FC C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 155570 801AF500 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 155574 801AF504 0C02BB48 */  jal   func_800AED20
/* 155578 801AF508 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 15557C 801AF50C 8FAD0044 */  lw    $t5, 0x44($sp)
.L801AF510_ovl7:
/* 155580 801AF510 55A0000C */  bnezl $t5, .L801AF544_ovl7
/* 155584 801AF514 8E190000 */   lw    $t9, ($s0)
/* 155588 801AF518 8E0E0000 */  lw    $t6, ($s0)
/* 15558C 801AF51C 3C04800E */  lui   $a0, 0x800e
/* 155590 801AF520 3C06801D */  lui   $a2, %hi(D_801CD5A4) # $a2, 0x801d
/* 155594 801AF524 8DCF0000 */  lw    $t7, ($t6)
/* 155598 801AF528 24C6D5A4 */  addiu $a2, %lo(D_801CD5A4) # addiu $a2, $a2, -0x2a5c
/* 15559C 801AF52C 24050004 */  li    $a1, 4
/* 1555A0 801AF530 000FC080 */  sll   $t8, $t7, 2
/* 1555A4 801AF534 00982021 */  addu  $a0, $a0, $t8
/* 1555A8 801AF538 0C02911F */  jal   call_virtual_function
/* 1555AC 801AF53C 8C84DFD0 */   lw    $a0, -0x2030($a0)
/* 1555B0 801AF540 8E190000 */  lw    $t9, ($s0)
.L801AF544_ovl7:
/* 1555B4 801AF544 3C07800E */  lui   $a3, %hi(D_800DFBD0) # $a3, 0x800e
/* 1555B8 801AF548 24E7FBD0 */  addiu $a3, %lo(D_800DFBD0) # addiu $a3, $a3, -0x430
/* 1555BC 801AF54C 8F220000 */  lw    $v0, ($t9)
/* 1555C0 801AF550 3C05800F */  lui   $a1, %hi(D_800EA6E0) # $a1, 0x800f
/* 1555C4 801AF554 24A5A6E0 */  addiu $a1, %lo(D_800EA6E0) # addiu $a1, $a1, -0x5920
/* 1555C8 801AF558 00021080 */  sll   $v0, $v0, 2
/* 1555CC 801AF55C 00E24821 */  addu  $t1, $a3, $v0
/* 1555D0 801AF560 8D2A0000 */  lw    $t2, ($t1)
/* 1555D4 801AF564 00A24021 */  addu  $t0, $a1, $v0
/* 1555D8 801AF568 C5040000 */  lwc1  $f4, ($t0)
/* 1555DC 801AF56C 8D4B0008 */  lw    $t3, 8($t2)
/* 1555E0 801AF570 3C0C800F */  lui   $t4, 0x800f
/* 1555E4 801AF574 3C01801D */  lui   $at, %hi(D_801CE240) # $at, 0x801d
/* 1555E8 801AF578 E5640044 */  swc1  $f4, 0x44($t3)
/* 1555EC 801AF57C 8E030000 */  lw    $v1, ($s0)
/* 1555F0 801AF580 3406FFFF */  li    $a2, 65535
/* 1555F4 801AF584 8C620000 */  lw    $v0, ($v1)
/* 1555F8 801AF588 00021080 */  sll   $v0, $v0, 2
/* 1555FC 801AF58C 01826021 */  addu  $t4, $t4, $v0
/* 155600 801AF590 8D8C83E0 */  lw    $t4, -0x7c20($t4)
/* 155604 801AF594 51800007 */  beql  $t4, $zero, .L801AF5B4_ovl7
/* 155608 801AF598 00A22021 */   addu  $a0, $a1, $v0
/* 15560C 801AF59C 44803000 */  mtc1  $zero, $f6
/* 155610 801AF5A0 00A26821 */  addu  $t5, $a1, $v0
/* 155614 801AF5A4 E5A60000 */  swc1  $f6, ($t5)
/* 155618 801AF5A8 8C620000 */  lw    $v0, ($v1)
/* 15561C 801AF5AC 00021080 */  sll   $v0, $v0, 2
/* 155620 801AF5B0 00A22021 */  addu  $a0, $a1, $v0
.L801AF5B4_ovl7:
/* 155624 801AF5B4 C4880000 */  lwc1  $f8, ($a0)
/* 155628 801AF5B8 C42AE240 */  lwc1  $f10, %lo(D_801CE240)($at)
/* 15562C 801AF5BC 44809000 */  mtc1  $zero, $f18
/* 155630 801AF5C0 460A4401 */  sub.s $f16, $f8, $f10
/* 155634 801AF5C4 E4900000 */  swc1  $f16, ($a0)
/* 155638 801AF5C8 8C620000 */  lw    $v0, ($v1)
/* 15563C 801AF5CC 3C04800E */  lui   $a0, 0x800e
/* 155640 801AF5D0 00021080 */  sll   $v0, $v0, 2
/* 155644 801AF5D4 00A27021 */  addu  $t6, $a1, $v0
/* 155648 801AF5D8 C5C40000 */  lwc1  $f4, ($t6)
/* 15564C 801AF5DC 3C05801B */  lui   $a1, %hi(D_801B00BC) # $a1, 0x801b
/* 155650 801AF5E0 24A500BC */  addiu $a1, %lo(D_801B00BC) # addiu $a1, $a1, 0xbc
/* 155654 801AF5E4 4612203E */  c.le.s $f4, $f18
/* 155658 801AF5E8 00822021 */  addu  $a0, $a0, $v0
/* 15565C 801AF5EC 00E27821 */  addu  $t7, $a3, $v0
/* 155660 801AF5F0 45020006 */  bc1fl .L801AF60C_ovl7
/* 155664 801AF5F4 8DF80000 */   lw    $t8, ($t7)
/* 155668 801AF5F8 0C02C7B2 */  jal   assign_new_process_entry
/* 15566C 801AF5FC 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 155670 801AF600 10000080 */  b     .L801AF804_ovl7
/* 155674 801AF604 8FBF001C */   lw    $ra, 0x1c($sp)
/* 155678 801AF608 8DF80000 */  lw    $t8, ($t7)
.L801AF60C_ovl7:
/* 15567C 801AF60C 27A40038 */  addiu $a0, $sp, 0x38
/* 155680 801AF610 0C02C8D0 */  jal   func_800B2340
/* 155684 801AF614 8F05000C */   lw    $a1, 0xc($t8)
/* 155688 801AF618 8FA20030 */  lw    $v0, 0x30($sp)
/* 15568C 801AF61C C7A60038 */  lwc1  $f6, 0x38($sp)
/* 155690 801AF620 3C0D800E */  lui   $t5, 0x800e
/* 155694 801AF624 8C59004C */  lw    $t9, 0x4c($v0)
/* 155698 801AF628 27A40038 */  addiu $a0, $sp, 0x38
/* 15569C 801AF62C 3406FFFF */  li    $a2, 65535
/* 1556A0 801AF630 E7260004 */  swc1  $f6, 4($t9)
/* 1556A4 801AF634 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 1556A8 801AF638 8C48004C */  lw    $t0, 0x4c($v0)
/* 1556AC 801AF63C E5080008 */  swc1  $f8, 8($t0)
/* 1556B0 801AF640 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 1556B4 801AF644 8C49004C */  lw    $t1, 0x4c($v0)
/* 1556B8 801AF648 E52A000C */  swc1  $f10, 0xc($t1)
/* 1556BC 801AF64C 8E0A0000 */  lw    $t2, ($s0)
/* 1556C0 801AF650 8D4B0000 */  lw    $t3, ($t2)
/* 1556C4 801AF654 000B6080 */  sll   $t4, $t3, 2
/* 1556C8 801AF658 01AC6821 */  addu  $t5, $t5, $t4
/* 1556CC 801AF65C 8DADFBD0 */  lw    $t5, -0x430($t5)
/* 1556D0 801AF660 0C02C9B6 */  jal   func_800B26D8
/* 1556D4 801AF664 8DA5000C */   lw    $a1, 0xc($t5)
/* 1556D8 801AF668 8FA40030 */  lw    $a0, 0x30($sp)
/* 1556DC 801AF66C C7B00038 */  lwc1  $f16, 0x38($sp)
/* 1556E0 801AF670 3C0A800F */  lui   $t2, %hi(D_800E9720) # $t2, 0x800f
/* 1556E4 801AF674 8C8E004C */  lw    $t6, 0x4c($a0)
/* 1556E8 801AF678 254A9720 */  addiu $t2, %lo(D_800E9720) # addiu $t2, $t2, -0x68e0
/* 1556EC 801AF67C E5D00010 */  swc1  $f16, 0x10($t6)
/* 1556F0 801AF680 C7B2003C */  lwc1  $f18, 0x3c($sp)
/* 1556F4 801AF684 8C8F004C */  lw    $t7, 0x4c($a0)
/* 1556F8 801AF688 E5F20014 */  swc1  $f18, 0x14($t7)
/* 1556FC 801AF68C C7A40040 */  lwc1  $f4, 0x40($sp)
/* 155700 801AF690 8C98004C */  lw    $t8, 0x4c($a0)
/* 155704 801AF694 E7040018 */  swc1  $f4, 0x18($t8)
/* 155708 801AF698 8E190000 */  lw    $t9, ($s0)
/* 15570C 801AF69C 8F280000 */  lw    $t0, ($t9)
/* 155710 801AF6A0 00084880 */  sll   $t1, $t0, 2
/* 155714 801AF6A4 012A1021 */  addu  $v0, $t1, $t2
/* 155718 801AF6A8 8C430000 */  lw    $v1, ($v0)
/* 15571C 801AF6AC 1460002C */  bnez  $v1, .L801AF760_ovl7
/* 155720 801AF6B0 246BFFFF */   addiu $t3, $v1, -1
/* 155724 801AF6B4 0C06BFFF */  jal   func_801AFFFC_ovl7
/* 155728 801AF6B8 00000000 */   nop   
/* 15572C 801AF6BC 8E030000 */  lw    $v1, ($s0)
/* 155730 801AF6C0 3C0C800F */  lui   $t4, %hi(D_800E83E0) # $t4, 0x800f
/* 155734 801AF6C4 258C83E0 */  addiu $t4, %lo(D_800E83E0) # addiu $t4, $t4, -0x7c20
/* 155738 801AF6C8 8C620000 */  lw    $v0, ($v1)
/* 15573C 801AF6CC 24070001 */  li    $a3, 1
/* 155740 801AF6D0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 155744 801AF6D4 00025880 */  sll   $t3, $v0, 2
/* 155748 801AF6D8 016C3021 */  addu  $a2, $t3, $t4
/* 15574C 801AF6DC 8CCD0000 */  lw    $t5, ($a2)
/* 155750 801AF6E0 8FAA0034 */  lw    $t2, 0x34($sp)
/* 155754 801AF6E4 00402825 */  move  $a1, $v0
/* 155758 801AF6E8 14ED0017 */  bne   $a3, $t5, .L801AF748_ovl7
/* 15575C 801AF6EC 00000000 */   nop   
/* 155760 801AF6F0 ACC00000 */  sw    $zero, ($a2)
/* 155764 801AF6F4 8C6E0000 */  lw    $t6, ($v1)
/* 155768 801AF6F8 44813000 */  mtc1  $at, $f6
/* 15576C 801AF6FC 3C01800E */  lui   $at, 0x800e
/* 155770 801AF700 000E7880 */  sll   $t7, $t6, 2
/* 155774 801AF704 002F0821 */  addu  $at, $at, $t7
/* 155778 801AF708 E4267B20 */  swc1  $f6, 0x7b20($at)
/* 15577C 801AF70C 8C780000 */  lw    $t8, ($v1)
/* 155780 801AF710 3C01800E */  lui   $at, 0x800e
/* 155784 801AF714 3C04800E */  lui   $a0, 0x800e
/* 155788 801AF718 0018C880 */  sll   $t9, $t8, 2
/* 15578C 801AF71C 00390821 */  addu  $at, $at, $t9
/* 155790 801AF720 AC27DC50 */  sw    $a3, -0x23b0($at)
/* 155794 801AF724 8C680000 */  lw    $t0, ($v1)
/* 155798 801AF728 3C05801B */  lui   $a1, %hi(D_801AF314) # $a1, 0x801b
/* 15579C 801AF72C 24A5F314 */  addiu $a1, %lo(D_801AF314) # addiu $a1, $a1, -0xcec
/* 1557A0 801AF730 00084880 */  sll   $t1, $t0, 2
/* 1557A4 801AF734 00892021 */  addu  $a0, $a0, $t1
/* 1557A8 801AF738 0C02C7B2 */  jal   assign_new_process_entry
/* 1557AC 801AF73C 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1557B0 801AF740 10000030 */  b     .L801AF804_ovl7
/* 1557B4 801AF744 8FBF001C */   lw    $ra, 0x1c($sp)
.L801AF748_ovl7:
/* 1557B8 801AF748 0C0445EF */  jal   func_801117BC
/* 1557BC 801AF74C 8D440090 */   lw    $a0, 0x90($t2)
/* 1557C0 801AF750 0C044713 */  jal   func_80111C4C
/* 1557C4 801AF754 00402025 */   move  $a0, $v0
/* 1557C8 801AF758 10000002 */  b     .L801AF764_ovl7
/* 1557CC 801AF75C 00000000 */   nop   
.L801AF760_ovl7:
/* 1557D0 801AF760 AC4B0000 */  sw    $t3, ($v0)
.L801AF764_ovl7:
/* 1557D4 801AF764 3C0C800F */  lui   $t4, %hi(D_800E8760) # $t4, 0x800f
/* 1557D8 801AF768 8D8C8760 */  lw    $t4, %lo(D_800E8760)($t4)
/* 1557DC 801AF76C 24010001 */  li    $at, 1
/* 1557E0 801AF770 55810024 */  bnel  $t4, $at, .L801AF804_ovl7
/* 1557E4 801AF774 8FBF001C */   lw    $ra, 0x1c($sp)
/* 1557E8 801AF778 8E030000 */  lw    $v1, ($s0)
/* 1557EC 801AF77C 3C0F800F */  lui   $t7, 0x800f
/* 1557F0 801AF780 3C08800F */  lui   $t0, 0x800f
/* 1557F4 801AF784 8C6D0000 */  lw    $t5, ($v1)
/* 1557F8 801AF788 27A4004C */  addiu $a0, $sp, 0x4c
/* 1557FC 801AF78C 27A5004A */  addiu $a1, $sp, 0x4a
/* 155800 801AF790 000D7080 */  sll   $t6, $t5, 2
/* 155804 801AF794 01EE7821 */  addu  $t7, $t7, $t6
/* 155808 801AF798 8DEF9AA0 */  lw    $t7, -0x6560($t7)
/* 15580C 801AF79C AFAF004C */  sw    $t7, 0x4c($sp)
/* 155810 801AF7A0 8C780000 */  lw    $t8, ($v1)
/* 155814 801AF7A4 0018C880 */  sll   $t9, $t8, 2
/* 155818 801AF7A8 01194021 */  addu  $t0, $t0, $t9
/* 15581C 801AF7AC 8D089C60 */  lw    $t0, -0x63a0($t0)
/* 155820 801AF7B0 0C029E1C */  jal   func_800A7870
/* 155824 801AF7B4 A7A8004A */   sh    $t0, 0x4a($sp)
/* 155828 801AF7B8 3C018013 */  lui   $at, %hi(D_8012E860) # $at, 0x8013
/* 15582C 801AF7BC AC20E860 */  sw    $zero, %lo(D_8012E860)($at)
/* 155830 801AF7C0 8E090000 */  lw    $t1, ($s0)
/* 155834 801AF7C4 3C04800F */  lui   $a0, 0x800f
/* 155838 801AF7C8 8D2A0000 */  lw    $t2, ($t1)
/* 15583C 801AF7CC 000A5880 */  sll   $t3, $t2, 2
/* 155840 801AF7D0 008B2021 */  addu  $a0, $a0, $t3
/* 155844 801AF7D4 0C0288B5 */  jal   func_800A22D4
/* 155848 801AF7D8 8C8498E0 */   lw    $a0, -0x6720($a0)
/* 15584C 801AF7DC 8E0C0000 */  lw    $t4, ($s0)
/* 155850 801AF7E0 3C04800E */  lui   $a0, 0x800e
/* 155854 801AF7E4 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 155858 801AF7E8 8D8D0000 */  lw    $t5, ($t4)
/* 15585C 801AF7EC 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 155860 801AF7F0 000D7080 */  sll   $t6, $t5, 2
/* 155864 801AF7F4 008E2021 */  addu  $a0, $a0, $t6
/* 155868 801AF7F8 0C02C7B2 */  jal   assign_new_process_entry
/* 15586C 801AF7FC 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 155870 801AF800 8FBF001C */  lw    $ra, 0x1c($sp)
.L801AF804_ovl7:
/* 155874 801AF804 8FB00018 */  lw    $s0, 0x18($sp)
/* 155878 801AF808 27BD0050 */  addiu $sp, $sp, 0x50
/* 15587C 801AF80C 03E00008 */  jr    $ra
/* 155880 801AF810 00000000 */   nop   

.type func_801AF398_ovl7, @function
.size func_801AF398_ovl7, . - func_801AF398_ovl7

glabel func_801AF814_ovl7
/* 155884 801AF814 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 155888 801AF818 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 15588C 801AF81C 8CAE0000 */  lw    $t6, ($a1)
/* 155890 801AF820 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 155894 801AF824 AFBF0014 */  sw    $ra, 0x14($sp)
/* 155898 801AF828 AFA40018 */  sw    $a0, 0x18($sp)
/* 15589C 801AF82C 8DC30000 */  lw    $v1, ($t6)
/* 1558A0 801AF830 3C02800E */  lui   $v0, 0x800e
/* 1558A4 801AF834 3C01800E */  lui   $at, 0x800e
/* 1558A8 801AF838 00031880 */  sll   $v1, $v1, 2
/* 1558AC 801AF83C 00431021 */  addu  $v0, $v0, $v1
/* 1558B0 801AF840 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 1558B4 801AF844 00230821 */  addu  $at, $at, $v1
/* 1558B8 801AF848 3C0F801D */  lui   $t7, %hi(D_801CD360) # $t7, 0x801d
/* 1558BC 801AF84C AC20DFD0 */  sw    $zero, -0x2030($at)
/* 1558C0 801AF850 25EFD360 */  addiu $t7, %lo(D_801CD360) # addiu $t7, $t7, -0x2ca0
/* 1558C4 801AF854 AC4F0098 */  sw    $t7, 0x98($v0)
/* 1558C8 801AF858 8CB80000 */  lw    $t8, ($a1)
/* 1558CC 801AF85C 3C01800F */  lui   $at, 0x800f
/* 1558D0 801AF860 3C040002 */  lui   $a0, (0x0002027F >> 16) # lui $a0, 2
/* 1558D4 801AF864 8F190000 */  lw    $t9, ($t8)
/* 1558D8 801AF868 3484027F */  ori   $a0, (0x0002027F & 0xFFFF) # ori $a0, $a0, 0x27f
/* 1558DC 801AF86C 00194080 */  sll   $t0, $t9, 2
/* 1558E0 801AF870 00280821 */  addu  $at, $at, $t0
/* 1558E4 801AF874 0C02A806 */  jal   func_800AA018
/* 1558E8 801AF878 AC208920 */   sw    $zero, -0x76e0($at)
/* 1558EC 801AF87C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1558F0 801AF880 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1558F4 801AF884 3C09800F */  lui   $t1, 0x800f
/* 1558F8 801AF888 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1558FC 801AF88C 8C430000 */  lw    $v1, ($v0)
/* 155900 801AF890 00031880 */  sll   $v1, $v1, 2
/* 155904 801AF894 01234821 */  addu  $t1, $t1, $v1
/* 155908 801AF898 8D298AE0 */  lw    $t1, -0x7520($t1)
/* 15590C 801AF89C 312A0001 */  andi  $t2, $t1, 1
/* 155910 801AF8A0 5140002A */  beql  $t2, $zero, .L801AF94C_ovl7
/* 155914 801AF8A4 44810000 */   mtc1  $at, $f0
/* 155918 801AF8A8 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 15591C 801AF8AC 44811000 */  mtc1  $at, $f2
/* 155920 801AF8B0 3C01800E */  lui   $at, 0x800e
/* 155924 801AF8B4 00230821 */  addu  $at, $at, $v1
/* 155928 801AF8B8 C4206A10 */  lwc1  $f0, 0x6a10($at)
/* 15592C 801AF8BC 3C01800E */  lui   $at, 0x800e
/* 155930 801AF8C0 00230821 */  addu  $at, $at, $v1
/* 155934 801AF8C4 46000100 */  add.s $f4, $f0, $f0
/* 155938 801AF8C8 44803000 */  mtc1  $zero, $f6
/* 15593C 801AF8CC E42464D0 */  swc1  $f4, 0x64d0($at)
/* 155940 801AF8D0 8C4B0000 */  lw    $t3, ($v0)
/* 155944 801AF8D4 3C01800E */  lui   $at, 0x800e
/* 155948 801AF8D8 000B6080 */  sll   $t4, $t3, 2
/* 15594C 801AF8DC 002C0821 */  addu  $at, $at, $t4
/* 155950 801AF8E0 E4266690 */  swc1  $f6, 0x6690($at)
/* 155954 801AF8E4 8C4D0000 */  lw    $t5, ($v0)
/* 155958 801AF8E8 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 15595C 801AF8EC 44814000 */  mtc1  $at, $f8
/* 155960 801AF8F0 3C01800E */  lui   $at, 0x800e
/* 155964 801AF8F4 000D7080 */  sll   $t6, $t5, 2
/* 155968 801AF8F8 002E0821 */  addu  $at, $at, $t6
/* 15596C 801AF8FC E4286850 */  swc1  $f8, 0x6850($at)
/* 155970 801AF900 8C4F0000 */  lw    $t7, ($v0)
/* 155974 801AF904 3C01800E */  lui   $at, 0x800e
/* 155978 801AF908 000FC080 */  sll   $t8, $t7, 2
/* 15597C 801AF90C 00380821 */  addu  $at, $at, $t8
/* 155980 801AF910 E4223210 */  swc1  $f2, 0x3210($at)
/* 155984 801AF914 8C590000 */  lw    $t9, ($v0)
/* 155988 801AF918 3C01801D */  lui   $at, %hi(D_801CE244) # $at, 0x801d
/* 15598C 801AF91C C42AE244 */  lwc1  $f10, %lo(D_801CE244)($at)
/* 155990 801AF920 3C01800E */  lui   $at, 0x800e
/* 155994 801AF924 00194080 */  sll   $t0, $t9, 2
/* 155998 801AF928 00280821 */  addu  $at, $at, $t0
/* 15599C 801AF92C E42A3750 */  swc1  $f10, 0x3750($at)
/* 1559A0 801AF930 8C490000 */  lw    $t1, ($v0)
/* 1559A4 801AF934 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 1559A8 801AF938 00095080 */  sll   $t2, $t1, 2
/* 1559AC 801AF93C 002A0821 */  addu  $at, $at, $t2
/* 1559B0 801AF940 10000027 */  b     .L801AF9E0_ovl7
/* 1559B4 801AF944 E4223C90 */   swc1  $f2, 0x3c90($at)
/* 1559B8 801AF948 44810000 */  mtc1  $at, $f0
.L801AF94C_ovl7:
/* 1559BC 801AF94C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 1559C0 801AF950 44811000 */  mtc1  $at, $f2
/* 1559C4 801AF954 3C01800E */  lui   $at, 0x800e
/* 1559C8 801AF958 00230821 */  addu  $at, $at, $v1
/* 1559CC 801AF95C C4306A10 */  lwc1  $f16, 0x6a10($at)
/* 1559D0 801AF960 3C01800E */  lui   $at, 0x800e
/* 1559D4 801AF964 00230821 */  addu  $at, $at, $v1
/* 1559D8 801AF968 46008482 */  mul.s $f18, $f16, $f0
/* 1559DC 801AF96C 44802000 */  mtc1  $zero, $f4
/* 1559E0 801AF970 E43264D0 */  swc1  $f18, 0x64d0($at)
/* 1559E4 801AF974 8C4B0000 */  lw    $t3, ($v0)
/* 1559E8 801AF978 3C01800E */  lui   $at, 0x800e
/* 1559EC 801AF97C 000B6080 */  sll   $t4, $t3, 2
/* 1559F0 801AF980 002C0821 */  addu  $at, $at, $t4
/* 1559F4 801AF984 E4246690 */  swc1  $f4, 0x6690($at)
/* 1559F8 801AF988 8C4D0000 */  lw    $t5, ($v0)
/* 1559FC 801AF98C 3C01800E */  lui   $at, 0x800e
/* 155A00 801AF990 000D7080 */  sll   $t6, $t5, 2
/* 155A04 801AF994 002E0821 */  addu  $at, $at, $t6
/* 155A08 801AF998 E4206850 */  swc1  $f0, 0x6850($at)
/* 155A0C 801AF99C 8C4F0000 */  lw    $t7, ($v0)
/* 155A10 801AF9A0 3C01800E */  lui   $at, 0x800e
/* 155A14 801AF9A4 000FC080 */  sll   $t8, $t7, 2
/* 155A18 801AF9A8 00380821 */  addu  $at, $at, $t8
/* 155A1C 801AF9AC E4223210 */  swc1  $f2, 0x3210($at)
/* 155A20 801AF9B0 8C590000 */  lw    $t9, ($v0)
/* 155A24 801AF9B4 3C01801D */  lui   $at, %hi(D_801CE248) # $at, 0x801d
/* 155A28 801AF9B8 C426E248 */  lwc1  $f6, %lo(D_801CE248)($at)
/* 155A2C 801AF9BC 3C01800E */  lui   $at, 0x800e
/* 155A30 801AF9C0 00194080 */  sll   $t0, $t9, 2
/* 155A34 801AF9C4 00280821 */  addu  $at, $at, $t0
/* 155A38 801AF9C8 E4263750 */  swc1  $f6, 0x3750($at)
/* 155A3C 801AF9CC 8C490000 */  lw    $t1, ($v0)
/* 155A40 801AF9D0 3C01800E */  lui   $at, 0x800e
/* 155A44 801AF9D4 00095080 */  sll   $t2, $t1, 2
/* 155A48 801AF9D8 002A0821 */  addu  $at, $at, $t2
/* 155A4C 801AF9DC E4223C90 */  swc1  $f2, 0x3c90($at)
.L801AF9E0_ovl7:
/* 155A50 801AF9E0 0C02BE85 */  jal   func_800AFA14
/* 155A54 801AF9E4 00000000 */   nop   
/* 155A58 801AF9E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 155A5C 801AF9EC 27BD0018 */  addiu $sp, $sp, 0x18
/* 155A60 801AF9F0 03E00008 */  jr    $ra
/* 155A64 801AF9F4 00000000 */   nop   

.type func_801AF814_ovl7, @function
.size func_801AF814_ovl7, . - func_801AF814_ovl7

glabel func_801AF9F8_ovl7
/* 155A68 801AF9F8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 155A6C 801AF9FC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 155A70 801AFA00 AFA40000 */  sw    $a0, ($sp)
/* 155A74 801AFA04 3C01800E */  lui   $at, 0x800e
/* 155A78 801AFA08 8C430000 */  lw    $v1, ($v0)
/* 155A7C 801AFA0C 44803000 */  mtc1  $zero, $f6
/* 155A80 801AFA10 3C0E800F */  lui   $t6, 0x800f
/* 155A84 801AFA14 00031880 */  sll   $v1, $v1, 2
/* 155A88 801AFA18 00230821 */  addu  $at, $at, $v1
/* 155A8C 801AFA1C C4243210 */  lwc1  $f4, 0x3210($at)
/* 155A90 801AFA20 01C37021 */  addu  $t6, $t6, $v1
/* 155A94 801AFA24 4606203C */  c.lt.s $f4, $f6
/* 155A98 801AFA28 00000000 */  nop   
/* 155A9C 801AFA2C 4500001E */  bc1f  .L801AFAA8_ovl7
/* 155AA0 801AFA30 00000000 */   nop   
/* 155AA4 801AFA34 8DCE8AE0 */  lw    $t6, -0x7520($t6)
/* 155AA8 801AFA38 3C01801D */  lui   $at, 0x801d
/* 155AAC 801AFA3C 31CF0001 */  andi  $t7, $t6, 1
/* 155AB0 801AFA40 11E0000E */  beqz  $t7, .L801AFA7C_ovl7
/* 155AB4 801AFA44 00000000 */   nop   
/* 155AB8 801AFA48 3C01801D */  lui   $at, %hi(D_801CE24C) # $at, 0x801d
/* 155ABC 801AFA4C C428E24C */  lwc1  $f8, %lo(D_801CE24C)($at)
/* 155AC0 801AFA50 3C01800E */  lui   $at, 0x800e
/* 155AC4 801AFA54 00230821 */  addu  $at, $at, $v1
/* 155AC8 801AFA58 E4283750 */  swc1  $f8, 0x3750($at)
/* 155ACC 801AFA5C 8C580000 */  lw    $t8, ($v0)
/* 155AD0 801AFA60 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 155AD4 801AFA64 44815000 */  mtc1  $at, $f10
/* 155AD8 801AFA68 3C01800E */  lui   $at, 0x800e
/* 155ADC 801AFA6C 0018C880 */  sll   $t9, $t8, 2
/* 155AE0 801AFA70 00390821 */  addu  $at, $at, $t9
/* 155AE4 801AFA74 03E00008 */  jr    $ra
/* 155AE8 801AFA78 E42A3C90 */   swc1  $f10, 0x3c90($at)

.L801AFA7C_ovl7:
/* 155AEC 801AFA7C C430E250 */  lwc1  $f16, -0x1db0($at)
/* 155AF0 801AFA80 3C01800E */  lui   $at, 0x800e
/* 155AF4 801AFA84 00230821 */  addu  $at, $at, $v1
/* 155AF8 801AFA88 E4303750 */  swc1  $f16, 0x3750($at)
/* 155AFC 801AFA8C 8C480000 */  lw    $t0, ($v0)
/* 155B00 801AFA90 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 155B04 801AFA94 44819000 */  mtc1  $at, $f18
/* 155B08 801AFA98 3C01800E */  lui   $at, 0x800e
/* 155B0C 801AFA9C 00084880 */  sll   $t1, $t0, 2
/* 155B10 801AFAA0 00290821 */  addu  $at, $at, $t1
/* 155B14 801AFAA4 E4323C90 */  swc1  $f18, 0x3c90($at)
.L801AFAA8_ovl7:
/* 155B18 801AFAA8 03E00008 */  jr    $ra
/* 155B1C 801AFAAC 00000000 */   nop   

.type func_801AF9F8_ovl7, @function
.size func_801AF9F8_ovl7, . - func_801AF9F8_ovl7

glabel func_801AFAB0_ovl7
/* 155B20 801AFAB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 155B24 801AFAB4 AFA40018 */  sw    $a0, 0x18($sp)
/* 155B28 801AFAB8 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 155B2C 801AFABC 2484A7C4 */  addiu $a0, %lo(D_8004A7C4) # addiu $a0, $a0, -0x583c
/* 155B30 801AFAC0 8C8E0000 */  lw    $t6, ($a0)
/* 155B34 801AFAC4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 155B38 801AFAC8 3C02800E */  lui   $v0, 0x800e
/* 155B3C 801AFACC 8DC30000 */  lw    $v1, ($t6)
/* 155B40 801AFAD0 3C01800E */  lui   $at, 0x800e
/* 155B44 801AFAD4 240F0001 */  li    $t7, 1
/* 155B48 801AFAD8 00031880 */  sll   $v1, $v1, 2
/* 155B4C 801AFADC 00431021 */  addu  $v0, $v0, $v1
/* 155B50 801AFAE0 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 155B54 801AFAE4 00230821 */  addu  $at, $at, $v1
/* 155B58 801AFAE8 3C18801D */  lui   $t8, %hi(D_801CD360) # $t8, 0x801d
/* 155B5C 801AFAEC AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 155B60 801AFAF0 2718D360 */  addiu $t8, %lo(D_801CD360) # addiu $t8, $t8, -0x2ca0
/* 155B64 801AFAF4 AC580098 */  sw    $t8, 0x98($v0)
/* 155B68 801AFAF8 8C990000 */  lw    $t9, ($a0)
/* 155B6C 801AFAFC 3C01800F */  lui   $at, 0x800f
/* 155B70 801AFB00 8F280000 */  lw    $t0, ($t9)
/* 155B74 801AFB04 00084880 */  sll   $t1, $t0, 2
/* 155B78 801AFB08 00290821 */  addu  $at, $at, $t1
/* 155B7C 801AFB0C 0C066C59 */  jal   func_8019B164_ovl7
/* 155B80 801AFB10 AC208920 */   sw    $zero, -0x76e0($at)
/* 155B84 801AFB14 0C029D9E */  jal   play_sound
/* 155B88 801AFB18 24040022 */   li    $a0, 34
/* 155B8C 801AFB1C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 155B90 801AFB20 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 155B94 801AFB24 3C05800E */  lui   $a1, %hi(D_800E6A10) # $a1, 0x800e
/* 155B98 801AFB28 24A56A10 */  addiu $a1, %lo(D_800E6A10) # addiu $a1, $a1, 0x6a10
/* 155B9C 801AFB2C 8C4A0000 */  lw    $t2, ($v0)
/* 155BA0 801AFB30 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 155BA4 801AFB34 44813000 */  mtc1  $at, $f6
/* 155BA8 801AFB38 000A5880 */  sll   $t3, $t2, 2
/* 155BAC 801AFB3C 00AB2021 */  addu  $a0, $a1, $t3
/* 155BB0 801AFB40 C4840000 */  lwc1  $f4, ($a0)
/* 155BB4 801AFB44 3C0C800F */  lui   $t4, 0x800f
/* 155BB8 801AFB48 3C06800E */  lui   $a2, %hi(D_800E3210) # $a2, 0x800e
/* 155BBC 801AFB4C 46062202 */  mul.s $f8, $f4, $f6
/* 155BC0 801AFB50 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 155BC4 801AFB54 E4880000 */  swc1  $f8, ($a0)
/* 155BC8 801AFB58 8C430000 */  lw    $v1, ($v0)
/* 155BCC 801AFB5C 3C04800E */  lui   $a0, %hi(gEntitiesNextPosYArray) # $a0, 0x800e
/* 155BD0 801AFB60 00031880 */  sll   $v1, $v1, 2
/* 155BD4 801AFB64 01836021 */  addu  $t4, $t4, $v1
/* 155BD8 801AFB68 8D8C8AE0 */  lw    $t4, -0x7520($t4)
/* 155BDC 801AFB6C 00A37021 */  addu  $t6, $a1, $v1
/* 155BE0 801AFB70 00A3C821 */  addu  $t9, $a1, $v1
/* 155BE4 801AFB74 318D0001 */  andi  $t5, $t4, 1
/* 155BE8 801AFB78 51A00029 */  beql  $t5, $zero, .L801AFC20_ovl7
/* 155BEC 801AFB7C 44810000 */   mtc1  $at, $f0
/* 155BF0 801AFB80 C5C00000 */  lwc1  $f0, ($t6)
/* 155BF4 801AFB84 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 155BF8 801AFB88 44811000 */  mtc1  $at, $f2
/* 155BFC 801AFB8C 46000280 */  add.s $f10, $f0, $f0
/* 155C00 801AFB90 3C01800E */  lui   $at, 0x800e
/* 155C04 801AFB94 00230821 */  addu  $at, $at, $v1
/* 155C08 801AFB98 44808000 */  mtc1  $zero, $f16
/* 155C0C 801AFB9C E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 155C10 801AFBA0 8C4F0000 */  lw    $t7, ($v0)
/* 155C14 801AFBA4 3C01800E */  lui   $at, 0x800e
/* 155C18 801AFBA8 24C63210 */  addiu $a2, %lo(D_800E3210) # addiu $a2, $a2, 0x3210
/* 155C1C 801AFBAC 000FC080 */  sll   $t8, $t7, 2
/* 155C20 801AFBB0 00380821 */  addu  $at, $at, $t8
/* 155C24 801AFBB4 E4306690 */  swc1  $f16, 0x6690($at)
/* 155C28 801AFBB8 8C590000 */  lw    $t9, ($v0)
/* 155C2C 801AFBBC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 155C30 801AFBC0 44819000 */  mtc1  $at, $f18
/* 155C34 801AFBC4 3C01800E */  lui   $at, 0x800e
/* 155C38 801AFBC8 00194080 */  sll   $t0, $t9, 2
/* 155C3C 801AFBCC 00280821 */  addu  $at, $at, $t0
/* 155C40 801AFBD0 E4326850 */  swc1  $f18, 0x6850($at)
/* 155C44 801AFBD4 8C490000 */  lw    $t1, ($v0)
/* 155C48 801AFBD8 3C01801D */  lui   $at, %hi(D_801CE254) # $at, 0x801d
/* 155C4C 801AFBDC 3C07800E */  lui   $a3, %hi(D_800E3750) # $a3, 0x800e
/* 155C50 801AFBE0 00095080 */  sll   $t2, $t1, 2
/* 155C54 801AFBE4 00CA5821 */  addu  $t3, $a2, $t2
/* 155C58 801AFBE8 E5620000 */  swc1  $f2, ($t3)
/* 155C5C 801AFBEC 8C4C0000 */  lw    $t4, ($v0)
/* 155C60 801AFBF0 C424E254 */  lwc1  $f4, %lo(D_801CE254)($at)
/* 155C64 801AFBF4 24E73750 */  addiu $a3, %lo(D_800E3750) # addiu $a3, $a3, 0x3750
/* 155C68 801AFBF8 000C6880 */  sll   $t5, $t4, 2
/* 155C6C 801AFBFC 00ED7021 */  addu  $t6, $a3, $t5
/* 155C70 801AFC00 E5C40000 */  swc1  $f4, ($t6)
/* 155C74 801AFC04 8C4F0000 */  lw    $t7, ($v0)
/* 155C78 801AFC08 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 155C7C 801AFC0C 000FC080 */  sll   $t8, $t7, 2
/* 155C80 801AFC10 00380821 */  addu  $at, $at, $t8
/* 155C84 801AFC14 10000027 */  b     .L801AFCB4_ovl7
/* 155C88 801AFC18 E4223C90 */   swc1  $f2, 0x3c90($at)
/* 155C8C 801AFC1C 44810000 */  mtc1  $at, $f0
.L801AFC20_ovl7:
/* 155C90 801AFC20 C7260000 */  lwc1  $f6, ($t9)
/* 155C94 801AFC24 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 155C98 801AFC28 44811000 */  mtc1  $at, $f2
/* 155C9C 801AFC2C 46003202 */  mul.s $f8, $f6, $f0
/* 155CA0 801AFC30 3C01800E */  lui   $at, 0x800e
/* 155CA4 801AFC34 00230821 */  addu  $at, $at, $v1
/* 155CA8 801AFC38 44805000 */  mtc1  $zero, $f10
/* 155CAC 801AFC3C 3C06800E */  lui   $a2, %hi(D_800E3210) # $a2, 0x800e
/* 155CB0 801AFC40 24C63210 */  addiu $a2, %lo(D_800E3210) # addiu $a2, $a2, 0x3210
/* 155CB4 801AFC44 3C07800E */  lui   $a3, %hi(D_800E3750) # $a3, 0x800e
/* 155CB8 801AFC48 E42864D0 */  swc1  $f8, 0x64d0($at)
/* 155CBC 801AFC4C 8C480000 */  lw    $t0, ($v0)
/* 155CC0 801AFC50 3C01800E */  lui   $at, 0x800e
/* 155CC4 801AFC54 24E73750 */  addiu $a3, %lo(D_800E3750) # addiu $a3, $a3, 0x3750
/* 155CC8 801AFC58 00084880 */  sll   $t1, $t0, 2
/* 155CCC 801AFC5C 00290821 */  addu  $at, $at, $t1
/* 155CD0 801AFC60 E42A6690 */  swc1  $f10, 0x6690($at)
/* 155CD4 801AFC64 8C4A0000 */  lw    $t2, ($v0)
/* 155CD8 801AFC68 3C01800E */  lui   $at, 0x800e
/* 155CDC 801AFC6C 000A5880 */  sll   $t3, $t2, 2
/* 155CE0 801AFC70 002B0821 */  addu  $at, $at, $t3
/* 155CE4 801AFC74 E4206850 */  swc1  $f0, 0x6850($at)
/* 155CE8 801AFC78 8C4C0000 */  lw    $t4, ($v0)
/* 155CEC 801AFC7C 3C01801D */  lui   $at, %hi(D_801CE258) # $at, 0x801d
/* 155CF0 801AFC80 000C6880 */  sll   $t5, $t4, 2
/* 155CF4 801AFC84 00CD7021 */  addu  $t6, $a2, $t5
/* 155CF8 801AFC88 E5C20000 */  swc1  $f2, ($t6)
/* 155CFC 801AFC8C 8C4F0000 */  lw    $t7, ($v0)
/* 155D00 801AFC90 C430E258 */  lwc1  $f16, %lo(D_801CE258)($at)
/* 155D04 801AFC94 3C01800E */  lui   $at, 0x800e
/* 155D08 801AFC98 000FC080 */  sll   $t8, $t7, 2
/* 155D0C 801AFC9C 00F8C821 */  addu  $t9, $a3, $t8
/* 155D10 801AFCA0 E7300000 */  swc1  $f16, ($t9)
/* 155D14 801AFCA4 8C480000 */  lw    $t0, ($v0)
/* 155D18 801AFCA8 00084880 */  sll   $t1, $t0, 2
/* 155D1C 801AFCAC 00290821 */  addu  $at, $at, $t1
/* 155D20 801AFCB0 E4223C90 */  swc1  $f2, 0x3c90($at)
.L801AFCB4_ovl7:
/* 155D24 801AFCB4 8C430000 */  lw    $v1, ($v0)
/* 155D28 801AFCB8 24842790 */  addiu $a0, %lo(gEntitiesNextPosYArray) # addiu $a0, $a0, 0x2790
/* 155D2C 801AFCBC C4840000 */  lwc1  $f4, ($a0)
/* 155D30 801AFCC0 00031880 */  sll   $v1, $v1, 2
/* 155D34 801AFCC4 00835021 */  addu  $t2, $a0, $v1
/* 155D38 801AFCC8 C5520000 */  lwc1  $f18, ($t2)
/* 155D3C 801AFCCC 00C32021 */  addu  $a0, $a2, $v1
/* 155D40 801AFCD0 4604903C */  c.lt.s $f18, $f4
/* 155D44 801AFCD4 00000000 */  nop   
/* 155D48 801AFCD8 4500000D */  bc1f  .L801AFD10_ovl7
/* 155D4C 801AFCDC 00000000 */   nop   
/* 155D50 801AFCE0 C4860000 */  lwc1  $f6, ($a0)
/* 155D54 801AFCE4 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 155D58 801AFCE8 44815000 */  mtc1  $at, $f10
/* 155D5C 801AFCEC 46003207 */  neg.s $f8, $f6
/* 155D60 801AFCF0 460A4402 */  mul.s $f16, $f8, $f10
/* 155D64 801AFCF4 E4900000 */  swc1  $f16, ($a0)
/* 155D68 801AFCF8 8C4B0000 */  lw    $t3, ($v0)
/* 155D6C 801AFCFC 000B6080 */  sll   $t4, $t3, 2
/* 155D70 801AFD00 00EC2821 */  addu  $a1, $a3, $t4
/* 155D74 801AFD04 C4B20000 */  lwc1  $f18, ($a1)
/* 155D78 801AFD08 46009107 */  neg.s $f4, $f18
/* 155D7C 801AFD0C E4A40000 */  swc1  $f4, ($a1)
.L801AFD10_ovl7:
/* 155D80 801AFD10 0C02BE85 */  jal   func_800AFA14
/* 155D84 801AFD14 00000000 */   nop   
/* 155D88 801AFD18 8FBF0014 */  lw    $ra, 0x14($sp)
/* 155D8C 801AFD1C 27BD0018 */  addiu $sp, $sp, 0x18
/* 155D90 801AFD20 03E00008 */  jr    $ra
/* 155D94 801AFD24 00000000 */   nop   

.type func_801AFAB0_ovl7, @function
.size func_801AFAB0_ovl7, . - func_801AFAB0_ovl7

glabel func_801AFD28_ovl7
/* 155D98 801AFD28 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 155D9C 801AFD2C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 155DA0 801AFD30 AFA40000 */  sw    $a0, ($sp)
/* 155DA4 801AFD34 3C01800E */  lui   $at, 0x800e
/* 155DA8 801AFD38 8C430000 */  lw    $v1, ($v0)
/* 155DAC 801AFD3C 44803000 */  mtc1  $zero, $f6
/* 155DB0 801AFD40 3C0E800F */  lui   $t6, 0x800f
/* 155DB4 801AFD44 00031880 */  sll   $v1, $v1, 2
/* 155DB8 801AFD48 00230821 */  addu  $at, $at, $v1
/* 155DBC 801AFD4C C4243210 */  lwc1  $f4, 0x3210($at)
/* 155DC0 801AFD50 01C37021 */  addu  $t6, $t6, $v1
/* 155DC4 801AFD54 4606203C */  c.lt.s $f4, $f6
/* 155DC8 801AFD58 00000000 */  nop   
/* 155DCC 801AFD5C 4500001E */  bc1f  .L801AFDD8_ovl7
/* 155DD0 801AFD60 00000000 */   nop   
/* 155DD4 801AFD64 8DCE8AE0 */  lw    $t6, -0x7520($t6)
/* 155DD8 801AFD68 3C01801D */  lui   $at, 0x801d
/* 155DDC 801AFD6C 31CF0001 */  andi  $t7, $t6, 1
/* 155DE0 801AFD70 11E0000E */  beqz  $t7, .L801AFDAC_ovl7
/* 155DE4 801AFD74 00000000 */   nop   
/* 155DE8 801AFD78 3C01801D */  lui   $at, %hi(D_801CE25C) # $at, 0x801d
/* 155DEC 801AFD7C C428E25C */  lwc1  $f8, %lo(D_801CE25C)($at)
/* 155DF0 801AFD80 3C01800E */  lui   $at, 0x800e
/* 155DF4 801AFD84 00230821 */  addu  $at, $at, $v1
/* 155DF8 801AFD88 E4283750 */  swc1  $f8, 0x3750($at)
/* 155DFC 801AFD8C 8C580000 */  lw    $t8, ($v0)
/* 155E00 801AFD90 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 155E04 801AFD94 44815000 */  mtc1  $at, $f10
/* 155E08 801AFD98 3C01800E */  lui   $at, 0x800e
/* 155E0C 801AFD9C 0018C880 */  sll   $t9, $t8, 2
/* 155E10 801AFDA0 00390821 */  addu  $at, $at, $t9
/* 155E14 801AFDA4 03E00008 */  jr    $ra
/* 155E18 801AFDA8 E42A3C90 */   swc1  $f10, 0x3c90($at)

.L801AFDAC_ovl7:
/* 155E1C 801AFDAC C430E260 */  lwc1  $f16, -0x1da0($at)
/* 155E20 801AFDB0 3C01800E */  lui   $at, 0x800e
/* 155E24 801AFDB4 00230821 */  addu  $at, $at, $v1
/* 155E28 801AFDB8 E4303750 */  swc1  $f16, 0x3750($at)
/* 155E2C 801AFDBC 8C480000 */  lw    $t0, ($v0)
/* 155E30 801AFDC0 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 155E34 801AFDC4 44819000 */  mtc1  $at, $f18
/* 155E38 801AFDC8 3C01800E */  lui   $at, 0x800e
/* 155E3C 801AFDCC 00084880 */  sll   $t1, $t0, 2
/* 155E40 801AFDD0 00290821 */  addu  $at, $at, $t1
/* 155E44 801AFDD4 E4323C90 */  swc1  $f18, 0x3c90($at)
.L801AFDD8_ovl7:
/* 155E48 801AFDD8 03E00008 */  jr    $ra
/* 155E4C 801AFDDC 00000000 */   nop   

.type func_801AFD28_ovl7, @function
.size func_801AFD28_ovl7, . - func_801AFD28_ovl7

glabel func_801AFDE0_ovl7
/* 155E50 801AFDE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 155E54 801AFDE4 AFA40018 */  sw    $a0, 0x18($sp)
/* 155E58 801AFDE8 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 155E5C 801AFDEC 2484A7C4 */  addiu $a0, %lo(D_8004A7C4) # addiu $a0, $a0, -0x583c
/* 155E60 801AFDF0 8C8E0000 */  lw    $t6, ($a0)
/* 155E64 801AFDF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 155E68 801AFDF8 3C03800E */  lui   $v1, 0x800e
/* 155E6C 801AFDFC 8DC20000 */  lw    $v0, ($t6)
/* 155E70 801AFE00 3C01800E */  lui   $at, 0x800e
/* 155E74 801AFE04 240F0002 */  li    $t7, 2
/* 155E78 801AFE08 00021080 */  sll   $v0, $v0, 2
/* 155E7C 801AFE0C 00621821 */  addu  $v1, $v1, $v0
/* 155E80 801AFE10 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 155E84 801AFE14 00220821 */  addu  $at, $at, $v0
/* 155E88 801AFE18 3C18801D */  lui   $t8, %hi(D_801CD384) # $t8, 0x801d
/* 155E8C 801AFE1C AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 155E90 801AFE20 2718D384 */  addiu $t8, %lo(D_801CD384) # addiu $t8, $t8, -0x2c7c
/* 155E94 801AFE24 AC780098 */  sw    $t8, 0x98($v1)
/* 155E98 801AFE28 8C880000 */  lw    $t0, ($a0)
/* 155E9C 801AFE2C 3C01800F */  lui   $at, 0x800f
/* 155EA0 801AFE30 24190001 */  li    $t9, 1
/* 155EA4 801AFE34 8D090000 */  lw    $t1, ($t0)
/* 155EA8 801AFE38 00095080 */  sll   $t2, $t1, 2
/* 155EAC 801AFE3C 002A0821 */  addu  $at, $at, $t2
/* 155EB0 801AFE40 0C02CD48 */  jal   func_800B3520
/* 155EB4 801AFE44 AC398920 */   sw    $t9, -0x76e0($at)
/* 155EB8 801AFE48 0C02BE85 */  jal   func_800AFA14
/* 155EBC 801AFE4C 00000000 */   nop   
/* 155EC0 801AFE50 8FBF0014 */  lw    $ra, 0x14($sp)
/* 155EC4 801AFE54 27BD0018 */  addiu $sp, $sp, 0x18
/* 155EC8 801AFE58 03E00008 */  jr    $ra
/* 155ECC 801AFE5C 00000000 */   nop   

.type func_801AFDE0_ovl7, @function
.size func_801AFDE0_ovl7, . - func_801AFDE0_ovl7

glabel func_801AFE60_ovl7
/* 155ED0 801AFE60 03E00008 */  jr    $ra
/* 155ED4 801AFE64 AFA40000 */   sw    $a0, ($sp)

.type func_801AFE60_ovl7, @function
.size func_801AFE60_ovl7, . - func_801AFE60_ovl7

glabel func_801AFE68_ovl7
/* 155ED8 801AFE68 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 155EDC 801AFE6C 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 155EE0 801AFE70 8CAE0000 */  lw    $t6, ($a1)
/* 155EE4 801AFE74 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 155EE8 801AFE78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 155EEC 801AFE7C AFA40018 */  sw    $a0, 0x18($sp)
/* 155EF0 801AFE80 8DC20000 */  lw    $v0, ($t6)
/* 155EF4 801AFE84 3C04800E */  lui   $a0, 0x800e
/* 155EF8 801AFE88 3C01800E */  lui   $at, 0x800e
/* 155EFC 801AFE8C 00021080 */  sll   $v0, $v0, 2
/* 155F00 801AFE90 00822021 */  addu  $a0, $a0, $v0
/* 155F04 801AFE94 8C841B50 */  lw    $a0, 0x1b50($a0)
/* 155F08 801AFE98 00220821 */  addu  $at, $at, $v0
/* 155F0C 801AFE9C 240F0003 */  li    $t7, 3
/* 155F10 801AFEA0 3C18801D */  lui   $t8, %hi(D_801CD360) # $t8, 0x801d
/* 155F14 801AFEA4 AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 155F18 801AFEA8 2718D360 */  addiu $t8, %lo(D_801CD360) # addiu $t8, $t8, -0x2ca0
/* 155F1C 801AFEAC AC980098 */  sw    $t8, 0x98($a0)
/* 155F20 801AFEB0 8CA30000 */  lw    $v1, ($a1)
/* 155F24 801AFEB4 3C01800F */  lui   $at, 0x800f
/* 155F28 801AFEB8 3C09800F */  lui   $t1, 0x800f
/* 155F2C 801AFEBC 8C790000 */  lw    $t9, ($v1)
/* 155F30 801AFEC0 00194080 */  sll   $t0, $t9, 2
/* 155F34 801AFEC4 00280821 */  addu  $at, $at, $t0
/* 155F38 801AFEC8 AC208920 */  sw    $zero, -0x76e0($at)
/* 155F3C 801AFECC 8C620000 */  lw    $v0, ($v1)
/* 155F40 801AFED0 3C01801D */  lui   $at, 0x801d
/* 155F44 801AFED4 00021080 */  sll   $v0, $v0, 2
/* 155F48 801AFED8 01224821 */  addu  $t1, $t1, $v0
/* 155F4C 801AFEDC 8D298AE0 */  lw    $t1, -0x7520($t1)
/* 155F50 801AFEE0 312A0001 */  andi  $t2, $t1, 1
/* 155F54 801AFEE4 1140000E */  beqz  $t2, .L801AFF20_ovl7
/* 155F58 801AFEE8 00000000 */   nop   
/* 155F5C 801AFEEC 3C01801D */  lui   $at, %hi(D_801CE264) # $at, 0x801d
/* 155F60 801AFEF0 C424E264 */  lwc1  $f4, %lo(D_801CE264)($at)
/* 155F64 801AFEF4 3C01800E */  lui   $at, 0x800e
/* 155F68 801AFEF8 00220821 */  addu  $at, $at, $v0
/* 155F6C 801AFEFC E4243750 */  swc1  $f4, 0x3750($at)
/* 155F70 801AFF00 8C6B0000 */  lw    $t3, ($v1)
/* 155F74 801AFF04 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 155F78 801AFF08 44813000 */  mtc1  $at, $f6
/* 155F7C 801AFF0C 3C01800E */  lui   $at, 0x800e
/* 155F80 801AFF10 000B6080 */  sll   $t4, $t3, 2
/* 155F84 801AFF14 002C0821 */  addu  $at, $at, $t4
/* 155F88 801AFF18 1000000C */  b     .L801AFF4C_ovl7
/* 155F8C 801AFF1C E4263C90 */   swc1  $f6, 0x3c90($at)
.L801AFF20_ovl7:
/* 155F90 801AFF20 C428E268 */  lwc1  $f8, -0x1d98($at)
/* 155F94 801AFF24 3C01800E */  lui   $at, 0x800e
/* 155F98 801AFF28 00220821 */  addu  $at, $at, $v0
/* 155F9C 801AFF2C E4283750 */  swc1  $f8, 0x3750($at)
/* 155FA0 801AFF30 8C6D0000 */  lw    $t5, ($v1)
/* 155FA4 801AFF34 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 155FA8 801AFF38 44815000 */  mtc1  $at, $f10
/* 155FAC 801AFF3C 3C01800E */  lui   $at, 0x800e
/* 155FB0 801AFF40 000D7080 */  sll   $t6, $t5, 2
/* 155FB4 801AFF44 002E0821 */  addu  $at, $at, $t6
/* 155FB8 801AFF48 E42A3C90 */  swc1  $f10, 0x3c90($at)
.L801AFF4C_ovl7:
/* 155FBC 801AFF4C 0C02BE85 */  jal   func_800AFA14
/* 155FC0 801AFF50 00000000 */   nop   
/* 155FC4 801AFF54 8FBF0014 */  lw    $ra, 0x14($sp)
/* 155FC8 801AFF58 27BD0018 */  addiu $sp, $sp, 0x18
/* 155FCC 801AFF5C 03E00008 */  jr    $ra
/* 155FD0 801AFF60 00000000 */   nop   

.type func_801AFE68_ovl7, @function
.size func_801AFE68_ovl7, . - func_801AFE68_ovl7

glabel func_801AFF64_ovl7
/* 155FD4 801AFF64 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 155FD8 801AFF68 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 155FDC 801AFF6C AFA40000 */  sw    $a0, ($sp)
/* 155FE0 801AFF70 3C0E800F */  lui   $t6, 0x800f
/* 155FE4 801AFF74 8C430000 */  lw    $v1, ($v0)
/* 155FE8 801AFF78 3C01801D */  lui   $at, 0x801d
/* 155FEC 801AFF7C 00031880 */  sll   $v1, $v1, 2
/* 155FF0 801AFF80 01C37021 */  addu  $t6, $t6, $v1
/* 155FF4 801AFF84 8DCE8AE0 */  lw    $t6, -0x7520($t6)
/* 155FF8 801AFF88 31CF0001 */  andi  $t7, $t6, 1
/* 155FFC 801AFF8C 11E0000E */  beqz  $t7, .L801AFFC8_ovl7
/* 156000 801AFF90 00000000 */   nop   
/* 156004 801AFF94 3C01801D */  lui   $at, %hi(D_801CE26C) # $at, 0x801d
/* 156008 801AFF98 C424E26C */  lwc1  $f4, %lo(D_801CE26C)($at)
/* 15600C 801AFF9C 3C01800E */  lui   $at, 0x800e
/* 156010 801AFFA0 00230821 */  addu  $at, $at, $v1
/* 156014 801AFFA4 E4243750 */  swc1  $f4, 0x3750($at)
/* 156018 801AFFA8 8C580000 */  lw    $t8, ($v0)
/* 15601C 801AFFAC 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 156020 801AFFB0 44813000 */  mtc1  $at, $f6
/* 156024 801AFFB4 3C01800E */  lui   $at, 0x800e
/* 156028 801AFFB8 0018C880 */  sll   $t9, $t8, 2
/* 15602C 801AFFBC 00390821 */  addu  $at, $at, $t9
/* 156030 801AFFC0 03E00008 */  jr    $ra
/* 156034 801AFFC4 E4263C90 */   swc1  $f6, 0x3c90($at)

.L801AFFC8_ovl7:
/* 156038 801AFFC8 C428E270 */  lwc1  $f8, -0x1d90($at)
/* 15603C 801AFFCC 3C01800E */  lui   $at, 0x800e
/* 156040 801AFFD0 00230821 */  addu  $at, $at, $v1
/* 156044 801AFFD4 E4283750 */  swc1  $f8, 0x3750($at)
/* 156048 801AFFD8 8C480000 */  lw    $t0, ($v0)
/* 15604C 801AFFDC 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 156050 801AFFE0 44815000 */  mtc1  $at, $f10
/* 156054 801AFFE4 3C01800E */  lui   $at, 0x800e
/* 156058 801AFFE8 00084880 */  sll   $t1, $t0, 2
/* 15605C 801AFFEC 00290821 */  addu  $at, $at, $t1
/* 156060 801AFFF0 E42A3C90 */  swc1  $f10, 0x3c90($at)
/* 156064 801AFFF4 03E00008 */  jr    $ra
/* 156068 801AFFF8 00000000 */   nop   

.type func_801AFF64_ovl7, @function
.size func_801AFF64_ovl7, . - func_801AFF64_ovl7

glabel func_801AFFFC_ovl7
/* 15606C 801AFFFC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 156070 801B0000 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 156074 801B0004 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 156078 801B0008 AFBF001C */  sw    $ra, 0x1c($sp)
/* 15607C 801B000C AFB00018 */  sw    $s0, 0x18($sp)
/* 156080 801B0010 8DC20000 */  lw    $v0, ($t6)
/* 156084 801B0014 3C10800E */  lui   $s0, 0x800e
/* 156088 801B0018 00027880 */  sll   $t7, $v0, 2
/* 15608C 801B001C 020F8021 */  addu  $s0, $s0, $t7
/* 156090 801B0020 8E101B50 */  lw    $s0, 0x1b50($s0)
/* 156094 801B0024 8E18008C */  lw    $t8, 0x8c($s0)
/* 156098 801B0028 53000020 */  beql  $t8, $zero, .L801B00AC_ovl7
/* 15609C 801B002C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 1560A0 801B0030 0C044554 */  jal   func_80111550
/* 1560A4 801B0034 00402025 */   move  $a0, $v0
/* 1560A8 801B0038 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1560AC 801B003C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1560B0 801B0040 8E04008C */  lw    $a0, 0x8c($s0)
/* 1560B4 801B0044 0C044722 */  jal   func_80111C88
/* 1560B8 801B0048 8F250000 */   lw    $a1, ($t9)
/* 1560BC 801B004C 0C0447B3 */  jal   func_80111ECC
/* 1560C0 801B0050 00402025 */   move  $a0, $v0
/* 1560C4 801B0054 0C044054 */  jal   func_80110150
/* 1560C8 801B0058 27A40028 */   addiu $a0, $sp, 0x28
/* 1560CC 801B005C 1040000B */  beqz  $v0, .L801B008C_ovl7
/* 1560D0 801B0060 3C0C8005 */   lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 1560D4 801B0064 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 1560D8 801B0068 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 1560DC 801B006C 93A8002A */  lbu   $t0, 0x2a($sp)
/* 1560E0 801B0070 3C01800F */  lui   $at, 0x800f
/* 1560E4 801B0074 8D2A0000 */  lw    $t2, ($t1)
/* 1560E8 801B0078 000A5880 */  sll   $t3, $t2, 2
/* 1560EC 801B007C 002B0821 */  addu  $at, $at, $t3
/* 1560F0 801B0080 AC2883E0 */  sw    $t0, -0x7c20($at)
/* 1560F4 801B0084 10000008 */  b     .L801B00A8_ovl7
/* 1560F8 801B0088 A2000043 */   sb    $zero, 0x43($s0)
.L801B008C_ovl7:
/* 1560FC 801B008C 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 156100 801B0090 3C01800F */  lui   $at, 0x800f
/* 156104 801B0094 8D8D0000 */  lw    $t5, ($t4)
/* 156108 801B0098 000D7080 */  sll   $t6, $t5, 2
/* 15610C 801B009C 002E0821 */  addu  $at, $at, $t6
/* 156110 801B00A0 AC2083E0 */  sw    $zero, -0x7c20($at)
/* 156114 801B00A4 A2000043 */  sb    $zero, 0x43($s0)
.L801B00A8_ovl7:
/* 156118 801B00A8 8FBF001C */  lw    $ra, 0x1c($sp)
.L801B00AC_ovl7:
/* 15611C 801B00AC 8FB00018 */  lw    $s0, 0x18($sp)
/* 156120 801B00B0 27BD0050 */  addiu $sp, $sp, 0x50
/* 156124 801B00B4 03E00008 */  jr    $ra
/* 156128 801B00B8 00000000 */   nop   

.type func_801AFFFC_ovl7, @function
.size func_801AFFFC_ovl7, . - func_801AFFFC_ovl7

glabel func_801B00BC_ovl7
/* 15612C 801B00BC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 156130 801B00C0 AFB00020 */  sw    $s0, 0x20($sp)
/* 156134 801B00C4 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 156138 801B00C8 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 15613C 801B00CC 8E0E0000 */  lw    $t6, ($s0)
/* 156140 801B00D0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 156144 801B00D4 AFA40038 */  sw    $a0, 0x38($sp)
/* 156148 801B00D8 8DCF0000 */  lw    $t7, ($t6)
/* 15614C 801B00DC 3C02800E */  lui   $v0, 0x800e
/* 156150 801B00E0 3C19801D */  lui   $t9, %hi(D_801CA35C) # $t9, 0x801d
/* 156154 801B00E4 000FC080 */  sll   $t8, $t7, 2
/* 156158 801B00E8 00581021 */  addu  $v0, $v0, $t8
/* 15615C 801B00EC 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 156160 801B00F0 3C08801D */  lui   $t0, %hi(D_801CA380) # $t0, 0x801d
/* 156164 801B00F4 2739A35C */  addiu $t9, %lo(D_801CA35C) # addiu $t9, $t9, -0x5ca4
/* 156168 801B00F8 2508A380 */  addiu $t0, %lo(D_801CA380) # addiu $t0, $t0, -0x5c80
/* 15616C 801B00FC 3C04801D */  lui   $a0, %hi(D_801CB388) # $a0, 0x801d
/* 156170 801B0100 2484B388 */  addiu $a0, %lo(D_801CB388) # addiu $a0, $a0, -0x4c78
/* 156174 801B0104 AC59008C */  sw    $t9, 0x8c($v0)
/* 156178 801B0108 0C068E4E */  jal   func_801A3938_ovl7
/* 15617C 801B010C AC480090 */   sw    $t0, 0x90($v0)
/* 156180 801B0110 8E090000 */  lw    $t1, ($s0)
/* 156184 801B0114 3C04800F */  lui   $a0, 0x800f
/* 156188 801B0118 8D2A0000 */  lw    $t2, ($t1)
/* 15618C 801B011C 000A5880 */  sll   $t3, $t2, 2
/* 156190 801B0120 008B2021 */  addu  $a0, $a0, $t3
/* 156194 801B0124 0C0288B5 */  jal   func_800A22D4
/* 156198 801B0128 8C8498E0 */   lw    $a0, -0x6720($a0)
/* 15619C 801B012C 8E020000 */  lw    $v0, ($s0)
/* 1561A0 801B0130 3C0E800F */  lui   $t6, 0x800f
/* 1561A4 801B0134 3C19800F */  lui   $t9, 0x800f
/* 1561A8 801B0138 8C4C0000 */  lw    $t4, ($v0)
/* 1561AC 801B013C 27A40034 */  addiu $a0, $sp, 0x34
/* 1561B0 801B0140 27A50032 */  addiu $a1, $sp, 0x32
/* 1561B4 801B0144 000C6880 */  sll   $t5, $t4, 2
/* 1561B8 801B0148 01CD7021 */  addu  $t6, $t6, $t5
/* 1561BC 801B014C 8DCE9AA0 */  lw    $t6, -0x6560($t6)
/* 1561C0 801B0150 AFAE0034 */  sw    $t6, 0x34($sp)
/* 1561C4 801B0154 8C4F0000 */  lw    $t7, ($v0)
/* 1561C8 801B0158 000FC080 */  sll   $t8, $t7, 2
/* 1561CC 801B015C 0338C821 */  addu  $t9, $t9, $t8
/* 1561D0 801B0160 8F399C60 */  lw    $t9, -0x63a0($t9)
/* 1561D4 801B0164 0C029E1C */  jal   func_800A7870
/* 1561D8 801B0168 A7B90032 */   sh    $t9, 0x32($sp)
/* 1561DC 801B016C 24040006 */  li    $a0, 6
/* 1561E0 801B0170 0C02ED1A */  jal   func_800BB468
/* 1561E4 801B0174 24050010 */   li    $a1, 16
/* 1561E8 801B0178 0C029D9E */  jal   play_sound
/* 1561EC 801B017C 24040020 */   li    $a0, 32
/* 1561F0 801B0180 8E020000 */  lw    $v0, ($s0)
/* 1561F4 801B0184 3C01801D */  lui   $at, %hi(D_801CE274) # $at, 0x801d
/* 1561F8 801B0188 C424E274 */  lwc1  $f4, %lo(D_801CE274)($at)
/* 1561FC 801B018C 8C480000 */  lw    $t0, ($v0)
/* 156200 801B0190 3C01800F */  lui   $at, 0x800f
/* 156204 801B0194 3C07800E */  lui   $a3, 0x800e
/* 156208 801B0198 00084880 */  sll   $t1, $t0, 2
/* 15620C 801B019C 00290821 */  addu  $at, $at, $t1
/* 156210 801B01A0 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 156214 801B01A4 8C430000 */  lw    $v1, ($v0)
/* 156218 801B01A8 3C01800E */  lui   $at, 0x800e
/* 15621C 801B01AC 24040001 */  li    $a0, 1
/* 156220 801B01B0 00031880 */  sll   $v1, $v1, 2
/* 156224 801B01B4 00230821 */  addu  $at, $at, $v1
/* 156228 801B01B8 C4262790 */  lwc1  $f6, 0x2790($at)
/* 15622C 801B01BC 3C01800E */  lui   $at, 0x800e
/* 156230 801B01C0 00230821 */  addu  $at, $at, $v1
/* 156234 801B01C4 C4282950 */  lwc1  $f8, 0x2950($at)
/* 156238 801B01C8 00E33821 */  addu  $a3, $a3, $v1
/* 15623C 801B01CC 8CE725D0 */  lw    $a3, 0x25d0($a3)
/* 156240 801B01D0 24050001 */  li    $a1, 1
/* 156244 801B01D4 24060044 */  li    $a2, 68
/* 156248 801B01D8 E7A60010 */  swc1  $f6, 0x10($sp)
/* 15624C 801B01DC 0C029FDD */  jal   func_800A7F74
/* 156250 801B01E0 E7A80014 */   swc1  $f8, 0x14($sp)
/* 156254 801B01E4 8E020000 */  lw    $v0, ($s0)
/* 156258 801B01E8 3C01800E */  lui   $at, 0x800e
/* 15625C 801B01EC 240AFFFF */  li    $t2, -1
/* 156260 801B01F0 8C4B0000 */  lw    $t3, ($v0)
/* 156264 801B01F4 3C0D801B */  lui   $t5, %hi(D_801B0258) # $t5, 0x801b
/* 156268 801B01F8 25AD0258 */  addiu $t5, %lo(D_801B0258) # addiu $t5, $t5, 0x258
/* 15626C 801B01FC 000B6080 */  sll   $t4, $t3, 2
/* 156270 801B0200 002C0821 */  addu  $at, $at, $t4
/* 156274 801B0204 AC2A0D50 */  sw    $t2, 0xd50($at)
/* 156278 801B0208 8C4E0000 */  lw    $t6, ($v0)
/* 15627C 801B020C 3C01800E */  lui   $at, 0x800e
/* 156280 801B0210 24040074 */  li    $a0, 116
/* 156284 801B0214 000E7880 */  sll   $t7, $t6, 2
/* 156288 801B0218 002F0821 */  addu  $at, $at, $t7
/* 15628C 801B021C AC2DF150 */  sw    $t5, -0xeb0($at)
/* 156290 801B0220 0C02C67D */  jal   func_800B19F4
/* 156294 801B0224 8C450000 */   lw    $a1, ($v0)
/* 156298 801B0228 0C002DAF */  jal   finish_current_thread
/* 15629C 801B022C 2404000E */   li    $a0, 14
/* 1562A0 801B0230 3C018013 */  lui   $at, %hi(D_8012E860) # $at, 0x8013
/* 1562A4 801B0234 AC20E860 */  sw    $zero, %lo(D_8012E860)($at)
/* 1562A8 801B0238 8E180000 */  lw    $t8, ($s0)
/* 1562AC 801B023C 0C067656 */  jal   func_8019D958_ovl7
/* 1562B0 801B0240 97040002 */   lhu   $a0, 2($t8)
/* 1562B4 801B0244 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1562B8 801B0248 8FB00020 */  lw    $s0, 0x20($sp)
/* 1562BC 801B024C 27BD0038 */  addiu $sp, $sp, 0x38
/* 1562C0 801B0250 03E00008 */  jr    $ra
/* 1562C4 801B0254 00000000 */   nop   

.type func_801B00BC_ovl7, @function
.size func_801B00BC_ovl7, . - func_801B00BC_ovl7

glabel func_801B0258_ovl7
/* 1562C8 801B0258 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1562CC 801B025C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1562D0 801B0260 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1562D4 801B0264 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1562D8 801B0268 AFA40020 */  sw    $a0, 0x20($sp)
/* 1562DC 801B026C 8DC20000 */  lw    $v0, ($t6)
/* 1562E0 801B0270 3C188013 */  lui   $t8, %hi(D_8012E7C5) # $t8, 0x8013
/* 1562E4 801B0274 9318E7C5 */  lbu   $t8, %lo(D_8012E7C5)($t8)
/* 1562E8 801B0278 3C03800E */  lui   $v1, 0x800e
/* 1562EC 801B027C 00027880 */  sll   $t7, $v0, 2
/* 1562F0 801B0280 006F1821 */  addu  $v1, $v1, $t7
/* 1562F4 801B0284 2401000E */  li    $at, 14
/* 1562F8 801B0288 13010007 */  beq   $t8, $at, .L801B02A8_ovl7
/* 1562FC 801B028C 8C631B50 */   lw    $v1, 0x1b50($v1)
/* 156300 801B0290 0C06C0FF */  jal   func_801B03FC_ovl7
/* 156304 801B0294 AFA30018 */   sw    $v1, 0x18($sp)
/* 156308 801B0298 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 15630C 801B029C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 156310 801B02A0 8FA30018 */  lw    $v1, 0x18($sp)
/* 156314 801B02A4 8F220000 */  lw    $v0, ($t9)
.L801B02A8_ovl7:
/* 156318 801B02A8 8C640090 */  lw    $a0, 0x90($v1)
/* 15631C 801B02AC 0C044681 */  jal   func_80111A04
/* 156320 801B02B0 00402825 */   move  $a1, $v0
/* 156324 801B02B4 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 156328 801B02B8 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 15632C 801B02BC 8C430020 */  lw    $v1, 0x20($v0)
/* 156330 801B02C0 3C07800F */  lui   $a3, %hi(D_800EA6E0) # $a3, 0x800f
/* 156334 801B02C4 8D4B0000 */  lw    $t3, ($t2)
/* 156338 801B02C8 24E7A6E0 */  addiu $a3, %lo(D_800EA6E0) # addiu $a3, $a3, -0x5920
/* 15633C 801B02CC C4640018 */  lwc1  $f4, 0x18($v1)
/* 156340 801B02D0 000B6080 */  sll   $t4, $t3, 2
/* 156344 801B02D4 00EC6821 */  addu  $t5, $a3, $t4
/* 156348 801B02D8 C5A60000 */  lwc1  $f6, ($t5)
/* 15634C 801B02DC 00402025 */  move  $a0, $v0
/* 156350 801B02E0 46062202 */  mul.s $f8, $f4, $f6
/* 156354 801B02E4 0C044713 */  jal   func_80111C4C
/* 156358 801B02E8 E4680018 */   swc1  $f8, 0x18($v1)
/* 15635C 801B02EC 3C07800F */  lui   $a3, %hi(D_800EA6E0) # $a3, 0x800f
/* 156360 801B02F0 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 156364 801B02F4 3C09801D */  lui   $t1, %hi(D_801CB208) # $t1, 0x801d
/* 156368 801B02F8 3C08801D */  lui   $t0, %hi(D_801D0AB0) # $t0, 0x801d
/* 15636C 801B02FC 24E7A6E0 */  addiu $a3, %lo(D_800EA6E0) # addiu $a3, $a3, -0x5920
/* 156370 801B0300 25080AB0 */  addiu $t0, %lo(D_801D0AB0) # addiu $t0, $t0, 0xab0
/* 156374 801B0304 2529B208 */  addiu $t1, %lo(D_801CB208) # addiu $t1, $t1, -0x4df8
/* 156378 801B0308 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 15637C 801B030C 00003025 */  move  $a2, $zero
.L801B0310_ovl7:
/* 156380 801B0310 8CAE0000 */  lw    $t6, ($a1)
/* 156384 801B0314 00062100 */  sll   $a0, $a2, 4
/* 156388 801B0318 01241821 */  addu  $v1, $t1, $a0
/* 15638C 801B031C 000E7880 */  sll   $t7, $t6, 2
/* 156390 801B0320 00EFC021 */  addu  $t8, $a3, $t7
/* 156394 801B0324 C70A0000 */  lwc1  $f10, ($t8)
/* 156398 801B0328 C4700000 */  lwc1  $f16, ($v1)
/* 15639C 801B032C 01041021 */  addu  $v0, $t0, $a0
/* 1563A0 801B0330 C4660004 */  lwc1  $f6, 4($v1)
/* 1563A4 801B0334 46105482 */  mul.s $f18, $f10, $f16
/* 1563A8 801B0338 C4700008 */  lwc1  $f16, 8($v1)
/* 1563AC 801B033C 24C60001 */  addiu $a2, $a2, 1
/* 1563B0 801B0340 30C600FF */  andi  $a2, $a2, 0xff
/* 1563B4 801B0344 28C10018 */  slti  $at, $a2, 0x18
/* 1563B8 801B0348 E4520000 */  swc1  $f18, ($v0)
/* 1563BC 801B034C 8CB90000 */  lw    $t9, ($a1)
/* 1563C0 801B0350 00195080 */  sll   $t2, $t9, 2
/* 1563C4 801B0354 00EA5821 */  addu  $t3, $a3, $t2
/* 1563C8 801B0358 C5640000 */  lwc1  $f4, ($t3)
/* 1563CC 801B035C 46062202 */  mul.s $f8, $f4, $f6
/* 1563D0 801B0360 C466000C */  lwc1  $f6, 0xc($v1)
/* 1563D4 801B0364 E4480004 */  swc1  $f8, 4($v0)
/* 1563D8 801B0368 8CAC0000 */  lw    $t4, ($a1)
/* 1563DC 801B036C 000C6880 */  sll   $t5, $t4, 2
/* 1563E0 801B0370 00ED7021 */  addu  $t6, $a3, $t5
/* 1563E4 801B0374 C5CA0000 */  lwc1  $f10, ($t6)
/* 1563E8 801B0378 46105482 */  mul.s $f18, $f10, $f16
/* 1563EC 801B037C E4520008 */  swc1  $f18, 8($v0)
/* 1563F0 801B0380 8CAF0000 */  lw    $t7, ($a1)
/* 1563F4 801B0384 000FC080 */  sll   $t8, $t7, 2
/* 1563F8 801B0388 00F8C821 */  addu  $t9, $a3, $t8
/* 1563FC 801B038C C7240000 */  lwc1  $f4, ($t9)
/* 156400 801B0390 46062202 */  mul.s $f8, $f4, $f6
/* 156404 801B0394 1420FFDE */  bnez  $at, .L801B0310_ovl7
/* 156408 801B0398 E448000C */   swc1  $f8, 0xc($v0)
/* 15640C 801B039C 0C068DB3 */  jal   func_801A36CC_ovl7
/* 156410 801B03A0 00002025 */   move  $a0, $zero
/* 156414 801B03A4 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 156418 801B03A8 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 15641C 801B03AC 3C07800F */  lui   $a3, %hi(D_800EA6E0) # $a3, 0x800f
/* 156420 801B03B0 24E7A6E0 */  addiu $a3, %lo(D_800EA6E0) # addiu $a3, $a3, -0x5920
/* 156424 801B03B4 8D4B0000 */  lw    $t3, ($t2)
/* 156428 801B03B8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 15642C 801B03BC 44815000 */  mtc1  $at, $f10
/* 156430 801B03C0 000B6080 */  sll   $t4, $t3, 2
/* 156434 801B03C4 00EC1821 */  addu  $v1, $a3, $t4
/* 156438 801B03C8 C4600000 */  lwc1  $f0, ($v1)
/* 15643C 801B03CC 3C01801D */  lui   $at, %hi(D_801CE278) # $at, 0x801d
/* 156440 801B03D0 460A003C */  c.lt.s $f0, $f10
/* 156444 801B03D4 00000000 */  nop   
/* 156448 801B03D8 45020005 */  bc1fl .L801B03F0_ovl7
/* 15644C 801B03DC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 156450 801B03E0 C430E278 */  lwc1  $f16, %lo(D_801CE278)($at)
/* 156454 801B03E4 46100480 */  add.s $f18, $f0, $f16
/* 156458 801B03E8 E4720000 */  swc1  $f18, ($v1)
/* 15645C 801B03EC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B03F0_ovl7:
/* 156460 801B03F0 27BD0020 */  addiu $sp, $sp, 0x20
/* 156464 801B03F4 03E00008 */  jr    $ra
/* 156468 801B03F8 00000000 */   nop   

.type func_801B0258_ovl7, @function
.size func_801B0258_ovl7, . - func_801B0258_ovl7

glabel func_801B03FC_ovl7
/* 15646C 801B03FC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 156470 801B0400 AFB10018 */  sw    $s1, 0x18($sp)
/* 156474 801B0404 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 156478 801B0408 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 15647C 801B040C 8E2E0000 */  lw    $t6, ($s1)
/* 156480 801B0410 AFBF001C */  sw    $ra, 0x1c($sp)
/* 156484 801B0414 AFB00014 */  sw    $s0, 0x14($sp)
/* 156488 801B0418 8DC40000 */  lw    $a0, ($t6)
/* 15648C 801B041C 3C10800E */  lui   $s0, 0x800e
/* 156490 801B0420 00047880 */  sll   $t7, $a0, 2
/* 156494 801B0424 020F8021 */  addu  $s0, $s0, $t7
/* 156498 801B0428 0C044554 */  jal   func_80111550
/* 15649C 801B042C 8E101B50 */   lw    $s0, 0x1b50($s0)
/* 1564A0 801B0430 8E380000 */  lw    $t8, ($s1)
/* 1564A4 801B0434 8E04008C */  lw    $a0, 0x8c($s0)
/* 1564A8 801B0438 0C044722 */  jal   func_80111C88
/* 1564AC 801B043C 8F050000 */   lw    $a1, ($t8)
/* 1564B0 801B0440 8E390000 */  lw    $t9, ($s1)
/* 1564B4 801B0444 8C430024 */  lw    $v1, 0x24($v0)
/* 1564B8 801B0448 3C01800F */  lui   $at, 0x800f
/* 1564BC 801B044C 8F280000 */  lw    $t0, ($t9)
/* 1564C0 801B0450 C4640018 */  lwc1  $f4, 0x18($v1)
/* 1564C4 801B0454 00402025 */  move  $a0, $v0
/* 1564C8 801B0458 00084880 */  sll   $t1, $t0, 2
/* 1564CC 801B045C 00290821 */  addu  $at, $at, $t1
/* 1564D0 801B0460 C426A6E0 */  lwc1  $f6, -0x5920($at)
/* 1564D4 801B0464 46062202 */  mul.s $f8, $f4, $f6
/* 1564D8 801B0468 0C0447B3 */  jal   func_80111ECC
/* 1564DC 801B046C E4680018 */   swc1  $f8, 0x18($v1)
/* 1564E0 801B0470 0C0442C0 */  jal   func_80110B00
/* 1564E4 801B0474 27A40028 */   addiu $a0, $sp, 0x28
/* 1564E8 801B0478 1040000B */  beqz  $v0, .L801B04A8_ovl7
/* 1564EC 801B047C 00000000 */   nop   
/* 1564F0 801B0480 8E2B0000 */  lw    $t3, ($s1)
/* 1564F4 801B0484 93AA002A */  lbu   $t2, 0x2a($sp)
/* 1564F8 801B0488 3C01800F */  lui   $at, 0x800f
/* 1564FC 801B048C 8D6C0000 */  lw    $t4, ($t3)
/* 156500 801B0490 93AE002B */  lbu   $t6, 0x2b($sp)
/* 156504 801B0494 000C6880 */  sll   $t5, $t4, 2
/* 156508 801B0498 002D0821 */  addu  $at, $at, $t5
/* 15650C 801B049C AC2A83E0 */  sw    $t2, -0x7c20($at)
/* 156510 801B04A0 10000024 */  b     .L801B0534_ovl7
/* 156514 801B04A4 A20E0043 */   sb    $t6, 0x43($s0)
.L801B04A8_ovl7:
/* 156518 801B04A8 0C0443F5 */  jal   func_80110FD4
/* 15651C 801B04AC 27A40028 */   addiu $a0, $sp, 0x28
/* 156520 801B04B0 1040000B */  beqz  $v0, .L801B04E0_ovl7
/* 156524 801B04B4 00000000 */   nop   
/* 156528 801B04B8 8E380000 */  lw    $t8, ($s1)
/* 15652C 801B04BC 93AF002A */  lbu   $t7, 0x2a($sp)
/* 156530 801B04C0 3C01800F */  lui   $at, 0x800f
/* 156534 801B04C4 8F190000 */  lw    $t9, ($t8)
/* 156538 801B04C8 93A9002B */  lbu   $t1, 0x2b($sp)
/* 15653C 801B04CC 00194080 */  sll   $t0, $t9, 2
/* 156540 801B04D0 00280821 */  addu  $at, $at, $t0
/* 156544 801B04D4 AC2F83E0 */  sw    $t7, -0x7c20($at)
/* 156548 801B04D8 10000016 */  b     .L801B0534_ovl7
/* 15654C 801B04DC A2090043 */   sb    $t1, 0x43($s0)
.L801B04E0_ovl7:
/* 156550 801B04E0 0C044054 */  jal   func_80110150
/* 156554 801B04E4 27A40028 */   addiu $a0, $sp, 0x28
/* 156558 801B04E8 5040000C */  beql  $v0, $zero, .L801B051C_ovl7
/* 15655C 801B04EC 8E380000 */   lw    $t8, ($s1)
/* 156560 801B04F0 8E2C0000 */  lw    $t4, ($s1)
/* 156564 801B04F4 93AB002A */  lbu   $t3, 0x2a($sp)
/* 156568 801B04F8 3C01800F */  lui   $at, 0x800f
/* 15656C 801B04FC 8D8A0000 */  lw    $t2, ($t4)
/* 156570 801B0500 93AE002B */  lbu   $t6, 0x2b($sp)
/* 156574 801B0504 000A6880 */  sll   $t5, $t2, 2
/* 156578 801B0508 002D0821 */  addu  $at, $at, $t5
/* 15657C 801B050C AC2B83E0 */  sw    $t3, -0x7c20($at)
/* 156580 801B0510 10000008 */  b     .L801B0534_ovl7
/* 156584 801B0514 A20E0043 */   sb    $t6, 0x43($s0)
/* 156588 801B0518 8E380000 */  lw    $t8, ($s1)
.L801B051C_ovl7:
/* 15658C 801B051C 3C01800F */  lui   $at, 0x800f
/* 156590 801B0520 8F190000 */  lw    $t9, ($t8)
/* 156594 801B0524 00197880 */  sll   $t7, $t9, 2
/* 156598 801B0528 002F0821 */  addu  $at, $at, $t7
/* 15659C 801B052C AC2083E0 */  sw    $zero, -0x7c20($at)
/* 1565A0 801B0530 A2000043 */  sb    $zero, 0x43($s0)
.L801B0534_ovl7:
/* 1565A4 801B0534 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1565A8 801B0538 8FB00014 */  lw    $s0, 0x14($sp)
/* 1565AC 801B053C 8FB10018 */  lw    $s1, 0x18($sp)
/* 1565B0 801B0540 03E00008 */  jr    $ra
/* 1565B4 801B0544 27BD0050 */   addiu $sp, $sp, 0x50

.type func_801B03FC_ovl7, @function
.size func_801B03FC_ovl7, . - func_801B03FC_ovl7

glabel func_801B0548_ovl7
/* 1565B8 801B0548 00000000 */  nop   
/* 1565BC 801B054C 00000000 */  nop   

.type func_801B0548_ovl7, @function
.size func_801B0548_ovl7, . - func_801B0548_ovl7
