nonmatching func_801E1C20_ovl15, 0x268

glabel func_801E1C20_ovl15
    /* 20C780 801E1C20 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 20C784 801E1C24 AFB00018 */  sw         $s0, 0x18($sp)
    /* 20C788 801E1C28 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 20C78C 801E1C2C 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* 20C790 801E1C30 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 20C794 801E1C34 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 20C798 801E1C38 AFA40040 */  sw         $a0, 0x40($sp)
    /* 20C79C 801E1C3C 8DF80000 */  lw         $t8, 0x0($t7)
    /* 20C7A0 801E1C40 3C08800E */  lui        $t0, %hi(D_800E1B50)
    /* 20C7A4 801E1C44 3C0E801E */  lui        $t6, %hi(D_801D8F70)
    /* 20C7A8 801E1C48 0018C880 */  sll        $t9, $t8, 2
    /* 20C7AC 801E1C4C 01194021 */  addu       $t0, $t0, $t9
    /* 20C7B0 801E1C50 8D081B50 */  lw         $t0, %lo(D_800E1B50)($t0)
    /* 20C7B4 801E1C54 25CE8F70 */  addiu      $t6, $t6, %lo(D_801D8F70)
    /* 20C7B8 801E1C58 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
    /* 20C7BC 801E1C5C AD0E008C */  sw         $t6, 0x8C($t0)
    /* 20C7C0 801E1C60 8E090000 */  lw         $t1, 0x0($s0)
    /* 20C7C4 801E1C64 27A50024 */  addiu      $a1, $sp, 0x24
    /* 20C7C8 801E1C68 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 20C7CC 801E1C6C 000A5880 */  sll        $t3, $t2, 2
    /* 20C7D0 801E1C70 018B6021 */  addu       $t4, $t4, $t3
    /* 20C7D4 801E1C74 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
    /* 20C7D8 801E1C78 0C0786E6 */  jal        func_801E1B98_ovl15
    /* 20C7DC 801E1C7C 8D840010 */   lw        $a0, 0x10($t4)
    /* 20C7E0 801E1C80 10400011 */  beqz       $v0, .L801E1CC8_ovl15
    /* 20C7E4 801E1C84 8FA40030 */   lw        $a0, 0x30($sp)
    /* 20C7E8 801E1C88 93A50024 */  lbu        $a1, 0x24($sp)
    /* 20C7EC 801E1C8C 93A60025 */  lbu        $a2, 0x25($sp)
    /* 20C7F0 801E1C90 0C05A50C */  jal        func_80169430_ovl3
    /* 20C7F4 801E1C94 2407000B */   addiu     $a3, $zero, 0xB
    /* 20C7F8 801E1C98 8E020000 */  lw         $v0, 0x0($s0)
    /* 20C7FC 801E1C9C 3C01800F */  lui        $at, %hi(D_800EBF60)
    /* 20C800 801E1CA0 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 20C804 801E1CA4 000D7880 */  sll        $t7, $t5, 2
    /* 20C808 801E1CA8 002F0821 */  addu       $at, $at, $t7
    /* 20C80C 801E1CAC AC20BF60 */  sw         $zero, %lo(D_800EBF60)($at)
    /* 20C810 801E1CB0 8C580000 */  lw         $t8, 0x0($v0)
    /* 20C814 801E1CB4 3C01800F */  lui        $at, %hi(D_800E9FE0)
    /* 20C818 801E1CB8 0018C880 */  sll        $t9, $t8, 2
    /* 20C81C 801E1CBC 00390821 */  addu       $at, $at, $t9
    /* 20C820 801E1CC0 1000006C */  b          .L801E1E74_ovl15
    /* 20C824 801E1CC4 AC209FE0 */   sw        $zero, %lo(D_800E9FE0)($at)
  .L801E1CC8_ovl15:
    /* 20C828 801E1CC8 8E080000 */  lw         $t0, 0x0($s0)
    /* 20C82C 801E1CCC 3C0B800E */  lui        $t3, %hi(D_800E1B50)
    /* 20C830 801E1CD0 3C0E801E */  lui        $t6, %hi(D_801D8F94)
    /* 20C834 801E1CD4 8D090000 */  lw         $t1, 0x0($t0)
    /* 20C838 801E1CD8 25CE8F94 */  addiu      $t6, $t6, %lo(D_801D8F94)
    /* 20C83C 801E1CDC 3C18800E */  lui        $t8, %hi(D_800DFBD0)
    /* 20C840 801E1CE0 00095080 */  sll        $t2, $t1, 2
    /* 20C844 801E1CE4 016A5821 */  addu       $t3, $t3, $t2
    /* 20C848 801E1CE8 8D6B1B50 */  lw         $t3, %lo(D_800E1B50)($t3)
    /* 20C84C 801E1CEC 27A50024 */  addiu      $a1, $sp, 0x24
    /* 20C850 801E1CF0 AD6E008C */  sw         $t6, 0x8C($t3)
    /* 20C854 801E1CF4 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 20C858 801E1CF8 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 20C85C 801E1CFC 000D7880 */  sll        $t7, $t5, 2
    /* 20C860 801E1D00 030FC021 */  addu       $t8, $t8, $t7
    /* 20C864 801E1D04 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
    /* 20C868 801E1D08 0C0786E6 */  jal        func_801E1B98_ovl15
    /* 20C86C 801E1D0C 8F040010 */   lw        $a0, 0x10($t8)
    /* 20C870 801E1D10 10400011 */  beqz       $v0, .L801E1D58_ovl15
    /* 20C874 801E1D14 8FA40030 */   lw        $a0, 0x30($sp)
    /* 20C878 801E1D18 93A50024 */  lbu        $a1, 0x24($sp)
    /* 20C87C 801E1D1C 93A60025 */  lbu        $a2, 0x25($sp)
    /* 20C880 801E1D20 0C05A50C */  jal        func_80169430_ovl3
    /* 20C884 801E1D24 2407000C */   addiu     $a3, $zero, 0xC
    /* 20C888 801E1D28 8E020000 */  lw         $v0, 0x0($s0)
    /* 20C88C 801E1D2C 3C01800F */  lui        $at, %hi(D_800EBF60)
    /* 20C890 801E1D30 8C590000 */  lw         $t9, 0x0($v0)
    /* 20C894 801E1D34 00194080 */  sll        $t0, $t9, 2
    /* 20C898 801E1D38 00280821 */  addu       $at, $at, $t0
    /* 20C89C 801E1D3C AC20BF60 */  sw         $zero, %lo(D_800EBF60)($at)
    /* 20C8A0 801E1D40 8C490000 */  lw         $t1, 0x0($v0)
    /* 20C8A4 801E1D44 3C01800F */  lui        $at, %hi(D_800E9FE0)
    /* 20C8A8 801E1D48 00095080 */  sll        $t2, $t1, 2
    /* 20C8AC 801E1D4C 002A0821 */  addu       $at, $at, $t2
    /* 20C8B0 801E1D50 10000048 */  b          .L801E1E74_ovl15
    /* 20C8B4 801E1D54 AC209FE0 */   sw        $zero, %lo(D_800E9FE0)($at)
  .L801E1D58_ovl15:
    /* 20C8B8 801E1D58 8E0B0000 */  lw         $t3, 0x0($s0)
    /* 20C8BC 801E1D5C 3C0F800E */  lui        $t7, %hi(D_800E1B50)
    /* 20C8C0 801E1D60 3C0E801E */  lui        $t6, %hi(D_801D8FB8)
    /* 20C8C4 801E1D64 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 20C8C8 801E1D68 25CE8FB8 */  addiu      $t6, $t6, %lo(D_801D8FB8)
    /* 20C8CC 801E1D6C 3C09800E */  lui        $t1, %hi(D_800DFBD0)
    /* 20C8D0 801E1D70 000C6880 */  sll        $t5, $t4, 2
    /* 20C8D4 801E1D74 01ED7821 */  addu       $t7, $t7, $t5
    /* 20C8D8 801E1D78 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
    /* 20C8DC 801E1D7C 27A50024 */  addiu      $a1, $sp, 0x24
    /* 20C8E0 801E1D80 ADEE008C */  sw         $t6, 0x8C($t7)
    /* 20C8E4 801E1D84 8E180000 */  lw         $t8, 0x0($s0)
    /* 20C8E8 801E1D88 8F190000 */  lw         $t9, 0x0($t8)
    /* 20C8EC 801E1D8C 00194080 */  sll        $t0, $t9, 2
    /* 20C8F0 801E1D90 01284821 */  addu       $t1, $t1, $t0
    /* 20C8F4 801E1D94 8D29FBD0 */  lw         $t1, %lo(D_800DFBD0)($t1)
    /* 20C8F8 801E1D98 0C0786E6 */  jal        func_801E1B98_ovl15
    /* 20C8FC 801E1D9C 8D240010 */   lw        $a0, 0x10($t1)
    /* 20C900 801E1DA0 10400011 */  beqz       $v0, .L801E1DE8_ovl15
    /* 20C904 801E1DA4 8FA40030 */   lw        $a0, 0x30($sp)
    /* 20C908 801E1DA8 93A50024 */  lbu        $a1, 0x24($sp)
    /* 20C90C 801E1DAC 93A60025 */  lbu        $a2, 0x25($sp)
    /* 20C910 801E1DB0 0C05A50C */  jal        func_80169430_ovl3
    /* 20C914 801E1DB4 2407000D */   addiu     $a3, $zero, 0xD
    /* 20C918 801E1DB8 8E020000 */  lw         $v0, 0x0($s0)
    /* 20C91C 801E1DBC 3C01800F */  lui        $at, %hi(D_800EBF60)
    /* 20C920 801E1DC0 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 20C924 801E1DC4 000A5880 */  sll        $t3, $t2, 2
    /* 20C928 801E1DC8 002B0821 */  addu       $at, $at, $t3
    /* 20C92C 801E1DCC AC20BF60 */  sw         $zero, %lo(D_800EBF60)($at)
    /* 20C930 801E1DD0 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 20C934 801E1DD4 3C01800F */  lui        $at, %hi(D_800E9FE0)
    /* 20C938 801E1DD8 000C6880 */  sll        $t5, $t4, 2
    /* 20C93C 801E1DDC 002D0821 */  addu       $at, $at, $t5
    /* 20C940 801E1DE0 10000024 */  b          .L801E1E74_ovl15
    /* 20C944 801E1DE4 AC209FE0 */   sw        $zero, %lo(D_800E9FE0)($at)
  .L801E1DE8_ovl15:
    /* 20C948 801E1DE8 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 20C94C 801E1DEC 3C08800E */  lui        $t0, %hi(D_800E1B50)
    /* 20C950 801E1DF0 3C0E801E */  lui        $t6, %hi(D_801D8FDC)
    /* 20C954 801E1DF4 8DF80000 */  lw         $t8, 0x0($t7)
    /* 20C958 801E1DF8 25CE8FDC */  addiu      $t6, $t6, %lo(D_801D8FDC)
    /* 20C95C 801E1DFC 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
    /* 20C960 801E1E00 0018C880 */  sll        $t9, $t8, 2
    /* 20C964 801E1E04 01194021 */  addu       $t0, $t0, $t9
    /* 20C968 801E1E08 8D081B50 */  lw         $t0, %lo(D_800E1B50)($t0)
    /* 20C96C 801E1E0C 27A50024 */  addiu      $a1, $sp, 0x24
    /* 20C970 801E1E10 AD0E008C */  sw         $t6, 0x8C($t0)
    /* 20C974 801E1E14 8E090000 */  lw         $t1, 0x0($s0)
    /* 20C978 801E1E18 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 20C97C 801E1E1C 000A5880 */  sll        $t3, $t2, 2
    /* 20C980 801E1E20 018B6021 */  addu       $t4, $t4, $t3
    /* 20C984 801E1E24 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
    /* 20C988 801E1E28 0C0786E6 */  jal        func_801E1B98_ovl15
    /* 20C98C 801E1E2C 8D840010 */   lw        $a0, 0x10($t4)
    /* 20C990 801E1E30 10400010 */  beqz       $v0, .L801E1E74_ovl15
    /* 20C994 801E1E34 8FA40030 */   lw        $a0, 0x30($sp)
    /* 20C998 801E1E38 93A50024 */  lbu        $a1, 0x24($sp)
    /* 20C99C 801E1E3C 93A60025 */  lbu        $a2, 0x25($sp)
    /* 20C9A0 801E1E40 0C05A50C */  jal        func_80169430_ovl3
    /* 20C9A4 801E1E44 2407000E */   addiu     $a3, $zero, 0xE
    /* 20C9A8 801E1E48 8E020000 */  lw         $v0, 0x0($s0)
    /* 20C9AC 801E1E4C 3C01800F */  lui        $at, %hi(D_800EBF60)
    /* 20C9B0 801E1E50 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 20C9B4 801E1E54 000D7880 */  sll        $t7, $t5, 2
    /* 20C9B8 801E1E58 002F0821 */  addu       $at, $at, $t7
    /* 20C9BC 801E1E5C AC20BF60 */  sw         $zero, %lo(D_800EBF60)($at)
    /* 20C9C0 801E1E60 8C580000 */  lw         $t8, 0x0($v0)
    /* 20C9C4 801E1E64 3C01800F */  lui        $at, %hi(D_800E9FE0)
    /* 20C9C8 801E1E68 0018C880 */  sll        $t9, $t8, 2
    /* 20C9CC 801E1E6C 00390821 */  addu       $at, $at, $t9
    /* 20C9D0 801E1E70 AC209FE0 */  sw         $zero, %lo(D_800E9FE0)($at)
  .L801E1E74_ovl15:
    /* 20C9D4 801E1E74 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 20C9D8 801E1E78 8FB00018 */  lw         $s0, 0x18($sp)
    /* 20C9DC 801E1E7C 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 20C9E0 801E1E80 03E00008 */  jr         $ra
    /* 20C9E4 801E1E84 00000000 */   nop
endlabel func_801E1C20_ovl15
.size func_801E1C20_ovl15, . - func_801E1C20_ovl15
