nonmatching func_801F1554_ovl10, 0x31C

glabel func_801F1554_ovl10
    /* 1E22C4 801F1554 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 1E22C8 801F1558 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1E22CC 801F155C AFB10018 */  sw         $s1, 0x18($sp)
    /* 1E22D0 801F1560 AFB00014 */  sw         $s0, 0x14($sp)
    /* 1E22D4 801F1564 10A00009 */  beqz       $a1, .L801F158C_ovl10
    /* 1E22D8 801F1568 AFA40040 */   sw        $a0, 0x40($sp)
    /* 1E22DC 801F156C 24010001 */  addiu      $at, $zero, 0x1
    /* 1E22E0 801F1570 10A10043 */  beq        $a1, $at, .L801F1680_ovl10
    /* 1E22E4 801F1574 3C11801F */   lui       $s1, %hi(D_801F4D60_ovl10)
    /* 1E22E8 801F1578 24010002 */  addiu      $at, $zero, 0x2
    /* 1E22EC 801F157C 10A1007C */  beq        $a1, $at, .L801F1770_ovl10
    /* 1E22F0 801F1580 3C11801F */   lui       $s1, %hi(D_801F4D60_ovl10)
    /* 1E22F4 801F1584 100000B6 */  b          .L801F1860_ovl10
    /* 1E22F8 801F1588 8FBF001C */   lw        $ra, 0x1C($sp)
  .L801F158C_ovl10:
    /* 1E22FC 801F158C 3C11801F */  lui        $s1, %hi(D_801F4D60_ovl10)
    /* 1E2300 801F1590 8E314D60 */  lw         $s1, %lo(D_801F4D60_ovl10)($s1)
    /* 1E2304 801F1594 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
    /* 1E2308 801F1598 27A40034 */  addiu      $a0, $sp, 0x34
    /* 1E230C 801F159C 00117080 */  sll        $t6, $s1, 2
    /* 1E2310 801F15A0 01EE7821 */  addu       $t7, $t7, $t6
    /* 1E2314 801F15A4 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
    /* 1E2318 801F15A8 02203025 */  or         $a2, $s1, $zero
    /* 1E231C 801F15AC 0C02C8D0 */  jal        func_800B2340
    /* 1E2320 801F15B0 8DE50004 */   lw        $a1, 0x4($t7)
    /* 1E2324 801F15B4 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 1E2328 801F15B8 8E10A7C4 */  lw         $s0, %lo(omCurrentObj)($s0)
    /* 1E232C 801F15BC C7A40034 */  lwc1       $f4, 0x34($sp)
    /* 1E2330 801F15C0 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 1E2334 801F15C4 8E180000 */  lw         $t8, 0x0($s0)
    /* 1E2338 801F15C8 C7A60038 */  lwc1       $f6, 0x38($sp)
    /* 1E233C 801F15CC 3C11801F */  lui        $s1, %hi(D_801F4D60_ovl10)
    /* 1E2340 801F15D0 0018C880 */  sll        $t9, $t8, 2
    /* 1E2344 801F15D4 00390821 */  addu       $at, $at, $t9
    /* 1E2348 801F15D8 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 1E234C 801F15DC 8E080000 */  lw         $t0, 0x0($s0)
    /* 1E2350 801F15E0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 1E2354 801F15E4 8E314D60 */  lw         $s1, %lo(D_801F4D60_ovl10)($s1)
    /* 1E2358 801F15E8 00084880 */  sll        $t1, $t0, 2
    /* 1E235C 801F15EC 00290821 */  addu       $at, $at, $t1
    /* 1E2360 801F15F0 E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 1E2364 801F15F4 8E0A0000 */  lw         $t2, 0x0($s0)
    /* 1E2368 801F15F8 C7A8003C */  lwc1       $f8, 0x3C($sp)
    /* 1E236C 801F15FC 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
    /* 1E2370 801F1600 00116080 */  sll        $t4, $s1, 2
    /* 1E2374 801F1604 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 1E2378 801F1608 01AC6821 */  addu       $t5, $t5, $t4
    /* 1E237C 801F160C 000A5880 */  sll        $t3, $t2, 2
    /* 1E2380 801F1610 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
    /* 1E2384 801F1614 002B0821 */  addu       $at, $at, $t3
    /* 1E2388 801F1618 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 1E238C 801F161C 27A40028 */  addiu      $a0, $sp, 0x28
    /* 1E2390 801F1620 02203025 */  or         $a2, $s1, $zero
    /* 1E2394 801F1624 0C02C9B6 */  jal        func_800B26D8
    /* 1E2398 801F1628 8DA50004 */   lw        $a1, 0x4($t5)
    /* 1E239C 801F162C 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 1E23A0 801F1630 8E10A7C4 */  lw         $s0, %lo(omCurrentObj)($s0)
    /* 1E23A4 801F1634 C7AA0028 */  lwc1       $f10, 0x28($sp)
    /* 1E23A8 801F1638 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* 1E23AC 801F163C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 1E23B0 801F1640 C7B0002C */  lwc1       $f16, 0x2C($sp)
    /* 1E23B4 801F1644 C7B20030 */  lwc1       $f18, 0x30($sp)
    /* 1E23B8 801F1648 000E7880 */  sll        $t7, $t6, 2
    /* 1E23BC 801F164C 002F0821 */  addu       $at, $at, $t7
    /* 1E23C0 801F1650 E42A4010 */  swc1       $f10, %lo(gEntitiesAngleXArray)($at)
    /* 1E23C4 801F1654 8E180000 */  lw         $t8, 0x0($s0)
    /* 1E23C8 801F1658 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 1E23CC 801F165C 0018C880 */  sll        $t9, $t8, 2
    /* 1E23D0 801F1660 00390821 */  addu       $at, $at, $t9
    /* 1E23D4 801F1664 E43041D0 */  swc1       $f16, %lo(gEntitiesAngleYArray)($at)
    /* 1E23D8 801F1668 8E080000 */  lw         $t0, 0x0($s0)
    /* 1E23DC 801F166C 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
    /* 1E23E0 801F1670 00084880 */  sll        $t1, $t0, 2
    /* 1E23E4 801F1674 00290821 */  addu       $at, $at, $t1
    /* 1E23E8 801F1678 10000078 */  b          .L801F185C_ovl10
    /* 1E23EC 801F167C E4324390 */   swc1      $f18, %lo(gEntitiesAngleZArray)($at)
  .L801F1680_ovl10:
    /* 1E23F0 801F1680 8E314D60 */  lw         $s1, %lo(D_801F4D60_ovl10)($s1)
    /* 1E23F4 801F1684 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
    /* 1E23F8 801F1688 27A40034 */  addiu      $a0, $sp, 0x34
    /* 1E23FC 801F168C 00115080 */  sll        $t2, $s1, 2
    /* 1E2400 801F1690 016A5821 */  addu       $t3, $t3, $t2
    /* 1E2404 801F1694 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
    /* 1E2408 801F1698 02203025 */  or         $a2, $s1, $zero
    /* 1E240C 801F169C 0C02C8D0 */  jal        func_800B2340
    /* 1E2410 801F16A0 8D650008 */   lw        $a1, 0x8($t3)
    /* 1E2414 801F16A4 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 1E2418 801F16A8 8E10A7C4 */  lw         $s0, %lo(omCurrentObj)($s0)
    /* 1E241C 801F16AC C7A40034 */  lwc1       $f4, 0x34($sp)
    /* 1E2420 801F16B0 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 1E2424 801F16B4 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 1E2428 801F16B8 C7A60038 */  lwc1       $f6, 0x38($sp)
    /* 1E242C 801F16BC 3C11801F */  lui        $s1, %hi(D_801F4D60_ovl10)
    /* 1E2430 801F16C0 000C6880 */  sll        $t5, $t4, 2
    /* 1E2434 801F16C4 002D0821 */  addu       $at, $at, $t5
    /* 1E2438 801F16C8 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 1E243C 801F16CC 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 1E2440 801F16D0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 1E2444 801F16D4 8E314D60 */  lw         $s1, %lo(D_801F4D60_ovl10)($s1)
    /* 1E2448 801F16D8 000E7880 */  sll        $t7, $t6, 2
    /* 1E244C 801F16DC 002F0821 */  addu       $at, $at, $t7
    /* 1E2450 801F16E0 E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 1E2454 801F16E4 8E180000 */  lw         $t8, 0x0($s0)
    /* 1E2458 801F16E8 C7A8003C */  lwc1       $f8, 0x3C($sp)
    /* 1E245C 801F16EC 3C09800E */  lui        $t1, %hi(D_800DFBD0)
    /* 1E2460 801F16F0 00114080 */  sll        $t0, $s1, 2
    /* 1E2464 801F16F4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 1E2468 801F16F8 01284821 */  addu       $t1, $t1, $t0
    /* 1E246C 801F16FC 0018C880 */  sll        $t9, $t8, 2
    /* 1E2470 801F1700 8D29FBD0 */  lw         $t1, %lo(D_800DFBD0)($t1)
    /* 1E2474 801F1704 00390821 */  addu       $at, $at, $t9
    /* 1E2478 801F1708 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 1E247C 801F170C 27A40028 */  addiu      $a0, $sp, 0x28
    /* 1E2480 801F1710 02203025 */  or         $a2, $s1, $zero
    /* 1E2484 801F1714 0C02C9B6 */  jal        func_800B26D8
    /* 1E2488 801F1718 8D250008 */   lw        $a1, 0x8($t1)
    /* 1E248C 801F171C 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 1E2490 801F1720 8E10A7C4 */  lw         $s0, %lo(omCurrentObj)($s0)
    /* 1E2494 801F1724 C7AA0028 */  lwc1       $f10, 0x28($sp)
    /* 1E2498 801F1728 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* 1E249C 801F172C 8E0A0000 */  lw         $t2, 0x0($s0)
    /* 1E24A0 801F1730 C7B0002C */  lwc1       $f16, 0x2C($sp)
    /* 1E24A4 801F1734 C7B20030 */  lwc1       $f18, 0x30($sp)
    /* 1E24A8 801F1738 000A5880 */  sll        $t3, $t2, 2
    /* 1E24AC 801F173C 002B0821 */  addu       $at, $at, $t3
    /* 1E24B0 801F1740 E42A4010 */  swc1       $f10, %lo(gEntitiesAngleXArray)($at)
    /* 1E24B4 801F1744 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 1E24B8 801F1748 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 1E24BC 801F174C 000C6880 */  sll        $t5, $t4, 2
    /* 1E24C0 801F1750 002D0821 */  addu       $at, $at, $t5
    /* 1E24C4 801F1754 E43041D0 */  swc1       $f16, %lo(gEntitiesAngleYArray)($at)
    /* 1E24C8 801F1758 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 1E24CC 801F175C 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
    /* 1E24D0 801F1760 000E7880 */  sll        $t7, $t6, 2
    /* 1E24D4 801F1764 002F0821 */  addu       $at, $at, $t7
    /* 1E24D8 801F1768 1000003C */  b          .L801F185C_ovl10
    /* 1E24DC 801F176C E4324390 */   swc1      $f18, %lo(gEntitiesAngleZArray)($at)
  .L801F1770_ovl10:
    /* 1E24E0 801F1770 8E314D60 */  lw         $s1, %lo(D_801F4D60_ovl10)($s1)
    /* 1E24E4 801F1774 3C19800E */  lui        $t9, %hi(D_800DFBD0)
    /* 1E24E8 801F1778 27A40034 */  addiu      $a0, $sp, 0x34
    /* 1E24EC 801F177C 0011C080 */  sll        $t8, $s1, 2
    /* 1E24F0 801F1780 0338C821 */  addu       $t9, $t9, $t8
    /* 1E24F4 801F1784 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
    /* 1E24F8 801F1788 02203025 */  or         $a2, $s1, $zero
    /* 1E24FC 801F178C 0C02C8D0 */  jal        func_800B2340
    /* 1E2500 801F1790 8F25000C */   lw        $a1, 0xC($t9)
    /* 1E2504 801F1794 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 1E2508 801F1798 8E10A7C4 */  lw         $s0, %lo(omCurrentObj)($s0)
    /* 1E250C 801F179C C7A40034 */  lwc1       $f4, 0x34($sp)
    /* 1E2510 801F17A0 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 1E2514 801F17A4 8E080000 */  lw         $t0, 0x0($s0)
    /* 1E2518 801F17A8 C7A60038 */  lwc1       $f6, 0x38($sp)
    /* 1E251C 801F17AC 3C11801F */  lui        $s1, %hi(D_801F4D60_ovl10)
    /* 1E2520 801F17B0 00084880 */  sll        $t1, $t0, 2
    /* 1E2524 801F17B4 00290821 */  addu       $at, $at, $t1
    /* 1E2528 801F17B8 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 1E252C 801F17BC 8E0A0000 */  lw         $t2, 0x0($s0)
    /* 1E2530 801F17C0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 1E2534 801F17C4 8E314D60 */  lw         $s1, %lo(D_801F4D60_ovl10)($s1)
    /* 1E2538 801F17C8 000A5880 */  sll        $t3, $t2, 2
    /* 1E253C 801F17CC 002B0821 */  addu       $at, $at, $t3
    /* 1E2540 801F17D0 E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 1E2544 801F17D4 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 1E2548 801F17D8 C7A8003C */  lwc1       $f8, 0x3C($sp)
    /* 1E254C 801F17DC 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
    /* 1E2550 801F17E0 00117080 */  sll        $t6, $s1, 2
    /* 1E2554 801F17E4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 1E2558 801F17E8 01EE7821 */  addu       $t7, $t7, $t6
    /* 1E255C 801F17EC 000C6880 */  sll        $t5, $t4, 2
    /* 1E2560 801F17F0 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
    /* 1E2564 801F17F4 002D0821 */  addu       $at, $at, $t5
    /* 1E2568 801F17F8 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 1E256C 801F17FC 27A40028 */  addiu      $a0, $sp, 0x28
    /* 1E2570 801F1800 02203025 */  or         $a2, $s1, $zero
    /* 1E2574 801F1804 0C02C9B6 */  jal        func_800B26D8
    /* 1E2578 801F1808 8DE5000C */   lw        $a1, 0xC($t7)
    /* 1E257C 801F180C 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 1E2580 801F1810 8E10A7C4 */  lw         $s0, %lo(omCurrentObj)($s0)
    /* 1E2584 801F1814 C7AA0028 */  lwc1       $f10, 0x28($sp)
    /* 1E2588 801F1818 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* 1E258C 801F181C 8E180000 */  lw         $t8, 0x0($s0)
    /* 1E2590 801F1820 C7B0002C */  lwc1       $f16, 0x2C($sp)
    /* 1E2594 801F1824 C7B20030 */  lwc1       $f18, 0x30($sp)
    /* 1E2598 801F1828 0018C880 */  sll        $t9, $t8, 2
    /* 1E259C 801F182C 00390821 */  addu       $at, $at, $t9
    /* 1E25A0 801F1830 E42A4010 */  swc1       $f10, %lo(gEntitiesAngleXArray)($at)
    /* 1E25A4 801F1834 8E080000 */  lw         $t0, 0x0($s0)
    /* 1E25A8 801F1838 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 1E25AC 801F183C 00084880 */  sll        $t1, $t0, 2
    /* 1E25B0 801F1840 00290821 */  addu       $at, $at, $t1
    /* 1E25B4 801F1844 E43041D0 */  swc1       $f16, %lo(gEntitiesAngleYArray)($at)
    /* 1E25B8 801F1848 8E0A0000 */  lw         $t2, 0x0($s0)
    /* 1E25BC 801F184C 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
    /* 1E25C0 801F1850 000A5880 */  sll        $t3, $t2, 2
    /* 1E25C4 801F1854 002B0821 */  addu       $at, $at, $t3
    /* 1E25C8 801F1858 E4324390 */  swc1       $f18, %lo(gEntitiesAngleZArray)($at)
  .L801F185C_ovl10:
    /* 1E25CC 801F185C 8FBF001C */  lw         $ra, 0x1C($sp)
  .L801F1860_ovl10:
    /* 1E25D0 801F1860 8FB00014 */  lw         $s0, 0x14($sp)
    /* 1E25D4 801F1864 8FB10018 */  lw         $s1, 0x18($sp)
    /* 1E25D8 801F1868 03E00008 */  jr         $ra
    /* 1E25DC 801F186C 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_801F1554_ovl10
.size func_801F1554_ovl10, . - func_801F1554_ovl10
