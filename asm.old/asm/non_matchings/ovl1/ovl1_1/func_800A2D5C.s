glabel func_800A2D5C
/* 04AFAC 800A2D5C 3C01800D */ lui $at, %hi(D_800D6B9C)
/* 04AFB0 800A2D60 03E00008 */  jr    $ra
/* 04AFB4 800A2D64 AC206B9C */ sw $zero, %lo(D_800D6B9C)($at)
.type func_800A2D5C, @function
.size func_800A2D5C, . - func_800A2D5C
