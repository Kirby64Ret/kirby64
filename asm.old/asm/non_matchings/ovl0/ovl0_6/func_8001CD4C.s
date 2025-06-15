glabel func_8001CD4C
/* 01D94C 8001CD4C 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 01D950 8001CD50 44856000 */  mtc1  $a1, $f12
/* 01D954 8001CD54 44867000 */  mtc1  $a2, $f14
/* 01D958 8001CD58 C7A40070 */  lwc1  $f4, 0x70($sp)
/* 01D95C 8001CD5C C7A60074 */  lwc1  $f6, 0x74($sp)
/* 01D960 8001CD60 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01D964 8001CD64 AFA40060 */  sw    $a0, 0x60($sp)
/* 01D968 8001CD68 44056000 */  mfc1  $a1, $f12
/* 01D96C 8001CD6C 44067000 */  mfc1  $a2, $f14
/* 01D970 8001CD70 AFA7006C */  sw    $a3, 0x6c($sp)
/* 01D974 8001CD74 27A40020 */  addiu $a0, $sp, 0x20
/* 01D978 8001CD78 E7A40010 */  swc1  $f4, 0x10($sp)
/* 01D97C 8001CD7C 0C00733F */  jal   func_8001CCFC
/* 01D980 8001CD80 E7A60014 */   swc1  $f6, 0x14($sp)
/* 01D984 8001CD84 27A40020 */  addiu $a0, $sp, 0x20
/* 01D988 8001CD88 0C006718 */  jal   func_80019C60
/* 01D98C 8001CD8C 8FA50060 */   lw    $a1, 0x60($sp)
/* 01D990 8001CD90 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01D994 8001CD94 27BD0060 */  addiu $sp, $sp, 0x60
/* 01D998 8001CD98 03E00008 */  jr    $ra
/* 01D99C 8001CD9C 00000000 */   nop   
.type func_8001CD4C, @function
.size func_8001CD4C, . - func_8001CD4C
