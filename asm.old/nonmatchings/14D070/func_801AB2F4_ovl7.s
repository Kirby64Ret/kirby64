glabel func_801AB2F4_ovl7
/* 151364 801AB2F4 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 151368 801AB2F8 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 15136C 801AB2FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 151370 801AB300 AFBF0014 */  sw         $ra, 0x14($sp)
/* 151374 801AB304 AFA40018 */  sw         $a0, 0x18($sp)
/* 151378 801AB308 8DC20000 */  lw         $v0, 0x0($t6)
/* 15137C 801AB30C 3C0F800E */  lui        $t7, %hi(D_800E7730)
/* 151380 801AB310 24010006 */  addiu      $at, $zero, 0x6
/* 151384 801AB314 01E27821 */  addu       $t7, $t7, $v0
/* 151388 801AB318 91EF7730 */  lbu        $t7, %lo(D_800E7730)($t7)
/* 15138C 801AB31C 3C03800E */  lui        $v1, %hi(D_800E77A0)
/* 151390 801AB320 0002C040 */  sll        $t8, $v0, 1
/* 151394 801AB324 15E10009 */  bne        $t7, $at, .L801AB34C_ovl7
/* 151398 801AB328 00781821 */   addu      $v1, $v1, $t8
/* 15139C 801AB32C 946377A0 */  lhu        $v1, %lo(D_800E77A0)($v1)
/* 1513A0 801AB330 18600006 */  blez       $v1, .L801AB34C_ovl7
/* 1513A4 801AB334 2861002C */   slti      $at, $v1, 0x2C
/* 1513A8 801AB338 10200004 */  beqz       $at, .L801AB34C_ovl7
/* 1513AC 801AB33C 00000000 */   nop
/* 1513B0 801AB340 0C070162 */  jal        func_801C0588_ovl7
/* 1513B4 801AB344 00000000 */   nop
/* 1513B8 801AB348 14400092 */  bnez       $v0, .L801AB594_ovl7
.L801AB34C_ovl7:
/* 1513BC 801AB34C 3C198005 */   lui       $t9, %hi(D_8004A7C4)
/* 1513C0 801AB350 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1513C4 801AB354 3C03800F */  lui        $v1, %hi(D_800E83E0)
/* 1513C8 801AB358 3C08800F */  lui        $t0, %hi(D_800E8760)
/* 1513CC 801AB35C 8F220000 */  lw         $v0, 0x0($t9)
/* 1513D0 801AB360 24010012 */  addiu      $at, $zero, 0x12
/* 1513D4 801AB364 00021080 */  sll        $v0, $v0, 2
/* 1513D8 801AB368 00621821 */  addu       $v1, $v1, $v0
/* 1513DC 801AB36C 8C6383E0 */  lw         $v1, %lo(D_800E83E0)($v1)
/* 1513E0 801AB370 01024021 */  addu       $t0, $t0, $v0
/* 1513E4 801AB374 14600004 */  bnez       $v1, .L801AB388_ovl7
/* 1513E8 801AB378 00000000 */   nop
/* 1513EC 801AB37C 8D088760 */  lw         $t0, %lo(D_800E8760)($t0)
/* 1513F0 801AB380 11000012 */  beqz       $t0, .L801AB3CC_ovl7
/* 1513F4 801AB384 00000000 */   nop
.L801AB388_ovl7:
/* 1513F8 801AB388 14610009 */  bne        $v1, $at, .L801AB3B0_ovl7
/* 1513FC 801AB38C 3C04800E */   lui       $a0, %hi(gEntityGObjProcessArray)
/* 151400 801AB390 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 151404 801AB394 00822021 */  addu       $a0, $a0, $v0
/* 151408 801AB398 3C05801B */  lui        $a1, %hi(func_801AC33C_ovl7)
/* 15140C 801AB39C 24A5C33C */  addiu      $a1, $a1, %lo(func_801AC33C_ovl7)
/* 151410 801AB3A0 0C02C7B2 */  jal        assign_new_process_entry
/* 151414 801AB3A4 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 151418 801AB3A8 1000007B */  b          .L801AB598_ovl7
/* 15141C 801AB3AC 8FBF0014 */   lw        $ra, 0x14($sp)
.L801AB3B0_ovl7:
/* 151420 801AB3B0 00822021 */  addu       $a0, $a0, $v0
/* 151424 801AB3B4 3C05801B */  lui        $a1, %hi(func_801AC11C_ovl7)
/* 151428 801AB3B8 24A5C11C */  addiu      $a1, $a1, %lo(func_801AC11C_ovl7)
/* 15142C 801AB3BC 0C02C7B2 */  jal        assign_new_process_entry
/* 151430 801AB3C0 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 151434 801AB3C4 10000074 */  b          .L801AB598_ovl7
/* 151438 801AB3C8 8FBF0014 */   lw        $ra, 0x14($sp)
.L801AB3CC_ovl7:
/* 15143C 801AB3CC 0C06AC02 */  jal        func_801AB008_ovl7
/* 151440 801AB3D0 00000000 */   nop
/* 151444 801AB3D4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 151448 801AB3D8 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 15144C 801AB3DC 3C09800F */  lui        $t1, %hi(D_800E8AE0)
/* 151450 801AB3E0 3C014160 */  lui        $at, (0x41600000 >> 16)
/* 151454 801AB3E4 8C620000 */  lw         $v0, 0x0($v1)
/* 151458 801AB3E8 00021080 */  sll        $v0, $v0, 2
/* 15145C 801AB3EC 01224821 */  addu       $t1, $t1, $v0
/* 151460 801AB3F0 8D298AE0 */  lw         $t1, %lo(D_800E8AE0)($t1)
/* 151464 801AB3F4 312A0001 */  andi       $t2, $t1, 0x1
/* 151468 801AB3F8 51400017 */  beql       $t2, $zero, .L801AB458_ovl7
/* 15146C 801AB3FC 44810000 */   mtc1      $at, $f0
/* 151470 801AB400 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 151474 801AB404 44810000 */  mtc1       $at, $f0
/* 151478 801AB408 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 15147C 801AB40C 00220821 */  addu       $at, $at, $v0
/* 151480 801AB410 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 151484 801AB414 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 151488 801AB418 00220821 */  addu       $at, $at, $v0
/* 15148C 801AB41C 46002182 */  mul.s      $f6, $f4, $f0
/* 151490 801AB420 44804000 */  mtc1       $zero, $f8
/* 151494 801AB424 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* 151498 801AB428 8C6B0000 */  lw         $t3, 0x0($v1)
/* 15149C 801AB42C 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1514A0 801AB430 000B6080 */  sll        $t4, $t3, 2
/* 1514A4 801AB434 002C0821 */  addu       $at, $at, $t4
/* 1514A8 801AB438 E4286690 */  swc1       $f8, %lo(D_800E6690)($at)
/* 1514AC 801AB43C 8C6D0000 */  lw         $t5, 0x0($v1)
/* 1514B0 801AB440 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1514B4 801AB444 000D7080 */  sll        $t6, $t5, 2
/* 1514B8 801AB448 002E0821 */  addu       $at, $at, $t6
/* 1514BC 801AB44C 10000014 */  b          .L801AB4A0_ovl7
/* 1514C0 801AB450 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
/* 1514C4 801AB454 44810000 */  mtc1       $at, $f0
.L801AB458_ovl7:
/* 1514C8 801AB458 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1514CC 801AB45C 00220821 */  addu       $at, $at, $v0
/* 1514D0 801AB460 C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
/* 1514D4 801AB464 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1514D8 801AB468 00220821 */  addu       $at, $at, $v0
/* 1514DC 801AB46C 46005402 */  mul.s      $f16, $f10, $f0
/* 1514E0 801AB470 44809000 */  mtc1       $zero, $f18
/* 1514E4 801AB474 E43064D0 */  swc1       $f16, %lo(D_800E64D0)($at)
/* 1514E8 801AB478 8C6F0000 */  lw         $t7, 0x0($v1)
/* 1514EC 801AB47C 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1514F0 801AB480 000FC080 */  sll        $t8, $t7, 2
/* 1514F4 801AB484 00380821 */  addu       $at, $at, $t8
/* 1514F8 801AB488 E4326690 */  swc1       $f18, %lo(D_800E6690)($at)
/* 1514FC 801AB48C 8C790000 */  lw         $t9, 0x0($v1)
/* 151500 801AB490 3C01800E */  lui        $at, %hi(D_800E6850)
/* 151504 801AB494 00194080 */  sll        $t0, $t9, 2
/* 151508 801AB498 00280821 */  addu       $at, $at, $t0
/* 15150C 801AB49C E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L801AB4A0_ovl7:
/* 151510 801AB4A0 8C620000 */  lw         $v0, 0x0($v1)
/* 151514 801AB4A4 3C09800E */  lui        $t1, %hi(D_800E7730)
/* 151518 801AB4A8 3C03800E */  lui        $v1, %hi(D_800E77A0)
/* 15151C 801AB4AC 01224821 */  addu       $t1, $t1, $v0
/* 151520 801AB4B0 91297730 */  lbu        $t1, %lo(D_800E7730)($t1)
/* 151524 801AB4B4 24010006 */  addiu      $at, $zero, 0x6
/* 151528 801AB4B8 00025040 */  sll        $t2, $v0, 1
/* 15152C 801AB4BC 15210018 */  bne        $t1, $at, .L801AB520_ovl7
/* 151530 801AB4C0 006A1821 */   addu      $v1, $v1, $t2
/* 151534 801AB4C4 946377A0 */  lhu        $v1, %lo(D_800E77A0)($v1)
/* 151538 801AB4C8 28610008 */  slti       $at, $v1, 0x8
/* 15153C 801AB4CC 14200014 */  bnez       $at, .L801AB520_ovl7
/* 151540 801AB4D0 2861002C */   slti      $at, $v1, 0x2C
/* 151544 801AB4D4 10200012 */  beqz       $at, .L801AB520_ovl7
/* 151548 801AB4D8 3C04801D */   lui       $a0, %hi(D_801CB134_ovl7)
/* 15154C 801AB4DC 0C068E4E */  jal        func_801A3938
/* 151550 801AB4E0 2484B134 */   addiu     $a0, $a0, %lo(D_801CB134_ovl7)
/* 151554 801AB4E4 3C04801A */  lui        $a0, %hi(func_801A3864_ovl7)
/* 151558 801AB4E8 0C068DB3 */  jal        func_801A36CC
/* 15155C 801AB4EC 24843864 */   addiu     $a0, $a0, %lo(func_801A3864_ovl7)
/* 151560 801AB4F0 0C06835D */  jal        func_801A0D74_ovl7
/* 151564 801AB4F4 8FA40018 */   lw        $a0, 0x18($sp)
/* 151568 801AB4F8 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 15156C 801AB4FC 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 151570 801AB500 3C04801D */  lui        $a0, %hi(D_801CA7DC_ovl7)
/* 151574 801AB504 2484A7DC */  addiu      $a0, $a0, %lo(D_801CA7DC_ovl7)
/* 151578 801AB508 0C0445EF */  jal        func_801117BC
/* 15157C 801AB50C 8D650000 */   lw        $a1, 0x0($t3)
/* 151580 801AB510 0C044713 */  jal        func_80111C4C
/* 151584 801AB514 00402025 */   or        $a0, $v0, $zero
/* 151588 801AB518 10000012 */  b          .L801AB564_ovl7
/* 15158C 801AB51C 00000000 */   nop
.L801AB520_ovl7:
/* 151590 801AB520 0C06835D */  jal        func_801A0D74_ovl7
/* 151594 801AB524 8FA40018 */   lw        $a0, 0x18($sp)
/* 151598 801AB528 10400006 */  beqz       $v0, .L801AB544_ovl7
/* 15159C 801AB52C 3C04801D */   lui       $a0, %hi(D_801CB044_ovl7)
/* 1515A0 801AB530 0C068E4E */  jal        func_801A3938
/* 1515A4 801AB534 2484B044 */   addiu     $a0, $a0, %lo(D_801CB044_ovl7)
/* 1515A8 801AB538 3C04801A */  lui        $a0, %hi(func_801A3864_ovl7)
/* 1515AC 801AB53C 0C068DB3 */  jal        func_801A36CC
/* 1515B0 801AB540 24843864 */   addiu     $a0, $a0, %lo(func_801A3864_ovl7)
.L801AB544_ovl7:
/* 1515B4 801AB544 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 1515B8 801AB548 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 1515BC 801AB54C 3C04801D */  lui        $a0, %hi(D_801CA738_ovl7)
/* 1515C0 801AB550 2484A738 */  addiu      $a0, $a0, %lo(D_801CA738_ovl7)
/* 1515C4 801AB554 0C0445EF */  jal        func_801117BC
/* 1515C8 801AB558 8D850000 */   lw        $a1, 0x0($t4)
/* 1515CC 801AB55C 0C044713 */  jal        func_80111C4C
/* 1515D0 801AB560 00402025 */   or        $a0, $v0, $zero
.L801AB564_ovl7:
/* 1515D4 801AB564 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 1515D8 801AB568 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 1515DC 801AB56C 3C18800F */  lui        $t8, %hi(D_800E8920)
/* 1515E0 801AB570 27188920 */  addiu      $t8, $t8, %lo(D_800E8920)
/* 1515E4 801AB574 8DAE0000 */  lw         $t6, 0x0($t5)
/* 1515E8 801AB578 24010001 */  addiu      $at, $zero, 0x1
/* 1515EC 801AB57C 000E7880 */  sll        $t7, $t6, 2
/* 1515F0 801AB580 01F81021 */  addu       $v0, $t7, $t8
/* 1515F4 801AB584 8C590000 */  lw         $t9, 0x0($v0)
/* 1515F8 801AB588 57210003 */  bnel       $t9, $at, .L801AB598_ovl7
/* 1515FC 801AB58C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 151600 801AB590 AC400000 */  sw         $zero, 0x0($v0)
.L801AB594_ovl7:
/* 151604 801AB594 8FBF0014 */  lw         $ra, 0x14($sp)
.L801AB598_ovl7:
/* 151608 801AB598 27BD0018 */  addiu      $sp, $sp, 0x18
/* 15160C 801AB59C 03E00008 */  jr         $ra
/* 151610 801AB5A0 00000000 */   nop
