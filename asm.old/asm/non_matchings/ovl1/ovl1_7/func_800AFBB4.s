glabel func_800AFBB4
/* 057E04 800AFBB4 14800005 */  bnez  $a0, .L800AFBCC_ovl1
/* 057E08 800AFBB8 3C088004 */   lui   $t0, %hi(D_8003DCA8) # $t0, 0x8004
/* 057E0C 800AFBBC 8CAE0044 */  lw    $t6, 0x44($a1)
/* 057E10 800AFBC0 35CF0001 */  ori   $t7, $t6, 1
/* 057E14 800AFBC4 10000005 */  b     .L800AFBDC_ovl1
/* 057E18 800AFBC8 ACAF0044 */   sw    $t7, 0x44($a1)
.L800AFBCC_ovl1:
/* 057E1C 800AFBCC 8CB80044 */  lw    $t8, 0x44($a1)
/* 057E20 800AFBD0 2401FFFE */  li    $at, -2
/* 057E24 800AFBD4 0301C824 */  and   $t9, $t8, $at
/* 057E28 800AFBD8 ACB90044 */  sw    $t9, 0x44($a1)
.L800AFBDC_ovl1:
/* 057E2C 800AFBDC 8D08DCA8 */  lw    $t0, %lo(D_8003DCA8)($t0)
/* 057E30 800AFBE0 2509FFFF */  addiu $t1, $t0, -1
/* 057E34 800AFBE4 03E00008 */  jr    $ra
/* 057E38 800AFBE8 A0A9000E */   sb    $t1, 0xe($a1)
.type func_800AFBB4, @function
.size func_800AFBB4, . - func_800AFBB4
