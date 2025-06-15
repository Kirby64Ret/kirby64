glabel func_80004D34
/* 005934 80004D34 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 005938 80004D38 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00593C 80004D3C AFA40018 */  sw    $a0, 0x18($sp)
/* 005940 80004D40 AFA5001C */  sw    $a1, 0x1c($sp)
/* 005944 80004D44 00C03825 */  move  $a3, $a2
/* 005948 80004D48 8FA6001C */  lw    $a2, 0x1c($sp)
/* 00594C 80004D4C 93A5001B */  lbu   $a1, 0x1b($sp)
/* 005950 80004D50 0C001317 */  jal   func_80004C5C
/* 005954 80004D54 24040004 */   li    $a0, 4
/* 005958 80004D58 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00595C 80004D5C 27BD0018 */  addiu $sp, $sp, 0x18
/* 005960 80004D60 03E00008 */  jr    $ra
/* 005964 80004D64 00000000 */   nop   
.type func_80004D34, @function
.size func_80004D34, . - func_80004D34
