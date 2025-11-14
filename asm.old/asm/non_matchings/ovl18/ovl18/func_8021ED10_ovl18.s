glabel func_8021ED10_ovl18
/* 2316B0 8021ED10 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 2316B4 8021ED14 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 2316B8 8021ED18 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 2316BC 8021ED1C AFBF0014 */  sw    $ra, 0x14($sp)
/* 2316C0 8021ED20 AFA40018 */  sw    $a0, 0x18($sp)
/* 2316C4 8021ED24 0C02C640 */  jal   func_800B1900
/* 2316C8 8021ED28 95C40002 */   lhu   $a0, 2($t6)
/* 2316CC 8021ED2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2316D0 8021ED30 27BD0018 */  addiu $sp, $sp, 0x18
/* 2316D4 8021ED34 03E00008 */  jr    $ra
/* 2316D8 8021ED38 00000000 */   nop   
.type func_8021ED10_ovl18, @function
.size func_8021ED10_ovl18, . - func_8021ED10_ovl18
