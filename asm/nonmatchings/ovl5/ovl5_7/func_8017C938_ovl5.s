nonmatching func_8017C938_ovl5, 0x158

glabel func_8017C938_ovl5
    /* 123DA8 8017C938 3C0E800C */  lui        $t6, %hi(gGameState)
    /* 123DAC 8017C93C 8DCEE4F0 */  lw         $t6, %lo(gGameState)($t6)
    /* 123DB0 8017C940 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 123DB4 8017C944 2401001B */  addiu      $at, $zero, 0x1B
    /* 123DB8 8017C948 11C10045 */  beq        $t6, $at, .L8017CA60_ovl5
    /* 123DBC 8017C94C AFBF0014 */   sw        $ra, 0x14($sp)
    /* 123DC0 8017C950 3C05800D */  lui        $a1, %hi(D_800D7178)
    /* 123DC4 8017C954 24A57178 */  addiu      $a1, $a1, %lo(D_800D7178)
    /* 123DC8 8017C958 3C028019 */  lui        $v0, %hi(D_8018ED38_ovl5)
    /* 123DCC 8017C95C 2442ED38 */  addiu      $v0, $v0, %lo(D_8018ED38_ovl5)
    /* 123DD0 8017C960 3C038019 */  lui        $v1, %hi(D_8018ED18_ovl5)
    /* 123DD4 8017C964 3C048019 */  lui        $a0, %hi(D_8018ED28_ovl5)
    /* 123DD8 8017C968 904F0000 */  lbu        $t7, 0x0($v0)
    /* 123DDC 8017C96C 90580001 */  lbu        $t8, 0x1($v0)
    /* 123DE0 8017C970 2484ED28 */  addiu      $a0, $a0, %lo(D_8018ED28_ovl5)
    /* 123DE4 8017C974 2463ED18 */  addiu      $v1, $v1, %lo(D_8018ED18_ovl5)
    /* 123DE8 8017C978 ACAF0000 */  sw         $t7, 0x0($a1)
    /* 123DEC 8017C97C ACB80010 */  sw         $t8, 0x10($a1)
    /* 123DF0 8017C980 90590002 */  lbu        $t9, 0x2($v0)
    /* 123DF4 8017C984 90480003 */  lbu        $t0, 0x3($v0)
    /* 123DF8 8017C988 8C690000 */  lw         $t1, 0x0($v1)
    /* 123DFC 8017C98C 8C6A0004 */  lw         $t2, 0x4($v1)
    /* 123E00 8017C990 8C6B0008 */  lw         $t3, 0x8($v1)
    /* 123E04 8017C994 8C6C000C */  lw         $t4, 0xC($v1)
    /* 123E08 8017C998 8C8D0000 */  lw         $t5, 0x0($a0)
    /* 123E0C 8017C99C 8C8E0004 */  lw         $t6, 0x4($a0)
    /* 123E10 8017C9A0 8C8F0008 */  lw         $t7, 0x8($a0)
    /* 123E14 8017C9A4 8C98000C */  lw         $t8, 0xC($a0)
    /* 123E18 8017C9A8 ACB90020 */  sw         $t9, 0x20($a1)
    /* 123E1C 8017C9AC ACA80030 */  sw         $t0, 0x30($a1)
    /* 123E20 8017C9B0 ACA90004 */  sw         $t1, 0x4($a1)
    /* 123E24 8017C9B4 ACAA0014 */  sw         $t2, 0x14($a1)
    /* 123E28 8017C9B8 ACAB0024 */  sw         $t3, 0x24($a1)
    /* 123E2C 8017C9BC ACAC0034 */  sw         $t4, 0x34($a1)
    /* 123E30 8017C9C0 ACAD0008 */  sw         $t5, 0x8($a1)
    /* 123E34 8017C9C4 ACAE0018 */  sw         $t6, 0x18($a1)
    /* 123E38 8017C9C8 ACAF0028 */  sw         $t7, 0x28($a1)
    /* 123E3C 8017C9CC 0C05E7C8 */  jal        func_80179F20_ovl5
    /* 123E40 8017C9D0 ACB80038 */   sw        $t8, 0x38($a1)
    /* 123E44 8017C9D4 3C05800D */  lui        $a1, %hi(D_800D7178)
    /* 123E48 8017C9D8 10400005 */  beqz       $v0, .L8017C9F0_ovl5
    /* 123E4C 8017C9DC 24A57178 */   addiu     $a1, $a1, %lo(D_800D7178)
    /* 123E50 8017C9E0 3C198019 */  lui        $t9, %hi(D_8018ED10_ovl5)
    /* 123E54 8017C9E4 8F39ED10 */  lw         $t9, %lo(D_8018ED10_ovl5)($t9)
    /* 123E58 8017C9E8 10000004 */  b          .L8017C9FC_ovl5
    /* 123E5C 8017C9EC ACB90040 */   sw        $t9, 0x40($a1)
  .L8017C9F0_ovl5:
    /* 123E60 8017C9F0 3C088019 */  lui        $t0, %hi(D_8018ED0C_ovl5)
    /* 123E64 8017C9F4 8D08ED0C */  lw         $t0, %lo(D_8018ED0C_ovl5)($t0)
    /* 123E68 8017C9F8 ACA80040 */  sw         $t0, 0x40($a1)
  .L8017C9FC_ovl5:
    /* 123E6C 8017C9FC 3C02800D */  lui        $v0, %hi(D_800D7178)
    /* 123E70 8017CA00 3C04800D */  lui        $a0, %hi(D_800D7178 + 0x40)
    /* 123E74 8017CA04 00001825 */  or         $v1, $zero, $zero
    /* 123E78 8017CA08 248471B8 */  addiu      $a0, $a0, %lo(D_800D7178 + 0x40)
    /* 123E7C 8017CA0C 24427178 */  addiu      $v0, $v0, %lo(D_800D7178)
    /* 123E80 8017CA10 8C490000 */  lw         $t1, 0x0($v0)
  .L8017CA14_ovl5:
    /* 123E84 8017CA14 24420010 */  addiu      $v0, $v0, 0x10
    /* 123E88 8017CA18 0044082B */  sltu       $at, $v0, $a0
    /* 123E8C 8017CA1C 15200002 */  bnez       $t1, .L8017CA28_ovl5
    /* 123E90 8017CA20 00000000 */   nop
    /* 123E94 8017CA24 24630001 */  addiu      $v1, $v1, 0x1
  .L8017CA28_ovl5:
    /* 123E98 8017CA28 5420FFFA */  bnel       $at, $zero, .L8017CA14_ovl5
    /* 123E9C 8017CA2C 8C490000 */   lw        $t1, 0x0($v0)
    /* 123EA0 8017CA30 8CAA0068 */  lw         $t2, 0x68($a1)
    /* 123EA4 8017CA34 3C01800D */  lui        $at, %hi(D_800D7178 + 0x48)
    /* 123EA8 8017CA38 506A0009 */  beql       $v1, $t2, .L8017CA60_ovl5
    /* 123EAC 8017CA3C ACA30068 */   sw        $v1, 0x68($a1)
    /* 123EB0 8017CA40 AC2071C0 */  sw         $zero, %lo(D_800D7178 + 0x48)($at)
    /* 123EB4 8017CA44 3C01800D */  lui        $at, %hi(D_800D7178 + 0x4C)
    /* 123EB8 8017CA48 AC2071C4 */  sw         $zero, %lo(D_800D7178 + 0x4C)($at)
    /* 123EBC 8017CA4C 3C01800D */  lui        $at, %hi(D_800D7178 + 0x50)
    /* 123EC0 8017CA50 AC2071C8 */  sw         $zero, %lo(D_800D7178 + 0x50)($at)
    /* 123EC4 8017CA54 3C01800D */  lui        $at, %hi(D_800D7178 + 0x54)
    /* 123EC8 8017CA58 AC2071CC */  sw         $zero, %lo(D_800D7178 + 0x54)($at)
    /* 123ECC 8017CA5C ACA30068 */  sw         $v1, 0x68($a1)
  .L8017CA60_ovl5:
    /* 123ED0 8017CA60 00002025 */  or         $a0, $zero, $zero
    /* 123ED4 8017CA64 00002825 */  or         $a1, $zero, $zero
    /* 123ED8 8017CA68 0C0295D1 */  jal        utilSetRectColorFullScreen
    /* 123EDC 8017CA6C 00003025 */   or        $a2, $zero, $zero
    /* 123EE0 8017CA70 00002025 */  or         $a0, $zero, $zero
    /* 123EE4 8017CA74 24050010 */  addiu      $a1, $zero, 0x10
    /* 123EE8 8017CA78 0C029685 */  jal        utilSpawnRect
    /* 123EEC 8017CA7C 24060002 */   addiu     $a2, $zero, 0x2
    /* 123EF0 8017CA80 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 123EF4 8017CA84 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 123EF8 8017CA88 03E00008 */  jr         $ra
    /* 123EFC 8017CA8C 00000000 */   nop
endlabel func_8017C938_ovl5
.size func_8017C938_ovl5, . - func_8017C938_ovl5
