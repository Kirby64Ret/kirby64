glabel func_8015C7F4_ovl3
/* BD234 8015C7F4 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* BD238 8015C7F8 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* BD23C 8015C7FC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BD240 8015C800 AFBF0014 */  sw         $ra, 0x14($sp)
glabel func_8015C804_ovl5
/* BD244 8015C804 8DC70000 */  lw         $a3, 0x0($t6)
/* BD248 8015C808 3C0F800F */  lui        $t7, %hi(D_800EC2E0)
/* BD24C 8015C80C 3C01800F */  lui        $at, %hi(D_800EA520)
/* BD250 8015C810 00073880 */  sll        $a3, $a3, 2
/* BD254 8015C814 01E77821 */  addu       $t7, $t7, $a3
/* BD258 8015C818 8DEFC2E0 */  lw         $t7, %lo(D_800EC2E0)($t7)
/* BD25C 8015C81C 00270821 */  addu       $at, $at, $a3
/* BD260 8015C820 AC20A520 */  sw         $zero, %lo(D_800EA520)($at)
/* BD264 8015C824 0C058738 */  jal        func_80161CE0_ovl3
/* BD268 8015C828 AFAF0028 */   sw        $t7, 0x28($sp)
/* BD26C 8015C82C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* BD270 8015C830 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
.L8015C834_ovl5:
/* BD274 8015C834 44800000 */  mtc1       $zero, $f0
/* BD278 8015C838 3C04800E */  lui        $a0, %hi(D_800E1B50 + 0x1C0)
/* BD27C 8015C83C 8F190000 */  lw         $t9, 0x0($t8)
/* BD280 8015C840 44050000 */  mfc1       $a1, $f0
/* BD284 8015C844 44060000 */  mfc1       $a2, $f0
/* BD288 8015C848 00196080 */  sll        $t4, $t9, 2
/* BD28C 8015C84C 008C2021 */  addu       $a0, $a0, $t4
/* BD290 8015C850 0C0587B0 */  jal        func_80161EC0_ovl3
/* BD294 8015C854 8C841D10 */   lw        $a0, %lo(D_800E1B50 + 0x1C0)($a0)
/* BD298 8015C858 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BD29C 8015C85C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BD2A0 8015C860 3C0B800E */  lui        $t3, %hi(D_800E0D50)
/* BD2A4 8015C864 256B0D50 */  addiu      $t3, $t3, %lo(D_800E0D50)
/* BD2A8 8015C868 8C670000 */  lw         $a3, 0x0($v1)
.L8015C86C_ovl5:
/* BD2AC 8015C86C 3C0A800E */  lui        $t2, %hi(D_800E17D0)
/* BD2B0 8015C870 254A17D0 */  addiu      $t2, $t2, %lo(D_800E17D0)
/* BD2B4 8015C874 00073880 */  sll        $a3, $a3, 2
/* BD2B8 8015C878 01676821 */  addu       $t5, $t3, $a3
/* BD2BC 8015C87C 8DAE0000 */  lw         $t6, 0x0($t5)
/* BD2C0 8015C880 0147C821 */  addu       $t9, $t2, $a3
glabel func_8015C884_ovl5
/* BD2C4 8015C884 3C0C800B */  lui        $t4, %hi(func_800B4954)
/* BD2C8 8015C888 000E7880 */  sll        $t7, $t6, 2
/* BD2CC 8015C88C 014FC021 */  addu       $t8, $t2, $t7
/* BD2D0 8015C890 C7040000 */  lwc1       $f4, 0x0($t8)
/* BD2D4 8015C894 3C01800E */  lui        $at, %hi(D_800DEF90)
/* BD2D8 8015C898 258C4954 */  addiu      $t4, $t4, %lo(func_800B4954)
/* BD2DC 8015C89C E7240000 */  swc1       $f4, 0x0($t9)
.L8015C8A0_ovl5:
/* BD2E0 8015C8A0 8C6D0000 */  lw         $t5, 0x0($v1)
/* BD2E4 8015C8A4 3C0F8016 */  lui        $t7, %hi(func_8015CC84_ovl3)
/* BD2E8 8015C8A8 25EFCC84 */  addiu      $t7, $t7, %lo(func_8015CC84_ovl3)
/* BD2EC 8015C8AC 000D7080 */  sll        $t6, $t5, 2
/* BD2F0 8015C8B0 002E0821 */  addu       $at, $at, $t6
/* BD2F4 8015C8B4 AC2CEF90 */  sw         $t4, %lo(D_800DEF90)($at)
/* BD2F8 8015C8B8 8C780000 */  lw         $t8, 0x0($v1)
/* BD2FC 8015C8BC 3C01800E */  lui        $at, %hi(D_800DF150)
/* BD300 8015C8C0 3C0D8019 */  lui        $t5, %hi(D_80192C3C_ovl3)
/* BD304 8015C8C4 0018C880 */  sll        $t9, $t8, 2
/* BD308 8015C8C8 00390821 */  addu       $at, $at, $t9
/* BD30C 8015C8CC AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
.L8015C8D0_ovl5:
/* BD310 8015C8D0 8C6C0000 */  lw         $t4, 0x0($v1)
/* BD314 8015C8D4 3C01800E */  lui        $at, %hi(D_800E0490)
/* BD318 8015C8D8 25AD2C3C */  addiu      $t5, $t5, %lo(D_80192C3C_ovl3)
/* BD31C 8015C8DC 000C7080 */  sll        $t6, $t4, 2
/* BD320 8015C8E0 002E0821 */  addu       $at, $at, $t6
/* BD324 8015C8E4 AC2D0490 */  sw         $t5, %lo(D_800E0490)($at)
/* BD328 8015C8E8 8C680000 */  lw         $t0, 0x0($v1)
/* BD32C 8015C8EC 3C0E801A */  lui        $t6, %hi(D_801982F8_ovl3)
/* BD330 8015C8F0 3C0C8019 */  lui        $t4, %hi(D_80197F60_ovl3)
/* BD334 8015C8F4 2509FFFC */  addiu      $t1, $t0, -0x4
/* BD338 8015C8F8 0009C880 */  sll        $t9, $t1, 2
/* BD33C 8015C8FC 0329C823 */  subu       $t9, $t9, $t1
/* BD340 8015C900 0019C8C0 */  sll        $t9, $t9, 3
/* BD344 8015C904 0329C823 */  subu       $t9, $t9, $t1
/* BD348 8015C908 0008C080 */  sll        $t8, $t0, 2
/* BD34C 8015C90C 01787821 */  addu       $t7, $t3, $t8
/* BD350 8015C910 0019C880 */  sll        $t9, $t9, 2
/* BD354 8015C914 00096940 */  sll        $t5, $t1, 5
/* BD358 8015C918 258C7F60 */  addiu      $t4, $t4, %lo(D_80197F60_ovl3)
/* BD35C 8015C91C 25CE82F8 */  addiu      $t6, $t6, %lo(D_801982F8_ovl3)
/* BD360 8015C920 01AE3021 */  addu       $a2, $t5, $t6
/* BD364 8015C924 032C2821 */  addu       $a1, $t9, $t4
/* BD368 8015C928 0C055192 */  jal        func_80154648_ovl3
/* BD36C 8015C92C 8DE40000 */   lw        $a0, 0x0($t7)
/* BD370 8015C930 0C029D9E */  jal        play_sound
/* BD374 8015C934 240400B4 */   addiu     $a0, $zero, 0xB4
/* BD378 8015C938 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BD37C 8015C93C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BD380 8015C940 3C018019 */  lui        $at, %hi(D_8019706C_ovl3)
/* BD384 8015C944 C420706C */  lwc1       $f0, %lo(D_8019706C_ovl3)($at)
.L8015C948_ovl5:
/* BD388 8015C948 8C780000 */  lw         $t8, 0x0($v1)
/* BD38C 8015C94C 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* BD390 8015C950 3C040002 */  lui        $a0, (0x2002F >> 16)
/* BD394 8015C954 00187880 */  sll        $t7, $t8, 2
/* BD398 8015C958 002F0821 */  addu       $at, $at, $t7
/* BD39C 8015C95C E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* BD3A0 8015C960 8C790000 */  lw         $t9, 0x0($v1)
/* BD3A4 8015C964 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* BD3A8 8015C968 3484002F */  ori        $a0, $a0, (0x2002F & 0xFFFF)
/* BD3AC 8015C96C 00196080 */  sll        $t4, $t9, 2
/* BD3B0 8015C970 002C0821 */  addu       $at, $at, $t4
/* BD3B4 8015C974 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* BD3B8 8015C978 8C6D0000 */  lw         $t5, 0x0($v1)
/* BD3BC 8015C97C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* BD3C0 8015C980 24050021 */  addiu      $a1, $zero, 0x21
/* BD3C4 8015C984 000D7080 */  sll        $t6, $t5, 2
/* BD3C8 8015C988 002E0821 */  addu       $at, $at, $t6
/* BD3CC 8015C98C 24060010 */  addiu      $a2, $zero, 0x10
/* BD3D0 8015C990 0C02A619 */  jal        func_800A9864
/* BD3D4 8015C994 E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* BD3D8 8015C998 0C006291 */  jal        random_soft_s32_range
/* BD3DC 8015C99C 24040008 */   addiu     $a0, $zero, 0x8
/* BD3E0 8015C9A0 8FB80028 */  lw         $t8, 0x28($sp)
/* BD3E4 8015C9A4 3C014100 */  lui        $at, (0x41000000 >> 16)
/* BD3E8 8015C9A8 44810000 */  mtc1       $at, $f0
/* BD3EC 8015C9AC 3C018019 */  lui        $at, %hi(D_80196750_ovl3)
/* BD3F0 8015C9B0 00187880 */  sll        $t7, $t8, 2
glabel func_8015C9B4_ovl5
/* BD3F4 8015C9B4 002F0821 */  addu       $at, $at, $t7
/* BD3F8 8015C9B8 C4286750 */  lwc1       $f8, %lo(D_80196750_ovl3)($at)
/* BD3FC 8015C9BC 44803000 */  mtc1       $zero, $f6
/* BD400 8015C9C0 24010002 */  addiu      $at, $zero, 0x2
/* BD404 8015C9C4 E7A00038 */  swc1       $f0, 0x38($sp)
/* BD408 8015C9C8 E7A80034 */  swc1       $f8, 0x34($sp)
/* BD40C 8015C9CC 10410003 */  beq        $v0, $at, .L8015C9DC_ovl3
/* BD410 8015C9D0 E7A6003C */   swc1      $f6, 0x3C($sp)
/* BD414 8015C9D4 24010007 */  addiu      $at, $zero, 0x7
/* BD418 8015C9D8 14410004 */  bne        $v0, $at, .L8015C9EC_ovl3
.L8015C9DC_ovl3:
/* BD41C 8015C9DC 3C018019 */   lui       $at, %hi(D_80197070_ovl3)
/* BD420 8015C9E0 C42A7070 */  lwc1       $f10, %lo(D_80197070_ovl3)($at)
/* BD424 8015C9E4 460A0402 */  mul.s      $f16, $f0, $f10
/* BD428 8015C9E8 E7B00038 */  swc1       $f16, 0x38($sp)
.L8015C9EC_ovl3:
/* BD42C 8015C9EC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BD430 8015C9F0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BD434 8015C9F4 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* BD438 8015C9F8 44819000 */  mtc1       $at, $f18
/* BD43C 8015C9FC 8C670000 */  lw         $a3, 0x0($v1)
/* BD440 8015CA00 3C01800F */  lui        $at, %hi(D_800EC660)
/* BD444 8015CA04 3C08800F */  lui        $t0, %hi(D_800EA6E0)
/* BD448 8015CA08 00073880 */  sll        $a3, $a3, 2
/* BD44C 8015CA0C 00270821 */  addu       $at, $at, $a3
/* BD450 8015CA10 C424C660 */  lwc1       $f4, %lo(D_800EC660)($at)
/* BD454 8015CA14 C7A60034 */  lwc1       $f6, 0x34($sp)
/* BD458 8015CA18 2508A6E0 */  addiu      $t0, $t0, %lo(D_800EA6E0)
/* BD45C 8015CA1C 46049032 */  c.eq.s     $f18, $f4
/* BD460 8015CA20 3C198013 */  lui        $t9, %hi(D_8012E7E8 + 0x1C)
/* BD464 8015CA24 3C0C800E */  lui        $t4, %hi(D_800E0D50)
/* BD468 8015CA28 3C0E800E */  lui        $t6, %hi(D_800E0D50)
/* BD46C 8015CA2C 45000005 */  bc1f       .L8015CA44_ovl3
/* BD470 8015CA30 00000000 */   nop
/* BD474 8015CA34 46003207 */  neg.s      $f8, $f6
/* BD478 8015CA38 E7A80034 */  swc1       $f8, 0x34($sp)
/* BD47C 8015CA3C 8C670000 */  lw         $a3, 0x0($v1)
/* BD480 8015CA40 00073880 */  sll        $a3, $a3, 2
.L8015CA44_ovl3:
/* BD484 8015CA44 8F39E804 */  lw         $t9, %lo(D_8012E7E8 + 0x1C)($t9)
/* BD488 8015CA48 24010001 */  addiu      $at, $zero, 0x1
/* BD48C 8015CA4C 01876021 */  addu       $t4, $t4, $a3
/* BD490 8015CA50 1721000F */  bne        $t9, $at, .L8015CA90_ovl3
/* BD494 8015CA54 01C77021 */   addu      $t6, $t6, $a3
/* BD498 8015CA58 8D8C0D50 */  lw         $t4, %lo(D_800E0D50)($t4)
/* BD49C 8015CA5C 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* BD4A0 8015CA60 27A40034 */  addiu      $a0, $sp, 0x34
/* BD4A4 8015CA64 000C6880 */  sll        $t5, $t4, 2
/* BD4A8 8015CA68 002D0821 */  addu       $at, $at, $t5
/* BD4AC 8015CA6C C42AA6E0 */  lwc1       $f10, %lo(D_800EA6E0)($at)
/* BD4B0 8015CA70 24050004 */  addiu      $a1, $zero, 0x4
/* BD4B4 8015CA74 46005407 */  neg.s      $f16, $f10
/* BD4B8 8015CA78 44068000 */  mfc1       $a2, $f16
/* BD4BC 8015CA7C 0C006424 */  jal        lbvector_Rotate
/* BD4C0 8015CA80 00000000 */   nop
/* BD4C4 8015CA84 3C08800F */  lui        $t0, %hi(D_800EA6E0)
/* BD4C8 8015CA88 1000000A */  b          .L8015CAB4_ovl3
/* BD4CC 8015CA8C 2508A6E0 */   addiu     $t0, $t0, %lo(D_800EA6E0)
.L8015CA90_ovl3:
/* BD4D0 8015CA90 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
/* BD4D4 8015CA94 27A40034 */  addiu      $a0, $sp, 0x34
/* BD4D8 8015CA98 24050004 */  addiu      $a1, $zero, 0x4
/* BD4DC 8015CA9C 000EC080 */  sll        $t8, $t6, 2
/* BD4E0 8015CAA0 01187821 */  addu       $t7, $t0, $t8
/* BD4E4 8015CAA4 0C006424 */  jal        lbvector_Rotate
/* BD4E8 8015CAA8 8DE60000 */   lw        $a2, 0x0($t7)
/* BD4EC 8015CAAC 3C08800F */  lui        $t0, %hi(D_800EA6E0)
/* BD4F0 8015CAB0 2508A6E0 */  addiu      $t0, $t0, %lo(D_800EA6E0)
.L8015CAB4_ovl3:
/* BD4F4 8015CAB4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* BD4F8 8015CAB8 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* BD4FC 8015CABC 3C19800F */  lui        $t9, %hi(D_800E8AE0)
/* BD500 8015CAC0 3C013F40 */  lui        $at, (0x3F400000 >> 16)
/* BD504 8015CAC4 8C670000 */  lw         $a3, 0x0($v1)
/* BD508 8015CAC8 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* BD50C 8015CACC 24040001 */  addiu      $a0, $zero, 0x1
/* BD510 8015CAD0 00073880 */  sll        $a3, $a3, 2
/* BD514 8015CAD4 0327C821 */  addu       $t9, $t9, $a3
/* BD518 8015CAD8 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
/* BD51C 8015CADC 24050001 */  addiu      $a1, $zero, 0x1
/* BD520 8015CAE0 24060029 */  addiu      $a2, $zero, 0x29
/* BD524 8015CAE4 332C0004 */  andi       $t4, $t9, 0x4
/* BD528 8015CAE8 1180000F */  beqz       $t4, .L8015CB28_ovl3
/* BD52C 8015CAEC 0107C821 */   addu      $t9, $t0, $a3
/* BD530 8015CAF0 44810000 */  mtc1       $at, $f0
/* BD534 8015CAF4 C7B20038 */  lwc1       $f18, 0x38($sp)
/* BD538 8015CAF8 01076821 */  addu       $t5, $t0, $a3
/* BD53C 8015CAFC 3C02800F */  lui        $v0, %hi(D_800EA8A0)
.L8015CB00_ovl5:
/* BD540 8015CB00 46009102 */  mul.s      $f4, $f18, $f0
/* BD544 8015CB04 2442A8A0 */  addiu      $v0, $v0, %lo(D_800EA8A0)
/* BD548 8015CB08 E5A40000 */  swc1       $f4, 0x0($t5)
/* BD54C 8015CB0C C7A60034 */  lwc1       $f6, 0x34($sp)
/* BD550 8015CB10 8C6E0000 */  lw         $t6, 0x0($v1)
/* BD554 8015CB14 46003202 */  mul.s      $f8, $f6, $f0
/* BD558 8015CB18 000EC080 */  sll        $t8, $t6, 2
/* BD55C 8015CB1C 00587821 */  addu       $t7, $v0, $t8
/* BD560 8015CB20 10000009 */  b          .L8015CB48_ovl3
/* BD564 8015CB24 E5E80000 */   swc1      $f8, 0x0($t7)
.L8015CB28_ovl3:
/* BD568 8015CB28 E72A0000 */  swc1       $f10, 0x0($t9)
/* BD56C 8015CB2C 8C6C0000 */  lw         $t4, 0x0($v1)
/* BD570 8015CB30 C7B00034 */  lwc1       $f16, 0x34($sp)
/* BD574 8015CB34 3C02800F */  lui        $v0, %hi(D_800EA8A0)
.L8015CB38_ovl5:
/* BD578 8015CB38 2442A8A0 */  addiu      $v0, $v0, %lo(D_800EA8A0)
.L8015CB3C_ovl5:
/* BD57C 8015CB3C 000C6880 */  sll        $t5, $t4, 2
/* BD580 8015CB40 004D7021 */  addu       $t6, $v0, $t5
/* BD584 8015CB44 E5D00000 */  swc1       $f16, 0x0($t6)
.L8015CB48_ovl3:
/* BD588 8015CB48 8C6F0000 */  lw         $t7, 0x0($v1)
/* BD58C 8015CB4C 3C01800F */  lui        $at, %hi(D_800E9720)
/* BD590 8015CB50 24180014 */  addiu      $t8, $zero, 0x14
/* BD594 8015CB54 000FC880 */  sll        $t9, $t7, 2
/* BD598 8015CB58 00390821 */  addu       $at, $at, $t9
/* BD59C 8015CB5C AC389720 */  sw         $t8, %lo(D_800E9720)($at)
/* BD5A0 8015CB60 8C670000 */  lw         $a3, 0x0($v1)
/* BD5A4 8015CB64 3C01800E */  lui        $at, %hi(D_800E64D0)
/* BD5A8 8015CB68 44802000 */  mtc1       $zero, $f4
/* BD5AC 8015CB6C 00073880 */  sll        $a3, $a3, 2
/* BD5B0 8015CB70 00476021 */  addu       $t4, $v0, $a3
/* BD5B4 8015CB74 C5920000 */  lwc1       $f18, 0x0($t4)
/* BD5B8 8015CB78 00270821 */  addu       $at, $at, $a3
glabel func_8015CB7C_ovl5
/* BD5BC 8015CB7C 44801000 */  mtc1       $zero, $f2
/* BD5C0 8015CB80 E43264D0 */  swc1       $f18, %lo(D_800E64D0)($at)
/* BD5C4 8015CB84 8C6D0000 */  lw         $t5, 0x0($v1)
/* BD5C8 8015CB88 3C01800E */  lui        $at, %hi(D_800E6690)
/* BD5CC 8015CB8C 000D7080 */  sll        $t6, $t5, 2
/* BD5D0 8015CB90 002E0821 */  addu       $at, $at, $t6
/* BD5D4 8015CB94 E4246690 */  swc1       $f4, %lo(D_800E6690)($at)
/* BD5D8 8015CB98 8C670000 */  lw         $a3, 0x0($v1)
/* BD5DC 8015CB9C 3C01800E */  lui        $at, %hi(D_800E6850)
/* BD5E0 8015CBA0 00073880 */  sll        $a3, $a3, 2
/* BD5E4 8015CBA4 00477821 */  addu       $t7, $v0, $a3
/* BD5E8 8015CBA8 C5E00000 */  lwc1       $f0, 0x0($t7)
/* BD5EC 8015CBAC 00270821 */  addu       $at, $at, $a3
/* BD5F0 8015CBB0 4602003C */  c.lt.s     $f0, $f2
/* BD5F4 8015CBB4 00000000 */  nop
/* BD5F8 8015CBB8 45000006 */  bc1f       .L8015CBD4_ovl3
/* BD5FC 8015CBBC 00000000 */   nop
/* BD600 8015CBC0 3C01800E */  lui        $at, %hi(D_800E6850)
/* BD604 8015CBC4 46000187 */  neg.s      $f6, $f0
/* BD608 8015CBC8 00270821 */  addu       $at, $at, $a3
/* BD60C 8015CBCC 10000002 */  b          .L8015CBD8_ovl3
/* BD610 8015CBD0 E4266850 */   swc1      $f6, %lo(D_800E6850)($at)
.L8015CBD4_ovl3:
/* BD614 8015CBD4 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L8015CBD8_ovl3:
/* BD618 8015CBD8 8C670000 */  lw         $a3, 0x0($v1)
/* BD61C 8015CBDC 3C01800E */  lui        $at, %hi(D_800E3210)
/* BD620 8015CBE0 44805000 */  mtc1       $zero, $f10
/* BD624 8015CBE4 00073880 */  sll        $a3, $a3, 2
/* BD628 8015CBE8 0107C021 */  addu       $t8, $t0, $a3
/* BD62C 8015CBEC C7080000 */  lwc1       $f8, 0x0($t8)
/* BD630 8015CBF0 00270821 */  addu       $at, $at, $a3
/* BD634 8015CBF4 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* BD638 8015CBF8 8C790000 */  lw         $t9, 0x0($v1)
/* BD63C 8015CBFC 3C01800E */  lui        $at, %hi(D_800E3750)
/* BD640 8015CC00 00196080 */  sll        $t4, $t9, 2
.L8015CC04_ovl5:
/* BD644 8015CC04 002C0821 */  addu       $at, $at, $t4
/* BD648 8015CC08 E42A3750 */  swc1       $f10, %lo(D_800E3750)($at)
/* BD64C 8015CC0C 8C670000 */  lw         $a3, 0x0($v1)
/* BD650 8015CC10 3C01800E */  lui        $at, %hi(D_800E3C90)
/* BD654 8015CC14 00073880 */  sll        $a3, $a3, 2
/* BD658 8015CC18 01076821 */  addu       $t5, $t0, $a3
.L8015CC1C_ovl5:
/* BD65C 8015CC1C C5A00000 */  lwc1       $f0, 0x0($t5)
/* BD660 8015CC20 00270821 */  addu       $at, $at, $a3
/* BD664 8015CC24 4602003C */  c.lt.s     $f0, $f2
/* BD668 8015CC28 00000000 */  nop
/* BD66C 8015CC2C 45000006 */  bc1f       .L8015CC48_ovl3
.L8015CC30_ovl5:
/* BD670 8015CC30 00000000 */   nop
/* BD674 8015CC34 3C01800E */  lui        $at, %hi(D_800E3C90)
/* BD678 8015CC38 46000407 */  neg.s      $f16, $f0
/* BD67C 8015CC3C 00270821 */  addu       $at, $at, $a3
.L8015CC40_ovl5:
/* BD680 8015CC40 10000002 */  b          .L8015CC4C_ovl3
.L8015CC44_ovl5:
/* BD684 8015CC44 E4303C90 */   swc1      $f16, %lo(D_800E3C90)($at)
.L8015CC48_ovl3:
/* BD688 8015CC48 E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
.L8015CC4C_ovl3:
/* BD68C 8015CC4C 0C02A040 */  jal        func_800A8100
/* BD690 8015CC50 00003825 */   or        $a3, $zero, $zero
/* BD694 8015CC54 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
.L8015CC58_ovl5:
/* BD698 8015CC58 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* BD69C 8015CC5C 3C01800F */  lui        $at, %hi(D_800EA520)
/* BD6A0 8015CC60 8DCF0000 */  lw         $t7, 0x0($t6)
/* BD6A4 8015CC64 000FC080 */  sll        $t8, $t7, 2
/* BD6A8 8015CC68 00380821 */  addu       $at, $at, $t8
/* BD6AC 8015CC6C 0C02BE85 */  jal        func_800AFA14
/* BD6B0 8015CC70 AC22A520 */   sw        $v0, %lo(D_800EA520)($at)
/* BD6B4 8015CC74 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD6B8 8015CC78 27BD0040 */  addiu      $sp, $sp, 0x40
/* BD6BC 8015CC7C 03E00008 */  jr         $ra
/* BD6C0 8015CC80 00000000 */   nop
