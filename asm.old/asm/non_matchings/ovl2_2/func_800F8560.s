glabel func_800F8560
/* 080FD0 800F8560 3C0E8013 */  lui   $t6, %hi(D_801290D8) # $t6, 0x8013
/* 080FD4 800F8564 8DCE90D8 */  lw    $t6, %lo(D_801290D8)($t6)
/* 080FD8 800F8568 03E00008 */  jr    $ra
/* 080FDC 800F856C 95C20016 */   lhu   $v0, 0x16($t6)
.type func_800F8560, @function
.size func_800F8560, . - func_800F8560
