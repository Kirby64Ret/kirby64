glabel func_80117904
/* 0A0374 80117904 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0A0378 80117908 AFB10028 */  sw    $s1, 0x28($sp)
/* 0A037C 8011790C 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 0A0380 80117910 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 0A0384 80117914 8E230000 */  lw    $v1, ($s1)
/* 0A0388 80117918 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0A038C 8011791C AFB30030 */  sw    $s3, 0x30($sp)
/* 0A0390 80117920 AFB2002C */  sw    $s2, 0x2c($sp)
/* 0A0394 80117924 AFB00024 */  sw    $s0, 0x24($sp)
/* 0A0398 80117928 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 0A039C 8011792C F7B40010 */  sdc1  $f20, 0x10($sp)
/* 0A03A0 80117930 AFA40038 */  sw    $a0, 0x38($sp)
/* 0A03A4 80117934 8C6E0000 */  lw    $t6, ($v1)
/* 0A03A8 80117938 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 0A03AC 8011793C 44812000 */  mtc1  $at, $f4
/* 0A03B0 80117940 3C01800E */ lui $at, %hi(D_800E3750)
/* 0A03B4 80117944 000E7880 */  sll   $t7, $t6, 2
/* 0A03B8 80117948 002F0821 */  addu  $at, $at, $t7
/* 0A03BC 8011794C E4243750 */ swc1 $f4, %lo(D_800E3750)($at)
/* 0A03C0 80117950 8C780000 */  lw    $t8, ($v1)
/* 0A03C4 80117954 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0A03C8 80117958 44813000 */  mtc1  $at, $f6
/* 0A03CC 8011795C 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0A03D0 80117960 0018C880 */  sll   $t9, $t8, 2
/* 0A03D4 80117964 00390821 */  addu  $at, $at, $t9
/* 0A03D8 80117968 24040007 */  li    $a0, 7
/* 0A03DC 8011796C 0C006291 */  jal   random_soft_s32_range
/* 0A03E0 80117970 E4263C90 */ swc1 $f6, %lo(D_800E3C90)($at)
/* 0A03E4 80117974 8E230000 */  lw    $v1, ($s1)
/* 0A03E8 80117978 3C13800E */  lui   $s3, %hi(gEntitiesNextPosYArray) # $s3, 0x800e
/* 0A03EC 8011797C 26732790 */  addiu $s3, %lo(gEntitiesNextPosYArray) # addiu $s3, $s3, 0x2790
/* 0A03F0 80117980 8C700000 */  lw    $s0, ($v1)
/* 0A03F4 80117984 3C01C4FA */  li    $at, 0xC4FA0000 # -2000.000000
/* 0A03F8 80117988 4481B000 */  mtc1  $at, $f22
/* 0A03FC 8011798C 00108080 */  sll   $s0, $s0, 2
/* 0A0400 80117990 02704821 */  addu  $t1, $s3, $s0
/* 0A0404 80117994 C5280000 */  lwc1  $f8, ($t1)
/* 0A0408 80117998 3C018012 */ lui $at, %hi(D_80126DFC)
/* 0A040C 8011799C 00024080 */  sll   $t0, $v0, 2
/* 0A0410 801179A0 4608B03C */  c.lt.s $f22, $f8
/* 0A0414 801179A4 00280821 */  addu  $at, $at, $t0
/* 0A0418 801179A8 3C12800E */  lui   $s2, %hi(gEntitiesAngleXArray) # $s2, 0x800e
/* 0A041C 801179AC C4346DFC */ lwc1 $f20, %lo(D_80126DFC)($at)
/* 0A0420 801179B0 45000010 */  bc1f  .L801179F4_ovl2
/* 0A0424 801179B4 26524010 */   addiu $s2, %lo(gEntitiesAngleXArray) # addiu $s2, $s2, 0x4010
/* 0A0428 801179B8 02501021 */  addu  $v0, $s2, $s0
.L801179BC_ovl2:
/* 0A042C 801179BC C44A0000 */  lwc1  $f10, ($v0)
/* 0A0430 801179C0 24040001 */  li    $a0, 1
/* 0A0434 801179C4 46145400 */  add.s $f16, $f10, $f20
/* 0A0438 801179C8 0C002DAF */  jal   finish_current_thread
/* 0A043C 801179CC E4500000 */   swc1  $f16, ($v0)
/* 0A0440 801179D0 8E230000 */  lw    $v1, ($s1)
/* 0A0444 801179D4 8C700000 */  lw    $s0, ($v1)
/* 0A0448 801179D8 00108080 */  sll   $s0, $s0, 2
/* 0A044C 801179DC 02705021 */  addu  $t2, $s3, $s0
/* 0A0450 801179E0 C5520000 */  lwc1  $f18, ($t2)
/* 0A0454 801179E4 4612B03C */  c.lt.s $f22, $f18
/* 0A0458 801179E8 00000000 */  nop   
/* 0A045C 801179EC 4503FFF3 */  bc1tl .L801179BC_ovl2
/* 0A0460 801179F0 02501021 */   addu  $v0, $s2, $s0
.L801179F4_ovl2:
/* 0A0464 801179F4 44800000 */  mtc1  $zero, $f0
/* 0A0468 801179F8 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 0A046C 801179FC 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 0A0470 80117A00 00905821 */  addu  $t3, $a0, $s0
/* 0A0474 80117A04 E5600000 */  swc1  $f0, ($t3)
/* 0A0478 80117A08 8C700000 */  lw    $s0, ($v1)
/* 0A047C 80117A0C 3C01800E */ lui $at, %hi(D_800E3210)
/* 0A0480 80117A10 3C19800E */  lui   $t9, %hi(gEntitiesNextPosXArray) # $t9, 0x800e
/* 0A0484 80117A14 00108080 */  sll   $s0, $s0, 2
/* 0A0488 80117A18 00906021 */  addu  $t4, $a0, $s0
/* 0A048C 80117A1C C5840000 */  lwc1  $f4, ($t4)
/* 0A0490 80117A20 00300821 */  addu  $at, $at, $s0
/* 0A0494 80117A24 273925D0 */  addiu $t9, %lo(gEntitiesNextPosXArray) # addiu $t9, $t9, 0x25d0
/* 0A0498 80117A28 E4243210 */ swc1 $f4, %lo(D_800E3210)($at)
/* 0A049C 80117A2C 8C6D0000 */  lw    $t5, ($v1)
/* 0A04A0 80117A30 3C018013 */  lui   $at, %hi(D_80128D3C) # $at, 0x8013
/* 0A04A4 80117A34 C4268D3C */  lwc1  $f6, %lo(D_80128D3C)($at)
/* 0A04A8 80117A38 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0A04AC 80117A3C 000D7080 */  sll   $t6, $t5, 2
/* 0A04B0 80117A40 002E0821 */  addu  $at, $at, $t6
/* 0A04B4 80117A44 E4263C90 */ swc1 $f6, %lo(D_800E3C90)($at)
/* 0A04B8 80117A48 8C6F0000 */  lw    $t7, ($v1)
/* 0A04BC 80117A4C 3C0144FA */  li    $at, 0x44FA0000 # 2000.000000
/* 0A04C0 80117A50 44815000 */  mtc1  $at, $f10
/* 0A04C4 80117A54 000FC080 */  sll   $t8, $t7, 2
/* 0A04C8 80117A58 03191021 */  addu  $v0, $t8, $t9
/* 0A04CC 80117A5C C4480000 */  lwc1  $f8, ($v0)
/* 0A04D0 80117A60 3C12800E */  lui   $s2, %hi(gEntitiesAngleXArray) # $s2, 0x800e
/* 0A04D4 80117A64 26524010 */  addiu $s2, %lo(gEntitiesAngleXArray) # addiu $s2, $s2, 0x4010
/* 0A04D8 80117A68 460A4401 */  sub.s $f16, $f8, $f10
/* 0A04DC 80117A6C E4500000 */  swc1  $f16, ($v0)
/* 0A04E0 80117A70 8C680000 */  lw    $t0, ($v1)
/* 0A04E4 80117A74 00084880 */  sll   $t1, $t0, 2
/* 0A04E8 80117A78 02695021 */  addu  $t2, $s3, $t1
/* 0A04EC 80117A7C E5400000 */  swc1  $f0, ($t2)
/* 0A04F0 80117A80 8C6B0000 */  lw    $t3, ($v1)
/* 0A04F4 80117A84 000B6080 */  sll   $t4, $t3, 2
/* 0A04F8 80117A88 024C6821 */  addu  $t5, $s2, $t4
/* 0A04FC 80117A8C E5A00000 */  swc1  $f0, ($t5)
/* 0A0500 80117A90 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0A0504 80117A94 8FB30030 */  lw    $s3, 0x30($sp)
/* 0A0508 80117A98 8FB2002C */  lw    $s2, 0x2c($sp)
/* 0A050C 80117A9C 8FB10028 */  lw    $s1, 0x28($sp)
/* 0A0510 80117AA0 8FB00024 */  lw    $s0, 0x24($sp)
/* 0A0514 80117AA4 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 0A0518 80117AA8 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 0A051C 80117AAC 03E00008 */  jr    $ra
/* 0A0520 80117AB0 27BD0038 */   addiu $sp, $sp, 0x38
