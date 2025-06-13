glabel func_801DD484_ovl16
/* 213734 801DD484 8C820080 */  lw    $v0, 0x80($a0)
/* 213738 801DD488 10400008 */  beqz  $v0, .L801DD4AC_ovl16
/* 21373C 801DD48C 00000000 */   nop   
/* 213740 801DD490 88AF0000 */  lwl   $t7, ($a1)
.L801DD494_ovl16:
/* 213744 801DD494 98AF0003 */  lwr   $t7, 3($a1)
/* 213748 801DD498 A84F0058 */  swl   $t7, 0x58($v0)
/* 21374C 801DD49C B84F005B */  swr   $t7, 0x5b($v0)
/* 213750 801DD4A0 8C420000 */  lw    $v0, ($v0)
/* 213754 801DD4A4 5440FFFB */  bnezl $v0, .L801DD494_ovl16
/* 213758 801DD4A8 88AF0000 */   lwl   $t7, ($a1)
.L801DD4AC_ovl16:
/* 21375C 801DD4AC 03E00008 */  jr    $ra
/* 213760 801DD4B0 00000000 */   nop   
.type func_801DD484_ovl16, @function
.size func_801DD484_ovl16, . - func_801DD484_ovl16
