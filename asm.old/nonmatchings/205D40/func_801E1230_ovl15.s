glabel func_801E1230_ovl15
/* 20BD90 801E1230 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 20BD94 801E1234 AFB40048 */  sw         $s4, 0x48($sp)
/* 20BD98 801E1238 3C148005 */  lui        $s4, %hi(D_8004A7C4)
glabel func_801E123C_ovl12
/* 20BD9C 801E123C 3C01800D */  lui        $at, %hi(D_800D7098 + 0x14)
/* 20BDA0 801E1240 2694A7C4 */  addiu      $s4, $s4, %lo(D_8004A7C4)
/* 20BDA4 801E1244 AC2070AC */  sw         $zero, %lo(D_800D7098 + 0x14)($at)
/* 20BDA8 801E1248 8E8F0000 */  lw         $t7, 0x0($s4)
/* 20BDAC 801E124C AFBF004C */  sw         $ra, 0x4C($sp)
/* 20BDB0 801E1250 AFB30044 */  sw         $s3, 0x44($sp)
/* 20BDB4 801E1254 AFB20040 */  sw         $s2, 0x40($sp)
/* 20BDB8 801E1258 AFB1003C */  sw         $s1, 0x3C($sp)
/* 20BDBC 801E125C AFB00038 */  sw         $s0, 0x38($sp)
/* 20BDC0 801E1260 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 20BDC4 801E1264 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 20BDC8 801E1268 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 20BDCC 801E126C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 20BDD0 801E1270 AFA40050 */  sw         $a0, 0x50($sp)
/* 20BDD4 801E1274 8DF80000 */  lw         $t8, 0x0($t7)
/* 20BDD8 801E1278 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 20BDDC 801E127C 240E000B */  addiu      $t6, $zero, 0xB
.L801E1280_ovl10:
/* 20BDE0 801E1280 0018C880 */  sll        $t9, $t8, 2
/* 20BDE4 801E1284 00390821 */  addu       $at, $at, $t9
.L801E1288_ovl14:
/* 20BDE8 801E1288 0C02CCFD */  jal        func_800B33F4
/* 20BDEC 801E128C AC2EDFD0 */   sw        $t6, %lo(D_800DDFD0)($at)
/* 20BDF0 801E1290 8E830000 */  lw         $v1, 0x0($s4)
/* 20BDF4 801E1294 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 20BDF8 801E1298 3C0F800D */  lui        $t7, %hi(D_800D6B54)
/* 20BDFC 801E129C 8C6B0000 */  lw         $t3, 0x0($v1)
/* 20BE00 801E12A0 8DEF6B54 */  lw         $t7, %lo(D_800D6B54)($t7)
/* 20BE04 801E12A4 240D0006 */  addiu      $t5, $zero, 0x6
/* 20BE08 801E12A8 000B6080 */  sll        $t4, $t3, 2
/* 20BE0C 801E12AC 002C0821 */  addu       $at, $at, $t4
/* 20BE10 801E12B0 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
/* 20BE14 801E12B4 3C01800D */  lui        $at, %hi(D_800D7118 + 0x3C)
.L801E12B8_ovl12:
/* 20BE18 801E12B8 AC207154 */  sw         $zero, %lo(D_800D7118 + 0x3C)($at)
/* 20BE1C 801E12BC 3C01800D */  lui        $at, %hi(D_800D7098 + 0x3C)
/* 20BE20 801E12C0 15E00004 */  bnez       $t7, .L801E12D4_ovl15
.L801E12C4_ovl17:
/* 20BE24 801E12C4 AC2D70D4 */   sw        $t5, %lo(D_800D7098 + 0x3C)($at)
/* 20BE28 801E12C8 0C067C7B */  jal        func_8019F1EC_ovl7
.L801E12CC_ovl14:
/* 20BE2C 801E12CC 00000000 */   nop
glabel func_801E12D0_ovl12
/* 20BE30 801E12D0 8E830000 */  lw         $v1, 0x0($s4)
.L801E12D4_ovl15:
/* 20BE34 801E12D4 8C780000 */  lw         $t8, 0x0($v1)
/* 20BE38 801E12D8 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* 20BE3C 801E12DC 4481D000 */  mtc1       $at, $f26
/* 20BE40 801E12E0 4480B000 */  mtc1       $zero, $f22
/* 20BE44 801E12E4 3C01800E */  lui        $at, %hi(D_800E3210)
.L801E12E8_ovl17:
/* 20BE48 801E12E8 00187080 */  sll        $t6, $t8, 2
/* 20BE4C 801E12EC 002E0821 */  addu       $at, $at, $t6
.L801E12F0_ovl13:
/* 20BE50 801E12F0 E4363210 */  swc1       $f22, %lo(D_800E3210)($at)
/* 20BE54 801E12F4 8C790000 */  lw         $t9, 0x0($v1)
/* 20BE58 801E12F8 3C01BE80 */  lui        $at, (0xBE800000 >> 16)
/* 20BE5C 801E12FC 44812000 */  mtc1       $at, $f4
.L801E1300_ovl14:
/* 20BE60 801E1300 3C01800E */  lui        $at, %hi(D_800E3750)
/* 20BE64 801E1304 00195880 */  sll        $t3, $t9, 2
/* 20BE68 801E1308 002B0821 */  addu       $at, $at, $t3
/* 20BE6C 801E130C E4243750 */  swc1       $f4, %lo(D_800E3750)($at)
.L801E1310_ovl10:
/* 20BE70 801E1310 8C6C0000 */  lw         $t4, 0x0($v1)
/* 20BE74 801E1314 3C11800E */  lui        $s1, %hi(D_800E3050)
/* 20BE78 801E1318 26313050 */  addiu      $s1, $s1, %lo(D_800E3050)
/* 20BE7C 801E131C 000C6880 */  sll        $t5, $t4, 2
/* 20BE80 801E1320 022D7821 */  addu       $t7, $s1, $t5
/* 20BE84 801E1324 E5FA0000 */  swc1       $f26, 0x0($t7)
/* 20BE88 801E1328 8C780000 */  lw         $t8, 0x0($v1)
/* 20BE8C 801E132C 3C01800E */  lui        $at, %hi(D_800E3590)
/* 20BE90 801E1330 3C13800E */  lui        $s3, %hi(D_800E0D50)
.L801E1334_ovl10:
/* 20BE94 801E1334 00187080 */  sll        $t6, $t8, 2
/* 20BE98 801E1338 002E0821 */  addu       $at, $at, $t6
/* 20BE9C 801E133C E4363590 */  swc1       $f22, %lo(D_800E3590)($at)
/* 20BEA0 801E1340 8C790000 */  lw         $t9, 0x0($v1)
/* 20BEA4 801E1344 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 20BEA8 801E1348 44813000 */  mtc1       $at, $f6
/* 20BEAC 801E134C 26730D50 */  addiu      $s3, $s3, %lo(D_800E0D50)
.L801E1350_ovl13:
/* 20BEB0 801E1350 00195880 */  sll        $t3, $t9, 2
.L801E1354_ovl12:
/* 20BEB4 801E1354 026B6021 */  addu       $t4, $s3, $t3
/* 20BEB8 801E1358 8D8D0000 */  lw         $t5, 0x0($t4)
glabel func_801E135C_ovl13
/* 20BEBC 801E135C 4606B03C */  c.lt.s     $f22, $f6
/* 20BEC0 801E1360 3C12800F */  lui        $s2, %hi(D_800EA6E0)
/* 20BEC4 801E1364 2652A6E0 */  addiu      $s2, $s2, %lo(D_800EA6E0)
/* 20BEC8 801E1368 000D7880 */  sll        $t7, $t5, 2
/* 20BECC 801E136C 024FC021 */  addu       $t8, $s2, $t7
/* 20BED0 801E1370 4481A000 */  mtc1       $at, $f20
/* 20BED4 801E1374 45000017 */  bc1f       .L801E13D4_ovl15
/* 20BED8 801E1378 E71A0000 */   swc1      $f26, 0x0($t8)
/* 20BEDC 801E137C 3C01801E */  lui        $at, %hi(D_801E6898_ovl15)
.L801E1380_ovl12:
/* 20BEE0 801E1380 3C10800D */  lui        $s0, %hi(D_800D6B10)
/* 20BEE4 801E1384 26106B10 */  addiu      $s0, $s0, %lo(D_800D6B10)
/* 20BEE8 801E1388 C4386898 */  lwc1       $f24, %lo(D_801E6898_ovl15)($at)
.L801E138C_ovl15:
/* 20BEEC 801E138C C6080000 */  lwc1       $f8, 0x0($s0)
/* 20BEF0 801E1390 46144302 */  mul.s      $f12, $f8, $f20
/* 20BEF4 801E1394 0C02BB30 */  jal        func_800AECC0
.L801E1398_ovl16:
/* 20BEF8 801E1398 00000000 */   nop
/* 20BEFC 801E139C 0C002DAF */  jal        finish_current_thread
glabel func_801E13A0_ovl10
/* 20BF00 801E13A0 24040001 */   addiu     $a0, $zero, 0x1
/* 20BF04 801E13A4 4614D282 */  mul.s      $f10, $f26, $f20
/* 20BF08 801E13A8 4618A501 */  sub.s      $f20, $f20, $f24
/* 20BF0C 801E13AC 8E8E0000 */  lw         $t6, 0x0($s4)
.L801E13B0_ovl14:
/* 20BF10 801E13B0 8DD90000 */  lw         $t9, 0x0($t6)
.L801E13B4_ovl14:
/* 20BF14 801E13B4 4614B03C */  c.lt.s     $f22, $f20
.L801E13B8_ovl17:
/* 20BF18 801E13B8 00195880 */  sll        $t3, $t9, 2
/* 20BF1C 801E13BC 022B6021 */  addu       $t4, $s1, $t3
glabel func_801E13C0_ovl16
/* 20BF20 801E13C0 4501FFF2 */  bc1t       .L801E138C_ovl15
/* 20BF24 801E13C4 E58A0000 */   swc1      $f10, 0x0($t4)
/* 20BF28 801E13C8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 20BF2C 801E13CC 4481A000 */  mtc1       $at, $f20
/* 20BF30 801E13D0 00000000 */  nop
.L801E13D4_ovl15:
/* 20BF34 801E13D4 3C01801E */  lui        $at, %hi(.L801E689C_ovl16)
.L801E13D8_ovl10:
/* 20BF38 801E13D8 C438689C */  lwc1       $f24, %lo(.L801E689C_ovl16)($at)
/* 20BF3C 801E13DC 0C02BB30 */  jal        func_800AECC0
/* 20BF40 801E13E0 4600B306 */   mov.s     $f12, $f22
.L801E13E4_ovl10:
/* 20BF44 801E13E4 8E830000 */  lw         $v1, 0x0($s4)
/* 20BF48 801E13E8 3C01800E */  lui        $at, %hi(D_800E3590)
/* 20BF4C 801E13EC 2404005A */  addiu      $a0, $zero, 0x5A
/* 20BF50 801E13F0 8C6D0000 */  lw         $t5, 0x0($v1)
.L801E13F4_ovl9:
/* 20BF54 801E13F4 000D7880 */  sll        $t7, $t5, 2
.L801E13F8_ovl17:
/* 20BF58 801E13F8 002F0821 */  addu       $at, $at, $t7
/* 20BF5C 801E13FC E4363590 */  swc1       $f22, %lo(D_800E3590)($at)
/* 20BF60 801E1400 8C620000 */  lw         $v0, 0x0($v1)
/* 20BF64 801E1404 3C01800E */  lui        $at, %hi(D_800E3590)
/* 20BF68 801E1408 00021080 */  sll        $v0, $v0, 2
/* 20BF6C 801E140C 00220821 */  addu       $at, $at, $v0
/* 20BF70 801E1410 C4303590 */  lwc1       $f16, %lo(D_800E3590)($at)
/* 20BF74 801E1414 0222C021 */  addu       $t8, $s1, $v0
/* 20BF78 801E1418 3C01801E */  lui        $at, %hi(D_801E68A0_ovl15)
glabel func_801E141C_ovl16
/* 20BF7C 801E141C E7100000 */  swc1       $f16, 0x0($t8)
/* 20BF80 801E1420 8C6E0000 */  lw         $t6, 0x0($v1)
glabel func_801E1424_ovl17
/* 20BF84 801E1424 C43268A0 */  lwc1       $f18, %lo(D_801E68A0_ovl15)($at)
/* 20BF88 801E1428 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 20BF8C 801E142C 000EC880 */  sll        $t9, $t6, 2
/* 20BF90 801E1430 00390821 */  addu       $at, $at, $t9
/* 20BF94 801E1434 0C002DAF */  jal        finish_current_thread
/* 20BF98 801E1438 E4323AD0 */   swc1      $f18, %lo(D_800E3AD0)($at)
/* 20BF9C 801E143C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 20BFA0 801E1440 44812000 */  mtc1       $at, $f4
/* 20BFA4 801E1444 00000000 */  nop
/* 20BFA8 801E1448 4604B03C */  c.lt.s     $f22, $f4
/* 20BFAC 801E144C 00000000 */  nop
/* 20BFB0 801E1450 4502000E */  bc1fl      .L801E148C_ovl15
.L801E1454_ovl9:
/* 20BFB4 801E1454 8E990000 */   lw        $t9, 0x0($s4)
/* 20BFB8 801E1458 8E830000 */  lw         $v1, 0x0($s4)
.L801E145C_ovl15:
/* 20BFBC 801E145C 8C6B0000 */  lw         $t3, 0x0($v1)
/* 20BFC0 801E1460 4614D182 */  mul.s      $f6, $f26, $f20
.L801E1464_ovl10:
/* 20BFC4 801E1464 4618A501 */  sub.s      $f20, $f20, $f24
.L801E1468_ovl10:
/* 20BFC8 801E1468 000B6080 */  sll        $t4, $t3, 2
.L801E146C_ovl12:
/* 20BFCC 801E146C 026C6821 */  addu       $t5, $s3, $t4
/* 20BFD0 801E1470 8DAF0000 */  lw         $t7, 0x0($t5)
.L801E1474_ovl9:
/* 20BFD4 801E1474 4614B03C */  c.lt.s     $f22, $f20
/* 20BFD8 801E1478 000FC080 */  sll        $t8, $t7, 2
/* 20BFDC 801E147C 02587021 */  addu       $t6, $s2, $t8
/* 20BFE0 801E1480 4501FFF6 */  bc1t       .L801E145C_ovl15
/* 20BFE4 801E1484 E5C60000 */   swc1      $f6, 0x0($t6)
/* 20BFE8 801E1488 8E990000 */  lw         $t9, 0x0($s4)
.L801E148C_ovl15:
/* 20BFEC 801E148C 24040004 */  addiu      $a0, $zero, 0x4
/* 20BFF0 801E1490 8F2B0000 */  lw         $t3, 0x0($t9)
/* 20BFF4 801E1494 000B6080 */  sll        $t4, $t3, 2
/* 20BFF8 801E1498 026C6821 */  addu       $t5, $s3, $t4
.L801E149C_ovl16:
/* 20BFFC 801E149C 8DAF0000 */  lw         $t7, 0x0($t5)
/* 20C000 801E14A0 000FC080 */  sll        $t8, $t7, 2
.L801E14A4_ovl17:
/* 20C004 801E14A4 02587021 */  addu       $t6, $s2, $t8
.L801E14A8_ovl9:
/* 20C008 801E14A8 0C06F1E5 */  jal        func_801BC794_ovl7
/* 20C00C 801E14AC E5D60000 */   swc1      $f22, 0x0($t6)
glabel func_801E14B0_ovl17
/* 20C010 801E14B0 2401FFFF */  addiu      $at, $zero, -0x1
/* 20C014 801E14B4 10410030 */  beq        $v0, $at, .L801E1578_ovl15
/* 20C018 801E14B8 3C06800E */   lui       $a2, %hi(D_800E5F90)
.L801E14BC_ovl10:
/* 20C01C 801E14BC 3C05800D */  lui        $a1, %hi(D_800D7098 + 0x34)
/* 20C020 801E14C0 8CA570CC */  lw         $a1, %lo(D_800D7098 + 0x34)($a1)
/* 20C024 801E14C4 24C65F90 */  addiu      $a2, $a2, %lo(D_800E5F90)
/* 20C028 801E14C8 3C07800E */  lui        $a3, %hi(D_800E6BD0)
.L801E14CC_ovl16:
/* 20C02C 801E14CC 00052880 */  sll        $a1, $a1, 2
/* 20C030 801E14D0 00C5C821 */  addu       $t9, $a2, $a1
/* 20C034 801E14D4 8F2B0000 */  lw         $t3, 0x0($t9)
/* 20C038 801E14D8 00022080 */  sll        $a0, $v0, 2
/* 20C03C 801E14DC 24E76BD0 */  addiu      $a3, $a3, %lo(D_800E6BD0)
.L801E14E0_ovl12:
/* 20C040 801E14E0 00C46021 */  addu       $t4, $a2, $a0
/* 20C044 801E14E4 00E56821 */  addu       $t5, $a3, $a1
/* 20C048 801E14E8 AD8B0000 */  sw         $t3, 0x0($t4)
.L801E14EC_ovl17:
/* 20C04C 801E14EC C5A80000 */  lwc1       $f8, 0x0($t5)
/* 20C050 801E14F0 00E47821 */  addu       $t7, $a3, $a0
/* 20C054 801E14F4 3C08800E */  lui        $t0, %hi(gEntitiesNextPosXArray)
/* 20C058 801E14F8 E5E80000 */  swc1       $f8, 0x0($t7)
/* 20C05C 801E14FC 8E830000 */  lw         $v1, 0x0($s4)
glabel func_801E1500_ovl12
/* 20C060 801E1500 250825D0 */  addiu      $t0, $t0, %lo(gEntitiesNextPosXArray)
/* 20C064 801E1504 01045821 */  addu       $t3, $t0, $a0
.L801E1508_ovl9:
/* 20C068 801E1508 8C780000 */  lw         $t8, 0x0($v1)
/* 20C06C 801E150C 3C09800E */  lui        $t1, %hi(gEntitiesNextPosYArray)
/* 20C070 801E1510 25292790 */  addiu      $t1, $t1, %lo(gEntitiesNextPosYArray)
.L801E1514_ovl13:
/* 20C074 801E1514 00187080 */  sll        $t6, $t8, 2
/* 20C078 801E1518 010EC821 */  addu       $t9, $t0, $t6
/* 20C07C 801E151C C72A0000 */  lwc1       $f10, 0x0($t9)
.L801E1520_ovl16:
/* 20C080 801E1520 3C014348 */  lui        $at, (0x43480000 >> 16)
/* 20C084 801E1524 44819000 */  mtc1       $at, $f18
glabel func_801E1528_ovl12
/* 20C088 801E1528 E56A0000 */  swc1       $f10, 0x0($t3)
/* 20C08C 801E152C 8C6C0000 */  lw         $t4, 0x0($v1)
/* 20C090 801E1530 0124C021 */  addu       $t8, $t1, $a0
/* 20C094 801E1534 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosZArray)
/* 20C098 801E1538 000C6880 */  sll        $t5, $t4, 2
.L801E153C_ovl10:
/* 20C09C 801E153C 012D7821 */  addu       $t7, $t1, $t5
/* 20C0A0 801E1540 C5F00000 */  lwc1       $f16, 0x0($t7)
.L801E1544_ovl16:
/* 20C0A4 801E1544 254A2950 */  addiu      $t2, $t2, %lo(gEntitiesNextPosZArray)
.L801E1548_ovl10:
/* 20C0A8 801E1548 01446021 */  addu       $t4, $t2, $a0
.L801E154C_ovl17:
/* 20C0AC 801E154C 46128100 */  add.s      $f4, $f16, $f18
glabel func_801E1550_ovl10
/* 20C0B0 801E1550 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 20C0B4 801E1554 00240821 */  addu       $at, $at, $a0
/* 20C0B8 801E1558 240D0001 */  addiu      $t5, $zero, 0x1
/* 20C0BC 801E155C E7040000 */  swc1       $f4, 0x0($t8)
/* 20C0C0 801E1560 8C6E0000 */  lw         $t6, 0x0($v1)
.L801E1564_ovl16:
/* 20C0C4 801E1564 000EC880 */  sll        $t9, $t6, 2
.L801E1568_ovl17:
/* 20C0C8 801E1568 01595821 */  addu       $t3, $t2, $t9
/* 20C0CC 801E156C C5660000 */  lwc1       $f6, 0x0($t3)
/* 20C0D0 801E1570 E5860000 */  swc1       $f6, 0x0($t4)
.L801E1574_ovl16:
/* 20C0D4 801E1574 AC2D8E60 */  sw         $t5, %lo(D_800E8E60)($at)
.L801E1578_ovl15:
/* 20C0D8 801E1578 0C02BE85 */  jal        func_800AFA14
.L801E157C_ovl16:
/* 20C0DC 801E157C 00000000 */   nop
/* 20C0E0 801E1580 8FBF004C */  lw         $ra, 0x4C($sp)
.L801E1584_ovl12:
/* 20C0E4 801E1584 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 20C0E8 801E1588 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 20C0EC 801E158C D7B80028 */  ldc1       $f24, 0x28($sp)
glabel func_801E1590_ovl17
/* 20C0F0 801E1590 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 20C0F4 801E1594 8FB00038 */  lw         $s0, 0x38($sp)
/* 20C0F8 801E1598 8FB1003C */  lw         $s1, 0x3C($sp)
/* 20C0FC 801E159C 8FB20040 */  lw         $s2, 0x40($sp)
/* 20C100 801E15A0 8FB30044 */  lw         $s3, 0x44($sp)
glabel func_801E15A4_ovl17
/* 20C104 801E15A4 8FB40048 */  lw         $s4, 0x48($sp)
/* 20C108 801E15A8 03E00008 */  jr         $ra
/* 20C10C 801E15AC 27BD0050 */   addiu     $sp, $sp, 0x50
