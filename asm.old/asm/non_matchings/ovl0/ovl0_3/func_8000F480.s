glabel func_8000F480
/* 010080 8000F480 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 010084 8000F484 AFBF0014 */  sw    $ra, 0x14($sp)
/* 010088 8000F488 0C00270E */  jal   func_80009C38
/* 01008C 8000F48C 00000000 */   nop   
/* 010090 8000F490 AFA2001C */  sw    $v0, 0x1c($sp)
/* 010094 8000F494 0C003D12 */  jal   func_8000F448
/* 010098 8000F498 00402025 */   move  $a0, $v0
/* 01009C 8000F49C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0100A0 8000F4A0 8FA2001C */  lw    $v0, 0x1c($sp)
/* 0100A4 8000F4A4 27BD0020 */  addiu $sp, $sp, 0x20
/* 0100A8 8000F4A8 03E00008 */  jr    $ra
/* 0100AC 8000F4AC 00000000 */   nop   
.type func_8000F480, @function
.size func_8000F480, . - func_8000F480
