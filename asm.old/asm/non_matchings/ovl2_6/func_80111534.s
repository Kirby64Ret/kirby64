glabel func_80111534
/* 099FA4 80111534 3C018013 */  lui   $at, %hi(D_8012D580) # $at, 0x8013
/* 099FA8 80111538 AC24D580 */  sw    $a0, %lo(D_8012D580)($at)
/* 099FAC 8011153C 3C018013 */  lui   $at, %hi(D_8012D190) # $at, 0x8013
/* 099FB0 80111540 AC20D190 */  sw    $zero, %lo(D_8012D190)($at)
/* 099FB4 80111544 3C018012 */  lui   $at, 0x8012
/* 099FB8 80111548 03E00008 */  jr    $ra
/* 099FBC 8011154C AC2049B0 */   sw    $zero, 0x49b0($at)
.type func_80111534, @function
.size func_80111534, . - func_80111534
