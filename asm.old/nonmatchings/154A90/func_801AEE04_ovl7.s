glabel func_801AEE04_ovl7
/* 154E74 801AEE04 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 154E78 801AEE08 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 154E7C 801AEE0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 154E80 801AEE10 AFBF0014 */  sw         $ra, 0x14($sp)
/* 154E84 801AEE14 8CC30000 */  lw         $v1, 0x0($a2)
/* 154E88 801AEE18 3C0E800F */  lui        $t6, %hi(D_800E83E0)
/* 154E8C 801AEE1C 3C0F800F */  lui        $t7, %hi(D_800E9C60)
/* 154E90 801AEE20 00031880 */  sll        $v1, $v1, 2
/* 154E94 801AEE24 01C37021 */  addu       $t6, $t6, $v1
/* 154E98 801AEE28 8DCE83E0 */  lw         $t6, %lo(D_800E83E0)($t6)
/* 154E9C 801AEE2C 00003825 */  or         $a3, $zero, $zero
/* 154EA0 801AEE30 3C05801B */  lui        $a1, %hi(func_801ACF84_ovl7)
/* 154EA4 801AEE34 11C00008 */  beqz       $t6, .L801AEE58_ovl7
/* 154EA8 801AEE38 01E37821 */   addu      $t7, $t7, $v1
/* 154EAC 801AEE3C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 154EB0 801AEE40 00832021 */  addu       $a0, $a0, $v1
/* 154EB4 801AEE44 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
/* 154EB8 801AEE48 0C02C7B2 */  jal        assign_new_process_entry
/* 154EBC 801AEE4C 24A5CF84 */   addiu     $a1, $a1, %lo(func_801ACF84_ovl7)
/* 154EC0 801AEE50 10000058 */  b          .L801AEFB4_ovl7
/* 154EC4 801AEE54 8FBF0014 */   lw        $ra, 0x14($sp)
.L801AEE58_ovl7:
/* 154EC8 801AEE58 8DEF9C60 */  lw         $t7, %lo(D_800E9C60)($t7)
/* 154ECC 801AEE5C 15E00008 */  bnez       $t7, .L801AEE80_ovl7
/* 154ED0 801AEE60 00000000 */   nop
/* 154ED4 801AEE64 0C06835D */  jal        func_801A0D74_ovl7
/* 154ED8 801AEE68 AFA70018 */   sw        $a3, 0x18($sp)
/* 154EDC 801AEE6C 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 154EE0 801AEE70 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 154EE4 801AEE74 8FA70018 */  lw         $a3, 0x18($sp)
/* 154EE8 801AEE78 8CC30000 */  lw         $v1, 0x0($a2)
/* 154EEC 801AEE7C 00031880 */  sll        $v1, $v1, 2
.L801AEE80_ovl7:
/* 154EF0 801AEE80 3C18800F */  lui        $t8, %hi(D_800E9560)
/* 154EF4 801AEE84 27189560 */  addiu      $t8, $t8, %lo(D_800E9560)
/* 154EF8 801AEE88 00781021 */  addu       $v0, $v1, $t8
/* 154EFC 801AEE8C 8C440000 */  lw         $a0, 0x0($v0)
/* 154F00 801AEE90 1C800007 */  bgtz       $a0, .L801AEEB0_ovl7
/* 154F04 801AEE94 2499FFFF */   addiu     $t9, $a0, -0x1
/* 154F08 801AEE98 0C068220 */  jal        func_801A0880_ovl7
/* 154F0C 801AEE9C 00000000 */   nop
/* 154F10 801AEEA0 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 154F14 801AEEA4 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 154F18 801AEEA8 10000002 */  b          .L801AEEB4_ovl7
/* 154F1C 801AEEAC 00403825 */   or        $a3, $v0, $zero
.L801AEEB0_ovl7:
/* 154F20 801AEEB0 AC590000 */  sw         $t9, 0x0($v0)
.L801AEEB4_ovl7:
/* 154F24 801AEEB4 14E0000A */  bnez       $a3, .L801AEEE0_ovl7
/* 154F28 801AEEB8 3C04801D */   lui       $a0, %hi(D_801CA910_ovl7)
/* 154F2C 801AEEBC 8CC50000 */  lw         $a1, 0x0($a2)
/* 154F30 801AEEC0 AFA70018 */  sw         $a3, 0x18($sp)
/* 154F34 801AEEC4 0C0445EF */  jal        func_801117BC
/* 154F38 801AEEC8 2484A910 */   addiu     $a0, $a0, %lo(D_801CA910_ovl7)
/* 154F3C 801AEECC 0C044713 */  jal        func_80111C4C
/* 154F40 801AEED0 00402025 */   or        $a0, $v0, $zero
/* 154F44 801AEED4 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 154F48 801AEED8 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 154F4C 801AEEDC 8FA70018 */  lw         $a3, 0x18($sp)
.L801AEEE0_ovl7:
/* 154F50 801AEEE0 54E0001D */  bnel       $a3, $zero, .L801AEF58_ovl7
/* 154F54 801AEEE4 8CCC0000 */   lw        $t4, 0x0($a2)
/* 154F58 801AEEE8 8CC30000 */  lw         $v1, 0x0($a2)
/* 154F5C 801AEEEC 3C08800F */  lui        $t0, %hi(D_800E8920)
/* 154F60 801AEEF0 24010001 */  addiu      $at, $zero, 0x1
/* 154F64 801AEEF4 00031880 */  sll        $v1, $v1, 2
/* 154F68 801AEEF8 01034021 */  addu       $t0, $t0, $v1
/* 154F6C 801AEEFC 8D088920 */  lw         $t0, %lo(D_800E8920)($t0)
/* 154F70 801AEF00 3C09800F */  lui        $t1, %hi(D_800E9C60)
/* 154F74 801AEF04 01234821 */  addu       $t1, $t1, $v1
/* 154F78 801AEF08 11010003 */  beq        $t0, $at, .L801AEF18_ovl7
/* 154F7C 801AEF0C 3C0A800F */   lui       $t2, %hi(D_800E9720)
/* 154F80 801AEF10 8D299C60 */  lw         $t1, %lo(D_800E9C60)($t1)
/* 154F84 801AEF14 1120000F */  beqz       $t1, .L801AEF54_ovl7
.L801AEF18_ovl7:
/* 154F88 801AEF18 254A9720 */   addiu     $t2, $t2, %lo(D_800E9720)
/* 154F8C 801AEF1C 006A1021 */  addu       $v0, $v1, $t2
/* 154F90 801AEF20 8C440000 */  lw         $a0, 0x0($v0)
/* 154F94 801AEF24 3C05801B */  lui        $a1, %hi(func_801ACF84_ovl7)
/* 154F98 801AEF28 24A5CF84 */  addiu      $a1, $a1, %lo(func_801ACF84_ovl7)
/* 154F9C 801AEF2C 1C800008 */  bgtz       $a0, .L801AEF50_ovl7
/* 154FA0 801AEF30 248BFFFF */   addiu     $t3, $a0, -0x1
/* 154FA4 801AEF34 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 154FA8 801AEF38 00832021 */  addu       $a0, $a0, $v1
/* 154FAC 801AEF3C 0C02C7B2 */  jal        assign_new_process_entry
/* 154FB0 801AEF40 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 154FB4 801AEF44 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 154FB8 801AEF48 10000002 */  b          .L801AEF54_ovl7
/* 154FBC 801AEF4C 8CC6A7C4 */   lw        $a2, %lo(D_8004A7C4)($a2)
.L801AEF50_ovl7:
/* 154FC0 801AEF50 AC4B0000 */  sw         $t3, 0x0($v0)
.L801AEF54_ovl7:
/* 154FC4 801AEF54 8CCC0000 */  lw         $t4, 0x0($a2)
.L801AEF58_ovl7:
/* 154FC8 801AEF58 3C0E800E */  lui        $t6, %hi(gEntitiesAngleYArray)
/* 154FCC 801AEF5C 25CE41D0 */  addiu      $t6, $t6, %lo(gEntitiesAngleYArray)
/* 154FD0 801AEF60 000C6880 */  sll        $t5, $t4, 2
/* 154FD4 801AEF64 01AE1021 */  addu       $v0, $t5, $t6
/* 154FD8 801AEF68 3C01801D */  lui        $at, %hi(D_801CE238_ovl7)
/* 154FDC 801AEF6C C426E238 */  lwc1       $f6, %lo(D_801CE238_ovl7)($at)
/* 154FE0 801AEF70 C4440000 */  lwc1       $f4, 0x0($v0)
/* 154FE4 801AEF74 3C0F800F */  lui        $t7, %hi(D_800E8760)
/* 154FE8 801AEF78 24010001 */  addiu      $at, $zero, 0x1
/* 154FEC 801AEF7C 46062201 */  sub.s      $f8, $f4, $f6
/* 154FF0 801AEF80 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 154FF4 801AEF84 E4480000 */  swc1       $f8, 0x0($v0)
/* 154FF8 801AEF88 8DEF8760 */  lw         $t7, %lo(D_800E8760)($t7)
/* 154FFC 801AEF8C 55E10009 */  bnel       $t7, $at, .L801AEFB4_ovl7
/* 155000 801AEF90 8FBF0014 */   lw        $ra, 0x14($sp)
/* 155004 801AEF94 8CD80000 */  lw         $t8, 0x0($a2)
/* 155008 801AEF98 3C05801B */  lui        $a1, %hi(func_801ACF84_ovl7)
/* 15500C 801AEF9C 24A5CF84 */  addiu      $a1, $a1, %lo(func_801ACF84_ovl7)
/* 155010 801AEFA0 0018C880 */  sll        $t9, $t8, 2
/* 155014 801AEFA4 00992021 */  addu       $a0, $a0, $t9
/* 155018 801AEFA8 0C02C7B2 */  jal        assign_new_process_entry
/* 15501C 801AEFAC 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 155020 801AEFB0 8FBF0014 */  lw         $ra, 0x14($sp)
.L801AEFB4_ovl7:
/* 155024 801AEFB4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 155028 801AEFB8 03E00008 */  jr         $ra
/* 15502C 801AEFBC 00000000 */   nop
