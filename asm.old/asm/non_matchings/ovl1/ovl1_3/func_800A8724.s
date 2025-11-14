glabel func_800A8724
/* 050974 800A8724 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 050978 800A8728 AFBF0034 */  sw    $ra, 0x34($sp)
/* 05097C 800A872C AFB6002C */  sw    $s6, 0x2c($sp)
/* 050980 800A8730 AFB50028 */  sw    $s5, 0x28($sp)
/* 050984 800A8734 0080A825 */  move  $s5, $a0
/* 050988 800A8738 AFB70030 */  sw    $s7, 0x30($sp)
/* 05098C 800A873C AFB40024 */  sw    $s4, 0x24($sp)
/* 050990 800A8740 AFB30020 */  sw    $s3, 0x20($sp)
/* 050994 800A8744 AFB2001C */  sw    $s2, 0x1c($sp)
/* 050998 800A8748 AFB10018 */  sw    $s1, 0x18($sp)
/* 05099C 800A874C AFB00014 */  sw    $s0, 0x14($sp)
/* 0509A0 800A8750 0C02A0B0 */  jal   func_800A82C0
/* 0509A4 800A8754 0000B025 */   move  $s6, $zero
/* 0509A8 800A8758 3C06800D */  lui   $a2, %hi(D_800D00E4) # $a2, 0x800d
/* 0509AC 800A875C 3C05800D */  lui   $a1, %hi(D_800D0124) # $a1, 0x800d
/* 0509B0 800A8760 3C08800D */  lui   $t0, %hi(D_800D0144) # $t0, 0x800d
/* 0509B4 800A8764 25080144 */  addiu $t0, %lo(D_800D0144) # addiu $t0, $t0, 0x144
/* 0509B8 800A8768 24A50124 */  addiu $a1, %lo(D_800D0124) # addiu $a1, $a1, 0x124
/* 0509BC 800A876C 24C600E4 */  addiu $a2, %lo(D_800D00E4) # addiu $a2, $a2, 0xe4
/* 0509C0 800A8770 00003825 */  move  $a3, $zero
.L800A8774_ovl1:
/* 0509C4 800A8774 8CCE0000 */  lw    $t6, ($a2)
/* 0509C8 800A8778 3C0F800D */  lui   $t7, %hi(D_800D00C4) # $t7, 0x800d
/* 0509CC 800A877C 25EF00C4 */  addiu $t7, %lo(D_800D00C4) # addiu $t7, $t7, 0xc4
/* 0509D0 800A8780 11C0000D */  beqz  $t6, .L800A87B8_ovl1
/* 0509D4 800A8784 00001825 */   move  $v1, $zero
/* 0509D8 800A8788 00EF2021 */  addu  $a0, $a3, $t7
/* 0509DC 800A878C 00001025 */  move  $v0, $zero
/* 0509E0 800A8790 8C980000 */  lw    $t8, ($a0)
.L800A8794_ovl1:
/* 0509E4 800A8794 24630001 */  addiu $v1, $v1, 1
/* 0509E8 800A8798 0302C821 */  addu  $t9, $t8, $v0
/* 0509EC 800A879C AF200000 */  sw    $zero, ($t9)
/* 0509F0 800A87A0 8CC90000 */  lw    $t1, ($a2)
/* 0509F4 800A87A4 24420004 */  addiu $v0, $v0, 4
/* 0509F8 800A87A8 0069082B */  sltu  $at, $v1, $t1
/* 0509FC 800A87AC 5420FFF9 */  bnezl $at, .L800A8794_ovl1
/* 050A00 800A87B0 8C980000 */   lw    $t8, ($a0)
/* 050A04 800A87B4 00001825 */  move  $v1, $zero
.L800A87B8_ovl1:
/* 050A08 800A87B8 8CAA0000 */  lw    $t2, ($a1)
/* 050A0C 800A87BC 24C60004 */  addiu $a2, $a2, 4
/* 050A10 800A87C0 00001025 */  move  $v0, $zero
/* 050A14 800A87C4 1140000C */  beqz  $t2, .L800A87F8_ovl1
/* 050A18 800A87C8 3C0B800D */   lui   $t3, %hi(D_800D0104) # $t3, 0x800d
/* 050A1C 800A87CC 256B0104 */  addiu $t3, %lo(D_800D0104) # addiu $t3, $t3, 0x104
/* 050A20 800A87D0 00EB2021 */  addu  $a0, $a3, $t3
/* 050A24 800A87D4 8C8C0000 */  lw    $t4, ($a0)
.L800A87D8_ovl1:
/* 050A28 800A87D8 24630001 */  addiu $v1, $v1, 1
/* 050A2C 800A87DC 01826821 */  addu  $t5, $t4, $v0
/* 050A30 800A87E0 ADA00000 */  sw    $zero, ($t5)
/* 050A34 800A87E4 8CAE0000 */  lw    $t6, ($a1)
/* 050A38 800A87E8 24420004 */  addiu $v0, $v0, 4
/* 050A3C 800A87EC 006E082B */  sltu  $at, $v1, $t6
/* 050A40 800A87F0 5420FFF9 */  bnezl $at, .L800A87D8_ovl1
/* 050A44 800A87F4 8C8C0000 */   lw    $t4, ($a0)
.L800A87F8_ovl1:
/* 050A48 800A87F8 24A50004 */  addiu $a1, $a1, 4
/* 050A4C 800A87FC 00A8082B */  sltu  $at, $a1, $t0
/* 050A50 800A8800 1420FFDC */  bnez  $at, .L800A8774_ovl1
/* 050A54 800A8804 24E70004 */   addiu $a3, $a3, 4
/* 050A58 800A8808 3C18800C */  lui   $t8, %hi(D_800C4654) # $t8, 0x800c
/* 050A5C 800A880C 27184654 */  addiu $t8, %lo(D_800C4654) # addiu $t8, $t8, 0x4654
/* 050A60 800A8810 3C10800D */  lui   $s0, %hi(D_800D7BD0) # $s0, 0x800d
/* 050A64 800A8814 3C04800D */  lui   $a0, %hi(D_800D7BB8) # $a0, 0x800d
/* 050A68 800A8818 00157900 */  sll   $t7, $s5, 4
/* 050A6C 800A881C 3C13800D */  lui   $s3, %hi(D_800D7BC0) # $s3, 0x800d
/* 050A70 800A8820 3C14800D */  lui   $s4, %hi(D_800D7BE0) # $s4, 0x800d
/* 050A74 800A8824 26947BE0 */  addiu $s4, %lo(D_800D7BE0) # addiu $s4, $s4, 0x7be0
/* 050A78 800A8828 26737BC0 */  addiu $s3, %lo(D_800D7BC0) # addiu $s3, $s3, 0x7bc0
/* 050A7C 800A882C 01F89021 */  addu  $s2, $t7, $t8
/* 050A80 800A8830 8C847BB8 */  lw    $a0, %lo(D_800D7BB8)($a0)
/* 050A84 800A8834 26107BD0 */  addiu $s0, %lo(D_800D7BD0) # addiu $s0, $s0, 0x7bd0
/* 050A88 800A8838 00008825 */  move  $s1, $zero
/* 050A8C 800A883C 2417FFFF */  li    $s7, -1
.L800A8840_ovl1:
/* 050A90 800A8840 8E460000 */  lw    $a2, ($s2)
/* 050A94 800A8844 AE000000 */  sw    $zero, ($s0)
/* 050A98 800A8848 0080A825 */  move  $s5, $a0
/* 050A9C 800A884C 50C00013 */  beql  $a2, $zero, .L800A889C_ovl1
/* 050AA0 800A8850 8E190000 */   lw    $t9, ($s0)
/* 050AA4 800A8854 14D70009 */  bne   $a2, $s7, .L800A887C_ovl1
/* 050AA8 800A8858 02202825 */   move  $a1, $s1
/* 050AAC 800A885C 0C02A103 */  jal   func_800A840C
/* 050AB0 800A8860 02202825 */   move  $a1, $s1
/* 050AB4 800A8864 14400002 */  bnez  $v0, .L800A8870_ovl1
/* 050AB8 800A8868 AE020000 */   sw    $v0, ($s0)
/* 050ABC 800A886C 26D60001 */  addiu $s6, $s6, 1
.L800A8870_ovl1:
/* 050AC0 800A8870 3C04800D */  lui   $a0, %hi(D_800D7BB8) # $a0, 0x800d
/* 050AC4 800A8874 10000008 */  b     .L800A8898_ovl1
/* 050AC8 800A8878 8C847BB8 */   lw    $a0, %lo(D_800D7BB8)($a0)
.L800A887C_ovl1:
/* 050ACC 800A887C 0C02A103 */  jal   func_800A840C
/* 050AD0 800A8880 00C02025 */   move  $a0, $a2
/* 050AD4 800A8884 14400002 */  bnez  $v0, .L800A8890_ovl1
/* 050AD8 800A8888 AE020000 */   sw    $v0, ($s0)
/* 050ADC 800A888C 26D60001 */  addiu $s6, $s6, 1
.L800A8890_ovl1:
/* 050AE0 800A8890 3C04800D */  lui   $a0, %hi(D_800D7BB8) # $a0, 0x800d
/* 050AE4 800A8894 8C847BB8 */  lw    $a0, %lo(D_800D7BB8)($a0)
.L800A8898_ovl1:
/* 050AE8 800A8898 8E190000 */  lw    $t9, ($s0)
.L800A889C_ovl1:
/* 050AEC 800A889C 26310001 */  addiu $s1, $s1, 1
/* 050AF0 800A88A0 2E210004 */  sltiu $at, $s1, 4
/* 050AF4 800A88A4 02A44823 */  subu  $t1, $s5, $a0
/* 050AF8 800A88A8 26100004 */  addiu $s0, $s0, 4
/* 050AFC 800A88AC 26520004 */  addiu $s2, $s2, 4
/* 050B00 800A88B0 26730004 */  addiu $s3, $s3, 4
/* 050B04 800A88B4 26940004 */  addiu $s4, $s4, 4
/* 050B08 800A88B8 AE89FFFC */  sw    $t1, -4($s4)
/* 050B0C 800A88BC 1420FFE0 */  bnez  $at, .L800A8840_ovl1
/* 050B10 800A88C0 AE79FFFC */   sw    $t9, -4($s3)
/* 050B14 800A88C4 3C01800D */  lui   $at, %hi(D_800D6E78) # $at, 0x800d
/* 050B18 800A88C8 AC206E78 */  sw    $zero, %lo(D_800D6E78)($at)
/* 050B1C 800A88CC 3C01800D */  lui   $at, %hi(D_800D6E68) # $at, 0x800d
/* 050B20 800A88D0 AC206E68 */  sw    $zero, %lo(D_800D6E68)($at)
/* 050B24 800A88D4 3C01800D */  lui   $at, %hi(D_800D6E7C) # $at, 0x800d
/* 050B28 800A88D8 AC206E7C */  sw    $zero, %lo(D_800D6E7C)($at)
/* 050B2C 800A88DC 3C01800D */  lui   $at, %hi(D_800D6E6C) # $at, 0x800d
/* 050B30 800A88E0 AC206E6C */  sw    $zero, %lo(D_800D6E6C)($at)
/* 050B34 800A88E4 3C01800D */  lui   $at, %hi(D_800D6E80) # $at, 0x800d
/* 050B38 800A88E8 AC206E80 */  sw    $zero, %lo(D_800D6E80)($at)
/* 050B3C 800A88EC 3C01800D */  lui   $at, %hi(D_800D6E70) # $at, 0x800d
/* 050B40 800A88F0 AC206E70 */  sw    $zero, %lo(D_800D6E70)($at)
/* 050B44 800A88F4 8FBF0034 */  lw    $ra, 0x34($sp)
/* 050B48 800A88F8 3C01800D */  lui   $at, %hi(D_800D6E84) # $at, 0x800d
/* 050B4C 800A88FC AC206E84 */  sw    $zero, %lo(D_800D6E84)($at)
/* 050B50 800A8900 02C01025 */  move  $v0, $s6
/* 050B54 800A8904 3C01800D */  lui   $at, %hi(D_800D6E74) # $at, 0x800d
/* 050B58 800A8908 8FB6002C */  lw    $s6, 0x2c($sp)
/* 050B5C 800A890C 8FB00014 */  lw    $s0, 0x14($sp)
/* 050B60 800A8910 8FB10018 */  lw    $s1, 0x18($sp)
/* 050B64 800A8914 8FB2001C */  lw    $s2, 0x1c($sp)
/* 050B68 800A8918 8FB30020 */  lw    $s3, 0x20($sp)
/* 050B6C 800A891C 8FB40024 */  lw    $s4, 0x24($sp)
/* 050B70 800A8920 8FB50028 */  lw    $s5, 0x28($sp)
/* 050B74 800A8924 8FB70030 */  lw    $s7, 0x30($sp)
/* 050B78 800A8928 AC206E74 */  sw    $zero, %lo(D_800D6E74)($at)
/* 050B7C 800A892C 03E00008 */  jr    $ra
/* 050B80 800A8930 27BD0038 */   addiu $sp, $sp, 0x38
.type func_800A8724, @function
.size func_800A8724, . - func_800A8724
