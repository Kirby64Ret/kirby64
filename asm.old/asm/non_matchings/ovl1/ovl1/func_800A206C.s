glabel func_800A206C
/* 04A2BC 800A206C 3C01800D */  lui   $at, %hi(D_800D6ADC) # $at, 0x800d
/* 04A2C0 800A2070 AC246ADC */  sw    $a0, %lo(D_800D6ADC)($at)
/* 04A2C4 800A2074 3C01800D */ lui $at, %hi(D_800D6AD8)
/* 04A2C8 800A2078 03E00008 */  jr    $ra
/* 04A2CC 800A207C AC256AD8 */ sw $a1, %lo(D_800D6AD8)($at)
.type func_800A206C, @function
.size func_800A206C, . - func_800A206C
