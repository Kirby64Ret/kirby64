glabel func_8017559C_ovl5
/* 11CA0C 8017559C 27BDFFE8 */  addiu      $sp, $sp, -0x18
.L801755A0_ovl3:
/* 11CA10 801755A0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 11CA14 801755A4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 11CA18 801755A8 AFBF0014 */  sw         $ra, 0x14($sp)
.L801755AC_ovl3:
/* 11CA1C 801755AC AFA40018 */  sw         $a0, 0x18($sp)
/* 11CA20 801755B0 AFA5001C */  sw         $a1, 0x1C($sp)
/* 11CA24 801755B4 AFA60020 */  sw         $a2, 0x20($sp)
/* 11CA28 801755B8 8C4F0000 */  lw         $t7, 0x0($v0)
/* 11CA2C 801755BC 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 11CA30 801755C0 3C0A8017 */  lui        $t2, %hi(func_80175808_ovl5)
/* 11CA34 801755C4 000FC080 */  sll        $t8, $t7, 2
/* 11CA38 801755C8 00380821 */  addu       $at, $at, $t8
/* 11CA3C 801755CC AC2598E0 */  sw         $a1, %lo(D_800E98E0)($at)
/* 11CA40 801755D0 8C480000 */  lw         $t0, 0x0($v0)
/* 11CA44 801755D4 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 11CA48 801755D8 254A5808 */  addiu      $t2, $t2, %lo(func_80175808_ovl5)
/* 11CA4C 801755DC 00084880 */  sll        $t1, $t0, 2
/* 11CA50 801755E0 00290821 */  addu       $at, $at, $t1
/* 11CA54 801755E4 AC269AA0 */  sw         $a2, %lo(D_800E9AA0)($at)
/* 11CA58 801755E8 8C4B0000 */  lw         $t3, 0x0($v0)
/* 11CA5C 801755EC 3C01800E */  lui        $at, %hi(D_800DF150)
/* 11CA60 801755F0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
/* 11CA64 801755F4 000B6080 */  sll        $t4, $t3, 2
.L801755F8_ovl3:
/* 11CA68 801755F8 002C0821 */  addu       $at, $at, $t4
/* 11CA6C 801755FC AC2AF150 */  sw         $t2, %lo(D_800DF150)($at)
/* 11CA70 80175600 8C4D0000 */  lw         $t5, 0x0($v0)
/* 11CA74 80175604 3C058017 */  lui        $a1, %hi(func_801773C4_ovl5)
/* 11CA78 80175608 24A573C4 */  addiu      $a1, $a1, %lo(func_801773C4_ovl5)
/* 11CA7C 8017560C 000D7880 */  sll        $t7, $t5, 2
.L80175610_ovl3:
/* 11CA80 80175610 008F2021 */  addu       $a0, $a0, $t7
/* 11CA84 80175614 0C02C7DA */  jal        func_800B1F68
/* 11CA88 80175618 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 11CA8C 8017561C 3C048018 */  lui        $a0, %hi(.L80187CDC_ovl5)
.L80175620_ovl3:
/* 11CA90 80175620 3C050001 */  lui        $a1, (0x1869F >> 16)
/* 11CA94 80175624 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* 11CA98 80175628 8C847CDC */  lw         $a0, %lo(.L80187CDC_ovl5)($a0)
/* 11CA9C 8017562C 0C02A619 */  jal        func_800A9864
/* 11CAA0 80175630 24060010 */   addiu     $a2, $zero, 0x10
/* 11CAA4 80175634 3C048018 */  lui        $a0, %hi(D_80187CE0_ovl5)
/* 11CAA8 80175638 0C02A806 */  jal        func_800AA018
/* 11CAAC 8017563C 8C847CE0 */   lw        $a0, %lo(D_80187CE0_ovl5)($a0)
/* 11CAB0 80175640 3C028018 */  lui        $v0, %hi(D_80187CE0_ovl5)
/* 11CAB4 80175644 24427CE0 */  addiu      $v0, $v0, %lo(D_80187CE0_ovl5)
/* 11CAB8 80175648 8C4E0000 */  lw         $t6, 0x0($v0)
/* 11CABC 8017564C 11C00003 */  beqz       $t6, .L8017565C_ovl5
/* 11CAC0 80175650 00000000 */   nop
/* 11CAC4 80175654 0C02A806 */  jal        func_800AA018
.L80175658_ovl3:
/* 11CAC8 80175658 8C440004 */   lw        $a0, 0x4($v0)
.L8017565C_ovl5:
/* 11CACC 8017565C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 11CAD0 80175660 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 11CAD4 80175664 3C018019 */  lui        $at, %hi(D_8018DC6C_ovl5)
/* 11CAD8 80175668 C420DC6C */  lwc1       $f0, %lo(D_8018DC6C_ovl5)($at)
/* 11CADC 8017566C 8C580000 */  lw         $t8, 0x0($v0)
/* 11CAE0 80175670 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 11CAE4 80175674 3C0C8019 */  lui        $t4, %hi(D_8018ECD8_ovl5)
/* 11CAE8 80175678 00184080 */  sll        $t0, $t8, 2
/* 11CAEC 8017567C 00280821 */  addu       $at, $at, $t0
/* 11CAF0 80175680 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 11CAF4 80175684 8C590000 */  lw         $t9, 0x0($v0)
/* 11CAF8 80175688 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 11CAFC 8017568C 918CECD8 */  lbu        $t4, %lo(D_8018ECD8_ovl5)($t4)
.L80175690_ovl3:
/* 11CB00 80175690 00194880 */  sll        $t1, $t9, 2
/* 11CB04 80175694 00290821 */  addu       $at, $at, $t1
/* 11CB08 80175698 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 11CB0C 8017569C 8C4B0000 */  lw         $t3, 0x0($v0)
/* 11CB10 801756A0 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 11CB14 801756A4 3C04800E */  lui        $a0, %hi(gEntitiesNextPosXArray)
/* 11CB18 801756A8 000B5080 */  sll        $t2, $t3, 2
/* 11CB1C 801756AC 002A0821 */  addu       $at, $at, $t2
/* 11CB20 801756B0 E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
/* 11CB24 801756B4 24010003 */  addiu      $at, $zero, 0x3
.L801756B8_ovl3:
/* 11CB28 801756B8 15810025 */  bne        $t4, $at, .L80175750_ovl5
/* 11CB2C 801756BC 248425D0 */   addiu     $a0, $a0, %lo(gEntitiesNextPosXArray)
/* 11CB30 801756C0 8FAD001C */  lw         $t5, 0x1C($sp)
/* 11CB34 801756C4 8FAE0020 */  lw         $t6, 0x20($sp)
/* 11CB38 801756C8 3C038019 */  lui        $v1, %hi(func_8018E3B0_ovl5 + 0xC8)
/* 11CB3C 801756CC 000D7880 */  sll        $t7, $t5, 2
/* 11CB40 801756D0 01ED7821 */  addu       $t7, $t7, $t5
/* 11CB44 801756D4 000F78C0 */  sll        $t7, $t7, 3
/* 11CB48 801756D8 01ED7821 */  addu       $t7, $t7, $t5
.L801756DC_ovl3:
/* 11CB4C 801756DC 000F78C0 */  sll        $t7, $t7, 3
.L801756E0_ovl3:
/* 11CB50 801756E0 000EC080 */  sll        $t8, $t6, 2
/* 11CB54 801756E4 01F84021 */  addu       $t0, $t7, $t8
/* 11CB58 801756E8 00681821 */  addu       $v1, $v1, $t0
/* 11CB5C 801756EC 8C63E478 */  lw         $v1, %lo(func_8018E3B0_ovl5 + 0xC8)($v1)
/* 11CB60 801756F0 3C04800E */  lui        $a0, %hi(gEntitiesNextPosXArray)
/* 11CB64 801756F4 8C490000 */  lw         $t1, 0x0($v0)
/* 11CB68 801756F8 248425D0 */  addiu      $a0, $a0, %lo(gEntitiesNextPosXArray)
/* 11CB6C 801756FC 00031880 */  sll        $v1, $v1, 2
/* 11CB70 80175700 0083C821 */  addu       $t9, $a0, $v1
/* 11CB74 80175704 C7240000 */  lwc1       $f4, 0x0($t9)
/* 11CB78 80175708 00095880 */  sll        $t3, $t1, 2
/* 11CB7C 8017570C 008B5021 */  addu       $t2, $a0, $t3
/* 11CB80 80175710 E5440000 */  swc1       $f4, 0x0($t2)
/* 11CB84 80175714 8C4C0000 */  lw         $t4, 0x0($v0)
/* 11CB88 80175718 44803000 */  mtc1       $zero, $f6
/* 11CB8C 8017571C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 11CB90 80175720 000C6880 */  sll        $t5, $t4, 2
/* 11CB94 80175724 002D0821 */  addu       $at, $at, $t5
/* 11CB98 80175728 E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 11CB9C 8017572C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 11CBA0 80175730 3C05800E */  lui        $a1, %hi(gEntitiesNextPosZArray)
/* 11CBA4 80175734 24A52950 */  addiu      $a1, $a1, %lo(gEntitiesNextPosZArray)
/* 11CBA8 80175738 00A37021 */  addu       $t6, $a1, $v1
/* 11CBAC 8017573C C5C80000 */  lwc1       $f8, 0x0($t6)
/* 11CBB0 80175740 000FC080 */  sll        $t8, $t7, 2
/* 11CBB4 80175744 00B84021 */  addu       $t0, $a1, $t8
/* 11CBB8 80175748 10000023 */  b          .L801757D8_ovl5
/* 11CBBC 8017574C E5080000 */   swc1      $f8, 0x0($t0)
.L80175750_ovl5:
/* 11CBC0 80175750 8FB9001C */  lw         $t9, 0x1C($sp)
glabel func_80175754_ovl3
/* 11CBC4 80175754 8FAB0020 */  lw         $t3, 0x20($sp)
/* 11CBC8 80175758 3C038019 */  lui        $v1, %hi(func_8018E3B0_ovl5 + 0xC8)
/* 11CBCC 8017575C 00194880 */  sll        $t1, $t9, 2
/* 11CBD0 80175760 01394821 */  addu       $t1, $t1, $t9
/* 11CBD4 80175764 000948C0 */  sll        $t1, $t1, 3
/* 11CBD8 80175768 01394821 */  addu       $t1, $t1, $t9
/* 11CBDC 8017576C 000948C0 */  sll        $t1, $t1, 3
/* 11CBE0 80175770 000B5080 */  sll        $t2, $t3, 2
/* 11CBE4 80175774 012A6021 */  addu       $t4, $t1, $t2
/* 11CBE8 80175778 006C1821 */  addu       $v1, $v1, $t4
/* 11CBEC 8017577C 8C63E478 */  lw         $v1, %lo(func_8018E3B0_ovl5 + 0xC8)($v1)
/* 11CBF0 80175780 8C4E0000 */  lw         $t6, 0x0($v0)
/* 11CBF4 80175784 3C014296 */  lui        $at, (0x42960000 >> 16)
/* 11CBF8 80175788 00031880 */  sll        $v1, $v1, 2
/* 11CBFC 8017578C 00836821 */  addu       $t5, $a0, $v1
/* 11CC00 80175790 C5AA0000 */  lwc1       $f10, 0x0($t5)
/* 11CC04 80175794 000E7880 */  sll        $t7, $t6, 2
/* 11CC08 80175798 008FC021 */  addu       $t8, $a0, $t7
/* 11CC0C 8017579C E70A0000 */  swc1       $f10, 0x0($t8)
/* 11CC10 801757A0 8C480000 */  lw         $t0, 0x0($v0)
/* 11CC14 801757A4 44818000 */  mtc1       $at, $f16
/* 11CC18 801757A8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 11CC1C 801757AC 0008C880 */  sll        $t9, $t0, 2
/* 11CC20 801757B0 00390821 */  addu       $at, $at, $t9
/* 11CC24 801757B4 3C05800E */  lui        $a1, %hi(gEntitiesNextPosZArray)
/* 11CC28 801757B8 E4302790 */  swc1       $f16, %lo(gEntitiesNextPosYArray)($at)
/* 11CC2C 801757BC 8C490000 */  lw         $t1, 0x0($v0)
/* 11CC30 801757C0 24A52950 */  addiu      $a1, $a1, %lo(gEntitiesNextPosZArray)
/* 11CC34 801757C4 00A35821 */  addu       $t3, $a1, $v1
/* 11CC38 801757C8 C5720000 */  lwc1       $f18, 0x0($t3)
/* 11CC3C 801757CC 00095080 */  sll        $t2, $t1, 2
/* 11CC40 801757D0 00AA6021 */  addu       $t4, $a1, $t2
/* 11CC44 801757D4 E5920000 */  swc1       $f18, 0x0($t4)
.L801757D8_ovl5:
/* 11CC48 801757D8 0C029D9E */  jal        play_sound
/* 11CC4C 801757DC 240400FB */   addiu     $a0, $zero, 0xFB
.L801757E0_ovl3:
/* 11CC50 801757E0 0C02BC9F */  jal        func_800AF27C
/* 11CC54 801757E4 00000000 */   nop
/* 11CC58 801757E8 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 11CC5C 801757EC 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 11CC60 801757F0 0C02C640 */  jal        func_800B1900
/* 11CC64 801757F4 95A40002 */   lhu       $a0, 0x2($t5)
/* 11CC68 801757F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11CC6C 801757FC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 11CC70 80175800 03E00008 */  jr         $ra
/* 11CC74 80175804 00000000 */   nop
