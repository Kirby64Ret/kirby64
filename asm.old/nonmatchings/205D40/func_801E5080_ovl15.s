glabel func_801E5080_ovl15
/* 20FBE0 801E5080 27BDFFD8 */  addiu      $sp, $sp, -0x28
.L801E5084_ovl9:
/* 20FBE4 801E5084 AFBF0024 */  sw         $ra, 0x24($sp)
/* 20FBE8 801E5088 AFB10020 */  sw         $s1, 0x20($sp)
/* 20FBEC 801E508C AFB0001C */  sw         $s0, 0x1C($sp)
.L801E5090_ovl9:
/* 20FBF0 801E5090 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 20FBF4 801E5094 0C066E8F */  jal        func_8019BA3C_ovl7
glabel func_801E5098_ovl13
/* 20FBF8 801E5098 AFA40028 */   sw        $a0, 0x28($sp)
/* 20FBFC 801E509C 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 20FC00 801E50A0 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
glabel func_801E50A4_ovl10
/* 20FC04 801E50A4 8E220000 */  lw         $v0, 0x0($s1)
/* 20FC08 801E50A8 3C0E800B */  lui        $t6, %hi(func_800B7790)
/* 20FC0C 801E50AC 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 20FC10 801E50B0 8C4F0000 */  lw         $t7, 0x0($v0)
/* 20FC14 801E50B4 25CE7790 */  addiu      $t6, $t6, %lo(func_800B7790)
/* 20FC18 801E50B8 3C19801E */  lui        $t9, %hi(func_801E531C_ovl15)
.L801E50BC_ovl9:
/* 20FC1C 801E50BC 000FC080 */  sll        $t8, $t7, 2
/* 20FC20 801E50C0 00380821 */  addu       $at, $at, $t8
/* 20FC24 801E50C4 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 20FC28 801E50C8 8C480000 */  lw         $t0, 0x0($v0)
/* 20FC2C 801E50CC 3C01800E */  lui        $at, %hi(D_800DF150)
/* 20FC30 801E50D0 2739531C */  addiu      $t9, $t9, %lo(func_801E531C_ovl15)
/* 20FC34 801E50D4 00084880 */  sll        $t1, $t0, 2
/* 20FC38 801E50D8 00290821 */  addu       $at, $at, $t1
/* 20FC3C 801E50DC AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
.L801E50E0_ovl9:
/* 20FC40 801E50E0 8C4A0000 */  lw         $t2, 0x0($v0)
.L801E50E4_ovl16:
/* 20FC44 801E50E4 3C01800F */  lui        $at, %hi(D_800E8920)
/* 20FC48 801E50E8 3C0F800E */  lui        $t7, %hi(D_800E0D50)
.L801E50EC_ovl9:
/* 20FC4C 801E50EC 000A5880 */  sll        $t3, $t2, 2
/* 20FC50 801E50F0 002B0821 */  addu       $at, $at, $t3
/* 20FC54 801E50F4 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 20FC58 801E50F8 8C4C0000 */  lw         $t4, 0x0($v0)
/* 20FC5C 801E50FC 3C01801E */  lui        $at, %hi(D_801E6900_ovl15)
/* 20FC60 801E5100 C4246900 */  lwc1       $f4, %lo(D_801E6900_ovl15)($at)
/* 20FC64 801E5104 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 20FC68 801E5108 000C6880 */  sll        $t5, $t4, 2
glabel D_801E510C_ovl17
/* 20FC6C 801E510C 002D0821 */  addu       $at, $at, $t5
.L801E5110_ovl9:
/* 20FC70 801E5110 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
/* 20FC74 801E5114 8C430000 */  lw         $v1, 0x0($v0)
/* 20FC78 801E5118 3C04800E */  lui        $a0, %hi(D_800E17D0)
/* 20FC7C 801E511C 248417D0 */  addiu      $a0, $a0, %lo(D_800E17D0)
.L801E5120_ovl10:
/* 20FC80 801E5120 00031880 */  sll        $v1, $v1, 2
/* 20FC84 801E5124 01E37821 */  addu       $t7, $t7, $v1
/* 20FC88 801E5128 8DEF0D50 */  lw         $t7, %lo(D_800E0D50)($t7)
/* 20FC8C 801E512C 00834021 */  addu       $t0, $a0, $v1
/* 20FC90 801E5130 44804000 */  mtc1       $zero, $f8
/* 20FC94 801E5134 000F7080 */  sll        $t6, $t7, 2
/* 20FC98 801E5138 008EC021 */  addu       $t8, $a0, $t6
/* 20FC9C 801E513C C7060000 */  lwc1       $f6, 0x0($t8)
.L801E5140_ovl10:
/* 20FCA0 801E5140 3C01800F */  lui        $at, %hi(D_800E9020)
/* 20FCA4 801E5144 E5060000 */  swc1       $f6, 0x0($t0)
/* 20FCA8 801E5148 8C590000 */  lw         $t9, 0x0($v0)
.L801E514C_ovl9:
/* 20FCAC 801E514C 00194880 */  sll        $t1, $t9, 2
/* 20FCB0 801E5150 00290821 */  addu       $at, $at, $t1
.L801E5154_ovl17:
/* 20FCB4 801E5154 0C02CCFD */  jal        func_800B33F4
/* 20FCB8 801E5158 E4289020 */   swc1      $f8, %lo(D_800E9020)($at)
/* 20FCBC 801E515C 3C040001 */  lui        $a0, (0x10092 >> 16)
/* 20FCC0 801E5160 34840092 */  ori        $a0, $a0, (0x10092 & 0xFFFF)
/* 20FCC4 801E5164 2405002A */  addiu      $a1, $zero, 0x2A
.L801E5168_ovl9:
/* 20FCC8 801E5168 0C02A619 */  jal        func_800A9864
/* 20FCCC 801E516C 24060010 */   addiu     $a2, $zero, 0x10
/* 20FCD0 801E5170 3C040001 */  lui        $a0, (0x1053A >> 16)
.L801E5174_ovl10:
/* 20FCD4 801E5174 0C02A806 */  jal        func_800AA018
/* 20FCD8 801E5178 3484053A */   ori       $a0, $a0, (0x1053A & 0xFFFF)
/* 20FCDC 801E517C 8E220000 */  lw         $v0, 0x0($s1)
/* 20FCE0 801E5180 3C014220 */  lui        $at, (0x42200000 >> 16)
glabel func_801E5184_ovl10
/* 20FCE4 801E5184 4481A000 */  mtc1       $at, $f20
/* 20FCE8 801E5188 8C4A0000 */  lw         $t2, 0x0($v0)
/* 20FCEC 801E518C 3C01C120 */  lui        $at, (0xC1200000 >> 16)
/* 20FCF0 801E5190 44815000 */  mtc1       $at, $f10
/* 20FCF4 801E5194 3C01800E */  lui        $at, %hi(D_800E3210)
.L801E5198_ovl9:
/* 20FCF8 801E5198 000A5880 */  sll        $t3, $t2, 2
/* 20FCFC 801E519C 002B0821 */  addu       $at, $at, $t3
/* 20FD00 801E51A0 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
.L801E51A4_ovl9:
/* 20FD04 801E51A4 8C4C0000 */  lw         $t4, 0x0($v0)
/* 20FD08 801E51A8 3C10800E */  lui        $s0, %hi(gEntitiesNextPosYArray)
/* 20FD0C 801E51AC 26102790 */  addiu      $s0, $s0, %lo(gEntitiesNextPosYArray)
/* 20FD10 801E51B0 000C6880 */  sll        $t5, $t4, 2
/* 20FD14 801E51B4 020D7821 */  addu       $t7, $s0, $t5
.L801E51B8_ovl16:
/* 20FD18 801E51B8 C5F00000 */  lwc1       $f16, 0x0($t7)
/* 20FD1C 801E51BC 4610A03C */  c.lt.s     $f20, $f16
/* 20FD20 801E51C0 00000000 */  nop
/* 20FD24 801E51C4 4500000C */  bc1f       .L801E51F8_ovl15
/* 20FD28 801E51C8 00000000 */   nop
.L801E51CC_ovl15:
/* 20FD2C 801E51CC 0C002DAF */  jal        finish_current_thread
/* 20FD30 801E51D0 24040001 */   addiu     $a0, $zero, 0x1
/* 20FD34 801E51D4 8E2E0000 */  lw         $t6, 0x0($s1)
/* 20FD38 801E51D8 8DD80000 */  lw         $t8, 0x0($t6)
/* 20FD3C 801E51DC 00184080 */  sll        $t0, $t8, 2
/* 20FD40 801E51E0 0208C821 */  addu       $t9, $s0, $t0
/* 20FD44 801E51E4 C7320000 */  lwc1       $f18, 0x0($t9)
/* 20FD48 801E51E8 4612A03C */  c.lt.s     $f20, $f18
glabel func_801E51EC_ovl9
/* 20FD4C 801E51EC 00000000 */  nop
/* 20FD50 801E51F0 4501FFF6 */  bc1t       .L801E51CC_ovl15
/* 20FD54 801E51F4 00000000 */   nop
.L801E51F8_ovl15:
/* 20FD58 801E51F8 0C029D9E */  jal        play_sound
glabel func_801E51FC_ovl13
/* 20FD5C 801E51FC 2404019B */   addiu     $a0, $zero, 0x19B
/* 20FD60 801E5200 3C040001 */  lui        $a0, (0x10539 >> 16)
/* 20FD64 801E5204 0C02A806 */  jal        func_800AA018
/* 20FD68 801E5208 34840539 */   ori       $a0, $a0, (0x10539 & 0xFFFF)
/* 20FD6C 801E520C 8E220000 */  lw         $v0, 0x0($s1)
/* 20FD70 801E5210 44800000 */  mtc1       $zero, $f0
/* 20FD74 801E5214 3C04800E */  lui        $a0, %hi(D_800E3750)
/* 20FD78 801E5218 8C490000 */  lw         $t1, 0x0($v0)
/* 20FD7C 801E521C 24843750 */  addiu      $a0, $a0, %lo(D_800E3750)
/* 20FD80 801E5220 3C01800E */  lui        $at, %hi(D_800E3210)
/* 20FD84 801E5224 00095080 */  sll        $t2, $t1, 2
.L801E5228_ovl16:
/* 20FD88 801E5228 020A5821 */  addu       $t3, $s0, $t2
/* 20FD8C 801E522C E5740000 */  swc1       $f20, 0x0($t3)
/* 20FD90 801E5230 8C4C0000 */  lw         $t4, 0x0($v0)
/* 20FD94 801E5234 000C6880 */  sll        $t5, $t4, 2
/* 20FD98 801E5238 008D7821 */  addu       $t7, $a0, $t5
/* 20FD9C 801E523C E5E00000 */  swc1       $f0, 0x0($t7)
/* 20FDA0 801E5240 8C430000 */  lw         $v1, 0x0($v0)
.L801E5244_ovl9:
/* 20FDA4 801E5244 00031880 */  sll        $v1, $v1, 2
/* 20FDA8 801E5248 00837021 */  addu       $t6, $a0, $v1
/* 20FDAC 801E524C C5C40000 */  lwc1       $f4, 0x0($t6)
/* 20FDB0 801E5250 00230821 */  addu       $at, $at, $v1
/* 20FDB4 801E5254 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* 20FDB8 801E5258 8C580000 */  lw         $t8, 0x0($v0)
/* 20FDBC 801E525C 3C01801E */  lui        $at, %hi(D_801E6904_ovl15)
/* 20FDC0 801E5260 C4266904 */  lwc1       $f6, %lo(D_801E6904_ovl15)($at)
/* 20FDC4 801E5264 3C01800E */  lui        $at, %hi(D_800E3C90)
.L801E5268_ovl16:
/* 20FDC8 801E5268 00184080 */  sll        $t0, $t8, 2
/* 20FDCC 801E526C 00280821 */  addu       $at, $at, $t0
/* 20FDD0 801E5270 E4263C90 */  swc1       $f6, %lo(D_800E3C90)($at)
/* 20FDD4 801E5274 8C590000 */  lw         $t9, 0x0($v0)
glabel func_801E5278_ovl10
/* 20FDD8 801E5278 3C01800E */  lui        $at, %hi(D_800E3050)
/* 20FDDC 801E527C 00194880 */  sll        $t1, $t9, 2
/* 20FDE0 801E5280 00290821 */  addu       $at, $at, $t1
.L801E5284_ovl16:
/* 20FDE4 801E5284 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
/* 20FDE8 801E5288 8C4A0000 */  lw         $t2, 0x0($v0)
.L801E528C_ovl13:
/* 20FDEC 801E528C 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 20FDF0 801E5290 44814000 */  mtc1       $at, $f8
.L801E5294_ovl9:
/* 20FDF4 801E5294 3C01800E */  lui        $at, %hi(D_800E3590)
/* 20FDF8 801E5298 000A5880 */  sll        $t3, $t2, 2
/* 20FDFC 801E529C 002B0821 */  addu       $at, $at, $t3
/* 20FE00 801E52A0 E4283590 */  swc1       $f8, %lo(D_800E3590)($at)
glabel func_801E52A4_ovl9
/* 20FE04 801E52A4 8C4C0000 */  lw         $t4, 0x0($v0)
.L801E52A8_ovl13:
/* 20FE08 801E52A8 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 20FE0C 801E52AC 44815000 */  mtc1       $at, $f10
/* 20FE10 801E52B0 3C01800E */  lui        $at, %hi(D_800E3AD0)
glabel func_801E52B4_ovl13
/* 20FE14 801E52B4 000C6880 */  sll        $t5, $t4, 2
/* 20FE18 801E52B8 002D0821 */  addu       $at, $at, $t5
/* 20FE1C 801E52BC 0C02BC9F */  jal        func_800AF27C
/* 20FE20 801E52C0 E42A3AD0 */   swc1      $f10, %lo(D_800E3AD0)($at)
/* 20FE24 801E52C4 3C040001 */  lui        $a0, (0x10538 >> 16)
/* 20FE28 801E52C8 0C02A806 */  jal        func_800AA018
.L801E52CC_ovl16:
/* 20FE2C 801E52CC 34840538 */   ori       $a0, $a0, (0x10538 & 0xFFFF)
.L801E52D0_ovl16:
/* 20FE30 801E52D0 0C002DAF */  jal        finish_current_thread
/* 20FE34 801E52D4 2404004B */   addiu     $a0, $zero, 0x4B
/* 20FE38 801E52D8 8E2E0000 */  lw         $t6, 0x0($s1)
/* 20FE3C 801E52DC 3C19800E */  lui        $t9, %hi(D_800E1B50)
/* 20FE40 801E52E0 3C0F801D */  lui        $t7, %hi(D_801D7BC4)
/* 20FE44 801E52E4 8DD80000 */  lw         $t8, 0x0($t6)
/* 20FE48 801E52E8 25EF7BC4 */  addiu      $t7, $t7, %lo(D_801D7BC4)
/* 20FE4C 801E52EC 00184080 */  sll        $t0, $t8, 2
/* 20FE50 801E52F0 0328C821 */  addu       $t9, $t9, $t0
/* 20FE54 801E52F4 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 20FE58 801E52F8 AF2F0094 */  sw         $t7, 0x94($t9)
/* 20FE5C 801E52FC 0C06B3E1 */  jal        func_801ACF84_ovl7
/* 20FE60 801E5300 8FA40028 */   lw        $a0, 0x28($sp)
/* 20FE64 801E5304 8FBF0024 */  lw         $ra, 0x24($sp)
/* 20FE68 801E5308 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 20FE6C 801E530C 8FB0001C */  lw         $s0, 0x1C($sp)
.L801E5310_ovl10:
/* 20FE70 801E5310 8FB10020 */  lw         $s1, 0x20($sp)
/* 20FE74 801E5314 03E00008 */  jr         $ra
.L801E5318_ovl10:
/* 20FE78 801E5318 27BD0028 */   addiu     $sp, $sp, 0x28
