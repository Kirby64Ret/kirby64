glabel func_801B2DD8_ovl7
/* 158E48 801B2DD8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 158E4C 801B2DDC AFB20020 */  sw         $s2, 0x20($sp)
/* 158E50 801B2DE0 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 158E54 801B2DE4 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 158E58 801B2DE8 8E420000 */  lw         $v0, 0x0($s2)
/* 158E5C 801B2DEC AFBF0024 */  sw         $ra, 0x24($sp)
/* 158E60 801B2DF0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 158E64 801B2DF4 AFB00018 */  sw         $s0, 0x18($sp)
/* 158E68 801B2DF8 AFA40028 */  sw         $a0, 0x28($sp)
/* 158E6C 801B2DFC 8C4E0000 */  lw         $t6, 0x0($v0)
/* 158E70 801B2E00 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 158E74 801B2E04 3C09800E */  lui        $t1, %hi(D_800E1B50)
/* 158E78 801B2E08 000E7880 */  sll        $t7, $t6, 2
/* 158E7C 801B2E0C 002F0821 */  addu       $at, $at, $t7
/* 158E80 801B2E10 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
/* 158E84 801B2E14 8C590000 */  lw         $t9, 0x0($v0)
/* 158E88 801B2E18 3C18801D */  lui        $t8, %hi(D_801CB7D0_ovl7)
/* 158E8C 801B2E1C 2718B7D0 */  addiu      $t8, $t8, %lo(D_801CB7D0_ovl7)
/* 158E90 801B2E20 00194080 */  sll        $t0, $t9, 2
/* 158E94 801B2E24 01284821 */  addu       $t1, $t1, $t0
/* 158E98 801B2E28 8D291B50 */  lw         $t1, %lo(D_800E1B50)($t1)
/* 158E9C 801B2E2C 0C02CCFD */  jal        func_800B33F4
/* 158EA0 801B2E30 AD380098 */   sw        $t8, 0x98($t1)
/* 158EA4 801B2E34 3C040001 */  lui        $a0, (0x1009B >> 16)
/* 158EA8 801B2E38 0C02A806 */  jal        func_800AA018
/* 158EAC 801B2E3C 3484009B */   ori       $a0, $a0, (0x1009B & 0xFFFF)
/* 158EB0 801B2E40 8E420000 */  lw         $v0, 0x0($s2)
/* 158EB4 801B2E44 3C01801D */  lui        $at, %hi(D_801CE2EC_ovl7)
/* 158EB8 801B2E48 C424E2EC */  lwc1       $f4, %lo(D_801CE2EC_ovl7)($at)
/* 158EBC 801B2E4C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 158EC0 801B2E50 3C01800E */  lui        $at, %hi(D_800E3210)
/* 158EC4 801B2E54 44803000 */  mtc1       $zero, $f6
/* 158EC8 801B2E58 000A5880 */  sll        $t3, $t2, 2
/* 158ECC 801B2E5C 002B0821 */  addu       $at, $at, $t3
/* 158ED0 801B2E60 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* 158ED4 801B2E64 8C4C0000 */  lw         $t4, 0x0($v0)
/* 158ED8 801B2E68 3C01800E */  lui        $at, %hi(D_800E3750)
/* 158EDC 801B2E6C 000C6880 */  sll        $t5, $t4, 2
/* 158EE0 801B2E70 002D0821 */  addu       $at, $at, $t5
/* 158EE4 801B2E74 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* 158EE8 801B2E78 8C4E0000 */  lw         $t6, 0x0($v0)
/* 158EEC 801B2E7C 3C01801D */  lui        $at, %hi(D_801CE2F0_ovl7)
/* 158EF0 801B2E80 C428E2F0 */  lwc1       $f8, %lo(D_801CE2F0_ovl7)($at)
/* 158EF4 801B2E84 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 158EF8 801B2E88 000E7880 */  sll        $t7, $t6, 2
/* 158EFC 801B2E8C 002F0821 */  addu       $at, $at, $t7
/* 158F00 801B2E90 0C02BC8C */  jal        func_800AF230
/* 158F04 801B2E94 E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
/* 158F08 801B2E98 14400017 */  bnez       $v0, .L801B2EF8_ovl7
/* 158F0C 801B2E9C 3C11800E */   lui       $s1, %hi(gEntitiesNextPosYArray)
/* 158F10 801B2EA0 3C10800F */  lui        $s0, %hi(D_800EA6E0)
/* 158F14 801B2EA4 2610A6E0 */  addiu      $s0, $s0, %lo(D_800EA6E0)
/* 158F18 801B2EA8 26312790 */  addiu      $s1, $s1, %lo(gEntitiesNextPosYArray)
/* 158F1C 801B2EAC 8E590000 */  lw         $t9, 0x0($s2)
.L801B2EB0_ovl7:
/* 158F20 801B2EB0 8F220000 */  lw         $v0, 0x0($t9)
/* 158F24 801B2EB4 00021080 */  sll        $v0, $v0, 2
/* 158F28 801B2EB8 02024021 */  addu       $t0, $s0, $v0
/* 158F2C 801B2EBC 0222C021 */  addu       $t8, $s1, $v0
/* 158F30 801B2EC0 C7100000 */  lwc1       $f16, 0x0($t8)
/* 158F34 801B2EC4 C50A0000 */  lwc1       $f10, 0x0($t0)
/* 158F38 801B2EC8 460A803E */  c.le.s     $f16, $f10
/* 158F3C 801B2ECC 00000000 */  nop
/* 158F40 801B2ED0 45000003 */  bc1f       .L801B2EE0_ovl7
/* 158F44 801B2ED4 00000000 */   nop
/* 158F48 801B2ED8 0C02CCFD */  jal        func_800B33F4
/* 158F4C 801B2EDC 00000000 */   nop
.L801B2EE0_ovl7:
/* 158F50 801B2EE0 0C002DAF */  jal        finish_current_thread
/* 158F54 801B2EE4 24040001 */   addiu     $a0, $zero, 0x1
/* 158F58 801B2EE8 0C02BC8C */  jal        func_800AF230
/* 158F5C 801B2EEC 00000000 */   nop
/* 158F60 801B2EF0 5040FFEF */  beql       $v0, $zero, .L801B2EB0_ovl7
/* 158F64 801B2EF4 8E590000 */   lw        $t9, 0x0($s2)
.L801B2EF8_ovl7:
/* 158F68 801B2EF8 8E490000 */  lw         $t1, 0x0($s2)
/* 158F6C 801B2EFC 3C10800F */  lui        $s0, %hi(D_800EA6E0)
/* 158F70 801B2F00 3C11800E */  lui        $s1, %hi(gEntitiesNextPosYArray)
/* 158F74 801B2F04 8D220000 */  lw         $v0, 0x0($t1)
/* 158F78 801B2F08 26312790 */  addiu      $s1, $s1, %lo(gEntitiesNextPosYArray)
/* 158F7C 801B2F0C 2610A6E0 */  addiu      $s0, $s0, %lo(D_800EA6E0)
/* 158F80 801B2F10 00021080 */  sll        $v0, $v0, 2
/* 158F84 801B2F14 02025021 */  addu       $t2, $s0, $v0
/* 158F88 801B2F18 02221821 */  addu       $v1, $s1, $v0
/* 158F8C 801B2F1C C4720000 */  lwc1       $f18, 0x0($v1)
/* 158F90 801B2F20 C5400000 */  lwc1       $f0, 0x0($t2)
/* 158F94 801B2F24 4612003C */  c.lt.s     $f0, $f18
/* 158F98 801B2F28 00000000 */  nop
/* 158F9C 801B2F2C 4500000E */  bc1f       .L801B2F68_ovl7
/* 158FA0 801B2F30 00000000 */   nop
.L801B2F34_ovl7:
/* 158FA4 801B2F34 0C002DAF */  jal        finish_current_thread
/* 158FA8 801B2F38 24040001 */   addiu     $a0, $zero, 0x1
/* 158FAC 801B2F3C 8E4B0000 */  lw         $t3, 0x0($s2)
/* 158FB0 801B2F40 8D620000 */  lw         $v0, 0x0($t3)
/* 158FB4 801B2F44 00021080 */  sll        $v0, $v0, 2
/* 158FB8 801B2F48 02026021 */  addu       $t4, $s0, $v0
/* 158FBC 801B2F4C 02221821 */  addu       $v1, $s1, $v0
/* 158FC0 801B2F50 C4640000 */  lwc1       $f4, 0x0($v1)
/* 158FC4 801B2F54 C5800000 */  lwc1       $f0, 0x0($t4)
/* 158FC8 801B2F58 4604003C */  c.lt.s     $f0, $f4
/* 158FCC 801B2F5C 00000000 */  nop
/* 158FD0 801B2F60 4501FFF4 */  bc1t       .L801B2F34_ovl7
/* 158FD4 801B2F64 00000000 */   nop
.L801B2F68_ovl7:
/* 158FD8 801B2F68 0C02CCFD */  jal        func_800B33F4
/* 158FDC 801B2F6C E4600000 */   swc1      $f0, 0x0($v1)
/* 158FE0 801B2F70 3C040001 */  lui        $a0, (0x1009C >> 16)
/* 158FE4 801B2F74 0C02A855 */  jal        func_800AA154
/* 158FE8 801B2F78 3484009C */   ori       $a0, $a0, (0x1009C & 0xFFFF)
/* 158FEC 801B2F7C 8E4E0000 */  lw         $t6, 0x0($s2)
/* 158FF0 801B2F80 8FBF0024 */  lw         $ra, 0x24($sp)
/* 158FF4 801B2F84 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 158FF8 801B2F88 8DCF0000 */  lw         $t7, 0x0($t6)
/* 158FFC 801B2F8C 240D0001 */  addiu      $t5, $zero, 0x1
/* 159000 801B2F90 8FB20020 */  lw         $s2, 0x20($sp)
/* 159004 801B2F94 000FC880 */  sll        $t9, $t7, 2
/* 159008 801B2F98 00390821 */  addu       $at, $at, $t9
/* 15900C 801B2F9C 8FB00018 */  lw         $s0, 0x18($sp)
/* 159010 801B2FA0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 159014 801B2FA4 AC2DDC50 */  sw         $t5, %lo(gEntityVtableIndexArray)($at)
/* 159018 801B2FA8 03E00008 */  jr         $ra
/* 15901C 801B2FAC 27BD0028 */   addiu     $sp, $sp, 0x28
