glabel func_801DD50C_ovl16
/* 2137BC 801DD50C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 2137C0 801DD510 AFB6002C */  sw    $s6, 0x2c($sp)
/* 2137C4 801DD514 3C168005 */  lui   $s6, %hi(D_8004A7C4) # $s6, 0x8005
/* 2137C8 801DD518 26D6A7C4 */  addiu $s6, %lo(D_8004A7C4) # addiu $s6, $s6, -0x583c
/* 2137CC 801DD51C 8ECE0000 */  lw    $t6, ($s6)
/* 2137D0 801DD520 AFBF0034 */  sw    $ra, 0x34($sp)
/* 2137D4 801DD524 AFB70030 */  sw    $s7, 0x30($sp)
/* 2137D8 801DD528 AFB50028 */  sw    $s5, 0x28($sp)
/* 2137DC 801DD52C AFB40024 */  sw    $s4, 0x24($sp)
/* 2137E0 801DD530 AFB30020 */  sw    $s3, 0x20($sp)
/* 2137E4 801DD534 AFB2001C */  sw    $s2, 0x1c($sp)
/* 2137E8 801DD538 AFB10018 */  sw    $s1, 0x18($sp)
/* 2137EC 801DD53C AFB00014 */  sw    $s0, 0x14($sp)
/* 2137F0 801DD540 AFA40038 */  sw    $a0, 0x38($sp)
/* 2137F4 801DD544 8DCF0000 */  lw    $t7, ($t6)
/* 2137F8 801DD548 3C13800E */  lui   $s3, %hi(D_800E0D50) # $s3, 0x800e
/* 2137FC 801DD54C 26730D50 */  addiu $s3, %lo(D_800E0D50) # addiu $s3, $s3, 0x0d50
/* 213800 801DD550 000FC080 */  sll   $t8, $t7, 2
/* 213804 801DD554 0278C821 */  addu  $t9, $s3, $t8
/* 213808 801DD558 0C066ED6 */  jal   func_8019BB58_ovl16
/* 21380C 801DD55C 8F300000 */   lw    $s0, ($t9)
/* 213810 801DD560 8EC20000 */  lw    $v0, ($s6)
/* 213814 801DD564 3C08800B */  lui   $t0, %hi(D_800B7560) # $t0, 0x800b
/* 213818 801DD568 3C01800E */ lui $at, %hi(D_800DEF90)
/* 21381C 801DD56C 8C490000 */  lw    $t1, ($v0)
/* 213820 801DD570 25087560 */  addiu $t0, %lo(D_800B7560) # addiu $t0, $t0, 0x7560
/* 213824 801DD574 3C0B801E */  lui   $t3, %hi(D_801DD9FC) # $t3, 0x801e
/* 213828 801DD578 00095080 */  sll   $t2, $t1, 2
/* 21382C 801DD57C 002A0821 */  addu  $at, $at, $t2
/* 213830 801DD580 AC28EF90 */ sw $t0, %lo(D_800DEF90)($at)
/* 213834 801DD584 8C4C0000 */  lw    $t4, ($v0)
/* 213838 801DD588 3C01800E */ lui $at, %hi(D_800DF150)
/* 21383C 801DD58C 256BD9FC */  addiu $t3, %lo(D_801DD9FC) # addiu $t3, $t3, -0x2604
/* 213840 801DD590 000C6880 */  sll   $t5, $t4, 2
/* 213844 801DD594 002D0821 */  addu  $at, $at, $t5
/* 213848 801DD598 AC2BF150 */ sw $t3, %lo(D_800DF150)($at)
/* 21384C 801DD59C 0C029D9E */  jal   play_sound
/* 213850 801DD5A0 240401A8 */   li    $a0, 424
/* 213854 801DD5A4 3C11800D */  lui   $s1, %hi(D_800D7098) # $s1, 0x800d
/* 213858 801DD5A8 26317098 */  addiu $s1, %lo(D_800D7098) # addiu $s1, $s1, 0x7098
/* 21385C 801DD5AC 8E2E0004 */  lw    $t6, 4($s1)
/* 213860 801DD5B0 2DC10007 */  sltiu $at, $t6, 7
/* 213864 801DD5B4 10200101 */  beqz  $at, .L801DD9BC_ovl16
/* 213868 801DD5B8 000E7080 */   sll   $t6, $t6, 2
/* 21386C 801DD5BC 3C01801F */ lui $at, %hi(D_801EFE2C_ovl16)
/* 213870 801DD5C0 002E0821 */  addu  $at, $at, $t6
/* 213874 801DD5C4 8C2EFE2C */ lw $t6, %lo(D_801EFE2C_ovl16)($at)
/* 213878 801DD5C8 01C00008 */  jr    $t6
/* 21387C 801DD5CC 00000000 */   nop   
/* 213880 801DD5D0 3C15800E */  lui   $s5, %hi(gEntityVtableIndexArray) # $s5, 0x800e
/* 213884 801DD5D4 3C11800E */  lui   $s1, %hi(D_800DFBD0) # $s1, 0x800e
/* 213888 801DD5D8 2631FBD0 */  addiu $s1, %lo(D_800DFBD0) # addiu $s1, $s1, -0x430
/* 21388C 801DD5DC 26B5DC50 */  addiu $s5, %lo(gEntityVtableIndexArray) # addiu $s5, $s5, -0x23b0
/* 213890 801DD5E0 00009025 */  move  $s2, $zero
/* 213894 801DD5E4 24170014 */  li    $s7, 20
/* 213898 801DD5E8 24140001 */  li    $s4, 1
/* 21389C 801DD5EC 8ECF0000 */  lw    $t7, ($s6)
.L801DD5F0_ovl16:
/* 2138A0 801DD5F0 8DF80000 */  lw    $t8, ($t7)
/* 2138A4 801DD5F4 0018C880 */  sll   $t9, $t8, 2
/* 2138A8 801DD5F8 02794821 */  addu  $t1, $s3, $t9
/* 2138AC 801DD5FC 8D300000 */  lw    $s0, ($t1)
/* 2138B0 801DD600 00108080 */  sll   $s0, $s0, 2
/* 2138B4 801DD604 02B04021 */  addu  $t0, $s5, $s0
/* 2138B8 801DD608 8D0A0000 */  lw    $t2, ($t0)
/* 2138BC 801DD60C 02306021 */  addu  $t4, $s1, $s0
/* 2138C0 801DD610 128A00EA */  beq   $s4, $t2, .L801DD9BC_ovl16
/* 2138C4 801DD614 00000000 */   nop   
/* 2138C8 801DD618 8D8B0000 */  lw    $t3, ($t4)
/* 2138CC 801DD61C 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 2138D0 801DD620 44812000 */  mtc1  $at, $f4
/* 2138D4 801DD624 8D6D0028 */  lw    $t5, 0x28($t3)
/* 2138D8 801DD628 02802025 */  move  $a0, $s4
/* 2138DC 801DD62C 8DAE0080 */  lw    $t6, 0x80($t5)
/* 2138E0 801DD630 0C002DAF */  jal   finish_current_thread
/* 2138E4 801DD634 E5C40088 */   swc1  $f4, 0x88($t6)
/* 2138E8 801DD638 8ECF0000 */  lw    $t7, ($s6)
/* 2138EC 801DD63C 8DF80000 */  lw    $t8, ($t7)
/* 2138F0 801DD640 0018C880 */  sll   $t9, $t8, 2
/* 2138F4 801DD644 02794821 */  addu  $t1, $s3, $t9
/* 2138F8 801DD648 8D300000 */  lw    $s0, ($t1)
/* 2138FC 801DD64C 00108080 */  sll   $s0, $s0, 2
/* 213900 801DD650 02B04021 */  addu  $t0, $s5, $s0
/* 213904 801DD654 8D0A0000 */  lw    $t2, ($t0)
/* 213908 801DD658 02306021 */  addu  $t4, $s1, $s0
/* 21390C 801DD65C 128A00D7 */  beq   $s4, $t2, .L801DD9BC_ovl16
/* 213910 801DD660 00000000 */   nop   
/* 213914 801DD664 8D8B0000 */  lw    $t3, ($t4)
/* 213918 801DD668 44803000 */  mtc1  $zero, $f6
/* 21391C 801DD66C 02802025 */  move  $a0, $s4
/* 213920 801DD670 8D6D0028 */  lw    $t5, 0x28($t3)
/* 213924 801DD674 8DAE0080 */  lw    $t6, 0x80($t5)
/* 213928 801DD678 0C002DAF */  jal   finish_current_thread
/* 21392C 801DD67C E5C60088 */   swc1  $f6, 0x88($t6)
/* 213930 801DD680 26520001 */  addiu $s2, $s2, 1
/* 213934 801DD684 5657FFDA */  bnel  $s2, $s7, .L801DD5F0_ovl16
/* 213938 801DD688 8ECF0000 */   lw    $t7, ($s6)
/* 21393C 801DD68C 100000CB */  b     .L801DD9BC_ovl16
/* 213940 801DD690 00000000 */   nop   
/* 213944 801DD694 3C15800E */  lui   $s5, %hi(gEntityVtableIndexArray) # $s5, 0x800e
/* 213948 801DD698 3C11800E */  lui   $s1, %hi(D_800DFBD0) # $s1, 0x800e
/* 21394C 801DD69C 2631FBD0 */  addiu $s1, %lo(D_800DFBD0) # addiu $s1, $s1, -0x430
/* 213950 801DD6A0 26B5DC50 */  addiu $s5, %lo(gEntityVtableIndexArray) # addiu $s5, $s5, -0x23b0
/* 213954 801DD6A4 00009025 */  move  $s2, $zero
/* 213958 801DD6A8 24170014 */  li    $s7, 20
/* 21395C 801DD6AC 24140001 */  li    $s4, 1
/* 213960 801DD6B0 8ECF0000 */  lw    $t7, ($s6)
.L801DD6B4_ovl16:
/* 213964 801DD6B4 8DF80000 */  lw    $t8, ($t7)
/* 213968 801DD6B8 0018C880 */  sll   $t9, $t8, 2
/* 21396C 801DD6BC 02794821 */  addu  $t1, $s3, $t9
/* 213970 801DD6C0 8D300000 */  lw    $s0, ($t1)
/* 213974 801DD6C4 00108080 */  sll   $s0, $s0, 2
/* 213978 801DD6C8 02B04021 */  addu  $t0, $s5, $s0
/* 21397C 801DD6CC 8D0A0000 */  lw    $t2, ($t0)
/* 213980 801DD6D0 02306021 */  addu  $t4, $s1, $s0
/* 213984 801DD6D4 128A00B9 */  beq   $s4, $t2, .L801DD9BC_ovl16
/* 213988 801DD6D8 00000000 */   nop   
/* 21398C 801DD6DC 8D8B0000 */  lw    $t3, ($t4)
/* 213990 801DD6E0 3C05801F */  lui   $a1, %hi(D_801EF6D4_ovl16) # $a1, 0x801f
/* 213994 801DD6E4 24A5F6D4 */  addiu $a1, %lo(D_801EF6D4_ovl16) # addiu $a1, $a1, -0x92c
/* 213998 801DD6E8 8D6D0008 */  lw    $t5, 8($t3)
/* 21399C 801DD6EC 0C077539 */  jal   func_801DD4E4_ovl16
/* 2139A0 801DD6F0 8DA40080 */   lw    $a0, 0x80($t5)
/* 2139A4 801DD6F4 8ECE0000 */  lw    $t6, ($s6)
/* 2139A8 801DD6F8 3C05801F */  lui   $a1, %hi(D_801EF6DC_ovl16) # $a1, 0x801f
/* 2139AC 801DD6FC 24A5F6DC */  addiu $a1, %lo(D_801EF6DC_ovl16) # addiu $a1, $a1, -0x924
/* 2139B0 801DD700 8DCF0000 */  lw    $t7, ($t6)
/* 2139B4 801DD704 000FC080 */  sll   $t8, $t7, 2
/* 2139B8 801DD708 0278C821 */  addu  $t9, $s3, $t8
/* 2139BC 801DD70C 8F290000 */  lw    $t1, ($t9)
/* 2139C0 801DD710 00094080 */  sll   $t0, $t1, 2
/* 2139C4 801DD714 02285021 */  addu  $t2, $s1, $t0
/* 2139C8 801DD718 8D4C0000 */  lw    $t4, ($t2)
/* 2139CC 801DD71C 8D8B0008 */  lw    $t3, 8($t4)
/* 2139D0 801DD720 8D6D0080 */  lw    $t5, 0x80($t3)
/* 2139D4 801DD724 0C077539 */  jal   func_801DD4E4_ovl16
/* 2139D8 801DD728 8DA40000 */   lw    $a0, ($t5)
/* 2139DC 801DD72C 8ECE0000 */  lw    $t6, ($s6)
/* 2139E0 801DD730 3C05801F */  lui   $a1, %hi(D_801EF6E4_ovl16) # $a1, 0x801f
/* 2139E4 801DD734 24A5F6E4 */  addiu $a1, %lo(D_801EF6E4_ovl16) # addiu $a1, $a1, -0x91c
/* 2139E8 801DD738 8DCF0000 */  lw    $t7, ($t6)
/* 2139EC 801DD73C 000FC080 */  sll   $t8, $t7, 2
/* 2139F0 801DD740 0278C821 */  addu  $t9, $s3, $t8
/* 2139F4 801DD744 8F290000 */  lw    $t1, ($t9)
/* 2139F8 801DD748 00094080 */  sll   $t0, $t1, 2
/* 2139FC 801DD74C 02285021 */  addu  $t2, $s1, $t0
/* 213A00 801DD750 8D4C0000 */  lw    $t4, ($t2)
/* 213A04 801DD754 8D8B000C */  lw    $t3, 0xc($t4)
/* 213A08 801DD758 0C077539 */  jal   func_801DD4E4_ovl16
/* 213A0C 801DD75C 8D640080 */   lw    $a0, 0x80($t3)
/* 213A10 801DD760 0C002DAF */  jal   finish_current_thread
/* 213A14 801DD764 02802025 */   move  $a0, $s4
/* 213A18 801DD768 8ECD0000 */  lw    $t5, ($s6)
/* 213A1C 801DD76C 8DAE0000 */  lw    $t6, ($t5)
/* 213A20 801DD770 000E7880 */  sll   $t7, $t6, 2
/* 213A24 801DD774 026FC021 */  addu  $t8, $s3, $t7
/* 213A28 801DD778 8F100000 */  lw    $s0, ($t8)
/* 213A2C 801DD77C 00108080 */  sll   $s0, $s0, 2
/* 213A30 801DD780 02B0C821 */  addu  $t9, $s5, $s0
/* 213A34 801DD784 8F290000 */  lw    $t1, ($t9)
/* 213A38 801DD788 02304021 */  addu  $t0, $s1, $s0
/* 213A3C 801DD78C 1289008B */  beq   $s4, $t1, .L801DD9BC_ovl16
/* 213A40 801DD790 00000000 */   nop   
/* 213A44 801DD794 8D0A0000 */  lw    $t2, ($t0)
/* 213A48 801DD798 3C05801F */  lui   $a1, %hi(D_801EF6D0_ovl16) # $a1, 0x801f
/* 213A4C 801DD79C 24A5F6D0 */  addiu $a1, %lo(D_801EF6D0_ovl16) # addiu $a1, $a1, -0x930
/* 213A50 801DD7A0 8D4C0008 */  lw    $t4, 8($t2)
/* 213A54 801DD7A4 0C077539 */  jal   func_801DD4E4_ovl16
/* 213A58 801DD7A8 8D840080 */   lw    $a0, 0x80($t4)
/* 213A5C 801DD7AC 8ECB0000 */  lw    $t3, ($s6)
/* 213A60 801DD7B0 3C05801F */  lui   $a1, %hi(D_801EF6D8_ovl16) # $a1, 0x801f
/* 213A64 801DD7B4 24A5F6D8 */  addiu $a1, %lo(D_801EF6D8_ovl16) # addiu $a1, $a1, -0x928
/* 213A68 801DD7B8 8D6D0000 */  lw    $t5, ($t3)
/* 213A6C 801DD7BC 000D7080 */  sll   $t6, $t5, 2
/* 213A70 801DD7C0 026E7821 */  addu  $t7, $s3, $t6
/* 213A74 801DD7C4 8DF80000 */  lw    $t8, ($t7)
/* 213A78 801DD7C8 0018C880 */  sll   $t9, $t8, 2
/* 213A7C 801DD7CC 02394821 */  addu  $t1, $s1, $t9
/* 213A80 801DD7D0 8D280000 */  lw    $t0, ($t1)
/* 213A84 801DD7D4 8D0A0008 */  lw    $t2, 8($t0)
/* 213A88 801DD7D8 8D4C0080 */  lw    $t4, 0x80($t2)
/* 213A8C 801DD7DC 0C077539 */  jal   func_801DD4E4_ovl16
/* 213A90 801DD7E0 8D840000 */   lw    $a0, ($t4)
/* 213A94 801DD7E4 8ECB0000 */  lw    $t3, ($s6)
/* 213A98 801DD7E8 3C05801F */  lui   $a1, %hi(D_801EF6E0_ovl16) # $a1, 0x801f
/* 213A9C 801DD7EC 24A5F6E0 */  addiu $a1, %lo(D_801EF6E0_ovl16) # addiu $a1, $a1, -0x920
/* 213AA0 801DD7F0 8D6D0000 */  lw    $t5, ($t3)
/* 213AA4 801DD7F4 000D7080 */  sll   $t6, $t5, 2
/* 213AA8 801DD7F8 026E7821 */  addu  $t7, $s3, $t6
/* 213AAC 801DD7FC 8DF80000 */  lw    $t8, ($t7)
/* 213AB0 801DD800 0018C880 */  sll   $t9, $t8, 2
/* 213AB4 801DD804 02394821 */  addu  $t1, $s1, $t9
/* 213AB8 801DD808 8D280000 */  lw    $t0, ($t1)
/* 213ABC 801DD80C 8D0A000C */  lw    $t2, 0xc($t0)
/* 213AC0 801DD810 0C077539 */  jal   func_801DD4E4_ovl16
/* 213AC4 801DD814 8D440080 */   lw    $a0, 0x80($t2)
/* 213AC8 801DD818 0C002DAF */  jal   finish_current_thread
/* 213ACC 801DD81C 02802025 */   move  $a0, $s4
/* 213AD0 801DD820 26520001 */  addiu $s2, $s2, 1
/* 213AD4 801DD824 5657FFA3 */  bnel  $s2, $s7, .L801DD6B4_ovl16
/* 213AD8 801DD828 8ECF0000 */   lw    $t7, ($s6)
/* 213ADC 801DD82C 10000063 */  b     .L801DD9BC_ovl16
/* 213AE0 801DD830 00000000 */   nop   
/* 213AE4 801DD834 8ECC0000 */  lw    $t4, ($s6)
/* 213AE8 801DD838 3C15800E */  lui   $s5, %hi(gEntityVtableIndexArray) # $s5, 0x800e
/* 213AEC 801DD83C 26B5DC50 */  addiu $s5, %lo(gEntityVtableIndexArray) # addiu $s5, $s5, -0x23b0
/* 213AF0 801DD840 8D8B0000 */  lw    $t3, ($t4)
/* 213AF4 801DD844 24140001 */  li    $s4, 1
/* 213AF8 801DD848 3C12800D */  lui   $s2, %hi(D_800D6B10) # $s2, 0x800d
/* 213AFC 801DD84C 000B6880 */  sll   $t5, $t3, 2
/* 213B00 801DD850 026D7021 */  addu  $t6, $s3, $t5
/* 213B04 801DD854 8DCF0000 */  lw    $t7, ($t6)
/* 213B08 801DD858 26526B10 */  addiu $s2, %lo(D_800D6B10) # addiu $s2, $s2, 0x6b10
/* 213B0C 801DD85C 02002825 */  move  $a1, $s0
/* 213B10 801DD860 000FC080 */  sll   $t8, $t7, 2
/* 213B14 801DD864 02B8C821 */  addu  $t9, $s5, $t8
/* 213B18 801DD868 8F290000 */  lw    $t1, ($t9)
/* 213B1C 801DD86C 12890053 */  beq   $s4, $t1, .L801DD9BC_ovl16
/* 213B20 801DD870 00000000 */   nop   
/* 213B24 801DD874 0C02BB74 */  jal   func_800AEDD0
/* 213B28 801DD878 C64C0000 */   lwc1  $f12, ($s2)
/* 213B2C 801DD87C 8E280004 */  lw    $t0, 4($s1)
/* 213B30 801DD880 3C04801F */ lui $a0, %hi(D_801EF70C_ovl16)
/* 213B34 801DD884 24050000 */  li    $a1, 0
/* 213B38 801DD888 00085080 */  sll   $t2, $t0, 2
/* 213B3C 801DD88C 008A2021 */  addu  $a0, $a0, $t2
/* 213B40 801DD890 8C84F70C */ lw $a0, %lo(D_801EF70C_ovl16)($a0)
/* 213B44 801DD894 0C02A80E */  jal   func_800AA038
/* 213B48 801DD898 02003025 */   move  $a2, $s0
/* 213B4C 801DD89C 0C002DAF */  jal   finish_current_thread
/* 213B50 801DD8A0 24040028 */   li    $a0, 40
/* 213B54 801DD8A4 8ECC0000 */  lw    $t4, ($s6)
/* 213B58 801DD8A8 8D8B0000 */  lw    $t3, ($t4)
/* 213B5C 801DD8AC 000B6880 */  sll   $t5, $t3, 2
/* 213B60 801DD8B0 026D7021 */  addu  $t6, $s3, $t5
/* 213B64 801DD8B4 8DCF0000 */  lw    $t7, ($t6)
/* 213B68 801DD8B8 000FC080 */  sll   $t8, $t7, 2
/* 213B6C 801DD8BC 02B8C821 */  addu  $t9, $s5, $t8
/* 213B70 801DD8C0 8F290000 */  lw    $t1, ($t9)
/* 213B74 801DD8C4 1289003D */  beq   $s4, $t1, .L801DD9BC_ovl16
/* 213B78 801DD8C8 00000000 */   nop   
/* 213B7C 801DD8CC 8E280004 */  lw    $t0, 4($s1)
/* 213B80 801DD8D0 3C01801F */ lui $at, %hi(D_801EF6F0_ovl16)
/* 213B84 801DD8D4 C64A0000 */  lwc1  $f10, ($s2)
/* 213B88 801DD8D8 00085080 */  sll   $t2, $t0, 2
/* 213B8C 801DD8DC 002A0821 */  addu  $at, $at, $t2
/* 213B90 801DD8E0 C428F6F0 */ lwc1 $f8, %lo(D_801EF6F0_ovl16)($at)
/* 213B94 801DD8E4 02002825 */  move  $a1, $s0
/* 213B98 801DD8E8 460A4302 */  mul.s $f12, $f8, $f10
/* 213B9C 801DD8EC 0C02BB74 */  jal   func_800AEDD0
/* 213BA0 801DD8F0 00000000 */   nop   
/* 213BA4 801DD8F4 10000031 */  b     .L801DD9BC_ovl16
/* 213BA8 801DD8F8 00000000 */   nop   
/* 213BAC 801DD8FC 3C15800E */  lui   $s5, %hi(gEntityVtableIndexArray) # $s5, 0x800e
/* 213BB0 801DD900 3C11800E */  lui   $s1, %hi(D_800DFBD0) # $s1, 0x800e
/* 213BB4 801DD904 2631FBD0 */  addiu $s1, %lo(D_800DFBD0) # addiu $s1, $s1, -0x430
/* 213BB8 801DD908 26B5DC50 */  addiu $s5, %lo(gEntityVtableIndexArray) # addiu $s5, $s5, -0x23b0
/* 213BBC 801DD90C 00009025 */  move  $s2, $zero
/* 213BC0 801DD910 24170014 */  li    $s7, 20
/* 213BC4 801DD914 24140001 */  li    $s4, 1
/* 213BC8 801DD918 8ECC0000 */  lw    $t4, ($s6)
.L801DD91C_ovl16:
/* 213BCC 801DD91C 8D8B0000 */  lw    $t3, ($t4)
/* 213BD0 801DD920 000B6880 */  sll   $t5, $t3, 2
/* 213BD4 801DD924 026D7021 */  addu  $t6, $s3, $t5
/* 213BD8 801DD928 8DD00000 */  lw    $s0, ($t6)
/* 213BDC 801DD92C 00108080 */  sll   $s0, $s0, 2
/* 213BE0 801DD930 02B07821 */  addu  $t7, $s5, $s0
/* 213BE4 801DD934 8DF80000 */  lw    $t8, ($t7)
/* 213BE8 801DD938 0230C821 */  addu  $t9, $s1, $s0
/* 213BEC 801DD93C 1298001F */  beq   $s4, $t8, .L801DD9BC_ovl16
/* 213BF0 801DD940 00000000 */   nop   
/* 213BF4 801DD944 8F290000 */  lw    $t1, ($t9)
/* 213BF8 801DD948 3C05801F */  lui   $a1, %hi(D_801EF6EC_ovl16) # $a1, 0x801f
/* 213BFC 801DD94C 24A5F6EC */  addiu $a1, %lo(D_801EF6EC_ovl16) # addiu $a1, $a1, -0x914
/* 213C00 801DD950 8D280008 */  lw    $t0, 8($t1)
/* 213C04 801DD954 0C077539 */  jal   func_801DD4E4_ovl16
/* 213C08 801DD958 8D040080 */   lw    $a0, 0x80($t0)
/* 213C0C 801DD95C 0C002DAF */  jal   finish_current_thread
/* 213C10 801DD960 02802025 */   move  $a0, $s4
/* 213C14 801DD964 8ECA0000 */  lw    $t2, ($s6)
/* 213C18 801DD968 8D4C0000 */  lw    $t4, ($t2)
/* 213C1C 801DD96C 000C5880 */  sll   $t3, $t4, 2
/* 213C20 801DD970 026B6821 */  addu  $t5, $s3, $t3
/* 213C24 801DD974 8DB00000 */  lw    $s0, ($t5)
/* 213C28 801DD978 00108080 */  sll   $s0, $s0, 2
/* 213C2C 801DD97C 02B07021 */  addu  $t6, $s5, $s0
/* 213C30 801DD980 8DCF0000 */  lw    $t7, ($t6)
/* 213C34 801DD984 0230C021 */  addu  $t8, $s1, $s0
/* 213C38 801DD988 128F000C */  beq   $s4, $t7, .L801DD9BC_ovl16
/* 213C3C 801DD98C 00000000 */   nop   
/* 213C40 801DD990 8F190000 */  lw    $t9, ($t8)
/* 213C44 801DD994 3C05801F */  lui   $a1, %hi(D_801EF6E8_ovl16) # $a1, 0x801f
/* 213C48 801DD998 24A5F6E8 */  addiu $a1, %lo(D_801EF6E8_ovl16) # addiu $a1, $a1, -0x918
/* 213C4C 801DD99C 8F290008 */  lw    $t1, 8($t9)
/* 213C50 801DD9A0 0C077539 */  jal   func_801DD4E4_ovl16
/* 213C54 801DD9A4 8D240080 */   lw    $a0, 0x80($t1)
/* 213C58 801DD9A8 0C002DAF */  jal   finish_current_thread
/* 213C5C 801DD9AC 02802025 */   move  $a0, $s4
/* 213C60 801DD9B0 26520001 */  addiu $s2, $s2, 1
/* 213C64 801DD9B4 5657FFD9 */  bnel  $s2, $s7, .L801DD91C_ovl16
/* 213C68 801DD9B8 8ECC0000 */   lw    $t4, ($s6)
.L801DD9BC_ovl16:
/* 213C6C 801DD9BC 0C002DAF */  jal   finish_current_thread
/* 213C70 801DD9C0 24040005 */   li    $a0, 5
/* 213C74 801DD9C4 8EC80000 */  lw    $t0, ($s6)
/* 213C78 801DD9C8 0C067656 */  jal   func_8019D958_ovl16
/* 213C7C 801DD9CC 95040002 */   lhu   $a0, 2($t0)
/* 213C80 801DD9D0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 213C84 801DD9D4 8FB00014 */  lw    $s0, 0x14($sp)
/* 213C88 801DD9D8 8FB10018 */  lw    $s1, 0x18($sp)
/* 213C8C 801DD9DC 8FB2001C */  lw    $s2, 0x1c($sp)
/* 213C90 801DD9E0 8FB30020 */  lw    $s3, 0x20($sp)
/* 213C94 801DD9E4 8FB40024 */  lw    $s4, 0x24($sp)
/* 213C98 801DD9E8 8FB50028 */  lw    $s5, 0x28($sp)
/* 213C9C 801DD9EC 8FB6002C */  lw    $s6, 0x2c($sp)
/* 213CA0 801DD9F0 8FB70030 */  lw    $s7, 0x30($sp)
/* 213CA4 801DD9F4 03E00008 */  jr    $ra
/* 213CA8 801DD9F8 27BD0038 */   addiu $sp, $sp, 0x38
.type func_801DD50C_ovl16, @function
.size func_801DD50C_ovl16, . - func_801DD50C_ovl16
