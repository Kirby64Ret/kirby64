glabel func_801EB408_ovl10
/* 1DC178 801EB408 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 1DC17C 801EB40C AFB00020 */  sw    $s0, 0x20($sp)
/* 1DC180 801EB410 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1DC184 801EB414 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1DC188 801EB418 8E030000 */  lw    $v1, ($s0)
/* 1DC18C 801EB41C AFBF002C */  sw    $ra, 0x2c($sp)
/* 1DC190 801EB420 AFB20028 */  sw    $s2, 0x28($sp)
/* 1DC194 801EB424 AFB10024 */  sw    $s1, 0x24($sp)
/* 1DC198 801EB428 AFA40030 */  sw    $a0, 0x30($sp)
/* 1DC19C 801EB42C 8C6F0000 */  lw    $t7, ($v1)
/* 1DC1A0 801EB430 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1DC1A4 801EB434 240E0001 */  li    $t6, 1
/* 1DC1A8 801EB438 000FC080 */  sll   $t8, $t7, 2
/* 1DC1AC 801EB43C 00380821 */  addu  $at, $at, $t8
/* 1DC1B0 801EB440 AC2E9C60 */ sw $t6, %lo(D_800E9C60)($at)
/* 1DC1B4 801EB444 8C790000 */  lw    $t9, ($v1)
/* 1DC1B8 801EB448 3C12800F */  lui   $s2, %hi(D_800E9E20) # $s2, 0x800f
/* 1DC1BC 801EB44C 26529E20 */  addiu $s2, %lo(D_800E9E20) # addiu $s2, $s2, -0x61e0
/* 1DC1C0 801EB450 00194080 */  sll   $t0, $t9, 2
/* 1DC1C4 801EB454 02484821 */  addu  $t1, $s2, $t0
/* 1DC1C8 801EB458 AD200000 */  sw    $zero, ($t1)
/* 1DC1CC 801EB45C 8C6B0000 */  lw    $t3, ($v1)
/* 1DC1D0 801EB460 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DC1D4 801EB464 240A0004 */  li    $t2, 4
/* 1DC1D8 801EB468 000B6080 */  sll   $t4, $t3, 2
/* 1DC1DC 801EB46C 002C0821 */  addu  $at, $at, $t4
/* 1DC1E0 801EB470 AC2ADFD0 */ sw $t2, %lo(D_800DDFD0)($at)
/* 1DC1E4 801EB474 8C620000 */  lw    $v0, ($v1)
/* 1DC1E8 801EB478 3C01800F */ lui $at, %hi(D_800EAA60)
/* 1DC1EC 801EB47C 00021080 */  sll   $v0, $v0, 2
/* 1DC1F0 801EB480 00220821 */  addu  $at, $at, $v0
/* 1DC1F4 801EB484 C424AA60 */ lwc1 $f4, %lo(D_800EAA60)($at)
/* 1DC1F8 801EB488 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DC1FC 801EB48C 00220821 */  addu  $at, $at, $v0
/* 1DC200 801EB490 C4266A10 */ lwc1 $f6, %lo(D_800E6A10)($at)
/* 1DC204 801EB494 46062032 */  c.eq.s $f4, $f6
/* 1DC208 801EB498 00000000 */  nop   
/* 1DC20C 801EB49C 45010004 */  bc1t  .L801EB4B0_ovl10
/* 1DC210 801EB4A0 3C04800E */ lui $a0, %hi(D_800DE350)
/* 1DC214 801EB4A4 00822021 */  addu  $a0, $a0, $v0
/* 1DC218 801EB4A8 0C0667C7 */  jal   func_80199F1C_ovl10
/* 1DC21C 801EB4AC 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
.L801EB4B0_ovl10:
/* 1DC220 801EB4B0 3C040001 */  lui   $a0, (0x00010392 >> 16) # lui $a0, 1
/* 1DC224 801EB4B4 0C02A7A9 */  jal   func_800A9EA4
/* 1DC228 801EB4B8 34840392 */   ori   $a0, (0x00010392 & 0xFFFF) # ori $a0, $a0, 0x392
/* 1DC22C 801EB4BC 3C040001 */  lui   $a0, (0x00010391 >> 16) # lui $a0, 1
/* 1DC230 801EB4C0 34840391 */  ori   $a0, (0x00010391 & 0xFFFF) # ori $a0, $a0, 0x391
/* 1DC234 801EB4C4 0C02AA19 */  jal   func_800AA864
/* 1DC238 801EB4C8 24050001 */   li    $a1, 1
/* 1DC23C 801EB4CC 0C002DAF */  jal   finish_current_thread
/* 1DC240 801EB4D0 24040008 */   li    $a0, 8
/* 1DC244 801EB4D4 3C040001 */  lui   $a0, (0x0001037E >> 16) # lui $a0, 1
/* 1DC248 801EB4D8 0C02A7A9 */  jal   func_800A9EA4
/* 1DC24C 801EB4DC 3484037E */   ori   $a0, (0x0001037E & 0xFFFF) # ori $a0, $a0, 0x37e
/* 1DC250 801EB4E0 3C040001 */  lui   $a0, (0x0001037D >> 16) # lui $a0, 1
/* 1DC254 801EB4E4 3484037D */  ori   $a0, (0x0001037D & 0xFFFF) # ori $a0, $a0, 0x37d
/* 1DC258 801EB4E8 0C02AA19 */  jal   func_800AA864
/* 1DC25C 801EB4EC 24050001 */   li    $a1, 1
/* 1DC260 801EB4F0 0C002DAF */  jal   finish_current_thread
/* 1DC264 801EB4F4 24040008 */   li    $a0, 8
/* 1DC268 801EB4F8 0C07AE13 */  jal   func_801EB84C_ovl10
/* 1DC26C 801EB4FC 00000000 */   nop   
/* 1DC270 801EB500 8E0D0000 */  lw    $t5, ($s0)
/* 1DC274 801EB504 3C11800F */  lui   $s1, %hi(D_800E8920) # $s1, 0x800f
/* 1DC278 801EB508 26318920 */  addiu $s1, %lo(D_800E8920) # addiu $s1, $s1, -0x76e0
/* 1DC27C 801EB50C 8DAF0000 */  lw    $t7, ($t5)
/* 1DC280 801EB510 240401D0 */  li    $a0, 464
/* 1DC284 801EB514 000F7080 */  sll   $t6, $t7, 2
/* 1DC288 801EB518 022EC021 */  addu  $t8, $s1, $t6
/* 1DC28C 801EB51C 0C029D9E */  jal   play_sound
/* 1DC290 801EB520 AF000000 */   sw    $zero, ($t8)
/* 1DC294 801EB524 3C040001 */  lui   $a0, (0x00010380 >> 16) # lui $a0, 1
/* 1DC298 801EB528 0C02A7A9 */  jal   func_800A9EA4
/* 1DC29C 801EB52C 34840380 */   ori   $a0, (0x00010380 & 0xFFFF) # ori $a0, $a0, 0x380
/* 1DC2A0 801EB530 3C040001 */  lui   $a0, (0x0001037F >> 16) # lui $a0, 1
/* 1DC2A4 801EB534 0C02A7A9 */  jal   func_800A9EA4
/* 1DC2A8 801EB538 3484037F */   ori   $a0, (0x0001037F & 0xFFFF) # ori $a0, $a0, 0x37f
/* 1DC2AC 801EB53C 8E190000 */  lw    $t9, ($s0)
/* 1DC2B0 801EB540 8F280000 */  lw    $t0, ($t9)
/* 1DC2B4 801EB544 00084880 */  sll   $t1, $t0, 2
/* 1DC2B8 801EB548 02495821 */  addu  $t3, $s2, $t1
/* 1DC2BC 801EB54C 8D6A0000 */  lw    $t2, ($t3)
/* 1DC2C0 801EB550 5540000B */  bnezl $t2, .L801EB580_ovl10
/* 1DC2C4 801EB554 3C040001 */   lui   $a0, 1
.L801EB558_ovl10:
/* 1DC2C8 801EB558 0C002DAF */  jal   finish_current_thread
/* 1DC2CC 801EB55C 24040001 */   li    $a0, 1
/* 1DC2D0 801EB560 8E0C0000 */  lw    $t4, ($s0)
/* 1DC2D4 801EB564 8D8D0000 */  lw    $t5, ($t4)
/* 1DC2D8 801EB568 000D7880 */  sll   $t7, $t5, 2
/* 1DC2DC 801EB56C 024F7021 */  addu  $t6, $s2, $t7
/* 1DC2E0 801EB570 8DD80000 */  lw    $t8, ($t6)
/* 1DC2E4 801EB574 1300FFF8 */  beqz  $t8, .L801EB558_ovl10
/* 1DC2E8 801EB578 00000000 */   nop   
/* 1DC2EC 801EB57C 3C040001 */  lui   $a0, (0x00010382 >> 16) # lui $a0, 1
.L801EB580_ovl10:
/* 1DC2F0 801EB580 0C02A7A9 */  jal   func_800A9EA4
/* 1DC2F4 801EB584 34840382 */   ori   $a0, (0x00010382 & 0xFFFF) # ori $a0, $a0, 0x382
/* 1DC2F8 801EB588 3C040001 */  lui   $a0, (0x00010381 >> 16) # lui $a0, 1
/* 1DC2FC 801EB58C 0C02A7A9 */  jal   func_800A9EA4
/* 1DC300 801EB590 34840381 */   ori   $a0, (0x00010381 & 0xFFFF) # ori $a0, $a0, 0x381
/* 1DC304 801EB594 8E190000 */  lw    $t9, ($s0)
/* 1DC308 801EB598 8F280000 */  lw    $t0, ($t9)
/* 1DC30C 801EB59C 00084880 */  sll   $t1, $t0, 2
/* 1DC310 801EB5A0 02295821 */  addu  $t3, $s1, $t1
/* 1DC314 801EB5A4 8D6A0000 */  lw    $t2, ($t3)
/* 1DC318 801EB5A8 1540000A */  bnez  $t2, .L801EB5D4_ovl10
/* 1DC31C 801EB5AC 00000000 */   nop   
.L801EB5B0_ovl10:
/* 1DC320 801EB5B0 0C002DAF */  jal   finish_current_thread
/* 1DC324 801EB5B4 24040001 */   li    $a0, 1
/* 1DC328 801EB5B8 8E0C0000 */  lw    $t4, ($s0)
/* 1DC32C 801EB5BC 8D8D0000 */  lw    $t5, ($t4)
/* 1DC330 801EB5C0 000D7880 */  sll   $t7, $t5, 2
/* 1DC334 801EB5C4 022F7021 */  addu  $t6, $s1, $t7
/* 1DC338 801EB5C8 8DD80000 */  lw    $t8, ($t6)
/* 1DC33C 801EB5CC 1300FFF8 */  beqz  $t8, .L801EB5B0_ovl10
/* 1DC340 801EB5D0 00000000 */   nop   
.L801EB5D4_ovl10:
/* 1DC344 801EB5D4 0C02CD48 */  jal   func_800B3520
/* 1DC348 801EB5D8 00000000 */   nop   
/* 1DC34C 801EB5DC 0C029D9E */  jal   play_sound
/* 1DC350 801EB5E0 240401CB */   li    $a0, 459
/* 1DC354 801EB5E4 0C03EE45 */  jal   func_800FB914
/* 1DC358 801EB5E8 24040003 */   li    $a0, 3
/* 1DC35C 801EB5EC 8E190000 */  lw    $t9, ($s0)
/* 1DC360 801EB5F0 3C01800F */ lui $at, %hi(D_800EAA60)
/* 1DC364 801EB5F4 3C11800E */  lui   $s1, %hi(gEntitiesNextPosXArray) # $s1, 0x800e
/* 1DC368 801EB5F8 8F220000 */  lw    $v0, ($t9)
/* 1DC36C 801EB5FC 263125D0 */  addiu $s1, %lo(gEntitiesNextPosXArray) # addiu $s1, $s1, 0x25d0
/* 1DC370 801EB600 24040006 */  li    $a0, 6
/* 1DC374 801EB604 00021080 */  sll   $v0, $v0, 2
/* 1DC378 801EB608 00220821 */  addu  $at, $at, $v0
/* 1DC37C 801EB60C C428AA60 */ lwc1 $f8, %lo(D_800EAA60)($at)
/* 1DC380 801EB610 3C01C270 */  li    $at, 0xC2700000 # -60.000000
/* 1DC384 801EB614 44815000 */  mtc1  $at, $f10
/* 1DC388 801EB618 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1DC38C 801EB61C 00220821 */  addu  $at, $at, $v0
/* 1DC390 801EB620 460A4402 */  mul.s $f16, $f8, $f10
/* 1DC394 801EB624 02224021 */  addu  $t0, $s1, $v0
/* 1DC398 801EB628 C5120000 */  lwc1  $f18, ($t0)
/* 1DC39C 801EB62C C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1DC3A0 801EB630 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 1DC3A4 801EB634 44814000 */  mtc1  $at, $f8
/* 1DC3A8 801EB638 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 1DC3AC 801EB63C 46128100 */  add.s $f4, $f16, $f18
/* 1DC3B0 801EB640 00220821 */  addu  $at, $at, $v0
/* 1DC3B4 801EB644 C4302950 */ lwc1 $f16, %lo(gEntitiesNextPosZArray)($at)
/* 1DC3B8 801EB648 46083281 */  sub.s $f10, $f6, $f8
/* 1DC3BC 801EB64C 44072000 */  mfc1  $a3, $f4
/* 1DC3C0 801EB650 24050002 */  li    $a1, 2
/* 1DC3C4 801EB654 2406000B */  li    $a2, 11
/* 1DC3C8 801EB658 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 1DC3CC 801EB65C 0C029FDD */  jal   func_800A7F74
/* 1DC3D0 801EB660 E7B00014 */   swc1  $f16, 0x14($sp)
/* 1DC3D4 801EB664 8E090000 */  lw    $t1, ($s0)
/* 1DC3D8 801EB668 3C01800F */ lui $at, %hi(D_800EAA60)
/* 1DC3DC 801EB66C 24040006 */  li    $a0, 6
/* 1DC3E0 801EB670 8D220000 */  lw    $v0, ($t1)
/* 1DC3E4 801EB674 24050002 */  li    $a1, 2
/* 1DC3E8 801EB678 24060009 */  li    $a2, 9
/* 1DC3EC 801EB67C 00021080 */  sll   $v0, $v0, 2
/* 1DC3F0 801EB680 00220821 */  addu  $at, $at, $v0
/* 1DC3F4 801EB684 C432AA60 */ lwc1 $f18, %lo(D_800EAA60)($at)
/* 1DC3F8 801EB688 3C01C270 */  li    $at, 0xC2700000 # -60.000000
/* 1DC3FC 801EB68C 44812000 */  mtc1  $at, $f4
/* 1DC400 801EB690 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1DC404 801EB694 00220821 */  addu  $at, $at, $v0
/* 1DC408 801EB698 46049182 */  mul.s $f6, $f18, $f4
/* 1DC40C 801EB69C 02225821 */  addu  $t3, $s1, $v0
/* 1DC410 801EB6A0 C5680000 */  lwc1  $f8, ($t3)
/* 1DC414 801EB6A4 C4302790 */ lwc1 $f16, %lo(gEntitiesNextPosYArray)($at)
/* 1DC418 801EB6A8 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 1DC41C 801EB6AC 44819000 */  mtc1  $at, $f18
/* 1DC420 801EB6B0 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 1DC424 801EB6B4 46083280 */  add.s $f10, $f6, $f8
/* 1DC428 801EB6B8 00220821 */  addu  $at, $at, $v0
/* 1DC42C 801EB6BC C4262950 */ lwc1 $f6, %lo(gEntitiesNextPosZArray)($at)
/* 1DC430 801EB6C0 46128101 */  sub.s $f4, $f16, $f18
/* 1DC434 801EB6C4 44075000 */  mfc1  $a3, $f10
/* 1DC438 801EB6C8 E7A60014 */  swc1  $f6, 0x14($sp)
/* 1DC43C 801EB6CC 0C029FDD */  jal   func_800A7F74
/* 1DC440 801EB6D0 E7A40010 */   swc1  $f4, 0x10($sp)
/* 1DC444 801EB6D4 3C040001 */  lui   $a0, (0x00010386 >> 16) # lui $a0, 1
/* 1DC448 801EB6D8 0C02A7A9 */  jal   func_800A9EA4
/* 1DC44C 801EB6DC 34840386 */   ori   $a0, (0x00010386 & 0xFFFF) # ori $a0, $a0, 0x386
/* 1DC450 801EB6E0 3C040001 */  lui   $a0, (0x00010385 >> 16) # lui $a0, 1
/* 1DC454 801EB6E4 34840385 */  ori   $a0, (0x00010385 & 0xFFFF) # ori $a0, $a0, 0x385
/* 1DC458 801EB6E8 0C02AA19 */  jal   func_800AA864
/* 1DC45C 801EB6EC 24050001 */   li    $a1, 1
/* 1DC460 801EB6F0 8E030000 */  lw    $v1, ($s0)
/* 1DC464 801EB6F4 240A0002 */  li    $t2, 2
/* 1DC468 801EB6F8 3C19800F */  lui   $t9, %hi(D_800EAA60) # $t9, 0x800f
/* 1DC46C 801EB6FC 8C6C0000 */  lw    $t4, ($v1)
/* 1DC470 801EB700 2739AA60 */  addiu $t9, %lo(D_800EAA60) # addiu $t9, $t9, -0x55a0
/* 1DC474 801EB704 000C6880 */  sll   $t5, $t4, 2
/* 1DC478 801EB708 024D7821 */  addu  $t7, $s2, $t5
/* 1DC47C 801EB70C ADEA0000 */  sw    $t2, ($t7)
/* 1DC480 801EB710 8C6E0000 */  lw    $t6, ($v1)
/* 1DC484 801EB714 000EC080 */  sll   $t8, $t6, 2
/* 1DC488 801EB718 03191021 */  addu  $v0, $t8, $t9
/* 1DC48C 801EB71C C4480000 */  lwc1  $f8, ($v0)
/* 1DC490 801EB720 46004287 */  neg.s $f10, $f8
/* 1DC494 801EB724 0C02BE85 */  jal   func_800AFA14
/* 1DC498 801EB728 E44A0000 */   swc1  $f10, ($v0)
/* 1DC49C 801EB72C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 1DC4A0 801EB730 8FB00020 */  lw    $s0, 0x20($sp)
/* 1DC4A4 801EB734 8FB10024 */  lw    $s1, 0x24($sp)
/* 1DC4A8 801EB738 8FB20028 */  lw    $s2, 0x28($sp)
/* 1DC4AC 801EB73C 03E00008 */  jr    $ra
/* 1DC4B0 801EB740 27BD0030 */   addiu $sp, $sp, 0x30
.type func_801EB408_ovl10, @function
.size func_801EB408_ovl10, . - func_801EB408_ovl10
