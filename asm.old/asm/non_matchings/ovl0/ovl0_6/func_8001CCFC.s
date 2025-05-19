glabel func_8001CCFC
/* 01D8FC 8001CCFC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01D900 8001CD00 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01D904 8001CD04 AFA5001C */  sw    $a1, 0x1c($sp)
/* 01D908 8001CD08 AFA60020 */  sw    $a2, 0x20($sp)
/* 01D90C 8001CD0C AFA70024 */  sw    $a3, 0x24($sp)
/* 01D910 8001CD10 8FA6002C */  lw    $a2, 0x2c($sp)
/* 01D914 8001CD14 8FA50028 */  lw    $a1, 0x28($sp)
/* 01D918 8001CD18 0C0072FC */  jal   create_xy_rotation_matrix
/* 01D91C 8001CD1C AFA40018 */   sw    $a0, 0x18($sp)
/* 01D920 8001CD20 8FA40018 */  lw    $a0, 0x18($sp)
/* 01D924 8001CD24 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 01D928 8001CD28 E4840030 */  swc1  $f4, 0x30($a0)
/* 01D92C 8001CD2C C7A60020 */  lwc1  $f6, 0x20($sp)
/* 01D930 8001CD30 E4860034 */  swc1  $f6, 0x34($a0)
/* 01D934 8001CD34 C7A80024 */  lwc1  $f8, 0x24($sp)
/* 01D938 8001CD38 E4880038 */  swc1  $f8, 0x38($a0)
/* 01D93C 8001CD3C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01D940 8001CD40 27BD0018 */  addiu $sp, $sp, 0x18
/* 01D944 8001CD44 03E00008 */  jr    $ra
/* 01D948 8001CD48 00000000 */   nop   
.type func_8001CCFC, @function
.size func_8001CCFC, . - func_8001CCFC
