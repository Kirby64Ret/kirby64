nonmatching func_801DF758_ovl12, 0x1B8

glabel func_801DF758_ovl12
    /* 1EFA98 801DF758 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 1EFA9C 801DF75C 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 1EFAA0 801DF760 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 1EFAA4 801DF764 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1EFAA8 801DF768 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1EFAAC 801DF76C 8C620000 */  lw         $v0, 0x0($v1)
    /* 1EFAB0 801DF770 3C10800E */  lui        $s0, %hi(D_800E1B50)
    /* 1EFAB4 801DF774 3C01800E */  lui        $at, %hi(D_800E7B20)
    /* 1EFAB8 801DF778 00021080 */  sll        $v0, $v0, 2
    /* 1EFABC 801DF77C 02028021 */  addu       $s0, $s0, $v0
    /* 1EFAC0 801DF780 8E101B50 */  lw         $s0, %lo(D_800E1B50)($s0)
    /* 1EFAC4 801DF784 00220821 */  addu       $at, $at, $v0
    /* 1EFAC8 801DF788 8E0E008C */  lw         $t6, 0x8C($s0)
    /* 1EFACC 801DF78C 15C00003 */  bnez       $t6, .L801DF79C_ovl12
    /* 1EFAD0 801DF790 00000000 */   nop
    /* 1EFAD4 801DF794 10000059 */  b          .L801DF8FC_ovl12
    /* 1EFAD8 801DF798 00001025 */   or        $v0, $zero, $zero
  .L801DF79C_ovl12:
    /* 1EFADC 801DF79C C4247B20 */  lwc1       $f4, %lo(D_800E7B20)($at)
    /* 1EFAE0 801DF7A0 3C01800F */  lui        $at, %hi(D_800EB160)
    /* 1EFAE4 801DF7A4 00220821 */  addu       $at, $at, $v0
    /* 1EFAE8 801DF7A8 E424B160 */  swc1       $f4, %lo(D_800EB160)($at)
    /* 1EFAEC 801DF7AC 0C044554 */  jal        func_80111550
    /* 1EFAF0 801DF7B0 8C640000 */   lw        $a0, 0x0($v1)
    /* 1EFAF4 801DF7B4 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* 1EFAF8 801DF7B8 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 1EFAFC 801DF7BC 8E04008C */  lw         $a0, 0x8C($s0)
    /* 1EFB00 801DF7C0 0C044722 */  jal        func_80111C88
    /* 1EFB04 801DF7C4 8DE50000 */   lw        $a1, 0x0($t7)
    /* 1EFB08 801DF7C8 0C0447B3 */  jal        func_80111ECC
    /* 1EFB0C 801DF7CC 00402025 */   or        $a0, $v0, $zero
    /* 1EFB10 801DF7D0 0C0442C0 */  jal        func_80110B00
    /* 1EFB14 801DF7D4 27A40038 */   addiu     $a0, $sp, 0x38
    /* 1EFB18 801DF7D8 1040000C */  beqz       $v0, .L801DF80C_ovl12
    /* 1EFB1C 801DF7DC 3C198005 */   lui       $t9, %hi(omCurrentObj)
    /* 1EFB20 801DF7E0 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 1EFB24 801DF7E4 93B8003A */  lbu        $t8, 0x3A($sp)
    /* 1EFB28 801DF7E8 3C03800F */  lui        $v1, %hi(D_800E83E0)
    /* 1EFB2C 801DF7EC 8F280000 */  lw         $t0, 0x0($t9)
    /* 1EFB30 801DF7F0 246383E0 */  addiu      $v1, $v1, %lo(D_800E83E0)
    /* 1EFB34 801DF7F4 00084880 */  sll        $t1, $t0, 2
    /* 1EFB38 801DF7F8 00695021 */  addu       $t2, $v1, $t1
    /* 1EFB3C 801DF7FC AD580000 */  sw         $t8, 0x0($t2)
    /* 1EFB40 801DF800 93AB003B */  lbu        $t3, 0x3B($sp)
    /* 1EFB44 801DF804 10000028 */  b          .L801DF8A8_ovl12
    /* 1EFB48 801DF808 A20B0043 */   sb        $t3, 0x43($s0)
  .L801DF80C_ovl12:
    /* 1EFB4C 801DF80C 0C0443F5 */  jal        func_80110FD4
    /* 1EFB50 801DF810 27A40038 */   addiu     $a0, $sp, 0x38
    /* 1EFB54 801DF814 1040000C */  beqz       $v0, .L801DF848_ovl12
    /* 1EFB58 801DF818 3C0D8005 */   lui       $t5, %hi(omCurrentObj)
    /* 1EFB5C 801DF81C 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 1EFB60 801DF820 93AC003A */  lbu        $t4, 0x3A($sp)
    /* 1EFB64 801DF824 3C03800F */  lui        $v1, %hi(D_800E83E0)
    /* 1EFB68 801DF828 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 1EFB6C 801DF82C 246383E0 */  addiu      $v1, $v1, %lo(D_800E83E0)
    /* 1EFB70 801DF830 000E7880 */  sll        $t7, $t6, 2
    /* 1EFB74 801DF834 006FC821 */  addu       $t9, $v1, $t7
    /* 1EFB78 801DF838 AF2C0000 */  sw         $t4, 0x0($t9)
    /* 1EFB7C 801DF83C 93A8003B */  lbu        $t0, 0x3B($sp)
    /* 1EFB80 801DF840 10000019 */  b          .L801DF8A8_ovl12
    /* 1EFB84 801DF844 A2080043 */   sb        $t0, 0x43($s0)
  .L801DF848_ovl12:
    /* 1EFB88 801DF848 0C044054 */  jal        func_80110150
    /* 1EFB8C 801DF84C 27A40038 */   addiu     $a0, $sp, 0x38
    /* 1EFB90 801DF850 1040000C */  beqz       $v0, .L801DF884_ovl12
    /* 1EFB94 801DF854 3C188005 */   lui       $t8, %hi(omCurrentObj)
    /* 1EFB98 801DF858 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 1EFB9C 801DF85C 93A9003A */  lbu        $t1, 0x3A($sp)
    /* 1EFBA0 801DF860 3C03800F */  lui        $v1, %hi(D_800E83E0)
    /* 1EFBA4 801DF864 8F0A0000 */  lw         $t2, 0x0($t8)
    /* 1EFBA8 801DF868 246383E0 */  addiu      $v1, $v1, %lo(D_800E83E0)
    /* 1EFBAC 801DF86C 000A5880 */  sll        $t3, $t2, 2
    /* 1EFBB0 801DF870 006B6821 */  addu       $t5, $v1, $t3
    /* 1EFBB4 801DF874 ADA90000 */  sw         $t1, 0x0($t5)
    /* 1EFBB8 801DF878 93AE003B */  lbu        $t6, 0x3B($sp)
    /* 1EFBBC 801DF87C 1000000A */  b          .L801DF8A8_ovl12
    /* 1EFBC0 801DF880 A20E0043 */   sb        $t6, 0x43($s0)
  .L801DF884_ovl12:
    /* 1EFBC4 801DF884 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* 1EFBC8 801DF888 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 1EFBCC 801DF88C 3C03800F */  lui        $v1, %hi(D_800E83E0)
    /* 1EFBD0 801DF890 246383E0 */  addiu      $v1, $v1, %lo(D_800E83E0)
    /* 1EFBD4 801DF894 8DEC0000 */  lw         $t4, 0x0($t7)
    /* 1EFBD8 801DF898 000CC880 */  sll        $t9, $t4, 2
    /* 1EFBDC 801DF89C 00794021 */  addu       $t0, $v1, $t9
    /* 1EFBE0 801DF8A0 AD000000 */  sw         $zero, 0x0($t0)
    /* 1EFBE4 801DF8A4 A2000043 */  sb         $zero, 0x43($s0)
  .L801DF8A8_ovl12:
    /* 1EFBE8 801DF8A8 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 1EFBEC 801DF8AC 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 1EFBF0 801DF8B0 24010001 */  addiu      $at, $zero, 0x1
    /* 1EFBF4 801DF8B4 8F0A0000 */  lw         $t2, 0x0($t8)
    /* 1EFBF8 801DF8B8 000A5880 */  sll        $t3, $t2, 2
    /* 1EFBFC 801DF8BC 006B4821 */  addu       $t1, $v1, $t3
    /* 1EFC00 801DF8C0 8D220000 */  lw         $v0, 0x0($t1)
    /* 1EFC04 801DF8C4 10410005 */  beq        $v0, $at, .L801DF8DC_ovl12
    /* 1EFC08 801DF8C8 24010002 */   addiu     $at, $zero, 0x2
    /* 1EFC0C 801DF8CC 10410007 */  beq        $v0, $at, .L801DF8EC_ovl12
    /* 1EFC10 801DF8D0 00000000 */   nop
    /* 1EFC14 801DF8D4 10000009 */  b          .L801DF8FC_ovl12
    /* 1EFC18 801DF8D8 00001025 */   or        $v0, $zero, $zero
  .L801DF8DC_ovl12:
    /* 1EFC1C 801DF8DC 0C077CE5 */  jal        func_801DF394_ovl12
    /* 1EFC20 801DF8E0 00000000 */   nop
    /* 1EFC24 801DF8E4 10000005 */  b          .L801DF8FC_ovl12
    /* 1EFC28 801DF8E8 24020001 */   addiu     $v0, $zero, 0x1
  .L801DF8EC_ovl12:
    /* 1EFC2C 801DF8EC 0C077D7C */  jal        func_801DF5F0_ovl12
    /* 1EFC30 801DF8F0 27A40038 */   addiu     $a0, $sp, 0x38
    /* 1EFC34 801DF8F4 10000001 */  b          .L801DF8FC_ovl12
    /* 1EFC38 801DF8F8 24020001 */   addiu     $v0, $zero, 0x1
  .L801DF8FC_ovl12:
    /* 1EFC3C 801DF8FC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1EFC40 801DF900 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1EFC44 801DF904 27BD0058 */  addiu      $sp, $sp, 0x58
    /* 1EFC48 801DF908 03E00008 */  jr         $ra
    /* 1EFC4C 801DF90C 00000000 */   nop
endlabel func_801DF758_ovl12
.size func_801DF758_ovl12, . - func_801DF758_ovl12
