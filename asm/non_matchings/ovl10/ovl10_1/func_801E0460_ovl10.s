glabel func_801E0460_ovl10
/* 1D11D0 801E0460 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 1D11D4 801E0464 AFB00028 */  sw    $s0, 0x28($sp)
/* 1D11D8 801E0468 3C10800D */  lui   $s0, %hi(D_800D6B10) # $s0, 0x800d
/* 1D11DC 801E046C 26106B10 */  addiu $s0, %lo(D_800D6B10) # addiu $s0, $s0, 0x6b10
/* 1D11E0 801E0470 AFBF004C */  sw    $ra, 0x4c($sp)
/* 1D11E4 801E0474 AFBE0048 */  sw    $fp, 0x48($sp)
/* 1D11E8 801E0478 AFB70044 */  sw    $s7, 0x44($sp)
/* 1D11EC 801E047C AFB60040 */  sw    $s6, 0x40($sp)
/* 1D11F0 801E0480 AFB5003C */  sw    $s5, 0x3c($sp)
/* 1D11F4 801E0484 AFB40038 */  sw    $s4, 0x38($sp)
/* 1D11F8 801E0488 AFB30034 */  sw    $s3, 0x34($sp)
/* 1D11FC 801E048C AFB20030 */  sw    $s2, 0x30($sp)
/* 1D1200 801E0490 AFB1002C */  sw    $s1, 0x2c($sp)
/* 1D1204 801E0494 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 1D1208 801E0498 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1D120C 801E049C AFA40050 */  sw    $a0, 0x50($sp)
/* 1D1210 801E04A0 0C02BB30 */  jal   func_800AECC0
/* 1D1214 801E04A4 C60C0000 */   lwc1  $f12, ($s0)
/* 1D1218 801E04A8 0C02BB48 */  jal   func_800AED20
/* 1D121C 801E04AC C60C0000 */   lwc1  $f12, ($s0)
/* 1D1220 801E04B0 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 1D1224 801E04B4 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 1D1228 801E04B8 8E650000 */  lw    $a1, ($s3)
/* 1D122C 801E04BC 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1D1230 801E04C0 240E000C */  li    $t6, 12
/* 1D1234 801E04C4 8CAF0000 */  lw    $t7, ($a1)
/* 1D1238 801E04C8 3C02800E */  lui   $v0, %hi(D_800E1B50) # $v0, 0x800e
/* 1D123C 801E04CC 24421B50 */  addiu $v0, %lo(D_800E1B50) # addiu $v0, $v0, 0x1b50
/* 1D1240 801E04D0 000FC080 */  sll   $t8, $t7, 2
/* 1D1244 801E04D4 00380821 */  addu  $at, $at, $t8
/* 1D1248 801E04D8 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 1D124C 801E04DC 8CA80000 */  lw    $t0, ($a1)
/* 1D1250 801E04E0 3C19801F */  lui   $t9, %hi(D_801F3AA8_ovl10) # $t9, 0x801f
/* 1D1254 801E04E4 27393AA8 */  addiu $t9, %lo(D_801F3AA8_ovl10) # addiu $t9, $t9, 0x3aa8
/* 1D1258 801E04E8 00084880 */  sll   $t1, $t0, 2
/* 1D125C 801E04EC 00495021 */  addu  $t2, $v0, $t1
/* 1D1260 801E04F0 8D4B0000 */  lw    $t3, ($t2)
/* 1D1264 801E04F4 3C0C801F */  lui   $t4, %hi(D_801F4094_ovl10) # $t4, 0x801f
/* 1D1268 801E04F8 258C4094 */  addiu $t4, %lo(D_801F4094_ovl10) # addiu $t4, $t4, 0x4094
/* 1D126C 801E04FC AD79008C */  sw    $t9, 0x8c($t3)
/* 1D1270 801E0500 8E6D0000 */  lw    $t5, ($s3)
/* 1D1274 801E0504 3C040001 */  lui   $a0, (0x00010307 >> 16) # lui $a0, 1
/* 1D1278 801E0508 34840307 */  ori   $a0, (0x00010307 & 0xFFFF) # ori $a0, $a0, 0x307
/* 1D127C 801E050C 8DAF0000 */  lw    $t7, ($t5)
/* 1D1280 801E0510 000F7080 */  sll   $t6, $t7, 2
/* 1D1284 801E0514 004EC021 */  addu  $t8, $v0, $t6
/* 1D1288 801E0518 8F080000 */  lw    $t0, ($t8)
/* 1D128C 801E051C 0C02A806 */  jal   func_800AA018
/* 1D1290 801E0520 AD0C0098 */   sw    $t4, 0x98($t0)
/* 1D1294 801E0524 3C040001 */  lui   $a0, (0x00010306 >> 16) # lui $a0, 1
/* 1D1298 801E0528 0C02A806 */  jal   func_800AA018
/* 1D129C 801E052C 34840306 */   ori   $a0, (0x00010306 & 0xFFFF) # ori $a0, $a0, 0x306
/* 1D12A0 801E0530 8E650000 */  lw    $a1, ($s3)
/* 1D12A4 801E0534 4480B000 */  mtc1  $zero, $f22
/* 1D12A8 801E0538 3C03800E */  lui   $v1, %hi(D_800E3910) # $v1, 0x800e
/* 1D12AC 801E053C 8CA90000 */  lw    $t1, ($a1)
/* 1D12B0 801E0540 24633910 */  addiu $v1, %lo(D_800E3910) # addiu $v1, $v1, 0x3910
/* 1D12B4 801E0544 3C01800E */ lui $at, %hi(D_800E3750)
/* 1D12B8 801E0548 00095080 */  sll   $t2, $t1, 2
/* 1D12BC 801E054C 006AC821 */  addu  $t9, $v1, $t2
/* 1D12C0 801E0550 E7360000 */  swc1  $f22, ($t9)
/* 1D12C4 801E0554 8CA20000 */  lw    $v0, ($a1)
/* 1D12C8 801E0558 3C06800E */  lui   $a2, %hi(D_800E3210) # $a2, 0x800e
/* 1D12CC 801E055C 24C63210 */  addiu $a2, %lo(D_800E3210) # addiu $a2, $a2, 0x3210
/* 1D12D0 801E0560 00021080 */  sll   $v0, $v0, 2
/* 1D12D4 801E0564 00625821 */  addu  $t3, $v1, $v0
/* 1D12D8 801E0568 C5600000 */  lwc1  $f0, ($t3)
/* 1D12DC 801E056C 00220821 */  addu  $at, $at, $v0
/* 1D12E0 801E0570 3C07800E */  lui   $a3, %hi(D_800E3E50) # $a3, 0x800e
/* 1D12E4 801E0574 E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 1D12E8 801E0578 8CAD0000 */  lw    $t5, ($a1)
/* 1D12EC 801E057C 3C01800E */ lui $at, %hi(D_800E3590)
/* 1D12F0 801E0580 24E73E50 */  addiu $a3, %lo(D_800E3E50) # addiu $a3, $a3, 0x3e50
/* 1D12F4 801E0584 000D7880 */  sll   $t7, $t5, 2
/* 1D12F8 801E0588 002F0821 */  addu  $at, $at, $t7
/* 1D12FC 801E058C E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 1D1300 801E0590 8CAE0000 */  lw    $t6, ($a1)
/* 1D1304 801E0594 3C01800E */ lui $at, %hi(D_800E33D0)
/* 1D1308 801E0598 24040003 */  li    $a0, 3
/* 1D130C 801E059C 000EC080 */  sll   $t8, $t6, 2
/* 1D1310 801E05A0 00380821 */  addu  $at, $at, $t8
/* 1D1314 801E05A4 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 1D1318 801E05A8 8CAC0000 */  lw    $t4, ($a1)
/* 1D131C 801E05AC 3C01800E */ lui $at, %hi(D_800E3050)
/* 1D1320 801E05B0 000C4080 */  sll   $t0, $t4, 2
/* 1D1324 801E05B4 00C84821 */  addu  $t1, $a2, $t0
/* 1D1328 801E05B8 E5200000 */  swc1  $f0, ($t1)
/* 1D132C 801E05BC 8CAA0000 */  lw    $t2, ($a1)
/* 1D1330 801E05C0 000AC880 */  sll   $t9, $t2, 2
/* 1D1334 801E05C4 00390821 */  addu  $at, $at, $t9
/* 1D1338 801E05C8 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 1D133C 801E05CC 8CAB0000 */  lw    $t3, ($a1)
/* 1D1340 801E05D0 3C01801F */  lui   $at, %hi(D_801F49F8_ovl10) # $at, 0x801f
/* 1D1344 801E05D4 C42449F8 */  lwc1  $f4, %lo(D_801F49F8_ovl10)($at)
/* 1D1348 801E05D8 000B6880 */  sll   $t5, $t3, 2
/* 1D134C 801E05DC 00ED7821 */  addu  $t7, $a3, $t5
/* 1D1350 801E05E0 E5E40000 */  swc1  $f4, ($t7)
/* 1D1354 801E05E4 8CA20000 */  lw    $v0, ($a1)
/* 1D1358 801E05E8 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1D135C 801E05EC 00021080 */  sll   $v0, $v0, 2
/* 1D1360 801E05F0 00E27021 */  addu  $t6, $a3, $v0
/* 1D1364 801E05F4 C5C20000 */  lwc1  $f2, ($t6)
/* 1D1368 801E05F8 00220821 */  addu  $at, $at, $v0
/* 1D136C 801E05FC E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 1D1370 801E0600 8CB80000 */  lw    $t8, ($a1)
/* 1D1374 801E0604 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 1D1378 801E0608 00186080 */  sll   $t4, $t8, 2
/* 1D137C 801E060C 002C0821 */  addu  $at, $at, $t4
/* 1D1380 801E0610 E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 1D1384 801E0614 8CA80000 */  lw    $t0, ($a1)
/* 1D1388 801E0618 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1D138C 801E061C 00084880 */  sll   $t1, $t0, 2
/* 1D1390 801E0620 00290821 */  addu  $at, $at, $t1
/* 1D1394 801E0624 E43664D0 */ swc1 $f22, %lo(D_800E64D0)($at)
/* 1D1398 801E0628 8CAA0000 */  lw    $t2, ($a1)
/* 1D139C 801E062C 000AC880 */  sll   $t9, $t2, 2
/* 1D13A0 801E0630 00D95821 */  addu  $t3, $a2, $t9
/* 1D13A4 801E0634 0C006291 */  jal   random_soft_s32_range
/* 1D13A8 801E0638 E5760000 */   swc1  $f22, ($t3)
/* 1D13AC 801E063C 1040001D */  beqz  $v0, .L801E06B4_ovl10
/* 1D13B0 801E0640 00000000 */   nop   
/* 1D13B4 801E0644 0C006291 */  jal   random_soft_s32_range
/* 1D13B8 801E0648 24040002 */   li    $a0, 2
/* 1D13BC 801E064C 5040000E */  beql  $v0, $zero, .L801E0688_ovl10
/* 1D13C0 801E0650 8E650000 */   lw    $a1, ($s3)
/* 1D13C4 801E0654 8E650000 */  lw    $a1, ($s3)
/* 1D13C8 801E0658 3C12800F */  lui   $s2, %hi(D_800E9C60) # $s2, 0x800f
/* 1D13CC 801E065C 26529C60 */  addiu $s2, %lo(D_800E9C60) # addiu $s2, $s2, -0x63a0
/* 1D13D0 801E0660 8CAD0000 */  lw    $t5, ($a1)
/* 1D13D4 801E0664 3C06801F */ lui $a2, %hi(D_801F43BC_ovl10)
/* 1D13D8 801E0668 000D7880 */  sll   $t7, $t5, 2
/* 1D13DC 801E066C 024F1821 */  addu  $v1, $s2, $t7
/* 1D13E0 801E0670 8C6E0000 */  lw    $t6, ($v1)
/* 1D13E4 801E0674 000EC080 */  sll   $t8, $t6, 2
/* 1D13E8 801E0678 00D83021 */  addu  $a2, $a2, $t8
/* 1D13EC 801E067C 10000023 */  b     .L801E070C_ovl10
/* 1D13F0 801E0680 8CC643BC */ lw $a2, %lo(D_801F43BC_ovl10)($a2)
/* 1D13F4 801E0684 8E650000 */  lw    $a1, ($s3)
.L801E0688_ovl10:
/* 1D13F8 801E0688 3C12800F */  lui   $s2, %hi(D_800E9C60) # $s2, 0x800f
/* 1D13FC 801E068C 26529C60 */  addiu $s2, %lo(D_800E9C60) # addiu $s2, $s2, -0x63a0
/* 1D1400 801E0690 8CAC0000 */  lw    $t4, ($a1)
/* 1D1404 801E0694 3C06801F */ lui $a2, %hi(D_801F43D4_ovl10)
/* 1D1408 801E0698 000C4080 */  sll   $t0, $t4, 2
/* 1D140C 801E069C 02481821 */  addu  $v1, $s2, $t0
/* 1D1410 801E06A0 8C690000 */  lw    $t1, ($v1)
/* 1D1414 801E06A4 00095080 */  sll   $t2, $t1, 2
/* 1D1418 801E06A8 00CA3021 */  addu  $a2, $a2, $t2
/* 1D141C 801E06AC 10000017 */  b     .L801E070C_ovl10
/* 1D1420 801E06B0 8CC643D4 */ lw $a2, %lo(D_801F43D4_ovl10)($a2)
.L801E06B4_ovl10:
/* 1D1424 801E06B4 0C006291 */  jal   random_soft_s32_range
/* 1D1428 801E06B8 24040006 */   li    $a0, 6
/* 1D142C 801E06BC 8E650000 */  lw    $a1, ($s3)
/* 1D1430 801E06C0 3C12800F */  lui   $s2, %hi(D_800E9C60) # $s2, 0x800f
/* 1D1434 801E06C4 26529C60 */  addiu $s2, %lo(D_800E9C60) # addiu $s2, $s2, -0x63a0
/* 1D1438 801E06C8 8CB90000 */  lw    $t9, ($a1)
/* 1D143C 801E06CC 00403025 */  move  $a2, $v0
/* 1D1440 801E06D0 00195880 */  sll   $t3, $t9, 2
/* 1D1444 801E06D4 024B1821 */  addu  $v1, $s2, $t3
/* 1D1448 801E06D8 8C6D0000 */  lw    $t5, ($v1)
/* 1D144C 801E06DC 544D000C */  bnel  $v0, $t5, .L801E0710_ovl10
/* 1D1450 801E06E0 AC660000 */   sw    $a2, ($v1)
.L801E06E4_ovl10:
/* 1D1454 801E06E4 0C006291 */  jal   random_soft_s32_range
/* 1D1458 801E06E8 24040006 */   li    $a0, 6
/* 1D145C 801E06EC 8E650000 */  lw    $a1, ($s3)
/* 1D1460 801E06F0 00403025 */  move  $a2, $v0
/* 1D1464 801E06F4 8CAF0000 */  lw    $t7, ($a1)
/* 1D1468 801E06F8 000F7080 */  sll   $t6, $t7, 2
/* 1D146C 801E06FC 024E1821 */  addu  $v1, $s2, $t6
/* 1D1470 801E0700 8C780000 */  lw    $t8, ($v1)
/* 1D1474 801E0704 1058FFF7 */  beq   $v0, $t8, .L801E06E4_ovl10
/* 1D1478 801E0708 00000000 */   nop   
.L801E070C_ovl10:
/* 1D147C 801E070C AC660000 */  sw    $a2, ($v1)
.L801E0710_ovl10:
/* 1D1480 801E0710 8CAC0000 */  lw    $t4, ($a1)
/* 1D1484 801E0714 3C01800F */ lui $at, %hi(D_800EA1A0)
/* 1D1488 801E0718 3C10800F */  lui   $s0, %hi(D_800EA520) # $s0, 0x800f
/* 1D148C 801E071C 000C4080 */  sll   $t0, $t4, 2
/* 1D1490 801E0720 00280821 */  addu  $at, $at, $t0
/* 1D1494 801E0724 AC20A1A0 */ sw $zero, %lo(D_800EA1A0)($at)
/* 1D1498 801E0728 8CA90000 */  lw    $t1, ($a1)
/* 1D149C 801E072C 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D14A0 801E0730 2610A520 */  addiu $s0, %lo(D_800EA520) # addiu $s0, $s0, -0x5ae0
/* 1D14A4 801E0734 00095080 */  sll   $t2, $t1, 2
/* 1D14A8 801E0738 002A0821 */  addu  $at, $at, $t2
/* 1D14AC 801E073C AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1D14B0 801E0740 8CB90000 */  lw    $t9, ($a1)
/* 1D14B4 801E0744 3C1E800E */  lui   $fp, %hi(gEntitiesPosYArray) # $fp, 0x800e
/* 1D14B8 801E0748 3C17800E */  lui   $s7, %hi(D_800E6690) # $s7, 0x800e
/* 1D14BC 801E074C 00195880 */  sll   $t3, $t9, 2
/* 1D14C0 801E0750 020B6821 */  addu  $t5, $s0, $t3
/* 1D14C4 801E0754 ADA00000 */  sw    $zero, ($t5)
/* 1D14C8 801E0758 8CA20000 */  lw    $v0, ($a1)
/* 1D14CC 801E075C 3C16801F */  lui   $s6, %hi(D_801F4D48_ovl10) # $s6, 0x801f
/* 1D14D0 801E0760 26D64D48 */  addiu $s6, %lo(D_801F4D48_ovl10) # addiu $s6, $s6, 0x4d48
/* 1D14D4 801E0764 00021080 */  sll   $v0, $v0, 2
/* 1D14D8 801E0768 02027821 */  addu  $t7, $s0, $v0
/* 1D14DC 801E076C 8DE40000 */  lw    $a0, ($t7)
/* 1D14E0 801E0770 26F76690 */  addiu $s7, %lo(D_800E6690) # addiu $s7, $s7, 0x6690
/* 1D14E4 801E0774 27DE2790 */  addiu $fp, %lo(gEntitiesPosYArray) # addiu $fp, $fp, 0x2790
/* 1D14E8 801E0778 2881000A */  slti  $at, $a0, 0xa
/* 1D14EC 801E077C 102000EE */  beqz  $at, .L801E0B38_ovl10
/* 1D14F0 801E0780 3C15800F */   lui   $s5, %hi(D_800EA6E0) # $s5, 0x800f
/* 1D14F4 801E0784 3C14800F */  lui   $s4, %hi(D_800EA8A0) # $s4, 0x800f
/* 1D14F8 801E0788 3C11801F */  lui   $s1, %hi(D_801F4364_ovl10) # $s1, 0x801f
/* 1D14FC 801E078C 4480A000 */  mtc1  $zero, $f20
/* 1D1500 801E0790 26314364 */  addiu $s1, %lo(D_801F4364_ovl10) # addiu $s1, $s1, 0x4364
/* 1D1504 801E0794 2694A8A0 */  addiu $s4, %lo(D_800EA8A0) # addiu $s4, $s4, -0x5760
/* 1D1508 801E0798 26B5A6E0 */  addiu $s5, %lo(D_800EA6E0) # addiu $s5, $s5, -0x5920
/* 1D150C 801E079C 00047080 */  sll   $t6, $a0, 2
.L801E07A0_ovl10:
/* 1D1510 801E07A0 3C01801F */ lui $at, %hi(D_801F4338_ovl10)
/* 1D1514 801E07A4 002E0821 */  addu  $at, $at, $t6
/* 1D1518 801E07A8 C4204338 */ lwc1 $f0, %lo(D_801F4338_ovl10)($at)
/* 1D151C 801E07AC 3C01800E */ lui $at, %hi(D_800E6850)
/* 1D1520 801E07B0 00220821 */  addu  $at, $at, $v0
/* 1D1524 801E07B4 4614003C */  c.lt.s $f0, $f20
/* 1D1528 801E07B8 00000000 */  nop   
/* 1D152C 801E07BC 45000006 */  bc1f  .L801E07D8_ovl10
/* 1D1530 801E07C0 00000000 */   nop   
/* 1D1534 801E07C4 3C01800E */ lui $at, %hi(D_800E6850)
/* 1D1538 801E07C8 46000187 */  neg.s $f6, $f0
/* 1D153C 801E07CC 00220821 */  addu  $at, $at, $v0
/* 1D1540 801E07D0 10000002 */  b     .L801E07DC_ovl10
/* 1D1544 801E07D4 E4266850 */ swc1 $f6, %lo(D_800E6850)($at)
.L801E07D8_ovl10:
/* 1D1548 801E07D8 E4206850 */  swc1  $f0, 0x6850($at)
.L801E07DC_ovl10:
/* 1D154C 801E07DC 8CA20000 */  lw    $v0, ($a1)
/* 1D1550 801E07E0 3C01801F */ lui $at, %hi(D_801F4338_ovl10)
/* 1D1554 801E07E4 00021080 */  sll   $v0, $v0, 2
/* 1D1558 801E07E8 0202C021 */  addu  $t8, $s0, $v0
/* 1D155C 801E07EC 8F0C0000 */  lw    $t4, ($t8)
/* 1D1560 801E07F0 000C4080 */  sll   $t0, $t4, 2
/* 1D1564 801E07F4 00280821 */  addu  $at, $at, $t0
/* 1D1568 801E07F8 C4204338 */ lwc1 $f0, %lo(D_801F4338_ovl10)($at)
/* 1D156C 801E07FC 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1D1570 801E0800 00220821 */  addu  $at, $at, $v0
/* 1D1574 801E0804 4614003C */  c.lt.s $f0, $f20
/* 1D1578 801E0808 00000000 */  nop   
/* 1D157C 801E080C 45000006 */  bc1f  .L801E0828_ovl10
/* 1D1580 801E0810 00000000 */   nop   
/* 1D1584 801E0814 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1D1588 801E0818 46000207 */  neg.s $f8, $f0
/* 1D158C 801E081C 00220821 */  addu  $at, $at, $v0
/* 1D1590 801E0820 10000002 */  b     .L801E082C_ovl10
/* 1D1594 801E0824 E4283C90 */ swc1 $f8, %lo(D_800E3C90)($at)
.L801E0828_ovl10:
/* 1D1598 801E0828 E4203C90 */  swc1  $f0, 0x3c90($at)
.L801E082C_ovl10:
/* 1D159C 801E082C 8CA90000 */  lw    $t1, ($a1)
/* 1D15A0 801E0830 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 1D15A4 801E0834 44815000 */  mtc1  $at, $f10
/* 1D15A8 801E0838 00095080 */  sll   $t2, $t1, 2
/* 1D15AC 801E083C 028AC821 */  addu  $t9, $s4, $t2
/* 1D15B0 801E0840 E72A0000 */  swc1  $f10, ($t9)
/* 1D15B4 801E0844 8CA20000 */  lw    $v0, ($a1)
/* 1D15B8 801E0848 00021080 */  sll   $v0, $v0, 2
/* 1D15BC 801E084C 02825821 */  addu  $t3, $s4, $v0
/* 1D15C0 801E0850 C5700000 */  lwc1  $f16, ($t3)
/* 1D15C4 801E0854 02A26821 */  addu  $t5, $s5, $v0
/* 1D15C8 801E0858 E5B00000 */  swc1  $f16, ($t5)
/* 1D15CC 801E085C 8CA30000 */  lw    $v1, ($a1)
/* 1D15D0 801E0860 00031080 */  sll   $v0, $v1, 2
/* 1D15D4 801E0864 02027821 */  addu  $t7, $s0, $v0
/* 1D15D8 801E0868 8DE40000 */  lw    $a0, ($t7)
/* 1D15DC 801E086C 02A2C021 */  addu  $t8, $s5, $v0
/* 1D15E0 801E0870 2881000B */  slti  $at, $a0, 0xb
/* 1D15E4 801E0874 102000A0 */  beqz  $at, .L801E0AF8_ovl10
/* 1D15E8 801E0878 00047080 */   sll   $t6, $a0, 2
/* 1D15EC 801E087C 3C01801F */ lui $at, %hi(D_801F4390_ovl10)
/* 1D15F0 801E0880 002E0821 */  addu  $at, $at, $t6
/* 1D15F4 801E0884 C4204390 */ lwc1 $f0, %lo(D_801F4390_ovl10)($at)
/* 1D15F8 801E0888 C7120000 */  lwc1  $f18, ($t8)
/* 1D15FC 801E088C 02826021 */  addu  $t4, $s4, $v0
/* 1D1600 801E0890 4612003C */  c.lt.s $f0, $f18
/* 1D1604 801E0894 00000000 */  nop   
/* 1D1608 801E0898 45030006 */  bc1tl .L801E08B4_ovl10
/* 1D160C 801E089C 02424021 */   addu  $t0, $s2, $v0
/* 1D1610 801E08A0 C5840000 */  lwc1  $f4, ($t4)
/* 1D1614 801E08A4 4604003C */  c.lt.s $f0, $f4
/* 1D1618 801E08A8 00000000 */  nop   
/* 1D161C 801E08AC 45000092 */  bc1f  .L801E0AF8_ovl10
/* 1D1620 801E08B0 02424021 */   addu  $t0, $s2, $v0
.L801E08B4_ovl10:
/* 1D1624 801E08B4 8D090000 */  lw    $t1, ($t0)
/* 1D1628 801E08B8 00602025 */  move  $a0, $v1
/* 1D162C 801E08BC 00095080 */  sll   $t2, $t1, 2
/* 1D1630 801E08C0 02CAC821 */  addu  $t9, $s6, $t2
/* 1D1634 801E08C4 0C03E60A */  jal   func_800F9828
/* 1D1638 801E08C8 8F250000 */   lw    $a1, ($t9)
/* 1D163C 801E08CC 4614003C */  c.lt.s $f0, $f20
/* 1D1640 801E08D0 00000000 */  nop   
/* 1D1644 801E08D4 45020013 */  bc1fl .L801E0924_ovl10
/* 1D1648 801E08D8 8E790000 */   lw    $t9, ($s3)
/* 1D164C 801E08DC 8E6B0000 */  lw    $t3, ($s3)
/* 1D1650 801E08E0 8D630000 */  lw    $v1, ($t3)
/* 1D1654 801E08E4 00036880 */  sll   $t5, $v1, 2
/* 1D1658 801E08E8 024D7821 */  addu  $t7, $s2, $t5
/* 1D165C 801E08EC 8DEE0000 */  lw    $t6, ($t7)
/* 1D1660 801E08F0 00602025 */  move  $a0, $v1
/* 1D1664 801E08F4 000EC080 */  sll   $t8, $t6, 2
/* 1D1668 801E08F8 02D86021 */  addu  $t4, $s6, $t8
/* 1D166C 801E08FC 0C03E60A */  jal   func_800F9828
/* 1D1670 801E0900 8D850000 */   lw    $a1, ($t4)
/* 1D1674 801E0904 8E650000 */  lw    $a1, ($s3)
/* 1D1678 801E0908 46000187 */  neg.s $f6, $f0
/* 1D167C 801E090C 8CA80000 */  lw    $t0, ($a1)
/* 1D1680 801E0910 00084880 */  sll   $t1, $t0, 2
/* 1D1684 801E0914 02A95021 */  addu  $t2, $s5, $t1
/* 1D1688 801E0918 10000010 */  b     .L801E095C_ovl10
/* 1D168C 801E091C E5460000 */   swc1  $f6, ($t2)
/* 1D1690 801E0920 8E790000 */  lw    $t9, ($s3)
.L801E0924_ovl10:
/* 1D1694 801E0924 8F230000 */  lw    $v1, ($t9)
/* 1D1698 801E0928 00035880 */  sll   $t3, $v1, 2
/* 1D169C 801E092C 024B6821 */  addu  $t5, $s2, $t3
/* 1D16A0 801E0930 8DAF0000 */  lw    $t7, ($t5)
/* 1D16A4 801E0934 00602025 */  move  $a0, $v1
/* 1D16A8 801E0938 000F7080 */  sll   $t6, $t7, 2
/* 1D16AC 801E093C 02CEC021 */  addu  $t8, $s6, $t6
/* 1D16B0 801E0940 0C03E60A */  jal   func_800F9828
/* 1D16B4 801E0944 8F050000 */   lw    $a1, ($t8)
/* 1D16B8 801E0948 8E650000 */  lw    $a1, ($s3)
/* 1D16BC 801E094C 8CAC0000 */  lw    $t4, ($a1)
/* 1D16C0 801E0950 000C4080 */  sll   $t0, $t4, 2
/* 1D16C4 801E0954 02A84821 */  addu  $t1, $s5, $t0
/* 1D16C8 801E0958 E5200000 */  swc1  $f0, ($t1)
.L801E095C_ovl10:
/* 1D16CC 801E095C 4600B03C */  c.lt.s $f22, $f0
/* 1D16D0 801E0960 00000000 */  nop   
/* 1D16D4 801E0964 4502000D */  bc1fl .L801E099C_ovl10
/* 1D16D8 801E0968 8CA20000 */   lw    $v0, ($a1)
/* 1D16DC 801E096C 8CA20000 */  lw    $v0, ($a1)
/* 1D16E0 801E0970 00021080 */  sll   $v0, $v0, 2
/* 1D16E4 801E0974 02025021 */  addu  $t2, $s0, $v0
/* 1D16E8 801E0978 8D590000 */  lw    $t9, ($t2)
/* 1D16EC 801E097C 02E27821 */  addu  $t7, $s7, $v0
/* 1D16F0 801E0980 00195880 */  sll   $t3, $t9, 2
/* 1D16F4 801E0984 022B6821 */  addu  $t5, $s1, $t3
/* 1D16F8 801E0988 C5A80000 */  lwc1  $f8, ($t5)
/* 1D16FC 801E098C 46004287 */  neg.s $f10, $f8
/* 1D1700 801E0990 1000000A */  b     .L801E09BC_ovl10
/* 1D1704 801E0994 E5EA0000 */   swc1  $f10, ($t7)
/* 1D1708 801E0998 8CA20000 */  lw    $v0, ($a1)
.L801E099C_ovl10:
/* 1D170C 801E099C 00021080 */  sll   $v0, $v0, 2
/* 1D1710 801E09A0 02027021 */  addu  $t6, $s0, $v0
/* 1D1714 801E09A4 8DD80000 */  lw    $t8, ($t6)
/* 1D1718 801E09A8 02E24821 */  addu  $t1, $s7, $v0
/* 1D171C 801E09AC 00186080 */  sll   $t4, $t8, 2
/* 1D1720 801E09B0 022C4021 */  addu  $t0, $s1, $t4
/* 1D1724 801E09B4 C5100000 */  lwc1  $f16, ($t0)
/* 1D1728 801E09B8 E5300000 */  swc1  $f16, ($t1)
.L801E09BC_ovl10:
/* 1D172C 801E09BC 8CA20000 */  lw    $v0, ($a1)
/* 1D1730 801E09C0 3C03801F */  lui   $v1, %hi(D_801F4D30_ovl10) # $v1, 0x801f
/* 1D1734 801E09C4 24634D30 */  addiu $v1, %lo(D_801F4D30_ovl10) # addiu $v1, $v1, 0x4d30
/* 1D1738 801E09C8 00021080 */  sll   $v0, $v0, 2
/* 1D173C 801E09CC 0242C821 */  addu  $t9, $s2, $v0
/* 1D1740 801E09D0 8F2B0000 */  lw    $t3, ($t9)
/* 1D1744 801E09D4 03C25021 */  addu  $t2, $fp, $v0
/* 1D1748 801E09D8 C5400000 */  lwc1  $f0, ($t2)
/* 1D174C 801E09DC 000B6880 */  sll   $t5, $t3, 2
/* 1D1750 801E09E0 006D7821 */  addu  $t7, $v1, $t5
/* 1D1754 801E09E4 C5E20000 */  lwc1  $f2, ($t7)
/* 1D1758 801E09E8 4602003C */  c.lt.s $f0, $f2
/* 1D175C 801E09EC 00000000 */  nop   
/* 1D1760 801E09F0 45020007 */  bc1fl .L801E0A10_ovl10
/* 1D1764 801E09F4 46020181 */   sub.s $f6, $f0, $f2
/* 1D1768 801E09F8 46020481 */  sub.s $f18, $f0, $f2
/* 1D176C 801E09FC 02827021 */  addu  $t6, $s4, $v0
/* 1D1770 801E0A00 46009107 */  neg.s $f4, $f18
/* 1D1774 801E0A04 10000004 */  b     .L801E0A18_ovl10
/* 1D1778 801E0A08 E5C40000 */   swc1  $f4, ($t6)
/* 1D177C 801E0A0C 46020181 */  sub.s $f6, $f0, $f2
.L801E0A10_ovl10:
/* 1D1780 801E0A10 0282C021 */  addu  $t8, $s4, $v0
/* 1D1784 801E0A14 E7060000 */  swc1  $f6, ($t8)
.L801E0A18_ovl10:
/* 1D1788 801E0A18 8CA20000 */  lw    $v0, ($a1)
/* 1D178C 801E0A1C 00021080 */  sll   $v0, $v0, 2
/* 1D1790 801E0A20 02424021 */  addu  $t0, $s2, $v0
/* 1D1794 801E0A24 8D090000 */  lw    $t1, ($t0)
/* 1D1798 801E0A28 03C26021 */  addu  $t4, $fp, $v0
/* 1D179C 801E0A2C C5880000 */  lwc1  $f8, ($t4)
/* 1D17A0 801E0A30 00095080 */  sll   $t2, $t1, 2
/* 1D17A4 801E0A34 006AC821 */  addu  $t9, $v1, $t2
/* 1D17A8 801E0A38 C72A0000 */  lwc1  $f10, ($t9)
/* 1D17AC 801E0A3C 0202C021 */  addu  $t8, $s0, $v0
/* 1D17B0 801E0A40 02025821 */  addu  $t3, $s0, $v0
/* 1D17B4 801E0A44 460A403C */  c.lt.s $f8, $f10
/* 1D17B8 801E0A48 00000000 */  nop   
/* 1D17BC 801E0A4C 4502000B */  bc1fl .L801E0A7C_ovl10
/* 1D17C0 801E0A50 8F0C0000 */   lw    $t4, ($t8)
/* 1D17C4 801E0A54 8D6D0000 */  lw    $t5, ($t3)
/* 1D17C8 801E0A58 3C01800E */ lui $at, %hi(D_800E3750)
/* 1D17CC 801E0A5C 00220821 */  addu  $at, $at, $v0
/* 1D17D0 801E0A60 000D7880 */  sll   $t7, $t5, 2
/* 1D17D4 801E0A64 022F7021 */  addu  $t6, $s1, $t7
/* 1D17D8 801E0A68 C5D00000 */  lwc1  $f16, ($t6)
/* 1D17DC 801E0A6C 46008487 */  neg.s $f18, $f16
/* 1D17E0 801E0A70 10000008 */  b     .L801E0A94_ovl10
/* 1D17E4 801E0A74 E4323750 */ swc1 $f18, %lo(D_800E3750)($at)
/* 1D17E8 801E0A78 8F0C0000 */  lw    $t4, ($t8)
.L801E0A7C_ovl10:
/* 1D17EC 801E0A7C 3C01800E */ lui $at, %hi(D_800E3750)
/* 1D17F0 801E0A80 00220821 */  addu  $at, $at, $v0
/* 1D17F4 801E0A84 000C4080 */  sll   $t0, $t4, 2
/* 1D17F8 801E0A88 02284821 */  addu  $t1, $s1, $t0
/* 1D17FC 801E0A8C C5240000 */  lwc1  $f4, ($t1)
/* 1D1800 801E0A90 E4243750 */ swc1 $f4, %lo(D_800E3750)($at)
.L801E0A94_ovl10:
/* 1D1804 801E0A94 0C002DAF */  jal   func_8000B6BC
/* 1D1808 801E0A98 24040001 */   li    $a0, 1
/* 1D180C 801E0A9C 8E6A0000 */  lw    $t2, ($s3)
/* 1D1810 801E0AA0 8D430000 */  lw    $v1, ($t2)
/* 1D1814 801E0AA4 00031080 */  sll   $v0, $v1, 2
/* 1D1818 801E0AA8 0202C821 */  addu  $t9, $s0, $v0
/* 1D181C 801E0AAC 8F240000 */  lw    $a0, ($t9)
/* 1D1820 801E0AB0 02A26821 */  addu  $t5, $s5, $v0
/* 1D1824 801E0AB4 2881000B */  slti  $at, $a0, 0xb
/* 1D1828 801E0AB8 1020000F */  beqz  $at, .L801E0AF8_ovl10
/* 1D182C 801E0ABC 00045880 */   sll   $t3, $a0, 2
/* 1D1830 801E0AC0 3C01801F */ lui $at, %hi(D_801F4390_ovl10)
/* 1D1834 801E0AC4 002B0821 */  addu  $at, $at, $t3
/* 1D1838 801E0AC8 C4204390 */ lwc1 $f0, %lo(D_801F4390_ovl10)($at)
/* 1D183C 801E0ACC C5A60000 */  lwc1  $f6, ($t5)
/* 1D1840 801E0AD0 4606003C */  c.lt.s $f0, $f6
/* 1D1844 801E0AD4 00000000 */  nop   
/* 1D1848 801E0AD8 4503FF76 */  bc1tl .L801E08B4_ovl10
/* 1D184C 801E0ADC 02424021 */   addu  $t0, $s2, $v0
/* 1D1850 801E0AE0 02827821 */  addu  $t7, $s4, $v0
/* 1D1854 801E0AE4 C5E80000 */  lwc1  $f8, ($t7)
/* 1D1858 801E0AE8 4608003C */  c.lt.s $f0, $f8
/* 1D185C 801E0AEC 00000000 */  nop   
/* 1D1860 801E0AF0 4503FF70 */  bc1tl .L801E08B4_ovl10
/* 1D1864 801E0AF4 02424021 */   addu  $t0, $s2, $v0
.L801E0AF8_ovl10:
/* 1D1868 801E0AF8 0C02BC9F */  jal   func_800AF27C
/* 1D186C 801E0AFC 00000000 */   nop   
/* 1D1870 801E0B00 8E650000 */  lw    $a1, ($s3)
/* 1D1874 801E0B04 8CAE0000 */  lw    $t6, ($a1)
/* 1D1878 801E0B08 000EC080 */  sll   $t8, $t6, 2
/* 1D187C 801E0B0C 02181821 */  addu  $v1, $s0, $t8
/* 1D1880 801E0B10 8C6C0000 */  lw    $t4, ($v1)
/* 1D1884 801E0B14 25880001 */  addiu $t0, $t4, 1
/* 1D1888 801E0B18 AC680000 */  sw    $t0, ($v1)
/* 1D188C 801E0B1C 8CA20000 */  lw    $v0, ($a1)
/* 1D1890 801E0B20 00021080 */  sll   $v0, $v0, 2
/* 1D1894 801E0B24 02024821 */  addu  $t1, $s0, $v0
/* 1D1898 801E0B28 8D240000 */  lw    $a0, ($t1)
/* 1D189C 801E0B2C 2881000A */  slti  $at, $a0, 0xa
/* 1D18A0 801E0B30 5420FF1B */  bnezl $at, .L801E07A0_ovl10
/* 1D18A4 801E0B34 00047080 */   sll   $t6, $a0, 2
.L801E0B38_ovl10:
/* 1D18A8 801E0B38 3C01800F */ lui $at, %hi(D_800E9020)
/* 1D18AC 801E0B3C 00220821 */  addu  $at, $at, $v0
/* 1D18B0 801E0B40 E4369020 */ swc1 $f22, %lo(D_800E9020)($at)
/* 1D18B4 801E0B44 8CB90000 */  lw    $t9, ($a1)
/* 1D18B8 801E0B48 8FBF004C */  lw    $ra, 0x4c($sp)
/* 1D18BC 801E0B4C 3C01800E */ lui $at, %hi(D_800DDC50)
/* 1D18C0 801E0B50 00195880 */  sll   $t3, $t9, 2
/* 1D18C4 801E0B54 002B0821 */  addu  $at, $at, $t3
/* 1D18C8 801E0B58 240A000B */  li    $t2, 11
/* 1D18CC 801E0B5C D7B60020 */  ldc1  $f22, 0x20($sp)
/* 1D18D0 801E0B60 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1D18D4 801E0B64 8FB00028 */  lw    $s0, 0x28($sp)
/* 1D18D8 801E0B68 8FB1002C */  lw    $s1, 0x2c($sp)
/* 1D18DC 801E0B6C 8FB20030 */  lw    $s2, 0x30($sp)
/* 1D18E0 801E0B70 8FB30034 */  lw    $s3, 0x34($sp)
/* 1D18E4 801E0B74 8FB40038 */  lw    $s4, 0x38($sp)
/* 1D18E8 801E0B78 8FB5003C */  lw    $s5, 0x3c($sp)
/* 1D18EC 801E0B7C 8FB60040 */  lw    $s6, 0x40($sp)
/* 1D18F0 801E0B80 8FB70044 */  lw    $s7, 0x44($sp)
/* 1D18F4 801E0B84 8FBE0048 */  lw    $fp, 0x48($sp)
/* 1D18F8 801E0B88 AC2ADC50 */ sw $t2, %lo(D_800DDC50)($at)
/* 1D18FC 801E0B8C 03E00008 */  jr    $ra
/* 1D1900 801E0B90 27BD0050 */   addiu $sp, $sp, 0x50
