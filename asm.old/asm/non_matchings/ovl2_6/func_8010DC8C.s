glabel func_8010DC8C
/* 0966FC 8010DC8C 10800005 */  beqz  $a0, .L8010DCA4_ovl2
/* 096700 8010DC90 3C028013 */   lui   $v0, %hi(D_8012BD4C) # $v0, 0x8013
/* 096704 8010DC94 2442BD4C */  addiu $v0, %lo(D_8012BD4C) # addiu $v0, $v0, -0x42b4
/* 096708 8010DC98 8C4E0000 */  lw    $t6, ($v0)
/* 09670C 8010DC9C AC8E0000 */  sw    $t6, ($a0)
/* 096710 8010DCA0 AC440000 */  sw    $a0, ($v0)
.L8010DCA4_ovl2:
/* 096714 8010DCA4 03E00008 */  jr    $ra
/* 096718 8010DCA8 00000000 */   nop   
.type func_8010DC8C, @function
.size func_8010DC8C, . - func_8010DC8C
