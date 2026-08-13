nonmatching func_800A8724, 0x210

glabel func_800A8724
    /* 50974 800A8724 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 50978 800A8728 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 5097C 800A872C AFB6002C */  sw         $s6, 0x2C($sp)
    /* 50980 800A8730 AFB50028 */  sw         $s5, 0x28($sp)
    /* 50984 800A8734 0080A825 */  or         $s5, $a0, $zero
    /* 50988 800A8738 AFB70030 */  sw         $s7, 0x30($sp)
    /* 5098C 800A873C AFB40024 */  sw         $s4, 0x24($sp)
    /* 50990 800A8740 AFB30020 */  sw         $s3, 0x20($sp)
    /* 50994 800A8744 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 50998 800A8748 AFB10018 */  sw         $s1, 0x18($sp)
    /* 5099C 800A874C AFB00014 */  sw         $s0, 0x14($sp)
    /* 509A0 800A8750 0C02A0B0 */  jal        func_800A82C0
    /* 509A4 800A8754 0000B025 */   or        $s6, $zero, $zero
    /* 509A8 800A8758 3C06800D */  lui        $a2, %hi(D_800D00E4)
    /* 509AC 800A875C 3C05800D */  lui        $a1, %hi(D_800D0124)
    /* 509B0 800A8760 3C08800D */  lui        $t0, %hi(D_800D0144)
    /* 509B4 800A8764 25080144 */  addiu      $t0, $t0, %lo(D_800D0144)
    /* 509B8 800A8768 24A50124 */  addiu      $a1, $a1, %lo(D_800D0124)
    /* 509BC 800A876C 24C600E4 */  addiu      $a2, $a2, %lo(D_800D00E4)
    /* 509C0 800A8770 00003825 */  or         $a3, $zero, $zero
  .L800A8774:
    /* 509C4 800A8774 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 509C8 800A8778 3C0F800D */  lui        $t7, %hi(D_800D00C4)
    /* 509CC 800A877C 25EF00C4 */  addiu      $t7, $t7, %lo(D_800D00C4)
    /* 509D0 800A8780 11C0000D */  beqz       $t6, .L800A87B8
    /* 509D4 800A8784 00001825 */   or        $v1, $zero, $zero
    /* 509D8 800A8788 00EF2021 */  addu       $a0, $a3, $t7
    /* 509DC 800A878C 00001025 */  or         $v0, $zero, $zero
    /* 509E0 800A8790 8C980000 */  lw         $t8, 0x0($a0)
  .L800A8794:
    /* 509E4 800A8794 24630001 */  addiu      $v1, $v1, 0x1
    /* 509E8 800A8798 0302C821 */  addu       $t9, $t8, $v0
    /* 509EC 800A879C AF200000 */  sw         $zero, 0x0($t9)
    /* 509F0 800A87A0 8CC90000 */  lw         $t1, 0x0($a2)
    /* 509F4 800A87A4 24420004 */  addiu      $v0, $v0, 0x4
    /* 509F8 800A87A8 0069082B */  sltu       $at, $v1, $t1
    /* 509FC 800A87AC 5420FFF9 */  bnel       $at, $zero, .L800A8794
    /* 50A00 800A87B0 8C980000 */   lw        $t8, 0x0($a0)
    /* 50A04 800A87B4 00001825 */  or         $v1, $zero, $zero
  .L800A87B8:
    /* 50A08 800A87B8 8CAA0000 */  lw         $t2, 0x0($a1)
    /* 50A0C 800A87BC 24C60004 */  addiu      $a2, $a2, 0x4
    /* 50A10 800A87C0 00001025 */  or         $v0, $zero, $zero
    /* 50A14 800A87C4 1140000C */  beqz       $t2, .L800A87F8
    /* 50A18 800A87C8 3C0B800D */   lui       $t3, %hi(D_800D0104)
    /* 50A1C 800A87CC 256B0104 */  addiu      $t3, $t3, %lo(D_800D0104)
    /* 50A20 800A87D0 00EB2021 */  addu       $a0, $a3, $t3
    /* 50A24 800A87D4 8C8C0000 */  lw         $t4, 0x0($a0)
  .L800A87D8:
    /* 50A28 800A87D8 24630001 */  addiu      $v1, $v1, 0x1
    /* 50A2C 800A87DC 01826821 */  addu       $t5, $t4, $v0
    /* 50A30 800A87E0 ADA00000 */  sw         $zero, 0x0($t5)
    /* 50A34 800A87E4 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 50A38 800A87E8 24420004 */  addiu      $v0, $v0, 0x4
    /* 50A3C 800A87EC 006E082B */  sltu       $at, $v1, $t6
    /* 50A40 800A87F0 5420FFF9 */  bnel       $at, $zero, .L800A87D8
    /* 50A44 800A87F4 8C8C0000 */   lw        $t4, 0x0($a0)
  .L800A87F8:
    /* 50A48 800A87F8 24A50004 */  addiu      $a1, $a1, 0x4
    /* 50A4C 800A87FC 00A8082B */  sltu       $at, $a1, $t0
    /* 50A50 800A8800 1420FFDC */  bnez       $at, .L800A8774
    /* 50A54 800A8804 24E70004 */   addiu     $a3, $a3, 0x4
    /* 50A58 800A8808 3C18800C */  lui        $t8, %hi(D_800C4654)
    /* 50A5C 800A880C 27184654 */  addiu      $t8, $t8, %lo(D_800C4654)
    /* 50A60 800A8810 3C10800D */  lui        $s0, %hi(D_800D7BD0)
    /* 50A64 800A8814 3C04800D */  lui        $a0, %hi(D_800D7BB8)
    /* 50A68 800A8818 00157900 */  sll        $t7, $s5, 4
    /* 50A6C 800A881C 3C13800D */  lui        $s3, %hi(D_800D7BC0)
    /* 50A70 800A8820 3C14800D */  lui        $s4, %hi(D_800D7BE0)
    /* 50A74 800A8824 26947BE0 */  addiu      $s4, $s4, %lo(D_800D7BE0)
    /* 50A78 800A8828 26737BC0 */  addiu      $s3, $s3, %lo(D_800D7BC0)
    /* 50A7C 800A882C 01F89021 */  addu       $s2, $t7, $t8
    /* 50A80 800A8830 8C847BB8 */  lw         $a0, %lo(D_800D7BB8)($a0)
    /* 50A84 800A8834 26107BD0 */  addiu      $s0, $s0, %lo(D_800D7BD0)
    /* 50A88 800A8838 00008825 */  or         $s1, $zero, $zero
    /* 50A8C 800A883C 2417FFFF */  addiu      $s7, $zero, -0x1
  .L800A8840:
    /* 50A90 800A8840 8E460000 */  lw         $a2, 0x0($s2)
    /* 50A94 800A8844 AE000000 */  sw         $zero, 0x0($s0)
    /* 50A98 800A8848 0080A825 */  or         $s5, $a0, $zero
    /* 50A9C 800A884C 50C00013 */  beql       $a2, $zero, .L800A889C
    /* 50AA0 800A8850 8E190000 */   lw        $t9, 0x0($s0)
    /* 50AA4 800A8854 14D70009 */  bne        $a2, $s7, .L800A887C
    /* 50AA8 800A8858 02202825 */   or        $a1, $s1, $zero
    /* 50AAC 800A885C 0C02A103 */  jal        func_800A840C
    /* 50AB0 800A8860 02202825 */   or        $a1, $s1, $zero
    /* 50AB4 800A8864 14400002 */  bnez       $v0, .L800A8870
    /* 50AB8 800A8868 AE020000 */   sw        $v0, 0x0($s0)
    /* 50ABC 800A886C 26D60001 */  addiu      $s6, $s6, 0x1
  .L800A8870:
    /* 50AC0 800A8870 3C04800D */  lui        $a0, %hi(D_800D7BB8)
    /* 50AC4 800A8874 10000008 */  b          .L800A8898
    /* 50AC8 800A8878 8C847BB8 */   lw        $a0, %lo(D_800D7BB8)($a0)
  .L800A887C:
    /* 50ACC 800A887C 0C02A103 */  jal        func_800A840C
    /* 50AD0 800A8880 00C02025 */   or        $a0, $a2, $zero
    /* 50AD4 800A8884 14400002 */  bnez       $v0, .L800A8890
    /* 50AD8 800A8888 AE020000 */   sw        $v0, 0x0($s0)
    /* 50ADC 800A888C 26D60001 */  addiu      $s6, $s6, 0x1
  .L800A8890:
    /* 50AE0 800A8890 3C04800D */  lui        $a0, %hi(D_800D7BB8)
    /* 50AE4 800A8894 8C847BB8 */  lw         $a0, %lo(D_800D7BB8)($a0)
  .L800A8898:
    /* 50AE8 800A8898 8E190000 */  lw         $t9, 0x0($s0)
  .L800A889C:
    /* 50AEC 800A889C 26310001 */  addiu      $s1, $s1, 0x1
    /* 50AF0 800A88A0 2E210004 */  sltiu      $at, $s1, 0x4
    /* 50AF4 800A88A4 02A44823 */  subu       $t1, $s5, $a0
    /* 50AF8 800A88A8 26100004 */  addiu      $s0, $s0, 0x4
    /* 50AFC 800A88AC 26520004 */  addiu      $s2, $s2, 0x4
    /* 50B00 800A88B0 26730004 */  addiu      $s3, $s3, 0x4
    /* 50B04 800A88B4 26940004 */  addiu      $s4, $s4, 0x4
    /* 50B08 800A88B8 AE89FFFC */  sw         $t1, -0x4($s4)
    /* 50B0C 800A88BC 1420FFE0 */  bnez       $at, .L800A8840
    /* 50B10 800A88C0 AE79FFFC */   sw        $t9, -0x4($s3)
    /* 50B14 800A88C4 3C01800D */  lui        $at, %hi(D_800D6E78)
    /* 50B18 800A88C8 AC206E78 */  sw         $zero, %lo(D_800D6E78)($at)
    /* 50B1C 800A88CC 3C01800D */  lui        $at, %hi(D_800D6E68)
    /* 50B20 800A88D0 AC206E68 */  sw         $zero, %lo(D_800D6E68)($at)
    /* 50B24 800A88D4 3C01800D */  lui        $at, %hi(D_800D6E7C)
    /* 50B28 800A88D8 AC206E7C */  sw         $zero, %lo(D_800D6E7C)($at)
    /* 50B2C 800A88DC 3C01800D */  lui        $at, %hi(D_800D6E6C)
    /* 50B30 800A88E0 AC206E6C */  sw         $zero, %lo(D_800D6E6C)($at)
    /* 50B34 800A88E4 3C01800D */  lui        $at, %hi(D_800D6E80)
    /* 50B38 800A88E8 AC206E80 */  sw         $zero, %lo(D_800D6E80)($at)
    /* 50B3C 800A88EC 3C01800D */  lui        $at, %hi(D_800D6E70)
    /* 50B40 800A88F0 AC206E70 */  sw         $zero, %lo(D_800D6E70)($at)
    /* 50B44 800A88F4 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 50B48 800A88F8 3C01800D */  lui        $at, %hi(D_800D6E84)
    /* 50B4C 800A88FC AC206E84 */  sw         $zero, %lo(D_800D6E84)($at)
    /* 50B50 800A8900 02C01025 */  or         $v0, $s6, $zero
    /* 50B54 800A8904 3C01800D */  lui        $at, %hi(D_800D6E74)
    /* 50B58 800A8908 8FB6002C */  lw         $s6, 0x2C($sp)
    /* 50B5C 800A890C 8FB00014 */  lw         $s0, 0x14($sp)
    /* 50B60 800A8910 8FB10018 */  lw         $s1, 0x18($sp)
    /* 50B64 800A8914 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 50B68 800A8918 8FB30020 */  lw         $s3, 0x20($sp)
    /* 50B6C 800A891C 8FB40024 */  lw         $s4, 0x24($sp)
    /* 50B70 800A8920 8FB50028 */  lw         $s5, 0x28($sp)
    /* 50B74 800A8924 8FB70030 */  lw         $s7, 0x30($sp)
    /* 50B78 800A8928 AC206E74 */  sw         $zero, %lo(D_800D6E74)($at)
    /* 50B7C 800A892C 03E00008 */  jr         $ra
    /* 50B80 800A8930 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_800A8724
.size func_800A8724, . - func_800A8724
