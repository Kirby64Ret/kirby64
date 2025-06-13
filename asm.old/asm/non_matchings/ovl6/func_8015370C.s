glabel func_8015370C
/* 137A9C 8015370C 3C0E8016 */  lui   $t6, %hi(D_8015A560) # $t6, 0x8016
/* 137AA0 80153710 3C18800D */  lui   $t8, %hi(D_800D799C) # $t8, 0x800d
/* 137AA4 80153714 8F18799C */  lw    $t8, %lo(D_800D799C)($t8)
/* 137AA8 80153718 8DCEA560 */  lw    $t6, %lo(D_8015A560)($t6)
/* 137AAC 8015371C 8F19003C */  lw    $t9, 0x3c($t8)
/* 137AB0 80153720 8DCF0004 */  lw    $t7, 4($t6)
/* 137AB4 80153724 03E00008 */  jr    $ra
/* 137AB8 80153728 AF2F0084 */   sw    $t7, 0x84($t9)
.type func_8015370C, @function
.size func_8015370C, . - func_8015370C
