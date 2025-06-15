glabel func_8010DC00
/* 096670 8010DC00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 096674 8010DC04 AFBF0014 */  sw    $ra, 0x14($sp)
/* 096678 8010DC08 00A03025 */  move  $a2, $a1
/* 09667C 8010DC0C 0C0436D9 */  jal   func_8010DB64
/* 096680 8010DC10 24050014 */   li    $a1, 20
/* 096684 8010DC14 8FBF0014 */  lw    $ra, 0x14($sp)
/* 096688 8010DC18 27BD0018 */  addiu $sp, $sp, 0x18
/* 09668C 8010DC1C 03E00008 */  jr    $ra
/* 096690 8010DC20 00000000 */   nop   
.type func_8010DC00, @function
.size func_8010DC00, . - func_8010DC00
