glabel func_80022A44
/* 023644 80022A44 3C018004 */  lui   $at, %hi(D_8003F86C) # $at, 0x8004
/* 023648 80022A48 AC24F86C */  sw    $a0, %lo(D_8003F86C)($at)
/* 02364C 80022A4C 3C018004 */  lui   $at, 0x8004
/* 023650 80022A50 03E00008 */  jr    $ra
/* 023654 80022A54 AC25F870 */   sw    $a1, -0x790($at)
.type func_80022A44, @function
.size func_80022A44, . - func_80022A44
