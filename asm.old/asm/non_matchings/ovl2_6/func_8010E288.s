glabel func_8010E288
/* 096CF8 8010E288 AFA50004 */  sw    $a1, 4($sp)
/* 096CFC 8010E28C 10800002 */  beqz  $a0, .L8010E298_ovl2
/* 096D00 8010E290 30A500FF */   andi  $a1, $a1, 0xff
/* 096D04 8010E294 A0850007 */  sb    $a1, 7($a0)
.L8010E298_ovl2:
/* 096D08 8010E298 03E00008 */  jr    $ra
/* 096D0C 8010E29C 00000000 */   nop   
.type func_8010E288, @function
.size func_8010E288, . - func_8010E288
