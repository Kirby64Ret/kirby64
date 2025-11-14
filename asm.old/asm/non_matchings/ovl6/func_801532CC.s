glabel func_801532CC
/* 13765C 801532CC 3C0E8016 */  lui   $t6, %hi(D_8015A560) # $t6, 0x8016
/* 137660 801532D0 8DCEA560 */  lw    $t6, %lo(D_8015A560)($t6)
/* 137664 801532D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 137668 801532D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 13766C 801532DC 0C054C8A */  jal   func_80153228_ovl6
/* 137670 801532E0 91C40003 */   lbu   $a0, 3($t6)
/* 137674 801532E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 137678 801532E8 27BD0018 */  addiu $sp, $sp, 0x18
/* 13767C 801532EC 03E00008 */  jr    $ra
/* 137680 801532F0 00000000 */   nop   
.type func_801532CC, @function
.size func_801532CC, . - func_801532CC
