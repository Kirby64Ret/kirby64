nonmatching func_80174368_ovl5, 0x2C4

glabel func_80174368_ovl5
    /* 11B7D8 80174368 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 11B7DC 8017436C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 11B7E0 80174370 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 11B7E4 80174374 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 11B7E8 80174378 AFA40030 */  sw         $a0, 0x30($sp)
    /* 11B7EC 8017437C AFA50034 */  sw         $a1, 0x34($sp)
    /* 11B7F0 80174380 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 11B7F4 80174384 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 11B7F8 80174388 3C198017 */  lui        $t9, %hi(func_80174328_ovl5)
    /* 11B7FC 8017438C 000FC080 */  sll        $t8, $t7, 2
    /* 11B800 80174390 00380821 */  addu       $at, $at, $t8
    /* 11B804 80174394 AC2598E0 */  sw         $a1, %lo(D_800E98E0)($at)
    /* 11B808 80174398 8C480000 */  lw         $t0, 0x0($v0)
    /* 11B80C 8017439C 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 11B810 801743A0 27394328 */  addiu      $t9, $t9, %lo(func_80174328_ovl5)
    /* 11B814 801743A4 00084880 */  sll        $t1, $t0, 2
    /* 11B818 801743A8 00290821 */  addu       $at, $at, $t1
    /* 11B81C 801743AC AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
    /* 11B820 801743B0 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 11B824 801743B4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 11B828 801743B8 3C058017 */  lui        $a1, %hi(func_801773C4_ovl5)
    /* 11B82C 801743BC 000A5880 */  sll        $t3, $t2, 2
    /* 11B830 801743C0 008B2021 */  addu       $a0, $a0, $t3
    /* 11B834 801743C4 8C84EC10 */  lw         $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 11B838 801743C8 0C02C7DA */  jal        setProcessMain
    /* 11B83C 801743CC 24A573C4 */   addiu     $a1, $a1, %lo(func_801773C4_ovl5)
    /* 11B840 801743D0 3C048018 */  lui        $a0, %hi(D_80187CE8_ovl5)
    /* 11B844 801743D4 3C050001 */  lui        $a1, (0x1869F >> 16)
    /* 11B848 801743D8 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
    /* 11B84C 801743DC 8C847CE8 */  lw         $a0, %lo(D_80187CE8_ovl5)($a0)
    /* 11B850 801743E0 0C02A619 */  jal        func_800A9864
    /* 11B854 801743E4 24060010 */   addiu     $a2, $zero, 0x10
    /* 11B858 801743E8 3C048018 */  lui        $a0, %hi(D_80187CEC_ovl5)
    /* 11B85C 801743EC 0C02A806 */  jal        func_800AA018
    /* 11B860 801743F0 8C847CEC */   lw        $a0, %lo(D_80187CEC_ovl5)($a0)
    /* 11B864 801743F4 3C048018 */  lui        $a0, %hi(D_80187CF0_ovl5)
    /* 11B868 801743F8 8C847CF0 */  lw         $a0, %lo(D_80187CF0_ovl5)($a0)
    /* 11B86C 801743FC 10800003 */  beqz       $a0, .L8017440C_ovl5
    /* 11B870 80174400 00000000 */   nop
    /* 11B874 80174404 0C02A806 */  jal        func_800AA018
    /* 11B878 80174408 00000000 */   nop
  .L8017440C_ovl5:
    /* 11B87C 8017440C 3C0C8019 */  lui        $t4, %hi(D_8018ECD8_ovl5)
    /* 11B880 80174410 918CECD8 */  lbu        $t4, %lo(D_8018ECD8_ovl5)($t4)
    /* 11B884 80174414 24010003 */  addiu      $at, $zero, 0x3
    /* 11B888 80174418 3C04800E */  lui        $a0, %hi(gEntitiesNextPosZArray)
    /* 11B88C 8017441C 15810020 */  bne        $t4, $at, .L801744A0_ovl5
    /* 11B890 80174420 24842950 */   addiu     $a0, $a0, %lo(gEntitiesNextPosZArray)
    /* 11B894 80174424 8FA30034 */  lw         $v1, 0x34($sp)
    /* 11B898 80174428 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 11B89C 8017442C 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 11B8A0 80174430 3C018018 */  lui        $at, %hi(D_80187C94_ovl5)
    /* 11B8A4 80174434 00031880 */  sll        $v1, $v1, 2
    /* 11B8A8 80174438 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 11B8AC 8017443C 00230821 */  addu       $at, $at, $v1
    /* 11B8B0 80174440 C4247C94 */  lwc1       $f4, %lo(D_80187C94_ovl5)($at)
    /* 11B8B4 80174444 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 11B8B8 80174448 000D7880 */  sll        $t7, $t5, 2
    /* 11B8BC 8017444C 002F0821 */  addu       $at, $at, $t7
    /* 11B8C0 80174450 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 11B8C4 80174454 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 11B8C8 80174458 44803000 */  mtc1       $zero, $f6
    /* 11B8CC 8017445C 3C088019 */  lui        $t0, %hi(D_8018E458_ovl5)
    /* 11B8D0 80174460 01034021 */  addu       $t0, $t0, $v1
    /* 11B8D4 80174464 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 11B8D8 80174468 000EC080 */  sll        $t8, $t6, 2
    /* 11B8DC 8017446C 8D08E458 */  lw         $t0, %lo(D_8018E458_ovl5)($t0)
    /* 11B8E0 80174470 00380821 */  addu       $at, $at, $t8
    /* 11B8E4 80174474 E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 11B8E8 80174478 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 11B8EC 8017447C 3C04800E */  lui        $a0, %hi(gEntitiesNextPosZArray)
    /* 11B8F0 80174480 24842950 */  addiu      $a0, $a0, %lo(gEntitiesNextPosZArray)
    /* 11B8F4 80174484 0008C880 */  sll        $t9, $t0, 2
    /* 11B8F8 80174488 00994821 */  addu       $t1, $a0, $t9
    /* 11B8FC 8017448C C5280000 */  lwc1       $f8, 0x0($t1)
    /* 11B900 80174490 000A5880 */  sll        $t3, $t2, 2
    /* 11B904 80174494 008B6021 */  addu       $t4, $a0, $t3
    /* 11B908 80174498 1000001E */  b          .L80174514_ovl5
    /* 11B90C 8017449C E5880000 */   swc1      $f8, 0x0($t4)
  .L801744A0_ovl5:
    /* 11B910 801744A0 8FA30034 */  lw         $v1, 0x34($sp)
    /* 11B914 801744A4 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 11B918 801744A8 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 11B91C 801744AC 3C018018 */  lui        $at, %hi(D_80187C94_ovl5)
    /* 11B920 801744B0 00031880 */  sll        $v1, $v1, 2
    /* 11B924 801744B4 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 11B928 801744B8 00230821 */  addu       $at, $at, $v1
    /* 11B92C 801744BC C42A7C94 */  lwc1       $f10, %lo(D_80187C94_ovl5)($at)
    /* 11B930 801744C0 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 11B934 801744C4 000D7880 */  sll        $t7, $t5, 2
    /* 11B938 801744C8 002F0821 */  addu       $at, $at, $t7
    /* 11B93C 801744CC E42A25D0 */  swc1       $f10, %lo(gEntitiesNextPosXArray)($at)
    /* 11B940 801744D0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 11B944 801744D4 3C014296 */  lui        $at, (0x42960000 >> 16)
    /* 11B948 801744D8 44818000 */  mtc1       $at, $f16
    /* 11B94C 801744DC 3C088019 */  lui        $t0, %hi(D_8018E458_ovl5)
    /* 11B950 801744E0 01034021 */  addu       $t0, $t0, $v1
    /* 11B954 801744E4 8D08E458 */  lw         $t0, %lo(D_8018E458_ovl5)($t0)
    /* 11B958 801744E8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 11B95C 801744EC 000EC080 */  sll        $t8, $t6, 2
    /* 11B960 801744F0 00380821 */  addu       $at, $at, $t8
    /* 11B964 801744F4 E4302790 */  swc1       $f16, %lo(gEntitiesNextPosYArray)($at)
    /* 11B968 801744F8 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 11B96C 801744FC 0008C880 */  sll        $t9, $t0, 2
    /* 11B970 80174500 00994821 */  addu       $t1, $a0, $t9
    /* 11B974 80174504 C5320000 */  lwc1       $f18, 0x0($t1)
    /* 11B978 80174508 000A5880 */  sll        $t3, $t2, 2
    /* 11B97C 8017450C 008B6021 */  addu       $t4, $a0, $t3
    /* 11B980 80174510 E5920000 */  swc1       $f18, 0x0($t4)
  .L80174514_ovl5:
    /* 11B984 80174514 27A40028 */  addiu      $a0, $sp, 0x28
    /* 11B988 80174518 0C05BFD8 */  jal        func_8016FF60_ovl5
    /* 11B98C 8017451C 8FA50034 */   lw        $a1, 0x34($sp)
    /* 11B990 80174520 8FA20028 */  lw         $v0, 0x28($sp)
    /* 11B994 80174524 24010001 */  addiu      $at, $zero, 0x1
    /* 11B998 80174528 27A40028 */  addiu      $a0, $sp, 0x28
    /* 11B99C 8017452C 14410013 */  bne        $v0, $at, .L8017457C_ovl5
    /* 11B9A0 80174530 3C028005 */   lui       $v0, %hi(omCurrentObj)
    /* 11B9A4 80174534 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 11B9A8 80174538 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
    /* 11B9AC 8017453C 44810000 */  mtc1       $at, $f0
    /* 11B9B0 80174540 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 11B9B4 80174544 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
    /* 11B9B8 80174548 000D7880 */  sll        $t7, $t5, 2
    /* 11B9BC 8017454C 002F0821 */  addu       $at, $at, $t7
    /* 11B9C0 80174550 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
    /* 11B9C4 80174554 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 11B9C8 80174558 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
    /* 11B9CC 8017455C 000EC080 */  sll        $t8, $t6, 2
    /* 11B9D0 80174560 00380821 */  addu       $at, $at, $t8
    /* 11B9D4 80174564 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
    /* 11B9D8 80174568 8C480000 */  lw         $t0, 0x0($v0)
    /* 11B9DC 8017456C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
    /* 11B9E0 80174570 0008C880 */  sll        $t9, $t0, 2
    /* 11B9E4 80174574 00390821 */  addu       $at, $at, $t9
    /* 11B9E8 80174578 E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
  .L8017457C_ovl5:
    /* 11B9EC 8017457C 0C05BFD8 */  jal        func_8016FF60_ovl5
    /* 11B9F0 80174580 8FA50034 */   lw        $a1, 0x34($sp)
    /* 11B9F4 80174584 8FA20028 */  lw         $v0, 0x28($sp)
    /* 11B9F8 80174588 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
    /* 11B9FC 8017458C 44810000 */  mtc1       $at, $f0
    /* 11BA00 80174590 1040001A */  beqz       $v0, .L801745FC_ovl5
    /* 11BA04 80174594 24010001 */   addiu     $at, $zero, 0x1
    /* 11BA08 80174598 10410007 */  beq        $v0, $at, .L801745B8_ovl5
    /* 11BA0C 8017459C 24010002 */   addiu     $at, $zero, 0x2
    /* 11BA10 801745A0 10410016 */  beq        $v0, $at, .L801745FC_ovl5
    /* 11BA14 801745A4 24010003 */   addiu     $at, $zero, 0x3
    /* 11BA18 801745A8 10410014 */  beq        $v0, $at, .L801745FC_ovl5
    /* 11BA1C 801745AC 00000000 */   nop
    /* 11BA20 801745B0 10000012 */  b          .L801745FC_ovl5
    /* 11BA24 801745B4 00000000 */   nop
  .L801745B8_ovl5:
    /* 11BA28 801745B8 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 11BA2C 801745BC 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 11BA30 801745C0 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
    /* 11BA34 801745C4 8C490000 */  lw         $t1, 0x0($v0)
    /* 11BA38 801745C8 00095080 */  sll        $t2, $t1, 2
    /* 11BA3C 801745CC 002A0821 */  addu       $at, $at, $t2
    /* 11BA40 801745D0 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
    /* 11BA44 801745D4 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 11BA48 801745D8 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
    /* 11BA4C 801745DC 000B6080 */  sll        $t4, $t3, 2
    /* 11BA50 801745E0 002C0821 */  addu       $at, $at, $t4
    /* 11BA54 801745E4 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
    /* 11BA58 801745E8 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 11BA5C 801745EC 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
    /* 11BA60 801745F0 000D7880 */  sll        $t7, $t5, 2
    /* 11BA64 801745F4 002F0821 */  addu       $at, $at, $t7
    /* 11BA68 801745F8 E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
  .L801745FC_ovl5:
    /* 11BA6C 801745FC 0C02BC9F */  jal        func_800AF27C
    /* 11BA70 80174600 00000000 */   nop
    /* 11BA74 80174604 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 11BA78 80174608 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 11BA7C 8017460C 0C02C640 */  jal        func_800B1900
    /* 11BA80 80174610 95C40002 */   lhu       $a0, 0x2($t6)
    /* 11BA84 80174614 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 11BA88 80174618 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 11BA8C 8017461C 03E00008 */  jr         $ra
    /* 11BA90 80174620 00000000 */   nop
    /* 11BA94 80174624 03E00008 */  jr         $ra
    /* 11BA98 80174628 00000000 */   nop
endlabel func_80174368_ovl5
.size func_80174368_ovl5, . - func_80174368_ovl5
