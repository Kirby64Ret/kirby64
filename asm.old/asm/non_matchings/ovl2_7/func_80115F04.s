glabel func_80115F04
/* 09E974 80115F04 27BDFF90 */  addiu $sp, $sp, -0x70
/* 09E978 80115F08 AFBF001C */  sw    $ra, 0x1c($sp)
/* 09E97C 80115F0C AFB00018 */  sw    $s0, 0x18($sp)
/* 09E980 80115F10 8C8E004C */  lw    $t6, 0x4c($a0)
/* 09E984 80115F14 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 09E988 80115F18 AFAE006C */  sw    $t6, 0x6c($sp)
/* 09E98C 80115F1C 8C820000 */  lw    $v0, ($a0)
/* 09E990 80115F20 AFA40070 */  sw    $a0, 0x70($sp)
/* 09E994 80115F24 00028080 */  sll   $s0, $v0, 2
/* 09E998 80115F28 00300821 */  addu  $at, $at, $s0
/* 09E99C 80115F2C C42C4010 */ lwc1 $f12, %lo(gEntitiesAngleXArray)($at)
/* 09E9A0 80115F30 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 09E9A4 80115F34 00300821 */  addu  $at, $at, $s0
/* 09E9A8 80115F38 C42441D0 */ lwc1 $f4, %lo(gEntitiesAngleYArray)($at)
/* 09E9AC 80115F3C E7AC0048 */  swc1  $f12, 0x48($sp)
/* 09E9B0 80115F40 0C00B5B8 */  jal   sinf
/* 09E9B4 80115F44 E7A40044 */   swc1  $f4, 0x44($sp)
/* 09E9B8 80115F48 C7AC0048 */  lwc1  $f12, 0x48($sp)
/* 09E9BC 80115F4C 0C00D604 */  jal   cosf
/* 09E9C0 80115F50 E7A00040 */   swc1  $f0, 0x40($sp)
/* 09E9C4 80115F54 E7A0003C */  swc1  $f0, 0x3c($sp)
/* 09E9C8 80115F58 0C00B5B8 */  jal   sinf
/* 09E9CC 80115F5C C7AC0044 */   lwc1  $f12, 0x44($sp)
/* 09E9D0 80115F60 E7A00038 */  swc1  $f0, 0x38($sp)
/* 09E9D4 80115F64 0C00D604 */  jal   cosf
/* 09E9D8 80115F68 C7AC0044 */   lwc1  $f12, 0x44($sp)
/* 09E9DC 80115F6C C7A2003C */  lwc1  $f2, 0x3c($sp)
/* 09E9E0 80115F70 C7A60038 */  lwc1  $f6, 0x38($sp)
/* 09E9E4 80115F74 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 09E9E8 80115F78 27A4004C */  addiu $a0, $sp, 0x4c
/* 09E9EC 80115F7C 46061202 */  mul.s $f8, $f2, $f6
/* 09E9F0 80115F80 46005487 */  neg.s $f18, $f10
/* 09E9F4 80115F84 46001102 */  mul.s $f4, $f2, $f0
/* 09E9F8 80115F88 E7B2005C */  swc1  $f18, 0x5c($sp)
/* 09E9FC 80115F8C E7A80058 */  swc1  $f8, 0x58($sp)
/* 09EA00 80115F90 0C0478C7 */  jal   func_8011E31C
/* 09EA04 80115F94 E7A40060 */   swc1  $f4, 0x60($sp)
/* 09EA08 80115F98 3C018013 */  lui   $at, %hi(D_80128CF4) # $at, 0x8013
/* 09EA0C 80115F9C C4208CF4 */  lwc1  $f0, %lo(D_80128CF4)($at)
/* 09EA10 80115FA0 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 09EA14 80115FA4 00300821 */  addu  $at, $at, $s0
/* 09EA18 80115FA8 C42825D0 */ lwc1 $f8, %lo(gEntitiesNextPosXArray)($at)
/* 09EA1C 80115FAC C7A6004C */  lwc1  $f6, 0x4c($sp)
/* 09EA20 80115FB0 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 09EA24 80115FB4 C7B20058 */  lwc1  $f18, 0x58($sp)
/* 09EA28 80115FB8 46083281 */  sub.s $f10, $f6, $f8
/* 09EA2C 80115FBC 00300821 */  addu  $at, $at, $s0
/* 09EA30 80115FC0 C4282790 */ lwc1 $f8, %lo(gEntitiesNextPosYArray)($at)
/* 09EA34 80115FC4 C7A60050 */  lwc1  $f6, 0x50($sp)
/* 09EA38 80115FC8 460A9102 */  mul.s $f4, $f18, $f10
/* 09EA3C 80115FCC C7AA005C */  lwc1  $f10, 0x5c($sp)
/* 09EA40 80115FD0 46083481 */  sub.s $f18, $f6, $f8
/* 09EA44 80115FD4 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 09EA48 80115FD8 00300821 */  addu  $at, $at, $s0
/* 09EA4C 80115FDC 3C0F800F */  lui   $t7, %hi(D_800EA6E0) # $t7, 0x800f
/* 09EA50 80115FE0 46125182 */  mul.s $f6, $f10, $f18
/* 09EA54 80115FE4 C4322950 */ lwc1 $f18, %lo(gEntitiesNextPosZArray)($at)
/* 09EA58 80115FE8 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 09EA5C 80115FEC 3C018013 */  lui   $at, %hi(D_80128CF8) # $at, 0x8013
/* 09EA60 80115FF0 25EFA6E0 */  addiu $t7, %lo(D_800EA6E0) # addiu $t7, $t7, -0x5920
/* 09EA64 80115FF4 020F1021 */  addu  $v0, $s0, $t7
/* 09EA68 80115FF8 8FB80070 */  lw    $t8, 0x70($sp)
/* 09EA6C 80115FFC 46062200 */  add.s $f8, $f4, $f6
/* 09EA70 80116000 C7A60060 */  lwc1  $f6, 0x60($sp)
/* 09EA74 80116004 8F03003C */  lw    $v1, 0x3c($t8)
/* 09EA78 80116008 46125101 */  sub.s $f4, $f10, $f18
/* 09EA7C 8011600C 24630030 */  addiu $v1, $v1, 0x30
/* 09EA80 80116010 46062282 */  mul.s $f10, $f4, $f6
/* 09EA84 80116014 C4248CF8 */  lwc1  $f4, %lo(D_80128CF8)($at)
/* 09EA88 80116018 3C018013 */  lui   $at, %hi(D_80128CFC) # $at, 0x8013
/* 09EA8C 8011601C 46085480 */  add.s $f18, $f10, $f8
/* 09EA90 80116020 C44A0000 */  lwc1  $f10, ($v0)
/* 09EA94 80116024 46049182 */  mul.s $f6, $f18, $f4
/* 09EA98 80116028 460A3080 */  add.s $f2, $f6, $f10
/* 09EA9C 8011602C 4602003C */  c.lt.s $f0, $f2
/* 09EAA0 80116030 00000000 */  nop   
/* 09EAA4 80116034 45000003 */  bc1f  .L80116044_ovl2
/* 09EAA8 80116038 00000000 */   nop   
/* 09EAAC 8011603C 10000007 */  b     .L8011605C_ovl2
/* 09EAB0 80116040 46000086 */   mov.s $f2, $f0
.L80116044_ovl2:
/* 09EAB4 80116044 C4208CFC */  lwc1  $f0, %lo(D_80128CFC)($at)
/* 09EAB8 80116048 4600103C */  c.lt.s $f2, $f0
/* 09EABC 8011604C 00000000 */  nop   
/* 09EAC0 80116050 45020003 */  bc1fl .L80116060_ovl2
/* 09EAC4 80116054 C4680000 */   lwc1  $f8, ($v1)
/* 09EAC8 80116058 46000086 */  mov.s $f2, $f0
.L8011605C_ovl2:
/* 09EACC 8011605C C4680000 */  lwc1  $f8, ($v1)
.L80116060_ovl2:
/* 09EAD0 80116060 44807000 */  mtc1  $zero, $f14
/* 09EAD4 80116064 3C018013 */  lui   $at, %hi(D_80128D00) # $at, 0x8013
/* 09EAD8 80116068 46024000 */  add.s $f0, $f8, $f2
/* 09EADC 8011606C 460E003C */  c.lt.s $f0, $f14
/* 09EAE0 80116070 00000000 */  nop   
/* 09EAE4 80116074 45020004 */  bc1fl .L80116088_ovl2
/* 09EAE8 80116078 46000306 */   mov.s $f12, $f0
/* 09EAEC 8011607C 10000002 */  b     .L80116088_ovl2
/* 09EAF0 80116080 46000307 */   neg.s $f12, $f0
/* 09EAF4 80116084 46000306 */  mov.s $f12, $f0
.L80116088_ovl2:
/* 09EAF8 80116088 C4308D00 */  lwc1  $f16, %lo(D_80128D00)($at)
/* 09EAFC 8011608C 460C803C */  c.lt.s $f16, $f12
/* 09EB00 80116090 00000000 */  nop   
/* 09EB04 80116094 4502000A */  bc1fl .L801160C0_ovl2
/* 09EB08 80116098 E4420000 */   swc1  $f2, ($v0)
/* 09EB0C 8011609C 4600703C */  c.lt.s $f14, $f0
/* 09EB10 801160A0 3C018013 */  lui   $at, %hi(D_80128D04) # $at, 0x8013
/* 09EB14 801160A4 46007086 */  mov.s $f2, $f14
/* 09EB18 801160A8 45000003 */  bc1f  .L801160B8_ovl2
/* 09EB1C 801160AC 00000000 */   nop   
/* 09EB20 801160B0 10000002 */  b     .L801160BC_ovl2
/* 09EB24 801160B4 46008006 */   mov.s $f0, $f16
.L801160B8_ovl2:
/* 09EB28 801160B8 C4208D04 */  lwc1  $f0, %lo(D_80128D04)($at)
.L801160BC_ovl2:
/* 09EB2C 801160BC E4420000 */  swc1  $f2, ($v0)
.L801160C0_ovl2:
/* 09EB30 801160C0 0C047891 */  jal   func_8011E244
/* 09EB34 801160C4 E4600000 */   swc1  $f0, ($v1)
/* 09EB38 801160C8 8FB9006C */  lw    $t9, 0x6c($sp)
/* 09EB3C 801160CC 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 09EB40 801160D0 93280000 */  lbu   $t0, ($t9)
/* 09EB44 801160D4 10480009 */  beq   $v0, $t0, .L801160FC_ovl2
/* 09EB48 801160D8 00000000 */   nop   
/* 09EB4C 801160DC 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 09EB50 801160E0 3C098011 */  lui   $t1, %hi(D_80116118) # $t1, 0x8011
/* 09EB54 801160E4 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09EB58 801160E8 8D4B0000 */  lw    $t3, ($t2)
/* 09EB5C 801160EC 25296118 */  addiu $t1, %lo(D_80116118) # addiu $t1, $t1, 0x6118
/* 09EB60 801160F0 000B6080 */  sll   $t4, $t3, 2
/* 09EB64 801160F4 002C0821 */  addu  $at, $at, $t4
/* 09EB68 801160F8 AC29EF90 */ sw $t1, %lo(D_800DEF90)($at)
.L801160FC_ovl2:
/* 09EB6C 801160FC 0C044AD3 */  jal   func_80112B4C
/* 09EB70 80116100 8FA40070 */   lw    $a0, 0x70($sp)
/* 09EB74 80116104 8FBF001C */  lw    $ra, 0x1c($sp)
/* 09EB78 80116108 8FB00018 */  lw    $s0, 0x18($sp)
/* 09EB7C 8011610C 27BD0070 */  addiu $sp, $sp, 0x70
/* 09EB80 80116110 03E00008 */  jr    $ra
/* 09EB84 80116114 00000000 */   nop   
.type func_80115F04, @function
.size func_80115F04, . - func_80115F04
