glabel func_80115EAC
/* 09E91C 80115EAC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09E920 80115EB0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09E924 80115EB4 8C8E0000 */  lw    $t6, ($a0)
/* 09E928 80115EB8 3C01800F */ lui $at, %hi(D_800E98E0)
/* 09E92C 80115EBC 000E7880 */  sll   $t7, $t6, 2
/* 09E930 80115EC0 002F0821 */  addu  $at, $at, $t7
/* 09E934 80115EC4 0C045447 */  jal   func_8011511C
/* 09E938 80115EC8 AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 09E93C 80115ECC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09E940 80115ED0 27BD0018 */  addiu $sp, $sp, 0x18
/* 09E944 80115ED4 03E00008 */  jr    $ra
/* 09E948 80115ED8 00000000 */   nop   
.type func_80115EAC, @function
.size func_80115EAC, . - func_80115EAC
