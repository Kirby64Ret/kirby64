glabel func_801DF4CC_ovl10
/* 1D023C 801DF4CC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D0240 801DF4D0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D0244 801DF4D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D0248 801DF4D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D024C 801DF4DC 8DCF0000 */  lw    $t7, ($t6)
/* 1D0250 801DF4E0 3C01800F */ lui $at, %hi(D_800E8920)
/* 1D0254 801DF4E4 000FC080 */  sll   $t8, $t7, 2
/* 1D0258 801DF4E8 00380821 */  addu  $at, $at, $t8
/* 1D025C 801DF4EC 0C06835D */  jal   func_801A0D74_ovl10
/* 1D0260 801DF4F0 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1D0264 801DF4F4 0C078A32 */  jal   func_801E28C8_ovl10
/* 1D0268 801DF4F8 00002025 */   move  $a0, $zero
/* 1D026C 801DF4FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D0270 801DF500 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D0274 801DF504 03E00008 */  jr    $ra
/* 1D0278 801DF508 00000000 */   nop   
.type func_801DF4CC_ovl10, @function
.size func_801DF4CC_ovl10, . - func_801DF4CC_ovl10
