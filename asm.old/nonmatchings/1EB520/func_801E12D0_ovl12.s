glabel func_801E12D0_ovl12
/* 1F1610 801E12D0 27BDFFC8 */  addiu      $sp, $sp, -0x38
.L801E12D4_ovl15:
/* 1F1614 801E12D4 AFB10028 */  sw         $s1, 0x28($sp)
/* 1F1618 801E12D8 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 1F161C 801E12DC 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 1F1620 801E12E0 8E2E0000 */  lw         $t6, 0x0($s1)
/* 1F1624 801E12E4 AFBF002C */  sw         $ra, 0x2C($sp)
.L801E12E8_ovl17:
/* 1F1628 801E12E8 AFB00024 */  sw         $s0, 0x24($sp)
/* 1F162C 801E12EC F7B40018 */  sdc1       $f20, 0x18($sp)
.L801E12F0_ovl13:
/* 1F1630 801E12F0 AFA40038 */  sw         $a0, 0x38($sp)
/* 1F1634 801E12F4 8DC20000 */  lw         $v0, 0x0($t6)
/* 1F1638 801E12F8 3C0F800E */  lui        $t7, %hi(D_800E1B50)
/* 1F163C 801E12FC 3C01800E */  lui        $at, %hi(D_800DDFD0)
.L801E1300_ovl14:
/* 1F1640 801E1300 00021080 */  sll        $v0, $v0, 2
/* 1F1644 801E1304 01E27821 */  addu       $t7, $t7, $v0
/* 1F1648 801E1308 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
/* 1F164C 801E130C 00220821 */  addu       $at, $at, $v0
.L801E1310_ovl10:
/* 1F1650 801E1310 24180009 */  addiu      $t8, $zero, 0x9
/* 1F1654 801E1314 AC38DFD0 */  sw         $t8, %lo(D_800DDFD0)($at)
/* 1F1658 801E1318 0C066ED6 */  jal        func_8019BB58_ovl7
/* 1F165C 801E131C AFAF0034 */   sw        $t7, 0x34($sp)
/* 1F1660 801E1320 8E390000 */  lw         $t9, 0x0($s1)
/* 1F1664 801E1324 3C10800F */  lui        $s0, %hi(D_800EB320)
/* 1F1668 801E1328 2610B320 */  addiu      $s0, $s0, %lo(D_800EB320)
/* 1F166C 801E132C 8F220000 */  lw         $v0, 0x0($t9)
/* 1F1670 801E1330 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L801E1334_ovl10:
/* 1F1674 801E1334 4481A000 */  mtc1       $at, $f20
/* 1F1678 801E1338 00021080 */  sll        $v0, $v0, 2
/* 1F167C 801E133C 02024021 */  addu       $t0, $s0, $v0
/* 1F1680 801E1340 C5040000 */  lwc1       $f4, 0x0($t0)
/* 1F1684 801E1344 4604A032 */  c.eq.s     $f20, $f4
/* 1F1688 801E1348 00000000 */  nop
/* 1F168C 801E134C 4501000C */  bc1t       .L801E1380_ovl12
.L801E1350_ovl13:
/* 1F1690 801E1350 00000000 */   nop
.L801E1354_ovl12:
/* 1F1694 801E1354 0C002DAF */  jal        finish_current_thread
/* 1F1698 801E1358 24040001 */   addiu     $a0, $zero, 0x1
glabel func_801E135C_ovl13
/* 1F169C 801E135C 8E290000 */  lw         $t1, 0x0($s1)
/* 1F16A0 801E1360 8D220000 */  lw         $v0, 0x0($t1)
/* 1F16A4 801E1364 00021080 */  sll        $v0, $v0, 2
/* 1F16A8 801E1368 02025021 */  addu       $t2, $s0, $v0
/* 1F16AC 801E136C C5460000 */  lwc1       $f6, 0x0($t2)
/* 1F16B0 801E1370 4606A032 */  c.eq.s     $f20, $f6
/* 1F16B4 801E1374 00000000 */  nop
/* 1F16B8 801E1378 4500FFF6 */  bc1f       .L801E1354_ovl12
/* 1F16BC 801E137C 00000000 */   nop
.L801E1380_ovl12:
/* 1F16C0 801E1380 3C0B800F */  lui        $t3, %hi(D_800EA360)
/* 1F16C4 801E1384 01625821 */  addu       $t3, $t3, $v0
/* 1F16C8 801E1388 8D6BA360 */  lw         $t3, %lo(D_800EA360)($t3)
.L801E138C_ovl15:
/* 1F16CC 801E138C 24010001 */  addiu      $at, $zero, 0x1
/* 1F16D0 801E1390 15610036 */  bne        $t3, $at, .L801E146C_ovl12
/* 1F16D4 801E1394 00000000 */   nop
.L801E1398_ovl16:
/* 1F16D8 801E1398 0C067C7B */  jal        func_8019F1EC_ovl7
/* 1F16DC 801E139C 00000000 */   nop
glabel func_801E13A0_ovl10
/* 1F16E0 801E13A0 0C002DAF */  jal        finish_current_thread
/* 1F16E4 801E13A4 2404000F */   addiu     $a0, $zero, 0xF
/* 1F16E8 801E13A8 8FAC0034 */  lw         $t4, 0x34($sp)
/* 1F16EC 801E13AC 3C018000 */  lui        $at, (0x80000000 >> 16)
.L801E13B0_ovl14:
/* 1F16F0 801E13B0 8D820094 */  lw         $v0, 0x94($t4)
.L801E13B4_ovl14:
/* 1F16F4 801E13B4 8C44001C */  lw         $a0, 0x1C($v0)
.L801E13B8_ovl17:
/* 1F16F8 801E13B8 50810006 */  beql       $a0, $at, .L801E13D4_ovl15
/* 1F16FC 801E13BC 4480A000 */   mtc1      $zero, $f20
glabel func_801E13C0_ovl16
/* 1F1700 801E13C0 0C029D9E */  jal        play_sound
/* 1F1704 801E13C4 00000000 */   nop
/* 1F1708 801E13C8 8FAD0034 */  lw         $t5, 0x34($sp)
/* 1F170C 801E13CC 8DA20094 */  lw         $v0, 0x94($t5)
/* 1F1710 801E13D0 4480A000 */  mtc1       $zero, $f20
.L801E13D4_ovl15:
/* 1F1714 801E13D4 8C450018 */  lw         $a1, 0x18($v0)
.L801E13D8_ovl10:
/* 1F1718 801E13D8 00002025 */  or         $a0, $zero, $zero
/* 1F171C 801E13DC 4406A000 */  mfc1       $a2, $f20
/* 1F1720 801E13E0 4407A000 */  mfc1       $a3, $f20
.L801E13E4_ovl10:
/* 1F1724 801E13E4 0C03F55C */  jal        func_800FD570
/* 1F1728 801E13E8 E7B40010 */   swc1      $f20, 0x10($sp)
/* 1F172C 801E13EC 24040003 */  addiu      $a0, $zero, 0x3
/* 1F1730 801E13F0 0C02ED1A */  jal        func_800BB468
.L801E13F4_ovl9:
/* 1F1734 801E13F4 00002825 */   or        $a1, $zero, $zero
.L801E13F8_ovl17:
/* 1F1738 801E13F8 0C002DAF */  jal        finish_current_thread
/* 1F173C 801E13FC 24040007 */   addiu     $a0, $zero, 0x7
/* 1F1740 801E1400 0C06F1E5 */  jal        func_801BC794_ovl7
/* 1F1744 801E1404 24040001 */   addiu     $a0, $zero, 0x1
/* 1F1748 801E1408 00002025 */  or         $a0, $zero, $zero
/* 1F174C 801E140C 0C02BEED */  jal        func_800AFBB4
/* 1F1750 801E1410 8E250000 */   lw        $a1, 0x0($s1)
/* 1F1754 801E1414 8E230000 */  lw         $v1, 0x0($s1)
/* 1F1758 801E1418 3C04800E */  lui        $a0, %hi(D_800E6690)
glabel func_801E141C_ovl16
/* 1F175C 801E141C 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
/* 1F1760 801E1420 8C6E0000 */  lw         $t6, 0x0($v1)
glabel func_801E1424_ovl17
/* 1F1764 801E1424 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1F1768 801E1428 000E7880 */  sll        $t7, $t6, 2
/* 1F176C 801E142C 008FC021 */  addu       $t8, $a0, $t7
/* 1F1770 801E1430 E7140000 */  swc1       $f20, 0x0($t8)
/* 1F1774 801E1434 8C620000 */  lw         $v0, 0x0($v1)
/* 1F1778 801E1438 00021080 */  sll        $v0, $v0, 2
/* 1F177C 801E143C 0082C821 */  addu       $t9, $a0, $v0
/* 1F1780 801E1440 C7280000 */  lwc1       $f8, 0x0($t9)
/* 1F1784 801E1444 00220821 */  addu       $at, $at, $v0
/* 1F1788 801E1448 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 1F178C 801E144C 8C680000 */  lw         $t0, 0x0($v1)
/* 1F1790 801E1450 3C01801E */  lui        $at, %hi(.L801E2DC8_ovl13)
.L801E1454_ovl9:
/* 1F1794 801E1454 C42A2DC8 */  lwc1       $f10, %lo(.L801E2DC8_ovl13)($at)
/* 1F1798 801E1458 3C01800E */  lui        $at, %hi(D_800E6850)
.L801E145C_ovl15:
/* 1F179C 801E145C 00084880 */  sll        $t1, $t0, 2
/* 1F17A0 801E1460 00290821 */  addu       $at, $at, $t1
.L801E1464_ovl10:
/* 1F17A4 801E1464 1000001E */  b          .L801E14E0_ovl12
.L801E1468_ovl10:
/* 1F17A8 801E1468 E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
.L801E146C_ovl12:
/* 1F17AC 801E146C 0C002DAF */  jal        finish_current_thread
/* 1F17B0 801E1470 2404000F */   addiu     $a0, $zero, 0xF
.L801E1474_ovl9:
/* 1F17B4 801E1474 0C002DAF */  jal        finish_current_thread
/* 1F17B8 801E1478 24040007 */   addiu     $a0, $zero, 0x7
/* 1F17BC 801E147C 00002025 */  or         $a0, $zero, $zero
/* 1F17C0 801E1480 0C02BEED */  jal        func_800AFBB4
/* 1F17C4 801E1484 8E250000 */   lw        $a1, 0x0($s1)
/* 1F17C8 801E1488 8E230000 */  lw         $v1, 0x0($s1)
.L801E148C_ovl15:
/* 1F17CC 801E148C 4480A000 */  mtc1       $zero, $f20
/* 1F17D0 801E1490 3C04800E */  lui        $a0, %hi(D_800E6690)
/* 1F17D4 801E1494 8C6A0000 */  lw         $t2, 0x0($v1)
/* 1F17D8 801E1498 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
.L801E149C_ovl16:
/* 1F17DC 801E149C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1F17E0 801E14A0 000A5880 */  sll        $t3, $t2, 2
.L801E14A4_ovl17:
/* 1F17E4 801E14A4 008B6021 */  addu       $t4, $a0, $t3
.L801E14A8_ovl9:
/* 1F17E8 801E14A8 E5940000 */  swc1       $f20, 0x0($t4)
/* 1F17EC 801E14AC 8C620000 */  lw         $v0, 0x0($v1)
glabel func_801E14B0_ovl17
/* 1F17F0 801E14B0 00021080 */  sll        $v0, $v0, 2
/* 1F17F4 801E14B4 00826821 */  addu       $t5, $a0, $v0
/* 1F17F8 801E14B8 C5B00000 */  lwc1       $f16, 0x0($t5)
.L801E14BC_ovl10:
/* 1F17FC 801E14BC 00220821 */  addu       $at, $at, $v0
/* 1F1800 801E14C0 E43064D0 */  swc1       $f16, %lo(D_800E64D0)($at)
/* 1F1804 801E14C4 8C6E0000 */  lw         $t6, 0x0($v1)
/* 1F1808 801E14C8 3C01801E */  lui        $at, %hi(D_801E2DCC_ovl12)
.L801E14CC_ovl16:
/* 1F180C 801E14CC C4322DCC */  lwc1       $f18, %lo(D_801E2DCC_ovl12)($at)
/* 1F1810 801E14D0 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1F1814 801E14D4 000E7880 */  sll        $t7, $t6, 2
/* 1F1818 801E14D8 002F0821 */  addu       $at, $at, $t7
/* 1F181C 801E14DC E4326850 */  swc1       $f18, %lo(D_800E6850)($at)
.L801E14E0_ovl12:
/* 1F1820 801E14E0 0C02BE85 */  jal        func_800AFA14
/* 1F1824 801E14E4 00000000 */   nop
/* 1F1828 801E14E8 8FBF002C */  lw         $ra, 0x2C($sp)
.L801E14EC_ovl17:
/* 1F182C 801E14EC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 1F1830 801E14F0 8FB00024 */  lw         $s0, 0x24($sp)
/* 1F1834 801E14F4 8FB10028 */  lw         $s1, 0x28($sp)
/* 1F1838 801E14F8 03E00008 */  jr         $ra
/* 1F183C 801E14FC 27BD0038 */   addiu     $sp, $sp, 0x38
