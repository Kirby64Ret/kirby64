glabel func_80160A50_ovl3
/* C1490 80160A50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C1494 80160A54 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* C1498 80160A58 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
.L80160A5C_ovl5:
/* C149C 80160A5C AFBF001C */  sw         $ra, 0x1C($sp)
/* C14A0 80160A60 AFB10018 */  sw         $s1, 0x18($sp)
/* C14A4 80160A64 AFB00014 */  sw         $s0, 0x14($sp)
.L80160A68_ovl5:
/* C14A8 80160A68 8DCF0000 */  lw         $t7, 0x0($t6)
/* C14AC 80160A6C 3C11800F */  lui        $s1, %hi(D_800E98E0)
/* C14B0 80160A70 263198E0 */  addiu      $s1, $s1, %lo(D_800E98E0)
/* C14B4 80160A74 000FC080 */  sll        $t8, $t7, 2
glabel func_80160A78_ovl5
/* C14B8 80160A78 0238C821 */  addu       $t9, $s1, $t8
/* C14BC 80160A7C 0C058738 */  jal        func_80161CE0_ovl3
/* C14C0 80160A80 AF200000 */   sw        $zero, 0x0($t9)
/* C14C4 80160A84 00002025 */  or         $a0, $zero, $zero
/* C14C8 80160A88 24050000 */  addiu      $a1, $zero, 0x0
/* C14CC 80160A8C 0C0587B0 */  jal        func_80161EC0_ovl3
/* C14D0 80160A90 3C0641A0 */   lui       $a2, (0x41A00000 >> 16)
/* C14D4 80160A94 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* C14D8 80160A98 8CE7A7C4 */  lw         $a3, %lo(D_8004A7C4)($a3)
/* C14DC 80160A9C 3C08800B */  lui        $t0, %hi(func_800B49F8)
/* C14E0 80160AA0 3C01800E */  lui        $at, %hi(D_800DEF90)
/* C14E4 80160AA4 8CE90000 */  lw         $t1, 0x0($a3)
/* C14E8 80160AA8 250849F8 */  addiu      $t0, $t0, %lo(func_800B49F8)
/* C14EC 80160AAC 3C0B8016 */  lui        $t3, %hi(func_80160D84_ovl3)
/* C14F0 80160AB0 00095080 */  sll        $t2, $t1, 2
/* C14F4 80160AB4 002A0821 */  addu       $at, $at, $t2
/* C14F8 80160AB8 AC28EF90 */  sw         $t0, %lo(D_800DEF90)($at)
/* C14FC 80160ABC 8CEC0000 */  lw         $t4, 0x0($a3)
/* C1500 80160AC0 3C01800E */  lui        $at, %hi(D_800DF150)
/* C1504 80160AC4 256B0D84 */  addiu      $t3, $t3, %lo(func_80160D84_ovl3)
/* C1508 80160AC8 000C6880 */  sll        $t5, $t4, 2
/* C150C 80160ACC 002D0821 */  addu       $at, $at, $t5
/* C1510 80160AD0 AC2BF150 */  sw         $t3, %lo(D_800DF150)($at)
/* C1514 80160AD4 8CEF0000 */  lw         $t7, 0x0($a3)
/* C1518 80160AD8 3C01800E */  lui        $at, %hi(D_800E0490)
/* C151C 80160ADC 3C0E8019 */  lui        $t6, %hi(D_80192F2C_ovl3)
/* C1520 80160AE0 000FC080 */  sll        $t8, $t7, 2
/* C1524 80160AE4 00380821 */  addu       $at, $at, $t8
/* C1528 80160AE8 25CE2F2C */  addiu      $t6, $t6, %lo(D_80192F2C_ovl3)
/* C152C 80160AEC AC2E0490 */  sw         $t6, %lo(D_800E0490)($at)
/* C1530 80160AF0 8CE20000 */  lw         $v0, 0x0($a3)
/* C1534 80160AF4 3C0C801A */  lui        $t4, %hi(D_801982F8_ovl3)
glabel func_80160AF8_ovl5
/* C1538 80160AF8 3C088019 */  lui        $t0, %hi(D_80197F60_ovl3)
/* C153C 80160AFC 2443FFFC */  addiu      $v1, $v0, -0x4
/* C1540 80160B00 00034880 */  sll        $t1, $v1, 2
/* C1544 80160B04 01234823 */  subu       $t1, $t1, $v1
/* C1548 80160B08 000948C0 */  sll        $t1, $t1, 3
/* C154C 80160B0C 01234823 */  subu       $t1, $t1, $v1
/* C1550 80160B10 3C04800E */  lui        $a0, %hi(D_800E0D50)
/* C1554 80160B14 0002C880 */  sll        $t9, $v0, 2
/* C1558 80160B18 00992021 */  addu       $a0, $a0, $t9
/* C155C 80160B1C 00094880 */  sll        $t1, $t1, 2
/* C1560 80160B20 00035140 */  sll        $t2, $v1, 5
/* C1564 80160B24 25087F60 */  addiu      $t0, $t0, %lo(D_80197F60_ovl3)
/* C1568 80160B28 258C82F8 */  addiu      $t4, $t4, %lo(D_801982F8_ovl3)
/* C156C 80160B2C 014C3021 */  addu       $a2, $t2, $t4
/* C1570 80160B30 01282821 */  addu       $a1, $t1, $t0
/* C1574 80160B34 0C055192 */  jal        func_80154648_ovl3
/* C1578 80160B38 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
/* C157C 80160B3C 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* C1580 80160B40 8CE7A7C4 */  lw         $a3, %lo(D_8004A7C4)($a3)
/* C1584 80160B44 3C018019 */  lui        $at, %hi(D_801970DC_ovl3)
/* C1588 80160B48 C42070DC */  lwc1       $f0, %lo(D_801970DC_ovl3)($at)
/* C158C 80160B4C 8CEB0000 */  lw         $t3, 0x0($a3)
/* C1590 80160B50 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* C1594 80160B54 3C040002 */  lui        $a0, (0x2003F >> 16)
/* C1598 80160B58 000B6880 */  sll        $t5, $t3, 2
/* C159C 80160B5C 002D0821 */  addu       $at, $at, $t5
/* C15A0 80160B60 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* C15A4 80160B64 8CEF0000 */  lw         $t7, 0x0($a3)
/* C15A8 80160B68 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* C15AC 80160B6C 3484003F */  ori        $a0, $a0, (0x2003F & 0xFFFF)
/* C15B0 80160B70 000F7080 */  sll        $t6, $t7, 2
/* C15B4 80160B74 002E0821 */  addu       $at, $at, $t6
/* C15B8 80160B78 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* C15BC 80160B7C 8CF80000 */  lw         $t8, 0x0($a3)
/* C15C0 80160B80 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* C15C4 80160B84 24050021 */  addiu      $a1, $zero, 0x21
/* C15C8 80160B88 0018C880 */  sll        $t9, $t8, 2
/* C15CC 80160B8C 00390821 */  addu       $at, $at, $t9
/* C15D0 80160B90 24060010 */  addiu      $a2, $zero, 0x10
/* C15D4 80160B94 0C02A619 */  jal        func_800A9864
/* C15D8 80160B98 E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* C15DC 80160B9C 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* C15E0 80160BA0 8CE5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a3)
/* C15E4 80160BA4 3C01800F */  lui        $at, %hi(D_800E9720)
/* C15E8 80160BA8 2409001E */  addiu      $t1, $zero, 0x1E
/* C15EC 80160BAC 8CA80000 */  lw         $t0, 0x0($a1)
/* C15F0 80160BB0 00002025 */  or         $a0, $zero, $zero
/* C15F4 80160BB4 00085080 */  sll        $t2, $t0, 2
/* C15F8 80160BB8 002A0821 */  addu       $at, $at, $t2
/* C15FC 80160BBC 0C02BEED */  jal        func_800AFBB4
/* C1600 80160BC0 AC299720 */   sw        $t1, %lo(D_800E9720)($at)
/* C1604 80160BC4 3C040002 */  lui        $a0, (0x20287 >> 16)
/* C1608 80160BC8 0C02A806 */  jal        func_800AA018
/* C160C 80160BCC 34840287 */   ori       $a0, $a0, (0x20287 & 0xFFFF)
/* C1610 80160BD0 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* C1614 80160BD4 8CE7A7C4 */  lw         $a3, %lo(D_8004A7C4)($a3)
/* C1618 80160BD8 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* C161C 80160BDC 44810000 */  mtc1       $at, $f0
/* C1620 80160BE0 8CE20000 */  lw         $v0, 0x0($a3)
/* C1624 80160BE4 3C01800E */  lui        $at, %hi(D_800E6A10)
.L80160BE8_ovl5:
/* C1628 80160BE8 3C05800E */  lui        $a1, %hi(D_800E64D0)
/* C162C 80160BEC 00021080 */  sll        $v0, $v0, 2
/* C1630 80160BF0 00220821 */  addu       $at, $at, $v0
/* C1634 80160BF4 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* C1638 80160BF8 24A564D0 */  addiu      $a1, $a1, %lo(D_800E64D0)
/* C163C 80160BFC 00A26021 */  addu       $t4, $a1, $v0
/* C1640 80160C00 46002182 */  mul.s      $f6, $f4, $f0
/* C1644 80160C04 3C06800E */  lui        $a2, %hi(D_800E6850)
/* C1648 80160C08 24C66850 */  addiu      $a2, $a2, %lo(D_800E6850)
/* C164C 80160C0C 3C10800F */  lui        $s0, %hi(D_800E83E0)
/* C1650 80160C10 261083E0 */  addiu      $s0, $s0, %lo(D_800E83E0)
/* C1654 80160C14 E5860000 */  swc1       $f6, 0x0($t4)
/* C1658 80160C18 8CEB0000 */  lw         $t3, 0x0($a3)
.L80160C1C_ovl5:
/* C165C 80160C1C 000B6880 */  sll        $t5, $t3, 2
/* C1660 80160C20 00CD7821 */  addu       $t7, $a2, $t5
/* C1664 80160C24 E5E00000 */  swc1       $f0, 0x0($t7)
.L80160C28_ovl3:
/* C1668 80160C28 8CE20000 */  lw         $v0, 0x0($a3)
/* C166C 80160C2C 00021080 */  sll        $v0, $v0, 2
/* C1670 80160C30 02027021 */  addu       $t6, $s0, $v0
/* C1674 80160C34 8DD80000 */  lw         $t8, 0x0($t6)
.L80160C38_ovl5:
/* C1678 80160C38 0222C821 */  addu       $t9, $s1, $v0
/* C167C 80160C3C 5300001D */  beql       $t8, $zero, .L80160CB4_ovl3
/* C1680 80160C40 8F280000 */   lw        $t0, 0x0($t9)
/* C1684 80160C44 44804000 */  mtc1       $zero, $f8
.L80160C48_ovl5:
/* C1688 80160C48 3C03800E */  lui        $v1, %hi(D_800E6690)
/* C168C 80160C4C 24636690 */  addiu      $v1, $v1, %lo(D_800E6690)
/* C1690 80160C50 0062C821 */  addu       $t9, $v1, $v0
/* C1694 80160C54 E7280000 */  swc1       $f8, 0x0($t9)
/* C1698 80160C58 8CE20000 */  lw         $v0, 0x0($a3)
/* C169C 80160C5C 3C018019 */  lui        $at, %hi(D_801970E0_ovl3)
/* C16A0 80160C60 240D0001 */  addiu      $t5, $zero, 0x1
.L80160C64_ovl5:
/* C16A4 80160C64 00021080 */  sll        $v0, $v0, 2
/* C16A8 80160C68 00624021 */  addu       $t0, $v1, $v0
/* C16AC 80160C6C C50A0000 */  lwc1       $f10, 0x0($t0)
/* C16B0 80160C70 00A24821 */  addu       $t1, $a1, $v0
.L80160C74_ovl5:
/* C16B4 80160C74 24040012 */  addiu      $a0, $zero, 0x12
/* C16B8 80160C78 E52A0000 */  swc1       $f10, 0x0($t1)
/* C16BC 80160C7C 8CEA0000 */  lw         $t2, 0x0($a3)
/* C16C0 80160C80 C43070E0 */  lwc1       $f16, %lo(D_801970E0_ovl3)($at)
/* C16C4 80160C84 000A6080 */  sll        $t4, $t2, 2
/* C16C8 80160C88 00CC5821 */  addu       $t3, $a2, $t4
/* C16CC 80160C8C E5700000 */  swc1       $f16, 0x0($t3)
.L80160C90_ovl5:
/* C16D0 80160C90 8CEF0000 */  lw         $t7, 0x0($a3)
/* C16D4 80160C94 000F7080 */  sll        $t6, $t7, 2
/* C16D8 80160C98 022EC021 */  addu       $t8, $s1, $t6
/* C16DC 80160C9C 0C029D9E */  jal        play_sound
/* C16E0 80160CA0 AF0D0000 */   sw        $t5, 0x0($t8)
/* C16E4 80160CA4 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* C16E8 80160CA8 1000000D */  b          .L80160CE0_ovl3
/* C16EC 80160CAC 8CE7A7C4 */   lw        $a3, %lo(D_8004A7C4)($a3)
.L80160CB0_ovl5:
/* C16F0 80160CB0 8F280000 */  lw         $t0, 0x0($t9)
.L80160CB4_ovl3:
/* C16F4 80160CB4 5500000B */  bnel       $t0, $zero, .L80160CE4_ovl3
/* C16F8 80160CB8 24040001 */   addiu     $a0, $zero, 0x1
/* C16FC 80160CBC 0C002DAF */  jal        finish_current_thread
/* C1700 80160CC0 24040001 */   addiu     $a0, $zero, 0x1
/* C1704 80160CC4 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* C1708 80160CC8 3C06800E */  lui        $a2, %hi(D_800E6850)
/* C170C 80160CCC 3C05800E */  lui        $a1, %hi(D_800E64D0)
/* C1710 80160CD0 24A564D0 */  addiu      $a1, $a1, %lo(D_800E64D0)
/* C1714 80160CD4 24C66850 */  addiu      $a2, $a2, %lo(D_800E6850)
.L80160CD8_ovl5:
/* C1718 80160CD8 1000FFD3 */  b          .L80160C28_ovl3
/* C171C 80160CDC 8CE7A7C4 */   lw        $a3, %lo(D_8004A7C4)($a3)
.L80160CE0_ovl3:
/* C1720 80160CE0 24040001 */  addiu      $a0, $zero, 0x1
.L80160CE4_ovl3:
/* C1724 80160CE4 0C02BEED */  jal        func_800AFBB4
/* C1728 80160CE8 00E02825 */   or        $a1, $a3, $zero
/* C172C 80160CEC 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* C1730 80160CF0 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
.L80160CF4_ovl5:
/* C1734 80160CF4 24010001 */  addiu      $at, $zero, 0x1
/* C1738 80160CF8 8D220000 */  lw         $v0, 0x0($t1)
.L80160CFC_ovl5:
/* C173C 80160CFC 00021080 */  sll        $v0, $v0, 2
/* C1740 80160D00 02225021 */  addu       $t2, $s1, $v0
/* C1744 80160D04 8D4C0000 */  lw         $t4, 0x0($t2)
/* C1748 80160D08 02025821 */  addu       $t3, $s0, $v0
/* C174C 80160D0C 1581000E */  bne        $t4, $at, .L80160D48_ovl3
/* C1750 80160D10 00000000 */   nop
/* C1754 80160D14 8D6F0000 */  lw         $t7, 0x0($t3)
/* C1758 80160D18 24010002 */  addiu      $at, $zero, 0x2
/* C175C 80160D1C 31EEFFFF */  andi       $t6, $t7, 0xFFFF
/* C1760 80160D20 15C10005 */  bne        $t6, $at, .L80160D38_ovl3
/* C1764 80160D24 00000000 */   nop
/* C1768 80160D28 0C002DAF */  jal        finish_current_thread
/* C176C 80160D2C 2404000A */   addiu     $a0, $zero, 0xA
/* C1770 80160D30 10000007 */  b          func_80160D50_ovl5
/* C1774 80160D34 00000000 */   nop
.L80160D38_ovl3:
/* C1778 80160D38 0C002DAF */  jal        finish_current_thread
/* C177C 80160D3C 24040002 */   addiu     $a0, $zero, 0x2
/* C1780 80160D40 10000003 */  b          func_80160D50_ovl5
/* C1784 80160D44 00000000 */   nop
.L80160D48_ovl3:
/* C1788 80160D48 0C002DAF */  jal        finish_current_thread
/* C178C 80160D4C 2404000A */   addiu     $a0, $zero, 0xA
glabel func_80160D50_ovl5
/* C1790 80160D50 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* C1794 80160D54 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* C1798 80160D58 240D0003 */  addiu      $t5, $zero, 0x3
/* C179C 80160D5C 8F190000 */  lw         $t9, 0x0($t8)
/* C17A0 80160D60 00194080 */  sll        $t0, $t9, 2
/* C17A4 80160D64 02284821 */  addu       $t1, $s1, $t0
/* C17A8 80160D68 0C02BE85 */  jal        func_800AFA14
/* C17AC 80160D6C AD2D0000 */   sw        $t5, 0x0($t1)
/* C17B0 80160D70 8FBF001C */  lw         $ra, 0x1C($sp)
/* C17B4 80160D74 8FB00014 */  lw         $s0, 0x14($sp)
/* C17B8 80160D78 8FB10018 */  lw         $s1, 0x18($sp)
/* C17BC 80160D7C 03E00008 */  jr         $ra
/* C17C0 80160D80 27BD0020 */   addiu     $sp, $sp, 0x20
