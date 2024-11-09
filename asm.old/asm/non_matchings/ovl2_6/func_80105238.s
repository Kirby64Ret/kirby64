glabel func_80105238
/* 08DCA8 80105238 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08DCAC 8010523C AFBF0014 */  sw    $ra, 0x14($sp)
/* 08DCB0 80105240 8CAE0000 */  lw    $t6, ($a1)
/* 08DCB4 80105244 AC8E004C */  sw    $t6, 0x4c($a0)
/* 08DCB8 80105248 8CAF001C */  lw    $t7, 0x1c($a1)
/* 08DCBC 8010524C A08F0052 */  sb    $t7, 0x52($a0)
/* 08DCC0 80105250 8CB80028 */  lw    $t8, 0x28($a1)
/* 08DCC4 80105254 A0980053 */  sb    $t8, 0x53($a0)
/* 08DCC8 80105258 8CB90010 */  lw    $t9, 0x10($a1)
/* 08DCCC 8010525C A0990051 */  sb    $t9, 0x51($a0)
/* 08DCD0 80105260 8CA80004 */  lw    $t0, 4($a1)
/* 08DCD4 80105264 A0880050 */  sb    $t0, 0x50($a0)
/* 08DCD8 80105268 8CA90034 */  lw    $t1, 0x34($a1)
/* 08DCDC 8010526C 0C041438 */  jal   func_801050E0
/* 08DCE0 80105270 A0890054 */   sb    $t1, 0x54($a0)
/* 08DCE4 80105274 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08DCE8 80105278 27BD0018 */  addiu $sp, $sp, 0x18
/* 08DCEC 8010527C 03E00008 */  jr    $ra
/* 08DCF0 80105280 00000000 */   nop   
.type func_80105238, @function
.size func_80105238, . - func_80105238
