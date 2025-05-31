glabel create_yz_rotation_matrix
/* 01D640 8001CA40 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01D644 8001CA44 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01D648 8001CA48 AFB00018 */  sw    $s0, 0x18($sp)
/* 01D64C 8001CA4C AFA50034 */  sw    $a1, 0x34($sp)
/* 01D650 8001CA50 00808025 */  move  $s0, $a0
/* 01D654 8001CA54 AFA60038 */  sw    $a2, 0x38($sp)
/* 01D658 8001CA58 0C00B5B8 */  jal   sinf
/* 01D65C 8001CA5C C7AC0034 */   lwc1  $f12, 0x34($sp)
/* 01D660 8001CA60 E7A0002C */  swc1  $f0, 0x2c($sp)
/* 01D664 8001CA64 0C00D604 */  jal   cosf
/* 01D668 8001CA68 C7AC0034 */   lwc1  $f12, 0x34($sp)
/* 01D66C 8001CA6C C7AC0038 */  lwc1  $f12, 0x38($sp)
/* 01D670 8001CA70 0C00B5B8 */  jal   sinf
/* 01D674 8001CA74 E7A00024 */   swc1  $f0, 0x24($sp)
/* 01D678 8001CA78 C7AC0038 */  lwc1  $f12, 0x38($sp)
/* 01D67C 8001CA7C 0C00D604 */  jal   cosf
/* 01D680 8001CA80 E7A00028 */   swc1  $f0, 0x28($sp)
/* 01D684 8001CA84 C7A20024 */  lwc1  $f2, 0x24($sp)
/* 01D688 8001CA88 C7AE0028 */  lwc1  $f14, 0x28($sp)
/* 01D68C 8001CA8C C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 01D690 8001CA90 46001102 */  mul.s $f4, $f2, $f0
/* 01D694 8001CA94 44806000 */  mtc1  $zero, $f12
/* 01D698 8001CA98 E6000014 */  swc1  $f0, 0x14($s0)
/* 01D69C 8001CA9C 460E1182 */  mul.s $f6, $f2, $f14
/* 01D6A0 8001CAA0 E60C0038 */  swc1  $f12, 0x38($s0)
/* 01D6A4 8001CAA4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 01D6A8 8001CAA8 46008482 */  mul.s $f18, $f16, $f0
/* 01D6AC 8001CAAC E6040000 */  swc1  $f4, ($s0)
/* 01D6B0 8001CAB0 C6000038 */  lwc1  $f0, 0x38($s0)
/* 01D6B4 8001CAB4 460E8102 */  mul.s $f4, $f16, $f14
/* 01D6B8 8001CAB8 E6060004 */  swc1  $f6, 4($s0)
/* 01D6BC 8001CABC 44813000 */  mtc1  $at, $f6
/* 01D6C0 8001CAC0 46007287 */  neg.s $f10, $f14
/* 01D6C4 8001CAC4 46008207 */  neg.s $f8, $f16
/* 01D6C8 8001CAC8 E60A0010 */  swc1  $f10, 0x10($s0)
/* 01D6CC 8001CACC E6080008 */  swc1  $f8, 8($s0)
/* 01D6D0 8001CAD0 E6120020 */  swc1  $f18, 0x20($s0)
/* 01D6D4 8001CAD4 E6040024 */  swc1  $f4, 0x24($s0)
/* 01D6D8 8001CAD8 E6020028 */  swc1  $f2, 0x28($s0)
/* 01D6DC 8001CADC E60C0018 */  swc1  $f12, 0x18($s0)
/* 01D6E0 8001CAE0 E6000034 */  swc1  $f0, 0x34($s0)
/* 01D6E4 8001CAE4 E6000030 */  swc1  $f0, 0x30($s0)
/* 01D6E8 8001CAE8 E600002C */  swc1  $f0, 0x2c($s0)
/* 01D6EC 8001CAEC E600001C */  swc1  $f0, 0x1c($s0)
/* 01D6F0 8001CAF0 E600000C */  swc1  $f0, 0xc($s0)
/* 01D6F4 8001CAF4 E606003C */  swc1  $f6, 0x3c($s0)
/* 01D6F8 8001CAF8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01D6FC 8001CAFC 8FB00018 */  lw    $s0, 0x18($sp)
/* 01D700 8001CB00 27BD0030 */  addiu $sp, $sp, 0x30
/* 01D704 8001CB04 03E00008 */  jr    $ra
/* 01D708 8001CB08 00000000 */   nop   
.size create_yz_rotation_matrix, . - create_yz_rotation_matrix
