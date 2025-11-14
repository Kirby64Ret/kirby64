glabel func_801772CC_ovl3
/* 0D7D0C 801772CC 00047080 */  sll   $t6, $a0, 2
/* 0D7D10 801772D0 3C028019 */ lui $v0, %hi(D_80196CB8)
/* 0D7D14 801772D4 004E1021 */  addu  $v0, $v0, $t6
/* 0D7D18 801772D8 03E00008 */  jr    $ra
/* 0D7D1C 801772DC 8C426CB8 */ lw $v0, %lo(D_80196CB8)($v0)
.type func_801772CC_ovl3, @function
.size func_801772CC_ovl3, . - func_801772CC_ovl3
