glabel func_8015F950_ovl3
/* C0390 8015F950 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C0394 8015F954 AFBF001C */  sw         $ra, 0x1C($sp)
/* C0398 8015F958 0C058738 */  jal        func_80161CE0_ovl3
/* C039C 8015F95C AFB00018 */   sw        $s0, 0x18($sp)
/* C03A0 8015F960 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* C03A4 8015F964 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
.L8015F968_ovl5:
/* C03A8 8015F968 3C19800F */  lui        $t9, %hi(D_800EC2E0)
/* C03AC 8015F96C 3C098019 */  lui        $t1, %hi(D_801967CC_ovl3)
/* C03B0 8015F970 8DCF0000 */  lw         $t7, 0x0($t6)
/* C03B4 8015F974 252967CC */  addiu      $t1, $t1, %lo(D_801967CC_ovl3)
.L8015F978_ovl5:
/* C03B8 8015F978 00002025 */  or         $a0, $zero, $zero
/* C03BC 8015F97C 000FC080 */  sll        $t8, $t7, 2
/* C03C0 8015F980 0338C821 */  addu       $t9, $t9, $t8
/* C03C4 8015F984 8F39C2E0 */  lw         $t9, %lo(D_800EC2E0)($t9)
/* C03C8 8015F988 001940C0 */  sll        $t0, $t9, 3
/* C03CC 8015F98C 01091021 */  addu       $v0, $t0, $t1
/* C03D0 8015F990 8C450000 */  lw         $a1, 0x0($v0)
.L8015F994_ovl5:
/* C03D4 8015F994 0C0587B0 */  jal        func_80161EC0_ovl3
/* C03D8 8015F998 8C460004 */   lw        $a2, 0x4($v0)
/* C03DC 8015F99C 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* C03E0 8015F9A0 8E10A7C4 */  lw         $s0, %lo(D_8004A7C4)($s0)
/* C03E4 8015F9A4 3C01800E */  lui        $at, %hi(D_800E0650)
/* C03E8 8015F9A8 240A0001 */  addiu      $t2, $zero, 0x1
/* C03EC 8015F9AC 8E0B0000 */  lw         $t3, 0x0($s0)
.L8015F9B0_ovl5:
/* C03F0 8015F9B0 3C0D800B */  lui        $t5, %hi(func_800B4954)
/* C03F4 8015F9B4 25AD4954 */  addiu      $t5, $t5, %lo(func_800B4954)
/* C03F8 8015F9B8 000B6080 */  sll        $t4, $t3, 2
.L8015F9BC_ovl5:
/* C03FC 8015F9BC 002C0821 */  addu       $at, $at, $t4
/* C0400 8015F9C0 AC2A0650 */  sw         $t2, %lo(D_800E0650)($at)
/* C0404 8015F9C4 8E0E0000 */  lw         $t6, 0x0($s0)
/* C0408 8015F9C8 3C01800E */  lui        $at, %hi(D_800DEF90)
/* C040C 8015F9CC 3C188016 */  lui        $t8, %hi(func_8015FD58_ovl3)
/* C0410 8015F9D0 000E7880 */  sll        $t7, $t6, 2
/* C0414 8015F9D4 002F0821 */  addu       $at, $at, $t7
/* C0418 8015F9D8 AC2DEF90 */  sw         $t5, %lo(D_800DEF90)($at)
/* C041C 8015F9DC 8E190000 */  lw         $t9, 0x0($s0)
/* C0420 8015F9E0 3C01800E */  lui        $at, %hi(D_800DF150)
/* C0424 8015F9E4 2718FD58 */  addiu      $t8, $t8, %lo(func_8015FD58_ovl3)
/* C0428 8015F9E8 00194080 */  sll        $t0, $t9, 2
/* C042C 8015F9EC 00280821 */  addu       $at, $at, $t0
/* C0430 8015F9F0 AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
/* C0434 8015F9F4 8E090000 */  lw         $t1, 0x0($s0)
/* C0438 8015F9F8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* C043C 8015F9FC 44812000 */  mtc1       $at, $f4
/* C0440 8015FA00 3C01800E */  lui        $at, %hi(D_800E6A10)
/* C0444 8015FA04 00095880 */  sll        $t3, $t1, 2
/* C0448 8015FA08 002B0821 */  addu       $at, $at, $t3
/* C044C 8015FA0C E4246A10 */  swc1       $f4, %lo(D_800E6A10)($at)
/* C0450 8015FA10 8E0C0000 */  lw         $t4, 0x0($s0)
/* C0454 8015FA14 3C01800E */  lui        $at, %hi(D_800E0490)
/* C0458 8015FA18 3C0A8019 */  lui        $t2, %hi(D_80192E80_ovl3)
/* C045C 8015FA1C 000C7080 */  sll        $t6, $t4, 2
/* C0460 8015FA20 002E0821 */  addu       $at, $at, $t6
/* C0464 8015FA24 254A2E80 */  addiu      $t2, $t2, %lo(D_80192E80_ovl3)
/* C0468 8015FA28 AC2A0490 */  sw         $t2, %lo(D_800E0490)($at)
/* C046C 8015FA2C 8E020000 */  lw         $v0, 0x0($s0)
/* C0470 8015FA30 3C08801A */  lui        $t0, %hi(D_801982F8_ovl3)
/* C0474 8015FA34 3C198019 */  lui        $t9, %hi(D_80197F60_ovl3)
/* C0478 8015FA38 2443FFFC */  addiu      $v1, $v0, -0x4
/* C047C 8015FA3C 00037880 */  sll        $t7, $v1, 2
/* C0480 8015FA40 01E37823 */  subu       $t7, $t7, $v1
/* C0484 8015FA44 000F78C0 */  sll        $t7, $t7, 3
/* C0488 8015FA48 01E37823 */  subu       $t7, $t7, $v1
.L8015FA4C_ovl5:
/* C048C 8015FA4C 3C04800E */  lui        $a0, %hi(D_800E0D50)
/* C0490 8015FA50 00026880 */  sll        $t5, $v0, 2
/* C0494 8015FA54 008D2021 */  addu       $a0, $a0, $t5
/* C0498 8015FA58 000F7880 */  sll        $t7, $t7, 2
.L8015FA5C_ovl5:
/* C049C 8015FA5C 0003C140 */  sll        $t8, $v1, 5
/* C04A0 8015FA60 27397F60 */  addiu      $t9, $t9, %lo(D_80197F60_ovl3)
/* C04A4 8015FA64 250882F8 */  addiu      $t0, $t0, %lo(D_801982F8_ovl3)
/* C04A8 8015FA68 03083021 */  addu       $a2, $t8, $t0
/* C04AC 8015FA6C 01F92821 */  addu       $a1, $t7, $t9
/* C04B0 8015FA70 0C055192 */  jal        func_80154648_ovl3
/* C04B4 8015FA74 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
.L8015FA78_ovl5:
/* C04B8 8015FA78 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* C04BC 8015FA7C 8E10A7C4 */  lw         $s0, %lo(D_8004A7C4)($s0)
/* C04C0 8015FA80 3C018019 */  lui        $at, %hi(D_801970B4_ovl3)
/* C04C4 8015FA84 C42070B4 */  lwc1       $f0, %lo(D_801970B4_ovl3)($at)
/* C04C8 8015FA88 8E090000 */  lw         $t1, 0x0($s0)
/* C04CC 8015FA8C 3C01800F */  lui        $at, %hi(D_800E83E0)
.L8015FA90_ovl5:
/* C04D0 8015FA90 3C040002 */  lui        $a0, (0x2003D >> 16)
/* C04D4 8015FA94 00095880 */  sll        $t3, $t1, 2
/* C04D8 8015FA98 002B0821 */  addu       $at, $at, $t3
/* C04DC 8015FA9C AC2083E0 */  sw         $zero, %lo(D_800E83E0)($at)
.L8015FAA0_ovl5:
/* C04E0 8015FAA0 8E0C0000 */  lw         $t4, 0x0($s0)
/* C04E4 8015FAA4 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* C04E8 8015FAA8 3484003D */  ori        $a0, $a0, (0x2003D & 0xFFFF)
/* C04EC 8015FAAC 000C5080 */  sll        $t2, $t4, 2
/* C04F0 8015FAB0 002A0821 */  addu       $at, $at, $t2
/* C04F4 8015FAB4 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* C04F8 8015FAB8 8E0E0000 */  lw         $t6, 0x0($s0)
/* C04FC 8015FABC 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* C0500 8015FAC0 24050021 */  addiu      $a1, $zero, 0x21
/* C0504 8015FAC4 000E6880 */  sll        $t5, $t6, 2
/* C0508 8015FAC8 002D0821 */  addu       $at, $at, $t5
/* C050C 8015FACC E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* C0510 8015FAD0 8E0F0000 */  lw         $t7, 0x0($s0)
/* C0514 8015FAD4 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* C0518 8015FAD8 24060010 */  addiu      $a2, $zero, 0x10
/* C051C 8015FADC 000FC880 */  sll        $t9, $t7, 2
/* C0520 8015FAE0 00390821 */  addu       $at, $at, $t9
/* C0524 8015FAE4 0C02A619 */  jal        func_800A9864
/* C0528 8015FAE8 E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* C052C 8015FAEC 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* C0530 8015FAF0 8E10A7C4 */  lw         $s0, %lo(D_8004A7C4)($s0)
.L8015FAF4_ovl5:
/* C0534 8015FAF4 3C01800F */  lui        $at, %hi(D_800E9720)
/* C0538 8015FAF8 2418001E */  addiu      $t8, $zero, 0x1E
/* C053C 8015FAFC 8E080000 */  lw         $t0, 0x0($s0)
/* C0540 8015FB00 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
/* C0544 8015FB04 00084880 */  sll        $t1, $t0, 2
/* C0548 8015FB08 00290821 */  addu       $at, $at, $t1
/* C054C 8015FB0C AC389720 */  sw         $t8, %lo(D_800E9720)($at)
/* C0550 8015FB10 8E0B0000 */  lw         $t3, 0x0($s0)
.L8015FB14_ovl5:
/* C0554 8015FB14 3C01800F */  lui        $at, %hi(D_800E9560)
/* C0558 8015FB18 000B6080 */  sll        $t4, $t3, 2
/* C055C 8015FB1C 002C0821 */  addu       $at, $at, $t4
/* C0560 8015FB20 AC209560 */  sw         $zero, %lo(D_800E9560)($at)
/* C0564 8015FB24 8E0A0000 */  lw         $t2, 0x0($s0)
/* C0568 8015FB28 3C0140F0 */  lui        $at, (0x40F00000 >> 16)
/* C056C 8015FB2C 000A7080 */  sll        $t6, $t2, 2
.L8015FB30_ovl5:
/* C0570 8015FB30 01AE6821 */  addu       $t5, $t5, $t6
/* C0574 8015FB34 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
/* C0578 8015FB38 31AF0004 */  andi       $t7, $t5, 0x4
/* C057C 8015FB3C 55E00007 */  bnel       $t7, $zero, .L8015FB5C_ovl3
/* C0580 8015FB40 44814000 */   mtc1      $at, $f8
/* C0584 8015FB44 3C014170 */  lui        $at, (0x41700000 >> 16)
/* C0588 8015FB48 44813000 */  mtc1       $at, $f6
/* C058C 8015FB4C 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
.L8015FB50_ovl5:
/* C0590 8015FB50 10000004 */  b          .L8015FB64_ovl3
/* C0594 8015FB54 E4267238 */   swc1      $f6, %lo(D_800D71E8 + 0x50)($at)
/* C0598 8015FB58 44814000 */  mtc1       $at, $f8
.L8015FB5C_ovl3:
/* C059C 8015FB5C 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
/* C05A0 8015FB60 E4287238 */  swc1       $f8, %lo(D_800D71E8 + 0x50)($at)
.L8015FB64_ovl3:
/* C05A4 8015FB64 8E190000 */  lw         $t9, 0x0($s0)
.L8015FB68_ovl5:
/* C05A8 8015FB68 3C01800F */  lui        $at, %hi(D_800EC660)
.L8015FB6C_ovl5:
/* C05AC 8015FB6C 00194080 */  sll        $t0, $t9, 2
/* C05B0 8015FB70 00280821 */  addu       $at, $at, $t0
/* C05B4 8015FB74 0C00D604 */  jal        cosf
glabel func_8015FB78_ovl5
/* C05B8 8015FB78 C42CC660 */   lwc1      $f12, %lo(D_800EC660)($at)
/* C05BC 8015FB7C 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
/* C05C0 8015FB80 C4227238 */  lwc1       $f2, %lo(D_800D71E8 + 0x50)($at)
/* C05C4 8015FB84 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* C05C8 8015FB88 8E10A7C4 */  lw         $s0, %lo(D_8004A7C4)($s0)
/* C05CC 8015FB8C 46020282 */  mul.s      $f10, $f0, $f2
/* C05D0 8015FB90 3C01800E */  lui        $at, %hi(D_800E64D0)
/* C05D4 8015FB94 8E180000 */  lw         $t8, 0x0($s0)
/* C05D8 8015FB98 44809000 */  mtc1       $zero, $f18
/* C05DC 8015FB9C 44808000 */  mtc1       $zero, $f16
/* C05E0 8015FBA0 00184880 */  sll        $t1, $t8, 2
/* C05E4 8015FBA4 00290821 */  addu       $at, $at, $t1
/* C05E8 8015FBA8 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* C05EC 8015FBAC 8E0B0000 */  lw         $t3, 0x0($s0)
/* C05F0 8015FBB0 4612103C */  c.lt.s     $f2, $f18
/* C05F4 8015FBB4 3C01800E */  lui        $at, %hi(D_800E6690)
/* C05F8 8015FBB8 000B6080 */  sll        $t4, $t3, 2
/* C05FC 8015FBBC 002C0821 */  addu       $at, $at, $t4
.L8015FBC0_ovl5:
/* C0600 8015FBC0 45000008 */  bc1f       .L8015FBE4_ovl3
/* C0604 8015FBC4 E4306690 */   swc1      $f16, %lo(D_800E6690)($at)
/* C0608 8015FBC8 8E0A0000 */  lw         $t2, 0x0($s0)
/* C060C 8015FBCC 3C01800E */  lui        $at, %hi(D_800E6850)
/* C0610 8015FBD0 46001107 */  neg.s      $f4, $f2
/* C0614 8015FBD4 000A7080 */  sll        $t6, $t2, 2
/* C0618 8015FBD8 002E0821 */  addu       $at, $at, $t6
/* C061C 8015FBDC 10000006 */  b          .L8015FBF8_ovl3
/* C0620 8015FBE0 E4246850 */   swc1      $f4, %lo(D_800E6850)($at)
.L8015FBE4_ovl3:
/* C0624 8015FBE4 8E0D0000 */  lw         $t5, 0x0($s0)
.L8015FBE8_ovl5:
/* C0628 8015FBE8 3C01800E */  lui        $at, %hi(D_800E6850)
.L8015FBEC_ovl5:
/* C062C 8015FBEC 000D7880 */  sll        $t7, $t5, 2
/* C0630 8015FBF0 002F0821 */  addu       $at, $at, $t7
/* C0634 8015FBF4 E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
.L8015FBF8_ovl3:
/* C0638 8015FBF8 8E190000 */  lw         $t9, 0x0($s0)
/* C063C 8015FBFC 3C01800F */  lui        $at, %hi(D_800EC660)
/* C0640 8015FC00 00194080 */  sll        $t0, $t9, 2
/* C0644 8015FC04 00280821 */  addu       $at, $at, $t0
/* C0648 8015FC08 0C00B5B8 */  jal        sinf
/* C064C 8015FC0C C42CC660 */   lwc1      $f12, %lo(D_800EC660)($at)
/* C0650 8015FC10 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
/* C0654 8015FC14 C4227238 */  lwc1       $f2, %lo(D_800D71E8 + 0x50)($at)
/* C0658 8015FC18 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* C065C 8015FC1C 8E10A7C4 */  lw         $s0, %lo(D_8004A7C4)($s0)
/* C0660 8015FC20 46020182 */  mul.s      $f6, $f0, $f2
/* C0664 8015FC24 3C01800E */  lui        $at, %hi(D_800E3210)
/* C0668 8015FC28 8E180000 */  lw         $t8, 0x0($s0)
/* C066C 8015FC2C 44805000 */  mtc1       $zero, $f10
/* C0670 8015FC30 44804000 */  mtc1       $zero, $f8
/* C0674 8015FC34 00184880 */  sll        $t1, $t8, 2
/* C0678 8015FC38 00290821 */  addu       $at, $at, $t1
/* C067C 8015FC3C E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* C0680 8015FC40 8E0B0000 */  lw         $t3, 0x0($s0)
/* C0684 8015FC44 460A103C */  c.lt.s     $f2, $f10
/* C0688 8015FC48 3C01800E */  lui        $at, %hi(D_800E3750)
/* C068C 8015FC4C 000B6080 */  sll        $t4, $t3, 2
/* C0690 8015FC50 002C0821 */  addu       $at, $at, $t4
/* C0694 8015FC54 45000008 */  bc1f       .L8015FC78_ovl5
/* C0698 8015FC58 E4283750 */   swc1      $f8, %lo(D_800E3750)($at)
/* C069C 8015FC5C 8E0A0000 */  lw         $t2, 0x0($s0)
/* C06A0 8015FC60 3C01800E */  lui        $at, %hi(D_800E3C90)
/* C06A4 8015FC64 46001407 */  neg.s      $f16, $f2
/* C06A8 8015FC68 000A7080 */  sll        $t6, $t2, 2
/* C06AC 8015FC6C 002E0821 */  addu       $at, $at, $t6
/* C06B0 8015FC70 10000006 */  b          .L8015FC8C_ovl3
.L8015FC74_ovl5:
/* C06B4 8015FC74 E4303C90 */   swc1      $f16, %lo(D_800E3C90)($at)
.L8015FC78_ovl5:
/* C06B8 8015FC78 8E0D0000 */  lw         $t5, 0x0($s0)
/* C06BC 8015FC7C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* C06C0 8015FC80 000D7880 */  sll        $t7, $t5, 2
/* C06C4 8015FC84 002F0821 */  addu       $at, $at, $t7
/* C06C8 8015FC88 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
.L8015FC8C_ovl3:
/* C06CC 8015FC8C 8E020000 */  lw         $v0, 0x0($s0)
/* C06D0 8015FC90 3C19800F */  lui        $t9, %hi(D_800EC2E0)
/* C06D4 8015FC94 3C04801A */  lui        $a0, %hi(D_80198830_ovl3)
/* C06D8 8015FC98 00021080 */  sll        $v0, $v0, 2
/* C06DC 8015FC9C 0322C821 */  addu       $t9, $t9, $v0
/* C06E0 8015FCA0 8F39C2E0 */  lw         $t9, %lo(D_800EC2E0)($t9)
/* C06E4 8015FCA4 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* C06E8 8015FCA8 00220821 */  addu       $at, $at, $v0
/* C06EC 8015FCAC 17200006 */  bnez       $t9, .L8015FCC8_ovl3
.L8015FCB0_ovl5:
/* C06F0 8015FCB0 24848830 */   addiu     $a0, $a0, %lo(D_80198830_ovl3)
/* C06F4 8015FCB4 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* C06F8 8015FCB8 00220821 */  addu       $at, $at, $v0
/* C06FC 8015FCBC 24080002 */  addiu      $t0, $zero, 0x2
/* C0700 8015FCC0 10000002 */  b          .L8015FCCC_ovl3
/* C0704 8015FCC4 AC289AA0 */   sw        $t0, %lo(D_800E9AA0)($at)
.L8015FCC8_ovl3:
/* C0708 8015FCC8 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
.L8015FCCC_ovl3:
/* C070C 8015FCCC 8C82000C */  lw         $v0, 0xC($a0)
/* C0710 8015FCD0 3C05801A */  lui        $a1, %hi(D_80198538_ovl3)
/* C0714 8015FCD4 24A58538 */  addiu      $a1, $a1, %lo(D_80198538_ovl3)
/* C0718 8015FCD8 2C430001 */  sltiu      $v1, $v0, 0x1
/* C071C 8015FCDC 24580001 */  addiu      $t8, $v0, 0x1
.L8015FCE0_ovl5:
/* C0720 8015FCE0 10600007 */  beqz       $v1, .L8015FD00_ovl3
.L8015FCE4_ovl5:
/* C0724 8015FCE4 AC98000C */   sw        $t8, 0xC($a0)
/* C0728 8015FCE8 3C06801A */  lui        $a2, %hi(D_8019853C_ovl3)
/* C072C 8015FCEC 24C6853C */  addiu      $a2, $a2, %lo(D_8019853C_ovl3)
/* C0730 8015FCF0 0C029DFA */  jal        func_800A77E8
/* C0734 8015FCF4 2404001E */   addiu     $a0, $zero, 0x1E
/* C0738 8015FCF8 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* C073C 8015FCFC 8E10A7C4 */  lw         $s0, %lo(D_8004A7C4)($s0)
.L8015FD00_ovl3:
/* C0740 8015FD00 8E090000 */  lw         $t1, 0x0($s0)
/* C0744 8015FD04 3C01800F */  lui        $at, %hi(D_800EA360)
/* C0748 8015FD08 27A20030 */  addiu      $v0, $sp, 0x30
/* C074C 8015FD0C 00095880 */  sll        $t3, $t1, 2
/* C0750 8015FD10 002B0821 */  addu       $at, $at, $t3
/* C0754 8015FD14 3C0C801A */  lui        $t4, %hi(D_80198538_ovl3)
.L8015FD18_ovl5:
/* C0758 8015FD18 AC22A360 */  sw         $v0, %lo(D_800EA360)($at)
/* C075C 8015FD1C 258C8538 */  addiu      $t4, $t4, %lo(D_80198538_ovl3)
/* C0760 8015FD20 8D8E0000 */  lw         $t6, 0x0($t4)
/* C0764 8015FD24 3C040002 */  lui        $a0, (0x20285 >> 16)
/* C0768 8015FD28 34840285 */  ori        $a0, $a0, (0x20285 & 0xFFFF)
/* C076C 8015FD2C AC4E0000 */  sw         $t6, 0x0($v0)
/* C0770 8015FD30 8D8A0004 */  lw         $t2, 0x4($t4)
/* C0774 8015FD34 0C02A806 */  jal        func_800AA018
/* C0778 8015FD38 AC4A0004 */   sw        $t2, 0x4($v0)
/* C077C 8015FD3C 0C02BE85 */  jal        func_800AFA14
/* C0780 8015FD40 00000000 */   nop
/* C0784 8015FD44 8FBF001C */  lw         $ra, 0x1C($sp)
.L8015FD48_ovl5:
/* C0788 8015FD48 8FB00018 */  lw         $s0, 0x18($sp)
.L8015FD4C_ovl5:
/* C078C 8015FD4C 27BD0038 */  addiu      $sp, $sp, 0x38
/* C0790 8015FD50 03E00008 */  jr         $ra
/* C0794 8015FD54 00000000 */   nop
