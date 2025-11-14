glabel func_800B87E0
/* 060A30 800B87E0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 060A34 800B87E4 AFB60030 */  sw    $s6, 0x30($sp)
/* 060A38 800B87E8 AFB40028 */  sw    $s4, 0x28($sp)
/* 060A3C 800B87EC AFB30024 */  sw    $s3, 0x24($sp)
/* 060A40 800B87F0 AFB20020 */  sw    $s2, 0x20($sp)
/* 060A44 800B87F4 AFB5002C */  sw    $s5, 0x2c($sp)
/* 060A48 800B87F8 AFB00018 */  sw    $s0, 0x18($sp)
/* 060A4C 800B87FC 3C12800F */  lui   $s2, %hi(D_800ECA08) # $s2, 0x800f
/* 060A50 800B8800 3C13800F */  lui   $s3, %hi(gSaveBuffer1) # $s3, 0x800f
/* 060A54 800B8804 3C14800F */  lui   $s4, %hi(D_800ECBC0) # $s4, 0x800f
/* 060A58 800B8808 3C16800D */  lui   $s6, %hi(D_800D5150) # $s6, 0x800d
/* 060A5C 800B880C AFBF0034 */  sw    $ra, 0x34($sp)
/* 060A60 800B8810 AFB1001C */  sw    $s1, 0x1c($sp)
/* 060A64 800B8814 26D65150 */  addiu $s6, %lo(D_800D5150) # addiu $s6, $s6, 0x5150
/* 060A68 800B8818 2694CBC0 */  addiu $s4, %lo(D_800ECBC0) # addiu $s4, $s4, -0x3440
/* 060A6C 800B881C 2673C9F8 */  addiu $s3, %lo(gSaveBuffer1) # addiu $s3, $s3, -0x3608
/* 060A70 800B8820 2652CA08 */  addiu $s2, %lo(D_800ECA08) # addiu $s2, $s2, -0x35f8
/* 060A74 800B8824 00008025 */  move  $s0, $zero
/* 060A78 800B8828 24150003 */  li    $s5, 3
.L800B882C_ovl1:
/* 060A7C 800B882C 0C02E3CD */  jal   calc_save_file_checksum
/* 060A80 800B8830 02002025 */   move  $a0, $s0
/* 060A84 800B8834 8E6E0064 */  lw    $t6, 0x64($s3)
/* 060A88 800B8838 00107840 */  sll   $t7, $s0, 1
/* 060A8C 800B883C 02CF8821 */  addu  $s1, $s6, $t7
/* 060A90 800B8840 144E0009 */  bne   $v0, $t6, .L800B8868_ovl1
/* 060A94 800B8844 02402825 */   move  $a1, $s2
/* 060A98 800B8848 0C02E4B6 */  jal   verify_save
/* 060A9C 800B884C 02002025 */   move  $a0, $s0
/* 060AA0 800B8850 0C02E3F2 */  jal   calc_file_checksum
/* 060AA4 800B8854 02002025 */   move  $a0, $s0
/* 060AA8 800B8858 0C02E247 */  jal   func_800B891C
/* 060AAC 800B885C 02002025 */   move  $a0, $s0
/* 060AB0 800B8860 10000012 */  b     .L800B88AC_ovl1
/* 060AB4 800B8864 02404825 */   move  $t1, $s2
.L800B8868_ovl1:
/* 060AB8 800B8868 92240007 */  lbu   $a0, 7($s1)
/* 060ABC 800B886C 0C001340 */  jal   func_80004D00_ovl1
/* 060AC0 800B8870 24060058 */   li    $a2, 88
/* 060AC4 800B8874 0C02E3CD */  jal   calc_save_file_checksum
/* 060AC8 800B8878 02002025 */   move  $a0, $s0
/* 060ACC 800B887C 8E780064 */  lw    $t8, 0x64($s3)
/* 060AD0 800B8880 02402825 */  move  $a1, $s2
/* 060AD4 800B8884 24060058 */  li    $a2, 88
/* 060AD8 800B8888 14580005 */  bne   $v0, $t8, .L800B88A0_ovl1
/* 060ADC 800B888C 00000000 */   nop   
/* 060AE0 800B8890 0C00134D */  jal   func_80004D34_ovl1
/* 060AE4 800B8894 92240001 */   lbu   $a0, 1($s1)
/* 060AE8 800B8898 10000004 */  b     .L800B88AC_ovl1
/* 060AEC 800B889C 02404825 */   move  $t1, $s2
.L800B88A0_ovl1:
/* 060AF0 800B88A0 0C02E380 */  jal   func_800B8E00
/* 060AF4 800B88A4 02002025 */   move  $a0, $s0
/* 060AF8 800B88A8 02404825 */  move  $t1, $s2
.L800B88AC_ovl1:
/* 060AFC 800B88AC 02805025 */  move  $t2, $s4
/* 060B00 800B88B0 264B0054 */  addiu $t3, $s2, 0x54
.L800B88B4_ovl1:
/* 060B04 800B88B4 8D280000 */  lw    $t0, ($t1)
/* 060B08 800B88B8 2529000C */  addiu $t1, $t1, 0xc
/* 060B0C 800B88BC 254A000C */  addiu $t2, $t2, 0xc
/* 060B10 800B88C0 AD48FFF4 */  sw    $t0, -0xc($t2)
/* 060B14 800B88C4 8D39FFF8 */  lw    $t9, -8($t1)
/* 060B18 800B88C8 AD59FFF8 */  sw    $t9, -8($t2)
/* 060B1C 800B88CC 8D28FFFC */  lw    $t0, -4($t1)
/* 060B20 800B88D0 152BFFF8 */  bne   $t1, $t3, .L800B88B4_ovl1
/* 060B24 800B88D4 AD48FFFC */   sw    $t0, -4($t2)
/* 060B28 800B88D8 8D280000 */  lw    $t0, ($t1)
/* 060B2C 800B88DC 26100001 */  addiu $s0, $s0, 1
/* 060B30 800B88E0 26730058 */  addiu $s3, $s3, 0x58
/* 060B34 800B88E4 26520058 */  addiu $s2, $s2, 0x58
/* 060B38 800B88E8 26940058 */  addiu $s4, $s4, 0x58
/* 060B3C 800B88EC 1615FFCF */  bne   $s0, $s5, .L800B882C_ovl1
/* 060B40 800B88F0 AD480000 */   sw    $t0, ($t2)
/* 060B44 800B88F4 8FBF0034 */  lw    $ra, 0x34($sp)
/* 060B48 800B88F8 8FB00018 */  lw    $s0, 0x18($sp)
/* 060B4C 800B88FC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 060B50 800B8900 8FB20020 */  lw    $s2, 0x20($sp)
/* 060B54 800B8904 8FB30024 */  lw    $s3, 0x24($sp)
/* 060B58 800B8908 8FB40028 */  lw    $s4, 0x28($sp)
/* 060B5C 800B890C 8FB5002C */  lw    $s5, 0x2c($sp)
/* 060B60 800B8910 8FB60030 */  lw    $s6, 0x30($sp)
/* 060B64 800B8914 03E00008 */  jr    $ra
/* 060B68 800B8918 27BD0038 */   addiu $sp, $sp, 0x38
.type func_800B87E0, @function
.size func_800B87E0, . - func_800B87E0
