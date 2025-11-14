glabel func_800A6F40
/* 04F190 800A6F40 AFA40000 */  sw    $a0, ($sp)
/* 04F194 800A6F44 3084FFFF */  andi  $a0, $a0, 0xffff
/* 04F198 800A6F48 248EFFF6 */  addiu $t6, $a0, -0xa
/* 04F19C 800A6F4C 000E7843 */  sra   $t7, $t6, 1
/* 04F1A0 800A6F50 31F8FFFF */  andi  $t8, $t7, 0xffff
/* 04F1A4 800A6F54 0018C880 */  sll   $t9, $t8, 2
/* 04F1A8 800A6F58 3C02800D */ lui $v0, %hi(D_800D79D8)
/* 04F1AC 800A6F5C 00591021 */  addu  $v0, $v0, $t9
/* 04F1B0 800A6F60 03E00008 */  jr    $ra
/* 04F1B4 800A6F64 8C4279D8 */ lw $v0, %lo(D_800D79D8)($v0)
.type func_800A6F40, @function
.size func_800A6F40, . - func_800A6F40
