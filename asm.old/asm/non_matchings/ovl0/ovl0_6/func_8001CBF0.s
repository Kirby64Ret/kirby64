glabel create_xy_rotation_matrix
/* 01D7F0 8001CBF0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01D7F4 8001CBF4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01D7F8 8001CBF8 AFB00018 */  sw    $s0, 0x18($sp)
/* 01D7FC 8001CBFC AFA50034 */  sw    $a1, 0x34($sp)
/* 01D800 8001CC00 00808025 */  move  $s0, $a0
/* 01D804 8001CC04 AFA60038 */  sw    $a2, 0x38($sp)
/* 01D808 8001CC08 0C00B5B8 */  jal   sinf
/* 01D80C 8001CC0C C7AC0034 */   lwc1  $f12, 0x34($sp)
/* 01D810 8001CC10 E7A0002C */  swc1  $f0, 0x2c($sp)
/* 01D814 8001CC14 0C00D604 */  jal   cosf
/* 01D818 8001CC18 C7AC0034 */   lwc1  $f12, 0x34($sp)
/* 01D81C 8001CC1C C7AC0038 */  lwc1  $f12, 0x38($sp)
/* 01D820 8001CC20 0C00B5B8 */  jal   sinf
/* 01D824 8001CC24 E7A00024 */   swc1  $f0, 0x24($sp)
/* 01D828 8001CC28 C7AC0038 */  lwc1  $f12, 0x38($sp)
/* 01D82C 8001CC2C 0C00D604 */  jal   cosf
/* 01D830 8001CC30 E7A00028 */   swc1  $f0, 0x28($sp)
/* 01D834 8001CC34 C7AE0028 */  lwc1  $f14, 0x28($sp)
/* 01D838 8001CC38 C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 01D83C 8001CC3C C7A20024 */  lwc1  $f2, 0x24($sp)
/* 01D840 8001CC40 44806000 */  mtc1  $zero, $f12
/* 01D844 8001CC44 46107182 */  mul.s $f6, $f14, $f16
/* 01D848 8001CC48 46007107 */  neg.s $f4, $f14
/* 01D84C 8001CC4C E6000000 */  swc1  $f0, ($s0)
/* 01D850 8001CC50 46100202 */  mul.s $f8, $f0, $f16
/* 01D854 8001CC54 E6040008 */  swc1  $f4, 8($s0)
/* 01D858 8001CC58 E60C0038 */  swc1  $f12, 0x38($s0)
/* 01D85C 8001CC5C 46027282 */  mul.s $f10, $f14, $f2
/* 01D860 8001CC60 E6060010 */  swc1  $f6, 0x10($s0)
/* 01D864 8001CC64 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 01D868 8001CC68 46020102 */  mul.s $f4, $f0, $f2
/* 01D86C 8001CC6C C6000038 */  lwc1  $f0, 0x38($s0)
/* 01D870 8001CC70 44813000 */  mtc1  $at, $f6
/* 01D874 8001CC74 46008487 */  neg.s $f18, $f16
/* 01D878 8001CC78 E6080018 */  swc1  $f8, 0x18($s0)
/* 01D87C 8001CC7C E60A0020 */  swc1  $f10, 0x20($s0)
/* 01D880 8001CC80 E6120024 */  swc1  $f18, 0x24($s0)
/* 01D884 8001CC84 E6040028 */  swc1  $f4, 0x28($s0)
/* 01D888 8001CC88 E6020014 */  swc1  $f2, 0x14($s0)
/* 01D88C 8001CC8C E60C0004 */  swc1  $f12, 4($s0)
/* 01D890 8001CC90 E6000034 */  swc1  $f0, 0x34($s0)
/* 01D894 8001CC94 E6000030 */  swc1  $f0, 0x30($s0)
/* 01D898 8001CC98 E600002C */  swc1  $f0, 0x2c($s0)
/* 01D89C 8001CC9C E600001C */  swc1  $f0, 0x1c($s0)
/* 01D8A0 8001CCA0 E600000C */  swc1  $f0, 0xc($s0)
/* 01D8A4 8001CCA4 E606003C */  swc1  $f6, 0x3c($s0)
/* 01D8A8 8001CCA8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01D8AC 8001CCAC 8FB00018 */  lw    $s0, 0x18($sp)
/* 01D8B0 8001CCB0 27BD0030 */  addiu $sp, $sp, 0x30
/* 01D8B4 8001CCB4 03E00008 */  jr    $ra
/* 01D8B8 8001CCB8 00000000 */   nop   
.size create_xy_rotation_matrix, . - create_xy_rotation_matrix
