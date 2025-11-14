glabel func_801A9930_ovl7
/* 14F9A0 801A9930 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 14F9A4 801A9934 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 14F9A8 801A9938 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 14F9AC 801A993C AFBF0014 */  sw    $ra, 0x14($sp)
/* 14F9B0 801A9940 AFA40038 */  sw    $a0, 0x38($sp)
/* 14F9B4 801A9944 8D020000 */  lw    $v0, ($t0)
/* 14F9B8 801A9948 3C03800E */ lui $v1, %hi(D_800E1B50)
/* 14F9BC 801A994C 3C0C800F */  lui   $t4, %hi(D_800E83E0) # $t4, 0x800f
/* 14F9C0 801A9950 00021080 */  sll   $v0, $v0, 2
/* 14F9C4 801A9954 00621821 */  addu  $v1, $v1, $v0
/* 14F9C8 801A9958 8C631B50 */ lw $v1, %lo(D_800E1B50)($v1)
/* 14F9CC 801A995C 258C83E0 */  addiu $t4, %lo(D_800E83E0) # addiu $t4, $t4, -0x7c20
/* 14F9D0 801A9960 0182C821 */  addu  $t9, $t4, $v0
/* 14F9D4 801A9964 8C6E0088 */  lw    $t6, 0x88($v1)
/* 14F9D8 801A9968 8C780084 */  lw    $t8, 0x84($v1)
/* 14F9DC 801A996C 3C0D8013 */  lui   $t5, %hi(gKirbyState) # $t5, 0x8013
/* 14F9E0 801A9970 8DC6000C */  lw    $a2, 0xc($t6)
/* 14F9E4 801A9974 8F2E0000 */  lw    $t6, ($t9)
/* 14F9E8 801A9978 25ADE7C0 */  addiu $t5, %lo(gKirbyState) # addiu $t5, $t5, -0x1840
/* 14F9EC 801A997C 8CC90004 */  lw    $t1, 4($a2)
/* 14F9F0 801A9980 8CCA0000 */  lw    $t2, ($a2)
/* 14F9F4 801A9984 8D27001C */  lw    $a3, 0x1c($t1)
/* 14F9F8 801A9988 8CEB0014 */  lw    $t3, 0x14($a3)
/* 14F9FC 801A998C 11C0001B */  beqz  $t6, .L801A99FC_ovl7
/* 14FA00 801A9990 AFB8001C */   sw    $t8, 0x1c($sp)
/* 14FA04 801A9994 3C0D8013 */  lui   $t5, %hi(gKirbyState) # $t5, 0x8013
/* 14FA08 801A9998 25ADE7C0 */  addiu $t5, %lo(gKirbyState) # addiu $t5, $t5, -0x1840
/* 14FA0C 801A999C 240FFFFE */  li    $t7, -2
/* 14FA10 801A99A0 A1AF000D */  sb    $t7, 0xd($t5)
/* 14FA14 801A99A4 8D020000 */  lw    $v0, ($t0)
/* 14FA18 801A99A8 24010012 */  li    $at, 18
/* 14FA1C 801A99AC 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 14FA20 801A99B0 00021080 */  sll   $v0, $v0, 2
/* 14FA24 801A99B4 0182C021 */  addu  $t8, $t4, $v0
/* 14FA28 801A99B8 8F190000 */  lw    $t9, ($t8)
/* 14FA2C 801A99BC 3C05801B */  lui   $a1, %hi(D_801AC448) # $a1, 0x801b
/* 14FA30 801A99C0 24A5C448 */  addiu $a1, %lo(D_801AC448) # addiu $a1, $a1, -0x3bb8
/* 14FA34 801A99C4 17210009 */  bne   $t9, $at, .L801A99EC_ovl7
/* 14FA38 801A99C8 00822021 */   addu  $a0, $a0, $v0
/* 14FA3C 801A99CC 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 14FA40 801A99D0 00822021 */  addu  $a0, $a0, $v0
/* 14FA44 801A99D4 3C05801B */  lui   $a1, %hi(D_801AC33C) # $a1, 0x801b
/* 14FA48 801A99D8 24A5C33C */  addiu $a1, %lo(D_801AC33C) # addiu $a1, $a1, -0x3cc4
/* 14FA4C 801A99DC 0C02C7B2 */  jal   assign_new_process_entry
/* 14FA50 801A99E0 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 14FA54 801A99E4 10000174 */  b     .L801A9FB8_ovl7
/* 14FA58 801A99E8 8FBF0014 */   lw    $ra, 0x14($sp)
.L801A99EC_ovl7:
/* 14FA5C 801A99EC 0C02C7B2 */  jal   assign_new_process_entry
/* 14FA60 801A99F0 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 14FA64 801A99F4 10000170 */  b     .L801A9FB8_ovl7
/* 14FA68 801A99F8 8FBF0014 */   lw    $ra, 0x14($sp)
.L801A99FC_ovl7:
/* 14FA6C 801A99FC 81A4000D */  lb    $a0, 0xd($t5)
/* 14FA70 801A9A00 248E0003 */  addiu $t6, $a0, 3
/* 14FA74 801A9A04 2DC1000C */  sltiu $at, $t6, 0xc
/* 14FA78 801A9A08 10200052 */  beqz  $at, .L801A9B54_ovl7
/* 14FA7C 801A9A0C 000E7080 */   sll   $t6, $t6, 2
/* 14FA80 801A9A10 3C01801D */ lui $at, %hi(D_801CE0E4)
/* 14FA84 801A9A14 002E0821 */  addu  $at, $at, $t6
/* 14FA88 801A9A18 8C2EE0E4 */ lw $t6, %lo(D_801CE0E4)($at)
/* 14FA8C 801A9A1C 01C00008 */  jr    $t6
/* 14FA90 801A9A20 00000000 */   nop   
glabel L801A9A24_ovl7
/* 14FA94 801A9A24 C5240010 */  lwc1  $f4, 0x10($t1)
/* 14FA98 801A9A28 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 14FA9C 801A9A2C 00220821 */  addu  $at, $at, $v0
/* 14FAA0 801A9A30 1000005B */  b     .L801A9BA0_ovl7
/* 14FAA4 801A9A34 E424A6E0 */ swc1 $f4, %lo(D_800EA6E0)($at)
glabel L801A9A38_ovl7
/* 14FAA8 801A9A38 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 14FAAC 801A9A3C 00822021 */  addu  $a0, $a0, $v0
/* 14FAB0 801A9A40 3C05801B */  lui   $a1, %hi(D_801AA1D4) # $a1, 0x801b
/* 14FAB4 801A9A44 24A5A1D4 */  addiu $a1, %lo(D_801AA1D4) # addiu $a1, $a1, -0x5e2c
/* 14FAB8 801A9A48 0C02C7B2 */  jal   assign_new_process_entry
/* 14FABC 801A9A4C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 14FAC0 801A9A50 10000159 */  b     .L801A9FB8_ovl7
/* 14FAC4 801A9A54 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L801A9A58_ovl7
/* 14FAC8 801A9A58 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 14FACC 801A9A5C 00220821 */  addu  $at, $at, $v0
/* 14FAD0 801A9A60 C4284550 */ lwc1 $f8, %lo(gEntitiesScaleXArray)($at)
/* 14FAD4 801A9A64 C5260010 */  lwc1  $f6, 0x10($t1)
/* 14FAD8 801A9A68 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 14FADC 801A9A6C 46083032 */  c.eq.s $f6, $f8
/* 14FAE0 801A9A70 00000000 */  nop   
/* 14FAE4 801A9A74 4502004B */  bc1fl .L801A9BA4_ovl7
/* 14FAE8 801A9A78 240C0002 */   li    $t4, 2
/* 14FAEC 801A9A7C C54A0010 */  lwc1  $f10, 0x10($t2)
/* 14FAF0 801A9A80 00220821 */  addu  $at, $at, $v0
/* 14FAF4 801A9A84 10000046 */  b     .L801A9BA0_ovl7
/* 14FAF8 801A9A88 E42AA6E0 */ swc1 $f10, %lo(D_800EA6E0)($at)
glabel L801A9A8C_ovl7
/* 14FAFC 801A9A8C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 14FB00 801A9A90 00822021 */  addu  $a0, $a0, $v0
/* 14FB04 801A9A94 3C05801B */  lui   $a1, %hi(func_801A8CDC) # $a1, 0x801b
/* 14FB08 801A9A98 24A58CDC */  addiu $a1, %lo(func_801A8CDC) # addiu $a1, $a1, -0x7324
/* 14FB0C 801A9A9C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 14FB10 801A9AA0 0C02C7B2 */  jal   assign_new_process_entry
/* 14FB14 801A9AA4 AFA60030 */   sw    $a2, 0x30($sp)
/* 14FB18 801A9AA8 8FA60030 */  lw    $a2, 0x30($sp)
/* 14FB1C 801A9AAC 3C0D8013 */  lui   $t5, %hi(gKirbyState) # $t5, 0x8013
/* 14FB20 801A9AB0 25ADE7C0 */  addiu $t5, %lo(gKirbyState) # addiu $t5, $t5, -0x1840
/* 14FB24 801A9AB4 8CCF0000 */  lw    $t7, ($a2)
/* 14FB28 801A9AB8 8DF8001C */  lw    $t8, 0x1c($t7)
/* 14FB2C 801A9ABC 8F190004 */  lw    $t9, 4($t8)
/* 14FB30 801A9AC0 1000013C */  b     .L801A9FB4_ovl7
/* 14FB34 801A9AC4 ADB90094 */   sw    $t9, 0x94($t5)
glabel L801A9AC8_ovl7
/* 14FB38 801A9AC8 AFA90028 */  sw    $t1, 0x28($sp)
/* 14FB3C 801A9ACC AFAA002C */  sw    $t2, 0x2c($sp)
/* 14FB40 801A9AD0 0C06A864 */  jal   func_801AA190_ovl7
/* 14FB44 801A9AD4 AFAB0020 */   sw    $t3, 0x20($sp)
/* 14FB48 801A9AD8 3C0D8013 */  lui   $t5, %hi(gKirbyState) # $t5, 0x8013
/* 14FB4C 801A9ADC 25ADE7C0 */  addiu $t5, %lo(gKirbyState) # addiu $t5, $t5, -0x1840
/* 14FB50 801A9AE0 8FA90028 */  lw    $t1, 0x28($sp)
/* 14FB54 801A9AE4 8FAA002C */  lw    $t2, 0x2c($sp)
/* 14FB58 801A9AE8 14400132 */  bnez  $v0, .L801A9FB4_ovl7
/* 14FB5C 801A9AEC 8FAB0020 */   lw    $t3, 0x20($sp)
/* 14FB60 801A9AF0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 14FB64 801A9AF4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 14FB68 801A9AF8 10000029 */  b     .L801A9BA0_ovl7
/* 14FB6C 801A9AFC 81A4000D */   lb    $a0, 0xd($t5)
glabel L801A9B00_ovl7
/* 14FB70 801A9B00 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 14FB74 801A9B04 00822021 */  addu  $a0, $a0, $v0
/* 14FB78 801A9B08 3C05801B */  lui   $a1, %hi(D_801AC448) # $a1, 0x801b
/* 14FB7C 801A9B0C 24A5C448 */  addiu $a1, %lo(D_801AC448) # addiu $a1, $a1, -0x3bb8
/* 14FB80 801A9B10 0C02C7B2 */  jal   assign_new_process_entry
/* 14FB84 801A9B14 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 14FB88 801A9B18 10000127 */  b     .L801A9FB8_ovl7
/* 14FB8C 801A9B1C 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L801A9B20_ovl7
/* 14FB90 801A9B20 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 14FB94 801A9B24 00220821 */  addu  $at, $at, $v0
/* 14FB98 801A9B28 C4324550 */ lwc1 $f18, %lo(gEntitiesScaleXArray)($at)
/* 14FB9C 801A9B2C C5500010 */  lwc1  $f16, 0x10($t2)
/* 14FBA0 801A9B30 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 14FBA4 801A9B34 46128032 */  c.eq.s $f16, $f18
/* 14FBA8 801A9B38 00000000 */  nop   
/* 14FBAC 801A9B3C 45020019 */  bc1fl .L801A9BA4_ovl7
/* 14FBB0 801A9B40 240C0002 */   li    $t4, 2
/* 14FBB4 801A9B44 C5240010 */  lwc1  $f4, 0x10($t1)
/* 14FBB8 801A9B48 00220821 */  addu  $at, $at, $v0
/* 14FBBC 801A9B4C 10000014 */  b     .L801A9BA0_ovl7
/* 14FBC0 801A9B50 E424A6E0 */ swc1 $f4, %lo(D_800EA6E0)($at)
glabel L801A9B54_ovl7
.L801A9B54_ovl7:
/* 14FBC4 801A9B54 C5200010 */  lwc1  $f0, 0x10($t1)
/* 14FBC8 801A9B58 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 14FBCC 801A9B5C 00220821 */  addu  $at, $at, $v0
/* 14FBD0 801A9B60 E420A6E0 */ swc1 $f0, %lo(D_800EA6E0)($at)
/* 14FBD4 801A9B64 8D0E0000 */  lw    $t6, ($t0)
/* 14FBD8 801A9B68 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 14FBDC 801A9B6C 000E7880 */  sll   $t7, $t6, 2
/* 14FBE0 801A9B70 002F0821 */  addu  $at, $at, $t7
/* 14FBE4 801A9B74 E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 14FBE8 801A9B78 8D180000 */  lw    $t8, ($t0)
/* 14FBEC 801A9B7C 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 14FBF0 801A9B80 0018C880 */  sll   $t9, $t8, 2
/* 14FBF4 801A9B84 00390821 */  addu  $at, $at, $t9
/* 14FBF8 801A9B88 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 14FBFC 801A9B8C 8D0E0000 */  lw    $t6, ($t0)
/* 14FC00 801A9B90 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 14FC04 801A9B94 000E7880 */  sll   $t7, $t6, 2
/* 14FC08 801A9B98 002F0821 */  addu  $at, $at, $t7
/* 14FC0C 801A9B9C E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
.L801A9BA0_ovl7:
/* 14FC10 801A9BA0 240C0002 */  li    $t4, 2
.L801A9BA4_ovl7:
/* 14FC14 801A9BA4 1584001F */  bne   $t4, $a0, .L801A9C24_ovl7
/* 14FC18 801A9BA8 3C03801D */   lui   $v1, %hi(D_801D0AA4) # $v1, 0x801d
/* 14FC1C 801A9BAC 24630AA4 */  addiu $v1, %lo(D_801D0AA4) # addiu $v1, $v1, 0xaa4
/* 14FC20 801A9BB0 8C620000 */  lw    $v0, ($v1)
/* 14FC24 801A9BB4 2401FFFF */  li    $at, -1
/* 14FC28 801A9BB8 1041001A */  beq   $v0, $at, .L801A9C24_ovl7
/* 14FC2C 801A9BBC 2458FFFF */   addiu $t8, $v0, -1
/* 14FC30 801A9BC0 1F000018 */  bgtz  $t8, .L801A9C24_ovl7
/* 14FC34 801A9BC4 AC780000 */   sw    $t8, ($v1)
/* 14FC38 801A9BC8 240EFFFE */  li    $t6, -2
/* 14FC3C 801A9BCC A1AE000D */  sb    $t6, 0xd($t5)
/* 14FC40 801A9BD0 8D650044 */  lw    $a1, 0x44($t3)
/* 14FC44 801A9BD4 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 14FC48 801A9BD8 54A0000B */  bnezl $a1, .L801A9C08_ovl7
/* 14FC4C 801A9BDC 8D190000 */   lw    $t9, ($t0)
/* 14FC50 801A9BE0 8D0F0000 */  lw    $t7, ($t0)
/* 14FC54 801A9BE4 3C05801B */  lui   $a1, %hi(D_801AC448) # $a1, 0x801b
/* 14FC58 801A9BE8 24A5C448 */  addiu $a1, %lo(D_801AC448) # addiu $a1, $a1, -0x3bb8
/* 14FC5C 801A9BEC 000FC080 */  sll   $t8, $t7, 2
/* 14FC60 801A9BF0 00982021 */  addu  $a0, $a0, $t8
/* 14FC64 801A9BF4 0C02C7B2 */  jal   assign_new_process_entry
/* 14FC68 801A9BF8 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 14FC6C 801A9BFC 100000EE */  b     .L801A9FB8_ovl7
/* 14FC70 801A9C00 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14FC74 801A9C04 8D190000 */  lw    $t9, ($t0)
.L801A9C08_ovl7:
/* 14FC78 801A9C08 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 14FC7C 801A9C0C 00197080 */  sll   $t6, $t9, 2
/* 14FC80 801A9C10 008E2021 */  addu  $a0, $a0, $t6
/* 14FC84 801A9C14 0C02C7B2 */  jal   assign_new_process_entry
/* 14FC88 801A9C18 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 14FC8C 801A9C1C 100000E6 */  b     .L801A9FB8_ovl7
/* 14FC90 801A9C20 8FBF0014 */   lw    $ra, 0x14($sp)
.L801A9C24_ovl7:
/* 14FC94 801A9C24 8D020000 */  lw    $v0, ($t0)
/* 14FC98 801A9C28 3C05800E */  lui   $a1, %hi(D_800E0D50) # $a1, 0x800e
/* 14FC9C 801A9C2C 24A50D50 */  addiu $a1, %lo(D_800E0D50) # addiu $a1, $a1, 0xd50
/* 14FCA0 801A9C30 00021080 */  sll   $v0, $v0, 2
/* 14FCA4 801A9C34 00A27821 */  addu  $t7, $a1, $v0
/* 14FCA8 801A9C38 8DF80000 */  lw    $t8, ($t7)
/* 14FCAC 801A9C3C 3C03800E */  lui   $v1, %hi(gEntitiesAngleYArray) # $v1, 0x800e
/* 14FCB0 801A9C40 246341D0 */  addiu $v1, %lo(gEntitiesAngleYArray) # addiu $v1, $v1, 0x41d0
/* 14FCB4 801A9C44 0018C880 */  sll   $t9, $t8, 2
/* 14FCB8 801A9C48 00797021 */  addu  $t6, $v1, $t9
/* 14FCBC 801A9C4C C5C60000 */  lwc1  $f6, ($t6)
/* 14FCC0 801A9C50 00627821 */  addu  $t7, $v1, $v0
/* 14FCC4 801A9C54 3C06800E */  lui   $a2, %hi(D_800E5F90) # $a2, 0x800e
/* 14FCC8 801A9C58 E5E60000 */  swc1  $f6, ($t7)
/* 14FCCC 801A9C5C 8D020000 */  lw    $v0, ($t0)
/* 14FCD0 801A9C60 24C65F90 */  addiu $a2, %lo(D_800E5F90) # addiu $a2, $a2, 0x5f90
/* 14FCD4 801A9C64 3C07800E */  lui   $a3, %hi(D_800E6BD0) # $a3, 0x800e
/* 14FCD8 801A9C68 00021080 */  sll   $v0, $v0, 2
/* 14FCDC 801A9C6C 00A2C021 */  addu  $t8, $a1, $v0
/* 14FCE0 801A9C70 8F190000 */  lw    $t9, ($t8)
/* 14FCE4 801A9C74 24E76BD0 */  addiu $a3, %lo(D_800E6BD0) # addiu $a3, $a3, 0x6bd0
/* 14FCE8 801A9C78 24010003 */  li    $at, 3
/* 14FCEC 801A9C7C 00197080 */  sll   $t6, $t9, 2
/* 14FCF0 801A9C80 00CE7821 */  addu  $t7, $a2, $t6
/* 14FCF4 801A9C84 8DF80000 */  lw    $t8, ($t7)
/* 14FCF8 801A9C88 00C2C821 */  addu  $t9, $a2, $v0
/* 14FCFC 801A9C8C AF380000 */  sw    $t8, ($t9)
/* 14FD00 801A9C90 8D020000 */  lw    $v0, ($t0)
/* 14FD04 801A9C94 00021080 */  sll   $v0, $v0, 2
/* 14FD08 801A9C98 00A27021 */  addu  $t6, $a1, $v0
/* 14FD0C 801A9C9C 8DCF0000 */  lw    $t7, ($t6)
/* 14FD10 801A9CA0 00E27021 */  addu  $t6, $a3, $v0
/* 14FD14 801A9CA4 000FC080 */  sll   $t8, $t7, 2
/* 14FD18 801A9CA8 00F8C821 */  addu  $t9, $a3, $t8
/* 14FD1C 801A9CAC C7280000 */  lwc1  $f8, ($t9)
/* 14FD20 801A9CB0 3C18800E */  lui   $t8, %hi(gEntitiesScaleXArray) # $t8, 0x800e
/* 14FD24 801A9CB4 14810019 */  bne   $a0, $at, .L801A9D1C_ovl7
/* 14FD28 801A9CB8 E5C80000 */   swc1  $f8, ($t6)
/* 14FD2C 801A9CBC 8D020000 */  lw    $v0, ($t0)
/* 14FD30 801A9CC0 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 14FD34 801A9CC4 3C0F800E */  lui   $t7, %hi(gEntitiesScaleXArray) # $t7, 0x800e
/* 14FD38 801A9CC8 00021080 */  sll   $v0, $v0, 2
/* 14FD3C 801A9CCC 00220821 */  addu  $at, $at, $v0
/* 14FD40 801A9CD0 C42AA6E0 */ lwc1 $f10, %lo(D_800EA6E0)($at)
/* 14FD44 801A9CD4 3C01801D */  lui   $at, %hi(D_801CE114) # $at, 0x801d
/* 14FD48 801A9CD8 C430E114 */  lwc1  $f16, %lo(D_801CE114)($at)
/* 14FD4C 801A9CDC 25EF4550 */  addiu $t7, %lo(gEntitiesScaleXArray) # addiu $t7, $t7, 0x4550
/* 14FD50 801A9CE0 004F1821 */  addu  $v1, $v0, $t7
/* 14FD54 801A9CE4 46105481 */  sub.s $f18, $f10, $f16
/* 14FD58 801A9CE8 C4620000 */  lwc1  $f2, ($v1)
/* 14FD5C 801A9CEC 4602903C */  c.lt.s $f18, $f2
/* 14FD60 801A9CF0 00000000 */  nop   
/* 14FD64 801A9CF4 4502000A */  bc1fl .L801A9D20_ovl7
/* 14FD68 801A9CF8 8D020000 */   lw    $v0, ($t0)
/* 14FD6C 801A9CFC C5240010 */  lwc1  $f4, 0x10($t1)
/* 14FD70 801A9D00 C5460010 */  lwc1  $f6, 0x10($t2)
/* 14FD74 801A9D04 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 14FD78 801A9D08 44815000 */  mtc1  $at, $f10
/* 14FD7C 801A9D0C 46062201 */  sub.s $f8, $f4, $f6
/* 14FD80 801A9D10 460A4403 */  div.s $f16, $f8, $f10
/* 14FD84 801A9D14 46101481 */  sub.s $f18, $f2, $f16
/* 14FD88 801A9D18 E4720000 */  swc1  $f18, ($v1)
.L801A9D1C_ovl7:
/* 14FD8C 801A9D1C 8D020000 */  lw    $v0, ($t0)
.L801A9D20_ovl7:
/* 14FD90 801A9D20 27184550 */  addiu $t8, %lo(gEntitiesScaleXArray) # addiu $t8, $t8, 0x4550
/* 14FD94 801A9D24 24010001 */  li    $at, 1
/* 14FD98 801A9D28 00021080 */  sll   $v0, $v0, 2
/* 14FD9C 801A9D2C 00581821 */  addu  $v1, $v0, $t8
/* 14FDA0 801A9D30 14810018 */  bne   $a0, $at, .L801A9D94_ovl7
/* 14FDA4 801A9D34 C4620000 */   lwc1  $f2, ($v1)
/* 14FDA8 801A9D38 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 14FDAC 801A9D3C 00220821 */  addu  $at, $at, $v0
/* 14FDB0 801A9D40 C424A6E0 */ lwc1 $f4, %lo(D_800EA6E0)($at)
/* 14FDB4 801A9D44 3C01801D */  lui   $at, %hi(D_801CE118) # $at, 0x801d
/* 14FDB8 801A9D48 C426E118 */  lwc1  $f6, %lo(D_801CE118)($at)
/* 14FDBC 801A9D4C 46062200 */  add.s $f8, $f4, $f6
/* 14FDC0 801A9D50 4608103C */  c.lt.s $f2, $f8
/* 14FDC4 801A9D54 00000000 */  nop   
/* 14FDC8 801A9D58 4500000E */  bc1f  .L801A9D94_ovl7
/* 14FDCC 801A9D5C 00000000 */   nop   
/* 14FDD0 801A9D60 C52A0010 */  lwc1  $f10, 0x10($t1)
/* 14FDD4 801A9D64 C5500010 */  lwc1  $f16, 0x10($t2)
/* 14FDD8 801A9D68 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 14FDDC 801A9D6C 44812000 */  mtc1  $at, $f4
/* 14FDE0 801A9D70 46105481 */  sub.s $f18, $f10, $f16
/* 14FDE4 801A9D74 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 14FDE8 801A9D78 46049183 */  div.s $f6, $f18, $f4
/* 14FDEC 801A9D7C 46061200 */  add.s $f8, $f2, $f6
/* 14FDF0 801A9D80 E4680000 */  swc1  $f8, ($v1)
/* 14FDF4 801A9D84 8D020000 */  lw    $v0, ($t0)
/* 14FDF8 801A9D88 00021080 */  sll   $v0, $v0, 2
/* 14FDFC 801A9D8C 00220821 */  addu  $at, $at, $v0
/* 14FE00 801A9D90 C4224550 */ lwc1 $f2, %lo(gEntitiesScaleXArray)($at)
.L801A9D94_ovl7:
/* 14FE04 801A9D94 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 14FE08 801A9D98 00220821 */  addu  $at, $at, $v0
/* 14FE0C 801A9D9C E42248D0 */ swc1 $f2, %lo(gEntitiesScaleZArray)($at)
/* 14FE10 801A9DA0 8D190000 */  lw    $t9, ($t0)
/* 14FE14 801A9DA4 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 14FE18 801A9DA8 00197080 */  sll   $t6, $t9, 2
/* 14FE1C 801A9DAC 002E0821 */  addu  $at, $at, $t6
/* 14FE20 801A9DB0 1160000E */  beqz  $t3, .L801A9DEC_ovl7
/* 14FE24 801A9DB4 E4224710 */ swc1 $f2, %lo(gEntitiesScaleYArray)($at)
/* 14FE28 801A9DB8 8D62003C */  lw    $v0, 0x3c($t3)
/* 14FE2C 801A9DBC 5040000C */  beql  $v0, $zero, .L801A9DF0_ovl7
/* 14FE30 801A9DC0 8D020000 */   lw    $v0, ($t0)
/* 14FE34 801A9DC4 0040F809 */  jalr  $v0
/* 14FE38 801A9DC8 8FA40038 */  lw    $a0, 0x38($sp)
/* 14FE3C 801A9DCC 3C0D8013 */  lui   $t5, %hi(gKirbyState) # $t5, 0x8013
/* 14FE40 801A9DD0 25ADE7C0 */  addiu $t5, %lo(gKirbyState) # addiu $t5, $t5, -0x1840
/* 14FE44 801A9DD4 3C05800E */  lui   $a1, %hi(D_800E0D50) # $a1, 0x800e
/* 14FE48 801A9DD8 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 14FE4C 801A9DDC 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 14FE50 801A9DE0 24A50D50 */  addiu $a1, %lo(D_800E0D50) # addiu $a1, $a1, 0xd50
/* 14FE54 801A9DE4 81A4000D */  lb    $a0, 0xd($t5)
/* 14FE58 801A9DE8 240C0002 */  li    $t4, 2
.L801A9DEC_ovl7:
/* 14FE5C 801A9DEC 8D020000 */  lw    $v0, ($t0)
.L801A9DF0_ovl7:
/* 14FE60 801A9DF0 3C03800E */  lui   $v1, %hi(D_800E6A10) # $v1, 0x800e
/* 14FE64 801A9DF4 24636A10 */  addiu $v1, %lo(D_800E6A10) # addiu $v1, $v1, 0x6a10
/* 14FE68 801A9DF8 00021080 */  sll   $v0, $v0, 2
/* 14FE6C 801A9DFC 00A27821 */  addu  $t7, $a1, $v0
/* 14FE70 801A9E00 8DF80000 */  lw    $t8, ($t7)
/* 14FE74 801A9E04 00627821 */  addu  $t7, $v1, $v0
/* 14FE78 801A9E08 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 14FE7C 801A9E0C 0018C880 */  sll   $t9, $t8, 2
/* 14FE80 801A9E10 00797021 */  addu  $t6, $v1, $t9
/* 14FE84 801A9E14 C5CA0000 */  lwc1  $f10, ($t6)
/* 14FE88 801A9E18 44818000 */  mtc1  $at, $f16
/* 14FE8C 801A9E1C E5EA0000 */  swc1  $f10, ($t7)
/* 14FE90 801A9E20 8D020000 */  lw    $v0, ($t0)
/* 14FE94 801A9E24 00021080 */  sll   $v0, $v0, 2
/* 14FE98 801A9E28 0062C021 */  addu  $t8, $v1, $v0
/* 14FE9C 801A9E2C C7120000 */  lwc1  $f18, ($t8)
/* 14FEA0 801A9E30 3C03800E */  lui   $v1, %hi(D_800E17D0) # $v1, 0x800e
/* 14FEA4 801A9E34 246317D0 */  addiu $v1, %lo(D_800E17D0) # addiu $v1, $v1, 0x17d0
/* 14FEA8 801A9E38 46128032 */  c.eq.s $f16, $f18
/* 14FEAC 801A9E3C 00A2C821 */  addu  $t9, $a1, $v0
/* 14FEB0 801A9E40 00A27021 */  addu  $t6, $a1, $v0
/* 14FEB4 801A9E44 4502000B */  bc1fl .L801A9E74_ovl7
/* 14FEB8 801A9E48 8DCF0000 */   lw    $t7, ($t6)
/* 14FEBC 801A9E4C 8F2E0000 */  lw    $t6, ($t9)
/* 14FEC0 801A9E50 3C03800E */  lui   $v1, %hi(D_800E17D0) # $v1, 0x800e
/* 14FEC4 801A9E54 246317D0 */  addiu $v1, %lo(D_800E17D0) # addiu $v1, $v1, 0x17d0
/* 14FEC8 801A9E58 000E7880 */  sll   $t7, $t6, 2
/* 14FECC 801A9E5C 006FC021 */  addu  $t8, $v1, $t7
/* 14FED0 801A9E60 C7040000 */  lwc1  $f4, ($t8)
/* 14FED4 801A9E64 0062C821 */  addu  $t9, $v1, $v0
/* 14FED8 801A9E68 1000000A */  b     .L801A9E94_ovl7
/* 14FEDC 801A9E6C E7240000 */   swc1  $f4, ($t9)
/* 14FEE0 801A9E70 8DCF0000 */  lw    $t7, ($t6)
.L801A9E74_ovl7:
/* 14FEE4 801A9E74 3C01801D */  lui   $at, %hi(D_801CE11C) # $at, 0x801d
/* 14FEE8 801A9E78 C428E11C */  lwc1  $f8, %lo(D_801CE11C)($at)
/* 14FEEC 801A9E7C 000FC080 */  sll   $t8, $t7, 2
/* 14FEF0 801A9E80 0078C821 */  addu  $t9, $v1, $t8
/* 14FEF4 801A9E84 C7260000 */  lwc1  $f6, ($t9)
/* 14FEF8 801A9E88 00627021 */  addu  $t6, $v1, $v0
/* 14FEFC 801A9E8C 46083280 */  add.s $f10, $f6, $f8
/* 14FF00 801A9E90 E5CA0000 */  swc1  $f10, ($t6)
.L801A9E94_ovl7:
/* 14FF04 801A9E94 5584002B */  bnel  $t4, $a0, .L801A9F44_ovl7
/* 14FF08 801A9E98 8FB9001C */   lw    $t9, 0x1c($sp)
/* 14FF0C 801A9E9C 91AF0005 */  lbu   $t7, 5($t5)
/* 14FF10 801A9EA0 2401001D */  li    $at, 29
/* 14FF14 801A9EA4 55E10006 */  bnel  $t7, $at, .L801A9EC0_ovl7
/* 14FF18 801A9EA8 91B9000B */   lbu   $t9, 0xb($t5)
/* 14FF1C 801A9EAC 91B8000B */  lbu   $t8, 0xb($t5)
/* 14FF20 801A9EB0 24010001 */  li    $at, 1
/* 14FF24 801A9EB4 53010023 */  beql  $t8, $at, .L801A9F44_ovl7
/* 14FF28 801A9EB8 8FB9001C */   lw    $t9, 0x1c($sp)
/* 14FF2C 801A9EBC 91B9000B */  lbu   $t9, 0xb($t5)
.L801A9EC0_ovl7:
/* 14FF30 801A9EC0 51990020 */  beql  $t4, $t9, .L801A9F44_ovl7
/* 14FF34 801A9EC4 8FB9001C */   lw    $t9, 0x1c($sp)
/* 14FF38 801A9EC8 0C06835D */  jal   func_801A0D74_ovl7
/* 14FF3C 801A9ECC 8FA40038 */   lw    $a0, 0x38($sp)
/* 14FF40 801A9ED0 10400006 */  beqz  $v0, .L801A9EEC_ovl7
/* 14FF44 801A9ED4 3C04801D */   lui   $a0, %hi(D_801CAFCC) # $a0, 0x801d
/* 14FF48 801A9ED8 0C068E4E */  jal   func_801A3938_ovl7
/* 14FF4C 801A9EDC 2484AFCC */   addiu $a0, %lo(D_801CAFCC) # addiu $a0, $a0, -0x5034
/* 14FF50 801A9EE0 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 14FF54 801A9EE4 0C068DB3 */  jal   func_801A36CC_ovl7
/* 14FF58 801A9EE8 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
.L801A9EEC_ovl7:
/* 14FF5C 801A9EEC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 14FF60 801A9EF0 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 14FF64 801A9EF4 3C0F800F */  lui   $t7, %hi(D_800E8920) # $t7, 0x800f
/* 14FF68 801A9EF8 25EF8920 */  addiu $t7, %lo(D_800E8920) # addiu $t7, $t7, -0x76e0
/* 14FF6C 801A9EFC 8D020000 */  lw    $v0, ($t0)
/* 14FF70 801A9F00 24010001 */  li    $at, 1
/* 14FF74 801A9F04 3C04801D */  lui   $a0, %hi(D_801D0A78) # $a0, 0x801d
/* 14FF78 801A9F08 00027080 */  sll   $t6, $v0, 2
/* 14FF7C 801A9F0C 01CF1821 */  addu  $v1, $t6, $t7
/* 14FF80 801A9F10 8C780000 */  lw    $t8, ($v1)
/* 14FF84 801A9F14 24840A78 */  addiu $a0, %lo(D_801D0A78) # addiu $a0, $a0, 0xa78
/* 14FF88 801A9F18 17010003 */  bne   $t8, $at, .L801A9F28_ovl7
/* 14FF8C 801A9F1C 00000000 */   nop   
/* 14FF90 801A9F20 AC600000 */  sw    $zero, ($v1)
/* 14FF94 801A9F24 8D020000 */  lw    $v0, ($t0)
.L801A9F28_ovl7:
/* 14FF98 801A9F28 0C0445EF */  jal   func_801117BC
/* 14FF9C 801A9F2C 00402825 */   move  $a1, $v0
/* 14FFA0 801A9F30 0C044713 */  jal   func_80111C4C
/* 14FFA4 801A9F34 00402025 */   move  $a0, $v0
/* 14FFA8 801A9F38 1000001F */  b     .L801A9FB8_ovl7
/* 14FFAC 801A9F3C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14FFB0 801A9F40 8FB9001C */  lw    $t9, 0x1c($sp)
.L801A9F44_ovl7:
/* 14FFB4 801A9F44 5320001C */  beql  $t9, $zero, .L801A9FB8_ovl7
/* 14FFB8 801A9F48 8FBF0014 */   lw    $ra, 0x14($sp)
/* 14FFBC 801A9F4C 8D0E0000 */  lw    $t6, ($t0)
/* 14FFC0 801A9F50 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 14FFC4 801A9F54 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 14FFC8 801A9F58 000E7880 */  sll   $t7, $t6, 2
/* 14FFCC 801A9F5C 002F0821 */  addu  $at, $at, $t7
/* 14FFD0 801A9F60 C43025D0 */ lwc1 $f16, %lo(gEntitiesNextPosXArray)($at)
/* 14FFD4 801A9F64 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 14FFD8 801A9F68 E7300004 */  swc1  $f16, 4($t9)
/* 14FFDC 801A9F6C 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 14FFE0 801A9F70 8FB9001C */  lw    $t9, 0x1c($sp)
/* 14FFE4 801A9F74 8F0E0000 */  lw    $t6, ($t8)
/* 14FFE8 801A9F78 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 14FFEC 801A9F7C 000E7880 */  sll   $t7, $t6, 2
/* 14FFF0 801A9F80 002F0821 */  addu  $at, $at, $t7
/* 14FFF4 801A9F84 C4322790 */ lwc1 $f18, %lo(gEntitiesNextPosYArray)($at)
/* 14FFF8 801A9F88 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 14FFFC 801A9F8C E7320008 */  swc1  $f18, 8($t9)
/* 150000 801A9F90 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 150004 801A9F94 8FB9001C */  lw    $t9, 0x1c($sp)
/* 150008 801A9F98 8F0E0000 */  lw    $t6, ($t8)
/* 15000C 801A9F9C 000E7880 */  sll   $t7, $t6, 2
/* 150010 801A9FA0 002F0821 */  addu  $at, $at, $t7
/* 150014 801A9FA4 C4242950 */ lwc1 $f4, %lo(gEntitiesNextPosZArray)($at)
/* 150018 801A9FA8 E724000C */  swc1  $f4, 0xc($t9)
/* 15001C 801A9FAC 0C04146B */  jal   func_801051AC
/* 150020 801A9FB0 8FA4001C */   lw    $a0, 0x1c($sp)
.L801A9FB4_ovl7:
/* 150024 801A9FB4 8FBF0014 */  lw    $ra, 0x14($sp)
.L801A9FB8_ovl7:
/* 150028 801A9FB8 27BD0038 */  addiu $sp, $sp, 0x38
/* 15002C 801A9FBC 03E00008 */  jr    $ra
/* 150030 801A9FC0 00000000 */   nop   
.type func_801A9930_ovl7, @function
.size func_801A9930_ovl7, . - func_801A9930_ovl7
