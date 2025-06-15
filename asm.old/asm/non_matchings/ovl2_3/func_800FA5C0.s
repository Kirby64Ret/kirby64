glabel func_800FA5C0
/* 083030 800FA5C0 00041080 */  sll   $v0, $a0, 2
/* 083034 800FA5C4 3C01800E */  lui   $at, 0x800e
/* 083038 800FA5C8 00220821 */  addu  $at, $at, $v0
/* 08303C 800FA5CC C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 083040 800FA5D0 3C01800E */  lui   $at, 0x800e
/* 083044 800FA5D4 00220821 */  addu  $at, $at, $v0
/* 083048 800FA5D8 E4C40000 */  swc1  $f4, ($a2)
/* 08304C 800FA5DC C4262790 */  lwc1  $f6, 0x2790($at)
/* 083050 800FA5E0 3C01800E */  lui   $at, 0x800e
/* 083054 800FA5E4 00220821 */  addu  $at, $at, $v0
/* 083058 800FA5E8 E4C60004 */  swc1  $f6, 4($a2)
/* 08305C 800FA5EC C4282950 */  lwc1  $f8, 0x2950($at)
/* 083060 800FA5F0 C4CA0004 */  lwc1  $f10, 4($a2)
/* 083064 800FA5F4 E4C80008 */  swc1  $f8, 8($a2)
/* 083068 800FA5F8 C4B00014 */  lwc1  $f16, 0x14($a1)
/* 08306C 800FA5FC 46105480 */  add.s $f18, $f10, $f16
/* 083070 800FA600 03E00008 */  jr    $ra
/* 083074 800FA604 E4D20004 */   swc1  $f18, 4($a2)
.type func_800FA5C0, @function
.size func_800FA5C0, . - func_800FA5C0
