glabel func_801072E0
/* 08FD50 801072E0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 08FD54 801072E4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 08FD58 801072E8 AFB10028 */  sw    $s1, 0x28($sp)
/* 08FD5C 801072EC AFB00024 */  sw    $s0, 0x24($sp)
/* 08FD60 801072F0 C4840028 */  lwc1  $f4, 0x28($a0)
/* 08FD64 801072F4 00A08825 */  move  $s1, $a1
/* 08FD68 801072F8 44800000 */  mtc1  $zero, $f0
/* 08FD6C 801072FC E7A4004C */  swc1  $f4, 0x4c($sp)
/* 08FD70 80107300 C4860044 */  lwc1  $f6, 0x44($a0)
/* 08FD74 80107304 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 08FD78 80107308 3C0E8013 */  lui   $t6, %hi(D_8012BD34) # $t6, 0x8013
/* 08FD7C 8010730C E7A60050 */  swc1  $f6, 0x50($sp)
/* 08FD80 80107310 C4880030 */  lwc1  $f8, 0x30($a0)
/* 08FD84 80107314 25CEBD34 */  addiu $t6, %lo(D_8012BD34) # addiu $t6, $t6, -0x42cc
/* 08FD88 80107318 262F0018 */  addiu $t7, $s1, 0x18
/* 08FD8C 8010731C E7A80054 */  swc1  $f8, 0x54($sp)
/* 08FD90 80107320 C48A0004 */  lwc1  $f10, 4($a0)
/* 08FD94 80107324 44814000 */  mtc1  $at, $f8
/* 08FD98 80107328 26380014 */  addiu $t8, $s1, 0x14
/* 08FD9C 8010732C E7AA0040 */  swc1  $f10, 0x40($sp)
/* 08FDA0 80107330 C4920014 */  lwc1  $f18, 0x14($a0)
/* 08FDA4 80107334 C4900008 */  lwc1  $f16, 8($a0)
/* 08FDA8 80107338 26390010 */  addiu $t9, $s1, 0x10
/* 08FDAC 8010733C 27A50040 */  addiu $a1, $sp, 0x40
/* 08FDB0 80107340 46128100 */  add.s $f4, $f16, $f18
/* 08FDB4 80107344 27A60034 */  addiu $a2, $sp, 0x34
/* 08FDB8 80107348 27A70058 */  addiu $a3, $sp, 0x58
/* 08FDBC 8010734C E7A40044 */  swc1  $f4, 0x44($sp)
/* 08FDC0 80107350 C486000C */  lwc1  $f6, 0xc($a0)
/* 08FDC4 80107354 AFB9001C */  sw    $t9, 0x1c($sp)
/* 08FDC8 80107358 AFB80018 */  sw    $t8, 0x18($sp)
/* 08FDCC 8010735C AFAF0014 */  sw    $t7, 0x14($sp)
/* 08FDD0 80107360 AFAE0010 */  sw    $t6, 0x10($sp)
/* 08FDD4 80107364 27A4004C */  addiu $a0, $sp, 0x4c
/* 08FDD8 80107368 E7A00034 */  swc1  $f0, 0x34($sp)
/* 08FDDC 8010736C E7A0003C */  swc1  $f0, 0x3c($sp)
/* 08FDE0 80107370 E7A80038 */  swc1  $f8, 0x38($sp)
/* 08FDE4 80107374 0C040E7A */  jal   func_801039E8
/* 08FDE8 80107378 E7A60048 */   swc1  $f6, 0x48($sp)
/* 08FDEC 8010737C 5040000C */  beql  $v0, $zero, .L801073B0_ovl2
/* 08FDF0 80107380 00001025 */   move  $v0, $zero
/* 08FDF4 80107384 8E280000 */  lw    $t0, ($s1)
/* 08FDF8 80107388 962D0000 */  lhu   $t5, ($s1)
/* 08FDFC 8010738C 24020001 */  li    $v0, 1
/* 08FE00 80107390 00084CC2 */  srl   $t1, $t0, 0x13
/* 08FE04 80107394 352A0040 */  ori   $t2, $t1, 0x40
/* 08FE08 80107398 000A60C0 */  sll   $t4, $t2, 3
/* 08FE0C 8010739C 31AE0007 */  andi  $t6, $t5, 7
/* 08FE10 801073A0 018E7825 */  or    $t7, $t4, $t6
/* 08FE14 801073A4 10000002 */  b     .L801073B0_ovl2
/* 08FE18 801073A8 A62F0000 */   sh    $t7, ($s1)
/* 08FE1C 801073AC 00001025 */  move  $v0, $zero
.L801073B0_ovl2:
/* 08FE20 801073B0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 08FE24 801073B4 8FB00024 */  lw    $s0, 0x24($sp)
/* 08FE28 801073B8 8FB10028 */  lw    $s1, 0x28($sp)
/* 08FE2C 801073BC 03E00008 */  jr    $ra
/* 08FE30 801073C0 27BD0060 */   addiu $sp, $sp, 0x60
.type func_801072E0, @function
.size func_801072E0, . - func_801072E0