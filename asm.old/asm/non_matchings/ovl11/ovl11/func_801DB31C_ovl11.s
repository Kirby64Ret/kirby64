glabel func_801DB31C_ovl11
/* 1E5BDC 801DB31C 8C820080 */  lw    $v0, 0x80($a0)
/* 1E5BE0 801DB320 10400008 */  beqz  $v0, .L801DB344_ovl11
/* 1E5BE4 801DB324 00000000 */   nop   
/* 1E5BE8 801DB328 88AF0000 */  lwl   $t7, ($a1)
.L801DB32C_ovl11:
/* 1E5BEC 801DB32C 98AF0003 */  lwr   $t7, 3($a1)
/* 1E5BF0 801DB330 A84F0058 */  swl   $t7, 0x58($v0)
/* 1E5BF4 801DB334 B84F005B */  swr   $t7, 0x5b($v0)
/* 1E5BF8 801DB338 8C420000 */  lw    $v0, ($v0)
/* 1E5BFC 801DB33C 5440FFFB */  bnezl $v0, .L801DB32C_ovl11
/* 1E5C00 801DB340 88AF0000 */   lwl   $t7, ($a1)
.L801DB344_ovl11:
/* 1E5C04 801DB344 03E00008 */  jr    $ra
/* 1E5C08 801DB348 00000000 */   nop   
.type func_801DB31C_ovl11, @function
.size func_801DB31C_ovl11, . - func_801DB31C_ovl11
