glabel func_800BC328
/* 064578 800BC328 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 06457C 800BC32C AFB00020 */  sw    $s0, 0x20($sp)
/* 064580 800BC330 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 064584 800BC334 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 064588 800BC338 8E030000 */  lw    $v1, ($s0)
/* 06458C 800BC33C AFBF0034 */  sw    $ra, 0x34($sp)
/* 064590 800BC340 AFB40030 */  sw    $s4, 0x30($sp)
/* 064594 800BC344 AFB3002C */  sw    $s3, 0x2c($sp)
/* 064598 800BC348 AFB20028 */  sw    $s2, 0x28($sp)
/* 06459C 800BC34C AFB10024 */  sw    $s1, 0x24($sp)
/* 0645A0 800BC350 8C680000 */  lw    $t0, ($v1)
/* 0645A4 800BC354 3C07800F */ lui $a3, %hi(D_800E9E20)
/* 0645A8 800BC358 3C0F800D */  lui   $t7, %hi(D_800D552C) # $t7, 0x800d
/* 0645AC 800BC35C 00084080 */  sll   $t0, $t0, 2
/* 0645B0 800BC360 00E83821 */  addu  $a3, $a3, $t0
/* 0645B4 800BC364 8CE79E20 */ lw $a3, %lo(D_800E9E20)($a3)
/* 0645B8 800BC368 25EF552C */  addiu $t7, %lo(D_800D552C) # addiu $t7, $t7, 0x552c
/* 0645BC 800BC36C 0080A025 */  move  $s4, $a0
/* 0645C0 800BC370 00077080 */  sll   $t6, $a3, 2
/* 0645C4 800BC374 01CF1021 */  addu  $v0, $t6, $t7
/* 0645C8 800BC378 8C580000 */  lw    $t8, ($v0)
/* 0645CC 800BC37C 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0645D0 800BC380 2405000A */  li    $a1, 10
/* 0645D4 800BC384 44982000 */  mtc1  $t8, $f4
/* 0645D8 800BC388 07010004 */  bgez  $t8, .L800BC39C_ovl1
/* 0645DC 800BC38C 468021A0 */   cvt.s.w $f6, $f4
/* 0645E0 800BC390 44814000 */  mtc1  $at, $f8
/* 0645E4 800BC394 00000000 */  nop   
/* 0645E8 800BC398 46083180 */  add.s $f6, $f6, $f8
.L800BC39C_ovl1:
/* 0645EC 800BC39C 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 0645F0 800BC3A0 00280821 */  addu  $at, $at, $t0
/* 0645F4 800BC3A4 E42625D0 */ swc1 $f6, %lo(gEntitiesNextPosXArray)($at)
/* 0645F8 800BC3A8 8C590004 */  lw    $t9, 4($v0)
/* 0645FC 800BC3AC 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 064600 800BC3B0 44995000 */  mtc1  $t9, $f10
/* 064604 800BC3B4 07210004 */  bgez  $t9, .L800BC3C8_ovl1
/* 064608 800BC3B8 46805420 */   cvt.s.w $f16, $f10
/* 06460C 800BC3BC 44819000 */  mtc1  $at, $f18
/* 064610 800BC3C0 00000000 */  nop   
/* 064614 800BC3C4 46128400 */  add.s $f16, $f16, $f18
.L800BC3C8_ovl1:
/* 064618 800BC3C8 8C690000 */  lw    $t1, ($v1)
/* 06461C 800BC3CC 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 064620 800BC3D0 24060006 */  li    $a2, 6
/* 064624 800BC3D4 00095080 */  sll   $t2, $t1, 2
/* 064628 800BC3D8 002A0821 */  addu  $at, $at, $t2
/* 06462C 800BC3DC E4302790 */ swc1 $f16, %lo(gEntitiesNextPosYArray)($at)
/* 064630 800BC3E0 0C02BE30 */  jal   func_800AF8C0
/* 064634 800BC3E4 8C440008 */   lw    $a0, 8($v0)
/* 064638 800BC3E8 240B00FF */  li    $t3, 255
/* 06463C 800BC3EC AFAB0010 */  sw    $t3, 0x10($sp)
/* 064640 800BC3F0 02802025 */  move  $a0, $s4
/* 064644 800BC3F4 240500D0 */  li    $a1, 208
/* 064648 800BC3F8 240600B0 */  li    $a2, 176
/* 06464C 800BC3FC 0C0296C5 */  jal   func_800A5B14
/* 064650 800BC400 24070080 */   li    $a3, 128
/* 064654 800BC404 3C13800F */  lui   $s3, %hi(D_800E9AA0) # $s3, 0x800f
/* 064658 800BC408 3C12800E */  lui   $s2, %hi(D_800E0D50) # $s2, 0x800e
/* 06465C 800BC40C 3C11800F */  lui   $s1, %hi(D_800E9C60) # $s1, 0x800f
/* 064660 800BC410 26319C60 */  addiu $s1, %lo(D_800E9C60) # addiu $s1, $s1, -0x63a0
/* 064664 800BC414 26520D50 */  addiu $s2, %lo(D_800E0D50) # addiu $s2, $s2, 0xd50
/* 064668 800BC418 26739AA0 */  addiu $s3, %lo(D_800E9AA0) # addiu $s3, $s3, -0x6560
/* 06466C 800BC41C 8E0C0000 */  lw    $t4, ($s0)
.L800BC420_ovl1:
/* 064670 800BC420 8D8D0000 */  lw    $t5, ($t4)
/* 064674 800BC424 000D7080 */  sll   $t6, $t5, 2
/* 064678 800BC428 024E7821 */  addu  $t7, $s2, $t6
/* 06467C 800BC42C 8DE20000 */  lw    $v0, ($t7)
/* 064680 800BC430 00021080 */  sll   $v0, $v0, 2
/* 064684 800BC434 0222C021 */  addu  $t8, $s1, $v0
/* 064688 800BC438 8F190000 */  lw    $t9, ($t8)
/* 06468C 800BC43C 5320000D */  beql  $t9, $zero, .L800BC474_ovl1
/* 064690 800BC440 02627021 */   addu  $t6, $s3, $v0
/* 064694 800BC444 0C02B2F7 */  jal   func_800ACBDC
/* 064698 800BC448 02802025 */   move  $a0, $s4
/* 06469C 800BC44C 8E090000 */  lw    $t1, ($s0)
/* 0646A0 800BC450 0C02C640 */  jal   func_800B1900
/* 0646A4 800BC454 95240002 */   lhu   $a0, 2($t1)
/* 0646A8 800BC458 8E0A0000 */  lw    $t2, ($s0)
/* 0646AC 800BC45C 8D4B0000 */  lw    $t3, ($t2)
/* 0646B0 800BC460 000B6080 */  sll   $t4, $t3, 2
/* 0646B4 800BC464 024C6821 */  addu  $t5, $s2, $t4
/* 0646B8 800BC468 8DA20000 */  lw    $v0, ($t5)
/* 0646BC 800BC46C 00021080 */  sll   $v0, $v0, 2
/* 0646C0 800BC470 02627021 */  addu  $t6, $s3, $v0
.L800BC474_ovl1:
/* 0646C4 800BC474 8DCF0000 */  lw    $t7, ($t6)
/* 0646C8 800BC478 00003825 */  move  $a3, $zero
/* 0646CC 800BC47C 11E00002 */  beqz  $t7, .L800BC488_ovl1
/* 0646D0 800BC480 00000000 */   nop   
/* 0646D4 800BC484 24070001 */  li    $a3, 1
.L800BC488_ovl1:
/* 0646D8 800BC488 0C02BE48 */  jal   func_800AF920
/* 0646DC 800BC48C 00E02025 */   move  $a0, $a3
/* 0646E0 800BC490 0C002DAF */  jal   finish_current_thread
/* 0646E4 800BC494 24040001 */   li    $a0, 1
/* 0646E8 800BC498 1000FFE1 */  b     .L800BC420_ovl1
/* 0646EC 800BC49C 8E0C0000 */   lw    $t4, ($s0)
/* 0646F0 800BC4A0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0646F4 800BC4A4 8FB00020 */  lw    $s0, 0x20($sp)
/* 0646F8 800BC4A8 8FB10024 */  lw    $s1, 0x24($sp)
/* 0646FC 800BC4AC 8FB20028 */  lw    $s2, 0x28($sp)
/* 064700 800BC4B0 8FB3002C */  lw    $s3, 0x2c($sp)
/* 064704 800BC4B4 8FB40030 */  lw    $s4, 0x30($sp)
/* 064708 800BC4B8 03E00008 */  jr    $ra
/* 06470C 800BC4BC 27BD0038 */   addiu $sp, $sp, 0x38
.type func_800BC328, @function
.size func_800BC328, . - func_800BC328
