glabel func_8000B9CC
/* 00C5CC 8000B9CC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00C5D0 8000B9D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00C5D4 8000B9D4 0C00270E */  jal   func_80009C38
/* 00C5D8 8000B9D8 00000000 */   nop   
/* 00C5DC 8000B9DC AFA2001C */  sw    $v0, 0x1c($sp)
/* 00C5E0 8000B9E0 0C002E30 */  jal   func_8000B8C0
/* 00C5E4 8000B9E4 00402025 */   move  $a0, $v0
/* 00C5E8 8000B9E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00C5EC 8000B9EC 8FA2001C */  lw    $v0, 0x1c($sp)
/* 00C5F0 8000B9F0 27BD0020 */  addiu $sp, $sp, 0x20
/* 00C5F4 8000B9F4 03E00008 */  jr    $ra
/* 00C5F8 8000B9F8 00000000 */   nop   
.type func_8000B9CC, @function
.size func_8000B9CC, . - func_8000B9CC
