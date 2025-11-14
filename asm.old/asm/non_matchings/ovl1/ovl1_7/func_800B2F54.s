glabel func_800B2F54
/* 05B1A4 800B2F54 44866000 */  mtc1  $a2, $f12
/* 05B1A8 800B2F58 248EFFF6 */  addiu $t6, $a0, -0xa
/* 05B1AC 800B2F5C 000E7843 */  sra   $t7, $t6, 1
/* 05B1B0 800B2F60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05B1B4 800B2F64 000FC080 */  sll   $t8, $t7, 2
/* 05B1B8 800B2F68 3C04800D */ lui $a0, %hi(D_800D79D8)
/* 05B1BC 800B2F6C AFBF0014 */  sw    $ra, 0x14($sp)
/* 05B1C0 800B2F70 00982021 */  addu  $a0, $a0, $t8
/* 05B1C4 800B2F74 44066000 */  mfc1  $a2, $f12
/* 05B1C8 800B2F78 0C003F8B */  jal   func_8000FE2C_ovl1
/* 05B1CC 800B2F7C 8C8479D8 */ lw $a0, %lo(D_800D79D8)($a0)
/* 05B1D0 800B2F80 8FBF0014 */  lw    $ra, 0x14($sp)
/* 05B1D4 800B2F84 27BD0018 */  addiu $sp, $sp, 0x18
/* 05B1D8 800B2F88 03E00008 */  jr    $ra
/* 05B1DC 800B2F8C 00000000 */   nop   
.type func_800B2F54, @function
.size func_800B2F54, . - func_800B2F54
