glabel func_800215F0
/* 0221F0 800215F0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0221F4 800215F4 8FAE0030 */  lw    $t6, 0x30($sp)
/* 0221F8 800215F8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0221FC 800215FC AFA00010 */  sw    $zero, 0x10($sp)
/* 022200 80021600 0C008511 */  jal   func_80021444
/* 022204 80021604 AFAE0014 */   sw    $t6, 0x14($sp)
/* 022208 80021608 8FBF001C */  lw    $ra, 0x1c($sp)
/* 02220C 8002160C 27BD0020 */  addiu $sp, $sp, 0x20
/* 022210 80021610 03E00008 */  jr    $ra
/* 022214 80021614 00000000 */   nop   
.type func_800215F0, @function
.size func_800215F0, . - func_800215F0
