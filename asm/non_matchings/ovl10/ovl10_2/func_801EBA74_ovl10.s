glabel func_801EBA74_ovl10
/* 1DC7E4 801EBA74 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1DC7E8 801EBA78 AFB10018 */  sw    $s1, 0x18($sp)
/* 1DC7EC 801EBA7C 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1DC7F0 801EBA80 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1DC7F4 801EBA84 8E250000 */  lw    $a1, ($s1)
/* 1DC7F8 801EBA88 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1DC7FC 801EBA8C AFB00014 */  sw    $s0, 0x14($sp)
/* 1DC800 801EBA90 AFA40020 */  sw    $a0, 0x20($sp)
/* 1DC804 801EBA94 8CA30000 */  lw    $v1, ($a1)
/* 1DC808 801EBA98 3C0E801F */  lui   $t6, %hi(D_801EBC28) # $t6, 0x801f
/* 1DC80C 801EBA9C 3C01800E */ lui $at, %hi(D_800DF150)
/* 1DC810 801EBAA0 00031880 */  sll   $v1, $v1, 2
/* 1DC814 801EBAA4 00230821 */  addu  $at, $at, $v1
/* 1DC818 801EBAA8 25CEBC28 */  addiu $t6, %lo(D_801EBC28) # addiu $t6, $t6, -0x43d8
/* 1DC81C 801EBAAC AC2EF150 */ sw $t6, %lo(D_800DF150)($at)
/* 1DC820 801EBAB0 8CB80000 */  lw    $t8, ($a1)
/* 1DC824 801EBAB4 3C10800E */ lui $s0, %hi(D_800E1B50)
/* 1DC828 801EBAB8 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DC82C 801EBABC 3C0F800B */  lui   $t7, %hi(D_800B68AC) # $t7, 0x800b
/* 1DC830 801EBAC0 0018C880 */  sll   $t9, $t8, 2
/* 1DC834 801EBAC4 02038021 */  addu  $s0, $s0, $v1
/* 1DC838 801EBAC8 00390821 */  addu  $at, $at, $t9
/* 1DC83C 801EBACC 25EF68AC */  addiu $t7, %lo(D_800B68AC) # addiu $t7, $t7, 0x68ac
/* 1DC840 801EBAD0 8E101B50 */ lw $s0, %lo(D_800E1B50)($s0)
/* 1DC844 801EBAD4 AC2FEF90 */ sw $t7, %lo(D_800DEF90)($at)
/* 1DC848 801EBAD8 0C02BEED */  jal   func_800AFBB4_ovl10
/* 1DC84C 801EBADC 00002025 */   move  $a0, $zero
/* 1DC850 801EBAE0 0C03FC2A */  jal   func_800FF0A8_ovl10
/* 1DC854 801EBAE4 8E040080 */   lw    $a0, 0x80($s0)
/* 1DC858 801EBAE8 8E250000 */  lw    $a1, ($s1)
/* 1DC85C 801EBAEC 3C04800F */  lui   $a0, %hi(D_800E98E0) # $a0, 0x800f
/* 1DC860 801EBAF0 248498E0 */  addiu $a0, %lo(D_800E98E0) # addiu $a0, $a0, -0x6720
/* 1DC864 801EBAF4 8CA20000 */  lw    $v0, ($a1)
/* 1DC868 801EBAF8 3C01800D */ lui $at, %hi(D_800D7098)
/* 1DC86C 801EBAFC 00024080 */  sll   $t0, $v0, 2
/* 1DC870 801EBB00 00884821 */  addu  $t1, $a0, $t0
/* 1DC874 801EBB04 8D2A0000 */  lw    $t2, ($t1)
/* 1DC878 801EBB08 000A5880 */  sll   $t3, $t2, 2
/* 1DC87C 801EBB0C 002B0821 */  addu  $at, $at, $t3
/* 1DC880 801EBB10 AC227098 */ sw $v0, %lo(D_800D7098)($at)
/* 1DC884 801EBB14 8CA30000 */  lw    $v1, ($a1)
/* 1DC888 801EBB18 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1DC88C 801EBB1C 00031880 */  sll   $v1, $v1, 2
/* 1DC890 801EBB20 00836021 */  addu  $t4, $a0, $v1
/* 1DC894 801EBB24 8D8D0000 */  lw    $t5, ($t4)
/* 1DC898 801EBB28 51A00008 */  beql  $t5, $zero, .L801EBB4C_ovl10
/* 1DC89C 801EBB2C 44813000 */   mtc1  $at, $f6
/* 1DC8A0 801EBB30 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1DC8A4 801EBB34 44812000 */  mtc1  $at, $f4
/* 1DC8A8 801EBB38 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 1DC8AC 801EBB3C 00230821 */  addu  $at, $at, $v1
/* 1DC8B0 801EBB40 10000005 */  b     .L801EBB58_ovl10
/* 1DC8B4 801EBB44 E4246A10 */   swc1  $f4, 0x6a10($at)
/* 1DC8B8 801EBB48 44813000 */  mtc1  $at, $f6
.L801EBB4C_ovl10:
/* 1DC8BC 801EBB4C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DC8C0 801EBB50 00230821 */  addu  $at, $at, $v1
/* 1DC8C4 801EBB54 E4266A10 */ swc1 $f6, %lo(D_800E6A10)($at)
.L801EBB58_ovl10:
/* 1DC8C8 801EBB58 8CA30000 */  lw    $v1, ($a1)
/* 1DC8CC 801EBB5C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DC8D0 801EBB60 3C10800E */  lui   $s0, %hi(D_800E6310) # $s0, 0x800e
/* 1DC8D4 801EBB64 00031880 */  sll   $v1, $v1, 2
/* 1DC8D8 801EBB68 00230821 */  addu  $at, $at, $v1
/* 1DC8DC 801EBB6C C4286A10 */ lwc1 $f8, %lo(D_800E6A10)($at)
/* 1DC8E0 801EBB70 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1DC8E4 801EBB74 44815000 */  mtc1  $at, $f10
/* 1DC8E8 801EBB78 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1DC8EC 801EBB7C 00230821 */  addu  $at, $at, $v1
/* 1DC8F0 801EBB80 460A4402 */  mul.s $f16, $f8, $f10
/* 1DC8F4 801EBB84 26106310 */  addiu $s0, %lo(D_800E6310) # addiu $s0, $s0, 0x6310
/* 1DC8F8 801EBB88 E43064D0 */ swc1 $f16, %lo(D_800E64D0)($at)
/* 1DC8FC 801EBB8C 8CA20000 */  lw    $v0, ($a1)
/* 1DC900 801EBB90 00021880 */  sll   $v1, $v0, 2
/* 1DC904 801EBB94 02037021 */  addu  $t6, $s0, $v1
/* 1DC908 801EBB98 8DD80000 */  lw    $t8, ($t6)
/* 1DC90C 801EBB9C 1700000A */  bnez  $t8, .L801EBBC8_ovl10
/* 1DC910 801EBBA0 00000000 */   nop   
.L801EBBA4_ovl10:
/* 1DC914 801EBBA4 0C002DAF */  jal   func_8000B6BC
/* 1DC918 801EBBA8 24040001 */   li    $a0, 1
/* 1DC91C 801EBBAC 8E2F0000 */  lw    $t7, ($s1)
/* 1DC920 801EBBB0 8DE20000 */  lw    $v0, ($t7)
/* 1DC924 801EBBB4 00021880 */  sll   $v1, $v0, 2
/* 1DC928 801EBBB8 0203C821 */  addu  $t9, $s0, $v1
/* 1DC92C 801EBBBC 8F280000 */  lw    $t0, ($t9)
/* 1DC930 801EBBC0 1100FFF8 */  beqz  $t0, .L801EBBA4_ovl10
/* 1DC934 801EBBC4 00000000 */   nop   
.L801EBBC8_ovl10:
/* 1DC938 801EBBC8 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DC93C 801EBBCC 00230821 */  addu  $at, $at, $v1
/* 1DC940 801EBBD0 C4326A10 */ lwc1 $f18, %lo(D_800E6A10)($at)
/* 1DC944 801EBBD4 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 1DC948 801EBBD8 44813000 */  mtc1  $at, $f6
/* 1DC94C 801EBBDC 46009107 */  neg.s $f4, $f18
/* 1DC950 801EBBE0 00402025 */  move  $a0, $v0
/* 1DC954 801EBBE4 46062002 */  mul.s $f0, $f4, $f6
/* 1DC958 801EBBE8 44050000 */  mfc1  $a1, $f0
/* 1DC95C 801EBBEC 0C03E63B */  jal   func_800F98EC_ovl10
/* 1DC960 801EBBF0 00000000 */   nop   
/* 1DC964 801EBBF4 0C02CCFD */  jal   func_800B33F4_ovl10
/* 1DC968 801EBBF8 00000000 */   nop   
/* 1DC96C 801EBBFC 8E290000 */  lw    $t1, ($s1)
/* 1DC970 801EBC00 2404007D */  li    $a0, 125
/* 1DC974 801EBC04 0C02C67D */  jal   func_800B19F4_ovl10
/* 1DC978 801EBC08 8D250000 */   lw    $a1, ($t1)
/* 1DC97C 801EBC0C 0C02BE85 */  jal   func_800AFA14_ovl10
/* 1DC980 801EBC10 00000000 */   nop   
/* 1DC984 801EBC14 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1DC988 801EBC18 8FB00014 */  lw    $s0, 0x14($sp)
/* 1DC98C 801EBC1C 8FB10018 */  lw    $s1, 0x18($sp)
/* 1DC990 801EBC20 03E00008 */  jr    $ra
/* 1DC994 801EBC24 27BD0020 */   addiu $sp, $sp, 0x20
