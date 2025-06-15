glabel func_801AA914_ovl7
/* 150984 801AA914 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 150988 801AA918 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15098C 801AA91C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 150990 801AA920 AFBF001C */  sw    $ra, 0x1c($sp)
/* 150994 801AA924 AFB00018 */  sw    $s0, 0x18($sp)
/* 150998 801AA928 AFA40028 */  sw    $a0, 0x28($sp)
/* 15099C 801AA92C 8DC50000 */  lw    $a1, ($t6)
/* 1509A0 801AA930 3C03800E */ lui $v1, %hi(D_800E1B50)
/* 1509A4 801AA934 00002025 */  move  $a0, $zero
/* 1509A8 801AA938 00057880 */  sll   $t7, $a1, 2
/* 1509AC 801AA93C 006F1821 */  addu  $v1, $v1, $t7
/* 1509B0 801AA940 8C631B50 */ lw $v1, %lo(D_800E1B50)($v1)
/* 1509B4 801AA944 8C780088 */  lw    $t8, 0x88($v1)
/* 1509B8 801AA948 8F06000C */  lw    $a2, 0xc($t8)
/* 1509BC 801AA94C 8CD00000 */  lw    $s0, ($a2)
/* 1509C0 801AA950 0C02C67D */  jal   func_800B19F4
/* 1509C4 801AA954 AFA30024 */   sw    $v1, 0x24($sp)
/* 1509C8 801AA958 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 1509CC 801AA95C 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 1509D0 801AA960 44800000 */  mtc1  $zero, $f0
/* 1509D4 801AA964 3C01800F */ lui $at, %hi(D_800EC660)
/* 1509D8 801AA968 8CB90000 */  lw    $t9, ($a1)
/* 1509DC 801AA96C 8FA40028 */  lw    $a0, 0x28($sp)
/* 1509E0 801AA970 00194080 */  sll   $t0, $t9, 2
/* 1509E4 801AA974 00280821 */  addu  $at, $at, $t0
/* 1509E8 801AA978 E420C660 */ swc1 $f0, %lo(D_800EC660)($at)
/* 1509EC 801AA97C 8CA90000 */  lw    $t1, ($a1)
/* 1509F0 801AA980 3C01800F */ lui $at, %hi(D_800EC820)
/* 1509F4 801AA984 00095080 */  sll   $t2, $t1, 2
/* 1509F8 801AA988 002A0821 */  addu  $at, $at, $t2
/* 1509FC 801AA98C 0C06AEE8 */  jal   func_801ABBA0_ovl7
/* 150A00 801AA990 E420C820 */ swc1 $f0, %lo(D_800EC820)($at)
/* 150A04 801AA994 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 150A08 801AA998 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 150A0C 801AA99C 8CCC0000 */  lw    $t4, ($a2)
/* 150A10 801AA9A0 8FA30024 */  lw    $v1, 0x24($sp)
/* 150A14 801AA9A4 3C0B801B */  lui   $t3, %hi(D_801AAAF8) # $t3, 0x801b
/* 150A18 801AA9A8 8D8D0000 */  lw    $t5, ($t4)
/* 150A1C 801AA9AC 3C01800E */ lui $at, %hi(D_800DF150)
/* 150A20 801AA9B0 256BAAF8 */  addiu $t3, %lo(D_801AAAF8) # addiu $t3, $t3, -0x5508
/* 150A24 801AA9B4 000D7080 */  sll   $t6, $t5, 2
/* 150A28 801AA9B8 002E0821 */  addu  $at, $at, $t6
/* 150A2C 801AA9BC AC2BF150 */ sw $t3, %lo(D_800DF150)($at)
/* 150A30 801AA9C0 3C0F801D */  lui   $t7, %hi(D_801CB500) # $t7, 0x801d
/* 150A34 801AA9C4 25EFB500 */  addiu $t7, %lo(D_801CB500) # addiu $t7, $t7, -0x4b00
/* 150A38 801AA9C8 AC600048 */  sw    $zero, 0x48($v1)
/* 150A3C 801AA9CC AC6F0098 */  sw    $t7, 0x98($v1)
/* 150A40 801AA9D0 8CC50000 */  lw    $a1, ($a2)
/* 150A44 801AA9D4 3C01800F */ lui $at, %hi(D_800E8920)
/* 150A48 801AA9D8 44803000 */  mtc1  $zero, $f6
/* 150A4C 801AA9DC 8CB80000 */  lw    $t8, ($a1)
/* 150A50 801AA9E0 3C0D800E */ lui $t5, %hi(D_800E7730)
/* 150A54 801AA9E4 3C03800E */ lui $v1, %hi(D_800E77A0)
/* 150A58 801AA9E8 0018C880 */  sll   $t9, $t8, 2
/* 150A5C 801AA9EC 00390821 */  addu  $at, $at, $t9
/* 150A60 801AA9F0 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 150A64 801AA9F4 8CA80000 */  lw    $t0, ($a1)
/* 150A68 801AA9F8 3C01801D */  lui   $at, %hi(D_801CE120) # $at, 0x801d
/* 150A6C 801AA9FC C424E120 */  lwc1  $f4, %lo(D_801CE120)($at)
/* 150A70 801AAA00 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 150A74 801AAA04 00084880 */  sll   $t1, $t0, 2
/* 150A78 801AAA08 00290821 */  addu  $at, $at, $t1
/* 150A7C 801AAA0C E424A6E0 */ swc1 $f4, %lo(D_800EA6E0)($at)
/* 150A80 801AAA10 8CAA0000 */  lw    $t2, ($a1)
/* 150A84 801AAA14 3C01800E */ lui $at, %hi(D_800E4C50)
/* 150A88 801AAA18 000A6080 */  sll   $t4, $t2, 2
/* 150A8C 801AAA1C 002C0821 */  addu  $at, $at, $t4
/* 150A90 801AAA20 E4264C50 */ swc1 $f6, %lo(D_800E4C50)($at)
/* 150A94 801AAA24 8CA20000 */  lw    $v0, ($a1)
/* 150A98 801AAA28 24010006 */  li    $at, 6
/* 150A9C 801AAA2C 01A26821 */  addu  $t5, $t5, $v0
/* 150AA0 801AAA30 91AD7730 */ lbu $t5, %lo(D_800E7730)($t5)
/* 150AA4 801AAA34 00025840 */  sll   $t3, $v0, 1
/* 150AA8 801AAA38 006B1821 */  addu  $v1, $v1, $t3
/* 150AAC 801AAA3C 15A1000B */  bne   $t5, $at, .L801AAA6C_ovl7
/* 150AB0 801AAA40 00000000 */   nop   
/* 150AB4 801AAA44 946377A0 */ lhu $v1, %lo(D_800E77A0)($v1)
/* 150AB8 801AAA48 28610008 */  slti  $at, $v1, 8
/* 150ABC 801AAA4C 14200007 */  bnez  $at, .L801AAA6C_ovl7
/* 150AC0 801AAA50 2861002C */   slti  $at, $v1, 0x2c
/* 150AC4 801AAA54 10200005 */  beqz  $at, .L801AAA6C_ovl7
/* 150AC8 801AAA58 00000000 */   nop   
/* 150ACC 801AAA5C 0C029D9E */  jal   play_sound
/* 150AD0 801AAA60 2404011B */   li    $a0, 283
/* 150AD4 801AAA64 10000003 */  b     .L801AAA74_ovl7
/* 150AD8 801AAA68 00000000 */   nop   
.L801AAA6C_ovl7:
/* 150ADC 801AAA6C 0C029D9E */  jal   play_sound
/* 150AE0 801AAA70 240400E1 */   li    $a0, 225
.L801AAA74_ovl7:
/* 150AE4 801AAA74 0C06B1B4 */  jal   func_801AC6D0_ovl7
/* 150AE8 801AAA78 02002025 */   move  $a0, $s0
/* 150AEC 801AAA7C 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 150AF0 801AAA80 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 150AF4 801AAA84 C6080010 */  lwc1  $f8, 0x10($s0)
/* 150AF8 801AAA88 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 150AFC 801AAA8C 8CAE0000 */  lw    $t6, ($a1)
/* 150B00 801AAA90 24040001 */  li    $a0, 1
/* 150B04 801AAA94 000E7880 */  sll   $t7, $t6, 2
/* 150B08 801AAA98 002F0821 */  addu  $at, $at, $t7
/* 150B0C 801AAA9C E4284550 */ swc1 $f8, %lo(gEntitiesScaleXArray)($at)
/* 150B10 801AAAA0 8CB80000 */  lw    $t8, ($a1)
/* 150B14 801AAAA4 C60A0010 */  lwc1  $f10, 0x10($s0)
/* 150B18 801AAAA8 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 150B1C 801AAAAC 0018C880 */  sll   $t9, $t8, 2
/* 150B20 801AAAB0 00390821 */  addu  $at, $at, $t9
/* 150B24 801AAAB4 E42A4710 */ swc1 $f10, %lo(gEntitiesScaleYArray)($at)
/* 150B28 801AAAB8 8CA80000 */  lw    $t0, ($a1)
/* 150B2C 801AAABC C6100010 */  lwc1  $f16, 0x10($s0)
/* 150B30 801AAAC0 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 150B34 801AAAC4 00084880 */  sll   $t1, $t0, 2
/* 150B38 801AAAC8 00290821 */  addu  $at, $at, $t1
/* 150B3C 801AAACC 0C02BEED */  jal   func_800AFBB4
/* 150B40 801AAAD0 E43048D0 */ swc1 $f16, %lo(gEntitiesScaleZArray)($at)
/* 150B44 801AAAD4 0C06AB98 */  jal   func_801AAE60_ovl7
/* 150B48 801AAAD8 00000000 */   nop   
/* 150B4C 801AAADC 0C06B047 */  jal   func_801AC11C_ovl7
/* 150B50 801AAAE0 8FA40028 */   lw    $a0, 0x28($sp)
/* 150B54 801AAAE4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 150B58 801AAAE8 8FB00018 */  lw    $s0, 0x18($sp)
/* 150B5C 801AAAEC 27BD0028 */  addiu $sp, $sp, 0x28
/* 150B60 801AAAF0 03E00008 */  jr    $ra
/* 150B64 801AAAF4 00000000 */   nop   
.type func_801AA914_ovl7, @function
.size func_801AA914_ovl7, . - func_801AA914_ovl7
