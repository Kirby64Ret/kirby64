glabel func_8021A7FC_ovl9
/* 1C884C 8021A7FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1C8850 8021A800 AFB10020 */  sw         $s1, 0x20($sp)
/* 1C8854 8021A804 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 1C8858 8021A808 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 1C885C 8021A80C 8E220000 */  lw         $v0, 0x0($s1)
/* 1C8860 8021A810 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1C8864 8021A814 AFB0001C */  sw         $s0, 0x1C($sp)
/* 1C8868 8021A818 AFA40028 */  sw         $a0, 0x28($sp)
/* 1C886C 8021A81C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1C8870 8021A820 3C01800F */  lui        $at, %hi(D_800EA520)
/* 1C8874 8021A824 24180002 */  addiu      $t8, $zero, 0x2
/* 1C8878 8021A828 000E7880 */  sll        $t7, $t6, 2
/* 1C887C 8021A82C 002F0821 */  addu       $at, $at, $t7
/* 1C8880 8021A830 AC20A520 */  sw         $zero, %lo(D_800EA520)($at)
/* 1C8884 8021A834 8C590000 */  lw         $t9, 0x0($v0)
/* 1C8888 8021A838 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1C888C 8021A83C 3C100001 */  lui        $s0, (0x105CC >> 16)
/* 1C8890 8021A840 00194080 */  sll        $t0, $t9, 2
/* 1C8894 8021A844 00280821 */  addu       $at, $at, $t0
/* 1C8898 8021A848 AC38DFD0 */  sw         $t8, %lo(D_800DDFD0)($at)
/* 1C889C 8021A84C 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 1C88A0 8021A850 44812000 */  mtc1       $at, $f4
/* 1C88A4 8021A854 361005CC */  ori        $s0, $s0, (0x105CC & 0xFFFF)
/* 1C88A8 8021A858 8C84003C */  lw         $a0, 0x3C($a0)
/* 1C88AC 8021A85C 3C070001 */  lui        $a3, (0x100BF >> 16)
/* 1C88B0 8021A860 34E700BF */  ori        $a3, $a3, (0x100BF & 0xFFFF)
/* 1C88B4 8021A864 02002825 */  or         $a1, $s0, $zero
/* 1C88B8 8021A868 24060000 */  addiu      $a2, $zero, 0x0
/* 1C88BC 8021A86C 0C02A982 */  jal        func_800AA608
/* 1C88C0 8021A870 E7A40010 */   swc1      $f4, 0x10($sp)
/* 1C88C4 8021A874 0C02A855 */  jal        func_800AA154
/* 1C88C8 8021A878 02002025 */   or        $a0, $s0, $zero
/* 1C88CC 8021A87C 3C040001 */  lui        $a0, (0x105CD >> 16)
/* 1C88D0 8021A880 0C02A806 */  jal        func_800AA018
/* 1C88D4 8021A884 348405CD */   ori       $a0, $a0, (0x105CD & 0xFFFF)
/* 1C88D8 8021A888 8E2A0000 */  lw         $t2, 0x0($s1)
/* 1C88DC 8021A88C 3C10800F */  lui        $s0, %hi(D_800E9C60)
/* 1C88E0 8021A890 26109C60 */  addiu      $s0, $s0, %lo(D_800E9C60)
/* 1C88E4 8021A894 8D4B0000 */  lw         $t3, 0x0($t2)
/* 1C88E8 8021A898 000B6080 */  sll        $t4, $t3, 2
/* 1C88EC 8021A89C 020C6821 */  addu       $t5, $s0, $t4
/* 1C88F0 8021A8A0 8DAE0000 */  lw         $t6, 0x0($t5)
/* 1C88F4 8021A8A4 51C0000B */  beql       $t6, $zero, .L8021A8D4_ovl9
/* 1C88F8 8021A8A8 8FAA0028 */   lw        $t2, 0x28($sp)
.L8021A8AC_ovl9:
/* 1C88FC 8021A8AC 0C002DAF */  jal        finish_current_thread
/* 1C8900 8021A8B0 24040001 */   addiu     $a0, $zero, 0x1
/* 1C8904 8021A8B4 8E2F0000 */  lw         $t7, 0x0($s1)
/* 1C8908 8021A8B8 8DF90000 */  lw         $t9, 0x0($t7)
/* 1C890C 8021A8BC 0019C080 */  sll        $t8, $t9, 2
/* 1C8910 8021A8C0 02184021 */  addu       $t0, $s0, $t8
/* 1C8914 8021A8C4 8D090000 */  lw         $t1, 0x0($t0)
/* 1C8918 8021A8C8 1520FFF8 */  bnez       $t1, .L8021A8AC_ovl9
/* 1C891C 8021A8CC 00000000 */   nop
/* 1C8920 8021A8D0 8FAA0028 */  lw         $t2, 0x28($sp)
.L8021A8D4_ovl9:
/* 1C8924 8021A8D4 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 1C8928 8021A8D8 44813000 */  mtc1       $at, $f6
/* 1C892C 8021A8DC 3C100001 */  lui        $s0, (0x105CE >> 16)
/* 1C8930 8021A8E0 361005CE */  ori        $s0, $s0, (0x105CE & 0xFFFF)
/* 1C8934 8021A8E4 3C070001 */  lui        $a3, (0x100BF >> 16)
/* 1C8938 8021A8E8 8D44003C */  lw         $a0, 0x3C($t2)
/* 1C893C 8021A8EC 34E700BF */  ori        $a3, $a3, (0x100BF & 0xFFFF)
/* 1C8940 8021A8F0 02002825 */  or         $a1, $s0, $zero
/* 1C8944 8021A8F4 24060000 */  addiu      $a2, $zero, 0x0
/* 1C8948 8021A8F8 0C02A982 */  jal        func_800AA608
/* 1C894C 8021A8FC E7A60010 */   swc1      $f6, 0x10($sp)
/* 1C8950 8021A900 0C02A855 */  jal        func_800AA154
/* 1C8954 8021A904 02002025 */   or        $a0, $s0, $zero
/* 1C8958 8021A908 8E2C0000 */  lw         $t4, 0x0($s1)
/* 1C895C 8021A90C 3C01800F */  lui        $at, %hi(D_800EA520)
/* 1C8960 8021A910 240B0001 */  addiu      $t3, $zero, 0x1
/* 1C8964 8021A914 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1C8968 8021A918 000D7080 */  sll        $t6, $t5, 2
/* 1C896C 8021A91C 002E0821 */  addu       $at, $at, $t6
/* 1C8970 8021A920 0C02BE85 */  jal        func_800AFA14
/* 1C8974 8021A924 AC2BA520 */   sw        $t3, %lo(D_800EA520)($at)
/* 1C8978 8021A928 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1C897C 8021A92C 8FB0001C */  lw         $s0, 0x1C($sp)
/* 1C8980 8021A930 8FB10020 */  lw         $s1, 0x20($sp)
/* 1C8984 8021A934 03E00008 */  jr         $ra
/* 1C8988 8021A938 27BD0028 */   addiu     $sp, $sp, 0x28
