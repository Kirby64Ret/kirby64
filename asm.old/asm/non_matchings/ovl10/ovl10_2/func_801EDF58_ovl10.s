glabel func_801EDF58_ovl10
/* 1DECC8 801EDF58 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DECCC 801EDF5C 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 1DECD0 801EDF60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DECD4 801EDF64 44816000 */  mtc1  $at, $f12
/* 1DECD8 801EDF68 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DECDC 801EDF6C 0C067534 */  jal   func_8019D4D0_ovl10
/* 1DECE0 801EDF70 24050008 */   li    $a1, 8
/* 1DECE4 801EDF74 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DECE8 801EDF78 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DECEC 801EDF7C 03E00008 */  jr    $ra
/* 1DECF0 801EDF80 00000000 */   nop   
.type func_801EDF58_ovl10, @function
.size func_801EDF58_ovl10, . - func_801EDF58_ovl10
