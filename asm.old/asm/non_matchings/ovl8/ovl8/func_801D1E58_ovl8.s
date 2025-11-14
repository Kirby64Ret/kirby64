glabel func_801D1E58_ovl8
/* 175938 801D1E58 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 17593C 801D1E5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 175940 801D1E60 0C02D2E7 */  jal   D_800B4B9C_ovl8
/* 175944 801D1E64 00000000 */   nop   
/* 175948 801D1E68 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 17594C 801D1E6C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 175950 801D1E70 3C01C1A0 */  li    $at, 0xC1A00000 # -20.000000
/* 175954 801D1E74 44812000 */  mtc1  $at, $f4
/* 175958 801D1E78 8DCF0000 */  lw    $t7, ($t6)
/* 17595C 801D1E7C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 175960 801D1E80 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 175964 801D1E84 000FC080 */  sll   $t8, $t7, 2
/* 175968 801D1E88 00380821 */  addu  $at, $at, $t8
/* 17596C 801D1E8C 27BD0018 */  addiu $sp, $sp, 0x18
/* 175970 801D1E90 03E00008 */  jr    $ra
/* 175974 801D1E94 E4242790 */ swc1 $f4, %lo(gEntitiesNextPosYArray)($at)
.type func_801D1E58_ovl8, @function
.size func_801D1E58_ovl8, . - func_801D1E58_ovl8
