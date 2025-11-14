glabel create_y_rotation_matrix
/* 01DB00 8001CF00 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01DB04 8001CF04 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01DB08 8001CF08 AFA50024 */  sw    $a1, 0x24($sp)
/* 01DB0C 8001CF0C C7AC0024 */  lwc1  $f12, 0x24($sp)
/* 01DB10 8001CF10 0C00B5B8 */  jal   sinf
/* 01DB14 8001CF14 AFA40020 */   sw    $a0, 0x20($sp)
/* 01DB18 8001CF18 C7AC0024 */  lwc1  $f12, 0x24($sp)
/* 01DB1C 8001CF1C 0C00D604 */  jal   cosf
/* 01DB20 8001CF20 E7A0001C */   swc1  $f0, 0x1c($sp)
/* 01DB24 8001CF24 8FA40020 */  lw    $a0, 0x20($sp)
/* 01DB28 8001CF28 C7AE001C */  lwc1  $f14, 0x1c($sp)
/* 01DB2C 8001CF2C 44801000 */  mtc1  $zero, $f2
/* 01DB30 8001CF30 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 01DB34 8001CF34 44813000 */  mtc1  $at, $f6
/* 01DB38 8001CF38 46007107 */  neg.s $f4, $f14
/* 01DB3C 8001CF3C E4800000 */  swc1  $f0, ($a0)
/* 01DB40 8001CF40 E486003C */  swc1  $f6, 0x3c($a0)
/* 01DB44 8001CF44 C488003C */  lwc1  $f8, 0x3c($a0)
/* 01DB48 8001CF48 E4840008 */  swc1  $f4, 8($a0)
/* 01DB4C 8001CF4C E4800028 */  swc1  $f0, 0x28($a0)
/* 01DB50 8001CF50 E48E0020 */  swc1  $f14, 0x20($a0)
/* 01DB54 8001CF54 E4820024 */  swc1  $f2, 0x24($a0)
/* 01DB58 8001CF58 E4820010 */  swc1  $f2, 0x10($a0)
/* 01DB5C 8001CF5C E4820018 */  swc1  $f2, 0x18($a0)
/* 01DB60 8001CF60 E4820004 */  swc1  $f2, 4($a0)
/* 01DB64 8001CF64 E4820038 */  swc1  $f2, 0x38($a0)
/* 01DB68 8001CF68 E4820034 */  swc1  $f2, 0x34($a0)
/* 01DB6C 8001CF6C E4820030 */  swc1  $f2, 0x30($a0)
/* 01DB70 8001CF70 E482002C */  swc1  $f2, 0x2c($a0)
/* 01DB74 8001CF74 E482001C */  swc1  $f2, 0x1c($a0)
/* 01DB78 8001CF78 E482000C */  swc1  $f2, 0xc($a0)
/* 01DB7C 8001CF7C E4880014 */  swc1  $f8, 0x14($a0)
/* 01DB80 8001CF80 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01DB84 8001CF84 27BD0020 */  addiu $sp, $sp, 0x20
/* 01DB88 8001CF88 03E00008 */  jr    $ra
/* 01DB8C 8001CF8C 00000000 */   nop   
.size create_y_rotation_matrix, . - create_y_rotation_matrix
