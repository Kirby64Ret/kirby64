glabel func_8000F4B0
/* 0100B0 8000F4B0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0100B4 8000F4B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0100B8 8000F4B8 0C00273A */  jal   func_80009CE8
/* 0100BC 8000F4BC 00000000 */   nop   
/* 0100C0 8000F4C0 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0100C4 8000F4C4 0C003D12 */  jal   func_8000F448
/* 0100C8 8000F4C8 00402025 */   move  $a0, $v0
/* 0100CC 8000F4CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0100D0 8000F4D0 8FA2001C */  lw    $v0, 0x1c($sp)
/* 0100D4 8000F4D4 27BD0020 */  addiu $sp, $sp, 0x20
/* 0100D8 8000F4D8 03E00008 */  jr    $ra
/* 0100DC 8000F4DC 00000000 */   nop   
.type func_8000F4B0, @function
.size func_8000F4B0, . - func_8000F4B0
