glabel func_800BC1FC
/* 06444C 800BC1FC 44842000 */  mtc1  $a0, $f4
/* 064450 800BC200 3C02800D */  lui   $v0, %hi(D_800D6E58) # $v0, 0x800d
/* 064454 800BC204 24426E58 */  addiu $v0, %lo(D_800D6E58) # addiu $v0, $v0, 0x6e58
/* 064458 800BC208 468021A0 */  cvt.s.w $f6, $f4
/* 06445C 800BC20C 3C01800D */  lui   $at, %hi(D_800D6E5C) # $at, 0x800d
/* 064460 800BC210 3C03800D */  lui   $v1, %hi(D_800D6EB8) # $v1, 0x800d
/* 064464 800BC214 24636EB8 */  addiu $v1, %lo(D_800D6EB8) # addiu $v1, $v1, 0x6eb8
/* 064468 800BC218 240F001E */  li    $t7, 30
/* 06446C 800BC21C E4460000 */  swc1  $f6, ($v0)
/* 064470 800BC220 C4480000 */  lwc1  $f8, ($v0)
/* 064474 800BC224 E4286E5C */  swc1  $f8, %lo(D_800D6E5C)($at)
/* 064478 800BC228 AC600000 */  sw    $zero, ($v1)
/* 06447C 800BC22C 3C01800D */  lui   $at, %hi(D_800D6EAC) # $at, 0x800d
/* 064480 800BC230 AC206EAC */  sw    $zero, %lo(D_800D6EAC)($at)
/* 064484 800BC234 3C01800D */ lui $at, %hi(D_800D6E94)
/* 064488 800BC238 03E00008 */  jr    $ra
/* 06448C 800BC23C AC2F6E94 */ sw $t7, %lo(D_800D6E94)($at)
.type func_800BC1FC, @function
.size func_800BC1FC, . - func_800BC1FC
