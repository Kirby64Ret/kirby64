glabel func_8001CCBC
/* 01D8BC 8001CCBC 44856000 */  mtc1  $a1, $f12
/* 01D8C0 8001CCC0 44867000 */  mtc1  $a2, $f14
/* 01D8C4 8001CCC4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 01D8C8 8001CCC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01D8CC 8001CCCC AFA40058 */  sw    $a0, 0x58($sp)
/* 01D8D0 8001CCD0 44056000 */  mfc1  $a1, $f12
/* 01D8D4 8001CCD4 44067000 */  mfc1  $a2, $f14
/* 01D8D8 8001CCD8 0C0072FC */  jal   create_xy_rotation_matrix
/* 01D8DC 8001CCDC 27A40018 */   addiu $a0, $sp, 0x18
/* 01D8E0 8001CCE0 27A40018 */  addiu $a0, $sp, 0x18
/* 01D8E4 8001CCE4 0C006718 */  jal   func_80019C60
/* 01D8E8 8001CCE8 8FA50058 */   lw    $a1, 0x58($sp)
/* 01D8EC 8001CCEC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01D8F0 8001CCF0 27BD0058 */  addiu $sp, $sp, 0x58
/* 01D8F4 8001CCF4 03E00008 */  jr    $ra
/* 01D8F8 8001CCF8 00000000 */   nop   
.type func_8001CCBC, @function
.size func_8001CCBC, . - func_8001CCBC
