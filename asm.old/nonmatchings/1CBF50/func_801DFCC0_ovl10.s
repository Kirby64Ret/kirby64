glabel func_801DFCC0_ovl10
/* 1D0A30 801DFCC0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1D0A34 801DFCC4 AFB20048 */  sw         $s2, 0x48($sp)
/* 1D0A38 801DFCC8 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 1D0A3C 801DFCCC 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
.L801DFCD0_ovl13:
/* 1D0A40 801DFCD0 8E4E0000 */  lw         $t6, 0x0($s2)
/* 1D0A44 801DFCD4 AFBF004C */  sw         $ra, 0x4C($sp)
/* 1D0A48 801DFCD8 AFB10044 */  sw         $s1, 0x44($sp)
/* 1D0A4C 801DFCDC AFB00040 */  sw         $s0, 0x40($sp)
/* 1D0A50 801DFCE0 F7BC0038 */  sdc1       $f28, 0x38($sp)
.L801DFCE4_ovl16:
/* 1D0A54 801DFCE4 F7BA0030 */  sdc1       $f26, 0x30($sp)
.L801DFCE8_ovl15:
/* 1D0A58 801DFCE8 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 1D0A5C 801DFCEC F7B60020 */  sdc1       $f22, 0x20($sp)
/* 1D0A60 801DFCF0 F7B40018 */  sdc1       $f20, 0x18($sp)
glabel func_801DFCF4_ovl15
/* 1D0A64 801DFCF4 8DCF0000 */  lw         $t7, 0x0($t6)
.L801DFCF8_ovl16:
/* 1D0A68 801DFCF8 3C10800F */  lui        $s0, %hi(D_800E9020)
/* 1D0A6C 801DFCFC 26109020 */  addiu      $s0, $s0, %lo(D_800E9020)
/* 1D0A70 801DFD00 000FC080 */  sll        $t8, $t7, 2
/* 1D0A74 801DFD04 0218C821 */  addu       $t9, $s0, $t8
/* 1D0A78 801DFD08 4480A000 */  mtc1       $zero, $f20
/* 1D0A7C 801DFD0C C7360000 */  lwc1       $f22, 0x0($t9)
/* 1D0A80 801DFD10 3C11800E */  lui        $s1, %hi(D_800E6A10)
/* 1D0A84 801DFD14 3C01801F */  lui        $at, %hi(func_801F49B4_ovl9 + 0x34)
/* 1D0A88 801DFD18 4614B032 */  c.eq.s     $f22, $f20
/* 1D0A8C 801DFD1C 00000000 */  nop
.L801DFD20_ovl9:
/* 1D0A90 801DFD20 45010042 */  bc1t       .L801DFE2C_ovl10
/* 1D0A94 801DFD24 00000000 */   nop
/* 1D0A98 801DFD28 C43C49E8 */  lwc1       $f28, %lo(func_801F49B4_ovl9 + 0x34)($at)
.L801DFD2C_ovl9:
/* 1D0A9C 801DFD2C 3C01801F */  lui        $at, %hi(func_801F49B4_ovl9 + 0x38)
/* 1D0AA0 801DFD30 C43A49EC */  lwc1       $f26, %lo(func_801F49B4_ovl9 + 0x38)($at)
.L801DFD34_ovl12:
/* 1D0AA4 801DFD34 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1D0AA8 801DFD38 4481C000 */  mtc1       $at, $f24
glabel func_801DFD3C_ovl11
/* 1D0AAC 801DFD3C 26316A10 */  addiu      $s1, $s1, %lo(D_800E6A10)
/* 1D0AB0 801DFD40 8E440000 */  lw         $a0, 0x0($s2)
.L801DFD44_ovl10:
/* 1D0AB4 801DFD44 8C820000 */  lw         $v0, 0x0($a0)
glabel func_801DFD48_ovl16
/* 1D0AB8 801DFD48 00021080 */  sll        $v0, $v0, 2
/* 1D0ABC 801DFD4C 02224021 */  addu       $t0, $s1, $v0
/* 1D0AC0 801DFD50 C5040000 */  lwc1       $f4, 0x0($t0)
/* 1D0AC4 801DFD54 02021821 */  addu       $v1, $s0, $v0
/* 1D0AC8 801DFD58 C4620000 */  lwc1       $f2, 0x0($v1)
/* 1D0ACC 801DFD5C 4604C032 */  c.eq.s     $f24, $f4
/* 1D0AD0 801DFD60 00000000 */  nop
/* 1D0AD4 801DFD64 45020004 */  bc1fl      .L801DFD78_ovl10
.L801DFD68_ovl9:
/* 1D0AD8 801DFD68 4600E006 */   mov.s     $f0, $f28
/* 1D0ADC 801DFD6C 10000002 */  b          .L801DFD78_ovl10
/* 1D0AE0 801DFD70 4600D006 */   mov.s     $f0, $f26
/* 1D0AE4 801DFD74 4600E006 */  mov.s      $f0, $f28
.L801DFD78_ovl10:
/* 1D0AE8 801DFD78 4616A03C */  c.lt.s     $f20, $f22
glabel func_801DFD7C_ovl14
/* 1D0AEC 801DFD7C 46001180 */  add.s      $f6, $f2, $f0
/* 1D0AF0 801DFD80 4500000D */  bc1f       .L801DFDB8_ovl12
/* 1D0AF4 801DFD84 E4660000 */   swc1      $f6, 0x0($v1)
/* 1D0AF8 801DFD88 8C890000 */  lw         $t1, 0x0($a0)
/* 1D0AFC 801DFD8C 00001025 */  or         $v0, $zero, $zero
glabel func_801DFD90_ovl14
/* 1D0B00 801DFD90 00095080 */  sll        $t2, $t1, 2
/* 1D0B04 801DFD94 020A1821 */  addu       $v1, $s0, $t2
/* 1D0B08 801DFD98 C4680000 */  lwc1       $f8, 0x0($v1)
/* 1D0B0C 801DFD9C 4614403E */  c.le.s     $f8, $f20
.L801DFDA0_ovl9:
/* 1D0B10 801DFDA0 00000000 */  nop
/* 1D0B14 801DFDA4 4500000E */  bc1f       .L801DFDE0_ovl17
.L801DFDA8_ovl12:
/* 1D0B18 801DFDA8 00000000 */   nop
/* 1D0B1C 801DFDAC 24020001 */  addiu      $v0, $zero, 0x1
.L801DFDB0_ovl16:
/* 1D0B20 801DFDB0 1000000B */  b          .L801DFDE0_ovl17
/* 1D0B24 801DFDB4 00000000 */   nop
.L801DFDB8_ovl12:
/* 1D0B28 801DFDB8 8C8B0000 */  lw         $t3, 0x0($a0)
/* 1D0B2C 801DFDBC 00001025 */  or         $v0, $zero, $zero
/* 1D0B30 801DFDC0 000B6080 */  sll        $t4, $t3, 2
.L801DFDC4_ovl15:
/* 1D0B34 801DFDC4 020C1821 */  addu       $v1, $s0, $t4
/* 1D0B38 801DFDC8 C46A0000 */  lwc1       $f10, 0x0($v1)
glabel func_801DFDCC_ovl16
/* 1D0B3C 801DFDCC 460AA03E */  c.le.s     $f20, $f10
/* 1D0B40 801DFDD0 00000000 */  nop
/* 1D0B44 801DFDD4 45000002 */  bc1f       .L801DFDE0_ovl17
/* 1D0B48 801DFDD8 00000000 */   nop
/* 1D0B4C 801DFDDC 24020001 */  addiu      $v0, $zero, 0x1
.L801DFDE0_ovl17:
/* 1D0B50 801DFDE0 10400006 */  beqz       $v0, .L801DFDFC_ovl10
/* 1D0B54 801DFDE4 00000000 */   nop
/* 1D0B58 801DFDE8 E4740000 */  swc1       $f20, 0x0($v1)
/* 1D0B5C 801DFDEC 8C8D0000 */  lw         $t5, 0x0($a0)
/* 1D0B60 801DFDF0 000D7080 */  sll        $t6, $t5, 2
/* 1D0B64 801DFDF4 020E7821 */  addu       $t7, $s0, $t6
/* 1D0B68 801DFDF8 C5F60000 */  lwc1       $f22, 0x0($t7)
.L801DFDFC_ovl10:
/* 1D0B6C 801DFDFC 0C002DAF */  jal        finish_current_thread
glabel func_801DFE00_ovl9
/* 1D0B70 801DFE00 24040001 */   addiu     $a0, $zero, 0x1
/* 1D0B74 801DFE04 0C02BC8C */  jal        func_800AF230
.L801DFE08_ovl11:
/* 1D0B78 801DFE08 00000000 */   nop
/* 1D0B7C 801DFE0C 50400004 */  beql       $v0, $zero, .L801DFE20_ovl10
/* 1D0B80 801DFE10 4614B032 */   c.eq.s    $f22, $f20
/* 1D0B84 801DFE14 10000008 */  b          .L801DFE38_ovl10
/* 1D0B88 801DFE18 00001025 */   or        $v0, $zero, $zero
/* 1D0B8C 801DFE1C 4614B032 */  c.eq.s     $f22, $f20
.L801DFE20_ovl10:
/* 1D0B90 801DFE20 00000000 */  nop
/* 1D0B94 801DFE24 4502FFC7 */  bc1fl      .L801DFD44_ovl10
.L801DFE28_ovl16:
/* 1D0B98 801DFE28 8E440000 */   lw        $a0, 0x0($s2)
.L801DFE2C_ovl10:
/* 1D0B9C 801DFE2C 0C02BC9F */  jal        func_800AF27C
/* 1D0BA0 801DFE30 00000000 */   nop
/* 1D0BA4 801DFE34 24020001 */  addiu      $v0, $zero, 0x1
.L801DFE38_ovl10:
/* 1D0BA8 801DFE38 8FBF004C */  lw         $ra, 0x4C($sp)
/* 1D0BAC 801DFE3C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 1D0BB0 801DFE40 D7B60020 */  ldc1       $f22, 0x20($sp)
glabel func_801DFE44_ovl16
/* 1D0BB4 801DFE44 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 1D0BB8 801DFE48 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 1D0BBC 801DFE4C D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 1D0BC0 801DFE50 8FB00040 */  lw         $s0, 0x40($sp)
/* 1D0BC4 801DFE54 8FB10044 */  lw         $s1, 0x44($sp)
/* 1D0BC8 801DFE58 8FB20048 */  lw         $s2, 0x48($sp)
/* 1D0BCC 801DFE5C 03E00008 */  jr         $ra
/* 1D0BD0 801DFE60 27BD0050 */   addiu     $sp, $sp, 0x50
