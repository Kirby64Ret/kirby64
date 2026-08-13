nonmatching func_8015F804_ovl5, 0x374

glabel func_8015F804_ovl5
    /* 106C74 8015F804 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 106C78 8015F808 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 106C7C 8015F80C 0C006279 */  jal        random_soft_f32
    /* 106C80 8015F810 AFA40030 */   sw        $a0, 0x30($sp)
    /* 106C84 8015F814 8FA40030 */  lw         $a0, 0x30($sp)
    /* 106C88 8015F818 3C0F8019 */  lui        $t7, %hi(D_8018E228_ovl5)
    /* 106C8C 8015F81C 25EFE228 */  addiu      $t7, $t7, %lo(D_8018E228_ovl5)
    /* 106C90 8015F820 00047080 */  sll        $t6, $a0, 2
    /* 106C94 8015F824 01C47023 */  subu       $t6, $t6, $a0
    /* 106C98 8015F828 000E7080 */  sll        $t6, $t6, 2
    /* 106C9C 8015F82C 01CF1821 */  addu       $v1, $t6, $t7
    /* 106CA0 8015F830 90620006 */  lbu        $v0, 0x6($v1)
    /* 106CA4 8015F834 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* 106CA8 8015F838 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 106CAC 8015F83C 3C078019 */  lui        $a3, %hi(D_8018E050_ovl5)
    /* 106CB0 8015F840 24E7E050 */  addiu      $a3, $a3, %lo(D_8018E050_ovl5)
    /* 106CB4 8015F844 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
    /* 106CB8 8015F848 0002C080 */  sll        $t8, $v0, 2
    /* 106CBC 8015F84C 44812000 */  mtc1       $at, $f4
    /* 106CC0 8015F850 00F8C821 */  addu       $t9, $a3, $t8
    /* 106CC4 8015F854 8F280000 */  lw         $t0, 0x0($t9)
    /* 106CC8 8015F858 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 106CCC 8015F85C 3C06800E */  lui        $a2, %hi(gEntitiesNextPosXArray)
    /* 106CD0 8015F860 46040182 */  mul.s      $f6, $f0, $f4
    /* 106CD4 8015F864 24C625D0 */  addiu      $a2, $a2, %lo(gEntitiesNextPosXArray)
    /* 106CD8 8015F868 00084880 */  sll        $t1, $t0, 2
    /* 106CDC 8015F86C 000C6880 */  sll        $t5, $t4, 2
    /* 106CE0 8015F870 00CD7021 */  addu       $t6, $a2, $t5
    /* 106CE4 8015F874 00C95021 */  addu       $t2, $a2, $t1
    /* 106CE8 8015F878 C54C0000 */  lwc1       $f12, 0x0($t2)
    /* 106CEC 8015F87C C5C20000 */  lwc1       $f2, 0x0($t6)
    /* 106CF0 8015F880 3C014416 */  lui        $at, (0x44160000 >> 16)
    /* 106CF4 8015F884 44814000 */  mtc1       $at, $f8
    /* 106CF8 8015F888 4602603C */  c.lt.s     $f12, $f2
    /* 106CFC 8015F88C 24080003 */  addiu      $t0, $zero, 0x3
    /* 106D00 8015F890 46083380 */  add.s      $f14, $f6, $f8
    /* 106D04 8015F894 00402825 */  or         $a1, $v0, $zero
    /* 106D08 8015F898 45000004 */  bc1f       .L8015F8AC_ovl5
    /* 106D0C 8015F89C 46007406 */   mov.s     $f16, $f14
    /* 106D10 8015F8A0 46026001 */  sub.s      $f0, $f12, $f2
    /* 106D14 8015F8A4 10000002 */  b          .L8015F8B0_ovl5
    /* 106D18 8015F8A8 46000007 */   neg.s     $f0, $f0
  .L8015F8AC_ovl5:
    /* 106D1C 8015F8AC 46026001 */  sub.s      $f0, $f12, $f2
  .L8015F8B0_ovl5:
    /* 106D20 8015F8B0 460E003C */  c.lt.s     $f0, $f14
    /* 106D24 8015F8B4 00000000 */  nop
    /* 106D28 8015F8B8 450200A5 */  bc1fl      .L8015FB50_ovl5
    /* 106D2C 8015F8BC A0680004 */   sb        $t0, 0x4($v1)
    /* 106D30 8015F8C0 AFA30018 */  sw         $v1, 0x18($sp)
    /* 106D34 8015F8C4 0C057D77 */  jal        func_8015F5DC_ovl5
    /* 106D38 8015F8C8 E7B00028 */   swc1      $f16, 0x28($sp)
    /* 106D3C 8015F8CC 3C06800E */  lui        $a2, %hi(gEntitiesNextPosXArray)
    /* 106D40 8015F8D0 3C078019 */  lui        $a3, %hi(D_8018E050_ovl5)
    /* 106D44 8015F8D4 24E7E050 */  addiu      $a3, $a3, %lo(D_8018E050_ovl5)
    /* 106D48 8015F8D8 24C625D0 */  addiu      $a2, $a2, %lo(gEntitiesNextPosXArray)
    /* 106D4C 8015F8DC 8FA30018 */  lw         $v1, 0x18($sp)
    /* 106D50 8015F8E0 14400036 */  bnez       $v0, .L8015F9BC_ovl5
    /* 106D54 8015F8E4 C7B00028 */   lwc1      $f16, 0x28($sp)
    /* 106D58 8015F8E8 906F0006 */  lbu        $t7, 0x6($v1)
    /* 106D5C 8015F8EC 3C014461 */  lui        $at, (0x44610000 >> 16)
    /* 106D60 8015F8F0 44817000 */  mtc1       $at, $f14
    /* 106D64 8015F8F4 000FC080 */  sll        $t8, $t7, 2
    /* 106D68 8015F8F8 00F8C821 */  addu       $t9, $a3, $t8
    /* 106D6C 8015F8FC 8F220000 */  lw         $v0, 0x0($t9)
    /* 106D70 8015F900 3C0143FA */  lui        $at, (0x43FA0000 >> 16)
    /* 106D74 8015F904 00021080 */  sll        $v0, $v0, 2
    /* 106D78 8015F908 00C24021 */  addu       $t0, $a2, $v0
    /* 106D7C 8015F90C C50A0000 */  lwc1       $f10, 0x0($t0)
    /* 106D80 8015F910 46105480 */  add.s      $f18, $f10, $f16
    /* 106D84 8015F914 4612703C */  c.lt.s     $f14, $f18
    /* 106D88 8015F918 00000000 */  nop
    /* 106D8C 8015F91C 4502001D */  bc1fl      .L8015F994_ovl5
    /* 106D90 8015F920 906E0008 */   lbu       $t6, 0x8($v1)
    /* 106D94 8015F924 44812000 */  mtc1       $at, $f4
    /* 106D98 8015F928 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 106D9C 8015F92C 00220821 */  addu       $at, $at, $v0
    /* 106DA0 8015F930 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 106DA4 8015F934 240C0003 */  addiu      $t4, $zero, 0x3
    /* 106DA8 8015F938 24040006 */  addiu      $a0, $zero, 0x6
    /* 106DAC 8015F93C 4606203C */  c.lt.s     $f4, $f6
    /* 106DB0 8015F940 00000000 */  nop
    /* 106DB4 8015F944 4502000C */  bc1fl      .L8015F978_ovl5
    /* 106DB8 8015F948 A06C0004 */   sb        $t4, 0x4($v1)
    /* 106DBC 8015F94C 90690007 */  lbu        $t1, 0x7($v1)
    /* 106DC0 8015F950 240100FF */  addiu      $at, $zero, 0xFF
    /* 106DC4 8015F954 240A0001 */  addiu      $t2, $zero, 0x1
    /* 106DC8 8015F958 15210003 */  bne        $t1, $at, .L8015F968_ovl5
    /* 106DCC 8015F95C 240B0008 */   addiu     $t3, $zero, 0x8
    /* 106DD0 8015F960 10000081 */  b          .L8015FB68_ovl5
    /* 106DD4 8015F964 A06A0004 */   sb        $t2, 0x4($v1)
  .L8015F968_ovl5:
    /* 106DD8 8015F968 A06B0004 */  sb         $t3, 0x4($v1)
    /* 106DDC 8015F96C 1000007E */  b          .L8015FB68_ovl5
    /* 106DE0 8015F970 A0600005 */   sb        $zero, 0x5($v1)
    /* 106DE4 8015F974 A06C0004 */  sb         $t4, 0x4($v1)
  .L8015F978_ovl5:
    /* 106DE8 8015F978 0C006291 */  jal        random_soft_s32_range
    /* 106DEC 8015F97C AFA30018 */   sw        $v1, 0x18($sp)
    /* 106DF0 8015F980 8FA30018 */  lw         $v1, 0x18($sp)
    /* 106DF4 8015F984 244D0001 */  addiu      $t5, $v0, 0x1
    /* 106DF8 8015F988 10000077 */  b          .L8015FB68_ovl5
    /* 106DFC 8015F98C AC6D0000 */   sw        $t5, 0x0($v1)
    /* 106E00 8015F990 906E0008 */  lbu        $t6, 0x8($v1)
  .L8015F994_ovl5:
    /* 106E04 8015F994 240100FF */  addiu      $at, $zero, 0xFF
    /* 106E08 8015F998 24180008 */  addiu      $t8, $zero, 0x8
    /* 106E0C 8015F99C 15C10004 */  bne        $t6, $at, .L8015F9B0_ovl5
    /* 106E10 8015F9A0 24190001 */   addiu     $t9, $zero, 0x1
    /* 106E14 8015F9A4 240F0002 */  addiu      $t7, $zero, 0x2
    /* 106E18 8015F9A8 1000006F */  b          .L8015FB68_ovl5
    /* 106E1C 8015F9AC A06F0004 */   sb        $t7, 0x4($v1)
  .L8015F9B0_ovl5:
    /* 106E20 8015F9B0 A0780004 */  sb         $t8, 0x4($v1)
    /* 106E24 8015F9B4 1000006C */  b          .L8015FB68_ovl5
    /* 106E28 8015F9B8 A0790005 */   sb        $t9, 0x5($v1)
  .L8015F9BC_ovl5:
    /* 106E2C 8015F9BC 24010001 */  addiu      $at, $zero, 0x1
    /* 106E30 8015F9C0 54410037 */  bnel       $v0, $at, .L8015FAA0_ovl5
    /* 106E34 8015F9C4 24010002 */   addiu     $at, $zero, 0x2
    /* 106E38 8015F9C8 90680006 */  lbu        $t0, 0x6($v1)
    /* 106E3C 8015F9CC 3C01C461 */  lui        $at, (0xC4610000 >> 16)
    /* 106E40 8015F9D0 44810000 */  mtc1       $at, $f0
    /* 106E44 8015F9D4 00084880 */  sll        $t1, $t0, 2
    /* 106E48 8015F9D8 00E95021 */  addu       $t2, $a3, $t1
    /* 106E4C 8015F9DC 8D420000 */  lw         $v0, 0x0($t2)
    /* 106E50 8015F9E0 3C0143FA */  lui        $at, (0x43FA0000 >> 16)
    /* 106E54 8015F9E4 00021080 */  sll        $v0, $v0, 2
    /* 106E58 8015F9E8 00C25821 */  addu       $t3, $a2, $v0
    /* 106E5C 8015F9EC C5680000 */  lwc1       $f8, 0x0($t3)
    /* 106E60 8015F9F0 46104281 */  sub.s      $f10, $f8, $f16
    /* 106E64 8015F9F4 4600503C */  c.lt.s     $f10, $f0
    /* 106E68 8015F9F8 00000000 */  nop
    /* 106E6C 8015F9FC 4502001E */  bc1fl      .L8015FA78_ovl5
    /* 106E70 8015FA00 90680007 */   lbu       $t0, 0x7($v1)
    /* 106E74 8015FA04 44819000 */  mtc1       $at, $f18
    /* 106E78 8015FA08 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 106E7C 8015FA0C 00220821 */  addu       $at, $at, $v0
    /* 106E80 8015FA10 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* 106E84 8015FA14 24180003 */  addiu      $t8, $zero, 0x3
    /* 106E88 8015FA18 24040006 */  addiu      $a0, $zero, 0x6
    /* 106E8C 8015FA1C 4604903C */  c.lt.s     $f18, $f4
    /* 106E90 8015FA20 00000000 */  nop
    /* 106E94 8015FA24 4502000D */  bc1fl      .L8015FA5C_ovl5
    /* 106E98 8015FA28 A0780004 */   sb        $t8, 0x4($v1)
    /* 106E9C 8015FA2C 906C0007 */  lbu        $t4, 0x7($v1)
    /* 106EA0 8015FA30 240100FF */  addiu      $at, $zero, 0xFF
    /* 106EA4 8015FA34 240E0008 */  addiu      $t6, $zero, 0x8
    /* 106EA8 8015FA38 15810004 */  bne        $t4, $at, .L8015FA4C_ovl5
    /* 106EAC 8015FA3C 240F0001 */   addiu     $t7, $zero, 0x1
    /* 106EB0 8015FA40 240D0002 */  addiu      $t5, $zero, 0x2
    /* 106EB4 8015FA44 10000048 */  b          .L8015FB68_ovl5
    /* 106EB8 8015FA48 A06D0004 */   sb        $t5, 0x4($v1)
  .L8015FA4C_ovl5:
    /* 106EBC 8015FA4C A06E0004 */  sb         $t6, 0x4($v1)
    /* 106EC0 8015FA50 10000045 */  b          .L8015FB68_ovl5
    /* 106EC4 8015FA54 A06F0005 */   sb        $t7, 0x5($v1)
    /* 106EC8 8015FA58 A0780004 */  sb         $t8, 0x4($v1)
  .L8015FA5C_ovl5:
    /* 106ECC 8015FA5C 0C006291 */  jal        random_soft_s32_range
    /* 106ED0 8015FA60 AFA30018 */   sw        $v1, 0x18($sp)
    /* 106ED4 8015FA64 8FA30018 */  lw         $v1, 0x18($sp)
    /* 106ED8 8015FA68 24590001 */  addiu      $t9, $v0, 0x1
    /* 106EDC 8015FA6C 1000003E */  b          .L8015FB68_ovl5
    /* 106EE0 8015FA70 AC790000 */   sw        $t9, 0x0($v1)
    /* 106EE4 8015FA74 90680007 */  lbu        $t0, 0x7($v1)
  .L8015FA78_ovl5:
    /* 106EE8 8015FA78 240100FF */  addiu      $at, $zero, 0xFF
    /* 106EEC 8015FA7C 24090001 */  addiu      $t1, $zero, 0x1
    /* 106EF0 8015FA80 15010003 */  bne        $t0, $at, .L8015FA90_ovl5
    /* 106EF4 8015FA84 240A0008 */   addiu     $t2, $zero, 0x8
    /* 106EF8 8015FA88 10000037 */  b          .L8015FB68_ovl5
    /* 106EFC 8015FA8C A0690004 */   sb        $t1, 0x4($v1)
  .L8015FA90_ovl5:
    /* 106F00 8015FA90 A06A0004 */  sb         $t2, 0x4($v1)
    /* 106F04 8015FA94 10000034 */  b          .L8015FB68_ovl5
    /* 106F08 8015FA98 A0600005 */   sb        $zero, 0x5($v1)
    /* 106F0C 8015FA9C 24010002 */  addiu      $at, $zero, 0x2
  .L8015FAA0_ovl5:
    /* 106F10 8015FAA0 14410031 */  bne        $v0, $at, .L8015FB68_ovl5
    /* 106F14 8015FAA4 3C0B8005 */   lui       $t3, %hi(omCurrentObj)
    /* 106F18 8015FAA8 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 106F1C 8015FAAC 3C01C461 */  lui        $at, (0xC4610000 >> 16)
    /* 106F20 8015FAB0 44810000 */  mtc1       $at, $f0
    /* 106F24 8015FAB4 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 106F28 8015FAB8 3C014461 */  lui        $at, (0x44610000 >> 16)
    /* 106F2C 8015FABC 44817000 */  mtc1       $at, $f14
    /* 106F30 8015FAC0 000C6880 */  sll        $t5, $t4, 2
    /* 106F34 8015FAC4 00CD7021 */  addu       $t6, $a2, $t5
    /* 106F38 8015FAC8 C5C20000 */  lwc1       $f2, 0x0($t6)
    /* 106F3C 8015FACC 240F0002 */  addiu      $t7, $zero, 0x2
    /* 106F40 8015FAD0 24180001 */  addiu      $t8, $zero, 0x1
    /* 106F44 8015FAD4 4602003C */  c.lt.s     $f0, $f2
    /* 106F48 8015FAD8 24040006 */  addiu      $a0, $zero, 0x6
    /* 106F4C 8015FADC 45020005 */  bc1fl      .L8015FAF4_ovl5
    /* 106F50 8015FAE0 46020301 */   sub.s     $f12, $f0, $f2
    /* 106F54 8015FAE4 46020301 */  sub.s      $f12, $f0, $f2
    /* 106F58 8015FAE8 10000002 */  b          .L8015FAF4_ovl5
    /* 106F5C 8015FAEC 46006307 */   neg.s     $f12, $f12
    /* 106F60 8015FAF0 46020301 */  sub.s      $f12, $f0, $f2
  .L8015FAF4_ovl5:
    /* 106F64 8015FAF4 4602703C */  c.lt.s     $f14, $f2
    /* 106F68 8015FAF8 00000000 */  nop
    /* 106F6C 8015FAFC 45020005 */  bc1fl      .L8015FB14_ovl5
    /* 106F70 8015FB00 46027001 */   sub.s     $f0, $f14, $f2
    /* 106F74 8015FB04 46027001 */  sub.s      $f0, $f14, $f2
    /* 106F78 8015FB08 10000002 */  b          .L8015FB14_ovl5
    /* 106F7C 8015FB0C 46000007 */   neg.s     $f0, $f0
    /* 106F80 8015FB10 46027001 */  sub.s      $f0, $f14, $f2
  .L8015FB14_ovl5:
    /* 106F84 8015FB14 4600603C */  c.lt.s     $f12, $f0
    /* 106F88 8015FB18 00000000 */  nop
    /* 106F8C 8015FB1C 45020004 */  bc1fl      .L8015FB30_ovl5
    /* 106F90 8015FB20 A0780004 */   sb        $t8, 0x4($v1)
    /* 106F94 8015FB24 10000002 */  b          .L8015FB30_ovl5
    /* 106F98 8015FB28 A06F0004 */   sb        $t7, 0x4($v1)
    /* 106F9C 8015FB2C A0780004 */  sb         $t8, 0x4($v1)
  .L8015FB30_ovl5:
    /* 106FA0 8015FB30 0C006291 */  jal        random_soft_s32_range
    /* 106FA4 8015FB34 AFA30018 */   sw        $v1, 0x18($sp)
    /* 106FA8 8015FB38 8FA30018 */  lw         $v1, 0x18($sp)
    /* 106FAC 8015FB3C 2459000A */  addiu      $t9, $v0, 0xA
    /* 106FB0 8015FB40 AC790000 */  sw         $t9, 0x0($v1)
    /* 106FB4 8015FB44 10000009 */  b          .L8015FB6C_ovl5
    /* 106FB8 8015FB48 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 106FBC 8015FB4C A0680004 */  sb         $t0, 0x4($v1)
  .L8015FB50_ovl5:
    /* 106FC0 8015FB50 24040006 */  addiu      $a0, $zero, 0x6
    /* 106FC4 8015FB54 0C006291 */  jal        random_soft_s32_range
    /* 106FC8 8015FB58 AFA30018 */   sw        $v1, 0x18($sp)
    /* 106FCC 8015FB5C 8FA30018 */  lw         $v1, 0x18($sp)
    /* 106FD0 8015FB60 24490001 */  addiu      $t1, $v0, 0x1
    /* 106FD4 8015FB64 AC690000 */  sw         $t1, 0x0($v1)
  .L8015FB68_ovl5:
    /* 106FD8 8015FB68 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8015FB6C_ovl5:
    /* 106FDC 8015FB6C 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 106FE0 8015FB70 03E00008 */  jr         $ra
    /* 106FE4 8015FB74 00000000 */   nop
endlabel func_8015F804_ovl5
.size func_8015F804_ovl5, . - func_8015F804_ovl5
