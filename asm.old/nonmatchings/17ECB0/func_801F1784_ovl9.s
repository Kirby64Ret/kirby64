glabel func_801F1784_ovl9
/* 19F7D4 801F1784 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 19F7D8 801F1788 AFB00020 */  sw         $s0, 0x20($sp)
/* 19F7DC 801F178C 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 19F7E0 801F1790 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 19F7E4 801F1794 8E0E0000 */  lw         $t6, 0x0($s0)
/* 19F7E8 801F1798 AFBF0024 */  sw         $ra, 0x24($sp)
/* 19F7EC 801F179C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 19F7F0 801F17A0 AFA40030 */  sw         $a0, 0x30($sp)
/* 19F7F4 801F17A4 8DCF0000 */  lw         $t7, 0x0($t6)
/* 19F7F8 801F17A8 3C19800E */  lui        $t9, %hi(D_800E1B50)
/* 19F7FC 801F17AC 000FC080 */  sll        $t8, $t7, 2
/* 19F800 801F17B0 0338C821 */  addu       $t9, $t9, $t8
/* 19F804 801F17B4 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 19F808 801F17B8 0C066EB2 */  jal        func_8019BAC8_ovl7
/* 19F80C 801F17BC AFB9002C */   sw        $t9, 0x2C($sp)
/* 19F810 801F17C0 8FA8002C */  lw         $t0, 0x2C($sp)
/* 19F814 801F17C4 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 19F818 801F17C8 44812000 */  mtc1       $at, $f4
/* 19F81C 801F17CC 8D090080 */  lw         $t1, 0x80($t0)
/* 19F820 801F17D0 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 19F824 801F17D4 3C0A800B */  lui        $t2, %hi(func_800B6E84)
/* 19F828 801F17D8 E5240010 */  swc1       $f4, 0x10($t1)
/* 19F82C 801F17DC 8E030000 */  lw         $v1, 0x0($s0)
/* 19F830 801F17E0 254A6E84 */  addiu      $t2, $t2, %lo(func_800B6E84)
/* 19F834 801F17E4 3C0D801F */  lui        $t5, %hi(func_801F1C68_ovl9)
/* 19F838 801F17E8 8C6B0000 */  lw         $t3, 0x0($v1)
/* 19F83C 801F17EC 25AD1C68 */  addiu      $t5, $t5, %lo(func_801F1C68_ovl9)
/* 19F840 801F17F0 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 19F844 801F17F4 000B6080 */  sll        $t4, $t3, 2
/* 19F848 801F17F8 002C0821 */  addu       $at, $at, $t4
/* 19F84C 801F17FC AC2AEF90 */  sw         $t2, %lo(D_800DEF90)($at)
/* 19F850 801F1800 8C6E0000 */  lw         $t6, 0x0($v1)
/* 19F854 801F1804 3C01800E */  lui        $at, %hi(D_800DF150)
/* 19F858 801F1808 24421B50 */  addiu      $v0, $v0, %lo(D_800E1B50)
/* 19F85C 801F180C 000E7880 */  sll        $t7, $t6, 2
/* 19F860 801F1810 002F0821 */  addu       $at, $at, $t7
/* 19F864 801F1814 AC2DF150 */  sw         $t5, %lo(D_800DF150)($at)
/* 19F868 801F1818 8C790000 */  lw         $t9, 0x0($v1)
/* 19F86C 801F181C 3C18801D */  lui        $t8, %hi(D_801C9A4C)
/* 19F870 801F1820 27189A4C */  addiu      $t8, $t8, %lo(D_801C9A4C)
/* 19F874 801F1824 00194080 */  sll        $t0, $t9, 2
/* 19F878 801F1828 00484821 */  addu       $t1, $v0, $t0
/* 19F87C 801F182C 8D2B0000 */  lw         $t3, 0x0($t1)
/* 19F880 801F1830 3C0A801D */  lui        $t2, %hi(D_801CB4DC_ovl7)
/* 19F884 801F1834 254AB4DC */  addiu      $t2, $t2, %lo(D_801CB4DC_ovl7)
/* 19F888 801F1838 AD78008C */  sw         $t8, 0x8C($t3)
/* 19F88C 801F183C 8E0C0000 */  lw         $t4, 0x0($s0)
/* 19F890 801F1840 3C01800F */  lui        $at, %hi(D_800E8920)
/* 19F894 801F1844 3C040001 */  lui        $a0, (0x100A5 >> 16)
/* 19F898 801F1848 8D8E0000 */  lw         $t6, 0x0($t4)
/* 19F89C 801F184C 348400A5 */  ori        $a0, $a0, (0x100A5 & 0xFFFF)
/* 19F8A0 801F1850 24050023 */  addiu      $a1, $zero, 0x23
/* 19F8A4 801F1854 000E6880 */  sll        $t5, $t6, 2
/* 19F8A8 801F1858 004D7821 */  addu       $t7, $v0, $t5
.L801F185C_ovl10:
/* 19F8AC 801F185C 8DF90000 */  lw         $t9, 0x0($t7)
.L801F1860_ovl10:
/* 19F8B0 801F1860 24060010 */  addiu      $a2, $zero, 0x10
/* 19F8B4 801F1864 AF2A0098 */  sw         $t2, 0x98($t9)
/* 19F8B8 801F1868 8E080000 */  lw         $t0, 0x0($s0)
/* 19F8BC 801F186C 8D090000 */  lw         $t1, 0x0($t0)
glabel func_801F1870_ovl10
/* 19F8C0 801F1870 0009C080 */  sll        $t8, $t1, 2
/* 19F8C4 801F1874 00380821 */  addu       $at, $at, $t8
/* 19F8C8 801F1878 0C02A619 */  jal        func_800A9864
/* 19F8CC 801F187C AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 19F8D0 801F1880 44806000 */  mtc1       $zero, $f12
/* 19F8D4 801F1884 0C02BB30 */  jal        func_800AECC0
/* 19F8D8 801F1888 00000000 */   nop
/* 19F8DC 801F188C 44806000 */  mtc1       $zero, $f12
.L801F1890_ovl10:
/* 19F8E0 801F1890 0C02BB48 */  jal        func_800AED20
/* 19F8E4 801F1894 00000000 */   nop
/* 19F8E8 801F1898 8E030000 */  lw         $v1, 0x0($s0)
/* 19F8EC 801F189C 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 19F8F0 801F18A0 240B0001 */  addiu      $t3, $zero, 0x1
/* 19F8F4 801F18A4 8C6C0000 */  lw         $t4, 0x0($v1)
/* 19F8F8 801F18A8 240D0002 */  addiu      $t5, $zero, 0x2
.L801F18AC_ovl10:
/* 19F8FC 801F18AC 3C09800E */  lui        $t1, %hi(D_800E0D50)
/* 19F900 801F18B0 000C7080 */  sll        $t6, $t4, 2
/* 19F904 801F18B4 002E0821 */  addu       $at, $at, $t6
/* 19F908 801F18B8 AC2B98E0 */  sw         $t3, %lo(D_800E98E0)($at)
/* 19F90C 801F18BC 8C6F0000 */  lw         $t7, 0x0($v1)
/* 19F910 801F18C0 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 19F914 801F18C4 3C06800E */  lui        $a2, %hi(D_800E6A10)
/* 19F918 801F18C8 000F5080 */  sll        $t2, $t7, 2
/* 19F91C 801F18CC 002A0821 */  addu       $at, $at, $t2
/* 19F920 801F18D0 AC2D9AA0 */  sw         $t5, %lo(D_800E9AA0)($at)
/* 19F924 801F18D4 8C790000 */  lw         $t9, 0x0($v1)
.L801F18D8_ovl10:
/* 19F928 801F18D8 3C01800F */  lui        $at, %hi(D_800E9C60)
.L801F18DC_ovl10:
/* 19F92C 801F18DC 24C66A10 */  addiu      $a2, $a2, %lo(D_800E6A10)
/* 19F930 801F18E0 00194080 */  sll        $t0, $t9, 2
/* 19F934 801F18E4 00280821 */  addu       $at, $at, $t0
/* 19F938 801F18E8 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
/* 19F93C 801F18EC 8C620000 */  lw         $v0, 0x0($v1)
/* 19F940 801F18F0 3C05800E */  lui        $a1, %hi(gEntitiesNextPosYArray)
/* 19F944 801F18F4 24A52790 */  addiu      $a1, $a1, %lo(gEntitiesNextPosYArray)
.L801F18F8_ovl10:
/* 19F948 801F18F8 00021080 */  sll        $v0, $v0, 2
/* 19F94C 801F18FC 01224821 */  addu       $t1, $t1, $v0
/* 19F950 801F1900 8D290D50 */  lw         $t1, %lo(D_800E0D50)($t1)
/* 19F954 801F1904 00C25821 */  addu       $t3, $a2, $v0
/* 19F958 801F1908 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 19F95C 801F190C 0009C080 */  sll        $t8, $t1, 2
/* 19F960 801F1910 00D86021 */  addu       $t4, $a2, $t8
/* 19F964 801F1914 C5860000 */  lwc1       $f6, 0x0($t4)
/* 19F968 801F1918 44815000 */  mtc1       $at, $f10
/* 19F96C 801F191C 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
.L801F1920_ovl10:
/* 19F970 801F1920 E5660000 */  swc1       $f6, 0x0($t3)
.L801F1924_ovl10:
/* 19F974 801F1924 8C6E0000 */  lw         $t6, 0x0($v1)
/* 19F978 801F1928 000E7880 */  sll        $t7, $t6, 2
/* 19F97C 801F192C 00AF2021 */  addu       $a0, $a1, $t7
/* 19F980 801F1930 C4880000 */  lwc1       $f8, 0x0($a0)
glabel func_801F1934_ovl10
/* 19F984 801F1934 460A4401 */  sub.s      $f16, $f8, $f10
/* 19F988 801F1938 E4900000 */  swc1       $f16, 0x0($a0)
/* 19F98C 801F193C 8C620000 */  lw         $v0, 0x0($v1)
/* 19F990 801F1940 00021080 */  sll        $v0, $v0, 2
/* 19F994 801F1944 00A26821 */  addu       $t5, $a1, $v0
/* 19F998 801F1948 C5B20000 */  lwc1       $f18, 0x0($t5)
/* 19F99C 801F194C 00220821 */  addu       $at, $at, $v0
/* 19F9A0 801F1950 0C067694 */  jal        func_8019DA50_ovl7
/* 19F9A4 801F1954 E4322CD0 */   swc1      $f18, %lo(gEntitiesPosYArray)($at)
/* 19F9A8 801F1958 8E0A0000 */  lw         $t2, 0x0($s0)
/* 19F9AC 801F195C 3C05800E */  lui        $a1, %hi(gEntitiesNextPosYArray)
/* 19F9B0 801F1960 24A52790 */  addiu      $a1, $a1, %lo(gEntitiesNextPosYArray)
/* 19F9B4 801F1964 8D590000 */  lw         $t9, 0x0($t2)
/* 19F9B8 801F1968 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 19F9BC 801F196C 4481A000 */  mtc1       $at, $f20
/* 19F9C0 801F1970 C4A40000 */  lwc1       $f4, 0x0($a1)
.L801F1974_ovl10:
/* 19F9C4 801F1974 00194080 */  sll        $t0, $t9, 2
/* 19F9C8 801F1978 00A84821 */  addu       $t1, $a1, $t0
/* 19F9CC 801F197C 46142180 */  add.s      $f6, $f4, $f20
/* 19F9D0 801F1980 C5280000 */  lwc1       $f8, 0x0($t1)
.L801F1984_ovl10:
/* 19F9D4 801F1984 46000306 */  mov.s      $f12, $f0
/* 19F9D8 801F1988 0C0061C3 */  jal        atan2f
.L801F198C_ovl10:
/* 19F9DC 801F198C 46083381 */   sub.s     $f14, $f6, $f8
/* 19F9E0 801F1990 44805000 */  mtc1       $zero, $f10
/* 19F9E4 801F1994 00000000 */  nop
/* 19F9E8 801F1998 460A003C */  c.lt.s     $f0, $f10
.L801F199C_ovl10:
/* 19F9EC 801F199C 00000000 */  nop
/* 19F9F0 801F19A0 45000011 */  bc1f       .L801F19E8_ovl9
.L801F19A4_ovl10:
/* 19F9F4 801F19A4 00000000 */   nop
/* 19F9F8 801F19A8 0C067694 */  jal        func_8019DA50_ovl7
.L801F19AC_ovl10:
/* 19F9FC 801F19AC 00000000 */   nop
/* 19FA00 801F19B0 8E180000 */  lw         $t8, 0x0($s0)
/* 19FA04 801F19B4 3C05800E */  lui        $a1, %hi(gEntitiesNextPosYArray)
/* 19FA08 801F19B8 24A52790 */  addiu      $a1, $a1, %lo(gEntitiesNextPosYArray)
.L801F19BC_ovl10:
/* 19FA0C 801F19BC 8F0C0000 */  lw         $t4, 0x0($t8)
/* 19FA10 801F19C0 C4B00000 */  lwc1       $f16, 0x0($a1)
.L801F19C4_ovl10:
/* 19FA14 801F19C4 46000306 */  mov.s      $f12, $f0
/* 19FA18 801F19C8 000C5880 */  sll        $t3, $t4, 2
.L801F19CC_ovl10:
/* 19FA1C 801F19CC 46148480 */  add.s      $f18, $f16, $f20
/* 19FA20 801F19D0 00AB7021 */  addu       $t6, $a1, $t3
/* 19FA24 801F19D4 C5C40000 */  lwc1       $f4, 0x0($t6)
/* 19FA28 801F19D8 0C0061C3 */  jal        atan2f
glabel func_801F19DC_ovl10
/* 19FA2C 801F19DC 46049381 */   sub.s     $f14, $f18, $f4
/* 19FA30 801F19E0 10000010 */  b          func_801F1A24_ovl10
/* 19FA34 801F19E4 46000507 */   neg.s     $f20, $f0
.L801F19E8_ovl9:
/* 19FA38 801F19E8 0C067694 */  jal        func_8019DA50_ovl7
/* 19FA3C 801F19EC 00000000 */   nop
/* 19FA40 801F19F0 8E0F0000 */  lw         $t7, 0x0($s0)
/* 19FA44 801F19F4 3C05800E */  lui        $a1, %hi(gEntitiesNextPosYArray)
/* 19FA48 801F19F8 24A52790 */  addiu      $a1, $a1, %lo(gEntitiesNextPosYArray)
/* 19FA4C 801F19FC 8DED0000 */  lw         $t5, 0x0($t7)
/* 19FA50 801F1A00 C4A60000 */  lwc1       $f6, 0x0($a1)
/* 19FA54 801F1A04 46000306 */  mov.s      $f12, $f0
.L801F1A08_ovl10:
/* 19FA58 801F1A08 000D5080 */  sll        $t2, $t5, 2
/* 19FA5C 801F1A0C 46143200 */  add.s      $f8, $f6, $f20
/* 19FA60 801F1A10 00AAC821 */  addu       $t9, $a1, $t2
/* 19FA64 801F1A14 C72A0000 */  lwc1       $f10, 0x0($t9)
/* 19FA68 801F1A18 0C0061C3 */  jal        atan2f
/* 19FA6C 801F1A1C 460A4381 */   sub.s     $f14, $f8, $f10
/* 19FA70 801F1A20 46000506 */  mov.s      $f20, $f0
glabel func_801F1A24_ovl10
/* 19FA74 801F1A24 3C018022 */  lui        $at, %hi(D_8021D8CC_ovl9)
/* 19FA78 801F1A28 C420D8CC */  lwc1       $f0, %lo(D_8021D8CC_ovl9)($at)
/* 19FA7C 801F1A2C 3C018022 */  lui        $at, %hi(D_8021D8D0_ovl9)
/* 19FA80 801F1A30 4600A03C */  c.lt.s     $f20, $f0
/* 19FA84 801F1A34 00000000 */  nop
/* 19FA88 801F1A38 45000002 */  bc1f       .L801F1A44_ovl9
/* 19FA8C 801F1A3C 00000000 */   nop
/* 19FA90 801F1A40 46000506 */  mov.s      $f20, $f0
.L801F1A44_ovl9:
/* 19FA94 801F1A44 C420D8D0 */  lwc1       $f0, %lo(D_8021D8D0_ovl9)($at)
/* 19FA98 801F1A48 4614003C */  c.lt.s     $f0, $f20
/* 19FA9C 801F1A4C 00000000 */  nop
/* 19FAA0 801F1A50 45000002 */  bc1f       .L801F1A5C_ovl9
/* 19FAA4 801F1A54 00000000 */   nop
.L801F1A58_ovl10:
/* 19FAA8 801F1A58 46000506 */  mov.s      $f20, $f0
.L801F1A5C_ovl9:
/* 19FAAC 801F1A5C 0C00B5B8 */  jal        sinf
/* 19FAB0 801F1A60 4600A306 */   mov.s     $f12, $f20
/* 19FAB4 801F1A64 8E080000 */  lw         $t0, 0x0($s0)
/* 19FAB8 801F1A68 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
/* 19FABC 801F1A6C 44818000 */  mtc1       $at, $f16
/* 19FAC0 801F1A70 8D020000 */  lw         $v0, 0x0($t0)
/* 19FAC4 801F1A74 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 19FAC8 801F1A78 46100482 */  mul.s      $f18, $f0, $f16
/* 19FACC 801F1A7C 00021080 */  sll        $v0, $v0, 2
/* 19FAD0 801F1A80 00220821 */  addu       $at, $at, $v0
.L801F1A84_ovl10:
/* 19FAD4 801F1A84 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 19FAD8 801F1A88 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 19FADC 801F1A8C 00220821 */  addu       $at, $at, $v0
/* 19FAE0 801F1A90 4600A306 */  mov.s      $f12, $f20
/* 19FAE4 801F1A94 46049182 */  mul.s      $f6, $f18, $f4
/* 19FAE8 801F1A98 0C00D604 */  jal        cosf
/* 19FAEC 801F1A9C E42664D0 */   swc1      $f6, %lo(D_800E64D0)($at)
/* 19FAF0 801F1AA0 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
/* 19FAF4 801F1AA4 44814000 */  mtc1       $at, $f8
/* 19FAF8 801F1AA8 8E090000 */  lw         $t1, 0x0($s0)
/* 19FAFC 801F1AAC 3C01800E */  lui        $at, %hi(D_800E3210)
/* 19FB00 801F1AB0 46080282 */  mul.s      $f10, $f0, $f8
/* 19FB04 801F1AB4 8D380000 */  lw         $t8, 0x0($t1)
/* 19FB08 801F1AB8 24040001 */  addiu      $a0, $zero, 0x1
/* 19FB0C 801F1ABC 00186080 */  sll        $t4, $t8, 2
/* 19FB10 801F1AC0 002C0821 */  addu       $at, $at, $t4
/* 19FB14 801F1AC4 0C002DAF */  jal        finish_current_thread
/* 19FB18 801F1AC8 E42A3210 */   swc1      $f10, %lo(D_800E3210)($at)
/* 19FB1C 801F1ACC 0C00B5B8 */  jal        sinf
/* 19FB20 801F1AD0 4600A306 */   mov.s     $f12, $f20
/* 19FB24 801F1AD4 8E0B0000 */  lw         $t3, 0x0($s0)
/* 19FB28 801F1AD8 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 19FB2C 801F1ADC 44818000 */  mtc1       $at, $f16
/* 19FB30 801F1AE0 8D620000 */  lw         $v0, 0x0($t3)
/* 19FB34 801F1AE4 3C01800E */  lui        $at, %hi(D_800E6A10)
.L801F1AE8_ovl10:
/* 19FB38 801F1AE8 46100482 */  mul.s      $f18, $f0, $f16
/* 19FB3C 801F1AEC 00021080 */  sll        $v0, $v0, 2
/* 19FB40 801F1AF0 00220821 */  addu       $at, $at, $v0
/* 19FB44 801F1AF4 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 19FB48 801F1AF8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 19FB4C 801F1AFC 00220821 */  addu       $at, $at, $v0
/* 19FB50 801F1B00 4600A306 */  mov.s      $f12, $f20
/* 19FB54 801F1B04 46049182 */  mul.s      $f6, $f18, $f4
/* 19FB58 801F1B08 0C00D604 */  jal        cosf
/* 19FB5C 801F1B0C E42664D0 */   swc1      $f6, %lo(D_800E64D0)($at)
/* 19FB60 801F1B10 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 19FB64 801F1B14 44814000 */  mtc1       $at, $f8
/* 19FB68 801F1B18 8E0E0000 */  lw         $t6, 0x0($s0)
/* 19FB6C 801F1B1C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 19FB70 801F1B20 46080282 */  mul.s      $f10, $f0, $f8
/* 19FB74 801F1B24 8DCF0000 */  lw         $t7, 0x0($t6)
/* 19FB78 801F1B28 4600A306 */  mov.s      $f12, $f20
/* 19FB7C 801F1B2C 000F6880 */  sll        $t5, $t7, 2
/* 19FB80 801F1B30 002D0821 */  addu       $at, $at, $t5
/* 19FB84 801F1B34 0C00B5B8 */  jal        sinf
/* 19FB88 801F1B38 E42A3210 */   swc1      $f10, %lo(D_800E3210)($at)
/* 19FB8C 801F1B3C 8E0A0000 */  lw         $t2, 0x0($s0)
/* 19FB90 801F1B40 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 19FB94 801F1B44 44818000 */  mtc1       $at, $f16
/* 19FB98 801F1B48 8D420000 */  lw         $v0, 0x0($t2)
.L801F1B4C_ovl10:
/* 19FB9C 801F1B4C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 19FBA0 801F1B50 46100482 */  mul.s      $f18, $f0, $f16
/* 19FBA4 801F1B54 00021080 */  sll        $v0, $v0, 2
/* 19FBA8 801F1B58 00220821 */  addu       $at, $at, $v0
/* 19FBAC 801F1B5C C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 19FBB0 801F1B60 3C01800E */  lui        $at, %hi(D_800E6690)
/* 19FBB4 801F1B64 00220821 */  addu       $at, $at, $v0
/* 19FBB8 801F1B68 4600A306 */  mov.s      $f12, $f20
/* 19FBBC 801F1B6C 46049182 */  mul.s      $f6, $f18, $f4
/* 19FBC0 801F1B70 0C00D604 */  jal        cosf
/* 19FBC4 801F1B74 E4266690 */   swc1      $f6, %lo(D_800E6690)($at)
/* 19FBC8 801F1B78 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 19FBCC 801F1B7C 44814000 */  mtc1       $at, $f8
/* 19FBD0 801F1B80 8E190000 */  lw         $t9, 0x0($s0)
/* 19FBD4 801F1B84 3C01800E */  lui        $at, %hi(D_800E3750)
/* 19FBD8 801F1B88 46080282 */  mul.s      $f10, $f0, $f8
/* 19FBDC 801F1B8C 8F280000 */  lw         $t0, 0x0($t9)
/* 19FBE0 801F1B90 24040008 */  addiu      $a0, $zero, 0x8
/* 19FBE4 801F1B94 00084880 */  sll        $t1, $t0, 2
/* 19FBE8 801F1B98 00290821 */  addu       $at, $at, $t1
/* 19FBEC 801F1B9C 0C002DAF */  jal        finish_current_thread
/* 19FBF0 801F1BA0 E42A3750 */   swc1      $f10, %lo(D_800E3750)($at)
/* 19FBF4 801F1BA4 8E030000 */  lw         $v1, 0x0($s0)
/* 19FBF8 801F1BA8 44808000 */  mtc1       $zero, $f16
.L801F1BAC_ovl10:
/* 19FBFC 801F1BAC 3C05800E */  lui        $a1, %hi(D_800E3750)
/* 19FC00 801F1BB0 8C780000 */  lw         $t8, 0x0($v1)
/* 19FC04 801F1BB4 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* 19FC08 801F1BB8 3C01800E */  lui        $at, %hi(D_800E6690)
/* 19FC0C 801F1BBC 00186080 */  sll        $t4, $t8, 2
/* 19FC10 801F1BC0 00AC5821 */  addu       $t3, $a1, $t4
/* 19FC14 801F1BC4 E5700000 */  swc1       $f16, 0x0($t3)
/* 19FC18 801F1BC8 8C620000 */  lw         $v0, 0x0($v1)
/* 19FC1C 801F1BCC 24040018 */  addiu      $a0, $zero, 0x18
/* 19FC20 801F1BD0 00021080 */  sll        $v0, $v0, 2
/* 19FC24 801F1BD4 00A27021 */  addu       $t6, $a1, $v0
/* 19FC28 801F1BD8 C5D20000 */  lwc1       $f18, 0x0($t6)
/* 19FC2C 801F1BDC 00220821 */  addu       $at, $at, $v0
/* 19FC30 801F1BE0 0C002DAF */  jal        finish_current_thread
/* 19FC34 801F1BE4 E4326690 */   swc1      $f18, %lo(D_800E6690)($at)
/* 19FC38 801F1BE8 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 19FC3C 801F1BEC 0C02BB30 */  jal        func_800AECC0
/* 19FC40 801F1BF0 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 19FC44 801F1BF4 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 19FC48 801F1BF8 0C02BB48 */  jal        func_800AED20
/* 19FC4C 801F1BFC C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
.L801F1C00_ovl10:
/* 19FC50 801F1C00 0C002DAF */  jal        finish_current_thread
/* 19FC54 801F1C04 24040005 */   addiu     $a0, $zero, 0x5
/* 19FC58 801F1C08 8E0F0000 */  lw         $t7, 0x0($s0)
/* 19FC5C 801F1C0C 8FB9002C */  lw         $t9, 0x2C($sp)
/* 19FC60 801F1C10 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 19FC64 801F1C14 8DED0000 */  lw         $t5, 0x0($t7)
/* 19FC68 801F1C18 000D5080 */  sll        $t2, $t5, 2
/* 19FC6C 801F1C1C 002A0821 */  addu       $at, $at, $t2
/* 19FC70 801F1C20 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 19FC74 801F1C24 8F280094 */  lw         $t0, 0x94($t9)
/* 19FC78 801F1C28 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 19FC7C 801F1C2C 8D04001C */  lw         $a0, 0x1C($t0)
/* 19FC80 801F1C30 50810004 */  beql       $a0, $at, .L801F1C44_ovl9
/* 19FC84 801F1C34 8FB8002C */   lw        $t8, 0x2C($sp)
/* 19FC88 801F1C38 0C029D9E */  jal        play_sound
/* 19FC8C 801F1C3C 00000000 */   nop
/* 19FC90 801F1C40 8FB8002C */  lw         $t8, 0x2C($sp)
.L801F1C44_ovl9:
/* 19FC94 801F1C44 24090001 */  addiu      $t1, $zero, 0x1
/* 19FC98 801F1C48 A3090040 */  sb         $t1, 0x40($t8)
/* 19FC9C 801F1C4C 0C068FA0 */  jal        func_801A3E80_ovl7
/* 19FCA0 801F1C50 8FA40030 */   lw        $a0, 0x30($sp)
/* 19FCA4 801F1C54 8FBF0024 */  lw         $ra, 0x24($sp)
/* 19FCA8 801F1C58 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 19FCAC 801F1C5C 8FB00020 */  lw         $s0, 0x20($sp)
/* 19FCB0 801F1C60 03E00008 */  jr         $ra
/* 19FCB4 801F1C64 27BD0030 */   addiu     $sp, $sp, 0x30
