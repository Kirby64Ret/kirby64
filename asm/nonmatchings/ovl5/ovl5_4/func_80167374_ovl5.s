nonmatching func_80167374_ovl5, 0x2DC

glabel func_80167374_ovl5
    /* 10E7E4 80167374 3C0F8019 */  lui        $t7, %hi(D_8018E268_ovl5)
    /* 10E7E8 80167378 25EFE268 */  addiu      $t7, $t7, %lo(D_8018E268_ovl5)
    /* 10E7EC 8016737C 00047080 */  sll        $t6, $a0, 2
    /* 10E7F0 80167380 01CF3821 */  addu       $a3, $t6, $t7
    /* 10E7F4 80167384 8CE30000 */  lw         $v1, 0x0($a3)
    /* 10E7F8 80167388 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 10E7FC 8016738C 3C18800E */  lui        $t8, %hi(gEntitiesNextPosXArray)
    /* 10E800 80167390 00031880 */  sll        $v1, $v1, 2
    /* 10E804 80167394 3C19800E */  lui        $t9, %hi(gEntitiesNextPosZArray)
    /* 10E808 80167398 271825D0 */  addiu      $t8, $t8, %lo(gEntitiesNextPosXArray)
    /* 10E80C 8016739C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 10E810 801673A0 27392950 */  addiu      $t9, $t9, %lo(gEntitiesNextPosZArray)
    /* 10E814 801673A4 00783021 */  addu       $a2, $v1, $t8
    /* 10E818 801673A8 00230821 */  addu       $at, $at, $v1
    /* 10E81C 801673AC 00791021 */  addu       $v0, $v1, $t9
    /* 10E820 801673B0 C4C20000 */  lwc1       $f2, 0x0($a2)
    /* 10E824 801673B4 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* 10E828 801673B8 C4400000 */  lwc1       $f0, 0x0($v0)
    /* 10E82C 801673BC AFB30020 */  sw         $s3, 0x20($sp)
    /* 10E830 801673C0 00809825 */  or         $s3, $a0, $zero
    /* 10E834 801673C4 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 10E838 801673C8 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 10E83C 801673CC AFB10018 */  sw         $s1, 0x18($sp)
    /* 10E840 801673D0 AFB00014 */  sw         $s0, 0x14($sp)
    /* 10E844 801673D4 E7A2003C */  swc1       $f2, 0x3C($sp)
    /* 10E848 801673D8 E7A40040 */  swc1       $f4, 0x40($sp)
    /* 10E84C 801673DC 10A0000C */  beqz       $a1, .L80167410_ovl5
    /* 10E850 801673E0 E7A00044 */   swc1      $f0, 0x44($sp)
    /* 10E854 801673E4 24010001 */  addiu      $at, $zero, 0x1
    /* 10E858 801673E8 10A10012 */  beq        $a1, $at, .L80167434_ovl5
    /* 10E85C 801673EC 3C0B8005 */   lui       $t3, %hi(omCurrentObj)
    /* 10E860 801673F0 24010002 */  addiu      $at, $zero, 0x2
    /* 10E864 801673F4 10A10018 */  beq        $a1, $at, .L80167458_ovl5
    /* 10E868 801673F8 3C0E8005 */   lui       $t6, %hi(omCurrentObj)
    /* 10E86C 801673FC 24010003 */  addiu      $at, $zero, 0x3
    /* 10E870 80167400 10A1001E */  beq        $a1, $at, .L8016747C_ovl5
    /* 10E874 80167404 3C198005 */   lui       $t9, %hi(omCurrentObj)
    /* 10E878 80167408 10000024 */  b          .L8016749C_ovl5
    /* 10E87C 8016740C 00000000 */   nop
  .L80167410_ovl5:
    /* 10E880 80167410 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 10E884 80167414 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 10E888 80167418 44803000 */  mtc1       $zero, $f6
    /* 10E88C 8016741C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 10E890 80167420 8D090000 */  lw         $t1, 0x0($t0)
    /* 10E894 80167424 00095080 */  sll        $t2, $t1, 2
    /* 10E898 80167428 002A0821 */  addu       $at, $at, $t2
    /* 10E89C 8016742C 1000001B */  b          .L8016749C_ovl5
    /* 10E8A0 80167430 E42641D0 */   swc1      $f6, %lo(gEntitiesAngleYArray)($at)
  .L80167434_ovl5:
    /* 10E8A4 80167434 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 10E8A8 80167438 3C018019 */  lui        $at, %hi(D_8018D6D8_ovl5)
    /* 10E8AC 8016743C C428D6D8 */  lwc1       $f8, %lo(D_8018D6D8_ovl5)($at)
    /* 10E8B0 80167440 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 10E8B4 80167444 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 10E8B8 80167448 000C6880 */  sll        $t5, $t4, 2
    /* 10E8BC 8016744C 002D0821 */  addu       $at, $at, $t5
    /* 10E8C0 80167450 10000012 */  b          .L8016749C_ovl5
    /* 10E8C4 80167454 E42841D0 */   swc1      $f8, %lo(gEntitiesAngleYArray)($at)
  .L80167458_ovl5:
    /* 10E8C8 80167458 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 10E8CC 8016745C 3C018019 */  lui        $at, %hi(D_8018D6DC_ovl5)
    /* 10E8D0 80167460 C42AD6DC */  lwc1       $f10, %lo(D_8018D6DC_ovl5)($at)
    /* 10E8D4 80167464 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 10E8D8 80167468 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 10E8DC 8016746C 000FC080 */  sll        $t8, $t7, 2
    /* 10E8E0 80167470 00380821 */  addu       $at, $at, $t8
    /* 10E8E4 80167474 10000009 */  b          .L8016749C_ovl5
    /* 10E8E8 80167478 E42A41D0 */   swc1      $f10, %lo(gEntitiesAngleYArray)($at)
  .L8016747C_ovl5:
    /* 10E8EC 8016747C 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 10E8F0 80167480 3C018019 */  lui        $at, %hi(D_8018D6E0_ovl5)
    /* 10E8F4 80167484 C430D6E0 */  lwc1       $f16, %lo(D_8018D6E0_ovl5)($at)
    /* 10E8F8 80167488 8F280000 */  lw         $t0, 0x0($t9)
    /* 10E8FC 8016748C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 10E900 80167490 00084880 */  sll        $t1, $t0, 2
    /* 10E904 80167494 00290821 */  addu       $at, $at, $t1
    /* 10E908 80167498 E43041D0 */  swc1       $f16, %lo(gEntitiesAngleYArray)($at)
  .L8016749C_ovl5:
    /* 10E90C 8016749C 10A00015 */  beqz       $a1, .L801674F4_ovl5
    /* 10E910 801674A0 24010001 */   addiu     $at, $zero, 0x1
    /* 10E914 801674A4 10A10007 */  beq        $a1, $at, .L801674C4_ovl5
    /* 10E918 801674A8 24010002 */   addiu     $at, $zero, 0x2
    /* 10E91C 801674AC 10A1000B */  beq        $a1, $at, .L801674DC_ovl5
    /* 10E920 801674B0 24010003 */   addiu     $at, $zero, 0x3
    /* 10E924 801674B4 50A10016 */  beql       $a1, $at, .L80167510_ovl5
    /* 10E928 801674B8 3C0141C8 */   lui       $at, (0x41C80000 >> 16)
    /* 10E92C 801674BC 10000019 */  b          .L80167524_ovl5
    /* 10E930 801674C0 02602025 */   or        $a0, $s3, $zero
  .L801674C4_ovl5:
    /* 10E934 801674C4 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
    /* 10E938 801674C8 44819000 */  mtc1       $at, $f18
    /* 10E93C 801674CC 00000000 */  nop
    /* 10E940 801674D0 46120101 */  sub.s      $f4, $f0, $f18
    /* 10E944 801674D4 10000012 */  b          .L80167520_ovl5
    /* 10E948 801674D8 E4440000 */   swc1      $f4, 0x0($v0)
  .L801674DC_ovl5:
    /* 10E94C 801674DC 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
    /* 10E950 801674E0 44813000 */  mtc1       $at, $f6
    /* 10E954 801674E4 00000000 */  nop
    /* 10E958 801674E8 46061200 */  add.s      $f8, $f2, $f6
    /* 10E95C 801674EC 1000000C */  b          .L80167520_ovl5
    /* 10E960 801674F0 E4C80000 */   swc1      $f8, 0x0($a2)
  .L801674F4_ovl5:
    /* 10E964 801674F4 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
    /* 10E968 801674F8 44815000 */  mtc1       $at, $f10
    /* 10E96C 801674FC 00000000 */  nop
    /* 10E970 80167500 460A0400 */  add.s      $f16, $f0, $f10
    /* 10E974 80167504 10000006 */  b          .L80167520_ovl5
    /* 10E978 80167508 E4500000 */   swc1      $f16, 0x0($v0)
    /* 10E97C 8016750C 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
  .L80167510_ovl5:
    /* 10E980 80167510 44819000 */  mtc1       $at, $f18
    /* 10E984 80167514 00000000 */  nop
    /* 10E988 80167518 46121101 */  sub.s      $f4, $f2, $f18
    /* 10E98C 8016751C E4C40000 */  swc1       $f4, 0x0($a2)
  .L80167520_ovl5:
    /* 10E990 80167520 02602025 */  or         $a0, $s3, $zero
  .L80167524_ovl5:
    /* 10E994 80167524 0C0597EE */  jal        func_80165FB8_ovl5
    /* 10E998 80167528 AFA7002C */   sw        $a3, 0x2C($sp)
    /* 10E99C 8016752C 2401029A */  addiu      $at, $zero, 0x29A
    /* 10E9A0 80167530 10410030 */  beq        $v0, $at, .L801675F4_ovl5
    /* 10E9A4 80167534 00408025 */   or        $s0, $v0, $zero
    /* 10E9A8 80167538 0C059640 */  jal        func_80165900_ovl5
    /* 10E9AC 8016753C 00402025 */   or        $a0, $v0, $zero
    /* 10E9B0 80167540 14400009 */  bnez       $v0, .L80167568_ovl5
    /* 10E9B4 80167544 00105080 */   sll       $t2, $s0, 2
    /* 10E9B8 80167548 3C0B8019 */  lui        $t3, %hi(D_8018E2A0_ovl5)
    /* 10E9BC 8016754C 016A5821 */  addu       $t3, $t3, $t2
    /* 10E9C0 80167550 8D6BE2A0 */  lw         $t3, %lo(D_8018E2A0_ovl5)($t3)
    /* 10E9C4 80167554 3C0D800F */  lui        $t5, %hi(D_800E9C60)
    /* 10E9C8 80167558 000B6080 */  sll        $t4, $t3, 2
    /* 10E9CC 8016755C 01AC6821 */  addu       $t5, $t5, $t4
    /* 10E9D0 80167560 8DAD9C60 */  lw         $t5, %lo(D_800E9C60)($t5)
    /* 10E9D4 80167564 11A00023 */  beqz       $t5, .L801675F4_ovl5
  .L80167568_ovl5:
    /* 10E9D8 80167568 3C118019 */   lui       $s1, %hi(D_8018E3C0_ovl5)
    /* 10E9DC 8016756C 2631E3C0 */  addiu      $s1, $s1, %lo(D_8018E3C0_ovl5)
    /* 10E9E0 80167570 00008025 */  or         $s0, $zero, $zero
    /* 10E9E4 80167574 24120004 */  addiu      $s2, $zero, 0x4
  .L80167578_ovl5:
    /* 10E9E8 80167578 922E0000 */  lbu        $t6, 0x0($s1)
    /* 10E9EC 8016757C 51C00019 */  beql       $t6, $zero, .L801675E4_ovl5
    /* 10E9F0 80167580 26100001 */   addiu     $s0, $s0, 0x1
    /* 10E9F4 80167584 12700016 */  beq        $s3, $s0, .L801675E0_ovl5
    /* 10E9F8 80167588 02602025 */   or        $a0, $s3, $zero
    /* 10E9FC 8016758C 0C059C97 */  jal        func_8016725C_ovl5
    /* 10EA00 80167590 02002825 */   or        $a1, $s0, $zero
    /* 10EA04 80167594 50400013 */  beql       $v0, $zero, .L801675E4_ovl5
    /* 10EA08 80167598 26100001 */   addiu     $s0, $s0, 0x1
    /* 10EA0C 8016759C 8FAF002C */  lw         $t7, 0x2C($sp)
    /* 10EA10 801675A0 C7A6003C */  lwc1       $f6, 0x3C($sp)
    /* 10EA14 801675A4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 10EA18 801675A8 8DE30000 */  lw         $v1, 0x0($t7)
    /* 10EA1C 801675AC C7A80040 */  lwc1       $f8, 0x40($sp)
    /* 10EA20 801675B0 C7AA0044 */  lwc1       $f10, 0x44($sp)
    /* 10EA24 801675B4 00031880 */  sll        $v1, $v1, 2
    /* 10EA28 801675B8 00230821 */  addu       $at, $at, $v1
    /* 10EA2C 801675BC E42625D0 */  swc1       $f6, %lo(gEntitiesNextPosXArray)($at)
    /* 10EA30 801675C0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 10EA34 801675C4 00230821 */  addu       $at, $at, $v1
    /* 10EA38 801675C8 E4282790 */  swc1       $f8, %lo(gEntitiesNextPosYArray)($at)
    /* 10EA3C 801675CC 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 10EA40 801675D0 00230821 */  addu       $at, $at, $v1
    /* 10EA44 801675D4 00001025 */  or         $v0, $zero, $zero
    /* 10EA48 801675D8 10000016 */  b          .L80167634_ovl5
    /* 10EA4C 801675DC E42A2950 */   swc1      $f10, %lo(gEntitiesNextPosZArray)($at)
  .L801675E0_ovl5:
    /* 10EA50 801675E0 26100001 */  addiu      $s0, $s0, 0x1
  .L801675E4_ovl5:
    /* 10EA54 801675E4 1612FFE4 */  bne        $s0, $s2, .L80167578_ovl5
    /* 10EA58 801675E8 26310001 */   addiu     $s1, $s1, 0x1
    /* 10EA5C 801675EC 10000011 */  b          .L80167634_ovl5
    /* 10EA60 801675F0 24020001 */   addiu     $v0, $zero, 0x1
  .L801675F4_ovl5:
    /* 10EA64 801675F4 8FB8002C */  lw         $t8, 0x2C($sp)
    /* 10EA68 801675F8 C7B0003C */  lwc1       $f16, 0x3C($sp)
    /* 10EA6C 801675FC 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 10EA70 80167600 8F030000 */  lw         $v1, 0x0($t8)
    /* 10EA74 80167604 C7B20040 */  lwc1       $f18, 0x40($sp)
    /* 10EA78 80167608 C7A40044 */  lwc1       $f4, 0x44($sp)
    /* 10EA7C 8016760C 00031880 */  sll        $v1, $v1, 2
    /* 10EA80 80167610 00230821 */  addu       $at, $at, $v1
    /* 10EA84 80167614 E43025D0 */  swc1       $f16, %lo(gEntitiesNextPosXArray)($at)
    /* 10EA88 80167618 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 10EA8C 8016761C 00230821 */  addu       $at, $at, $v1
    /* 10EA90 80167620 E4322790 */  swc1       $f18, %lo(gEntitiesNextPosYArray)($at)
    /* 10EA94 80167624 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 10EA98 80167628 00230821 */  addu       $at, $at, $v1
    /* 10EA9C 8016762C 00001025 */  or         $v0, $zero, $zero
    /* 10EAA0 80167630 E4242950 */  swc1       $f4, %lo(gEntitiesNextPosZArray)($at)
  .L80167634_ovl5:
    /* 10EAA4 80167634 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 10EAA8 80167638 8FB00014 */  lw         $s0, 0x14($sp)
    /* 10EAAC 8016763C 8FB10018 */  lw         $s1, 0x18($sp)
    /* 10EAB0 80167640 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 10EAB4 80167644 8FB30020 */  lw         $s3, 0x20($sp)
    /* 10EAB8 80167648 03E00008 */  jr         $ra
    /* 10EABC 8016764C 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_80167374_ovl5
.size func_80167374_ovl5, . - func_80167374_ovl5
