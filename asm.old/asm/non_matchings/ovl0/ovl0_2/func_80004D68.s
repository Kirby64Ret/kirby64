glabel func_80004D68
/* 005968 80004D68 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00596C 80004D6C AFBF0014 */  sw    $ra, 0x14($sp)
/* 005970 80004D70 AFA40018 */  sw    $a0, 0x18($sp)
/* 005974 80004D74 00A03025 */  move  $a2, $a1
/* 005978 80004D78 93A5001B */  lbu   $a1, 0x1b($sp)
/* 00597C 80004D7C 24040001 */  li    $a0, 1
/* 005980 80004D80 0C001317 */  jal   func_80004C5C
/* 005984 80004D84 00003825 */   move  $a3, $zero
/* 005988 80004D88 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00598C 80004D8C 27BD0018 */  addiu $sp, $sp, 0x18
/* 005990 80004D90 03E00008 */  jr    $ra
/* 005994 80004D94 00000000 */   nop   
.type func_80004D68, @function
.size func_80004D68, . - func_80004D68
