glabel func_801DD8BC_ovl9
/* 18B90C 801DD8BC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
.L801DD8C0_ovl15:
/* 18B910 801DD8C0 2442A7C4 */  addiu      $v0, $v0, %lo(D_8004A7C4)
/* 18B914 801DD8C4 8C430000 */  lw         $v1, 0x0($v0)
/* 18B918 801DD8C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18B91C 801DD8CC AFBF0014 */  sw         $ra, 0x14($sp)
.L801DD8D0_ovl14:
/* 18B920 801DD8D0 AFA40018 */  sw         $a0, 0x18($sp)
.L801DD8D4_ovl13:
/* 18B924 801DD8D4 8C6F0000 */  lw         $t7, 0x0($v1)
/* 18B928 801DD8D8 3C01800E */  lui        $at, %hi(D_800E76C0)
.L801DD8DC_ovl17:
/* 18B92C 801DD8DC 240E00FF */  addiu      $t6, $zero, 0xFF
/* 18B930 801DD8E0 002F0821 */  addu       $at, $at, $t7
/* 18B934 801DD8E4 A02E76C0 */  sb         $t6, %lo(D_800E76C0)($at)
.L801DD8E8_ovl11:
/* 18B938 801DD8E8 8C790000 */  lw         $t9, 0x0($v1)
/* 18B93C 801DD8EC 3C01800E */  lui        $at, %hi(D_800DDFD0)
glabel func_801DD8F0_ovl17
/* 18B940 801DD8F0 24180005 */  addiu      $t8, $zero, 0x5
.L801DD8F4_ovl15:
/* 18B944 801DD8F4 00194880 */  sll        $t1, $t9, 2
.L801DD8F8_ovl15:
/* 18B948 801DD8F8 00290821 */  addu       $at, $at, $t1
glabel func_801DD8FC_ovl12
/* 18B94C 801DD8FC AC38DFD0 */  sw         $t8, %lo(D_800DDFD0)($at)
glabel func_801DD900_ovl15
/* 18B950 801DD900 8C6B0000 */  lw         $t3, 0x0($v1)
/* 18B954 801DD904 3C05800E */  lui        $a1, %hi(D_800E1B50)
/* 18B958 801DD908 24A51B50 */  addiu      $a1, $a1, %lo(D_800E1B50)
.L801DD90C_ovl15:
/* 18B95C 801DD90C 000B6080 */  sll        $t4, $t3, 2
.L801DD910_ovl15:
/* 18B960 801DD910 00AC6821 */  addu       $t5, $a1, $t4
/* 18B964 801DD914 8DAE0000 */  lw         $t6, 0x0($t5)
/* 18B968 801DD918 3C0A801D */  lui        $t2, %hi(D_801C8080)
.L801DD91C_ovl16:
/* 18B96C 801DD91C 254A8080 */  addiu      $t2, $t2, %lo(D_801C8080)
/* 18B970 801DD920 ADCA008C */  sw         $t2, 0x8C($t6)
glabel func_801DD924_ovl12
/* 18B974 801DD924 8C590000 */  lw         $t9, 0x0($v0)
.L801DD928_ovl14:
/* 18B978 801DD928 3C0F801D */  lui        $t7, %hi(D_801CB764)
/* 18B97C 801DD92C 25EFB764 */  addiu      $t7, $t7, %lo(D_801CB764)
/* 18B980 801DD930 8F380000 */  lw         $t8, 0x0($t9)
/* 18B984 801DD934 24040001 */  addiu      $a0, $zero, 0x1
/* 18B988 801DD938 00184880 */  sll        $t1, $t8, 2
/* 18B98C 801DD93C 00A95821 */  addu       $t3, $a1, $t1
.L801DD940_ovl13:
/* 18B990 801DD940 8D6C0000 */  lw         $t4, 0x0($t3)
/* 18B994 801DD944 0C03EE45 */  jal        func_800FB914
.L801DD948_ovl14:
/* 18B998 801DD948 AD8F0098 */   sw        $t7, 0x98($t4)
/* 18B99C 801DD94C 0C029D9E */  jal        play_sound
glabel func_801DD950_ovl15
/* 18B9A0 801DD950 24040268 */   addiu     $a0, $zero, 0x268
/* 18B9A4 801DD954 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 18B9A8 801DD958 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 18B9AC 801DD95C 44806000 */  mtc1       $zero, $f12
/* 18B9B0 801DD960 3C01800F */  lui        $at, %hi(D_800EB160)
glabel func_801DD964_ovl17
/* 18B9B4 801DD964 8DAA0000 */  lw         $t2, 0x0($t5)
/* 18B9B8 801DD968 000A7080 */  sll        $t6, $t2, 2
glabel func_801DD96C_ovl14
/* 18B9BC 801DD96C 002E0821 */  addu       $at, $at, $t6
/* 18B9C0 801DD970 0C02BB30 */  jal        func_800AECC0
/* 18B9C4 801DD974 E42CB160 */   swc1      $f12, %lo(D_800EB160)($at)
/* 18B9C8 801DD978 44806000 */  mtc1       $zero, $f12
/* 18B9CC 801DD97C 0C02BB48 */  jal        func_800AED20
/* 18B9D0 801DD980 00000000 */   nop
/* 18B9D4 801DD984 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 18B9D8 801DD988 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 18B9DC 801DD98C 3C01800F */  lui        $at, %hi(D_800E8920)
/* 18B9E0 801DD990 24190001 */  addiu      $t9, $zero, 0x1
.L801DD994_ovl14:
/* 18B9E4 801DD994 8F090000 */  lw         $t1, 0x0($t8)
/* 18B9E8 801DD998 00095880 */  sll        $t3, $t1, 2
/* 18B9EC 801DD99C 002B0821 */  addu       $at, $at, $t3
/* 18B9F0 801DD9A0 0C02CCFD */  jal        func_800B33F4
/* 18B9F4 801DD9A4 AC398920 */   sw        $t9, %lo(D_800E8920)($at)
/* 18B9F8 801DD9A8 0C077C6C */  jal        func_801DF1B0_ovl9
.L801DD9AC_ovl10:
/* 18B9FC 801DD9AC 00000000 */   nop
/* 18BA00 801DD9B0 3C018022 */  lui        $at, %hi(D_8021CF68_ovl9)
/* 18BA04 801DD9B4 C42CCF68 */  lwc1       $f12, %lo(D_8021CF68_ovl9)($at)
/* 18BA08 801DD9B8 44807000 */  mtc1       $zero, $f14
.L801DD9BC_ovl16:
/* 18BA0C 801DD9BC 46000086 */  mov.s      $f2, $f0
.L801DD9C0_ovl13:
/* 18BA10 801DD9C0 4600603C */  c.lt.s     $f12, $f0
.L801DD9C4_ovl13:
/* 18BA14 801DD9C4 3C018022 */  lui        $at, %hi(D_8021CF6C_ovl9)
glabel func_801DD9C8_ovl11
/* 18BA18 801DD9C8 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 18BA1C 801DD9CC 45000007 */  bc1f       .L801DD9EC_ovl9
/* 18BA20 801DD9D0 00000000 */   nop
.L801DD9D4_ovl15:
/* 18BA24 801DD9D4 C420CF6C */  lwc1       $f0, %lo(D_8021CF6C_ovl9)($at)
/* 18BA28 801DD9D8 46001081 */  sub.s      $f2, $f2, $f0
.L801DD9DC_ovl9:
/* 18BA2C 801DD9DC 4602603C */  c.lt.s     $f12, $f2
/* 18BA30 801DD9E0 00000000 */  nop
.L801DD9E4_ovl14:
/* 18BA34 801DD9E4 4503FFFD */  bc1tl      .L801DD9DC_ovl9
/* 18BA38 801DD9E8 46001081 */   sub.s     $f2, $f2, $f0
.L801DD9EC_ovl9:
/* 18BA3C 801DD9EC 3C018022 */  lui        $at, %hi(D_8021CF70_ovl9)
/* 18BA40 801DD9F0 C420CF70 */  lwc1       $f0, %lo(D_8021CF70_ovl9)($at)
/* 18BA44 801DD9F4 3C018022 */  lui        $at, %hi(D_8021CF74_ovl9)
/* 18BA48 801DD9F8 C42CCF74 */  lwc1       $f12, %lo(D_8021CF74_ovl9)($at)
glabel func_801DD9FC_ovl16
/* 18BA4C 801DD9FC 460C103C */  c.lt.s     $f2, $f12
/* 18BA50 801DDA00 00000000 */  nop
.L801DDA04_ovl14:
/* 18BA54 801DDA04 45020007 */  bc1fl      .L801DDA24_ovl14
/* 18BA58 801DDA08 460E1032 */   c.eq.s    $f2, $f14
/* 18BA5C 801DDA0C 46001080 */  add.s      $f2, $f2, $f0
.L801DDA10_ovl9:
/* 18BA60 801DDA10 460C103C */  c.lt.s     $f2, $f12
/* 18BA64 801DDA14 00000000 */  nop
/* 18BA68 801DDA18 4503FFFD */  bc1tl      .L801DDA10_ovl9
/* 18BA6C 801DDA1C 46001080 */   add.s     $f2, $f2, $f0
/* 18BA70 801DDA20 460E1032 */  c.eq.s     $f2, $f14
.L801DDA24_ovl14:
/* 18BA74 801DDA24 00000000 */  nop
.L801DDA28_ovl15:
/* 18BA78 801DDA28 4502000B */  bc1fl      .L801DDA58_ovl9
/* 18BA7C 801DDA2C 460E103C */   c.lt.s    $f2, $f14
glabel func_801DDA30_ovl13
/* 18BA80 801DDA30 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 18BA84 801DDA34 3C07800F */  lui        $a3, %hi(D_800EA520)
/* 18BA88 801DDA38 24E7A520 */  addiu      $a3, $a3, %lo(D_800EA520)
/* 18BA8C 801DDA3C 8C6F0000 */  lw         $t7, 0x0($v1)
.L801DDA40_ovl11:
/* 18BA90 801DDA40 24080001 */  addiu      $t0, $zero, 0x1
/* 18BA94 801DDA44 000F6080 */  sll        $t4, $t7, 2
/* 18BA98 801DDA48 00EC6821 */  addu       $t5, $a3, $t4
glabel func_801DDA4C_ovl14
/* 18BA9C 801DDA4C 10000018 */  b          .L801DDAB0_ovl14
/* 18BAA0 801DDA50 ADA00000 */   sw        $zero, 0x0($t5)
/* 18BAA4 801DDA54 460E103C */  c.lt.s     $f2, $f14
.L801DDA58_ovl9:
/* 18BAA8 801DDA58 00000000 */  nop
/* 18BAAC 801DDA5C 4500000A */  bc1f       .L801DDA88_ovl9
/* 18BAB0 801DDA60 3C038005 */   lui       $v1, %hi(D_8004A7C4)
.L801DDA64_ovl15:
/* 18BAB4 801DDA64 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 18BAB8 801DDA68 3C07800F */  lui        $a3, %hi(D_800EA520)
.L801DDA6C_ovl14:
/* 18BABC 801DDA6C 24E7A520 */  addiu      $a3, $a3, %lo(D_800EA520)
/* 18BAC0 801DDA70 8C6A0000 */  lw         $t2, 0x0($v1)
/* 18BAC4 801DDA74 24080001 */  addiu      $t0, $zero, 0x1
glabel func_801DDA78_ovl12
/* 18BAC8 801DDA78 000A7080 */  sll        $t6, $t2, 2
/* 18BACC 801DDA7C 00EEC021 */  addu       $t8, $a3, $t6
/* 18BAD0 801DDA80 1000000B */  b          .L801DDAB0_ovl14
/* 18BAD4 801DDA84 AF080000 */   sw        $t0, 0x0($t8)
.L801DDA88_ovl9:
/* 18BAD8 801DDA88 3C038005 */  lui        $v1, %hi(D_8004A7C4)
.L801DDA8C_ovl10:
/* 18BADC 801DDA8C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
.L801DDA90_ovl15:
/* 18BAE0 801DDA90 3C07800F */  lui        $a3, %hi(D_800EA520)
.L801DDA94_ovl10:
/* 18BAE4 801DDA94 24E7A520 */  addiu      $a3, $a3, %lo(D_800EA520)
glabel func_801DDA98_ovl16
/* 18BAE8 801DDA98 8C790000 */  lw         $t9, 0x0($v1)
/* 18BAEC 801DDA9C 2409FFFF */  addiu      $t1, $zero, -0x1
glabel func_801DDAA0_ovl10
/* 18BAF0 801DDAA0 24080001 */  addiu      $t0, $zero, 0x1
/* 18BAF4 801DDAA4 00195880 */  sll        $t3, $t9, 2
/* 18BAF8 801DDAA8 00EB7821 */  addu       $t7, $a3, $t3
/* 18BAFC 801DDAAC ADE90000 */  sw         $t1, 0x0($t7)
.L801DDAB0_ovl14:
/* 18BB00 801DDAB0 8C6C0000 */  lw         $t4, 0x0($v1)
/* 18BB04 801DDAB4 3C01800F */  lui        $at, %hi(D_800E9AA0)
.L801DDAB8_ovl15:
/* 18BB08 801DDAB8 3C0A800F */  lui        $t2, %hi(D_800E98E0)
/* 18BB0C 801DDABC 000C6880 */  sll        $t5, $t4, 2
/* 18BB10 801DDAC0 002D0821 */  addu       $at, $at, $t5
.L801DDAC4_ovl13:
/* 18BB14 801DDAC4 AC289AA0 */  sw         $t0, %lo(D_800E9AA0)($at)
glabel func_801DDAC8_ovl10
/* 18BB18 801DDAC8 8C620000 */  lw         $v0, 0x0($v1)
/* 18BB1C 801DDACC 00021080 */  sll        $v0, $v0, 2
.L801DDAD0_ovl14:
/* 18BB20 801DDAD0 01425021 */  addu       $t2, $t2, $v0
/* 18BB24 801DDAD4 8D4A98E0 */  lw         $t2, %lo(D_800E98E0)($t2)
/* 18BB28 801DDAD8 2941000F */  slti       $at, $t2, 0xF
glabel func_801DDADC_ovl13
/* 18BB2C 801DDADC 10200033 */  beqz       $at, .L801DDBAC_ovl9
/* 18BB30 801DDAE0 00000000 */   nop
/* 18BB34 801DDAE4 0C02CCFD */  jal        func_800B33F4
glabel func_801DDAE8_ovl12
/* 18BB38 801DDAE8 00000000 */   nop
/* 18BB3C 801DDAEC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
.L801DDAF0_ovl15:
/* 18BB40 801DDAF0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 18BB44 801DDAF4 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 18BB48 801DDAF8 3C07800F */  lui        $a3, %hi(D_800EA520)
/* 18BB4C 801DDAFC 8C6E0000 */  lw         $t6, 0x0($v1)
/* 18BB50 801DDB00 24E7A520 */  addiu      $a3, $a3, %lo(D_800EA520)
/* 18BB54 801DDB04 3C09800E */  lui        $t1, %hi(D_800E6A10)
/* 18BB58 801DDB08 000EC080 */  sll        $t8, $t6, 2
/* 18BB5C 801DDB0C 00380821 */  addu       $at, $at, $t8
/* 18BB60 801DDB10 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
/* 18BB64 801DDB14 8C620000 */  lw         $v0, 0x0($v1)
/* 18BB68 801DDB18 25296A10 */  addiu      $t1, $t1, %lo(D_800E6A10)
/* 18BB6C 801DDB1C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 18BB70 801DDB20 00021080 */  sll        $v0, $v0, 2
/* 18BB74 801DDB24 00E2C821 */  addu       $t9, $a3, $v0
.L801DDB28_ovl10:
/* 18BB78 801DDB28 8F2B0000 */  lw         $t3, 0x0($t9)
/* 18BB7C 801DDB2C 00492021 */  addu       $a0, $v0, $t1
.L801DDB30_ovl12:
/* 18BB80 801DDB30 3C0F800F */  lui        $t7, %hi(D_800E8AE0)
/* 18BB84 801DDB34 19600006 */  blez       $t3, .L801DDB50_ovl9
/* 18BB88 801DDB38 3C06800F */   lui       $a2, %hi(D_800EAC20)
/* 18BB8C 801DDB3C C4840000 */  lwc1       $f4, 0x0($a0)
/* 18BB90 801DDB40 46002187 */  neg.s      $f6, $f4
/* 18BB94 801DDB44 E4860000 */  swc1       $f6, 0x0($a0)
/* 18BB98 801DDB48 8C620000 */  lw         $v0, 0x0($v1)
/* 18BB9C 801DDB4C 00021080 */  sll        $v0, $v0, 2
.L801DDB50_ovl9:
/* 18BBA0 801DDB50 01E27821 */  addu       $t7, $t7, $v0
.L801DDB54_ovl13:
/* 18BBA4 801DDB54 8DEF8AE0 */  lw         $t7, %lo(D_800E8AE0)($t7)
/* 18BBA8 801DDB58 31EC0001 */  andi       $t4, $t7, 0x1
.L801DDB5C_ovl10:
/* 18BBAC 801DDB5C 51800009 */  beql       $t4, $zero, .L801DDB84_ovl9
/* 18BBB0 801DDB60 44815000 */   mtc1      $at, $f10
.L801DDB64_ovl16:
/* 18BBB4 801DDB64 3C06800F */  lui        $a2, %hi(D_800EAC20)
/* 18BBB8 801DDB68 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 18BBBC 801DDB6C 44814000 */  mtc1       $at, $f8
/* 18BBC0 801DDB70 24C6AC20 */  addiu      $a2, $a2, %lo(D_800EAC20)
.L801DDB74_ovl16:
/* 18BBC4 801DDB74 00C26821 */  addu       $t5, $a2, $v0
/* 18BBC8 801DDB78 10000005 */  b          .L801DDB90_ovl9
/* 18BBCC 801DDB7C E5A80000 */   swc1      $f8, 0x0($t5)
/* 18BBD0 801DDB80 44815000 */  mtc1       $at, $f10
.L801DDB84_ovl9:
/* 18BBD4 801DDB84 24C6AC20 */  addiu      $a2, $a2, %lo(D_800EAC20)
glabel func_801DDB88_ovl10
/* 18BBD8 801DDB88 00C25021 */  addu       $t2, $a2, $v0
glabel func_801DDB8C_ovl17
/* 18BBDC 801DDB8C E54A0000 */  swc1       $f10, 0x0($t2)
.L801DDB90_ovl9:
/* 18BBE0 801DDB90 8C780000 */  lw         $t8, 0x0($v1)
.L801DDB94_ovl12:
/* 18BBE4 801DDB94 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 18BBE8 801DDB98 240E0003 */  addiu      $t6, $zero, 0x3
glabel func_801DDB9C_ovl11
/* 18BBEC 801DDB9C 0018C880 */  sll        $t9, $t8, 2
/* 18BBF0 801DDBA0 00390821 */  addu       $at, $at, $t9
glabel func_801DDBA4_ovl11
/* 18BBF4 801DDBA4 10000057 */  b          .L801DDD04_ovl9
glabel func_801DDBA8_ovl15
/* 18BBF8 801DDBA8 AC2EDC50 */   sw        $t6, %lo(gEntityVtableIndexArray)($at)
.L801DDBAC_ovl9:
/* 18BBFC 801DDBAC 3C06800F */  lui        $a2, %hi(D_800EAC20)
/* 18BC00 801DDBB0 24C6AC20 */  addiu      $a2, $a2, %lo(D_800EAC20)
/* 18BC04 801DDBB4 00C25821 */  addu       $t3, $a2, $v0
.L801DDBB8_ovl12:
/* 18BC08 801DDBB8 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 18BC0C 801DDBBC 44819000 */  mtc1       $at, $f18
/* 18BC10 801DDBC0 C5700000 */  lwc1       $f16, 0x0($t3)
glabel func_801DDBC4_ovl12
/* 18BC14 801DDBC4 3C01800E */  lui        $at, %hi(D_800E3210)
.L801DDBC8_ovl13:
/* 18BC18 801DDBC8 00220821 */  addu       $at, $at, $v0
/* 18BC1C 801DDBCC 46128102 */  mul.s      $f4, $f16, $f18
glabel func_801DDBD0_ovl14
/* 18BC20 801DDBD0 3C0F800F */  lui        $t7, %hi(D_800E8AE0)
/* 18BC24 801DDBD4 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
glabel func_801DDBD8_ovl17
/* 18BC28 801DDBD8 8C650000 */  lw         $a1, 0x0($v1)
/* 18BC2C 801DDBDC 2401FFFF */  addiu      $at, $zero, -0x1
/* 18BC30 801DDBE0 00051080 */  sll        $v0, $a1, 2
/* 18BC34 801DDBE4 00E24821 */  addu       $t1, $a3, $v0
/* 18BC38 801DDBE8 8D240000 */  lw         $a0, 0x0($t1)
/* 18BC3C 801DDBEC 01E27821 */  addu       $t7, $t7, $v0
/* 18BC40 801DDBF0 1081002B */  beq        $a0, $at, .L801DDCA0_ovl9
/* 18BC44 801DDBF4 00000000 */   nop
.L801DDBF8_ovl11:
/* 18BC48 801DDBF8 10800005 */  beqz       $a0, .L801DDC10_ovl9
/* 18BC4C 801DDBFC 00C27821 */   addu      $t7, $a2, $v0
/* 18BC50 801DDC00 1088001E */  beq        $a0, $t0, .L801DDC7C_ovl9
/* 18BC54 801DDC04 3C01800E */   lui       $at, %hi(D_800E64D0)
.L801DDC08_ovl13:
/* 18BC58 801DDC08 10000034 */  b          func_801DDCDC_ovl12
.L801DDC0C_ovl13:
/* 18BC5C 801DDC0C 00000000 */   nop
.L801DDC10_ovl9:
/* 18BC60 801DDC10 3C0C800E */  lui        $t4, %hi(D_800E7880)
/* 18BC64 801DDC14 01856021 */  addu       $t4, $t4, $a1
glabel func_801DDC18_ovl13
/* 18BC68 801DDC18 918C7880 */  lbu        $t4, %lo(D_800E7880)($t4)
.L801DDC1C_ovl12:
/* 18BC6C 801DDC1C 3C018022 */  lui        $at, %hi(D_8021BDB8_ovl9)
/* 18BC70 801DDC20 C5E60000 */  lwc1       $f6, 0x0($t7)
.L801DDC24_ovl16:
/* 18BC74 801DDC24 000C6880 */  sll        $t5, $t4, 2
/* 18BC78 801DDC28 002D0821 */  addu       $at, $at, $t5
/* 18BC7C 801DDC2C C428BDB8 */  lwc1       $f8, %lo(D_8021BDB8_ovl9)($at)
.L801DDC30_ovl12:
/* 18BC80 801DDC30 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 18BC84 801DDC34 44818000 */  mtc1       $at, $f16
/* 18BC88 801DDC38 46083282 */  mul.s      $f10, $f6, $f8
/* 18BC8C 801DDC3C 3C01800E */  lui        $at, %hi(D_800E6A10)
glabel func_801DDC40_ovl17
/* 18BC90 801DDC40 00220821 */  addu       $at, $at, $v0
.L801DDC44_ovl13:
/* 18BC94 801DDC44 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
.L801DDC48_ovl15:
/* 18BC98 801DDC48 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 18BC9C 801DDC4C 00220821 */  addu       $at, $at, $v0
/* 18BCA0 801DDC50 46105482 */  mul.s      $f18, $f10, $f16
/* 18BCA4 801DDC54 00000000 */  nop
glabel func_801DDC58_ovl13
/* 18BCA8 801DDC58 46049182 */  mul.s      $f6, $f18, $f4
.L801DDC5C_ovl15:
/* 18BCAC 801DDC5C E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* 18BCB0 801DDC60 8C6A0000 */  lw         $t2, 0x0($v1)
/* 18BCB4 801DDC64 000AC080 */  sll        $t8, $t2, 2
/* 18BCB8 801DDC68 00D87021 */  addu       $t6, $a2, $t8
/* 18BCBC 801DDC6C E5CE0000 */  swc1       $f14, 0x0($t6)
glabel func_801DDC70_ovl12
/* 18BCC0 801DDC70 8C620000 */  lw         $v0, 0x0($v1)
/* 18BCC4 801DDC74 10000019 */  b          func_801DDCDC_ovl12
.L801DDC78_ovl16:
/* 18BCC8 801DDC78 00021080 */   sll       $v0, $v0, 2
.L801DDC7C_ovl9:
/* 18BCCC 801DDC7C 00220821 */  addu       $at, $at, $v0
/* 18BCD0 801DDC80 E42E64D0 */  swc1       $f14, %lo(D_800E64D0)($at)
/* 18BCD4 801DDC84 8C790000 */  lw         $t9, 0x0($v1)
/* 18BCD8 801DDC88 00195880 */  sll        $t3, $t9, 2
.L801DDC8C_ovl15:
/* 18BCDC 801DDC8C 00CB4821 */  addu       $t1, $a2, $t3
/* 18BCE0 801DDC90 E52E0000 */  swc1       $f14, 0x0($t1)
.L801DDC94_ovl11:
/* 18BCE4 801DDC94 8C620000 */  lw         $v0, 0x0($v1)
/* 18BCE8 801DDC98 10000010 */  b          func_801DDCDC_ovl12
/* 18BCEC 801DDC9C 00021080 */   sll       $v0, $v0, 2
.L801DDCA0_ovl9:
/* 18BCF0 801DDCA0 8DEF8AE0 */  lw         $t7, %lo(D_800E8AE0)($t7)
/* 18BCF4 801DDCA4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 18BCF8 801DDCA8 31EC0001 */  andi       $t4, $t7, 0x1
/* 18BCFC 801DDCAC 51800007 */  beql       $t4, $zero, .L801DDCCC_ovl12
.L801DDCB0_ovl15:
/* 18BD00 801DDCB0 44815000 */   mtc1      $at, $f10
/* 18BD04 801DDCB4 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 18BD08 801DDCB8 44814000 */  mtc1       $at, $f8
/* 18BD0C 801DDCBC 00C26821 */  addu       $t5, $a2, $v0
/* 18BD10 801DDCC0 10000004 */  b          .L801DDCD4_ovl9
.L801DDCC4_ovl15:
/* 18BD14 801DDCC4 E5A80000 */   swc1      $f8, 0x0($t5)
/* 18BD18 801DDCC8 44815000 */  mtc1       $at, $f10
.L801DDCCC_ovl12:
/* 18BD1C 801DDCCC 00C25021 */  addu       $t2, $a2, $v0
.L801DDCD0_ovl11:
/* 18BD20 801DDCD0 E54A0000 */  swc1       $f10, 0x0($t2)
.L801DDCD4_ovl9:
/* 18BD24 801DDCD4 8C620000 */  lw         $v0, 0x0($v1)
/* 18BD28 801DDCD8 00021080 */  sll        $v0, $v0, 2
glabel func_801DDCDC_ovl12
/* 18BD2C 801DDCDC 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 18BD30 801DDCE0 00220821 */  addu       $at, $at, $v0
/* 18BD34 801DDCE4 24180064 */  addiu      $t8, $zero, 0x64
/* 18BD38 801DDCE8 AC389C60 */  sw         $t8, %lo(D_800E9C60)($at)
.L801DDCEC_ovl15:
/* 18BD3C 801DDCEC 8C790000 */  lw         $t9, 0x0($v1)
/* 18BD40 801DDCF0 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
.L801DDCF4_ovl11:
/* 18BD44 801DDCF4 240E0004 */  addiu      $t6, $zero, 0x4
/* 18BD48 801DDCF8 00195880 */  sll        $t3, $t9, 2
/* 18BD4C 801DDCFC 002B0821 */  addu       $at, $at, $t3
/* 18BD50 801DDD00 AC2EDC50 */  sw         $t6, %lo(gEntityVtableIndexArray)($at)
.L801DDD04_ovl9:
/* 18BD54 801DDD04 8FBF0014 */  lw         $ra, 0x14($sp)
/* 18BD58 801DDD08 27BD0018 */  addiu      $sp, $sp, 0x18
/* 18BD5C 801DDD0C 03E00008 */  jr         $ra
/* 18BD60 801DDD10 00000000 */   nop
