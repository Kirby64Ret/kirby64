glabel func_800AA864
/* 052AB4 800AA864 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 052AB8 800AA868 AFBF0014 */  sw    $ra, 0x14($sp)
/* 052ABC 800AA86C 00A03025 */  move  $a2, $a1
/* 052AC0 800AA870 0C02A9F4 */  jal   func_800AA7D0
/* 052AC4 800AA874 24050000 */   li    $a1, 0
/* 052AC8 800AA878 8FBF0014 */  lw    $ra, 0x14($sp)
/* 052ACC 800AA87C 27BD0018 */  addiu $sp, $sp, 0x18
/* 052AD0 800AA880 03E00008 */  jr    $ra
/* 052AD4 800AA884 00000000 */   nop   
.type func_800AA864, @function
.size func_800AA864, . - func_800AA864
