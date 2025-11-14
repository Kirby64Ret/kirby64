glabel func_8010E274
/* 096CE4 8010E274 10800002 */  beqz  $a0, .L8010E280_ovl2
/* 096CE8 8010E278 00000000 */   nop   
/* 096CEC 8010E27C A0800005 */  sb    $zero, 5($a0)
.L8010E280_ovl2:
/* 096CF0 8010E280 03E00008 */  jr    $ra
/* 096CF4 8010E284 00000000 */   nop   
.type func_8010E274, @function
.size func_8010E274, . - func_8010E274
