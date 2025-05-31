glabel func_8010B0B0
/* 093B20 8010B0B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 093B24 8010B0B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 093B28 8010B0B8 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 093B2C 8010B0BC 24A5BCA0 */  addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
/* 093B30 8010B0C0 0C042BBC */  jal   func_8010AEF0
/* 093B34 8010B0C4 24060008 */   li    $a2, 8
/* 093B38 8010B0C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 093B3C 8010B0CC 27BD0018 */  addiu $sp, $sp, 0x18
/* 093B40 8010B0D0 03E00008 */  jr    $ra
/* 093B44 8010B0D4 00000000 */   nop   
.type func_8010B0B0, @function
.size func_8010B0B0, . - func_8010B0B0
