glabel func_80020E8C
/* 021A8C 80020E8C 240E0001 */  li    $t6, 1
/* 021A90 80020E90 3C018004 */ lui $at, %hi(D_8003F330)
/* 021A94 80020E94 03E00008 */  jr    $ra
/* 021A98 80020E98 AC2EF330 */ sw $t6, %lo(D_8003F330)($at)
.type func_80020E8C, @function
.size func_80020E8C, . - func_80020E8C
