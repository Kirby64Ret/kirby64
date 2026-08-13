nonmatching func_801A0D74_ovl7, 0x9B0

glabel func_801A0D74_ovl7
    /* 146DE4 801A0D74 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 146DE8 801A0D78 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 146DEC 801A0D7C 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 146DF0 801A0D80 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 146DF4 801A0D84 AFA40038 */  sw         $a0, 0x38($sp)
    /* 146DF8 801A0D88 8DC30000 */  lw         $v1, 0x0($t6)
    /* 146DFC 801A0D8C 3C02800E */  lui        $v0, %hi(D_800E1B50)
    /* 146E00 801A0D90 00031880 */  sll        $v1, $v1, 2
    /* 146E04 801A0D94 00431021 */  addu       $v0, $v0, $v1
    /* 146E08 801A0D98 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
    /* 146E0C 801A0D9C 8C450084 */  lw         $a1, 0x84($v0)
    /* 146E10 801A0DA0 54A00004 */  bnel       $a1, $zero, .L801A0DB4_ovl7
    /* 146E14 801A0DA4 8C4F0048 */   lw        $t7, 0x48($v0)
    /* 146E18 801A0DA8 1000025A */  b          .L801A1714_ovl7
    /* 146E1C 801A0DAC 00001025 */   or        $v0, $zero, $zero
    /* 146E20 801A0DB0 8C4F0048 */  lw         $t7, 0x48($v0)
  .L801A0DB4_ovl7:
    /* 146E24 801A0DB4 2401FFFF */  addiu      $at, $zero, -0x1
    /* 146E28 801A0DB8 3C18800F */  lui        $t8, %hi(D_800E8920)
    /* 146E2C 801A0DBC 15E10003 */  bne        $t7, $at, .L801A0DCC_ovl7
    /* 146E30 801A0DC0 0303C021 */   addu      $t8, $t8, $v1
    /* 146E34 801A0DC4 10000253 */  b          .L801A1714_ovl7
    /* 146E38 801A0DC8 00001025 */   or        $v0, $zero, $zero
  .L801A0DCC_ovl7:
    /* 146E3C 801A0DCC 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 146E40 801A0DD0 00230821 */  addu       $at, $at, $v1
    /* 146E44 801A0DD4 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 146E48 801A0DD8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 146E4C 801A0DDC 00230821 */  addu       $at, $at, $v1
    /* 146E50 801A0DE0 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 146E54 801A0DE4 3C19800E */  lui        $t9, %hi(gEntityFuncListIDArray)
    /* 146E58 801A0DE8 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 146E5C 801A0DEC 0323C821 */  addu       $t9, $t9, $v1
    /* 146E60 801A0DF0 00230821 */  addu       $at, $at, $v1
    /* 146E64 801A0DF4 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
    /* 146E68 801A0DF8 8F39DC50 */  lw         $t9, %lo(gEntityFuncListIDArray)($t9)
    /* 146E6C 801A0DFC C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 146E70 801A0E00 00A02025 */  or         $a0, $a1, $zero
    /* 146E74 801A0E04 AFA20028 */  sw         $v0, 0x28($sp)
    /* 146E78 801A0E08 AFA50024 */  sw         $a1, 0x24($sp)
    /* 146E7C 801A0E0C E7A40018 */  swc1       $f4, 0x18($sp)
    /* 146E80 801A0E10 E7A6001C */  swc1       $f6, 0x1C($sp)
    /* 146E84 801A0E14 AFB80034 */  sw         $t8, 0x34($sp)
    /* 146E88 801A0E18 AFB90030 */  sw         $t9, 0x30($sp)
    /* 146E8C 801A0E1C 0C0685C9 */  jal        func_801A1724_ovl7
    /* 146E90 801A0E20 E7A80020 */   swc1      $f8, 0x20($sp)
    /* 146E94 801A0E24 8FAB0028 */  lw         $t3, 0x28($sp)
    /* 146E98 801A0E28 3C0C8011 */  lui        $t4, %hi(func_8010B480)
    /* 146E9C 801A0E2C 258CB480 */  addiu      $t4, $t4, %lo(func_8010B480)
    /* 146EA0 801A0E30 8D620048 */  lw         $v0, 0x48($t3)
    /* 146EA4 801A0E34 3C0D8011 */  lui        $t5, %hi(func_8010B284)
    /* 146EA8 801A0E38 25ADB284 */  addiu      $t5, $t5, %lo(func_8010B284)
    /* 146EAC 801A0E3C 11820009 */  beq        $t4, $v0, .L801A0E64_ovl7
    /* 146EB0 801A0E40 00000000 */   nop
    /* 146EB4 801A0E44 11A20007 */  beq        $t5, $v0, .L801A0E64_ovl7
    /* 146EB8 801A0E48 3C0E8011 */   lui       $t6, %hi(func_8010B67C)
    /* 146EBC 801A0E4C 25CEB67C */  addiu      $t6, $t6, %lo(func_8010B67C)
    /* 146EC0 801A0E50 11C20004 */  beq        $t6, $v0, .L801A0E64_ovl7
    /* 146EC4 801A0E54 3C0F8011 */   lui       $t7, %hi(func_8010B860)
    /* 146EC8 801A0E58 25EFB860 */  addiu      $t7, $t7, %lo(func_8010B860)
    /* 146ECC 801A0E5C 15E2000B */  bne        $t7, $v0, .L801A0E8C_ovl7
    /* 146ED0 801A0E60 3C0C8005 */   lui       $t4, %hi(omCurrentObj)
  .L801A0E64_ovl7:
    /* 146ED4 801A0E64 0040F809 */  jalr       $v0
    /* 146ED8 801A0E68 8FA40024 */   lw        $a0, 0x24($sp)
    /* 146EDC 801A0E6C 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 146EE0 801A0E70 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 146EE4 801A0E74 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 146EE8 801A0E78 8F190000 */  lw         $t9, 0x0($t8)
    /* 146EEC 801A0E7C 00195880 */  sll        $t3, $t9, 2
    /* 146EF0 801A0E80 002B0821 */  addu       $at, $at, $t3
    /* 146EF4 801A0E84 10000055 */  b          .L801A0FDC_ovl7
    /* 146EF8 801A0E88 AC228920 */   sw        $v0, %lo(D_800E8920)($at)
  .L801A0E8C_ovl7:
    /* 146EFC 801A0E8C 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* 146F00 801A0E90 3C0E800F */  lui        $t6, %hi(D_800E8920)
    /* 146F04 801A0E94 8D830000 */  lw         $v1, 0x0($t4)
    /* 146F08 801A0E98 00036880 */  sll        $t5, $v1, 2
    /* 146F0C 801A0E9C 01CD7021 */  addu       $t6, $t6, $t5
    /* 146F10 801A0EA0 8DCE8920 */  lw         $t6, %lo(D_800E8920)($t6)
    /* 146F14 801A0EA4 3C0D800E */  lui        $t5, %hi(D_800E78F0)
    /* 146F18 801A0EA8 01A36821 */  addu       $t5, $t5, $v1
    /* 146F1C 801A0EAC 15C00034 */  bnez       $t6, .L801A0F80_ovl7
    /* 146F20 801A0EB0 00000000 */   nop
    /* 146F24 801A0EB4 10400019 */  beqz       $v0, .L801A0F1C_ovl7
    /* 146F28 801A0EB8 3C0C800E */   lui       $t4, %hi(D_800E78F0)
    /* 146F2C 801A0EBC 0040F809 */  jalr       $v0
    /* 146F30 801A0EC0 8FA40024 */   lw        $a0, 0x24($sp)
    /* 146F34 801A0EC4 3C0F8013 */  lui        $t7, %hi(D_8012BCA0)
    /* 146F38 801A0EC8 8DEFBCA0 */  lw         $t7, %lo(D_8012BCA0)($t7)
    /* 146F3C 801A0ECC 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* 146F40 801A0ED0 000FC4C2 */  srl        $t8, $t7, 19
    /* 146F44 801A0ED4 33191E00 */  andi       $t9, $t8, 0x1E00
    /* 146F48 801A0ED8 13200009 */  beqz       $t9, .L801A0F00_ovl7
    /* 146F4C 801A0EDC 3C0F8005 */   lui       $t7, %hi(omCurrentObj)
    /* 146F50 801A0EE0 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* 146F54 801A0EE4 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 146F58 801A0EE8 240B0001 */  addiu      $t3, $zero, 0x1
    /* 146F5C 801A0EEC 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 146F60 801A0EF0 000D7080 */  sll        $t6, $t5, 2
    /* 146F64 801A0EF4 002E0821 */  addu       $at, $at, $t6
    /* 146F68 801A0EF8 10000038 */  b          .L801A0FDC_ovl7
    /* 146F6C 801A0EFC AC2B8920 */   sw        $t3, %lo(D_800E8920)($at)
  .L801A0F00_ovl7:
    /* 146F70 801A0F00 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 146F74 801A0F04 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 146F78 801A0F08 8DF80000 */  lw         $t8, 0x0($t7)
    /* 146F7C 801A0F0C 0018C880 */  sll        $t9, $t8, 2
    /* 146F80 801A0F10 00390821 */  addu       $at, $at, $t9
    /* 146F84 801A0F14 10000031 */  b          .L801A0FDC_ovl7
    /* 146F88 801A0F18 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
  .L801A0F1C_ovl7:
    /* 146F8C 801A0F1C 01836021 */  addu       $t4, $t4, $v1
    /* 146F90 801A0F20 918C78F0 */  lbu        $t4, %lo(D_800E78F0)($t4)
    /* 146F94 801A0F24 318D0010 */  andi       $t5, $t4, 0x10
    /* 146F98 801A0F28 11A0000B */  beqz       $t5, .L801A0F58_ovl7
    /* 146F9C 801A0F2C 00000000 */   nop
    /* 146FA0 801A0F30 0C042780 */  jal        func_80109E00
    /* 146FA4 801A0F34 8FA40024 */   lw        $a0, 0x24($sp)
    /* 146FA8 801A0F38 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* 146FAC 801A0F3C 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 146FB0 801A0F40 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 146FB4 801A0F44 8D6E0000 */  lw         $t6, 0x0($t3)
    /* 146FB8 801A0F48 000E7880 */  sll        $t7, $t6, 2
    /* 146FBC 801A0F4C 002F0821 */  addu       $at, $at, $t7
    /* 146FC0 801A0F50 10000022 */  b          .L801A0FDC_ovl7
    /* 146FC4 801A0F54 AC228920 */   sw        $v0, %lo(D_800E8920)($at)
  .L801A0F58_ovl7:
    /* 146FC8 801A0F58 0C042776 */  jal        func_80109DD8
    /* 146FCC 801A0F5C 8FA40024 */   lw        $a0, 0x24($sp)
    /* 146FD0 801A0F60 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 146FD4 801A0F64 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 146FD8 801A0F68 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 146FDC 801A0F6C 8F190000 */  lw         $t9, 0x0($t8)
    /* 146FE0 801A0F70 00196080 */  sll        $t4, $t9, 2
    /* 146FE4 801A0F74 002C0821 */  addu       $at, $at, $t4
    /* 146FE8 801A0F78 10000018 */  b          .L801A0FDC_ovl7
    /* 146FEC 801A0F7C AC228920 */   sw        $v0, %lo(D_800E8920)($at)
  .L801A0F80_ovl7:
    /* 146FF0 801A0F80 91AD78F0 */  lbu        $t5, %lo(D_800E78F0)($t5)
    /* 146FF4 801A0F84 31AB0010 */  andi       $t3, $t5, 0x10
    /* 146FF8 801A0F88 1160000B */  beqz       $t3, .L801A0FB8_ovl7
    /* 146FFC 801A0F8C 00000000 */   nop
    /* 147000 801A0F90 0C042C36 */  jal        func_8010B0D8
    /* 147004 801A0F94 8FA40024 */   lw        $a0, 0x24($sp)
    /* 147008 801A0F98 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 14700C 801A0F9C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 147010 801A0FA0 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 147014 801A0FA4 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 147018 801A0FA8 000FC080 */  sll        $t8, $t7, 2
    /* 14701C 801A0FAC 00380821 */  addu       $at, $at, $t8
    /* 147020 801A0FB0 1000000A */  b          .L801A0FDC_ovl7
    /* 147024 801A0FB4 AC228920 */   sw        $v0, %lo(D_800E8920)($at)
  .L801A0FB8_ovl7:
    /* 147028 801A0FB8 0C042C2C */  jal        func_8010B0B0
    /* 14702C 801A0FBC 8FA40024 */   lw        $a0, 0x24($sp)
    /* 147030 801A0FC0 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 147034 801A0FC4 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 147038 801A0FC8 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 14703C 801A0FCC 8F2C0000 */  lw         $t4, 0x0($t9)
    /* 147040 801A0FD0 000C6880 */  sll        $t5, $t4, 2
    /* 147044 801A0FD4 002D0821 */  addu       $at, $at, $t5
    /* 147048 801A0FD8 AC228920 */  sw         $v0, %lo(D_800E8920)($at)
  .L801A0FDC_ovl7:
    /* 14704C 801A0FDC 0C06861F */  jal        func_801A187C_ovl7
    /* 147050 801A0FE0 8FA40024 */   lw        $a0, 0x24($sp)
    /* 147054 801A0FE4 0C0686DB */  jal        func_801A1B6C_ovl7
    /* 147058 801A0FE8 00000000 */   nop
    /* 14705C 801A0FEC 0C06881A */  jal        func_801A2068_ovl7
    /* 147060 801A0FF0 00000000 */   nop
    /* 147064 801A0FF4 3C058013 */  lui        $a1, %hi(D_8012BCA0)
    /* 147068 801A0FF8 24A5BCA0 */  addiu      $a1, $a1, %lo(D_8012BCA0)
    /* 14706C 801A0FFC 0C04148E */  jal        func_80105238
    /* 147070 801A1000 8FA40024 */   lw        $a0, 0x24($sp)
    /* 147074 801A1004 8FAA0028 */  lw         $t2, 0x28($sp)
    /* 147078 801A1008 3C058013 */  lui        $a1, %hi(D_8012BCA0)
    /* 14707C 801A100C 8D440098 */  lw         $a0, 0x98($t2)
    /* 147080 801A1010 14800003 */  bnez       $a0, .L801A1020_ovl7
    /* 147084 801A1014 00000000 */   nop
    /* 147088 801A1018 100001BE */  b          .L801A1714_ovl7
    /* 14708C 801A101C 00001025 */   or        $v0, $zero, $zero
  .L801A1020_ovl7:
    /* 147090 801A1020 8CA5BCA0 */  lw         $a1, %lo(D_8012BCA0)($a1)
    /* 147094 801A1024 00052CC2 */  srl        $a1, $a1, 19
    /* 147098 801A1028 30A901C0 */  andi       $t1, $a1, 0x1C0
    /* 14709C 801A102C 11200002 */  beqz       $t1, .L801A1038_ovl7
    /* 1470A0 801A1030 30AB0E00 */   andi      $t3, $a1, 0xE00
    /* 1470A4 801A1034 15600004 */  bnez       $t3, .L801A1048_ovl7
  .L801A1038_ovl7:
    /* 1470A8 801A1038 30AE0007 */   andi      $t6, $a1, 0x7
    /* 1470AC 801A103C 11C00041 */  beqz       $t6, .L801A1144_ovl7
    /* 1470B0 801A1040 30AF0038 */   andi      $t7, $a1, 0x38
    /* 1470B4 801A1044 11E0003F */  beqz       $t7, .L801A1144_ovl7
  .L801A1048_ovl7:
    /* 1470B8 801A1048 3C028005 */   lui       $v0, %hi(omCurrentObj)
    /* 1470BC 801A104C 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 1470C0 801A1050 C7AA0018 */  lwc1       $f10, 0x18($sp)
    /* 1470C4 801A1054 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 1470C8 801A1058 8C580000 */  lw         $t8, 0x0($v0)
    /* 1470CC 801A105C C7B0001C */  lwc1       $f16, 0x1C($sp)
    /* 1470D0 801A1060 C7B20020 */  lwc1       $f18, 0x20($sp)
    /* 1470D4 801A1064 0018C880 */  sll        $t9, $t8, 2
    /* 1470D8 801A1068 00390821 */  addu       $at, $at, $t9
    /* 1470DC 801A106C E42A25D0 */  swc1       $f10, %lo(gEntitiesNextPosXArray)($at)
    /* 1470E0 801A1070 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 1470E4 801A1074 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 1470E8 801A1078 000C6880 */  sll        $t5, $t4, 2
    /* 1470EC 801A107C 002D0821 */  addu       $at, $at, $t5
    /* 1470F0 801A1080 E4302790 */  swc1       $f16, %lo(gEntitiesNextPosYArray)($at)
    /* 1470F4 801A1084 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 1470F8 801A1088 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 1470FC 801A108C 000B7080 */  sll        $t6, $t3, 2
    /* 147100 801A1090 002E0821 */  addu       $at, $at, $t6
    /* 147104 801A1094 E4322950 */  swc1       $f18, %lo(gEntitiesNextPosZArray)($at)
    /* 147108 801A1098 8D440098 */  lw         $a0, 0x98($t2)
    /* 14710C 801A109C 8C830020 */  lw         $v1, 0x20($a0)
    /* 147110 801A10A0 50600006 */  beql       $v1, $zero, .L801A10BC_ovl7
    /* 147114 801A10A4 80820006 */   lb        $v0, 0x6($a0)
    /* 147118 801A10A8 0060F809 */  jalr       $v1
    /* 14711C 801A10AC 8FA40038 */   lw        $a0, 0x38($sp)
    /* 147120 801A10B0 8FAF0028 */  lw         $t7, 0x28($sp)
    /* 147124 801A10B4 8DE40098 */  lw         $a0, 0x98($t7)
    /* 147128 801A10B8 80820006 */  lb         $v0, 0x6($a0)
  .L801A10BC_ovl7:
    /* 14712C 801A10BC 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 147130 801A10C0 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 147134 801A10C4 50E2000D */  beql       $a3, $v0, .L801A10FC_ovl7
    /* 147138 801A10C8 8C8B0020 */   lw        $t3, 0x20($a0)
    /* 14713C 801A10CC 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 147140 801A10D0 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 147144 801A10D4 8FA40038 */  lw         $a0, 0x38($sp)
    /* 147148 801A10D8 8F190000 */  lw         $t9, 0x0($t8)
    /* 14714C 801A10DC 00196080 */  sll        $t4, $t9, 2
    /* 147150 801A10E0 002C0821 */  addu       $at, $at, $t4
    /* 147154 801A10E4 0C06658A */  jal        func_80199628_ovl7
    /* 147158 801A10E8 AC22DC50 */   sw        $v0, %lo(gEntityFuncListIDArray)($at)
    /* 14715C 801A10EC 8FAD0028 */  lw         $t5, 0x28($sp)
    /* 147160 801A10F0 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 147164 801A10F4 8DA40098 */  lw         $a0, 0x98($t5)
    /* 147168 801A10F8 8C8B0020 */  lw         $t3, 0x20($a0)
  .L801A10FC_ovl7:
    /* 14716C 801A10FC 15600006 */  bnez       $t3, .L801A1118_ovl7
    /* 147170 801A1100 00000000 */   nop
    /* 147174 801A1104 808E0006 */  lb         $t6, 0x6($a0)
    /* 147178 801A1108 14EE0003 */  bne        $a3, $t6, .L801A1118_ovl7
    /* 14717C 801A110C 00000000 */   nop
    /* 147180 801A1110 0C0665A2 */  jal        func_80199688_ovl7
    /* 147184 801A1114 8FA40038 */   lw        $a0, 0x38($sp)
  .L801A1118_ovl7:
    /* 147188 801A1118 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 14718C 801A111C 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 147190 801A1120 3C0D800E */  lui        $t5, %hi(gEntityFuncListIDArray)
    /* 147194 801A1124 8FAF0030 */  lw         $t7, 0x30($sp)
    /* 147198 801A1128 8F190000 */  lw         $t9, 0x0($t8)
    /* 14719C 801A112C 00196080 */  sll        $t4, $t9, 2
    /* 1471A0 801A1130 01AC6821 */  addu       $t5, $t5, $t4
    /* 1471A4 801A1134 8DADDC50 */  lw         $t5, %lo(gEntityFuncListIDArray)($t5)
    /* 1471A8 801A1138 01ED1026 */  xor        $v0, $t7, $t5
    /* 1471AC 801A113C 10000175 */  b          .L801A1714_ovl7
    /* 1471B0 801A1140 0002102B */   sltu      $v0, $zero, $v0
  .L801A1144_ovl7:
    /* 1471B4 801A1144 8D4B0044 */  lw         $t3, 0x44($t2)
    /* 1471B8 801A1148 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* 1471BC 801A114C 11600026 */  beqz       $t3, .L801A11E8_ovl7
    /* 1471C0 801A1150 00000000 */   nop
    /* 1471C4 801A1154 8C830020 */  lw         $v1, 0x20($a0)
    /* 1471C8 801A1158 14600005 */  bnez       $v1, .L801A1170_ovl7
    /* 1471CC 801A115C 00000000 */   nop
    /* 1471D0 801A1160 808E0006 */  lb         $t6, 0x6($a0)
    /* 1471D4 801A1164 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 1471D8 801A1168 10EE001F */  beq        $a3, $t6, .L801A11E8_ovl7
    /* 1471DC 801A116C 00000000 */   nop
  .L801A1170_ovl7:
    /* 1471E0 801A1170 10600006 */  beqz       $v1, .L801A118C_ovl7
    /* 1471E4 801A1174 2407FFFF */   addiu     $a3, $zero, -0x1
    /* 1471E8 801A1178 0060F809 */  jalr       $v1
    /* 1471EC 801A117C 8FA40038 */   lw        $a0, 0x38($sp)
    /* 1471F0 801A1180 8FB80028 */  lw         $t8, 0x28($sp)
    /* 1471F4 801A1184 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 1471F8 801A1188 8F040098 */  lw         $a0, 0x98($t8)
  .L801A118C_ovl7:
    /* 1471FC 801A118C 80820006 */  lb         $v0, 0x6($a0)
    /* 147200 801A1190 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 147204 801A1194 10E20009 */  beq        $a3, $v0, .L801A11BC_ovl7
    /* 147208 801A1198 00000000 */   nop
    /* 14720C 801A119C 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 147210 801A11A0 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 147214 801A11A4 8FA40038 */  lw         $a0, 0x38($sp)
    /* 147218 801A11A8 8F2C0000 */  lw         $t4, 0x0($t9)
    /* 14721C 801A11AC 000C7880 */  sll        $t7, $t4, 2
    /* 147220 801A11B0 002F0821 */  addu       $at, $at, $t7
    /* 147224 801A11B4 0C06658A */  jal        func_80199628_ovl7
    /* 147228 801A11B8 AC22DC50 */   sw        $v0, %lo(gEntityFuncListIDArray)($at)
  .L801A11BC_ovl7:
    /* 14722C 801A11BC 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* 147230 801A11C0 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 147234 801A11C4 3C19800E */  lui        $t9, %hi(gEntityFuncListIDArray)
    /* 147238 801A11C8 8FAD0030 */  lw         $t5, 0x30($sp)
    /* 14723C 801A11CC 8D6E0000 */  lw         $t6, 0x0($t3)
    /* 147240 801A11D0 000EC080 */  sll        $t8, $t6, 2
    /* 147244 801A11D4 0338C821 */  addu       $t9, $t9, $t8
    /* 147248 801A11D8 8F39DC50 */  lw         $t9, %lo(gEntityFuncListIDArray)($t9)
    /* 14724C 801A11DC 01B91026 */  xor        $v0, $t5, $t9
    /* 147250 801A11E0 1000014C */  b          .L801A1714_ovl7
    /* 147254 801A11E4 0002102B */   sltu      $v0, $zero, $v0
  .L801A11E8_ovl7:
    /* 147258 801A11E8 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* 14725C 801A11EC 3C08800F */  lui        $t0, %hi(D_800E8AE0)
    /* 147260 801A11F0 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 147264 801A11F4 8D830000 */  lw         $v1, 0x0($t4)
    /* 147268 801A11F8 00031880 */  sll        $v1, $v1, 2
    /* 14726C 801A11FC 01034021 */  addu       $t0, $t0, $v1
    /* 147270 801A1200 8D088AE0 */  lw         $t0, %lo(D_800E8AE0)($t0)
    /* 147274 801A1204 310F0002 */  andi       $t7, $t0, 0x2
    /* 147278 801A1208 51E00026 */  beql       $t7, $zero, .L801A12A4_ovl7
    /* 14727C 801A120C 8FAF0034 */   lw        $t7, 0x34($sp)
    /* 147280 801A1210 8C82000C */  lw         $v0, 0xC($a0)
    /* 147284 801A1214 14400004 */  bnez       $v0, .L801A1228_ovl7
    /* 147288 801A1218 00000000 */   nop
    /* 14728C 801A121C 808B0001 */  lb         $t3, 0x1($a0)
    /* 147290 801A1220 50EB0020 */  beql       $a3, $t3, .L801A12A4_ovl7
    /* 147294 801A1224 8FAF0034 */   lw        $t7, 0x34($sp)
  .L801A1228_ovl7:
    /* 147298 801A1228 5040000B */  beql       $v0, $zero, .L801A1258_ovl7
    /* 14729C 801A122C 80820001 */   lb        $v0, 0x1($a0)
    /* 1472A0 801A1230 0040F809 */  jalr       $v0
    /* 1472A4 801A1234 8FA40038 */   lw        $a0, 0x38($sp)
    /* 1472A8 801A1238 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1472AC 801A123C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1472B0 801A1240 8FB80028 */  lw         $t8, 0x28($sp)
    /* 1472B4 801A1244 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 1472B8 801A1248 8DC30000 */  lw         $v1, 0x0($t6)
    /* 1472BC 801A124C 8F040098 */  lw         $a0, 0x98($t8)
    /* 1472C0 801A1250 00031880 */  sll        $v1, $v1, 2
    /* 1472C4 801A1254 80820001 */  lb         $v0, 0x1($a0)
  .L801A1258_ovl7:
    /* 1472C8 801A1258 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 1472CC 801A125C 00230821 */  addu       $at, $at, $v1
    /* 1472D0 801A1260 10E20008 */  beq        $a3, $v0, .L801A1284_ovl7
    /* 1472D4 801A1264 00000000 */   nop
    /* 1472D8 801A1268 AC22DC50 */  sw         $v0, %lo(gEntityFuncListIDArray)($at)
    /* 1472DC 801A126C 0C06658A */  jal        func_80199628_ovl7
    /* 1472E0 801A1270 8FA40038 */   lw        $a0, 0x38($sp)
    /* 1472E4 801A1274 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 1472E8 801A1278 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 1472EC 801A127C 8DA30000 */  lw         $v1, 0x0($t5)
    /* 1472F0 801A1280 00031880 */  sll        $v1, $v1, 2
  .L801A1284_ovl7:
    /* 1472F4 801A1284 3C0C800E */  lui        $t4, %hi(gEntityFuncListIDArray)
    /* 1472F8 801A1288 01836021 */  addu       $t4, $t4, $v1
    /* 1472FC 801A128C 8D8CDC50 */  lw         $t4, %lo(gEntityFuncListIDArray)($t4)
    /* 147300 801A1290 8FB90030 */  lw         $t9, 0x30($sp)
    /* 147304 801A1294 032C1026 */  xor        $v0, $t9, $t4
    /* 147308 801A1298 1000011E */  b          .L801A1714_ovl7
    /* 14730C 801A129C 0002102B */   sltu      $v0, $zero, $v0
    /* 147310 801A12A0 8FAF0034 */  lw         $t7, 0x34($sp)
  .L801A12A4_ovl7:
    /* 147314 801A12A4 24010001 */  addiu      $at, $zero, 0x1
    /* 147318 801A12A8 3C06800F */  lui        $a2, %hi(D_800E8920)
    /* 14731C 801A12AC 15E1002A */  bne        $t7, $at, .L801A1358_ovl7
    /* 147320 801A12B0 00C33021 */   addu      $a2, $a2, $v1
    /* 147324 801A12B4 3C06800F */  lui        $a2, %hi(D_800E8920)
    /* 147328 801A12B8 00C33021 */  addu       $a2, $a2, $v1
    /* 14732C 801A12BC 8CC68920 */  lw         $a2, %lo(D_800E8920)($a2)
    /* 147330 801A12C0 54C0004E */  bnel       $a2, $zero, .L801A13FC_ovl7
    /* 147334 801A12C4 30AC003F */   andi      $t4, $a1, 0x3F
    /* 147338 801A12C8 8C820008 */  lw         $v0, 0x8($a0)
    /* 14733C 801A12CC 14400004 */  bnez       $v0, .L801A12E0_ovl7
    /* 147340 801A12D0 00000000 */   nop
    /* 147344 801A12D4 808B0000 */  lb         $t3, 0x0($a0)
    /* 147348 801A12D8 50EB0048 */  beql       $a3, $t3, .L801A13FC_ovl7
    /* 14734C 801A12DC 30AC003F */   andi      $t4, $a1, 0x3F
  .L801A12E0_ovl7:
    /* 147350 801A12E0 5040000B */  beql       $v0, $zero, .L801A1310_ovl7
    /* 147354 801A12E4 80820000 */   lb        $v0, 0x0($a0)
    /* 147358 801A12E8 0040F809 */  jalr       $v0
    /* 14735C 801A12EC 8FA40038 */   lw        $a0, 0x38($sp)
    /* 147360 801A12F0 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 147364 801A12F4 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 147368 801A12F8 8FB80028 */  lw         $t8, 0x28($sp)
    /* 14736C 801A12FC 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 147370 801A1300 8DC30000 */  lw         $v1, 0x0($t6)
    /* 147374 801A1304 8F040098 */  lw         $a0, 0x98($t8)
    /* 147378 801A1308 00031880 */  sll        $v1, $v1, 2
    /* 14737C 801A130C 80820000 */  lb         $v0, 0x0($a0)
  .L801A1310_ovl7:
    /* 147380 801A1310 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 147384 801A1314 00230821 */  addu       $at, $at, $v1
    /* 147388 801A1318 10E20008 */  beq        $a3, $v0, .L801A133C_ovl7
    /* 14738C 801A131C 00000000 */   nop
    /* 147390 801A1320 AC22DC50 */  sw         $v0, %lo(gEntityFuncListIDArray)($at)
    /* 147394 801A1324 0C06658A */  jal        func_80199628_ovl7
    /* 147398 801A1328 8FA40038 */   lw        $a0, 0x38($sp)
    /* 14739C 801A132C 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 1473A0 801A1330 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 1473A4 801A1334 8DA30000 */  lw         $v1, 0x0($t5)
    /* 1473A8 801A1338 00031880 */  sll        $v1, $v1, 2
  .L801A133C_ovl7:
    /* 1473AC 801A133C 3C0C800E */  lui        $t4, %hi(gEntityFuncListIDArray)
    /* 1473B0 801A1340 01836021 */  addu       $t4, $t4, $v1
    /* 1473B4 801A1344 8D8CDC50 */  lw         $t4, %lo(gEntityFuncListIDArray)($t4)
    /* 1473B8 801A1348 8FB90030 */  lw         $t9, 0x30($sp)
    /* 1473BC 801A134C 032C1026 */  xor        $v0, $t9, $t4
    /* 1473C0 801A1350 100000F0 */  b          .L801A1714_ovl7
    /* 1473C4 801A1354 0002102B */   sltu      $v0, $zero, $v0
  .L801A1358_ovl7:
    /* 1473C8 801A1358 8CC68920 */  lw         $a2, %lo(D_800E8920)($a2)
    /* 1473CC 801A135C 24010001 */  addiu      $at, $zero, 0x1
    /* 1473D0 801A1360 54C10026 */  bnel       $a2, $at, .L801A13FC_ovl7
    /* 1473D4 801A1364 30AC003F */   andi      $t4, $a1, 0x3F
    /* 1473D8 801A1368 8C820008 */  lw         $v0, 0x8($a0)
    /* 1473DC 801A136C 14400004 */  bnez       $v0, .L801A1380_ovl7
    /* 1473E0 801A1370 00000000 */   nop
    /* 1473E4 801A1374 808F0000 */  lb         $t7, 0x0($a0)
    /* 1473E8 801A1378 50EF0020 */  beql       $a3, $t7, .L801A13FC_ovl7
    /* 1473EC 801A137C 30AC003F */   andi      $t4, $a1, 0x3F
  .L801A1380_ovl7:
    /* 1473F0 801A1380 5040000B */  beql       $v0, $zero, .L801A13B0_ovl7
    /* 1473F4 801A1384 80820000 */   lb        $v0, 0x0($a0)
    /* 1473F8 801A1388 0040F809 */  jalr       $v0
    /* 1473FC 801A138C 8FA40038 */   lw        $a0, 0x38($sp)
    /* 147400 801A1390 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* 147404 801A1394 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 147408 801A1398 8FAE0028 */  lw         $t6, 0x28($sp)
    /* 14740C 801A139C 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 147410 801A13A0 8D630000 */  lw         $v1, 0x0($t3)
    /* 147414 801A13A4 8DC40098 */  lw         $a0, 0x98($t6)
    /* 147418 801A13A8 00031880 */  sll        $v1, $v1, 2
    /* 14741C 801A13AC 80820000 */  lb         $v0, 0x0($a0)
  .L801A13B0_ovl7:
    /* 147420 801A13B0 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 147424 801A13B4 00230821 */  addu       $at, $at, $v1
    /* 147428 801A13B8 10E20008 */  beq        $a3, $v0, .L801A13DC_ovl7
    /* 14742C 801A13BC 00000000 */   nop
    /* 147430 801A13C0 AC22DC50 */  sw         $v0, %lo(gEntityFuncListIDArray)($at)
    /* 147434 801A13C4 0C06658A */  jal        func_80199628_ovl7
    /* 147438 801A13C8 8FA40038 */   lw        $a0, 0x38($sp)
    /* 14743C 801A13CC 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 147440 801A13D0 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 147444 801A13D4 8F030000 */  lw         $v1, 0x0($t8)
    /* 147448 801A13D8 00031880 */  sll        $v1, $v1, 2
  .L801A13DC_ovl7:
    /* 14744C 801A13DC 3C19800E */  lui        $t9, %hi(gEntityFuncListIDArray)
    /* 147450 801A13E0 0323C821 */  addu       $t9, $t9, $v1
    /* 147454 801A13E4 8F39DC50 */  lw         $t9, %lo(gEntityFuncListIDArray)($t9)
    /* 147458 801A13E8 8FAD0030 */  lw         $t5, 0x30($sp)
    /* 14745C 801A13EC 01B91026 */  xor        $v0, $t5, $t9
    /* 147460 801A13F0 100000C8 */  b          .L801A1714_ovl7
    /* 147464 801A13F4 0002102B */   sltu      $v0, $zero, $v0
    /* 147468 801A13F8 30AC003F */  andi       $t4, $a1, 0x3F
  .L801A13FC_ovl7:
    /* 14746C 801A13FC 15800013 */  bnez       $t4, .L801A144C_ovl7
    /* 147470 801A1400 3C0F800E */   lui       $t7, %hi(D_800E6310)
    /* 147474 801A1404 01E37821 */  addu       $t7, $t7, $v1
    /* 147478 801A1408 8DEF6310 */  lw         $t7, %lo(D_800E6310)($t7)
    /* 14747C 801A140C 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* 147480 801A1410 00230821 */  addu       $at, $at, $v1
    /* 147484 801A1414 51E0002D */  beql       $t7, $zero, .L801A14CC_ovl7
    /* 147488 801A1418 24010001 */   addiu     $at, $zero, 0x1
    /* 14748C 801A141C 44802000 */  mtc1       $zero, $f4
    /* 147490 801A1420 C42664D0 */  lwc1       $f6, %lo(D_800E64D0)($at)
    /* 147494 801A1424 46062032 */  c.eq.s     $f4, $f6
    /* 147498 801A1428 00000000 */  nop
    /* 14749C 801A142C 45030027 */  bc1tl      .L801A14CC_ovl7
    /* 1474A0 801A1430 24010001 */   addiu     $at, $zero, 0x1
    /* 1474A4 801A1434 8C8B0010 */  lw         $t3, 0x10($a0)
    /* 1474A8 801A1438 55600005 */  bnel       $t3, $zero, .L801A1450_ovl7
    /* 1474AC 801A143C 8C820010 */   lw        $v0, 0x10($a0)
    /* 1474B0 801A1440 808E0002 */  lb         $t6, 0x2($a0)
    /* 1474B4 801A1444 50EE0021 */  beql       $a3, $t6, .L801A14CC_ovl7
    /* 1474B8 801A1448 24010001 */   addiu     $at, $zero, 0x1
  .L801A144C_ovl7:
    /* 1474BC 801A144C 8C820010 */  lw         $v0, 0x10($a0)
  .L801A1450_ovl7:
    /* 1474C0 801A1450 5040000B */  beql       $v0, $zero, .L801A1480_ovl7
    /* 1474C4 801A1454 80820002 */   lb        $v0, 0x2($a0)
    /* 1474C8 801A1458 0040F809 */  jalr       $v0
    /* 1474CC 801A145C 8FA40038 */   lw        $a0, 0x38($sp)
    /* 1474D0 801A1460 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 1474D4 801A1464 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 1474D8 801A1468 8FAD0028 */  lw         $t5, 0x28($sp)
    /* 1474DC 801A146C 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 1474E0 801A1470 8F030000 */  lw         $v1, 0x0($t8)
    /* 1474E4 801A1474 8DA40098 */  lw         $a0, 0x98($t5)
    /* 1474E8 801A1478 00031880 */  sll        $v1, $v1, 2
    /* 1474EC 801A147C 80820002 */  lb         $v0, 0x2($a0)
  .L801A1480_ovl7:
    /* 1474F0 801A1480 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 1474F4 801A1484 00230821 */  addu       $at, $at, $v1
    /* 1474F8 801A1488 10E20008 */  beq        $a3, $v0, .L801A14AC_ovl7
    /* 1474FC 801A148C 00000000 */   nop
    /* 147500 801A1490 AC22DC50 */  sw         $v0, %lo(gEntityFuncListIDArray)($at)
    /* 147504 801A1494 0C06658A */  jal        func_80199628_ovl7
    /* 147508 801A1498 8FA40038 */   lw        $a0, 0x38($sp)
    /* 14750C 801A149C 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 147510 801A14A0 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 147514 801A14A4 8F230000 */  lw         $v1, 0x0($t9)
    /* 147518 801A14A8 00031880 */  sll        $v1, $v1, 2
  .L801A14AC_ovl7:
    /* 14751C 801A14AC 3C0F800E */  lui        $t7, %hi(gEntityFuncListIDArray)
    /* 147520 801A14B0 01E37821 */  addu       $t7, $t7, $v1
    /* 147524 801A14B4 8DEFDC50 */  lw         $t7, %lo(gEntityFuncListIDArray)($t7)
    /* 147528 801A14B8 8FAC0030 */  lw         $t4, 0x30($sp)
    /* 14752C 801A14BC 018F1026 */  xor        $v0, $t4, $t7
    /* 147530 801A14C0 10000094 */  b          .L801A1714_ovl7
    /* 147534 801A14C4 0002102B */   sltu      $v0, $zero, $v0
    /* 147538 801A14C8 24010001 */  addiu      $at, $zero, 0x1
  .L801A14CC_ovl7:
    /* 14753C 801A14CC 14C10042 */  bne        $a2, $at, .L801A15D8_ovl7
    /* 147540 801A14D0 3C01800E */   lui       $at, %hi(D_800E6A10)
    /* 147544 801A14D4 00230821 */  addu       $at, $at, $v1
    /* 147548 801A14D8 C4206A10 */  lwc1       $f0, %lo(D_800E6A10)($at)
    /* 14754C 801A14DC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 147550 801A14E0 44814000 */  mtc1       $at, $f8
    /* 147554 801A14E4 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 147558 801A14E8 30AB0400 */  andi       $t3, $a1, 0x400
    /* 14755C 801A14EC 46004032 */  c.eq.s     $f8, $f0
    /* 147560 801A14F0 00000000 */  nop
    /* 147564 801A14F4 45020008 */  bc1fl      .L801A1518_ovl7
    /* 147568 801A14F8 44815000 */   mtc1      $at, $f10
    /* 14756C 801A14FC 11600005 */  beqz       $t3, .L801A1514_ovl7
    /* 147570 801A1500 30AE0200 */   andi      $t6, $a1, 0x200
    /* 147574 801A1504 15C00003 */  bnez       $t6, .L801A1514_ovl7
    /* 147578 801A1508 30B80800 */   andi      $t8, $a1, 0x800
    /* 14757C 801A150C 53000014 */  beql       $t8, $zero, .L801A1560_ovl7
    /* 147580 801A1510 8C820014 */   lw        $v0, 0x14($a0)
  .L801A1514_ovl7:
    /* 147584 801A1514 44815000 */  mtc1       $at, $f10
  .L801A1518_ovl7:
    /* 147588 801A1518 30AD0800 */  andi       $t5, $a1, 0x800
    /* 14758C 801A151C 46005032 */  c.eq.s     $f10, $f0
    /* 147590 801A1520 00000000 */  nop
    /* 147594 801A1524 4500002C */  bc1f       .L801A15D8_ovl7
    /* 147598 801A1528 00000000 */   nop
    /* 14759C 801A152C 11A0002A */  beqz       $t5, .L801A15D8_ovl7
    /* 1475A0 801A1530 30B90200 */   andi      $t9, $a1, 0x200
    /* 1475A4 801A1534 17200028 */  bnez       $t9, .L801A15D8_ovl7
    /* 1475A8 801A1538 30AC0400 */   andi      $t4, $a1, 0x400
    /* 1475AC 801A153C 15800026 */  bnez       $t4, .L801A15D8_ovl7
    /* 1475B0 801A1540 00000000 */   nop
    /* 1475B4 801A1544 8C8F0014 */  lw         $t7, 0x14($a0)
    /* 1475B8 801A1548 55E00005 */  bnel       $t7, $zero, .L801A1560_ovl7
    /* 1475BC 801A154C 8C820014 */   lw        $v0, 0x14($a0)
    /* 1475C0 801A1550 808B0003 */  lb         $t3, 0x3($a0)
    /* 1475C4 801A1554 10EB0020 */  beq        $a3, $t3, .L801A15D8_ovl7
    /* 1475C8 801A1558 00000000 */   nop
    /* 1475CC 801A155C 8C820014 */  lw         $v0, 0x14($a0)
  .L801A1560_ovl7:
    /* 1475D0 801A1560 5040000B */  beql       $v0, $zero, .L801A1590_ovl7
    /* 1475D4 801A1564 80820003 */   lb        $v0, 0x3($a0)
    /* 1475D8 801A1568 0040F809 */  jalr       $v0
    /* 1475DC 801A156C 8FA40038 */   lw        $a0, 0x38($sp)
    /* 1475E0 801A1570 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1475E4 801A1574 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1475E8 801A1578 8FB80028 */  lw         $t8, 0x28($sp)
    /* 1475EC 801A157C 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 1475F0 801A1580 8DC30000 */  lw         $v1, 0x0($t6)
    /* 1475F4 801A1584 8F040098 */  lw         $a0, 0x98($t8)
    /* 1475F8 801A1588 00031880 */  sll        $v1, $v1, 2
    /* 1475FC 801A158C 80820003 */  lb         $v0, 0x3($a0)
  .L801A1590_ovl7:
    /* 147600 801A1590 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 147604 801A1594 00230821 */  addu       $at, $at, $v1
    /* 147608 801A1598 10E20008 */  beq        $a3, $v0, .L801A15BC_ovl7
    /* 14760C 801A159C 00000000 */   nop
    /* 147610 801A15A0 AC22DC50 */  sw         $v0, %lo(gEntityFuncListIDArray)($at)
    /* 147614 801A15A4 0C06658A */  jal        func_80199628_ovl7
    /* 147618 801A15A8 8FA40038 */   lw        $a0, 0x38($sp)
    /* 14761C 801A15AC 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 147620 801A15B0 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 147624 801A15B4 8DA30000 */  lw         $v1, 0x0($t5)
    /* 147628 801A15B8 00031880 */  sll        $v1, $v1, 2
  .L801A15BC_ovl7:
    /* 14762C 801A15BC 3C0C800E */  lui        $t4, %hi(gEntityFuncListIDArray)
    /* 147630 801A15C0 01836021 */  addu       $t4, $t4, $v1
    /* 147634 801A15C4 8D8CDC50 */  lw         $t4, %lo(gEntityFuncListIDArray)($t4)
    /* 147638 801A15C8 8FB90030 */  lw         $t9, 0x30($sp)
    /* 14763C 801A15CC 032C1026 */  xor        $v0, $t9, $t4
    /* 147640 801A15D0 10000050 */  b          .L801A1714_ovl7
    /* 147644 801A15D4 0002102B */   sltu      $v0, $zero, $v0
  .L801A15D8_ovl7:
    /* 147648 801A15D8 14C00027 */  bnez       $a2, .L801A1678_ovl7
    /* 14764C 801A15DC 310C0004 */   andi      $t4, $t0, 0x4
    /* 147650 801A15E0 11200025 */  beqz       $t1, .L801A1678_ovl7
    /* 147654 801A15E4 00000000 */   nop
    /* 147658 801A15E8 8C820018 */  lw         $v0, 0x18($a0)
    /* 14765C 801A15EC 14400004 */  bnez       $v0, .L801A1600_ovl7
    /* 147660 801A15F0 00000000 */   nop
    /* 147664 801A15F4 808F0004 */  lb         $t7, 0x4($a0)
    /* 147668 801A15F8 10EF001F */  beq        $a3, $t7, .L801A1678_ovl7
    /* 14766C 801A15FC 00000000 */   nop
  .L801A1600_ovl7:
    /* 147670 801A1600 5040000B */  beql       $v0, $zero, .L801A1630_ovl7
    /* 147674 801A1604 80820004 */   lb        $v0, 0x4($a0)
    /* 147678 801A1608 0040F809 */  jalr       $v0
    /* 14767C 801A160C 8FA40038 */   lw        $a0, 0x38($sp)
    /* 147680 801A1610 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* 147684 801A1614 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 147688 801A1618 8FAE0028 */  lw         $t6, 0x28($sp)
    /* 14768C 801A161C 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 147690 801A1620 8D630000 */  lw         $v1, 0x0($t3)
    /* 147694 801A1624 8DC40098 */  lw         $a0, 0x98($t6)
    /* 147698 801A1628 00031880 */  sll        $v1, $v1, 2
    /* 14769C 801A162C 80820004 */  lb         $v0, 0x4($a0)
  .L801A1630_ovl7:
    /* 1476A0 801A1630 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 1476A4 801A1634 00230821 */  addu       $at, $at, $v1
    /* 1476A8 801A1638 10E20008 */  beq        $a3, $v0, .L801A165C_ovl7
    /* 1476AC 801A163C 00000000 */   nop
    /* 1476B0 801A1640 AC22DC50 */  sw         $v0, %lo(gEntityFuncListIDArray)($at)
    /* 1476B4 801A1644 0C06658A */  jal        func_80199628_ovl7
    /* 1476B8 801A1648 8FA40038 */   lw        $a0, 0x38($sp)
    /* 1476BC 801A164C 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 1476C0 801A1650 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 1476C4 801A1654 8F030000 */  lw         $v1, 0x0($t8)
    /* 1476C8 801A1658 00031880 */  sll        $v1, $v1, 2
  .L801A165C_ovl7:
    /* 1476CC 801A165C 3C19800E */  lui        $t9, %hi(gEntityFuncListIDArray)
    /* 1476D0 801A1660 0323C821 */  addu       $t9, $t9, $v1
    /* 1476D4 801A1664 8F39DC50 */  lw         $t9, %lo(gEntityFuncListIDArray)($t9)
    /* 1476D8 801A1668 8FAD0030 */  lw         $t5, 0x30($sp)
    /* 1476DC 801A166C 01B91026 */  xor        $v0, $t5, $t9
    /* 1476E0 801A1670 10000028 */  b          .L801A1714_ovl7
    /* 1476E4 801A1674 0002102B */   sltu      $v0, $zero, $v0
  .L801A1678_ovl7:
    /* 1476E8 801A1678 51800026 */  beql       $t4, $zero, .L801A1714_ovl7
    /* 1476EC 801A167C 00001025 */   or        $v0, $zero, $zero
    /* 1476F0 801A1680 8C82001C */  lw         $v0, 0x1C($a0)
    /* 1476F4 801A1684 14400004 */  bnez       $v0, .L801A1698_ovl7
    /* 1476F8 801A1688 00000000 */   nop
    /* 1476FC 801A168C 808F0005 */  lb         $t7, 0x5($a0)
    /* 147700 801A1690 50EF0020 */  beql       $a3, $t7, .L801A1714_ovl7
    /* 147704 801A1694 00001025 */   or        $v0, $zero, $zero
  .L801A1698_ovl7:
    /* 147708 801A1698 5040000B */  beql       $v0, $zero, .L801A16C8_ovl7
    /* 14770C 801A169C 80820005 */   lb        $v0, 0x5($a0)
    /* 147710 801A16A0 0040F809 */  jalr       $v0
    /* 147714 801A16A4 8FA40038 */   lw        $a0, 0x38($sp)
    /* 147718 801A16A8 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* 14771C 801A16AC 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 147720 801A16B0 8FAE0028 */  lw         $t6, 0x28($sp)
    /* 147724 801A16B4 2407FFFF */  addiu      $a3, $zero, -0x1
    /* 147728 801A16B8 8D630000 */  lw         $v1, 0x0($t3)
    /* 14772C 801A16BC 8DC40098 */  lw         $a0, 0x98($t6)
    /* 147730 801A16C0 00031880 */  sll        $v1, $v1, 2
    /* 147734 801A16C4 80820005 */  lb         $v0, 0x5($a0)
  .L801A16C8_ovl7:
    /* 147738 801A16C8 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 14773C 801A16CC 00230821 */  addu       $at, $at, $v1
    /* 147740 801A16D0 10E20008 */  beq        $a3, $v0, .L801A16F4_ovl7
    /* 147744 801A16D4 00000000 */   nop
    /* 147748 801A16D8 AC22DC50 */  sw         $v0, %lo(gEntityFuncListIDArray)($at)
    /* 14774C 801A16DC 0C06658A */  jal        func_80199628_ovl7
    /* 147750 801A16E0 8FA40038 */   lw        $a0, 0x38($sp)
    /* 147754 801A16E4 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 147758 801A16E8 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 14775C 801A16EC 8F030000 */  lw         $v1, 0x0($t8)
    /* 147760 801A16F0 00031880 */  sll        $v1, $v1, 2
  .L801A16F4_ovl7:
    /* 147764 801A16F4 3C19800E */  lui        $t9, %hi(gEntityFuncListIDArray)
    /* 147768 801A16F8 0323C821 */  addu       $t9, $t9, $v1
    /* 14776C 801A16FC 8F39DC50 */  lw         $t9, %lo(gEntityFuncListIDArray)($t9)
    /* 147770 801A1700 8FAD0030 */  lw         $t5, 0x30($sp)
    /* 147774 801A1704 01B91026 */  xor        $v0, $t5, $t9
    /* 147778 801A1708 10000002 */  b          .L801A1714_ovl7
    /* 14777C 801A170C 0002102B */   sltu      $v0, $zero, $v0
    /* 147780 801A1710 00001025 */  or         $v0, $zero, $zero
  .L801A1714_ovl7:
    /* 147784 801A1714 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 147788 801A1718 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 14778C 801A171C 03E00008 */  jr         $ra
    /* 147790 801A1720 00000000 */   nop
endlabel func_801A0D74_ovl7
.size func_801A0D74_ovl7, . - func_801A0D74_ovl7
