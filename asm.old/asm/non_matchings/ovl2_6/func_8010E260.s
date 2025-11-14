glabel func_8010E260
/* 096CD0 8010E260 10800002 */  beqz  $a0, .L8010E26C_ovl2
/* 096CD4 8010E264 240E0001 */   li    $t6, 1
/* 096CD8 8010E268 A08E0005 */  sb    $t6, 5($a0)
.L8010E26C_ovl2:
/* 096CDC 8010E26C 03E00008 */  jr    $ra
/* 096CE0 8010E270 00000000 */   nop   
.type func_8010E260, @function
.size func_8010E260, . - func_8010E260
