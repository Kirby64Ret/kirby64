glabel func_8021F6D8_ovl19
/* 23FDE8 8021F6D8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 23FDEC 8021F6DC AFBF0024 */  sw         $ra, 0x24($sp)
/* 23FDF0 8021F6E0 AFB20020 */  sw         $s2, 0x20($sp)
/* 23FDF4 8021F6E4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 23FDF8 8021F6E8 AFB00018 */  sw         $s0, 0x18($sp)
/* 23FDFC 8021F6EC 0C087861 */  jal        func_8021E184_ovl19
.L8021F6F0_ovl18:
/* 23FE00 8021F6F0 AFA40028 */   sw        $a0, 0x28($sp)
/* 23FE04 8021F6F4 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 23FE08 8021F6F8 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
.L8021F6FC_ovl18:
/* 23FE0C 8021F6FC 8E420000 */  lw         $v0, 0x0($s2)
/* 23FE10 8021F700 3C018023 */  lui        $at, %hi(D_8022F75C_ovl19)
/* 23FE14 8021F704 C420F75C */  lwc1       $f0, %lo(D_8022F75C_ovl19)($at)
/* 23FE18 8021F708 8C4E0000 */  lw         $t6, 0x0($v0)
glabel func_8021F70C_ovl18
/* 23FE1C 8021F70C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 23FE20 8021F710 3C040002 */  lui        $a0, (0x20070 >> 16)
/* 23FE24 8021F714 000E7880 */  sll        $t7, $t6, 2
/* 23FE28 8021F718 002F0821 */  addu       $at, $at, $t7
/* 23FE2C 8021F71C AC20F150 */  sw         $zero, %lo(D_800DF150)($at)
/* 23FE30 8021F720 8C580000 */  lw         $t8, 0x0($v0)
/* 23FE34 8021F724 3C018023 */  lui        $at, %hi(D_8022F760_ovl19)
/* 23FE38 8021F728 C424F760 */  lwc1       $f4, %lo(D_8022F760_ovl19)($at)
/* 23FE3C 8021F72C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 23FE40 8021F730 0018C880 */  sll        $t9, $t8, 2
/* 23FE44 8021F734 00390821 */  addu       $at, $at, $t9
/* 23FE48 8021F738 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
/* 23FE4C 8021F73C 8C480000 */  lw         $t0, 0x0($v0)
/* 23FE50 8021F740 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 23FE54 8021F744 3C050001 */  lui        $a1, (0x1869F >> 16)
/* 23FE58 8021F748 00084880 */  sll        $t1, $t0, 2
/* 23FE5C 8021F74C 00290821 */  addu       $at, $at, $t1
/* 23FE60 8021F750 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 23FE64 8021F754 8C4A0000 */  lw         $t2, 0x0($v0)
/* 23FE68 8021F758 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 23FE6C 8021F75C 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* 23FE70 8021F760 000A5880 */  sll        $t3, $t2, 2
/* 23FE74 8021F764 002B0821 */  addu       $at, $at, $t3
/* 23FE78 8021F768 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 23FE7C 8021F76C 8C4C0000 */  lw         $t4, 0x0($v0)
/* 23FE80 8021F770 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 23FE84 8021F774 34840070 */  ori        $a0, $a0, (0x20070 & 0xFFFF)
/* 23FE88 8021F778 000C6880 */  sll        $t5, $t4, 2
/* 23FE8C 8021F77C 002D0821 */  addu       $at, $at, $t5
/* 23FE90 8021F780 24060010 */  addiu      $a2, $zero, 0x10
/* 23FE94 8021F784 0C02A619 */  jal        func_800A9864
/* 23FE98 8021F788 E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* 23FE9C 8021F78C 3C0E800D */  lui        $t6, %hi(D_800D6E64)
.L8021F790_ovl18:
/* 23FEA0 8021F790 8DCE6E64 */  lw         $t6, %lo(D_800D6E64)($t6)
/* 23FEA4 8021F794 55C00033 */  bnel       $t6, $zero, .L8021F864_ovl19
/* 23FEA8 8021F798 8E490000 */   lw        $t1, 0x0($s2)
/* 23FEAC 8021F79C 8E580000 */  lw         $t8, 0x0($s2)
/* 23FEB0 8021F7A0 3C09800E */  lui        $t1, %hi(D_800DFBD0)
/* 23FEB4 8021F7A4 240F0001 */  addiu      $t7, $zero, 0x1
/* 23FEB8 8021F7A8 8F190000 */  lw         $t9, 0x0($t8)
/* 23FEBC 8021F7AC 3C040002 */  lui        $a0, (0x203DC >> 16)
/* 23FEC0 8021F7B0 3C050002 */  lui        $a1, (0x203DD >> 16)
/* 23FEC4 8021F7B4 00194080 */  sll        $t0, $t9, 2
/* 23FEC8 8021F7B8 01284821 */  addu       $t1, $t1, $t0
/* 23FECC 8021F7BC 8D29FBD0 */  lw         $t1, %lo(D_800DFBD0)($t1)
/* 23FED0 8021F7C0 34A503DD */  ori        $a1, $a1, (0x203DD & 0xFFFF)
/* 23FED4 8021F7C4 348403DC */  ori        $a0, $a0, (0x203DC & 0xFFFF)
/* 23FED8 8021F7C8 8D2A000C */  lw         $t2, 0xC($t1)
/* 23FEDC 8021F7CC 00003025 */  or         $a2, $zero, $zero
/* 23FEE0 8021F7D0 0C048C3A */  jal        func_801230E8
/* 23FEE4 8021F7D4 A14F0054 */   sb        $t7, 0x54($t2)
/* 23FEE8 8021F7D8 8E4B0000 */  lw         $t3, 0x0($s2)
/* 23FEEC 8021F7DC 3C11800E */  lui        $s1, %hi(D_800E0D50)
/* 23FEF0 8021F7E0 26310D50 */  addiu      $s1, $s1, %lo(D_800E0D50)
/* 23FEF4 8021F7E4 8D6C0000 */  lw         $t4, 0x0($t3)
.L8021F7E8_ovl18:
/* 23FEF8 8021F7E8 3C10800F */  lui        $s0, %hi(D_800E98E0)
/* 23FEFC 8021F7EC 261098E0 */  addiu      $s0, $s0, %lo(D_800E98E0)
/* 23FF00 8021F7F0 000C6880 */  sll        $t5, $t4, 2
/* 23FF04 8021F7F4 022D7021 */  addu       $t6, $s1, $t5
/* 23FF08 8021F7F8 8DD80000 */  lw         $t8, 0x0($t6)
/* 23FF0C 8021F7FC 0018C880 */  sll        $t9, $t8, 2
/* 23FF10 8021F800 02194021 */  addu       $t0, $s0, $t9
/* 23FF14 8021F804 8D090000 */  lw         $t1, 0x0($t0)
/* 23FF18 8021F808 5520000E */  bnel       $t1, $zero, .L8021F844_ovl19
/* 23FF1C 8021F80C 3C040002 */   lui       $a0, (0x203DA >> 16)
.L8021F810_ovl19:
/* 23FF20 8021F810 0C002DAF */  jal        finish_current_thread
/* 23FF24 8021F814 24040001 */   addiu     $a0, $zero, 0x1
/* 23FF28 8021F818 8E4F0000 */  lw         $t7, 0x0($s2)
/* 23FF2C 8021F81C 8DEA0000 */  lw         $t2, 0x0($t7)
/* 23FF30 8021F820 000A5880 */  sll        $t3, $t2, 2
/* 23FF34 8021F824 022B6021 */  addu       $t4, $s1, $t3
/* 23FF38 8021F828 8D8D0000 */  lw         $t5, 0x0($t4)
/* 23FF3C 8021F82C 000D7080 */  sll        $t6, $t5, 2
/* 23FF40 8021F830 020EC021 */  addu       $t8, $s0, $t6
/* 23FF44 8021F834 8F190000 */  lw         $t9, 0x0($t8)
/* 23FF48 8021F838 1320FFF5 */  beqz       $t9, .L8021F810_ovl19
/* 23FF4C 8021F83C 00000000 */   nop
.L8021F840_ovl18:
/* 23FF50 8021F840 3C040002 */  lui        $a0, (0x203DA >> 16)
.L8021F844_ovl19:
/* 23FF54 8021F844 3C050002 */  lui        $a1, (0x203DB >> 16)
/* 23FF58 8021F848 34A503DB */  ori        $a1, $a1, (0x203DB & 0xFFFF)
/* 23FF5C 8021F84C 348403DA */  ori        $a0, $a0, (0x203DA & 0xFFFF)
/* 23FF60 8021F850 0C048C3A */  jal        func_801230E8
/* 23FF64 8021F854 00003025 */   or        $a2, $zero, $zero
/* 23FF68 8021F858 1000000A */  b          .L8021F884_ovl19
/* 23FF6C 8021F85C 00000000 */   nop
/* 23FF70 8021F860 8E490000 */  lw         $t1, 0x0($s2)
.L8021F864_ovl19:
/* 23FF74 8021F864 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
.L8021F868_ovl18:
/* 23FF78 8021F868 24080002 */  addiu      $t0, $zero, 0x2
/* 23FF7C 8021F86C 8D2F0000 */  lw         $t7, 0x0($t1)
/* 23FF80 8021F870 000F5080 */  sll        $t2, $t7, 2
/* 23FF84 8021F874 016A5821 */  addu       $t3, $t3, $t2
/* 23FF88 8021F878 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
/* 23FF8C 8021F87C 8D6C000C */  lw         $t4, 0xC($t3)
/* 23FF90 8021F880 A1880054 */  sb         $t0, 0x54($t4)
.L8021F884_ovl19:
/* 23FF94 8021F884 0C02BE85 */  jal        func_800AFA14
/* 23FF98 8021F888 00000000 */   nop
/* 23FF9C 8021F88C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 23FFA0 8021F890 8FB00018 */  lw         $s0, 0x18($sp)
/* 23FFA4 8021F894 8FB1001C */  lw         $s1, 0x1C($sp)
.L8021F898_ovl18:
/* 23FFA8 8021F898 8FB20020 */  lw         $s2, 0x20($sp)
/* 23FFAC 8021F89C 03E00008 */  jr         $ra
/* 23FFB0 8021F8A0 27BD0028 */   addiu     $sp, $sp, 0x28
