nonmatching func_801F0EC8_ovl10, 0x254

glabel func_801F0EC8_ovl10
    /* 1E1C38 801F0EC8 27BDFF70 */  addiu      $sp, $sp, -0x90
    /* 1E1C3C 801F0ECC AFB40028 */  sw         $s4, 0x28($sp)
    /* 1E1C40 801F0ED0 AFB30024 */  sw         $s3, 0x24($sp)
    /* 1E1C44 801F0ED4 AFB00018 */  sw         $s0, 0x18($sp)
    /* 1E1C48 801F0ED8 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 1E1C4C 801F0EDC 3C10801F */  lui        $s0, %hi(D_801F4D68_ovl10)
    /* 1E1C50 801F0EE0 3C13800E */  lui        $s3, %hi(D_800DE350)
    /* 1E1C54 801F0EE4 3C14801F */  lui        $s4, %hi(D_801F4D84_ovl10)
    /* 1E1C58 801F0EE8 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 1E1C5C 801F0EEC AFB20020 */  sw         $s2, 0x20($sp)
    /* 1E1C60 801F0EF0 AFA40090 */  sw         $a0, 0x90($sp)
    /* 1E1C64 801F0EF4 26944D84 */  addiu      $s4, $s4, %lo(D_801F4D84_ovl10)
    /* 1E1C68 801F0EF8 2673E350 */  addiu      $s3, $s3, %lo(D_800DE350)
    /* 1E1C6C 801F0EFC 26104D68 */  addiu      $s0, $s0, %lo(D_801F4D68_ovl10)
    /* 1E1C70 801F0F00 00008825 */  or         $s1, $zero, $zero
  .L801F0F04_ovl10:
    /* 1E1C74 801F0F04 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 1E1C78 801F0F08 27A40060 */  addiu      $a0, $sp, 0x60
    /* 1E1C7C 801F0F0C 00003025 */  or         $a2, $zero, $zero
    /* 1E1C80 801F0F10 11C0001C */  beqz       $t6, .L801F0F84_ovl10
    /* 1E1C84 801F0F14 27B80074 */   addiu     $t8, $sp, 0x74
    /* 1E1C88 801F0F18 8E6F0000 */  lw         $t7, 0x0($s3)
    /* 1E1C8C 801F0F1C 02389021 */  addu       $s2, $s1, $t8
    /* 1E1C90 801F0F20 0C02C8D0 */  jal        func_800B2340
    /* 1E1C94 801F0F24 8DE5003C */   lw        $a1, 0x3C($t7)
    /* 1E1C98 801F0F28 8E060000 */  lw         $a2, 0x0($s0)
    /* 1E1C9C 801F0F2C 27A40054 */  addiu      $a0, $sp, 0x54
    /* 1E1CA0 801F0F30 0006C880 */  sll        $t9, $a2, 2
    /* 1E1CA4 801F0F34 02794021 */  addu       $t0, $s3, $t9
    /* 1E1CA8 801F0F38 8D090000 */  lw         $t1, 0x0($t0)
    /* 1E1CAC 801F0F3C 0C02C8D0 */  jal        func_800B2340
    /* 1E1CB0 801F0F40 8D25003C */   lw        $a1, 0x3C($t1)
    /* 1E1CB4 801F0F44 C7A40054 */  lwc1       $f4, 0x54($sp)
    /* 1E1CB8 801F0F48 C7A60060 */  lwc1       $f6, 0x60($sp)
    /* 1E1CBC 801F0F4C C7A80058 */  lwc1       $f8, 0x58($sp)
    /* 1E1CC0 801F0F50 C7AA0064 */  lwc1       $f10, 0x64($sp)
    /* 1E1CC4 801F0F54 46062001 */  sub.s      $f0, $f4, $f6
    /* 1E1CC8 801F0F58 C7B0005C */  lwc1       $f16, 0x5C($sp)
    /* 1E1CCC 801F0F5C C7B20068 */  lwc1       $f18, 0x68($sp)
    /* 1E1CD0 801F0F60 460A4081 */  sub.s      $f2, $f8, $f10
    /* 1E1CD4 801F0F64 46000102 */  mul.s      $f4, $f0, $f0
    /* 1E1CD8 801F0F68 46128381 */  sub.s      $f14, $f16, $f18
    /* 1E1CDC 801F0F6C 46021182 */  mul.s      $f6, $f2, $f2
    /* 1E1CE0 801F0F70 46062200 */  add.s      $f8, $f4, $f6
    /* 1E1CE4 801F0F74 460E7282 */  mul.s      $f10, $f14, $f14
    /* 1E1CE8 801F0F78 0C00CAC8 */  jal        sqrtf
    /* 1E1CEC 801F0F7C 460A4300 */   add.s     $f12, $f8, $f10
    /* 1E1CF0 801F0F80 E6400000 */  swc1       $f0, 0x0($s2)
  .L801F0F84_ovl10:
    /* 1E1CF4 801F0F84 26100004 */  addiu      $s0, $s0, 0x4
    /* 1E1CF8 801F0F88 0214082B */  sltu       $at, $s0, $s4
    /* 1E1CFC 801F0F8C 1420FFDD */  bnez       $at, .L801F0F04_ovl10
    /* 1E1D00 801F0F90 26310004 */   addiu     $s1, $s1, 0x4
    /* 1E1D04 801F0F94 3C0A801F */  lui        $t2, %hi(D_801F4D6C_ovl10)
    /* 1E1D08 801F0F98 8D4A4D6C */  lw         $t2, %lo(D_801F4D6C_ovl10)($t2)
    /* 1E1D0C 801F0F9C 00001825 */  or         $v1, $zero, $zero
    /* 1E1D10 801F0FA0 3C0B801F */  lui        $t3, %hi(D_801F4D70_ovl10)
    /* 1E1D14 801F0FA4 11400008 */  beqz       $t2, .L801F0FC8_ovl10
    /* 1E1D18 801F0FA8 24020003 */   addiu     $v0, $zero, 0x3
    /* 1E1D1C 801F0FAC C7B00078 */  lwc1       $f16, 0x78($sp)
    /* 1E1D20 801F0FB0 C7B20074 */  lwc1       $f18, 0x74($sp)
    /* 1E1D24 801F0FB4 4612803C */  c.lt.s     $f16, $f18
    /* 1E1D28 801F0FB8 00000000 */  nop
    /* 1E1D2C 801F0FBC 45000002 */  bc1f       .L801F0FC8_ovl10
    /* 1E1D30 801F0FC0 00000000 */   nop
    /* 1E1D34 801F0FC4 24030001 */  addiu      $v1, $zero, 0x1
  .L801F0FC8_ovl10:
    /* 1E1D38 801F0FC8 8D6B4D70 */  lw         $t3, %lo(D_801F4D70_ovl10)($t3)
    /* 1E1D3C 801F0FCC 3C18801F */  lui        $t8, %hi(D_801F4D68_ovl10)
    /* 1E1D40 801F0FD0 27184D68 */  addiu      $t8, $t8, %lo(D_801F4D68_ovl10)
    /* 1E1D44 801F0FD4 1160000B */  beqz       $t3, .L801F1004_ovl10
    /* 1E1D48 801F0FD8 00028880 */   sll       $s1, $v0, 2
    /* 1E1D4C 801F0FDC 27A40074 */  addiu      $a0, $sp, 0x74
    /* 1E1D50 801F0FE0 00036080 */  sll        $t4, $v1, 2
    /* 1E1D54 801F0FE4 008C6821 */  addu       $t5, $a0, $t4
    /* 1E1D58 801F0FE8 C5A60000 */  lwc1       $f6, 0x0($t5)
    /* 1E1D5C 801F0FEC C7A4007C */  lwc1       $f4, 0x7C($sp)
    /* 1E1D60 801F0FF0 4606203C */  c.lt.s     $f4, $f6
    /* 1E1D64 801F0FF4 00000000 */  nop
    /* 1E1D68 801F0FF8 45020003 */  bc1fl      .L801F1008_ovl10
    /* 1E1D6C 801F0FFC 02388021 */   addu      $s0, $s1, $t8
    /* 1E1D70 801F1000 24030002 */  addiu      $v1, $zero, 0x2
  .L801F1004_ovl10:
    /* 1E1D74 801F1004 02388021 */  addu       $s0, $s1, $t8
  .L801F1008_ovl10:
    /* 1E1D78 801F1008 8E190000 */  lw         $t9, 0x0($s0)
    /* 1E1D7C 801F100C 27A40074 */  addiu      $a0, $sp, 0x74
    /* 1E1D80 801F1010 00037080 */  sll        $t6, $v1, 2
    /* 1E1D84 801F1014 008E7821 */  addu       $t7, $a0, $t6
    /* 1E1D88 801F1018 1320000B */  beqz       $t9, .L801F1048_ovl10
    /* 1E1D8C 801F101C C5E00000 */   lwc1      $f0, 0x0($t7)
    /* 1E1D90 801F1020 00914021 */  addu       $t0, $a0, $s1
    /* 1E1D94 801F1024 C5080000 */  lwc1       $f8, 0x0($t0)
    /* 1E1D98 801F1028 00024880 */  sll        $t1, $v0, 2
    /* 1E1D9C 801F102C 00895021 */  addu       $t2, $a0, $t1
    /* 1E1DA0 801F1030 4600403C */  c.lt.s     $f8, $f0
    /* 1E1DA4 801F1034 00000000 */  nop
    /* 1E1DA8 801F1038 45020004 */  bc1fl      .L801F104C_ovl10
    /* 1E1DAC 801F103C 8E0B0004 */   lw        $t3, 0x4($s0)
    /* 1E1DB0 801F1040 00401825 */  or         $v1, $v0, $zero
    /* 1E1DB4 801F1044 C5400000 */  lwc1       $f0, 0x0($t2)
  .L801F1048_ovl10:
    /* 1E1DB8 801F1048 8E0B0004 */  lw         $t3, 0x4($s0)
  .L801F104C_ovl10:
    /* 1E1DBC 801F104C 3C014208 */  lui        $at, (0x42080000 >> 16)
    /* 1E1DC0 801F1050 44812000 */  mtc1       $at, $f4
    /* 1E1DC4 801F1054 1160000B */  beqz       $t3, .L801F1084_ovl10
    /* 1E1DC8 801F1058 8FB20020 */   lw        $s2, 0x20($sp)
    /* 1E1DCC 801F105C 00916021 */  addu       $t4, $a0, $s1
    /* 1E1DD0 801F1060 C58A0004 */  lwc1       $f10, 0x4($t4)
    /* 1E1DD4 801F1064 4600503C */  c.lt.s     $f10, $f0
    /* 1E1DD8 801F1068 00000000 */  nop
    /* 1E1DDC 801F106C 45020006 */  bc1fl      .L801F1088_ovl10
    /* 1E1DE0 801F1070 8E0F0008 */   lw        $t7, 0x8($s0)
    /* 1E1DE4 801F1074 24430001 */  addiu      $v1, $v0, 0x1
    /* 1E1DE8 801F1078 00036880 */  sll        $t5, $v1, 2
    /* 1E1DEC 801F107C 008D7021 */  addu       $t6, $a0, $t5
    /* 1E1DF0 801F1080 C5C00000 */  lwc1       $f0, 0x0($t6)
  .L801F1084_ovl10:
    /* 1E1DF4 801F1084 8E0F0008 */  lw         $t7, 0x8($s0)
  .L801F1088_ovl10:
    /* 1E1DF8 801F1088 8FB30024 */  lw         $s3, 0x24($sp)
    /* 1E1DFC 801F108C 8FB40028 */  lw         $s4, 0x28($sp)
    /* 1E1E00 801F1090 11E0000B */  beqz       $t7, .L801F10C0_ovl10
    /* 1E1E04 801F1094 8FBF002C */   lw        $ra, 0x2C($sp)
    /* 1E1E08 801F1098 0091C021 */  addu       $t8, $a0, $s1
    /* 1E1E0C 801F109C C7100008 */  lwc1       $f16, 0x8($t8)
    /* 1E1E10 801F10A0 4600803C */  c.lt.s     $f16, $f0
    /* 1E1E14 801F10A4 00000000 */  nop
    /* 1E1E18 801F10A8 45020006 */  bc1fl      .L801F10C4_ovl10
    /* 1E1E1C 801F10AC 8E09000C */   lw        $t1, 0xC($s0)
    /* 1E1E20 801F10B0 24430002 */  addiu      $v1, $v0, 0x2
    /* 1E1E24 801F10B4 0003C880 */  sll        $t9, $v1, 2
    /* 1E1E28 801F10B8 00994021 */  addu       $t0, $a0, $t9
    /* 1E1E2C 801F10BC C5000000 */  lwc1       $f0, 0x0($t0)
  .L801F10C0_ovl10:
    /* 1E1E30 801F10C0 8E09000C */  lw         $t1, 0xC($s0)
  .L801F10C4_ovl10:
    /* 1E1E34 801F10C4 00915021 */  addu       $t2, $a0, $s1
    /* 1E1E38 801F10C8 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1E1E3C 801F10CC 5120000B */  beql       $t1, $zero, .L801F10FC_ovl10
    /* 1E1E40 801F10D0 4604003C */   c.lt.s    $f0, $f4
    /* 1E1E44 801F10D4 C552000C */  lwc1       $f18, 0xC($t2)
    /* 1E1E48 801F10D8 4600903C */  c.lt.s     $f18, $f0
    /* 1E1E4C 801F10DC 00000000 */  nop
    /* 1E1E50 801F10E0 45020006 */  bc1fl      .L801F10FC_ovl10
    /* 1E1E54 801F10E4 4604003C */   c.lt.s    $f0, $f4
    /* 1E1E58 801F10E8 24430003 */  addiu      $v1, $v0, 0x3
    /* 1E1E5C 801F10EC 00035880 */  sll        $t3, $v1, 2
    /* 1E1E60 801F10F0 03AB6021 */  addu       $t4, $sp, $t3
    /* 1E1E64 801F10F4 C5800074 */  lwc1       $f0, 0x74($t4)
    /* 1E1E68 801F10F8 4604003C */  c.lt.s     $f0, $f4
  .L801F10FC_ovl10:
    /* 1E1E6C 801F10FC 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 1E1E70 801F1100 24020008 */  addiu      $v0, $zero, 0x8
    /* 1E1E74 801F1104 45000003 */  bc1f       .L801F1114_ovl10
    /* 1E1E78 801F1108 00000000 */   nop
    /* 1E1E7C 801F110C 10000001 */  b          .L801F1114_ovl10
    /* 1E1E80 801F1110 00601025 */   or        $v0, $v1, $zero
  .L801F1114_ovl10:
    /* 1E1E84 801F1114 03E00008 */  jr         $ra
    /* 1E1E88 801F1118 27BD0090 */   addiu     $sp, $sp, 0x90
endlabel func_801F0EC8_ovl10
.size func_801F0EC8_ovl10, . - func_801F0EC8_ovl10
