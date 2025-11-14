glabel func_800FA414
/* 082E84 800FA414 3C02800D */  lui   $v0, %hi(D_800D7088) # $v0, 0x800d
/* 082E88 800FA418 24427088 */  addiu $v0, %lo(D_800D7088) # addiu $v0, $v0, 0x7088
/* 082E8C 800FA41C 8C4E0000 */  lw    $t6, ($v0)
/* 082E90 800FA420 000E7800 */  sll   $t7, $t6, 0
/* 082E94 800FA424 05E00002 */  bltz  $t7, .L800FA430_ovl2
/* 082E98 800FA428 00000000 */   nop   
/* 082E9C 800FA42C AC440000 */  sw    $a0, ($v0)
.L800FA430_ovl2:
/* 082EA0 800FA430 03E00008 */  jr    $ra
/* 082EA4 800FA434 00000000 */   nop   
.type func_800FA414, @function
.size func_800FA414, . - func_800FA414
