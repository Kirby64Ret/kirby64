glabel func_800FBDE8
/* 084858 800FBDE8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08485C 800FBDEC AFBF0014 */  sw    $ra, 0x14($sp)
/* 084860 800FBDF0 0C03EEEE */  jal   func_800FBBB8
/* 084864 800FBDF4 00000000 */   nop   
/* 084868 800FBDF8 3C048013 */  lui   $a0, %hi(D_80129210) # $a0, 0x8013
/* 08486C 800FBDFC 3C058013 */  lui   $a1, %hi(D_801292B0) # $a1, 0x8013
/* 084870 800FBE00 24A592B0 */  addiu $a1, %lo(D_801292B0) # addiu $a1, $a1, -0x6d50
/* 084874 800FBE04 0C03E8B5 */  jal   func_800FA2D4
/* 084878 800FBE08 24849210 */   addiu $a0, %lo(D_80129210) # addiu $a0, $a0, -0x6df0
/* 08487C 800FBE0C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 084880 800FBE10 27BD0018 */  addiu $sp, $sp, 0x18
/* 084884 800FBE14 03E00008 */  jr    $ra
/* 084888 800FBE18 00000000 */   nop   
.type func_800FBDE8, @function
.size func_800FBDE8, . - func_800FBDE8
