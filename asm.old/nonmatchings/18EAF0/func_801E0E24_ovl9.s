glabel func_801E0E24_ovl9
/* 18EE74 801E0E24 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 18EE78 801E0E28 AFB20028 */  sw         $s2, 0x28($sp)
/* 18EE7C 801E0E2C 3C128005 */  lui        $s2, %hi(D_8004A7C4)
.L801E0E30_ovl15:
/* 18EE80 801E0E30 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 18EE84 801E0E34 8E450000 */  lw         $a1, 0x0($s2)
/* 18EE88 801E0E38 AFBF0034 */  sw         $ra, 0x34($sp)
.L801E0E3C_ovl17:
/* 18EE8C 801E0E3C AFB40030 */  sw         $s4, 0x30($sp)
.L801E0E40_ovl15:
/* 18EE90 801E0E40 AFB3002C */  sw         $s3, 0x2C($sp)
.L801E0E44_ovl15:
/* 18EE94 801E0E44 AFB10024 */  sw         $s1, 0x24($sp)
/* 18EE98 801E0E48 AFB00020 */  sw         $s0, 0x20($sp)
/* 18EE9C 801E0E4C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 18EEA0 801E0E50 AFA40038 */  sw         $a0, 0x38($sp)
/* 18EEA4 801E0E54 8CAE0000 */  lw         $t6, 0x0($a1)
/* 18EEA8 801E0E58 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 18EEAC 801E0E5C 3C04801D */  lui        $a0, %hi(D_801CAAAC)
/* 18EEB0 801E0E60 000E7880 */  sll        $t7, $t6, 2
/* 18EEB4 801E0E64 002F0821 */  addu       $at, $at, $t7
.L801E0E68_ovl10:
/* 18EEB8 801E0E68 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
/* 18EEBC 801E0E6C 8CB80000 */  lw         $t8, 0x0($a1)
/* 18EEC0 801E0E70 3C01800E */  lui        $at, %hi(D_800E0490)
.L801E0E74_ovl16:
/* 18EEC4 801E0E74 2484AAAC */  addiu      $a0, $a0, %lo(D_801CAAAC)
glabel func_801E0E78_ovl10
/* 18EEC8 801E0E78 0018C880 */  sll        $t9, $t8, 2
/* 18EECC 801E0E7C 00390821 */  addu       $at, $at, $t9
.L801E0E80_ovl13:
/* 18EED0 801E0E80 0C068AB7 */  jal        func_801A2ADC_ovl7
/* 18EED4 801E0E84 AC240490 */   sw        $a0, %lo(D_800E0490)($at)
/* 18EED8 801E0E88 8E4A0000 */  lw         $t2, 0x0($s2)
/* 18EEDC 801E0E8C 3C0D800E */  lui        $t5, %hi(D_800E1B50)
/* 18EEE0 801E0E90 3C018022 */  lui        $at, %hi(D_8021CFA0_ovl9)
/* 18EEE4 801E0E94 8D4B0000 */  lw         $t3, 0x0($t2)
/* 18EEE8 801E0E98 3C09801D */  lui        $t1, %hi(D_801CB9C8)
/* 18EEEC 801E0E9C C42CCFA0 */  lwc1       $f12, %lo(D_8021CFA0_ovl9)($at)
/* 18EEF0 801E0EA0 000B6080 */  sll        $t4, $t3, 2
/* 18EEF4 801E0EA4 01AC6821 */  addu       $t5, $t5, $t4
/* 18EEF8 801E0EA8 8DAD1B50 */  lw         $t5, %lo(D_800E1B50)($t5)
/* 18EEFC 801E0EAC 2529B9C8 */  addiu      $t1, $t1, %lo(D_801CB9C8)
/* 18EF00 801E0EB0 44801000 */  mtc1       $zero, $f2
/* 18EF04 801E0EB4 ADA90098 */  sw         $t1, 0x98($t5)
/* 18EF08 801E0EB8 8E450000 */  lw         $a1, 0x0($s2)
.L801E0EBC_ovl12:
/* 18EF0C 801E0EBC 3C04800E */  lui        $a0, %hi(D_800E6690)
/* 18EF10 801E0EC0 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
/* 18EF14 801E0EC4 8CAE0000 */  lw         $t6, 0x0($a1)
/* 18EF18 801E0EC8 3C06800E */  lui        $a2, %hi(D_800E64D0)
/* 18EF1C 801E0ECC 24C664D0 */  addiu      $a2, $a2, %lo(D_800E64D0)
/* 18EF20 801E0ED0 000E7880 */  sll        $t7, $t6, 2
/* 18EF24 801E0ED4 008FC021 */  addu       $t8, $a0, $t7
/* 18EF28 801E0ED8 E7020000 */  swc1       $f2, 0x0($t8)
.L801E0EDC_ovl10:
/* 18EF2C 801E0EDC 8CA20000 */  lw         $v0, 0x0($a1)
/* 18EF30 801E0EE0 3C01800E */  lui        $at, %hi(D_800E6850)
/* 18EF34 801E0EE4 3C07800E */  lui        $a3, %hi(D_800E3910)
/* 18EF38 801E0EE8 00021080 */  sll        $v0, $v0, 2
/* 18EF3C 801E0EEC 0082C821 */  addu       $t9, $a0, $v0
.L801E0EF0_ovl12:
/* 18EF40 801E0EF0 C7240000 */  lwc1       $f4, 0x0($t9)
.L801E0EF4_ovl10:
/* 18EF44 801E0EF4 00C25021 */  addu       $t2, $a2, $v0
.L801E0EF8_ovl16:
/* 18EF48 801E0EF8 24E73910 */  addiu      $a3, $a3, %lo(D_800E3910)
/* 18EF4C 801E0EFC E5440000 */  swc1       $f4, 0x0($t2)
/* 18EF50 801E0F00 8CAB0000 */  lw         $t3, 0x0($a1)
glabel func_801E0F04_ovl16
/* 18EF54 801E0F04 3C08800E */  lui        $t0, %hi(D_800E3E50)
/* 18EF58 801E0F08 25083E50 */  addiu      $t0, $t0, %lo(D_800E3E50)
/* 18EF5C 801E0F0C 000B6080 */  sll        $t4, $t3, 2
/* 18EF60 801E0F10 002C0821 */  addu       $at, $at, $t4
/* 18EF64 801E0F14 E42C6850 */  swc1       $f12, %lo(D_800E6850)($at)
/* 18EF68 801E0F18 8CA90000 */  lw         $t1, 0x0($a1)
/* 18EF6C 801E0F1C 3C01800E */  lui        $at, %hi(D_800E3590)
/* 18EF70 801E0F20 3C13800E */  lui        $s3, %hi(D_800E3C90)
/* 18EF74 801E0F24 00096880 */  sll        $t5, $t1, 2
.L801E0F28_ovl10:
/* 18EF78 801E0F28 00ED7021 */  addu       $t6, $a3, $t5
/* 18EF7C 801E0F2C E5C20000 */  swc1       $f2, 0x0($t6)
/* 18EF80 801E0F30 8CA20000 */  lw         $v0, 0x0($a1)
/* 18EF84 801E0F34 26733C90 */  addiu      $s3, $s3, %lo(D_800E3C90)
/* 18EF88 801E0F38 3C14800E */  lui        $s4, %hi(D_800E3750)
/* 18EF8C 801E0F3C 00021080 */  sll        $v0, $v0, 2
.L801E0F40_ovl10:
/* 18EF90 801E0F40 00E27821 */  addu       $t7, $a3, $v0
glabel func_801E0F44_ovl15
/* 18EF94 801E0F44 C5E00000 */  lwc1       $f0, 0x0($t7)
/* 18EF98 801E0F48 00220821 */  addu       $at, $at, $v0
/* 18EF9C 801E0F4C 26943750 */  addiu      $s4, $s4, %lo(D_800E3750)
/* 18EFA0 801E0F50 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 18EFA4 801E0F54 8CB80000 */  lw         $t8, 0x0($a1)
.L801E0F58_ovl10:
/* 18EFA8 801E0F58 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 18EFAC 801E0F5C 3C040001 */  lui        $a0, (0x101B3 >> 16)
.L801E0F60_ovl16:
/* 18EFB0 801E0F60 0018C880 */  sll        $t9, $t8, 2
/* 18EFB4 801E0F64 00390821 */  addu       $at, $at, $t9
.L801E0F68_ovl17:
/* 18EFB8 801E0F68 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
/* 18EFBC 801E0F6C 8CAA0000 */  lw         $t2, 0x0($a1)
/* 18EFC0 801E0F70 3C01800E */  lui        $at, %hi(D_800E3050)
/* 18EFC4 801E0F74 000A5880 */  sll        $t3, $t2, 2
/* 18EFC8 801E0F78 002B0821 */  addu       $at, $at, $t3
.L801E0F7C_ovl17:
/* 18EFCC 801E0F7C E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
/* 18EFD0 801E0F80 8CAC0000 */  lw         $t4, 0x0($a1)
/* 18EFD4 801E0F84 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 18EFD8 801E0F88 000C4880 */  sll        $t1, $t4, 2
.L801E0F8C_ovl10:
/* 18EFDC 801E0F8C 01096821 */  addu       $t5, $t0, $t1
/* 18EFE0 801E0F90 E5AC0000 */  swc1       $f12, 0x0($t5)
/* 18EFE4 801E0F94 8CA20000 */  lw         $v0, 0x0($a1)
.L801E0F98_ovl12:
/* 18EFE8 801E0F98 00021080 */  sll        $v0, $v0, 2
/* 18EFEC 801E0F9C 01027021 */  addu       $t6, $t0, $v0
/* 18EFF0 801E0FA0 C5C60000 */  lwc1       $f6, 0x0($t6)
.L801E0FA4_ovl10:
/* 18EFF4 801E0FA4 00220821 */  addu       $at, $at, $v0
glabel func_801E0FA8_ovl14
/* 18EFF8 801E0FA8 E4263AD0 */  swc1       $f6, %lo(D_800E3AD0)($at)
/* 18EFFC 801E0FAC 8CA20000 */  lw         $v0, 0x0($a1)
glabel func_801E0FB0_ovl14
/* 18F000 801E0FB0 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 18F004 801E0FB4 00021080 */  sll        $v0, $v0, 2
/* 18F008 801E0FB8 00220821 */  addu       $at, $at, $v0
/* 18F00C 801E0FBC C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
.L801E0FC0_ovl10:
/* 18F010 801E0FC0 00C27821 */  addu       $t7, $a2, $v0
/* 18F014 801E0FC4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
glabel func_801E0FC8_ovl12
/* 18F018 801E0FC8 E5E80000 */  swc1       $f8, 0x0($t7)
/* 18F01C 801E0FCC 8CB80000 */  lw         $t8, 0x0($a1)
/* 18F020 801E0FD0 44815000 */  mtc1       $at, $f10
.L801E0FD4_ovl10:
/* 18F024 801E0FD4 3C01800F */  lui        $at, %hi(D_800EB320)
.L801E0FD8_ovl15:
/* 18F028 801E0FD8 0018C880 */  sll        $t9, $t8, 2
.L801E0FDC_ovl17:
/* 18F02C 801E0FDC 02795021 */  addu       $t2, $s3, $t9
/* 18F030 801E0FE0 E54A0000 */  swc1       $f10, 0x0($t2)
/* 18F034 801E0FE4 8CA20000 */  lw         $v0, 0x0($a1)
.L801E0FE8_ovl16:
/* 18F038 801E0FE8 00021080 */  sll        $v0, $v0, 2
/* 18F03C 801E0FEC 02821821 */  addu       $v1, $s4, $v0
.L801E0FF0_ovl17:
/* 18F040 801E0FF0 C4700000 */  lwc1       $f16, 0x0($v1)
.L801E0FF4_ovl15:
/* 18F044 801E0FF4 00220821 */  addu       $at, $at, $v0
/* 18F048 801E0FF8 46101032 */  c.eq.s     $f2, $f16
.L801E0FFC_ovl10:
/* 18F04C 801E0FFC 00000000 */  nop
.L801E1000_ovl16:
/* 18F050 801E1000 45000006 */  bc1f       .L801E101C_ovl9
/* 18F054 801E1004 00000000 */   nop
/* 18F058 801E1008 C432B320 */  lwc1       $f18, %lo(D_800EB320)($at)
glabel func_801E100C_ovl10
/* 18F05C 801E100C 3C018022 */  lui        $at, %hi(D_8021CFA4_ovl9)
/* 18F060 801E1010 C424CFA4 */  lwc1       $f4, %lo(D_8021CFA4_ovl9)($at)
/* 18F064 801E1014 46049182 */  mul.s      $f6, $f18, $f4
/* 18F068 801E1018 E4660000 */  swc1       $f6, 0x0($v1)
.L801E101C_ovl9:
/* 18F06C 801E101C 0C02A7A9 */  jal        func_800A9EA4
/* 18F070 801E1020 348401B3 */   ori       $a0, $a0, (0x101B3 & 0xFFFF)
/* 18F074 801E1024 8E450000 */  lw         $a1, 0x0($s2)
.L801E1028_ovl13:
/* 18F078 801E1028 3C10800F */  lui        $s0, %hi(D_800E9C60)
/* 18F07C 801E102C 26109C60 */  addiu      $s0, $s0, %lo(D_800E9C60)
.L801E1030_ovl15:
/* 18F080 801E1030 8CAB0000 */  lw         $t3, 0x0($a1)
/* 18F084 801E1034 3C11800E */  lui        $s1, %hi(D_800E3210)
/* 18F088 801E1038 000B6080 */  sll        $t4, $t3, 2
/* 18F08C 801E103C 020C1021 */  addu       $v0, $s0, $t4
/* 18F090 801E1040 8C430000 */  lw         $v1, 0x0($v0)
/* 18F094 801E1044 0003202A */  slt        $a0, $zero, $v1
.L801E1048_ovl15:
/* 18F098 801E1048 2469FFFF */  addiu      $t1, $v1, -0x1
/* 18F09C 801E104C 10800023 */  beqz       $a0, .L801E10DC_ovl9
.L801E1050_ovl17:
/* 18F0A0 801E1050 AC490000 */   sw        $t1, 0x0($v0)
/* 18F0A4 801E1054 4480A000 */  mtc1       $zero, $f20
.L801E1058_ovl13:
/* 18F0A8 801E1058 26313210 */  addiu      $s1, $s1, %lo(D_800E3210)
.L801E105C_ovl9:
/* 18F0AC 801E105C 8CA20000 */  lw         $v0, 0x0($a1)
/* 18F0B0 801E1060 00021080 */  sll        $v0, $v0, 2
.L801E1064_ovl17:
/* 18F0B4 801E1064 02226821 */  addu       $t5, $s1, $v0
/* 18F0B8 801E1068 C5A00000 */  lwc1       $f0, 0x0($t5)
/* 18F0BC 801E106C 02627021 */  addu       $t6, $s3, $v0
/* 18F0C0 801E1070 02821821 */  addu       $v1, $s4, $v0
/* 18F0C4 801E1074 4614003C */  c.lt.s     $f0, $f20
/* 18F0C8 801E1078 00000000 */  nop
/* 18F0CC 801E107C 45020004 */  bc1fl      .L801E1090_ovl9
/* 18F0D0 801E1080 46000086 */   mov.s     $f2, $f0
/* 18F0D4 801E1084 10000002 */  b          .L801E1090_ovl9
/* 18F0D8 801E1088 46000087 */   neg.s     $f2, $f0
.L801E108C_ovl12:
/* 18F0DC 801E108C 46000086 */  mov.s      $f2, $f0
.L801E1090_ovl9:
/* 18F0E0 801E1090 C5C80000 */  lwc1       $f8, 0x0($t6)
.L801E1094_ovl12:
/* 18F0E4 801E1094 46081032 */  c.eq.s     $f2, $f8
/* 18F0E8 801E1098 00000000 */  nop
glabel func_801E109C_ovl17
/* 18F0EC 801E109C 45000004 */  bc1f       .L801E10B0_ovl9
/* 18F0F0 801E10A0 00000000 */   nop
.L801E10A4_ovl12:
/* 18F0F4 801E10A4 C46A0000 */  lwc1       $f10, 0x0($v1)
/* 18F0F8 801E10A8 46005407 */  neg.s      $f16, $f10
/* 18F0FC 801E10AC E4700000 */  swc1       $f16, 0x0($v1)
.L801E10B0_ovl9:
/* 18F100 801E10B0 0C002DAF */  jal        finish_current_thread
/* 18F104 801E10B4 24040001 */   addiu     $a0, $zero, 0x1
.L801E10B8_ovl12:
/* 18F108 801E10B8 8E450000 */  lw         $a1, 0x0($s2)
/* 18F10C 801E10BC 8CAF0000 */  lw         $t7, 0x0($a1)
/* 18F110 801E10C0 000FC080 */  sll        $t8, $t7, 2
glabel func_801E10C4_ovl12
/* 18F114 801E10C4 02181021 */  addu       $v0, $s0, $t8
/* 18F118 801E10C8 8C430000 */  lw         $v1, 0x0($v0)
/* 18F11C 801E10CC 0003202A */  slt        $a0, $zero, $v1
/* 18F120 801E10D0 2479FFFF */  addiu      $t9, $v1, -0x1
/* 18F124 801E10D4 1480FFE1 */  bnez       $a0, .L801E105C_ovl9
/* 18F128 801E10D8 AC590000 */   sw        $t9, 0x0($v0)
.L801E10DC_ovl9:
/* 18F12C 801E10DC 8CAB0000 */  lw         $t3, 0x0($a1)
/* 18F130 801E10E0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 18F134 801E10E4 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 18F138 801E10E8 000B6080 */  sll        $t4, $t3, 2
/* 18F13C 801E10EC 002C0821 */  addu       $at, $at, $t4
/* 18F140 801E10F0 240A0002 */  addiu      $t2, $zero, 0x2
/* 18F144 801E10F4 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 18F148 801E10F8 8FB00020 */  lw         $s0, 0x20($sp)
/* 18F14C 801E10FC 8FB10024 */  lw         $s1, 0x24($sp)
/* 18F150 801E1100 8FB20028 */  lw         $s2, 0x28($sp)
/* 18F154 801E1104 8FB3002C */  lw         $s3, 0x2C($sp)
/* 18F158 801E1108 8FB40030 */  lw         $s4, 0x30($sp)
/* 18F15C 801E110C AC2ADC50 */  sw         $t2, %lo(gEntityVtableIndexArray)($at)
/* 18F160 801E1110 03E00008 */  jr         $ra
/* 18F164 801E1114 27BD0038 */   addiu     $sp, $sp, 0x38
