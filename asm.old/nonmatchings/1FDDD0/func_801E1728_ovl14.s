glabel func_801E1728_ovl14
/* 204318 801E1728 27BDFFB0 */  addiu      $sp, $sp, -0x50
.L801E172C_ovl12:
/* 20431C 801E172C AFB1002C */  sw         $s1, 0x2C($sp)
.L801E1730_ovl17:
/* 204320 801E1730 3C118005 */  lui        $s1, %hi(D_8004A7C4)
.L801E1734_ovl13:
/* 204324 801E1734 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 204328 801E1738 8E2E0000 */  lw         $t6, 0x0($s1)
glabel func_801E173C_ovl15
/* 20432C 801E173C AFBF003C */  sw         $ra, 0x3C($sp)
/* 204330 801E1740 AFB40038 */  sw         $s4, 0x38($sp)
/* 204334 801E1744 AFB30034 */  sw         $s3, 0x34($sp)
/* 204338 801E1748 AFB20030 */  sw         $s2, 0x30($sp)
/* 20433C 801E174C AFB00028 */  sw         $s0, 0x28($sp)
/* 204340 801E1750 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 204344 801E1754 F7B40018 */  sdc1       $f20, 0x18($sp)
.L801E1758_ovl13:
/* 204348 801E1758 AFA40050 */  sw         $a0, 0x50($sp)
.L801E175C_ovl17:
/* 20434C 801E175C 8DD00000 */  lw         $s0, 0x0($t6)
/* 204350 801E1760 3C0F800E */  lui        $t7, %hi(D_800E1B50)
/* 204354 801E1764 3C01800E */  lui        $at, %hi(D_800DDFD0)
.L801E1768_ovl17:
/* 204358 801E1768 00108080 */  sll        $s0, $s0, 2
/* 20435C 801E176C 01F07821 */  addu       $t7, $t7, $s0
/* 204360 801E1770 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
/* 204364 801E1774 00300821 */  addu       $at, $at, $s0
/* 204368 801E1778 24180002 */  addiu      $t8, $zero, 0x2
glabel func_801E177C_ovl15
/* 20436C 801E177C 3C040001 */  lui        $a0, (0x1006F >> 16)
/* 204370 801E1780 AC38DFD0 */  sw         $t8, %lo(D_800DDFD0)($at)
.L801E1784_ovl12:
/* 204374 801E1784 3484006F */  ori        $a0, $a0, (0x1006F & 0xFFFF)
/* 204378 801E1788 0C02A5D8 */  jal        func_800A9760
/* 20437C 801E178C AFAF0044 */   sw        $t7, 0x44($sp)
/* 204380 801E1790 8E220000 */  lw         $v0, 0x0($s1)
/* 204384 801E1794 3C19800E */  lui        $t9, %hi(D_800E0D50)
/* 204388 801E1798 3C06800E */  lui        $a2, %hi(gEntitiesNextPosYArray)
/* 20438C 801E179C 8C500000 */  lw         $s0, 0x0($v0)
/* 204390 801E17A0 24C62790 */  addiu      $a2, $a2, %lo(gEntitiesNextPosYArray)
.L801E17A4_ovl12:
/* 204394 801E17A4 3C0143D2 */  lui        $at, (0x43D20000 >> 16)
/* 204398 801E17A8 00108080 */  sll        $s0, $s0, 2
/* 20439C 801E17AC 0330C821 */  addu       $t9, $t9, $s0
/* 2043A0 801E17B0 8F390D50 */  lw         $t9, %lo(D_800E0D50)($t9)
/* 2043A4 801E17B4 44813000 */  mtc1       $at, $f6
/* 2043A8 801E17B8 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
/* 2043AC 801E17BC 00194880 */  sll        $t1, $t9, 2
/* 2043B0 801E17C0 00C95021 */  addu       $t2, $a2, $t1
/* 2043B4 801E17C4 C5440000 */  lwc1       $f4, 0x0($t2)
/* 2043B8 801E17C8 00300821 */  addu       $at, $at, $s0
/* 2043BC 801E17CC 3C0E801E */  lui        $t6, %hi(func_801DA9A8_ovl9 + 0xA0)
/* 2043C0 801E17D0 46062081 */  sub.s      $f2, $f4, $f6
/* 2043C4 801E17D4 25CEAA48 */  addiu      $t6, $t6, %lo(func_801DA9A8_ovl9 + 0xA0)
/* 2043C8 801E17D8 24180003 */  addiu      $t8, $zero, 0x3
/* 2043CC 801E17DC 240A0001 */  addiu      $t2, $zero, 0x1
glabel func_801E17E0_ovl16
/* 2043D0 801E17E0 E4222CD0 */  swc1       $f2, %lo(gEntitiesPosYArray)($at)
/* 2043D4 801E17E4 8C4B0000 */  lw         $t3, 0x0($v0)
/* 2043D8 801E17E8 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 2043DC 801E17EC 3C040001 */  lui        $a0, (0x10463 >> 16)
/* 2043E0 801E17F0 000B6080 */  sll        $t4, $t3, 2
/* 2043E4 801E17F4 00CC6821 */  addu       $t5, $a2, $t4
/* 2043E8 801E17F8 E5A20000 */  swc1       $f2, 0x0($t5)
/* 2043EC 801E17FC 8FAF0044 */  lw         $t7, 0x44($sp)
/* 2043F0 801E1800 34840463 */  ori        $a0, $a0, (0x10463 & 0xFFFF)
glabel func_801E1804_ovl12
/* 2043F4 801E1804 ADEE008C */  sw         $t6, 0x8C($t7)
/* 2043F8 801E1808 8E220000 */  lw         $v0, 0x0($s1)
/* 2043FC 801E180C 8C590000 */  lw         $t9, 0x0($v0)
.L801E1810_ovl17:
/* 204400 801E1810 00194880 */  sll        $t1, $t9, 2
/* 204404 801E1814 00290821 */  addu       $at, $at, $t1
/* 204408 801E1818 AC3898E0 */  sw         $t8, %lo(D_800E98E0)($at)
/* 20440C 801E181C 8C4B0000 */  lw         $t3, 0x0($v0)
/* 204410 801E1820 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 204414 801E1824 000B6080 */  sll        $t4, $t3, 2
.L801E1828_ovl17:
/* 204418 801E1828 002C0821 */  addu       $at, $at, $t4
/* 20441C 801E182C 0C02A7A9 */  jal        func_800A9EA4
/* 204420 801E1830 AC2A9AA0 */   sw        $t2, %lo(D_800E9AA0)($at)
/* 204424 801E1834 8E220000 */  lw         $v0, 0x0($s1)
/* 204428 801E1838 3C07800F */  lui        $a3, %hi(D_800EA6E0)
.L801E183C_ovl10:
/* 20442C 801E183C 24E7A6E0 */  addiu      $a3, $a3, %lo(D_800EA6E0)
/* 204430 801E1840 8C500000 */  lw         $s0, 0x0($v0)
/* 204434 801E1844 3C0D800F */  lui        $t5, %hi(D_800EC2E0)
/* 204438 801E1848 3C01801E */  lui        $at, %hi(D_801E30FC_ovl14)
.L801E184C_ovl17:
/* 20443C 801E184C 00108080 */  sll        $s0, $s0, 2
.L801E1850_ovl16:
/* 204440 801E1850 01B06821 */  addu       $t5, $t5, $s0
.L801E1854_ovl15:
/* 204444 801E1854 00F07821 */  addu       $t7, $a3, $s0
/* 204448 801E1858 C43630FC */  lwc1       $f22, %lo(D_801E30FC_ovl14)($at)
glabel func_801E185C_ovl13
/* 20444C 801E185C 8DADC2E0 */  lw         $t5, %lo(D_800EC2E0)($t5)
/* 204450 801E1860 C5E20000 */  lwc1       $f2, 0x0($t7)
/* 204454 801E1864 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
glabel func_801E1868_ovl15
/* 204458 801E1868 00300821 */  addu       $at, $at, $s0
/* 20445C 801E186C 3C05800D */  lui        $a1, %hi(D_800D7098)
.L801E1870_ovl10:
/* 204460 801E1870 000D7080 */  sll        $t6, $t5, 2
.L801E1874_ovl16:
/* 204464 801E1874 E4222B10 */  swc1       $f2, %lo(gEntitiesPosXArray)($at)
/* 204468 801E1878 8C590000 */  lw         $t9, 0x0($v0)
/* 20446C 801E187C 00AE2821 */  addu       $a1, $a1, $t6
glabel func_801E1880_ovl10
/* 204470 801E1880 8CA57098 */  lw         $a1, %lo(D_800D7098)($a1)
.L801E1884_ovl12:
/* 204474 801E1884 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 204478 801E1888 0019C080 */  sll        $t8, $t9, 2
/* 20447C 801E188C 3C06800E */  lui        $a2, %hi(gEntitiesNextPosYArray)
glabel func_801E1890_ovl17
/* 204480 801E1890 00380821 */  addu       $at, $at, $t8
.L801E1894_ovl16:
/* 204484 801E1894 00052080 */  sll        $a0, $a1, 2
.L801E1898_ovl9:
/* 204488 801E1898 24C62790 */  addiu      $a2, $a2, %lo(gEntitiesNextPosYArray)
/* 20448C 801E189C E42225D0 */  swc1       $f2, %lo(gEntitiesNextPosXArray)($at)
/* 204490 801E18A0 00C45021 */  addu       $t2, $a2, $a0
.L801E18A4_ovl16:
/* 204494 801E18A4 00E46021 */  addu       $t4, $a3, $a0
glabel func_801E18A8_ovl10
/* 204498 801E18A8 C58A0000 */  lwc1       $f10, 0x0($t4)
/* 20449C 801E18AC C5480000 */  lwc1       $f8, 0x0($t2)
.L801E18B0_ovl16:
/* 2044A0 801E18B0 8C490000 */  lw         $t1, 0x0($v0)
/* 2044A4 801E18B4 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 2044A8 801E18B8 460A4401 */  sub.s      $f16, $f8, $f10
glabel func_801E18BC_ovl16
/* 2044AC 801E18BC 44819000 */  mtc1       $at, $f18
/* 2044B0 801E18C0 3C08800E */  lui        $t0, %hi(gEntitiesPosYArray)
.L801E18C4_ovl17:
/* 2044B4 801E18C4 25082CD0 */  addiu      $t0, $t0, %lo(gEntitiesPosYArray)
/* 2044B8 801E18C8 00095880 */  sll        $t3, $t1, 2
/* 2044BC 801E18CC 46109100 */  add.s      $f4, $f18, $f16
/* 2044C0 801E18D0 010B1821 */  addu       $v1, $t0, $t3
/* 2044C4 801E18D4 C4660000 */  lwc1       $f6, 0x0($v1)
.L801E18D8_ovl9:
/* 2044C8 801E18D8 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 2044CC 801E18DC 4480A000 */  mtc1       $zero, $f20
/* 2044D0 801E18E0 46043200 */  add.s      $f8, $f6, $f4
/* 2044D4 801E18E4 3C12800E */  lui        $s2, %hi(D_800E3910)
/* 2044D8 801E18E8 26523910 */  addiu      $s2, $s2, %lo(D_800E3910)
/* 2044DC 801E18EC 3C13800E */  lui        $s3, %hi(D_800E3590)
/* 2044E0 801E18F0 E4680000 */  swc1       $f8, 0x0($v1)
/* 2044E4 801E18F4 8C500000 */  lw         $s0, 0x0($v0)
/* 2044E8 801E18F8 26733590 */  addiu      $s3, $s3, %lo(D_800E3590)
/* 2044EC 801E18FC 3C14800E */  lui        $s4, %hi(D_800E3E50)
/* 2044F0 801E1900 00108080 */  sll        $s0, $s0, 2
/* 2044F4 801E1904 01106821 */  addu       $t5, $t0, $s0
/* 2044F8 801E1908 C5AA0000 */  lwc1       $f10, 0x0($t5)
.L801E190C_ovl17:
/* 2044FC 801E190C 00D07021 */  addu       $t6, $a2, $s0
/* 204500 801E1910 26943E50 */  addiu      $s4, $s4, %lo(D_800E3E50)
/* 204504 801E1914 E5CA0000 */  swc1       $f10, 0x0($t6)
/* 204508 801E1918 8C500000 */  lw         $s0, 0x0($v0)
/* 20450C 801E191C 00108080 */  sll        $s0, $s0, 2
/* 204510 801E1920 00300821 */  addu       $at, $at, $s0
/* 204514 801E1924 C422A8A0 */  lwc1       $f2, %lo(D_800EA8A0)($at)
/* 204518 801E1928 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
.L801E192C_ovl9:
/* 20451C 801E192C 00300821 */  addu       $at, $at, $s0
/* 204520 801E1930 E4222E90 */  swc1       $f2, %lo(gEntitiesPosZArray)($at)
/* 204524 801E1934 8C4F0000 */  lw         $t7, 0x0($v0)
.L801E1938_ovl17:
/* 204528 801E1938 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 20452C 801E193C 000FC880 */  sll        $t9, $t7, 2
/* 204530 801E1940 00390821 */  addu       $at, $at, $t9
/* 204534 801E1944 E4222950 */  swc1       $f2, %lo(gEntitiesNextPosZArray)($at)
/* 204538 801E1948 8C580000 */  lw         $t8, 0x0($v0)
.L801E194C_ovl15:
/* 20453C 801E194C 3C01800E */  lui        $at, %hi(D_800E3750)
/* 204540 801E1950 00184880 */  sll        $t1, $t8, 2
.L801E1954_ovl17:
/* 204544 801E1954 02495821 */  addu       $t3, $s2, $t1
.L801E1958_ovl9:
/* 204548 801E1958 E5740000 */  swc1       $f20, 0x0($t3)
/* 20454C 801E195C 8C500000 */  lw         $s0, 0x0($v0)
glabel func_801E1960_ovl17
/* 204550 801E1960 00108080 */  sll        $s0, $s0, 2
/* 204554 801E1964 02505021 */  addu       $t2, $s2, $s0
/* 204558 801E1968 C5400000 */  lwc1       $f0, 0x0($t2)
/* 20455C 801E196C 00300821 */  addu       $at, $at, $s0
/* 204560 801E1970 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
/* 204564 801E1974 8C4C0000 */  lw         $t4, 0x0($v0)
/* 204568 801E1978 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 20456C 801E197C 000C6880 */  sll        $t5, $t4, 2
/* 204570 801E1980 026D7021 */  addu       $t6, $s3, $t5
/* 204574 801E1984 E5C00000 */  swc1       $f0, 0x0($t6)
.L801E1988_ovl12:
/* 204578 801E1988 8C4F0000 */  lw         $t7, 0x0($v0)
/* 20457C 801E198C 000FC880 */  sll        $t9, $t7, 2
/* 204580 801E1990 00390821 */  addu       $at, $at, $t9
glabel func_801E1994_ovl9
/* 204584 801E1994 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
/* 204588 801E1998 8C580000 */  lw         $t8, 0x0($v0)
.L801E199C_ovl15:
/* 20458C 801E199C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 204590 801E19A0 00184880 */  sll        $t1, $t8, 2
/* 204594 801E19A4 00290821 */  addu       $at, $at, $t1
/* 204598 801E19A8 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
glabel func_801E19AC_ovl13
/* 20459C 801E19AC 8C4B0000 */  lw         $t3, 0x0($v0)
/* 2045A0 801E19B0 3C01800E */  lui        $at, %hi(D_800E3050)
/* 2045A4 801E19B4 000B5080 */  sll        $t2, $t3, 2
/* 2045A8 801E19B8 002A0821 */  addu       $at, $at, $t2
/* 2045AC 801E19BC E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
.L801E19C0_ovl15:
/* 2045B0 801E19C0 8C4C0000 */  lw         $t4, 0x0($v0)
.L801E19C4_ovl10:
/* 2045B4 801E19C4 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 2045B8 801E19C8 000C6880 */  sll        $t5, $t4, 2
/* 2045BC 801E19CC 028D7021 */  addu       $t6, $s4, $t5
glabel func_801E19D0_ovl15
/* 2045C0 801E19D0 E5D60000 */  swc1       $f22, 0x0($t6)
/* 2045C4 801E19D4 8C500000 */  lw         $s0, 0x0($v0)
.L801E19D8_ovl12:
/* 2045C8 801E19D8 00108080 */  sll        $s0, $s0, 2
/* 2045CC 801E19DC 02907821 */  addu       $t7, $s4, $s0
/* 2045D0 801E19E0 C5EC0000 */  lwc1       $f12, 0x0($t7)
/* 2045D4 801E19E4 00300821 */  addu       $at, $at, $s0
/* 2045D8 801E19E8 E42C3C90 */  swc1       $f12, %lo(D_800E3C90)($at)
.L801E19EC_ovl9:
/* 2045DC 801E19EC 8C590000 */  lw         $t9, 0x0($v0)
.L801E19F0_ovl17:
/* 2045E0 801E19F0 3C01800E */  lui        $at, %hi(D_800E3AD0)
.L801E19F4_ovl12:
/* 2045E4 801E19F4 0019C080 */  sll        $t8, $t9, 2
/* 2045E8 801E19F8 00380821 */  addu       $at, $at, $t8
.L801E19FC_ovl10:
/* 2045EC 801E19FC 0C07880A */  jal        func_801E2028_ovl14
/* 2045F0 801E1A00 E42C3AD0 */   swc1      $f12, %lo(D_800E3AD0)($at)
/* 2045F4 801E1A04 0C002DAF */  jal        finish_current_thread
/* 2045F8 801E1A08 24040001 */   addiu     $a0, $zero, 0x1
/* 2045FC 801E1A0C 8E220000 */  lw         $v0, 0x0($s1)
/* 204600 801E1A10 3C01800E */  lui        $at, %hi(D_800E3050)
/* 204604 801E1A14 24040192 */  addiu      $a0, $zero, 0x192
/* 204608 801E1A18 8C490000 */  lw         $t1, 0x0($v0)
/* 20460C 801E1A1C 00095880 */  sll        $t3, $t1, 2
/* 204610 801E1A20 026B5021 */  addu       $t2, $s3, $t3
.L801E1A24_ovl13:
/* 204614 801E1A24 E5540000 */  swc1       $f20, 0x0($t2)
.L801E1A28_ovl13:
/* 204618 801E1A28 8C500000 */  lw         $s0, 0x0($v0)
/* 20461C 801E1A2C 00108080 */  sll        $s0, $s0, 2
.L801E1A30_ovl16:
/* 204620 801E1A30 02706021 */  addu       $t4, $s3, $s0
/* 204624 801E1A34 C5920000 */  lwc1       $f18, 0x0($t4)
.L801E1A38_ovl17:
/* 204628 801E1A38 00300821 */  addu       $at, $at, $s0
/* 20462C 801E1A3C E4323050 */  swc1       $f18, %lo(D_800E3050)($at)
.L801E1A40_ovl15:
/* 204630 801E1A40 8C4D0000 */  lw         $t5, 0x0($v0)
/* 204634 801E1A44 3C01800E */  lui        $at, %hi(D_800E3AD0)
.L801E1A48_ovl17:
/* 204638 801E1A48 000D7080 */  sll        $t6, $t5, 2
.L801E1A4C_ovl13:
/* 20463C 801E1A4C 002E0821 */  addu       $at, $at, $t6
/* 204640 801E1A50 E4363AD0 */  swc1       $f22, %lo(D_800E3AD0)($at)
.L801E1A54_ovl15:
/* 204644 801E1A54 3C01801E */  lui        $at, %hi(D_801E3100_ovl14)
.L801E1A58_ovl17:
/* 204648 801E1A58 C4303100 */  lwc1       $f16, %lo(D_801E3100_ovl14)($at)
.L801E1A5C_ovl17:
/* 20464C 801E1A5C 3C014180 */  lui        $at, (0x41800000 >> 16)
glabel func_801E1A60_ovl12
/* 204650 801E1A60 44813000 */  mtc1       $at, $f6
.L801E1A64_ovl15:
/* 204654 801E1A64 8C4F0000 */  lw         $t7, 0x0($v0)
/* 204658 801E1A68 3C01800E */  lui        $at, %hi(D_800E3210)
.L801E1A6C_ovl16:
/* 20465C 801E1A6C 46068102 */  mul.s      $f4, $f16, $f6
/* 204660 801E1A70 000FC880 */  sll        $t9, $t7, 2
/* 204664 801E1A74 00390821 */  addu       $at, $at, $t9
.L801E1A78_ovl10:
/* 204668 801E1A78 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* 20466C 801E1A7C 8C580000 */  lw         $t8, 0x0($v0)
/* 204670 801E1A80 3C01801E */  lui        $at, %hi(.L801E3104_ovl16)
/* 204674 801E1A84 C4283104 */  lwc1       $f8, %lo(.L801E3104_ovl16)($at)
/* 204678 801E1A88 3C01800E */  lui        $at, %hi(D_800E3750)
/* 20467C 801E1A8C 00184880 */  sll        $t1, $t8, 2
/* 204680 801E1A90 00290821 */  addu       $at, $at, $t1
/* 204684 801E1A94 E4283750 */  swc1       $f8, %lo(D_800E3750)($at)
.L801E1A98_ovl9:
/* 204688 801E1A98 8C4B0000 */  lw         $t3, 0x0($v0)
/* 20468C 801E1A9C 3C01800E */  lui        $at, %hi(D_800E33D0)
.L801E1AA0_ovl10:
/* 204690 801E1AA0 000B5080 */  sll        $t2, $t3, 2
.L801E1AA4_ovl12:
/* 204694 801E1AA4 002A0821 */  addu       $at, $at, $t2
/* 204698 801E1AA8 E43433D0 */  swc1       $f20, %lo(D_800E33D0)($at)
.L801E1AAC_ovl10:
/* 20469C 801E1AAC 8C4C0000 */  lw         $t4, 0x0($v0)
glabel func_801E1AB0_ovl16
/* 2046A0 801E1AB0 000C6880 */  sll        $t5, $t4, 2
/* 2046A4 801E1AB4 024D7021 */  addu       $t6, $s2, $t5
.L801E1AB8_ovl15:
/* 2046A8 801E1AB8 E5D40000 */  swc1       $f20, 0x0($t6)
/* 2046AC 801E1ABC 8C4F0000 */  lw         $t7, 0x0($v0)
/* 2046B0 801E1AC0 000FC880 */  sll        $t9, $t7, 2
/* 2046B4 801E1AC4 0299C021 */  addu       $t8, $s4, $t9
/* 2046B8 801E1AC8 0C029D9E */  jal        play_sound
.L801E1ACC_ovl13:
/* 2046BC 801E1ACC E7160000 */   swc1      $f22, 0x0($t8)
/* 2046C0 801E1AD0 00002025 */  or         $a0, $zero, $zero
/* 2046C4 801E1AD4 0C02ED1A */  jal        func_800BB468
/* 2046C8 801E1AD8 00002825 */   or        $a1, $zero, $zero
/* 2046CC 801E1ADC 8E2B0000 */  lw         $t3, 0x0($s1)
.L801E1AE0_ovl16:
/* 2046D0 801E1AE0 3C090001 */  lui        $t1, (0x10636 >> 16)
/* 2046D4 801E1AE4 3C01800F */  lui        $at, %hi(D_800E9C60)
.L801E1AE8_ovl12:
/* 2046D8 801E1AE8 8D6A0000 */  lw         $t2, 0x0($t3)
/* 2046DC 801E1AEC 35290636 */  ori        $t1, $t1, (0x10636 & 0xFFFF)
.L801E1AF0_ovl17:
/* 2046E0 801E1AF0 2404000F */  addiu      $a0, $zero, 0xF
.L801E1AF4_ovl13:
/* 2046E4 801E1AF4 000A6080 */  sll        $t4, $t2, 2
/* 2046E8 801E1AF8 002C0821 */  addu       $at, $at, $t4
/* 2046EC 801E1AFC 0C002DAF */  jal        finish_current_thread
.L801E1B00_ovl17:
/* 2046F0 801E1B00 AC299C60 */   sw        $t1, %lo(D_800E9C60)($at)
.L801E1B04_ovl15:
/* 2046F4 801E1B04 8E220000 */  lw         $v0, 0x0($s1)
.L801E1B08_ovl16:
/* 2046F8 801E1B08 3C01800E */  lui        $at, %hi(D_800E3750)
/* 2046FC 801E1B0C 24040001 */  addiu      $a0, $zero, 0x1
/* 204700 801E1B10 8C4D0000 */  lw         $t5, 0x0($v0)
/* 204704 801E1B14 000D7080 */  sll        $t6, $t5, 2
/* 204708 801E1B18 024E7821 */  addu       $t7, $s2, $t6
/* 20470C 801E1B1C E5F40000 */  swc1       $f20, 0x0($t7)
/* 204710 801E1B20 8C500000 */  lw         $s0, 0x0($v0)
/* 204714 801E1B24 00108080 */  sll        $s0, $s0, 2
.L801E1B28_ovl10:
/* 204718 801E1B28 0250C821 */  addu       $t9, $s2, $s0
.L801E1B2C_ovl16:
/* 20471C 801E1B2C C7200000 */  lwc1       $f0, 0x0($t9)
/* 204720 801E1B30 00300821 */  addu       $at, $at, $s0
/* 204724 801E1B34 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
/* 204728 801E1B38 8C580000 */  lw         $t8, 0x0($v0)
/* 20472C 801E1B3C 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 204730 801E1B40 00185880 */  sll        $t3, $t8, 2
/* 204734 801E1B44 026B5021 */  addu       $t2, $s3, $t3
/* 204738 801E1B48 E5400000 */  swc1       $f0, 0x0($t2)
/* 20473C 801E1B4C 8C490000 */  lw         $t1, 0x0($v0)
/* 204740 801E1B50 00096080 */  sll        $t4, $t1, 2
.L801E1B54_ovl15:
/* 204744 801E1B54 002C0821 */  addu       $at, $at, $t4
.L801E1B58_ovl10:
/* 204748 801E1B58 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
.L801E1B5C_ovl16:
/* 20474C 801E1B5C 8C4D0000 */  lw         $t5, 0x0($v0)
/* 204750 801E1B60 3C01800E */  lui        $at, %hi(D_800E3210)
.L801E1B64_ovl13:
/* 204754 801E1B64 000D7080 */  sll        $t6, $t5, 2
/* 204758 801E1B68 002E0821 */  addu       $at, $at, $t6
.L801E1B6C_ovl17:
/* 20475C 801E1B6C E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
.L801E1B70_ovl15:
/* 204760 801E1B70 8C4F0000 */  lw         $t7, 0x0($v0)
.L801E1B74_ovl13:
/* 204764 801E1B74 3C01800E */  lui        $at, %hi(D_800E3050)
/* 204768 801E1B78 000FC880 */  sll        $t9, $t7, 2
.L801E1B7C_ovl17:
/* 20476C 801E1B7C 00390821 */  addu       $at, $at, $t9
/* 204770 801E1B80 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
.L801E1B84_ovl16:
/* 204774 801E1B84 8C580000 */  lw         $t8, 0x0($v0)
/* 204778 801E1B88 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 20477C 801E1B8C 00185880 */  sll        $t3, $t8, 2
glabel func_801E1B90_ovl12
/* 204780 801E1B90 028B5021 */  addu       $t2, $s4, $t3
/* 204784 801E1B94 E5560000 */  swc1       $f22, 0x0($t2)
glabel func_801E1B98_ovl15
/* 204788 801E1B98 8C500000 */  lw         $s0, 0x0($v0)
/* 20478C 801E1B9C 00108080 */  sll        $s0, $s0, 2
/* 204790 801E1BA0 02904821 */  addu       $t1, $s4, $s0
/* 204794 801E1BA4 C52C0000 */  lwc1       $f12, 0x0($t1)
/* 204798 801E1BA8 00300821 */  addu       $at, $at, $s0
/* 20479C 801E1BAC E42C3C90 */  swc1       $f12, %lo(D_800E3C90)($at)
/* 2047A0 801E1BB0 8C4C0000 */  lw         $t4, 0x0($v0)
.L801E1BB4_ovl16:
/* 2047A4 801E1BB4 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 2047A8 801E1BB8 000C6880 */  sll        $t5, $t4, 2
/* 2047AC 801E1BBC 002D0821 */  addu       $at, $at, $t5
.L801E1BC0_ovl13:
/* 2047B0 801E1BC0 0C002DAF */  jal        finish_current_thread
/* 2047B4 801E1BC4 E42C3AD0 */   swc1      $f12, %lo(D_800E3AD0)($at)
/* 2047B8 801E1BC8 8E220000 */  lw         $v0, 0x0($s1)
.L801E1BCC_ovl13:
/* 2047BC 801E1BCC 3C01800E */  lui        $at, %hi(D_800E3050)
.L801E1BD0_ovl13:
/* 2047C0 801E1BD0 24040016 */  addiu      $a0, $zero, 0x16
/* 2047C4 801E1BD4 8C4E0000 */  lw         $t6, 0x0($v0)
.L801E1BD8_ovl16:
/* 2047C8 801E1BD8 000E7880 */  sll        $t7, $t6, 2
.L801E1BDC_ovl16:
/* 2047CC 801E1BDC 026FC821 */  addu       $t9, $s3, $t7
/* 2047D0 801E1BE0 E7340000 */  swc1       $f20, 0x0($t9)
.L801E1BE4_ovl10:
/* 2047D4 801E1BE4 8C500000 */  lw         $s0, 0x0($v0)
.L801E1BE8_ovl17:
/* 2047D8 801E1BE8 00108080 */  sll        $s0, $s0, 2
/* 2047DC 801E1BEC 0270C021 */  addu       $t8, $s3, $s0
.L801E1BF0_ovl16:
/* 2047E0 801E1BF0 C70A0000 */  lwc1       $f10, 0x0($t8)
.L801E1BF4_ovl13:
/* 2047E4 801E1BF4 00300821 */  addu       $at, $at, $s0
.L801E1BF8_ovl17:
/* 2047E8 801E1BF8 E42A3050 */  swc1       $f10, %lo(D_800E3050)($at)
/* 2047EC 801E1BFC 8C4B0000 */  lw         $t3, 0x0($v0)
.L801E1C00_ovl15:
/* 2047F0 801E1C00 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 2047F4 801E1C04 000B5080 */  sll        $t2, $t3, 2
.L801E1C08_ovl15:
/* 2047F8 801E1C08 002A0821 */  addu       $at, $at, $t2
/* 2047FC 801E1C0C E4363AD0 */  swc1       $f22, %lo(D_800E3AD0)($at)
/* 204800 801E1C10 8C490000 */  lw         $t1, 0x0($v0)
/* 204804 801E1C14 3C01800E */  lui        $at, %hi(D_800E3210)
/* 204808 801E1C18 00096080 */  sll        $t4, $t1, 2
glabel func_801E1C1C_ovl16
/* 20480C 801E1C1C 002C0821 */  addu       $at, $at, $t4
glabel func_801E1C20_ovl15
/* 204810 801E1C20 E4343210 */  swc1       $f20, %lo(D_800E3210)($at)
/* 204814 801E1C24 8C4D0000 */  lw         $t5, 0x0($v0)
/* 204818 801E1C28 3C01801E */  lui        $at, %hi(.L801E3108_ovl17)
/* 20481C 801E1C2C C4323108 */  lwc1       $f18, %lo(.L801E3108_ovl17)($at)
/* 204820 801E1C30 3C01800E */  lui        $at, %hi(D_800E3750)
/* 204824 801E1C34 000D7080 */  sll        $t6, $t5, 2
.L801E1C38_ovl10:
/* 204828 801E1C38 002E0821 */  addu       $at, $at, $t6
/* 20482C 801E1C3C E4323750 */  swc1       $f18, %lo(D_800E3750)($at)
/* 204830 801E1C40 8C4F0000 */  lw         $t7, 0x0($v0)
/* 204834 801E1C44 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 204838 801E1C48 3C0E0001 */  lui        $t6, (0x1063B >> 16)
/* 20483C 801E1C4C 000FC880 */  sll        $t9, $t7, 2
/* 204840 801E1C50 00390821 */  addu       $at, $at, $t9
/* 204844 801E1C54 E43433D0 */  swc1       $f20, %lo(D_800E33D0)($at)
/* 204848 801E1C58 8C580000 */  lw         $t8, 0x0($v0)
/* 20484C 801E1C5C 3C01800F */  lui        $at, %hi(D_800E9C60)
.L801E1C60_ovl12:
/* 204850 801E1C60 35CE063B */  ori        $t6, $t6, (0x1063B & 0xFFFF)
/* 204854 801E1C64 00185880 */  sll        $t3, $t8, 2
.L801E1C68_ovl13:
/* 204858 801E1C68 024B5021 */  addu       $t2, $s2, $t3
/* 20485C 801E1C6C E5540000 */  swc1       $f20, 0x0($t2)
.L801E1C70_ovl12:
/* 204860 801E1C70 8C490000 */  lw         $t1, 0x0($v0)
/* 204864 801E1C74 00096080 */  sll        $t4, $t1, 2
/* 204868 801E1C78 028C6821 */  addu       $t5, $s4, $t4
/* 20486C 801E1C7C E5B60000 */  swc1       $f22, 0x0($t5)
.L801E1C80_ovl12:
/* 204870 801E1C80 8C4F0000 */  lw         $t7, 0x0($v0)
/* 204874 801E1C84 000FC880 */  sll        $t9, $t7, 2
.L801E1C88_ovl9:
/* 204878 801E1C88 00390821 */  addu       $at, $at, $t9
.L801E1C8C_ovl12:
/* 20487C 801E1C8C 0C002DAF */  jal        finish_current_thread
/* 204880 801E1C90 AC2E9C60 */   sw        $t6, %lo(D_800E9C60)($at)
/* 204884 801E1C94 0C03EE45 */  jal        func_800FB914
.L801E1C98_ovl10:
/* 204888 801E1C98 24040001 */   addiu     $a0, $zero, 0x1
/* 20488C 801E1C9C 0C002DAF */  jal        finish_current_thread
/* 204890 801E1CA0 24040003 */   addiu     $a0, $zero, 0x3
/* 204894 801E1CA4 8FAB0044 */  lw         $t3, 0x44($sp)
/* 204898 801E1CA8 24180001 */  addiu      $t8, $zero, 0x1
/* 20489C 801E1CAC A1780040 */  sb         $t8, 0x40($t3)
/* 2048A0 801E1CB0 0C068FA0 */  jal        func_801A3E80_ovl7
glabel func_801E1CB4_ovl17
/* 2048A4 801E1CB4 8FA40050 */   lw        $a0, 0x50($sp)
/* 2048A8 801E1CB8 8FBF003C */  lw         $ra, 0x3C($sp)
/* 2048AC 801E1CBC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 2048B0 801E1CC0 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 2048B4 801E1CC4 8FB00028 */  lw         $s0, 0x28($sp)
.L801E1CC8_ovl15:
/* 2048B8 801E1CC8 8FB1002C */  lw         $s1, 0x2C($sp)
/* 2048BC 801E1CCC 8FB20030 */  lw         $s2, 0x30($sp)
/* 2048C0 801E1CD0 8FB30034 */  lw         $s3, 0x34($sp)
glabel func_801E1CD4_ovl12
/* 2048C4 801E1CD4 8FB40038 */  lw         $s4, 0x38($sp)
/* 2048C8 801E1CD8 03E00008 */  jr         $ra
/* 2048CC 801E1CDC 27BD0050 */   addiu     $sp, $sp, 0x50
