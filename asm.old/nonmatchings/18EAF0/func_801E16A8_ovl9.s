glabel func_801E16A8_ovl9
/* 18F6F8 801E16A8 27BDFFC8 */  addiu      $sp, $sp, -0x38
.L801E16AC_ovl10:
/* 18F6FC 801E16AC AFB20028 */  sw         $s2, 0x28($sp)
/* 18F700 801E16B0 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 18F704 801E16B4 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
.L801E16B8_ovl10:
/* 18F708 801E16B8 8E450000 */  lw         $a1, 0x0($s2)
/* 18F70C 801E16BC AFBF0034 */  sw         $ra, 0x34($sp)
/* 18F710 801E16C0 AFB40030 */  sw         $s4, 0x30($sp)
/* 18F714 801E16C4 AFB3002C */  sw         $s3, 0x2C($sp)
/* 18F718 801E16C8 AFB10024 */  sw         $s1, 0x24($sp)
/* 18F71C 801E16CC AFB00020 */  sw         $s0, 0x20($sp)
/* 18F720 801E16D0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 18F724 801E16D4 AFA40038 */  sw         $a0, 0x38($sp)
/* 18F728 801E16D8 8CAF0000 */  lw         $t7, 0x0($a1)
/* 18F72C 801E16DC 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 18F730 801E16E0 240E0001 */  addiu      $t6, $zero, 0x1
/* 18F734 801E16E4 000FC080 */  sll        $t8, $t7, 2
/* 18F738 801E16E8 00380821 */  addu       $at, $at, $t8
.L801E16EC_ovl16:
/* 18F73C 801E16EC AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 18F740 801E16F0 8CB90000 */  lw         $t9, 0x0($a1)
.L801E16F4_ovl10:
/* 18F744 801E16F4 3C04801D */  lui        $a0, %hi(D_801CAAC0)
glabel func_801E16F8_ovl16
/* 18F748 801E16F8 3C01800E */  lui        $at, %hi(D_800E0490)
/* 18F74C 801E16FC 00194080 */  sll        $t0, $t9, 2
/* 18F750 801E1700 2484AAC0 */  addiu      $a0, $a0, %lo(D_801CAAC0)
/* 18F754 801E1704 00280821 */  addu       $at, $at, $t0
/* 18F758 801E1708 0C068AB7 */  jal        func_801A2ADC_ovl7
/* 18F75C 801E170C AC240490 */   sw        $a0, %lo(D_800E0490)($at)
/* 18F760 801E1710 8E4A0000 */  lw         $t2, 0x0($s2)
/* 18F764 801E1714 3C0D800E */  lui        $t5, %hi(D_800E1B50)
.L801E1718_ovl17:
/* 18F768 801E1718 3C09801D */  lui        $t1, %hi(D_801CB9EC)
/* 18F76C 801E171C 8D4B0000 */  lw         $t3, 0x0($t2)
glabel func_801E1720_ovl17
/* 18F770 801E1720 2529B9EC */  addiu      $t1, $t1, %lo(D_801CB9EC)
/* 18F774 801E1724 44806000 */  mtc1       $zero, $f12
glabel func_801E1728_ovl14
/* 18F778 801E1728 000B6080 */  sll        $t4, $t3, 2
.L801E172C_ovl12:
/* 18F77C 801E172C 01AC6821 */  addu       $t5, $t5, $t4
.L801E1730_ovl17:
/* 18F780 801E1730 8DAD1B50 */  lw         $t5, %lo(D_800E1B50)($t5)
.L801E1734_ovl13:
/* 18F784 801E1734 3C04800E */  lui        $a0, %hi(D_800E3910)
/* 18F788 801E1738 24843910 */  addiu      $a0, $a0, %lo(D_800E3910)
glabel func_801E173C_ovl15
/* 18F78C 801E173C ADA90098 */  sw         $t1, 0x98($t5)
/* 18F790 801E1740 8E450000 */  lw         $a1, 0x0($s2)
/* 18F794 801E1744 3C01800E */  lui        $at, %hi(D_800E3750)
/* 18F798 801E1748 3C06800E */  lui        $a2, %hi(D_800E3210)
/* 18F79C 801E174C 8CAF0000 */  lw         $t7, 0x0($a1)
/* 18F7A0 801E1750 24C63210 */  addiu      $a2, $a2, %lo(D_800E3210)
/* 18F7A4 801E1754 3C07800E */  lui        $a3, %hi(D_800E3E50)
.L801E1758_ovl13:
/* 18F7A8 801E1758 000F7080 */  sll        $t6, $t7, 2
.L801E175C_ovl17:
/* 18F7AC 801E175C 008EC021 */  addu       $t8, $a0, $t6
/* 18F7B0 801E1760 E70C0000 */  swc1       $f12, 0x0($t8)
/* 18F7B4 801E1764 8CA20000 */  lw         $v0, 0x0($a1)
.L801E1768_ovl17:
/* 18F7B8 801E1768 24E73E50 */  addiu      $a3, $a3, %lo(D_800E3E50)
/* 18F7BC 801E176C 3C13800E */  lui        $s3, %hi(D_800E6850)
/* 18F7C0 801E1770 00021080 */  sll        $v0, $v0, 2
/* 18F7C4 801E1774 0082C821 */  addu       $t9, $a0, $v0
/* 18F7C8 801E1778 C7200000 */  lwc1       $f0, 0x0($t9)
glabel func_801E177C_ovl15
/* 18F7CC 801E177C 00220821 */  addu       $at, $at, $v0
/* 18F7D0 801E1780 26736850 */  addiu      $s3, $s3, %lo(D_800E6850)
.L801E1784_ovl12:
/* 18F7D4 801E1784 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
/* 18F7D8 801E1788 8CA80000 */  lw         $t0, 0x0($a1)
/* 18F7DC 801E178C 3C01800E */  lui        $at, %hi(D_800E3590)
/* 18F7E0 801E1790 3C14800E */  lui        $s4, %hi(D_800E6690)
/* 18F7E4 801E1794 00085080 */  sll        $t2, $t0, 2
/* 18F7E8 801E1798 002A0821 */  addu       $at, $at, $t2
/* 18F7EC 801E179C E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 18F7F0 801E17A0 8CAB0000 */  lw         $t3, 0x0($a1)
.L801E17A4_ovl12:
/* 18F7F4 801E17A4 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 18F7F8 801E17A8 26946690 */  addiu      $s4, $s4, %lo(D_800E6690)
/* 18F7FC 801E17AC 000B6080 */  sll        $t4, $t3, 2
/* 18F800 801E17B0 002C0821 */  addu       $at, $at, $t4
/* 18F804 801E17B4 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
/* 18F808 801E17B8 8CA90000 */  lw         $t1, 0x0($a1)
/* 18F80C 801E17BC 3C01800E */  lui        $at, %hi(D_800E3050)
/* 18F810 801E17C0 3C040001 */  lui        $a0, (0x101B3 >> 16)
/* 18F814 801E17C4 00096880 */  sll        $t5, $t1, 2
/* 18F818 801E17C8 00CD7821 */  addu       $t7, $a2, $t5
/* 18F81C 801E17CC E5E00000 */  swc1       $f0, 0x0($t7)
/* 18F820 801E17D0 8CAE0000 */  lw         $t6, 0x0($a1)
/* 18F824 801E17D4 000EC080 */  sll        $t8, $t6, 2
/* 18F828 801E17D8 00380821 */  addu       $at, $at, $t8
/* 18F82C 801E17DC E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
glabel func_801E17E0_ovl16
/* 18F830 801E17E0 8CB90000 */  lw         $t9, 0x0($a1)
/* 18F834 801E17E4 3C018022 */  lui        $at, %hi(D_8021CFAC_ovl9)
/* 18F838 801E17E8 C424CFAC */  lwc1       $f4, %lo(D_8021CFAC_ovl9)($at)
/* 18F83C 801E17EC 00194080 */  sll        $t0, $t9, 2
/* 18F840 801E17F0 00E85021 */  addu       $t2, $a3, $t0
/* 18F844 801E17F4 E5440000 */  swc1       $f4, 0x0($t2)
/* 18F848 801E17F8 8CA20000 */  lw         $v0, 0x0($a1)
/* 18F84C 801E17FC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 18F850 801E1800 00021080 */  sll        $v0, $v0, 2
glabel func_801E1804_ovl12
/* 18F854 801E1804 00E25821 */  addu       $t3, $a3, $v0
/* 18F858 801E1808 C5620000 */  lwc1       $f2, 0x0($t3)
/* 18F85C 801E180C 00220821 */  addu       $at, $at, $v0
.L801E1810_ovl17:
/* 18F860 801E1810 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* 18F864 801E1814 8CAC0000 */  lw         $t4, 0x0($a1)
/* 18F868 801E1818 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 18F86C 801E181C 000C4880 */  sll        $t1, $t4, 2
/* 18F870 801E1820 00290821 */  addu       $at, $at, $t1
/* 18F874 801E1824 E4223AD0 */  swc1       $f2, %lo(D_800E3AD0)($at)
.L801E1828_ovl17:
/* 18F878 801E1828 8CA20000 */  lw         $v0, 0x0($a1)
/* 18F87C 801E182C 3C01800F */  lui        $at, %hi(D_800EB320)
/* 18F880 801E1830 00021080 */  sll        $v0, $v0, 2
/* 18F884 801E1834 00220821 */  addu       $at, $at, $v0
/* 18F888 801E1838 C426B320 */  lwc1       $f6, %lo(D_800EB320)($at)
.L801E183C_ovl10:
/* 18F88C 801E183C 00C26821 */  addu       $t5, $a2, $v0
/* 18F890 801E1840 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 18F894 801E1844 E5A60000 */  swc1       $f6, 0x0($t5)
/* 18F898 801E1848 8CAF0000 */  lw         $t7, 0x0($a1)
.L801E184C_ovl17:
/* 18F89C 801E184C 44814000 */  mtc1       $at, $f8
.L801E1850_ovl16:
/* 18F8A0 801E1850 3C01800E */  lui        $at, %hi(D_800E6A10)
.L801E1854_ovl15:
/* 18F8A4 801E1854 000F7080 */  sll        $t6, $t7, 2
/* 18F8A8 801E1858 026EC021 */  addu       $t8, $s3, $t6
glabel func_801E185C_ovl13
/* 18F8AC 801E185C E7080000 */  swc1       $f8, 0x0($t8)
/* 18F8B0 801E1860 8CA20000 */  lw         $v0, 0x0($a1)
/* 18F8B4 801E1864 00021080 */  sll        $v0, $v0, 2
glabel func_801E1868_ovl15
/* 18F8B8 801E1868 02821821 */  addu       $v1, $s4, $v0
/* 18F8BC 801E186C C46A0000 */  lwc1       $f10, 0x0($v1)
.L801E1870_ovl10:
/* 18F8C0 801E1870 00220821 */  addu       $at, $at, $v0
.L801E1874_ovl16:
/* 18F8C4 801E1874 460A6032 */  c.eq.s     $f12, $f10
/* 18F8C8 801E1878 00000000 */  nop
/* 18F8CC 801E187C 45000006 */  bc1f       .L801E1898_ovl9
glabel func_801E1880_ovl10
/* 18F8D0 801E1880 00000000 */   nop
.L801E1884_ovl12:
/* 18F8D4 801E1884 C4306A10 */  lwc1       $f16, %lo(D_800E6A10)($at)
/* 18F8D8 801E1888 3C018022 */  lui        $at, %hi(D_8021CFB0_ovl9)
/* 18F8DC 801E188C C432CFB0 */  lwc1       $f18, %lo(D_8021CFB0_ovl9)($at)
glabel func_801E1890_ovl17
/* 18F8E0 801E1890 46128102 */  mul.s      $f4, $f16, $f18
.L801E1894_ovl16:
/* 18F8E4 801E1894 E4640000 */  swc1       $f4, 0x0($v1)
.L801E1898_ovl9:
/* 18F8E8 801E1898 0C02A7A9 */  jal        func_800A9EA4
/* 18F8EC 801E189C 348401B3 */   ori       $a0, $a0, (0x101B3 & 0xFFFF)
/* 18F8F0 801E18A0 8E450000 */  lw         $a1, 0x0($s2)
.L801E18A4_ovl16:
/* 18F8F4 801E18A4 3C10800F */  lui        $s0, %hi(D_800E9C60)
glabel func_801E18A8_ovl10
/* 18F8F8 801E18A8 26109C60 */  addiu      $s0, $s0, %lo(D_800E9C60)
/* 18F8FC 801E18AC 8CB90000 */  lw         $t9, 0x0($a1)
.L801E18B0_ovl16:
/* 18F900 801E18B0 3C11800E */  lui        $s1, %hi(D_800E64D0)
/* 18F904 801E18B4 00194080 */  sll        $t0, $t9, 2
/* 18F908 801E18B8 02081021 */  addu       $v0, $s0, $t0
glabel func_801E18BC_ovl16
/* 18F90C 801E18BC 8C430000 */  lw         $v1, 0x0($v0)
/* 18F910 801E18C0 0003202A */  slt        $a0, $zero, $v1
.L801E18C4_ovl17:
/* 18F914 801E18C4 246AFFFF */  addiu      $t2, $v1, -0x1
/* 18F918 801E18C8 10800023 */  beqz       $a0, .L801E1958_ovl9
/* 18F91C 801E18CC AC4A0000 */   sw        $t2, 0x0($v0)
/* 18F920 801E18D0 4480A000 */  mtc1       $zero, $f20
/* 18F924 801E18D4 263164D0 */  addiu      $s1, $s1, %lo(D_800E64D0)
.L801E18D8_ovl9:
/* 18F928 801E18D8 8CA20000 */  lw         $v0, 0x0($a1)
/* 18F92C 801E18DC 00021080 */  sll        $v0, $v0, 2
/* 18F930 801E18E0 02225821 */  addu       $t3, $s1, $v0
/* 18F934 801E18E4 C5600000 */  lwc1       $f0, 0x0($t3)
/* 18F938 801E18E8 02626021 */  addu       $t4, $s3, $v0
/* 18F93C 801E18EC 02821821 */  addu       $v1, $s4, $v0
/* 18F940 801E18F0 4614003C */  c.lt.s     $f0, $f20
/* 18F944 801E18F4 00000000 */  nop
/* 18F948 801E18F8 45020004 */  bc1fl      .L801E190C_ovl17
/* 18F94C 801E18FC 46000086 */   mov.s     $f2, $f0
/* 18F950 801E1900 10000002 */  b          .L801E190C_ovl17
/* 18F954 801E1904 46000087 */   neg.s     $f2, $f0
/* 18F958 801E1908 46000086 */  mov.s      $f2, $f0
.L801E190C_ovl17:
/* 18F95C 801E190C C5860000 */  lwc1       $f6, 0x0($t4)
/* 18F960 801E1910 46061032 */  c.eq.s     $f2, $f6
/* 18F964 801E1914 00000000 */  nop
/* 18F968 801E1918 45000004 */  bc1f       .L801E192C_ovl9
/* 18F96C 801E191C 00000000 */   nop
/* 18F970 801E1920 C4680000 */  lwc1       $f8, 0x0($v1)
/* 18F974 801E1924 46004287 */  neg.s      $f10, $f8
/* 18F978 801E1928 E46A0000 */  swc1       $f10, 0x0($v1)
.L801E192C_ovl9:
/* 18F97C 801E192C 0C002DAF */  jal        finish_current_thread
/* 18F980 801E1930 24040001 */   addiu     $a0, $zero, 0x1
/* 18F984 801E1934 8E450000 */  lw         $a1, 0x0($s2)
.L801E1938_ovl17:
/* 18F988 801E1938 8CA90000 */  lw         $t1, 0x0($a1)
/* 18F98C 801E193C 00096880 */  sll        $t5, $t1, 2
/* 18F990 801E1940 020D1021 */  addu       $v0, $s0, $t5
/* 18F994 801E1944 8C430000 */  lw         $v1, 0x0($v0)
/* 18F998 801E1948 0003202A */  slt        $a0, $zero, $v1
.L801E194C_ovl15:
/* 18F99C 801E194C 246FFFFF */  addiu      $t7, $v1, -0x1
/* 18F9A0 801E1950 1480FFE1 */  bnez       $a0, .L801E18D8_ovl9
.L801E1954_ovl17:
/* 18F9A4 801E1954 AC4F0000 */   sw        $t7, 0x0($v0)
.L801E1958_ovl9:
/* 18F9A8 801E1958 8CB80000 */  lw         $t8, 0x0($a1)
/* 18F9AC 801E195C 8FBF0034 */  lw         $ra, 0x34($sp)
glabel func_801E1960_ovl17
/* 18F9B0 801E1960 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 18F9B4 801E1964 0018C880 */  sll        $t9, $t8, 2
/* 18F9B8 801E1968 00390821 */  addu       $at, $at, $t9
/* 18F9BC 801E196C 240E0005 */  addiu      $t6, $zero, 0x5
/* 18F9C0 801E1970 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 18F9C4 801E1974 8FB00020 */  lw         $s0, 0x20($sp)
/* 18F9C8 801E1978 8FB10024 */  lw         $s1, 0x24($sp)
/* 18F9CC 801E197C 8FB20028 */  lw         $s2, 0x28($sp)
/* 18F9D0 801E1980 8FB3002C */  lw         $s3, 0x2C($sp)
/* 18F9D4 801E1984 8FB40030 */  lw         $s4, 0x30($sp)
.L801E1988_ovl12:
/* 18F9D8 801E1988 AC2EDC50 */  sw         $t6, %lo(gEntityVtableIndexArray)($at)
/* 18F9DC 801E198C 03E00008 */  jr         $ra
/* 18F9E0 801E1990 27BD0038 */   addiu     $sp, $sp, 0x38
