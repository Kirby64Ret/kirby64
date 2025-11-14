glabel func_80220B40_ovl19
/* 241250 80220B40 27BDFF98 */  addiu $sp, $sp, -0x68
/* 241254 80220B44 AFB10038 */  sw    $s1, 0x38($sp)
/* 241258 80220B48 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 24125C 80220B4C 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 241260 80220B50 AFB00034 */  sw    $s0, 0x34($sp)
/* 241264 80220B54 8E300000 */  lw    $s0, ($s1)
/* 241268 80220B58 AFBF003C */  sw    $ra, 0x3c($sp)
/* 24126C 80220B5C AFA40068 */  sw    $a0, 0x68($sp)
/* 241270 80220B60 8E0E0000 */  lw    $t6, ($s0)
/* 241274 80220B64 3C01800E */ lui $at, %hi(D_800DEF90)
/* 241278 80220B68 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray5)
/* 24127C 80220B6C 000E7880 */  sll   $t7, $t6, 2
/* 241280 80220B70 002F0821 */  addu  $at, $at, $t7
/* 241284 80220B74 AC20EF90 */ sw $zero, %lo(D_800DEF90)($at)
/* 241288 80220B78 8E180000 */  lw    $t8, ($s0)
/* 24128C 80220B7C 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 241290 80220B80 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 241294 80220B84 0018C880 */  sll   $t9, $t8, 2
/* 241298 80220B88 00992021 */  addu  $a0, $a0, $t9
/* 24129C 80220B8C 0C02C7DA */  jal   func_800B1F68
/* 2412A0 80220B90 8C84EC10 */ lw $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 2412A4 80220B94 8E300000 */  lw    $s0, ($s1)
/* 2412A8 80220B98 3C014348 */  li    $at, 0x43480000 # 200.000000
/* 2412AC 80220B9C 44812000 */  mtc1  $at, $f4
/* 2412B0 80220BA0 8E080000 */  lw    $t0, ($s0)
/* 2412B4 80220BA4 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 2412B8 80220BA8 24040002 */  li    $a0, 2
/* 2412BC 80220BAC 00084880 */  sll   $t1, $t0, 2
/* 2412C0 80220BB0 00290821 */  addu  $at, $at, $t1
/* 2412C4 80220BB4 E4242790 */ swc1 $f4, %lo(gEntitiesNextPosYArray)($at)
/* 2412C8 80220BB8 8E0A0000 */  lw    $t2, ($s0)
/* 2412CC 80220BBC 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 2412D0 80220BC0 44813000 */  mtc1  $at, $f6
/* 2412D4 80220BC4 3C01800E */ lui $at, %hi(D_800E6BD0)
/* 2412D8 80220BC8 000A5880 */  sll   $t3, $t2, 2
/* 2412DC 80220BCC 002B0821 */  addu  $at, $at, $t3
/* 2412E0 80220BD0 0C002DAF */  jal   finish_current_thread
/* 2412E4 80220BD4 E4266BD0 */ swc1 $f6, %lo(D_800E6BD0)($at)
/* 2412E8 80220BD8 3C10800D */  lui   $s0, %hi(D_800D6F18) # $s0, 0x800d
/* 2412EC 80220BDC 26106F18 */  addiu $s0, %lo(D_800D6F18) # addiu $s0, $s0, 0x6f18
.L80220BE0_ovl19:
/* 2412F0 80220BE0 0C02AD24 */  jal   func_800AB490
/* 2412F4 80220BE4 8E040000 */   lw    $a0, ($s0)
/* 2412F8 80220BE8 14400005 */  bnez  $v0, .L80220C00_ovl19
/* 2412FC 80220BEC 00000000 */   nop   
/* 241300 80220BF0 0C002DAF */  jal   finish_current_thread
/* 241304 80220BF4 24040001 */   li    $a0, 1
/* 241308 80220BF8 1000FFF9 */  b     .L80220BE0_ovl19
/* 24130C 80220BFC 00000000 */   nop   
.L80220C00_ovl19:
/* 241310 80220C00 0C03E39B */  jal   func_800F8E6C
/* 241314 80220C04 8FA40068 */   lw    $a0, 0x68($sp)
/* 241318 80220C08 3C0C800C */  lui   $t4, %hi(D_800BE508) # $t4, 0x800c
/* 24131C 80220C0C 8D8CE508 */  lw    $t4, %lo(D_800BE508)($t4)
/* 241320 80220C10 3C0D800D */ lui $t5, %hi(D_800D6E30)
/* 241324 80220C14 01AC6821 */  addu  $t5, $t5, $t4
/* 241328 80220C18 91AD6E30 */ lbu $t5, %lo(D_800D6E30)($t5)
/* 24132C 80220C1C 55A00046 */  bnezl $t5, .L80220D38_ovl19
/* 241330 80220C20 8E2F0000 */   lw    $t7, ($s1)
/* 241334 80220C24 0C029D9E */  jal   play_sound
/* 241338 80220C28 24040112 */   li    $a0, 274
/* 24133C 80220C2C 8E2E0000 */  lw    $t6, ($s1)
/* 241340 80220C30 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 241344 80220C34 3C07800E */ lui $a3, %hi(gEntitiesNextPosXArray)
/* 241348 80220C38 8DC20000 */  lw    $v0, ($t6)
/* 24134C 80220C3C 24040003 */  li    $a0, 3
/* 241350 80220C40 00002825 */  move  $a1, $zero
/* 241354 80220C44 00021080 */  sll   $v0, $v0, 2
/* 241358 80220C48 00220821 */  addu  $at, $at, $v0
/* 24135C 80220C4C C4282790 */ lwc1 $f8, %lo(gEntitiesNextPosYArray)($at)
/* 241360 80220C50 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 241364 80220C54 00220821 */  addu  $at, $at, $v0
/* 241368 80220C58 C42A2950 */ lwc1 $f10, %lo(gEntitiesNextPosZArray)($at)
/* 24136C 80220C5C 00E23821 */  addu  $a3, $a3, $v0
/* 241370 80220C60 8CE725D0 */ lw $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 241374 80220C64 240600CE */  li    $a2, 206
/* 241378 80220C68 E7A80010 */  swc1  $f8, 0x10($sp)
/* 24137C 80220C6C 0C029FDD */  jal   func_800A7F74
/* 241380 80220C70 E7AA0014 */   swc1  $f10, 0x14($sp)
/* 241384 80220C74 0C002DAF */  jal   finish_current_thread
/* 241388 80220C78 24040012 */   li    $a0, 18
/* 24138C 80220C7C 8E2F0000 */  lw    $t7, ($s1)
/* 241390 80220C80 44800000 */  mtc1  $zero, $f0
/* 241394 80220C84 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 241398 80220C88 8DF80000 */  lw    $t8, ($t7)
/* 24139C 80220C8C 44811000 */  mtc1  $at, $f2
/* 2413A0 80220C90 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 2413A4 80220C94 0018C880 */  sll   $t9, $t8, 2
/* 2413A8 80220C98 00390821 */  addu  $at, $at, $t9
/* 2413AC 80220C9C C4302790 */ lwc1 $f16, %lo(gEntitiesNextPosYArray)($at)
/* 2413B0 80220CA0 240401FC */  li    $a0, 508
/* 2413B4 80220CA4 E7A0005C */  swc1  $f0, 0x5c($sp)
/* 2413B8 80220CA8 E7A00064 */  swc1  $f0, 0x64($sp)
/* 2413BC 80220CAC E7A00050 */  swc1  $f0, 0x50($sp)
/* 2413C0 80220CB0 E7A00054 */  swc1  $f0, 0x54($sp)
/* 2413C4 80220CB4 E7A00058 */  swc1  $f0, 0x58($sp)
/* 2413C8 80220CB8 E7A2004C */  swc1  $f2, 0x4c($sp)
/* 2413CC 80220CBC E7A20048 */  swc1  $f2, 0x48($sp)
/* 2413D0 80220CC0 E7A20044 */  swc1  $f2, 0x44($sp)
/* 2413D4 80220CC4 0C029D9E */  jal   play_sound
/* 2413D8 80220CC8 E7B00060 */   swc1  $f16, 0x60($sp)
/* 2413DC 80220CCC 8E280000 */  lw    $t0, ($s1)
/* 2413E0 80220CD0 3C05800E */ lui $a1, %hi(D_800E5F93)
/* 2413E4 80220CD4 3C06800E */ lui $a2, %hi(D_800E6BD0)
/* 2413E8 80220CD8 8D020000 */  lw    $v0, ($t0)
/* 2413EC 80220CDC 24090007 */  li    $t1, 7
/* 2413F0 80220CE0 240A0002 */  li    $t2, 2
/* 2413F4 80220CE4 00021080 */  sll   $v0, $v0, 2
/* 2413F8 80220CE8 00A22821 */  addu  $a1, $a1, $v0
/* 2413FC 80220CEC 00C23021 */  addu  $a2, $a2, $v0
/* 241400 80220CF0 240B0028 */  li    $t3, 40
/* 241404 80220CF4 27AC005C */  addiu $t4, $sp, 0x5c
/* 241408 80220CF8 27AD0050 */  addiu $t5, $sp, 0x50
/* 24140C 80220CFC 27AE0044 */  addiu $t6, $sp, 0x44
/* 241410 80220D00 AFAE002C */  sw    $t6, 0x2c($sp)
/* 241414 80220D04 AFAD0028 */  sw    $t5, 0x28($sp)
/* 241418 80220D08 AFAC0024 */  sw    $t4, 0x24($sp)
/* 24141C 80220D0C AFAB0020 */  sw    $t3, 0x20($sp)
/* 241420 80220D10 8CC66BD0 */ lw $a2, %lo(D_800E6BD0)($a2)
/* 241424 80220D14 90A55F93 */ lbu $a1, %lo(D_800E5F93)($a1)
/* 241428 80220D18 AFAA0014 */  sw    $t2, 0x14($sp)
/* 24142C 80220D1C AFA90010 */  sw    $t1, 0x10($sp)
/* 241430 80220D20 AFA0001C */  sw    $zero, 0x1c($sp)
/* 241434 80220D24 AFA00018 */  sw    $zero, 0x18($sp)
/* 241438 80220D28 240400FF */  li    $a0, 255
/* 24143C 80220D2C 0C03F345 */  jal   func_800FCD14
/* 241440 80220D30 24070003 */   li    $a3, 3
/* 241444 80220D34 8E2F0000 */  lw    $t7, ($s1)
.L80220D38_ovl19:
/* 241448 80220D38 0C02C640 */  jal   func_800B1900
/* 24144C 80220D3C 95E40002 */   lhu   $a0, 2($t7)
/* 241450 80220D40 8FBF003C */  lw    $ra, 0x3c($sp)
/* 241454 80220D44 8FB00034 */  lw    $s0, 0x34($sp)
/* 241458 80220D48 8FB10038 */  lw    $s1, 0x38($sp)
/* 24145C 80220D4C 03E00008 */  jr    $ra
/* 241460 80220D50 27BD0068 */   addiu $sp, $sp, 0x68
.type func_80220B40_ovl19, @function
.size func_80220B40_ovl19, . - func_80220B40_ovl19
