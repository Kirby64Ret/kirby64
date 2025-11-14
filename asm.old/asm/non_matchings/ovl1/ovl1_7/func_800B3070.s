glabel func_800B3070
/* 05B2C0 800B3070 248EFFF6 */  addiu $t6, $a0, -0xa
/* 05B2C4 800B3074 000E7843 */  sra   $t7, $t6, 1
/* 05B2C8 800B3078 000FC080 */  sll   $t8, $t7, 2
/* 05B2CC 800B307C 3C02800D */ lui $v0, %hi(D_800D79D8)
/* 05B2D0 800B3080 00581021 */  addu  $v0, $v0, $t8
/* 05B2D4 800B3084 44856000 */  mtc1  $a1, $f12
/* 05B2D8 800B3088 8C4279D8 */ lw $v0, %lo(D_800D79D8)($v0)
/* 05B2DC 800B308C 03E00008 */  jr    $ra
/* 05B2E0 800B3090 E44C0078 */   swc1  $f12, 0x78($v0)
.type func_800B3070, @function
.size func_800B3070, . - func_800B3070
