glabel func_801AC33C_ovl7
/* 1523AC 801AC33C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1523B0 801AC340 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1523B4 801AC344 0C06B07D */  jal   func_801AC1F4_ovl7
/* 1523B8 801AC348 AFA40018 */   sw    $a0, 0x18($sp)
/* 1523BC 801AC34C 0C06B0B6 */  jal   func_801AC2D8_ovl7
/* 1523C0 801AC350 8FA40018 */   lw    $a0, 0x18($sp)
/* 1523C4 801AC354 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1523C8 801AC358 27BD0018 */  addiu $sp, $sp, 0x18
/* 1523CC 801AC35C 03E00008 */  jr    $ra
/* 1523D0 801AC360 00000000 */   nop   
.type func_801AC33C_ovl7, @function
.size func_801AC33C_ovl7, . - func_801AC33C_ovl7
