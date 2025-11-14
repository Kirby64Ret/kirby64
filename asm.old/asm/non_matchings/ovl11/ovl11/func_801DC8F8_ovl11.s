glabel func_801DC8F8_ovl11
/* 1E71B8 801DC8F8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E71BC 801DC8FC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E71C0 801DC900 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E71C4 801DC904 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E71C8 801DC908 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E71CC 801DC90C 8C4F0000 */  lw    $t7, ($v0)
/* 1E71D0 801DC910 3C0E801E */  lui   $t6, %hi(D_801DCA48) # $t6, 0x801e
/* 1E71D4 801DC914 3C01800E */ lui $at, %hi(D_800DF150)
/* 1E71D8 801DC918 000FC080 */  sll   $t8, $t7, 2
/* 1E71DC 801DC91C 00380821 */  addu  $at, $at, $t8
/* 1E71E0 801DC920 25CECA48 */  addiu $t6, %lo(D_801DCA48) # addiu $t6, $t6, -0x35b8
/* 1E71E4 801DC924 AC2EF150 */ sw $t6, %lo(D_800DF150)($at)
/* 1E71E8 801DC928 8C590000 */  lw    $t9, ($v0)
/* 1E71EC 801DC92C 3C01800F */ lui $at, %hi(D_800E9FE0)
/* 1E71F0 801DC930 24090003 */  li    $t1, 3
/* 1E71F4 801DC934 00194080 */  sll   $t0, $t9, 2
/* 1E71F8 801DC938 00280821 */  addu  $at, $at, $t0
/* 1E71FC 801DC93C AC209FE0 */ sw $zero, %lo(D_800E9FE0)($at)
/* 1E7200 801DC940 8C4A0000 */  lw    $t2, ($v0)
/* 1E7204 801DC944 3C01800F */ lui $at, %hi(D_800EA360)
/* 1E7208 801DC948 3C05800D */  lui   $a1, %hi(D_800D70D8) # $a1, 0x800d
/* 1E720C 801DC94C 000A5880 */  sll   $t3, $t2, 2
/* 1E7210 801DC950 002B0821 */  addu  $at, $at, $t3
/* 1E7214 801DC954 AC29A360 */ sw $t1, %lo(D_800EA360)($at)
/* 1E7218 801DC958 8C4C0000 */  lw    $t4, ($v0)
/* 1E721C 801DC95C 3C01800F */ lui $at, %hi(D_800EA520)
/* 1E7220 801DC960 24A570D8 */  addiu $a1, %lo(D_800D70D8) # addiu $a1, $a1, 0x70d8
/* 1E7224 801DC964 000C6880 */  sll   $t5, $t4, 2
/* 1E7228 801DC968 002D0821 */  addu  $at, $at, $t5
/* 1E722C 801DC96C AC20A520 */ sw $zero, %lo(D_800EA520)($at)
/* 1E7230 801DC970 8C4F0000 */  lw    $t7, ($v0)
/* 1E7234 801DC974 3C01800F */ lui $at, %hi(D_800E9720)
/* 1E7238 801DC978 3C06800F */  lui   $a2, %hi(D_800E9560) # $a2, 0x800f
/* 1E723C 801DC97C 000F7080 */  sll   $t6, $t7, 2
/* 1E7240 801DC980 002E0821 */  addu  $at, $at, $t6
/* 1E7244 801DC984 AC209720 */ sw $zero, %lo(D_800E9720)($at)
/* 1E7248 801DC988 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 1E724C 801DC98C 44812000 */  mtc1  $at, $f4
/* 1E7250 801DC990 3C01801E */  lui   $at, %hi(D_801E0C20) # $at, 0x801e
/* 1E7254 801DC994 24C69560 */  addiu $a2, %lo(D_800E9560) # addiu $a2, $a2, -0x6aa0
/* 1E7258 801DC998 E4A40000 */  swc1  $f4, ($a1)
/* 1E725C 801DC99C 8C580000 */  lw    $t8, ($v0)
/* 1E7260 801DC9A0 C4260C20 */  lwc1  $f6, %lo(D_801E0C20)($at)
/* 1E7264 801DC9A4 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 1E7268 801DC9A8 0018C880 */  sll   $t9, $t8, 2
/* 1E726C 801DC9AC 00390821 */  addu  $at, $at, $t9
/* 1E7270 801DC9B0 E426A8A0 */ swc1 $f6, %lo(D_800EA8A0)($at)
/* 1E7274 801DC9B4 8C480000 */  lw    $t0, ($v0)
/* 1E7278 801DC9B8 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E727C 801DC9BC 2409FFFF */  li    $t1, -1
/* 1E7280 801DC9C0 00085080 */  sll   $t2, $t0, 2
/* 1E7284 801DC9C4 002A0821 */  addu  $at, $at, $t2
/* 1E7288 801DC9C8 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 1E728C 801DC9CC 8C4B0000 */  lw    $t3, ($v0)
/* 1E7290 801DC9D0 3C01800F */ lui $at, %hi(D_800E93A0)
/* 1E7294 801DC9D4 000B6080 */  sll   $t4, $t3, 2
/* 1E7298 801DC9D8 00CC6821 */  addu  $t5, $a2, $t4
/* 1E729C 801DC9DC ADA90000 */  sw    $t1, ($t5)
/* 1E72A0 801DC9E0 8C430000 */  lw    $v1, ($v0)
/* 1E72A4 801DC9E4 00031880 */  sll   $v1, $v1, 2
/* 1E72A8 801DC9E8 00C37821 */  addu  $t7, $a2, $v1
/* 1E72AC 801DC9EC 8DEE0000 */  lw    $t6, ($t7)
/* 1E72B0 801DC9F0 00230821 */  addu  $at, $at, $v1
/* 1E72B4 801DC9F4 AC2E93A0 */ sw $t6, %lo(D_800E93A0)($at)
/* 1E72B8 801DC9F8 C4A80000 */  lwc1  $f8, ($a1)
/* 1E72BC 801DC9FC 4600428D */  trunc.w.s $f10, $f8
/* 1E72C0 801DCA00 44045000 */  mfc1  $a0, $f10
/* 1E72C4 801DCA04 0C02F07F */  jal   func_800BC1FC
/* 1E72C8 801DCA08 00000000 */   nop   
/* 1E72CC 801DCA0C 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1E72D0 801DCA10 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1E72D4 801DCA14 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1E72D8 801DCA18 3C06801E */  lui   $a2, %hi(D_801E0B4C) # $a2, 0x801e
/* 1E72DC 801DCA1C 8F280000 */  lw    $t0, ($t9)
/* 1E72E0 801DCA20 24C60B4C */  addiu $a2, %lo(D_801E0B4C) # addiu $a2, $a2, 0xb4c
/* 1E72E4 801DCA24 24050009 */  li    $a1, 9
/* 1E72E8 801DCA28 00085080 */  sll   $t2, $t0, 2
/* 1E72EC 801DCA2C 008A2021 */  addu  $a0, $a0, $t2
/* 1E72F0 801DCA30 0C02911F */  jal   call_virtual_function
/* 1E72F4 801DCA34 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1E72F8 801DCA38 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E72FC 801DCA3C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E7300 801DCA40 03E00008 */  jr    $ra
/* 1E7304 801DCA44 00000000 */   nop   
.type func_801DC8F8_ovl11, @function
.size func_801DC8F8_ovl11, . - func_801DC8F8_ovl11
