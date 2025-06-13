glabel func_801210B4
/* 0A9B24 801210B4 3C0E800D */  lui   $t6, %hi(D_800D6B54) # $t6, 0x800d
/* 0A9B28 801210B8 8DCE6B54 */  lw    $t6, %lo(D_800D6B54)($t6)
/* 0A9B2C 801210BC 3C02800D */  lui   $v0, %hi(gKirbyController) # $v0, 0x800d
/* 0A9B30 801210C0 55C0000C */  bnezl $t6, .L801210F4_ovl2
/* 0A9B34 801210C4 00001025 */   move  $v0, $zero
/* 0A9B38 801210C8 94426FE8 */  lhu   $v0, %lo(gKirbyController)($v0)
/* 0A9B3C 801210CC 304F0300 */  andi  $t7, $v0, 0x300
/* 0A9B40 801210D0 11E00007 */  beqz  $t7, .L801210F0_ovl2
/* 0A9B44 801210D4 30580100 */   andi  $t8, $v0, 0x100
/* 0A9B48 801210D8 13000003 */  beqz  $t8, .L801210E8_ovl2
/* 0A9B4C 801210DC 00000000 */   nop   
/* 0A9B50 801210E0 03E00008 */  jr    $ra
/* 0A9B54 801210E4 24020001 */   li    $v0, 1
.type func_801210B4, @function

.L801210E8_ovl2:
/* 0A9B58 801210E8 03E00008 */  jr    $ra
/* 0A9B5C 801210EC 2402FFFF */   li    $v0, -1
.type func_801210B4, @function

.L801210F0_ovl2:
/* 0A9B60 801210F0 00001025 */  move  $v0, $zero
.L801210F4_ovl2:
/* 0A9B64 801210F4 03E00008 */  jr    $ra
/* 0A9B68 801210F8 00000000 */   nop   
.type func_801210B4, @function
.size func_801210B4, . - func_801210B4
