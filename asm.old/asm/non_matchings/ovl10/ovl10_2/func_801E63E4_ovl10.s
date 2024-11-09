glabel func_801E63E4_ovl10
/* 1D7154 801E63E4 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1D7158 801E63E8 44812000 */  mtc1  $at, $f4
/* 1D715C 801E63EC 240E001C */  li    $t6, 28
/* 1D7160 801E63F0 A08E0004 */  sb    $t6, 4($a0)
/* 1D7164 801E63F4 03E00008 */  jr    $ra
/* 1D7168 801E63F8 E4840000 */   swc1  $f4, ($a0)
.type func_801E63E4_ovl10, @function
.size func_801E63E4_ovl10, . - func_801E63E4_ovl10
