glabel func_8010E2A0
/* 096D10 8010E2A0 10800003 */  beqz  $a0, .L8010E2B0_ovl2
/* 096D14 8010E2A4 00001025 */   move  $v0, $zero
/* 096D18 8010E2A8 03E00008 */  jr    $ra
/* 096D1C 8010E2AC 90820007 */   lbu   $v0, 7($a0)
.type func_8010E2A0, @function

.L8010E2B0_ovl2:
/* 096D20 8010E2B0 03E00008 */  jr    $ra
/* 096D24 8010E2B4 00000000 */   nop   
.type func_8010E2A0, @function
.size func_8010E2A0, . - func_8010E2A0
