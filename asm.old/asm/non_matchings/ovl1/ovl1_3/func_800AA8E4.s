glabel func_800AA8E4
/* 052B34 800AA8E4 00057402 */  srl   $t6, $a1, 0x10
/* 052B38 800AA8E8 000E7880 */  sll   $t7, $t6, 2
/* 052B3C 800AA8EC 3C18800D */  lui   $t8, 0x800d
/* 052B40 800AA8F0 030FC021 */  addu  $t8, $t8, $t7
/* 052B44 800AA8F4 8F1800C4 */  lw    $t8, 0xc4($t8)
/* 052B48 800AA8F8 30B9FFFF */  andi  $t9, $a1, 0xffff
/* 052B4C 800AA8FC 00194080 */  sll   $t0, $t9, 2
/* 052B50 800AA900 00044880 */  sll   $t1, $a0, 2
/* 052B54 800AA904 3C0A800E */  lui   $t2, 0x800e
/* 052B58 800AA908 01495021 */  addu  $t2, $t2, $t1
/* 052B5C 800AA90C 03081021 */  addu  $v0, $t8, $t0
/* 052B60 800AA910 8C4B0000 */  lw    $t3, ($v0)
/* 052B64 800AA914 8D4AF4D0 */  lw    $t2, -0xb30($t2)
/* 052B68 800AA918 00001025 */  move  $v0, $zero
/* 052B6C 800AA91C 154B0003 */  bne   $t2, $t3, .L800AA92C_ovl1
/* 052B70 800AA920 00000000 */   nop   
/* 052B74 800AA924 03E00008 */  jr    $ra
/* 052B78 800AA928 24020001 */   li    $v0, 1
.L800AA92C_ovl1:
/* 052B7C 800AA92C 03E00008 */  jr    $ra
/* 052B80 800AA930 00000000 */   nop   
.type func_800AA8E4, @function
.size func_800AA8E4, . - func_800AA8E4
