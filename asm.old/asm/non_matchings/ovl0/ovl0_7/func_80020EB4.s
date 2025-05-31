glabel func_80020EB4
/* 021AB4 80020EB4 3C0E8004 */  lui   $t6, %hi(D_8003F340) # $t6, 0x8004
/* 021AB8 80020EB8 3C0F8004 */  lui   $t7, %hi(D_8003F330) # $t7, 0x8004
/* 021ABC 80020EBC 8DEFF330 */  lw    $t7, %lo(D_8003F330)($t7)
/* 021AC0 80020EC0 8DCEF340 */  lw    $t6, %lo(D_8003F340)($t6)
/* 021AC4 80020EC4 03E00008 */  jr    $ra
/* 021AC8 80020EC8 01CF1025 */   or    $v0, $t6, $t7
.type func_80020EB4, @function
.size func_80020EB4, . - func_80020EB4
