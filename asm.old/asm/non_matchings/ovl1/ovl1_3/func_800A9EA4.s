glabel func_800A9EA4
/* 0520F4 800A9EA4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0520F8 800A9EA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0520FC 800A9EAC 0C02A779 */  jal   func_800A9DE4
/* 052100 800A9EB0 24050000 */   li    $a1, 0
/* 052104 800A9EB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 052108 800A9EB8 27BD0018 */  addiu $sp, $sp, 0x18
/* 05210C 800A9EBC 03E00008 */  jr    $ra
/* 052110 800A9EC0 00000000 */   nop   
.type func_800A9EA4, @function
.size func_800A9EA4, . - func_800A9EA4
