glabel func_8015ED2C_ovl3
/* BF76C 8015ED2C 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* BF770 8015ED30 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* BF774 8015ED34 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
.L8015ED38_ovl5:
/* BF778 8015ED38 AFB00020 */  sw         $s0, 0x20($sp)
/* BF77C 8015ED3C 8D100000 */  lw         $s0, 0x0($t0)
.L8015ED40_ovl5:
/* BF780 8015ED40 AFBF0024 */  sw         $ra, 0x24($sp)
/* BF784 8015ED44 AFA400A8 */  sw         $a0, 0xA8($sp)
/* BF788 8015ED48 8E030000 */  lw         $v1, 0x0($s0)
.L8015ED4C_ovl5:
/* BF78C 8015ED4C 3C0E800F */  lui        $t6, %hi(D_800E9C60)
/* BF790 8015ED50 3C04800F */  lui        $a0, %hi(D_800EA6E0)
/* BF794 8015ED54 00031880 */  sll        $v1, $v1, 2
/* BF798 8015ED58 01C37021 */  addu       $t6, $t6, $v1
/* BF79C 8015ED5C 8DCE9C60 */  lw         $t6, %lo(D_800E9C60)($t6)
/* BF7A0 8015ED60 2484A6E0 */  addiu      $a0, $a0, %lo(D_800EA6E0)
/* BF7A4 8015ED64 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* BF7A8 8015ED68 11C00021 */  beqz       $t6, .L8015EDF0_ovl5
/* BF7AC 8015ED6C 00831021 */   addu      $v0, $a0, $v1
/* BF7B0 8015ED70 3C0F800F */  lui        $t7, %hi(D_800E9560)
/* BF7B4 8015ED74 25EF9560 */  addiu      $t7, $t7, %lo(D_800E9560)
/* BF7B8 8015ED78 006F1021 */  addu       $v0, $v1, $t7
/* BF7BC 8015ED7C 8C440000 */  lw         $a0, 0x0($v0)
/* BF7C0 8015ED80 2498FFFF */  addiu      $t8, $a0, -0x1
.L8015ED84_ovl5:
/* BF7C4 8015ED84 10800016 */  beqz       $a0, .L8015EDE0_ovl3
/* BF7C8 8015ED88 AC580000 */   sw        $t8, 0x0($v0)
/* BF7CC 8015ED8C 3C048019 */  lui        $a0, %hi(D_80191A84_ovl3)
/* BF7D0 8015ED90 24841A84 */  addiu      $a0, $a0, %lo(D_80191A84_ovl3)
/* BF7D4 8015ED94 0C0445EF */  jal        func_801117BC
/* BF7D8 8015ED98 8E050000 */   lw        $a1, 0x0($s0)
glabel func_8015ED9C_ovl5
/* BF7DC 8015ED9C 0C044713 */  jal        func_80111C4C
/* BF7E0 8015EDA0 00402025 */   or        $a0, $v0, $zero
/* BF7E4 8015EDA4 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* BF7E8 8015EDA8 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* BF7EC 8015EDAC 3C0D801A */  lui        $t5, %hi(D_801982F8_ovl3)
/* BF7F0 8015EDB0 25AD82F8 */  addiu      $t5, $t5, %lo(D_801982F8_ovl3)
/* BF7F4 8015EDB4 8F220000 */  lw         $v0, 0x0($t9)
/* BF7F8 8015EDB8 3C058019 */  lui        $a1, %hi(D_80195270_ovl3)
/* BF7FC 8015EDBC 24A55270 */  addiu      $a1, $a1, %lo(D_80195270_ovl3)
/* BF800 8015EDC0 00025940 */  sll        $t3, $v0, 5
/* BF804 8015EDC4 256CFF80 */  addiu      $t4, $t3, -0x80
/* BF808 8015EDC8 018D2021 */  addu       $a0, $t4, $t5
/* BF80C 8015EDCC 00003025 */  or         $a2, $zero, $zero
/* BF810 8015EDD0 0C055754 */  jal        func_80155D50_ovl3
/* BF814 8015EDD4 00403825 */   or        $a3, $v0, $zero
/* BF818 8015EDD8 100002D9 */  b          .L8015F940_ovl3
/* BF81C 8015EDDC 8FBF0024 */   lw        $ra, 0x24($sp)
.L8015EDE0_ovl3:
/* BF820 8015EDE0 0C02C640 */  jal        func_800B1900
/* BF824 8015EDE4 96040002 */   lhu       $a0, 0x2($s0)
/* BF828 8015EDE8 100002D5 */  b          .L8015F940_ovl3
/* BF82C 8015EDEC 8FBF0024 */   lw        $ra, 0x24($sp)
.L8015EDF0_ovl5:
/* BF830 8015EDF0 44811000 */  mtc1       $at, $f2
/* BF834 8015EDF4 C4400000 */  lwc1       $f0, 0x0($v0)
/* BF838 8015EDF8 3C0A800E */  lui        $t2, %hi(D_800DFBD0)
/* BF83C 8015EDFC 3C098013 */  lui        $t1, %hi(gKirbyState)
/* BF840 8015EE00 46001032 */  c.eq.s     $f2, $f0
/* BF844 8015EE04 3C018019 */  lui        $at, %hi(D_801970A0_ovl3)
.L8015EE08_ovl5:
/* BF848 8015EE08 254AFBD0 */  addiu      $t2, $t2, %lo(D_800DFBD0)
/* BF84C 8015EE0C 2529E7C0 */  addiu      $t1, $t1, %lo(gKirbyState)
/* BF850 8015EE10 45030028 */  bc1tl      .L8015EEB4_ovl3
/* BF854 8015EE14 912E0017 */   lbu       $t6, 0x17($t1)
/* BF858 8015EE18 C42470A0 */  lwc1       $f4, %lo(D_801970A0_ovl3)($at)
/* BF85C 8015EE1C 46040180 */  add.s      $f6, $f0, $f4
/* BF860 8015EE20 E4460000 */  swc1       $f6, 0x0($v0)
/* BF864 8015EE24 8E030000 */  lw         $v1, 0x0($s0)
/* BF868 8015EE28 00031880 */  sll        $v1, $v1, 2
/* BF86C 8015EE2C 00831021 */  addu       $v0, $a0, $v1
/* BF870 8015EE30 C4400000 */  lwc1       $f0, 0x0($v0)
/* BF874 8015EE34 4600103E */  c.le.s     $f2, $f0
/* BF878 8015EE38 00000000 */  nop
/* BF87C 8015EE3C 45020007 */  bc1fl      .L8015EE5C_ovl3
/* BF880 8015EE40 01437821 */   addu      $t7, $t2, $v1
/* BF884 8015EE44 E4420000 */  swc1       $f2, 0x0($v0)
/* BF888 8015EE48 8E030000 */  lw         $v1, 0x0($s0)
/* BF88C 8015EE4C 00031880 */  sll        $v1, $v1, 2
/* BF890 8015EE50 00837021 */  addu       $t6, $a0, $v1
/* BF894 8015EE54 C5C00000 */  lwc1       $f0, 0x0($t6)
/* BF898 8015EE58 01437821 */  addu       $t7, $t2, $v1
.L8015EE5C_ovl3:
/* BF89C 8015EE5C 8DF80000 */  lw         $t8, 0x0($t7)
/* BF8A0 8015EE60 8F190008 */  lw         $t9, 0x8($t8)
/* BF8A4 8015EE64 E7200040 */  swc1       $f0, 0x40($t9)
/* BF8A8 8015EE68 8D0B0000 */  lw         $t3, 0x0($t0)
/* BF8AC 8015EE6C 8D630000 */  lw         $v1, 0x0($t3)
/* BF8B0 8015EE70 00031880 */  sll        $v1, $v1, 2
/* BF8B4 8015EE74 01436821 */  addu       $t5, $t2, $v1
.L8015EE78_ovl5:
/* BF8B8 8015EE78 8DAE0000 */  lw         $t6, 0x0($t5)
/* BF8BC 8015EE7C 00836021 */  addu       $t4, $a0, $v1
/* BF8C0 8015EE80 C5880000 */  lwc1       $f8, 0x0($t4)
/* BF8C4 8015EE84 8DCF0008 */  lw         $t7, 0x8($t6)
/* BF8C8 8015EE88 E5E80044 */  swc1       $f8, 0x44($t7)
/* BF8CC 8015EE8C 8D180000 */  lw         $t8, 0x0($t0)
/* BF8D0 8015EE90 8F030000 */  lw         $v1, 0x0($t8)
/* BF8D4 8015EE94 00031880 */  sll        $v1, $v1, 2
/* BF8D8 8015EE98 01435821 */  addu       $t3, $t2, $v1
/* BF8DC 8015EE9C 8D6C0000 */  lw         $t4, 0x0($t3)
/* BF8E0 8015EEA0 0083C821 */  addu       $t9, $a0, $v1
/* BF8E4 8015EEA4 C72A0000 */  lwc1       $f10, 0x0($t9)
/* BF8E8 8015EEA8 8D8D0008 */  lw         $t5, 0x8($t4)
.L8015EEAC_ovl5:
/* BF8EC 8015EEAC E5AA0048 */  swc1       $f10, 0x48($t5)
/* BF8F0 8015EEB0 912E0017 */  lbu        $t6, 0x17($t1)
.L8015EEB4_ovl3:
/* BF8F4 8015EEB4 51C00004 */  beql       $t6, $zero, .L8015EEC8_ovl3
/* BF8F8 8015EEB8 912F0016 */   lbu       $t7, 0x16($t1)
/* BF8FC 8015EEBC 10000021 */  b          .L8015EF44_ovl3
/* BF900 8015EEC0 AD2000A0 */   sw        $zero, 0xA0($t1)
.L8015EEC4_ovl5:
/* BF904 8015EEC4 912F0016 */  lbu        $t7, 0x16($t1)
.L8015EEC8_ovl3:
/* BF908 8015EEC8 3C188005 */  lui        $t8, %hi(gPlayerControllers + 0x2)
/* BF90C 8015EECC 15E00011 */  bnez       $t7, .L8015EF14_ovl3
/* BF910 8015EED0 00000000 */   nop
.L8015EED4_ovl5:
/* BF914 8015EED4 97188F22 */  lhu        $t8, %lo(gPlayerControllers + 0x2)($t8)
/* BF918 8015EED8 33194000 */  andi       $t9, $t8, 0x4000
/* BF91C 8015EEDC 53200004 */  beql       $t9, $zero, .L8015EEF0_ovl3
/* BF920 8015EEE0 8D0B0000 */   lw        $t3, 0x0($t0)
/* BF924 8015EEE4 10000017 */  b          .L8015EF44_ovl3
/* BF928 8015EEE8 AD2000A0 */   sw        $zero, 0xA0($t1)
/* BF92C 8015EEEC 8D0B0000 */  lw         $t3, 0x0($t0)
.L8015EEF0_ovl3:
/* BF930 8015EEF0 3C0E800F */  lui        $t6, %hi(D_800E7CE0 + 0x380)
/* BF934 8015EEF4 8D6C0000 */  lw         $t4, 0x0($t3)
/* BF938 8015EEF8 000C6880 */  sll        $t5, $t4, 2
/* BF93C 8015EEFC 01CD7021 */  addu       $t6, $t6, $t5
/* BF940 8015EF00 8DCE8060 */  lw         $t6, %lo(D_800E7CE0 + 0x380)($t6)
/* BF944 8015EF04 51C00010 */  beql       $t6, $zero, .L8015EF48_ovl3
/* BF948 8015EF08 8D2E00A0 */   lw        $t6, 0xA0($t1)
/* BF94C 8015EF0C 1000000D */  b          .L8015EF44_ovl3
/* BF950 8015EF10 AD2000A0 */   sw        $zero, 0xA0($t1)
.L8015EF14_ovl3:
/* BF954 8015EF14 3C0F8005 */  lui        $t7, %hi(gPlayerControllers + 0x2)
/* BF958 8015EF18 95EF8F22 */  lhu        $t7, %lo(gPlayerControllers + 0x2)($t7)
/* BF95C 8015EF1C 31F84000 */  andi       $t8, $t7, 0x4000
/* BF960 8015EF20 53000009 */  beql       $t8, $zero, .L8015EF48_ovl3
/* BF964 8015EF24 8D2E00A0 */   lw        $t6, 0xA0($t1)
/* BF968 8015EF28 8D0B0000 */  lw         $t3, 0x0($t0)
/* BF96C 8015EF2C 3C01800F */  lui        $at, %hi(D_800E7CE0 + 0x380)
/* BF970 8015EF30 24190001 */  addiu      $t9, $zero, 0x1
/* BF974 8015EF34 8D6C0000 */  lw         $t4, 0x0($t3)
/* BF978 8015EF38 000C6880 */  sll        $t5, $t4, 2
.L8015EF3C_ovl5:
/* BF97C 8015EF3C 002D0821 */  addu       $at, $at, $t5
/* BF980 8015EF40 AC398060 */  sw         $t9, %lo(D_800E7CE0 + 0x380)($at)
.L8015EF44_ovl3:
/* BF984 8015EF44 8D2E00A0 */  lw         $t6, 0xA0($t1)
.L8015EF48_ovl3:
/* BF988 8015EF48 11C0023D */  beqz       $t6, .L8015F840_ovl3
/* BF98C 8015EF4C 00000000 */   nop
/* BF990 8015EF50 8D100000 */  lw         $s0, 0x0($t0)
/* BF994 8015EF54 3C0F800F */  lui        $t7, %hi(D_800E8760)
/* BF998 8015EF58 3C01800E */  lui        $at, %hi(D_800E17D0)
/* BF99C 8015EF5C 8E030000 */  lw         $v1, 0x0($s0)
/* BF9A0 8015EF60 3C0C801A */  lui        $t4, %hi(D_801982F8_ovl3)
/* BF9A4 8015EF64 258C82F8 */  addiu      $t4, $t4, %lo(D_801982F8_ovl3)
/* BF9A8 8015EF68 00031880 */  sll        $v1, $v1, 2
/* BF9AC 8015EF6C 01E37821 */  addu       $t7, $t7, $v1
/* BF9B0 8015EF70 8DEF8760 */  lw         $t7, %lo(D_800E8760)($t7)
/* BF9B4 8015EF74 00230821 */  addu       $at, $at, $v1
/* BF9B8 8015EF78 3C058019 */  lui        $a1, %hi(D_801936F0_ovl3)
/* BF9BC 8015EF7C 15E00230 */  bnez       $t7, .L8015F840_ovl3
/* BF9C0 8015EF80 00000000 */   nop
/* BF9C4 8015EF84 C42417D0 */  lwc1       $f4, %lo(D_800E17D0)($at)
/* BF9C8 8015EF88 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
.L8015EF8C_ovl5:
/* BF9CC 8015EF8C 00230821 */  addu       $at, $at, $v1
/* BF9D0 8015EF90 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
/* BF9D4 8015EF94 8E020000 */  lw         $v0, 0x0($s0)
/* BF9D8 8015EF98 24A536F0 */  addiu      $a1, $a1, %lo(D_801936F0_ovl3)
.L8015EF9C_ovl5:
/* BF9DC 8015EF9C 00003025 */  or         $a2, $zero, $zero
/* BF9E0 8015EFA0 0002C140 */  sll        $t8, $v0, 5
.L8015EFA4_ovl5:
/* BF9E4 8015EFA4 270BFF80 */  addiu      $t3, $t8, -0x80
/* BF9E8 8015EFA8 016C2021 */  addu       $a0, $t3, $t4
/* BF9EC 8015EFAC 0C055754 */  jal        func_80155D50_ovl3
/* BF9F0 8015EFB0 00403825 */   or        $a3, $v0, $zero
/* BF9F4 8015EFB4 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* BF9F8 8015EFB8 8E10A7C4 */  lw         $s0, %lo(D_8004A7C4)($s0)
/* BF9FC 8015EFBC 44803000 */  mtc1       $zero, $f6
.L8015EFC0_ovl5:
/* BFA00 8015EFC0 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
.L8015EFC4_ovl5:
/* BFA04 8015EFC4 8E190000 */  lw         $t9, 0x0($s0)
/* BFA08 8015EFC8 00196880 */  sll        $t5, $t9, 2
/* BFA0C 8015EFCC 002D0821 */  addu       $at, $at, $t5
/* BFA10 8015EFD0 E42641D0 */  swc1       $f6, %lo(gEntitiesAngleYArray)($at)
/* BFA14 8015EFD4 8E0E0000 */  lw         $t6, 0x0($s0)
/* BFA18 8015EFD8 3C01800F */  lui        $at, %hi(D_800E8920)
/* BFA1C 8015EFDC 3C198019 */  lui        $t9, %hi(D_80197F60_ovl3)
.L8015EFE0_ovl5:
/* BFA20 8015EFE0 000E7880 */  sll        $t7, $t6, 2
.L8015EFE4_ovl5:
/* BFA24 8015EFE4 002F0821 */  addu       $at, $at, $t7
/* BFA28 8015EFE8 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* BFA2C 8015EFEC 8E180000 */  lw         $t8, 0x0($s0)
/* BFA30 8015EFF0 27397F60 */  addiu      $t9, $t9, %lo(D_80197F60_ovl3)
/* BFA34 8015EFF4 AFA200A4 */  sw         $v0, 0xA4($sp)
/* BFA38 8015EFF8 00185880 */  sll        $t3, $t8, 2
/* BFA3C 8015EFFC 01785823 */  subu       $t3, $t3, $t8
/* BFA40 8015F000 000B58C0 */  sll        $t3, $t3, 3
/* BFA44 8015F004 01785823 */  subu       $t3, $t3, $t8
/* BFA48 8015F008 000B5880 */  sll        $t3, $t3, 2
/* BFA4C 8015F00C 256CFE90 */  addiu      $t4, $t3, -0x170
/* BFA50 8015F010 0C055526 */  jal        func_80155498_ovl3
/* BFA54 8015F014 01992021 */   addu      $a0, $t4, $t9
/* BFA58 8015F018 3C0D8013 */  lui        $t5, %hi(D_8012BCA0)
/* BFA5C 8015F01C 8DADBCA0 */  lw         $t5, %lo(D_8012BCA0)($t5)
/* BFA60 8015F020 8FA300A4 */  lw         $v1, 0xA4($sp)
/* BFA64 8015F024 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* BFA68 8015F028 000D74C2 */  srl        $t6, $t5, 19
/* BFA6C 8015F02C 31CF003F */  andi       $t7, $t6, 0x3F
/* BFA70 8015F030 006F1825 */  or         $v1, $v1, $t7
/* BFA74 8015F034 14600009 */  bnez       $v1, .L8015F05C_ovl3
/* BFA78 8015F038 3C108005 */   lui       $s0, %hi(D_8004A7C4)
/* BFA7C 8015F03C 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* BFA80 8015F040 3C0C800E */  lui        $t4, %hi(D_800E6310)
/* BFA84 8015F044 8F020000 */  lw         $v0, 0x0($t8)
/* BFA88 8015F048 00025880 */  sll        $t3, $v0, 2
/* BFA8C 8015F04C 018B6021 */  addu       $t4, $t4, $t3
/* BFA90 8015F050 8D8C6310 */  lw         $t4, %lo(D_800E6310)($t4)
/* BFA94 8015F054 11800015 */  beqz       $t4, .L8015F0AC_ovl3
/* BFA98 8015F058 00000000 */   nop
.L8015F05C_ovl3:
/* BFA9C 8015F05C 8E10A7C4 */  lw         $s0, %lo(D_8004A7C4)($s0)
/* BFAA0 8015F060 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* BFAA4 8015F064 24190001 */  addiu      $t9, $zero, 0x1
/* BFAA8 8015F068 8E0D0000 */  lw         $t5, 0x0($s0)
/* BFAAC 8015F06C 3C0B800E */  lui        $t3, %hi(D_800E64D0)
/* BFAB0 8015F070 256B64D0 */  addiu      $t3, $t3, %lo(D_800E64D0)
.L8015F074_ovl5:
/* BFAB4 8015F074 000D7080 */  sll        $t6, $t5, 2
/* BFAB8 8015F078 002E0821 */  addu       $at, $at, $t6
/* BFABC 8015F07C AC399AA0 */  sw         $t9, %lo(D_800E9AA0)($at)
/* BFAC0 8015F080 8E0F0000 */  lw         $t7, 0x0($s0)
/* BFAC4 8015F084 2404011F */  addiu      $a0, $zero, 0x11F
/* BFAC8 8015F088 000FC080 */  sll        $t8, $t7, 2
/* BFACC 8015F08C 030B1021 */  addu       $v0, $t8, $t3
/* BFAD0 8015F090 C4480000 */  lwc1       $f8, 0x0($v0)
/* BFAD4 8015F094 46004287 */  neg.s      $f10, $f8
/* BFAD8 8015F098 0C029D9E */  jal        play_sound
/* BFADC 8015F09C E44A0000 */   swc1      $f10, 0x0($v0)
/* BFAE0 8015F0A0 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* BFAE4 8015F0A4 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* BFAE8 8015F0A8 8D820000 */  lw         $v0, 0x0($t4)
.L8015F0AC_ovl3:
/* BFAEC 8015F0AC 3C048019 */  lui        $a0, %hi(D_80190DD4_ovl3)
/* BFAF0 8015F0B0 24840DD4 */  addiu      $a0, $a0, %lo(D_80190DD4_ovl3)
/* BFAF4 8015F0B4 0C0445EF */  jal        func_801117BC
/* BFAF8 8015F0B8 00402825 */   or        $a1, $v0, $zero
/* BFAFC 8015F0BC 0C044713 */  jal        func_80111C4C
/* BFB00 8015F0C0 00402025 */   or        $a0, $v0, $zero
/* BFB04 8015F0C4 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* BFB08 8015F0C8 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* BFB0C 8015F0CC 3C05800E */  lui        $a1, %hi(D_800E0D50)
/* BFB10 8015F0D0 3C06800E */  lui        $a2, %hi(gEntitiesNextPosYArray)
/* BFB14 8015F0D4 8DA20000 */  lw         $v0, 0x0($t5)
/* BFB18 8015F0D8 24C62790 */  addiu      $a2, $a2, %lo(gEntitiesNextPosYArray)
/* BFB1C 8015F0DC 00021880 */  sll        $v1, $v0, 2
/* BFB20 8015F0E0 00A32821 */  addu       $a1, $a1, $v1
/* BFB24 8015F0E4 8CA50D50 */  lw         $a1, %lo(D_800E0D50)($a1)
/* BFB28 8015F0E8 00C3C821 */  addu       $t9, $a2, $v1
.L8015F0EC_ovl5:
/* BFB2C 8015F0EC C7200000 */  lwc1       $f0, 0x0($t9)
/* BFB30 8015F0F0 00057080 */  sll        $t6, $a1, 2
/* BFB34 8015F0F4 00CE7821 */  addu       $t7, $a2, $t6
/* BFB38 8015F0F8 C5E20000 */  lwc1       $f2, 0x0($t7)
/* BFB3C 8015F0FC 00402025 */  or         $a0, $v0, $zero
/* BFB40 8015F100 4602003C */  c.lt.s     $f0, $f2
/* BFB44 8015F104 00000000 */  nop
/* BFB48 8015F108 45020005 */  bc1fl      .L8015F120_ovl3
/* BFB4C 8015F10C 46020301 */   sub.s     $f12, $f0, $f2
/* BFB50 8015F110 46020301 */  sub.s      $f12, $f0, $f2
/* BFB54 8015F114 10000002 */  b          .L8015F120_ovl3
/* BFB58 8015F118 46006307 */   neg.s     $f12, $f12
/* BFB5C 8015F11C 46020301 */  sub.s      $f12, $f0, $f2
.L8015F120_ovl3:
/* BFB60 8015F120 0C03E60A */  jal        func_800F9828
/* BFB64 8015F124 E7AC009C */   swc1      $f12, 0x9C($sp)
/* BFB68 8015F128 3C018019 */  lui        $at, %hi(D_801970A4_ovl3)
/* BFB6C 8015F12C C42470A4 */  lwc1       $f4, %lo(D_801970A4_ovl3)($at)
/* BFB70 8015F130 C7AC009C */  lwc1       $f12, 0x9C($sp)
/* BFB74 8015F134 E7A000A0 */  swc1       $f0, 0xA0($sp)
/* BFB78 8015F138 46040032 */  c.eq.s     $f0, $f4
/* BFB7C 8015F13C 3C014416 */  lui        $at, (0x44160000 >> 16)
/* BFB80 8015F140 450101BF */  bc1t       .L8015F840_ovl3
/* BFB84 8015F144 00000000 */   nop
.L8015F148_ovl5:
/* BFB88 8015F148 44803000 */  mtc1       $zero, $f6
/* BFB8C 8015F14C 44814000 */  mtc1       $at, $f8
/* BFB90 8015F150 3C0143F0 */  lui        $at, (0x43F00000 >> 16)
/* BFB94 8015F154 4606003C */  c.lt.s     $f0, $f6
/* BFB98 8015F158 00000000 */  nop
/* BFB9C 8015F15C 45020004 */  bc1fl      .L8015F170_ovl3
.L8015F160_ovl5:
/* BFBA0 8015F160 46000086 */   mov.s     $f2, $f0
/* BFBA4 8015F164 10000002 */  b          .L8015F170_ovl3
/* BFBA8 8015F168 46000087 */   neg.s     $f2, $f0
/* BFBAC 8015F16C 46000086 */  mov.s      $f2, $f0
.L8015F170_ovl3:
/* BFBB0 8015F170 4608103C */  c.lt.s     $f2, $f8
/* BFBB4 8015F174 00000000 */  nop
/* BFBB8 8015F178 450001B1 */  bc1f       .L8015F840_ovl3
/* BFBBC 8015F17C 00000000 */   nop
/* BFBC0 8015F180 44815000 */  mtc1       $at, $f10
.L8015F184_ovl5:
/* BFBC4 8015F184 3C04800E */  lui        $a0, %hi(gEntitiesNextPosXArray)
.L8015F188_ovl5:
/* BFBC8 8015F188 3C05800E */  lui        $a1, %hi(gEntitiesNextPosZArray)
/* BFBCC 8015F18C 460A603C */  c.lt.s     $f12, $f10
/* BFBD0 8015F190 3C06800E */  lui        $a2, %hi(gEntitiesNextPosYArray)
/* BFBD4 8015F194 24C62790 */  addiu      $a2, $a2, %lo(gEntitiesNextPosYArray)
/* BFBD8 8015F198 24A52950 */  addiu      $a1, $a1, %lo(gEntitiesNextPosZArray)
/* BFBDC 8015F19C 450001A8 */  bc1f       .L8015F840_ovl3
/* BFBE0 8015F1A0 248425D0 */   addiu     $a0, $a0, %lo(gEntitiesNextPosXArray)
/* BFBE4 8015F1A4 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* BFBE8 8015F1A8 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* BFBEC 8015F1AC 3C02800E */  lui        $v0, %hi(D_800E0D50)
/* BFBF0 8015F1B0 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* BFBF4 8015F1B4 8F030000 */  lw         $v1, 0x0($t8)
/* BFBF8 8015F1B8 44815000 */  mtc1       $at, $f10
/* BFBFC 8015F1BC 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
.L8015F1C0_ovl5:
/* BFC00 8015F1C0 00031880 */  sll        $v1, $v1, 2
/* BFC04 8015F1C4 00431021 */  addu       $v0, $v0, $v1
/* BFC08 8015F1C8 8C420D50 */  lw         $v0, %lo(D_800E0D50)($v0)
/* BFC0C 8015F1CC 00836821 */  addu       $t5, $a0, $v1
/* BFC10 8015F1D0 C5A60000 */  lwc1       $f6, 0x0($t5)
/* BFC14 8015F1D4 00021080 */  sll        $v0, $v0, 2
.L8015F1D8_ovl5:
/* BFC18 8015F1D8 00826021 */  addu       $t4, $a0, $v0
/* BFC1C 8015F1DC C5840000 */  lwc1       $f4, 0x0($t4)
/* BFC20 8015F1E0 00C2C821 */  addu       $t9, $a2, $v0
.L8015F1E4_ovl5:
/* BFC24 8015F1E4 C7280000 */  lwc1       $f8, 0x0($t9)
/* BFC28 8015F1E8 46062301 */  sub.s      $f12, $f4, $f6
/* BFC2C 8015F1EC 00C37021 */  addu       $t6, $a2, $v1
/* BFC30 8015F1F0 C5C60000 */  lwc1       $f6, 0x0($t6)
/* BFC34 8015F1F4 460A4100 */  add.s      $f4, $f8, $f10
/* BFC38 8015F1F8 00A27821 */  addu       $t7, $a1, $v0
/* BFC3C 8015F1FC 00A3C021 */  addu       $t8, $a1, $v1
.L8015F200_ovl5:
/* BFC40 8015F200 C5EA0000 */  lwc1       $f10, 0x0($t7)
/* BFC44 8015F204 46062201 */  sub.s      $f8, $f4, $f6
/* BFC48 8015F208 C7040000 */  lwc1       $f4, 0x0($t8)
/* BFC4C 8015F20C 01635821 */  addu       $t3, $t3, $v1
/* BFC50 8015F210 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
/* BFC54 8015F214 46045381 */  sub.s      $f14, $f10, $f4
/* BFC58 8015F218 8D700004 */  lw         $s0, 0x4($t3)
/* BFC5C 8015F21C E7A80094 */  swc1       $f8, 0x94($sp)
/* BFC60 8015F220 E7AE0098 */  swc1       $f14, 0x98($sp)
/* BFC64 8015F224 0C0061C3 */  jal        atan2f
/* BFC68 8015F228 E7AC0090 */   swc1      $f12, 0x90($sp)
/* BFC6C 8015F22C C7B20090 */  lwc1       $f18, 0x90($sp)
/* BFC70 8015F230 C7AE0098 */  lwc1       $f14, 0x98($sp)
/* BFC74 8015F234 3C018019 */  lui        $at, %hi(D_801970A8_ovl3)
/* BFC78 8015F238 46129082 */  mul.s      $f2, $f18, $f18
/* BFC7C 8015F23C C42670A8 */  lwc1       $f6, %lo(D_801970A8_ovl3)($at)
/* BFC80 8015F240 460E7402 */  mul.s      $f16, $f14, $f14
/* BFC84 8015F244 46060200 */  add.s      $f8, $f0, $f6
/* BFC88 8015F248 E6080034 */  swc1       $f8, 0x34($s0)
/* BFC8C 8015F24C E7B00038 */  swc1       $f16, 0x38($sp)
/* BFC90 8015F250 E7A2003C */  swc1       $f2, 0x3C($sp)
/* BFC94 8015F254 0C00CAC8 */  jal        sqrtf
/* BFC98 8015F258 46101300 */   add.s     $f12, $f2, $f16
/* BFC9C 8015F25C C7AC0094 */  lwc1       $f12, 0x94($sp)
/* BFCA0 8015F260 0C0061C3 */  jal        atan2f
/* BFCA4 8015F264 46000386 */   mov.s     $f14, $f0
/* BFCA8 8015F268 C7A20094 */  lwc1       $f2, 0x94($sp)
.L8015F26C_ovl5:
/* BFCAC 8015F26C 44805000 */  mtc1       $zero, $f10
/* BFCB0 8015F270 E6000030 */  swc1       $f0, 0x30($s0)
/* BFCB4 8015F274 46021182 */  mul.s      $f6, $f2, $f2
/* BFCB8 8015F278 E60A0038 */  swc1       $f10, 0x38($s0)
/* BFCBC 8015F27C C7A4003C */  lwc1       $f4, 0x3C($sp)
.L8015F280_ovl5:
/* BFCC0 8015F280 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* BFCC4 8015F284 46062200 */  add.s      $f8, $f4, $f6
/* BFCC8 8015F288 0C00CAC8 */  jal        sqrtf
/* BFCCC 8015F28C 460A4300 */   add.s     $f12, $f8, $f10
/* BFCD0 8015F290 3C014190 */  lui        $at, (0x41900000 >> 16)
/* BFCD4 8015F294 44812000 */  mtc1       $at, $f4
/* BFCD8 8015F298 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* BFCDC 8015F29C 44814000 */  mtc1       $at, $f8
/* BFCE0 8015F2A0 46040181 */  sub.s      $f6, $f0, $f4
/* BFCE4 8015F2A4 3C048019 */  lui        $a0, %hi(D_80191AC8_ovl3)
/* BFCE8 8015F2A8 24841AC8 */  addiu      $a0, $a0, %lo(D_80191AC8_ovl3)
/* BFCEC 8015F2AC 02002825 */  or         $a1, $s0, $zero
/* BFCF0 8015F2B0 46083283 */  div.s      $f10, $f6, $f8
/* BFCF4 8015F2B4 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* BFCF8 8015F2B8 0C05A153 */  jal        func_8016854C_ovl3
/* BFCFC 8015F2BC E60A0048 */   swc1      $f10, 0x48($s0)
/* BFD00 8015F2C0 0C00B5B8 */  jal        sinf
/* BFD04 8015F2C4 C60C0030 */   lwc1      $f12, 0x30($s0)
.L8015F2C8_ovl5:
/* BFD08 8015F2C8 C60C0030 */  lwc1       $f12, 0x30($s0)
/* BFD0C 8015F2CC 0C00D604 */  jal        cosf
/* BFD10 8015F2D0 E7A00080 */   swc1      $f0, 0x80($sp)
/* BFD14 8015F2D4 3C038019 */  lui        $v1, %hi(D_801936FC_ovl3)
.L8015F2D8_ovl5:
/* BFD18 8015F2D8 246336FC */  addiu      $v1, $v1, %lo(D_801936FC_ovl3)
/* BFD1C 8015F2DC C4640000 */  lwc1       $f4, 0x0($v1)
.L8015F2E0_ovl5:
/* BFD20 8015F2E0 C6060048 */  lwc1       $f6, 0x48($s0)
/* BFD24 8015F2E4 3C02801A */  lui        $v0, %hi(D_80198438_ovl3)
/* BFD28 8015F2E8 24428438 */  addiu      $v0, $v0, %lo(D_80198438_ovl3)
.L8015F2EC_ovl5:
/* BFD2C 8015F2EC 46062202 */  mul.s      $f8, $f4, $f6
/* BFD30 8015F2F0 C46A0004 */  lwc1       $f10, 0x4($v1)
/* BFD34 8015F2F4 C7B20080 */  lwc1       $f18, 0x80($sp)
/* BFD38 8015F2F8 3C048019 */  lui        $a0, %hi(D_8019370C_ovl3)
/* BFD3C 8015F2FC 2484370C */  addiu      $a0, $a0, %lo(D_8019370C_ovl3)
glabel func_8015F300_ovl5
/* BFD40 8015F300 00002825 */  or         $a1, $zero, $zero
/* BFD44 8015F304 E4480000 */  swc1       $f8, 0x0($v0)
/* BFD48 8015F308 C6040048 */  lwc1       $f4, 0x48($s0)
/* BFD4C 8015F30C C4680008 */  lwc1       $f8, 0x8($v1)
/* BFD50 8015F310 46045182 */  mul.s      $f6, $f10, $f4
/* BFD54 8015F314 E4460004 */  swc1       $f6, 0x4($v0)
/* BFD58 8015F318 C60A0048 */  lwc1       $f10, 0x48($s0)
/* BFD5C 8015F31C C466000C */  lwc1       $f6, 0xC($v1)
/* BFD60 8015F320 460A4102 */  mul.s      $f4, $f8, $f10
/* BFD64 8015F324 E4440008 */  swc1       $f4, 0x8($v0)
/* BFD68 8015F328 C6080048 */  lwc1       $f8, 0x48($s0)
/* BFD6C 8015F32C C4420008 */  lwc1       $f2, 0x8($v0)
/* BFD70 8015F330 46083282 */  mul.s      $f10, $f6, $f8
/* BFD74 8015F334 E44A000C */  swc1       $f10, 0xC($v0)
/* BFD78 8015F338 46001102 */  mul.s      $f4, $f2, $f0
/* BFD7C 8015F33C C44C000C */  lwc1       $f12, 0xC($v0)
/* BFD80 8015F340 46126182 */  mul.s      $f6, $f12, $f18
/* BFD84 8015F344 00000000 */  nop
/* BFD88 8015F348 46006202 */  mul.s      $f8, $f12, $f0
/* BFD8C 8015F34C 00000000 */  nop
/* BFD90 8015F350 46121282 */  mul.s      $f10, $f2, $f18
/* BFD94 8015F354 46062381 */  sub.s      $f14, $f4, $f6
/* BFD98 8015F358 E44E0008 */  swc1       $f14, 0x8($v0)
/* BFD9C 8015F35C 460A4400 */  add.s      $f16, $f8, $f10
/* BFDA0 8015F360 E450000C */  swc1       $f16, 0xC($v0)
/* BFDA4 8015F364 0C05515E */  jal        func_80154578_ovl3
/* BFDA8 8015F368 8E060034 */   lw        $a2, 0x34($s0)
/* BFDAC 8015F36C 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* BFDB0 8015F370 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* BFDB4 8015F374 3C0C800F */  lui        $t4, %hi(D_800E98E0)
/* BFDB8 8015F378 3C048019 */  lui        $a0, %hi(D_80192358_ovl3)
/* BFDBC 8015F37C 8D630000 */  lw         $v1, 0x0($t3)
/* BFDC0 8015F380 3C05800E */  lui        $a1, %hi(D_800E0D50)
/* BFDC4 8015F384 24842358 */  addiu      $a0, $a0, %lo(D_80192358_ovl3)
/* BFDC8 8015F388 00031880 */  sll        $v1, $v1, 2
.L8015F38C_ovl5:
/* BFDCC 8015F38C 01836021 */  addu       $t4, $t4, $v1
.L8015F390_ovl5:
/* BFDD0 8015F390 8D8C98E0 */  lw         $t4, %lo(D_800E98E0)($t4)
/* BFDD4 8015F394 00A32821 */  addu       $a1, $a1, $v1
/* BFDD8 8015F398 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* BFDDC 8015F39C 51800168 */  beql       $t4, $zero, .L8015F940_ovl3
/* BFDE0 8015F3A0 8FBF0024 */   lw        $ra, 0x24($sp)
.L8015F3A4_ovl5:
/* BFDE4 8015F3A4 0C047616 */  jal        func_8011D858
/* BFDE8 8015F3A8 8CA50D50 */   lw        $a1, %lo(D_800E0D50)($a1)
/* BFDEC 8015F3AC 14400122 */  bnez       $v0, .L8015F838_ovl3
/* BFDF0 8015F3B0 24040009 */   addiu     $a0, $zero, 0x9
/* BFDF4 8015F3B4 C7A000A0 */  lwc1       $f0, 0xA0($sp)
/* BFDF8 8015F3B8 44802000 */  mtc1       $zero, $f4
/* BFDFC 8015F3BC 3C014320 */  lui        $at, (0x43200000 >> 16)
/* BFE00 8015F3C0 44813000 */  mtc1       $at, $f6
/* BFE04 8015F3C4 4604003C */  c.lt.s     $f0, $f4
/* BFE08 8015F3C8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* BFE0C 8015F3CC 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* BFE10 8015F3D0 45020004 */  bc1fl      .L8015F3E4_ovl3
/* BFE14 8015F3D4 46000086 */   mov.s     $f2, $f0
/* BFE18 8015F3D8 10000002 */  b          .L8015F3E4_ovl3
/* BFE1C 8015F3DC 46000087 */   neg.s     $f2, $f0
/* BFE20 8015F3E0 46000086 */  mov.s      $f2, $f0
.L8015F3E4_ovl3:
/* BFE24 8015F3E4 4606103C */  c.lt.s     $f2, $f6
/* BFE28 8015F3E8 00001025 */  or         $v0, $zero, $zero
/* BFE2C 8015F3EC 45000003 */  bc1f       .L8015F3FC_ovl3
/* BFE30 8015F3F0 00000000 */   nop
/* BFE34 8015F3F4 10000001 */  b          .L8015F3FC_ovl3
/* BFE38 8015F3F8 24020001 */   addiu     $v0, $zero, 0x1
.L8015F3FC_ovl3:
/* BFE3C 8015F3FC C7A80094 */  lwc1       $f8, 0x94($sp)
/* BFE40 8015F400 8E10A7C4 */  lw         $s0, %lo(D_8004A7C4)($s0)
/* BFE44 8015F404 E7A00064 */  swc1       $f0, 0x64($sp)
/* BFE48 8015F408 E7A80068 */  swc1       $f8, 0x68($sp)
/* BFE4C 8015F40C 8E0D0000 */  lw         $t5, 0x0($s0)
/* BFE50 8015F410 44801000 */  mtc1       $zero, $f2
.L8015F414_ovl5:
/* BFE54 8015F414 27A40058 */  addiu      $a0, $sp, 0x58
/* BFE58 8015F418 000DC880 */  sll        $t9, $t5, 2
/* BFE5C 8015F41C 00390821 */  addu       $at, $at, $t9
/* BFE60 8015F420 C42A64D0 */  lwc1       $f10, %lo(D_800E64D0)($at)
.L8015F424_ovl5:
/* BFE64 8015F424 3C01800E */  lui        $at, %hi(D_800E3210)
/* BFE68 8015F428 27A50064 */  addiu      $a1, $sp, 0x64
.L8015F42C_ovl5:
/* BFE6C 8015F42C E7AA0058 */  swc1       $f10, 0x58($sp)
/* BFE70 8015F430 8E0E0000 */  lw         $t6, 0x0($s0)
/* BFE74 8015F434 AFA20078 */  sw         $v0, 0x78($sp)
/* BFE78 8015F438 E7A2006C */  swc1       $f2, 0x6C($sp)
/* BFE7C 8015F43C 000E7880 */  sll        $t7, $t6, 2
/* BFE80 8015F440 002F0821 */  addu       $at, $at, $t7
/* BFE84 8015F444 C4243210 */  lwc1       $f4, %lo(D_800E3210)($at)
/* BFE88 8015F448 E7A20060 */  swc1       $f2, 0x60($sp)
/* BFE8C 8015F44C 0C0063EF */  jal        lbvector_Angle
/* BFE90 8015F450 E7A4005C */   swc1      $f4, 0x5C($sp)
/* BFE94 8015F454 3C018019 */  lui        $at, %hi(D_801970AC_ovl3)
/* BFE98 8015F458 C42270AC */  lwc1       $f2, %lo(D_801970AC_ovl3)($at)
/* BFE9C 8015F45C 8FA20078 */  lw         $v0, 0x78($sp)
/* BFEA0 8015F460 3C198019 */  lui        $t9, %hi(D_801967C4_ovl3)
/* BFEA4 8015F464 46020032 */  c.eq.s     $f0, $f2
/* BFEA8 8015F468 273967C4 */  addiu      $t9, $t9, %lo(D_801967C4_ovl3)
/* BFEAC 8015F46C 00026880 */  sll        $t5, $v0, 2
.L8015F470_ovl5:
/* BFEB0 8015F470 27A50064 */  addiu      $a1, $sp, 0x64
/* BFEB4 8015F474 45000020 */  bc1f       .L8015F4F8_ovl3
/* BFEB8 8015F478 01B98021 */   addu      $s0, $t5, $t9
/* BFEBC 8015F47C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* BFEC0 8015F480 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
.L8015F484_ovl5:
/* BFEC4 8015F484 3C01800E */  lui        $at, %hi(D_800E64D0)
.L8015F488_ovl5:
/* BFEC8 8015F488 44803000 */  mtc1       $zero, $f6
/* BFECC 8015F48C 8F030000 */  lw         $v1, 0x0($t8)
/* BFED0 8015F490 00026080 */  sll        $t4, $v0, 2
/* BFED4 8015F494 00025880 */  sll        $t3, $v0, 2
/* BFED8 8015F498 00031880 */  sll        $v1, $v1, 2
/* BFEDC 8015F49C 00230821 */  addu       $at, $at, $v1
/* BFEE0 8015F4A0 C42864D0 */  lwc1       $f8, %lo(D_800E64D0)($at)
/* BFEE4 8015F4A4 3C018019 */  lui        $at, %hi(D_801967C4_ovl3)
/* BFEE8 8015F4A8 002C0821 */  addu       $at, $at, $t4
/* BFEEC 8015F4AC 4608303C */  c.lt.s     $f6, $f8
/* BFEF0 8015F4B0 00000000 */  nop
/* BFEF4 8015F4B4 45000009 */  bc1f       .L8015F4DC_ovl3
/* BFEF8 8015F4B8 00000000 */   nop
/* BFEFC 8015F4BC 3C018019 */  lui        $at, %hi(D_801967C4_ovl3)
/* BFF00 8015F4C0 002B0821 */  addu       $at, $at, $t3
glabel func_8015F4C4_ovl5
/* BFF04 8015F4C4 C42A67C4 */  lwc1       $f10, %lo(D_801967C4_ovl3)($at)
/* BFF08 8015F4C8 3C014334 */  lui        $at, (0x43340000 >> 16)
/* BFF0C 8015F4CC 44813000 */  mtc1       $at, $f6
/* BFF10 8015F4D0 46025102 */  mul.s      $f4, $f10, $f2
/* BFF14 8015F4D4 10000030 */  b          .L8015F598_ovl3
/* BFF18 8015F4D8 46062303 */   div.s     $f12, $f4, $f6
.L8015F4DC_ovl3:
/* BFF1C 8015F4DC C42867C4 */  lwc1       $f8, %lo(D_801967C4_ovl3)($at)
/* BFF20 8015F4E0 3C014334 */  lui        $at, (0x43340000 >> 16)
/* BFF24 8015F4E4 44812000 */  mtc1       $at, $f4
/* BFF28 8015F4E8 46024282 */  mul.s      $f10, $f8, $f2
/* BFF2C 8015F4EC 46045183 */  div.s      $f6, $f10, $f4
/* BFF30 8015F4F0 10000029 */  b          .L8015F598_ovl3
/* BFF34 8015F4F4 46061301 */   sub.s     $f12, $f2, $f6
.L8015F4F8_ovl3:
/* BFF38 8015F4F8 C6080000 */  lwc1       $f8, 0x0($s0)
/* BFF3C 8015F4FC 3C014334 */  lui        $at, (0x43340000 >> 16)
/* BFF40 8015F500 44812000 */  mtc1       $at, $f4
/* BFF44 8015F504 46024282 */  mul.s      $f10, $f8, $f2
/* BFF48 8015F508 27A40058 */  addiu      $a0, $sp, 0x58
/* BFF4C 8015F50C 46045183 */  div.s      $f6, $f10, $f4
/* BFF50 8015F510 4606003C */  c.lt.s     $f0, $f6
/* BFF54 8015F514 00000000 */  nop
/* BFF58 8015F518 45000009 */  bc1f       .L8015F540_ovl3
/* BFF5C 8015F51C 00000000 */   nop
/* BFF60 8015F520 8CB80000 */  lw         $t8, 0x0($a1)
/* BFF64 8015F524 27AE0058 */  addiu      $t6, $sp, 0x58
/* BFF68 8015F528 ADD80000 */  sw         $t8, 0x0($t6)
/* BFF6C 8015F52C 8CAF0004 */  lw         $t7, 0x4($a1)
/* BFF70 8015F530 ADCF0004 */  sw         $t7, 0x4($t6)
/* BFF74 8015F534 8CB80008 */  lw         $t8, 0x8($a1)
/* BFF78 8015F538 1000000F */  b          .L8015F578_ovl5
/* BFF7C 8015F53C ADD80008 */   sw        $t8, 0x8($t6)
.L8015F540_ovl3:
/* BFF80 8015F540 0C0065D0 */  jal        vec3_normalized_cross_product
/* BFF84 8015F544 27A6004C */   addiu     $a2, $sp, 0x4C
/* BFF88 8015F548 3C018019 */  lui        $at, %hi(D_801970B0_ovl3)
/* BFF8C 8015F54C C42A70B0 */  lwc1       $f10, %lo(D_801970B0_ovl3)($at)
.L8015F550_ovl5:
/* BFF90 8015F550 C6080000 */  lwc1       $f8, 0x0($s0)
/* BFF94 8015F554 3C014334 */  lui        $at, (0x43340000 >> 16)
/* BFF98 8015F558 44813000 */  mtc1       $at, $f6
/* BFF9C 8015F55C 460A4102 */  mul.s      $f4, $f8, $f10
/* BFFA0 8015F560 27A40058 */  addiu      $a0, $sp, 0x58
/* BFFA4 8015F564 27A5004C */  addiu      $a1, $sp, 0x4C
/* BFFA8 8015F568 46062203 */  div.s      $f8, $f4, $f6
/* BFFAC 8015F56C 44064000 */  mfc1       $a2, $f8
/* BFFB0 8015F570 0C00647E */  jal        func_800191F8
/* BFFB4 8015F574 00000000 */   nop
.L8015F578_ovl5:
/* BFFB8 8015F578 C7AC005C */  lwc1       $f12, 0x5C($sp)
/* BFFBC 8015F57C 0C0061C3 */  jal        atan2f
/* BFFC0 8015F580 C7AE0058 */   lwc1      $f14, 0x58($sp)
/* BFFC4 8015F584 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* BFFC8 8015F588 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* BFFCC 8015F58C 46000306 */  mov.s      $f12, $f0
/* BFFD0 8015F590 8D630000 */  lw         $v1, 0x0($t3)
/* BFFD4 8015F594 00031880 */  sll        $v1, $v1, 2
.L8015F598_ovl3:
/* BFFD8 8015F598 3C0C800F */  lui        $t4, %hi(D_800E8AE0)
/* BFFDC 8015F59C 01836021 */  addu       $t4, $t4, $v1
/* BFFE0 8015F5A0 8D8C8AE0 */  lw         $t4, %lo(D_800E8AE0)($t4)
/* BFFE4 8015F5A4 3C014100 */  lui        $at, (0x41000000 >> 16)
.L8015F5A8_ovl5:
/* BFFE8 8015F5A8 318D0004 */  andi       $t5, $t4, 0x4
/* BFFEC 8015F5AC 55A00006 */  bnel       $t5, $zero, .L8015F5C8_ovl3
/* BFFF0 8015F5B0 44811000 */   mtc1      $at, $f2
/* BFFF4 8015F5B4 3C014180 */  lui        $at, (0x41800000 >> 16)
/* BFFF8 8015F5B8 44811000 */  mtc1       $at, $f2
/* BFFFC 8015F5BC 10000004 */  b          .L8015F5D0_ovl3
/* C0000 8015F5C0 E7A20074 */   swc1      $f2, 0x74($sp)
/* C0004 8015F5C4 44811000 */  mtc1       $at, $f2
.L8015F5C8_ovl3:
/* C0008 8015F5C8 00000000 */  nop
/* C000C 8015F5CC E7A20074 */  swc1       $f2, 0x74($sp)
.L8015F5D0_ovl3:
/* C0010 8015F5D0 0C00D604 */  jal        cosf
.L8015F5D4_ovl5:
/* C0014 8015F5D4 E7AC0070 */   swc1      $f12, 0x70($sp)
/* C0018 8015F5D8 C7A20074 */  lwc1       $f2, 0x74($sp)
glabel func_8015F5DC_ovl5
/* C001C 8015F5DC 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* C0020 8015F5E0 8E10A7C4 */  lw         $s0, %lo(D_8004A7C4)($s0)
/* C0024 8015F5E4 46020282 */  mul.s      $f10, $f0, $f2
/* C0028 8015F5E8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* C002C 8015F5EC 8E190000 */  lw         $t9, 0x0($s0)
/* C0030 8015F5F0 44803000 */  mtc1       $zero, $f6
/* C0034 8015F5F4 44802000 */  mtc1       $zero, $f4
/* C0038 8015F5F8 00197080 */  sll        $t6, $t9, 2
/* C003C 8015F5FC 002E0821 */  addu       $at, $at, $t6
/* C0040 8015F600 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* C0044 8015F604 8E0F0000 */  lw         $t7, 0x0($s0)
/* C0048 8015F608 4606103C */  c.lt.s     $f2, $f6
/* C004C 8015F60C 3C01800E */  lui        $at, %hi(D_800E6690)
/* C0050 8015F610 000FC080 */  sll        $t8, $t7, 2
/* C0054 8015F614 00380821 */  addu       $at, $at, $t8
/* C0058 8015F618 C7AC0070 */  lwc1       $f12, 0x70($sp)
/* C005C 8015F61C 45000008 */  bc1f       .L8015F640_ovl3
/* C0060 8015F620 E4246690 */   swc1      $f4, %lo(D_800E6690)($at)
/* C0064 8015F624 8E0B0000 */  lw         $t3, 0x0($s0)
/* C0068 8015F628 3C01800E */  lui        $at, %hi(D_800E6850)
/* C006C 8015F62C 46001207 */  neg.s      $f8, $f2
/* C0070 8015F630 000B6080 */  sll        $t4, $t3, 2
/* C0074 8015F634 002C0821 */  addu       $at, $at, $t4
/* C0078 8015F638 10000006 */  b          .L8015F654_ovl3
/* C007C 8015F63C E4286850 */   swc1      $f8, %lo(D_800E6850)($at)
.L8015F640_ovl3:
/* C0080 8015F640 8E0D0000 */  lw         $t5, 0x0($s0)
.L8015F644_ovl5:
/* C0084 8015F644 3C01800E */  lui        $at, %hi(D_800E6850)
/* C0088 8015F648 000DC880 */  sll        $t9, $t5, 2
/* C008C 8015F64C 00390821 */  addu       $at, $at, $t9
/* C0090 8015F650 E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
.L8015F654_ovl3:
/* C0094 8015F654 0C00B5B8 */  jal        sinf
/* C0098 8015F658 E7A20074 */   swc1      $f2, 0x74($sp)
/* C009C 8015F65C C7A20074 */  lwc1       $f2, 0x74($sp)
.L8015F660_ovl5:
/* C00A0 8015F660 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* C00A4 8015F664 8E10A7C4 */  lw         $s0, %lo(D_8004A7C4)($s0)
/* C00A8 8015F668 46020282 */  mul.s      $f10, $f0, $f2
/* C00AC 8015F66C 3C06800E */  lui        $a2, %hi(D_800E3210)
/* C00B0 8015F670 8E0E0000 */  lw         $t6, 0x0($s0)
.L8015F674_ovl5:
/* C00B4 8015F674 24C63210 */  addiu      $a2, $a2, %lo(D_800E3210)
/* C00B8 8015F678 44802000 */  mtc1       $zero, $f4
glabel func_8015F67C_ovl5
/* C00BC 8015F67C 000E7880 */  sll        $t7, $t6, 2
/* C00C0 8015F680 00CFC021 */  addu       $t8, $a2, $t7
/* C00C4 8015F684 E70A0000 */  swc1       $f10, 0x0($t8)
/* C00C8 8015F688 8E0B0000 */  lw         $t3, 0x0($s0)
/* C00CC 8015F68C 4604103C */  c.lt.s     $f2, $f4
/* C00D0 8015F690 44806000 */  mtc1       $zero, $f12
/* C00D4 8015F694 3C01800E */  lui        $at, %hi(D_800E3750)
/* C00D8 8015F698 000B6080 */  sll        $t4, $t3, 2
/* C00DC 8015F69C 002C0821 */  addu       $at, $at, $t4
/* C00E0 8015F6A0 45000008 */  bc1f       .L8015F6C4_ovl3
/* C00E4 8015F6A4 E42C3750 */   swc1      $f12, %lo(D_800E3750)($at)
/* C00E8 8015F6A8 8E0D0000 */  lw         $t5, 0x0($s0)
/* C00EC 8015F6AC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* C00F0 8015F6B0 46001187 */  neg.s      $f6, $f2
/* C00F4 8015F6B4 000DC880 */  sll        $t9, $t5, 2
/* C00F8 8015F6B8 00390821 */  addu       $at, $at, $t9
/* C00FC 8015F6BC 10000006 */  b          .L8015F6D8_ovl3
/* C0100 8015F6C0 E4263C90 */   swc1      $f6, %lo(D_800E3C90)($at)
.L8015F6C4_ovl3:
/* C0104 8015F6C4 8E0E0000 */  lw         $t6, 0x0($s0)
/* C0108 8015F6C8 3C01800E */  lui        $at, %hi(D_800E3C90)
/* C010C 8015F6CC 000E7880 */  sll        $t7, $t6, 2
/* C0110 8015F6D0 002F0821 */  addu       $at, $at, $t7
/* C0114 8015F6D4 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
.L8015F6D8_ovl3:
/* C0118 8015F6D8 8E030000 */  lw         $v1, 0x0($s0)
/* C011C 8015F6DC 3C04800F */  lui        $a0, %hi(D_800E8920)
/* C0120 8015F6E0 3C188013 */  lui        $t8, %hi(D_8012BCA0)
/* C0124 8015F6E4 00031880 */  sll        $v1, $v1, 2
/* C0128 8015F6E8 00832021 */  addu       $a0, $a0, $v1
/* C012C 8015F6EC 8C848920 */  lw         $a0, %lo(D_800E8920)($a0)
/* C0130 8015F6F0 10800023 */  beqz       $a0, .L8015F780_ovl3
/* C0134 8015F6F4 00000000 */   nop
/* C0138 8015F6F8 3C18800F */  lui        $t8, %hi(D_800E9E20)
.L8015F6FC_ovl5:
/* C013C 8015F6FC 27189E20 */  addiu      $t8, $t8, %lo(D_800E9E20)
/* C0140 8015F700 00782821 */  addu       $a1, $v1, $t8
/* C0144 8015F704 8CAB0000 */  lw         $t3, 0x0($a1)
/* C0148 8015F708 5560008D */  bnel       $t3, $zero, .L8015F940_ovl3
/* C014C 8015F70C 8FBF0024 */   lw        $ra, 0x24($sp)
/* C0150 8015F710 ACA40000 */  sw         $a0, 0x0($a1)
.L8015F714_ovl5:
/* C0154 8015F714 8E0C0000 */  lw         $t4, 0x0($s0)
/* C0158 8015F718 44804000 */  mtc1       $zero, $f8
/* C015C 8015F71C 000C6880 */  sll        $t5, $t4, 2
/* C0160 8015F720 00CD1021 */  addu       $v0, $a2, $t5
/* C0164 8015F724 C4400000 */  lwc1       $f0, 0x0($v0)
/* C0168 8015F728 46004032 */  c.eq.s     $f8, $f0
.L8015F72C_ovl5:
/* C016C 8015F72C 00000000 */  nop
/* C0170 8015F730 45030083 */  bc1tl      .L8015F940_ovl3
/* C0174 8015F734 8FBF0024 */   lw        $ra, 0x24($sp)
/* C0178 8015F738 460C003C */  c.lt.s     $f0, $f12
/* C017C 8015F73C 00000000 */  nop
/* C0180 8015F740 45020005 */  bc1fl      .L8015F758_ovl3
.L8015F744_ovl5:
/* C0184 8015F744 E44C0000 */   swc1      $f12, 0x0($v0)
/* C0188 8015F748 46000287 */  neg.s      $f10, $f0
/* C018C 8015F74C 10000002 */  b          .L8015F758_ovl3
/* C0190 8015F750 E44A0000 */   swc1      $f10, 0x0($v0)
.L8015F754_ovl5:
/* C0194 8015F754 E44C0000 */  swc1       $f12, 0x0($v0)
.L8015F758_ovl3:
/* C0198 8015F758 0C029D9E */  jal        play_sound
/* C019C 8015F75C 2404011F */   addiu     $a0, $zero, 0x11F
/* C01A0 8015F760 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* C01A4 8015F764 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
.L8015F768_ovl5:
/* C01A8 8015F768 3C01800F */  lui        $at, %hi(D_800E8920)
/* C01AC 8015F76C 8F2E0000 */  lw         $t6, 0x0($t9)
/* C01B0 8015F770 000E7880 */  sll        $t7, $t6, 2
/* C01B4 8015F774 002F0821 */  addu       $at, $at, $t7
/* C01B8 8015F778 10000070 */  b          .L8015F93C_ovl3
/* C01BC 8015F77C AC208920 */   sw        $zero, %lo(D_800E8920)($at)
.L8015F780_ovl3:
/* C01C0 8015F780 8F18BCA0 */  lw         $t8, %lo(D_8012BCA0)($t8)
/* C01C4 8015F784 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* C01C8 8015F788 3C0D800F */  lui        $t5, %hi(D_800E9FE0)
/* C01CC 8015F78C 00185CC2 */  srl        $t3, $t8, 19
/* C01D0 8015F790 316C01C0 */  andi       $t4, $t3, 0x1C0
/* C01D4 8015F794 1180001E */  beqz       $t4, .L8015F810_ovl3
/* C01D8 8015F798 00230821 */   addu      $at, $at, $v1
/* C01DC 8015F79C 25AD9FE0 */  addiu      $t5, $t5, %lo(D_800E9FE0)
/* C01E0 8015F7A0 006D2821 */  addu       $a1, $v1, $t5
/* C01E4 8015F7A4 8CB90000 */  lw         $t9, 0x0($a1)
/* C01E8 8015F7A8 240E0001 */  addiu      $t6, $zero, 0x1
/* C01EC 8015F7AC 1720001E */  bnez       $t9, .L8015F828_ovl3
.L8015F7B0_ovl5:
/* C01F0 8015F7B0 00000000 */   nop
/* C01F4 8015F7B4 ACAE0000 */  sw         $t6, 0x0($a1)
/* C01F8 8015F7B8 8E0F0000 */  lw         $t7, 0x0($s0)
/* C01FC 8015F7BC 000FC080 */  sll        $t8, $t7, 2
/* C0200 8015F7C0 00D81021 */  addu       $v0, $a2, $t8
.L8015F7C4_ovl5:
/* C0204 8015F7C4 C4400000 */  lwc1       $f0, 0x0($v0)
/* C0208 8015F7C8 4600603C */  c.lt.s     $f12, $f0
/* C020C 8015F7CC 00000000 */  nop
/* C0210 8015F7D0 45020005 */  bc1fl      .L8015F7E8_ovl3
/* C0214 8015F7D4 E44C0000 */   swc1      $f12, 0x0($v0)
.L8015F7D8_ovl5:
/* C0218 8015F7D8 46000107 */  neg.s      $f4, $f0
/* C021C 8015F7DC 10000002 */  b          .L8015F7E8_ovl3
/* C0220 8015F7E0 E4440000 */   swc1      $f4, 0x0($v0)
/* C0224 8015F7E4 E44C0000 */  swc1       $f12, 0x0($v0)
.L8015F7E8_ovl3:
/* C0228 8015F7E8 0C029D9E */  jal        play_sound
/* C022C 8015F7EC 2404011F */   addiu     $a0, $zero, 0x11F
/* C0230 8015F7F0 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
.L8015F7F4_ovl5:
/* C0234 8015F7F4 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
.L8015F7F8_ovl5:
/* C0238 8015F7F8 3C04800F */  lui        $a0, %hi(D_800E8920)
/* C023C 8015F7FC 8D630000 */  lw         $v1, 0x0($t3)
/* C0240 8015F800 00031880 */  sll        $v1, $v1, 2
glabel func_8015F804_ovl5
/* C0244 8015F804 00832021 */  addu       $a0, $a0, $v1
/* C0248 8015F808 10000007 */  b          .L8015F828_ovl3
/* C024C 8015F80C 8C848920 */   lw        $a0, %lo(D_800E8920)($a0)
.L8015F810_ovl3:
/* C0250 8015F810 AC209FE0 */  sw         $zero, %lo(D_800E9FE0)($at)
/* C0254 8015F814 8E030000 */  lw         $v1, 0x0($s0)
/* C0258 8015F818 3C04800F */  lui        $a0, %hi(D_800E8920)
/* C025C 8015F81C 00031880 */  sll        $v1, $v1, 2
/* C0260 8015F820 00832021 */  addu       $a0, $a0, $v1
/* C0264 8015F824 8C848920 */  lw         $a0, %lo(D_800E8920)($a0)
.L8015F828_ovl3:
/* C0268 8015F828 3C01800F */  lui        $at, %hi(D_800E9E20)
/* C026C 8015F82C 00230821 */  addu       $at, $at, $v1
/* C0270 8015F830 10000042 */  b          .L8015F93C_ovl3
/* C0274 8015F834 AC249E20 */   sw        $a0, %lo(D_800E9E20)($at)
.L8015F838_ovl3:
/* C0278 8015F838 0C02ED1A */  jal        func_800BB468
/* C027C 8015F83C 2405001E */   addiu     $a1, $zero, 0x1E
.L8015F840_ovl3:
/* C0280 8015F840 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* C0284 8015F844 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* C0288 8015F848 8D100000 */  lw         $s0, 0x0($t0)
/* C028C 8015F84C 3C01800F */  lui        $at, %hi(D_800E9C60)
/* C0290 8015F850 240C0001 */  addiu      $t4, $zero, 0x1
/* C0294 8015F854 8E0D0000 */  lw         $t5, 0x0($s0)
/* C0298 8015F858 240E0008 */  addiu      $t6, $zero, 0x8
/* C029C 8015F85C 3C098013 */  lui        $t1, %hi(gKirbyState)
/* C02A0 8015F860 000DC880 */  sll        $t9, $t5, 2
/* C02A4 8015F864 00390821 */  addu       $at, $at, $t9
/* C02A8 8015F868 AC2C9C60 */  sw         $t4, %lo(D_800E9C60)($at)
/* C02AC 8015F86C 8E0F0000 */  lw         $t7, 0x0($s0)
/* C02B0 8015F870 3C01800F */  lui        $at, %hi(D_800E9560)
/* C02B4 8015F874 2529E7C0 */  addiu      $t1, $t1, %lo(gKirbyState)
/* C02B8 8015F878 000FC080 */  sll        $t8, $t7, 2
/* C02BC 8015F87C 00380821 */  addu       $at, $at, $t8
/* C02C0 8015F880 AC2E9560 */  sw         $t6, %lo(D_800E9560)($at)
/* C02C4 8015F884 8E030000 */  lw         $v1, 0x0($s0)
/* C02C8 8015F888 3C01800E */  lui        $at, %hi(D_800E17D0)
/* C02CC 8015F88C 3C04800F */  lui        $a0, %hi(D_800EA360)
/* C02D0 8015F890 00031880 */  sll        $v1, $v1, 2
/* C02D4 8015F894 00230821 */  addu       $at, $at, $v1
/* C02D8 8015F898 C42617D0 */  lwc1       $f6, %lo(D_800E17D0)($at)
/* C02DC 8015F89C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* C02E0 8015F8A0 00230821 */  addu       $at, $at, $v1
/* C02E4 8015F8A4 E42641D0 */  swc1       $f6, %lo(gEntitiesAngleYArray)($at)
/* C02E8 8015F8A8 AD2000A0 */  sw         $zero, 0xA0($t1)
.L8015F8AC_ovl5:
/* C02EC 8015F8AC 8E0B0000 */  lw         $t3, 0x0($s0)
.L8015F8B0_ovl5:
/* C02F0 8015F8B0 000B6880 */  sll        $t5, $t3, 2
/* C02F4 8015F8B4 008D2021 */  addu       $a0, $a0, $t5
/* C02F8 8015F8B8 8C84A360 */  lw         $a0, %lo(D_800EA360)($a0)
/* C02FC 8015F8BC 0C029E1C */  jal        func_800A7870
/* C0300 8015F8C0 24850004 */   addiu     $a1, $a0, 0x4
/* C0304 8015F8C4 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* C0308 8015F8C8 8E05A7C4 */  lw         $a1, %lo(D_8004A7C4)($s0)
/* C030C 8015F8CC 3C01800E */  lui        $at, %hi(D_800DEF90)
/* C0310 8015F8D0 00002025 */  or         $a0, $zero, $zero
/* C0314 8015F8D4 8CAC0000 */  lw         $t4, 0x0($a1)
/* C0318 8015F8D8 000CC880 */  sll        $t9, $t4, 2
/* C031C 8015F8DC 00390821 */  addu       $at, $at, $t9
/* C0320 8015F8E0 0C02BEED */  jal        func_800AFBB4
/* C0324 8015F8E4 AC20EF90 */   sw        $zero, %lo(D_800DEF90)($at)
/* C0328 8015F8E8 0C029D9E */  jal        play_sound
/* C032C 8015F8EC 24040059 */   addiu     $a0, $zero, 0x59
/* C0330 8015F8F0 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* C0334 8015F8F4 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* C0338 8015F8F8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* C033C 8015F8FC 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* C0340 8015F900 8DE30000 */  lw         $v1, 0x0($t7)
/* C0344 8015F904 24040002 */  addiu      $a0, $zero, 0x2
/* C0348 8015F908 24050001 */  addiu      $a1, $zero, 0x1
/* C034C 8015F90C 00031880 */  sll        $v1, $v1, 2
/* C0350 8015F910 00230821 */  addu       $at, $at, $v1
/* C0354 8015F914 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* C0358 8015F918 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* C035C 8015F91C 00230821 */  addu       $at, $at, $v1
/* C0360 8015F920 C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
/* C0364 8015F924 00E33821 */  addu       $a3, $a3, $v1
/* C0368 8015F928 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* C036C 8015F92C 24060030 */  addiu      $a2, $zero, 0x30
/* C0370 8015F930 E7A80010 */  swc1       $f8, 0x10($sp)
/* C0374 8015F934 0C029FDD */  jal        func_800A7F74
/* C0378 8015F938 E7AA0014 */   swc1      $f10, 0x14($sp)
.L8015F93C_ovl3:
/* C037C 8015F93C 8FBF0024 */  lw         $ra, 0x24($sp)
.L8015F940_ovl3:
/* C0380 8015F940 8FB00020 */  lw         $s0, 0x20($sp)
/* C0384 8015F944 27BD00A8 */  addiu      $sp, $sp, 0xA8
/* C0388 8015F948 03E00008 */  jr         $ra
/* C038C 8015F94C 00000000 */   nop
