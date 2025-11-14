glabel func_80004D00
/* 005900 80004D00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 005904 80004D04 AFBF0014 */  sw    $ra, 0x14($sp)
/* 005908 80004D08 AFA40018 */  sw    $a0, 0x18($sp)
/* 00590C 80004D0C AFA5001C */  sw    $a1, 0x1c($sp)
/* 005910 80004D10 00C03825 */  move  $a3, $a2
/* 005914 80004D14 8FA6001C */  lw    $a2, 0x1c($sp)
/* 005918 80004D18 93A5001B */  lbu   $a1, 0x1b($sp)
/* 00591C 80004D1C 0C001317 */  jal   func_80004C5C
/* 005920 80004D20 24040003 */   li    $a0, 3
/* 005924 80004D24 8FBF0014 */  lw    $ra, 0x14($sp)
/* 005928 80004D28 27BD0018 */  addiu $sp, $sp, 0x18
/* 00592C 80004D2C 03E00008 */  jr    $ra
/* 005930 80004D30 00000000 */   nop   
.type func_80004D00, @function
.size func_80004D00, . - func_80004D00
