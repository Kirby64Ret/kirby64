nonmatching func_801F0DFC_ovl9, 0x248

glabel func_801F0DFC_ovl9
    /* 19EE4C 801F0DFC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 19EE50 801F0E00 AFB00020 */  sw         $s0, 0x20($sp)
    /* 19EE54 801F0E04 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 19EE58 801F0E08 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* 19EE5C 801F0E0C 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 19EE60 801F0E10 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 19EE64 801F0E14 AFA40030 */  sw         $a0, 0x30($sp)
    /* 19EE68 801F0E18 8DC30000 */  lw         $v1, 0x0($t6)
    /* 19EE6C 801F0E1C 3C05800F */  lui        $a1, %hi(D_800E98E0)
    /* 19EE70 801F0E20 3C0F800E */  lui        $t7, %hi(D_800E1B50)
    /* 19EE74 801F0E24 00031880 */  sll        $v1, $v1, 2
    /* 19EE78 801F0E28 00A32821 */  addu       $a1, $a1, $v1
    /* 19EE7C 801F0E2C 8CA598E0 */  lw         $a1, %lo(D_800E98E0)($a1)
    /* 19EE80 801F0E30 01E37821 */  addu       $t7, $t7, $v1
    /* 19EE84 801F0E34 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
    /* 19EE88 801F0E38 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 19EE8C 801F0E3C 10A0002D */  beqz       $a1, .L801F0EF4_ovl9
    /* 19EE90 801F0E40 AFAF002C */   sw        $t7, 0x2C($sp)
    /* 19EE94 801F0E44 00230821 */  addu       $at, $at, $v1
    /* 19EE98 801F0E48 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 19EE9C 801F0E4C 8CB8004C */  lw         $t8, 0x4C($a1)
    /* 19EEA0 801F0E50 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 19EEA4 801F0E54 E7040004 */  swc1       $f4, 0x4($t8)
    /* 19EEA8 801F0E58 8E190000 */  lw         $t9, 0x0($s0)
    /* 19EEAC 801F0E5C 8CAA004C */  lw         $t2, 0x4C($a1)
    /* 19EEB0 801F0E60 8F280000 */  lw         $t0, 0x0($t9)
    /* 19EEB4 801F0E64 00084880 */  sll        $t1, $t0, 2
    /* 19EEB8 801F0E68 00290821 */  addu       $at, $at, $t1
    /* 19EEBC 801F0E6C C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 19EEC0 801F0E70 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 19EEC4 801F0E74 E5460008 */  swc1       $f6, 0x8($t2)
    /* 19EEC8 801F0E78 8E0B0000 */  lw         $t3, 0x0($s0)
    /* 19EECC 801F0E7C 8CAE004C */  lw         $t6, 0x4C($a1)
    /* 19EED0 801F0E80 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 19EED4 801F0E84 000C6880 */  sll        $t5, $t4, 2
    /* 19EED8 801F0E88 002D0821 */  addu       $at, $at, $t5
    /* 19EEDC 801F0E8C C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 19EEE0 801F0E90 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* 19EEE4 801F0E94 E5C8000C */  swc1       $f8, 0xC($t6)
    /* 19EEE8 801F0E98 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 19EEEC 801F0E9C 8CA8004C */  lw         $t0, 0x4C($a1)
    /* 19EEF0 801F0EA0 8DF80000 */  lw         $t8, 0x0($t7)
    /* 19EEF4 801F0EA4 0018C880 */  sll        $t9, $t8, 2
    /* 19EEF8 801F0EA8 00390821 */  addu       $at, $at, $t9
    /* 19EEFC 801F0EAC C42A4010 */  lwc1       $f10, %lo(gEntitiesAngleXArray)($at)
    /* 19EF00 801F0EB0 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 19EF04 801F0EB4 E50A0010 */  swc1       $f10, 0x10($t0)
    /* 19EF08 801F0EB8 8E090000 */  lw         $t1, 0x0($s0)
    /* 19EF0C 801F0EBC 8CAC004C */  lw         $t4, 0x4C($a1)
    /* 19EF10 801F0EC0 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 19EF14 801F0EC4 000A5880 */  sll        $t3, $t2, 2
    /* 19EF18 801F0EC8 002B0821 */  addu       $at, $at, $t3
    /* 19EF1C 801F0ECC C43041D0 */  lwc1       $f16, %lo(gEntitiesAngleYArray)($at)
    /* 19EF20 801F0ED0 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
    /* 19EF24 801F0ED4 E5900014 */  swc1       $f16, 0x14($t4)
    /* 19EF28 801F0ED8 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 19EF2C 801F0EDC 8CB8004C */  lw         $t8, 0x4C($a1)
    /* 19EF30 801F0EE0 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 19EF34 801F0EE4 000E7880 */  sll        $t7, $t6, 2
    /* 19EF38 801F0EE8 002F0821 */  addu       $at, $at, $t7
    /* 19EF3C 801F0EEC C4324390 */  lwc1       $f18, %lo(gEntitiesAngleZArray)($at)
    /* 19EF40 801F0EF0 E7120018 */  swc1       $f18, 0x18($t8)
  .L801F0EF4_ovl9:
    /* 19EF44 801F0EF4 0C0680ED */  jal        func_801A03B4_ovl7
    /* 19EF48 801F0EF8 00000000 */   nop
    /* 19EF4C 801F0EFC 24010001 */  addiu      $at, $zero, 0x1
    /* 19EF50 801F0F00 5041000A */  beql       $v0, $at, .L801F0F2C_ovl9
    /* 19EF54 801F0F04 8E0B0000 */   lw        $t3, 0x0($s0)
    /* 19EF58 801F0F08 8E190000 */  lw         $t9, 0x0($s0)
    /* 19EF5C 801F0F0C 3C0A800F */  lui        $t2, %hi(D_800E8920)
    /* 19EF60 801F0F10 8F280000 */  lw         $t0, 0x0($t9)
    /* 19EF64 801F0F14 00084880 */  sll        $t1, $t0, 2
    /* 19EF68 801F0F18 01495021 */  addu       $t2, $t2, $t1
    /* 19EF6C 801F0F1C 8D4A8920 */  lw         $t2, %lo(D_800E8920)($t2)
    /* 19EF70 801F0F20 51400044 */  beql       $t2, $zero, .L801F1034_ovl9
    /* 19EF74 801F0F24 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 19EF78 801F0F28 8E0B0000 */  lw         $t3, 0x0($s0)
  .L801F0F2C_ovl9:
    /* 19EF7C 801F0F2C 3C05800F */  lui        $a1, %hi(D_800E98E0)
    /* 19EF80 801F0F30 8D630000 */  lw         $v1, 0x0($t3)
    /* 19EF84 801F0F34 00031880 */  sll        $v1, $v1, 2
    /* 19EF88 801F0F38 00A32821 */  addu       $a1, $a1, $v1
    /* 19EF8C 801F0F3C 8CA598E0 */  lw         $a1, %lo(D_800E98E0)($a1)
    /* 19EF90 801F0F40 10A0000D */  beqz       $a1, .L801F0F78_ovl9
    /* 19EF94 801F0F44 00000000 */   nop
    /* 19EF98 801F0F48 0C0288B5 */  jal        func_800A22D4
    /* 19EF9C 801F0F4C 00A02025 */   or        $a0, $a1, $zero
    /* 19EFA0 801F0F50 8FAC002C */  lw         $t4, 0x2C($sp)
    /* 19EFA4 801F0F54 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 19EFA8 801F0F58 AD800034 */  sw         $zero, 0x34($t4)
    /* 19EFAC 801F0F5C 8E020000 */  lw         $v0, 0x0($s0)
    /* 19EFB0 801F0F60 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 19EFB4 801F0F64 000D7080 */  sll        $t6, $t5, 2
    /* 19EFB8 801F0F68 002E0821 */  addu       $at, $at, $t6
    /* 19EFBC 801F0F6C AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
    /* 19EFC0 801F0F70 8C430000 */  lw         $v1, 0x0($v0)
    /* 19EFC4 801F0F74 00031880 */  sll        $v1, $v1, 2
  .L801F0F78_ovl9:
    /* 19EFC8 801F0F78 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 19EFCC 801F0F7C 00230821 */  addu       $at, $at, $v1
    /* 19EFD0 801F0F80 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* 19EFD4 801F0F84 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 19EFD8 801F0F88 00230821 */  addu       $at, $at, $v1
    /* 19EFDC 801F0F8C C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
    /* 19EFE0 801F0F90 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
    /* 19EFE4 801F0F94 00E33821 */  addu       $a3, $a3, $v1
    /* 19EFE8 801F0F98 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
    /* 19EFEC 801F0F9C 24040003 */  addiu      $a0, $zero, 0x3
    /* 19EFF0 801F0FA0 24050002 */  addiu      $a1, $zero, 0x2
    /* 19EFF4 801F0FA4 240600F2 */  addiu      $a2, $zero, 0xF2
    /* 19EFF8 801F0FA8 E7A40010 */  swc1       $f4, 0x10($sp)
    /* 19EFFC 801F0FAC 0C029FDD */  jal        func_800A7F74
    /* 19F000 801F0FB0 E7A60014 */   swc1      $f6, 0x14($sp)
    /* 19F004 801F0FB4 8FAF002C */  lw         $t7, 0x2C($sp)
    /* 19F008 801F0FB8 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 19F00C 801F0FBC 8DF80094 */  lw         $t8, 0x94($t7)
    /* 19F010 801F0FC0 8F04001C */  lw         $a0, 0x1C($t8)
    /* 19F014 801F0FC4 50810004 */  beql       $a0, $at, .L801F0FD8_ovl9
    /* 19F018 801F0FC8 8FA8002C */   lw        $t0, 0x2C($sp)
    /* 19F01C 801F0FCC 0C029D9E */  jal        play_sound
    /* 19F020 801F0FD0 00000000 */   nop
    /* 19F024 801F0FD4 8FA8002C */  lw         $t0, 0x2C($sp)
  .L801F0FD8_ovl9:
    /* 19F028 801F0FD8 24190001 */  addiu      $t9, $zero, 0x1
    /* 19F02C 801F0FDC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 19F030 801F0FE0 A1190040 */  sb         $t9, 0x40($t0)
    /* 19F034 801F0FE4 8E090000 */  lw         $t1, 0x0($s0)
    /* 19F038 801F0FE8 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
    /* 19F03C 801F0FEC 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
    /* 19F040 801F0FF0 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 19F044 801F0FF4 000A5880 */  sll        $t3, $t2, 2
    /* 19F048 801F0FF8 008B2021 */  addu       $a0, $a0, $t3
    /* 19F04C 801F0FFC 0C02C7B2 */  jal        assign_new_process_entry
    /* 19F050 801F1000 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 19F054 801F1004 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 19F058 801F1008 3C18800E */  lui        $t8, %hi(D_800E0D50)
    /* 19F05C 801F100C 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* 19F060 801F1010 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 19F064 801F1014 240C0001 */  addiu      $t4, $zero, 0x1
    /* 19F068 801F1018 000E7880 */  sll        $t7, $t6, 2
    /* 19F06C 801F101C 030FC021 */  addu       $t8, $t8, $t7
    /* 19F070 801F1020 8F180D50 */  lw         $t8, %lo(D_800E0D50)($t8)
    /* 19F074 801F1024 0018C880 */  sll        $t9, $t8, 2
    /* 19F078 801F1028 00390821 */  addu       $at, $at, $t9
    /* 19F07C 801F102C AC2C9E20 */  sw         $t4, %lo(D_800E9E20)($at)
    /* 19F080 801F1030 8FBF0024 */  lw         $ra, 0x24($sp)
  .L801F1034_ovl9:
    /* 19F084 801F1034 8FB00020 */  lw         $s0, 0x20($sp)
    /* 19F088 801F1038 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 19F08C 801F103C 03E00008 */  jr         $ra
    /* 19F090 801F1040 00000000 */   nop
endlabel func_801F0DFC_ovl9
.size func_801F0DFC_ovl9, . - func_801F0DFC_ovl9
