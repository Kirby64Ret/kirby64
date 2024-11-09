glabel func_800A8564
/* 0507B4 800A8564 2482FFF0 */  addiu $v0, $a0, -0x10
/* 0507B8 800A8568 8C4E000C */  lw    $t6, 0xc($v0)
/* 0507BC 800A856C 01C57821 */  addu  $t7, $t6, $a1
/* 0507C0 800A8570 03E00008 */  jr    $ra
/* 0507C4 800A8574 AC4F000C */   sw    $t7, 0xc($v0)
.type func_800A8564, @function
.size func_800A8564, . - func_800A8564
