glabel func_801D40E8_ovl8
/* 177BC8 801D40E8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 177BCC 801D40EC AFB30038 */  sw         $s3, 0x38($sp)
/* 177BD0 801D40F0 3C138005 */  lui        $s3, %hi(D_8004A7C4)
/* 177BD4 801D40F4 2673A7C4 */  addiu      $s3, $s3, %lo(D_8004A7C4)
.L801D40F8_ovl9:
/* 177BD8 801D40F8 8E620000 */  lw         $v0, 0x0($s3)
.L801D40FC_ovl9:
/* 177BDC 801D40FC AFBF003C */  sw         $ra, 0x3C($sp)
/* 177BE0 801D4100 AFB20034 */  sw         $s2, 0x34($sp)
/* 177BE4 801D4104 AFB10030 */  sw         $s1, 0x30($sp)
/* 177BE8 801D4108 AFB0002C */  sw         $s0, 0x2C($sp)
/* 177BEC 801D410C F7B80020 */  sdc1       $f24, 0x20($sp)
/* 177BF0 801D4110 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 177BF4 801D4114 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 177BF8 801D4118 AFA40040 */  sw         $a0, 0x40($sp)
/* 177BFC 801D411C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 177C00 801D4120 3C0E800B */  lui        $t6, %hi(func_800B7560)
/* 177C04 801D4124 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 177C08 801D4128 000FC080 */  sll        $t8, $t7, 2
/* 177C0C 801D412C 00380821 */  addu       $at, $at, $t8
/* 177C10 801D4130 25CE7560 */  addiu      $t6, $t6, %lo(func_800B7560)
/* 177C14 801D4134 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 177C18 801D4138 8C480000 */  lw         $t0, 0x0($v0)
/* 177C1C 801D413C 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 177C20 801D4140 24190001 */  addiu      $t9, $zero, 0x1
/* 177C24 801D4144 00084880 */  sll        $t1, $t0, 2
/* 177C28 801D4148 00290821 */  addu       $at, $at, $t1
/* 177C2C 801D414C AC398E60 */  sw         $t9, %lo(D_800E8E60)($at)
/* 177C30 801D4150 8C4B0000 */  lw         $t3, 0x0($v0)
/* 177C34 801D4154 3C01800E */  lui        $at, %hi(D_800DF150)
/* 177C38 801D4158 3C0A801D */  lui        $t2, %hi(func_801D43B8_ovl8)
/* 177C3C 801D415C 000B6080 */  sll        $t4, $t3, 2
/* 177C40 801D4160 002C0821 */  addu       $at, $at, $t4
/* 177C44 801D4164 254A43B8 */  addiu      $t2, $t2, %lo(func_801D43B8_ovl8)
/* 177C48 801D4168 AC2AF150 */  sw         $t2, %lo(D_800DF150)($at)
/* 177C4C 801D416C 8C4D0000 */  lw         $t5, 0x0($v0)
/* 177C50 801D4170 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 177C54 801D4174 44812000 */  mtc1       $at, $f4
/* 177C58 801D4178 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 177C5C 801D417C 000D7880 */  sll        $t7, $t5, 2
/* 177C60 801D4180 002F0821 */  addu       $at, $at, $t7
/* 177C64 801D4184 E4246A10 */  swc1       $f4, %lo(D_800E6A10)($at)
/* 177C68 801D4188 8C430000 */  lw         $v1, 0x0($v0)
/* 177C6C 801D418C 3C0E800E */  lui        $t6, %hi(D_800E0D50)
/* 177C70 801D4190 3C05800E */  lui        $a1, %hi(D_800E17D0)
/* 177C74 801D4194 00031880 */  sll        $v1, $v1, 2
/* 177C78 801D4198 01C37021 */  addu       $t6, $t6, $v1
/* 177C7C 801D419C 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
/* 177C80 801D41A0 24A517D0 */  addiu      $a1, $a1, %lo(D_800E17D0)
/* 177C84 801D41A4 00A3C821 */  addu       $t9, $a1, $v1
/* 177C88 801D41A8 000EC080 */  sll        $t8, $t6, 2
/* 177C8C 801D41AC 00B84021 */  addu       $t0, $a1, $t8
/* 177C90 801D41B0 C5060000 */  lwc1       $f6, 0x0($t0)
/* 177C94 801D41B4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 177C98 801D41B8 3C04800F */  lui        $a0, %hi(D_800EA520)
/* 177C9C 801D41BC E7260000 */  swc1       $f6, 0x0($t9)
/* 177CA0 801D41C0 8C490000 */  lw         $t1, 0x0($v0)
/* 177CA4 801D41C4 00095880 */  sll        $t3, $t1, 2
/* 177CA8 801D41C8 002B0821 */  addu       $at, $at, $t3
.L801D41CC_ovl9:
/* 177CAC 801D41CC AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 177CB0 801D41D0 8C430000 */  lw         $v1, 0x0($v0)
/* 177CB4 801D41D4 24010001 */  addiu      $at, $zero, 0x1
/* 177CB8 801D41D8 00031880 */  sll        $v1, $v1, 2
/* 177CBC 801D41DC 00832021 */  addu       $a0, $a0, $v1
/* 177CC0 801D41E0 8C84A520 */  lw         $a0, %lo(D_800EA520)($a0)
/* 177CC4 801D41E4 50800008 */  beql       $a0, $zero, .L801D4208_ovl8
/* 177CC8 801D41E8 3C040001 */   lui       $a0, (0x105F9 >> 16)
/* 177CCC 801D41EC 10810043 */  beq        $a0, $at, .L801D42FC_ovl8
/* 177CD0 801D41F0 24010002 */   addiu     $at, $zero, 0x2
/* 177CD4 801D41F4 50810049 */  beql       $a0, $at, .L801D431C_ovl8
/* 177CD8 801D41F8 3C040001 */   lui       $a0, (0x105EF >> 16)
/* 177CDC 801D41FC 1000004D */  b          .L801D4334_ovl8
.L801D4200_ovl9:
/* 177CE0 801D4200 3C014100 */   lui       $at, (0x41000000 >> 16)
/* 177CE4 801D4204 3C040001 */  lui        $a0, (0x105F9 >> 16)
.L801D4208_ovl8:
/* 177CE8 801D4208 0C02A806 */  jal        func_800AA018
/* 177CEC 801D420C 348405F9 */   ori       $a0, $a0, (0x105F9 & 0xFFFF)
/* 177CF0 801D4210 3C040001 */  lui        $a0, (0x105FA >> 16)
/* 177CF4 801D4214 0C02A806 */  jal        func_800AA018
/* 177CF8 801D4218 348405FA */   ori       $a0, $a0, (0x105FA & 0xFFFF)
/* 177CFC 801D421C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 177D00 801D4220 4481A000 */  mtc1       $at, $f20
/* 177D04 801D4224 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
/* 177D08 801D4228 4481C000 */  mtc1       $at, $f24
/* 177D0C 801D422C 3C12800E */  lui        $s2, %hi(gEntitiesScaleZArray)
/* 177D10 801D4230 3C11800E */  lui        $s1, %hi(gEntitiesScaleYArray)
/* 177D14 801D4234 4618A03C */  c.lt.s     $f20, $f24
.L801D4238_ovl9:
/* 177D18 801D4238 26314710 */  addiu      $s1, $s1, %lo(gEntitiesScaleYArray)
/* 177D1C 801D423C 265248D0 */  addiu      $s2, $s2, %lo(gEntitiesScaleZArray)
/* 177D20 801D4240 3C01801E */  lui        $at, %hi(D_801DB164_ovl8)
/* 177D24 801D4244 45000017 */  bc1f       .L801D42A4_ovl8
/* 177D28 801D4248 3C10800E */   lui       $s0, %hi(gEntitiesScaleXArray)
/* 177D2C 801D424C C436B164 */  lwc1       $f22, %lo(D_801DB164_ovl8)($at)
/* 177D30 801D4250 26104550 */  addiu      $s0, $s0, %lo(gEntitiesScaleXArray)
/* 177D34 801D4254 8E620000 */  lw         $v0, 0x0($s3)
.L801D4258_ovl8:
/* 177D38 801D4258 24040001 */  addiu      $a0, $zero, 0x1
/* 177D3C 801D425C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 177D40 801D4260 000A6080 */  sll        $t4, $t2, 2
/* 177D44 801D4264 020C6821 */  addu       $t5, $s0, $t4
/* 177D48 801D4268 E5B40000 */  swc1       $f20, 0x0($t5)
/* 177D4C 801D426C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 177D50 801D4270 000F7080 */  sll        $t6, $t7, 2
/* 177D54 801D4274 022EC021 */  addu       $t8, $s1, $t6
/* 177D58 801D4278 E7140000 */  swc1       $f20, 0x0($t8)
/* 177D5C 801D427C 8C480000 */  lw         $t0, 0x0($v0)
/* 177D60 801D4280 0008C880 */  sll        $t9, $t0, 2
/* 177D64 801D4284 02594821 */  addu       $t1, $s2, $t9
/* 177D68 801D4288 0C002DAF */  jal        finish_current_thread
/* 177D6C 801D428C E5340000 */   swc1      $f20, 0x0($t1)
/* 177D70 801D4290 4616A500 */  add.s      $f20, $f20, $f22
/* 177D74 801D4294 4618A03C */  c.lt.s     $f20, $f24
/* 177D78 801D4298 00000000 */  nop
/* 177D7C 801D429C 4503FFEE */  bc1tl      .L801D4258_ovl8
/* 177D80 801D42A0 8E620000 */   lw        $v0, 0x0($s3)
.L801D42A4_ovl8:
/* 177D84 801D42A4 8E620000 */  lw         $v0, 0x0($s3)
/* 177D88 801D42A8 3C10800E */  lui        $s0, %hi(gEntitiesScaleXArray)
/* 177D8C 801D42AC 26104550 */  addiu      $s0, $s0, %lo(gEntitiesScaleXArray)
/* 177D90 801D42B0 8C4B0000 */  lw         $t3, 0x0($v0)
/* 177D94 801D42B4 3C11800E */  lui        $s1, %hi(gEntitiesScaleYArray)
/* 177D98 801D42B8 26314710 */  addiu      $s1, $s1, %lo(gEntitiesScaleYArray)
/* 177D9C 801D42BC 000B5080 */  sll        $t2, $t3, 2
/* 177DA0 801D42C0 020A6021 */  addu       $t4, $s0, $t2
/* 177DA4 801D42C4 E5980000 */  swc1       $f24, 0x0($t4)
/* 177DA8 801D42C8 8C4D0000 */  lw         $t5, 0x0($v0)
/* 177DAC 801D42CC 3C12800E */  lui        $s2, %hi(gEntitiesScaleZArray)
/* 177DB0 801D42D0 265248D0 */  addiu      $s2, $s2, %lo(gEntitiesScaleZArray)
/* 177DB4 801D42D4 000D7880 */  sll        $t7, $t5, 2
/* 177DB8 801D42D8 022F7021 */  addu       $t6, $s1, $t7
/* 177DBC 801D42DC E5D80000 */  swc1       $f24, 0x0($t6)
/* 177DC0 801D42E0 8C580000 */  lw         $t8, 0x0($v0)
/* 177DC4 801D42E4 00184080 */  sll        $t0, $t8, 2
/* 177DC8 801D42E8 0248C821 */  addu       $t9, $s2, $t0
/* 177DCC 801D42EC E7380000 */  swc1       $f24, 0x0($t9)
/* 177DD0 801D42F0 8C430000 */  lw         $v1, 0x0($v0)
/* 177DD4 801D42F4 1000000E */  b          .L801D4330_ovl8
/* 177DD8 801D42F8 00031880 */   sll       $v1, $v1, 2
.L801D42FC_ovl8:
/* 177DDC 801D42FC 3C040001 */  lui        $a0, (0x10601 >> 16)
/* 177DE0 801D4300 0C02A806 */  jal        func_800AA018
/* 177DE4 801D4304 34840601 */   ori       $a0, $a0, (0x10601 & 0xFFFF)
/* 177DE8 801D4308 8E620000 */  lw         $v0, 0x0($s3)
/* 177DEC 801D430C 8C430000 */  lw         $v1, 0x0($v0)
/* 177DF0 801D4310 10000007 */  b          .L801D4330_ovl8
glabel func_801D4314_ovl9
/* 177DF4 801D4314 00031880 */   sll       $v1, $v1, 2
/* 177DF8 801D4318 3C040001 */  lui        $a0, (0x105EF >> 16)
.L801D431C_ovl8:
/* 177DFC 801D431C 0C02A806 */  jal        func_800AA018
/* 177E00 801D4320 348405EF */   ori       $a0, $a0, (0x105EF & 0xFFFF)
/* 177E04 801D4324 8E620000 */  lw         $v0, 0x0($s3)
/* 177E08 801D4328 8C430000 */  lw         $v1, 0x0($v0)
/* 177E0C 801D432C 00031880 */  sll        $v1, $v1, 2
.L801D4330_ovl8:
/* 177E10 801D4330 3C014100 */  lui        $at, (0x41000000 >> 16)
.L801D4334_ovl8:
/* 177E14 801D4334 44814000 */  mtc1       $at, $f8
/* 177E18 801D4338 3C01800E */  lui        $at, %hi(D_800E3210)
/* 177E1C 801D433C 00230821 */  addu       $at, $at, $v1
/* 177E20 801D4340 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 177E24 801D4344 8C490000 */  lw         $t1, 0x0($v0)
/* 177E28 801D4348 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 177E2C 801D434C 44815000 */  mtc1       $at, $f10
/* 177E30 801D4350 3C01800E */  lui        $at, %hi(D_800E3750)
/* 177E34 801D4354 00095880 */  sll        $t3, $t1, 2
/* 177E38 801D4358 002B0821 */  addu       $at, $at, $t3
/* 177E3C 801D435C 24040028 */  addiu      $a0, $zero, 0x28
/* 177E40 801D4360 0C002DAF */  jal        finish_current_thread
/* 177E44 801D4364 E42A3750 */   swc1      $f10, %lo(D_800E3750)($at)
/* 177E48 801D4368 8E6C0000 */  lw         $t4, 0x0($s3)
/* 177E4C 801D436C 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 177E50 801D4370 240A0001 */  addiu      $t2, $zero, 0x1
/* 177E54 801D4374 8D8D0000 */  lw         $t5, 0x0($t4)
/* 177E58 801D4378 000D7880 */  sll        $t7, $t5, 2
/* 177E5C 801D437C 002F0821 */  addu       $at, $at, $t7
/* 177E60 801D4380 0C02CCFD */  jal        func_800B33F4
/* 177E64 801D4384 AC2A98E0 */   sw        $t2, %lo(D_800E98E0)($at)
/* 177E68 801D4388 0C02BE85 */  jal        func_800AFA14
/* 177E6C 801D438C 00000000 */   nop
/* 177E70 801D4390 8FBF003C */  lw         $ra, 0x3C($sp)
/* 177E74 801D4394 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 177E78 801D4398 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 177E7C 801D439C D7B80020 */  ldc1       $f24, 0x20($sp)
.L801D43A0_ovl9:
/* 177E80 801D43A0 8FB0002C */  lw         $s0, 0x2C($sp)
/* 177E84 801D43A4 8FB10030 */  lw         $s1, 0x30($sp)
/* 177E88 801D43A8 8FB20034 */  lw         $s2, 0x34($sp)
/* 177E8C 801D43AC 8FB30038 */  lw         $s3, 0x38($sp)
/* 177E90 801D43B0 03E00008 */  jr         $ra
/* 177E94 801D43B4 27BD0040 */   addiu     $sp, $sp, 0x40
