glabel func_801E1AB0_ovl16
/* 18FB00 801E1AB0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 18FB04 801E1AB4 AFB20034 */  sw         $s2, 0x34($sp)
.L801E1AB8_ovl15:
/* 18FB08 801E1AB8 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 18FB0C 801E1ABC 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 18FB10 801E1AC0 8E420000 */  lw         $v0, 0x0($s2)
/* 18FB14 801E1AC4 AFBF004C */  sw         $ra, 0x4C($sp)
/* 18FB18 801E1AC8 AFB70048 */  sw         $s7, 0x48($sp)
.L801E1ACC_ovl13:
/* 18FB1C 801E1ACC AFB60044 */  sw         $s6, 0x44($sp)
/* 18FB20 801E1AD0 AFB50040 */  sw         $s5, 0x40($sp)
/* 18FB24 801E1AD4 AFB4003C */  sw         $s4, 0x3C($sp)
/* 18FB28 801E1AD8 AFB30038 */  sw         $s3, 0x38($sp)
/* 18FB2C 801E1ADC AFB10030 */  sw         $s1, 0x30($sp)
.L801E1AE0_ovl16:
/* 18FB30 801E1AE0 AFB0002C */  sw         $s0, 0x2C($sp)
/* 18FB34 801E1AE4 F7B80020 */  sdc1       $f24, 0x20($sp)
.L801E1AE8_ovl12:
/* 18FB38 801E1AE8 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 18FB3C 801E1AEC F7B40010 */  sdc1       $f20, 0x10($sp)
.L801E1AF0_ovl17:
/* 18FB40 801E1AF0 AFA40050 */  sw         $a0, 0x50($sp)
.L801E1AF4_ovl13:
/* 18FB44 801E1AF4 8C4F0000 */  lw         $t7, 0x0($v0)
/* 18FB48 801E1AF8 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 18FB4C 801E1AFC 240E0040 */  addiu      $t6, $zero, 0x40
.L801E1B00_ovl17:
/* 18FB50 801E1B00 000FC080 */  sll        $t8, $t7, 2
.L801E1B04_ovl15:
/* 18FB54 801E1B04 00380821 */  addu       $at, $at, $t8
.L801E1B08_ovl16:
/* 18FB58 801E1B08 AC2E9C60 */  sw         $t6, %lo(D_800E9C60)($at)
/* 18FB5C 801E1B0C 8C480000 */  lw         $t0, 0x0($v0)
/* 18FB60 801E1B10 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 18FB64 801E1B14 24190001 */  addiu      $t9, $zero, 0x1
/* 18FB68 801E1B18 00084880 */  sll        $t1, $t0, 2
/* 18FB6C 801E1B1C 00290821 */  addu       $at, $at, $t1
/* 18FB70 801E1B20 AC39DFD0 */  sw         $t9, %lo(D_800DDFD0)($at)
/* 18FB74 801E1B24 8C4A0000 */  lw         $t2, 0x0($v0)
.L801E1B28_ovl10:
/* 18FB78 801E1B28 3C04801D */  lui        $a0, %hi(D_801CA9F8_ovl7)
.L801E1B2C_ovl16:
/* 18FB7C 801E1B2C 3C01800E */  lui        $at, %hi(D_800E0490)
/* 18FB80 801E1B30 000A5880 */  sll        $t3, $t2, 2
/* 18FB84 801E1B34 2484A9F8 */  addiu      $a0, $a0, %lo(D_801CA9F8_ovl7)
/* 18FB88 801E1B38 002B0821 */  addu       $at, $at, $t3
/* 18FB8C 801E1B3C 0C068AB7 */  jal        func_801A2ADC_ovl7
/* 18FB90 801E1B40 AC240490 */   sw        $a0, %lo(D_800E0490)($at)
/* 18FB94 801E1B44 8E4D0000 */  lw         $t5, 0x0($s2)
/* 18FB98 801E1B48 3C18800E */  lui        $t8, %hi(D_800E1B50)
/* 18FB9C 801E1B4C 3C0C801D */  lui        $t4, %hi(D_801CBA10)
/* 18FBA0 801E1B50 8DAF0000 */  lw         $t7, 0x0($t5)
.L801E1B54_ovl15:
/* 18FBA4 801E1B54 258CBA10 */  addiu      $t4, $t4, %lo(D_801CBA10)
.L801E1B58_ovl10:
/* 18FBA8 801E1B58 44802000 */  mtc1       $zero, $f4
.L801E1B5C_ovl16:
/* 18FBAC 801E1B5C 000F7080 */  sll        $t6, $t7, 2
/* 18FBB0 801E1B60 030EC021 */  addu       $t8, $t8, $t6
.L801E1B64_ovl13:
/* 18FBB4 801E1B64 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
/* 18FBB8 801E1B68 3C04800E */  lui        $a0, %hi(D_800E3910)
.L801E1B6C_ovl17:
/* 18FBBC 801E1B6C 24843910 */  addiu      $a0, $a0, %lo(D_800E3910)
.L801E1B70_ovl15:
/* 18FBC0 801E1B70 AF0C0098 */  sw         $t4, 0x98($t8)
.L801E1B74_ovl13:
/* 18FBC4 801E1B74 8E420000 */  lw         $v0, 0x0($s2)
/* 18FBC8 801E1B78 3C01800E */  lui        $at, %hi(D_800E3750)
.L801E1B7C_ovl17:
/* 18FBCC 801E1B7C 3C13800E */  lui        $s3, %hi(D_800E3210)
/* 18FBD0 801E1B80 8C480000 */  lw         $t0, 0x0($v0)
.L801E1B84_ovl16:
/* 18FBD4 801E1B84 26733210 */  addiu      $s3, $s3, %lo(D_800E3210)
/* 18FBD8 801E1B88 3C05800E */  lui        $a1, %hi(D_800E3E50)
/* 18FBDC 801E1B8C 0008C880 */  sll        $t9, $t0, 2
glabel func_801E1B90_ovl12
/* 18FBE0 801E1B90 00994821 */  addu       $t1, $a0, $t9
/* 18FBE4 801E1B94 E5240000 */  swc1       $f4, 0x0($t1)
glabel func_801E1B98_ovl15
/* 18FBE8 801E1B98 8C430000 */  lw         $v1, 0x0($v0)
/* 18FBEC 801E1B9C 24A53E50 */  addiu      $a1, $a1, %lo(D_800E3E50)
/* 18FBF0 801E1BA0 3C16800E */  lui        $s6, %hi(D_800E6690)
/* 18FBF4 801E1BA4 00031880 */  sll        $v1, $v1, 2
/* 18FBF8 801E1BA8 00835021 */  addu       $t2, $a0, $v1
/* 18FBFC 801E1BAC C5400000 */  lwc1       $f0, 0x0($t2)
/* 18FC00 801E1BB0 00230821 */  addu       $at, $at, $v1
.L801E1BB4_ovl16:
/* 18FC04 801E1BB4 3C15800E */  lui        $s5, %hi(D_800E6850)
/* 18FC08 801E1BB8 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
/* 18FC0C 801E1BBC 8C4B0000 */  lw         $t3, 0x0($v0)
.L801E1BC0_ovl13:
/* 18FC10 801E1BC0 3C01800E */  lui        $at, %hi(D_800E3590)
/* 18FC14 801E1BC4 3C14800E */  lui        $s4, %hi(D_800E64D0)
/* 18FC18 801E1BC8 000B6880 */  sll        $t5, $t3, 2
.L801E1BCC_ovl13:
/* 18FC1C 801E1BCC 002D0821 */  addu       $at, $at, $t5
.L801E1BD0_ovl13:
/* 18FC20 801E1BD0 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 18FC24 801E1BD4 8C4F0000 */  lw         $t7, 0x0($v0)
.L801E1BD8_ovl16:
/* 18FC28 801E1BD8 3C01800E */  lui        $at, %hi(D_800E33D0)
.L801E1BDC_ovl16:
/* 18FC2C 801E1BDC 3C11800F */  lui        $s1, %hi(D_800EB320)
/* 18FC30 801E1BE0 000F7080 */  sll        $t6, $t7, 2
.L801E1BE4_ovl10:
/* 18FC34 801E1BE4 002E0821 */  addu       $at, $at, $t6
.L801E1BE8_ovl17:
/* 18FC38 801E1BE8 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
/* 18FC3C 801E1BEC 8C4C0000 */  lw         $t4, 0x0($v0)
.L801E1BF0_ovl16:
/* 18FC40 801E1BF0 3C01800E */  lui        $at, %hi(D_800E3050)
.L801E1BF4_ovl13:
/* 18FC44 801E1BF4 4480C000 */  mtc1       $zero, $f24
.L801E1BF8_ovl17:
/* 18FC48 801E1BF8 000CC080 */  sll        $t8, $t4, 2
/* 18FC4C 801E1BFC 02784021 */  addu       $t0, $s3, $t8
.L801E1C00_ovl15:
/* 18FC50 801E1C00 E5000000 */  swc1       $f0, 0x0($t0)
/* 18FC54 801E1C04 8C590000 */  lw         $t9, 0x0($v0)
.L801E1C08_ovl15:
/* 18FC58 801E1C08 2631B320 */  addiu      $s1, $s1, %lo(D_800EB320)
/* 18FC5C 801E1C0C 269464D0 */  addiu      $s4, $s4, %lo(D_800E64D0)
/* 18FC60 801E1C10 00194880 */  sll        $t1, $t9, 2
/* 18FC64 801E1C14 00290821 */  addu       $at, $at, $t1
/* 18FC68 801E1C18 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
glabel func_801E1C1C_ovl16
/* 18FC6C 801E1C1C 8C4A0000 */  lw         $t2, 0x0($v0)
glabel func_801E1C20_ovl15
/* 18FC70 801E1C20 3C018022 */  lui        $at, %hi(D_8021CFB4_ovl9)
/* 18FC74 801E1C24 C426CFB4 */  lwc1       $f6, %lo(D_8021CFB4_ovl9)($at)
/* 18FC78 801E1C28 000A5880 */  sll        $t3, $t2, 2
/* 18FC7C 801E1C2C 00AB6821 */  addu       $t5, $a1, $t3
/* 18FC80 801E1C30 E5A60000 */  swc1       $f6, 0x0($t5)
/* 18FC84 801E1C34 8C430000 */  lw         $v1, 0x0($v0)
.L801E1C38_ovl10:
/* 18FC88 801E1C38 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 18FC8C 801E1C3C 26B56850 */  addiu      $s5, $s5, %lo(D_800E6850)
/* 18FC90 801E1C40 00031880 */  sll        $v1, $v1, 2
/* 18FC94 801E1C44 00A37821 */  addu       $t7, $a1, $v1
/* 18FC98 801E1C48 C5E20000 */  lwc1       $f2, 0x0($t7)
/* 18FC9C 801E1C4C 00230821 */  addu       $at, $at, $v1
/* 18FCA0 801E1C50 26D66690 */  addiu      $s6, $s6, %lo(D_800E6690)
/* 18FCA4 801E1C54 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* 18FCA8 801E1C58 8C4E0000 */  lw         $t6, 0x0($v0)
/* 18FCAC 801E1C5C 3C01800E */  lui        $at, %hi(D_800E3AD0)
.L801E1C60_ovl12:
/* 18FCB0 801E1C60 00008025 */  or         $s0, $zero, $zero
/* 18FCB4 801E1C64 000E6080 */  sll        $t4, $t6, 2
.L801E1C68_ovl13:
/* 18FCB8 801E1C68 002C0821 */  addu       $at, $at, $t4
/* 18FCBC 801E1C6C E4223AD0 */  swc1       $f2, %lo(D_800E3AD0)($at)
.L801E1C70_ovl12:
/* 18FCC0 801E1C70 3C013E00 */  lui        $at, (0x3E000000 >> 16)
/* 18FCC4 801E1C74 4481B000 */  mtc1       $at, $f22
/* 18FCC8 801E1C78 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 18FCCC 801E1C7C 4481A000 */  mtc1       $at, $f20
.L801E1C80_ovl12:
/* 18FCD0 801E1C80 24170008 */  addiu      $s7, $zero, 0x8
/* 18FCD4 801E1C84 44905000 */  mtc1       $s0, $f10
.L801E1C88_ovl9:
/* 18FCD8 801E1C88 8E420000 */  lw         $v0, 0x0($s2)
.L801E1C8C_ovl12:
/* 18FCDC 801E1C8C 46805420 */  cvt.s.w    $f16, $f10
/* 18FCE0 801E1C90 8C430000 */  lw         $v1, 0x0($v0)
/* 18FCE4 801E1C94 00031880 */  sll        $v1, $v1, 2
.L801E1C98_ovl10:
/* 18FCE8 801E1C98 0223C021 */  addu       $t8, $s1, $v1
/* 18FCEC 801E1C9C 4610B482 */  mul.s      $f18, $f22, $f16
/* 18FCF0 801E1CA0 C7080000 */  lwc1       $f8, 0x0($t8)
/* 18FCF4 801E1CA4 02634021 */  addu       $t0, $s3, $v1
/* 18FCF8 801E1CA8 4612A101 */  sub.s      $f4, $f20, $f18
/* 18FCFC 801E1CAC 46044182 */  mul.s      $f6, $f8, $f4
/* 18FD00 801E1CB0 E5060000 */  swc1       $f6, 0x0($t0)
glabel func_801E1CB4_ovl17
/* 18FD04 801E1CB4 8C430000 */  lw         $v1, 0x0($v0)
/* 18FD08 801E1CB8 00031880 */  sll        $v1, $v1, 2
/* 18FD0C 801E1CBC 0283C821 */  addu       $t9, $s4, $v1
/* 18FD10 801E1CC0 C7200000 */  lwc1       $f0, 0x0($t9)
/* 18FD14 801E1CC4 02A34821 */  addu       $t1, $s5, $v1
.L801E1CC8_ovl15:
/* 18FD18 801E1CC8 02C31021 */  addu       $v0, $s6, $v1
/* 18FD1C 801E1CCC 4618003C */  c.lt.s     $f0, $f24
/* 18FD20 801E1CD0 00000000 */  nop
glabel func_801E1CD4_ovl12
/* 18FD24 801E1CD4 45020004 */  bc1fl      func_801E1CE8_ovl14
/* 18FD28 801E1CD8 46000086 */   mov.s     $f2, $f0
/* 18FD2C 801E1CDC 10000002 */  b          func_801E1CE8_ovl14
glabel func_801E1CE0_ovl14
/* 18FD30 801E1CE0 46000087 */   neg.s     $f2, $f0
/* 18FD34 801E1CE4 46000086 */  mov.s      $f2, $f0
glabel func_801E1CE8_ovl14
/* 18FD38 801E1CE8 C52A0000 */  lwc1       $f10, 0x0($t1)
.L801E1CEC_ovl13:
/* 18FD3C 801E1CEC 460A1032 */  c.eq.s     $f2, $f10
.L801E1CF0_ovl13:
/* 18FD40 801E1CF0 00000000 */  nop
/* 18FD44 801E1CF4 45000004 */  bc1f       .L801E1D08_ovl9
/* 18FD48 801E1CF8 00000000 */   nop
/* 18FD4C 801E1CFC C4500000 */  lwc1       $f16, 0x0($v0)
.L801E1D00_ovl13:
/* 18FD50 801E1D00 46008487 */  neg.s      $f18, $f16
/* 18FD54 801E1D04 E4520000 */  swc1       $f18, 0x0($v0)
.L801E1D08_ovl9:
/* 18FD58 801E1D08 0C002DAF */  jal        finish_current_thread
/* 18FD5C 801E1D0C 24040001 */   addiu     $a0, $zero, 0x1
/* 18FD60 801E1D10 26100001 */  addiu      $s0, $s0, 0x1
/* 18FD64 801E1D14 5617FFDC */  bnel       $s0, $s7, .L801E1C88_ovl9
/* 18FD68 801E1D18 44905000 */   mtc1      $s0, $f10
/* 18FD6C 801E1D1C 8E4A0000 */  lw         $t2, 0x0($s2)
/* 18FD70 801E1D20 8D4B0000 */  lw         $t3, 0x0($t2)
/* 18FD74 801E1D24 000B6880 */  sll        $t5, $t3, 2
.L801E1D28_ovl14:
/* 18FD78 801E1D28 022D1021 */  addu       $v0, $s1, $t5
/* 18FD7C 801E1D2C C4480000 */  lwc1       $f8, 0x0($v0)
/* 18FD80 801E1D30 46004107 */  neg.s      $f4, $f8
.L801E1D34_ovl16:
/* 18FD84 801E1D34 E4440000 */  swc1       $f4, 0x0($v0)
/* 18FD88 801E1D38 44905000 */  mtc1       $s0, $f10
glabel func_801E1D3C_ovl10
/* 18FD8C 801E1D3C 8E420000 */  lw         $v0, 0x0($s2)
/* 18FD90 801E1D40 46805420 */  cvt.s.w    $f16, $f10
/* 18FD94 801E1D44 8C430000 */  lw         $v1, 0x0($v0)
/* 18FD98 801E1D48 00031880 */  sll        $v1, $v1, 2
/* 18FD9C 801E1D4C 02237821 */  addu       $t7, $s1, $v1
/* 18FDA0 801E1D50 4610B482 */  mul.s      $f18, $f22, $f16
.L801E1D54_ovl13:
/* 18FDA4 801E1D54 C5E60000 */  lwc1       $f6, 0x0($t7)
.L801E1D58_ovl15:
/* 18FDA8 801E1D58 02637021 */  addu       $t6, $s3, $v1
.L801E1D5C_ovl13:
/* 18FDAC 801E1D5C 4612A201 */  sub.s      $f8, $f20, $f18
.L801E1D60_ovl13:
/* 18FDB0 801E1D60 46083102 */  mul.s      $f4, $f6, $f8
/* 18FDB4 801E1D64 E5C40000 */  swc1       $f4, 0x0($t6)
/* 18FDB8 801E1D68 8C430000 */  lw         $v1, 0x0($v0)
.L801E1D6C_ovl12:
/* 18FDBC 801E1D6C 00031880 */  sll        $v1, $v1, 2
.L801E1D70_ovl12:
/* 18FDC0 801E1D70 02836021 */  addu       $t4, $s4, $v1
/* 18FDC4 801E1D74 C5800000 */  lwc1       $f0, 0x0($t4)
/* 18FDC8 801E1D78 02A3C021 */  addu       $t8, $s5, $v1
glabel func_801E1D7C_ovl12
/* 18FDCC 801E1D7C 02C31021 */  addu       $v0, $s6, $v1
/* 18FDD0 801E1D80 4618003C */  c.lt.s     $f0, $f24
/* 18FDD4 801E1D84 00000000 */  nop
/* 18FDD8 801E1D88 45020004 */  bc1fl      .L801E1D9C_ovl9
/* 18FDDC 801E1D8C 46000086 */   mov.s     $f2, $f0
/* 18FDE0 801E1D90 10000002 */  b          .L801E1D9C_ovl9
.L801E1D94_ovl16:
/* 18FDE4 801E1D94 46000087 */   neg.s     $f2, $f0
/* 18FDE8 801E1D98 46000086 */  mov.s      $f2, $f0
.L801E1D9C_ovl9:
/* 18FDEC 801E1D9C C70A0000 */  lwc1       $f10, 0x0($t8)
/* 18FDF0 801E1DA0 460A1032 */  c.eq.s     $f2, $f10
.L801E1DA4_ovl14:
/* 18FDF4 801E1DA4 00000000 */  nop
/* 18FDF8 801E1DA8 45000004 */  bc1f       .L801E1DBC_ovl9
/* 18FDFC 801E1DAC 00000000 */   nop
/* 18FE00 801E1DB0 C4500000 */  lwc1       $f16, 0x0($v0)
/* 18FE04 801E1DB4 46008487 */  neg.s      $f18, $f16
/* 18FE08 801E1DB8 E4520000 */  swc1       $f18, 0x0($v0)
.L801E1DBC_ovl9:
/* 18FE0C 801E1DBC 0C002DAF */  jal        finish_current_thread
.L801E1DC0_ovl10:
/* 18FE10 801E1DC0 24040001 */   addiu     $a0, $zero, 0x1
glabel func_801E1DC4_ovl12
/* 18FE14 801E1DC4 2610FFFF */  addiu      $s0, $s0, -0x1
/* 18FE18 801E1DC8 5600FFDC */  bnel       $s0, $zero, func_801E1D3C_ovl10
/* 18FE1C 801E1DCC 44905000 */   mtc1      $s0, $f10
glabel func_801E1DD0_ovl10
/* 18FE20 801E1DD0 8E590000 */  lw         $t9, 0x0($s2)
/* 18FE24 801E1DD4 8FBF004C */  lw         $ra, 0x4C($sp)
/* 18FE28 801E1DD8 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 18FE2C 801E1DDC 8F290000 */  lw         $t1, 0x0($t9)
/* 18FE30 801E1DE0 24080004 */  addiu      $t0, $zero, 0x4
.L801E1DE4_ovl16:
/* 18FE34 801E1DE4 8FB20034 */  lw         $s2, 0x34($sp)
.L801E1DE8_ovl15:
/* 18FE38 801E1DE8 00095080 */  sll        $t2, $t1, 2
/* 18FE3C 801E1DEC 002A0821 */  addu       $at, $at, $t2
/* 18FE40 801E1DF0 D7B40010 */  ldc1       $f20, 0x10($sp)
.L801E1DF4_ovl13:
/* 18FE44 801E1DF4 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 18FE48 801E1DF8 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 18FE4C 801E1DFC 8FB0002C */  lw         $s0, 0x2C($sp)
.L801E1E00_ovl13:
/* 18FE50 801E1E00 8FB10030 */  lw         $s1, 0x30($sp)
/* 18FE54 801E1E04 8FB30038 */  lw         $s3, 0x38($sp)
/* 18FE58 801E1E08 8FB4003C */  lw         $s4, 0x3C($sp)
/* 18FE5C 801E1E0C 8FB50040 */  lw         $s5, 0x40($sp)
/* 18FE60 801E1E10 8FB60044 */  lw         $s6, 0x44($sp)
/* 18FE64 801E1E14 8FB70048 */  lw         $s7, 0x48($sp)
/* 18FE68 801E1E18 AC28DC50 */  sw         $t0, %lo(gEntityVtableIndexArray)($at)
/* 18FE6C 801E1E1C 03E00008 */  jr         $ra
/* 18FE70 801E1E20 27BD0050 */   addiu     $sp, $sp, 0x50
