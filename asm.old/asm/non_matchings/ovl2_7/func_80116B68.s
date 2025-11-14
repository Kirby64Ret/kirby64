glabel func_80116B68
/* 09F5D8 80116B68 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09F5DC 80116B6C AFBF0014 */  sw    $ra, 0x14($sp)
/* 09F5E0 80116B70 8C8E0000 */  lw    $t6, ($a0)
/* 09F5E4 80116B74 3C01800D */  lui   $at, %hi(D_800D7098) # $at, 0x800d
/* 09F5E8 80116B78 0C04541C */  jal   func_80115070
/* 09F5EC 80116B7C AC2E7098 */   sw    $t6, %lo(D_800D7098)($at)
/* 09F5F0 80116B80 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09F5F4 80116B84 27BD0018 */  addiu $sp, $sp, 0x18
/* 09F5F8 80116B88 03E00008 */  jr    $ra
/* 09F5FC 80116B8C 00000000 */   nop   
.type func_80116B68, @function
.size func_80116B68, . - func_80116B68
