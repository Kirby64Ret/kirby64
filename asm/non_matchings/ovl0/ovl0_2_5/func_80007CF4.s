glabel func_80007CF4
/* 0088F4 80007CF4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0088F8 80007CF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0088FC 80007CFC AFA40038 */  sw    $a0, 0x38($sp)
/* 008900 80007D00 8C8F0000 */  lw    $t7, ($a0)
/* 008904 80007D04 3C19DB06 */  lui   $t9, 0xdb06
/* 008908 80007D08 27A40034 */  addiu $a0, $sp, 0x34
/* 00890C 80007D0C AFAF0034 */  sw    $t7, 0x34($sp)
/* 008910 80007D10 25F80008 */  addiu $t8, $t7, 8
/* 008914 80007D14 AFB80034 */  sw    $t8, 0x34($sp)
/* 008918 80007D18 ADE00004 */  sw    $zero, 4($t7)
/* 00891C 80007D1C 0C0014DE */  jal   func_80005378_ovl0
/* 008920 80007D20 ADF90000 */   sw    $t9, ($t7)
/* 008924 80007D24 8FAB0034 */  lw    $t3, 0x34($sp)
/* 008928 80007D28 3C0DFE00 */  lui   $t5, 0xfe00
/* 00892C 80007D2C 3C0E8005 */  lui   $t6, %hi(D_8004A500) # $t6, 0x8005
/* 008930 80007D30 256C0008 */  addiu $t4, $t3, 8
/* 008934 80007D34 AFAC0034 */  sw    $t4, 0x34($sp)
/* 008938 80007D38 AD6D0000 */  sw    $t5, ($t3)
/* 00893C 80007D3C 8DCEA500 */  lw    $t6, %lo(D_8004A500)($t6)
/* 008940 80007D40 3C048005 */  lui   $a0, %hi(D_8004A530) # $a0, 0x8005
/* 008944 80007D44 2484A530 */  addiu $a0, %lo(D_8004A530) # addiu $a0, $a0, -0x5ad0
/* 008948 80007D48 0C001F27 */  jal   func_80007C9C_ovl0
/* 00894C 80007D4C AD6E0004 */   sw    $t6, 4($t3)
/* 008950 80007D50 8FAF0034 */  lw    $t7, 0x34($sp)
/* 008954 80007D54 3C0B8004 */  lui   $t3, %hi(D_8003DD78) # $t3, 0x8004
/* 008958 80007D58 3C078005 */  lui   $a3, %hi(D_8004A508) # $a3, 0x8005
/* 00895C 80007D5C 25F80008 */  addiu $t8, $t7, 8
/* 008960 80007D60 AFB80034 */  sw    $t8, 0x34($sp)
/* 008964 80007D64 256BDD78 */  addiu $t3, %lo(D_8003DD78) # addiu $t3, $t3, -0x2288
/* 008968 80007D68 3C19DE00 */  lui   $t9, 0xde00
/* 00896C 80007D6C 24E7A508 */  addiu $a3, %lo(D_8004A508) # addiu $a3, $a3, -0x5af8
/* 008970 80007D70 ADF90000 */  sw    $t9, ($t7)
/* 008974 80007D74 ADEB0004 */  sw    $t3, 4($t7)
/* 008978 80007D78 8CEE0000 */  lw    $t6, ($a3)
/* 00897C 80007D7C 24080140 */  li    $t0, 320
/* 008980 80007D80 01E01025 */  move  $v0, $t7
/* 008984 80007D84 01C8001A */  div   $zero, $t6, $t0
/* 008988 80007D88 00007812 */  mflo  $t7
/* 00898C 80007D8C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 008990 80007D90 44810000 */  mtc1  $at, $f0
/* 008994 80007D94 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 008998 80007D98 44811000 */  mtc1  $at, $f2
/* 00899C 80007D9C 3C098005 */  lui   $t1, %hi(D_8004A50C) # $t1, 0x8005
/* 0089A0 80007DA0 2529A50C */  addiu $t1, %lo(D_8004A50C) # addiu $t1, $t1, -0x5af4
/* 0089A4 80007DA4 240A00F0 */  li    $t2, 240
/* 0089A8 80007DA8 448F2000 */  mtc1  $t7, $f4
/* 0089AC 80007DAC 8FAC0034 */  lw    $t4, 0x34($sp)
/* 0089B0 80007DB0 3C068004 */  lui   $a2, %hi(D_8003DD30) # $a2, 0x8004
/* 0089B4 80007DB4 468021A0 */  cvt.s.w $f6, $f4
/* 0089B8 80007DB8 01801825 */  move  $v1, $t4
/* 0089BC 80007DBC 258D0008 */  addiu $t5, $t4, 8
/* 0089C0 80007DC0 AFAD0034 */  sw    $t5, 0x34($sp)
/* 0089C4 80007DC4 15000002 */  bnez  $t0, .L80007DD0_ovl0
/* 0089C8 80007DC8 00000000 */   nop   
/* 0089CC 80007DCC 0007000D */  break 7
.L80007DD0_ovl0:
/* 0089D0 80007DD0 2401FFFF */  li    $at, -1
/* 0089D4 80007DD4 15010004 */  bne   $t0, $at, .L80007DE8_ovl0
/* 0089D8 80007DD8 3C018000 */   lui   $at, 0x8000
/* 0089DC 80007DDC 15C10002 */  bne   $t6, $at, .L80007DE8_ovl0
/* 0089E0 80007DE0 00000000 */   nop   
/* 0089E4 80007DE4 0006000D */  break 6
.L80007DE8_ovl0:
/* 0089E8 80007DE8 8D2E0000 */  lw    $t6, ($t1)
/* 0089EC 80007DEC 46003202 */  mul.s $f8, $f6, $f0
/* 0089F0 80007DF0 3C01ED00 */  lui   $at, 0xed00
/* 0089F4 80007DF4 01CA001A */  div   $zero, $t6, $t2
/* 0089F8 80007DF8 00007812 */  mflo  $t7
/* 0089FC 80007DFC 448F9000 */  mtc1  $t7, $f18
/* 008A00 80007E00 46024282 */  mul.s $f10, $f8, $f2
/* 008A04 80007E04 46809120 */  cvt.s.w $f4, $f18
/* 008A08 80007E08 4600540D */  trunc.w.s $f16, $f10
/* 008A0C 80007E0C 46040182 */  mul.s $f6, $f0, $f4
/* 008A10 80007E10 44198000 */  mfc1  $t9, $f16
/* 008A14 80007E14 00000000 */  nop   
/* 008A18 80007E18 332B0FFF */  andi  $t3, $t9, 0xfff
/* 008A1C 80007E1C 46023202 */  mul.s $f8, $f6, $f2
/* 008A20 80007E20 000B6300 */  sll   $t4, $t3, 0xc
/* 008A24 80007E24 01816825 */  or    $t5, $t4, $at
/* 008A28 80007E28 15400002 */  bnez  $t2, .L80007E34_ovl0
/* 008A2C 80007E2C 00000000 */   nop   
/* 008A30 80007E30 0007000D */  break 7
.L80007E34_ovl0:
/* 008A34 80007E34 2401FFFF */  li    $at, -1
/* 008A38 80007E38 15410004 */  bne   $t2, $at, .L80007E4C_ovl0
/* 008A3C 80007E3C 3C018000 */   lui   $at, 0x8000
/* 008A40 80007E40 15C10002 */  bne   $t6, $at, .L80007E4C_ovl0
/* 008A44 80007E44 00000000 */   nop   
/* 008A48 80007E48 0006000D */  break 6
.L80007E4C_ovl0:
/* 008A4C 80007E4C 4600428D */  trunc.w.s $f10, $f8
/* 008A50 80007E50 44195000 */  mfc1  $t9, $f10
/* 008A54 80007E54 00000000 */  nop   
/* 008A58 80007E58 332B0FFF */  andi  $t3, $t9, 0xfff
/* 008A5C 80007E5C 01AB6025 */  or    $t4, $t5, $t3
/* 008A60 80007E60 AC6C0000 */  sw    $t4, ($v1)
/* 008A64 80007E64 8CE40000 */  lw    $a0, ($a3)
/* 008A68 80007E68 8D250000 */  lw    $a1, ($t1)
/* 008A6C 80007E6C 0088001A */  div   $zero, $a0, $t0
/* 008A70 80007E70 00007012 */  mflo  $t6
/* 008A74 80007E74 448E2000 */  mtc1  $t6, $f4
/* 008A78 80007E78 44848000 */  mtc1  $a0, $f16
/* 008A7C 80007E7C 00AA001A */  div   $zero, $a1, $t2
/* 008A80 80007E80 468021A0 */  cvt.s.w $f6, $f4
/* 008A84 80007E84 00005812 */  mflo  $t3
/* 008A88 80007E88 468084A0 */  cvt.s.w $f18, $f16
/* 008A8C 80007E8C 46060202 */  mul.s $f8, $f0, $f6
/* 008A90 80007E90 44853000 */  mtc1  $a1, $f6
/* 008A94 80007E94 15000002 */  bnez  $t0, .L80007EA0_ovl0
/* 008A98 80007E98 00000000 */   nop   
/* 008A9C 80007E9C 0007000D */  break 7
.L80007EA0_ovl0:
/* 008AA0 80007EA0 2401FFFF */  li    $at, -1
/* 008AA4 80007EA4 15010004 */  bne   $t0, $at, .L80007EB8_ovl0
/* 008AA8 80007EA8 3C018000 */   lui   $at, 0x8000
/* 008AAC 80007EAC 14810002 */  bne   $a0, $at, .L80007EB8_ovl0
/* 008AB0 80007EB0 00000000 */   nop   
/* 008AB4 80007EB4 0006000D */  break 6
.L80007EB8_ovl0:
/* 008AB8 80007EB8 46089281 */  sub.s $f10, $f18, $f8
/* 008ABC 80007EBC 448B4000 */  mtc1  $t3, $f8
/* 008AC0 80007EC0 468034A0 */  cvt.s.w $f18, $f6
/* 008AC4 80007EC4 46025402 */  mul.s $f16, $f10, $f2
/* 008AC8 80007EC8 468042A0 */  cvt.s.w $f10, $f8
/* 008ACC 80007ECC 4600810D */  trunc.w.s $f4, $f16
/* 008AD0 80007ED0 460A0402 */  mul.s $f16, $f0, $f10
/* 008AD4 80007ED4 44182000 */  mfc1  $t8, $f4
/* 008AD8 80007ED8 00000000 */  nop   
/* 008ADC 80007EDC 33190FFF */  andi  $t9, $t8, 0xfff
/* 008AE0 80007EE0 46109101 */  sub.s $f4, $f18, $f16
/* 008AE4 80007EE4 00196B00 */  sll   $t5, $t9, 0xc
/* 008AE8 80007EE8 15400002 */  bnez  $t2, .L80007EF4_ovl0
/* 008AEC 80007EEC 00000000 */   nop   
/* 008AF0 80007EF0 0007000D */  break 7
.L80007EF4_ovl0:
/* 008AF4 80007EF4 2401FFFF */  li    $at, -1
/* 008AF8 80007EF8 15410004 */  bne   $t2, $at, .L80007F0C_ovl0
/* 008AFC 80007EFC 3C018000 */   lui   $at, 0x8000
/* 008B00 80007F00 14A10002 */  bne   $a1, $at, .L80007F0C_ovl0
/* 008B04 80007F04 00000000 */   nop   
/* 008B08 80007F08 0006000D */  break 6
.L80007F0C_ovl0:
/* 008B0C 80007F0C 46022182 */  mul.s $f6, $f4, $f2
/* 008B10 80007F10 4600320D */  trunc.w.s $f8, $f6
/* 008B14 80007F14 440E4000 */  mfc1  $t6, $f8
/* 008B18 80007F18 00000000 */  nop   
/* 008B1C 80007F1C 31CF0FFF */  andi  $t7, $t6, 0xfff
/* 008B20 80007F20 01AFC025 */  or    $t8, $t5, $t7
/* 008B24 80007F24 AC780004 */  sw    $t8, 4($v1)
/* 008B28 80007F28 8CC6DD30 */  lw    $a2, %lo(D_8003DD30)($a2)
/* 008B2C 80007F2C 50C00004 */  beql  $a2, $zero, .L80007F40_ovl0
/* 008B30 80007F30 8FB90034 */   lw    $t9, 0x34($sp)
/* 008B34 80007F34 00C0F809 */  jalr  $a2
/* 008B38 80007F38 27A40034 */  addiu $a0, $sp, 0x34
/* 008B3C 80007F3C 8FB90034 */  lw    $t9, 0x34($sp)
.L80007F40_ovl0:
/* 008B40 80007F40 8FAB0038 */  lw    $t3, 0x38($sp)
/* 008B44 80007F44 AD790000 */  sw    $t9, ($t3)
/* 008B48 80007F48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 008B4C 80007F4C 27BD0038 */  addiu $sp, $sp, 0x38
/* 008B50 80007F50 03E00008 */  jr    $ra
/* 008B54 80007F54 00000000 */   nop   
