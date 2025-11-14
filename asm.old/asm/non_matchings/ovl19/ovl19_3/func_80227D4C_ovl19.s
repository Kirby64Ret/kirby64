glabel func_80227D4C_ovl19
/* 24845C 80227D4C 3C0A8013 */  lui   $t2, %hi(gKirbyState) # $t2, 0x8013
/* 248460 80227D50 254AE7C0 */  addiu $t2, %lo(gKirbyState) # addiu $t2, $t2, -0x1840
/* 248464 80227D54 8D4E00EC */  lw    $t6, 0xec($t2)
/* 248468 80227D58 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 24846C 80227D5C AFBF001C */  sw    $ra, 0x1c($sp)
/* 248470 80227D60 11C00008 */  beqz  $t6, .L80227D84_ovl19
/* 248474 80227D64 00000000 */   nop   
/* 248478 80227D68 8D4F0044 */  lw    $t7, 0x44($t2)
/* 24847C 80227D6C 24010004 */  li    $at, 4
/* 248480 80227D70 24180004 */  li    $t8, 4
/* 248484 80227D74 11E10003 */  beq   $t7, $at, .L80227D84_ovl19
/* 248488 80227D78 24020001 */   li    $v0, 1
/* 24848C 80227D7C 1000006A */  b     .L80227F28_ovl19
/* 248490 80227D80 AD580044 */   sw    $t8, 0x44($t2)
.L80227D84_ovl19:
/* 248494 80227D84 0C089EC8 */  jal   func_80227B20_ovl19
/* 248498 80227D88 00000000 */   nop   
/* 24849C 80227D8C 3C0A8013 */  lui   $t2, %hi(gKirbyState) # $t2, 0x8013
/* 2484A0 80227D90 10400009 */  beqz  $v0, .L80227DB8_ovl19
/* 2484A4 80227D94 254AE7C0 */   addiu $t2, %lo(gKirbyState) # addiu $t2, $t2, -0x1840
/* 2484A8 80227D98 3C19800D */  lui   $t9, %hi(D_800D6B54) # $t9, 0x800d
/* 2484AC 80227D9C 8F396B54 */  lw    $t9, %lo(D_800D6B54)($t9)
/* 2484B0 80227DA0 240B0004 */  li    $t3, 4
/* 2484B4 80227DA4 24020001 */  li    $v0, 1
/* 2484B8 80227DA8 17200003 */  bnez  $t9, .L80227DB8_ovl19
/* 2484BC 80227DAC 00000000 */   nop   
/* 2484C0 80227DB0 1000005D */  b     .L80227F28_ovl19
/* 2484C4 80227DB4 AD4B0044 */   sw    $t3, 0x44($t2)
.L80227DB8_ovl19:
/* 2484C8 80227DB8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 2484CC 80227DBC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 2484D0 80227DC0 3C09800E */ lui $t1, %hi(D_800D9AA0)
/* 2484D4 80227DC4 3C01800E */ lui $at, %hi(gEntitiesPosXArray)
/* 2484D8 80227DC8 8C620000 */  lw    $v0, ($v1)
/* 2484DC 80227DCC 27A40044 */  addiu $a0, $sp, 0x44
/* 2484E0 80227DD0 27A50038 */  addiu $a1, $sp, 0x38
/* 2484E4 80227DD4 00021080 */  sll   $v0, $v0, 2
/* 2484E8 80227DD8 01224821 */  addu  $t1, $t1, $v0
/* 2484EC 80227DDC 8D290490 */  lw    $t1, 0x0490($t1)
/* 2484F0 80227DE0 00220821 */  addu  $at, $at, $v0
/* 2484F4 80227DE4 C4242B10 */ lwc1 $f4, %lo(gEntitiesPosXArray)($at)
/* 2484F8 80227DE8 8D280004 */  lw    $t0, 4($t1)
/* 2484FC 80227DEC 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 248500 80227DF0 E7A40044 */  swc1  $f4, 0x44($sp)
/* 248504 80227DF4 8C6C0000 */  lw    $t4, ($v1)
/* 248508 80227DF8 C5080000 */  lwc1  $f8, ($t0)
/* 24850C 80227DFC 24060001 */  li    $a2, 1
/* 248510 80227E00 000C6880 */  sll   $t5, $t4, 2
/* 248514 80227E04 002D0821 */  addu  $at, $at, $t5
/* 248518 80227E08 C4262CD0 */ lwc1 $f6, %lo(gEntitiesPosYArray)($at)
/* 24851C 80227E0C 3C01800E */ lui $at, %hi(gEntitiesPosZArray)
/* 248520 80227E10 2407000E */  li    $a3, 14
/* 248524 80227E14 46083280 */  add.s $f10, $f6, $f8
/* 248528 80227E18 E7AA0048 */  swc1  $f10, 0x48($sp)
/* 24852C 80227E1C 8C6E0000 */  lw    $t6, ($v1)
/* 248530 80227E20 000E7880 */  sll   $t7, $t6, 2
/* 248534 80227E24 002F0821 */  addu  $at, $at, $t7
/* 248538 80227E28 C4302E90 */ lwc1 $f16, %lo(gEntitiesPosZArray)($at)
/* 24853C 80227E2C 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 248540 80227E30 3C0F8013 */  lui   $t7, %hi(D_8012BCC0) # $t7, 0x8013
/* 248544 80227E34 E7B0004C */  swc1  $f16, 0x4c($sp)
/* 248548 80227E38 8C780000 */  lw    $t8, ($v1)
/* 24854C 80227E3C 8DEFBCC0 */  lw    $t7, %lo(D_8012BCC0)($t7)
/* 248550 80227E40 0018C880 */  sll   $t9, $t8, 2
/* 248554 80227E44 00390821 */  addu  $at, $at, $t9
/* 248558 80227E48 C43225D0 */ lwc1 $f18, %lo(gEntitiesNextPosXArray)($at)
/* 24855C 80227E4C 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 248560 80227E50 27B80034 */  addiu $t8, $sp, 0x34
/* 248564 80227E54 E7B20038 */  swc1  $f18, 0x38($sp)
/* 248568 80227E58 8C6B0000 */  lw    $t3, ($v1)
/* 24856C 80227E5C C5060000 */  lwc1  $f6, ($t0)
/* 248570 80227E60 000B6080 */  sll   $t4, $t3, 2
/* 248574 80227E64 002C0821 */  addu  $at, $at, $t4
/* 248578 80227E68 C4242790 */ lwc1 $f4, %lo(gEntitiesNextPosYArray)($at)
/* 24857C 80227E6C 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 248580 80227E70 46062200 */  add.s $f8, $f4, $f6
/* 248584 80227E74 E7A8003C */  swc1  $f8, 0x3c($sp)
/* 248588 80227E78 8C6D0000 */  lw    $t5, ($v1)
/* 24858C 80227E7C AFB80010 */  sw    $t8, 0x10($sp)
/* 248590 80227E80 AFAF0034 */  sw    $t7, 0x34($sp)
/* 248594 80227E84 000D7080 */  sll   $t6, $t5, 2
/* 248598 80227E88 002E0821 */  addu  $at, $at, $t6
/* 24859C 80227E8C C42A2950 */ lwc1 $f10, %lo(gEntitiesNextPosZArray)($at)
/* 2485A0 80227E90 0C0412AD */  jal   func_80104AB4
/* 2485A4 80227E94 E7AA0040 */   swc1  $f10, 0x40($sp)
/* 2485A8 80227E98 3C0A8013 */  lui   $t2, %hi(gKirbyState) # $t2, 0x8013
/* 2485AC 80227E9C 10400022 */  beqz  $v0, .L80227F28_ovl19
/* 2485B0 80227EA0 254AE7C0 */   addiu $t2, %lo(gKirbyState) # addiu $t2, $t2, -0x1840
/* 2485B4 80227EA4 8FB90034 */  lw    $t9, 0x34($sp)
/* 2485B8 80227EA8 24020001 */  li    $v0, 1
/* 2485BC 80227EAC 972B0010 */  lhu   $t3, 0x10($t9)
/* 2485C0 80227EB0 24190007 */  li    $t9, 7
/* 2485C4 80227EB4 5560001C */  bnezl $t3, .L80227F28_ovl19
/* 2485C8 80227EB8 AD590044 */   sw    $t9, 0x44($t2)
/* 2485CC 80227EBC 0C087BA2 */  jal   func_8021EE88_ovl19
/* 2485D0 80227EC0 00002025 */   move  $a0, $zero
/* 2485D4 80227EC4 2401FFFF */  li    $at, -1
/* 2485D8 80227EC8 10410014 */  beq   $v0, $at, .L80227F1C_ovl19
/* 2485DC 80227ECC 00022080 */   sll   $a0, $v0, 2
/* 2485E0 80227ED0 3C01800E */ lui $at, %hi(D_800E0D50)
/* 2485E4 80227ED4 00240821 */  addu  $at, $at, $a0
/* 2485E8 80227ED8 240C0001 */  li    $t4, 1
/* 2485EC 80227EDC AC2C0D50 */  sw    $t4, %lo(D_800E0D50)($at)
/* 2485F0 80227EE0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 2485F4 80227EE4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 2485F8 80227EE8 3C01800E */ lui $at, %hi(D_800E0F10)
/* 2485FC 80227EEC 00240821 */  addu  $at, $at, $a0
/* 248600 80227EF0 240D0002 */  li    $t5, 2
/* 248604 80227EF4 AC2D0F10 */  sw    $t5, %lo(D_800E0F10)($at)
/* 248608 80227EF8 8C6E0000 */  lw    $t6, ($v1)
/* 24860C 80227EFC 3C01800F */ lui $at, %hi(D_800EBBE0)
/* 248610 80227F00 00240821 */  addu  $at, $at, $a0
/* 248614 80227F04 AC2EBBE0 */ sw $t6, %lo(D_800EBBE0)($at)
/* 248618 80227F08 8C6F0000 */  lw    $t7, ($v1)
/* 24861C 80227F0C 3C01800F */ lui $at, %hi(D_800E9FE0)
/* 248620 80227F10 000FC080 */  sll   $t8, $t7, 2
/* 248624 80227F14 00380821 */  addu  $at, $at, $t8
/* 248628 80227F18 AC229FE0 */ sw $v0, %lo(D_800E9FE0)($at)
.L80227F1C_ovl19:
/* 24862C 80227F1C 10000002 */  b     .L80227F28_ovl19
/* 248630 80227F20 00001025 */   move  $v0, $zero
/* 248634 80227F24 AD590044 */  sw    $t9, 0x44($t2)
.L80227F28_ovl19:
/* 248638 80227F28 8FBF001C */  lw    $ra, 0x1c($sp)
/* 24863C 80227F2C 27BD0050 */  addiu $sp, $sp, 0x50
/* 248640 80227F30 03E00008 */  jr    $ra
/* 248644 80227F34 00000000 */   nop   
.type func_80227D4C_ovl19, @function
.size func_80227D4C_ovl19, . - func_80227D4C_ovl19
