glabel func_8022E224_ovl19
/* 24E934 8022E224 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 24E938 8022E228 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 24E93C 8022E22C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 24E940 8022E230 AFBF0014 */  sw         $ra, 0x14($sp)
/* 24E944 8022E234 AFA40018 */  sw         $a0, 0x18($sp)
/* 24E948 8022E238 8C6E0000 */  lw         $t6, 0x0($v1)
/* 24E94C 8022E23C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 24E950 8022E240 44812000 */  mtc1       $at, $f4
/* 24E954 8022E244 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 24E958 8022E248 000E7880 */  sll        $t7, $t6, 2
/* 24E95C 8022E24C 002F0821 */  addu       $at, $at, $t7
/* 24E960 8022E250 E4246A10 */  swc1       $f4, %lo(D_800E6A10)($at)
/* 24E964 8022E254 8C790000 */  lw         $t9, 0x0($v1)
/* 24E968 8022E258 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 24E96C 8022E25C 3C18800B */  lui        $t8, %hi(func_800B4954)
/* 24E970 8022E260 00194080 */  sll        $t0, $t9, 2
/* 24E974 8022E264 00280821 */  addu       $at, $at, $t0
/* 24E978 8022E268 27184954 */  addiu      $t8, $t8, %lo(func_800B4954)
/* 24E97C 8022E26C 0C0473D6 */  jal        func_8011CF58
/* 24E980 8022E270 AC38EF90 */   sw        $t8, %lo(D_800DEF90)($at)
/* 24E984 8022E274 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 24E988 8022E278 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 24E98C 8022E27C 3C098023 */  lui        $t1, %hi(func_8022E47C_ovl19)
/* 24E990 8022E280 3C01800E */  lui        $at, %hi(D_800DF150)
/* 24E994 8022E284 8C6A0000 */  lw         $t2, 0x0($v1)
/* 24E998 8022E288 2529E47C */  addiu      $t1, $t1, %lo(func_8022E47C_ovl19)
/* 24E99C 8022E28C 3C02800E */  lui        $v0, %hi(gEntitiesNextPosYArray)
/* 24E9A0 8022E290 000A5880 */  sll        $t3, $t2, 2
/* 24E9A4 8022E294 002B0821 */  addu       $at, $at, $t3
/* 24E9A8 8022E298 AC29F150 */  sw         $t1, %lo(D_800DF150)($at)
/* 24E9AC 8022E29C 24422790 */  addiu      $v0, $v0, %lo(gEntitiesNextPosYArray)
/* 24E9B0 8022E2A0 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 24E9B4 8022E2A4 44814000 */  mtc1       $at, $f8
/* 24E9B8 8022E2A8 C4460000 */  lwc1       $f6, 0x0($v0)
/* 24E9BC 8022E2AC 8C6C0000 */  lw         $t4, 0x0($v1)
/* 24E9C0 8022E2B0 3C04800E */  lui        $a0, %hi(D_800E5F90)
/* 24E9C4 8022E2B4 46083280 */  add.s      $f10, $f6, $f8
/* 24E9C8 8022E2B8 000C6880 */  sll        $t5, $t4, 2
/* 24E9CC 8022E2BC 004D7021 */  addu       $t6, $v0, $t5
/* 24E9D0 8022E2C0 24845F90 */  addiu      $a0, $a0, %lo(D_800E5F90)
/* 24E9D4 8022E2C4 E5CA0000 */  swc1       $f10, 0x0($t6)
/* 24E9D8 8022E2C8 8C790000 */  lw         $t9, 0x0($v1)
/* 24E9DC 8022E2CC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 24E9E0 8022E2D0 3C05800E */  lui        $a1, %hi(D_800E6BD0)
/* 24E9E4 8022E2D4 0019C080 */  sll        $t8, $t9, 2
/* 24E9E8 8022E2D8 00984021 */  addu       $t0, $a0, $t8
/* 24E9EC 8022E2DC AD0F0000 */  sw         $t7, 0x0($t0)
/* 24E9F0 8022E2E0 24A56BD0 */  addiu      $a1, $a1, %lo(D_800E6BD0)
/* 24E9F4 8022E2E4 3C018023 */  lui        $at, %hi(D_8022FA88_ovl19)
/* 24E9F8 8022E2E8 C432FA88 */  lwc1       $f18, %lo(D_8022FA88_ovl19)($at)
/* 24E9FC 8022E2EC C4B00000 */  lwc1       $f16, 0x0($a1)
/* 24EA00 8022E2F0 8C6A0000 */  lw         $t2, 0x0($v1)
/* 24EA04 8022E2F4 3C06800E */  lui        $a2, %hi(gEntitiesAngleYArray)
/* 24EA08 8022E2F8 46128100 */  add.s      $f4, $f16, $f18
/* 24EA0C 8022E2FC 000A4880 */  sll        $t1, $t2, 2
/* 24EA10 8022E300 00A95821 */  addu       $t3, $a1, $t1
/* 24EA14 8022E304 24C641D0 */  addiu      $a2, $a2, %lo(gEntitiesAngleYArray)
/* 24EA18 8022E308 E5640000 */  swc1       $f4, 0x0($t3)
/* 24EA1C 8022E30C 8C6C0000 */  lw         $t4, 0x0($v1)
/* 24EA20 8022E310 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 24EA24 8022E314 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 24EA28 8022E318 000C6880 */  sll        $t5, $t4, 2
/* 24EA2C 8022E31C 002D0821 */  addu       $at, $at, $t5
/* 24EA30 8022E320 E42017D0 */  swc1       $f0, %lo(D_800E17D0)($at)
/* 24EA34 8022E324 8C6E0000 */  lw         $t6, 0x0($v1)
/* 24EA38 8022E328 000EC880 */  sll        $t9, $t6, 2
/* 24EA3C 8022E32C 00D9C021 */  addu       $t8, $a2, $t9
/* 24EA40 8022E330 0C03FC51 */  jal        func_800FF144
/* 24EA44 8022E334 E7000000 */   swc1      $f0, 0x0($t8)
/* 24EA48 8022E338 3C038023 */  lui        $v1, %hi(D_8022FAB0_ovl19)
/* 24EA4C 8022E33C 2463FAB0 */  addiu      $v1, $v1, %lo(D_8022FAB0_ovl19)
/* 24EA50 8022E340 1040000F */  beqz       $v0, .L8022E380_ovl19
/* 24EA54 8022E344 AC620000 */   sw        $v0, 0x0($v1)
/* 24EA58 8022E348 3C014190 */  lui        $at, (0x41900000 >> 16)
/* 24EA5C 8022E34C 44813000 */  mtc1       $at, $f6
/* 24EA60 8022E350 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 24EA64 8022E354 44814000 */  mtc1       $at, $f8
/* 24EA68 8022E358 E4460010 */  swc1       $f6, 0x10($v0)
/* 24EA6C 8022E35C 8C680000 */  lw         $t0, 0x0($v1)
/* 24EA70 8022E360 3C01C370 */  lui        $at, (0xC3700000 >> 16)
/* 24EA74 8022E364 44815000 */  mtc1       $at, $f10
/* 24EA78 8022E368 E5080014 */  swc1       $f8, 0x14($t0)
/* 24EA7C 8022E36C 8C6A0000 */  lw         $t2, 0x0($v1)
/* 24EA80 8022E370 24090001 */  addiu      $t1, $zero, 0x1
/* 24EA84 8022E374 E54A0018 */  swc1       $f10, 0x18($t2)
/* 24EA88 8022E378 8C6B0000 */  lw         $t3, 0x0($v1)
/* 24EA8C 8022E37C A1690021 */  sb         $t1, 0x21($t3)
.L8022E380_ovl19:
/* 24EA90 8022E380 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 24EA94 8022E384 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 24EA98 8022E388 3C018023 */  lui        $at, %hi(D_8022FA8C_ovl19)
/* 24EA9C 8022E38C C420FA8C */  lwc1       $f0, %lo(D_8022FA8C_ovl19)($at)
/* 24EAA0 8022E390 8C6C0000 */  lw         $t4, 0x0($v1)
/* 24EAA4 8022E394 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 24EAA8 8022E398 3C040002 */  lui        $a0, (0x20007 >> 16)
/* 24EAAC 8022E39C 000C6880 */  sll        $t5, $t4, 2
/* 24EAB0 8022E3A0 002D0821 */  addu       $at, $at, $t5
/* 24EAB4 8022E3A4 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 24EAB8 8022E3A8 8C6E0000 */  lw         $t6, 0x0($v1)
/* 24EABC 8022E3AC 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 24EAC0 8022E3B0 34840007 */  ori        $a0, $a0, (0x20007 & 0xFFFF)
/* 24EAC4 8022E3B4 000EC880 */  sll        $t9, $t6, 2
/* 24EAC8 8022E3B8 00390821 */  addu       $at, $at, $t9
/* 24EACC 8022E3BC E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 24EAD0 8022E3C0 8C780000 */  lw         $t8, 0x0($v1)
/* 24EAD4 8022E3C4 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 24EAD8 8022E3C8 24050020 */  addiu      $a1, $zero, 0x20
/* 24EADC 8022E3CC 00187880 */  sll        $t7, $t8, 2
/* 24EAE0 8022E3D0 002F0821 */  addu       $at, $at, $t7
/* 24EAE4 8022E3D4 24060010 */  addiu      $a2, $zero, 0x10
/* 24EAE8 8022E3D8 0C02A619 */  jal        func_800A9864
/* 24EAEC 8022E3DC E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* 24EAF0 8022E3E0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 24EAF4 8022E3E4 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 24EAF8 8022E3E8 3C014190 */  lui        $at, (0x41900000 >> 16)
/* 24EAFC 8022E3EC 44810000 */  mtc1       $at, $f0
/* 24EB00 8022E3F0 8C680000 */  lw         $t0, 0x0($v1)
/* 24EB04 8022E3F4 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24EB08 8022E3F8 44808000 */  mtc1       $zero, $f16
/* 24EB0C 8022E3FC 00085080 */  sll        $t2, $t0, 2
/* 24EB10 8022E400 002A0821 */  addu       $at, $at, $t2
/* 24EB14 8022E404 E42064D0 */  swc1       $f0, %lo(D_800E64D0)($at)
/* 24EB18 8022E408 8C690000 */  lw         $t1, 0x0($v1)
/* 24EB1C 8022E40C 3C01800E */  lui        $at, %hi(D_800E6690)
/* 24EB20 8022E410 3C040002 */  lui        $a0, (0x20063 >> 16)
/* 24EB24 8022E414 00095880 */  sll        $t3, $t1, 2
/* 24EB28 8022E418 002B0821 */  addu       $at, $at, $t3
/* 24EB2C 8022E41C E4306690 */  swc1       $f16, %lo(D_800E6690)($at)
/* 24EB30 8022E420 8C6C0000 */  lw         $t4, 0x0($v1)
/* 24EB34 8022E424 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24EB38 8022E428 3C050002 */  lui        $a1, (0x20064 >> 16)
/* 24EB3C 8022E42C 000C6880 */  sll        $t5, $t4, 2
/* 24EB40 8022E430 002D0821 */  addu       $at, $at, $t5
/* 24EB44 8022E434 34A50064 */  ori        $a1, $a1, (0x20064 & 0xFFFF)
/* 24EB48 8022E438 34840063 */  ori        $a0, $a0, (0x20063 & 0xFFFF)
/* 24EB4C 8022E43C 00003025 */  or         $a2, $zero, $zero
/* 24EB50 8022E440 0C048C3A */  jal        func_801230E8
/* 24EB54 8022E444 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
/* 24EB58 8022E448 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 24EB5C 8022E44C 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 24EB60 8022E450 3C01800F */  lui        $at, %hi(D_800E9720)
/* 24EB64 8022E454 240E002D */  addiu      $t6, $zero, 0x2D
/* 24EB68 8022E458 8F380000 */  lw         $t8, 0x0($t9)
/* 24EB6C 8022E45C 00187880 */  sll        $t7, $t8, 2
/* 24EB70 8022E460 002F0821 */  addu       $at, $at, $t7
/* 24EB74 8022E464 0C02BE85 */  jal        func_800AFA14
/* 24EB78 8022E468 AC2E9720 */   sw        $t6, %lo(D_800E9720)($at)
/* 24EB7C 8022E46C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 24EB80 8022E470 27BD0018 */  addiu      $sp, $sp, 0x18
/* 24EB84 8022E474 03E00008 */  jr         $ra
/* 24EB88 8022E478 00000000 */   nop
