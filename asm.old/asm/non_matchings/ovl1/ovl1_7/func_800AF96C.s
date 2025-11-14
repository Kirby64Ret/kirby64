glabel func_800AF96C
/* 057BBC 800AF96C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 057BC0 800AF970 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 057BC4 800AF974 8DC2004C */  lw    $v0, 0x4c($t6)
/* 057BC8 800AF978 03E00008 */  jr    $ra
/* 057BCC 800AF97C A0440011 */   sb    $a0, 0x11($v0)
.type func_800AF96C, @function
.size func_800AF96C, . - func_800AF96C
