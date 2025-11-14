glabel func_80111550
/* 099FC0 80111550 3C018013 */  lui   $at, %hi(D_8012D0C0) # $at, 0x8013
/* 099FC4 80111554 AC24D0C0 */  sw    $a0, %lo(D_8012D0C0)($at)
/* 099FC8 80111558 3C018013 */  lui   $at, %hi(D_8012CF28) # $at, 0x8013
/* 099FCC 8011155C AC20CF28 */  sw    $zero, %lo(D_8012CF28)($at)
/* 099FD0 80111560 3C018013 */  lui   $at, %hi(D_8012D0C4) # $at, 0x8013
/* 099FD4 80111564 AC20D0C4 */  sw    $zero, %lo(D_8012D0C4)($at)
/* 099FD8 80111568 3C018012 */  lui   $at, 0x8012
/* 099FDC 8011156C 03E00008 */  jr    $ra
/* 099FE0 80111570 AC2049A0 */   sw    $zero, 0x49a0($at)
.type func_80111550, @function
.size func_80111550, . - func_80111550
