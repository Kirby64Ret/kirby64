glabel func_801EBC28_ovl10
/* 1DC998 801EBC28 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1DC99C 801EBC2C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1DC9A0 801EBC30 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DC9A4 801EBC34 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DC9A8 801EBC38 8DCF0000 */  lw    $t7, ($t6)
/* 1DC9AC 801EBC3C 3C01800F */ lui $at, %hi(D_800E8920)
/* 1DC9B0 801EBC40 000FC080 */  sll   $t8, $t7, 2
/* 1DC9B4 801EBC44 00380821 */  addu  $at, $at, $t8
/* 1DC9B8 801EBC48 0C06835D */  jal   func_801A0D74_ovl10
/* 1DC9BC 801EBC4C AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1DC9C0 801EBC50 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DC9C4 801EBC54 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DC9C8 801EBC58 03E00008 */  jr    $ra
/* 1DC9CC 801EBC5C 00000000 */   nop   
.type func_801EBC28_ovl10, @function
.size func_801EBC28_ovl10, . - func_801EBC28_ovl10
