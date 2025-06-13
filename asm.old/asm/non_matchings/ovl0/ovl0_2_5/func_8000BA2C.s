glabel func_8000BA2C
/* 00C62C 8000BA2C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00C630 8000BA30 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00C634 8000BA34 0C002757 */  jal   func_80009D5C
/* 00C638 8000BA38 00000000 */   nop   
/* 00C63C 8000BA3C AFA2001C */  sw    $v0, 0x1c($sp)
/* 00C640 8000BA40 0C002E30 */  jal   func_8000B8C0
/* 00C644 8000BA44 00402025 */   move  $a0, $v0
/* 00C648 8000BA48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00C64C 8000BA4C 8FA2001C */  lw    $v0, 0x1c($sp)
/* 00C650 8000BA50 27BD0020 */  addiu $sp, $sp, 0x20
/* 00C654 8000BA54 03E00008 */  jr    $ra
/* 00C658 8000BA58 00000000 */   nop   
.type func_8000BA2C, @function
.size func_8000BA2C, . - func_8000BA2C
