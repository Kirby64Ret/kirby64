glabel func_8001CB0C
/* 01D70C 8001CB0C 44856000 */  mtc1  $a1, $f12
/* 01D710 8001CB10 44867000 */  mtc1  $a2, $f14
/* 01D714 8001CB14 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 01D718 8001CB18 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01D71C 8001CB1C AFA40058 */  sw    $a0, 0x58($sp)
/* 01D720 8001CB20 44056000 */  mfc1  $a1, $f12
/* 01D724 8001CB24 44067000 */  mfc1  $a2, $f14
/* 01D728 8001CB28 0C007290 */  jal   create_yz_rotation_matrix
/* 01D72C 8001CB2C 27A40018 */   addiu $a0, $sp, 0x18
/* 01D730 8001CB30 27A40018 */  addiu $a0, $sp, 0x18
/* 01D734 8001CB34 0C006718 */  jal   func_80019C60
/* 01D738 8001CB38 8FA50058 */   lw    $a1, 0x58($sp)
/* 01D73C 8001CB3C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01D740 8001CB40 27BD0058 */  addiu $sp, $sp, 0x58
/* 01D744 8001CB44 03E00008 */  jr    $ra
/* 01D748 8001CB48 00000000 */   nop   
.type func_8001CB0C, @function
.size func_8001CB0C, . - func_8001CB0C
