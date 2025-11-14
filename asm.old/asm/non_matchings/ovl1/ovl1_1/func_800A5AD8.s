glabel func_800A5AD8
/* 04DD28 800A5AD8 3C0E800D */  lui   $t6, %hi(D_800D6B24) # $t6, 0x800d
/* 04DD2C 800A5ADC 8DCE6B24 */  lw    $t6, %lo(D_800D6B24)($t6)
/* 04DD30 800A5AE0 3C03800D */  lui   $v1, %hi(D_800D6B2C) # $v1, 0x800d
/* 04DD34 800A5AE4 24636B2C */  addiu $v1, %lo(D_800D6B2C) # addiu $v1, $v1, 0x6b2c
/* 04DD38 800A5AE8 55C00004 */  bnezl $t6, .L800A5AFC_ovl1
/* 04DD3C 800A5AEC A4600000 */   sh    $zero, ($v1)
/* 04DD40 800A5AF0 03E00008 */  jr    $ra
/* 04DD44 800A5AF4 00001025 */   move  $v0, $zero
.type func_800A5AD8, @function

/* 04DD48 800A5AF8 A4600000 */  sh    $zero, ($v1)
.L800A5AFC_ovl1:
/* 04DD4C 800A5AFC 846F0000 */  lh    $t7, ($v1)
/* 04DD50 800A5B00 3C01800D */  lui   $at, %hi(D_800D6B2E) # $at, 0x800d
/* 04DD54 800A5B04 24020001 */  li    $v0, 1
/* 04DD58 800A5B08 A42F6B2E */  sh    $t7, %lo(D_800D6B2E)($at)
/* 04DD5C 800A5B0C 03E00008 */  jr    $ra
/* 04DD60 800A5B10 00000000 */   nop   
.type func_800A5AD8, @function
.size func_800A5AD8, . - func_800A5AD8
