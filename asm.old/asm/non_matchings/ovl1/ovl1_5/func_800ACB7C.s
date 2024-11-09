glabel func_800ACB7C
/* 054DCC 800ACB7C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 054DD0 800ACB80 AFBF0014 */  sw    $ra, 0x14($sp)
/* 054DD4 800ACB84 8C820004 */  lw    $v0, 4($a0)
/* 054DD8 800ACB88 8C4E004C */  lw    $t6, 0x4c($v0)
/* 054DDC 800ACB8C 548E0004 */  bnel  $a0, $t6, .L800ACBA0_ovl1
/* 054DE0 800ACB90 8C82000C */   lw    $v0, 0xc($a0)
/* 054DE4 800ACB94 8C8F0008 */  lw    $t7, 8($a0)
/* 054DE8 800ACB98 AC4F004C */  sw    $t7, 0x4c($v0)
/* 054DEC 800ACB9C 8C82000C */  lw    $v0, 0xc($a0)
.L800ACBA0_ovl1:
/* 054DF0 800ACBA0 50400004 */  beql  $v0, $zero, .L800ACBB4_ovl1
/* 054DF4 800ACBA4 8C820008 */   lw    $v0, 8($a0)
/* 054DF8 800ACBA8 8C980008 */  lw    $t8, 8($a0)
/* 054DFC 800ACBAC AC580008 */  sw    $t8, 8($v0)
/* 054E00 800ACBB0 8C820008 */  lw    $v0, 8($a0)
.L800ACBB4_ovl1:
/* 054E04 800ACBB4 10400003 */  beqz  $v0, .L800ACBC4_ovl1
/* 054E08 800ACBB8 00000000 */   nop   
/* 054E0C 800ACBBC 8C99000C */  lw    $t9, 0xc($a0)
/* 054E10 800ACBC0 AC59000C */  sw    $t9, 0xc($v0)
.L800ACBC4_ovl1:
/* 054E14 800ACBC4 0C02B178 */  jal   func_800AC5E0
/* 054E18 800ACBC8 00000000 */   nop   
/* 054E1C 800ACBCC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 054E20 800ACBD0 27BD0018 */  addiu $sp, $sp, 0x18
/* 054E24 800ACBD4 03E00008 */  jr    $ra
/* 054E28 800ACBD8 00000000 */   nop   
.type func_800ACB7C, @function
.size func_800ACB7C, . - func_800ACB7C
