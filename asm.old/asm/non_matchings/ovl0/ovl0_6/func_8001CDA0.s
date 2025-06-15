glabel create_z_rotation_matrix
/* 01D9A0 8001CDA0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01D9A4 8001CDA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01D9A8 8001CDA8 AFA50024 */  sw    $a1, 0x24($sp)
/* 01D9AC 8001CDAC C7AC0024 */  lwc1  $f12, 0x24($sp)
/* 01D9B0 8001CDB0 0C00B5B8 */  jal   sinf
/* 01D9B4 8001CDB4 AFA40020 */   sw    $a0, 0x20($sp)
/* 01D9B8 8001CDB8 C7AC0024 */  lwc1  $f12, 0x24($sp)
/* 01D9BC 8001CDBC 0C00D604 */  jal   cosf
/* 01D9C0 8001CDC0 E7A0001C */   swc1  $f0, 0x1c($sp)
/* 01D9C4 8001CDC4 8FA40020 */  lw    $a0, 0x20($sp)
/* 01D9C8 8001CDC8 C7AE001C */  lwc1  $f14, 0x1c($sp)
/* 01D9CC 8001CDCC 44801000 */  mtc1  $zero, $f2
/* 01D9D0 8001CDD0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 01D9D4 8001CDD4 44813000 */  mtc1  $at, $f6
/* 01D9D8 8001CDD8 46007107 */  neg.s $f4, $f14
/* 01D9DC 8001CDDC E4800000 */  swc1  $f0, ($a0)
/* 01D9E0 8001CDE0 E486003C */  swc1  $f6, 0x3c($a0)
/* 01D9E4 8001CDE4 C488003C */  lwc1  $f8, 0x3c($a0)
/* 01D9E8 8001CDE8 E4840010 */  swc1  $f4, 0x10($a0)
/* 01D9EC 8001CDEC E4800014 */  swc1  $f0, 0x14($a0)
/* 01D9F0 8001CDF0 E48E0004 */  swc1  $f14, 4($a0)
/* 01D9F4 8001CDF4 E4820024 */  swc1  $f2, 0x24($a0)
/* 01D9F8 8001CDF8 E4820020 */  swc1  $f2, 0x20($a0)
/* 01D9FC 8001CDFC E4820018 */  swc1  $f2, 0x18($a0)
/* 01DA00 8001CE00 E4820008 */  swc1  $f2, 8($a0)
/* 01DA04 8001CE04 E4820038 */  swc1  $f2, 0x38($a0)
/* 01DA08 8001CE08 E4820034 */  swc1  $f2, 0x34($a0)
/* 01DA0C 8001CE0C E4820030 */  swc1  $f2, 0x30($a0)
/* 01DA10 8001CE10 E482002C */  swc1  $f2, 0x2c($a0)
/* 01DA14 8001CE14 E482001C */  swc1  $f2, 0x1c($a0)
/* 01DA18 8001CE18 E482000C */  swc1  $f2, 0xc($a0)
/* 01DA1C 8001CE1C E4880028 */  swc1  $f8, 0x28($a0)
/* 01DA20 8001CE20 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01DA24 8001CE24 27BD0020 */  addiu $sp, $sp, 0x20
/* 01DA28 8001CE28 03E00008 */  jr    $ra
/* 01DA2C 8001CE2C 00000000 */   nop   
.size create_z_rotation_matrix, . - create_z_rotation_matrix
