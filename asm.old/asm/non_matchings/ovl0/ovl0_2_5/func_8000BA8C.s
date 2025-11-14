glabel func_8000BA8C
/* 00C68C 8000BA8C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00C690 8000BA90 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00C694 8000BA94 0C00273A */  jal   func_80009CE8
/* 00C698 8000BA98 00000000 */   nop   
/* 00C69C 8000BA9C AFA2001C */  sw    $v0, 0x1c($sp)
/* 00C6A0 8000BAA0 0C002E42 */  jal   func_8000B908
/* 00C6A4 8000BAA4 00402025 */   move  $a0, $v0
/* 00C6A8 8000BAA8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00C6AC 8000BAAC 8FA2001C */  lw    $v0, 0x1c($sp)
/* 00C6B0 8000BAB0 27BD0020 */  addiu $sp, $sp, 0x20
/* 00C6B4 8000BAB4 03E00008 */  jr    $ra
/* 00C6B8 8000BAB8 00000000 */   nop   
.type func_8000BA8C, @function
.size func_8000BA8C, . - func_8000BA8C
