glabel func_801E5364_ovl10
/* 1D60D4 801E5364 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1D60D8 801E5368 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1D60DC 801E536C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D60E0 801E5370 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D60E4 801E5374 AFA40018 */  sw         $a0, 0x18($sp)
/* 1D60E8 801E5378 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1D60EC 801E537C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1D60F0 801E5380 240E0005 */  addiu      $t6, $zero, 0x5
/* 1D60F4 801E5384 000FC080 */  sll        $t8, $t7, 2
/* 1D60F8 801E5388 00380821 */  addu       $at, $at, $t8
glabel func_801E538C_ovl16
/* 1D60FC 801E538C AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
.L801E5390_ovl13:
/* 1D6100 801E5390 8C590000 */  lw         $t9, 0x0($v0)
/* 1D6104 801E5394 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1D6108 801E5398 44812000 */  mtc1       $at, $f4
/* 1D610C 801E539C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1D6110 801E53A0 00194080 */  sll        $t0, $t9, 2
/* 1D6114 801E53A4 00280821 */  addu       $at, $at, $t0
/* 1D6118 801E53A8 C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
/* 1D611C 801E53AC 3C040001 */  lui        $a0, (0x10319 >> 16)
/* 1D6120 801E53B0 46062032 */  c.eq.s     $f4, $f6
/* 1D6124 801E53B4 00000000 */  nop
/* 1D6128 801E53B8 45000009 */  bc1f       .L801E53E0_ovl10
/* 1D612C 801E53BC 00000000 */   nop
/* 1D6130 801E53C0 3C040001 */  lui        $a0, (0x1031B >> 16)
/* 1D6134 801E53C4 0C02A806 */  jal        func_800AA018
/* 1D6138 801E53C8 3484031B */   ori       $a0, $a0, (0x1031B & 0xFFFF)
/* 1D613C 801E53CC 3C040001 */  lui        $a0, (0x1031A >> 16)
/* 1D6140 801E53D0 0C02A806 */  jal        func_800AA018
glabel D_801E53D4_ovl17
/* 1D6144 801E53D4 3484031A */   ori       $a0, $a0, (0x1031A & 0xFFFF)
glabel func_801E53D8_ovl13
/* 1D6148 801E53D8 10000006 */  b          .L801E53F4_ovl10
/* 1D614C 801E53DC 00000000 */   nop
.L801E53E0_ovl10:
/* 1D6150 801E53E0 0C02A806 */  jal        func_800AA018
/* 1D6154 801E53E4 34840319 */   ori       $a0, $a0, (0x10319 & 0xFFFF)
glabel func_801E53E8_ovl9
/* 1D6158 801E53E8 3C040001 */  lui        $a0, (0x10318 >> 16)
/* 1D615C 801E53EC 0C02A806 */  jal        func_800AA018
/* 1D6160 801E53F0 34840318 */   ori       $a0, $a0, (0x10318 & 0xFFFF)
.L801E53F4_ovl10:
/* 1D6164 801E53F4 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1D6168 801E53F8 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1D616C 801E53FC 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
glabel D_801E5400_ovl17
/* 1D6170 801E5400 44810000 */  mtc1       $at, $f0
glabel D_801E5404_ovl17
/* 1D6174 801E5404 8C430000 */  lw         $v1, 0x0($v0)
.L801E5408_ovl16:
/* 1D6178 801E5408 3C01800E */  lui        $at, %hi(D_800E6A10)
.L801E540C_ovl13:
/* 1D617C 801E540C 44808000 */  mtc1       $zero, $f16
/* 1D6180 801E5410 00031880 */  sll        $v1, $v1, 2
.L801E5414_ovl16:
/* 1D6184 801E5414 00230821 */  addu       $at, $at, $v1
glabel D_801E5418_ovl17
/* 1D6188 801E5418 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* 1D618C 801E541C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1D6190 801E5420 00230821 */  addu       $at, $at, $v1
/* 1D6194 801E5424 46004282 */  mul.s      $f10, $f8, $f0
.L801E5428_ovl9:
/* 1D6198 801E5428 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
.L801E542C_ovl16:
/* 1D619C 801E542C 8C490000 */  lw         $t1, 0x0($v0)
glabel func_801E5430_ovl17
/* 1D61A0 801E5430 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1D61A4 801E5434 00095080 */  sll        $t2, $t1, 2
/* 1D61A8 801E5438 002A0821 */  addu       $at, $at, $t2
/* 1D61AC 801E543C E4306690 */  swc1       $f16, %lo(D_800E6690)($at)
/* 1D61B0 801E5440 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1D61B4 801E5444 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1D61B8 801E5448 000B6080 */  sll        $t4, $t3, 2
/* 1D61BC 801E544C 002C0821 */  addu       $at, $at, $t4
/* 1D61C0 801E5450 0C02BE85 */  jal        func_800AFA14
.L801E5454_ovl15:
/* 1D61C4 801E5454 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
glabel func_801E5458_ovl13
/* 1D61C8 801E5458 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D61CC 801E545C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D61D0 801E5460 03E00008 */  jr         $ra
/* 1D61D4 801E5464 00000000 */   nop
