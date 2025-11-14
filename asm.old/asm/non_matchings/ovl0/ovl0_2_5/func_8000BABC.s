glabel func_8000BABC
/* 00C6BC 8000BABC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00C6C0 8000BAC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00C6C4 8000BAC4 0C002757 */  jal   func_80009D5C
/* 00C6C8 8000BAC8 00000000 */   nop   
/* 00C6CC 8000BACC AFA2001C */  sw    $v0, 0x1c($sp)
/* 00C6D0 8000BAD0 0C002E42 */  jal   func_8000B908
/* 00C6D4 8000BAD4 00402025 */   move  $a0, $v0
/* 00C6D8 8000BAD8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00C6DC 8000BADC 8FA2001C */  lw    $v0, 0x1c($sp)
/* 00C6E0 8000BAE0 27BD0020 */  addiu $sp, $sp, 0x20
/* 00C6E4 8000BAE4 03E00008 */  jr    $ra
/* 00C6E8 8000BAE8 00000000 */   nop   
.type func_8000BABC, @function
.size func_8000BABC, . - func_8000BABC
