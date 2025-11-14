glabel func_80158CFC_ovl4
/* 10022C 80158CFC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 100230 80158D00 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 100234 80158D04 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 100238 80158D08 AFBF001C */  sw    $ra, 0x1c($sp)
/* 10023C 80158D0C AFB00018 */  sw    $s0, 0x18($sp)
/* 100240 80158D10 AFA40050 */  sw    $a0, 0x50($sp)
/* 100244 80158D14 8DC20000 */  lw    $v0, ($t6)
/* 100248 80158D18 3C04800F */ lui $a0, %hi(D_800E98E0)
/* 10024C 80158D1C 3C10800F */ lui $s0, %hi(D_800E9AA0)
/* 100250 80158D20 00021080 */  sll   $v0, $v0, 2
/* 100254 80158D24 00822021 */  addu  $a0, $a0, $v0
/* 100258 80158D28 8C8498E0 */ lw $a0, %lo(D_800E98E0)($a0)
/* 10025C 80158D2C 02028021 */  addu  $s0, $s0, $v0
/* 100260 80158D30 8E109AA0 */ lw $s0, %lo(D_800E9AA0)($s0)
/* 100264 80158D34 0C0561F3 */  jal   func_801587CC_ovl4
/* 100268 80158D38 AFA40034 */   sw    $a0, 0x34($sp)
/* 10026C 80158D3C 3C068016 */  lui   $a2, %hi(D_8015C714) # $a2, 0x8016
/* 100270 80158D40 8CC6C714 */  lw    $a2, %lo(D_8015C714)($a2)
/* 100274 80158D44 27A40044 */  addiu $a0, $sp, 0x44
/* 100278 80158D48 0C02C8D0 */  jal   func_800B2340
/* 10027C 80158D4C 00402825 */   move  $a1, $v0
/* 100280 80158D50 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 100284 80158D54 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 100288 80158D58 3C04800F */ lui $a0, %hi(D_800E98E0)
/* 10028C 80158D5C 8DF80000 */  lw    $t8, ($t7)
/* 100290 80158D60 0018C880 */  sll   $t9, $t8, 2
/* 100294 80158D64 00992021 */  addu  $a0, $a0, $t9
/* 100298 80158D68 0C0561F3 */  jal   func_801587CC_ovl4
/* 10029C 80158D6C 8C8498E0 */ lw $a0, %lo(D_800E98E0)($a0)
/* 1002A0 80158D70 3C068016 */  lui   $a2, %hi(D_8015C714) # $a2, 0x8016
/* 1002A4 80158D74 8CC6C714 */  lw    $a2, %lo(D_8015C714)($a2)
/* 1002A8 80158D78 27A40038 */  addiu $a0, $sp, 0x38
/* 1002AC 80158D7C 0C02C9B6 */  jal   func_800B26D8
/* 1002B0 80158D80 00402825 */   move  $a1, $v0
/* 1002B4 80158D84 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1002B8 80158D88 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1002BC 80158D8C C7A40044 */  lwc1  $f4, 0x44($sp)
/* 1002C0 80158D90 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1002C4 80158D94 8C480000 */  lw    $t0, ($v0)
/* 1002C8 80158D98 C7A60048 */  lwc1  $f6, 0x48($sp)
/* 1002CC 80158D9C C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 1002D0 80158DA0 00084880 */  sll   $t1, $t0, 2
/* 1002D4 80158DA4 00290821 */  addu  $at, $at, $t1
/* 1002D8 80158DA8 E42425D0 */ swc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 1002DC 80158DAC 8C4A0000 */  lw    $t2, ($v0)
/* 1002E0 80158DB0 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1002E4 80158DB4 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* 1002E8 80158DB8 000A5880 */  sll   $t3, $t2, 2
/* 1002EC 80158DBC 002B0821 */  addu  $at, $at, $t3
/* 1002F0 80158DC0 E4262790 */ swc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1002F4 80158DC4 8C4C0000 */  lw    $t4, ($v0)
/* 1002F8 80158DC8 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 1002FC 80158DCC C7B0003C */  lwc1  $f16, 0x3c($sp)
/* 100300 80158DD0 000C6880 */  sll   $t5, $t4, 2
/* 100304 80158DD4 002D0821 */  addu  $at, $at, $t5
/* 100308 80158DD8 E4282950 */ swc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 10030C 80158DDC 8C4E0000 */  lw    $t6, ($v0)
/* 100310 80158DE0 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 100314 80158DE4 C7B20040 */  lwc1  $f18, 0x40($sp)
/* 100318 80158DE8 000E7880 */  sll   $t7, $t6, 2
/* 10031C 80158DEC 002F0821 */  addu  $at, $at, $t7
/* 100320 80158DF0 E42A4010 */ swc1 $f10, %lo(gEntitiesAngleXArray)($at)
/* 100324 80158DF4 8C580000 */  lw    $t8, ($v0)
/* 100328 80158DF8 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 10032C 80158DFC 8FA30034 */  lw    $v1, 0x34($sp)
/* 100330 80158E00 0018C880 */  sll   $t9, $t8, 2
/* 100334 80158E04 00390821 */  addu  $at, $at, $t9
/* 100338 80158E08 E43041D0 */ swc1 $f16, %lo(gEntitiesAngleYArray)($at)
/* 10033C 80158E0C 8C480000 */  lw    $t0, ($v0)
/* 100340 80158E10 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 100344 80158E14 00084880 */  sll   $t1, $t0, 2
/* 100348 80158E18 00290821 */  addu  $at, $at, $t1
/* 10034C 80158E1C E4324390 */ swc1 $f18, %lo(gEntitiesAngleZArray)($at)
/* 100350 80158E20 24010002 */  li    $at, 2
/* 100354 80158E24 54610003 */  bnel  $v1, $at, .L80158E34_ovl4
/* 100358 80158E28 24010006 */   li    $at, 6
/* 10035C 80158E2C 16000003 */  bnez  $s0, .L80158E3C_ovl4
/* 100360 80158E30 24010006 */   li    $at, 6
.L80158E34_ovl4:
/* 100364 80158E34 54610014 */  bnel  $v1, $at, .L80158E88_ovl4
/* 100368 80158E38 8FBF001C */   lw    $ra, 0x1c($sp)
.L80158E3C_ovl4:
/* 10036C 80158E3C C7A40044 */  lwc1  $f4, 0x44($sp)
/* 100370 80158E40 8E0A004C */  lw    $t2, 0x4c($s0)
/* 100374 80158E44 E5440004 */  swc1  $f4, 4($t2)
/* 100378 80158E48 8E0B004C */  lw    $t3, 0x4c($s0)
/* 10037C 80158E4C C7A60048 */  lwc1  $f6, 0x48($sp)
/* 100380 80158E50 E5660008 */  swc1  $f6, 8($t3)
/* 100384 80158E54 8E0C004C */  lw    $t4, 0x4c($s0)
/* 100388 80158E58 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 10038C 80158E5C E588000C */  swc1  $f8, 0xc($t4)
/* 100390 80158E60 8E0D004C */  lw    $t5, 0x4c($s0)
/* 100394 80158E64 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* 100398 80158E68 E5AA0010 */  swc1  $f10, 0x10($t5)
/* 10039C 80158E6C 8E0E004C */  lw    $t6, 0x4c($s0)
/* 1003A0 80158E70 C7B0003C */  lwc1  $f16, 0x3c($sp)
/* 1003A4 80158E74 E5D00014 */  swc1  $f16, 0x14($t6)
/* 1003A8 80158E78 8E0F004C */  lw    $t7, 0x4c($s0)
/* 1003AC 80158E7C C7B20040 */  lwc1  $f18, 0x40($sp)
/* 1003B0 80158E80 E5F20018 */  swc1  $f18, 0x18($t7)
/* 1003B4 80158E84 8FBF001C */  lw    $ra, 0x1c($sp)
.L80158E88_ovl4:
/* 1003B8 80158E88 8FB00018 */  lw    $s0, 0x18($sp)
/* 1003BC 80158E8C 27BD0050 */  addiu $sp, $sp, 0x50
/* 1003C0 80158E90 03E00008 */  jr    $ra
/* 1003C4 80158E94 00000000 */   nop   
.type func_80158CFC_ovl4, @function
.size func_80158CFC_ovl4, . - func_80158CFC_ovl4
