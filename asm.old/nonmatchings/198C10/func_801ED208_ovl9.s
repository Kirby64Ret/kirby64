glabel func_801ED208_ovl10
/* 19B258 801ED208 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 19B25C 801ED20C AFBF0034 */  sw         $ra, 0x34($sp)
/* 19B260 801ED210 AFB10020 */  sw         $s1, 0x20($sp)
/* 19B264 801ED214 00808825 */  or         $s1, $a0, $zero
/* 19B268 801ED218 AFB50030 */  sw         $s5, 0x30($sp)
/* 19B26C 801ED21C AFB4002C */  sw         $s4, 0x2C($sp)
/* 19B270 801ED220 AFB30028 */  sw         $s3, 0x28($sp)
/* 19B274 801ED224 AFB20024 */  sw         $s2, 0x24($sp)
/* 19B278 801ED228 AFB0001C */  sw         $s0, 0x1C($sp)
/* 19B27C 801ED22C 0C068CA0 */  jal        func_801A3280_ovl7
/* 19B280 801ED230 F7B40010 */   sdc1      $f20, 0x10($sp)
/* 19B284 801ED234 0C066ED6 */  jal        func_8019BB58_ovl7
/* 19B288 801ED238 00000000 */   nop
/* 19B28C 801ED23C 3C148005 */  lui        $s4, %hi(D_8004A7C4)
/* 19B290 801ED240 2694A7C4 */  addiu      $s4, $s4, %lo(D_8004A7C4)
/* 19B294 801ED244 8E860000 */  lw         $a2, 0x0($s4)
/* 19B298 801ED248 3C0E800B */  lui        $t6, %hi(func_800B7514)
/* 19B29C 801ED24C 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 19B2A0 801ED250 8CCF0000 */  lw         $t7, 0x0($a2)
/* 19B2A4 801ED254 25CE7514 */  addiu      $t6, $t6, %lo(func_800B7514)
/* 19B2A8 801ED258 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
/* 19B2AC 801ED25C 000FC080 */  sll        $t8, $t7, 2
/* 19B2B0 801ED260 00380821 */  addu       $at, $at, $t8
/* 19B2B4 801ED264 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 19B2B8 801ED268 8CD90000 */  lw         $t9, 0x0($a2)
/* 19B2BC 801ED26C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 19B2C0 801ED270 3C05800B */  lui        $a1, %hi(func_800B1434)
/* 19B2C4 801ED274 00194080 */  sll        $t0, $t9, 2
/* 19B2C8 801ED278 00280821 */  addu       $at, $at, $t0
.L801ED27C_ovl16:
/* 19B2CC 801ED27C AC20F150 */  sw         $zero, %lo(D_800DF150)($at)
.L801ED280_ovl16:
/* 19B2D0 801ED280 8CC90000 */  lw         $t1, 0x0($a2)
/* 19B2D4 801ED284 24A51434 */  addiu      $a1, $a1, %lo(func_800B1434)
/* 19B2D8 801ED288 00095080 */  sll        $t2, $t1, 2
/* 19B2DC 801ED28C 008A2021 */  addu       $a0, $a0, $t2
glabel func_801ED290_ovl16
/* 19B2E0 801ED290 0C02C7DA */  jal        func_800B1F68
/* 19B2E4 801ED294 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
.L801ED298_ovl10:
/* 19B2E8 801ED298 00002025 */  or         $a0, $zero, $zero
/* 19B2EC 801ED29C 0C02BEED */  jal        func_800AFBB4
.L801ED2A0_ovl10:
/* 19B2F0 801ED2A0 8E850000 */   lw        $a1, 0x0($s4)
/* 19B2F4 801ED2A4 3C10800D */  lui        $s0, %hi(D_800D6B10)
/* 19B2F8 801ED2A8 26106B10 */  addiu      $s0, $s0, %lo(D_800D6B10)
/* 19B2FC 801ED2AC 0C02BB30 */  jal        func_800AECC0
/* 19B300 801ED2B0 C60C0000 */   lwc1      $f12, 0x0($s0)
/* 19B304 801ED2B4 0C02BB48 */  jal        func_800AED20
/* 19B308 801ED2B8 C60C0000 */   lwc1      $f12, 0x0($s0)
.L801ED2BC_ovl10:
/* 19B30C 801ED2BC 8E860000 */  lw         $a2, 0x0($s4)
.L801ED2C0_ovl10:
/* 19B310 801ED2C0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 19B314 801ED2C4 44812000 */  mtc1       $at, $f4
/* 19B318 801ED2C8 8CCB0000 */  lw         $t3, 0x0($a2)
glabel func_801ED2CC_ovl10
/* 19B31C 801ED2CC 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 19B320 801ED2D0 02202025 */  or         $a0, $s1, $zero
/* 19B324 801ED2D4 000B6080 */  sll        $t4, $t3, 2
/* 19B328 801ED2D8 002C0821 */  addu       $at, $at, $t4
/* 19B32C 801ED2DC E4246A10 */  swc1       $f4, %lo(D_800E6A10)($at)
/* 19B330 801ED2E0 8CCD0000 */  lw         $t5, 0x0($a2)
/* 19B334 801ED2E4 3C018022 */  lui        $at, %hi(D_8021D274_ovl9)
/* 19B338 801ED2E8 C426D274 */  lwc1       $f6, %lo(D_8021D274_ovl9)($at)
/* 19B33C 801ED2EC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 19B340 801ED2F0 000D7880 */  sll        $t7, $t5, 2
.L801ED2F4_ovl16:
/* 19B344 801ED2F4 002F0821 */  addu       $at, $at, $t7
/* 19B348 801ED2F8 0C03E39B */  jal        func_800F8E6C
/* 19B34C 801ED2FC E42664D0 */   swc1      $f6, %lo(D_800E64D0)($at)
/* 19B350 801ED300 0C02CCFD */  jal        func_800B33F4
/* 19B354 801ED304 00000000 */   nop
/* 19B358 801ED308 8E860000 */  lw         $a2, 0x0($s4)
/* 19B35C 801ED30C 3C15800F */  lui        $s5, %hi(D_800EA1A0)
/* 19B360 801ED310 26B5A1A0 */  addiu      $s5, $s5, %lo(D_800EA1A0)
/* 19B364 801ED314 8CCE0000 */  lw         $t6, 0x0($a2)
/* 19B368 801ED318 3C018022 */  lui        $at, %hi(D_8021D278_ovl9)
/* 19B36C 801ED31C C422D278 */  lwc1       $f2, %lo(D_8021D278_ovl9)($at)
/* 19B370 801ED320 000EC080 */  sll        $t8, $t6, 2
/* 19B374 801ED324 02B8C821 */  addu       $t9, $s5, $t8
/* 19B378 801ED328 AF200000 */  sw         $zero, 0x0($t9)
/* 19B37C 801ED32C 8CC20000 */  lw         $v0, 0x0($a2)
/* 19B380 801ED330 3C04800E */  lui        $a0, %hi(D_800E17D0)
/* 19B384 801ED334 248417D0 */  addiu      $a0, $a0, %lo(D_800E17D0)
glabel func_801ED338_ovl16
/* 19B388 801ED338 00021080 */  sll        $v0, $v0, 2
/* 19B38C 801ED33C 00821821 */  addu       $v1, $a0, $v0
/* 19B390 801ED340 C4600000 */  lwc1       $f0, 0x0($v1)
/* 19B394 801ED344 44806000 */  mtc1       $zero, $f12
/* 19B398 801ED348 3C018022 */  lui        $at, %hi(D_8021D27C_ovl9)
/* 19B39C 801ED34C 4600103E */  c.le.s     $f2, $f0
/* 19B3A0 801ED350 00000000 */  nop
/* 19B3A4 801ED354 4502000C */  bc1fl      .L801ED388_ovl9
/* 19B3A8 801ED358 460C003C */   c.lt.s    $f0, $f12
/* 19B3AC 801ED35C 46020201 */  sub.s      $f8, $f0, $f2
.L801ED360_ovl9:
/* 19B3B0 801ED360 E4680000 */  swc1       $f8, 0x0($v1)
/* 19B3B4 801ED364 8CC20000 */  lw         $v0, 0x0($a2)
/* 19B3B8 801ED368 00021080 */  sll        $v0, $v0, 2
/* 19B3BC 801ED36C 00821821 */  addu       $v1, $a0, $v0
/* 19B3C0 801ED370 C4600000 */  lwc1       $f0, 0x0($v1)
/* 19B3C4 801ED374 4600103E */  c.le.s     $f2, $f0
/* 19B3C8 801ED378 00000000 */  nop
/* 19B3CC 801ED37C 4503FFF8 */  bc1tl      .L801ED360_ovl9
/* 19B3D0 801ED380 46020201 */   sub.s     $f8, $f0, $f2
/* 19B3D4 801ED384 460C003C */  c.lt.s     $f0, $f12
.L801ED388_ovl9:
/* 19B3D8 801ED388 00000000 */  nop
/* 19B3DC 801ED38C 4500000B */  bc1f       func_801ED3BC_ovl16
/* 19B3E0 801ED390 00000000 */   nop
/* 19B3E4 801ED394 46020280 */  add.s      $f10, $f0, $f2
.L801ED398_ovl9:
/* 19B3E8 801ED398 E46A0000 */  swc1       $f10, 0x0($v1)
/* 19B3EC 801ED39C 8CC20000 */  lw         $v0, 0x0($a2)
/* 19B3F0 801ED3A0 00021080 */  sll        $v0, $v0, 2
/* 19B3F4 801ED3A4 00821821 */  addu       $v1, $a0, $v0
/* 19B3F8 801ED3A8 C4600000 */  lwc1       $f0, 0x0($v1)
/* 19B3FC 801ED3AC 460C003C */  c.lt.s     $f0, $f12
/* 19B400 801ED3B0 00000000 */  nop
/* 19B404 801ED3B4 4503FFF8 */  bc1tl      .L801ED398_ovl9
/* 19B408 801ED3B8 46020280 */   add.s     $f10, $f0, $f2
glabel func_801ED3BC_ovl16
/* 19B40C 801ED3BC C430D27C */  lwc1       $f16, %lo(D_8021D27C_ovl9)($at)
/* 19B410 801ED3C0 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 19B414 801ED3C4 00220821 */  addu       $at, $at, $v0
/* 19B418 801ED3C8 46100080 */  add.s      $f2, $f0, $f16
/* 19B41C 801ED3CC 3C10800F */  lui        $s0, %hi(D_800EA6E0)
/* 19B420 801ED3D0 2610A6E0 */  addiu      $s0, $s0, %lo(D_800EA6E0)
/* 19B424 801ED3D4 E42241D0 */  swc1       $f2, %lo(gEntitiesAngleYArray)($at)
/* 19B428 801ED3D8 8CC80000 */  lw         $t0, 0x0($a2)
/* 19B42C 801ED3DC 00084880 */  sll        $t1, $t0, 2
/* 19B430 801ED3E0 02095021 */  addu       $t2, $s0, $t1
/* 19B434 801ED3E4 E5420000 */  swc1       $f2, 0x0($t2)
/* 19B438 801ED3E8 8CCB0000 */  lw         $t3, 0x0($a2)
/* 19B43C 801ED3EC 000B6080 */  sll        $t4, $t3, 2
/* 19B440 801ED3F0 020C6821 */  addu       $t5, $s0, $t4
/* 19B444 801ED3F4 0C00B5B8 */  jal        sinf
/* 19B448 801ED3F8 C5AC0000 */   lwc1      $f12, 0x0($t5)
/* 19B44C 801ED3FC 8E860000 */  lw         $a2, 0x0($s4)
glabel func_801ED400_ovl16
/* 19B450 801ED400 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 19B454 801ED404 8CCF0000 */  lw         $t7, 0x0($a2)
/* 19B458 801ED408 000F7080 */  sll        $t6, $t7, 2
/* 19B45C 801ED40C 002E0821 */  addu       $at, $at, $t6
/* 19B460 801ED410 E420A8A0 */  swc1       $f0, %lo(D_800EA8A0)($at)
/* 19B464 801ED414 8CD80000 */  lw         $t8, 0x0($a2)
/* 19B468 801ED418 0018C880 */  sll        $t9, $t8, 2
/* 19B46C 801ED41C 02194021 */  addu       $t0, $s0, $t9
/* 19B470 801ED420 0C00D604 */  jal        cosf
/* 19B474 801ED424 C50C0000 */   lwc1      $f12, 0x0($t0)
/* 19B478 801ED428 8E860000 */  lw         $a2, 0x0($s4)
/* 19B47C 801ED42C 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 19B480 801ED430 3C13800E */  lui        $s3, %hi(gEntitiesNextPosXArray)
/* 19B484 801ED434 8CC90000 */  lw         $t1, 0x0($a2)
/* 19B488 801ED438 3C12800E */  lui        $s2, %hi(gEntitiesNextPosZArray)
/* 19B48C 801ED43C 3C11800E */  lui        $s1, %hi(gEntitiesNextPosYArray)
/* 19B490 801ED440 00095080 */  sll        $t2, $t1, 2
glabel func_801ED444_ovl16
/* 19B494 801ED444 002A0821 */  addu       $at, $at, $t2
/* 19B498 801ED448 E420AA60 */  swc1       $f0, %lo(D_800EAA60)($at)
/* 19B49C 801ED44C 3C018022 */  lui        $at, %hi(D_8021D280_ovl9)
/* 19B4A0 801ED450 C434D280 */  lwc1       $f20, %lo(D_8021D280_ovl9)($at)
/* 19B4A4 801ED454 26312790 */  addiu      $s1, $s1, %lo(gEntitiesNextPosYArray)
/* 19B4A8 801ED458 26522950 */  addiu      $s2, $s2, %lo(gEntitiesNextPosZArray)
/* 19B4AC 801ED45C 267325D0 */  addiu      $s3, $s3, %lo(gEntitiesNextPosXArray)
/* 19B4B0 801ED460 8FB0003C */  lw         $s0, 0x3C($sp)
.L801ED464_ovl9:
/* 19B4B4 801ED464 8CC30000 */  lw         $v1, 0x0($a2)
/* 19B4B8 801ED468 C6520000 */  lwc1       $f18, 0x0($s2)
/* 19B4BC 801ED46C C6660000 */  lwc1       $f6, 0x0($s3)
/* 19B4C0 801ED470 00031080 */  sll        $v0, $v1, 2
/* 19B4C4 801ED474 02425821 */  addu       $t3, $s2, $v0
/* 19B4C8 801ED478 C5640000 */  lwc1       $f4, 0x0($t3)
/* 19B4CC 801ED47C 02626021 */  addu       $t4, $s3, $v0
/* 19B4D0 801ED480 C5880000 */  lwc1       $f8, 0x0($t4)
/* 19B4D4 801ED484 46049001 */  sub.s      $f0, $f18, $f4
/* 19B4D8 801ED488 3C0F800E */  lui        $t7, %hi(D_800E77A0)
/* 19B4DC 801ED48C 00036840 */  sll        $t5, $v1, 1
/* 19B4E0 801ED490 46083081 */  sub.s      $f2, $f6, $f8
/* 19B4E4 801ED494 46000282 */  mul.s      $f10, $f0, $f0
/* 19B4E8 801ED498 01ED7821 */  addu       $t7, $t7, $t5
/* 19B4EC 801ED49C 46021402 */  mul.s      $f16, $f2, $f2
/* 19B4F0 801ED4A0 46105300 */  add.s      $f12, $f10, $f16
/* 19B4F4 801ED4A4 4614603C */  c.lt.s     $f12, $f20
/* 19B4F8 801ED4A8 00000000 */  nop
/* 19B4FC 801ED4AC 4500000B */  bc1f       .L801ED4DC_ovl9
/* 19B500 801ED4B0 00000000 */   nop
/* 19B504 801ED4B4 95EF77A0 */  lhu        $t7, %lo(D_800E77A0)($t7)
/* 19B508 801ED4B8 25EEFFBE */  addiu      $t6, $t7, -0x42
/* 19B50C 801ED4BC 2DC10029 */  sltiu      $at, $t6, 0x29
/* 19B510 801ED4C0 10200018 */  beqz       $at, .L801ED524_ovl9
/* 19B514 801ED4C4 000E7080 */   sll       $t6, $t6, 2
/* 19B518 801ED4C8 3C018022 */  lui        $at, %hi(jtbl_8021D284_ovl9)
/* 19B51C 801ED4CC 002E0821 */  addu       $at, $at, $t6
/* 19B520 801ED4D0 8C2ED284 */  lw         $t6, %lo(jtbl_8021D284_ovl9)($at)
/* 19B524 801ED4D4 01C00008 */  jr         $t6
/* 19B528 801ED4D8 00000000 */   nop
.L801ED4DC_ovl9:
/* 19B52C 801ED4DC 0C002DAF */  jal        finish_current_thread
/* 19B530 801ED4E0 24040001 */   addiu     $a0, $zero, 0x1
/* 19B534 801ED4E4 1000FFDF */  b          .L801ED464_ovl9
/* 19B538 801ED4E8 8E860000 */   lw        $a2, 0x0($s4)
/* 19B53C 801ED4EC 2404005D */  addiu      $a0, $zero, 0x5D
/* 19B540 801ED4F0 0C06775E */  jal        func_8019DD78_ovl7
/* 19B544 801ED4F4 2405000A */   addiu     $a1, $zero, 0xA
/* 19B548 801ED4F8 1000000A */  b          .L801ED524_ovl9
/* 19B54C 801ED4FC 00408025 */   or        $s0, $v0, $zero
/* 19B550 801ED500 24040064 */  addiu      $a0, $zero, 0x64
/* 19B554 801ED504 0C06775E */  jal        func_8019DD78_ovl7
/* 19B558 801ED508 2405000A */   addiu     $a1, $zero, 0xA
/* 19B55C 801ED50C 10000005 */  b          .L801ED524_ovl9
/* 19B560 801ED510 00408025 */   or        $s0, $v0, $zero
/* 19B564 801ED514 24040068 */  addiu      $a0, $zero, 0x68
/* 19B568 801ED518 0C06775E */  jal        func_8019DD78_ovl7
/* 19B56C 801ED51C 2405000A */   addiu     $a1, $zero, 0xA
/* 19B570 801ED520 00408025 */  or         $s0, $v0, $zero
.L801ED524_ovl9:
/* 19B574 801ED524 2401FFFF */  addiu      $at, $zero, -0x1
/* 19B578 801ED528 1201002A */  beq        $s0, $at, .L801ED5D4_ovl9
/* 19B57C 801ED52C 00101080 */   sll       $v0, $s0, 2
/* 19B580 801ED530 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 19B584 801ED534 00220821 */  addu       $at, $at, $v0
/* 19B588 801ED538 AC208E60 */  sw         $zero, %lo(D_800E8E60)($at)
/* 19B58C 801ED53C 3C014416 */  lui        $at, (0x44160000 >> 16)
/* 19B590 801ED540 44812000 */  mtc1       $at, $f4
/* 19B594 801ED544 C6320000 */  lwc1       $f18, 0x0($s1)
/* 19B598 801ED548 3C18800F */  lui        $t8, %hi(D_800E8AE0)
/* 19B59C 801ED54C 27188AE0 */  addiu      $t8, $t8, %lo(D_800E8AE0)
.L801ED550_ovl16:
/* 19B5A0 801ED550 46049180 */  add.s      $f6, $f18, $f4
.L801ED554_ovl16:
/* 19B5A4 801ED554 00582021 */  addu       $a0, $v0, $t8
/* 19B5A8 801ED558 8C990000 */  lw         $t9, 0x0($a0)
/* 19B5AC 801ED55C 02224821 */  addu       $t1, $s1, $v0
/* 19B5B0 801ED560 E5260000 */  swc1       $f6, 0x0($t1)
/* 19B5B4 801ED564 8E860000 */  lw         $a2, 0x0($s4)
/* 19B5B8 801ED568 37280001 */  ori        $t0, $t9, 0x1
/* 19B5BC 801ED56C AC880000 */  sw         $t0, 0x0($a0)
/* 19B5C0 801ED570 8CCA0000 */  lw         $t2, 0x0($a2)
/* 19B5C4 801ED574 3C01800F */  lui        $at, %hi(D_800EA8A0)
.L801ED578_ovl10:
/* 19B5C8 801ED578 02A2C021 */  addu       $t8, $s5, $v0
/* 19B5CC 801ED57C 000A5880 */  sll        $t3, $t2, 2
/* 19B5D0 801ED580 002B0821 */  addu       $at, $at, $t3
/* 19B5D4 801ED584 C428A8A0 */  lwc1       $f8, %lo(D_800EA8A0)($at)
/* 19B5D8 801ED588 3C01800F */  lui        $at, %hi(D_800EAC20)
/* 19B5DC 801ED58C 00220821 */  addu       $at, $at, $v0
/* 19B5E0 801ED590 E428AC20 */  swc1       $f8, %lo(D_800EAC20)($at)
/* 19B5E4 801ED594 8CCC0000 */  lw         $t4, 0x0($a2)
/* 19B5E8 801ED598 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 19B5EC 801ED59C 000C6880 */  sll        $t5, $t4, 2
/* 19B5F0 801ED5A0 002D0821 */  addu       $at, $at, $t5
.L801ED5A4_ovl16:
/* 19B5F4 801ED5A4 C42AAA60 */  lwc1       $f10, %lo(D_800EAA60)($at)
.L801ED5A8_ovl16:
/* 19B5F8 801ED5A8 3C01800F */  lui        $at, %hi(D_800EADE0)
.L801ED5AC_ovl10:
/* 19B5FC 801ED5AC 00220821 */  addu       $at, $at, $v0
/* 19B600 801ED5B0 E42AADE0 */  swc1       $f10, %lo(D_800EADE0)($at)
/* 19B604 801ED5B4 8CCF0000 */  lw         $t7, 0x0($a2)
/* 19B608 801ED5B8 000F7080 */  sll        $t6, $t7, 2
/* 19B60C 801ED5BC 02AE1821 */  addu       $v1, $s5, $t6
/* 19B610 801ED5C0 8C650000 */  lw         $a1, 0x0($v1)
/* 19B614 801ED5C4 24A50001 */  addiu      $a1, $a1, 0x1
/* 19B618 801ED5C8 30A50001 */  andi       $a1, $a1, 0x1
/* 19B61C 801ED5CC AC650000 */  sw         $a1, 0x0($v1)
/* 19B620 801ED5D0 AF050000 */  sw         $a1, 0x0($t8)
.L801ED5D4_ovl9:
/* 19B624 801ED5D4 0C006291 */  jal        random_soft_s32_range
/* 19B628 801ED5D8 2404001F */   addiu     $a0, $zero, 0x1F
/* 19B62C 801ED5DC 2450003C */  addiu      $s0, $v0, 0x3C
/* 19B630 801ED5E0 1200000C */  beqz       $s0, .L801ED614_ovl9
/* 19B634 801ED5E4 00000000 */   nop
/* 19B638 801ED5E8 8E990000 */  lw         $t9, 0x0($s4)
.L801ED5EC_ovl9:
/* 19B63C 801ED5EC C6300000 */  lwc1       $f16, 0x0($s1)
.L801ED5F0_ovl16:
/* 19B640 801ED5F0 24040001 */  addiu      $a0, $zero, 0x1
.L801ED5F4_ovl16:
/* 19B644 801ED5F4 8F280000 */  lw         $t0, 0x0($t9)
/* 19B648 801ED5F8 00084880 */  sll        $t1, $t0, 2
/* 19B64C 801ED5FC 02295021 */  addu       $t2, $s1, $t1
/* 19B650 801ED600 0C002DAF */  jal        finish_current_thread
/* 19B654 801ED604 E5500000 */   swc1      $f16, 0x0($t2)
/* 19B658 801ED608 2610FFFF */  addiu      $s0, $s0, -0x1
/* 19B65C 801ED60C 5600FFF7 */  bnel       $s0, $zero, .L801ED5EC_ovl9
/* 19B660 801ED610 8E990000 */   lw        $t9, 0x0($s4)
.L801ED614_ovl9:
/* 19B664 801ED614 1000FF93 */  b          .L801ED464_ovl9
/* 19B668 801ED618 8E860000 */   lw        $a2, 0x0($s4)
.L801ED61C_ovl16:
/* 19B66C 801ED61C 00000000 */  nop
/* 19B670 801ED620 8FBF0034 */  lw         $ra, 0x34($sp)
/* 19B674 801ED624 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 19B678 801ED628 8FB0001C */  lw         $s0, 0x1C($sp)
/* 19B67C 801ED62C 8FB10020 */  lw         $s1, 0x20($sp)
/* 19B680 801ED630 8FB20024 */  lw         $s2, 0x24($sp)
glabel func_801ED634_ovl16
/* 19B684 801ED634 8FB30028 */  lw         $s3, 0x28($sp)
/* 19B688 801ED638 8FB4002C */  lw         $s4, 0x2C($sp)
/* 19B68C 801ED63C 8FB50030 */  lw         $s5, 0x30($sp)
/* 19B690 801ED640 03E00008 */  jr         $ra
/* 19B694 801ED644 27BD0040 */   addiu     $sp, $sp, 0x40
