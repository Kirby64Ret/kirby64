glabel func_8015405C
/* 1383EC 8015405C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1383F0 80154060 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1383F4 80154064 0C054FCB */  jal   func_80153F2C_ovl6
/* 1383F8 80154068 00000000 */   nop   
/* 1383FC 8015406C 904E0013 */  lbu   $t6, 0x13($v0)
/* 138400 80154070 35CF0002 */  ori   $t7, $t6, 2
/* 138404 80154074 A04F0013 */  sb    $t7, 0x13($v0)
/* 138408 80154078 8FBF0014 */  lw    $ra, 0x14($sp)
/* 13840C 8015407C 27BD0018 */  addiu $sp, $sp, 0x18
/* 138410 80154080 03E00008 */  jr    $ra
/* 138414 80154084 00000000 */   nop   
.type func_8015405C, @function
.size func_8015405C, . - func_8015405C
