glabel func_80168E84_ovl5
/* 1102F4 80168E84 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1102F8 80168E88 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1102FC 80168E8C AFB00018 */  sw         $s0, 0x18($sp)
/* 110300 80168E90 0C0597C7 */  jal        func_80165F1C_ovl5
/* 110304 80168E94 AFA40050 */   sw        $a0, 0x50($sp)
/* 110308 80168E98 27A4004C */  addiu      $a0, $sp, 0x4C
/* 11030C 80168E9C 0C05A38D */  jal        func_80168E34_ovl5
/* 110310 80168EA0 00402825 */   or        $a1, $v0, $zero
/* 110314 80168EA4 8FAE0050 */  lw         $t6, 0x50($sp)
/* 110318 80168EA8 3C188019 */  lui        $t8, %hi(func_8018E3B0_ovl5 + 0x20)
/* 11031C 80168EAC 2718E3D0 */  addiu      $t8, $t8, %lo(func_8018E3B0_ovl5 + 0x20)
/* 110320 80168EB0 000E7880 */  sll        $t7, $t6, 2
/* 110324 80168EB4 01EE7821 */  addu       $t7, $t7, $t6
/* 110328 80168EB8 000F7880 */  sll        $t7, $t7, 2
/* 11032C 80168EBC 01F88021 */  addu       $s0, $t7, $t8
/* 110330 80168EC0 0C0597C7 */  jal        func_80165F1C_ovl5
/* 110334 80168EC4 92040000 */   lbu       $a0, 0x0($s0)
/* 110338 80168EC8 2401029A */  addiu      $at, $zero, 0x29A
/* 11033C 80168ECC 14410008 */  bne        $v0, $at, .L80168EF0_ovl5
/* 110340 80168ED0 00000000 */   nop
/* 110344 80168ED4 0C006291 */  jal        random_soft_s32_range
/* 110348 80168ED8 24040004 */   addiu     $a0, $zero, 0x4
/* 11034C 80168EDC A2020010 */  sb         $v0, 0x10($s0)
/* 110350 80168EE0 0C006291 */  jal        random_soft_s32_range
/* 110354 80168EE4 24040004 */   addiu     $a0, $zero, 0x4
/* 110358 80168EE8 1000007D */  b          .L801690E0_ovl5
/* 11035C 80168EEC A2020011 */   sb        $v0, 0x11($s0)
.L80168EF0_ovl5:
/* 110360 80168EF0 0C0597C7 */  jal        func_80165F1C_ovl5
/* 110364 80168EF4 92040000 */   lbu       $a0, 0x0($s0)
/* 110368 80168EF8 27A40048 */  addiu      $a0, $sp, 0x48
/* 11036C 80168EFC 0C05A38D */  jal        func_80168E34_ovl5
.L80168F00_ovl3:
/* 110370 80168F00 00402825 */   or        $a1, $v0, $zero
/* 110374 80168F04 93A60048 */  lbu        $a2, 0x48($sp)
/* 110378 80168F08 93A7004C */  lbu        $a3, 0x4C($sp)
/* 11037C 80168F0C 93B90049 */  lbu        $t9, 0x49($sp)
/* 110380 80168F10 93AA004D */  lbu        $t2, 0x4D($sp)
/* 110384 80168F14 14C7000A */  bne        $a2, $a3, .L80168F40_ovl5
/* 110388 80168F18 00E62023 */   subu      $a0, $a3, $a2
/* 11038C 80168F1C 572A0009 */  bnel       $t9, $t2, .L80168F44_ovl5
/* 110390 80168F20 93A80049 */   lbu       $t0, 0x49($sp)
/* 110394 80168F24 0C006291 */  jal        random_soft_s32_range
/* 110398 80168F28 24040004 */   addiu     $a0, $zero, 0x4
/* 11039C 80168F2C A2020010 */  sb         $v0, 0x10($s0)
/* 1103A0 80168F30 0C006291 */  jal        random_soft_s32_range
/* 1103A4 80168F34 24040004 */   addiu     $a0, $zero, 0x4
/* 1103A8 80168F38 10000069 */  b          .L801690E0_ovl5
/* 1103AC 80168F3C A2020011 */   sb        $v0, 0x11($s0)
.L80168F40_ovl5:
/* 1103B0 80168F40 93A80049 */  lbu        $t0, 0x49($sp)
.L80168F44_ovl5:
/* 1103B4 80168F44 04810003 */  bgez       $a0, .L80168F54_ovl5
/* 1103B8 80168F48 93A9004D */   lbu       $t1, 0x4D($sp)
/* 1103BC 80168F4C 10000002 */  b          .L80168F58_ovl5
/* 1103C0 80168F50 00042823 */   negu      $a1, $a0
.L80168F54_ovl5:
/* 1103C4 80168F54 00802825 */  or         $a1, $a0, $zero
.L80168F58_ovl5:
/* 1103C8 80168F58 01281823 */  subu       $v1, $t1, $t0
/* 1103CC 80168F5C 04610003 */  bgez       $v1, .L80168F6C_ovl5
/* 1103D0 80168F60 00601025 */   or        $v0, $v1, $zero
/* 1103D4 80168F64 10000001 */  b          .L80168F6C_ovl5
/* 1103D8 80168F68 00031023 */   negu      $v0, $v1
.L80168F6C_ovl5:
/* 1103DC 80168F6C 00A2082A */  slt        $at, $a1, $v0
/* 1103E0 80168F70 1020002F */  beqz       $at, .L80169030_ovl5
/* 1103E4 80168F74 3C0A8019 */   lui       $t2, %hi(func_8018E3B0_ovl5 + 0x75)
/* 1103E8 80168F78 04610003 */  bgez       $v1, .L80168F88_ovl5
/* 1103EC 80168F7C 3C0B8019 */   lui       $t3, %hi(func_8018E3B0_ovl5 + 0x75)
/* 1103F0 80168F80 10000002 */  b          .L80168F8C_ovl5
/* 1103F4 80168F84 00032823 */   negu      $a1, $v1
.L80168F88_ovl5:
/* 1103F8 80168F88 00602825 */  or         $a1, $v1, $zero
.L80168F8C_ovl5:
/* 1103FC 80168F8C 916BE425 */  lbu        $t3, %lo(func_8018E3B0_ovl5 + 0x75)($t3)
/* 110400 80168F90 24010002 */  addiu      $at, $zero, 0x2
/* 110404 80168F94 24020003 */  addiu      $v0, $zero, 0x3
/* 110408 80168F98 15610003 */  bne        $t3, $at, .L80168FA8_ovl5
/* 11040C 80168F9C 00000000 */   nop
/* 110410 80168FA0 10000001 */  b          .L80168FA8_ovl5
/* 110414 80168FA4 24020002 */   addiu     $v0, $zero, 0x2
.L80168FA8_ovl5:
/* 110418 80168FA8 0045082A */  slt        $at, $v0, $a1
/* 11041C 80168FAC 54200009 */  bnel       $at, $zero, .L80168FD4_ovl5
/* 110420 80168FB0 00C7082A */   slt       $at, $a2, $a3
/* 110424 80168FB4 0C006291 */  jal        random_soft_s32_range
/* 110428 80168FB8 24040004 */   addiu     $a0, $zero, 0x4
/* 11042C 80168FBC A2020010 */  sb         $v0, 0x10($s0)
/* 110430 80168FC0 0C006291 */  jal        random_soft_s32_range
/* 110434 80168FC4 24040004 */   addiu     $a0, $zero, 0x4
/* 110438 80168FC8 10000045 */  b          .L801690E0_ovl5
/* 11043C 80168FCC A2020011 */   sb        $v0, 0x11($s0)
/* 110440 80168FD0 00C7082A */  slt        $at, $a2, $a3
.L80168FD4_ovl5:
/* 110444 80168FD4 1020000B */  beqz       $at, .L80169004_ovl5
/* 110448 80168FD8 0109082A */   slt       $at, $t0, $t1
/* 11044C 80168FDC 10200006 */  beqz       $at, .L80168FF8_ovl5
/* 110450 80168FE0 240E0003 */   addiu     $t6, $zero, 0x3
/* 110454 80168FE4 240C0003 */  addiu      $t4, $zero, 0x3
/* 110458 80168FE8 240D0001 */  addiu      $t5, $zero, 0x1
/* 11045C 80168FEC A20C0010 */  sb         $t4, 0x10($s0)
/* 110460 80168FF0 1000003B */  b          .L801690E0_ovl5
/* 110464 80168FF4 A20D0011 */   sb        $t5, 0x11($s0)
.L80168FF8_ovl5:
/* 110468 80168FF8 A20E0010 */  sb         $t6, 0x10($s0)
/* 11046C 80168FFC 10000038 */  b          .L801690E0_ovl5
/* 110470 80169000 A2000011 */   sb        $zero, 0x11($s0)
.L80169004_ovl5:
/* 110474 80169004 0109082A */  slt        $at, $t0, $t1
/* 110478 80169008 10200006 */  beqz       $at, .L80169024_ovl5
/* 11047C 8016900C 24190002 */   addiu     $t9, $zero, 0x2
/* 110480 80169010 240F0002 */  addiu      $t7, $zero, 0x2
/* 110484 80169014 24180001 */  addiu      $t8, $zero, 0x1
/* 110488 80169018 A20F0010 */  sb         $t7, 0x10($s0)
/* 11048C 8016901C 10000030 */  b          .L801690E0_ovl5
/* 110490 80169020 A2180011 */   sb        $t8, 0x11($s0)
.L80169024_ovl5:
/* 110494 80169024 A2190010 */  sb         $t9, 0x10($s0)
/* 110498 80169028 1000002D */  b          .L801690E0_ovl5
/* 11049C 8016902C A2000011 */   sb        $zero, 0x11($s0)
.L80169030_ovl5:
/* 1104A0 80169030 04810003 */  bgez       $a0, .L80169040_ovl5
/* 1104A4 80169034 00802825 */   or        $a1, $a0, $zero
/* 1104A8 80169038 10000001 */  b          .L80169040_ovl5
/* 1104AC 8016903C 00042823 */   negu      $a1, $a0
.L80169040_ovl5:
/* 1104B0 80169040 914AE425 */  lbu        $t2, %lo(func_8018E3B0_ovl5 + 0x75)($t2)
/* 1104B4 80169044 24010002 */  addiu      $at, $zero, 0x2
.L80169048_ovl3:
/* 1104B8 80169048 24020003 */  addiu      $v0, $zero, 0x3
/* 1104BC 8016904C 15410003 */  bne        $t2, $at, .L8016905C_ovl5
/* 1104C0 80169050 00000000 */   nop
/* 1104C4 80169054 10000001 */  b          .L8016905C_ovl5
.L80169058_ovl3:
/* 1104C8 80169058 24020002 */   addiu     $v0, $zero, 0x2
.L8016905C_ovl5:
/* 1104CC 8016905C 0045082A */  slt        $at, $v0, $a1
/* 1104D0 80169060 54200009 */  bnel       $at, $zero, .L80169088_ovl5
/* 1104D4 80169064 0109082A */   slt       $at, $t0, $t1
/* 1104D8 80169068 0C006291 */  jal        random_soft_s32_range
/* 1104DC 8016906C 24040004 */   addiu     $a0, $zero, 0x4
/* 1104E0 80169070 A2020010 */  sb         $v0, 0x10($s0)
/* 1104E4 80169074 0C006291 */  jal        random_soft_s32_range
/* 1104E8 80169078 24040004 */   addiu     $a0, $zero, 0x4
/* 1104EC 8016907C 10000018 */  b          .L801690E0_ovl5
/* 1104F0 80169080 A2020011 */   sb        $v0, 0x11($s0)
/* 1104F4 80169084 0109082A */  slt        $at, $t0, $t1
.L80169088_ovl5:
/* 1104F8 80169088 1020000C */  beqz       $at, .L801690BC_ovl5
/* 1104FC 8016908C 00C7082A */   slt       $at, $a2, $a3
/* 110500 80169090 10200006 */  beqz       $at, .L801690AC_ovl5
/* 110504 80169094 240D0001 */   addiu     $t5, $zero, 0x1
/* 110508 80169098 240B0001 */  addiu      $t3, $zero, 0x1
/* 11050C 8016909C 240C0003 */  addiu      $t4, $zero, 0x3
/* 110510 801690A0 A20B0010 */  sb         $t3, 0x10($s0)
/* 110514 801690A4 1000000E */  b          .L801690E0_ovl5
/* 110518 801690A8 A20C0011 */   sb        $t4, 0x11($s0)
.L801690AC_ovl5:
/* 11051C 801690AC 240E0002 */  addiu      $t6, $zero, 0x2
/* 110520 801690B0 A20D0010 */  sb         $t5, 0x10($s0)
/* 110524 801690B4 1000000A */  b          .L801690E0_ovl5
/* 110528 801690B8 A20E0011 */   sb        $t6, 0x11($s0)
.L801690BC_ovl5:
/* 11052C 801690BC 00C7082A */  slt        $at, $a2, $a3
/* 110530 801690C0 10200005 */  beqz       $at, .L801690D8_ovl5
/* 110534 801690C4 24180002 */   addiu     $t8, $zero, 0x2
/* 110538 801690C8 240F0003 */  addiu      $t7, $zero, 0x3
/* 11053C 801690CC A2000010 */  sb         $zero, 0x10($s0)
/* 110540 801690D0 10000003 */  b          .L801690E0_ovl5
/* 110544 801690D4 A20F0011 */   sb        $t7, 0x11($s0)
.L801690D8_ovl5:
/* 110548 801690D8 A2000010 */  sb         $zero, 0x10($s0)
/* 11054C 801690DC A2180011 */  sb         $t8, 0x11($s0)
.L801690E0_ovl5:
/* 110550 801690E0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 110554 801690E4 8FB00018 */  lw         $s0, 0x18($sp)
/* 110558 801690E8 27BD0050 */  addiu      $sp, $sp, 0x50
/* 11055C 801690EC 03E00008 */  jr         $ra
/* 110560 801690F0 00000000 */   nop
