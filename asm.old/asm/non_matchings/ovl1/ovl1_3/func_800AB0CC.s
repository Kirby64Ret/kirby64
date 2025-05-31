glabel func_800AB0CC
/* 05331C 800AB0CC 248EFFF6 */  addiu $t6, $a0, -0xa
/* 053320 800AB0D0 000E7843 */  sra   $t7, $t6, 1
/* 053324 800AB0D4 000FC080 */  sll   $t8, $t7, 2
/* 053328 800AB0D8 3C02800D */  lui   $v0, 0x800d
/* 05332C 800AB0DC 00581021 */  addu  $v0, $v0, $t8
/* 053330 800AB0E0 3C01800D */  lui   $at, %hi(D_800D5DFC) # $at, 0x800d
/* 053334 800AB0E4 8C4279D8 */  lw    $v0, 0x79d8($v0)
/* 053338 800AB0E8 C4245DFC */  lwc1  $f4, %lo(D_800D5DFC)($at)
/* 05333C 800AB0EC 03E00008 */  jr    $ra
/* 053340 800AB0F0 E4440074 */   swc1  $f4, 0x74($v0)
.type func_800AB0CC, @function
.size func_800AB0CC, . - func_800AB0CC
