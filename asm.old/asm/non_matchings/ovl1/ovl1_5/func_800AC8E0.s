glabel func_800AC8E0
/* 054B30 800AC8E0 240E0030 */  li    $t6, 48
/* 054B34 800AC8E4 AC8E0000 */  sw    $t6, ($a0)
/* 054B38 800AC8E8 8CAF000C */  lw    $t7, 0xc($a1)
/* 054B3C 800AC8EC 24180100 */  li    $t8, 256
/* 054B40 800AC8F0 A4980008 */  sh    $t8, 8($a0)
/* 054B44 800AC8F4 AC8F0004 */  sw    $t7, 4($a0)
/* 054B48 800AC8F8 90B90002 */  lbu   $t9, 2($a1)
/* 054B4C 800AC8FC A480000C */  sh    $zero, 0xc($a0)
/* 054B50 800AC900 A480000E */  sh    $zero, 0xe($a0)
/* 054B54 800AC904 2728FFFF */  addiu $t0, $t9, -1
/* 054B58 800AC908 310900FF */  andi  $t1, $t0, 0xff
/* 054B5C 800AC90C A489000A */  sh    $t1, 0xa($a0)
/* 054B60 800AC910 8CAA000C */  lw    $t2, 0xc($a1)
/* 054B64 800AC914 240BFFFF */  li    $t3, -1
/* 054B68 800AC918 AC8B0014 */  sw    $t3, 0x14($a0)
/* 054B6C 800AC91C 03E00008 */  jr    $ra
/* 054B70 800AC920 AC8A0010 */   sw    $t2, 0x10($a0)
.type func_800AC8E0, @function
.size func_800AC8E0, . - func_800AC8E0
