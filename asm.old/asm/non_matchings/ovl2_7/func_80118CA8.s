glabel func_80118CA8
/* 0A1718 80118CA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A171C 80118CAC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A1720 80118CB0 0C0462F2 */  jal   func_80118BC8
/* 0A1724 80118CB4 2405001E */   li    $a1, 30
/* 0A1728 80118CB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A172C 80118CBC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A1730 80118CC0 03E00008 */  jr    $ra
/* 0A1734 80118CC4 00000000 */   nop   
.type func_80118CA8, @function
.size func_80118CA8, . - func_80118CA8
