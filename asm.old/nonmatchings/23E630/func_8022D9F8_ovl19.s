glabel func_8022D9F8_ovl19
/* 24E108 8022D9F8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 24E10C 8022D9FC AFB20020 */  sw         $s2, 0x20($sp)
/* 24E110 8022DA00 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 24E114 8022DA04 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 24E118 8022DA08 8E420000 */  lw         $v0, 0x0($s2)
/* 24E11C 8022DA0C AFBF0024 */  sw         $ra, 0x24($sp)
/* 24E120 8022DA10 AFB1001C */  sw         $s1, 0x1C($sp)
/* 24E124 8022DA14 AFB00018 */  sw         $s0, 0x18($sp)
/* 24E128 8022DA18 AFA40028 */  sw         $a0, 0x28($sp)
/* 24E12C 8022DA1C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 24E130 8022DA20 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 24E134 8022DA24 44812000 */  mtc1       $at, $f4
/* 24E138 8022DA28 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 24E13C 8022DA2C 000E7880 */  sll        $t7, $t6, 2
/* 24E140 8022DA30 002F0821 */  addu       $at, $at, $t7
/* 24E144 8022DA34 E4246A10 */  swc1       $f4, %lo(D_800E6A10)($at)
/* 24E148 8022DA38 8C590000 */  lw         $t9, 0x0($v0)
/* 24E14C 8022DA3C 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 24E150 8022DA40 3C18800B */  lui        $t8, %hi(func_800B4954)
/* 24E154 8022DA44 00194080 */  sll        $t0, $t9, 2
/* 24E158 8022DA48 00280821 */  addu       $at, $at, $t0
/* 24E15C 8022DA4C 27184954 */  addiu      $t8, $t8, %lo(func_800B4954)
/* 24E160 8022DA50 0C0473D6 */  jal        func_8011CF58
/* 24E164 8022DA54 AC38EF90 */   sw        $t8, %lo(D_800DEF90)($at)
/* 24E168 8022DA58 8E420000 */  lw         $v0, 0x0($s2)
/* 24E16C 8022DA5C 3C098023 */  lui        $t1, %hi(func_8022E198_ovl19)
/* 24E170 8022DA60 3C01800E */  lui        $at, %hi(D_800DF150)
/* 24E174 8022DA64 8C4A0000 */  lw         $t2, 0x0($v0)
/* 24E178 8022DA68 2529E198 */  addiu      $t1, $t1, %lo(func_8022E198_ovl19)
/* 24E17C 8022DA6C 3C03800E */  lui        $v1, %hi(gEntitiesNextPosYArray)
/* 24E180 8022DA70 000A5880 */  sll        $t3, $t2, 2
/* 24E184 8022DA74 002B0821 */  addu       $at, $at, $t3
/* 24E188 8022DA78 AC29F150 */  sw         $t1, %lo(D_800DF150)($at)
/* 24E18C 8022DA7C 8C4C0000 */  lw         $t4, 0x0($v0)
/* 24E190 8022DA80 24632790 */  addiu      $v1, $v1, %lo(gEntitiesNextPosYArray)
/* 24E194 8022DA84 C4660000 */  lwc1       $f6, 0x0($v1)
/* 24E198 8022DA88 000C6880 */  sll        $t5, $t4, 2
/* 24E19C 8022DA8C 006D7021 */  addu       $t6, $v1, $t5
/* 24E1A0 8022DA90 E5C60000 */  swc1       $f6, 0x0($t6)
/* 24E1A4 8022DA94 8C4F0000 */  lw         $t7, 0x0($v0)
/* 24E1A8 8022DA98 3C04800E */  lui        $a0, %hi(gEntitiesAngleYArray)
/* 24E1AC 8022DA9C 248441D0 */  addiu      $a0, $a0, %lo(gEntitiesAngleYArray)
/* 24E1B0 8022DAA0 C4800000 */  lwc1       $f0, 0x0($a0)
/* 24E1B4 8022DAA4 3C01800E */  lui        $at, %hi(D_800E17D0)
/* 24E1B8 8022DAA8 000FC880 */  sll        $t9, $t7, 2
/* 24E1BC 8022DAAC 00390821 */  addu       $at, $at, $t9
/* 24E1C0 8022DAB0 E42017D0 */  swc1       $f0, %lo(D_800E17D0)($at)
/* 24E1C4 8022DAB4 8C580000 */  lw         $t8, 0x0($v0)
/* 24E1C8 8022DAB8 00184080 */  sll        $t0, $t8, 2
/* 24E1CC 8022DABC 00885021 */  addu       $t2, $a0, $t0
/* 24E1D0 8022DAC0 0C03FC51 */  jal        func_800FF144
/* 24E1D4 8022DAC4 E5400000 */   swc1      $f0, 0x0($t2)
/* 24E1D8 8022DAC8 3C038023 */  lui        $v1, %hi(D_8022FAB0_ovl19)
/* 24E1DC 8022DACC 2463FAB0 */  addiu      $v1, $v1, %lo(D_8022FAB0_ovl19)
/* 24E1E0 8022DAD0 1040000F */  beqz       $v0, .L8022DB10_ovl19
/* 24E1E4 8022DAD4 AC620004 */   sw        $v0, 0x4($v1)
/* 24E1E8 8022DAD8 3C0141C0 */  lui        $at, (0x41C00000 >> 16)
/* 24E1EC 8022DADC 44814000 */  mtc1       $at, $f8
/* 24E1F0 8022DAE0 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 24E1F4 8022DAE4 44815000 */  mtc1       $at, $f10
/* 24E1F8 8022DAE8 E4480010 */  swc1       $f8, 0x10($v0)
/* 24E1FC 8022DAEC 8C6B0004 */  lw         $t3, 0x4($v1)
/* 24E200 8022DAF0 3C01C370 */  lui        $at, (0xC3700000 >> 16)
/* 24E204 8022DAF4 44818000 */  mtc1       $at, $f16
/* 24E208 8022DAF8 E56A0014 */  swc1       $f10, 0x14($t3)
/* 24E20C 8022DAFC 8C6C0004 */  lw         $t4, 0x4($v1)
/* 24E210 8022DB00 240D0001 */  addiu      $t5, $zero, 0x1
/* 24E214 8022DB04 E5900018 */  swc1       $f16, 0x18($t4)
/* 24E218 8022DB08 8C6E0004 */  lw         $t6, 0x4($v1)
/* 24E21C 8022DB0C A1CD0021 */  sb         $t5, 0x21($t6)
.L8022DB10_ovl19:
/* 24E220 8022DB10 8E420000 */  lw         $v0, 0x0($s2)
/* 24E224 8022DB14 3C018023 */  lui        $at, %hi(D_8022FA50_ovl19)
/* 24E228 8022DB18 C420FA50 */  lwc1       $f0, %lo(D_8022FA50_ovl19)($at)
/* 24E22C 8022DB1C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 24E230 8022DB20 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 24E234 8022DB24 3C040002 */  lui        $a0, (0x2006B >> 16)
/* 24E238 8022DB28 000FC880 */  sll        $t9, $t7, 2
/* 24E23C 8022DB2C 00390821 */  addu       $at, $at, $t9
/* 24E240 8022DB30 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 24E244 8022DB34 8C580000 */  lw         $t8, 0x0($v0)
/* 24E248 8022DB38 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 24E24C 8022DB3C 3484006B */  ori        $a0, $a0, (0x2006B & 0xFFFF)
/* 24E250 8022DB40 00184080 */  sll        $t0, $t8, 2
/* 24E254 8022DB44 00280821 */  addu       $at, $at, $t0
/* 24E258 8022DB48 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 24E25C 8022DB4C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 24E260 8022DB50 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 24E264 8022DB54 24050020 */  addiu      $a1, $zero, 0x20
/* 24E268 8022DB58 000A4880 */  sll        $t1, $t2, 2
/* 24E26C 8022DB5C 00290821 */  addu       $at, $at, $t1
/* 24E270 8022DB60 24060010 */  addiu      $a2, $zero, 0x10
/* 24E274 8022DB64 0C02A619 */  jal        func_800A9864
/* 24E278 8022DB68 E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* 24E27C 8022DB6C 8E4C0000 */  lw         $t4, 0x0($s2)
/* 24E280 8022DB70 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* 24E284 8022DB74 240B0002 */  addiu      $t3, $zero, 0x2
/* 24E288 8022DB78 8D8D0000 */  lw         $t5, 0x0($t4)
/* 24E28C 8022DB7C 3C03800C */  lui        $v1, %hi(D_800BE500)
/* 24E290 8022DB80 24050001 */  addiu      $a1, $zero, 0x1
/* 24E294 8022DB84 000D7080 */  sll        $t6, $t5, 2
/* 24E298 8022DB88 01EE7821 */  addu       $t7, $t7, $t6
/* 24E29C 8022DB8C 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
/* 24E2A0 8022DB90 8DF90030 */  lw         $t9, 0x30($t7)
/* 24E2A4 8022DB94 A32B0054 */  sb         $t3, 0x54($t9)
/* 24E2A8 8022DB98 8C63E500 */  lw         $v1, %lo(D_800BE500)($v1)
/* 24E2AC 8022DB9C 10650007 */  beq        $v1, $a1, .L8022DBBC_ovl19
/* 24E2B0 8022DBA0 24010003 */   addiu     $at, $zero, 0x3
/* 24E2B4 8022DBA4 1061007E */  beq        $v1, $at, .L8022DDA0_ovl19
/* 24E2B8 8022DBA8 24010004 */   addiu     $at, $zero, 0x4
/* 24E2BC 8022DBAC 506100F5 */  beql       $v1, $at, .L8022DF84_ovl19
/* 24E2C0 8022DBB0 8E420000 */   lw        $v0, 0x0($s2)
/* 24E2C4 8022DBB4 10000167 */  b          .L8022E154_ovl19
/* 24E2C8 8022DBB8 240F0001 */   addiu     $t7, $zero, 0x1
.L8022DBBC_ovl19:
/* 24E2CC 8022DBBC 8E420000 */  lw         $v0, 0x0($s2)
/* 24E2D0 8022DBC0 3C01800E */  lui        $at, %hi(D_800E5F90)
/* 24E2D4 8022DBC4 3C11800E */  lui        $s1, %hi(D_800E6D90)
/* 24E2D8 8022DBC8 8C580000 */  lw         $t8, 0x0($v0)
/* 24E2DC 8022DBCC 26316D90 */  addiu      $s1, $s1, %lo(D_800E6D90)
/* 24E2E0 8022DBD0 44803000 */  mtc1       $zero, $f6
/* 24E2E4 8022DBD4 00184080 */  sll        $t0, $t8, 2
/* 24E2E8 8022DBD8 00280821 */  addu       $at, $at, $t0
/* 24E2EC 8022DBDC AC255F90 */  sw         $a1, %lo(D_800E5F90)($at)
/* 24E2F0 8022DBE0 8C4A0000 */  lw         $t2, 0x0($v0)
/* 24E2F4 8022DBE4 3C018023 */  lui        $at, %hi(D_8022FA54_ovl19)
/* 24E2F8 8022DBE8 C432FA54 */  lwc1       $f18, %lo(D_8022FA54_ovl19)($at)
/* 24E2FC 8022DBEC 000A4880 */  sll        $t1, $t2, 2
/* 24E300 8022DBF0 02296021 */  addu       $t4, $s1, $t1
/* 24E304 8022DBF4 E5920000 */  swc1       $f18, 0x0($t4)
/* 24E308 8022DBF8 8C430000 */  lw         $v1, 0x0($v0)
/* 24E30C 8022DBFC 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 24E310 8022DC00 3C10800E */  lui        $s0, %hi(D_800E6690)
/* 24E314 8022DC04 00031880 */  sll        $v1, $v1, 2
/* 24E318 8022DC08 02236821 */  addu       $t5, $s1, $v1
/* 24E31C 8022DC0C C5A40000 */  lwc1       $f4, 0x0($t5)
/* 24E320 8022DC10 00230821 */  addu       $at, $at, $v1
/* 24E324 8022DC14 26106690 */  addiu      $s0, $s0, %lo(D_800E6690)
/* 24E328 8022DC18 E4246BD0 */  swc1       $f4, %lo(D_800E6BD0)($at)
/* 24E32C 8022DC1C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 24E330 8022DC20 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24E334 8022DC24 240401DB */  addiu      $a0, $zero, 0x1DB
/* 24E338 8022DC28 000E7880 */  sll        $t7, $t6, 2
/* 24E33C 8022DC2C 020F5821 */  addu       $t3, $s0, $t7
/* 24E340 8022DC30 E5660000 */  swc1       $f6, 0x0($t3)
/* 24E344 8022DC34 8C430000 */  lw         $v1, 0x0($v0)
/* 24E348 8022DC38 00031880 */  sll        $v1, $v1, 2
/* 24E34C 8022DC3C 0203C821 */  addu       $t9, $s0, $v1
/* 24E350 8022DC40 C7280000 */  lwc1       $f8, 0x0($t9)
/* 24E354 8022DC44 00230821 */  addu       $at, $at, $v1
/* 24E358 8022DC48 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 24E35C 8022DC4C 8C580000 */  lw         $t8, 0x0($v0)
/* 24E360 8022DC50 3C018023 */  lui        $at, %hi(D_8022FA58_ovl19)
/* 24E364 8022DC54 C42AFA58 */  lwc1       $f10, %lo(D_8022FA58_ovl19)($at)
/* 24E368 8022DC58 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24E36C 8022DC5C 00184080 */  sll        $t0, $t8, 2
/* 24E370 8022DC60 00280821 */  addu       $at, $at, $t0
/* 24E374 8022DC64 0C029D9E */  jal        play_sound
/* 24E378 8022DC68 E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
/* 24E37C 8022DC6C 3C040002 */  lui        $a0, (0x203BA >> 16)
/* 24E380 8022DC70 3C050002 */  lui        $a1, (0x203BB >> 16)
/* 24E384 8022DC74 34A503BB */  ori        $a1, $a1, (0x203BB & 0xFFFF)
/* 24E388 8022DC78 348403BA */  ori        $a0, $a0, (0x203BA & 0xFFFF)
/* 24E38C 8022DC7C 0C048C3A */  jal        func_801230E8
/* 24E390 8022DC80 00003025 */   or        $a2, $zero, $zero
/* 24E394 8022DC84 0C002DAF */  jal        finish_current_thread
/* 24E398 8022DC88 24040010 */   addiu     $a0, $zero, 0x10
/* 24E39C 8022DC8C 8E420000 */  lw         $v0, 0x0($s2)
/* 24E3A0 8022DC90 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 24E3A4 8022DC94 44810000 */  mtc1       $at, $f0
/* 24E3A8 8022DC98 8C4A0000 */  lw         $t2, 0x0($v0)
/* 24E3AC 8022DC9C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24E3B0 8022DCA0 44808000 */  mtc1       $zero, $f16
/* 24E3B4 8022DCA4 000A4880 */  sll        $t1, $t2, 2
/* 24E3B8 8022DCA8 00290821 */  addu       $at, $at, $t1
/* 24E3BC 8022DCAC E42064D0 */  swc1       $f0, %lo(D_800E64D0)($at)
/* 24E3C0 8022DCB0 8C4C0000 */  lw         $t4, 0x0($v0)
/* 24E3C4 8022DCB4 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24E3C8 8022DCB8 24040014 */  addiu      $a0, $zero, 0x14
/* 24E3CC 8022DCBC 000C6880 */  sll        $t5, $t4, 2
/* 24E3D0 8022DCC0 020D7021 */  addu       $t6, $s0, $t5
/* 24E3D4 8022DCC4 E5D00000 */  swc1       $f16, 0x0($t6)
/* 24E3D8 8022DCC8 8C4F0000 */  lw         $t7, 0x0($v0)
/* 24E3DC 8022DCCC 000F5880 */  sll        $t3, $t7, 2
/* 24E3E0 8022DCD0 002B0821 */  addu       $at, $at, $t3
/* 24E3E4 8022DCD4 0C002DAF */  jal        finish_current_thread
/* 24E3E8 8022DCD8 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
/* 24E3EC 8022DCDC 8E590000 */  lw         $t9, 0x0($s2)
/* 24E3F0 8022DCE0 3C018023 */  lui        $at, %hi(D_8022FA5C_ovl19)
/* 24E3F4 8022DCE4 C432FA5C */  lwc1       $f18, %lo(D_8022FA5C_ovl19)($at)
/* 24E3F8 8022DCE8 8F380000 */  lw         $t8, 0x0($t9)
/* 24E3FC 8022DCEC 24040012 */  addiu      $a0, $zero, 0x12
/* 24E400 8022DCF0 00184080 */  sll        $t0, $t8, 2
/* 24E404 8022DCF4 02085021 */  addu       $t2, $s0, $t0
/* 24E408 8022DCF8 0C002DAF */  jal        finish_current_thread
/* 24E40C 8022DCFC E5520000 */   swc1      $f18, 0x0($t2)
/* 24E410 8022DD00 8E420000 */  lw         $v0, 0x0($s2)
/* 24E414 8022DD04 44802000 */  mtc1       $zero, $f4
/* 24E418 8022DD08 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24E41C 8022DD0C 8C490000 */  lw         $t1, 0x0($v0)
/* 24E420 8022DD10 24190003 */  addiu      $t9, $zero, 0x3
/* 24E424 8022DD14 00096080 */  sll        $t4, $t1, 2
/* 24E428 8022DD18 020C6821 */  addu       $t5, $s0, $t4
/* 24E42C 8022DD1C E5A40000 */  swc1       $f4, 0x0($t5)
/* 24E430 8022DD20 8C430000 */  lw         $v1, 0x0($v0)
/* 24E434 8022DD24 00031880 */  sll        $v1, $v1, 2
/* 24E438 8022DD28 02037021 */  addu       $t6, $s0, $v1
/* 24E43C 8022DD2C C5C60000 */  lwc1       $f6, 0x0($t6)
/* 24E440 8022DD30 00230821 */  addu       $at, $at, $v1
/* 24E444 8022DD34 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* 24E448 8022DD38 8C4F0000 */  lw         $t7, 0x0($v0)
/* 24E44C 8022DD3C 3C018023 */  lui        $at, %hi(D_8022FA60_ovl19)
/* 24E450 8022DD40 C428FA60 */  lwc1       $f8, %lo(D_8022FA60_ovl19)($at)
/* 24E454 8022DD44 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24E458 8022DD48 000F5880 */  sll        $t3, $t7, 2
/* 24E45C 8022DD4C 002B0821 */  addu       $at, $at, $t3
/* 24E460 8022DD50 E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
/* 24E464 8022DD54 8C580000 */  lw         $t8, 0x0($v0)
/* 24E468 8022DD58 3C01800E */  lui        $at, %hi(D_800E5F90)
/* 24E46C 8022DD5C 00184080 */  sll        $t0, $t8, 2
/* 24E470 8022DD60 00280821 */  addu       $at, $at, $t0
/* 24E474 8022DD64 AC395F90 */  sw         $t9, %lo(D_800E5F90)($at)
/* 24E478 8022DD68 8C4A0000 */  lw         $t2, 0x0($v0)
/* 24E47C 8022DD6C 3C018023 */  lui        $at, %hi(D_8022FA64_ovl19)
/* 24E480 8022DD70 C42AFA64 */  lwc1       $f10, %lo(D_8022FA64_ovl19)($at)
/* 24E484 8022DD74 000A4880 */  sll        $t1, $t2, 2
/* 24E488 8022DD78 02296021 */  addu       $t4, $s1, $t1
/* 24E48C 8022DD7C E58A0000 */  swc1       $f10, 0x0($t4)
/* 24E490 8022DD80 8C430000 */  lw         $v1, 0x0($v0)
/* 24E494 8022DD84 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 24E498 8022DD88 00031880 */  sll        $v1, $v1, 2
/* 24E49C 8022DD8C 02236821 */  addu       $t5, $s1, $v1
/* 24E4A0 8022DD90 C5B00000 */  lwc1       $f16, 0x0($t5)
/* 24E4A4 8022DD94 00230821 */  addu       $at, $at, $v1
/* 24E4A8 8022DD98 100000ED */  b          .L8022E150_ovl19
/* 24E4AC 8022DD9C E4306BD0 */   swc1      $f16, %lo(D_800E6BD0)($at)
.L8022DDA0_ovl19:
/* 24E4B0 8022DDA0 8E420000 */  lw         $v0, 0x0($s2)
/* 24E4B4 8022DDA4 3C01800E */  lui        $at, %hi(D_800E5F90)
/* 24E4B8 8022DDA8 44809000 */  mtc1       $zero, $f18
/* 24E4BC 8022DDAC 8C4E0000 */  lw         $t6, 0x0($v0)
/* 24E4C0 8022DDB0 3C11800E */  lui        $s1, %hi(D_800E6D90)
/* 24E4C4 8022DDB4 26316D90 */  addiu      $s1, $s1, %lo(D_800E6D90)
/* 24E4C8 8022DDB8 000E7880 */  sll        $t7, $t6, 2
/* 24E4CC 8022DDBC 002F0821 */  addu       $at, $at, $t7
/* 24E4D0 8022DDC0 AC255F90 */  sw         $a1, %lo(D_800E5F90)($at)
/* 24E4D4 8022DDC4 8C4B0000 */  lw         $t3, 0x0($v0)
/* 24E4D8 8022DDC8 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 24E4DC 8022DDCC 44803000 */  mtc1       $zero, $f6
/* 24E4E0 8022DDD0 000BC080 */  sll        $t8, $t3, 2
/* 24E4E4 8022DDD4 0238C821 */  addu       $t9, $s1, $t8
/* 24E4E8 8022DDD8 E7320000 */  swc1       $f18, 0x0($t9)
/* 24E4EC 8022DDDC 8C430000 */  lw         $v1, 0x0($v0)
/* 24E4F0 8022DDE0 3C10800E */  lui        $s0, %hi(D_800E6690)
/* 24E4F4 8022DDE4 26106690 */  addiu      $s0, $s0, %lo(D_800E6690)
/* 24E4F8 8022DDE8 00031880 */  sll        $v1, $v1, 2
/* 24E4FC 8022DDEC 02234021 */  addu       $t0, $s1, $v1
/* 24E500 8022DDF0 C5040000 */  lwc1       $f4, 0x0($t0)
/* 24E504 8022DDF4 00230821 */  addu       $at, $at, $v1
/* 24E508 8022DDF8 240401DB */  addiu      $a0, $zero, 0x1DB
/* 24E50C 8022DDFC E4246BD0 */  swc1       $f4, %lo(D_800E6BD0)($at)
/* 24E510 8022DE00 8C4A0000 */  lw         $t2, 0x0($v0)
/* 24E514 8022DE04 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24E518 8022DE08 000A4880 */  sll        $t1, $t2, 2
/* 24E51C 8022DE0C 02096021 */  addu       $t4, $s0, $t1
/* 24E520 8022DE10 E5860000 */  swc1       $f6, 0x0($t4)
/* 24E524 8022DE14 8C430000 */  lw         $v1, 0x0($v0)
/* 24E528 8022DE18 00031880 */  sll        $v1, $v1, 2
/* 24E52C 8022DE1C 02036821 */  addu       $t5, $s0, $v1
/* 24E530 8022DE20 C5A80000 */  lwc1       $f8, 0x0($t5)
/* 24E534 8022DE24 00230821 */  addu       $at, $at, $v1
/* 24E538 8022DE28 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 24E53C 8022DE2C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 24E540 8022DE30 3C018023 */  lui        $at, %hi(D_8022FA68_ovl19)
/* 24E544 8022DE34 C42AFA68 */  lwc1       $f10, %lo(D_8022FA68_ovl19)($at)
/* 24E548 8022DE38 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24E54C 8022DE3C 000E7880 */  sll        $t7, $t6, 2
/* 24E550 8022DE40 002F0821 */  addu       $at, $at, $t7
/* 24E554 8022DE44 0C029D9E */  jal        play_sound
/* 24E558 8022DE48 E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
/* 24E55C 8022DE4C 3C040002 */  lui        $a0, (0x203BA >> 16)
/* 24E560 8022DE50 3C050002 */  lui        $a1, (0x203BB >> 16)
/* 24E564 8022DE54 34A503BB */  ori        $a1, $a1, (0x203BB & 0xFFFF)
/* 24E568 8022DE58 348403BA */  ori        $a0, $a0, (0x203BA & 0xFFFF)
/* 24E56C 8022DE5C 0C048C3A */  jal        func_801230E8
/* 24E570 8022DE60 00003025 */   or        $a2, $zero, $zero
/* 24E574 8022DE64 0C002DAF */  jal        finish_current_thread
/* 24E578 8022DE68 24040005 */   addiu     $a0, $zero, 0x5
/* 24E57C 8022DE6C 8E420000 */  lw         $v0, 0x0($s2)
/* 24E580 8022DE70 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 24E584 8022DE74 44810000 */  mtc1       $at, $f0
/* 24E588 8022DE78 8C4B0000 */  lw         $t3, 0x0($v0)
/* 24E58C 8022DE7C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24E590 8022DE80 44808000 */  mtc1       $zero, $f16
/* 24E594 8022DE84 000BC080 */  sll        $t8, $t3, 2
/* 24E598 8022DE88 00380821 */  addu       $at, $at, $t8
/* 24E59C 8022DE8C E42064D0 */  swc1       $f0, %lo(D_800E64D0)($at)
/* 24E5A0 8022DE90 8C590000 */  lw         $t9, 0x0($v0)
/* 24E5A4 8022DE94 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24E5A8 8022DE98 2404001C */  addiu      $a0, $zero, 0x1C
/* 24E5AC 8022DE9C 00194080 */  sll        $t0, $t9, 2
/* 24E5B0 8022DEA0 02085021 */  addu       $t2, $s0, $t0
/* 24E5B4 8022DEA4 E5500000 */  swc1       $f16, 0x0($t2)
/* 24E5B8 8022DEA8 8C490000 */  lw         $t1, 0x0($v0)
/* 24E5BC 8022DEAC 00096080 */  sll        $t4, $t1, 2
/* 24E5C0 8022DEB0 002C0821 */  addu       $at, $at, $t4
/* 24E5C4 8022DEB4 0C002DAF */  jal        finish_current_thread
/* 24E5C8 8022DEB8 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
/* 24E5CC 8022DEBC 8E4D0000 */  lw         $t5, 0x0($s2)
/* 24E5D0 8022DEC0 3C018023 */  lui        $at, %hi(D_8022FA6C_ovl19)
/* 24E5D4 8022DEC4 C432FA6C */  lwc1       $f18, %lo(D_8022FA6C_ovl19)($at)
/* 24E5D8 8022DEC8 8DAE0000 */  lw         $t6, 0x0($t5)
/* 24E5DC 8022DECC 24040014 */  addiu      $a0, $zero, 0x14
/* 24E5E0 8022DED0 000E7880 */  sll        $t7, $t6, 2
/* 24E5E4 8022DED4 020F5821 */  addu       $t3, $s0, $t7
/* 24E5E8 8022DED8 0C002DAF */  jal        finish_current_thread
/* 24E5EC 8022DEDC E5720000 */   swc1      $f18, 0x0($t3)
/* 24E5F0 8022DEE0 8E420000 */  lw         $v0, 0x0($s2)
/* 24E5F4 8022DEE4 44802000 */  mtc1       $zero, $f4
/* 24E5F8 8022DEE8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24E5FC 8022DEEC 8C580000 */  lw         $t8, 0x0($v0)
/* 24E600 8022DEF0 240D0003 */  addiu      $t5, $zero, 0x3
/* 24E604 8022DEF4 0018C880 */  sll        $t9, $t8, 2
/* 24E608 8022DEF8 02194021 */  addu       $t0, $s0, $t9
/* 24E60C 8022DEFC E5040000 */  swc1       $f4, 0x0($t0)
/* 24E610 8022DF00 8C430000 */  lw         $v1, 0x0($v0)
/* 24E614 8022DF04 00031880 */  sll        $v1, $v1, 2
/* 24E618 8022DF08 02035021 */  addu       $t2, $s0, $v1
/* 24E61C 8022DF0C C5460000 */  lwc1       $f6, 0x0($t2)
/* 24E620 8022DF10 00230821 */  addu       $at, $at, $v1
/* 24E624 8022DF14 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* 24E628 8022DF18 8C490000 */  lw         $t1, 0x0($v0)
/* 24E62C 8022DF1C 3C018023 */  lui        $at, %hi(D_8022FA70_ovl19)
/* 24E630 8022DF20 C428FA70 */  lwc1       $f8, %lo(D_8022FA70_ovl19)($at)
/* 24E634 8022DF24 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24E638 8022DF28 00096080 */  sll        $t4, $t1, 2
/* 24E63C 8022DF2C 002C0821 */  addu       $at, $at, $t4
/* 24E640 8022DF30 E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
/* 24E644 8022DF34 8C4E0000 */  lw         $t6, 0x0($v0)
/* 24E648 8022DF38 3C01800E */  lui        $at, %hi(D_800E5F90)
/* 24E64C 8022DF3C 000E7880 */  sll        $t7, $t6, 2
/* 24E650 8022DF40 002F0821 */  addu       $at, $at, $t7
/* 24E654 8022DF44 AC2D5F90 */  sw         $t5, %lo(D_800E5F90)($at)
/* 24E658 8022DF48 8C4B0000 */  lw         $t3, 0x0($v0)
/* 24E65C 8022DF4C 3C018023 */  lui        $at, %hi(D_8022FA74_ovl19)
/* 24E660 8022DF50 C42AFA74 */  lwc1       $f10, %lo(D_8022FA74_ovl19)($at)
/* 24E664 8022DF54 000BC080 */  sll        $t8, $t3, 2
/* 24E668 8022DF58 0238C821 */  addu       $t9, $s1, $t8
/* 24E66C 8022DF5C E72A0000 */  swc1       $f10, 0x0($t9)
/* 24E670 8022DF60 8C430000 */  lw         $v1, 0x0($v0)
/* 24E674 8022DF64 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 24E678 8022DF68 00031880 */  sll        $v1, $v1, 2
/* 24E67C 8022DF6C 02234021 */  addu       $t0, $s1, $v1
/* 24E680 8022DF70 C5100000 */  lwc1       $f16, 0x0($t0)
/* 24E684 8022DF74 00230821 */  addu       $at, $at, $v1
/* 24E688 8022DF78 10000075 */  b          .L8022E150_ovl19
/* 24E68C 8022DF7C E4306BD0 */   swc1      $f16, %lo(D_800E6BD0)($at)
/* 24E690 8022DF80 8E420000 */  lw         $v0, 0x0($s2)
.L8022DF84_ovl19:
/* 24E694 8022DF84 3C01800E */  lui        $at, %hi(D_800E5F90)
/* 24E698 8022DF88 44809000 */  mtc1       $zero, $f18
/* 24E69C 8022DF8C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 24E6A0 8022DF90 3C11800E */  lui        $s1, %hi(D_800E6D90)
/* 24E6A4 8022DF94 26316D90 */  addiu      $s1, $s1, %lo(D_800E6D90)
/* 24E6A8 8022DF98 000A4880 */  sll        $t1, $t2, 2
/* 24E6AC 8022DF9C 00290821 */  addu       $at, $at, $t1
/* 24E6B0 8022DFA0 AC255F90 */  sw         $a1, %lo(D_800E5F90)($at)
/* 24E6B4 8022DFA4 8C4C0000 */  lw         $t4, 0x0($v0)
/* 24E6B8 8022DFA8 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 24E6BC 8022DFAC 44803000 */  mtc1       $zero, $f6
/* 24E6C0 8022DFB0 000C7080 */  sll        $t6, $t4, 2
/* 24E6C4 8022DFB4 022E6821 */  addu       $t5, $s1, $t6
/* 24E6C8 8022DFB8 E5B20000 */  swc1       $f18, 0x0($t5)
/* 24E6CC 8022DFBC 8C430000 */  lw         $v1, 0x0($v0)
/* 24E6D0 8022DFC0 3C10800E */  lui        $s0, %hi(D_800E6690)
/* 24E6D4 8022DFC4 26106690 */  addiu      $s0, $s0, %lo(D_800E6690)
/* 24E6D8 8022DFC8 00031880 */  sll        $v1, $v1, 2
/* 24E6DC 8022DFCC 02237821 */  addu       $t7, $s1, $v1
/* 24E6E0 8022DFD0 C5E40000 */  lwc1       $f4, 0x0($t7)
/* 24E6E4 8022DFD4 00230821 */  addu       $at, $at, $v1
/* 24E6E8 8022DFD8 240401DB */  addiu      $a0, $zero, 0x1DB
/* 24E6EC 8022DFDC E4246BD0 */  swc1       $f4, %lo(D_800E6BD0)($at)
/* 24E6F0 8022DFE0 8C4B0000 */  lw         $t3, 0x0($v0)
/* 24E6F4 8022DFE4 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24E6F8 8022DFE8 000BC080 */  sll        $t8, $t3, 2
/* 24E6FC 8022DFEC 0218C821 */  addu       $t9, $s0, $t8
/* 24E700 8022DFF0 E7260000 */  swc1       $f6, 0x0($t9)
/* 24E704 8022DFF4 8C430000 */  lw         $v1, 0x0($v0)
/* 24E708 8022DFF8 00031880 */  sll        $v1, $v1, 2
/* 24E70C 8022DFFC 02034021 */  addu       $t0, $s0, $v1
/* 24E710 8022E000 C5080000 */  lwc1       $f8, 0x0($t0)
/* 24E714 8022E004 00230821 */  addu       $at, $at, $v1
/* 24E718 8022E008 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 24E71C 8022E00C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 24E720 8022E010 3C018023 */  lui        $at, %hi(D_8022FA78_ovl19)
/* 24E724 8022E014 C42AFA78 */  lwc1       $f10, %lo(D_8022FA78_ovl19)($at)
/* 24E728 8022E018 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24E72C 8022E01C 000A4880 */  sll        $t1, $t2, 2
/* 24E730 8022E020 00290821 */  addu       $at, $at, $t1
/* 24E734 8022E024 0C029D9E */  jal        play_sound
/* 24E738 8022E028 E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
/* 24E73C 8022E02C 3C040002 */  lui        $a0, (0x203BA >> 16)
/* 24E740 8022E030 3C050002 */  lui        $a1, (0x203BB >> 16)
/* 24E744 8022E034 34A503BB */  ori        $a1, $a1, (0x203BB & 0xFFFF)
/* 24E748 8022E038 348403BA */  ori        $a0, $a0, (0x203BA & 0xFFFF)
/* 24E74C 8022E03C 0C048C3A */  jal        func_801230E8
/* 24E750 8022E040 00003025 */   or        $a2, $zero, $zero
/* 24E754 8022E044 8E420000 */  lw         $v0, 0x0($s2)
/* 24E758 8022E048 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 24E75C 8022E04C 44810000 */  mtc1       $at, $f0
/* 24E760 8022E050 8C4C0000 */  lw         $t4, 0x0($v0)
/* 24E764 8022E054 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24E768 8022E058 44808000 */  mtc1       $zero, $f16
/* 24E76C 8022E05C 000C7080 */  sll        $t6, $t4, 2
/* 24E770 8022E060 002E0821 */  addu       $at, $at, $t6
/* 24E774 8022E064 E42064D0 */  swc1       $f0, %lo(D_800E64D0)($at)
/* 24E778 8022E068 8C4D0000 */  lw         $t5, 0x0($v0)
/* 24E77C 8022E06C 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24E780 8022E070 24040022 */  addiu      $a0, $zero, 0x22
/* 24E784 8022E074 000D7880 */  sll        $t7, $t5, 2
/* 24E788 8022E078 020F5821 */  addu       $t3, $s0, $t7
/* 24E78C 8022E07C E5700000 */  swc1       $f16, 0x0($t3)
/* 24E790 8022E080 8C580000 */  lw         $t8, 0x0($v0)
/* 24E794 8022E084 0018C880 */  sll        $t9, $t8, 2
/* 24E798 8022E088 00390821 */  addu       $at, $at, $t9
/* 24E79C 8022E08C 0C002DAF */  jal        finish_current_thread
/* 24E7A0 8022E090 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
/* 24E7A4 8022E094 8E480000 */  lw         $t0, 0x0($s2)
/* 24E7A8 8022E098 3C018023 */  lui        $at, %hi(D_8022FA7C_ovl19)
/* 24E7AC 8022E09C C432FA7C */  lwc1       $f18, %lo(D_8022FA7C_ovl19)($at)
/* 24E7B0 8022E0A0 8D0A0000 */  lw         $t2, 0x0($t0)
/* 24E7B4 8022E0A4 24040014 */  addiu      $a0, $zero, 0x14
/* 24E7B8 8022E0A8 000A4880 */  sll        $t1, $t2, 2
/* 24E7BC 8022E0AC 02096021 */  addu       $t4, $s0, $t1
/* 24E7C0 8022E0B0 0C002DAF */  jal        finish_current_thread
/* 24E7C4 8022E0B4 E5920000 */   swc1      $f18, 0x0($t4)
/* 24E7C8 8022E0B8 8E420000 */  lw         $v0, 0x0($s2)
/* 24E7CC 8022E0BC 44802000 */  mtc1       $zero, $f4
/* 24E7D0 8022E0C0 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24E7D4 8022E0C4 8C4E0000 */  lw         $t6, 0x0($v0)
/* 24E7D8 8022E0C8 000E6880 */  sll        $t5, $t6, 2
/* 24E7DC 8022E0CC 020D7821 */  addu       $t7, $s0, $t5
/* 24E7E0 8022E0D0 E5E40000 */  swc1       $f4, 0x0($t7)
/* 24E7E4 8022E0D4 8C430000 */  lw         $v1, 0x0($v0)
/* 24E7E8 8022E0D8 00031880 */  sll        $v1, $v1, 2
/* 24E7EC 8022E0DC 02035821 */  addu       $t3, $s0, $v1
/* 24E7F0 8022E0E0 C5660000 */  lwc1       $f6, 0x0($t3)
/* 24E7F4 8022E0E4 00230821 */  addu       $at, $at, $v1
/* 24E7F8 8022E0E8 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* 24E7FC 8022E0EC 8C580000 */  lw         $t8, 0x0($v0)
/* 24E800 8022E0F0 3C018023 */  lui        $at, %hi(D_8022FA80_ovl19)
/* 24E804 8022E0F4 C428FA80 */  lwc1       $f8, %lo(D_8022FA80_ovl19)($at)
/* 24E808 8022E0F8 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24E80C 8022E0FC 0018C880 */  sll        $t9, $t8, 2
/* 24E810 8022E100 00390821 */  addu       $at, $at, $t9
/* 24E814 8022E104 E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
/* 24E818 8022E108 8C480000 */  lw         $t0, 0x0($v0)
/* 24E81C 8022E10C 3C01800E */  lui        $at, %hi(D_800E5F90)
/* 24E820 8022E110 00085080 */  sll        $t2, $t0, 2
/* 24E824 8022E114 002A0821 */  addu       $at, $at, $t2
/* 24E828 8022E118 AC205F90 */  sw         $zero, %lo(D_800E5F90)($at)
/* 24E82C 8022E11C 8C490000 */  lw         $t1, 0x0($v0)
/* 24E830 8022E120 3C018023 */  lui        $at, %hi(D_8022FA84_ovl19)
/* 24E834 8022E124 C42AFA84 */  lwc1       $f10, %lo(D_8022FA84_ovl19)($at)
/* 24E838 8022E128 00096080 */  sll        $t4, $t1, 2
/* 24E83C 8022E12C 022C7021 */  addu       $t6, $s1, $t4
/* 24E840 8022E130 E5CA0000 */  swc1       $f10, 0x0($t6)
/* 24E844 8022E134 8C430000 */  lw         $v1, 0x0($v0)
/* 24E848 8022E138 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 24E84C 8022E13C 00031880 */  sll        $v1, $v1, 2
/* 24E850 8022E140 02236821 */  addu       $t5, $s1, $v1
/* 24E854 8022E144 C5B00000 */  lwc1       $f16, 0x0($t5)
/* 24E858 8022E148 00230821 */  addu       $at, $at, $v1
/* 24E85C 8022E14C E4306BD0 */  swc1       $f16, %lo(D_800E6BD0)($at)
.L8022E150_ovl19:
/* 24E860 8022E150 240F0001 */  addiu      $t7, $zero, 0x1
.L8022E154_ovl19:
/* 24E864 8022E154 3C01800D */  lui        $at, %hi(D_800D6E14)
/* 24E868 8022E158 0C02BC9F */  jal        func_800AF27C
/* 24E86C 8022E15C AC2F6E14 */   sw        $t7, %lo(D_800D6E14)($at)
/* 24E870 8022E160 0C002DAF */  jal        finish_current_thread
/* 24E874 8022E164 24040001 */   addiu     $a0, $zero, 0x1
/* 24E878 8022E168 3C048023 */  lui        $a0, %hi(D_8022FAB4_ovl19)
/* 24E87C 8022E16C 0C03FC73 */  jal        func_800FF1CC
/* 24E880 8022E170 8C84FAB4 */   lw        $a0, %lo(D_8022FAB4_ovl19)($a0)
/* 24E884 8022E174 8E4B0000 */  lw         $t3, 0x0($s2)
/* 24E888 8022E178 0C02C640 */  jal        func_800B1900
/* 24E88C 8022E17C 95640002 */   lhu       $a0, 0x2($t3)
/* 24E890 8022E180 8FBF0024 */  lw         $ra, 0x24($sp)
/* 24E894 8022E184 8FB00018 */  lw         $s0, 0x18($sp)
/* 24E898 8022E188 8FB1001C */  lw         $s1, 0x1C($sp)
/* 24E89C 8022E18C 8FB20020 */  lw         $s2, 0x20($sp)
/* 24E8A0 8022E190 03E00008 */  jr         $ra
/* 24E8A4 8022E194 27BD0028 */   addiu     $sp, $sp, 0x28
