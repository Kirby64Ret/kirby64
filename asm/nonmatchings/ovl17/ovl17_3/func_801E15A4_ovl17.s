nonmatching func_801E15A4_ovl17, 0x2EC

glabel func_801E15A4_ovl17
    /* 22C794 801E15A4 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 22C798 801E15A8 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 22C79C 801E15AC 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* 22C7A0 801E15B0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 22C7A4 801E15B4 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 22C7A8 801E15B8 AFB70034 */  sw         $s7, 0x34($sp)
    /* 22C7AC 801E15BC AFB60030 */  sw         $s6, 0x30($sp)
    /* 22C7B0 801E15C0 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 22C7B4 801E15C4 AFB40028 */  sw         $s4, 0x28($sp)
    /* 22C7B8 801E15C8 AFB30024 */  sw         $s3, 0x24($sp)
    /* 22C7BC 801E15CC AFB20020 */  sw         $s2, 0x20($sp)
    /* 22C7C0 801E15D0 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 22C7C4 801E15D4 AFB00018 */  sw         $s0, 0x18($sp)
    /* 22C7C8 801E15D8 AFA40078 */  sw         $a0, 0x78($sp)
    /* 22C7CC 801E15DC 8CE20000 */  lw         $v0, 0x0($a3)
    /* 22C7D0 801E15E0 3C0E800E */  lui        $t6, %hi(D_800E1B50)
    /* 22C7D4 801E15E4 3C0F800B */  lui        $t7, %hi(func_800B4924)
    /* 22C7D8 801E15E8 00021080 */  sll        $v0, $v0, 2
    /* 22C7DC 801E15EC 01C27021 */  addu       $t6, $t6, $v0
    /* 22C7E0 801E15F0 8DCE1B50 */  lw         $t6, %lo(D_800E1B50)($t6)
    /* 22C7E4 801E15F4 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 22C7E8 801E15F8 00220821 */  addu       $at, $at, $v0
    /* 22C7EC 801E15FC 25EF4924 */  addiu      $t7, $t7, %lo(func_800B4924)
    /* 22C7F0 801E1600 AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
    /* 22C7F4 801E1604 AFAE0050 */  sw         $t6, 0x50($sp)
    /* 22C7F8 801E1608 8CF90000 */  lw         $t9, 0x0($a3)
    /* 22C7FC 801E160C 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 22C800 801E1610 3C18801E */  lui        $t8, %hi(func_801E1890_ovl17)
    /* 22C804 801E1614 00194080 */  sll        $t0, $t9, 2
    /* 22C808 801E1618 00280821 */  addu       $at, $at, $t0
    /* 22C80C 801E161C 27181890 */  addiu      $t8, $t8, %lo(func_801E1890_ovl17)
    /* 22C810 801E1620 AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
    /* 22C814 801E1624 8CE90000 */  lw         $t1, 0x0($a3)
    /* 22C818 801E1628 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 22C81C 801E162C 3C040001 */  lui        $a0, (0x100BB >> 16)
    /* 22C820 801E1630 00095080 */  sll        $t2, $t1, 2
    /* 22C824 801E1634 002A0821 */  addu       $at, $at, $t2
    /* 22C828 801E1638 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* 22C82C 801E163C 348400BB */  ori        $a0, $a0, (0x100BB & 0xFFFF)
    /* 22C830 801E1640 24050023 */  addiu      $a1, $zero, 0x23
    /* 22C834 801E1644 0C02A619 */  jal        func_800A9864
    /* 22C838 801E1648 24060010 */   addiu     $a2, $zero, 0x10
    /* 22C83C 801E164C 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* 22C840 801E1650 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* 22C844 801E1654 3C01800E */  lui        $at, %hi(D_800DDA90)
    /* 22C848 801E1658 240B0025 */  addiu      $t3, $zero, 0x25
    /* 22C84C 801E165C 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 22C850 801E1660 3C040001 */  lui        $a0, (0x105C3 >> 16)
    /* 22C854 801E1664 348405C3 */  ori        $a0, $a0, (0x105C3 & 0xFFFF)
    /* 22C858 801E1668 000D7080 */  sll        $t6, $t5, 2
    /* 22C85C 801E166C 002E0821 */  addu       $at, $at, $t6
    /* 22C860 801E1670 0C02A806 */  jal        func_800AA018
    /* 22C864 801E1674 AC2BDA90 */   sw        $t3, %lo(D_800DDA90)($at)
    /* 22C868 801E1678 0C078658 */  jal        func_801E1960_ovl17
    /* 22C86C 801E167C 00000000 */   nop
    /* 22C870 801E1680 0C002DAF */  jal        ohSleep
    /* 22C874 801E1684 2404000D */   addiu     $a0, $zero, 0xD
    /* 22C878 801E1688 0C006291 */  jal        random_soft_s32_range
    /* 22C87C 801E168C 24040005 */   addiu     $a0, $zero, 0x5
    /* 22C880 801E1690 AFA20060 */  sw         $v0, 0x60($sp)
    /* 22C884 801E1694 0C006291 */  jal        random_soft_s32_range
    /* 22C888 801E1698 24040004 */   addiu     $a0, $zero, 0x4
    /* 22C88C 801E169C 244F0005 */  addiu      $t7, $v0, 0x5
    /* 22C890 801E16A0 AFAF0064 */  sw         $t7, 0x64($sp)
    /* 22C894 801E16A4 0C006291 */  jal        random_soft_s32_range
    /* 22C898 801E16A8 2404000A */   addiu     $a0, $zero, 0xA
    /* 22C89C 801E16AC 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 22C8A0 801E16B0 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* 22C8A4 801E16B4 AFA20068 */  sw         $v0, 0x68($sp)
    /* 22C8A8 801E16B8 3C12800F */  lui        $s2, %hi(D_800E9560)
    /* 22C8AC 801E16BC 8CF90000 */  lw         $t9, 0x0($a3)
    /* 22C8B0 801E16C0 26529560 */  addiu      $s2, $s2, %lo(D_800E9560)
    /* 22C8B4 801E16C4 3C17800F */  lui        $s7, %hi(D_800EA8A0)
    /* 22C8B8 801E16C8 0019C080 */  sll        $t8, $t9, 2
    /* 22C8BC 801E16CC 02584021 */  addu       $t0, $s2, $t8
    /* 22C8C0 801E16D0 AD000000 */  sw         $zero, 0x0($t0)
    /* 22C8C4 801E16D4 8CE90000 */  lw         $t1, 0x0($a3)
    /* 22C8C8 801E16D8 3C16800F */  lui        $s6, %hi(D_800EA6E0)
    /* 22C8CC 801E16DC 26D6A6E0 */  addiu      $s6, $s6, %lo(D_800EA6E0)
    /* 22C8D0 801E16E0 00095080 */  sll        $t2, $t1, 2
    /* 22C8D4 801E16E4 024A2821 */  addu       $a1, $s2, $t2
    /* 22C8D8 801E16E8 8CA40000 */  lw         $a0, 0x0($a1)
    /* 22C8DC 801E16EC 26F7A8A0 */  addiu      $s7, $s7, %lo(D_800EA8A0)
    /* 22C8E0 801E16F0 27B50054 */  addiu      $s5, $sp, 0x54
    /* 22C8E4 801E16F4 28810009 */  slti       $at, $a0, 0x9
    /* 22C8E8 801E16F8 10200054 */  beqz       $at, .L801E184C_ovl17
    /* 22C8EC 801E16FC 2414000C */   addiu     $s4, $zero, 0xC
    /* 22C8F0 801E1700 3C1E800F */  lui        $fp, %hi(D_800EAA60)
    /* 22C8F4 801E1704 3C13801E */  lui        $s3, %hi(D_801E5430_ovl17)
    /* 22C8F8 801E1708 26735430 */  addiu      $s3, $s3, %lo(D_801E5430_ovl17)
    /* 22C8FC 801E170C 27DEAA60 */  addiu      $fp, $fp, %lo(D_800EAA60)
    /* 22C900 801E1710 27B0006C */  addiu      $s0, $sp, 0x6C
    /* 22C904 801E1714 00001825 */  or         $v1, $zero, $zero
  .L801E1718_ovl17:
    /* 22C908 801E1718 27A20060 */  addiu      $v0, $sp, 0x60
    /* 22C90C 801E171C 8C4C0000 */  lw         $t4, 0x0($v0)
  .L801E1720_ovl17:
    /* 22C910 801E1720 24420004 */  addiu      $v0, $v0, 0x4
    /* 22C914 801E1724 148C0002 */  bne        $a0, $t4, .L801E1730_ovl17
    /* 22C918 801E1728 00000000 */   nop
    /* 22C91C 801E172C 24030001 */  addiu      $v1, $zero, 0x1
  .L801E1730_ovl17:
    /* 22C920 801E1730 5450FFFB */  bnel       $v0, $s0, .L801E1720_ovl17
    /* 22C924 801E1734 8C4C0000 */   lw        $t4, 0x0($v0)
    /* 22C928 801E1738 1460003B */  bnez       $v1, .L801E1828_ovl17
    /* 22C92C 801E173C 28810005 */   slti      $at, $a0, 0x5
    /* 22C930 801E1740 10200006 */  beqz       $at, .L801E175C_ovl17
    /* 22C934 801E1744 2404003C */   addiu     $a0, $zero, 0x3C
    /* 22C938 801E1748 2404003C */  addiu      $a0, $zero, 0x3C
    /* 22C93C 801E174C 0C06B352 */  jal        func_801ACD48_ovl7
    /* 22C940 801E1750 00002825 */   or        $a1, $zero, $zero
    /* 22C944 801E1754 10000004 */  b          .L801E1768_ovl17
    /* 22C948 801E1758 00408825 */   or        $s1, $v0, $zero
  .L801E175C_ovl17:
    /* 22C94C 801E175C 0C06B352 */  jal        func_801ACD48_ovl7
    /* 22C950 801E1760 24050002 */   addiu     $a1, $zero, 0x2
    /* 22C954 801E1764 00408825 */  or         $s1, $v0, $zero
  .L801E1768_ovl17:
    /* 22C958 801E1768 10400029 */  beqz       $v0, .L801E1810_ovl17
    /* 22C95C 801E176C 3C078005 */   lui       $a3, %hi(omCurrentObj)
    /* 22C960 801E1770 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* 22C964 801E1774 02A02025 */  or         $a0, $s5, $zero
    /* 22C968 801E1778 8CED0000 */  lw         $t5, 0x0($a3)
    /* 22C96C 801E177C 000D5880 */  sll        $t3, $t5, 2
    /* 22C970 801E1780 024B7021 */  addu       $t6, $s2, $t3
    /* 22C974 801E1784 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 22C978 801E1788 01F40019 */  multu      $t7, $s4
    /* 22C97C 801E178C 0000C812 */  mflo       $t9
    /* 22C980 801E1790 0279C021 */  addu       $t8, $s3, $t9
    /* 22C984 801E1794 C7040000 */  lwc1       $f4, 0x0($t8)
    /* 22C988 801E1798 E7A40054 */  swc1       $f4, 0x54($sp)
    /* 22C98C 801E179C 8CE80000 */  lw         $t0, 0x0($a3)
    /* 22C990 801E17A0 00084880 */  sll        $t1, $t0, 2
    /* 22C994 801E17A4 02495021 */  addu       $t2, $s2, $t1
    /* 22C998 801E17A8 8D4C0000 */  lw         $t4, 0x0($t2)
    /* 22C99C 801E17AC 01940019 */  multu      $t4, $s4
    /* 22C9A0 801E17B0 00006812 */  mflo       $t5
    /* 22C9A4 801E17B4 026D5821 */  addu       $t3, $s3, $t5
    /* 22C9A8 801E17B8 C5660004 */  lwc1       $f6, 0x4($t3)
    /* 22C9AC 801E17BC E7A60058 */  swc1       $f6, 0x58($sp)
    /* 22C9B0 801E17C0 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 22C9B4 801E17C4 000E7880 */  sll        $t7, $t6, 2
    /* 22C9B8 801E17C8 024FC821 */  addu       $t9, $s2, $t7
    /* 22C9BC 801E17CC 8F380000 */  lw         $t8, 0x0($t9)
    /* 22C9C0 801E17D0 03140019 */  multu      $t8, $s4
    /* 22C9C4 801E17D4 00004012 */  mflo       $t0
    /* 22C9C8 801E17D8 02684821 */  addu       $t1, $s3, $t0
    /* 22C9CC 801E17DC C5280008 */  lwc1       $f8, 0x8($t1)
    /* 22C9D0 801E17E0 0C078CA3 */  jal        func_801E328C_ovl17
    /* 22C9D4 801E17E4 E7A8005C */   swc1      $f8, 0x5C($sp)
    /* 22C9D8 801E17E8 C7AA0054 */  lwc1       $f10, 0x54($sp)
    /* 22C9DC 801E17EC 00111080 */  sll        $v0, $s1, 2
    /* 22C9E0 801E17F0 02C25021 */  addu       $t2, $s6, $v0
    /* 22C9E4 801E17F4 E54A0000 */  swc1       $f10, 0x0($t2)
    /* 22C9E8 801E17F8 C7B00058 */  lwc1       $f16, 0x58($sp)
    /* 22C9EC 801E17FC 02E26021 */  addu       $t4, $s7, $v0
    /* 22C9F0 801E1800 03C26821 */  addu       $t5, $fp, $v0
    /* 22C9F4 801E1804 E5900000 */  swc1       $f16, 0x0($t4)
    /* 22C9F8 801E1808 C7B2005C */  lwc1       $f18, 0x5C($sp)
    /* 22C9FC 801E180C E5B20000 */  swc1       $f18, 0x0($t5)
  .L801E1810_ovl17:
    /* 22CA00 801E1810 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 22CA04 801E1814 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* 22CA08 801E1818 8CEB0000 */  lw         $t3, 0x0($a3)
    /* 22CA0C 801E181C 000B7080 */  sll        $t6, $t3, 2
    /* 22CA10 801E1820 024E2821 */  addu       $a1, $s2, $t6
    /* 22CA14 801E1824 8CA40000 */  lw         $a0, 0x0($a1)
  .L801E1828_ovl17:
    /* 22CA18 801E1828 248F0001 */  addiu      $t7, $a0, 0x1
    /* 22CA1C 801E182C ACAF0000 */  sw         $t7, 0x0($a1)
    /* 22CA20 801E1830 8CF90000 */  lw         $t9, 0x0($a3)
    /* 22CA24 801E1834 0019C080 */  sll        $t8, $t9, 2
    /* 22CA28 801E1838 02582821 */  addu       $a1, $s2, $t8
    /* 22CA2C 801E183C 8CA40000 */  lw         $a0, 0x0($a1)
    /* 22CA30 801E1840 28810009 */  slti       $at, $a0, 0x9
    /* 22CA34 801E1844 5420FFB4 */  bnel       $at, $zero, .L801E1718_ovl17
    /* 22CA38 801E1848 00001825 */   or        $v1, $zero, $zero
  .L801E184C_ovl17:
    /* 22CA3C 801E184C 8FA90050 */  lw         $t1, 0x50($sp)
    /* 22CA40 801E1850 24080001 */  addiu      $t0, $zero, 0x1
    /* 22CA44 801E1854 A1280040 */  sb         $t0, 0x40($t1)
    /* 22CA48 801E1858 0C068FA0 */  jal        func_801A3E80_ovl7
    /* 22CA4C 801E185C 8FA40078 */   lw        $a0, 0x78($sp)
    /* 22CA50 801E1860 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 22CA54 801E1864 8FB00018 */  lw         $s0, 0x18($sp)
    /* 22CA58 801E1868 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 22CA5C 801E186C 8FB20020 */  lw         $s2, 0x20($sp)
    /* 22CA60 801E1870 8FB30024 */  lw         $s3, 0x24($sp)
    /* 22CA64 801E1874 8FB40028 */  lw         $s4, 0x28($sp)
    /* 22CA68 801E1878 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 22CA6C 801E187C 8FB60030 */  lw         $s6, 0x30($sp)
    /* 22CA70 801E1880 8FB70034 */  lw         $s7, 0x34($sp)
    /* 22CA74 801E1884 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 22CA78 801E1888 03E00008 */  jr         $ra
    /* 22CA7C 801E188C 27BD0078 */   addiu     $sp, $sp, 0x78
endlabel func_801E15A4_ovl17
.size func_801E15A4_ovl17, . - func_801E15A4_ovl17
