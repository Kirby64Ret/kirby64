glabel func_8000B988
/* 00C588 8000B988 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00C58C 8000B98C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00C590 8000B990 AFB00018 */  sw    $s0, 0x18($sp)
/* 00C594 8000B994 8C90003C */  lw    $s0, 0x3c($a0)
/* 00C598 8000B998 52000008 */  beql  $s0, $zero, .L8000B9BC_ovl0
/* 00C59C 8000B99C 8FBF001C */   lw    $ra, 0x1c($sp)
.L8000B9A0_ovl0:
/* 00C5A0 8000B9A0 0C0026D7 */  jal   func_80009B5C_ovl0
/* 00C5A4 8000B9A4 02002025 */   move  $a0, $s0
/* 00C5A8 8000B9A8 0C002FA4 */  jal   func_8000BE90_ovl0
/* 00C5AC 8000B9AC 02002025 */   move  $a0, $s0
/* 00C5B0 8000B9B0 1440FFFB */  bnez  $v0, .L8000B9A0_ovl0
/* 00C5B4 8000B9B4 00408025 */   move  $s0, $v0
/* 00C5B8 8000B9B8 8FBF001C */  lw    $ra, 0x1c($sp)
.L8000B9BC_ovl0:
/* 00C5BC 8000B9BC 8FB00018 */  lw    $s0, 0x18($sp)
/* 00C5C0 8000B9C0 27BD0020 */  addiu $sp, $sp, 0x20
/* 00C5C4 8000B9C4 03E00008 */  jr    $ra
/* 00C5C8 8000B9C8 00000000 */   nop   
