glabel func_80118C88
/* 0A16F8 80118C88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A16FC 80118C8C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A1700 80118C90 0C0462D8 */  jal   func_80118B60
/* 0A1704 80118C94 2405001E */   li    $a1, 30
/* 0A1708 80118C98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A170C 80118C9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A1710 80118CA0 03E00008 */  jr    $ra
/* 0A1714 80118CA4 00000000 */   nop   
.type func_80118C88, @function
.size func_80118C88, . - func_80118C88
