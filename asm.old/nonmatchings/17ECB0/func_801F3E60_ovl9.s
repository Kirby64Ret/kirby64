glabel func_801F3E60_ovl9
/* 1A1EB0 801F3E60 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1A1EB4 801F3E64 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1A1EB8 801F3E68 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1A1EBC 801F3E6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A1EC0 801F3E70 AFA40050 */  sw         $a0, 0x50($sp)
/* 1A1EC4 801F3E74 8DC20000 */  lw         $v0, 0x0($t6)
/* 1A1EC8 801F3E78 3C18800F */  lui        $t8, %hi(D_800E9E20)
/* 1A1ECC 801F3E7C 3C0F800E */  lui        $t7, %hi(D_800E1B50)
/* 1A1ED0 801F3E80 00021080 */  sll        $v0, $v0, 2
/* 1A1ED4 801F3E84 0302C021 */  addu       $t8, $t8, $v0
/* 1A1ED8 801F3E88 8F189E20 */  lw         $t8, %lo(D_800E9E20)($t8)
/* 1A1EDC 801F3E8C 01E27821 */  addu       $t7, $t7, $v0
/* 1A1EE0 801F3E90 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
/* 1A1EE4 801F3E94 3C19800F */  lui        $t9, %hi(D_800E98E0)
/* 1A1EE8 801F3E98 13000087 */  beqz       $t8, .L801F40B8_ovl10
/* 1A1EEC 801F3E9C AFAF004C */   sw        $t7, 0x4C($sp)
/* 1A1EF0 801F3EA0 273998E0 */  addiu      $t9, $t9, %lo(D_800E98E0)
/* 1A1EF4 801F3EA4 00591821 */  addu       $v1, $v0, $t9
/* 1A1EF8 801F3EA8 8C680000 */  lw         $t0, 0x0($v1)
/* 1A1EFC 801F3EAC 27A40044 */  addiu      $a0, $sp, 0x44
/* 1A1F00 801F3EB0 2509FFFF */  addiu      $t1, $t0, -0x1
/* 1A1F04 801F3EB4 0C066A40 */  jal        func_8019A900_ovl7
/* 1A1F08 801F3EB8 AC690000 */   sw        $t1, 0x0($v1)
/* 1A1F0C 801F3EBC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1A1F10 801F3EC0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1A1F14 801F3EC4 3C0A800F */  lui        $t2, %hi(D_800E98E0)
/* 1A1F18 801F3EC8 8FAB004C */  lw         $t3, 0x4C($sp)
/* 1A1F1C 801F3ECC 8C620000 */  lw         $v0, 0x0($v1)
/* 1A1F20 801F3ED0 C7A40048 */  lwc1       $f4, 0x48($sp)
/* 1A1F24 801F3ED4 00021080 */  sll        $v0, $v0, 2
/* 1A1F28 801F3ED8 01425021 */  addu       $t2, $t2, $v0
/* 1A1F2C 801F3EDC 8D4A98E0 */  lw         $t2, %lo(D_800E98E0)($t2)
/* 1A1F30 801F3EE0 1D40002E */  bgtz       $t2, .L801F3F9C_ovl9
/* 1A1F34 801F3EE4 00000000 */   nop
/* 1A1F38 801F3EE8 916C003C */  lbu        $t4, 0x3C($t3)
/* 1A1F3C 801F3EEC 8FAD0044 */  lw         $t5, 0x44($sp)
/* 1A1F40 801F3EF0 1580002A */  bnez       $t4, .L801F3F9C_ovl9
/* 1A1F44 801F3EF4 00000000 */   nop
/* 1A1F48 801F3EF8 448D2000 */  mtc1       $t5, $f4
/* 1A1F4C 801F3EFC 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1A1F50 801F3F00 00220821 */  addu       $at, $at, $v0
/* 1A1F54 801F3F04 468021A0 */  cvt.s.w    $f6, $f4
/* 1A1F58 801F3F08 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* 1A1F5C 801F3F0C 46083032 */  c.eq.s     $f6, $f8
/* 1A1F60 801F3F10 00000000 */  nop
/* 1A1F64 801F3F14 45000013 */  bc1f       .L801F3F64_ovl9
/* 1A1F68 801F3F18 00000000 */   nop
/* 1A1F6C 801F3F1C 0C0667C7 */  jal        func_80199F1C_ovl7
/* 1A1F70 801F3F20 8FA40050 */   lw        $a0, 0x50($sp)
/* 1A1F74 801F3F24 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1A1F78 801F3F28 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1A1F7C 801F3F2C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1A1F80 801F3F30 8C620000 */  lw         $v0, 0x0($v1)
/* 1A1F84 801F3F34 00021080 */  sll        $v0, $v0, 2
/* 1A1F88 801F3F38 00220821 */  addu       $at, $at, $v0
/* 1A1F8C 801F3F3C C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
/* 1A1F90 801F3F40 3C01800F */  lui        $at, %hi(D_800EA1A0)
/* 1A1F94 801F3F44 00220821 */  addu       $at, $at, $v0
/* 1A1F98 801F3F48 46005407 */  neg.s      $f16, $f10
/* 1A1F9C 801F3F4C 4600848D */  trunc.w.s  $f18, $f16
/* 1A1FA0 801F3F50 440F9000 */  mfc1       $t7, $f18
/* 1A1FA4 801F3F54 00000000 */  nop
/* 1A1FA8 801F3F58 AC2FA1A0 */  sw         $t7, %lo(D_800EA1A0)($at)
/* 1A1FAC 801F3F5C 8C620000 */  lw         $v0, 0x0($v1)
/* 1A1FB0 801F3F60 00021080 */  sll        $v0, $v0, 2
.L801F3F64_ovl9:
/* 1A1FB4 801F3F64 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1A1FB8 801F3F68 00220821 */  addu       $at, $at, $v0
/* 1A1FBC 801F3F6C 24180002 */  addiu      $t8, $zero, 0x2
glabel D_801F3F70_ovl10
/* 1A1FC0 801F3F70 AC38DC50 */  sw         $t8, %lo(gEntityVtableIndexArray)($at)
/* 1A1FC4 801F3F74 8C790000 */  lw         $t9, 0x0($v1)
/* 1A1FC8 801F3F78 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1A1FCC 801F3F7C 3C05801F */  lui        $a1, %hi(func_801F399C_ovl9)
/* 1A1FD0 801F3F80 00194080 */  sll        $t0, $t9, 2
/* 1A1FD4 801F3F84 00882021 */  addu       $a0, $a0, $t0
/* 1A1FD8 801F3F88 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1A1FDC 801F3F8C 0C02C7B2 */  jal        assign_new_process_entry
/* 1A1FE0 801F3F90 24A5399C */   addiu     $a1, $a1, %lo(func_801F399C_ovl9)
glabel D_801F3F94_ovl10
/* 1A1FE4 801F3F94 10000049 */  b          .L801F40BC_ovl9
/* 1A1FE8 801F3F98 8FBF0014 */   lw        $ra, 0x14($sp)
.L801F3F9C_ovl9:
/* 1A1FEC 801F3F9C 0C066C51 */  jal        func_8019B144_ovl7
/* 1A1FF0 801F3FA0 E7A40038 */   swc1      $f4, 0x38($sp)
/* 1A1FF4 801F3FA4 3C098005 */  lui        $t1, %hi(D_8004A7C4)
glabel D_801F3FA8_ovl10
/* 1A1FF8 801F3FA8 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 1A1FFC 801F3FAC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1A2000 801F3FB0 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* 1A2004 801F3FB4 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1A2008 801F3FB8 000A5880 */  sll        $t3, $t2, 2
/* 1A200C 801F3FBC 002B0821 */  addu       $at, $at, $t3
/* 1A2010 801F3FC0 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1A2014 801F3FC4 0C0061C3 */  jal        atan2f
/* 1A2018 801F3FC8 46060301 */   sub.s     $f12, $f0, $f6
/* 1A201C 801F3FCC 44801000 */  mtc1       $zero, $f2
/* 1A2020 801F3FD0 3C018022 */  lui        $at, %hi(D_8021D900_ovl9)
/* 1A2024 801F3FD4 C428D900 */  lwc1       $f8, %lo(D_8021D900_ovl9)($at)
/* 1A2028 801F3FD8 44060000 */  mfc1       $a2, $f0
/* 1A202C 801F3FDC 27A4002C */  addiu      $a0, $sp, 0x2C
/* 1A2030 801F3FE0 24050004 */  addiu      $a1, $zero, 0x4
/* 1A2034 801F3FE4 E7A20034 */  swc1       $f2, 0x34($sp)
/* 1A2038 801F3FE8 E7A20030 */  swc1       $f2, 0x30($sp)
/* 1A203C 801F3FEC 0C006424 */  jal        lbvector_Rotate
/* 1A2040 801F3FF0 E7A8002C */   swc1      $f8, 0x2C($sp)
/* 1A2044 801F3FF4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1A2048 801F3FF8 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1A204C 801F3FFC C7AA002C */  lwc1       $f10, 0x2C($sp)
/* 1A2050 801F4000 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1A2054 801F4004 8C6C0000 */  lw         $t4, 0x0($v1)
/* 1A2058 801F4008 C7B00030 */  lwc1       $f16, 0x30($sp)
/* 1A205C 801F400C 8FB8004C */  lw         $t8, 0x4C($sp)
/* 1A2060 801F4010 000C6880 */  sll        $t5, $t4, 2
/* 1A2064 801F4014 002D0821 */  addu       $at, $at, $t5
/* 1A2068 801F4018 E42A6690 */  swc1       $f10, %lo(D_800E6690)($at)
/* 1A206C 801F401C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 1A2070 801F4020 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1A2074 801F4024 8FA80044 */  lw         $t0, 0x44($sp)
/* 1A2078 801F4028 000E7880 */  sll        $t7, $t6, 2
/* 1A207C 801F402C 002F0821 */  addu       $at, $at, $t7
/* 1A2080 801F4030 E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
/* 1A2084 801F4034 9319003C */  lbu        $t9, 0x3C($t8)
/* 1A2088 801F4038 57200020 */  bnel       $t9, $zero, .L801F40BC_ovl9
/* 1A208C 801F403C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1A2090 801F4040 44889000 */  mtc1       $t0, $f18
/* 1A2094 801F4044 8C620000 */  lw         $v0, 0x0($v1)
/* 1A2098 801F4048 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1A209C 801F404C 46809120 */  cvt.s.w    $f4, $f18
/* 1A20A0 801F4050 00021080 */  sll        $v0, $v0, 2
/* 1A20A4 801F4054 00220821 */  addu       $at, $at, $v0
/* 1A20A8 801F4058 C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
/* 1A20AC 801F405C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1A20B0 801F4060 00220821 */  addu       $at, $at, $v0
/* 1A20B4 801F4064 46062032 */  c.eq.s     $f4, $f6
/* 1A20B8 801F4068 00000000 */  nop
/* 1A20BC 801F406C 45030013 */  bc1tl      .L801F40BC_ovl9
glabel D_801F4070_ovl10
/* 1A20C0 801F4070 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1A20C4 801F4074 C42064D0 */  lwc1       $f0, %lo(D_800E64D0)($at)
/* 1A20C8 801F4078 44804000 */  mtc1       $zero, $f8
/* 1A20CC 801F407C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1A20D0 801F4080 44815000 */  mtc1       $at, $f10
/* 1A20D4 801F4084 4608003C */  c.lt.s     $f0, $f8
/* 1A20D8 801F4088 00000000 */  nop
/* 1A20DC 801F408C 45020004 */  bc1fl      .L801F40A0_ovl9
/* 1A20E0 801F4090 46000086 */   mov.s     $f2, $f0
glabel D_801F4094_ovl10
/* 1A20E4 801F4094 10000002 */  b          .L801F40A0_ovl9
/* 1A20E8 801F4098 46000087 */   neg.s     $f2, $f0
/* 1A20EC 801F409C 46000086 */  mov.s      $f2, $f0
.L801F40A0_ovl9:
/* 1A20F0 801F40A0 460A103C */  c.lt.s     $f2, $f10
/* 1A20F4 801F40A4 00000000 */  nop
/* 1A20F8 801F40A8 45020004 */  bc1fl      .L801F40BC_ovl9
/* 1A20FC 801F40AC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1A2100 801F40B0 0C0667C7 */  jal        func_80199F1C_ovl7
/* 1A2104 801F40B4 8FA40050 */   lw        $a0, 0x50($sp)
.L801F40B8_ovl10:
/* 1A2108 801F40B8 8FBF0014 */  lw         $ra, 0x14($sp)
.L801F40BC_ovl9:
/* 1A210C 801F40BC 27BD0050 */  addiu      $sp, $sp, 0x50
/* 1A2110 801F40C0 03E00008 */  jr         $ra
/* 1A2114 801F40C4 00000000 */   nop
