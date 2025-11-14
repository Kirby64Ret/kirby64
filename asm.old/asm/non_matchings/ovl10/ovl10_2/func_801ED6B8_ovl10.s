glabel func_801ED6B8_ovl10
/* 1DE428 801ED6B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DE42C 801ED6BC 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 1DE430 801ED6C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DE434 801ED6C4 44816000 */  mtc1  $at, $f12
/* 1DE438 801ED6C8 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DE43C 801ED6CC 0C067534 */  jal   func_8019D4D0_ovl10
/* 1DE440 801ED6D0 24050008 */   li    $a1, 8
/* 1DE444 801ED6D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DE448 801ED6D8 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DE44C 801ED6DC 03E00008 */  jr    $ra
/* 1DE450 801ED6E0 00000000 */   nop   
.type func_801ED6B8_ovl10, @function
.size func_801ED6B8_ovl10, . - func_801ED6B8_ovl10
