glabel func_801843A0_ovl5
/* 12B810 801843A0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 12B814 801843A4 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 12B818 801843A8 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 12B81C 801843AC 0005C880 */  sll        $t9, $a1, 2
/* 12B820 801843B0 AFBF004C */  sw         $ra, 0x4C($sp)
/* 12B824 801843B4 AFB20048 */  sw         $s2, 0x48($sp)
/* 12B828 801843B8 AFB10044 */  sw         $s1, 0x44($sp)
/* 12B82C 801843BC AFB00040 */  sw         $s0, 0x40($sp)
/* 12B830 801843C0 F7BC0038 */  sdc1       $f28, 0x38($sp)
.L801843C4_ovl3:
/* 12B834 801843C4 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 12B838 801843C8 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 12B83C 801843CC F7B60020 */  sdc1       $f22, 0x20($sp)
/* 12B840 801843D0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 12B844 801843D4 AFA50064 */  sw         $a1, 0x64($sp)
/* 12B848 801843D8 0325C823 */  subu       $t9, $t9, $a1
.L801843DC_ovl3:
/* 12B84C 801843DC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 12B850 801843E0 0019C880 */  sll        $t9, $t9, 2
/* 12B854 801843E4 0325C821 */  addu       $t9, $t9, $a1
/* 12B858 801843E8 3C0C8019 */  lui        $t4, %hi(D_8018C30C_ovl5)
/* 12B85C 801843EC 3C018019 */  lui        $at, %hi(D_8018EE4C_ovl5)
/* 12B860 801843F0 258CC30C */  addiu      $t4, $t4, %lo(D_8018C30C_ovl5)
/* 12B864 801843F4 0019C880 */  sll        $t9, $t9, 2
/* 12B868 801843F8 00808825 */  or         $s1, $a0, $zero
/* 12B86C 801843FC 032C9021 */  addu       $s2, $t9, $t4
/* 12B870 80184400 AC2FEE4C */  sw         $t7, %lo(D_8018EE4C_ovl5)($at)
/* 12B874 80184404 0C02A422 */  jal        func_800A9088
/* 12B878 80184408 8E440000 */   lw        $a0, 0x0($s2)
/* 12B87C 8018440C 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 12B880 80184410 256BA7C4 */  addiu      $t3, $t3, %lo(D_8004A7C4)
/* 12B884 80184414 3C028019 */  lui        $v0, %hi(D_8018C300_ovl5)
/* 12B888 80184418 8D660000 */  lw         $a2, 0x0($t3)
/* 12B88C 8018441C 2442C300 */  addiu      $v0, $v0, %lo(D_8018C300_ovl5)
/* 12B890 80184420 C4460000 */  lwc1       $f6, 0x0($v0)
/* 12B894 80184424 C6440028 */  lwc1       $f4, 0x28($s2)
/* 12B898 80184428 8CCD0000 */  lw         $t5, 0x0($a2)
/* 12B89C 8018442C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 12B8A0 80184430 46062200 */  add.s      $f8, $f4, $f6
/* 12B8A4 80184434 000D7080 */  sll        $t6, $t5, 2
/* 12B8A8 80184438 002E0821 */  addu       $at, $at, $t6
/* 12B8AC 8018443C 8FAD0064 */  lw         $t5, 0x64($sp)
/* 12B8B0 80184440 E42825D0 */  swc1       $f8, %lo(gEntitiesNextPosXArray)($at)
.L80184444_ovl3:
/* 12B8B4 80184444 C4500004 */  lwc1       $f16, 0x4($v0)
/* 12B8B8 80184448 C64A002C */  lwc1       $f10, 0x2C($s2)
/* 12B8BC 8018444C 8CCF0000 */  lw         $t7, 0x0($a2)
/* 12B8C0 80184450 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 12B8C4 80184454 46105480 */  add.s      $f18, $f10, $f16
/* 12B8C8 80184458 000FC080 */  sll        $t8, $t7, 2
/* 12B8CC 8018445C 00380821 */  addu       $at, $at, $t8
/* 12B8D0 80184460 E4322790 */  swc1       $f18, %lo(gEntitiesNextPosYArray)($at)
/* 12B8D4 80184464 C4460008 */  lwc1       $f6, 0x8($v0)
/* 12B8D8 80184468 C6440030 */  lwc1       $f4, 0x30($s2)
/* 12B8DC 8018446C 8CD90000 */  lw         $t9, 0x0($a2)
/* 12B8E0 80184470 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 12B8E4 80184474 46062200 */  add.s      $f8, $f4, $f6
/* 12B8E8 80184478 00196080 */  sll        $t4, $t9, 2
/* 12B8EC 8018447C 002C0821 */  addu       $at, $at, $t4
/* 12B8F0 80184480 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 12B8F4 80184484 24010008 */  addiu      $at, $zero, 0x8
/* 12B8F8 80184488 55A1001A */  bnel       $t5, $at, .L801844F4_ovl5
/* 12B8FC 8018448C 8E440004 */   lw        $a0, 0x4($s2)
/* 12B900 80184490 8E440004 */  lw         $a0, 0x4($s2)
.L80184494_ovl3:
/* 12B904 80184494 50800006 */  beql       $a0, $zero, .L801844B0_ovl5
/* 12B908 80184498 8E440008 */   lw        $a0, 0x8($s2)
/* 12B90C 8018449C 0C02A7E6 */  jal        func_800A9F98
/* 12B910 801844A0 3C054300 */   lui       $a1, (0x43000000 >> 16)
/* 12B914 801844A4 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 12B918 801844A8 256BA7C4 */  addiu      $t3, $t3, %lo(D_8004A7C4)
/* 12B91C 801844AC 8E440008 */  lw         $a0, 0x8($s2)
.L801844B0_ovl5:
/* 12B920 801844B0 50800006 */  beql       $a0, $zero, .L801844CC_ovl5
/* 12B924 801844B4 8D6E0000 */   lw        $t6, 0x0($t3)
.L801844B8_ovl3:
/* 12B928 801844B8 0C02A7E6 */  jal        func_800A9F98
/* 12B92C 801844BC 3C054300 */   lui       $a1, (0x43000000 >> 16)
/* 12B930 801844C0 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 12B934 801844C4 256BA7C4 */  addiu      $t3, $t3, %lo(D_8004A7C4)
/* 12B938 801844C8 8D6E0000 */  lw         $t6, 0x0($t3)
.L801844CC_ovl5:
/* 12B93C 801844CC 3C19800E */  lui        $t9, %hi(D_800DFBD0)
/* 12B940 801844D0 4480B000 */  mtc1       $zero, $f22
/* 12B944 801844D4 8DCF0000 */  lw         $t7, 0x0($t6)
/* 12B948 801844D8 000FC080 */  sll        $t8, $t7, 2
/* 12B94C 801844DC 0338C821 */  addu       $t9, $t9, $t8
/* 12B950 801844E0 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
/* 12B954 801844E4 8F2C0078 */  lw         $t4, 0x78($t9)
/* 12B958 801844E8 1000000F */  b          .L80184528_ovl5
/* 12B95C 801844EC E5960044 */   swc1      $f22, 0x44($t4)
/* 12B960 801844F0 8E440004 */  lw         $a0, 0x4($s2)
.L801844F4_ovl5:
/* 12B964 801844F4 50800006 */  beql       $a0, $zero, .L80184510_ovl5
/* 12B968 801844F8 8E440008 */   lw        $a0, 0x8($s2)
/* 12B96C 801844FC 0C02A806 */  jal        func_800AA018
/* 12B970 80184500 00000000 */   nop
/* 12B974 80184504 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 12B978 80184508 256BA7C4 */  addiu      $t3, $t3, %lo(D_8004A7C4)
/* 12B97C 8018450C 8E440008 */  lw         $a0, 0x8($s2)
.L80184510_ovl5:
/* 12B980 80184510 10800005 */  beqz       $a0, .L80184528_ovl5
/* 12B984 80184514 00000000 */   nop
/* 12B988 80184518 0C02A806 */  jal        func_800AA018
/* 12B98C 8018451C 00000000 */   nop
/* 12B990 80184520 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 12B994 80184524 256BA7C4 */  addiu      $t3, $t3, %lo(D_8004A7C4)
.L80184528_ovl5:
/* 12B998 80184528 3C018019 */  lui        $at, %hi(D_8018DEEC_ovl5)
/* 12B99C 8018452C 3C10800B */  lui        $s0, %hi(func_800B1378)
/* 12B9A0 80184530 C43ADEEC */  lwc1       $f26, %lo(D_8018DEEC_ovl5)($at)
/* 12B9A4 80184534 26101378 */  addiu      $s0, $s0, %lo(func_800B1378)
glabel func_80184538_ovl3
/* 12B9A8 80184538 AE300048 */  sw         $s0, 0x48($s1)
/* 12B9AC 8018453C C64A001C */  lwc1       $f10, 0x1C($s2)
/* 12B9B0 80184540 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 12B9B4 80184544 4481E000 */  mtc1       $at, $f28
/* 12B9B8 80184548 461A5402 */  mul.s      $f16, $f10, $f26
/* 12B9BC 8018454C 8D660000 */  lw         $a2, 0x0($t3)
/* 12B9C0 80184550 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 12B9C4 80184554 4480B000 */  mtc1       $zero, $f22
/* 12B9C8 80184558 8CCD0000 */  lw         $t5, 0x0($a2)
/* 12B9CC 8018455C 3C08800E */  lui        $t0, %hi(gEntitiesScaleXArray)
/* 12B9D0 80184560 25084550 */  addiu      $t0, $t0, %lo(gEntitiesScaleXArray)
/* 12B9D4 80184564 461C8483 */  div.s      $f18, $f16, $f28
/* 12B9D8 80184568 000D7080 */  sll        $t6, $t5, 2
/* 12B9DC 8018456C 002E0821 */  addu       $at, $at, $t6
/* 12B9E0 80184570 3C09800E */  lui        $t1, %hi(gEntitiesScaleYArray)
/* 12B9E4 80184574 25294710 */  addiu      $t1, $t1, %lo(gEntitiesScaleYArray)
/* 12B9E8 80184578 3C0A800E */  lui        $t2, %hi(gEntitiesScaleZArray)
/* 12B9EC 8018457C 254A48D0 */  addiu      $t2, $t2, %lo(gEntitiesScaleZArray)
/* 12B9F0 80184580 00003825 */  or         $a3, $zero, $zero
/* 12B9F4 80184584 E4324010 */  swc1       $f18, %lo(gEntitiesAngleXArray)($at)
/* 12B9F8 80184588 C6440020 */  lwc1       $f4, 0x20($s2)
/* 12B9FC 8018458C 8CCF0000 */  lw         $t7, 0x0($a2)
/* 12BA00 80184590 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 12BA04 80184594 461A2182 */  mul.s      $f6, $f4, $f26
/* 12BA08 80184598 000FC080 */  sll        $t8, $t7, 2
/* 12BA0C 8018459C 00380821 */  addu       $at, $at, $t8
/* 12BA10 801845A0 461C3203 */  div.s      $f8, $f6, $f28
/* 12BA14 801845A4 E42841D0 */  swc1       $f8, %lo(gEntitiesAngleYArray)($at)
/* 12BA18 801845A8 C64A0024 */  lwc1       $f10, 0x24($s2)
/* 12BA1C 801845AC 8CD90000 */  lw         $t9, 0x0($a2)
/* 12BA20 801845B0 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
/* 12BA24 801845B4 461A5402 */  mul.s      $f16, $f10, $f26
/* 12BA28 801845B8 00196080 */  sll        $t4, $t9, 2
/* 12BA2C 801845BC 002C0821 */  addu       $at, $at, $t4
/* 12BA30 801845C0 461C8483 */  div.s      $f18, $f16, $f28
/* 12BA34 801845C4 E4324390 */  swc1       $f18, %lo(gEntitiesAngleZArray)($at)
/* 12BA38 801845C8 8CCD0000 */  lw         $t5, 0x0($a2)
/* 12BA3C 801845CC 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 12BA40 801845D0 44813000 */  mtc1       $at, $f6
/* 12BA44 801845D4 000D7080 */  sll        $t6, $t5, 2
/* 12BA48 801845D8 010E7821 */  addu       $t7, $t0, $t6
/* 12BA4C 801845DC E5F60000 */  swc1       $f22, 0x0($t7)
/* 12BA50 801845E0 8CD80000 */  lw         $t8, 0x0($a2)
/* 12BA54 801845E4 0018C880 */  sll        $t9, $t8, 2
/* 12BA58 801845E8 01396021 */  addu       $t4, $t1, $t9
/* 12BA5C 801845EC E5960000 */  swc1       $f22, 0x0($t4)
/* 12BA60 801845F0 8CCD0000 */  lw         $t5, 0x0($a2)
/* 12BA64 801845F4 000D7080 */  sll        $t6, $t5, 2
/* 12BA68 801845F8 014E7821 */  addu       $t7, $t2, $t6
/* 12BA6C 801845FC E5F60000 */  swc1       $f22, 0x0($t7)
/* 12BA70 80184600 C644000C */  lwc1       $f4, 0xC($s2)
/* 12BA74 80184604 46062503 */  div.s      $f20, $f4, $f6
.L80184608_ovl5:
/* 12BA78 80184608 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 12BA7C 8018460C 256BA7C4 */  addiu      $t3, $t3, %lo(D_8004A7C4)
/* 12BA80 80184610 8D660000 */  lw         $a2, 0x0($t3)
/* 12BA84 80184614 3C08800E */  lui        $t0, %hi(gEntitiesScaleXArray)
/* 12BA88 80184618 25084550 */  addiu      $t0, $t0, %lo(gEntitiesScaleXArray)
/* 12BA8C 8018461C 8CD80000 */  lw         $t8, 0x0($a2)
/* 12BA90 80184620 3C09800E */  lui        $t1, %hi(gEntitiesScaleYArray)
/* 12BA94 80184624 25294710 */  addiu      $t1, $t1, %lo(gEntitiesScaleYArray)
/* 12BA98 80184628 0018C880 */  sll        $t9, $t8, 2
/* 12BA9C 8018462C 01191021 */  addu       $v0, $t0, $t9
/* 12BAA0 80184630 C4480000 */  lwc1       $f8, 0x0($v0)
/* 12BAA4 80184634 3C0A800E */  lui        $t2, %hi(gEntitiesScaleZArray)
/* 12BAA8 80184638 254A48D0 */  addiu      $t2, $t2, %lo(gEntitiesScaleZArray)
/* 12BAAC 8018463C 46144280 */  add.s      $f10, $f8, $f20
/* 12BAB0 80184640 24040001 */  addiu      $a0, $zero, 0x1
/* 12BAB4 80184644 E44A0000 */  swc1       $f10, 0x0($v0)
/* 12BAB8 80184648 8CCC0000 */  lw         $t4, 0x0($a2)
/* 12BABC 8018464C 000C6880 */  sll        $t5, $t4, 2
/* 12BAC0 80184650 012D1821 */  addu       $v1, $t1, $t5
/* 12BAC4 80184654 C4700000 */  lwc1       $f16, 0x0($v1)
/* 12BAC8 80184658 46148480 */  add.s      $f18, $f16, $f20
/* 12BACC 8018465C E4720000 */  swc1       $f18, 0x0($v1)
/* 12BAD0 80184660 8CCE0000 */  lw         $t6, 0x0($a2)
/* 12BAD4 80184664 AFA70054 */  sw         $a3, 0x54($sp)
/* 12BAD8 80184668 000E7880 */  sll        $t7, $t6, 2
/* 12BADC 8018466C 014F2821 */  addu       $a1, $t2, $t7
/* 12BAE0 80184670 C4A40000 */  lwc1       $f4, 0x0($a1)
/* 12BAE4 80184674 46142180 */  add.s      $f6, $f4, $f20
/* 12BAE8 80184678 0C002DAF */  jal        finish_current_thread
/* 12BAEC 8018467C E4A60000 */   swc1      $f6, 0x0($a1)
/* 12BAF0 80184680 8FA70054 */  lw         $a3, 0x54($sp)
/* 12BAF4 80184684 24010004 */  addiu      $at, $zero, 0x4
/* 12BAF8 80184688 24E70001 */  addiu      $a3, $a3, 0x1
/* 12BAFC 8018468C 14E1FFDE */  bne        $a3, $at, .L80184608_ovl5
/* 12BB00 80184690 00000000 */   nop
/* 12BB04 80184694 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 12BB08 80184698 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 12BB0C 8018469C C640000C */  lwc1       $f0, 0xC($s2)
/* 12BB10 801846A0 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 12BB14 801846A4 8CD80000 */  lw         $t8, 0x0($a2)
/* 12BB18 801846A8 0018C880 */  sll        $t9, $t8, 2
/* 12BB1C 801846AC 00390821 */  addu       $at, $at, $t9
/* 12BB20 801846B0 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 12BB24 801846B4 8CCC0000 */  lw         $t4, 0x0($a2)
/* 12BB28 801846B8 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 12BB2C 801846BC 8FB80064 */  lw         $t8, 0x64($sp)
/* 12BB30 801846C0 000C6880 */  sll        $t5, $t4, 2
/* 12BB34 801846C4 002D0821 */  addu       $at, $at, $t5
/* 12BB38 801846C8 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 12BB3C 801846CC 8CCE0000 */  lw         $t6, 0x0($a2)
/* 12BB40 801846D0 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 12BB44 801846D4 2719FFFE */  addiu      $t9, $t8, -0x2
/* 12BB48 801846D8 000E7880 */  sll        $t7, $t6, 2
/* 12BB4C 801846DC 002F0821 */  addu       $at, $at, $t7
/* 12BB50 801846E0 E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
/* 12BB54 801846E4 2F210048 */  sltiu      $at, $t9, 0x48
/* 12BB58 801846E8 1020005A */  beqz       $at, .L80184854_ovl5
/* 12BB5C 801846EC 0019C880 */   sll       $t9, $t9, 2
/* 12BB60 801846F0 3C018019 */  lui        $at, %hi(jtbl_8018DEF0_ovl5)
/* 12BB64 801846F4 00390821 */  addu       $at, $at, $t9
/* 12BB68 801846F8 8C39DEF0 */  lw         $t9, %lo(jtbl_8018DEF0_ovl5)($at)
/* 12BB6C 801846FC 03200008 */  jr         $t9
/* 12BB70 80184700 00000000 */   nop
/* 12BB74 80184704 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 12BB78 80184708 4481C000 */  mtc1       $at, $f24
/* 12BB7C 8018470C 4600B506 */  mov.s      $f20, $f22
/* 12BB80 80184710 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 12BB84 80184714 4481B000 */  mtc1       $at, $f22
.L80184718_ovl3:
/* 12BB88 80184718 00000000 */  nop
.L8018471C_ovl5:
/* 12BB8C 8018471C 461AA202 */  mul.s      $f8, $f20, $f26
/* 12BB90 80184720 4618A500 */  add.s      $f20, $f20, $f24
/* 12BB94 80184724 8CCC0000 */  lw         $t4, 0x0($a2)
/* 12BB98 80184728 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 12BB9C 8018472C 4614B03C */  c.lt.s     $f22, $f20
/* 12BBA0 80184730 000C6880 */  sll        $t5, $t4, 2
/* 12BBA4 80184734 461C4283 */  div.s      $f10, $f8, $f28
/* 12BBA8 80184738 002D0821 */  addu       $at, $at, $t5
/* 12BBAC 8018473C 45000002 */  bc1f       .L80184748_ovl5
/* 12BBB0 80184740 E42A4010 */   swc1      $f10, %lo(gEntitiesAngleXArray)($at)
/* 12BBB4 80184744 4616A501 */  sub.s      $f20, $f20, $f22
.L80184748_ovl5:
/* 12BBB8 80184748 0C002DAF */  jal        finish_current_thread
/* 12BBBC 8018474C 24040001 */   addiu     $a0, $zero, 0x1
/* 12BBC0 80184750 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 12BBC4 80184754 1000FFF1 */  b          .L8018471C_ovl5
/* 12BBC8 80184758 8CC6A7C4 */   lw        $a2, %lo(D_8004A7C4)($a2)
/* 12BBCC 8018475C 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 12BBD0 80184760 4481C000 */  mtc1       $at, $f24
/* 12BBD4 80184764 4600B506 */  mov.s      $f20, $f22
/* 12BBD8 80184768 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 12BBDC 8018476C 4481B000 */  mtc1       $at, $f22
/* 12BBE0 80184770 00000000 */  nop
.L80184774_ovl5:
/* 12BBE4 80184774 461AA402 */  mul.s      $f16, $f20, $f26
/* 12BBE8 80184778 4618A500 */  add.s      $f20, $f20, $f24
/* 12BBEC 8018477C 8CCE0000 */  lw         $t6, %lo(D_8004ADB0 + 0x5250)($a2)
/* 12BBF0 80184780 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 12BBF4 80184784 4614B03C */  c.lt.s     $f22, $f20
/* 12BBF8 80184788 000E7880 */  sll        $t7, $t6, 2
/* 12BBFC 8018478C 461C8483 */  div.s      $f18, $f16, $f28
/* 12BC00 80184790 002F0821 */  addu       $at, $at, $t7
/* 12BC04 80184794 45000002 */  bc1f       .L801847A0_ovl5
/* 12BC08 80184798 E43241D0 */   swc1      $f18, %lo(gEntitiesAngleYArray)($at)
/* 12BC0C 8018479C 4616A501 */  sub.s      $f20, $f20, $f22
.L801847A0_ovl5:
/* 12BC10 801847A0 0C002DAF */  jal        finish_current_thread
/* 12BC14 801847A4 24040001 */   addiu     $a0, $zero, 0x1
/* 12BC18 801847A8 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 12BC1C 801847AC 1000FFF1 */  b          .L80184774_ovl5
/* 12BC20 801847B0 8CC6A7C4 */   lw        $a2, %lo(D_8004A7C4)($a2)
.L801847B4_ovl3:
/* 12BC24 801847B4 3C120001 */  lui        $s2, (0x10028 >> 16)
/* 12BC28 801847B8 36520028 */  ori        $s2, $s2, (0x10028 & 0xFFFF)
.L801847BC_ovl5:
/* 12BC2C 801847BC 0C02A806 */  jal        func_800AA018
/* 12BC30 801847C0 02402025 */   or        $a0, $s2, $zero
/* 12BC34 801847C4 0C02BC9F */  jal        func_800AF27C
/* 12BC38 801847C8 AE300048 */   sw        $s0, 0x48($s1)
/* 12BC3C 801847CC 3C040001 */  lui        $a0, (0x10022 >> 16)
/* 12BC40 801847D0 0C02A806 */  jal        func_800AA018
/* 12BC44 801847D4 34840022 */   ori       $a0, $a0, (0x10022 & 0xFFFF)
/* 12BC48 801847D8 0C02BC9F */  jal        func_800AF27C
/* 12BC4C 801847DC AE300048 */   sw        $s0, 0x48($s1)
/* 12BC50 801847E0 3C040001 */  lui        $a0, (0x10023 >> 16)
/* 12BC54 801847E4 0C02A806 */  jal        func_800AA018
/* 12BC58 801847E8 34840023 */   ori       $a0, $a0, (0x10023 & 0xFFFF)
/* 12BC5C 801847EC 0C02BC9F */  jal        func_800AF27C
/* 12BC60 801847F0 AE300048 */   sw        $s0, 0x48($s1)
/* 12BC64 801847F4 1000FFF1 */  b          .L801847BC_ovl5
/* 12BC68 801847F8 00000000 */   nop
/* 12BC6C 801847FC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 12BC70 80184800 4481A000 */  mtc1       $at, $f20
/* 12BC74 80184804 0C02BB30 */  jal        func_800AECC0
/* 12BC78 80184808 4600A306 */   mov.s     $f12, $f20
/* 12BC7C 8018480C 0C02BB48 */  jal        func_800AED20
/* 12BC80 80184810 4600A306 */   mov.s     $f12, $f20
/* 12BC84 80184814 1000000F */  b          .L80184854_ovl5
/* 12BC88 80184818 00000000 */   nop
/* 12BC8C 8018481C 8E440004 */  lw         $a0, 0x4($s2)
.L80184820_ovl5:
/* 12BC90 80184820 50800004 */  beql       $a0, $zero, .L80184834_ovl5
/* 12BC94 80184824 8E440008 */   lw        $a0, 0x8($s2)
/* 12BC98 80184828 0C02A806 */  jal        func_800AA018
/* 12BC9C 8018482C 00000000 */   nop
/* 12BCA0 80184830 8E440008 */  lw         $a0, 0x8($s2)
.L80184834_ovl5:
/* 12BCA4 80184834 10800003 */  beqz       $a0, .L80184844_ovl5
/* 12BCA8 80184838 00000000 */   nop
/* 12BCAC 8018483C 0C02A806 */  jal        func_800AA018
/* 12BCB0 80184840 00000000 */   nop
.L80184844_ovl5:
/* 12BCB4 80184844 0C02BC9F */  jal        func_800AF27C
/* 12BCB8 80184848 AE300048 */   sw        $s0, 0x48($s1)
/* 12BCBC 8018484C 1000FFF4 */  b          .L80184820_ovl5
/* 12BCC0 80184850 8E440004 */   lw        $a0, 0x4($s2)
.L80184854_ovl5:
/* 12BCC4 80184854 0C02BE85 */  jal        func_800AFA14
/* 12BCC8 80184858 00000000 */   nop
/* 12BCCC 8018485C 8FBF004C */  lw         $ra, 0x4C($sp)
/* 12BCD0 80184860 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 12BCD4 80184864 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 12BCD8 80184868 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 12BCDC 8018486C D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 12BCE0 80184870 D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 12BCE4 80184874 8FB00040 */  lw         $s0, 0x40($sp)
/* 12BCE8 80184878 8FB10044 */  lw         $s1, 0x44($sp)
/* 12BCEC 8018487C 8FB20048 */  lw         $s2, 0x48($sp)
/* 12BCF0 80184880 03E00008 */  jr         $ra
/* 12BCF4 80184884 27BD0060 */   addiu     $sp, $sp, 0x60
