glabel func_801534A8_ovl6
/* 137838 801534A8 3C0F8016 */  lui        $t7, %hi(D_8015A560_ovl6)
/* 13783C 801534AC 8DEFA560 */  lw         $t7, %lo(D_8015A560_ovl6)($t7)
/* 137840 801534B0 3C08800E */  lui        $t0, %hi(D_800DE350)
/* 137844 801534B4 3C0E8015 */  lui        $t6, %hi(func_8015198C_ovl6)
/* 137848 801534B8 91F80003 */  lbu        $t8, 0x3($t7)
/* 13784C 801534BC 25CE198C */  addiu      $t6, $t6, %lo(func_8015198C_ovl6)
/* 137850 801534C0 0018C880 */  sll        $t9, $t8, 2
/* 137854 801534C4 01194021 */  addu       $t0, $t0, $t9
/* 137858 801534C8 8D08E350 */  lw         $t0, %lo(D_800DE350)($t0)
.L801534CC_ovl3:
/* 13785C 801534CC 03E00008 */  jr         $ra
/* 137860 801534D0 AD0E002C */   sw        $t6, 0x2C($t0)
