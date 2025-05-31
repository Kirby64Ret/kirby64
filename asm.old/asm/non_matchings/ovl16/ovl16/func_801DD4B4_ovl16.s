glabel func_801DD4B4_ovl16
/* 213764 801DD4B4 8C820080 */  lw    $v0, 0x80($a0)
/* 213768 801DD4B8 10400008 */  beqz  $v0, .L801DD4DC_ovl16
/* 21376C 801DD4BC 00000000 */   nop   
/* 213770 801DD4C0 88AF0000 */  lwl   $t7, ($a1)
.L801DD4C4_ovl16:
/* 213774 801DD4C4 98AF0003 */  lwr   $t7, 3($a1)
/* 213778 801DD4C8 A84F0060 */  swl   $t7, 0x60($v0)
/* 21377C 801DD4CC B84F0063 */  swr   $t7, 0x63($v0)
/* 213780 801DD4D0 8C420000 */  lw    $v0, ($v0)
/* 213784 801DD4D4 5440FFFB */  bnezl $v0, .L801DD4C4_ovl16
/* 213788 801DD4D8 88AF0000 */   lwl   $t7, ($a1)
.L801DD4DC_ovl16:
/* 21378C 801DD4DC 03E00008 */  jr    $ra
/* 213790 801DD4E0 00000000 */   nop   
.type func_801DD4B4_ovl16, @function
.size func_801DD4B4_ovl16, . - func_801DD4B4_ovl16
