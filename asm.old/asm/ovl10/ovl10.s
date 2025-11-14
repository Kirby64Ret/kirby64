.set noat
.set noreorder
.set gp=64


.include "macros.inc"
.section .text, "ax"

glabel func_801DB1E0_ovl10
/* 1CBF50 801DB1E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1CBF54 801DB1E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1CBF58 801DB1E8 0C02D8AB */  jal   func_800B62AC
/* 1CBF5C 801DB1EC 00000000 */   nop   
/* 1CBF60 801DB1F0 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 1CBF64 801DB1F4 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 1CBF68 801DB1F8 3C01801F */  lui   $at, %hi(D_801F4980) # $at, 0x801f
/* 1CBF6C 801DB1FC C4224980 */  lwc1  $f2, %lo(D_801F4980)($at)
/* 1CBF70 801DB200 8C830000 */  lw    $v1, ($a0)
/* 1CBF74 801DB204 3C01800E */ lui $at, %hi(D_800E17D0)
/* 1CBF78 801DB208 3C05800E */  lui   $a1, %hi(gEntitiesAngleYArray) # $a1, 0x800e
/* 1CBF7C 801DB20C 00031880 */  sll   $v1, $v1, 2
/* 1CBF80 801DB210 00230821 */  addu  $at, $at, $v1
/* 1CBF84 801DB214 C42417D0 */ lwc1 $f4, %lo(D_800E17D0)($at)
/* 1CBF88 801DB218 3C01800F */ lui $at, %hi(D_800E9020)
/* 1CBF8C 801DB21C 00230821 */  addu  $at, $at, $v1
/* 1CBF90 801DB220 C4269020 */ lwc1 $f6, %lo(D_800E9020)($at)
/* 1CBF94 801DB224 3C01801F */  lui   $at, %hi(D_801F4984) # $at, 0x801f
/* 1CBF98 801DB228 C42A4984 */  lwc1  $f10, %lo(D_801F4984)($at)
/* 1CBF9C 801DB22C 46062200 */  add.s $f8, $f4, $f6
/* 1CBFA0 801DB230 24A541D0 */  addiu $a1, %lo(gEntitiesAngleYArray) # addiu $a1, $a1, 0x41d0
/* 1CBFA4 801DB234 00A37021 */  addu  $t6, $a1, $v1
/* 1CBFA8 801DB238 44806000 */  mtc1  $zero, $f12
/* 1CBFAC 801DB23C 460A4400 */  add.s $f16, $f8, $f10
/* 1CBFB0 801DB240 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1CBFB4 801DB244 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 1CBFB8 801DB248 E5D00000 */  swc1  $f16, ($t6)
/* 1CBFBC 801DB24C 8C830000 */  lw    $v1, ($a0)
/* 1CBFC0 801DB250 00031880 */  sll   $v1, $v1, 2
/* 1CBFC4 801DB254 00A31021 */  addu  $v0, $a1, $v1
/* 1CBFC8 801DB258 C4400000 */  lwc1  $f0, ($v0)
/* 1CBFCC 801DB25C 4600103E */  c.le.s $f2, $f0
/* 1CBFD0 801DB260 00000000 */  nop   
/* 1CBFD4 801DB264 4502000C */  bc1fl .L801DB298_ovl10
/* 1CBFD8 801DB268 460C003C */   c.lt.s $f0, $f12
/* 1CBFDC 801DB26C 46020481 */  sub.s $f18, $f0, $f2
.L801DB270_ovl10:
/* 1CBFE0 801DB270 E4520000 */  swc1  $f18, ($v0)
/* 1CBFE4 801DB274 8C830000 */  lw    $v1, ($a0)
/* 1CBFE8 801DB278 00031880 */  sll   $v1, $v1, 2
/* 1CBFEC 801DB27C 00A31021 */  addu  $v0, $a1, $v1
/* 1CBFF0 801DB280 C4400000 */  lwc1  $f0, ($v0)
/* 1CBFF4 801DB284 4600103E */  c.le.s $f2, $f0
/* 1CBFF8 801DB288 00000000 */  nop   
/* 1CBFFC 801DB28C 4503FFF8 */  bc1tl .L801DB270_ovl10
/* 1CC000 801DB290 46020481 */   sub.s $f18, $f0, $f2
/* 1CC004 801DB294 460C003C */  c.lt.s $f0, $f12
.L801DB298_ovl10:
/* 1CC008 801DB298 00000000 */  nop   
/* 1CC00C 801DB29C 4502000C */  bc1fl .L801DB2D0_ovl10
/* 1CC010 801DB2A0 00230821 */   addu  $at, $at, $v1
/* 1CC014 801DB2A4 46020100 */  add.s $f4, $f0, $f2
.L801DB2A8_ovl10:
/* 1CC018 801DB2A8 E4440000 */  swc1  $f4, ($v0)
/* 1CC01C 801DB2AC 8C830000 */  lw    $v1, ($a0)
/* 1CC020 801DB2B0 00031880 */  sll   $v1, $v1, 2
/* 1CC024 801DB2B4 00A31021 */  addu  $v0, $a1, $v1
/* 1CC028 801DB2B8 C4400000 */  lwc1  $f0, ($v0)
/* 1CC02C 801DB2BC 460C003C */  c.lt.s $f0, $f12
/* 1CC030 801DB2C0 00000000 */  nop   
/* 1CC034 801DB2C4 4503FFF8 */  bc1tl .L801DB2A8_ovl10
/* 1CC038 801DB2C8 46020100 */   add.s $f4, $f0, $f2
/* 1CC03C 801DB2CC 00230821 */  addu  $at, $at, $v1
.L801DB2D0_ovl10:
/* 1CC040 801DB2D0 C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 1CC044 801DB2D4 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1CC048 801DB2D8 00230821 */  addu  $at, $at, $v1
/* 1CC04C 801DB2DC 00C33021 */  addu  $a2, $a2, $v1
/* 1CC050 801DB2E0 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 1CC054 801DB2E4 0C02CC8D */  jal   func_800B3234
/* 1CC058 801DB2E8 C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 1CC05C 801DB2EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1CC060 801DB2F0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1CC064 801DB2F4 03E00008 */  jr    $ra
/* 1CC068 801DB2F8 00000000 */   nop   
.size func_801DB1E0_ovl10, . - func_801DB1E0_ovl10

glabel func_801DB2FC_ovl10
/* 1CC06C 801DB2FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1CC070 801DB300 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1CC074 801DB304 0C02D69F */  jal   func_800B5A7C
/* 1CC078 801DB308 00000000 */   nop   
/* 1CC07C 801DB30C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1CC080 801DB310 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1CC084 801DB314 3C01800E */ lui $at, %hi(D_800E5510)
/* 1CC088 801DB318 3C0E800E */  lui   $t6, %hi(D_800E64D0) # $t6, 0x800e
/* 1CC08C 801DB31C 8C620000 */  lw    $v0, ($v1)
/* 1CC090 801DB320 25CE64D0 */  addiu $t6, %lo(D_800E64D0) # addiu $t6, $t6, 0x64d0
/* 1CC094 801DB324 3C04800E */ lui $a0, %hi(D_800DE350)
/* 1CC098 801DB328 00021080 */  sll   $v0, $v0, 2
/* 1CC09C 801DB32C 00220821 */  addu  $at, $at, $v0
/* 1CC0A0 801DB330 C4245510 */ lwc1 $f4, %lo(D_800E5510)($at)
/* 1CC0A4 801DB334 3C01800E */ lui $at, %hi(D_800E56D0)
/* 1CC0A8 801DB338 00220821 */  addu  $at, $at, $v0
/* 1CC0AC 801DB33C C42656D0 */ lwc1 $f6, %lo(D_800E56D0)($at)
/* 1CC0B0 801DB340 004E2821 */  addu  $a1, $v0, $t6
/* 1CC0B4 801DB344 C4AA0000 */  lwc1  $f10, ($a1)
/* 1CC0B8 801DB348 46062200 */  add.s $f8, $f4, $f6
/* 1CC0BC 801DB34C 46085400 */  add.s $f16, $f10, $f8
/* 1CC0C0 801DB350 E4B00000 */  swc1  $f16, ($a1)
/* 1CC0C4 801DB354 8C6F0000 */  lw    $t7, ($v1)
/* 1CC0C8 801DB358 000FC080 */  sll   $t8, $t7, 2
/* 1CC0CC 801DB35C 00982021 */  addu  $a0, $a0, $t8
/* 1CC0D0 801DB360 0C03E39B */  jal   func_800F8E6C
/* 1CC0D4 801DB364 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 1CC0D8 801DB368 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1CC0DC 801DB36C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1CC0E0 801DB370 3C01800E */ lui $at, %hi(D_800E5510)
/* 1CC0E4 801DB374 3C19800E */  lui   $t9, %hi(D_800E64D0) # $t9, 0x800e
/* 1CC0E8 801DB378 8C620000 */  lw    $v0, ($v1)
/* 1CC0EC 801DB37C 273964D0 */  addiu $t9, %lo(D_800E64D0) # addiu $t9, $t9, 0x64d0
/* 1CC0F0 801DB380 3C09800E */  lui   $t1, %hi(gEntitiesNextPosXArray) # $t1, 0x800e
/* 1CC0F4 801DB384 00021080 */  sll   $v0, $v0, 2
/* 1CC0F8 801DB388 00220821 */  addu  $at, $at, $v0
/* 1CC0FC 801DB38C C4325510 */ lwc1 $f18, %lo(D_800E5510)($at)
/* 1CC100 801DB390 3C01800E */ lui $at, %hi(D_800E56D0)
/* 1CC104 801DB394 00220821 */  addu  $at, $at, $v0
/* 1CC108 801DB398 C42456D0 */ lwc1 $f4, %lo(D_800E56D0)($at)
/* 1CC10C 801DB39C 00592821 */  addu  $a1, $v0, $t9
/* 1CC110 801DB3A0 C4AA0000 */  lwc1  $f10, ($a1)
/* 1CC114 801DB3A4 46049180 */  add.s $f6, $f18, $f4
/* 1CC118 801DB3A8 3C01800E */ lui $at, %hi(D_800E2090)
/* 1CC11C 801DB3AC 252925D0 */  addiu $t1, %lo(gEntitiesNextPosXArray) # addiu $t1, $t1, 0x25d0
/* 1CC120 801DB3B0 3C08800E */  lui   $t0, %hi(D_800E2250) # $t0, 0x800e
/* 1CC124 801DB3B4 46065201 */  sub.s $f8, $f10, $f6
/* 1CC128 801DB3B8 25082250 */  addiu $t0, %lo(D_800E2250) # addiu $t0, $t0, 0x2250
/* 1CC12C 801DB3BC 3C0B800E */  lui   $t3, %hi(gEntitiesNextPosZArray) # $t3, 0x800e
/* 1CC130 801DB3C0 256B2950 */  addiu $t3, %lo(gEntitiesNextPosZArray) # addiu $t3, $t3, 0x2950
/* 1CC134 801DB3C4 E4A80000 */  swc1  $f8, ($a1)
/* 1CC138 801DB3C8 8C620000 */  lw    $v0, ($v1)
/* 1CC13C 801DB3CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1CC140 801DB3D0 00021080 */  sll   $v0, $v0, 2
/* 1CC144 801DB3D4 00492021 */  addu  $a0, $v0, $t1
/* 1CC148 801DB3D8 00220821 */  addu  $at, $at, $v0
/* 1CC14C 801DB3DC C4322090 */ lwc1 $f18, %lo(D_800E2090)($at)
/* 1CC150 801DB3E0 C4900000 */  lwc1  $f16, ($a0)
/* 1CC154 801DB3E4 3C01800E */ lui $at, %hi(D_800E3210)
/* 1CC158 801DB3E8 46128100 */  add.s $f4, $f16, $f18
/* 1CC15C 801DB3EC E4840000 */  swc1  $f4, ($a0)
/* 1CC160 801DB3F0 8C620000 */  lw    $v0, ($v1)
/* 1CC164 801DB3F4 00021080 */  sll   $v0, $v0, 2
/* 1CC168 801DB3F8 00220821 */  addu  $at, $at, $v0
/* 1CC16C 801DB3FC C42A3210 */ lwc1 $f10, %lo(D_800E3210)($at)
/* 1CC170 801DB400 3C01800E */ lui $at, %hi(D_800E5C10)
/* 1CC174 801DB404 00220821 */  addu  $at, $at, $v0
/* 1CC178 801DB408 C4265C10 */ lwc1 $f6, %lo(D_800E5C10)($at)
/* 1CC17C 801DB40C 3C01800E */ lui $at, %hi(D_800E5890)
/* 1CC180 801DB410 00220821 */  addu  $at, $at, $v0
/* 1CC184 801DB414 46065200 */  add.s $f8, $f10, $f6
/* 1CC188 801DB418 C4305890 */ lwc1 $f16, %lo(D_800E5890)($at)
/* 1CC18C 801DB41C 01023021 */  addu  $a2, $t0, $v0
/* 1CC190 801DB420 C4C40000 */  lwc1  $f4, ($a2)
/* 1CC194 801DB424 46104480 */  add.s $f18, $f8, $f16
/* 1CC198 801DB428 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1CC19C 801DB42C 46122280 */  add.s $f10, $f4, $f18
/* 1CC1A0 801DB430 E4CA0000 */  swc1  $f10, ($a2)
/* 1CC1A4 801DB434 8C620000 */  lw    $v0, ($v1)
/* 1CC1A8 801DB438 00021080 */  sll   $v0, $v0, 2
/* 1CC1AC 801DB43C 01025021 */  addu  $t2, $t0, $v0
/* 1CC1B0 801DB440 C5460000 */  lwc1  $f6, ($t2)
/* 1CC1B4 801DB444 00220821 */  addu  $at, $at, $v0
/* 1CC1B8 801DB448 E4262790 */ swc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1CC1BC 801DB44C 8C620000 */  lw    $v0, ($v1)
/* 1CC1C0 801DB450 3C01800E */ lui $at, %hi(D_800E2410)
/* 1CC1C4 801DB454 00021080 */  sll   $v0, $v0, 2
/* 1CC1C8 801DB458 004B3821 */  addu  $a3, $v0, $t3
/* 1CC1CC 801DB45C 00220821 */  addu  $at, $at, $v0
/* 1CC1D0 801DB460 C4302410 */ lwc1 $f16, %lo(D_800E2410)($at)
/* 1CC1D4 801DB464 C4E80000 */  lwc1  $f8, ($a3)
/* 1CC1D8 801DB468 27BD0018 */  addiu $sp, $sp, 0x18
/* 1CC1DC 801DB46C 46104100 */  add.s $f4, $f8, $f16
/* 1CC1E0 801DB470 03E00008 */  jr    $ra
/* 1CC1E4 801DB474 E4E40000 */   swc1  $f4, ($a3)
.size func_801DB2FC_ovl10, . - func_801DB2FC_ovl10

glabel func_801DB478_ovl10
/* 1CC1E8 801DB478 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1CC1EC 801DB47C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1CC1F0 801DB480 0C076CBF */  jal   func_801DB2FC_ovl10
/* 1CC1F4 801DB484 00000000 */   nop   
/* 1CC1F8 801DB488 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 1CC1FC 801DB48C 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 1CC200 801DB490 3C01801F */  lui   $at, %hi(D_801F4988) # $at, 0x801f
/* 1CC204 801DB494 C4224988 */  lwc1  $f2, %lo(D_801F4988)($at)
/* 1CC208 801DB498 8C830000 */  lw    $v1, ($a0)
/* 1CC20C 801DB49C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1CC210 801DB4A0 3C05800E */  lui   $a1, %hi(gEntitiesAngleYArray) # $a1, 0x800e
/* 1CC214 801DB4A4 00031880 */  sll   $v1, $v1, 2
/* 1CC218 801DB4A8 00230821 */  addu  $at, $at, $v1
/* 1CC21C 801DB4AC C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 1CC220 801DB4B0 3C01801F */  lui   $at, %hi(D_801F498C) # $at, 0x801f
/* 1CC224 801DB4B4 C426498C */  lwc1  $f6, %lo(D_801F498C)($at)
/* 1CC228 801DB4B8 3C01800E */ lui $at, %hi(D_800E17D0)
/* 1CC22C 801DB4BC 00230821 */  addu  $at, $at, $v1
/* 1CC230 801DB4C0 46062202 */  mul.s $f8, $f4, $f6
/* 1CC234 801DB4C4 C42A17D0 */ lwc1 $f10, %lo(D_800E17D0)($at)
/* 1CC238 801DB4C8 24A541D0 */  addiu $a1, %lo(gEntitiesAngleYArray) # addiu $a1, $a1, 0x41d0
/* 1CC23C 801DB4CC 00A37021 */  addu  $t6, $a1, $v1
/* 1CC240 801DB4D0 44806000 */  mtc1  $zero, $f12
/* 1CC244 801DB4D4 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1CC248 801DB4D8 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 1CC24C 801DB4DC 460A4400 */  add.s $f16, $f8, $f10
/* 1CC250 801DB4E0 E5D00000 */  swc1  $f16, ($t6)
/* 1CC254 801DB4E4 8C830000 */  lw    $v1, ($a0)
/* 1CC258 801DB4E8 00031880 */  sll   $v1, $v1, 2
/* 1CC25C 801DB4EC 00A31021 */  addu  $v0, $a1, $v1
/* 1CC260 801DB4F0 C4400000 */  lwc1  $f0, ($v0)
/* 1CC264 801DB4F4 4600103E */  c.le.s $f2, $f0
/* 1CC268 801DB4F8 00000000 */  nop   
/* 1CC26C 801DB4FC 4502000C */  bc1fl .L801DB530_ovl10
/* 1CC270 801DB500 460C003C */   c.lt.s $f0, $f12
/* 1CC274 801DB504 46020481 */  sub.s $f18, $f0, $f2
.L801DB508_ovl10:
/* 1CC278 801DB508 E4520000 */  swc1  $f18, ($v0)
/* 1CC27C 801DB50C 8C830000 */  lw    $v1, ($a0)
/* 1CC280 801DB510 00031880 */  sll   $v1, $v1, 2
/* 1CC284 801DB514 00A31021 */  addu  $v0, $a1, $v1
/* 1CC288 801DB518 C4400000 */  lwc1  $f0, ($v0)
/* 1CC28C 801DB51C 4600103E */  c.le.s $f2, $f0
/* 1CC290 801DB520 00000000 */  nop   
/* 1CC294 801DB524 4503FFF8 */  bc1tl .L801DB508_ovl10
/* 1CC298 801DB528 46020481 */   sub.s $f18, $f0, $f2
/* 1CC29C 801DB52C 460C003C */  c.lt.s $f0, $f12
.L801DB530_ovl10:
/* 1CC2A0 801DB530 00000000 */  nop   
/* 1CC2A4 801DB534 4502000C */  bc1fl .L801DB568_ovl10
/* 1CC2A8 801DB538 00230821 */   addu  $at, $at, $v1
/* 1CC2AC 801DB53C 46020100 */  add.s $f4, $f0, $f2
.L801DB540_ovl10:
/* 1CC2B0 801DB540 E4440000 */  swc1  $f4, ($v0)
/* 1CC2B4 801DB544 8C830000 */  lw    $v1, ($a0)
/* 1CC2B8 801DB548 00031880 */  sll   $v1, $v1, 2
/* 1CC2BC 801DB54C 00A31021 */  addu  $v0, $a1, $v1
/* 1CC2C0 801DB550 C4400000 */  lwc1  $f0, ($v0)
/* 1CC2C4 801DB554 460C003C */  c.lt.s $f0, $f12
/* 1CC2C8 801DB558 00000000 */  nop   
/* 1CC2CC 801DB55C 4503FFF8 */  bc1tl .L801DB540_ovl10
/* 1CC2D0 801DB560 46020100 */   add.s $f4, $f0, $f2
/* 1CC2D4 801DB564 00230821 */  addu  $at, $at, $v1
.L801DB568_ovl10:
/* 1CC2D8 801DB568 C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 1CC2DC 801DB56C 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1CC2E0 801DB570 00230821 */  addu  $at, $at, $v1
/* 1CC2E4 801DB574 00C33021 */  addu  $a2, $a2, $v1
/* 1CC2E8 801DB578 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 1CC2EC 801DB57C 0C02CC8D */  jal   func_800B3234
/* 1CC2F0 801DB580 C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 1CC2F4 801DB584 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1CC2F8 801DB588 27BD0018 */  addiu $sp, $sp, 0x18
/* 1CC2FC 801DB58C 03E00008 */  jr    $ra
/* 1CC300 801DB590 00000000 */   nop   
.size func_801DB478_ovl10, . - func_801DB478_ovl10

glabel func_801DB594_ovl10
/* 1CC304 801DB594 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1CC308 801DB598 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1CC30C 801DB59C 0C02D70A */  jal   func_800B5C28
/* 1CC310 801DB5A0 AFA40018 */   sw    $a0, 0x18($sp)
/* 1CC314 801DB5A4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1CC318 801DB5A8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1CC31C 801DB5AC 3C01800E */ lui $at, %hi(D_800E2090)
/* 1CC320 801DB5B0 3C0E800E */  lui   $t6, %hi(gEntitiesNextPosXArray) # $t6, 0x800e
/* 1CC324 801DB5B4 8C620000 */  lw    $v0, ($v1)
/* 1CC328 801DB5B8 25CE25D0 */  addiu $t6, %lo(gEntitiesNextPosXArray) # addiu $t6, $t6, 0x25d0
/* 1CC32C 801DB5BC 3C0F800E */  lui   $t7, %hi(gEntitiesNextPosYArray) # $t7, 0x800e
/* 1CC330 801DB5C0 00021080 */  sll   $v0, $v0, 2
/* 1CC334 801DB5C4 00220821 */  addu  $at, $at, $v0
/* 1CC338 801DB5C8 C4242090 */ lwc1 $f4, %lo(D_800E2090)($at)
/* 1CC33C 801DB5CC 3C01800E */ lui $at, %hi(D_800E3050)
/* 1CC340 801DB5D0 00220821 */  addu  $at, $at, $v0
/* 1CC344 801DB5D4 C4263050 */ lwc1 $f6, %lo(D_800E3050)($at)
/* 1CC348 801DB5D8 004E2821 */  addu  $a1, $v0, $t6
/* 1CC34C 801DB5DC C4AA0000 */  lwc1  $f10, ($a1)
/* 1CC350 801DB5E0 46062200 */  add.s $f8, $f4, $f6
/* 1CC354 801DB5E4 3C01800E */ lui $at, %hi(D_800E2250)
/* 1CC358 801DB5E8 25EF2790 */  addiu $t7, %lo(gEntitiesNextPosYArray) # addiu $t7, $t7, 0x2790
/* 1CC35C 801DB5EC 3C18800E */  lui   $t8, %hi(gEntitiesNextPosZArray) # $t8, 0x800e
/* 1CC360 801DB5F0 46085400 */  add.s $f16, $f10, $f8
/* 1CC364 801DB5F4 27182950 */  addiu $t8, %lo(gEntitiesNextPosZArray) # addiu $t8, $t8, 0x2950
/* 1CC368 801DB5F8 8FA40018 */  lw    $a0, 0x18($sp)
/* 1CC36C 801DB5FC E4B00000 */  swc1  $f16, ($a1)
/* 1CC370 801DB600 8C620000 */  lw    $v0, ($v1)
/* 1CC374 801DB604 00021080 */  sll   $v0, $v0, 2
/* 1CC378 801DB608 00220821 */  addu  $at, $at, $v0
/* 1CC37C 801DB60C C4322250 */ lwc1 $f18, %lo(D_800E2250)($at)
/* 1CC380 801DB610 3C01800E */ lui $at, %hi(D_800E3210)
/* 1CC384 801DB614 00220821 */  addu  $at, $at, $v0
/* 1CC388 801DB618 C4243210 */ lwc1 $f4, %lo(D_800E3210)($at)
/* 1CC38C 801DB61C 004F3021 */  addu  $a2, $v0, $t7
/* 1CC390 801DB620 C4CA0000 */  lwc1  $f10, ($a2)
/* 1CC394 801DB624 46049180 */  add.s $f6, $f18, $f4
/* 1CC398 801DB628 3C01800E */ lui $at, %hi(D_800E2410)
/* 1CC39C 801DB62C 46065200 */  add.s $f8, $f10, $f6
/* 1CC3A0 801DB630 E4C80000 */  swc1  $f8, ($a2)
/* 1CC3A4 801DB634 8C620000 */  lw    $v0, ($v1)
/* 1CC3A8 801DB638 00021080 */  sll   $v0, $v0, 2
/* 1CC3AC 801DB63C 00220821 */  addu  $at, $at, $v0
/* 1CC3B0 801DB640 C4302410 */ lwc1 $f16, %lo(D_800E2410)($at)
/* 1CC3B4 801DB644 3C01800E */ lui $at, %hi(D_800E33D0)
/* 1CC3B8 801DB648 00220821 */  addu  $at, $at, $v0
/* 1CC3BC 801DB64C C43233D0 */ lwc1 $f18, %lo(D_800E33D0)($at)
/* 1CC3C0 801DB650 00583821 */  addu  $a3, $v0, $t8
/* 1CC3C4 801DB654 C4EA0000 */  lwc1  $f10, ($a3)
/* 1CC3C8 801DB658 46128100 */  add.s $f4, $f16, $f18
/* 1CC3CC 801DB65C 46045180 */  add.s $f6, $f10, $f4
/* 1CC3D0 801DB660 0C02D7EF */  jal   func_800B5FBC
/* 1CC3D4 801DB664 E4E60000 */   swc1  $f6, ($a3)
/* 1CC3D8 801DB668 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1CC3DC 801DB66C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1CC3E0 801DB670 03E00008 */  jr    $ra
/* 1CC3E4 801DB674 00000000 */   nop   
.size func_801DB594_ovl10, . - func_801DB594_ovl10

glabel func_801DB678_ovl10
/* 1CC3E8 801DB678 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1CC3EC 801DB67C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1CC3F0 801DB680 0C076D65 */  jal   func_801DB594_ovl10
/* 1CC3F4 801DB684 00000000 */   nop   
/* 1CC3F8 801DB688 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 1CC3FC 801DB68C 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 1CC400 801DB690 3C05800E */  lui   $a1, %hi(gEntitiesAngleYArray) # $a1, 0x800e
/* 1CC404 801DB694 24A541D0 */  addiu $a1, %lo(gEntitiesAngleYArray) # addiu $a1, $a1, 0x41d0
/* 1CC408 801DB698 8C830000 */  lw    $v1, ($a0)
/* 1CC40C 801DB69C 3C01801F */  lui   $at, %hi(D_801F4990) # $at, 0x801f
/* 1CC410 801DB6A0 C4224990 */  lwc1  $f2, %lo(D_801F4990)($at)
/* 1CC414 801DB6A4 00031880 */  sll   $v1, $v1, 2
/* 1CC418 801DB6A8 00A31021 */  addu  $v0, $a1, $v1
/* 1CC41C 801DB6AC C4400000 */  lwc1  $f0, ($v0)
/* 1CC420 801DB6B0 44806000 */  mtc1  $zero, $f12
/* 1CC424 801DB6B4 3C01800E */ lui $at, %hi(D_800E17D0)
/* 1CC428 801DB6B8 4600103E */  c.le.s $f2, $f0
/* 1CC42C 801DB6BC 00000000 */  nop   
/* 1CC430 801DB6C0 4502000C */  bc1fl .L801DB6F4_ovl10
/* 1CC434 801DB6C4 460C003C */   c.lt.s $f0, $f12
/* 1CC438 801DB6C8 46020101 */  sub.s $f4, $f0, $f2
.L801DB6CC_ovl10:
/* 1CC43C 801DB6CC E4440000 */  swc1  $f4, ($v0)
/* 1CC440 801DB6D0 8C830000 */  lw    $v1, ($a0)
/* 1CC444 801DB6D4 00031880 */  sll   $v1, $v1, 2
/* 1CC448 801DB6D8 00A31021 */  addu  $v0, $a1, $v1
/* 1CC44C 801DB6DC C4400000 */  lwc1  $f0, ($v0)
/* 1CC450 801DB6E0 4600103E */  c.le.s $f2, $f0
/* 1CC454 801DB6E4 00000000 */  nop   
/* 1CC458 801DB6E8 4503FFF8 */  bc1tl .L801DB6CC_ovl10
/* 1CC45C 801DB6EC 46020101 */   sub.s $f4, $f0, $f2
/* 1CC460 801DB6F0 460C003C */  c.lt.s $f0, $f12
.L801DB6F4_ovl10:
/* 1CC464 801DB6F4 00000000 */  nop   
/* 1CC468 801DB6F8 4502000C */  bc1fl .L801DB72C_ovl10
/* 1CC46C 801DB6FC 00230821 */   addu  $at, $at, $v1
/* 1CC470 801DB700 46020180 */  add.s $f6, $f0, $f2
.L801DB704_ovl10:
/* 1CC474 801DB704 E4460000 */  swc1  $f6, ($v0)
/* 1CC478 801DB708 8C830000 */  lw    $v1, ($a0)
/* 1CC47C 801DB70C 00031880 */  sll   $v1, $v1, 2
/* 1CC480 801DB710 00A31021 */  addu  $v0, $a1, $v1
/* 1CC484 801DB714 C4400000 */  lwc1  $f0, ($v0)
/* 1CC488 801DB718 460C003C */  c.lt.s $f0, $f12
/* 1CC48C 801DB71C 00000000 */  nop   
/* 1CC490 801DB720 4503FFF8 */  bc1tl .L801DB704_ovl10
/* 1CC494 801DB724 46020180 */   add.s $f6, $f0, $f2
/* 1CC498 801DB728 00230821 */  addu  $at, $at, $v1
.L801DB72C_ovl10:
/* 1CC49C 801DB72C E42017D0 */ swc1 $f0, %lo(D_800E17D0)($at)
/* 1CC4A0 801DB730 8C830000 */  lw    $v1, ($a0)
/* 1CC4A4 801DB734 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1CC4A8 801DB738 3C06800E */ lui $a2, %hi(gEntitiesNextPosZArray)
/* 1CC4AC 801DB73C 00031880 */  sll   $v1, $v1, 2
/* 1CC4B0 801DB740 00230821 */  addu  $at, $at, $v1
/* 1CC4B4 801DB744 C42C25D0 */ lwc1 $f12, %lo(gEntitiesNextPosXArray)($at)
/* 1CC4B8 801DB748 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1CC4BC 801DB74C 00230821 */  addu  $at, $at, $v1
/* 1CC4C0 801DB750 00C33021 */  addu  $a2, $a2, $v1
/* 1CC4C4 801DB754 8CC62950 */ lw $a2, %lo(gEntitiesNextPosZArray)($a2)
/* 1CC4C8 801DB758 0C02CC8D */  jal   func_800B3234
/* 1CC4CC 801DB75C C42E2790 */ lwc1 $f14, %lo(gEntitiesNextPosYArray)($at)
/* 1CC4D0 801DB760 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1CC4D4 801DB764 27BD0018 */  addiu $sp, $sp, 0x18
/* 1CC4D8 801DB768 03E00008 */  jr    $ra
/* 1CC4DC 801DB76C 00000000 */   nop   
.size func_801DB678_ovl10, . - func_801DB678_ovl10

glabel func_801DB770_ovl10
/* 1CC4E0 801DB770 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 1CC4E4 801DB774 AFB00020 */  sw    $s0, 0x20($sp)
/* 1CC4E8 801DB778 00808025 */  move  $s0, $a0
/* 1CC4EC 801DB77C AFBF002C */  sw    $ra, 0x2c($sp)
/* 1CC4F0 801DB780 3C040001 */  lui   $a0, (0x000100E2 >> 16) # lui $a0, 1
/* 1CC4F4 801DB784 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 1CC4F8 801DB788 AFB20028 */  sw    $s2, 0x28($sp)
/* 1CC4FC 801DB78C AFB10024 */  sw    $s1, 0x24($sp)
/* 1CC500 801DB790 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1CC504 801DB794 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 1CC508 801DB798 348400E2 */  ori   $a0, (0x000100E2 & 0xFFFF) # ori $a0, $a0, 0xe2
/* 1CC50C 801DB79C 0C02A619 */  jal   func_800A9864
/* 1CC510 801DB7A0 24060010 */   li    $a2, 16
/* 1CC514 801DB7A4 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 1CC518 801DB7A8 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 1CC51C 801DB7AC 8E450000 */  lw    $a1, ($s2)
/* 1CC520 801DB7B0 3C0E800F */ lui $t6, %hi(D_800EC2E0)
/* 1CC524 801DB7B4 3C0B800B */  lui   $t3, %hi(D_800B4B9C) # $t3, 0x800b
/* 1CC528 801DB7B8 8CA30000 */  lw    $v1, ($a1)
/* 1CC52C 801DB7BC 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1CC530 801DB7C0 256B4B9C */  addiu $t3, %lo(D_800B4B9C) # addiu $t3, $t3, 0x4b9c
/* 1CC534 801DB7C4 00031880 */  sll   $v1, $v1, 2
/* 1CC538 801DB7C8 01C37021 */  addu  $t6, $t6, $v1
/* 1CC53C 801DB7CC 8DCEC2E0 */ lw $t6, %lo(D_800EC2E0)($t6)
/* 1CC540 801DB7D0 00230821 */  addu  $at, $at, $v1
/* 1CC544 801DB7D4 240C0025 */  li    $t4, 37
/* 1CC548 801DB7D8 15C00054 */  bnez  $t6, .L801DB92C_ovl10
/* 1CC54C 801DB7DC 3C040001 */   lui   $a0, 1
/* 1CC550 801DB7E0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray5)
/* 1CC554 801DB7E4 00832021 */  addu  $a0, $a0, $v1
/* 1CC558 801DB7E8 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 1CC55C 801DB7EC 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 1CC560 801DB7F0 0C02C7DA */  jal   func_800B1F68
/* 1CC564 801DB7F4 8C84EC10 */ lw $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 1CC568 801DB7F8 8E4F0000 */  lw    $t7, ($s2)
/* 1CC56C 801DB7FC 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1CC570 801DB800 8E08003C */  lw    $t0, 0x3c($s0)
/* 1CC574 801DB804 8DF80000 */  lw    $t8, ($t7)
/* 1CC578 801DB808 3C040001 */  lui   $a0, (0x0001062F >> 16) # lui $a0, 1
/* 1CC57C 801DB80C 3484062E */  ori   $a0, (0x0001062E & 0xFFFF) # ori $a0, $a0, 0x62e
/* 1CC580 801DB810 0018C880 */  sll   $t9, $t8, 2
/* 1CC584 801DB814 00390821 */  addu  $at, $at, $t9
/* 1CC588 801DB818 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 1CC58C 801DB81C 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1CC590 801DB820 E504001C */  swc1  $f4, 0x1c($t0)
/* 1CC594 801DB824 8E490000 */  lw    $t1, ($s2)
/* 1CC598 801DB828 8E0C003C */  lw    $t4, 0x3c($s0)
/* 1CC59C 801DB82C 8D2A0000 */  lw    $t2, ($t1)
/* 1CC5A0 801DB830 000A5880 */  sll   $t3, $t2, 2
/* 1CC5A4 801DB834 002B0821 */  addu  $at, $at, $t3
/* 1CC5A8 801DB838 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1CC5AC 801DB83C 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 1CC5B0 801DB840 E5860020 */  swc1  $f6, 0x20($t4)
/* 1CC5B4 801DB844 8E4D0000 */  lw    $t5, ($s2)
/* 1CC5B8 801DB848 8E18003C */  lw    $t8, 0x3c($s0)
/* 1CC5BC 801DB84C 8DAE0000 */  lw    $t6, ($t5)
/* 1CC5C0 801DB850 000E7880 */  sll   $t7, $t6, 2
/* 1CC5C4 801DB854 002F0821 */  addu  $at, $at, $t7
/* 1CC5C8 801DB858 C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 1CC5CC 801DB85C 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 1CC5D0 801DB860 E7080024 */  swc1  $f8, 0x24($t8)
/* 1CC5D4 801DB864 8E590000 */  lw    $t9, ($s2)
/* 1CC5D8 801DB868 8E0A003C */  lw    $t2, 0x3c($s0)
/* 1CC5DC 801DB86C 8F280000 */  lw    $t0, ($t9)
/* 1CC5E0 801DB870 00084880 */  sll   $t1, $t0, 2
/* 1CC5E4 801DB874 00290821 */  addu  $at, $at, $t1
/* 1CC5E8 801DB878 C42A4010 */ lwc1 $f10, %lo(gEntitiesAngleXArray)($at)
/* 1CC5EC 801DB87C 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 1CC5F0 801DB880 E54A0030 */  swc1  $f10, 0x30($t2)
/* 1CC5F4 801DB884 8E4B0000 */  lw    $t3, ($s2)
/* 1CC5F8 801DB888 8E0E003C */  lw    $t6, 0x3c($s0)
/* 1CC5FC 801DB88C 8D6C0000 */  lw    $t4, ($t3)
/* 1CC600 801DB890 000C6880 */  sll   $t5, $t4, 2
/* 1CC604 801DB894 002D0821 */  addu  $at, $at, $t5
/* 1CC608 801DB898 C43041D0 */ lwc1 $f16, %lo(gEntitiesAngleYArray)($at)
/* 1CC60C 801DB89C 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 1CC610 801DB8A0 E5D00034 */  swc1  $f16, 0x34($t6)
/* 1CC614 801DB8A4 8E4F0000 */  lw    $t7, ($s2)
/* 1CC618 801DB8A8 8E08003C */  lw    $t0, 0x3c($s0)
/* 1CC61C 801DB8AC 8DF80000 */  lw    $t8, ($t7)
/* 1CC620 801DB8B0 0018C880 */  sll   $t9, $t8, 2
/* 1CC624 801DB8B4 00390821 */  addu  $at, $at, $t9
/* 1CC628 801DB8B8 C4324390 */ lwc1 $f18, %lo(gEntitiesAngleZArray)($at)
/* 1CC62C 801DB8BC 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 1CC630 801DB8C0 E5120038 */  swc1  $f18, 0x38($t0)
/* 1CC634 801DB8C4 8E490000 */  lw    $t1, ($s2)
/* 1CC638 801DB8C8 8E0C003C */  lw    $t4, 0x3c($s0)
/* 1CC63C 801DB8CC 8D2A0000 */  lw    $t2, ($t1)
/* 1CC640 801DB8D0 000A5880 */  sll   $t3, $t2, 2
/* 1CC644 801DB8D4 002B0821 */  addu  $at, $at, $t3
/* 1CC648 801DB8D8 C4244550 */ lwc1 $f4, %lo(gEntitiesScaleXArray)($at)
/* 1CC64C 801DB8DC 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 1CC650 801DB8E0 E5840040 */  swc1  $f4, 0x40($t4)
/* 1CC654 801DB8E4 8E4D0000 */  lw    $t5, ($s2)
/* 1CC658 801DB8E8 8E18003C */  lw    $t8, 0x3c($s0)
/* 1CC65C 801DB8EC 8DAE0000 */  lw    $t6, ($t5)
/* 1CC660 801DB8F0 000E7880 */  sll   $t7, $t6, 2
/* 1CC664 801DB8F4 002F0821 */  addu  $at, $at, $t7
/* 1CC668 801DB8F8 C4264710 */ lwc1 $f6, %lo(gEntitiesScaleYArray)($at)
/* 1CC66C 801DB8FC 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 1CC670 801DB900 E7060044 */  swc1  $f6, 0x44($t8)
/* 1CC674 801DB904 8E590000 */  lw    $t9, ($s2)
/* 1CC678 801DB908 8E0A003C */  lw    $t2, 0x3c($s0)
/* 1CC67C 801DB90C 8F280000 */  lw    $t0, ($t9)
/* 1CC680 801DB910 00084880 */  sll   $t1, $t0, 2
/* 1CC684 801DB914 00290821 */  addu  $at, $at, $t1
/* 1CC688 801DB918 C42848D0 */ lwc1 $f8, %lo(gEntitiesScaleZArray)($at)
/* 1CC68C 801DB91C 0C02A806 */  jal   func_800AA018
/* 1CC690 801DB920 E5480048 */   swc1  $f8, 0x48($t2)
/* 1CC694 801DB924 10000009 */  b     .L801DB94C_ovl10
/* 1CC698 801DB928 00000000 */   nop   
.L801DB92C_ovl10:
/* 1CC69C 801DB92C AC2BEF90 */  sw    $t3, -0x1070($at)
/* 1CC6A0 801DB930 8CAD0000 */  lw    $t5, ($a1)
/* 1CC6A4 801DB934 3C01800E */ lui $at, %hi(D_800DDA90)
/* 1CC6A8 801DB938 3484062F */  ori   $a0, (0x0001062F & 0xFFFF) # ori $a0, $a0, 0x62f
/* 1CC6AC 801DB93C 000D7080 */  sll   $t6, $t5, 2
/* 1CC6B0 801DB940 002E0821 */  addu  $at, $at, $t6
/* 1CC6B4 801DB944 0C02A806 */  jal   func_800AA018
/* 1CC6B8 801DB948 AC2CDA90 */ sw $t4, %lo(D_800DDA90)($at)
.L801DB94C_ovl10:
/* 1CC6BC 801DB94C 0C02BC8C */  jal   func_800AF230
/* 1CC6C0 801DB950 00000000 */   nop   
/* 1CC6C4 801DB954 14400017 */  bnez  $v0, .L801DB9B4_ovl10
/* 1CC6C8 801DB958 3C11800E */   lui   $s1, %hi(D_800E0D50) # $s1, 0x800e
/* 1CC6CC 801DB95C 3C10800E */  lui   $s0, %hi(D_800E7B20) # $s0, 0x800e
/* 1CC6D0 801DB960 4480A000 */  mtc1  $zero, $f20
/* 1CC6D4 801DB964 26107B20 */  addiu $s0, %lo(D_800E7B20) # addiu $s0, $s0, 0x7b20
/* 1CC6D8 801DB968 26310D50 */  addiu $s1, %lo(D_800E0D50) # addiu $s1, $s1, 0xd50
/* 1CC6DC 801DB96C 8E4F0000 */  lw    $t7, ($s2)
.L801DB970_ovl10:
/* 1CC6E0 801DB970 8DF80000 */  lw    $t8, ($t7)
/* 1CC6E4 801DB974 0018C880 */  sll   $t9, $t8, 2
/* 1CC6E8 801DB978 02394021 */  addu  $t0, $s1, $t9
/* 1CC6EC 801DB97C 8D090000 */  lw    $t1, ($t0)
/* 1CC6F0 801DB980 00095080 */  sll   $t2, $t1, 2
/* 1CC6F4 801DB984 020A5821 */  addu  $t3, $s0, $t2
/* 1CC6F8 801DB988 C56A0000 */  lwc1  $f10, ($t3)
/* 1CC6FC 801DB98C 4614503E */  c.le.s $f10, $f20
/* 1CC700 801DB990 00000000 */  nop   
/* 1CC704 801DB994 45030008 */  bc1tl .L801DB9B8_ovl10
/* 1CC708 801DB998 8E4D0000 */   lw    $t5, ($s2)
/* 1CC70C 801DB99C 0C002DAF */  jal   finish_current_thread
/* 1CC710 801DB9A0 24040001 */   li    $a0, 1
/* 1CC714 801DB9A4 0C02BC8C */  jal   func_800AF230
/* 1CC718 801DB9A8 00000000 */   nop   
/* 1CC71C 801DB9AC 5040FFF0 */  beql  $v0, $zero, .L801DB970_ovl10
/* 1CC720 801DB9B0 8E4F0000 */   lw    $t7, ($s2)
.L801DB9B4_ovl10:
/* 1CC724 801DB9B4 8E4D0000 */  lw    $t5, ($s2)
.L801DB9B8_ovl10:
/* 1CC728 801DB9B8 0C02C640 */  jal   func_800B1900
/* 1CC72C 801DB9BC 95A40002 */   lhu   $a0, 2($t5)
/* 1CC730 801DB9C0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 1CC734 801DB9C4 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1CC738 801DB9C8 8FB00020 */  lw    $s0, 0x20($sp)
/* 1CC73C 801DB9CC 8FB10024 */  lw    $s1, 0x24($sp)
/* 1CC740 801DB9D0 8FB20028 */  lw    $s2, 0x28($sp)
/* 1CC744 801DB9D4 03E00008 */  jr    $ra
/* 1CC748 801DB9D8 27BD0030 */   addiu $sp, $sp, 0x30
.size func_801DB770_ovl10, . - func_801DB770_ovl10

glabel func_801DB9DC_ovl10
/* 1CC74C 801DB9DC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 1CC750 801DB9E0 AFB10024 */  sw    $s1, 0x24($sp)
/* 1CC754 801DB9E4 00808825 */  move  $s1, $a0
/* 1CC758 801DB9E8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 1CC75C 801DB9EC 3C040001 */  lui   $a0, (0x000100E3 >> 16) # lui $a0, 1
/* 1CC760 801DB9F0 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 1CC764 801DB9F4 AFB20028 */  sw    $s2, 0x28($sp)
/* 1CC768 801DB9F8 AFB00020 */  sw    $s0, 0x20($sp)
/* 1CC76C 801DB9FC F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1CC770 801DBA00 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 1CC774 801DBA04 348400E3 */  ori   $a0, (0x000100E3 & 0xFFFF) # ori $a0, $a0, 0xe3
/* 1CC778 801DBA08 0C02A619 */  jal   func_800A9864
/* 1CC77C 801DBA0C 24060010 */   li    $a2, 16
/* 1CC780 801DBA10 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1CC784 801DBA14 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1CC788 801DBA18 8E0E0000 */  lw    $t6, ($s0)
/* 1CC78C 801DBA1C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray5)
/* 1CC790 801DBA20 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 1CC794 801DBA24 8DCF0000 */  lw    $t7, ($t6)
/* 1CC798 801DBA28 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 1CC79C 801DBA2C 000FC080 */  sll   $t8, $t7, 2
/* 1CC7A0 801DBA30 00982021 */  addu  $a0, $a0, $t8
/* 1CC7A4 801DBA34 0C02C7DA */  jal   func_800B1F68
/* 1CC7A8 801DBA38 8C84EC10 */ lw $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 1CC7AC 801DBA3C 8E190000 */  lw    $t9, ($s0)
/* 1CC7B0 801DBA40 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1CC7B4 801DBA44 8E2A003C */  lw    $t2, 0x3c($s1)
/* 1CC7B8 801DBA48 8F280000 */  lw    $t0, ($t9)
/* 1CC7BC 801DBA4C 3C040001 */  lui   $a0, (0x00010630 >> 16) # lui $a0, 1
/* 1CC7C0 801DBA50 34840630 */  ori   $a0, (0x00010630 & 0xFFFF) # ori $a0, $a0, 0x630
/* 1CC7C4 801DBA54 00084880 */  sll   $t1, $t0, 2
/* 1CC7C8 801DBA58 00290821 */  addu  $at, $at, $t1
/* 1CC7CC 801DBA5C C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 1CC7D0 801DBA60 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1CC7D4 801DBA64 E544001C */  swc1  $f4, 0x1c($t2)
/* 1CC7D8 801DBA68 8E0B0000 */  lw    $t3, ($s0)
/* 1CC7DC 801DBA6C 8E2E003C */  lw    $t6, 0x3c($s1)
/* 1CC7E0 801DBA70 8D6C0000 */  lw    $t4, ($t3)
/* 1CC7E4 801DBA74 000C6880 */  sll   $t5, $t4, 2
/* 1CC7E8 801DBA78 002D0821 */  addu  $at, $at, $t5
/* 1CC7EC 801DBA7C C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1CC7F0 801DBA80 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 1CC7F4 801DBA84 E5C60020 */  swc1  $f6, 0x20($t6)
/* 1CC7F8 801DBA88 8E0F0000 */  lw    $t7, ($s0)
/* 1CC7FC 801DBA8C 8E28003C */  lw    $t0, 0x3c($s1)
/* 1CC800 801DBA90 8DF80000 */  lw    $t8, ($t7)
/* 1CC804 801DBA94 0018C880 */  sll   $t9, $t8, 2
/* 1CC808 801DBA98 00390821 */  addu  $at, $at, $t9
/* 1CC80C 801DBA9C C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 1CC810 801DBAA0 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 1CC814 801DBAA4 E5080024 */  swc1  $f8, 0x24($t0)
/* 1CC818 801DBAA8 8E090000 */  lw    $t1, ($s0)
/* 1CC81C 801DBAAC 8E2C003C */  lw    $t4, 0x3c($s1)
/* 1CC820 801DBAB0 8D2A0000 */  lw    $t2, ($t1)
/* 1CC824 801DBAB4 000A5880 */  sll   $t3, $t2, 2
/* 1CC828 801DBAB8 002B0821 */  addu  $at, $at, $t3
/* 1CC82C 801DBABC C42A4010 */ lwc1 $f10, %lo(gEntitiesAngleXArray)($at)
/* 1CC830 801DBAC0 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 1CC834 801DBAC4 E58A0030 */  swc1  $f10, 0x30($t4)
/* 1CC838 801DBAC8 8E0D0000 */  lw    $t5, ($s0)
/* 1CC83C 801DBACC 8E38003C */  lw    $t8, 0x3c($s1)
/* 1CC840 801DBAD0 8DAE0000 */  lw    $t6, ($t5)
/* 1CC844 801DBAD4 000E7880 */  sll   $t7, $t6, 2
/* 1CC848 801DBAD8 002F0821 */  addu  $at, $at, $t7
/* 1CC84C 801DBADC C43041D0 */ lwc1 $f16, %lo(gEntitiesAngleYArray)($at)
/* 1CC850 801DBAE0 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 1CC854 801DBAE4 E7100034 */  swc1  $f16, 0x34($t8)
/* 1CC858 801DBAE8 8E190000 */  lw    $t9, ($s0)
/* 1CC85C 801DBAEC 8E2A003C */  lw    $t2, 0x3c($s1)
/* 1CC860 801DBAF0 8F280000 */  lw    $t0, ($t9)
/* 1CC864 801DBAF4 00084880 */  sll   $t1, $t0, 2
/* 1CC868 801DBAF8 00290821 */  addu  $at, $at, $t1
/* 1CC86C 801DBAFC C4324390 */ lwc1 $f18, %lo(gEntitiesAngleZArray)($at)
/* 1CC870 801DBB00 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 1CC874 801DBB04 E5520038 */  swc1  $f18, 0x38($t2)
/* 1CC878 801DBB08 8E0B0000 */  lw    $t3, ($s0)
/* 1CC87C 801DBB0C 8E2E003C */  lw    $t6, 0x3c($s1)
/* 1CC880 801DBB10 8D6C0000 */  lw    $t4, ($t3)
/* 1CC884 801DBB14 000C6880 */  sll   $t5, $t4, 2
/* 1CC888 801DBB18 002D0821 */  addu  $at, $at, $t5
/* 1CC88C 801DBB1C C4244550 */ lwc1 $f4, %lo(gEntitiesScaleXArray)($at)
/* 1CC890 801DBB20 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 1CC894 801DBB24 E5C40040 */  swc1  $f4, 0x40($t6)
/* 1CC898 801DBB28 8E0F0000 */  lw    $t7, ($s0)
/* 1CC89C 801DBB2C 8E28003C */  lw    $t0, 0x3c($s1)
/* 1CC8A0 801DBB30 8DF80000 */  lw    $t8, ($t7)
/* 1CC8A4 801DBB34 0018C880 */  sll   $t9, $t8, 2
/* 1CC8A8 801DBB38 00390821 */  addu  $at, $at, $t9
/* 1CC8AC 801DBB3C C4264710 */ lwc1 $f6, %lo(gEntitiesScaleYArray)($at)
/* 1CC8B0 801DBB40 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 1CC8B4 801DBB44 E5060044 */  swc1  $f6, 0x44($t0)
/* 1CC8B8 801DBB48 8E090000 */  lw    $t1, ($s0)
/* 1CC8BC 801DBB4C 8E2C003C */  lw    $t4, 0x3c($s1)
/* 1CC8C0 801DBB50 8D2A0000 */  lw    $t2, ($t1)
/* 1CC8C4 801DBB54 000A5880 */  sll   $t3, $t2, 2
/* 1CC8C8 801DBB58 002B0821 */  addu  $at, $at, $t3
/* 1CC8CC 801DBB5C C42848D0 */ lwc1 $f8, %lo(gEntitiesScaleZArray)($at)
/* 1CC8D0 801DBB60 0C02A806 */  jal   func_800AA018
/* 1CC8D4 801DBB64 E5880048 */   swc1  $f8, 0x48($t4)
/* 1CC8D8 801DBB68 0C02BC8C */  jal   func_800AF230
/* 1CC8DC 801DBB6C 00000000 */   nop   
/* 1CC8E0 801DBB70 14400017 */  bnez  $v0, .L801DBBD0_ovl10
/* 1CC8E4 801DBB74 3C12800E */   lui   $s2, %hi(D_800E0D50) # $s2, 0x800e
/* 1CC8E8 801DBB78 3C11800E */  lui   $s1, %hi(D_800E7B20) # $s1, 0x800e
/* 1CC8EC 801DBB7C 4480A000 */  mtc1  $zero, $f20
/* 1CC8F0 801DBB80 26317B20 */  addiu $s1, %lo(D_800E7B20) # addiu $s1, $s1, 0x7b20
/* 1CC8F4 801DBB84 26520D50 */  addiu $s2, %lo(D_800E0D50) # addiu $s2, $s2, 0xd50
/* 1CC8F8 801DBB88 8E0D0000 */  lw    $t5, ($s0)
.L801DBB8C_ovl10:
/* 1CC8FC 801DBB8C 8DAE0000 */  lw    $t6, ($t5)
/* 1CC900 801DBB90 000E7880 */  sll   $t7, $t6, 2
/* 1CC904 801DBB94 024FC021 */  addu  $t8, $s2, $t7
/* 1CC908 801DBB98 8F190000 */  lw    $t9, ($t8)
/* 1CC90C 801DBB9C 00194080 */  sll   $t0, $t9, 2
/* 1CC910 801DBBA0 02284821 */  addu  $t1, $s1, $t0
/* 1CC914 801DBBA4 C52A0000 */  lwc1  $f10, ($t1)
/* 1CC918 801DBBA8 4614503E */  c.le.s $f10, $f20
/* 1CC91C 801DBBAC 00000000 */  nop   
/* 1CC920 801DBBB0 45030008 */  bc1tl .L801DBBD4_ovl10
/* 1CC924 801DBBB4 8E0A0000 */   lw    $t2, ($s0)
/* 1CC928 801DBBB8 0C002DAF */  jal   finish_current_thread
/* 1CC92C 801DBBBC 24040001 */   li    $a0, 1
/* 1CC930 801DBBC0 0C02BC8C */  jal   func_800AF230
/* 1CC934 801DBBC4 00000000 */   nop   
/* 1CC938 801DBBC8 5040FFF0 */  beql  $v0, $zero, .L801DBB8C_ovl10
/* 1CC93C 801DBBCC 8E0D0000 */   lw    $t5, ($s0)
.L801DBBD0_ovl10:
/* 1CC940 801DBBD0 8E0A0000 */  lw    $t2, ($s0)
.L801DBBD4_ovl10:
/* 1CC944 801DBBD4 0C02C640 */  jal   func_800B1900
/* 1CC948 801DBBD8 95440002 */   lhu   $a0, 2($t2)
/* 1CC94C 801DBBDC 8FBF002C */  lw    $ra, 0x2c($sp)
/* 1CC950 801DBBE0 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1CC954 801DBBE4 8FB00020 */  lw    $s0, 0x20($sp)
/* 1CC958 801DBBE8 8FB10024 */  lw    $s1, 0x24($sp)
/* 1CC95C 801DBBEC 8FB20028 */  lw    $s2, 0x28($sp)
/* 1CC960 801DBBF0 03E00008 */  jr    $ra
/* 1CC964 801DBBF4 27BD0030 */   addiu $sp, $sp, 0x30

/* 1CC968 801DBBF8 00000000 */  nop   
/* 1CC96C 801DBBFC 00000000 */  nop   

.size func_801DB9DC_ovl10, . - func_801DB9DC_ovl10
