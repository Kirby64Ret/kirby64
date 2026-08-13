nonmatching func_80180B58_ovl3, 0x4BC

glabel func_80180B58_ovl3
    /* E1598 80180B58 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* E159C 80180B5C AFBF0014 */  sw         $ra, 0x14($sp)
    /* E15A0 80180B60 0C054EB5 */  jal        func_80153AD4_ovl3
    /* E15A4 80180B64 AFA40048 */   sw        $a0, 0x48($sp)
    /* E15A8 80180B68 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E15AC 80180B6C 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* E15B0 80180B70 3C18800E */  lui        $t8, %hi(gEntitiesNextPosYArray)
    /* E15B4 80180B74 27182790 */  addiu      $t8, $t8, %lo(gEntitiesNextPosYArray)
    /* E15B8 80180B78 8CEE0000 */  lw         $t6, 0x0($a3)
    /* E15BC 80180B7C 3C01800F */  lui        $at, %hi(D_800EC9E4)
    /* E15C0 80180B80 C426C9E4 */  lwc1       $f6, %lo(D_800EC9E4)($at)
    /* E15C4 80180B84 000E7880 */  sll        $t7, $t6, 2
    /* E15C8 80180B88 01F81821 */  addu       $v1, $t7, $t8
    /* E15CC 80180B8C C4640000 */  lwc1       $f4, 0x0($v1)
    /* E15D0 80180B90 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E15D4 80180B94 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E15D8 80180B98 46062201 */  sub.s      $f8, $f4, $f6
    /* E15DC 80180B9C 8D190044 */  lw         $t9, 0x44($t0)
    /* E15E0 80180BA0 24010001 */  addiu      $at, $zero, 0x1
    /* E15E4 80180BA4 17210055 */  bne        $t9, $at, .L80180CFC_ovl3
    /* E15E8 80180BA8 E4680000 */   swc1      $f8, 0x0($v1)
    /* E15EC 80180BAC 8D0900FC */  lw         $t1, 0xFC($t0)
    /* E15F0 80180BB0 3C03800E */  lui        $v1, %hi(D_800E3750)
    /* E15F4 80180BB4 5520003D */  bnel       $t1, $zero, .L80180CAC_ovl3
    /* E15F8 80180BB8 8CEB0000 */   lw        $t3, 0x0($a3)
    /* E15FC 80180BBC 8D0A00A0 */  lw         $t2, 0xA0($t0)
    /* E1600 80180BC0 5140003A */  beql       $t2, $zero, .L80180CAC_ovl3
    /* E1604 80180BC4 8CEB0000 */   lw        $t3, 0x0($a3)
    /* E1608 80180BC8 8CE20000 */  lw         $v0, 0x0($a3)
    /* E160C 80180BCC 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* E1610 80180BD0 3C03800F */  lui        $v1, %hi(D_800E8AE0)
    /* E1614 80180BD4 00021080 */  sll        $v0, $v0, 2
    /* E1618 80180BD8 00220821 */  addu       $at, $at, $v0
    /* E161C 80180BDC C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
    /* E1620 80180BE0 3C018019 */  lui        $at, %hi(D_80197710_ovl3)
    /* E1624 80180BE4 C4307710 */  lwc1       $f16, %lo(D_80197710_ovl3)($at)
    /* E1628 80180BE8 3C01800E */  lui        $at, %hi(D_800E6690)
    /* E162C 80180BEC 00220821 */  addu       $at, $at, $v0
    /* E1630 80180BF0 46105482 */  mul.s      $f18, $f10, $f16
    /* E1634 80180BF4 44802000 */  mtc1       $zero, $f4
    /* E1638 80180BF8 E4326690 */  swc1       $f18, %lo(D_800E6690)($at)
    /* E163C 80180BFC 8CE20000 */  lw         $v0, 0x0($a3)
    /* E1640 80180C00 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* E1644 80180C04 00021080 */  sll        $v0, $v0, 2
    /* E1648 80180C08 00621821 */  addu       $v1, $v1, $v0
    /* E164C 80180C0C 8C638AE0 */  lw         $v1, %lo(D_800E8AE0)($v1)
    /* E1650 80180C10 30630006 */  andi       $v1, $v1, 0x6
    /* E1654 80180C14 54600008 */  bnel       $v1, $zero, .L80180C38_ovl3
    /* E1658 80180C18 44816000 */   mtc1      $at, $f12
    /* E165C 80180C1C 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* E1660 80180C20 44811000 */  mtc1       $at, $f2
    /* E1664 80180C24 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* E1668 80180C28 44816000 */  mtc1       $at, $f12
    /* E166C 80180C2C 10000005 */  b          .L80180C44_ovl3
    /* E1670 80180C30 46001006 */   mov.s     $f0, $f2
    /* E1674 80180C34 44816000 */  mtc1       $at, $f12
  .L80180C38_ovl3:
    /* E1678 80180C38 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* E167C 80180C3C 44811000 */  mtc1       $at, $f2
    /* E1680 80180C40 46006006 */  mov.s      $f0, $f12
  .L80180C44_ovl3:
    /* E1684 80180C44 4604003C */  c.lt.s     $f0, $f4
    /* E1688 80180C48 3C01800E */  lui        $at, %hi(D_800E6850)
    /* E168C 80180C4C 00220821 */  addu       $at, $at, $v0
    /* E1690 80180C50 4500000A */  bc1f       .L80180C7C_ovl3
    /* E1694 80180C54 00000000 */   nop
    /* E1698 80180C58 14600003 */  bnez       $v1, .L80180C68_ovl3
    /* E169C 80180C5C 3C01800E */   lui       $at, %hi(D_800E6850)
    /* E16A0 80180C60 10000002 */  b          .L80180C6C_ovl3
    /* E16A4 80180C64 46001006 */   mov.s     $f0, $f2
  .L80180C68_ovl3:
    /* E16A8 80180C68 46006006 */  mov.s      $f0, $f12
  .L80180C6C_ovl3:
    /* E16AC 80180C6C 46000187 */  neg.s      $f6, $f0
    /* E16B0 80180C70 00220821 */  addu       $at, $at, $v0
    /* E16B4 80180C74 10000007 */  b          .L80180C94_ovl3
    /* E16B8 80180C78 E4266850 */   swc1      $f6, %lo(D_800E6850)($at)
  .L80180C7C_ovl3:
    /* E16BC 80180C7C 54600004 */  bnel       $v1, $zero, .L80180C90_ovl3
    /* E16C0 80180C80 46006006 */   mov.s     $f0, $f12
    /* E16C4 80180C84 10000002 */  b          .L80180C90_ovl3
    /* E16C8 80180C88 46001006 */   mov.s     $f0, $f2
    /* E16CC 80180C8C 46006006 */  mov.s      $f0, $f12
  .L80180C90_ovl3:
    /* E16D0 80180C90 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
  .L80180C94_ovl3:
    /* E16D4 80180C94 0C048596 */  jal        func_80121658
    /* E16D8 80180C98 00000000 */   nop
    /* E16DC 80180C9C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E16E0 80180CA0 1000001A */  b          .L80180D0C_ovl3
    /* E16E4 80180CA4 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* E16E8 80180CA8 8CEB0000 */  lw         $t3, 0x0($a3)
  .L80180CAC_ovl3:
    /* E16EC 80180CAC 44804000 */  mtc1       $zero, $f8
    /* E16F0 80180CB0 24633750 */  addiu      $v1, $v1, %lo(D_800E3750)
    /* E16F4 80180CB4 000B6080 */  sll        $t4, $t3, 2
    /* E16F8 80180CB8 006C6821 */  addu       $t5, $v1, $t4
    /* E16FC 80180CBC E5A80000 */  swc1       $f8, 0x0($t5)
    /* E1700 80180CC0 8CE20000 */  lw         $v0, 0x0($a3)
    /* E1704 80180CC4 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E1708 80180CC8 00021080 */  sll        $v0, $v0, 2
    /* E170C 80180CCC 00627021 */  addu       $t6, $v1, $v0
    /* E1710 80180CD0 C5CA0000 */  lwc1       $f10, 0x0($t6)
    /* E1714 80180CD4 00220821 */  addu       $at, $at, $v0
    /* E1718 80180CD8 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
    /* E171C 80180CDC 8CEF0000 */  lw         $t7, 0x0($a3)
    /* E1720 80180CE0 3C018019 */  lui        $at, %hi(D_80197714_ovl3)
    /* E1724 80180CE4 C4307714 */  lwc1       $f16, %lo(D_80197714_ovl3)($at)
    /* E1728 80180CE8 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E172C 80180CEC 000FC080 */  sll        $t8, $t7, 2
    /* E1730 80180CF0 00380821 */  addu       $at, $at, $t8
    /* E1734 80180CF4 10000005 */  b          .L80180D0C_ovl3
    /* E1738 80180CF8 E4303C90 */   swc1      $f16, %lo(D_800E3C90)($at)
  .L80180CFC_ovl3:
    /* E173C 80180CFC 0C048596 */  jal        func_80121658
    /* E1740 80180D00 00000000 */   nop
    /* E1744 80180D04 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E1748 80180D08 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
  .L80180D0C_ovl3:
    /* E174C 80180D0C 8D190030 */  lw         $t9, 0x30($t0)
    /* E1750 80180D10 5320000F */  beql       $t9, $zero, .L80180D50_ovl3
    /* E1754 80180D14 8D0B00A0 */   lw        $t3, 0xA0($t0)
    /* E1758 80180D18 0C04783A */  jal        func_8011E0E8
    /* E175C 80180D1C 00000000 */   nop
    /* E1760 80180D20 0C047717 */  jal        func_8011DC5C
    /* E1764 80180D24 00000000 */   nop
    /* E1768 80180D28 0C04759F */  jal        func_8011D67C
    /* E176C 80180D2C 00000000 */   nop
    /* E1770 80180D30 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E1774 80180D34 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E1778 80180D38 8D090034 */  lw         $t1, 0x34($t0)
    /* E177C 80180D3C 2401BFFF */  addiu      $at, $zero, -0x4001
    /* E1780 80180D40 01215024 */  and        $t2, $t1, $at
    /* E1784 80180D44 100000AF */  b          .L80181004_ovl3
    /* E1788 80180D48 AD0A0034 */   sw        $t2, 0x34($t0)
    /* E178C 80180D4C 8D0B00A0 */  lw         $t3, 0xA0($t0)
  .L80180D50_ovl3:
    /* E1790 80180D50 516000AD */  beql       $t3, $zero, .L80181008_ovl3
    /* E1794 80180D54 8FBF0014 */   lw        $ra, 0x14($sp)
    /* E1798 80180D58 0C0473D6 */  jal        func_8011CF58
    /* E179C 80180D5C AFA00038 */   sw        $zero, 0x38($sp)
    /* E17A0 80180D60 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E17A4 80180D64 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E17A8 80180D68 8D0C0044 */  lw         $t4, 0x44($t0)
    /* E17AC 80180D6C 24010001 */  addiu      $at, $zero, 0x1
    /* E17B0 80180D70 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E17B4 80180D74 1581000F */  bne        $t4, $at, .L80180DB4_ovl3
    /* E17B8 80180D78 3C048019 */   lui       $a0, %hi(D_801916E8_ovl3)
    /* E17BC 80180D7C 8D0D00FC */  lw         $t5, 0xFC($t0)
    /* E17C0 80180D80 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E17C4 80180D84 51A00006 */  beql       $t5, $zero, .L80180DA0_ovl3
    /* E17C8 80180D88 8D180034 */   lw        $t8, 0x34($t0)
    /* E17CC 80180D8C 8D0E0034 */  lw         $t6, 0x34($t0)
    /* E17D0 80180D90 35CF4000 */  ori        $t7, $t6, 0x4000
    /* E17D4 80180D94 10000005 */  b          .L80180DAC_ovl3
    /* E17D8 80180D98 AD0F0034 */   sw        $t7, 0x34($t0)
    /* E17DC 80180D9C 8D180034 */  lw         $t8, 0x34($t0)
  .L80180DA0_ovl3:
    /* E17E0 80180DA0 2401BFFF */  addiu      $at, $zero, -0x4001
    /* E17E4 80180DA4 0301C824 */  and        $t9, $t8, $at
    /* E17E8 80180DA8 AD190034 */  sw         $t9, 0x34($t0)
  .L80180DAC_ovl3:
    /* E17EC 80180DAC 10000011 */  b          .L80180DF4_ovl3
    /* E17F0 80180DB0 8CE7A7C4 */   lw        $a3, %lo(omCurrentObj)($a3)
  .L80180DB4_ovl3:
    /* E17F4 80180DB4 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* E17F8 80180DB8 3C0B800F */  lui        $t3, %hi(D_800E8920)
    /* E17FC 80180DBC 8CE90000 */  lw         $t1, 0x0($a3)
    /* E1800 80180DC0 00095080 */  sll        $t2, $t1, 2
    /* E1804 80180DC4 016A5821 */  addu       $t3, $t3, $t2
    /* E1808 80180DC8 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
    /* E180C 80180DCC 51600006 */  beql       $t3, $zero, .L80180DE8_ovl3
    /* E1810 80180DD0 8D0E0034 */   lw        $t6, 0x34($t0)
    /* E1814 80180DD4 8D0C0034 */  lw         $t4, 0x34($t0)
    /* E1818 80180DD8 358D4000 */  ori        $t5, $t4, 0x4000
    /* E181C 80180DDC 10000005 */  b          .L80180DF4_ovl3
    /* E1820 80180DE0 AD0D0034 */   sw        $t5, 0x34($t0)
    /* E1824 80180DE4 8D0E0034 */  lw         $t6, 0x34($t0)
  .L80180DE8_ovl3:
    /* E1828 80180DE8 2401BFFF */  addiu      $at, $zero, -0x4001
    /* E182C 80180DEC 01C17824 */  and        $t7, $t6, $at
    /* E1830 80180DF0 AD0F0034 */  sw         $t7, 0x34($t0)
  .L80180DF4_ovl3:
    /* E1834 80180DF4 8CF80000 */  lw         $t8, 0x0($a3)
    /* E1838 80180DF8 3C09800E */  lui        $t1, %hi(D_800DFBD0)
    /* E183C 80180DFC 248416E8 */  addiu      $a0, $a0, %lo(D_801916E8_ovl3)
    /* E1840 80180E00 0018C880 */  sll        $t9, $t8, 2
    /* E1844 80180E04 01394821 */  addu       $t1, $t1, $t9
    /* E1848 80180E08 8D29FBD0 */  lw         $t1, %lo(D_800DFBD0)($t1)
    /* E184C 80180E0C 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
    /* E1850 80180E10 0C05A153 */  jal        func_8016854C_ovl3
    /* E1854 80180E14 8D250024 */   lw        $a1, 0x24($t1)
    /* E1858 80180E18 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E185C 80180E1C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E1860 80180E20 8D0A0044 */  lw         $t2, 0x44($t0)
    /* E1864 80180E24 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* E1868 80180E28 44810000 */  mtc1       $at, $f0
    /* E186C 80180E2C 1540000A */  bnez       $t2, .L80180E58_ovl3
    /* E1870 80180E30 3C048019 */   lui       $a0, %hi(D_801948D4_ovl3)
    /* E1874 80180E34 3C048019 */  lui        $a0, %hi(D_801948A4_ovl3)
    /* E1878 80180E38 3C058013 */  lui        $a1, %hi(D_8012E9B8 + 0x10)
    /* E187C 80180E3C 44070000 */  mfc1       $a3, $f0
    /* E1880 80180E40 24A5E9C8 */  addiu      $a1, $a1, %lo(D_8012E9B8 + 0x10)
    /* E1884 80180E44 248448A4 */  addiu      $a0, $a0, %lo(D_801948A4_ovl3)
    /* E1888 80180E48 0C05481C */  jal        func_80152070_ovl3
    /* E188C 80180E4C 24060003 */   addiu     $a2, $zero, 0x3
    /* E1890 80180E50 10000007 */  b          .L80180E70_ovl3
    /* E1894 80180E54 00000000 */   nop
  .L80180E58_ovl3:
    /* E1898 80180E58 3C058013 */  lui        $a1, %hi(D_8012E9B8 + 0x10)
    /* E189C 80180E5C 44070000 */  mfc1       $a3, $f0
    /* E18A0 80180E60 24A5E9C8 */  addiu      $a1, $a1, %lo(D_8012E9B8 + 0x10)
    /* E18A4 80180E64 248448D4 */  addiu      $a0, $a0, %lo(D_801948D4_ovl3)
    /* E18A8 80180E68 0C05481C */  jal        func_80152070_ovl3
    /* E18AC 80180E6C 24060003 */   addiu     $a2, $zero, 0x3
  .L80180E70_ovl3:
    /* E18B0 80180E70 3C048019 */  lui        $a0, %hi(D_80194904_ovl3)
    /* E18B4 80180E74 24844904 */  addiu      $a0, $a0, %lo(D_80194904_ovl3)
    /* E18B8 80180E78 0C055127 */  jal        func_8015449C_ovl3
    /* E18BC 80180E7C 00002825 */   or        $a1, $zero, $zero
    /* E18C0 80180E80 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* E18C4 80180E84 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* E18C8 80180E88 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
    /* E18CC 80180E8C 27A4003C */  addiu      $a0, $sp, 0x3C
    /* E18D0 80180E90 8D6C0000 */  lw         $t4, 0x0($t3)
    /* E18D4 80180E94 3406FFFF */  ori        $a2, $zero, 0xFFFF
    /* E18D8 80180E98 000C6880 */  sll        $t5, $t4, 2
    /* E18DC 80180E9C 01CD7021 */  addu       $t6, $t6, $t5
    /* E18E0 80180EA0 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
    /* E18E4 80180EA4 0C02C8D0 */  jal        func_800B2340
    /* E18E8 80180EA8 8DC50024 */   lw        $a1, 0x24($t6)
    /* E18EC 80180EAC 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E18F0 80180EB0 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E18F4 80180EB4 8D0F0044 */  lw         $t7, 0x44($t0)
    /* E18F8 80180EB8 24010001 */  addiu      $at, $zero, 0x1
    /* E18FC 80180EBC 27A4003C */  addiu      $a0, $sp, 0x3C
    /* E1900 80180EC0 15E10031 */  bne        $t7, $at, .L80180F88_ovl3
    /* E1904 80180EC4 3C05C282 */   lui       $a1, (0xC2820000 >> 16)
    /* E1908 80180EC8 8D1800FC */  lw         $t8, 0xFC($t0)
    /* E190C 80180ECC 24190001 */  addiu      $t9, $zero, 0x1
    /* E1910 80180ED0 27A4003C */  addiu      $a0, $sp, 0x3C
    /* E1914 80180ED4 13000003 */  beqz       $t8, .L80180EE4_ovl3
    /* E1918 80180ED8 3C0541E4 */   lui       $a1, (0x41E40000 >> 16)
    /* E191C 80180EDC 10000010 */  b          .L80180F20_ovl3
    /* E1920 80180EE0 AFB90038 */   sw        $t9, 0x38($sp)
  .L80180EE4_ovl3:
    /* E1924 80180EE4 0C05560E */  jal        func_80155838_ovl3
    /* E1928 80180EE8 24060002 */   addiu     $a2, $zero, 0x2
    /* E192C 80180EEC 10400003 */  beqz       $v0, .L80180EFC_ovl3
    /* E1930 80180EF0 27A4003C */   addiu     $a0, $sp, 0x3C
    /* E1934 80180EF4 24090001 */  addiu      $t1, $zero, 0x1
    /* E1938 80180EF8 AFA90038 */  sw         $t1, 0x38($sp)
  .L80180EFC_ovl3:
    /* E193C 80180EFC 3C05428C */  lui        $a1, (0x428C0000 >> 16)
    /* E1940 80180F00 0C05560E */  jal        func_80155838_ovl3
    /* E1944 80180F04 24060005 */   addiu     $a2, $zero, 0x5
    /* E1948 80180F08 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E194C 80180F0C 10400004 */  beqz       $v0, .L80180F20_ovl3
    /* E1950 80180F10 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* E1954 80180F14 8FAA0038 */  lw         $t2, 0x38($sp)
    /* E1958 80180F18 254B0001 */  addiu      $t3, $t2, 0x1
    /* E195C 80180F1C AFAB0038 */  sw         $t3, 0x38($sp)
  .L80180F20_ovl3:
    /* E1960 80180F20 8FAC0038 */  lw         $t4, 0x38($sp)
    /* E1964 80180F24 11800014 */  beqz       $t4, .L80180F78_ovl3
    /* E1968 80180F28 00000000 */   nop
    /* E196C 80180F2C 8D0D004C */  lw         $t5, 0x4C($t0)
    /* E1970 80180F30 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* E1974 80180F34 55A00034 */  bnel       $t5, $zero, .L80181008_ovl3
    /* E1978 80180F38 8FBF0014 */   lw        $ra, 0x14($sp)
    /* E197C 80180F3C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* E1980 80180F40 3C19800E */  lui        $t9, %hi(D_800DFBD0)
    /* E1984 80180F44 24040002 */  addiu      $a0, $zero, 0x2
    /* E1988 80180F48 8DCF0000 */  lw         $t7, 0x0($t6)
    /* E198C 80180F4C 24050001 */  addiu      $a1, $zero, 0x1
    /* E1990 80180F50 24060049 */  addiu      $a2, $zero, 0x49
    /* E1994 80180F54 000FC080 */  sll        $t8, $t7, 2
    /* E1998 80180F58 0338C821 */  addu       $t9, $t9, $t8
    /* E199C 80180F5C 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
    /* E19A0 80180F60 0C02A040 */  jal        func_800A8100
    /* E19A4 80180F64 8F270048 */   lw        $a3, 0x48($t9)
    /* E19A8 80180F68 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E19AC 80180F6C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E19B0 80180F70 10000024 */  b          .L80181004_ovl3
    /* E19B4 80180F74 AD02004C */   sw        $v0, 0x4C($t0)
  .L80180F78_ovl3:
    /* E19B8 80180F78 0C04783A */  jal        func_8011E0E8
    /* E19BC 80180F7C 00000000 */   nop
    /* E19C0 80180F80 10000021 */  b          .L80181008_ovl3
    /* E19C4 80180F84 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80180F88_ovl3:
    /* E19C8 80180F88 0C05560E */  jal        func_80155838_ovl3
    /* E19CC 80180F8C 24060003 */   addiu     $a2, $zero, 0x3
    /* E19D0 80180F90 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E19D4 80180F94 10400003 */  beqz       $v0, .L80180FA4_ovl3
    /* E19D8 80180F98 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* E19DC 80180F9C 24090001 */  addiu      $t1, $zero, 0x1
    /* E19E0 80180FA0 AFA90038 */  sw         $t1, 0x38($sp)
  .L80180FA4_ovl3:
    /* E19E4 80180FA4 8FAA0038 */  lw         $t2, 0x38($sp)
    /* E19E8 80180FA8 11400014 */  beqz       $t2, .L80180FFC_ovl3
    /* E19EC 80180FAC 00000000 */   nop
    /* E19F0 80180FB0 8D0B004C */  lw         $t3, 0x4C($t0)
    /* E19F4 80180FB4 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* E19F8 80180FB8 55600013 */  bnel       $t3, $zero, .L80181008_ovl3
    /* E19FC 80180FBC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* E1A00 80180FC0 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* E1A04 80180FC4 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
    /* E1A08 80180FC8 24040002 */  addiu      $a0, $zero, 0x2
    /* E1A0C 80180FCC 8D8D0000 */  lw         $t5, 0x0($t4)
    /* E1A10 80180FD0 24050001 */  addiu      $a1, $zero, 0x1
    /* E1A14 80180FD4 2406004A */  addiu      $a2, $zero, 0x4A
    /* E1A18 80180FD8 000D7080 */  sll        $t6, $t5, 2
    /* E1A1C 80180FDC 01EE7821 */  addu       $t7, $t7, $t6
    /* E1A20 80180FE0 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
    /* E1A24 80180FE4 0C02A040 */  jal        func_800A8100
    /* E1A28 80180FE8 8DE70048 */   lw        $a3, 0x48($t7)
    /* E1A2C 80180FEC 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E1A30 80180FF0 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E1A34 80180FF4 10000003 */  b          .L80181004_ovl3
    /* E1A38 80180FF8 AD02004C */   sw        $v0, 0x4C($t0)
  .L80180FFC_ovl3:
    /* E1A3C 80180FFC 0C04783A */  jal        func_8011E0E8
    /* E1A40 80181000 00000000 */   nop
  .L80181004_ovl3:
    /* E1A44 80181004 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80181008_ovl3:
    /* E1A48 80181008 27BD0048 */  addiu      $sp, $sp, 0x48
    /* E1A4C 8018100C 03E00008 */  jr         $ra
    /* E1A50 80181010 00000000 */   nop
endlabel func_80180B58_ovl3
.size func_80180B58_ovl3, . - func_80180B58_ovl3
