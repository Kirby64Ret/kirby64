glabel func_802222F0_ovl19
/* 242A00 802222F0 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 242A04 802222F4 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 242A08 802222F8 8CC20000 */  lw    $v0, ($a2)
/* 242A0C 802222FC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 242A10 80222300 AFBF0014 */  sw    $ra, 0x14($sp)
/* 242A14 80222304 AFA40040 */  sw    $a0, 0x40($sp)
/* 242A18 80222308 8C430000 */  lw    $v1, ($v0)
/* 242A1C 8022230C 3C0E800F */ lui $t6, %hi(D_800E98E0)
/* 242A20 80222310 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 242A24 80222314 00031880 */  sll   $v1, $v1, 2
/* 242A28 80222318 01C37021 */  addu  $t6, $t6, $v1
/* 242A2C 8022231C 8DCE98E0 */ lw $t6, %lo(D_800E98E0)($t6)
/* 242A30 80222320 11C0004B */  beqz  $t6, .L80222450_ovl19
/* 242A34 80222324 00000000 */   nop   
/* 242A38 80222328 44807000 */  mtc1  $zero, $f14
/* 242A3C 8022232C 44812000 */  mtc1  $at, $f4
/* 242A40 80222330 3C03800E */  lui   $v1, %hi(gEntitiesPosXArray) # $v1, 0x800e
/* 242A44 80222334 E7AE0038 */  swc1  $f14, 0x38($sp)
/* 242A48 80222338 E7AE0034 */  swc1  $f14, 0x34($sp)
/* 242A4C 8022233C E7A4003C */  swc1  $f4, 0x3c($sp)
/* 242A50 80222340 8C4F0000 */  lw    $t7, ($v0)
/* 242A54 80222344 246325D0 */  addiu $v1, %lo(gEntitiesPosXArray) # addiu $v1, $v1, 0x25d0
/* 242A58 80222348 C4660000 */  lwc1  $f6, ($v1)
/* 242A5C 8022234C 000FC080 */  sll   $t8, $t7, 2
/* 242A60 80222350 0078C821 */  addu  $t9, $v1, $t8
/* 242A64 80222354 C7280000 */  lwc1  $f8, ($t9)
/* 242A68 80222358 E7AE002C */  swc1  $f14, 0x2c($sp)
/* 242A6C 8022235C 3C07800E */  lui   $a3, %hi(gEntitiesPosZArray) # $a3, 0x800e
/* 242A70 80222360 46083281 */  sub.s $f10, $f6, $f8
/* 242A74 80222364 24E72950 */  addiu $a3, %lo(gEntitiesPosZArray) # addiu $a3, $a3, 0x2950
/* 242A78 80222368 C4F00000 */  lwc1  $f16, ($a3)
/* 242A7C 8022236C 27A40034 */  addiu $a0, $sp, 0x34
/* 242A80 80222370 E7AA0028 */  swc1  $f10, 0x28($sp)
/* 242A84 80222374 8C480000 */  lw    $t0, ($v0)
/* 242A88 80222378 27A50028 */  addiu $a1, $sp, 0x28
/* 242A8C 8022237C 00084880 */  sll   $t1, $t0, 2
/* 242A90 80222380 00E95021 */  addu  $t2, $a3, $t1
/* 242A94 80222384 C5520000 */  lwc1  $f18, ($t2)
/* 242A98 80222388 46128101 */  sub.s $f4, $f16, $f18
/* 242A9C 8022238C 0C03E270 */  jal   func_800F89C0
/* 242AA0 80222390 E7A40030 */   swc1  $f4, 0x30($sp)
/* 242AA4 80222394 3C018023 */  lui   $at, %hi(D_8022F7AC) # $at, 0x8023
/* 242AA8 80222398 C426F7AC */  lwc1  $f6, %lo(D_8022F7AC)($at)
/* 242AAC 8022239C 44807000 */  mtc1  $zero, $f14
/* 242AB0 802223A0 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 242AB4 802223A4 46060082 */  mul.s $f2, $f0, $f6
/* 242AB8 802223A8 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 242ABC 802223AC 3C018023 */ lui $at, %hi(D_8022F7B0)
/* 242AC0 802223B0 460E103C */  c.lt.s $f2, $f14
/* 242AC4 802223B4 46001306 */  mov.s $f12, $f2
/* 242AC8 802223B8 45000009 */  bc1f  .L802223E0_ovl19
/* 242ACC 802223BC 00000000 */   nop   
/* 242AD0 802223C0 3C018023 */  lui   $at, %hi(D_8022F7B4) # $at, 0x8023
/* 242AD4 802223C4 C420F7B0 */  lwc1  $f0, %lo(D_8022F7B0)($at)
/* 242AD8 802223C8 4600103C */  c.lt.s $f2, $f0
/* 242ADC 802223CC 00000000 */  nop   
/* 242AE0 802223D0 4502000A */  bc1fl .L802223FC_ovl19
/* 242AE4 802223D4 8CCB0000 */   lw    $t3, ($a2)
/* 242AE8 802223D8 10000007 */  b     .L802223F8_ovl19
/* 242AEC 802223DC 46000306 */   mov.s $f12, $f0
.L802223E0_ovl19:
/* 242AF0 802223E0 C420F7B4 */  lwc1  $f0, %lo(D_8022F7B4)($at)
/* 242AF4 802223E4 4602003C */  c.lt.s $f0, $f2
/* 242AF8 802223E8 00000000 */  nop   
/* 242AFC 802223EC 45020003 */  bc1fl .L802223FC_ovl19
/* 242B00 802223F0 8CCB0000 */   lw    $t3, ($a2)
/* 242B04 802223F4 46000306 */  mov.s $f12, $f0
.L802223F8_ovl19:
/* 242B08 802223F8 8CCB0000 */  lw    $t3, ($a2)
.L802223FC_ovl19:
/* 242B0C 802223FC 3C02800E */  lui   $v0, %hi(D_800DFBD0) # $v0, 0x800e
/* 242B10 80222400 2442FBD0 */  addiu $v0, %lo(D_800DFBD0) # addiu $v0, $v0, -0x430
/* 242B14 80222404 8D6C0000 */  lw    $t4, ($t3)
/* 242B18 80222408 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 242B1C 8022240C 44814000 */  mtc1  $at, $f8
/* 242B20 80222410 000C6880 */  sll   $t5, $t4, 2
/* 242B24 80222414 004D7021 */  addu  $t6, $v0, $t5
/* 242B28 80222418 8DCF0000 */  lw    $t7, ($t6)
/* 242B2C 8022241C 460C4282 */  mul.s $f10, $f8, $f12
/* 242B30 80222420 8DF80020 */  lw    $t8, 0x20($t7)
/* 242B34 80222424 E70C0034 */  swc1  $f12, 0x34($t8)
/* 242B38 80222428 8CD90000 */  lw    $t9, ($a2)
/* 242B3C 8022242C 8F280000 */  lw    $t0, ($t9)
/* 242B40 80222430 00084880 */  sll   $t1, $t0, 2
/* 242B44 80222434 00495021 */  addu  $t2, $v0, $t1
/* 242B48 80222438 8D4B0000 */  lw    $t3, ($t2)
/* 242B4C 8022243C 8D6C0020 */  lw    $t4, 0x20($t3)
/* 242B50 80222440 E58A001C */  swc1  $f10, 0x1c($t4)
/* 242B54 80222444 8CCD0000 */  lw    $t5, ($a2)
/* 242B58 80222448 8DA30000 */  lw    $v1, ($t5)
/* 242B5C 8022244C 00031880 */  sll   $v1, $v1, 2
.L80222450_ovl19:
/* 242B60 80222450 3C028023 */  lui   $v0, %hi(D_8022FAB0) # $v0, 0x8023
/* 242B64 80222454 3C01800E */ lui $at, %hi(gEntitiesPosXArray)
/* 242B68 80222458 2442FAB0 */  addiu $v0, %lo(D_8022FAB0) # addiu $v0, $v0, -0x550
/* 242B6C 8022245C 00230821 */  addu  $at, $at, $v1
/* 242B70 80222460 C43025D0 */ lwc1 $f16, %lo(gEntitiesPosXArray)($at)
/* 242B74 80222464 8C4E0000 */  lw    $t6, ($v0)
/* 242B78 80222468 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 242B7C 8022246C E5D00004 */  swc1  $f16, 4($t6)
/* 242B80 80222470 8CCF0000 */  lw    $t7, ($a2)
/* 242B84 80222474 8C480000 */  lw    $t0, ($v0)
/* 242B88 80222478 8DF80000 */  lw    $t8, ($t7)
/* 242B8C 8022247C 0018C880 */  sll   $t9, $t8, 2
/* 242B90 80222480 00390821 */  addu  $at, $at, $t9
/* 242B94 80222484 C4322790 */ lwc1 $f18, %lo(gEntitiesPosYArray)($at)
/* 242B98 80222488 3C01800E */ lui $at, %hi(gEntitiesPosZArray)
/* 242B9C 8022248C E5120008 */  swc1  $f18, 8($t0)
/* 242BA0 80222490 8CC90000 */  lw    $t1, ($a2)
/* 242BA4 80222494 8C4C0000 */  lw    $t4, ($v0)
/* 242BA8 80222498 8D2A0000 */  lw    $t2, ($t1)
/* 242BAC 8022249C 000A5880 */  sll   $t3, $t2, 2
/* 242BB0 802224A0 002B0821 */  addu  $at, $at, $t3
/* 242BB4 802224A4 C4242950 */ lwc1 $f4, %lo(gEntitiesPosZArray)($at)
/* 242BB8 802224A8 E584000C */  swc1  $f4, 0xc($t4)
/* 242BBC 802224AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 242BC0 802224B0 27BD0040 */  addiu $sp, $sp, 0x40
/* 242BC4 802224B4 03E00008 */  jr    $ra
/* 242BC8 802224B8 00000000 */   nop   
