glabel func_800A7394
/* 04F5E4 800A7394 3C0F800D */  lui   $t7, %hi(D_800D79BC) # $t7, 0x800d
/* 04F5E8 800A7398 8DEF79BC */  lw    $t7, %lo(D_800D79BC)($t7)
/* 04F5EC 800A739C 240E0008 */  li    $t6, 8
/* 04F5F0 800A73A0 8DF8003C */  lw    $t8, 0x3c($t7)
/* 04F5F4 800A73A4 8F190068 */  lw    $t9, 0x68($t8)
/* 04F5F8 800A73A8 03E00008 */  jr    $ra
/* 04F5FC 800A73AC A32E0004 */   sb    $t6, 4($t9)
.type func_800A7394, @function
.size func_800A7394, . - func_800A7394
