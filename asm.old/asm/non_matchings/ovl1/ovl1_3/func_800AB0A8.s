glabel func_800AB0A8
/* 0532F8 800AB0A8 248EFFF6 */  addiu $t6, $a0, -0xa
/* 0532FC 800AB0AC 000E7843 */  sra   $t7, $t6, 1
/* 053300 800AB0B0 000FC080 */  sll   $t8, $t7, 2
/* 053304 800AB0B4 3C02800D */  lui   $v0, 0x800d
/* 053308 800AB0B8 00581021 */  addu  $v0, $v0, $t8
/* 05330C 800AB0BC 44856000 */  mtc1  $a1, $f12
/* 053310 800AB0C0 8C4279D8 */  lw    $v0, 0x79d8($v0)
/* 053314 800AB0C4 03E00008 */  jr    $ra
/* 053318 800AB0C8 E44C0078 */   swc1  $f12, 0x78($v0)
.type func_800AB0A8, @function
.size func_800AB0A8, . - func_800AB0A8
