glabel func_801EE728_ovl9
/* 19C778 801EE728 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 19C77C 801EE72C AFB50028 */  sw         $s5, 0x28($sp)
/* 19C780 801EE730 3C158005 */  lui        $s5, %hi(D_8004A7C4)
/* 19C784 801EE734 26B5A7C4 */  addiu      $s5, $s5, %lo(D_8004A7C4)
/* 19C788 801EE738 8EAE0000 */  lw         $t6, 0x0($s5)
/* 19C78C 801EE73C AFBF002C */  sw         $ra, 0x2C($sp)
.L801EE740_ovl16:
/* 19C790 801EE740 AFB40024 */  sw         $s4, 0x24($sp)
/* 19C794 801EE744 AFB30020 */  sw         $s3, 0x20($sp)
.L801EE748_ovl10:
/* 19C798 801EE748 AFB2001C */  sw         $s2, 0x1C($sp)
/* 19C79C 801EE74C AFB10018 */  sw         $s1, 0x18($sp)
/* 19C7A0 801EE750 AFB00014 */  sw         $s0, 0x14($sp)
/* 19C7A4 801EE754 AFA40048 */  sw         $a0, 0x48($sp)
/* 19C7A8 801EE758 8DC20000 */  lw         $v0, 0x0($t6)
.L801EE75C_ovl16:
/* 19C7AC 801EE75C 3C11800E */  lui        $s1, %hi(D_800E7880)
/* 19C7B0 801EE760 3C10800E */  lui        $s0, %hi(D_800E1B50)
/* 19C7B4 801EE764 02228821 */  addu       $s1, $s1, $v0
/* 19C7B8 801EE768 92317880 */  lbu        $s1, %lo(D_800E7880)($s1)
/* 19C7BC 801EE76C 00027880 */  sll        $t7, $v0, 2
/* 19C7C0 801EE770 020F8021 */  addu       $s0, $s0, $t7
/* 19C7C4 801EE774 3C04801F */  lui        $a0, %hi(func_801ECAD8_ovl9)
/* 19C7C8 801EE778 8E101B50 */  lw         $s0, %lo(D_800E1B50)($s0)
/* 19C7CC 801EE77C 2484CAD8 */  addiu      $a0, $a0, %lo(func_801ECAD8_ovl9)
/* 19C7D0 801EE780 0C068354 */  jal        func_801A0D50_ovl7
.L801EE784_ovl16:
/* 19C7D4 801EE784 2631FFF5 */   addiu     $s1, $s1, -0xB
.L801EE788_ovl10:
/* 19C7D8 801EE788 8EB90000 */  lw         $t9, 0x0($s5)
/* 19C7DC 801EE78C 3C18800B */  lui        $t8, %hi(func_800B6FD8)
/* 19C7E0 801EE790 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 19C7E4 801EE794 8F280000 */  lw         $t0, 0x0($t9)
/* 19C7E8 801EE798 27186FD8 */  addiu      $t8, $t8, %lo(func_800B6FD8)
/* 19C7EC 801EE79C 00084880 */  sll        $t1, $t0, 2
/* 19C7F0 801EE7A0 00290821 */  addu       $at, $at, $t1
/* 19C7F4 801EE7A4 0C02CCFD */  jal        func_800B33F4
/* 19C7F8 801EE7A8 AC38EF90 */   sw        $t8, %lo(D_800DEF90)($at)
/* 19C7FC 801EE7AC 8EA30000 */  lw         $v1, 0x0($s5)
/* 19C800 801EE7B0 3C01800F */  lui        $at, %hi(D_800E8920)
/* 19C804 801EE7B4 3C0E800E */  lui        $t6, %hi(D_800E77A0)
/* 19C808 801EE7B8 8C6A0000 */  lw         $t2, 0x0($v1)
/* 19C80C 801EE7BC 000A5880 */  sll        $t3, $t2, 2
/* 19C810 801EE7C0 002B0821 */  addu       $at, $at, $t3
/* 19C814 801EE7C4 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 19C818 801EE7C8 8C6C0000 */  lw         $t4, 0x0($v1)
/* 19C81C 801EE7CC 000C6840 */  sll        $t5, $t4, 1
/* 19C820 801EE7D0 01CD7021 */  addu       $t6, $t6, $t5
/* 19C824 801EE7D4 95CE77A0 */  lhu        $t6, %lo(D_800E77A0)($t6)
/* 19C828 801EE7D8 25CFFFBE */  addiu      $t7, $t6, -0x42
/* 19C82C 801EE7DC 2DE10029 */  sltiu      $at, $t7, 0x29
/* 19C830 801EE7E0 10200025 */  beqz       $at, .L801EE878_ovl9
/* 19C834 801EE7E4 000F7880 */   sll       $t7, $t7, 2
/* 19C838 801EE7E8 3C018022 */  lui        $at, %hi(jtbl_8021D660_ovl9)
/* 19C83C 801EE7EC 002F0821 */  addu       $at, $at, $t7
/* 19C840 801EE7F0 8C2FD660 */  lw         $t7, %lo(jtbl_8021D660_ovl9)($at)
/* 19C844 801EE7F4 01E00008 */  jr         $t7
/* 19C848 801EE7F8 00000000 */   nop
/* 19C84C 801EE7FC 0011A080 */  sll        $s4, $s1, 2
/* 19C850 801EE800 3C198022 */  lui        $t9, %hi(D_8021C1E4_ovl9)
/* 19C854 801EE804 0334C821 */  addu       $t9, $t9, $s4
/* 19C858 801EE808 8F39C1E4 */  lw         $t9, %lo(D_8021C1E4_ovl9)($t9)
/* 19C85C 801EE80C 3C048022 */  lui        $a0, %hi(D_8021C208_ovl9)
/* 19C860 801EE810 00942021 */  addu       $a0, $a0, $s4
/* 19C864 801EE814 AE190088 */  sw         $t9, 0x88($s0)
/* 19C868 801EE818 0C02A5D8 */  jal        func_800A9760
/* 19C86C 801EE81C 8C84C208 */   lw        $a0, %lo(D_8021C208_ovl9)($a0)
.L801EE820_ovl10:
/* 19C870 801EE820 10000017 */  b          .L801EE880_ovl9
/* 19C874 801EE824 8E020088 */   lw        $v0, 0x88($s0)
/* 19C878 801EE828 0011A080 */  sll        $s4, $s1, 2
/* 19C87C 801EE82C 3C088022 */  lui        $t0, %hi(D_8021C1F0_ovl9)
/* 19C880 801EE830 01144021 */  addu       $t0, $t0, $s4
/* 19C884 801EE834 8D08C1F0 */  lw         $t0, %lo(D_8021C1F0_ovl9)($t0)
/* 19C888 801EE838 3C048022 */  lui        $a0, %hi(D_8021C214_ovl9)
/* 19C88C 801EE83C 00942021 */  addu       $a0, $a0, $s4
/* 19C890 801EE840 AE080088 */  sw         $t0, 0x88($s0)
.L801EE844_ovl10:
/* 19C894 801EE844 0C02A5D8 */  jal        func_800A9760
/* 19C898 801EE848 8C84C214 */   lw        $a0, %lo(D_8021C214_ovl9)($a0)
/* 19C89C 801EE84C 1000000C */  b          .L801EE880_ovl9
/* 19C8A0 801EE850 8E020088 */   lw        $v0, 0x88($s0)
/* 19C8A4 801EE854 0011A080 */  sll        $s4, $s1, 2
/* 19C8A8 801EE858 3C188022 */  lui        $t8, %hi(D_8021C1FC_ovl9)
.L801EE85C_ovl16:
/* 19C8AC 801EE85C 0314C021 */  addu       $t8, $t8, $s4
/* 19C8B0 801EE860 8F18C1FC */  lw         $t8, %lo(D_8021C1FC_ovl9)($t8)
/* 19C8B4 801EE864 3C048022 */  lui        $a0, %hi(D_8021C220_ovl9)
/* 19C8B8 801EE868 00942021 */  addu       $a0, $a0, $s4
/* 19C8BC 801EE86C AE180088 */  sw         $t8, 0x88($s0)
/* 19C8C0 801EE870 0C02A5D8 */  jal        func_800A9760
.L801EE874_ovl16:
/* 19C8C4 801EE874 8C84C220 */   lw        $a0, %lo(D_8021C220_ovl9)($a0)
.L801EE878_ovl9:
/* 19C8C8 801EE878 0011A080 */  sll        $s4, $s1, 2
/* 19C8CC 801EE87C 8E020088 */  lw         $v0, 0x88($s0)
.L801EE880_ovl9:
/* 19C8D0 801EE880 3C01800E */  lui        $at, %hi(D_800E0490)
/* 19C8D4 801EE884 8C490014 */  lw         $t1, 0x14($v0)
/* 19C8D8 801EE888 AE09008C */  sw         $t1, 0x8C($s0)
/* 19C8DC 801EE88C 8C4A0018 */  lw         $t2, 0x18($v0)
/* 19C8E0 801EE890 AE0A0094 */  sw         $t2, 0x94($s0)
/* 19C8E4 801EE894 8EAC0000 */  lw         $t4, 0x0($s5)
/* 19C8E8 801EE898 8C4B0010 */  lw         $t3, 0x10($v0)
/* 19C8EC 801EE89C 8D8D0000 */  lw         $t5, 0x0($t4)
/* 19C8F0 801EE8A0 000D7080 */  sll        $t6, $t5, 2
/* 19C8F4 801EE8A4 002E0821 */  addu       $at, $at, $t6
/* 19C8F8 801EE8A8 AC2B0490 */  sw         $t3, %lo(D_800E0490)($at)
/* 19C8FC 801EE8AC 8E0F0088 */  lw         $t7, 0x88($s0)
/* 19C900 801EE8B0 0C068AB7 */  jal        func_801A2ADC_ovl7
.L801EE8B4_ovl16:
/* 19C904 801EE8B4 8DE40010 */   lw        $a0, 0x10($t7)
/* 19C908 801EE8B8 8EA80000 */  lw         $t0, 0x0($s5)
/* 19C90C 801EE8BC 8E190088 */  lw         $t9, 0x88($s0)
/* 19C910 801EE8C0 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 19C914 801EE8C4 8D180000 */  lw         $t8, 0x0($t0)
/* 19C918 801EE8C8 C7240000 */  lwc1       $f4, 0x0($t9)
/* 19C91C 801EE8CC 00184880 */  sll        $t1, $t8, 2
/* 19C920 801EE8D0 00290821 */  addu       $at, $at, $t1
/* 19C924 801EE8D4 E4247B20 */  swc1       $f4, %lo(D_800E7B20)($at)
/* 19C928 801EE8D8 3C018022 */  lui        $at, %hi(D_8021C244_ovl9)
/* 19C92C 801EE8DC 00340821 */  addu       $at, $at, $s4
/* 19C930 801EE8E0 C426C244 */  lwc1       $f6, %lo(D_8021C244_ovl9)($at)
/* 19C934 801EE8E4 8E0A0080 */  lw         $t2, 0x80($s0)
/* 19C938 801EE8E8 3C01C420 */  lui        $at, (0xC4200000 >> 16)
/* 19C93C 801EE8EC 44814000 */  mtc1       $at, $f8
/* 19C940 801EE8F0 E5460010 */  swc1       $f6, 0x10($t2)
/* 19C944 801EE8F4 8E0C0080 */  lw         $t4, 0x80($s0)
/* 19C948 801EE8F8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 19C94C 801EE8FC E5880018 */  swc1       $f8, 0x18($t4)
/* 19C950 801EE900 8EA30000 */  lw         $v1, 0x0($s5)
/* 19C954 801EE904 8C620000 */  lw         $v0, 0x0($v1)
/* 19C958 801EE908 00021080 */  sll        $v0, $v0, 2
/* 19C95C 801EE90C 00220821 */  addu       $at, $at, $v0
/* 19C960 801EE910 C42A2790 */  lwc1       $f10, %lo(gEntitiesNextPosYArray)($at)
/* 19C964 801EE914 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 19C968 801EE918 00220821 */  addu       $at, $at, $v0
/* 19C96C 801EE91C E42AA8A0 */  swc1       $f10, %lo(D_800EA8A0)($at)
/* 19C970 801EE920 8C6D0000 */  lw         $t5, 0x0($v1)
/* 19C974 801EE924 3C01C220 */  lui        $at, (0xC2200000 >> 16)
/* 19C978 801EE928 44818000 */  mtc1       $at, $f16
/* 19C97C 801EE92C 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 19C980 801EE930 000D5880 */  sll        $t3, $t5, 2
/* 19C984 801EE934 002B0821 */  addu       $at, $at, $t3
/* 19C988 801EE938 E430AA60 */  swc1       $f16, %lo(D_800EAA60)($at)
/* 19C98C 801EE93C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 19C990 801EE940 3C018022 */  lui        $at, %hi(D_8021D704_ovl9)
/* 19C994 801EE944 C432D704 */  lwc1       $f18, %lo(D_8021D704_ovl9)($at)
/* 19C998 801EE948 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 19C99C 801EE94C 000E7880 */  sll        $t7, $t6, 2
/* 19C9A0 801EE950 002F0821 */  addu       $at, $at, $t7
/* 19C9A4 801EE954 0C066E46 */  jal        func_8019B918_ovl7
/* 19C9A8 801EE958 E43264D0 */   swc1      $f18, %lo(D_800E64D0)($at)
.L801EE95C_ovl16:
/* 19C9AC 801EE95C 14400033 */  bnez       $v0, .L801EEA2C_ovl9
/* 19C9B0 801EE960 3C13800F */   lui       $s3, %hi(D_800EA6E0)
/* 19C9B4 801EE964 3C12800F */  lui        $s2, %hi(D_800E98E0)
/* 19C9B8 801EE968 3C11800E */  lui        $s1, %hi(D_800E6BD0)
/* 19C9BC 801EE96C 3C10800E */  lui        $s0, %hi(D_800E5F90)
glabel func_801EE970_ovl16
/* 19C9C0 801EE970 26105F90 */  addiu      $s0, $s0, %lo(D_800E5F90)
/* 19C9C4 801EE974 26316BD0 */  addiu      $s1, $s1, %lo(D_800E6BD0)
/* 19C9C8 801EE978 265298E0 */  addiu      $s2, $s2, %lo(D_800E98E0)
/* 19C9CC 801EE97C 2673A6E0 */  addiu      $s3, $s3, %lo(D_800EA6E0)
/* 19C9D0 801EE980 8EA30000 */  lw         $v1, 0x0($s5)
.L801EE984_ovl9:
/* 19C9D4 801EE984 3C06800F */  lui        $a2, %hi(D_800EAA60)
/* 19C9D8 801EE988 8C620000 */  lw         $v0, 0x0($v1)
/* 19C9DC 801EE98C 00021080 */  sll        $v0, $v0, 2
glabel func_801EE990_ovl10
/* 19C9E0 801EE990 0202C821 */  addu       $t9, $s0, $v0
/* 19C9E4 801EE994 8F280000 */  lw         $t0, 0x0($t9)
/* 19C9E8 801EE998 0242C021 */  addu       $t8, $s2, $v0
/* 19C9EC 801EE99C AF080000 */  sw         $t0, 0x0($t8)
/* 19C9F0 801EE9A0 8C620000 */  lw         $v0, 0x0($v1)
/* 19C9F4 801EE9A4 00021080 */  sll        $v0, $v0, 2
/* 19C9F8 801EE9A8 02224821 */  addu       $t1, $s1, $v0
/* 19C9FC 801EE9AC C5240000 */  lwc1       $f4, 0x0($t1)
/* 19CA00 801EE9B0 02625021 */  addu       $t2, $s3, $v0
/* 19CA04 801EE9B4 E5440000 */  swc1       $f4, 0x0($t2)
/* 19CA08 801EE9B8 8C620000 */  lw         $v0, 0x0($v1)
/* 19CA0C 801EE9BC 00021080 */  sll        $v0, $v0, 2
/* 19CA10 801EE9C0 00C23021 */  addu       $a2, $a2, $v0
/* 19CA14 801EE9C4 8CC6AA60 */  lw         $a2, %lo(D_800EAA60)($a2)
/* 19CA18 801EE9C8 02022021 */  addu       $a0, $s0, $v0
/* 19CA1C 801EE9CC 0C03E65D */  jal        func_800F9974
/* 19CA20 801EE9D0 02222821 */   addu      $a1, $s1, $v0
/* 19CA24 801EE9D4 1040000F */  beqz       $v0, .L801EEA14_ovl9
/* 19CA28 801EE9D8 00000000 */   nop
/* 19CA2C 801EE9DC 8EA30000 */  lw         $v1, 0x0($s5)
/* 19CA30 801EE9E0 8C620000 */  lw         $v0, 0x0($v1)
/* 19CA34 801EE9E4 00021080 */  sll        $v0, $v0, 2
/* 19CA38 801EE9E8 02426021 */  addu       $t4, $s2, $v0
/* 19CA3C 801EE9EC 8D8D0000 */  lw         $t5, 0x0($t4)
/* 19CA40 801EE9F0 02025821 */  addu       $t3, $s0, $v0
/* 19CA44 801EE9F4 AD6D0000 */  sw         $t5, 0x0($t3)
/* 19CA48 801EE9F8 8C620000 */  lw         $v0, 0x0($v1)
/* 19CA4C 801EE9FC 00021080 */  sll        $v0, $v0, 2
/* 19CA50 801EEA00 02627021 */  addu       $t6, $s3, $v0
/* 19CA54 801EEA04 C5C60000 */  lwc1       $f6, 0x0($t6)
/* 19CA58 801EEA08 02227821 */  addu       $t7, $s1, $v0
/* 19CA5C 801EEA0C 10000007 */  b          .L801EEA2C_ovl9
/* 19CA60 801EEA10 E5E60000 */   swc1      $f6, 0x0($t7)
.L801EEA14_ovl9:
/* 19CA64 801EEA14 0C03E39B */  jal        func_800F8E6C
/* 19CA68 801EEA18 8FA40048 */   lw        $a0, 0x48($sp)
/* 19CA6C 801EEA1C 0C066E46 */  jal        func_8019B918_ovl7
/* 19CA70 801EEA20 00000000 */   nop
/* 19CA74 801EEA24 5040FFD7 */  beql       $v0, $zero, .L801EE984_ovl9
.L801EEA28_ovl10:
/* 19CA78 801EEA28 8EA30000 */   lw        $v1, 0x0($s5)
.L801EEA2C_ovl9:
/* 19CA7C 801EEA2C 3C10800E */  lui        $s0, %hi(D_800E5F90)
/* 19CA80 801EEA30 3C11800E */  lui        $s1, %hi(D_800E6BD0)
/* 19CA84 801EEA34 3C12800F */  lui        $s2, %hi(D_800E98E0)
/* 19CA88 801EEA38 3C13800F */  lui        $s3, %hi(D_800EA6E0)
/* 19CA8C 801EEA3C 2673A6E0 */  addiu      $s3, $s3, %lo(D_800EA6E0)
/* 19CA90 801EEA40 265298E0 */  addiu      $s2, $s2, %lo(D_800E98E0)
/* 19CA94 801EEA44 26316BD0 */  addiu      $s1, $s1, %lo(D_800E6BD0)
/* 19CA98 801EEA48 0C02CCFD */  jal        func_800B33F4
/* 19CA9C 801EEA4C 26105F90 */   addiu     $s0, $s0, %lo(D_800E5F90)
/* 19CAA0 801EEA50 8EA30000 */  lw         $v1, 0x0($s5)
/* 19CAA4 801EEA54 3C0C8022 */  lui        $t4, %hi(D_8021C250_ovl9)
.L801EEA58_ovl16:
/* 19CAA8 801EEA58 258CC250 */  addiu      $t4, $t4, %lo(D_8021C250_ovl9)
/* 19CAAC 801EEA5C 8C620000 */  lw         $v0, 0x0($v1)
/* 19CAB0 801EEA60 028C3821 */  addu       $a3, $s4, $t4
/* 19CAB4 801EEA64 00021080 */  sll        $v0, $v0, 2
/* 19CAB8 801EEA68 0202C821 */  addu       $t9, $s0, $v0
/* 19CABC 801EEA6C 8F280000 */  lw         $t0, 0x0($t9)
.L801EEA70_ovl10:
/* 19CAC0 801EEA70 0242C021 */  addu       $t8, $s2, $v0
/* 19CAC4 801EEA74 AF080000 */  sw         $t0, 0x0($t8)
/* 19CAC8 801EEA78 8C620000 */  lw         $v0, 0x0($v1)
/* 19CACC 801EEA7C 00021080 */  sll        $v0, $v0, 2
.L801EEA80_ovl10:
/* 19CAD0 801EEA80 02224821 */  addu       $t1, $s1, $v0
/* 19CAD4 801EEA84 C5280000 */  lwc1       $f8, 0x0($t1)
/* 19CAD8 801EEA88 02625021 */  addu       $t2, $s3, $v0
/* 19CADC 801EEA8C E5480000 */  swc1       $f8, 0x0($t2)
/* 19CAE0 801EEA90 8C620000 */  lw         $v0, 0x0($v1)
/* 19CAE4 801EEA94 AFA70034 */  sw         $a3, 0x34($sp)
/* 19CAE8 801EEA98 8CE60000 */  lw         $a2, 0x0($a3)
/* 19CAEC 801EEA9C 00021080 */  sll        $v0, $v0, 2
/* 19CAF0 801EEAA0 02022021 */  addu       $a0, $s0, $v0
/* 19CAF4 801EEAA4 0C03E65D */  jal        func_800F9974
.L801EEAA8_ovl16:
/* 19CAF8 801EEAA8 02222821 */   addu      $a1, $s1, $v0
/* 19CAFC 801EEAAC 1040000E */  beqz       $v0, .L801EEAE8_ovl9
/* 19CB00 801EEAB0 8FA70034 */   lw        $a3, 0x34($sp)
/* 19CB04 801EEAB4 8EA30000 */  lw         $v1, 0x0($s5)
.L801EEAB8_ovl16:
/* 19CB08 801EEAB8 8C620000 */  lw         $v0, 0x0($v1)
/* 19CB0C 801EEABC 00021080 */  sll        $v0, $v0, 2
/* 19CB10 801EEAC0 02426821 */  addu       $t5, $s2, $v0
/* 19CB14 801EEAC4 8DAB0000 */  lw         $t3, 0x0($t5)
/* 19CB18 801EEAC8 02027021 */  addu       $t6, $s0, $v0
/* 19CB1C 801EEACC ADCB0000 */  sw         $t3, 0x0($t6)
/* 19CB20 801EEAD0 8C620000 */  lw         $v0, 0x0($v1)
/* 19CB24 801EEAD4 00021080 */  sll        $v0, $v0, 2
/* 19CB28 801EEAD8 02627821 */  addu       $t7, $s3, $v0
/* 19CB2C 801EEADC C5EA0000 */  lwc1       $f10, 0x0($t7)
/* 19CB30 801EEAE0 0222C821 */  addu       $t9, $s1, $v0
/* 19CB34 801EEAE4 E72A0000 */  swc1       $f10, 0x0($t9)
.L801EEAE8_ovl9:
/* 19CB38 801EEAE8 3C088022 */  lui        $t0, %hi(D_8021C250_ovl9)
/* 19CB3C 801EEAEC 2508C250 */  addiu      $t0, $t0, %lo(D_8021C250_ovl9)
/* 19CB40 801EEAF0 10E80010 */  beq        $a3, $t0, .L801EEB34_ovl9
/* 19CB44 801EEAF4 00000000 */   nop
/* 19CB48 801EEAF8 0C006291 */  jal        random_soft_s32_range
/* 19CB4C 801EEAFC 24040015 */   addiu     $a0, $zero, 0x15
/* 19CB50 801EEB00 44828000 */  mtc1       $v0, $f16
/* 19CB54 801EEB04 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 19CB58 801EEB08 44810000 */  mtc1       $at, $f0
/* 19CB5C 801EEB0C 468084A0 */  cvt.s.w    $f18, $f16
/* 19CB60 801EEB10 8EA30000 */  lw         $v1, 0x0($s5)
/* 19CB64 801EEB14 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 19CB68 801EEB18 8C780000 */  lw         $t8, 0x0($v1)
/* 19CB6C 801EEB1C 46009101 */  sub.s      $f4, $f18, $f0
.L801EEB20_ovl10:
/* 19CB70 801EEB20 00184880 */  sll        $t1, $t8, 2
/* 19CB74 801EEB24 00290821 */  addu       $at, $at, $t1
/* 19CB78 801EEB28 46002182 */  mul.s      $f6, $f4, $f0
/* 19CB7C 801EEB2C 10000011 */  b          .L801EEB74_ovl9
glabel func_801EEB30_ovl10
/* 19CB80 801EEB30 E4262790 */   swc1      $f6, %lo(gEntitiesNextPosYArray)($at)
.L801EEB34_ovl9:
/* 19CB84 801EEB34 0C006291 */  jal        random_soft_s32_range
/* 19CB88 801EEB38 24040011 */   addiu     $a0, $zero, 0x11
/* 19CB8C 801EEB3C 44824000 */  mtc1       $v0, $f8
/* 19CB90 801EEB40 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 19CB94 801EEB44 44810000 */  mtc1       $at, $f0
/* 19CB98 801EEB48 468042A0 */  cvt.s.w    $f10, $f8
/* 19CB9C 801EEB4C 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 19CBA0 801EEB50 44818000 */  mtc1       $at, $f16
/* 19CBA4 801EEB54 8EA30000 */  lw         $v1, 0x0($s5)
/* 19CBA8 801EEB58 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 19CBAC 801EEB5C 46105481 */  sub.s      $f18, $f10, $f16
/* 19CBB0 801EEB60 8C6A0000 */  lw         $t2, 0x0($v1)
/* 19CBB4 801EEB64 46009102 */  mul.s      $f4, $f18, $f0
/* 19CBB8 801EEB68 000A6080 */  sll        $t4, $t2, 2
.L801EEB6C_ovl10:
/* 19CBBC 801EEB6C 002C0821 */  addu       $at, $at, $t4
/* 19CBC0 801EEB70 E4242790 */  swc1       $f4, %lo(gEntitiesNextPosYArray)($at)
.L801EEB74_ovl9:
/* 19CBC4 801EEB74 8C620000 */  lw         $v0, 0x0($v1)
/* 19CBC8 801EEB78 3C0D800E */  lui        $t5, %hi(gEntitiesNextPosYArray)
/* 19CBCC 801EEB7C 25AD2790 */  addiu      $t5, $t5, %lo(gEntitiesNextPosYArray)
/* 19CBD0 801EEB80 00021080 */  sll        $v0, $v0, 2
/* 19CBD4 801EEB84 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 19CBD8 801EEB88 00220821 */  addu       $at, $at, $v0
/* 19CBDC 801EEB8C 004D2021 */  addu       $a0, $v0, $t5
/* 19CBE0 801EEB90 C4860000 */  lwc1       $f6, 0x0($a0)
/* 19CBE4 801EEB94 C428A8A0 */  lwc1       $f8, %lo(D_800EA8A0)($at)
/* 19CBE8 801EEB98 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 19CBEC 801EEB9C 240F0001 */  addiu      $t7, $zero, 0x1
/* 19CBF0 801EEBA0 46083280 */  add.s      $f10, $f6, $f8
/* 19CBF4 801EEBA4 3C0A800F */  lui        $t2, %hi(D_800E8AE0)
/* 19CBF8 801EEBA8 254A8AE0 */  addiu      $t2, $t2, %lo(D_800E8AE0)
/* 19CBFC 801EEBAC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 19CC00 801EEBB0 E48A0000 */  swc1       $f10, 0x0($a0)
/* 19CC04 801EEBB4 8C6B0000 */  lw         $t3, 0x0($v1)
/* 19CC08 801EEBB8 8FB00014 */  lw         $s0, 0x14($sp)
/* 19CC0C 801EEBBC 8FB10018 */  lw         $s1, 0x18($sp)
/* 19CC10 801EEBC0 000B7080 */  sll        $t6, $t3, 2
/* 19CC14 801EEBC4 002E0821 */  addu       $at, $at, $t6
.L801EEBC8_ovl16:
/* 19CC18 801EEBC8 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 19CC1C 801EEBCC 8C790000 */  lw         $t9, 0x0($v1)
.L801EEBD0_ovl10:
/* 19CC20 801EEBD0 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 19CC24 801EEBD4 240B0002 */  addiu      $t3, $zero, 0x2
/* 19CC28 801EEBD8 00194080 */  sll        $t0, $t9, 2
/* 19CC2C 801EEBDC 00280821 */  addu       $at, $at, $t0
/* 19CC30 801EEBE0 AC2F9FE0 */  sw         $t7, %lo(D_800E9FE0)($at)
/* 19CC34 801EEBE4 8C780000 */  lw         $t8, 0x0($v1)
/* 19CC38 801EEBE8 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 19CC3C 801EEBEC 8FB2001C */  lw         $s2, 0x1C($sp)
/* 19CC40 801EEBF0 00184880 */  sll        $t1, $t8, 2
/* 19CC44 801EEBF4 012A2821 */  addu       $a1, $t1, $t2
/* 19CC48 801EEBF8 8CAC0000 */  lw         $t4, 0x0($a1)
/* 19CC4C 801EEBFC 8FB30020 */  lw         $s3, 0x20($sp)
/* 19CC50 801EEC00 8FB40024 */  lw         $s4, 0x24($sp)
/* 19CC54 801EEC04 358D0001 */  ori        $t5, $t4, 0x1
/* 19CC58 801EEC08 ACAD0000 */  sw         $t5, 0x0($a1)
/* 19CC5C 801EEC0C 8C6E0000 */  lw         $t6, 0x0($v1)
.L801EEC10_ovl10:
/* 19CC60 801EEC10 8FB50028 */  lw         $s5, 0x28($sp)
/* 19CC64 801EEC14 27BD0048 */  addiu      $sp, $sp, 0x48
/* 19CC68 801EEC18 000EC880 */  sll        $t9, $t6, 2
/* 19CC6C 801EEC1C 00390821 */  addu       $at, $at, $t9
/* 19CC70 801EEC20 03E00008 */  jr         $ra
/* 19CC74 801EEC24 AC2BDC50 */   sw        $t3, %lo(gEntityVtableIndexArray)($at)
