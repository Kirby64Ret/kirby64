nonmatching func_80174044_ovl5, 0x2E4

glabel func_80174044_ovl5
    /* 11B4B4 80174044 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 11B4B8 80174048 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 11B4BC 8017404C 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 11B4C0 80174050 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 11B4C4 80174054 AFA40030 */  sw         $a0, 0x30($sp)
    /* 11B4C8 80174058 AFA50034 */  sw         $a1, 0x34($sp)
    /* 11B4CC 8017405C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 11B4D0 80174060 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 11B4D4 80174064 3C198017 */  lui        $t9, %hi(func_80174328_ovl5)
    /* 11B4D8 80174068 000FC080 */  sll        $t8, $t7, 2
    /* 11B4DC 8017406C 00380821 */  addu       $at, $at, $t8
    /* 11B4E0 80174070 AC2598E0 */  sw         $a1, %lo(D_800E98E0)($at)
    /* 11B4E4 80174074 8C480000 */  lw         $t0, 0x0($v0)
    /* 11B4E8 80174078 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 11B4EC 8017407C 27394328 */  addiu      $t9, $t9, %lo(func_80174328_ovl5)
    /* 11B4F0 80174080 00084880 */  sll        $t1, $t0, 2
    /* 11B4F4 80174084 00290821 */  addu       $at, $at, $t1
    /* 11B4F8 80174088 AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
    /* 11B4FC 8017408C 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 11B500 80174090 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 11B504 80174094 3C058017 */  lui        $a1, %hi(func_801773C4_ovl5)
    /* 11B508 80174098 000A5880 */  sll        $t3, $t2, 2
    /* 11B50C 8017409C 008B2021 */  addu       $a0, $a0, $t3
    /* 11B510 801740A0 8C84EC10 */  lw         $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 11B514 801740A4 0C02C7DA */  jal        setProcessMain
    /* 11B518 801740A8 24A573C4 */   addiu     $a1, $a1, %lo(func_801773C4_ovl5)
    /* 11B51C 801740AC 3C048018 */  lui        $a0, %hi(D_80187CDC_ovl5)
    /* 11B520 801740B0 3C050001 */  lui        $a1, (0x1869F >> 16)
    /* 11B524 801740B4 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
    /* 11B528 801740B8 8C847CDC */  lw         $a0, %lo(D_80187CDC_ovl5)($a0)
    /* 11B52C 801740BC 0C02A619 */  jal        func_800A9864
    /* 11B530 801740C0 24060010 */   addiu     $a2, $zero, 0x10
    /* 11B534 801740C4 3C048018 */  lui        $a0, %hi(D_80187CE0_ovl5)
    /* 11B538 801740C8 0C02A806 */  jal        func_800AA018
    /* 11B53C 801740CC 8C847CE0 */   lw        $a0, %lo(D_80187CE0_ovl5)($a0)
    /* 11B540 801740D0 3C048018 */  lui        $a0, %hi(D_80187CE4_ovl5)
    /* 11B544 801740D4 8C847CE4 */  lw         $a0, %lo(D_80187CE4_ovl5)($a0)
    /* 11B548 801740D8 10800003 */  beqz       $a0, .L801740E8_ovl5
    /* 11B54C 801740DC 00000000 */   nop
    /* 11B550 801740E0 0C02A806 */  jal        func_800AA018
    /* 11B554 801740E4 00000000 */   nop
  .L801740E8_ovl5:
    /* 11B558 801740E8 3C0C8019 */  lui        $t4, %hi(D_8018ECD8_ovl5)
    /* 11B55C 801740EC 918CECD8 */  lbu        $t4, %lo(D_8018ECD8_ovl5)($t4)
    /* 11B560 801740F0 24010003 */  addiu      $at, $zero, 0x3
    /* 11B564 801740F4 3C04800E */  lui        $a0, %hi(gEntitiesNextPosZArray)
    /* 11B568 801740F8 15810020 */  bne        $t4, $at, .L8017417C_ovl5
    /* 11B56C 801740FC 24842950 */   addiu     $a0, $a0, %lo(gEntitiesNextPosZArray)
    /* 11B570 80174100 8FA30034 */  lw         $v1, 0x34($sp)
    /* 11B574 80174104 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 11B578 80174108 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 11B57C 8017410C 3C018018 */  lui        $at, %hi(D_80187C94_ovl5)
    /* 11B580 80174110 00031880 */  sll        $v1, $v1, 2
    /* 11B584 80174114 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 11B588 80174118 00230821 */  addu       $at, $at, $v1
    /* 11B58C 8017411C C4247C94 */  lwc1       $f4, %lo(D_80187C94_ovl5)($at)
    /* 11B590 80174120 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 11B594 80174124 000D7880 */  sll        $t7, $t5, 2
    /* 11B598 80174128 002F0821 */  addu       $at, $at, $t7
    /* 11B59C 8017412C E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 11B5A0 80174130 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 11B5A4 80174134 44803000 */  mtc1       $zero, $f6
    /* 11B5A8 80174138 3C088019 */  lui        $t0, %hi(D_8018E458_ovl5)
    /* 11B5AC 8017413C 01034021 */  addu       $t0, $t0, $v1
    /* 11B5B0 80174140 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 11B5B4 80174144 000EC080 */  sll        $t8, $t6, 2
    /* 11B5B8 80174148 8D08E458 */  lw         $t0, %lo(D_8018E458_ovl5)($t0)
    /* 11B5BC 8017414C 00380821 */  addu       $at, $at, $t8
    /* 11B5C0 80174150 E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 11B5C4 80174154 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 11B5C8 80174158 3C04800E */  lui        $a0, %hi(gEntitiesNextPosZArray)
    /* 11B5CC 8017415C 24842950 */  addiu      $a0, $a0, %lo(gEntitiesNextPosZArray)
    /* 11B5D0 80174160 0008C880 */  sll        $t9, $t0, 2
    /* 11B5D4 80174164 00994821 */  addu       $t1, $a0, $t9
    /* 11B5D8 80174168 C5280000 */  lwc1       $f8, 0x0($t1)
    /* 11B5DC 8017416C 000A5880 */  sll        $t3, $t2, 2
    /* 11B5E0 80174170 008B6021 */  addu       $t4, $a0, $t3
    /* 11B5E4 80174174 1000001E */  b          .L801741F0_ovl5
    /* 11B5E8 80174178 E5880000 */   swc1      $f8, 0x0($t4)
  .L8017417C_ovl5:
    /* 11B5EC 8017417C 8FA30034 */  lw         $v1, 0x34($sp)
    /* 11B5F0 80174180 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 11B5F4 80174184 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 11B5F8 80174188 3C018018 */  lui        $at, %hi(D_80187C94_ovl5)
    /* 11B5FC 8017418C 00031880 */  sll        $v1, $v1, 2
    /* 11B600 80174190 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 11B604 80174194 00230821 */  addu       $at, $at, $v1
    /* 11B608 80174198 C42A7C94 */  lwc1       $f10, %lo(D_80187C94_ovl5)($at)
    /* 11B60C 8017419C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 11B610 801741A0 000D7880 */  sll        $t7, $t5, 2
    /* 11B614 801741A4 002F0821 */  addu       $at, $at, $t7
    /* 11B618 801741A8 E42A25D0 */  swc1       $f10, %lo(gEntitiesNextPosXArray)($at)
    /* 11B61C 801741AC 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 11B620 801741B0 3C014296 */  lui        $at, (0x42960000 >> 16)
    /* 11B624 801741B4 44818000 */  mtc1       $at, $f16
    /* 11B628 801741B8 3C088019 */  lui        $t0, %hi(D_8018E458_ovl5)
    /* 11B62C 801741BC 01034021 */  addu       $t0, $t0, $v1
    /* 11B630 801741C0 8D08E458 */  lw         $t0, %lo(D_8018E458_ovl5)($t0)
    /* 11B634 801741C4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 11B638 801741C8 000EC080 */  sll        $t8, $t6, 2
    /* 11B63C 801741CC 00380821 */  addu       $at, $at, $t8
    /* 11B640 801741D0 E4302790 */  swc1       $f16, %lo(gEntitiesNextPosYArray)($at)
    /* 11B644 801741D4 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 11B648 801741D8 0008C880 */  sll        $t9, $t0, 2
    /* 11B64C 801741DC 00994821 */  addu       $t1, $a0, $t9
    /* 11B650 801741E0 C5320000 */  lwc1       $f18, 0x0($t1)
    /* 11B654 801741E4 000A5880 */  sll        $t3, $t2, 2
    /* 11B658 801741E8 008B6021 */  addu       $t4, $a0, $t3
    /* 11B65C 801741EC E5920000 */  swc1       $f18, 0x0($t4)
  .L801741F0_ovl5:
    /* 11B660 801741F0 27A40028 */  addiu      $a0, $sp, 0x28
    /* 11B664 801741F4 0C05BFD8 */  jal        func_8016FF60_ovl5
    /* 11B668 801741F8 8FA50034 */   lw        $a1, 0x34($sp)
    /* 11B66C 801741FC 8FA20028 */  lw         $v0, 0x28($sp)
    /* 11B670 80174200 24010001 */  addiu      $at, $zero, 0x1
    /* 11B674 80174204 27A40028 */  addiu      $a0, $sp, 0x28
    /* 11B678 80174208 14410013 */  bne        $v0, $at, .L80174258_ovl5
    /* 11B67C 8017420C 3C028005 */   lui       $v0, %hi(omCurrentObj)
    /* 11B680 80174210 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 11B684 80174214 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
    /* 11B688 80174218 44810000 */  mtc1       $at, $f0
    /* 11B68C 8017421C 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 11B690 80174220 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
    /* 11B694 80174224 000D7880 */  sll        $t7, $t5, 2
    /* 11B698 80174228 002F0821 */  addu       $at, $at, $t7
    /* 11B69C 8017422C E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
    /* 11B6A0 80174230 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 11B6A4 80174234 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
    /* 11B6A8 80174238 000EC080 */  sll        $t8, $t6, 2
    /* 11B6AC 8017423C 00380821 */  addu       $at, $at, $t8
    /* 11B6B0 80174240 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
    /* 11B6B4 80174244 8C480000 */  lw         $t0, 0x0($v0)
    /* 11B6B8 80174248 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
    /* 11B6BC 8017424C 0008C880 */  sll        $t9, $t0, 2
    /* 11B6C0 80174250 00390821 */  addu       $at, $at, $t9
    /* 11B6C4 80174254 E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
  .L80174258_ovl5:
    /* 11B6C8 80174258 0C05BFD8 */  jal        func_8016FF60_ovl5
    /* 11B6CC 8017425C 8FA50034 */   lw        $a1, 0x34($sp)
    /* 11B6D0 80174260 8FA20028 */  lw         $v0, 0x28($sp)
    /* 11B6D4 80174264 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
    /* 11B6D8 80174268 44810000 */  mtc1       $at, $f0
    /* 11B6DC 8017426C 10400009 */  beqz       $v0, .L80174294_ovl5
    /* 11B6E0 80174270 24010001 */   addiu     $at, $zero, 0x1
    /* 11B6E4 80174274 1041000B */  beq        $v0, $at, .L801742A4_ovl5
    /* 11B6E8 80174278 24010002 */   addiu     $at, $zero, 0x2
    /* 11B6EC 8017427C 10410005 */  beq        $v0, $at, .L80174294_ovl5
    /* 11B6F0 80174280 24010003 */   addiu     $at, $zero, 0x3
    /* 11B6F4 80174284 1041001C */  beq        $v0, $at, .L801742F8_ovl5
    /* 11B6F8 80174288 00000000 */   nop
    /* 11B6FC 8017428C 1000001C */  b          .L80174300_ovl5
    /* 11B700 80174290 00000000 */   nop
  .L80174294_ovl5:
    /* 11B704 80174294 0C029D9E */  jal        play_sound
    /* 11B708 80174298 240400FC */   addiu     $a0, $zero, 0xFC
    /* 11B70C 8017429C 10000018 */  b          .L80174300_ovl5
    /* 11B710 801742A0 00000000 */   nop
  .L801742A4_ovl5:
    /* 11B714 801742A4 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 11B718 801742A8 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 11B71C 801742AC 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
    /* 11B720 801742B0 240400F9 */  addiu      $a0, $zero, 0xF9
    /* 11B724 801742B4 8C490000 */  lw         $t1, 0x0($v0)
    /* 11B728 801742B8 00095080 */  sll        $t2, $t1, 2
    /* 11B72C 801742BC 002A0821 */  addu       $at, $at, $t2
    /* 11B730 801742C0 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
    /* 11B734 801742C4 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 11B738 801742C8 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
    /* 11B73C 801742CC 000B6080 */  sll        $t4, $t3, 2
    /* 11B740 801742D0 002C0821 */  addu       $at, $at, $t4
    /* 11B744 801742D4 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
    /* 11B748 801742D8 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 11B74C 801742DC 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
    /* 11B750 801742E0 000D7880 */  sll        $t7, $t5, 2
    /* 11B754 801742E4 002F0821 */  addu       $at, $at, $t7
    /* 11B758 801742E8 0C029D9E */  jal        play_sound
    /* 11B75C 801742EC E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
    /* 11B760 801742F0 10000003 */  b          .L80174300_ovl5
    /* 11B764 801742F4 00000000 */   nop
  .L801742F8_ovl5:
    /* 11B768 801742F8 0C029D9E */  jal        play_sound
    /* 11B76C 801742FC 240400FA */   addiu     $a0, $zero, 0xFA
  .L80174300_ovl5:
    /* 11B770 80174300 0C02BC9F */  jal        func_800AF27C
    /* 11B774 80174304 00000000 */   nop
    /* 11B778 80174308 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 11B77C 8017430C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 11B780 80174310 0C02C640 */  jal        func_800B1900
    /* 11B784 80174314 95C40002 */   lhu       $a0, 0x2($t6)
    /* 11B788 80174318 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 11B78C 8017431C 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 11B790 80174320 03E00008 */  jr         $ra
    /* 11B794 80174324 00000000 */   nop
endlabel func_80174044_ovl5
.size func_80174044_ovl5, . - func_80174044_ovl5
