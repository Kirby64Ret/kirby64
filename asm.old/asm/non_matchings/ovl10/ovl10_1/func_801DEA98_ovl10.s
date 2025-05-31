glabel func_801DEA98_ovl10
/* 1CF808 801DEA98 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 1CF80C 801DEA9C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1CF810 801DEAA0 0C0775D8 */  jal   func_801DD760_ovl10
/* 1CF814 801DEAA4 AFA40040 */   sw    $a0, 0x40($sp)
/* 1CF818 801DEAA8 0C06835D */  jal   func_801A0D74_ovl10
/* 1CF81C 801DEAAC 8FA40040 */   lw    $a0, 0x40($sp)
/* 1CF820 801DEAB0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 1CF824 801DEAB4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 1CF828 801DEAB8 3C08800E */ lui $t0, %hi(D_800E1B50)
/* 1CF82C 801DEABC 3C0E801F */  lui   $t6, %hi(D_801F3A18_ovl10) # $t6, 0x801f
/* 1CF830 801DEAC0 8DF80000 */  lw    $t8, ($t7)
/* 1CF834 801DEAC4 25CE3A18 */  addiu $t6, %lo(D_801F3A18_ovl10) # addiu $t6, $t6, 0x3a18
/* 1CF838 801DEAC8 00002025 */  move  $a0, $zero
/* 1CF83C 801DEACC 0018C880 */  sll   $t9, $t8, 2
/* 1CF840 801DEAD0 01194021 */  addu  $t0, $t0, $t9
/* 1CF844 801DEAD4 8D081B50 */ lw $t0, %lo(D_800E1B50)($t0)
/* 1CF848 801DEAD8 0C078A32 */  jal   func_801E28C8_ovl10
/* 1CF84C 801DEADC AD0E008C */   sw    $t6, 0x8c($t0)
/* 1CF850 801DEAE0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1CF854 801DEAE4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1CF858 801DEAE8 3C09800F */ lui $t1, %hi(D_800E83E0)
/* 1CF85C 801DEAEC 24010001 */  li    $at, 1
/* 1CF860 801DEAF0 8C620000 */  lw    $v0, ($v1)
/* 1CF864 801DEAF4 240A0009 */  li    $t2, 9
/* 1CF868 801DEAF8 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1CF86C 801DEAFC 00021080 */  sll   $v0, $v0, 2
/* 1CF870 801DEB00 01224821 */  addu  $t1, $t1, $v0
/* 1CF874 801DEB04 8D2983E0 */ lw $t1, %lo(D_800E83E0)($t1)
/* 1CF878 801DEB08 1521000E */  bne   $t1, $at, .L801DEB44_ovl10
/* 1CF87C 801DEB0C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1CF880 801DEB10 00220821 */  addu  $at, $at, $v0
/* 1CF884 801DEB14 AC2ADC50 */ sw $t2, %lo(gEntityVtableIndexArray)($at)
/* 1CF888 801DEB18 8C6B0000 */  lw    $t3, ($v1)
/* 1CF88C 801DEB1C 3C05801E */  lui   $a1, %hi(D_801DBD38) # $a1, 0x801e
/* 1CF890 801DEB20 24A5BD38 */  addiu $a1, %lo(D_801DBD38) # addiu $a1, $a1, -0x42c8
/* 1CF894 801DEB24 000B6080 */  sll   $t4, $t3, 2
/* 1CF898 801DEB28 008C2021 */  addu  $a0, $a0, $t4
/* 1CF89C 801DEB2C 0C02C7B2 */  jal   assign_new_process_entry
/* 1CF8A0 801DEB30 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1CF8A4 801DEB34 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 1CF8A8 801DEB38 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 1CF8AC 801DEB3C 8DA20000 */  lw    $v0, ($t5)
/* 1CF8B0 801DEB40 00021080 */  sll   $v0, $v0, 2
.L801DEB44_ovl10:
/* 1CF8B4 801DEB44 3C18800E */ lui $t8, %hi(D_800E1B50)
/* 1CF8B8 801DEB48 0302C021 */  addu  $t8, $t8, $v0
/* 1CF8BC 801DEB4C 8F181B50 */ lw $t8, %lo(D_800E1B50)($t8)
/* 1CF8C0 801DEB50 3C0F801F */  lui   $t7, %hi(D_801F3B38_ovl10) # $t7, 0x801f
/* 1CF8C4 801DEB54 25EF3B38 */  addiu $t7, %lo(D_801F3B38_ovl10) # addiu $t7, $t7, 0x3b38
/* 1CF8C8 801DEB58 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1CF8CC 801DEB5C AF0F008C */  sw    $t7, 0x8c($t8)
/* 1CF8D0 801DEB60 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1CF8D4 801DEB64 3C09800E */ lui $t1, %hi(D_800DFBD0)
/* 1CF8D8 801DEB68 27A50024 */  addiu $a1, $sp, 0x24
/* 1CF8DC 801DEB6C 8F2E0000 */  lw    $t6, ($t9)
/* 1CF8E0 801DEB70 000E4080 */  sll   $t0, $t6, 2
/* 1CF8E4 801DEB74 01284821 */  addu  $t1, $t1, $t0
/* 1CF8E8 801DEB78 8D29FBD0 */ lw $t1, %lo(D_800DFBD0)($t1)
/* 1CF8EC 801DEB7C 0C078AF6 */  jal   func_801E2BD8_ovl10
/* 1CF8F0 801DEB80 8D240050 */   lw    $a0, 0x50($t1)
/* 1CF8F4 801DEB84 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1CF8F8 801DEB88 27BD0040 */  addiu $sp, $sp, 0x40
/* 1CF8FC 801DEB8C 03E00008 */  jr    $ra
/* 1CF900 801DEB90 00000000 */   nop   
.type func_801DEA98_ovl10, @function
.size func_801DEA98_ovl10, . - func_801DEA98_ovl10
