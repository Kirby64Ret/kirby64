glabel func_800AA154
/* 0523A4 800AA154 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0523A8 800AA158 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0523AC 800AA15C 0C02A831 */  jal   func_800AA0C4
/* 0523B0 800AA160 24050000 */   li    $a1, 0
/* 0523B4 800AA164 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0523B8 800AA168 27BD0018 */  addiu $sp, $sp, 0x18
/* 0523BC 800AA16C 03E00008 */  jr    $ra
/* 0523C0 800AA170 00000000 */   nop   
.type func_800AA154, @function
.size func_800AA154, . - func_800AA154
