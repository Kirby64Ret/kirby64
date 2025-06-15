glabel func_80115A7C
/* 09E4EC 80115A7C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09E4F0 80115A80 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09E4F4 80115A84 8C8E0000 */  lw    $t6, ($a0)
/* 09E4F8 80115A88 3C01800F */ lui $at, %hi(D_800E98E0)
/* 09E4FC 80115A8C 000E7880 */  sll   $t7, $t6, 2
/* 09E500 80115A90 002F0821 */  addu  $at, $at, $t7
/* 09E504 80115A94 0C0454EE */  jal   func_801153B8
/* 09E508 80115A98 AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 09E50C 80115A9C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09E510 80115AA0 27BD0018 */  addiu $sp, $sp, 0x18
/* 09E514 80115AA4 03E00008 */  jr    $ra
/* 09E518 80115AA8 00000000 */   nop   
.type func_80115A7C, @function
.size func_80115A7C, . - func_80115A7C
