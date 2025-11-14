glabel func_801DF290_ovl14 # 49
/* 201E80 801DF290 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 201E84 801DF294 AFBF001C */  sw          $ra, 0x1C($sp)
/* 201E88 801DF298 AFB00018 */  sw          $s0, 0x18($sp)
/* 201E8C 801DF29C 2404001A */  addiu       $a0, $zero, 0x1A
/* 201E90 801DF2A0 2405000E */  addiu       $a1, $zero, 0xE
/* 201E94 801DF2A4 0C02BB02 */  jal         request_track_general
/* 201E98 801DF2A8 24060050 */   addiu      $a2, $zero, 0x50
/* 201E9C 801DF2AC 2841001E */  slti        $at, $v0, 0x1E
/* 201EA0 801DF2B0 10200004 */  beqz        $at, .L801DF2C4
/* 201EA4 801DF2B4 00408025 */   move       $s0, $v0
/* 201EA8 801DF2B8 2401FFFF */  addiu       $at, $zero, -0x1
/* 201EAC 801DF2BC 14410009 */  bne         $v0, $at, .L801DF2E4
/* 201EB0 801DF2C0 3C05800E */   lui        $a1, %hi(gEntitiesNextPosXArray)
.L801DF2C4:
/* 201EB4 801DF2C4 3C04801E */  lui         $a0, %hi(D_801E3054_ovl14)
/* 201EB8 801DF2C8 24843054 */  addiu       $a0, $a0, %lo(D_801E3054_ovl14)
/* 201EBC 801DF2CC 0C02909C */  jal         print_error_stub
/* 201EC0 801DF2D0 02002825 */   move       $a1, $s0
/* 201EC4 801DF2D4 0C02C640 */  jal         func_800B1900
/* 201EC8 801DF2D8 3204FFFF */   andi       $a0, $s0, 0xFFFF
/* 201ECC 801DF2DC 10000088 */  b           .L801DF500
/* 201ED0 801DF2E0 2402FFFF */   addiu      $v0, $zero, -0x1
.L801DF2E4:
/* 201ED4 801DF2E4 3C01800E */  lui         $at, %hi(D_800E76C0)
/* 201ED8 801DF2E8 00300821 */  addu        $at, $at, $s0
/* 201EDC 801DF2EC 240E00FF */  addiu       $t6, $zero, 0xFF
/* 201EE0 801DF2F0 A02E76C0 */  sb          $t6, %lo(D_800E76C0)($at)
/* 201EE4 801DF2F4 3C01800E */  lui         $at, %hi(D_800E7730)
/* 201EE8 801DF2F8 00300821 */  addu        $at, $at, $s0
/* 201EEC 801DF2FC 240F0004 */  addiu       $t7, $zero, 0x4
/* 201EF0 801DF300 A02F7730 */  sb          $t7, %lo(D_800E7730)($at)
/* 201EF4 801DF304 3C01800E */  lui         $at, %hi(D_800E77A0)
/* 201EF8 801DF308 0010C840 */  sll         $t9, $s0, 1
/* 201EFC 801DF30C 00390821 */  addu        $at, $at, $t9
/* 201F00 801DF310 2418002D */  addiu       $t8, $zero, 0x2D
/* 201F04 801DF314 A43877A0 */  sh          $t8, %lo(D_800E77A0)($at)
/* 201F08 801DF318 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 201F0C 801DF31C 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 201F10 801DF320 3C01800E */  lui         $at, %hi(D_800E7880)
/* 201F14 801DF324 00300821 */  addu        $at, $at, $s0
/* 201F18 801DF328 A0207880 */  sb          $zero, %lo(D_800E7880)($at)
/* 201F1C 801DF32C 8C480000 */  lw          $t0, 0x0($v0)
/* 201F20 801DF330 24A525D0 */  addiu       $a1, $a1, %lo(gEntitiesNextPosXArray)
/* 201F24 801DF334 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 201F28 801DF338 00084880 */  sll         $t1, $t0, 2
/* 201F2C 801DF33C 00A95021 */  addu        $t2, $a1, $t1
/* 201F30 801DF340 C5400000 */  lwc1        $f0, 0x0($t2)
/* 201F34 801DF344 00101880 */  sll         $v1, $s0, 2
/* 201F38 801DF348 00230821 */  addu        $at, $at, $v1
/* 201F3C 801DF34C 00A35821 */  addu        $t3, $a1, $v1
/* 201F40 801DF350 E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 201F44 801DF354 E5600000 */  swc1        $f0, 0x0($t3)
/* 201F48 801DF358 8C4C0000 */  lw          $t4, 0x0($v0)
/* 201F4C 801DF35C 3C06800E */  lui         $a2, %hi(gEntitiesNextPosYArray)
/* 201F50 801DF360 24C62790 */  addiu       $a2, $a2, %lo(gEntitiesNextPosYArray)
/* 201F54 801DF364 000C6880 */  sll         $t5, $t4, 2
/* 201F58 801DF368 00CD7021 */  addu        $t6, $a2, $t5
/* 201F5C 801DF36C 3C0143B4 */  lui         $at, (0x43B40000 >> 16)
/* 201F60 801DF370 44813000 */  mtc1        $at, $f6
/* 201F64 801DF374 C5C40000 */  lwc1        $f4, 0x0($t6)
/* 201F68 801DF378 3C01800E */  lui         $at, %hi(gEntitiesPosYArray)
/* 201F6C 801DF37C 00230821 */  addu        $at, $at, $v1
/* 201F70 801DF380 46062000 */  add.s       $f0, $f4, $f6
/* 201F74 801DF384 00C37821 */  addu        $t7, $a2, $v1
/* 201F78 801DF388 3C07800E */  lui         $a3, %hi(gEntitiesNextPosZArray)
/* 201F7C 801DF38C 24E72950 */  addiu       $a3, $a3, %lo(gEntitiesNextPosZArray)
/* 201F80 801DF390 E4202CD0 */  swc1        $f0, %lo(gEntitiesPosYArray)($at)
/* 201F84 801DF394 E5E00000 */  swc1        $f0, 0x0($t7)
/* 201F88 801DF398 8C580000 */  lw          $t8, 0x0($v0)
/* 201F8C 801DF39C 3C01800E */  lui         $at, %hi(gEntitiesPosZArray)
/* 201F90 801DF3A0 00230821 */  addu        $at, $at, $v1
/* 201F94 801DF3A4 0018C880 */  sll         $t9, $t8, 2
/* 201F98 801DF3A8 00F94021 */  addu        $t0, $a3, $t9
/* 201F9C 801DF3AC C5000000 */  lwc1        $f0, 0x0($t0)
/* 201FA0 801DF3B0 00E34821 */  addu        $t1, $a3, $v1
/* 201FA4 801DF3B4 3C0E800E */  lui         $t6, %hi(D_800E5F90)
/* 201FA8 801DF3B8 E4202E90 */  swc1        $f0, %lo(gEntitiesPosZArray)($at)
/* 201FAC 801DF3BC E5200000 */  swc1        $f0, 0x0($t1)
/* 201FB0 801DF3C0 8C4A0000 */  lw          $t2, 0x0($v0)
/* 201FB4 801DF3C4 3C01800F */  lui         $at, %hi(D_800E8E60)
/* 201FB8 801DF3C8 24040010 */  addiu       $a0, $zero, 0x10
/* 201FBC 801DF3CC 000A5880 */  sll         $t3, $t2, 2
/* 201FC0 801DF3D0 002B0821 */  addu        $at, $at, $t3
/* 201FC4 801DF3D4 AC208E60 */  sw          $zero, %lo(D_800E8E60)($at)
/* 201FC8 801DF3D8 8C4C0000 */  lw          $t4, 0x0($v0)
/* 201FCC 801DF3DC 3C01800E */  lui         $at, %hi(D_800E6BD0)
/* 201FD0 801DF3E0 000C6880 */  sll         $t5, $t4, 2
/* 201FD4 801DF3E4 01CD7021 */  addu        $t6, $t6, $t5
/* 201FD8 801DF3E8 8DCE5F90 */  lw          $t6, %lo(D_800E5F90)($t6)
/* 201FDC 801DF3EC AFAE0030 */  sw          $t6, 0x30($sp)
/* 201FE0 801DF3F0 8C4F0000 */  lw          $t7, 0x0($v0)
/* 201FE4 801DF3F4 AFA30024 */  sw          $v1, 0x24($sp)
/* 201FE8 801DF3F8 000FC080 */  sll         $t8, $t7, 2
/* 201FEC 801DF3FC 00380821 */  addu        $at, $at, $t8
/* 201FF0 801DF400 C4286BD0 */  lwc1        $f8, %lo(D_800E6BD0)($at)
/* 201FF4 801DF404 0C006291 */  jal         random_soft_s32_range
/* 201FF8 801DF408 E7A80034 */   swc1       $f8, 0x34($sp)
/* 201FFC 801DF40C 2459FFFF */  addiu       $t9, $v0, -0x1
/* 202000 801DF410 44995000 */  mtc1        $t9, $f10
/* 202004 801DF414 3C088005 */  lui         $t0, %hi(D_8004A7C4)
/* 202008 801DF418 8D08A7C4 */  lw          $t0, %lo(D_8004A7C4)($t0)
/* 20200C 801DF41C 46805420 */  cvt.s.w     $f16, $f10
/* 202010 801DF420 3C014220 */  lui         $at, (0x42200000 >> 16)
/* 202014 801DF424 44819000 */  mtc1        $at, $f18
/* 202018 801DF428 8D090000 */  lw          $t1, 0x0($t0)
/* 20201C 801DF42C 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 202020 801DF430 27A40030 */  addiu       $a0, $sp, 0x30
/* 202024 801DF434 46128102 */  mul.s       $f4, $f16, $f18
/* 202028 801DF438 00095080 */  sll         $t2, $t1, 2
/* 20202C 801DF43C 002A0821 */  addu        $at, $at, $t2
/* 202030 801DF440 C4266A10 */  lwc1        $f6, %lo(D_800E6A10)($at)
/* 202034 801DF444 46043002 */  mul.s       $f0, $f6, $f4
/* 202038 801DF448 44050000 */  mfc1        $a1, $f0
/* 20203C 801DF44C 0C03E622 */  jal         func_800F9888
/* 202040 801DF450 00000000 */   nop
/* 202044 801DF454 14400010 */  bnez        $v0, .L801DF498
/* 202048 801DF458 8FA30024 */   lw         $v1, 0x24($sp)
/* 20204C 801DF45C 8FA20030 */  lw          $v0, 0x30($sp)
/* 202050 801DF460 3C01800E */  lui         $at, %hi(D_800E6150)
/* 202054 801DF464 00230821 */  addu        $at, $at, $v1
/* 202058 801DF468 AC226150 */  sw          $v0, %lo(D_800E6150)($at)
/* 20205C 801DF46C 3C01800E */  lui         $at, %hi(D_800E5F90)
/* 202060 801DF470 00230821 */  addu        $at, $at, $v1
/* 202064 801DF474 C7A00034 */  lwc1        $f0, 0x34($sp)
/* 202068 801DF478 AC225F90 */  sw          $v0, %lo(D_800E5F90)($at)
/* 20206C 801DF47C 3C01800E */  lui         $at, %hi(D_800E6D90)
/* 202070 801DF480 00230821 */  addu        $at, $at, $v1
/* 202074 801DF484 E4206D90 */  swc1        $f0, %lo(D_800E6D90)($at)
/* 202078 801DF488 3C01800E */  lui         $at, %hi(D_800E6BD0)
/* 20207C 801DF48C 00230821 */  addu        $at, $at, $v1
/* 202080 801DF490 10000013 */  b           .L801DF4E0
/* 202084 801DF494 E4206BD0 */   swc1       $f0, %lo(D_800E6BD0)($at)
.L801DF498:
/* 202088 801DF498 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 20208C 801DF49C 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 202090 801DF4A0 3C04800E */  lui         $a0, %hi(D_800E5F90)
/* 202094 801DF4A4 24845F90 */  addiu       $a0, $a0, %lo(D_800E5F90)
/* 202098 801DF4A8 8C4B0000 */  lw          $t3, 0x0($v0)
/* 20209C 801DF4AC 00837821 */  addu        $t7, $a0, $v1
/* 2020A0 801DF4B0 3C05800E */  lui         $a1, %hi(D_800E6BD0)
/* 2020A4 801DF4B4 000B6080 */  sll         $t4, $t3, 2
/* 2020A8 801DF4B8 008C6821 */  addu        $t5, $a0, $t4
/* 2020AC 801DF4BC 8DAE0000 */  lw          $t6, 0x0($t5)
/* 2020B0 801DF4C0 24A56BD0 */  addiu       $a1, $a1, %lo(D_800E6BD0)
/* 2020B4 801DF4C4 00A34821 */  addu        $t1, $a1, $v1
/* 2020B8 801DF4C8 ADEE0000 */  sw          $t6, 0x0($t7)
/* 2020BC 801DF4CC 8C580000 */  lw          $t8, 0x0($v0)
/* 2020C0 801DF4D0 0018C880 */  sll         $t9, $t8, 2
/* 2020C4 801DF4D4 00B94021 */  addu        $t0, $a1, $t9
/* 2020C8 801DF4D8 C5080000 */  lwc1        $f8, 0x0($t0)
/* 2020CC 801DF4DC E5280000 */  swc1        $f8, 0x0($t1)
.L801DF4E0:
/* 2020D0 801DF4E0 24040003 */  addiu       $a0, $zero, 0x3
/* 2020D4 801DF4E4 0C006291 */  jal         random_soft_s32_range
/* 2020D8 801DF4E8 AFA30024 */   sw         $v1, 0x24($sp)
/* 2020DC 801DF4EC 8FA30024 */  lw          $v1, 0x24($sp)
/* 2020E0 801DF4F0 3C01800F */  lui         $at, %hi(D_800EC2E0)
/* 2020E4 801DF4F4 00230821 */  addu        $at, $at, $v1
/* 2020E8 801DF4F8 AC22C2E0 */  sw          $v0, %lo(D_800EC2E0)($at)
/* 2020EC 801DF4FC 02001025 */  move        $v0, $s0
.L801DF500:
/* 2020F0 801DF500 8FBF001C */  lw          $ra, 0x1C($sp)
/* 2020F4 801DF504 8FB00018 */  lw          $s0, 0x18($sp)
/* 2020F8 801DF508 27BD0040 */  addiu       $sp, $sp, 0x40
/* 2020FC 801DF50C 03E00008 */  jr          $ra
/* 202100 801DF510 00000000 */   nop
.type func_801DF290_ovl14, @function
.size func_801DF290_ovl14, . - func_801DF290_ovl14
