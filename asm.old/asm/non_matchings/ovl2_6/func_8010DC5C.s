glabel func_8010DC5C
/* 0966CC 8010DC5C 3C048013 */  lui   $a0, %hi(D_8012BD4C) # $a0, 0x8013
/* 0966D0 8010DC60 2484BD4C */  addiu $a0, %lo(D_8012BD4C) # addiu $a0, $a0, -0x42b4
/* 0966D4 8010DC64 8C830000 */  lw    $v1, ($a0)
/* 0966D8 8010DC68 54600004 */  bnezl $v1, .L8010DC7C_ovl2
/* 0966DC 8010DC6C 8C6E0000 */   lw    $t6, ($v1)
/* 0966E0 8010DC70 03E00008 */  jr    $ra
/* 0966E4 8010DC74 00001025 */   move  $v0, $zero
.type func_8010DC5C, @function

/* 0966E8 8010DC78 8C6E0000 */  lw    $t6, ($v1)
.L8010DC7C_ovl2:
/* 0966EC 8010DC7C 00601025 */  move  $v0, $v1
/* 0966F0 8010DC80 AC8E0000 */  sw    $t6, ($a0)
/* 0966F4 8010DC84 03E00008 */  jr    $ra
/* 0966F8 8010DC88 00000000 */   nop   
.type func_8010DC5C, @function
.size func_8010DC5C, . - func_8010DC5C
