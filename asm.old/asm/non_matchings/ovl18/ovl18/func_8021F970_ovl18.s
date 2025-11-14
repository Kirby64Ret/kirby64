glabel func_8021F970_ovl18
/* 232310 8021F970 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 232314 8021F974 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 232318 8021F978 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 23231C 8021F97C AFBF0014 */  sw    $ra, 0x14($sp)
/* 232320 8021F980 8DC20000 */  lw    $v0, ($t6)
/* 232324 8021F984 3C19800E */ lui $t9, %hi(D_800E77A0)
/* 232328 8021F988 3C07800E */ lui $a3, %hi(D_800E1B50)
/* 23232C 8021F98C 0002C040 */  sll   $t8, $v0, 1
/* 232330 8021F990 0338C821 */  addu  $t9, $t9, $t8
/* 232334 8021F994 973977A0 */ lhu $t9, %lo(D_800E77A0)($t9)
/* 232338 8021F998 00027880 */  sll   $t7, $v0, 2
/* 23233C 8021F99C 00EF3821 */  addu  $a3, $a3, $t7
/* 232340 8021F9A0 8CE71B50 */ lw $a3, %lo(D_800E1B50)($a3)
/* 232344 8021F9A4 2728FFB2 */  addiu $t0, $t9, -0x4e
/* 232348 8021F9A8 AFA80018 */  sw    $t0, 0x18($sp)
/* 23234C 8021F9AC 24040028 */  li    $a0, 40
/* 232350 8021F9B0 0C029D9E */  jal   play_sound
/* 232354 8021F9B4 AFA7001C */   sw    $a3, 0x1c($sp)
/* 232358 8021F9B8 8FA90018 */  lw    $t1, 0x18($sp)
/* 23235C 8021F9BC 3C0B8023 */ lui $t3, %hi(D_802297E4)
/* 232360 8021F9C0 8FA7001C */  lw    $a3, 0x1c($sp)
/* 232364 8021F9C4 000950C0 */  sll   $t2, $t1, 3
/* 232368 8021F9C8 016A5821 */  addu  $t3, $t3, $t2
/* 23236C 8021F9CC 916B97E4 */ lbu $t3, %lo(D_802297E4)($t3)
/* 232370 8021F9D0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 232374 8021F9D4 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 232378 8021F9D8 A0EB003D */  sb    $t3, 0x3d($a3)
/* 23237C 8021F9DC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 232380 8021F9E0 316C00FF */  andi  $t4, $t3, 0xff
/* 232384 8021F9E4 3C06800D */  lui   $a2, %hi(D_800D70D8) # $a2, 0x800d
/* 232388 8021F9E8 8C4D0000 */  lw    $t5, ($v0)
/* 23238C 8021F9EC 24C670D8 */  addiu $a2, %lo(D_800D70D8) # addiu $a2, $a2, 0x70d8
/* 232390 8021F9F0 3C03800D */  lui   $v1, %hi(D_800D7098) # $v1, 0x800d
/* 232394 8021F9F4 000D7080 */  sll   $t6, $t5, 2
/* 232398 8021F9F8 002E0821 */  addu  $at, $at, $t6
/* 23239C 8021F9FC AC2C7CE0 */ sw $t4, %lo(D_800E7CE0)($at)
/* 2323A0 8021FA00 8C4F0000 */  lw    $t7, ($v0)
/* 2323A4 8021FA04 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 2323A8 8021FA08 24637098 */  addiu $v1, %lo(D_800D7098) # addiu $v1, $v1, 0x7098
/* 2323AC 8021FA0C 000FC080 */  sll   $t8, $t7, 2
/* 2323B0 8021FA10 00380821 */  addu  $at, $at, $t8
/* 2323B4 8021FA14 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 2323B8 8021FA18 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 2323BC 8021FA1C 24040006 */  li    $a0, 6
/* 2323C0 8021FA20 E4C40000 */  swc1  $f4, ($a2)
/* 2323C4 8021FA24 8C590000 */  lw    $t9, ($v0)
/* 2323C8 8021FA28 00194080 */  sll   $t0, $t9, 2
/* 2323CC 8021FA2C 00280821 */  addu  $at, $at, $t0
/* 2323D0 8021FA30 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 2323D4 8021FA34 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 2323D8 8021FA38 E4C60004 */  swc1  $f6, 4($a2)
/* 2323DC 8021FA3C 8C490000 */  lw    $t1, ($v0)
/* 2323E0 8021FA40 00095080 */  sll   $t2, $t1, 2
/* 2323E4 8021FA44 002A0821 */  addu  $at, $at, $t2
/* 2323E8 8021FA48 C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 2323EC 8021FA4C 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 2323F0 8021FA50 E4C80008 */  swc1  $f8, 8($a2)
/* 2323F4 8021FA54 8C4B0000 */  lw    $t3, ($v0)
/* 2323F8 8021FA58 000B6880 */  sll   $t5, $t3, 2
/* 2323FC 8021FA5C 002D0821 */  addu  $at, $at, $t5
/* 232400 8021FA60 C42A4010 */ lwc1 $f10, %lo(gEntitiesAngleXArray)($at)
/* 232404 8021FA64 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 232408 8021FA68 E4CA000C */  swc1  $f10, 0xc($a2)
/* 23240C 8021FA6C 8C4C0000 */  lw    $t4, ($v0)
/* 232410 8021FA70 000C7080 */  sll   $t6, $t4, 2
/* 232414 8021FA74 002E0821 */  addu  $at, $at, $t6
/* 232418 8021FA78 C43041D0 */ lwc1 $f16, %lo(gEntitiesAngleYArray)($at)
/* 23241C 8021FA7C 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 232420 8021FA80 240C0001 */  li    $t4, 1
/* 232424 8021FA84 E4D00010 */  swc1  $f16, 0x10($a2)
/* 232428 8021FA88 8C4F0000 */  lw    $t7, ($v0)
/* 23242C 8021FA8C 000FC080 */  sll   $t8, $t7, 2
/* 232430 8021FA90 00380821 */  addu  $at, $at, $t8
/* 232434 8021FA94 C4324390 */ lwc1 $f18, %lo(gEntitiesAngleZArray)($at)
/* 232438 8021FA98 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 23243C 8021FA9C E4D20014 */  swc1  $f18, 0x14($a2)
/* 232440 8021FAA0 8C590000 */  lw    $t9, ($v0)
/* 232444 8021FAA4 00194080 */  sll   $t0, $t9, 2
/* 232448 8021FAA8 00280821 */  addu  $at, $at, $t0
/* 23244C 8021FAAC C4244550 */ lwc1 $f4, %lo(gEntitiesScaleXArray)($at)
/* 232450 8021FAB0 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 232454 8021FAB4 E4C40018 */  swc1  $f4, 0x18($a2)
/* 232458 8021FAB8 8C490000 */  lw    $t1, ($v0)
/* 23245C 8021FABC 00095080 */  sll   $t2, $t1, 2
/* 232460 8021FAC0 002A0821 */  addu  $at, $at, $t2
/* 232464 8021FAC4 C4264710 */ lwc1 $f6, %lo(gEntitiesScaleYArray)($at)
/* 232468 8021FAC8 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 23246C 8021FACC E4C6001C */  swc1  $f6, 0x1c($a2)
/* 232470 8021FAD0 8C4B0000 */  lw    $t3, ($v0)
/* 232474 8021FAD4 000B6880 */  sll   $t5, $t3, 2
/* 232478 8021FAD8 002D0821 */  addu  $at, $at, $t5
/* 23247C 8021FADC C42848D0 */ lwc1 $f8, %lo(gEntitiesScaleZArray)($at)
/* 232480 8021FAE0 AC6C0000 */  sw    $t4, ($v1)
/* 232484 8021FAE4 AC600004 */  sw    $zero, 4($v1)
/* 232488 8021FAE8 AC600008 */  sw    $zero, 8($v1)
/* 23248C 8021FAEC AC60000C */  sw    $zero, 0xc($v1)
/* 232490 8021FAF0 AC600010 */  sw    $zero, 0x10($v1)
/* 232494 8021FAF4 AC600014 */  sw    $zero, 0x14($v1)
/* 232498 8021FAF8 AC600018 */  sw    $zero, 0x18($v1)
/* 23249C 8021FAFC E4C80020 */  swc1  $f8, 0x20($a2)
/* 2324A0 8021FB00 0C02C67D */  jal   func_800B19F4
/* 2324A4 8021FB04 8C450000 */   lw    $a1, ($v0)
/* 2324A8 8021FB08 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2324AC 8021FB0C 27BD0020 */  addiu $sp, $sp, 0x20
/* 2324B0 8021FB10 03E00008 */  jr    $ra
/* 2324B4 8021FB14 00000000 */   nop   
.type func_8021F970_ovl18, @function
.size func_8021F970_ovl18, . - func_8021F970_ovl18
