glabel func_8000F4E0
/* 0100E0 8000F4E0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0100E4 8000F4E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0100E8 8000F4E8 0C002757 */  jal   func_80009D5C
/* 0100EC 8000F4EC 00000000 */   nop   
/* 0100F0 8000F4F0 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0100F4 8000F4F4 0C003D12 */  jal   func_8000F448
/* 0100F8 8000F4F8 00402025 */   move  $a0, $v0
/* 0100FC 8000F4FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 010100 8000F500 8FA2001C */  lw    $v0, 0x1c($sp)
/* 010104 8000F504 27BD0020 */  addiu $sp, $sp, 0x20
/* 010108 8000F508 03E00008 */  jr    $ra
/* 01010C 8000F50C 00000000 */   nop   
.type func_8000F4E0, @function
.size func_8000F4E0, . - func_8000F4E0
