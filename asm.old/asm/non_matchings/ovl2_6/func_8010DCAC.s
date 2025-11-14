glabel func_8010DCAC
/* 09671C 8010DCAC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 096720 8010DCB0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 096724 8010DCB4 0C043717 */  jal   func_8010DC5C
/* 096728 8010DCB8 00000000 */   nop   
/* 09672C 8010DCBC AFA2001C */  sw    $v0, 0x1c($sp)
/* 096730 8010DCC0 0C041460 */  jal   func_80105180
/* 096734 8010DCC4 00402025 */   move  $a0, $v0
/* 096738 8010DCC8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09673C 8010DCCC 8FA2001C */  lw    $v0, 0x1c($sp)
/* 096740 8010DCD0 27BD0020 */  addiu $sp, $sp, 0x20
/* 096744 8010DCD4 03E00008 */  jr    $ra
/* 096748 8010DCD8 00000000 */   nop   
.type func_8010DCAC, @function
.size func_8010DCAC, . - func_8010DCAC
