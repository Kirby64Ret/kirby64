nonmatching func_801D1718_ovl9, 0x4B4

glabel func_801D1718_ovl9
    /* 17F768 801D1718 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 17F76C 801D171C AFB30034 */  sw         $s3, 0x34($sp)
    /* 17F770 801D1720 3C138005 */  lui        $s3, %hi(omCurrentObj)
    /* 17F774 801D1724 2673A7C4 */  addiu      $s3, $s3, %lo(omCurrentObj)
    /* 17F778 801D1728 8E650000 */  lw         $a1, 0x0($s3)
    /* 17F77C 801D172C AFBF004C */  sw         $ra, 0x4C($sp)
    /* 17F780 801D1730 AFBE0048 */  sw         $fp, 0x48($sp)
    /* 17F784 801D1734 AFB70044 */  sw         $s7, 0x44($sp)
    /* 17F788 801D1738 AFB60040 */  sw         $s6, 0x40($sp)
    /* 17F78C 801D173C AFB5003C */  sw         $s5, 0x3C($sp)
    /* 17F790 801D1740 AFB40038 */  sw         $s4, 0x38($sp)
    /* 17F794 801D1744 AFB20030 */  sw         $s2, 0x30($sp)
    /* 17F798 801D1748 AFB1002C */  sw         $s1, 0x2C($sp)
    /* 17F79C 801D174C AFB00028 */  sw         $s0, 0x28($sp)
    /* 17F7A0 801D1750 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* 17F7A4 801D1754 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 17F7A8 801D1758 8CA30000 */  lw         $v1, 0x0($a1)
    /* 17F7AC 801D175C 3C12800F */  lui        $s2, %hi(D_800E9AA0)
    /* 17F7B0 801D1760 26529AA0 */  addiu      $s2, $s2, %lo(D_800E9AA0)
    /* 17F7B4 801D1764 00031880 */  sll        $v1, $v1, 2
    /* 17F7B8 801D1768 02437021 */  addu       $t6, $s2, $v1
    /* 17F7BC 801D176C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 17F7C0 801D1770 00808025 */  or         $s0, $a0, $zero
    /* 17F7C4 801D1774 15E00006 */  bnez       $t7, .L801D1790_ovl9
    /* 17F7C8 801D1778 00000000 */   nop
    /* 17F7CC 801D177C 0C0743FD */  jal        func_801D0FF4_ovl9
    /* 17F7D0 801D1780 24050001 */   addiu     $a1, $zero, 0x1
    /* 17F7D4 801D1784 8E650000 */  lw         $a1, 0x0($s3)
    /* 17F7D8 801D1788 8CA30000 */  lw         $v1, 0x0($a1)
    /* 17F7DC 801D178C 00031880 */  sll        $v1, $v1, 2
  .L801D1790_ovl9:
    /* 17F7E0 801D1790 3C18800B */  lui        $t8, %hi(func_800B6A2C)
    /* 17F7E4 801D1794 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 17F7E8 801D1798 00230821 */  addu       $at, $at, $v1
    /* 17F7EC 801D179C 27186A2C */  addiu      $t8, $t8, %lo(func_800B6A2C)
    /* 17F7F0 801D17A0 AC38EF90 */  sw         $t8, %lo(D_800DEF90)($at)
    /* 17F7F4 801D17A4 8CB90000 */  lw         $t9, 0x0($a1)
    /* 17F7F8 801D17A8 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* 17F7FC 801D17AC 241E0002 */  addiu      $fp, $zero, 0x2
    /* 17F800 801D17B0 00194080 */  sll        $t0, $t9, 2
    /* 17F804 801D17B4 00280821 */  addu       $at, $at, $t0
    /* 17F808 801D17B8 AC3EDFD0 */  sw         $fp, %lo(D_800DDFD0)($at)
    /* 17F80C 801D17BC 8CAA0000 */  lw         $t2, 0x0($a1)
    /* 17F810 801D17C0 3C02800E */  lui        $v0, %hi(D_800E1B50)
    /* 17F814 801D17C4 24421B50 */  addiu      $v0, $v0, %lo(D_800E1B50)
    /* 17F818 801D17C8 000A5880 */  sll        $t3, $t2, 2
    /* 17F81C 801D17CC 004B6021 */  addu       $t4, $v0, $t3
    /* 17F820 801D17D0 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 17F824 801D17D4 3C09801C */  lui        $t1, %hi(D_801C7F84_ovl7)
    /* 17F828 801D17D8 25297F84 */  addiu      $t1, $t1, %lo(D_801C7F84_ovl7)
    /* 17F82C 801D17DC ADA9008C */  sw         $t1, 0x8C($t5)
    /* 17F830 801D17E0 8E6F0000 */  lw         $t7, 0x0($s3)
    /* 17F834 801D17E4 3C0E801D */  lui        $t6, %hi(D_801CB5D8)
    /* 17F838 801D17E8 25CEB5D8 */  addiu      $t6, $t6, %lo(D_801CB5D8)
    /* 17F83C 801D17EC 8DF80000 */  lw         $t8, 0x0($t7)
    /* 17F840 801D17F0 0018C880 */  sll        $t9, $t8, 2
    /* 17F844 801D17F4 00594021 */  addu       $t0, $v0, $t9
    /* 17F848 801D17F8 8D0A0000 */  lw         $t2, 0x0($t0)
    /* 17F84C 801D17FC 0C02CD48 */  jal        func_800B3520
    /* 17F850 801D1800 AD4E0098 */   sw        $t6, 0x98($t2)
    /* 17F854 801D1804 3C11800D */  lui        $s1, %hi(gameTicksPerDraw)
    /* 17F858 801D1808 26316B10 */  addiu      $s1, $s1, %lo(gameTicksPerDraw)
    /* 17F85C 801D180C 0C02BB30 */  jal        func_800AECC0
    /* 17F860 801D1810 C62C0000 */   lwc1      $f12, 0x0($s1)
    /* 17F864 801D1814 0C02BB48 */  jal        func_800AED20
    /* 17F868 801D1818 C62C0000 */   lwc1      $f12, 0x0($s1)
    /* 17F86C 801D181C 8E6C0000 */  lw         $t4, 0x0($s3)
    /* 17F870 801D1820 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 17F874 801D1824 240B0001 */  addiu      $t3, $zero, 0x1
    /* 17F878 801D1828 8D890000 */  lw         $t1, 0x0($t4)
    /* 17F87C 801D182C 44801000 */  mtc1       $zero, $f2
    /* 17F880 801D1830 3C040001 */  lui        $a0, (0x10010 >> 16)
    /* 17F884 801D1834 00096880 */  sll        $t5, $t1, 2
    /* 17F888 801D1838 002D0821 */  addu       $at, $at, $t5
    /* 17F88C 801D183C AC2B8920 */  sw         $t3, %lo(D_800E8920)($at)
    /* 17F890 801D1840 8E0F003C */  lw         $t7, 0x3C($s0)
    /* 17F894 801D1844 3C01800F */  lui        $at, %hi(D_800E9020)
    /* 17F898 801D1848 24090001 */  addiu      $t1, $zero, 0x1
    /* 17F89C 801D184C 8DF80010 */  lw         $t8, 0x10($t7)
    /* 17F8A0 801D1850 34840010 */  ori        $a0, $a0, (0x10010 & 0xFFFF)
    /* 17F8A4 801D1854 E7020038 */  swc1       $f2, 0x38($t8)
    /* 17F8A8 801D1858 8E19003C */  lw         $t9, 0x3C($s0)
    /* 17F8AC 801D185C 8F220010 */  lw         $v0, 0x10($t9)
    /* 17F8B0 801D1860 C4400038 */  lwc1       $f0, 0x38($v0)
    /* 17F8B4 801D1864 E4400034 */  swc1       $f0, 0x34($v0)
    /* 17F8B8 801D1868 8E08003C */  lw         $t0, 0x3C($s0)
    /* 17F8BC 801D186C 8D0E0010 */  lw         $t6, 0x10($t0)
    /* 17F8C0 801D1870 E5C00030 */  swc1       $f0, 0x30($t6)
    /* 17F8C4 801D1874 8E650000 */  lw         $a1, 0x0($s3)
    /* 17F8C8 801D1878 8CAA0000 */  lw         $t2, 0x0($a1)
    /* 17F8CC 801D187C 000A6080 */  sll        $t4, $t2, 2
    /* 17F8D0 801D1880 002C0821 */  addu       $at, $at, $t4
    /* 17F8D4 801D1884 E4229020 */  swc1       $f2, %lo(D_800E9020)($at)
    /* 17F8D8 801D1888 8CAB0000 */  lw         $t3, 0x0($a1)
    /* 17F8DC 801D188C 000B6880 */  sll        $t5, $t3, 2
    /* 17F8E0 801D1890 024D7821 */  addu       $t7, $s2, $t5
    /* 17F8E4 801D1894 0C02A7A9 */  jal        func_800A9EA4
    /* 17F8E8 801D1898 ADE90000 */   sw        $t1, 0x0($t7)
    /* 17F8EC 801D189C 8E780000 */  lw         $t8, 0x0($s3)
    /* 17F8F0 801D18A0 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 17F8F4 801D18A4 3C17800F */  lui        $s7, %hi(D_800E9C60)
    /* 17F8F8 801D18A8 8F030000 */  lw         $v1, 0x0($t8)
    /* 17F8FC 801D18AC 3C14800E */  lui        $s4, %hi(D_800E7880)
    /* 17F900 801D18B0 3C12800E */  lui        $s2, %hi(gEntitiesNextPosYArray)
    /* 17F904 801D18B4 00031880 */  sll        $v1, $v1, 2
    /* 17F908 801D18B8 00230821 */  addu       $at, $at, $v1
    /* 17F90C 801D18BC C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
    /* 17F910 801D18C0 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* 17F914 801D18C4 00230821 */  addu       $at, $at, $v1
    /* 17F918 801D18C8 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
    /* 17F91C 801D18CC 3C014320 */  lui        $at, (0x43200000 >> 16)
    /* 17F920 801D18D0 4481B000 */  mtc1       $at, $f22
    /* 17F924 801D18D4 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
    /* 17F928 801D18D8 3C11800E */  lui        $s1, %hi(gEntitiesPosYArray)
    /* 17F92C 801D18DC 3C10800E */  lui        $s0, %hi(gEntityFuncListIDArray)
    /* 17F930 801D18E0 4481A000 */  mtc1       $at, $f20
    /* 17F934 801D18E4 2610DC50 */  addiu      $s0, $s0, %lo(gEntityFuncListIDArray)
    /* 17F938 801D18E8 26312CD0 */  addiu      $s1, $s1, %lo(gEntitiesPosYArray)
    /* 17F93C 801D18EC 26522790 */  addiu      $s2, $s2, %lo(gEntitiesNextPosYArray)
    /* 17F940 801D18F0 26947880 */  addiu      $s4, $s4, %lo(D_800E7880)
    /* 17F944 801D18F4 26F79C60 */  addiu      $s7, $s7, %lo(D_800E9C60)
    /* 17F948 801D18F8 24160003 */  addiu      $s6, $zero, 0x3
    /* 17F94C 801D18FC 24150007 */  addiu      $s5, $zero, 0x7
  .L801D1900_ovl9:
    /* 17F950 801D1900 0C002DAF */  jal        ohSleep
    /* 17F954 801D1904 24040001 */   addiu     $a0, $zero, 0x1
    /* 17F958 801D1908 8E650000 */  lw         $a1, 0x0($s3)
    /* 17F95C 801D190C 24010001 */  addiu      $at, $zero, 0x1
    /* 17F960 801D1910 8CA40000 */  lw         $a0, 0x0($a1)
    /* 17F964 801D1914 0284C821 */  addu       $t9, $s4, $a0
    /* 17F968 801D1918 93220000 */  lbu        $v0, 0x0($t9)
    /* 17F96C 801D191C 00041880 */  sll        $v1, $a0, 2
    /* 17F970 801D1920 02234021 */  addu       $t0, $s1, $v1
    /* 17F974 801D1924 10400008 */  beqz       $v0, .L801D1948_ovl9
    /* 17F978 801D1928 02437021 */   addu      $t6, $s2, $v1
    /* 17F97C 801D192C 10410011 */  beq        $v0, $at, .L801D1974_ovl9
    /* 17F980 801D1930 00041880 */   sll       $v1, $a0, 2
    /* 17F984 801D1934 24010002 */  addiu      $at, $zero, 0x2
    /* 17F988 801D1938 10410017 */  beq        $v0, $at, .L801D1998_ovl9
    /* 17F98C 801D193C 00041880 */   sll       $v1, $a0, 2
    /* 17F990 801D1940 1000002A */  b          .L801D19EC_ovl9
    /* 17F994 801D1944 00041880 */   sll       $v1, $a0, 2
  .L801D1948_ovl9:
    /* 17F998 801D1948 C5060000 */  lwc1       $f6, 0x0($t0)
    /* 17F99C 801D194C C5C80000 */  lwc1       $f8, 0x0($t6)
    /* 17F9A0 801D1950 02035021 */  addu       $t2, $s0, $v1
    /* 17F9A4 801D1954 46083032 */  c.eq.s     $f6, $f8
    /* 17F9A8 801D1958 00000000 */  nop
    /* 17F9AC 801D195C 45010023 */  bc1t       .L801D19EC_ovl9
    /* 17F9B0 801D1960 00000000 */   nop
    /* 17F9B4 801D1964 AD560000 */  sw         $s6, 0x0($t2)
    /* 17F9B8 801D1968 8CA30000 */  lw         $v1, 0x0($a1)
    /* 17F9BC 801D196C 1000001F */  b          .L801D19EC_ovl9
    /* 17F9C0 801D1970 00031880 */   sll       $v1, $v1, 2
  .L801D1974_ovl9:
    /* 17F9C4 801D1974 02E36021 */  addu       $t4, $s7, $v1
    /* 17F9C8 801D1978 8D8B0000 */  lw         $t3, 0x0($t4)
    /* 17F9CC 801D197C 02036821 */  addu       $t5, $s0, $v1
    /* 17F9D0 801D1980 1D60001A */  bgtz       $t3, .L801D19EC_ovl9
    /* 17F9D4 801D1984 00000000 */   nop
    /* 17F9D8 801D1988 ADBE0000 */  sw         $fp, 0x0($t5)
    /* 17F9DC 801D198C 8CA30000 */  lw         $v1, 0x0($a1)
    /* 17F9E0 801D1990 10000016 */  b          .L801D19EC_ovl9
    /* 17F9E4 801D1994 00031880 */   sll       $v1, $v1, 2
  .L801D1998_ovl9:
    /* 17F9E8 801D1998 02234821 */  addu       $t1, $s1, $v1
    /* 17F9EC 801D199C 02437821 */  addu       $t7, $s2, $v1
    /* 17F9F0 801D19A0 C5F00000 */  lwc1       $f16, 0x0($t7)
    /* 17F9F4 801D19A4 C52A0000 */  lwc1       $f10, 0x0($t1)
    /* 17F9F8 801D19A8 0203C021 */  addu       $t8, $s0, $v1
    /* 17F9FC 801D19AC 02E3C821 */  addu       $t9, $s7, $v1
    /* 17FA00 801D19B0 46105032 */  c.eq.s     $f10, $f16
    /* 17FA04 801D19B4 00000000 */  nop
    /* 17FA08 801D19B8 45030006 */  bc1tl      .L801D19D4_ovl9
    /* 17FA0C 801D19BC 8F280000 */   lw        $t0, 0x0($t9)
    /* 17FA10 801D19C0 AF160000 */  sw         $s6, 0x0($t8)
    /* 17FA14 801D19C4 8CA30000 */  lw         $v1, 0x0($a1)
    /* 17FA18 801D19C8 10000008 */  b          .L801D19EC_ovl9
    /* 17FA1C 801D19CC 00031880 */   sll       $v1, $v1, 2
    /* 17FA20 801D19D0 8F280000 */  lw         $t0, 0x0($t9)
  .L801D19D4_ovl9:
    /* 17FA24 801D19D4 02037021 */  addu       $t6, $s0, $v1
    /* 17FA28 801D19D8 1D000004 */  bgtz       $t0, .L801D19EC_ovl9
    /* 17FA2C 801D19DC 00000000 */   nop
    /* 17FA30 801D19E0 ADDE0000 */  sw         $fp, 0x0($t6)
    /* 17FA34 801D19E4 8CA30000 */  lw         $v1, 0x0($a1)
    /* 17FA38 801D19E8 00031880 */  sll        $v1, $v1, 2
  .L801D19EC_ovl9:
    /* 17FA3C 801D19EC 3C0A800F */  lui        $t2, %hi(D_800E98E0)
    /* 17FA40 801D19F0 01435021 */  addu       $t2, $t2, $v1
    /* 17FA44 801D19F4 8D4A98E0 */  lw         $t2, %lo(D_800E98E0)($t2)
    /* 17FA48 801D19F8 5D400062 */  bgtzl      $t2, .L801D1B84_ovl9
    /* 17FA4C 801D19FC 02037021 */   addu      $t6, $s0, $v1
    /* 17FA50 801D1A00 0C067694 */  jal        func_8019DA50_ovl7
    /* 17FA54 801D1A04 00000000 */   nop
    /* 17FA58 801D1A08 44809000 */  mtc1       $zero, $f18
    /* 17FA5C 801D1A0C 00000000 */  nop
    /* 17FA60 801D1A10 4612003C */  c.lt.s     $f0, $f18
    /* 17FA64 801D1A14 00000000 */  nop
    /* 17FA68 801D1A18 45000005 */  bc1f       .L801D1A30_ovl9
    /* 17FA6C 801D1A1C 00000000 */   nop
    /* 17FA70 801D1A20 0C067694 */  jal        func_8019DA50_ovl7
    /* 17FA74 801D1A24 00000000 */   nop
    /* 17FA78 801D1A28 10000004 */  b          .L801D1A3C_ovl9
    /* 17FA7C 801D1A2C 46000307 */   neg.s     $f12, $f0
  .L801D1A30_ovl9:
    /* 17FA80 801D1A30 0C067694 */  jal        func_8019DA50_ovl7
    /* 17FA84 801D1A34 00000000 */   nop
    /* 17FA88 801D1A38 46000306 */  mov.s      $f12, $f0
  .L801D1A3C_ovl9:
    /* 17FA8C 801D1A3C 8E650000 */  lw         $a1, 0x0($s3)
    /* 17FA90 801D1A40 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* 17FA94 801D1A44 44813000 */  mtc1       $at, $f6
    /* 17FA98 801D1A48 8CA40000 */  lw         $a0, 0x0($a1)
    /* 17FA9C 801D1A4C C6440000 */  lwc1       $f4, 0x0($s2)
    /* 17FAA0 801D1A50 24010001 */  addiu      $at, $zero, 0x1
    /* 17FAA4 801D1A54 00041880 */  sll        $v1, $a0, 2
    /* 17FAA8 801D1A58 46062000 */  add.s      $f0, $f4, $f6
    /* 17FAAC 801D1A5C 02436021 */  addu       $t4, $s2, $v1
    /* 17FAB0 801D1A60 C5820000 */  lwc1       $f2, 0x0($t4)
    /* 17FAB4 801D1A64 02845821 */  addu       $t3, $s4, $a0
    /* 17FAB8 801D1A68 4602003C */  c.lt.s     $f0, $f2
    /* 17FABC 801D1A6C 00000000 */  nop
    /* 17FAC0 801D1A70 45020005 */  bc1fl      .L801D1A88_ovl9
    /* 17FAC4 801D1A74 46020381 */   sub.s     $f14, $f0, $f2
    /* 17FAC8 801D1A78 46020381 */  sub.s      $f14, $f0, $f2
    /* 17FACC 801D1A7C 10000002 */  b          .L801D1A88_ovl9
    /* 17FAD0 801D1A80 46007387 */   neg.s     $f14, $f14
    /* 17FAD4 801D1A84 46020381 */  sub.s      $f14, $f0, $f2
  .L801D1A88_ovl9:
    /* 17FAD8 801D1A88 91620000 */  lbu        $v0, 0x0($t3)
    /* 17FADC 801D1A8C 50400006 */  beql       $v0, $zero, .L801D1AA8_ovl9
    /* 17FAE0 801D1A90 4616603C */   c.lt.s    $f12, $f22
    /* 17FAE4 801D1A94 5041002A */  beql       $v0, $at, .L801D1B40_ovl9
    /* 17FAE8 801D1A98 4616603C */   c.lt.s    $f12, $f22
    /* 17FAEC 801D1A9C 10000039 */  b          .L801D1B84_ovl9
    /* 17FAF0 801D1AA0 02037021 */   addu      $t6, $s0, $v1
    /* 17FAF4 801D1AA4 4616603C */  c.lt.s     $f12, $f22
  .L801D1AA8_ovl9:
    /* 17FAF8 801D1AA8 3C014370 */  lui        $at, (0x43700000 >> 16)
    /* 17FAFC 801D1AAC 45020010 */  bc1fl      .L801D1AF0_ovl9
    /* 17FB00 801D1AB0 44815000 */   mtc1      $at, $f10
    /* 17FB04 801D1AB4 4614703C */  c.lt.s     $f14, $f20
    /* 17FB08 801D1AB8 02236821 */  addu       $t5, $s1, $v1
    /* 17FB0C 801D1ABC 4502000C */  bc1fl      .L801D1AF0_ovl9
    /* 17FB10 801D1AC0 44815000 */   mtc1      $at, $f10
    /* 17FB14 801D1AC4 C5A80000 */  lwc1       $f8, 0x0($t5)
    /* 17FB18 801D1AC8 02034821 */  addu       $t1, $s0, $v1
    /* 17FB1C 801D1ACC 46024032 */  c.eq.s     $f8, $f2
    /* 17FB20 801D1AD0 00000000 */  nop
    /* 17FB24 801D1AD4 4502002B */  bc1fl      .L801D1B84_ovl9
    /* 17FB28 801D1AD8 02037021 */   addu      $t6, $s0, $v1
    /* 17FB2C 801D1ADC AD350000 */  sw         $s5, 0x0($t1)
    /* 17FB30 801D1AE0 8CA30000 */  lw         $v1, 0x0($a1)
    /* 17FB34 801D1AE4 10000026 */  b          .L801D1B80_ovl9
    /* 17FB38 801D1AE8 00031880 */   sll       $v1, $v1, 2
    /* 17FB3C 801D1AEC 44815000 */  mtc1       $at, $f10
  .L801D1AF0_ovl9:
    /* 17FB40 801D1AF0 02237821 */  addu       $t7, $s1, $v1
    /* 17FB44 801D1AF4 460C503C */  c.lt.s     $f10, $f12
    /* 17FB48 801D1AF8 00000000 */  nop
    /* 17FB4C 801D1AFC 45030006 */  bc1tl      .L801D1B18_ovl9
    /* 17FB50 801D1B00 C5F00000 */   lwc1      $f16, 0x0($t7)
    /* 17FB54 801D1B04 460EA03C */  c.lt.s     $f20, $f14
    /* 17FB58 801D1B08 00000000 */  nop
    /* 17FB5C 801D1B0C 4502001D */  bc1fl      .L801D1B84_ovl9
    /* 17FB60 801D1B10 02037021 */   addu      $t6, $s0, $v1
    /* 17FB64 801D1B14 C5F00000 */  lwc1       $f16, 0x0($t7)
  .L801D1B18_ovl9:
    /* 17FB68 801D1B18 0203C021 */  addu       $t8, $s0, $v1
    /* 17FB6C 801D1B1C 46028032 */  c.eq.s     $f16, $f2
    /* 17FB70 801D1B20 00000000 */  nop
    /* 17FB74 801D1B24 45020017 */  bc1fl      .L801D1B84_ovl9
    /* 17FB78 801D1B28 02037021 */   addu      $t6, $s0, $v1
    /* 17FB7C 801D1B2C AF000000 */  sw         $zero, 0x0($t8)
    /* 17FB80 801D1B30 8CA30000 */  lw         $v1, 0x0($a1)
    /* 17FB84 801D1B34 10000012 */  b          .L801D1B80_ovl9
    /* 17FB88 801D1B38 00031880 */   sll       $v1, $v1, 2
    /* 17FB8C 801D1B3C 4616603C */  c.lt.s     $f12, $f22
  .L801D1B40_ovl9:
    /* 17FB90 801D1B40 00000000 */  nop
    /* 17FB94 801D1B44 4502000F */  bc1fl      .L801D1B84_ovl9
    /* 17FB98 801D1B48 02037021 */   addu      $t6, $s0, $v1
    /* 17FB9C 801D1B4C 4614703C */  c.lt.s     $f14, $f20
    /* 17FBA0 801D1B50 0223C821 */  addu       $t9, $s1, $v1
    /* 17FBA4 801D1B54 4502000B */  bc1fl      .L801D1B84_ovl9
    /* 17FBA8 801D1B58 02037021 */   addu      $t6, $s0, $v1
    /* 17FBAC 801D1B5C C7320000 */  lwc1       $f18, 0x0($t9)
    /* 17FBB0 801D1B60 02034021 */  addu       $t0, $s0, $v1
    /* 17FBB4 801D1B64 46029032 */  c.eq.s     $f18, $f2
    /* 17FBB8 801D1B68 00000000 */  nop
    /* 17FBBC 801D1B6C 45020005 */  bc1fl      .L801D1B84_ovl9
    /* 17FBC0 801D1B70 02037021 */   addu      $t6, $s0, $v1
    /* 17FBC4 801D1B74 AD150000 */  sw         $s5, 0x0($t0)
    /* 17FBC8 801D1B78 8CA30000 */  lw         $v1, 0x0($a1)
    /* 17FBCC 801D1B7C 00031880 */  sll        $v1, $v1, 2
  .L801D1B80_ovl9:
    /* 17FBD0 801D1B80 02037021 */  addu       $t6, $s0, $v1
  .L801D1B84_ovl9:
    /* 17FBD4 801D1B84 8DCA0000 */  lw         $t2, 0x0($t6)
    /* 17FBD8 801D1B88 24010001 */  addiu      $at, $zero, 0x1
    /* 17FBDC 801D1B8C 1141FF5C */  beq        $t2, $at, .L801D1900_ovl9
    /* 17FBE0 801D1B90 00000000 */   nop
    /* 17FBE4 801D1B94 8FBF004C */  lw         $ra, 0x4C($sp)
    /* 17FBE8 801D1B98 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 17FBEC 801D1B9C D7B60020 */  ldc1       $f22, 0x20($sp)
    /* 17FBF0 801D1BA0 8FB00028 */  lw         $s0, 0x28($sp)
    /* 17FBF4 801D1BA4 8FB1002C */  lw         $s1, 0x2C($sp)
    /* 17FBF8 801D1BA8 8FB20030 */  lw         $s2, 0x30($sp)
    /* 17FBFC 801D1BAC 8FB30034 */  lw         $s3, 0x34($sp)
    /* 17FC00 801D1BB0 8FB40038 */  lw         $s4, 0x38($sp)
    /* 17FC04 801D1BB4 8FB5003C */  lw         $s5, 0x3C($sp)
    /* 17FC08 801D1BB8 8FB60040 */  lw         $s6, 0x40($sp)
    /* 17FC0C 801D1BBC 8FB70044 */  lw         $s7, 0x44($sp)
    /* 17FC10 801D1BC0 8FBE0048 */  lw         $fp, 0x48($sp)
    /* 17FC14 801D1BC4 03E00008 */  jr         $ra
    /* 17FC18 801D1BC8 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_801D1718_ovl9
.size func_801D1718_ovl9, . - func_801D1718_ovl9
