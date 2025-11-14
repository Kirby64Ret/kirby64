glabel func_80158DB4_ovl3
/* 0B97F4 80158DB4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B97F8 80158DB8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0B97FC 80158DBC 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0B9800 80158DC0 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0B9804 80158DC4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B9808 80158DC8 AFA40020 */  sw    $a0, 0x20($sp)
/* 0B980C 80158DCC 0C0473D6 */  jal   func_8011CF58
/* 0B9810 80158DD0 AE000030 */   sw    $zero, 0x30($s0)
/* 0B9814 80158DD4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0B9818 80158DD8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0B981C 80158DDC 3C01800E */  lui   $at, 0x800e
/* 0B9820 80158DE0 240E004B */  li    $t6, 75
/* 0B9824 80158DE4 8C4F0000 */  lw    $t7, ($v0)
/* 0B9828 80158DE8 24190001 */  li    $t9, 1
/* 0B982C 80158DEC 8FA40020 */  lw    $a0, 0x20($sp)
/* 0B9830 80158DF0 000FC080 */  sll   $t8, $t7, 2
/* 0B9834 80158DF4 00380821 */  addu  $at, $at, $t8
/* 0B9838 80158DF8 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 0B983C 80158DFC 8C480000 */  lw    $t0, ($v0)
/* 0B9840 80158E00 3C01800F */  lui   $at, 0x800f
/* 0B9844 80158E04 00084880 */  sll   $t1, $t0, 2
/* 0B9848 80158E08 00290821 */  addu  $at, $at, $t1
/* 0B984C 80158E0C 0C055F17 */  jal   func_80157C5C_ovl3
/* 0B9850 80158E10 AC398920 */   sw    $t9, -0x76e0($at)
/* 0B9854 80158E14 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0B9858 80158E18 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0B985C 80158E1C 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0B9860 80158E20 44810000 */  mtc1  $at, $f0
/* 0B9864 80158E24 8C4A0000 */  lw    $t2, ($v0)
/* 0B9868 80158E28 3C01800E */  lui   $at, 0x800e
/* 0B986C 80158E2C 3C040002 */  lui   $a0, (0x00020141 >> 16) # lui $a0, 2
/* 0B9870 80158E30 000A5880 */  sll   $t3, $t2, 2
/* 0B9874 80158E34 002B0821 */  addu  $at, $at, $t3
/* 0B9878 80158E38 E42064D0 */  swc1  $f0, 0x64d0($at)
/* 0B987C 80158E3C 8C4C0000 */  lw    $t4, ($v0)
/* 0B9880 80158E40 3C013F20 */  li    $at, 0x3F200000 # 0.625000
/* 0B9884 80158E44 44812000 */  mtc1  $at, $f4
/* 0B9888 80158E48 3C01800E */  lui   $at, 0x800e
/* 0B988C 80158E4C 000C6880 */  sll   $t5, $t4, 2
/* 0B9890 80158E50 002D0821 */  addu  $at, $at, $t5
/* 0B9894 80158E54 E4246690 */  swc1  $f4, 0x6690($at)
/* 0B9898 80158E58 8C4F0000 */  lw    $t7, ($v0)
/* 0B989C 80158E5C 3C01800E */  lui   $at, 0x800e
/* 0B98A0 80158E60 3C050002 */  lui   $a1, (0x00020142 >> 16) # lui $a1, 2
/* 0B98A4 80158E64 000F7080 */  sll   $t6, $t7, 2
/* 0B98A8 80158E68 002E0821 */  addu  $at, $at, $t6
/* 0B98AC 80158E6C 34A50142 */  ori   $a1, (0x00020142 & 0xFFFF) # ori $a1, $a1, 0x142
/* 0B98B0 80158E70 34840141 */  ori   $a0, (0x00020141 & 0xFFFF) # ori $a0, $a0, 0x141
/* 0B98B4 80158E74 00003025 */  move  $a2, $zero
/* 0B98B8 80158E78 0C048C3A */  jal   func_801230E8
/* 0B98BC 80158E7C E4206850 */   swc1  $f0, 0x6850($at)
/* 0B98C0 80158E80 8E180030 */  lw    $t8, 0x30($s0)
/* 0B98C4 80158E84 57000007 */  bnezl $t8, .L80158EA4_ovl3
/* 0B98C8 80158E88 3C100002 */   lui   $s0, %hi(D_00020030) # $s0, 2
.L80158E8C_ovl3:
/* 0B98CC 80158E8C 0C002DAF */  jal   finish_current_thread
/* 0B98D0 80158E90 24040001 */   li    $a0, 1
/* 0B98D4 80158E94 8E080030 */  lw    $t0, %lo(D_00020030)($s0)
/* 0B98D8 80158E98 1100FFFC */  beqz  $t0, .L80158E8C_ovl3
/* 0B98DC 80158E9C 00000000 */   nop   
/* 0B98E0 80158EA0 3C100002 */  lui   $s0, (0x0002009B >> 16) # lui $s0, 2
.L80158EA4_ovl3:
/* 0B98E4 80158EA4 3610009B */  ori   $s0, (0x0002009B & 0xFFFF) # ori $s0, $s0, 0x9b
/* 0B98E8 80158EA8 3C050002 */  lui   $a1, (0x00020007 >> 16) # lui $a1, 2
/* 0B98EC 80158EAC 34A50007 */  ori   $a1, (0x00020007 & 0xFFFF) # ori $a1, $a1, 7
/* 0B98F0 80158EB0 02002025 */  move  $a0, $s0
/* 0B98F4 80158EB4 0C02A9E3 */  jal   func_800AA78C
/* 0B98F8 80158EB8 3C064140 */   lui   $a2, 0x4140
/* 0B98FC 80158EBC 3C050002 */  lui   $a1, (0x0002009C >> 16) # lui $a1, 2
/* 0B9900 80158EC0 34A5009C */  ori   $a1, (0x0002009C & 0xFFFF) # ori $a1, $a1, 0x9c
/* 0B9904 80158EC4 02002025 */  move  $a0, $s0
/* 0B9908 80158EC8 0C048C3A */  jal   func_801230E8
/* 0B990C 80158ECC 00003025 */   move  $a2, $zero
/* 0B9910 80158ED0 0C02BE85 */  jal   func_800AFA14
/* 0B9914 80158ED4 00000000 */   nop   
/* 0B9918 80158ED8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B991C 80158EDC 8FB00018 */  lw    $s0, 0x18($sp)
/* 0B9920 80158EE0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0B9924 80158EE4 03E00008 */  jr    $ra
/* 0B9928 80158EE8 00000000 */   nop   
.type func_80158DB4_ovl3, @function
.size func_80158DB4_ovl3, . - func_80158DB4_ovl3
