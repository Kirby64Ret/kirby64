glabel func_801DCBF8_ovl16
/* 212EA8 801DCBF8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 212EAC 801DCBFC 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 212EB0 801DCC00 8C6E0000 */  lw    $t6, ($v1)
/* 212EB4 801DCC04 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 212EB8 801DCC08 AFBF0014 */  sw    $ra, 0x14($sp)
/* 212EBC 801DCC0C AFA40018 */  sw    $a0, 0x18($sp)
/* 212EC0 801DCC10 8DCF0000 */  lw    $t7, ($t6)
/* 212EC4 801DCC14 3C02800E */ lui $v0, %hi(D_800E1B50)
/* 212EC8 801DCC18 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 212ECC 801DCC1C 000FC080 */  sll   $t8, $t7, 2
/* 212ED0 801DCC20 00581021 */  addu  $v0, $v0, $t8
/* 212ED4 801DCC24 8C421B50 */ lw $v0, %lo(D_800E1B50)($v0)
/* 212ED8 801DCC28 44812000 */  mtc1  $at, $f4
/* 212EDC 801DCC2C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 212EE0 801DCC30 8C590080 */  lw    $t9, 0x80($v0)
/* 212EE4 801DCC34 3C08800B */  lui   $t0, %hi(D_800B7560) # $t0, 0x800b
/* 212EE8 801DCC38 25087560 */  addiu $t0, %lo(D_800B7560) # addiu $t0, $t0, 0x7560
/* 212EEC 801DCC3C E7240010 */  swc1  $f4, 0x10($t9)
/* 212EF0 801DCC40 8C690000 */  lw    $t1, ($v1)
/* 212EF4 801DCC44 8D2A0000 */  lw    $t2, ($t1)
/* 212EF8 801DCC48 000A5880 */  sll   $t3, $t2, 2
/* 212EFC 801DCC4C 002B0821 */  addu  $at, $at, $t3
/* 212F00 801DCC50 0C02CCFD */  jal   func_800B33F4
/* 212F04 801DCC54 AC28EF90 */ sw $t0, %lo(D_800DEF90)($at)
/* 212F08 801DCC58 3C02800D */  lui   $v0, %hi(D_800D7098) # $v0, 0x800d
/* 212F0C 801DCC5C 24427098 */  addiu $v0, %lo(D_800D7098) # addiu $v0, $v0, 0x7098
/* 212F10 801DCC60 2403FFFF */  li    $v1, -1
/* 212F14 801DCC64 240D0007 */  li    $t5, 7
/* 212F18 801DCC68 AC430008 */  sw    $v1, 8($v0)
/* 212F1C 801DCC6C AC430004 */  sw    $v1, 4($v0)
/* 212F20 801DCC70 AC4D000C */  sw    $t5, 0xc($v0)
/* 212F24 801DCC74 AC400018 */  sw    $zero, 0x18($v0)
/* 212F28 801DCC78 3C01800D */  lui   $at, %hi(D_800D7154) # $at, 0x800d
/* 212F2C 801DCC7C 44806000 */  mtc1  $zero, $f12
/* 212F30 801DCC80 0C02BB30 */  jal   func_800AECC0
/* 212F34 801DCC84 AC237154 */   sw    $v1, %lo(D_800D7154)($at)
/* 212F38 801DCC88 44806000 */  mtc1  $zero, $f12
/* 212F3C 801DCC8C 0C02BB48 */  jal   func_800AED20
/* 212F40 801DCC90 00000000 */   nop   
/* 212F44 801DCC94 3C040001 */  lui   $a0, (0x00010080 >> 16) # lui $a0, 1
/* 212F48 801DCC98 34840080 */  ori   $a0, (0x00010080 & 0xFFFF) # ori $a0, $a0, 0x80
/* 212F4C 801DCC9C 24050023 */  li    $a1, 35
/* 212F50 801DCCA0 0C02A619 */  jal   func_800A9864
/* 212F54 801DCCA4 24060010 */   li    $a2, 16
/* 212F58 801DCCA8 3C040001 */  lui   $a0, (0x000104DC >> 16) # lui $a0, 1
/* 212F5C 801DCCAC 0C02A806 */  jal   func_800AA018
/* 212F60 801DCCB0 348404DC */   ori   $a0, (0x000104DC & 0xFFFF) # ori $a0, $a0, 0x4dc
/* 212F64 801DCCB4 3C01801F */  lui   $at, %hi(D_801F0140) # $at, 0x801f
/* 212F68 801DCCB8 AC200140 */  sw    $zero, %lo(D_801F0140)($at)
/* 212F6C 801DCCBC 3C01801F */  lui   $at, %hi(D_801F0120) # $at, 0x801f
/* 212F70 801DCCC0 240E0003 */  li    $t6, 3
/* 212F74 801DCCC4 AC2E0120 */  sw    $t6, %lo(D_801F0120)($at)
/* 212F78 801DCCC8 3C01801F */  lui   $at, %hi(D_801F0144) # $at, 0x801f
/* 212F7C 801DCCCC 240F0001 */  li    $t7, 1
/* 212F80 801DCCD0 AC2F0144 */  sw    $t7, %lo(D_801F0144)($at)
/* 212F84 801DCCD4 3C01801F */  lui   $at, %hi(D_801F0124) # $at, 0x801f
/* 212F88 801DCCD8 24180003 */  li    $t8, 3
/* 212F8C 801DCCDC AC380124 */  sw    $t8, %lo(D_801F0124)($at)
/* 212F90 801DCCE0 3C01801F */  lui   $at, %hi(D_801F0148) # $at, 0x801f
/* 212F94 801DCCE4 24190002 */  li    $t9, 2
/* 212F98 801DCCE8 AC390148 */  sw    $t9, %lo(D_801F0148)($at)
/* 212F9C 801DCCEC 3C01801F */  lui   $at, %hi(D_801F0128) # $at, 0x801f
/* 212FA0 801DCCF0 24090003 */  li    $t1, 3
/* 212FA4 801DCCF4 24030003 */  li    $v1, 3
/* 212FA8 801DCCF8 3C0A801F */  lui   $t2, %hi(D_801F0140) # $t2, 0x801f
/* 212FAC 801DCCFC AC290128 */  sw    $t1, %lo(D_801F0128)($at)
/* 212FB0 801DCD00 254A0140 */  addiu $t2, %lo(D_801F0140) # addiu $t2, $t2, 0x140
/* 212FB4 801DCD04 00032080 */  sll   $a0, $v1, 2
/* 212FB8 801DCD08 008A2821 */  addu  $a1, $a0, $t2
/* 212FBC 801DCD0C 24010006 */  li    $at, 6
/* 212FC0 801DCD10 14610008 */  bne   $v1, $at, .L801DCD34_ovl16
/* 212FC4 801DCD14 ACA30000 */   sw    $v1, ($a1)
/* 212FC8 801DCD18 3C08801F */  lui   $t0, %hi(D_801F0120) # $t0, 0x801f
/* 212FCC 801DCD1C 25080120 */  addiu $t0, %lo(D_801F0120) # addiu $t0, $t0, 0x120
/* 212FD0 801DCD20 00881021 */  addu  $v0, $a0, $t0
/* 212FD4 801DCD24 24060002 */  li    $a2, 2
/* 212FD8 801DCD28 AC460000 */  sw    $a2, ($v0)
/* 212FDC 801DCD2C 10000007 */  b     .L801DCD4C_ovl16
/* 212FE0 801DCD30 24070003 */   li    $a3, 3
.L801DCD34_ovl16:
/* 212FE4 801DCD34 3C0B801F */  lui   $t3, %hi(D_801F0120) # $t3, 0x801f
/* 212FE8 801DCD38 256B0120 */  addiu $t3, %lo(D_801F0120) # addiu $t3, $t3, 0x120
/* 212FEC 801DCD3C 008B1021 */  addu  $v0, $a0, $t3
/* 212FF0 801DCD40 24070003 */  li    $a3, 3
/* 212FF4 801DCD44 AC470000 */  sw    $a3, ($v0)
/* 212FF8 801DCD48 24060002 */  li    $a2, 2
.L801DCD4C_ovl16:
/* 212FFC 801DCD4C 246C0001 */  addiu $t4, $v1, 1
/* 213000 801DCD50 24010005 */  li    $at, 5
/* 213004 801DCD54 14610003 */  bne   $v1, $at, .L801DCD64_ovl16
/* 213008 801DCD58 ACAC0004 */   sw    $t4, 4($a1)
/* 21300C 801DCD5C 10000002 */  b     .L801DCD68_ovl16
/* 213010 801DCD60 AC460004 */   sw    $a2, 4($v0)
.L801DCD64_ovl16:
/* 213014 801DCD64 AC470004 */  sw    $a3, 4($v0)
.L801DCD68_ovl16:
/* 213018 801DCD68 24640002 */  addiu $a0, $v1, 2
/* 21301C 801DCD6C 24010004 */  li    $at, 4
/* 213020 801DCD70 14610003 */  bne   $v1, $at, .L801DCD80_ovl16
/* 213024 801DCD74 ACA40008 */   sw    $a0, 8($a1)
/* 213028 801DCD78 10000002 */  b     .L801DCD84_ovl16
/* 21302C 801DCD7C AC460008 */   sw    $a2, 8($v0)
.L801DCD80_ovl16:
/* 213030 801DCD80 AC470008 */  sw    $a3, 8($v0)
.L801DCD84_ovl16:
/* 213034 801DCD84 246D0003 */  addiu $t5, $v1, 3
/* 213038 801DCD88 24010005 */  li    $at, 5
/* 21303C 801DCD8C 14810003 */  bne   $a0, $at, .L801DCD9C_ovl16
/* 213040 801DCD90 ACAD000C */   sw    $t5, 0xc($a1)
/* 213044 801DCD94 10000002 */  b     .L801DCDA0_ovl16
/* 213048 801DCD98 AC46000C */   sw    $a2, 0xc($v0)
.L801DCD9C_ovl16:
/* 21304C 801DCD9C AC47000C */  sw    $a3, 0xc($v0)
.L801DCDA0_ovl16:
/* 213050 801DCDA0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 213054 801DCDA4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 213058 801DCDA8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 21305C 801DCDAC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 213060 801DCDB0 8DCF0000 */  lw    $t7, ($t6)
/* 213064 801DCDB4 27BD0018 */  addiu $sp, $sp, 0x18
/* 213068 801DCDB8 000FC080 */  sll   $t8, $t7, 2
/* 21306C 801DCDBC 00380821 */  addu  $at, $at, $t8
/* 213070 801DCDC0 03E00008 */  jr    $ra
/* 213074 801DCDC4 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
.type func_801DCBF8_ovl16, @function
.size func_801DCBF8_ovl16, . - func_801DCBF8_ovl16