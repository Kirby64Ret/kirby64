glabel func_801F0060_ovl16
/* 19E0B0 801F0060 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 19E0B4 801F0064 AFB00020 */  sw         $s0, 0x20($sp)
jtbl_801F0068_ovl16:
/* 19E0B8 801F0068 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 19E0BC 801F006C 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 19E0C0 801F0070 8E020000 */  lw         $v0, 0x0($s0)
/* 19E0C4 801F0074 AFBF0024 */  sw         $ra, 0x24($sp)
/* 19E0C8 801F0078 AFA40070 */  sw         $a0, 0x70($sp)
/* 19E0CC 801F007C 8C430000 */  lw         $v1, 0x0($v0)
/* 19E0D0 801F0080 3C07800E */  lui        $a3, %hi(D_800E1B50)
/* 19E0D4 801F0084 24E71B50 */  addiu      $a3, $a3, %lo(D_800E1B50)
/* 19E0D8 801F0088 00031880 */  sll        $v1, $v1, 2
glabel D_801F008C_ovl16
/* 19E0DC 801F008C 3C18800E */  lui        $t8, %hi(D_800E0D50)
glabel D_801F0090_ovl16
/* 19E0E0 801F0090 00E37021 */  addu       $t6, $a3, $v1
/* 19E0E4 801F0094 0303C021 */  addu       $t8, $t8, $v1
/* 19E0E8 801F0098 8DCF0000 */  lw         $t7, 0x0($t6)
/* 19E0EC 801F009C 8F180D50 */  lw         $t8, %lo(D_800E0D50)($t8)
glabel D_801F00A0_ovl16
/* 19E0F0 801F00A0 3C19801B */  lui        $t9, %hi(func_801ACF5C_ovl7)
glabel D_801F00A4_ovl16
/* 19E0F4 801F00A4 3C01800E */  lui        $at, %hi(D_800DF150)
glabel D_801F00A8_ovl16
/* 19E0F8 801F00A8 00230821 */  addu       $at, $at, $v1
glabel D_801F00AC_ovl16
/* 19E0FC 801F00AC 2739CF5C */  addiu      $t9, $t9, %lo(func_801ACF5C_ovl7)
glabel D_801F00B0_ovl16
/* 19E100 801F00B0 AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
glabel D_801F00B4_ovl16
/* 19E104 801F00B4 AFAF006C */  sw         $t7, 0x6C($sp)
glabel D_801F00B8_ovl16
/* 19E108 801F00B8 AFB80068 */  sw         $t8, 0x68($sp)
glabel D_801F00BC_ovl16
/* 19E10C 801F00BC 8C490000 */  lw         $t1, 0x0($v0)
glabel D_801F00C0_ovl16
/* 19E110 801F00C0 3C08801D */  lui        $t0, %hi(D_801CB4DC_ovl7)
glabel D_801F00C4_ovl16
/* 19E114 801F00C4 2508B4DC */  addiu      $t0, $t0, %lo(D_801CB4DC_ovl7)
glabel D_801F00C8_ovl16
/* 19E118 801F00C8 00095080 */  sll        $t2, $t1, 2
glabel D_801F00CC_ovl16
/* 19E11C 801F00CC 00EA5821 */  addu       $t3, $a3, $t2
glabel D_801F00D0_ovl16
/* 19E120 801F00D0 8D6C0000 */  lw         $t4, 0x0($t3)
glabel D_801F00D4_ovl16
/* 19E124 801F00D4 3C01800F */  lui        $at, %hi(D_800E8920)
glabel D_801F00D8_ovl16
/* 19E128 801F00D8 3C040001 */  lui        $a0, (0x10086 >> 16)
glabel D_801F00DC_ovl16
/* 19E12C 801F00DC AD880098 */  sw         $t0, 0x98($t4)
glabel D_801F00E0_ovl16
/* 19E130 801F00E0 8E0D0000 */  lw         $t5, 0x0($s0)
glabel D_801F00E4_ovl16
/* 19E134 801F00E4 34840086 */  ori        $a0, $a0, (0x10086 & 0xFFFF)
glabel D_801F00E8_ovl16
/* 19E138 801F00E8 24050023 */  addiu      $a1, $zero, 0x23
glabel D_801F00EC_ovl16
/* 19E13C 801F00EC 8DAE0000 */  lw         $t6, 0x0($t5)
glabel D_801F00F0_ovl16
/* 19E140 801F00F0 24060010 */  addiu      $a2, $zero, 0x10
glabel D_801F00F4_ovl16
/* 19E144 801F00F4 000E7880 */  sll        $t7, $t6, 2
glabel D_801F00F8_ovl16
/* 19E148 801F00F8 002F0821 */  addu       $at, $at, $t7
glabel D_801F00FC_ovl16
/* 19E14C 801F00FC 0C02A619 */  jal        func_800A9864
glabel D_801F0100_ovl16
/* 19E150 801F0100 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
glabel D_801F0104_ovl16
/* 19E154 801F0104 8FA50068 */  lw         $a1, 0x68($sp)
glabel D_801F0108_ovl16
/* 19E158 801F0108 3C18800E */  lui        $t8, %hi(D_800DD710)
glabel D_801F010C_ovl16
/* 19E15C 801F010C 2401FFFF */  addiu      $at, $zero, -0x1
glabel D_801F0110_ovl16
/* 19E160 801F0110 00052880 */  sll        $a1, $a1, 2
glabel D_801F0114_ovl16
/* 19E164 801F0114 0305C021 */  addu       $t8, $t8, $a1
/* 19E168 801F0118 8F18D710 */  lw         $t8, %lo(D_800DD710)($t8)
/* 19E16C 801F011C 3C09800F */  lui        $t1, %hi(D_800EBBE0)
glabel D_801F0120_ovl16
/* 19E170 801F0120 53010008 */  beql       $t8, $at, .L801F0144_ovl16
/* 19E174 801F0124 8E0A0000 */   lw        $t2, 0x0($s0)
/* 19E178 801F0128 8E190000 */  lw         $t9, 0x0($s0)
/* 19E17C 801F012C 01254821 */  addu       $t1, $t1, $a1
/* 19E180 801F0130 8D29BBE0 */  lw         $t1, %lo(D_800EBBE0)($t1)
/* 19E184 801F0134 8F220000 */  lw         $v0, 0x0($t9)
/* 19E188 801F0138 10490008 */  beq        $v0, $t1, .L801F015C_ovl16
/* 19E18C 801F013C 00000000 */   nop
/* 19E190 801F0140 8E0A0000 */  lw         $t2, 0x0($s0)
.L801F0144_ovl16:
/* 19E194 801F0144 95440002 */  lhu        $a0, 0x2($t2)
glabel D_801F0148_ovl16
/* 19E198 801F0148 0C067656 */  jal        func_8019D958_ovl7
/* 19E19C 801F014C AFA50034 */   sw        $a1, 0x34($sp)
/* 19E1A0 801F0150 8E0B0000 */  lw         $t3, 0x0($s0)
/* 19E1A4 801F0154 8FA50034 */  lw         $a1, 0x34($sp)
/* 19E1A8 801F0158 8D620000 */  lw         $v0, 0x0($t3)
.L801F015C_ovl16:
/* 19E1AC 801F015C 3C03800E */  lui        $v1, %hi(D_800E7880)
glabel D_801F0160_ovl16
/* 19E1B0 801F0160 00621821 */  addu       $v1, $v1, $v0
/* 19E1B4 801F0164 90637880 */  lbu        $v1, %lo(D_800E7880)($v1)
/* 19E1B8 801F0168 10600005 */  beqz       $v1, .L801F0180_ovl16
/* 19E1BC 801F016C 24010001 */   addiu     $at, $zero, 0x1
/* 19E1C0 801F0170 10610062 */  beq        $v1, $at, .L801F02FC_ovl9
/* 19E1C4 801F0174 00000000 */   nop
/* 19E1C8 801F0178 100000EA */  b          .L801F0524_ovl9
/* 19E1CC 801F017C 00000000 */   nop
.L801F0180_ovl16:
/* 19E1D0 801F0180 0C066EB2 */  jal        func_8019BAC8_ovl7
/* 19E1D4 801F0184 AFA50034 */   sw        $a1, 0x34($sp)
glabel D_801F0188_ovl16
/* 19E1D8 801F0188 8FA8006C */  lw         $t0, 0x6C($sp)
/* 19E1DC 801F018C 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 19E1E0 801F0190 44812000 */  mtc1       $at, $f4
/* 19E1E4 801F0194 8D0C0080 */  lw         $t4, 0x80($t0)
/* 19E1E8 801F0198 8FA50034 */  lw         $a1, 0x34($sp)
/* 19E1EC 801F019C 3C03800F */  lui        $v1, %hi(D_800EA8A0)
/* 19E1F0 801F01A0 E5840010 */  swc1       $f4, 0x10($t4)
/* 19E1F4 801F01A4 8E020000 */  lw         $v0, 0x0($s0)
/* 19E1F8 801F01A8 2463A8A0 */  addiu      $v1, $v1, %lo(D_800EA8A0)
/* 19E1FC 801F01AC 00656821 */  addu       $t5, $v1, $a1
glabel D_801F01B0_ovl16
/* 19E200 801F01B0 8C4E0000 */  lw         $t6, 0x0($v0)
/* 19E204 801F01B4 C5A60000 */  lwc1       $f6, 0x0($t5)
/* 19E208 801F01B8 000E7880 */  sll        $t7, $t6, 2
/* 19E20C 801F01BC 006FC021 */  addu       $t8, $v1, $t7
/* 19E210 801F01C0 E7060000 */  swc1       $f6, 0x0($t8)
/* 19E214 801F01C4 8C590000 */  lw         $t9, 0x0($v0)
/* 19E218 801F01C8 00194880 */  sll        $t1, $t9, 2
.L801F01CC_ovl16:
/* 19E21C 801F01CC 00695021 */  addu       $t2, $v1, $t1
glabel D_801F01D0_ovl16
/* 19E220 801F01D0 0C00B5B8 */  jal        sinf
/* 19E224 801F01D4 C54C0000 */   lwc1      $f12, 0x0($t2)
glabel D_801F01D8_ovl16
/* 19E228 801F01D8 8E020000 */  lw         $v0, 0x0($s0)
/* 19E22C 801F01DC 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 19E230 801F01E0 44814000 */  mtc1       $at, $f8
/* 19E234 801F01E4 8C430000 */  lw         $v1, 0x0($v0)
/* 19E238 801F01E8 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 19E23C 801F01EC 46080282 */  mul.s      $f10, $f0, $f8
/* 19E240 801F01F0 00031880 */  sll        $v1, $v1, 2
/* 19E244 801F01F4 00230821 */  addu       $at, $at, $v1
glabel D_801F01F8_ovl16
/* 19E248 801F01F8 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 19E24C 801F01FC 3C01800E */  lui        $at, %hi(D_800E64D0)
glabel D_801F0200_ovl16
/* 19E250 801F0200 00230821 */  addu       $at, $at, $v1
/* 19E254 801F0204 46045182 */  mul.s      $f6, $f10, $f4
/* 19E258 801F0208 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
.L801F020C_ovl16:
/* 19E25C 801F020C 8C4B0000 */  lw         $t3, 0x0($v0)
/* 19E260 801F0210 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 19E264 801F0214 000B4080 */  sll        $t0, $t3, 2
/* 19E268 801F0218 00280821 */  addu       $at, $at, $t0
/* 19E26C 801F021C 0C00D604 */  jal        cosf
glabel D_801F0220_ovl16
/* 19E270 801F0220 C42CA8A0 */   lwc1      $f12, %lo(D_800EA8A0)($at)
/* 19E274 801F0224 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 19E278 801F0228 44814000 */  mtc1       $at, $f8
/* 19E27C 801F022C 8E0C0000 */  lw         $t4, 0x0($s0)
/* 19E280 801F0230 3C01800E */  lui        $at, %hi(D_800E3210)
/* 19E284 801F0234 46080282 */  mul.s      $f10, $f0, $f8
/* 19E288 801F0238 8D8D0000 */  lw         $t5, 0x0($t4)
/* 19E28C 801F023C 24040001 */  addiu      $a0, $zero, 0x1
/* 19E290 801F0240 000D7080 */  sll        $t6, $t5, 2
/* 19E294 801F0244 002E0821 */  addu       $at, $at, $t6
/* 19E298 801F0248 0C002DAF */  jal        finish_current_thread
/* 19E29C 801F024C E42A3210 */   swc1      $f10, %lo(D_800E3210)($at)
/* 19E2A0 801F0250 44806000 */  mtc1       $zero, $f12
/* 19E2A4 801F0254 00002025 */  or         $a0, $zero, $zero
/* 19E2A8 801F0258 24050005 */  addiu      $a1, $zero, 0x5
/* 19E2AC 801F025C 44066000 */  mfc1       $a2, $f12
/* 19E2B0 801F0260 44076000 */  mfc1       $a3, $f12
/* 19E2B4 801F0264 0C03F55C */  jal        func_800FD570
/* 19E2B8 801F0268 E7AC0010 */   swc1      $f12, 0x10($sp)
/* 19E2BC 801F026C 8E0F0000 */  lw         $t7, 0x0($s0)
/* 19E2C0 801F0270 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 19E2C4 801F0274 8DF80000 */  lw         $t8, 0x0($t7)
/* 19E2C8 801F0278 0018C880 */  sll        $t9, $t8, 2
/* 19E2CC 801F027C 00390821 */  addu       $at, $at, $t9
/* 19E2D0 801F0280 0C00B5B8 */  jal        sinf
/* 19E2D4 801F0284 C42CA8A0 */   lwc1      $f12, %lo(D_800EA8A0)($at)
/* 19E2D8 801F0288 8E020000 */  lw         $v0, 0x0($s0)
/* 19E2DC 801F028C 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 19E2E0 801F0290 44812000 */  mtc1       $at, $f4
/* 19E2E4 801F0294 8C430000 */  lw         $v1, 0x0($v0)
/* 19E2E8 801F0298 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 19E2EC 801F029C 46040182 */  mul.s      $f6, $f0, $f4
/* 19E2F0 801F02A0 00031880 */  sll        $v1, $v1, 2
/* 19E2F4 801F02A4 00230821 */  addu       $at, $at, $v1
/* 19E2F8 801F02A8 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* 19E2FC 801F02AC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 19E300 801F02B0 00230821 */  addu       $at, $at, $v1
/* 19E304 801F02B4 46083282 */  mul.s      $f10, $f6, $f8
/* 19E308 801F02B8 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* 19E30C 801F02BC 8C490000 */  lw         $t1, 0x0($v0)
/* 19E310 801F02C0 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 19E314 801F02C4 00095080 */  sll        $t2, $t1, 2
/* 19E318 801F02C8 002A0821 */  addu       $at, $at, $t2
/* 19E31C 801F02CC 0C00D604 */  jal        cosf
/* 19E320 801F02D0 C42CA8A0 */   lwc1      $f12, %lo(D_800EA8A0)($at)
/* 19E324 801F02D4 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 19E328 801F02D8 44812000 */  mtc1       $at, $f4
/* 19E32C 801F02DC 8E0B0000 */  lw         $t3, 0x0($s0)
/* 19E330 801F02E0 3C01800E */  lui        $at, %hi(D_800E3210)
/* 19E334 801F02E4 46040182 */  mul.s      $f6, $f0, $f4
/* 19E338 801F02E8 8D680000 */  lw         $t0, 0x0($t3)
/* 19E33C 801F02EC 00086080 */  sll        $t4, $t0, 2
/* 19E340 801F02F0 002C0821 */  addu       $at, $at, $t4
/* 19E344 801F02F4 1000008B */  b          .L801F0524_ovl9
/* 19E348 801F02F8 E4263210 */   swc1      $f6, %lo(D_800E3210)($at)
.L801F02FC_ovl9:
/* 19E34C 801F02FC 0C066EB2 */  jal        func_8019BAC8_ovl7
/* 19E350 801F0300 00000000 */   nop
/* 19E354 801F0304 8FAD006C */  lw         $t5, 0x6C($sp)
.L801F0308_ovl10:
/* 19E358 801F0308 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 19E35C 801F030C 44814000 */  mtc1       $at, $f8
/* 19E360 801F0310 8DAE0080 */  lw         $t6, 0x80($t5)
/* 19E364 801F0314 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 19E368 801F0318 3C0F800B */  lui        $t7, %hi(func_800B7514)
/* 19E36C 801F031C E5C80010 */  swc1       $f8, 0x10($t6)
/* 19E370 801F0320 8E020000 */  lw         $v0, 0x0($s0)
/* 19E374 801F0324 25EF7514 */  addiu      $t7, $t7, %lo(func_800B7514)
/* 19E378 801F0328 3C0B800E */  lui        $t3, %hi(D_800E0D50)
.L801F032C_ovl10:
/* 19E37C 801F032C 8C580000 */  lw         $t8, 0x0($v0)
/* 19E380 801F0330 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
/* 19E384 801F0334 27A4004C */  addiu      $a0, $sp, 0x4C
/* 19E388 801F0338 0018C880 */  sll        $t9, $t8, 2
.L801F033C_ovl10:
/* 19E38C 801F033C 00390821 */  addu       $at, $at, $t9
.L801F0340_ovl10:
/* 19E390 801F0340 AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
/* 19E394 801F0344 8C490000 */  lw         $t1, 0x0($v0)
/* 19E398 801F0348 00095080 */  sll        $t2, $t1, 2
/* 19E39C 801F034C 016A5821 */  addu       $t3, $t3, $t2
/* 19E3A0 801F0350 8D6B0D50 */  lw         $t3, %lo(D_800E0D50)($t3)
/* 19E3A4 801F0354 000B4080 */  sll        $t0, $t3, 2
/* 19E3A8 801F0358 01886021 */  addu       $t4, $t4, $t0
/* 19E3AC 801F035C 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
/* 19E3B0 801F0360 0C0291E5 */  jal        func_800A4794
/* 19E3B4 801F0364 8D850014 */   lw        $a1, 0x14($t4)
/* 19E3B8 801F0368 8E020000 */  lw         $v0, 0x0($s0)
/* 19E3BC 801F036C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 19E3C0 801F0370 C7AA004C */  lwc1       $f10, 0x4C($sp)
/* 19E3C4 801F0374 8C430000 */  lw         $v1, 0x0($v0)
/* 19E3C8 801F0378 C7A60050 */  lwc1       $f6, 0x50($sp)
/* 19E3CC 801F037C 44800000 */  mtc1       $zero, $f0
/* 19E3D0 801F0380 00031880 */  sll        $v1, $v1, 2
/* 19E3D4 801F0384 00230821 */  addu       $at, $at, $v1
.L801F0388_ovl10:
/* 19E3D8 801F0388 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 19E3DC 801F038C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 19E3E0 801F0390 00230821 */  addu       $at, $at, $v1
/* 19E3E4 801F0394 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* 19E3E8 801F0398 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 19E3EC 801F039C 46045401 */  sub.s      $f16, $f10, $f4
/* 19E3F0 801F03A0 00230821 */  addu       $at, $at, $v1
/* 19E3F4 801F03A4 C4242950 */  lwc1       $f4, %lo(gEntitiesNextPosZArray)($at)
/* 19E3F8 801F03A8 46083481 */  sub.s      $f18, $f6, $f8
/* 19E3FC 801F03AC C7AA0054 */  lwc1       $f10, 0x54($sp)
/* 19E400 801F03B0 4600903C */  c.lt.s     $f18, $f0
/* 19E404 801F03B4 46045181 */  sub.s      $f6, $f10, $f4
/* 19E408 801F03B8 45000004 */  bc1f       .L801F03CC_ovl9
/* 19E40C 801F03BC E7A6005C */   swc1      $f6, 0x5C($sp)
/* 19E410 801F03C0 46009207 */  neg.s      $f8, $f18
/* 19E414 801F03C4 10000002 */  b          .L801F03D0_ovl9
/* 19E418 801F03C8 E7A8003C */   swc1      $f8, 0x3C($sp)
.L801F03CC_ovl9:
/* 19E41C 801F03CC E7B2003C */  swc1       $f18, 0x3C($sp)
.L801F03D0_ovl9:
/* 19E420 801F03D0 4600803C */  c.lt.s     $f16, $f0
/* 19E424 801F03D4 3C018022 */  lui        $at, %hi(D_8021D8B0_ovl9)
/* 19E428 801F03D8 45020005 */  bc1fl      .L801F03F0_ovl9
/* 19E42C 801F03DC E7B00040 */   swc1      $f16, 0x40($sp)
/* 19E430 801F03E0 46008287 */  neg.s      $f10, $f16
/* 19E434 801F03E4 10000002 */  b          .L801F03F0_ovl9
/* 19E438 801F03E8 E7AA0040 */   swc1      $f10, 0x40($sp)
/* 19E43C 801F03EC E7B00040 */  swc1       $f16, 0x40($sp)
.L801F03F0_ovl9:
/* 19E440 801F03F0 C7A4005C */  lwc1       $f4, 0x5C($sp)
/* 19E444 801F03F4 C7A60040 */  lwc1       $f6, 0x40($sp)
/* 19E448 801F03F8 C7A8003C */  lwc1       $f8, 0x3C($sp)
/* 19E44C 801F03FC 4600203C */  c.lt.s     $f4, $f0
/* 19E450 801F0400 C7AE005C */  lwc1       $f14, 0x5C($sp)
/* 19E454 801F0404 46083280 */  add.s      $f10, $f6, $f8
/* 19E458 801F0408 45000003 */  bc1f       .L801F0418_ovl9
/* 19E45C 801F040C 00000000 */   nop
.L801F0410_ovl10:
/* 19E460 801F0410 10000001 */  b          .L801F0418_ovl9
/* 19E464 801F0414 46002387 */   neg.s     $f14, $f4
.L801F0418_ovl9:
/* 19E468 801F0418 460A7080 */  add.s      $f2, $f14, $f10
/* 19E46C 801F041C 44806000 */  mtc1       $zero, $f12
/* 19E470 801F0420 00000000 */  nop
/* 19E474 801F0424 46026032 */  c.eq.s     $f12, $f2
/* 19E478 801F0428 00000000 */  nop
/* 19E47C 801F042C 45020003 */  bc1fl      .L801F043C_ovl9
/* 19E480 801F0430 46028383 */   div.s     $f14, $f16, $f2
/* 19E484 801F0434 C422D8B0 */  lwc1       $f2, %lo(D_8021D8B0_ovl9)($at)
/* 19E488 801F0438 46028383 */  div.s      $f14, $f16, $f2
.L801F043C_ovl9:
/* 19E48C 801F043C 3C014220 */  lui        $at, (0x42200000 >> 16)
/* 19E490 801F0440 44810000 */  mtc1       $at, $f0
/* 19E494 801F0444 3C01800E */  lui        $at, %hi(D_800E3050)
/* 19E498 801F0448 00230821 */  addu       $at, $at, $v1
/* 19E49C 801F044C 24040001 */  addiu      $a0, $zero, 0x1
/* 19E4A0 801F0450 46029183 */  div.s      $f6, $f18, $f2
/* 19E4A4 801F0454 46007102 */  mul.s      $f4, $f14, $f0
/* 19E4A8 801F0458 E4243050 */  swc1       $f4, %lo(D_800E3050)($at)
/* 19E4AC 801F045C C7A4005C */  lwc1       $f4, 0x5C($sp)
/* 19E4B0 801F0460 3C01800E */  lui        $at, %hi(D_800E3210)
/* 19E4B4 801F0464 E7A6002C */  swc1       $f6, 0x2C($sp)
/* 19E4B8 801F0468 46022183 */  div.s      $f6, $f4, $f2
/* 19E4BC 801F046C C7A8002C */  lwc1       $f8, 0x2C($sp)
/* 19E4C0 801F0470 8C4D0000 */  lw         $t5, 0x0($v0)
/* 19E4C4 801F0474 46004282 */  mul.s      $f10, $f8, $f0
/* 19E4C8 801F0478 000D7080 */  sll        $t6, $t5, 2
.L801F047C_ovl10:
/* 19E4CC 801F047C 002E0821 */  addu       $at, $at, $t6
.L801F0480_ovl10:
/* 19E4D0 801F0480 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* 19E4D4 801F0484 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 19E4D8 801F0488 46003202 */  mul.s      $f8, $f6, $f0
/* 19E4DC 801F048C E7A60028 */  swc1       $f6, 0x28($sp)
/* 19E4E0 801F0490 8C580000 */  lw         $t8, 0x0($v0)
/* 19E4E4 801F0494 E7AE0030 */  swc1       $f14, 0x30($sp)
/* 19E4E8 801F0498 00187880 */  sll        $t7, $t8, 2
/* 19E4EC 801F049C 002F0821 */  addu       $at, $at, $t7
/* 19E4F0 801F04A0 0C002DAF */  jal        finish_current_thread
/* 19E4F4 801F04A4 E42833D0 */   swc1      $f8, %lo(D_800E33D0)($at)
/* 19E4F8 801F04A8 44806000 */  mtc1       $zero, $f12
/* 19E4FC 801F04AC 00002025 */  or         $a0, $zero, $zero
/* 19E500 801F04B0 24050005 */  addiu      $a1, $zero, 0x5
/* 19E504 801F04B4 44066000 */  mfc1       $a2, $f12
/* 19E508 801F04B8 44076000 */  mfc1       $a3, $f12
/* 19E50C 801F04BC 0C03F55C */  jal        func_800FD570
/* 19E510 801F04C0 E7AC0010 */   swc1      $f12, 0x10($sp)
/* 19E514 801F04C4 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 19E518 801F04C8 44810000 */  mtc1       $at, $f0
/* 19E51C 801F04CC C7AA0030 */  lwc1       $f10, 0x30($sp)
/* 19E520 801F04D0 8E020000 */  lw         $v0, 0x0($s0)
.L801F04D4_ovl10:
/* 19E524 801F04D4 C7A6002C */  lwc1       $f6, 0x2C($sp)
/* 19E528 801F04D8 46005102 */  mul.s      $f4, $f10, $f0
/* 19E52C 801F04DC 8C590000 */  lw         $t9, 0x0($v0)
/* 19E530 801F04E0 3C01800E */  lui        $at, %hi(D_800E3050)
/* 19E534 801F04E4 46003202 */  mul.s      $f8, $f6, $f0
/* 19E538 801F04E8 00194880 */  sll        $t1, $t9, 2
/* 19E53C 801F04EC 00290821 */  addu       $at, $at, $t1
/* 19E540 801F04F0 C7AA0028 */  lwc1       $f10, 0x28($sp)
/* 19E544 801F04F4 E4243050 */  swc1       $f4, %lo(D_800E3050)($at)
/* 19E548 801F04F8 8C4A0000 */  lw         $t2, 0x0($v0)
/* 19E54C 801F04FC 3C01800E */  lui        $at, %hi(D_800E3210)
/* 19E550 801F0500 46005102 */  mul.s      $f4, $f10, $f0
/* 19E554 801F0504 000A5880 */  sll        $t3, $t2, 2
/* 19E558 801F0508 002B0821 */  addu       $at, $at, $t3
/* 19E55C 801F050C E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 19E560 801F0510 8C480000 */  lw         $t0, 0x0($v0)
/* 19E564 801F0514 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 19E568 801F0518 00086080 */  sll        $t4, $t0, 2
/* 19E56C 801F051C 002C0821 */  addu       $at, $at, $t4
/* 19E570 801F0520 E42433D0 */  swc1       $f4, %lo(D_800E33D0)($at)
.L801F0524_ovl9:
/* 19E574 801F0524 0C002DAF */  jal        finish_current_thread
.L801F0528_ovl10:
/* 19E578 801F0528 2404003C */   addiu     $a0, $zero, 0x3C
/* 19E57C 801F052C 0C06B3E1 */  jal        func_801ACF84_ovl7
/* 19E580 801F0530 8FA40070 */   lw        $a0, 0x70($sp)
/* 19E584 801F0534 8FBF0024 */  lw         $ra, 0x24($sp)
/* 19E588 801F0538 8FB00020 */  lw         $s0, 0x20($sp)
/* 19E58C 801F053C 27BD0070 */  addiu      $sp, $sp, 0x70
/* 19E590 801F0540 03E00008 */  jr         $ra
/* 19E594 801F0544 00000000 */   nop
