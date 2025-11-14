glabel func_801DCA84_ovl16
/* 212D34 801DCA84 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 212D38 801DCA88 AFBF0014 */  sw    $ra, 0x14($sp)
/* 212D3C 801DCA8C 0C066ED6 */  jal   func_8019BB58_ovl16
/* 212D40 801DCA90 AFA40018 */   sw    $a0, 0x18($sp)
/* 212D44 801DCA94 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 212D48 801DCA98 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 212D4C 801DCA9C 24040079 */  li    $a0, 121
/* 212D50 801DCAA0 0C02C67D */  jal   func_800B19F4
/* 212D54 801DCAA4 8DC50000 */   lw    $a1, ($t6)
/* 212D58 801DCAA8 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 212D5C 801DCAAC 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 212D60 801DCAB0 0C02BEED */  jal   func_800AFBB4
/* 212D64 801DCAB4 00002025 */   move  $a0, $zero
/* 212D68 801DCAB8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 212D6C 801DCABC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 212D70 801DCAC0 3C0F800B */  lui   $t7, %hi(D_800B4924) # $t7, 0x800b
/* 212D74 801DCAC4 3C01800E */ lui $at, %hi(D_800DEF90)
/* 212D78 801DCAC8 8C780000 */  lw    $t8, ($v1)
/* 212D7C 801DCACC 25EF4924 */  addiu $t7, %lo(D_800B4924) # addiu $t7, $t7, 0x4924
/* 212D80 801DCAD0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray5)
/* 212D84 801DCAD4 0018C880 */  sll   $t9, $t8, 2
/* 212D88 801DCAD8 00390821 */  addu  $at, $at, $t9
/* 212D8C 801DCADC AC2FEF90 */ sw $t7, %lo(D_800DEF90)($at)
/* 212D90 801DCAE0 8C680000 */  lw    $t0, ($v1)
/* 212D94 801DCAE4 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 212D98 801DCAE8 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 212D9C 801DCAEC 00084880 */  sll   $t1, $t0, 2
/* 212DA0 801DCAF0 00892021 */  addu  $a0, $a0, $t1
/* 212DA4 801DCAF4 0C02C7DA */  jal   func_800B1F68
/* 212DA8 801DCAF8 8C84EC10 */ lw $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 212DAC 801DCAFC 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 212DB0 801DCB00 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 212DB4 801DCB04 3C01800E */ lui $at, %hi(D_800DF150)
/* 212DB8 801DCB08 8D4B0000 */  lw    $t3, ($t2)
/* 212DBC 801DCB0C 000B6080 */  sll   $t4, $t3, 2
/* 212DC0 801DCB10 002C0821 */  addu  $at, $at, $t4
/* 212DC4 801DCB14 0C02CCFD */  jal   func_800B33F4
/* 212DC8 801DCB18 AC20F150 */ sw $zero, %lo(D_800DF150)($at)
/* 212DCC 801DCB1C 3C01800D */  lui   $at, %hi(D_800D70D4) # $at, 0x800d
/* 212DD0 801DCB20 AC2070D4 */  sw    $zero, %lo(D_800D70D4)($at)
/* 212DD4 801DCB24 3C01801F */  lui   $at, %hi(D_801EFDFC_ovl16) # $at, 0x801f
/* 212DD8 801DCB28 C424FDFC */  lwc1  $f4, %lo(D_801EFDFC_ovl16)($at)
/* 212DDC 801DCB2C 3C02800D */  lui   $v0, %hi(D_800D70D8) # $v0, 0x800d
/* 212DE0 801DCB30 44800000 */  mtc1  $zero, $f0
/* 212DE4 801DCB34 244270D8 */  addiu $v0, %lo(D_800D70D8) # addiu $v0, $v0, 0x70d8
/* 212DE8 801DCB38 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 212DEC 801DCB3C 44813000 */  mtc1  $at, $f6
/* 212DF0 801DCB40 24040005 */  li    $a0, 5
/* 212DF4 801DCB44 24050001 */  li    $a1, 1
/* 212DF8 801DCB48 E444003C */  swc1  $f4, 0x3c($v0)
/* 212DFC 801DCB4C E4400030 */  swc1  $f0, 0x30($v0)
/* 212E00 801DCB50 E4400038 */  swc1  $f0, 0x38($v0)
/* 212E04 801DCB54 0C067829 */  jal   func_8019E0A4_ovl16
/* 212E08 801DCB58 E4460034 */   swc1  $f6, 0x34($v0)
/* 212E0C 801DCB5C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 212E10 801DCB60 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 212E14 801DCB64 3C06800F */  lui   $a2, %hi(D_800EBBE0) # $a2, 0x800f
/* 212E18 801DCB68 24C6BBE0 */  addiu $a2, %lo(D_800EBBE0) # addiu $a2, $a2, -0x4420
/* 212E1C 801DCB6C 8C6D0000 */  lw    $t5, ($v1)
/* 212E20 801DCB70 2401FFFF */  li    $at, -1
/* 212E24 801DCB74 000D7080 */  sll   $t6, $t5, 2
/* 212E28 801DCB78 00CEC021 */  addu  $t8, $a2, $t6
/* 212E2C 801DCB7C AF020000 */  sw    $v0, ($t8)
/* 212E30 801DCB80 8C640000 */  lw    $a0, ($v1)
/* 212E34 801DCB84 3C02800E */  lui   $v0, %hi(D_800E17D0) # $v0, 0x800e
/* 212E38 801DCB88 244217D0 */  addiu $v0, %lo(D_800E17D0) # addiu $v0, $v0, 0x17d0
/* 212E3C 801DCB8C 00042080 */  sll   $a0, $a0, 2
/* 212E40 801DCB90 00C47821 */  addu  $t7, $a2, $a0
/* 212E44 801DCB94 8DE50000 */  lw    $a1, ($t7)
/* 212E48 801DCB98 0044C821 */  addu  $t9, $v0, $a0
/* 212E4C 801DCB9C 10A10010 */  beq   $a1, $at, .L801DCBE0_ovl16
/* 212E50 801DCBA0 00000000 */   nop   
/* 212E54 801DCBA4 C7280000 */  lwc1  $f8, ($t9)
/* 212E58 801DCBA8 00054080 */  sll   $t0, $a1, 2
/* 212E5C 801DCBAC 00484821 */  addu  $t1, $v0, $t0
/* 212E60 801DCBB0 E5280000 */  swc1  $f8, ($t1)
/* 212E64 801DCBB4 8C640000 */  lw    $a0, ($v1)
/* 212E68 801DCBB8 3C07800F */  lui   $a3, %hi(D_800E9020) # $a3, 0x800f
/* 212E6C 801DCBBC 24E79020 */  addiu $a3, %lo(D_800E9020) # addiu $a3, $a3, -0x6fe0
/* 212E70 801DCBC0 00042080 */  sll   $a0, $a0, 2
/* 212E74 801DCBC4 00C45821 */  addu  $t3, $a2, $a0
/* 212E78 801DCBC8 8D6C0000 */  lw    $t4, ($t3)
/* 212E7C 801DCBCC 00E45021 */  addu  $t2, $a3, $a0
/* 212E80 801DCBD0 C54A0000 */  lwc1  $f10, ($t2)
/* 212E84 801DCBD4 000C6880 */  sll   $t5, $t4, 2
/* 212E88 801DCBD8 00ED7021 */  addu  $t6, $a3, $t5
/* 212E8C 801DCBDC E5CA0000 */  swc1  $f10, ($t6)
.L801DCBE0_ovl16:
/* 212E90 801DCBE0 0C02BE85 */  jal   func_800AFA14
/* 212E94 801DCBE4 00000000 */   nop   
/* 212E98 801DCBE8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 212E9C 801DCBEC 27BD0018 */  addiu $sp, $sp, 0x18
/* 212EA0 801DCBF0 03E00008 */  jr    $ra
/* 212EA4 801DCBF4 00000000 */   nop   
.type func_801DCA84_ovl16, @function
.size func_801DCA84_ovl16, . - func_801DCA84_ovl16
