nonmatching func_8018B228_ovl3, 0x1A2C

glabel func_8018B228_ovl3
    /* EBC68 8018B228 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* EBC6C 8018B22C 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* EBC70 8018B230 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* EBC74 8018B234 AFBF0024 */  sw         $ra, 0x24($sp)
    /* EBC78 8018B238 AFB00020 */  sw         $s0, 0x20($sp)
    /* EBC7C 8018B23C AFA40068 */  sw         $a0, 0x68($sp)
    /* EBC80 8018B240 8DC30000 */  lw         $v1, 0x0($t6)
    /* EBC84 8018B244 3C0F800F */  lui        $t7, %hi(D_800EA520)
    /* EBC88 8018B248 3C18800F */  lui        $t8, %hi(D_800E98E0)
    /* EBC8C 8018B24C 00031880 */  sll        $v1, $v1, 2
    /* EBC90 8018B250 01E37821 */  addu       $t7, $t7, $v1
    /* EBC94 8018B254 8DEFA520 */  lw         $t7, %lo(D_800EA520)($t7)
    /* EBC98 8018B258 0303C021 */  addu       $t8, $t8, $v1
    /* EBC9C 8018B25C 11E0002D */  beqz       $t7, .L8018B314_ovl3
    /* EBCA0 8018B260 00000000 */   nop
    /* EBCA4 8018B264 8F1898E0 */  lw         $t8, %lo(D_800E98E0)($t8)
    /* EBCA8 8018B268 2719FFFE */  addiu      $t9, $t8, -0x2
    /* EBCAC 8018B26C 2F210006 */  sltiu      $at, $t9, 0x6
    /* EBCB0 8018B270 10200028 */  beqz       $at, .L8018B314_ovl3
    /* EBCB4 8018B274 0019C880 */   sll       $t9, $t9, 2
    /* EBCB8 8018B278 3C018019 */  lui        $at, %hi(jtbl_80197A0C_ovl3)
    /* EBCBC 8018B27C 00390821 */  addu       $at, $at, $t9
    /* EBCC0 8018B280 8C397A0C */  lw         $t9, %lo(jtbl_80197A0C_ovl3)($at)
    /* EBCC4 8018B284 03200008 */  jr         $t9
    /* EBCC8 8018B288 00000000 */   nop
  jlabel .L8018B28C_ovl3
    /* EBCCC 8018B28C 3C048019 */  lui        $a0, %hi(D_80195910_ovl3)
    /* EBCD0 8018B290 24845910 */  addiu      $a0, $a0, %lo(D_80195910_ovl3)
    /* EBCD4 8018B294 0C055127 */  jal        func_8015449C_ovl3
    /* EBCD8 8018B298 00002825 */   or        $a1, $zero, $zero
    /* EBCDC 8018B29C 1000001D */  b          .L8018B314_ovl3
    /* EBCE0 8018B2A0 00000000 */   nop
  jlabel .L8018B2A4_ovl3
    /* EBCE4 8018B2A4 3C048019 */  lui        $a0, %hi(D_80195A4C_ovl3)
    /* EBCE8 8018B2A8 24845A4C */  addiu      $a0, $a0, %lo(D_80195A4C_ovl3)
    /* EBCEC 8018B2AC 0C055127 */  jal        func_8015449C_ovl3
    /* EBCF0 8018B2B0 00002825 */   or        $a1, $zero, $zero
    /* EBCF4 8018B2B4 10000017 */  b          .L8018B314_ovl3
    /* EBCF8 8018B2B8 00000000 */   nop
  jlabel .L8018B2BC_ovl3
    /* EBCFC 8018B2BC 3C048019 */  lui        $a0, %hi(D_80195B88_ovl3)
    /* EBD00 8018B2C0 24845B88 */  addiu      $a0, $a0, %lo(D_80195B88_ovl3)
    /* EBD04 8018B2C4 0C055127 */  jal        func_8015449C_ovl3
    /* EBD08 8018B2C8 00002825 */   or        $a1, $zero, $zero
    /* EBD0C 8018B2CC 10000011 */  b          .L8018B314_ovl3
    /* EBD10 8018B2D0 00000000 */   nop
  jlabel .L8018B2D4_ovl3
    /* EBD14 8018B2D4 3C048019 */  lui        $a0, %hi(D_80195CC4_ovl3)
    /* EBD18 8018B2D8 24845CC4 */  addiu      $a0, $a0, %lo(D_80195CC4_ovl3)
    /* EBD1C 8018B2DC 0C055127 */  jal        func_8015449C_ovl3
    /* EBD20 8018B2E0 00002825 */   or        $a1, $zero, $zero
    /* EBD24 8018B2E4 1000000B */  b          .L8018B314_ovl3
    /* EBD28 8018B2E8 00000000 */   nop
  jlabel .L8018B2EC_ovl3
    /* EBD2C 8018B2EC 3C048019 */  lui        $a0, %hi(D_80195E00_ovl3)
    /* EBD30 8018B2F0 24845E00 */  addiu      $a0, $a0, %lo(D_80195E00_ovl3)
    /* EBD34 8018B2F4 0C055127 */  jal        func_8015449C_ovl3
    /* EBD38 8018B2F8 00002825 */   or        $a1, $zero, $zero
    /* EBD3C 8018B2FC 10000005 */  b          .L8018B314_ovl3
    /* EBD40 8018B300 00000000 */   nop
  jlabel .L8018B304_ovl3
    /* EBD44 8018B304 3C048019 */  lui        $a0, %hi(D_80195F3C_ovl3)
    /* EBD48 8018B308 24845F3C */  addiu      $a0, $a0, %lo(D_80195F3C_ovl3)
    /* EBD4C 8018B30C 0C055127 */  jal        func_8015449C_ovl3
    /* EBD50 8018B310 00002825 */   or        $a1, $zero, $zero
  .L8018B314_ovl3:
    /* EBD54 8018B314 0C054E61 */  jal        func_80153984_ovl3
    /* EBD58 8018B318 00000000 */   nop
    /* EBD5C 8018B31C 0C0473D6 */  jal        func_8011CF58
    /* EBD60 8018B320 00000000 */   nop
    /* EBD64 8018B324 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* EBD68 8018B328 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* EBD6C 8018B32C 3C0B800F */  lui        $t3, %hi(D_800EA520)
    /* EBD70 8018B330 3C108013 */  lui        $s0, %hi(gKirbyState)
    /* EBD74 8018B334 8D090000 */  lw         $t1, 0x0($t0)
    /* EBD78 8018B338 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
    /* EBD7C 8018B33C 00095080 */  sll        $t2, $t1, 2
    /* EBD80 8018B340 016A5821 */  addu       $t3, $t3, $t2
    /* EBD84 8018B344 8D6BA520 */  lw         $t3, %lo(D_800EA520)($t3)
    /* EBD88 8018B348 55600007 */  bnel       $t3, $zero, .L8018B368_ovl3
    /* EBD8C 8018B34C 8E0C0044 */   lw        $t4, 0x44($s0)
    /* EBD90 8018B350 0C0485EE */  jal        func_801217B8
    /* EBD94 8018B354 00000000 */   nop
    /* EBD98 8018B358 3C108013 */  lui        $s0, %hi(gKirbyState)
    /* EBD9C 8018B35C 1000002A */  b          .L8018B408_ovl3
    /* EBDA0 8018B360 2610E7C0 */   addiu     $s0, $s0, %lo(gKirbyState)
    /* EBDA4 8018B364 8E0C0044 */  lw         $t4, 0x44($s0)
  .L8018B368_ovl3:
    /* EBDA8 8018B368 24010003 */  addiu      $at, $zero, 0x3
    /* EBDAC 8018B36C 3C06BECC */  lui        $a2, (0xBECCCCCD >> 16)
    /* EBDB0 8018B370 11810025 */  beq        $t4, $at, .L8018B408_ovl3
    /* EBDB4 8018B374 34C6CCCD */   ori       $a2, $a2, (0xBECCCCCD & 0xFFFF)
    /* EBDB8 8018B378 3C018019 */  lui        $at, %hi(D_80197A24_ovl3)
    /* EBDBC 8018B37C C42C7A24 */  lwc1       $f12, %lo(D_80197A24_ovl3)($at)
    /* EBDC0 8018B380 3C014190 */  lui        $at, (0x41900000 >> 16)
    /* EBDC4 8018B384 44817000 */  mtc1       $at, $f14
    /* EBDC8 8018B388 0C04860A */  jal        func_80121828
    /* EBDCC 8018B38C 3C074110 */   lui       $a3, (0x41100000 >> 16)
    /* EBDD0 8018B390 1040001D */  beqz       $v0, .L8018B408_ovl3
    /* EBDD4 8018B394 00000000 */   nop
    /* EBDD8 8018B398 0C03EE45 */  jal        func_800FB914
    /* EBDDC 8018B39C 24040002 */   addiu     $a0, $zero, 0x2
    /* EBDE0 8018B3A0 00002025 */  or         $a0, $zero, $zero
    /* EBDE4 8018B3A4 0C02ED1A */  jal        func_800BB468
    /* EBDE8 8018B3A8 00002825 */   or        $a1, $zero, $zero
    /* EBDEC 8018B3AC 0C029D9E */  jal        play_sound
    /* EBDF0 8018B3B0 24040120 */   addiu     $a0, $zero, 0x120
    /* EBDF4 8018B3B4 0C048C76 */  jal        func_801231D8
    /* EBDF8 8018B3B8 00000000 */   nop
    /* EBDFC 8018B3BC 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* EBE00 8018B3C0 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* EBE04 8018B3C4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* EBE08 8018B3C8 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
    /* EBE0C 8018B3CC 8DA30000 */  lw         $v1, 0x0($t5)
    /* EBE10 8018B3D0 24040005 */  addiu      $a0, $zero, 0x5
    /* EBE14 8018B3D4 24050001 */  addiu      $a1, $zero, 0x1
    /* EBE18 8018B3D8 00031880 */  sll        $v1, $v1, 2
    /* EBE1C 8018B3DC 00230821 */  addu       $at, $at, $v1
    /* EBE20 8018B3E0 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* EBE24 8018B3E4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* EBE28 8018B3E8 00230821 */  addu       $at, $at, $v1
    /* EBE2C 8018B3EC C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
    /* EBE30 8018B3F0 00E33821 */  addu       $a3, $a3, $v1
    /* EBE34 8018B3F4 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
    /* EBE38 8018B3F8 00403025 */  or         $a2, $v0, $zero
    /* EBE3C 8018B3FC E7A40010 */  swc1       $f4, 0x10($sp)
    /* EBE40 8018B400 0C029FDD */  jal        func_800A7F74
    /* EBE44 8018B404 E7A60014 */   swc1      $f6, 0x14($sp)
  .L8018B408_ovl3:
    /* EBE48 8018B408 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* EBE4C 8018B40C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* EBE50 8018B410 3C0F800F */  lui        $t7, %hi(D_800E98E0)
    /* EBE54 8018B414 8DC20000 */  lw         $v0, 0x0($t6)
    /* EBE58 8018B418 00021880 */  sll        $v1, $v0, 2
    /* EBE5C 8018B41C 01E37821 */  addu       $t7, $t7, $v1
    /* EBE60 8018B420 8DEF98E0 */  lw         $t7, %lo(D_800E98E0)($t7)
    /* EBE64 8018B424 2DE10008 */  sltiu      $at, $t7, 0x8
    /* EBE68 8018B428 102005B5 */  beqz       $at, .L8018CB00_ovl3
    /* EBE6C 8018B42C 000F7880 */   sll       $t7, $t7, 2
    /* EBE70 8018B430 3C018019 */  lui        $at, %hi(jtbl_80197A28_ovl3)
    /* EBE74 8018B434 002F0821 */  addu       $at, $at, $t7
    /* EBE78 8018B438 8C2F7A28 */  lw         $t7, %lo(jtbl_80197A28_ovl3)($at)
    /* EBE7C 8018B43C 01E00008 */  jr         $t7
    /* EBE80 8018B440 00000000 */   nop
  jlabel .L8018B444_ovl3
    /* EBE84 8018B444 0C02BC8C */  jal        func_800AF230
    /* EBE88 8018B448 00000000 */   nop
    /* EBE8C 8018B44C 10400041 */  beqz       $v0, .L8018B554_ovl3
    /* EBE90 8018B450 00000000 */   nop
  .L8018B454_ovl3:
    /* EBE94 8018B454 0C006291 */  jal        random_soft_s32_range
    /* EBE98 8018B458 24040006 */   addiu     $a0, $zero, 0x6
    /* EBE9C 8018B45C 24580002 */  addiu      $t8, $v0, 0x2
    /* EBEA0 8018B460 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x10)
    /* EBEA4 8018B464 AC3871F8 */  sw         $t8, %lo(D_800D71E8 + 0x10)($at)
    /* EBEA8 8018B468 3C03800D */  lui        $v1, %hi(D_800D71E8 + 0x10)
    /* EBEAC 8018B46C 3C19801A */  lui        $t9, %hi(D_80198840_ovl3)
    /* EBEB0 8018B470 8F398840 */  lw         $t9, %lo(D_80198840_ovl3)($t9)
    /* EBEB4 8018B474 8C6371F8 */  lw         $v1, %lo(D_800D71E8 + 0x10)($v1)
    /* EBEB8 8018B478 1079FFF6 */  beq        $v1, $t9, .L8018B454_ovl3
    /* EBEBC 8018B47C 00000000 */   nop
    /* EBEC0 8018B480 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* EBEC4 8018B484 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* EBEC8 8018B488 3C01801A */  lui        $at, %hi(D_80198840_ovl3)
    /* EBECC 8018B48C AC238840 */  sw         $v1, %lo(D_80198840_ovl3)($at)
    /* EBED0 8018B490 8D2A0000 */  lw         $t2, 0x0($t1)
    /* EBED4 8018B494 3C08801A */  lui        $t0, %hi(D_80198840_ovl3)
    /* EBED8 8018B498 8D088840 */  lw         $t0, %lo(D_80198840_ovl3)($t0)
    /* EBEDC 8018B49C 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* EBEE0 8018B4A0 000A5880 */  sll        $t3, $t2, 2
    /* EBEE4 8018B4A4 002B0821 */  addu       $at, $at, $t3
    /* EBEE8 8018B4A8 24040012 */  addiu      $a0, $zero, 0x12
    /* EBEEC 8018B4AC 0C05A4F1 */  jal        func_801693C4_ovl3
    /* EBEF0 8018B4B0 AC2898E0 */   sw        $t0, %lo(D_800E98E0)($at)
    /* EBEF4 8018B4B4 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* EBEF8 8018B4B8 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* EBEFC 8018B4BC 00026880 */  sll        $t5, $v0, 2
    /* EBF00 8018B4C0 3C01800F */  lui        $at, %hi(D_800EC2E0)
    /* EBF04 8018B4C4 002D0821 */  addu       $at, $at, $t5
    /* EBF08 8018B4C8 240C0001 */  addiu      $t4, $zero, 0x1
    /* EBF0C 8018B4CC AC2CC2E0 */  sw         $t4, %lo(D_800EC2E0)($at)
    /* EBF10 8018B4D0 8DCF0000 */  lw         $t7, 0x0($t6)
    /* EBF14 8018B4D4 3C19800F */  lui        $t9, %hi(D_800E98E0)
    /* EBF18 8018B4D8 000FC080 */  sll        $t8, $t7, 2
    /* EBF1C 8018B4DC 0338C821 */  addu       $t9, $t9, $t8
    /* EBF20 8018B4E0 8F3998E0 */  lw         $t9, %lo(D_800E98E0)($t9)
    /* EBF24 8018B4E4 2729FFFE */  addiu      $t1, $t9, -0x2
    /* EBF28 8018B4E8 2D210006 */  sltiu      $at, $t1, 0x6
    /* EBF2C 8018B4EC 10200016 */  beqz       $at, .L8018B548_ovl3
    /* EBF30 8018B4F0 00094880 */   sll       $t1, $t1, 2
    /* EBF34 8018B4F4 3C018019 */  lui        $at, %hi(jtbl_80197A48_ovl3)
    /* EBF38 8018B4F8 00290821 */  addu       $at, $at, $t1
    /* EBF3C 8018B4FC 8C297A48 */  lw         $t1, %lo(jtbl_80197A48_ovl3)($at)
    /* EBF40 8018B500 01200008 */  jr         $t1
    /* EBF44 8018B504 00000000 */   nop
  jlabel .L8018B508_ovl3
    /* EBF48 8018B508 3C0A8019 */  lui        $t2, %hi(D_80190A14_ovl3)
    /* EBF4C 8018B50C 254A0A14 */  addiu      $t2, $t2, %lo(D_80190A14_ovl3)
    /* EBF50 8018B510 10000010 */  b          .L8018B554_ovl3
    /* EBF54 8018B514 AE0A015C */   sw        $t2, 0x15C($s0)
  jlabel .L8018B518_ovl3
    /* EBF58 8018B518 3C088019 */  lui        $t0, %hi(D_80190A7C_ovl3)
    /* EBF5C 8018B51C 25080A7C */  addiu      $t0, $t0, %lo(D_80190A7C_ovl3)
    /* EBF60 8018B520 1000000C */  b          .L8018B554_ovl3
    /* EBF64 8018B524 AE08015C */   sw        $t0, 0x15C($s0)
  jlabel .L8018B528_ovl3
    /* EBF68 8018B528 3C0B8019 */  lui        $t3, %hi(D_80190AE4_ovl3)
    /* EBF6C 8018B52C 256B0AE4 */  addiu      $t3, $t3, %lo(D_80190AE4_ovl3)
    /* EBF70 8018B530 10000008 */  b          .L8018B554_ovl3
    /* EBF74 8018B534 AE0B015C */   sw        $t3, 0x15C($s0)
  jlabel .L8018B538_ovl3
    /* EBF78 8018B538 3C0C8019 */  lui        $t4, %hi(D_801909AC_ovl3)
    /* EBF7C 8018B53C 258C09AC */  addiu      $t4, $t4, %lo(D_801909AC_ovl3)
    /* EBF80 8018B540 10000004 */  b          .L8018B554_ovl3
    /* EBF84 8018B544 AE0C015C */   sw        $t4, 0x15C($s0)
  jlabel .L8018B548_ovl3
    /* EBF88 8018B548 3C0D8019 */  lui        $t5, %hi(D_80190944_ovl3)
    /* EBF8C 8018B54C 25AD0944 */  addiu      $t5, $t5, %lo(D_80190944_ovl3)
    /* EBF90 8018B550 AE0D015C */  sw         $t5, 0x15C($s0)
  .L8018B554_ovl3:
    /* EBF94 8018B554 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* EBF98 8018B558 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* EBF9C 8018B55C 8DC30000 */  lw         $v1, 0x0($t6)
    /* EBFA0 8018B560 10000567 */  b          .L8018CB00_ovl3
    /* EBFA4 8018B564 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018B568_ovl3
    /* EBFA8 8018B568 8E0F0030 */  lw         $t7, 0x30($s0)
    /* EBFAC 8018B56C 3C18800F */  lui        $t8, %hi(D_800E9720)
    /* EBFB0 8018B570 27189720 */  addiu      $t8, $t8, %lo(D_800E9720)
    /* EBFB4 8018B574 11E00005 */  beqz       $t7, .L8018B58C_ovl3
    /* EBFB8 8018B578 00781021 */   addu      $v0, $v1, $t8
    /* EBFBC 8018B57C 0C04759F */  jal        func_8011D67C
    /* EBFC0 8018B580 00000000 */   nop
    /* EBFC4 8018B584 100005AF */  b          .L8018CC44_ovl3
    /* EBFC8 8018B588 8FBF0024 */   lw        $ra, 0x24($sp)
  .L8018B58C_ovl3:
    /* EBFCC 8018B58C 8C460000 */  lw         $a2, 0x0($v0)
    /* EBFD0 8018B590 3C048019 */  lui        $a0, %hi(D_80196048_ovl3)
    /* EBFD4 8018B594 24846048 */  addiu      $a0, $a0, %lo(D_80196048_ovl3)
    /* EBFD8 8018B598 10C005A9 */  beqz       $a2, .L8018CC40_ovl3
    /* EBFDC 8018B59C 24D9FFFF */   addiu     $t9, $a2, -0x1
    /* EBFE0 8018B5A0 AC590000 */  sw         $t9, 0x0($v0)
    /* EBFE4 8018B5A4 0C055127 */  jal        func_8015449C_ovl3
    /* EBFE8 8018B5A8 00002825 */   or        $a1, $zero, $zero
    /* EBFEC 8018B5AC 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* EBFF0 8018B5B0 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* EBFF4 8018B5B4 3C048019 */  lui        $a0, %hi(D_8019212C_ovl3)
    /* EBFF8 8018B5B8 2484212C */  addiu      $a0, $a0, %lo(D_8019212C_ovl3)
    /* EBFFC 8018B5BC 0C044681 */  jal        func_80111A04
    /* EC000 8018B5C0 8D250000 */   lw        $a1, 0x0($t1)
    /* EC004 8018B5C4 0C044713 */  jal        func_80111C4C
    /* EC008 8018B5C8 00402025 */   or        $a0, $v0, $zero
    /* EC00C 8018B5CC 1000059D */  b          .L8018CC44_ovl3
    /* EC010 8018B5D0 8FBF0024 */   lw        $ra, 0x24($sp)
  jlabel .L8018B5D4_ovl3
    /* EC014 8018B5D4 3C048019 */  lui        $a0, %hi(D_80191F4C_ovl3)
    /* EC018 8018B5D8 24841F4C */  addiu      $a0, $a0, %lo(D_80191F4C_ovl3)
    /* EC01C 8018B5DC 0C044681 */  jal        func_80111A04
    /* EC020 8018B5E0 00402825 */   or        $a1, $v0, $zero
    /* EC024 8018B5E4 0C044713 */  jal        func_80111C4C
    /* EC028 8018B5E8 00402025 */   or        $a0, $v0, $zero
    /* EC02C 8018B5EC 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* EC030 8018B5F0 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* EC034 8018B5F4 3C08800F */  lui        $t0, %hi(D_800EA520)
    /* EC038 8018B5F8 8D430000 */  lw         $v1, 0x0($t2)
    /* EC03C 8018B5FC 00031880 */  sll        $v1, $v1, 2
    /* EC040 8018B600 01034021 */  addu       $t0, $t0, $v1
    /* EC044 8018B604 8D08A520 */  lw         $t0, %lo(D_800EA520)($t0)
    /* EC048 8018B608 1100053D */  beqz       $t0, .L8018CB00_ovl3
    /* EC04C 8018B60C 00000000 */   nop
    /* EC050 8018B610 8E020044 */  lw         $v0, 0x44($s0)
    /* EC054 8018B614 2C410006 */  sltiu      $at, $v0, 0x6
    /* EC058 8018B618 102000A1 */  beqz       $at, .L8018B8A0_ovl3
    /* EC05C 8018B61C 00025880 */   sll       $t3, $v0, 2
    /* EC060 8018B620 3C018019 */  lui        $at, %hi(jtbl_80197A60_ovl3)
    /* EC064 8018B624 002B0821 */  addu       $at, $at, $t3
    /* EC068 8018B628 8C2B7A60 */  lw         $t3, %lo(jtbl_80197A60_ovl3)($at)
    /* EC06C 8018B62C 01600008 */  jr         $t3
    /* EC070 8018B630 00000000 */   nop
  jlabel .L8018B634_ovl3
    /* EC074 8018B634 0C02BC8C */  jal        func_800AF230
    /* EC078 8018B638 00000000 */   nop
    /* EC07C 8018B63C 1040000E */  beqz       $v0, .L8018B678_ovl3
    /* EC080 8018B640 3C0C8005 */   lui       $t4, %hi(omCurrentObj)
    /* EC084 8018B644 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* EC088 8018B648 3C0F800F */  lui        $t7, %hi(D_800E8920)
    /* EC08C 8018B64C 24180001 */  addiu      $t8, $zero, 0x1
    /* EC090 8018B650 8D8D0000 */  lw         $t5, 0x0($t4)
    /* EC094 8018B654 24190004 */  addiu      $t9, $zero, 0x4
    /* EC098 8018B658 000D7080 */  sll        $t6, $t5, 2
    /* EC09C 8018B65C 01EE7821 */  addu       $t7, $t7, $t6
    /* EC0A0 8018B660 8DEF8920 */  lw         $t7, %lo(D_800E8920)($t7)
    /* EC0A4 8018B664 51E00004 */  beql       $t7, $zero, .L8018B678_ovl3
    /* EC0A8 8018B668 AE190044 */   sw        $t9, 0x44($s0)
    /* EC0AC 8018B66C 10000002 */  b          .L8018B678_ovl3
    /* EC0B0 8018B670 AE180044 */   sw        $t8, 0x44($s0)
    /* EC0B4 8018B674 AE190044 */  sw         $t9, 0x44($s0)
  .L8018B678_ovl3:
    /* EC0B8 8018B678 10000089 */  b          .L8018B8A0_ovl3
    /* EC0BC 8018B67C 8E020044 */   lw        $v0, 0x44($s0)
  jlabel .L8018B680_ovl3
    /* EC0C0 8018B680 0C048724 */  jal        func_80121C90
    /* EC0C4 8018B684 00000000 */   nop
    /* EC0C8 8018B688 10400004 */  beqz       $v0, .L8018B69C_ovl3
    /* EC0CC 8018B68C 3C0A800D */   lui       $t2, %hi(gKirbyController + 0x2)
    /* EC0D0 8018B690 24090002 */  addiu      $t1, $zero, 0x2
    /* EC0D4 8018B694 10000013 */  b          .L8018B6E4_ovl3
    /* EC0D8 8018B698 AE090044 */   sw        $t1, 0x44($s0)
  .L8018B69C_ovl3:
    /* EC0DC 8018B69C 954A6FEA */  lhu        $t2, %lo(gKirbyController + 0x2)($t2)
    /* EC0E0 8018B6A0 240B0003 */  addiu      $t3, $zero, 0x3
    /* EC0E4 8018B6A4 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* EC0E8 8018B6A8 31488000 */  andi       $t0, $t2, 0x8000
    /* EC0EC 8018B6AC 11000003 */  beqz       $t0, .L8018B6BC_ovl3
    /* EC0F0 8018B6B0 00000000 */   nop
    /* EC0F4 8018B6B4 1000000B */  b          .L8018B6E4_ovl3
    /* EC0F8 8018B6B8 AE0B0044 */   sw        $t3, 0x44($s0)
  .L8018B6BC_ovl3:
    /* EC0FC 8018B6BC 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* EC100 8018B6C0 3C0F800F */  lui        $t7, %hi(D_800E8920)
    /* EC104 8018B6C4 24180004 */  addiu      $t8, $zero, 0x4
    /* EC108 8018B6C8 8D8D0000 */  lw         $t5, 0x0($t4)
    /* EC10C 8018B6CC 000D7080 */  sll        $t6, $t5, 2
    /* EC110 8018B6D0 01EE7821 */  addu       $t7, $t7, $t6
    /* EC114 8018B6D4 8DEF8920 */  lw         $t7, %lo(D_800E8920)($t7)
    /* EC118 8018B6D8 15E00002 */  bnez       $t7, .L8018B6E4_ovl3
    /* EC11C 8018B6DC 00000000 */   nop
    /* EC120 8018B6E0 AE180044 */  sw         $t8, 0x44($s0)
  .L8018B6E4_ovl3:
    /* EC124 8018B6E4 1000006E */  b          .L8018B8A0_ovl3
    /* EC128 8018B6E8 8E020044 */   lw        $v0, 0x44($s0)
  jlabel .L8018B6EC_ovl3
    /* EC12C 8018B6EC 8E190034 */  lw         $t9, 0x34($s0)
    /* EC130 8018B6F0 3C0A800D */  lui        $t2, %hi(gKirbyController + 0x2)
    /* EC134 8018B6F4 33290001 */  andi       $t1, $t9, 0x1
    /* EC138 8018B6F8 55200020 */  bnel       $t1, $zero, .L8018B77C_ovl3
    /* EC13C 8018B6FC 8E19003C */   lw        $t9, 0x3C($s0)
    /* EC140 8018B700 954A6FEA */  lhu        $t2, %lo(gKirbyController + 0x2)($t2)
    /* EC144 8018B704 3C0C800F */  lui        $t4, %hi(D_800E8920)
    /* EC148 8018B708 01836021 */  addu       $t4, $t4, $v1
    /* EC14C 8018B70C 31488000 */  andi       $t0, $t2, 0x8000
    /* EC150 8018B710 11000004 */  beqz       $t0, .L8018B724_ovl3
    /* EC154 8018B714 00000000 */   nop
    /* EC158 8018B718 24020003 */  addiu      $v0, $zero, 0x3
    /* EC15C 8018B71C 10000016 */  b          .L8018B778_ovl3
    /* EC160 8018B720 AE020044 */   sw        $v0, 0x44($s0)
  .L8018B724_ovl3:
    /* EC164 8018B724 8D8C8920 */  lw         $t4, %lo(D_800E8920)($t4)
    /* EC168 8018B728 3C0E800D */  lui        $t6, %hi(gKirbyController)
    /* EC16C 8018B72C 15800004 */  bnez       $t4, .L8018B740_ovl3
    /* EC170 8018B730 00000000 */   nop
    /* EC174 8018B734 24020004 */  addiu      $v0, $zero, 0x4
    /* EC178 8018B738 1000000F */  b          .L8018B778_ovl3
    /* EC17C 8018B73C AE020044 */   sw        $v0, 0x44($s0)
  .L8018B740_ovl3:
    /* EC180 8018B740 95CE6FE8 */  lhu        $t6, %lo(gKirbyController)($t6)
    /* EC184 8018B744 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* EC188 8018B748 00230821 */  addu       $at, $at, $v1
    /* EC18C 8018B74C 31CF0300 */  andi       $t7, $t6, 0x300
    /* EC190 8018B750 55E0000A */  bnel       $t7, $zero, .L8018B77C_ovl3
    /* EC194 8018B754 8E19003C */   lw        $t9, 0x3C($s0)
    /* EC198 8018B758 44807000 */  mtc1       $zero, $f14
    /* EC19C 8018B75C C42864D0 */  lwc1       $f8, %lo(D_800E64D0)($at)
    /* EC1A0 8018B760 46087032 */  c.eq.s     $f14, $f8
    /* EC1A4 8018B764 00000000 */  nop
    /* EC1A8 8018B768 45020004 */  bc1fl      .L8018B77C_ovl3
    /* EC1AC 8018B76C 8E19003C */   lw        $t9, 0x3C($s0)
    /* EC1B0 8018B770 24020001 */  addiu      $v0, $zero, 0x1
    /* EC1B4 8018B774 AE020044 */  sw         $v0, 0x44($s0)
  .L8018B778_ovl3:
    /* EC1B8 8018B778 8E19003C */  lw         $t9, 0x3C($s0)
  .L8018B77C_ovl3:
    /* EC1BC 8018B77C 17220048 */  bne        $t9, $v0, .L8018B8A0_ovl3
    /* EC1C0 8018B780 00000000 */   nop
    /* EC1C4 8018B784 0C048672 */  jal        func_801219C8
    /* EC1C8 8018B788 00000000 */   nop
    /* EC1CC 8018B78C 10000044 */  b          .L8018B8A0_ovl3
    /* EC1D0 8018B790 8E020044 */   lw        $v0, 0x44($s0)
  jlabel .L8018B794_ovl3
    /* EC1D4 8018B794 8E0900E4 */  lw         $t1, 0xE4($s0)
    /* EC1D8 8018B798 3C01800E */  lui        $at, %hi(D_800E3210)
    /* EC1DC 8018B79C 51200008 */  beql       $t1, $zero, .L8018B7C0_ovl3
    /* EC1E0 8018B7A0 960800D2 */   lhu       $t0, 0xD2($s0)
    /* EC1E4 8018B7A4 44805000 */  mtc1       $zero, $f10
    /* EC1E8 8018B7A8 00230821 */  addu       $at, $at, $v1
    /* EC1EC 8018B7AC 24020004 */  addiu      $v0, $zero, 0x4
    /* EC1F0 8018B7B0 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
    /* EC1F4 8018B7B4 1000003A */  b          .L8018B8A0_ovl3
    /* EC1F8 8018B7B8 AE020044 */   sw        $v0, 0x44($s0)
    /* EC1FC 8018B7BC 960800D2 */  lhu        $t0, 0xD2($s0)
  .L8018B7C0_ovl3:
    /* EC200 8018B7C0 15000037 */  bnez       $t0, .L8018B8A0_ovl3
    /* EC204 8018B7C4 00000000 */   nop
    /* EC208 8018B7C8 0C047AF5 */  jal        func_8011EBD4
    /* EC20C 8018B7CC 00000000 */   nop
    /* EC210 8018B7D0 10000033 */  b          .L8018B8A0_ovl3
    /* EC214 8018B7D4 8E020044 */   lw        $v0, 0x44($s0)
  jlabel .L8018B7D8_ovl3
    /* EC218 8018B7D8 3C0B800F */  lui        $t3, %hi(D_800E8920)
    /* EC21C 8018B7DC 01635821 */  addu       $t3, $t3, $v1
    /* EC220 8018B7E0 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
    /* EC224 8018B7E4 3C0C800D */  lui        $t4, %hi(gKirbyController + 0x2)
    /* EC228 8018B7E8 5160000D */  beql       $t3, $zero, .L8018B820_ovl3
    /* EC22C 8018B7EC 8E1800FC */   lw        $t8, 0xFC($s0)
    /* EC230 8018B7F0 958C6FEA */  lhu        $t4, %lo(gKirbyController + 0x2)($t4)
    /* EC234 8018B7F4 240E0003 */  addiu      $t6, $zero, 0x3
    /* EC238 8018B7F8 240F0005 */  addiu      $t7, $zero, 0x5
    /* EC23C 8018B7FC 318D8000 */  andi       $t5, $t4, 0x8000
    /* EC240 8018B800 51A00004 */  beql       $t5, $zero, .L8018B814_ovl3
    /* EC244 8018B804 AE0F0044 */   sw        $t7, 0x44($s0)
    /* EC248 8018B808 10000002 */  b          .L8018B814_ovl3
    /* EC24C 8018B80C AE0E0044 */   sw        $t6, 0x44($s0)
    /* EC250 8018B810 AE0F0044 */  sw         $t7, 0x44($s0)
  .L8018B814_ovl3:
    /* EC254 8018B814 10000022 */  b          .L8018B8A0_ovl3
    /* EC258 8018B818 8E020044 */   lw        $v0, 0x44($s0)
    /* EC25C 8018B81C 8E1800FC */  lw         $t8, 0xFC($s0)
  .L8018B820_ovl3:
    /* EC260 8018B820 3C19800D */  lui        $t9, %hi(gKirbyController + 0x2)
    /* EC264 8018B824 1300001E */  beqz       $t8, .L8018B8A0_ovl3
    /* EC268 8018B828 00000000 */   nop
    /* EC26C 8018B82C 97396FEA */  lhu        $t9, %lo(gKirbyController + 0x2)($t9)
    /* EC270 8018B830 33298000 */  andi       $t1, $t9, 0x8000
    /* EC274 8018B834 1120001A */  beqz       $t1, .L8018B8A0_ovl3
    /* EC278 8018B838 00000000 */   nop
    /* EC27C 8018B83C 24020003 */  addiu      $v0, $zero, 0x3
    /* EC280 8018B840 10000017 */  b          .L8018B8A0_ovl3
    /* EC284 8018B844 AE020044 */   sw        $v0, 0x44($s0)
  jlabel .L8018B848_ovl3
    /* EC288 8018B848 3C08800D */  lui        $t0, %hi(gKirbyController + 0x2)
    /* EC28C 8018B84C 95086FEA */  lhu        $t0, %lo(gKirbyController + 0x2)($t0)
    /* EC290 8018B850 240C0003 */  addiu      $t4, $zero, 0x3
    /* EC294 8018B854 3C0D800D */  lui        $t5, %hi(gKirbyController)
    /* EC298 8018B858 310B8000 */  andi       $t3, $t0, 0x8000
    /* EC29C 8018B85C 11600003 */  beqz       $t3, .L8018B86C_ovl3
    /* EC2A0 8018B860 00000000 */   nop
    /* EC2A4 8018B864 1000000D */  b          .L8018B89C_ovl3
    /* EC2A8 8018B868 AE0C0044 */   sw        $t4, 0x44($s0)
  .L8018B86C_ovl3:
    /* EC2AC 8018B86C 95AD6FE8 */  lhu        $t5, %lo(gKirbyController)($t5)
    /* EC2B0 8018B870 240F0002 */  addiu      $t7, $zero, 0x2
    /* EC2B4 8018B874 31AE0300 */  andi       $t6, $t5, 0x300
    /* EC2B8 8018B878 11C00003 */  beqz       $t6, .L8018B888_ovl3
    /* EC2BC 8018B87C 00000000 */   nop
    /* EC2C0 8018B880 10000006 */  b          .L8018B89C_ovl3
    /* EC2C4 8018B884 AE0F0044 */   sw        $t7, 0x44($s0)
  .L8018B888_ovl3:
    /* EC2C8 8018B888 0C02BC8C */  jal        func_800AF230
    /* EC2CC 8018B88C 00000000 */   nop
    /* EC2D0 8018B890 10400002 */  beqz       $v0, .L8018B89C_ovl3
    /* EC2D4 8018B894 24180001 */   addiu     $t8, $zero, 0x1
    /* EC2D8 8018B898 AE180044 */  sw         $t8, 0x44($s0)
  .L8018B89C_ovl3:
    /* EC2DC 8018B89C 8E020044 */  lw         $v0, 0x44($s0)
  .L8018B8A0_ovl3:
    /* EC2E0 8018B8A0 10400003 */  beqz       $v0, .L8018B8B0_ovl3
    /* EC2E4 8018B8A4 00000000 */   nop
    /* EC2E8 8018B8A8 0C047B5A */  jal        func_8011ED68
    /* EC2EC 8018B8AC 00000000 */   nop
  .L8018B8B0_ovl3:
    /* EC2F0 8018B8B0 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* EC2F4 8018B8B4 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* EC2F8 8018B8B8 8F230000 */  lw         $v1, 0x0($t9)
    /* EC2FC 8018B8BC 10000490 */  b          .L8018CB00_ovl3
    /* EC300 8018B8C0 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018B8C4_ovl3
    /* EC304 8018B8C4 3C048019 */  lui        $a0, %hi(D_80191F90_ovl3)
    /* EC308 8018B8C8 24841F90 */  addiu      $a0, $a0, %lo(D_80191F90_ovl3)
    /* EC30C 8018B8CC 0C044681 */  jal        func_80111A04
    /* EC310 8018B8D0 00402825 */   or        $a1, $v0, $zero
    /* EC314 8018B8D4 0C044713 */  jal        func_80111C4C
    /* EC318 8018B8D8 00402025 */   or        $a0, $v0, $zero
    /* EC31C 8018B8DC 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* EC320 8018B8E0 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* EC324 8018B8E4 3C0A800F */  lui        $t2, %hi(D_800EA520)
    /* EC328 8018B8E8 8D230000 */  lw         $v1, 0x0($t1)
    /* EC32C 8018B8EC 00031880 */  sll        $v1, $v1, 2
    /* EC330 8018B8F0 01435021 */  addu       $t2, $t2, $v1
    /* EC334 8018B8F4 8D4AA520 */  lw         $t2, %lo(D_800EA520)($t2)
    /* EC338 8018B8F8 15400481 */  bnez       $t2, .L8018CB00_ovl3
    /* EC33C 8018B8FC 00000000 */   nop
    /* EC340 8018B900 1000047F */  b          .L8018CB00_ovl3
    /* EC344 8018B904 00000000 */   nop
  jlabel .L8018B908_ovl3
    /* EC348 8018B908 3C048019 */  lui        $a0, %hi(D_80191FF8_ovl3)
    /* EC34C 8018B90C 24841FF8 */  addiu      $a0, $a0, %lo(D_80191FF8_ovl3)
    /* EC350 8018B910 0C044681 */  jal        func_80111A04
    /* EC354 8018B914 00402825 */   or        $a1, $v0, $zero
    /* EC358 8018B918 0C044713 */  jal        func_80111C4C
    /* EC35C 8018B91C 00402025 */   or        $a0, $v0, $zero
    /* EC360 8018B920 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* EC364 8018B924 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* EC368 8018B928 3C08800F */  lui        $t0, %hi(D_800E8920)
    /* EC36C 8018B92C 3C01800F */  lui        $at, %hi(D_800E9560)
    /* EC370 8018B930 8C830000 */  lw         $v1, 0x0($a0)
    /* EC374 8018B934 240B000A */  addiu      $t3, $zero, 0xA
    /* EC378 8018B938 3C0C800F */  lui        $t4, %hi(D_800EA520)
    /* EC37C 8018B93C 00031880 */  sll        $v1, $v1, 2
    /* EC380 8018B940 01034021 */  addu       $t0, $t0, $v1
    /* EC384 8018B944 8D088920 */  lw         $t0, %lo(D_800E8920)($t0)
    /* EC388 8018B948 00230821 */  addu       $at, $at, $v1
    /* EC38C 8018B94C 51000005 */  beql       $t0, $zero, .L8018B964_ovl3
    /* EC390 8018B950 01836021 */   addu      $t4, $t4, $v1
    /* EC394 8018B954 AC2B9560 */  sw         $t3, %lo(D_800E9560)($at)
    /* EC398 8018B958 8C830000 */  lw         $v1, 0x0($a0)
    /* EC39C 8018B95C 00031880 */  sll        $v1, $v1, 2
    /* EC3A0 8018B960 01836021 */  addu       $t4, $t4, $v1
  .L8018B964_ovl3:
    /* EC3A4 8018B964 8D8CA520 */  lw         $t4, %lo(D_800EA520)($t4)
    /* EC3A8 8018B968 11800465 */  beqz       $t4, .L8018CB00_ovl3
    /* EC3AC 8018B96C 00000000 */   nop
    /* EC3B0 8018B970 8E0D0044 */  lw         $t5, 0x44($s0)
    /* EC3B4 8018B974 2DA10007 */  sltiu      $at, $t5, 0x7
    /* EC3B8 8018B978 1020008D */  beqz       $at, .L8018BBB0_ovl3
    /* EC3BC 8018B97C 000D6880 */   sll       $t5, $t5, 2
    /* EC3C0 8018B980 3C018019 */  lui        $at, %hi(jtbl_80197A78_ovl3)
    /* EC3C4 8018B984 002D0821 */  addu       $at, $at, $t5
    /* EC3C8 8018B988 8C2D7A78 */  lw         $t5, %lo(jtbl_80197A78_ovl3)($at)
    /* EC3CC 8018B98C 01A00008 */  jr         $t5
    /* EC3D0 8018B990 00000000 */   nop
  jlabel .L8018B994_ovl3
    /* EC3D4 8018B994 0C02BC8C */  jal        func_800AF230
    /* EC3D8 8018B998 00000000 */   nop
    /* EC3DC 8018B99C 1040000F */  beqz       $v0, .L8018B9DC_ovl3
    /* EC3E0 8018B9A0 3C048005 */   lui       $a0, %hi(omCurrentObj)
    /* EC3E4 8018B9A4 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* EC3E8 8018B9A8 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* EC3EC 8018B9AC 3C19800F */  lui        $t9, %hi(D_800E8920)
    /* EC3F0 8018B9B0 24090001 */  addiu      $t1, $zero, 0x1
    /* EC3F4 8018B9B4 8DCF0000 */  lw         $t7, 0x0($t6)
    /* EC3F8 8018B9B8 240A0004 */  addiu      $t2, $zero, 0x4
    /* EC3FC 8018B9BC 000FC080 */  sll        $t8, $t7, 2
    /* EC400 8018B9C0 0338C821 */  addu       $t9, $t9, $t8
    /* EC404 8018B9C4 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
    /* EC408 8018B9C8 53200004 */  beql       $t9, $zero, .L8018B9DC_ovl3
    /* EC40C 8018B9CC AE0A0044 */   sw        $t2, 0x44($s0)
    /* EC410 8018B9D0 10000002 */  b          .L8018B9DC_ovl3
    /* EC414 8018B9D4 AE090044 */   sw        $t1, 0x44($s0)
    /* EC418 8018B9D8 AE0A0044 */  sw         $t2, 0x44($s0)
  .L8018B9DC_ovl3:
    /* EC41C 8018B9DC 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* EC420 8018B9E0 8C830000 */  lw         $v1, 0x0($a0)
    /* EC424 8018B9E4 10000072 */  b          .L8018BBB0_ovl3
    /* EC428 8018B9E8 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018B9EC_ovl3
    /* EC42C 8018B9EC 3C08800D */  lui        $t0, %hi(gKirbyController + 0x2)
    /* EC430 8018B9F0 95086FEA */  lhu        $t0, %lo(gKirbyController + 0x2)($t0)
    /* EC434 8018B9F4 3C0D800F */  lui        $t5, %hi(D_800E8920)
    /* EC438 8018B9F8 240C0003 */  addiu      $t4, $zero, 0x3
    /* EC43C 8018B9FC 310B8000 */  andi       $t3, $t0, 0x8000
    /* EC440 8018BA00 11600005 */  beqz       $t3, .L8018BA18_ovl3
    /* EC444 8018BA04 01A36821 */   addu      $t5, $t5, $v1
    /* EC448 8018BA08 AE0C0044 */  sw         $t4, 0x44($s0)
    /* EC44C 8018BA0C 8C830000 */  lw         $v1, 0x0($a0)
    /* EC450 8018BA10 10000067 */  b          .L8018BBB0_ovl3
    /* EC454 8018BA14 00031880 */   sll       $v1, $v1, 2
  .L8018BA18_ovl3:
    /* EC458 8018BA18 8DAD8920 */  lw         $t5, %lo(D_800E8920)($t5)
    /* EC45C 8018BA1C 240E0004 */  addiu      $t6, $zero, 0x4
    /* EC460 8018BA20 55A00064 */  bnel       $t5, $zero, .L8018BBB4_ovl3
    /* EC464 8018BA24 8E0A00FC */   lw        $t2, 0xFC($s0)
    /* EC468 8018BA28 AE0E0044 */  sw         $t6, 0x44($s0)
    /* EC46C 8018BA2C 8C830000 */  lw         $v1, 0x0($a0)
    /* EC470 8018BA30 1000005F */  b          .L8018BBB0_ovl3
    /* EC474 8018BA34 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018BA38_ovl3
    /* EC478 8018BA38 8E0F00E4 */  lw         $t7, 0xE4($s0)
    /* EC47C 8018BA3C 3C01800E */  lui        $at, %hi(D_800E3210)
    /* EC480 8018BA40 51E00008 */  beql       $t7, $zero, .L8018BA64_ovl3
    /* EC484 8018BA44 961900D2 */   lhu       $t9, 0xD2($s0)
    /* EC488 8018BA48 44808000 */  mtc1       $zero, $f16
    /* EC48C 8018BA4C 00230821 */  addu       $at, $at, $v1
    /* EC490 8018BA50 24180004 */  addiu      $t8, $zero, 0x4
    /* EC494 8018BA54 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
    /* EC498 8018BA58 1000000F */  b          .L8018BA98_ovl3
    /* EC49C 8018BA5C AE180044 */   sw        $t8, 0x44($s0)
    /* EC4A0 8018BA60 961900D2 */  lhu        $t9, 0xD2($s0)
  .L8018BA64_ovl3:
    /* EC4A4 8018BA64 17200005 */  bnez       $t9, .L8018BA7C_ovl3
    /* EC4A8 8018BA68 00000000 */   nop
    /* EC4AC 8018BA6C 0C047AF5 */  jal        func_8011EBD4
    /* EC4B0 8018BA70 00000000 */   nop
    /* EC4B4 8018BA74 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* EC4B8 8018BA78 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
  .L8018BA7C_ovl3:
    /* EC4BC 8018BA7C 3C09800D */  lui        $t1, %hi(gKirbyController + 0x2)
    /* EC4C0 8018BA80 95296FEA */  lhu        $t1, %lo(gKirbyController + 0x2)($t1)
    /* EC4C4 8018BA84 24080006 */  addiu      $t0, $zero, 0x6
    /* EC4C8 8018BA88 312A8000 */  andi       $t2, $t1, 0x8000
    /* EC4CC 8018BA8C 51400003 */  beql       $t2, $zero, .L8018BA9C_ovl3
    /* EC4D0 8018BA90 8C830000 */   lw        $v1, 0x0($a0)
    /* EC4D4 8018BA94 AE080044 */  sw         $t0, 0x44($s0)
  .L8018BA98_ovl3:
    /* EC4D8 8018BA98 8C830000 */  lw         $v1, 0x0($a0)
  .L8018BA9C_ovl3:
    /* EC4DC 8018BA9C 10000044 */  b          .L8018BBB0_ovl3
    /* EC4E0 8018BAA0 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018BAA4_ovl3
    /* EC4E4 8018BAA4 3C0B800F */  lui        $t3, %hi(D_800E8920)
    /* EC4E8 8018BAA8 01635821 */  addu       $t3, $t3, $v1
    /* EC4EC 8018BAAC 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
    /* EC4F0 8018BAB0 240C0005 */  addiu      $t4, $zero, 0x5
    /* EC4F4 8018BAB4 3C0D800D */  lui        $t5, %hi(gKirbyController + 0x2)
    /* EC4F8 8018BAB8 11600005 */  beqz       $t3, .L8018BAD0_ovl3
    /* EC4FC 8018BABC 00000000 */   nop
    /* EC500 8018BAC0 AE0C0044 */  sw         $t4, 0x44($s0)
    /* EC504 8018BAC4 8C830000 */  lw         $v1, 0x0($a0)
    /* EC508 8018BAC8 10000039 */  b          .L8018BBB0_ovl3
    /* EC50C 8018BACC 00031880 */   sll       $v1, $v1, 2
  .L8018BAD0_ovl3:
    /* EC510 8018BAD0 95AD6FEA */  lhu        $t5, %lo(gKirbyController + 0x2)($t5)
    /* EC514 8018BAD4 240F0006 */  addiu      $t7, $zero, 0x6
    /* EC518 8018BAD8 31AE8000 */  andi       $t6, $t5, 0x8000
    /* EC51C 8018BADC 51C00035 */  beql       $t6, $zero, .L8018BBB4_ovl3
    /* EC520 8018BAE0 8E0A00FC */   lw        $t2, 0xFC($s0)
    /* EC524 8018BAE4 AE0F0044 */  sw         $t7, 0x44($s0)
    /* EC528 8018BAE8 8C830000 */  lw         $v1, 0x0($a0)
    /* EC52C 8018BAEC 10000030 */  b          .L8018BBB0_ovl3
    /* EC530 8018BAF0 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018BAF4_ovl3
    /* EC534 8018BAF4 3C18800D */  lui        $t8, %hi(gKirbyController + 0x2)
    /* EC538 8018BAF8 97186FEA */  lhu        $t8, %lo(gKirbyController + 0x2)($t8)
    /* EC53C 8018BAFC 24090003 */  addiu      $t1, $zero, 0x3
    /* EC540 8018BB00 33198000 */  andi       $t9, $t8, 0x8000
    /* EC544 8018BB04 13200003 */  beqz       $t9, .L8018BB14_ovl3
    /* EC548 8018BB08 00000000 */   nop
    /* EC54C 8018BB0C 10000006 */  b          .L8018BB28_ovl3
    /* EC550 8018BB10 AE090044 */   sw        $t1, 0x44($s0)
  .L8018BB14_ovl3:
    /* EC554 8018BB14 0C02BC8C */  jal        func_800AF230
    /* EC558 8018BB18 00000000 */   nop
    /* EC55C 8018BB1C 10400002 */  beqz       $v0, .L8018BB28_ovl3
    /* EC560 8018BB20 240A0001 */   addiu     $t2, $zero, 0x1
    /* EC564 8018BB24 AE0A0044 */  sw         $t2, 0x44($s0)
  .L8018BB28_ovl3:
    /* EC568 8018BB28 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* EC56C 8018BB2C 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* EC570 8018BB30 8C830000 */  lw         $v1, 0x0($a0)
    /* EC574 8018BB34 1000001E */  b          .L8018BBB0_ovl3
    /* EC578 8018BB38 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018BB3C_ovl3
    /* EC57C 8018BB3C 8E080030 */  lw         $t0, 0x30($s0)
    /* EC580 8018BB40 3C0C800F */  lui        $t4, %hi(D_800E9720)
    /* EC584 8018BB44 258C9720 */  addiu      $t4, $t4, %lo(D_800E9720)
    /* EC588 8018BB48 11000006 */  beqz       $t0, .L8018BB64_ovl3
    /* EC58C 8018BB4C 006C1021 */   addu      $v0, $v1, $t4
    /* EC590 8018BB50 240B0004 */  addiu      $t3, $zero, 0x4
    /* EC594 8018BB54 AE0B0044 */  sw         $t3, 0x44($s0)
    /* EC598 8018BB58 8C830000 */  lw         $v1, 0x0($a0)
    /* EC59C 8018BB5C 10000014 */  b          .L8018BBB0_ovl3
    /* EC5A0 8018BB60 00031880 */   sll       $v1, $v1, 2
  .L8018BB64_ovl3:
    /* EC5A4 8018BB64 8C460000 */  lw         $a2, 0x0($v0)
    /* EC5A8 8018BB68 3C0D800D */  lui        $t5, %hi(gKirbyController + 0x2)
    /* EC5AC 8018BB6C 14C0000D */  bnez       $a2, .L8018BBA4_ovl3
    /* EC5B0 8018BB70 24C9FFFF */   addiu     $t1, $a2, -0x1
    /* EC5B4 8018BB74 95AD6FEA */  lhu        $t5, %lo(gKirbyController + 0x2)($t5)
    /* EC5B8 8018BB78 31AE8000 */  andi       $t6, $t5, 0x8000
    /* EC5BC 8018BB7C 51C0000D */  beql       $t6, $zero, .L8018BBB4_ovl3
    /* EC5C0 8018BB80 8E0A00FC */   lw        $t2, 0xFC($s0)
    /* EC5C4 8018BB84 8E0F003C */  lw         $t7, 0x3C($s0)
    /* EC5C8 8018BB88 24190006 */  addiu      $t9, $zero, 0x6
    /* EC5CC 8018BB8C AE190044 */  sw         $t9, 0x44($s0)
    /* EC5D0 8018BB90 25F80001 */  addiu      $t8, $t7, 0x1
    /* EC5D4 8018BB94 AE18003C */  sw         $t8, 0x3C($s0)
    /* EC5D8 8018BB98 8C830000 */  lw         $v1, 0x0($a0)
    /* EC5DC 8018BB9C 10000004 */  b          .L8018BBB0_ovl3
    /* EC5E0 8018BBA0 00031880 */   sll       $v1, $v1, 2
  .L8018BBA4_ovl3:
    /* EC5E4 8018BBA4 AC490000 */  sw         $t1, 0x0($v0)
    /* EC5E8 8018BBA8 8C830000 */  lw         $v1, 0x0($a0)
    /* EC5EC 8018BBAC 00031880 */  sll        $v1, $v1, 2
  jlabel .L8018BBB0_ovl3
    /* EC5F0 8018BBB0 8E0A00FC */  lw         $t2, 0xFC($s0)
  .L8018BBB4_ovl3:
    /* EC5F4 8018BBB4 3C08800F */  lui        $t0, %hi(D_800E8920)
    /* EC5F8 8018BBB8 01034021 */  addu       $t0, $t0, $v1
    /* EC5FC 8018BBBC 5540000F */  bnel       $t2, $zero, .L8018BBFC_ovl3
    /* EC600 8018BBC0 44809000 */   mtc1      $zero, $f18
    /* EC604 8018BBC4 8D088920 */  lw         $t0, %lo(D_800E8920)($t0)
    /* EC608 8018BBC8 150003CD */  bnez       $t0, .L8018CB00_ovl3
    /* EC60C 8018BBCC 00000000 */   nop
    /* EC610 8018BBD0 8E0B0044 */  lw         $t3, 0x44($s0)
    /* EC614 8018BBD4 116003CA */  beqz       $t3, .L8018CB00_ovl3
    /* EC618 8018BBD8 00000000 */   nop
    /* EC61C 8018BBDC 0C047B5A */  jal        func_8011ED68
    /* EC620 8018BBE0 00000000 */   nop
    /* EC624 8018BBE4 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* EC628 8018BBE8 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* EC62C 8018BBEC 8D830000 */  lw         $v1, 0x0($t4)
    /* EC630 8018BBF0 100003C3 */  b          .L8018CB00_ovl3
    /* EC634 8018BBF4 00031880 */   sll       $v1, $v1, 2
    /* EC638 8018BBF8 44809000 */  mtc1       $zero, $f18
  .L8018BBFC_ovl3:
    /* EC63C 8018BBFC 3C01800E */  lui        $at, %hi(D_800E6690)
    /* EC640 8018BC00 00230821 */  addu       $at, $at, $v1
    /* EC644 8018BC04 E4326690 */  swc1       $f18, %lo(D_800E6690)($at)
    /* EC648 8018BC08 8C830000 */  lw         $v1, 0x0($a0)
    /* EC64C 8018BC0C 3C01800E */  lui        $at, %hi(D_800E6690)
    /* EC650 8018BC10 00031880 */  sll        $v1, $v1, 2
    /* EC654 8018BC14 00230821 */  addu       $at, $at, $v1
    /* EC658 8018BC18 C4246690 */  lwc1       $f4, %lo(D_800E6690)($at)
    /* EC65C 8018BC1C 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* EC660 8018BC20 00230821 */  addu       $at, $at, $v1
    /* EC664 8018BC24 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
    /* EC668 8018BC28 8C8D0000 */  lw         $t5, 0x0($a0)
    /* EC66C 8018BC2C 3C018019 */  lui        $at, %hi(D_80197A94_ovl3)
    /* EC670 8018BC30 C4267A94 */  lwc1       $f6, %lo(D_80197A94_ovl3)($at)
    /* EC674 8018BC34 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EC678 8018BC38 000D7080 */  sll        $t6, $t5, 2
    /* EC67C 8018BC3C 002E0821 */  addu       $at, $at, $t6
    /* EC680 8018BC40 E4266850 */  swc1       $f6, %lo(D_800E6850)($at)
    /* EC684 8018BC44 8C830000 */  lw         $v1, 0x0($a0)
    /* EC688 8018BC48 100003AD */  b          .L8018CB00_ovl3
    /* EC68C 8018BC4C 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018BC50_ovl3
    /* EC690 8018BC50 3C048019 */  lui        $a0, %hi(D_80192060_ovl3)
    /* EC694 8018BC54 24842060 */  addiu      $a0, $a0, %lo(D_80192060_ovl3)
    /* EC698 8018BC58 0C044681 */  jal        func_80111A04
    /* EC69C 8018BC5C 00402825 */   or        $a1, $v0, $zero
    /* EC6A0 8018BC60 0C044713 */  jal        func_80111C4C
    /* EC6A4 8018BC64 00402025 */   or        $a0, $v0, $zero
    /* EC6A8 8018BC68 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* EC6AC 8018BC6C 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* EC6B0 8018BC70 3C0F800F */  lui        $t7, %hi(D_800E8920)
    /* EC6B4 8018BC74 3C01800F */  lui        $at, %hi(D_800E9560)
    /* EC6B8 8018BC78 8C830000 */  lw         $v1, 0x0($a0)
    /* EC6BC 8018BC7C 24050003 */  addiu      $a1, $zero, 0x3
    /* EC6C0 8018BC80 3C18800F */  lui        $t8, %hi(D_800EA520)
    /* EC6C4 8018BC84 00031880 */  sll        $v1, $v1, 2
    /* EC6C8 8018BC88 01E37821 */  addu       $t7, $t7, $v1
    /* EC6CC 8018BC8C 8DEF8920 */  lw         $t7, %lo(D_800E8920)($t7)
    /* EC6D0 8018BC90 00230821 */  addu       $at, $at, $v1
    /* EC6D4 8018BC94 51E00005 */  beql       $t7, $zero, .L8018BCAC_ovl3
    /* EC6D8 8018BC98 0303C021 */   addu      $t8, $t8, $v1
    /* EC6DC 8018BC9C AC259560 */  sw         $a1, %lo(D_800E9560)($at)
    /* EC6E0 8018BCA0 8C830000 */  lw         $v1, 0x0($a0)
    /* EC6E4 8018BCA4 00031880 */  sll        $v1, $v1, 2
    /* EC6E8 8018BCA8 0303C021 */  addu       $t8, $t8, $v1
  .L8018BCAC_ovl3:
    /* EC6EC 8018BCAC 8F18A520 */  lw         $t8, %lo(D_800EA520)($t8)
    /* EC6F0 8018BCB0 24050003 */  addiu      $a1, $zero, 0x3
    /* EC6F4 8018BCB4 13000392 */  beqz       $t8, .L8018CB00_ovl3
    /* EC6F8 8018BCB8 00000000 */   nop
    /* EC6FC 8018BCBC 8E020044 */  lw         $v0, 0x44($s0)
    /* EC700 8018BCC0 2C410006 */  sltiu      $at, $v0, 0x6
    /* EC704 8018BCC4 102000A7 */  beqz       $at, .L8018BF64_ovl3
    /* EC708 8018BCC8 0002C880 */   sll       $t9, $v0, 2
    /* EC70C 8018BCCC 3C018019 */  lui        $at, %hi(jtbl_80197A98_ovl3)
    /* EC710 8018BCD0 00390821 */  addu       $at, $at, $t9
    /* EC714 8018BCD4 8C397A98 */  lw         $t9, %lo(jtbl_80197A98_ovl3)($at)
    /* EC718 8018BCD8 03200008 */  jr         $t9
    /* EC71C 8018BCDC 00000000 */   nop
  jlabel .L8018BCE0_ovl3
    /* EC720 8018BCE0 0C02BC8C */  jal        func_800AF230
    /* EC724 8018BCE4 00000000 */   nop
    /* EC728 8018BCE8 1040000E */  beqz       $v0, .L8018BD24_ovl3
    /* EC72C 8018BCEC 3C098005 */   lui       $t1, %hi(omCurrentObj)
    /* EC730 8018BCF0 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* EC734 8018BCF4 3C0B800F */  lui        $t3, %hi(D_800E8920)
    /* EC738 8018BCF8 240C0001 */  addiu      $t4, $zero, 0x1
    /* EC73C 8018BCFC 8D2A0000 */  lw         $t2, 0x0($t1)
    /* EC740 8018BD00 240D0004 */  addiu      $t5, $zero, 0x4
    /* EC744 8018BD04 000A4080 */  sll        $t0, $t2, 2
    /* EC748 8018BD08 01685821 */  addu       $t3, $t3, $t0
    /* EC74C 8018BD0C 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
    /* EC750 8018BD10 51600004 */  beql       $t3, $zero, .L8018BD24_ovl3
    /* EC754 8018BD14 AE0D0044 */   sw        $t5, 0x44($s0)
    /* EC758 8018BD18 10000002 */  b          .L8018BD24_ovl3
    /* EC75C 8018BD1C AE0C0044 */   sw        $t4, 0x44($s0)
    /* EC760 8018BD20 AE0D0044 */  sw         $t5, 0x44($s0)
  .L8018BD24_ovl3:
    /* EC764 8018BD24 1000008F */  b          .L8018BF64_ovl3
    /* EC768 8018BD28 8E020044 */   lw        $v0, 0x44($s0)
  jlabel .L8018BD2C_ovl3
    /* EC76C 8018BD2C 0C048724 */  jal        func_80121C90
    /* EC770 8018BD30 00000000 */   nop
    /* EC774 8018BD34 10400004 */  beqz       $v0, .L8018BD48_ovl3
    /* EC778 8018BD38 3C0F800D */   lui       $t7, %hi(gKirbyController + 0x2)
    /* EC77C 8018BD3C 240E0002 */  addiu      $t6, $zero, 0x2
    /* EC780 8018BD40 10000013 */  b          .L8018BD90_ovl3
    /* EC784 8018BD44 AE0E0044 */   sw        $t6, 0x44($s0)
  .L8018BD48_ovl3:
    /* EC788 8018BD48 95EF6FEA */  lhu        $t7, %lo(gKirbyController + 0x2)($t7)
    /* EC78C 8018BD4C 24190003 */  addiu      $t9, $zero, 0x3
    /* EC790 8018BD50 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* EC794 8018BD54 31F88000 */  andi       $t8, $t7, 0x8000
    /* EC798 8018BD58 13000003 */  beqz       $t8, .L8018BD68_ovl3
    /* EC79C 8018BD5C 00000000 */   nop
    /* EC7A0 8018BD60 1000000B */  b          .L8018BD90_ovl3
    /* EC7A4 8018BD64 AE190044 */   sw        $t9, 0x44($s0)
  .L8018BD68_ovl3:
    /* EC7A8 8018BD68 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* EC7AC 8018BD6C 3C0B800F */  lui        $t3, %hi(D_800E8920)
    /* EC7B0 8018BD70 240C0004 */  addiu      $t4, $zero, 0x4
    /* EC7B4 8018BD74 8D2A0000 */  lw         $t2, 0x0($t1)
    /* EC7B8 8018BD78 000A4080 */  sll        $t0, $t2, 2
    /* EC7BC 8018BD7C 01685821 */  addu       $t3, $t3, $t0
    /* EC7C0 8018BD80 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
    /* EC7C4 8018BD84 15600002 */  bnez       $t3, .L8018BD90_ovl3
    /* EC7C8 8018BD88 00000000 */   nop
    /* EC7CC 8018BD8C AE0C0044 */  sw         $t4, 0x44($s0)
  .L8018BD90_ovl3:
    /* EC7D0 8018BD90 10000074 */  b          .L8018BF64_ovl3
    /* EC7D4 8018BD94 8E020044 */   lw        $v0, 0x44($s0)
  jlabel .L8018BD98_ovl3
    /* EC7D8 8018BD98 8E0D0034 */  lw         $t5, 0x34($s0)
    /* EC7DC 8018BD9C 3C0F800D */  lui        $t7, %hi(gKirbyController + 0x2)
    /* EC7E0 8018BDA0 31AE0001 */  andi       $t6, $t5, 0x1
    /* EC7E4 8018BDA4 55C00020 */  bnel       $t6, $zero, .L8018BE28_ovl3
    /* EC7E8 8018BDA8 8E0C003C */   lw        $t4, 0x3C($s0)
    /* EC7EC 8018BDAC 95EF6FEA */  lhu        $t7, %lo(gKirbyController + 0x2)($t7)
    /* EC7F0 8018BDB0 3C19800F */  lui        $t9, %hi(D_800E8920)
    /* EC7F4 8018BDB4 0323C821 */  addu       $t9, $t9, $v1
    /* EC7F8 8018BDB8 31F88000 */  andi       $t8, $t7, 0x8000
    /* EC7FC 8018BDBC 13000004 */  beqz       $t8, .L8018BDD0_ovl3
    /* EC800 8018BDC0 00000000 */   nop
    /* EC804 8018BDC4 AE050044 */  sw         $a1, 0x44($s0)
    /* EC808 8018BDC8 10000016 */  b          .L8018BE24_ovl3
    /* EC80C 8018BDCC 00A01025 */   or        $v0, $a1, $zero
  .L8018BDD0_ovl3:
    /* EC810 8018BDD0 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
    /* EC814 8018BDD4 3C0A800D */  lui        $t2, %hi(gKirbyController)
    /* EC818 8018BDD8 17200004 */  bnez       $t9, .L8018BDEC_ovl3
    /* EC81C 8018BDDC 00000000 */   nop
    /* EC820 8018BDE0 24020004 */  addiu      $v0, $zero, 0x4
    /* EC824 8018BDE4 1000000F */  b          .L8018BE24_ovl3
    /* EC828 8018BDE8 AE020044 */   sw        $v0, 0x44($s0)
  .L8018BDEC_ovl3:
    /* EC82C 8018BDEC 954A6FE8 */  lhu        $t2, %lo(gKirbyController)($t2)
    /* EC830 8018BDF0 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* EC834 8018BDF4 00230821 */  addu       $at, $at, $v1
    /* EC838 8018BDF8 31480300 */  andi       $t0, $t2, 0x300
    /* EC83C 8018BDFC 5500000A */  bnel       $t0, $zero, .L8018BE28_ovl3
    /* EC840 8018BE00 8E0C003C */   lw        $t4, 0x3C($s0)
    /* EC844 8018BE04 44807000 */  mtc1       $zero, $f14
    /* EC848 8018BE08 C42864D0 */  lwc1       $f8, %lo(D_800E64D0)($at)
    /* EC84C 8018BE0C 46087032 */  c.eq.s     $f14, $f8
    /* EC850 8018BE10 00000000 */  nop
    /* EC854 8018BE14 45020004 */  bc1fl      .L8018BE28_ovl3
    /* EC858 8018BE18 8E0C003C */   lw        $t4, 0x3C($s0)
    /* EC85C 8018BE1C 24020001 */  addiu      $v0, $zero, 0x1
    /* EC860 8018BE20 AE020044 */  sw         $v0, 0x44($s0)
  .L8018BE24_ovl3:
    /* EC864 8018BE24 8E0C003C */  lw         $t4, 0x3C($s0)
  .L8018BE28_ovl3:
    /* EC868 8018BE28 1582004E */  bne        $t4, $v0, .L8018BF64_ovl3
    /* EC86C 8018BE2C 00000000 */   nop
    /* EC870 8018BE30 0C048672 */  jal        func_801219C8
    /* EC874 8018BE34 00000000 */   nop
    /* EC878 8018BE38 1000004A */  b          .L8018BF64_ovl3
    /* EC87C 8018BE3C 8E020044 */   lw        $v0, 0x44($s0)
  jlabel .L8018BE40_ovl3
    /* EC880 8018BE40 8E0D00E4 */  lw         $t5, 0xE4($s0)
    /* EC884 8018BE44 3C01800E */  lui        $at, %hi(D_800E3210)
    /* EC888 8018BE48 51A00008 */  beql       $t5, $zero, .L8018BE6C_ovl3
    /* EC88C 8018BE4C 960F00D2 */   lhu       $t7, 0xD2($s0)
    /* EC890 8018BE50 44805000 */  mtc1       $zero, $f10
    /* EC894 8018BE54 00230821 */  addu       $at, $at, $v1
    /* EC898 8018BE58 24020004 */  addiu      $v0, $zero, 0x4
    /* EC89C 8018BE5C E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
    /* EC8A0 8018BE60 10000040 */  b          .L8018BF64_ovl3
    /* EC8A4 8018BE64 AE020044 */   sw        $v0, 0x44($s0)
    /* EC8A8 8018BE68 960F00D2 */  lhu        $t7, 0xD2($s0)
  .L8018BE6C_ovl3:
    /* EC8AC 8018BE6C 15E0003D */  bnez       $t7, .L8018BF64_ovl3
    /* EC8B0 8018BE70 00000000 */   nop
    /* EC8B4 8018BE74 0C047AF5 */  jal        func_8011EBD4
    /* EC8B8 8018BE78 00000000 */   nop
    /* EC8BC 8018BE7C 10000039 */  b          .L8018BF64_ovl3
    /* EC8C0 8018BE80 8E020044 */   lw        $v0, 0x44($s0)
  jlabel .L8018BE84_ovl3
    /* EC8C4 8018BE84 3C18800F */  lui        $t8, %hi(D_800E8920)
    /* EC8C8 8018BE88 0303C021 */  addu       $t8, $t8, $v1
    /* EC8CC 8018BE8C 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
    /* EC8D0 8018BE90 3C08800F */  lui        $t0, %hi(D_800E9560)
    /* EC8D4 8018BE94 3C19800D */  lui        $t9, %hi(gKirbyController + 0x2)
    /* EC8D8 8018BE98 13000012 */  beqz       $t8, .L8018BEE4_ovl3
    /* EC8DC 8018BE9C 01034021 */   addu      $t0, $t0, $v1
    /* EC8E0 8018BEA0 97396FEA */  lhu        $t9, %lo(gKirbyController + 0x2)($t9)
    /* EC8E4 8018BEA4 240A0005 */  addiu      $t2, $zero, 0x5
    /* EC8E8 8018BEA8 3C040002 */  lui        $a0, (0x20025 >> 16)
    /* EC8EC 8018BEAC 33298000 */  andi       $t1, $t9, 0x8000
    /* EC8F0 8018BEB0 51200004 */  beql       $t1, $zero, .L8018BEC4_ovl3
    /* EC8F4 8018BEB4 AE0A0044 */   sw        $t2, 0x44($s0)
    /* EC8F8 8018BEB8 10000002 */  b          .L8018BEC4_ovl3
    /* EC8FC 8018BEBC AE050044 */   sw        $a1, 0x44($s0)
    /* EC900 8018BEC0 AE0A0044 */  sw         $t2, 0x44($s0)
  .L8018BEC4_ovl3:
    /* EC904 8018BEC4 0C02AA22 */  jal        func_800AA888
    /* EC908 8018BEC8 34840025 */   ori       $a0, $a0, (0x20025 & 0xFFFF)
    /* EC90C 8018BECC 14400003 */  bnez       $v0, .L8018BEDC_ovl3
    /* EC910 8018BED0 3C040002 */   lui       $a0, (0x20025 >> 16)
    /* EC914 8018BED4 0C048BC2 */  jal        func_80122F08
    /* EC918 8018BED8 34840025 */   ori       $a0, $a0, (0x20025 & 0xFFFF)
  .L8018BEDC_ovl3:
    /* EC91C 8018BEDC 10000021 */  b          .L8018BF64_ovl3
    /* EC920 8018BEE0 8E020044 */   lw        $v0, 0x44($s0)
  .L8018BEE4_ovl3:
    /* EC924 8018BEE4 8D089560 */  lw         $t0, %lo(D_800E9560)($t0)
    /* EC928 8018BEE8 3C0B800D */  lui        $t3, %hi(gKirbyController + 0x2)
    /* EC92C 8018BEEC 1100001D */  beqz       $t0, .L8018BF64_ovl3
    /* EC930 8018BEF0 00000000 */   nop
    /* EC934 8018BEF4 956B6FEA */  lhu        $t3, %lo(gKirbyController + 0x2)($t3)
    /* EC938 8018BEF8 316C8000 */  andi       $t4, $t3, 0x8000
    /* EC93C 8018BEFC 11800019 */  beqz       $t4, .L8018BF64_ovl3
    /* EC940 8018BF00 00000000 */   nop
    /* EC944 8018BF04 AE050044 */  sw         $a1, 0x44($s0)
    /* EC948 8018BF08 10000016 */  b          .L8018BF64_ovl3
    /* EC94C 8018BF0C 00A01025 */   or        $v0, $a1, $zero
  jlabel .L8018BF10_ovl3
    /* EC950 8018BF10 3C0D800D */  lui        $t5, %hi(gKirbyController + 0x2)
    /* EC954 8018BF14 95AD6FEA */  lhu        $t5, %lo(gKirbyController + 0x2)($t5)
    /* EC958 8018BF18 3C0F800D */  lui        $t7, %hi(gKirbyController)
    /* EC95C 8018BF1C 31AE8000 */  andi       $t6, $t5, 0x8000
    /* EC960 8018BF20 11C00003 */  beqz       $t6, .L8018BF30_ovl3
    /* EC964 8018BF24 00000000 */   nop
    /* EC968 8018BF28 1000000D */  b          .L8018BF60_ovl3
    /* EC96C 8018BF2C AE050044 */   sw        $a1, 0x44($s0)
  .L8018BF30_ovl3:
    /* EC970 8018BF30 95EF6FE8 */  lhu        $t7, %lo(gKirbyController)($t7)
    /* EC974 8018BF34 24190002 */  addiu      $t9, $zero, 0x2
    /* EC978 8018BF38 31F80300 */  andi       $t8, $t7, 0x300
    /* EC97C 8018BF3C 13000003 */  beqz       $t8, .L8018BF4C_ovl3
    /* EC980 8018BF40 00000000 */   nop
    /* EC984 8018BF44 10000006 */  b          .L8018BF60_ovl3
    /* EC988 8018BF48 AE190044 */   sw        $t9, 0x44($s0)
  .L8018BF4C_ovl3:
    /* EC98C 8018BF4C 0C02BC8C */  jal        func_800AF230
    /* EC990 8018BF50 00000000 */   nop
    /* EC994 8018BF54 10400002 */  beqz       $v0, .L8018BF60_ovl3
    /* EC998 8018BF58 24090001 */   addiu     $t1, $zero, 0x1
    /* EC99C 8018BF5C AE090044 */  sw         $t1, 0x44($s0)
  .L8018BF60_ovl3:
    /* EC9A0 8018BF60 8E020044 */  lw         $v0, 0x44($s0)
  .L8018BF64_ovl3:
    /* EC9A4 8018BF64 10400003 */  beqz       $v0, .L8018BF74_ovl3
    /* EC9A8 8018BF68 00000000 */   nop
    /* EC9AC 8018BF6C 0C047B5A */  jal        func_8011ED68
    /* EC9B0 8018BF70 00000000 */   nop
  .L8018BF74_ovl3:
    /* EC9B4 8018BF74 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* EC9B8 8018BF78 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* EC9BC 8018BF7C 8D430000 */  lw         $v1, 0x0($t2)
    /* EC9C0 8018BF80 100002DF */  b          .L8018CB00_ovl3
    /* EC9C4 8018BF84 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018BF88_ovl3
    /* EC9C8 8018BF88 3C048019 */  lui        $a0, %hi(D_801920A4_ovl3)
    /* EC9CC 8018BF8C 248420A4 */  addiu      $a0, $a0, %lo(D_801920A4_ovl3)
    /* EC9D0 8018BF90 0C044681 */  jal        func_80111A04
    /* EC9D4 8018BF94 00402825 */   or        $a1, $v0, $zero
    /* EC9D8 8018BF98 0C044713 */  jal        func_80111C4C
    /* EC9DC 8018BF9C 00402025 */   or        $a0, $v0, $zero
    /* EC9E0 8018BFA0 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* EC9E4 8018BFA4 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* EC9E8 8018BFA8 3C08800F */  lui        $t0, %hi(D_800EA520)
    /* EC9EC 8018BFAC 8C830000 */  lw         $v1, 0x0($a0)
    /* EC9F0 8018BFB0 00031880 */  sll        $v1, $v1, 2
    /* EC9F4 8018BFB4 01034021 */  addu       $t0, $t0, $v1
    /* EC9F8 8018BFB8 8D08A520 */  lw         $t0, %lo(D_800EA520)($t0)
    /* EC9FC 8018BFBC 110002D0 */  beqz       $t0, .L8018CB00_ovl3
    /* ECA00 8018BFC0 00000000 */   nop
    /* ECA04 8018BFC4 8E0B0044 */  lw         $t3, 0x44($s0)
    /* ECA08 8018BFC8 2D610006 */  sltiu      $at, $t3, 0x6
    /* ECA0C 8018BFCC 1020005D */  beqz       $at, .L8018C144_ovl3
    /* ECA10 8018BFD0 000B5880 */   sll       $t3, $t3, 2
    /* ECA14 8018BFD4 3C018019 */  lui        $at, %hi(jtbl_80197AB0_ovl3)
    /* ECA18 8018BFD8 002B0821 */  addu       $at, $at, $t3
    /* ECA1C 8018BFDC 8C2B7AB0 */  lw         $t3, %lo(jtbl_80197AB0_ovl3)($at)
    /* ECA20 8018BFE0 01600008 */  jr         $t3
    /* ECA24 8018BFE4 00000000 */   nop
  jlabel .L8018BFE8_ovl3
    /* ECA28 8018BFE8 0C02BC8C */  jal        func_800AF230
    /* ECA2C 8018BFEC 00000000 */   nop
    /* ECA30 8018BFF0 1040000F */  beqz       $v0, .L8018C030_ovl3
    /* ECA34 8018BFF4 3C048005 */   lui       $a0, %hi(omCurrentObj)
    /* ECA38 8018BFF8 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* ECA3C 8018BFFC 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* ECA40 8018C000 3C0F800F */  lui        $t7, %hi(D_800E8920)
    /* ECA44 8018C004 24180001 */  addiu      $t8, $zero, 0x1
    /* ECA48 8018C008 8D8D0000 */  lw         $t5, 0x0($t4)
    /* ECA4C 8018C00C 24190004 */  addiu      $t9, $zero, 0x4
    /* ECA50 8018C010 000D7080 */  sll        $t6, $t5, 2
    /* ECA54 8018C014 01EE7821 */  addu       $t7, $t7, $t6
    /* ECA58 8018C018 8DEF8920 */  lw         $t7, %lo(D_800E8920)($t7)
    /* ECA5C 8018C01C 51E00004 */  beql       $t7, $zero, .L8018C030_ovl3
    /* ECA60 8018C020 AE190044 */   sw        $t9, 0x44($s0)
    /* ECA64 8018C024 10000002 */  b          .L8018C030_ovl3
    /* ECA68 8018C028 AE180044 */   sw        $t8, 0x44($s0)
    /* ECA6C 8018C02C AE190044 */  sw         $t9, 0x44($s0)
  .L8018C030_ovl3:
    /* ECA70 8018C030 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* ECA74 8018C034 8C830000 */  lw         $v1, 0x0($a0)
    /* ECA78 8018C038 10000042 */  b          .L8018C144_ovl3
    /* ECA7C 8018C03C 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018C040_ovl3
    /* ECA80 8018C040 3C09800D */  lui        $t1, %hi(gKirbyController + 0x2)
    /* ECA84 8018C044 95296FEA */  lhu        $t1, %lo(gKirbyController + 0x2)($t1)
    /* ECA88 8018C048 3C0B800F */  lui        $t3, %hi(D_800E8920)
    /* ECA8C 8018C04C 24080003 */  addiu      $t0, $zero, 0x3
    /* ECA90 8018C050 312A8000 */  andi       $t2, $t1, 0x8000
    /* ECA94 8018C054 11400005 */  beqz       $t2, .L8018C06C_ovl3
    /* ECA98 8018C058 01635821 */   addu      $t3, $t3, $v1
    /* ECA9C 8018C05C AE080044 */  sw         $t0, 0x44($s0)
    /* ECAA0 8018C060 8C830000 */  lw         $v1, 0x0($a0)
    /* ECAA4 8018C064 10000037 */  b          .L8018C144_ovl3
    /* ECAA8 8018C068 00031880 */   sll       $v1, $v1, 2
  .L8018C06C_ovl3:
    /* ECAAC 8018C06C 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
    /* ECAB0 8018C070 240C0004 */  addiu      $t4, $zero, 0x4
    /* ECAB4 8018C074 55600034 */  bnel       $t3, $zero, .L8018C148_ovl3
    /* ECAB8 8018C078 8E0C00FC */   lw        $t4, 0xFC($s0)
    /* ECABC 8018C07C AE0C0044 */  sw         $t4, 0x44($s0)
    /* ECAC0 8018C080 8C830000 */  lw         $v1, 0x0($a0)
    /* ECAC4 8018C084 1000002F */  b          .L8018C144_ovl3
    /* ECAC8 8018C088 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018C08C_ovl3
    /* ECACC 8018C08C 8E0D00E4 */  lw         $t5, 0xE4($s0)
    /* ECAD0 8018C090 3C01800E */  lui        $at, %hi(D_800E3210)
    /* ECAD4 8018C094 51A00007 */  beql       $t5, $zero, .L8018C0B4_ovl3
    /* ECAD8 8018C098 960F00D2 */   lhu       $t7, 0xD2($s0)
    /* ECADC 8018C09C 44808000 */  mtc1       $zero, $f16
    /* ECAE0 8018C0A0 00230821 */  addu       $at, $at, $v1
    /* ECAE4 8018C0A4 240E0004 */  addiu      $t6, $zero, 0x4
    /* ECAE8 8018C0A8 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
    /* ECAEC 8018C0AC AE0E0044 */  sw         $t6, 0x44($s0)
    /* ECAF0 8018C0B0 960F00D2 */  lhu        $t7, 0xD2($s0)
  .L8018C0B4_ovl3:
    /* ECAF4 8018C0B4 55E00006 */  bnel       $t7, $zero, .L8018C0D0_ovl3
    /* ECAF8 8018C0B8 8C830000 */   lw        $v1, 0x0($a0)
    /* ECAFC 8018C0BC 0C047AF5 */  jal        func_8011EBD4
    /* ECB00 8018C0C0 00000000 */   nop
    /* ECB04 8018C0C4 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* ECB08 8018C0C8 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* ECB0C 8018C0CC 8C830000 */  lw         $v1, 0x0($a0)
  .L8018C0D0_ovl3:
    /* ECB10 8018C0D0 1000001C */  b          .L8018C144_ovl3
    /* ECB14 8018C0D4 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018C0D8_ovl3
    /* ECB18 8018C0D8 3C18800F */  lui        $t8, %hi(D_800E8920)
    /* ECB1C 8018C0DC 0303C021 */  addu       $t8, $t8, $v1
    /* ECB20 8018C0E0 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
    /* ECB24 8018C0E4 24190005 */  addiu      $t9, $zero, 0x5
    /* ECB28 8018C0E8 53000017 */  beql       $t8, $zero, .L8018C148_ovl3
    /* ECB2C 8018C0EC 8E0C00FC */   lw        $t4, 0xFC($s0)
    /* ECB30 8018C0F0 AE190044 */  sw         $t9, 0x44($s0)
    /* ECB34 8018C0F4 8C830000 */  lw         $v1, 0x0($a0)
    /* ECB38 8018C0F8 10000012 */  b          .L8018C144_ovl3
    /* ECB3C 8018C0FC 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018C100_ovl3
    /* ECB40 8018C100 3C09800D */  lui        $t1, %hi(gKirbyController + 0x2)
    /* ECB44 8018C104 95296FEA */  lhu        $t1, %lo(gKirbyController + 0x2)($t1)
    /* ECB48 8018C108 24080003 */  addiu      $t0, $zero, 0x3
    /* ECB4C 8018C10C 312A8000 */  andi       $t2, $t1, 0x8000
    /* ECB50 8018C110 11400003 */  beqz       $t2, .L8018C120_ovl3
    /* ECB54 8018C114 00000000 */   nop
    /* ECB58 8018C118 10000006 */  b          .L8018C134_ovl3
    /* ECB5C 8018C11C AE080044 */   sw        $t0, 0x44($s0)
  .L8018C120_ovl3:
    /* ECB60 8018C120 0C02BC8C */  jal        func_800AF230
    /* ECB64 8018C124 00000000 */   nop
    /* ECB68 8018C128 10400002 */  beqz       $v0, .L8018C134_ovl3
    /* ECB6C 8018C12C 240B0001 */   addiu     $t3, $zero, 0x1
    /* ECB70 8018C130 AE0B0044 */  sw         $t3, 0x44($s0)
  .L8018C134_ovl3:
    /* ECB74 8018C134 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* ECB78 8018C138 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* ECB7C 8018C13C 8C830000 */  lw         $v1, 0x0($a0)
    /* ECB80 8018C140 00031880 */  sll        $v1, $v1, 2
  jlabel .L8018C144_ovl3
    /* ECB84 8018C144 8E0C00FC */  lw         $t4, 0xFC($s0)
  .L8018C148_ovl3:
    /* ECB88 8018C148 3C0D800F */  lui        $t5, %hi(D_800E8920)
    /* ECB8C 8018C14C 01A36821 */  addu       $t5, $t5, $v1
    /* ECB90 8018C150 5580000F */  bnel       $t4, $zero, .L8018C190_ovl3
    /* ECB94 8018C154 44809000 */   mtc1      $zero, $f18
    /* ECB98 8018C158 8DAD8920 */  lw         $t5, %lo(D_800E8920)($t5)
    /* ECB9C 8018C15C 15A00268 */  bnez       $t5, .L8018CB00_ovl3
    /* ECBA0 8018C160 00000000 */   nop
    /* ECBA4 8018C164 8E0E0044 */  lw         $t6, 0x44($s0)
    /* ECBA8 8018C168 11C00265 */  beqz       $t6, .L8018CB00_ovl3
    /* ECBAC 8018C16C 00000000 */   nop
    /* ECBB0 8018C170 0C047B5A */  jal        func_8011ED68
    /* ECBB4 8018C174 00000000 */   nop
    /* ECBB8 8018C178 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* ECBBC 8018C17C 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* ECBC0 8018C180 8DE30000 */  lw         $v1, 0x0($t7)
    /* ECBC4 8018C184 1000025E */  b          .L8018CB00_ovl3
    /* ECBC8 8018C188 00031880 */   sll       $v1, $v1, 2
    /* ECBCC 8018C18C 44809000 */  mtc1       $zero, $f18
  .L8018C190_ovl3:
    /* ECBD0 8018C190 3C01800E */  lui        $at, %hi(D_800E6690)
    /* ECBD4 8018C194 00230821 */  addu       $at, $at, $v1
    /* ECBD8 8018C198 E4326690 */  swc1       $f18, %lo(D_800E6690)($at)
    /* ECBDC 8018C19C 8C830000 */  lw         $v1, 0x0($a0)
    /* ECBE0 8018C1A0 3C01800E */  lui        $at, %hi(D_800E6690)
    /* ECBE4 8018C1A4 00031880 */  sll        $v1, $v1, 2
    /* ECBE8 8018C1A8 00230821 */  addu       $at, $at, $v1
    /* ECBEC 8018C1AC C4246690 */  lwc1       $f4, %lo(D_800E6690)($at)
    /* ECBF0 8018C1B0 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* ECBF4 8018C1B4 00230821 */  addu       $at, $at, $v1
    /* ECBF8 8018C1B8 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
    /* ECBFC 8018C1BC 8C980000 */  lw         $t8, 0x0($a0)
    /* ECC00 8018C1C0 3C018019 */  lui        $at, %hi(D_80197AC8_ovl3)
    /* ECC04 8018C1C4 C4267AC8 */  lwc1       $f6, %lo(D_80197AC8_ovl3)($at)
    /* ECC08 8018C1C8 3C01800E */  lui        $at, %hi(D_800E6850)
    /* ECC0C 8018C1CC 0018C880 */  sll        $t9, $t8, 2
    /* ECC10 8018C1D0 00390821 */  addu       $at, $at, $t9
    /* ECC14 8018C1D4 E4266850 */  swc1       $f6, %lo(D_800E6850)($at)
    /* ECC18 8018C1D8 8C830000 */  lw         $v1, 0x0($a0)
    /* ECC1C 8018C1DC 10000248 */  b          .L8018CB00_ovl3
    /* ECC20 8018C1E0 00031880 */   sll       $v1, $v1, 2
  jlabel .L8018C1E4_ovl3
    /* ECC24 8018C1E4 3C048019 */  lui        $a0, %hi(D_801920E8_ovl3)
    /* ECC28 8018C1E8 248420E8 */  addiu      $a0, $a0, %lo(D_801920E8_ovl3)
    /* ECC2C 8018C1EC 0C044681 */  jal        func_80111A04
    /* ECC30 8018C1F0 00402825 */   or        $a1, $v0, $zero
    /* ECC34 8018C1F4 0C044713 */  jal        func_80111C4C
    /* ECC38 8018C1F8 00402025 */   or        $a0, $v0, $zero
    /* ECC3C 8018C1FC 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* ECC40 8018C200 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* ECC44 8018C204 3C07800F */  lui        $a3, %hi(D_800E8920)
    /* ECC48 8018C208 24E78920 */  addiu      $a3, $a3, %lo(D_800E8920)
    /* ECC4C 8018C20C 8C830000 */  lw         $v1, 0x0($a0)
    /* ECC50 8018C210 3C01800F */  lui        $at, %hi(D_800E9560)
    /* ECC54 8018C214 2408000A */  addiu      $t0, $zero, 0xA
    /* ECC58 8018C218 00031880 */  sll        $v1, $v1, 2
    /* ECC5C 8018C21C 00E34821 */  addu       $t1, $a3, $v1
    /* ECC60 8018C220 8D2A0000 */  lw         $t2, 0x0($t1)
    /* ECC64 8018C224 00230821 */  addu       $at, $at, $v1
    /* ECC68 8018C228 3C0B800F */  lui        $t3, %hi(D_800EA520)
    /* ECC6C 8018C22C 11400004 */  beqz       $t2, .L8018C240_ovl3
    /* ECC70 8018C230 3C05800F */   lui       $a1, %hi(D_800EA6E0)
    /* ECC74 8018C234 AC289560 */  sw         $t0, %lo(D_800E9560)($at)
    /* ECC78 8018C238 8C830000 */  lw         $v1, 0x0($a0)
    /* ECC7C 8018C23C 00031880 */  sll        $v1, $v1, 2
  .L8018C240_ovl3:
    /* ECC80 8018C240 01635821 */  addu       $t3, $t3, $v1
    /* ECC84 8018C244 8D6BA520 */  lw         $t3, %lo(D_800EA520)($t3)
    /* ECC88 8018C248 00E36021 */  addu       $t4, $a3, $v1
    /* ECC8C 8018C24C 1160022C */  beqz       $t3, .L8018CB00_ovl3
    /* ECC90 8018C250 00000000 */   nop
    /* ECC94 8018C254 8D8D0000 */  lw         $t5, 0x0($t4)
    /* ECC98 8018C258 51A00014 */  beql       $t5, $zero, .L8018C2AC_ovl3
    /* ECC9C 8018C25C 44805000 */   mtc1      $zero, $f10
    /* ECCA0 8018C260 3C05800E */  lui        $a1, %hi(D_800E17D0)
    /* ECCA4 8018C264 00A32821 */  addu       $a1, $a1, $v1
    /* ECCA8 8018C268 3C048013 */  lui        $a0, %hi(D_8012BCA8 + 0x4)
    /* ECCAC 8018C26C 8C84BCAC */  lw         $a0, %lo(D_8012BCA8 + 0x4)($a0)
    /* ECCB0 8018C270 0C03E209 */  jal        func_800F8824
    /* ECCB4 8018C274 8CA517D0 */   lw        $a1, %lo(D_800E17D0)($a1)
    /* ECCB8 8018C278 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* ECCBC 8018C27C 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* ECCC0 8018C280 3C05800F */  lui        $a1, %hi(D_800EA6E0)
    /* ECCC4 8018C284 24A5A6E0 */  addiu      $a1, $a1, %lo(D_800EA6E0)
    /* ECCC8 8018C288 8C8E0000 */  lw         $t6, 0x0($a0)
    /* ECCCC 8018C28C 46000207 */  neg.s      $f8, $f0
    /* ECCD0 8018C290 3C07800F */  lui        $a3, %hi(D_800E8920)
    /* ECCD4 8018C294 000E7880 */  sll        $t7, $t6, 2
    /* ECCD8 8018C298 00AFC021 */  addu       $t8, $a1, $t7
    /* ECCDC 8018C29C E7080000 */  swc1       $f8, 0x0($t8)
    /* ECCE0 8018C2A0 10000005 */  b          .L8018C2B8_ovl3
    /* ECCE4 8018C2A4 24E78920 */   addiu     $a3, $a3, %lo(D_800E8920)
    /* ECCE8 8018C2A8 44805000 */  mtc1       $zero, $f10
  .L8018C2AC_ovl3:
    /* ECCEC 8018C2AC 24A5A6E0 */  addiu      $a1, $a1, %lo(D_800EA6E0)
    /* ECCF0 8018C2B0 00A3C821 */  addu       $t9, $a1, $v1
    /* ECCF4 8018C2B4 E72A0000 */  swc1       $f10, 0x0($t9)
  .L8018C2B8_ovl3:
    /* ECCF8 8018C2B8 8E090044 */  lw         $t1, 0x44($s0)
    /* ECCFC 8018C2BC 2D210008 */  sltiu      $at, $t1, 0x8
    /* ECD00 8018C2C0 102001E8 */  beqz       $at, .L8018CA64_ovl3
    /* ECD04 8018C2C4 00094880 */   sll       $t1, $t1, 2
    /* ECD08 8018C2C8 3C018019 */  lui        $at, %hi(jtbl_80197ACC_ovl3)
    /* ECD0C 8018C2CC 00290821 */  addu       $at, $at, $t1
    /* ECD10 8018C2D0 8C297ACC */  lw         $t1, %lo(jtbl_80197ACC_ovl3)($at)
    /* ECD14 8018C2D4 01200008 */  jr         $t1
    /* ECD18 8018C2D8 00000000 */   nop
  jlabel .L8018C2DC_ovl3
    /* ECD1C 8018C2DC 0C02BC8C */  jal        func_800AF230
    /* ECD20 8018C2E0 00000000 */   nop
    /* ECD24 8018C2E4 3C05800F */  lui        $a1, %hi(D_800EA6E0)
    /* ECD28 8018C2E8 10400019 */  beqz       $v0, .L8018C350_ovl3
    /* ECD2C 8018C2EC 24A5A6E0 */   addiu     $a1, $a1, %lo(D_800EA6E0)
    /* ECD30 8018C2F0 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* ECD34 8018C2F4 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* ECD38 8018C2F8 3C08800F */  lui        $t0, %hi(D_800E8920)
    /* ECD3C 8018C2FC 240E0004 */  addiu      $t6, $zero, 0x4
    /* ECD40 8018C300 8D430000 */  lw         $v1, 0x0($t2)
    /* ECD44 8018C304 00031880 */  sll        $v1, $v1, 2
    /* ECD48 8018C308 01034021 */  addu       $t0, $t0, $v1
    /* ECD4C 8018C30C 8D088920 */  lw         $t0, %lo(D_800E8920)($t0)
    /* ECD50 8018C310 00A35821 */  addu       $t3, $a1, $v1
    /* ECD54 8018C314 5100000E */  beql       $t0, $zero, .L8018C350_ovl3
    /* ECD58 8018C318 AE0E0044 */   sw        $t6, 0x44($s0)
    /* ECD5C 8018C31C 44807000 */  mtc1       $zero, $f14
    /* ECD60 8018C320 C5700000 */  lwc1       $f16, 0x0($t3)
    /* ECD64 8018C324 240C0001 */  addiu      $t4, $zero, 0x1
    /* ECD68 8018C328 240D0007 */  addiu      $t5, $zero, 0x7
    /* ECD6C 8018C32C 46107032 */  c.eq.s     $f14, $f16
    /* ECD70 8018C330 00000000 */  nop
    /* ECD74 8018C334 45000003 */  bc1f       .L8018C344_ovl3
    /* ECD78 8018C338 00000000 */   nop
    /* ECD7C 8018C33C 10000004 */  b          .L8018C350_ovl3
    /* ECD80 8018C340 AE0C0044 */   sw        $t4, 0x44($s0)
  .L8018C344_ovl3:
    /* ECD84 8018C344 10000002 */  b          .L8018C350_ovl3
    /* ECD88 8018C348 AE0D0044 */   sw        $t5, 0x44($s0)
    /* ECD8C 8018C34C AE0E0044 */  sw         $t6, 0x44($s0)
  .L8018C350_ovl3:
    /* ECD90 8018C350 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* ECD94 8018C354 3C07800F */  lui        $a3, %hi(D_800E8920)
    /* ECD98 8018C358 24E78920 */  addiu      $a3, $a3, %lo(D_800E8920)
    /* ECD9C 8018C35C 100001C1 */  b          .L8018CA64_ovl3
    /* ECDA0 8018C360 8C84A7C4 */   lw        $a0, %lo(omCurrentObj)($a0)
  jlabel .L8018C364_ovl3
    /* ECDA4 8018C364 3C0F800D */  lui        $t7, %hi(gKirbyController + 0x2)
    /* ECDA8 8018C368 95EF6FEA */  lhu        $t7, %lo(gKirbyController + 0x2)($t7)
    /* ECDAC 8018C36C 24190003 */  addiu      $t9, $zero, 0x3
    /* ECDB0 8018C370 31F88000 */  andi       $t8, $t7, 0x8000
    /* ECDB4 8018C374 53000004 */  beql       $t8, $zero, .L8018C388_ovl3
    /* ECDB8 8018C378 8C890000 */   lw        $t1, 0x0($a0)
    /* ECDBC 8018C37C 100001B9 */  b          .L8018CA64_ovl3
    /* ECDC0 8018C380 AE190044 */   sw        $t9, 0x44($s0)
    /* ECDC4 8018C384 8C890000 */  lw         $t1, 0x0($a0)
  .L8018C388_ovl3:
    /* ECDC8 8018C388 240C0004 */  addiu      $t4, $zero, 0x4
    /* ECDCC 8018C38C 00095080 */  sll        $t2, $t1, 2
    /* ECDD0 8018C390 00EA4021 */  addu       $t0, $a3, $t2
    /* ECDD4 8018C394 8D0B0000 */  lw         $t3, 0x0($t0)
    /* ECDD8 8018C398 556001B3 */  bnel       $t3, $zero, .L8018CA68_ovl3
    /* ECDDC 8018C39C 8E1800FC */   lw        $t8, 0xFC($s0)
    /* ECDE0 8018C3A0 100001B0 */  b          .L8018CA64_ovl3
    /* ECDE4 8018C3A4 AE0C0044 */   sw        $t4, 0x44($s0)
  jlabel .L8018C3A8_ovl3
    /* ECDE8 8018C3A8 8E0D00E4 */  lw         $t5, 0xE4($s0)
    /* ECDEC 8018C3AC 3C01800E */  lui        $at, %hi(D_800E3210)
    /* ECDF0 8018C3B0 51A0000A */  beql       $t5, $zero, .L8018C3DC_ovl3
    /* ECDF4 8018C3B4 961900D2 */   lhu       $t9, 0xD2($s0)
    /* ECDF8 8018C3B8 8C8E0000 */  lw         $t6, 0x0($a0)
    /* ECDFC 8018C3BC 44809000 */  mtc1       $zero, $f18
    /* ECE00 8018C3C0 24180004 */  addiu      $t8, $zero, 0x4
    /* ECE04 8018C3C4 000E7880 */  sll        $t7, $t6, 2
    /* ECE08 8018C3C8 002F0821 */  addu       $at, $at, $t7
    /* ECE0C 8018C3CC E4323210 */  swc1       $f18, %lo(D_800E3210)($at)
    /* ECE10 8018C3D0 100001A4 */  b          .L8018CA64_ovl3
    /* ECE14 8018C3D4 AE180044 */   sw        $t8, 0x44($s0)
    /* ECE18 8018C3D8 961900D2 */  lhu        $t9, 0xD2($s0)
  .L8018C3DC_ovl3:
    /* ECE1C 8018C3DC 17200007 */  bnez       $t9, .L8018C3FC_ovl3
    /* ECE20 8018C3E0 00000000 */   nop
    /* ECE24 8018C3E4 0C047AF5 */  jal        func_8011EBD4
    /* ECE28 8018C3E8 00000000 */   nop
    /* ECE2C 8018C3EC 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* ECE30 8018C3F0 3C07800F */  lui        $a3, %hi(D_800E8920)
    /* ECE34 8018C3F4 24E78920 */  addiu      $a3, $a3, %lo(D_800E8920)
    /* ECE38 8018C3F8 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
  .L8018C3FC_ovl3:
    /* ECE3C 8018C3FC 3C09800D */  lui        $t1, %hi(gKirbyController + 0x2)
    /* ECE40 8018C400 95296FEA */  lhu        $t1, %lo(gKirbyController + 0x2)($t1)
    /* ECE44 8018C404 24080006 */  addiu      $t0, $zero, 0x6
    /* ECE48 8018C408 312A8000 */  andi       $t2, $t1, 0x8000
    /* ECE4C 8018C40C 51400196 */  beql       $t2, $zero, .L8018CA68_ovl3
    /* ECE50 8018C410 8E1800FC */   lw        $t8, 0xFC($s0)
    /* ECE54 8018C414 10000193 */  b          .L8018CA64_ovl3
    /* ECE58 8018C418 AE080044 */   sw        $t0, 0x44($s0)
  jlabel .L8018C41C_ovl3
    /* ECE5C 8018C41C 8C830000 */  lw         $v1, 0x0($a0)
    /* ECE60 8018C420 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* ECE64 8018C424 3C0F800D */  lui        $t7, %hi(gKirbyController + 0x2)
    /* ECE68 8018C428 00031880 */  sll        $v1, $v1, 2
    /* ECE6C 8018C42C 00E35821 */  addu       $t3, $a3, $v1
    /* ECE70 8018C430 8D6C0000 */  lw         $t4, 0x0($t3)
    /* ECE74 8018C434 00230821 */  addu       $at, $at, $v1
    /* ECE78 8018C438 1180000D */  beqz       $t4, .L8018C470_ovl3
    /* ECE7C 8018C43C 00000000 */   nop
    /* ECE80 8018C440 44807000 */  mtc1       $zero, $f14
    /* ECE84 8018C444 C42464D0 */  lwc1       $f4, %lo(D_800E64D0)($at)
    /* ECE88 8018C448 240D0007 */  addiu      $t5, $zero, 0x7
    /* ECE8C 8018C44C 240E0005 */  addiu      $t6, $zero, 0x5
    /* ECE90 8018C450 46047032 */  c.eq.s     $f14, $f4
    /* ECE94 8018C454 00000000 */  nop
    /* ECE98 8018C458 45010003 */  bc1t       .L8018C468_ovl3
    /* ECE9C 8018C45C 00000000 */   nop
    /* ECEA0 8018C460 10000180 */  b          .L8018CA64_ovl3
    /* ECEA4 8018C464 AE0D0044 */   sw        $t5, 0x44($s0)
  .L8018C468_ovl3:
    /* ECEA8 8018C468 1000017E */  b          .L8018CA64_ovl3
    /* ECEAC 8018C46C AE0E0044 */   sw        $t6, 0x44($s0)
  .L8018C470_ovl3:
    /* ECEB0 8018C470 95EF6FEA */  lhu        $t7, %lo(gKirbyController + 0x2)($t7)
    /* ECEB4 8018C474 24190006 */  addiu      $t9, $zero, 0x6
    /* ECEB8 8018C478 31F88000 */  andi       $t8, $t7, 0x8000
    /* ECEBC 8018C47C 5300017A */  beql       $t8, $zero, .L8018CA68_ovl3
    /* ECEC0 8018C480 8E1800FC */   lw        $t8, 0xFC($s0)
    /* ECEC4 8018C484 10000177 */  b          .L8018CA64_ovl3
    /* ECEC8 8018C488 AE190044 */   sw        $t9, 0x44($s0)
  jlabel .L8018C48C_ovl3
    /* ECECC 8018C48C 3C09800D */  lui        $t1, %hi(gKirbyController + 0x2)
    /* ECED0 8018C490 95296FEA */  lhu        $t1, %lo(gKirbyController + 0x2)($t1)
    /* ECED4 8018C494 24080003 */  addiu      $t0, $zero, 0x3
    /* ECED8 8018C498 312A8000 */  andi       $t2, $t1, 0x8000
    /* ECEDC 8018C49C 51400004 */  beql       $t2, $zero, .L8018C4B0_ovl3
    /* ECEE0 8018C4A0 8C8B0000 */   lw        $t3, 0x0($a0)
    /* ECEE4 8018C4A4 10000012 */  b          .L8018C4F0_ovl3
    /* ECEE8 8018C4A8 AE080044 */   sw        $t0, 0x44($s0)
    /* ECEEC 8018C4AC 8C8B0000 */  lw         $t3, 0x0($a0)
  .L8018C4B0_ovl3:
    /* ECEF0 8018C4B0 44807000 */  mtc1       $zero, $f14
    /* ECEF4 8018C4B4 240E0007 */  addiu      $t6, $zero, 0x7
    /* ECEF8 8018C4B8 000B6080 */  sll        $t4, $t3, 2
    /* ECEFC 8018C4BC 00AC6821 */  addu       $t5, $a1, $t4
    /* ECF00 8018C4C0 C5A60000 */  lwc1       $f6, 0x0($t5)
    /* ECF04 8018C4C4 46067032 */  c.eq.s     $f14, $f6
    /* ECF08 8018C4C8 00000000 */  nop
    /* ECF0C 8018C4CC 45010003 */  bc1t       .L8018C4DC_ovl3
    /* ECF10 8018C4D0 00000000 */   nop
    /* ECF14 8018C4D4 10000006 */  b          .L8018C4F0_ovl3
    /* ECF18 8018C4D8 AE0E0044 */   sw        $t6, 0x44($s0)
  .L8018C4DC_ovl3:
    /* ECF1C 8018C4DC 0C02BC8C */  jal        func_800AF230
    /* ECF20 8018C4E0 00000000 */   nop
    /* ECF24 8018C4E4 10400002 */  beqz       $v0, .L8018C4F0_ovl3
    /* ECF28 8018C4E8 240F0001 */   addiu     $t7, $zero, 0x1
    /* ECF2C 8018C4EC AE0F0044 */  sw         $t7, 0x44($s0)
  .L8018C4F0_ovl3:
    /* ECF30 8018C4F0 3C07800F */  lui        $a3, %hi(D_800E8920)
    /* ECF34 8018C4F4 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* ECF38 8018C4F8 24E78920 */  addiu      $a3, $a3, %lo(D_800E8920)
    /* ECF3C 8018C4FC 10000159 */  b          .L8018CA64_ovl3
    /* ECF40 8018C500 8C84A7C4 */   lw        $a0, %lo(omCurrentObj)($a0)
  jlabel .L8018C504_ovl3
    /* ECF44 8018C504 8E180030 */  lw         $t8, 0x30($s0)
    /* ECF48 8018C508 24190004 */  addiu      $t9, $zero, 0x4
    /* ECF4C 8018C50C 53000004 */  beql       $t8, $zero, .L8018C520_ovl3
    /* ECF50 8018C510 8C890000 */   lw        $t1, 0x0($a0)
    /* ECF54 8018C514 10000153 */  b          .L8018CA64_ovl3
    /* ECF58 8018C518 AE190044 */   sw        $t9, 0x44($s0)
    /* ECF5C 8018C51C 8C890000 */  lw         $t1, 0x0($a0)
  .L8018C520_ovl3:
    /* ECF60 8018C520 3C08800F */  lui        $t0, %hi(D_800E9720)
    /* ECF64 8018C524 25089720 */  addiu      $t0, $t0, %lo(D_800E9720)
    /* ECF68 8018C528 00095080 */  sll        $t2, $t1, 2
    /* ECF6C 8018C52C 01481021 */  addu       $v0, $t2, $t0
    /* ECF70 8018C530 8C460000 */  lw         $a2, 0x0($v0)
    /* ECF74 8018C534 3C0B800D */  lui        $t3, %hi(gKirbyController + 0x2)
    /* ECF78 8018C538 14C0000B */  bnez       $a2, .L8018C568_ovl3
    /* ECF7C 8018C53C 24D8FFFF */   addiu     $t8, $a2, -0x1
    /* ECF80 8018C540 956B6FEA */  lhu        $t3, %lo(gKirbyController + 0x2)($t3)
    /* ECF84 8018C544 316C8000 */  andi       $t4, $t3, 0x8000
    /* ECF88 8018C548 51800147 */  beql       $t4, $zero, .L8018CA68_ovl3
    /* ECF8C 8018C54C 8E1800FC */   lw        $t8, 0xFC($s0)
    /* ECF90 8018C550 8E0D003C */  lw         $t5, 0x3C($s0)
    /* ECF94 8018C554 240F0006 */  addiu      $t7, $zero, 0x6
    /* ECF98 8018C558 AE0F0044 */  sw         $t7, 0x44($s0)
    /* ECF9C 8018C55C 25AE0001 */  addiu      $t6, $t5, 0x1
    /* ECFA0 8018C560 10000140 */  b          .L8018CA64_ovl3
    /* ECFA4 8018C564 AE0E003C */   sw        $t6, 0x3C($s0)
  .L8018C568_ovl3:
    /* ECFA8 8018C568 1000013E */  b          .L8018CA64_ovl3
    /* ECFAC 8018C56C AC580000 */   sw        $t8, 0x0($v0)
  jlabel .L8018C570_ovl3
    /* ECFB0 8018C570 8C830000 */  lw         $v1, 0x0($a0)
    /* ECFB4 8018C574 3C0A800D */  lui        $t2, %hi(gKirbyController + 0x2)
    /* ECFB8 8018C578 00031880 */  sll        $v1, $v1, 2
    /* ECFBC 8018C57C 00E3C821 */  addu       $t9, $a3, $v1
    /* ECFC0 8018C580 8F290000 */  lw         $t1, 0x0($t9)
    /* ECFC4 8018C584 15200006 */  bnez       $t1, .L8018C5A0_ovl3
    /* ECFC8 8018C588 00000000 */   nop
    /* ECFCC 8018C58C 0C04828A */  jal        func_80120A28
    /* ECFD0 8018C590 00000000 */   nop
    /* ECFD4 8018C594 44807000 */  mtc1       $zero, $f14
    /* ECFD8 8018C598 100000B5 */  b          .L8018C870_ovl3
    /* ECFDC 8018C59C 00000000 */   nop
  .L8018C5A0_ovl3:
    /* ECFE0 8018C5A0 954A6FEA */  lhu        $t2, %lo(gKirbyController + 0x2)($t2)
    /* ECFE4 8018C5A4 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* ECFE8 8018C5A8 240B0003 */  addiu      $t3, $zero, 0x3
    /* ECFEC 8018C5AC 31488000 */  andi       $t0, $t2, 0x8000
    /* ECFF0 8018C5B0 11000003 */  beqz       $t0, .L8018C5C0_ovl3
    /* ECFF4 8018C5B4 00230821 */   addu      $at, $at, $v1
    /* ECFF8 8018C5B8 1000012A */  b          .L8018CA64_ovl3
    /* ECFFC 8018C5BC AE0B0044 */   sw        $t3, 0x44($s0)
  .L8018C5C0_ovl3:
    /* ED000 8018C5C0 44807000 */  mtc1       $zero, $f14
    /* ED004 8018C5C4 C42864D0 */  lwc1       $f8, %lo(D_800E64D0)($at)
    /* ED008 8018C5C8 3C01800E */  lui        $at, %hi(D_800E6850)
    /* ED00C 8018C5CC 00230821 */  addu       $at, $at, $v1
    /* ED010 8018C5D0 46087032 */  c.eq.s     $f14, $f8
    /* ED014 8018C5D4 00000000 */  nop
    /* ED018 8018C5D8 45000009 */  bc1f       .L8018C600_ovl3
    /* ED01C 8018C5DC 00000000 */   nop
    /* ED020 8018C5E0 C42A6850 */  lwc1       $f10, %lo(D_800E6850)($at)
    /* ED024 8018C5E4 240C0001 */  addiu      $t4, $zero, 0x1
    /* ED028 8018C5E8 460A7032 */  c.eq.s     $f14, $f10
    /* ED02C 8018C5EC 00000000 */  nop
    /* ED030 8018C5F0 45000003 */  bc1f       .L8018C600_ovl3
    /* ED034 8018C5F4 00000000 */   nop
    /* ED038 8018C5F8 1000011A */  b          .L8018CA64_ovl3
    /* ED03C 8018C5FC AE0C0044 */   sw        $t4, 0x44($s0)
  .L8018C600_ovl3:
    /* ED040 8018C600 0C0482BE */  jal        func_80120AF8
    /* ED044 8018C604 27A4005C */   addiu     $a0, $sp, 0x5C
    /* ED048 8018C608 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* ED04C 8018C60C 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* ED050 8018C610 3C05800F */  lui        $a1, %hi(D_800EA6E0)
    /* ED054 8018C614 24A5A6E0 */  addiu      $a1, $a1, %lo(D_800EA6E0)
    /* ED058 8018C618 8C830000 */  lw         $v1, 0x0($a0)
    /* ED05C 8018C61C 44807000 */  mtc1       $zero, $f14
    /* ED060 8018C620 44808000 */  mtc1       $zero, $f16
    /* ED064 8018C624 00031880 */  sll        $v1, $v1, 2
    /* ED068 8018C628 00A36821 */  addu       $t5, $a1, $v1
    /* ED06C 8018C62C C5A00000 */  lwc1       $f0, 0x0($t5)
    /* ED070 8018C630 C7A40060 */  lwc1       $f4, 0x60($sp)
    /* ED074 8018C634 3C018019 */  lui        $at, %hi(D_80197AF0_ovl3)
    /* ED078 8018C638 460E003C */  c.lt.s     $f0, $f14
    /* ED07C 8018C63C C7A80060 */  lwc1       $f8, 0x60($sp)
    /* ED080 8018C640 3C08800F */  lui        $t0, %hi(D_800E8AE0)
    /* ED084 8018C644 45020004 */  bc1fl      .L8018C658_ovl3
    /* ED088 8018C648 46000306 */   mov.s     $f12, $f0
    /* ED08C 8018C64C 10000002 */  b          .L8018C658_ovl3
    /* ED090 8018C650 46000307 */   neg.s     $f12, $f0
    /* ED094 8018C654 46000306 */  mov.s      $f12, $f0
  .L8018C658_ovl3:
    /* ED098 8018C658 4610003C */  c.lt.s     $f0, $f16
    /* ED09C 8018C65C 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
    /* ED0A0 8018C660 01C37021 */  addu       $t6, $t6, $v1
    /* ED0A4 8018C664 45000006 */  bc1f       .L8018C680_ovl3
    /* ED0A8 8018C668 00000000 */   nop
    /* ED0AC 8018C66C 3C018019 */  lui        $at, %hi(D_80197AEC_ovl3)
    /* ED0B0 8018C670 C4327AEC */  lwc1       $f18, %lo(D_80197AEC_ovl3)($at)
    /* ED0B4 8018C674 46049082 */  mul.s      $f2, $f18, $f4
    /* ED0B8 8018C678 10000005 */  b          .L8018C690_ovl3
    /* ED0BC 8018C67C 46007032 */   c.eq.s    $f14, $f0
  .L8018C680_ovl3:
    /* ED0C0 8018C680 C4267AF0 */  lwc1       $f6, %lo(D_80197AF0_ovl3)($at)
    /* ED0C4 8018C684 46083082 */  mul.s      $f2, $f6, $f8
    /* ED0C8 8018C688 00000000 */  nop
    /* ED0CC 8018C68C 46007032 */  c.eq.s     $f14, $f0
  .L8018C690_ovl3:
    /* ED0D0 8018C690 00000000 */  nop
    /* ED0D4 8018C694 45000004 */  bc1f       .L8018C6A8_ovl3
    /* ED0D8 8018C698 00000000 */   nop
    /* ED0DC 8018C69C 44800000 */  mtc1       $zero, $f0
    /* ED0E0 8018C6A0 1000000D */  b          .L8018C6D8_ovl3
    /* ED0E4 8018C6A4 3C014120 */   lui       $at, (0x41200000 >> 16)
  .L8018C6A8_ovl3:
    /* ED0E8 8018C6A8 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
    /* ED0EC 8018C6AC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* ED0F0 8018C6B0 31CF0006 */  andi       $t7, $t6, 0x6
    /* ED0F4 8018C6B4 55E00006 */  bnel       $t7, $zero, .L8018C6D0_ovl3
    /* ED0F8 8018C6B8 44810000 */   mtc1      $at, $f0
    /* ED0FC 8018C6BC 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* ED100 8018C6C0 44810000 */  mtc1       $at, $f0
    /* ED104 8018C6C4 10000004 */  b          .L8018C6D8_ovl3
    /* ED108 8018C6C8 3C014120 */   lui       $at, (0x41200000 >> 16)
    /* ED10C 8018C6CC 44810000 */  mtc1       $at, $f0
  .L8018C6D0_ovl3:
    /* ED110 8018C6D0 00000000 */  nop
    /* ED114 8018C6D4 3C014120 */  lui        $at, (0x41200000 >> 16)
  .L8018C6D8_ovl3:
    /* ED118 8018C6D8 44815000 */  mtc1       $at, $f10
    /* ED11C 8018C6DC 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* ED120 8018C6E0 44812000 */  mtc1       $at, $f4
    /* ED124 8018C6E4 460A6402 */  mul.s      $f16, $f12, $f10
    /* ED128 8018C6E8 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* ED12C 8018C6EC 44815000 */  mtc1       $at, $f10
    /* ED130 8018C6F0 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* ED134 8018C6F4 00230821 */  addu       $at, $at, $v1
    /* ED138 8018C6F8 46028482 */  mul.s      $f18, $f16, $f2
    /* ED13C 8018C6FC C4306A10 */  lwc1       $f16, %lo(D_800E6A10)($at)
    /* ED140 8018C700 46046182 */  mul.s      $f6, $f12, $f4
    /* ED144 8018C704 46105032 */  c.eq.s     $f10, $f16
    /* ED148 8018C708 46029080 */  add.s      $f2, $f18, $f2
    /* ED14C 8018C70C 46003202 */  mul.s      $f8, $f6, $f0
    /* ED150 8018C710 45000002 */  bc1f       .L8018C71C_ovl3
    /* ED154 8018C714 46004000 */   add.s     $f0, $f8, $f0
    /* ED158 8018C718 46001087 */  neg.s      $f2, $f2
  .L8018C71C_ovl3:
    /* ED15C 8018C71C 460E003C */  c.lt.s     $f0, $f14
    /* ED160 8018C720 3C01800E */  lui        $at, %hi(D_800E6690)
    /* ED164 8018C724 00230821 */  addu       $at, $at, $v1
    /* ED168 8018C728 E4226690 */  swc1       $f2, %lo(D_800E6690)($at)
    /* ED16C 8018C72C 45000008 */  bc1f       .L8018C750_ovl3
    /* ED170 8018C730 3C0C800C */   lui       $t4, %hi(D_800BE4EC)
    /* ED174 8018C734 8C980000 */  lw         $t8, 0x0($a0)
    /* ED178 8018C738 3C01800E */  lui        $at, %hi(D_800E6850)
    /* ED17C 8018C73C 46000487 */  neg.s      $f18, $f0
    /* ED180 8018C740 0018C880 */  sll        $t9, $t8, 2
    /* ED184 8018C744 00390821 */  addu       $at, $at, $t9
    /* ED188 8018C748 10000006 */  b          .L8018C764_ovl3
    /* ED18C 8018C74C E4326850 */   swc1      $f18, %lo(D_800E6850)($at)
  .L8018C750_ovl3:
    /* ED190 8018C750 8C890000 */  lw         $t1, 0x0($a0)
    /* ED194 8018C754 3C01800E */  lui        $at, %hi(D_800E6850)
    /* ED198 8018C758 00095080 */  sll        $t2, $t1, 2
    /* ED19C 8018C75C 002A0821 */  addu       $at, $at, $t2
    /* ED1A0 8018C760 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
  .L8018C764_ovl3:
    /* ED1A4 8018C764 8C830000 */  lw         $v1, 0x0($a0)
    /* ED1A8 8018C768 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* ED1AC 8018C76C 00031880 */  sll        $v1, $v1, 2
    /* ED1B0 8018C770 00230821 */  addu       $at, $at, $v1
    /* ED1B4 8018C774 C42064D0 */  lwc1       $f0, %lo(D_800E64D0)($at)
    /* ED1B8 8018C778 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* ED1BC 8018C77C 01034021 */  addu       $t0, $t0, $v1
    /* ED1C0 8018C780 460E003C */  c.lt.s     $f0, $f14
    /* ED1C4 8018C784 00000000 */  nop
    /* ED1C8 8018C788 45020004 */  bc1fl      .L8018C79C_ovl3
    /* ED1CC 8018C78C 46000306 */   mov.s     $f12, $f0
    /* ED1D0 8018C790 10000002 */  b          .L8018C79C_ovl3
    /* ED1D4 8018C794 46000307 */   neg.s     $f12, $f0
    /* ED1D8 8018C798 46000306 */  mov.s      $f12, $f0
  .L8018C79C_ovl3:
    /* ED1DC 8018C79C 8D088AE0 */  lw         $t0, %lo(D_800E8AE0)($t0)
    /* ED1E0 8018C7A0 310B0006 */  andi       $t3, $t0, 0x6
    /* ED1E4 8018C7A4 55600006 */  bnel       $t3, $zero, .L8018C7C0_ovl3
    /* ED1E8 8018C7A8 44811000 */   mtc1      $at, $f2
    /* ED1EC 8018C7AC 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* ED1F0 8018C7B0 44811000 */  mtc1       $at, $f2
    /* ED1F4 8018C7B4 10000004 */  b          .L8018C7C8_ovl3
    /* ED1F8 8018C7B8 460C103C */   c.lt.s    $f2, $f12
    /* ED1FC 8018C7BC 44811000 */  mtc1       $at, $f2
  .L8018C7C0_ovl3:
    /* ED200 8018C7C0 00000000 */  nop
    /* ED204 8018C7C4 460C103C */  c.lt.s     $f2, $f12
  .L8018C7C8_ovl3:
    /* ED208 8018C7C8 00000000 */  nop
    /* ED20C 8018C7CC 45000028 */  bc1f       .L8018C870_ovl3
    /* ED210 8018C7D0 00000000 */   nop
    /* ED214 8018C7D4 8D8CE4EC */  lw         $t4, %lo(D_800BE4EC)($t4)
    /* ED218 8018C7D8 24010003 */  addiu      $at, $zero, 0x3
    /* ED21C 8018C7DC 0181001B */  divu       $zero, $t4, $at
    /* ED220 8018C7E0 00006810 */  mfhi       $t5
    /* ED224 8018C7E4 15A00022 */  bnez       $t5, .L8018C870_ovl3
    /* ED228 8018C7E8 00000000 */   nop
    /* ED22C 8018C7EC 0C048C90 */  jal        func_80123240
    /* ED230 8018C7F0 00000000 */   nop
    /* ED234 8018C7F4 44822000 */  mtc1       $v0, $f4
    /* ED238 8018C7F8 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* ED23C 8018C7FC 44813000 */  mtc1       $at, $f6
    /* ED240 8018C800 46802020 */  cvt.s.w    $f0, $f4
    /* ED244 8018C804 44807000 */  mtc1       $zero, $f14
    /* ED248 8018C808 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* ED24C 8018C80C 24040005 */  addiu      $a0, $zero, 0x5
    /* ED250 8018C810 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* ED254 8018C814 46003032 */  c.eq.s     $f6, $f0
    /* ED258 8018C818 00000000 */  nop
    /* ED25C 8018C81C 45010014 */  bc1t       .L8018C870_ovl3
    /* ED260 8018C820 00000000 */   nop
    /* ED264 8018C824 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* ED268 8018C828 4600020D */  trunc.w.s  $f8, $f0
    /* ED26C 8018C82C 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
    /* ED270 8018C830 8DE30000 */  lw         $v1, 0x0($t7)
    /* ED274 8018C834 24050001 */  addiu      $a1, $zero, 0x1
    /* ED278 8018C838 44064000 */  mfc1       $a2, $f8
    /* ED27C 8018C83C 00031880 */  sll        $v1, $v1, 2
    /* ED280 8018C840 00230821 */  addu       $at, $at, $v1
    /* ED284 8018C844 C42A2790 */  lwc1       $f10, %lo(gEntitiesNextPosYArray)($at)
    /* ED288 8018C848 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* ED28C 8018C84C 00230821 */  addu       $at, $at, $v1
    /* ED290 8018C850 C4302950 */  lwc1       $f16, %lo(gEntitiesNextPosZArray)($at)
    /* ED294 8018C854 00E33821 */  addu       $a3, $a3, $v1
    /* ED298 8018C858 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
    /* ED29C 8018C85C E7AA0010 */  swc1       $f10, 0x10($sp)
    /* ED2A0 8018C860 0C029FDD */  jal        func_800A7F74
    /* ED2A4 8018C864 E7B00014 */   swc1      $f16, 0x14($sp)
    /* ED2A8 8018C868 44807000 */  mtc1       $zero, $f14
    /* ED2AC 8018C86C 00000000 */  nop
  .L8018C870_ovl3:
    /* ED2B0 8018C870 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* ED2B4 8018C874 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* ED2B8 8018C878 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* ED2BC 8018C87C 8C980000 */  lw         $t8, 0x0($a0)
    /* ED2C0 8018C880 0018C880 */  sll        $t9, $t8, 2
    /* ED2C4 8018C884 00390821 */  addu       $at, $at, $t9
    /* ED2C8 8018C888 C42064D0 */  lwc1       $f0, %lo(D_800E64D0)($at)
    /* ED2CC 8018C88C 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* ED2D0 8018C890 46007032 */  c.eq.s     $f14, $f0
    /* ED2D4 8018C894 00000000 */  nop
    /* ED2D8 8018C898 4501006E */  bc1t       .L8018CA54_ovl3
    /* ED2DC 8018C89C 00000000 */   nop
    /* ED2E0 8018C8A0 44819000 */  mtc1       $at, $f18
    /* ED2E4 8018C8A4 3C018019 */  lui        $at, %hi(D_80197AF4_ovl3)
    /* ED2E8 8018C8A8 C4267AF4 */  lwc1       $f6, %lo(D_80197AF4_ovl3)($at)
    /* ED2EC 8018C8AC 46120102 */  mul.s      $f4, $f0, $f18
    /* ED2F0 8018C8B0 3C014334 */  lui        $at, (0x43340000 >> 16)
    /* ED2F4 8018C8B4 44815000 */  mtc1       $at, $f10
    /* ED2F8 8018C8B8 C6120040 */  lwc1       $f18, 0x40($s0)
    /* ED2FC 8018C8BC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* ED300 8018C8C0 3C09800E */  lui        $t1, %hi(D_800DFBD0)
    /* ED304 8018C8C4 3C08800E */  lui        $t0, %hi(D_800DFBD0)
    /* ED308 8018C8C8 46062202 */  mul.s      $f8, $f4, $f6
    /* ED30C 8018C8CC 44813000 */  mtc1       $at, $f6
    /* ED310 8018C8D0 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* ED314 8018C8D4 460A4403 */  div.s      $f16, $f8, $f10
    /* ED318 8018C8D8 46109100 */  add.s      $f4, $f18, $f16
    /* ED31C 8018C8DC E6040040 */  swc1       $f4, 0x40($s0)
    /* ED320 8018C8E0 8C830000 */  lw         $v1, 0x0($a0)
    /* ED324 8018C8E4 44802000 */  mtc1       $zero, $f4
    /* ED328 8018C8E8 00031880 */  sll        $v1, $v1, 2
    /* ED32C 8018C8EC 00230821 */  addu       $at, $at, $v1
    /* ED330 8018C8F0 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
    /* ED334 8018C8F4 01234821 */  addu       $t1, $t1, $v1
    /* ED338 8018C8F8 01034021 */  addu       $t0, $t0, $v1
    /* ED33C 8018C8FC 46083032 */  c.eq.s     $f6, $f8
    /* ED340 8018C900 3C018019 */  lui        $at, %hi(D_80197AFC_ovl3)
    /* ED344 8018C904 45000006 */  bc1f       .L8018C920_ovl3
    /* ED348 8018C908 00000000 */   nop
    /* ED34C 8018C90C 8D29FBD0 */  lw         $t1, %lo(D_800DFBD0)($t1)
    /* ED350 8018C910 C60A0040 */  lwc1       $f10, 0x40($s0)
    /* ED354 8018C914 8D2A0004 */  lw         $t2, 0x4($t1)
    /* ED358 8018C918 10000006 */  b          .L8018C934_ovl3
    /* ED35C 8018C91C E54A0030 */   swc1      $f10, 0x30($t2)
  .L8018C920_ovl3:
    /* ED360 8018C920 8D08FBD0 */  lw         $t0, %lo(D_800DFBD0)($t0)
    /* ED364 8018C924 C6120040 */  lwc1       $f18, 0x40($s0)
    /* ED368 8018C928 8D0B0004 */  lw         $t3, 0x4($t0)
    /* ED36C 8018C92C 46009407 */  neg.s      $f16, $f18
    /* ED370 8018C930 E5700030 */  swc1       $f16, 0x30($t3)
  .L8018C934_ovl3:
    /* ED374 8018C934 C6000040 */  lwc1       $f0, 0x40($s0)
    /* ED378 8018C938 4604003C */  c.lt.s     $f0, $f4
    /* ED37C 8018C93C 00000000 */  nop
    /* ED380 8018C940 45000022 */  bc1f       .L8018C9CC_ovl3
    /* ED384 8018C944 00000000 */   nop
    /* ED388 8018C948 3C018019 */  lui        $at, %hi(D_80197AF8_ovl3)
    /* ED38C 8018C94C C4227AF8 */  lwc1       $f2, %lo(D_80197AF8_ovl3)($at)
    /* ED390 8018C950 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* ED394 8018C954 3C0D800F */  lui        $t5, %hi(D_800E8920)
    /* ED398 8018C958 46020180 */  add.s      $f6, $f0, $f2
    /* ED39C 8018C95C 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* ED3A0 8018C960 E6060040 */  swc1       $f6, 0x40($s0)
    /* ED3A4 8018C964 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* ED3A8 8018C968 8D830000 */  lw         $v1, 0x0($t4)
    /* ED3AC 8018C96C 00031880 */  sll        $v1, $v1, 2
    /* ED3B0 8018C970 01A36821 */  addu       $t5, $t5, $v1
    /* ED3B4 8018C974 8DAD8920 */  lw         $t5, %lo(D_800E8920)($t5)
    /* ED3B8 8018C978 00230821 */  addu       $at, $at, $v1
    /* ED3BC 8018C97C 11A00035 */  beqz       $t5, .L8018CA54_ovl3
    /* ED3C0 8018C980 00000000 */   nop
    /* ED3C4 8018C984 C42064D0 */  lwc1       $f0, %lo(D_800E64D0)($at)
    /* ED3C8 8018C988 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* ED3CC 8018C98C 44814000 */  mtc1       $at, $f8
    /* ED3D0 8018C990 460E003C */  c.lt.s     $f0, $f14
    /* ED3D4 8018C994 00000000 */  nop
    /* ED3D8 8018C998 45020004 */  bc1fl      .L8018C9AC_ovl3
    /* ED3DC 8018C99C 46000086 */   mov.s     $f2, $f0
    /* ED3E0 8018C9A0 10000002 */  b          .L8018C9AC_ovl3
    /* ED3E4 8018C9A4 46000087 */   neg.s     $f2, $f0
    /* ED3E8 8018C9A8 46000086 */  mov.s      $f2, $f0
  .L8018C9AC_ovl3:
    /* ED3EC 8018C9AC 4602403C */  c.lt.s     $f8, $f2
    /* ED3F0 8018C9B0 00000000 */  nop
    /* ED3F4 8018C9B4 45000027 */  bc1f       .L8018CA54_ovl3
    /* ED3F8 8018C9B8 00000000 */   nop
    /* ED3FC 8018C9BC 0C029D9E */  jal        play_sound
    /* ED400 8018C9C0 24040121 */   addiu     $a0, $zero, 0x121
    /* ED404 8018C9C4 10000023 */  b          .L8018CA54_ovl3
    /* ED408 8018C9C8 00000000 */   nop
  .L8018C9CC_ovl3:
    /* ED40C 8018C9CC C4227AFC */  lwc1       $f2, %lo(D_80197AFC_ovl3)($at)
    /* ED410 8018C9D0 4600103E */  c.le.s     $f2, $f0
    /* ED414 8018C9D4 00000000 */  nop
    /* ED418 8018C9D8 4500001E */  bc1f       .L8018CA54_ovl3
    /* ED41C 8018C9DC 00000000 */   nop
    /* ED420 8018C9E0 46020281 */  sub.s      $f10, $f0, $f2
    /* ED424 8018C9E4 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* ED428 8018C9E8 3C0F800F */  lui        $t7, %hi(D_800E8920)
    /* ED42C 8018C9EC 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* ED430 8018C9F0 E60A0040 */  swc1       $f10, 0x40($s0)
    /* ED434 8018C9F4 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* ED438 8018C9F8 8DC30000 */  lw         $v1, 0x0($t6)
    /* ED43C 8018C9FC 00031880 */  sll        $v1, $v1, 2
    /* ED440 8018CA00 01E37821 */  addu       $t7, $t7, $v1
    /* ED444 8018CA04 8DEF8920 */  lw         $t7, %lo(D_800E8920)($t7)
    /* ED448 8018CA08 00230821 */  addu       $at, $at, $v1
    /* ED44C 8018CA0C 11E00011 */  beqz       $t7, .L8018CA54_ovl3
    /* ED450 8018CA10 00000000 */   nop
    /* ED454 8018CA14 C42064D0 */  lwc1       $f0, %lo(D_800E64D0)($at)
    /* ED458 8018CA18 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* ED45C 8018CA1C 44819000 */  mtc1       $at, $f18
    /* ED460 8018CA20 460E003C */  c.lt.s     $f0, $f14
    /* ED464 8018CA24 00000000 */  nop
    /* ED468 8018CA28 45020004 */  bc1fl      .L8018CA3C_ovl3
    /* ED46C 8018CA2C 46000086 */   mov.s     $f2, $f0
    /* ED470 8018CA30 10000002 */  b          .L8018CA3C_ovl3
    /* ED474 8018CA34 46000087 */   neg.s     $f2, $f0
    /* ED478 8018CA38 46000086 */  mov.s      $f2, $f0
  .L8018CA3C_ovl3:
    /* ED47C 8018CA3C 4602903C */  c.lt.s     $f18, $f2
    /* ED480 8018CA40 00000000 */  nop
    /* ED484 8018CA44 45000003 */  bc1f       .L8018CA54_ovl3
    /* ED488 8018CA48 00000000 */   nop
    /* ED48C 8018CA4C 0C029D9E */  jal        play_sound
    /* ED490 8018CA50 24040121 */   addiu     $a0, $zero, 0x121
  .L8018CA54_ovl3:
    /* ED494 8018CA54 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* ED498 8018CA58 3C07800F */  lui        $a3, %hi(D_800E8920)
    /* ED49C 8018CA5C 24E78920 */  addiu      $a3, $a3, %lo(D_800E8920)
    /* ED4A0 8018CA60 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
  jlabel .L8018CA64_ovl3
    /* ED4A4 8018CA64 8E1800FC */  lw         $t8, 0xFC($s0)
  .L8018CA68_ovl3:
    /* ED4A8 8018CA68 8C830000 */  lw         $v1, 0x0($a0)
    /* ED4AC 8018CA6C 3C02800E */  lui        $v0, %hi(D_800E6690)
    /* ED4B0 8018CA70 1700000F */  bnez       $t8, .L8018CAB0_ovl3
    /* ED4B4 8018CA74 00031880 */   sll       $v1, $v1, 2
    /* ED4B8 8018CA78 00E3C821 */  addu       $t9, $a3, $v1
    /* ED4BC 8018CA7C 8F290000 */  lw         $t1, 0x0($t9)
    /* ED4C0 8018CA80 1520001F */  bnez       $t1, .L8018CB00_ovl3
    /* ED4C4 8018CA84 00000000 */   nop
    /* ED4C8 8018CA88 8E0A0044 */  lw         $t2, 0x44($s0)
    /* ED4CC 8018CA8C 1140001C */  beqz       $t2, .L8018CB00_ovl3
    /* ED4D0 8018CA90 00000000 */   nop
    /* ED4D4 8018CA94 0C047B5A */  jal        func_8011ED68
    /* ED4D8 8018CA98 00000000 */   nop
    /* ED4DC 8018CA9C 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* ED4E0 8018CAA0 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* ED4E4 8018CAA4 8D030000 */  lw         $v1, 0x0($t0)
    /* ED4E8 8018CAA8 10000015 */  b          .L8018CB00_ovl3
    /* ED4EC 8018CAAC 00031880 */   sll       $v1, $v1, 2
  .L8018CAB0_ovl3:
    /* ED4F0 8018CAB0 44808000 */  mtc1       $zero, $f16
    /* ED4F4 8018CAB4 24426690 */  addiu      $v0, $v0, %lo(D_800E6690)
    /* ED4F8 8018CAB8 00435821 */  addu       $t3, $v0, $v1
    /* ED4FC 8018CABC E5700000 */  swc1       $f16, 0x0($t3)
    /* ED500 8018CAC0 8C830000 */  lw         $v1, 0x0($a0)
    /* ED504 8018CAC4 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* ED508 8018CAC8 00031880 */  sll        $v1, $v1, 2
    /* ED50C 8018CACC 00436021 */  addu       $t4, $v0, $v1
    /* ED510 8018CAD0 C5840000 */  lwc1       $f4, 0x0($t4)
    /* ED514 8018CAD4 00230821 */  addu       $at, $at, $v1
    /* ED518 8018CAD8 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
    /* ED51C 8018CADC 8C8D0000 */  lw         $t5, 0x0($a0)
    /* ED520 8018CAE0 3C018019 */  lui        $at, %hi(D_80197B00_ovl3)
    /* ED524 8018CAE4 C4267B00 */  lwc1       $f6, %lo(D_80197B00_ovl3)($at)
    /* ED528 8018CAE8 3C01800E */  lui        $at, %hi(D_800E6850)
    /* ED52C 8018CAEC 000D7080 */  sll        $t6, $t5, 2
    /* ED530 8018CAF0 002E0821 */  addu       $at, $at, $t6
    /* ED534 8018CAF4 E4266850 */  swc1       $f6, %lo(D_800E6850)($at)
    /* ED538 8018CAF8 8C830000 */  lw         $v1, 0x0($a0)
    /* ED53C 8018CAFC 00031880 */  sll        $v1, $v1, 2
  .L8018CB00_ovl3:
    /* ED540 8018CB00 3C0F800F */  lui        $t7, %hi(D_800EA520)
    /* ED544 8018CB04 01E37821 */  addu       $t7, $t7, $v1
    /* ED548 8018CB08 8DEFA520 */  lw         $t7, %lo(D_800EA520)($t7)
    /* ED54C 8018CB0C 11E00024 */  beqz       $t7, .L8018CBA0_ovl3
    /* ED550 8018CB10 00000000 */   nop
    /* ED554 8018CB14 92180017 */  lbu        $t8, 0x17($s0)
    /* ED558 8018CB18 00001025 */  or         $v0, $zero, $zero
    /* ED55C 8018CB1C 24080001 */  addiu      $t0, $zero, 0x1
    /* ED560 8018CB20 13000003 */  beqz       $t8, .L8018CB30_ovl3
    /* ED564 8018CB24 3C01800F */   lui       $at, %hi(D_800E98E0)
    /* ED568 8018CB28 1000000A */  b          .L8018CB54_ovl3
    /* ED56C 8018CB2C 24020001 */   addiu     $v0, $zero, 0x1
  .L8018CB30_ovl3:
    /* ED570 8018CB30 92190016 */  lbu        $t9, 0x16($s0)
    /* ED574 8018CB34 3C09800D */  lui        $t1, %hi(gKirbyController + 0x2)
    /* ED578 8018CB38 17200006 */  bnez       $t9, .L8018CB54_ovl3
    /* ED57C 8018CB3C 00000000 */   nop
    /* ED580 8018CB40 95296FEA */  lhu        $t1, %lo(gKirbyController + 0x2)($t1)
    /* ED584 8018CB44 312A4000 */  andi       $t2, $t1, 0x4000
    /* ED588 8018CB48 11400002 */  beqz       $t2, .L8018CB54_ovl3
    /* ED58C 8018CB4C 00000000 */   nop
    /* ED590 8018CB50 24020001 */  addiu      $v0, $zero, 0x1
  .L8018CB54_ovl3:
    /* ED594 8018CB54 10400003 */  beqz       $v0, .L8018CB64_ovl3
    /* ED598 8018CB58 00230821 */   addu      $at, $at, $v1
    /* ED59C 8018CB5C 10000010 */  b          .L8018CBA0_ovl3
    /* ED5A0 8018CB60 AC2898E0 */   sw        $t0, %lo(D_800E98E0)($at)
  .L8018CB64_ovl3:
    /* ED5A4 8018CB64 8E0B0044 */  lw         $t3, 0x44($s0)
    /* ED5A8 8018CB68 24010007 */  addiu      $at, $zero, 0x7
    /* ED5AC 8018CB6C 1161000C */  beq        $t3, $at, .L8018CBA0_ovl3
    /* ED5B0 8018CB70 00000000 */   nop
    /* ED5B4 8018CB74 8E0C0034 */  lw         $t4, 0x34($s0)
    /* ED5B8 8018CB78 318D0001 */  andi       $t5, $t4, 0x1
    /* ED5BC 8018CB7C 15A00008 */  bnez       $t5, .L8018CBA0_ovl3
    /* ED5C0 8018CB80 00000000 */   nop
    /* ED5C4 8018CB84 0C048465 */  jal        func_80121194
    /* ED5C8 8018CB88 00000000 */   nop
    /* ED5CC 8018CB8C 10400004 */  beqz       $v0, .L8018CBA0_ovl3
    /* ED5D0 8018CB90 00000000 */   nop
    /* ED5D4 8018CB94 8E0E0034 */  lw         $t6, 0x34($s0)
    /* ED5D8 8018CB98 35CF0001 */  ori        $t7, $t6, 0x1
    /* ED5DC 8018CB9C AE0F0034 */  sw         $t7, 0x34($s0)
  .L8018CBA0_ovl3:
    /* ED5E0 8018CBA0 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* ED5E4 8018CBA4 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* ED5E8 8018CBA8 3C19800F */  lui        $t9, %hi(D_800E98E0)
    /* ED5EC 8018CBAC 3C09800F */  lui        $t1, %hi(D_800E9AA0)
    /* ED5F0 8018CBB0 8F030000 */  lw         $v1, 0x0($t8)
    /* ED5F4 8018CBB4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* ED5F8 8018CBB8 3C058017 */  lui        $a1, %hi(func_8016C510_ovl3)
    /* ED5FC 8018CBBC 00031880 */  sll        $v1, $v1, 2
    /* ED600 8018CBC0 0323C821 */  addu       $t9, $t9, $v1
    /* ED604 8018CBC4 01234821 */  addu       $t1, $t1, $v1
    /* ED608 8018CBC8 8D299AA0 */  lw         $t1, %lo(D_800E9AA0)($t1)
    /* ED60C 8018CBCC 8F3998E0 */  lw         $t9, %lo(D_800E98E0)($t9)
    /* ED610 8018CBD0 00832021 */  addu       $a0, $a0, $v1
    /* ED614 8018CBD4 24A5C510 */  addiu      $a1, $a1, %lo(func_8016C510_ovl3)
    /* ED618 8018CBD8 5329000F */  beql       $t9, $t1, .L8018CC18_ovl3
    /* ED61C 8018CBDC 8E0B003C */   lw        $t3, 0x3C($s0)
    /* ED620 8018CBE0 0C02C7B2 */  jal        assign_new_process_entry
    /* ED624 8018CBE4 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* ED628 8018CBE8 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* ED62C 8018CBEC 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* ED630 8018CBF0 3C08800F */  lui        $t0, %hi(D_800E98E0)
    /* ED634 8018CBF4 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* ED638 8018CBF8 8D430000 */  lw         $v1, 0x0($t2)
    /* ED63C 8018CBFC 00031880 */  sll        $v1, $v1, 2
    /* ED640 8018CC00 01034021 */  addu       $t0, $t0, $v1
    /* ED644 8018CC04 8D0898E0 */  lw         $t0, %lo(D_800E98E0)($t0)
    /* ED648 8018CC08 00230821 */  addu       $at, $at, $v1
    /* ED64C 8018CC0C 1000000C */  b          .L8018CC40_ovl3
    /* ED650 8018CC10 AC289AA0 */   sw        $t0, %lo(D_800E9AA0)($at)
    /* ED654 8018CC14 8E0B003C */  lw         $t3, 0x3C($s0)
  .L8018CC18_ovl3:
    /* ED658 8018CC18 8E0C0044 */  lw         $t4, 0x44($s0)
    /* ED65C 8018CC1C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* ED660 8018CC20 00832021 */  addu       $a0, $a0, $v1
    /* ED664 8018CC24 116C0006 */  beq        $t3, $t4, .L8018CC40_ovl3
    /* ED668 8018CC28 3C058017 */   lui       $a1, %hi(func_8016C510_ovl3)
    /* ED66C 8018CC2C 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
    /* ED670 8018CC30 0C02C7B2 */  jal        assign_new_process_entry
    /* ED674 8018CC34 24A5C510 */   addiu     $a1, $a1, %lo(func_8016C510_ovl3)
    /* ED678 8018CC38 8E0D0044 */  lw         $t5, 0x44($s0)
    /* ED67C 8018CC3C AE0D003C */  sw         $t5, 0x3C($s0)
  .L8018CC40_ovl3:
    /* ED680 8018CC40 8FBF0024 */  lw         $ra, 0x24($sp)
  .L8018CC44_ovl3:
    /* ED684 8018CC44 8FB00020 */  lw         $s0, 0x20($sp)
    /* ED688 8018CC48 27BD0068 */  addiu      $sp, $sp, 0x68
    /* ED68C 8018CC4C 03E00008 */  jr         $ra
    /* ED690 8018CC50 00000000 */   nop
endlabel func_8018B228_ovl3
.size func_8018B228_ovl3, . - func_8018B228_ovl3
