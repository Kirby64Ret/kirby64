glabel func_8021FA2C_ovl19
/* 24013C 8021FA2C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 240140 8021FA30 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 240144 8021FA34 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 240148 8021FA38 AFBF0014 */  sw    $ra, 0x14($sp)
/* 24014C 8021FA3C 8DCF0000 */  lw    $t7, ($t6)
/* 240150 8021FA40 3C19800F */ lui $t9, %hi(D_800E9AA0)
/* 240154 8021FA44 2404001C */  li    $a0, 28
/* 240158 8021FA48 000FC080 */  sll   $t8, $t7, 2
/* 24015C 8021FA4C 0338C821 */  addu  $t9, $t9, $t8
/* 240160 8021FA50 8F399AA0 */ lw $t9, %lo(D_800E9AA0)($t9)
/* 240164 8021FA54 2405001E */  li    $a1, 30
/* 240168 8021FA58 2406003C */  li    $a2, 60
/* 24016C 8021FA5C 0C02BB02 */  jal   request_track_general
/* 240170 8021FA60 AFB9002C */   sw    $t9, 0x2c($sp)
/* 240174 8021FA64 2841003C */  slti  $at, $v0, 0x3c
/* 240178 8021FA68 10200004 */  beqz  $at, .L8021FA7C_ovl19
/* 24017C 8021FA6C 00403825 */   move  $a3, $v0
/* 240180 8021FA70 2401FFFF */  li    $at, -1
/* 240184 8021FA74 1441000B */  bne   $v0, $at, .L8021FAA4_ovl19
/* 240188 8021FA78 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
.L8021FA7C_ovl19:
/* 24018C 8021FA7C 2401FFFF */  li    $at, -1
/* 240190 8021FA80 10410003 */  beq   $v0, $at, .L8021FA90_ovl19
/* 240194 8021FA84 00000000 */   nop   
/* 240198 8021FA88 0C02C640 */  jal   func_800B1900
/* 24019C 8021FA8C 30E4FFFF */   andi  $a0, $a3, 0xffff
.L8021FA90_ovl19:
/* 2401A0 8021FA90 3C048023 */  lui   $a0, %hi(D_8022F720) # $a0, 0x8023
/* 2401A4 8021FA94 0C02909C */  jal   print_error_stub
/* 2401A8 8021FA98 2484F720 */   addiu $a0, %lo(D_8022F720) # addiu $a0, $a0, -0x8e0
/* 2401AC 8021FA9C 10000074 */  b     .L8021FC70_ovl19
/* 2401B0 8021FAA0 8FBF0014 */   lw    $ra, 0x14($sp)
.L8021FAA4_ovl19:
/* 2401B4 8021FAA4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 2401B8 8021FAA8 3C04800E */  lui   $a0, %hi(D_800E7880) # $a0, 0x800e
/* 2401BC 8021FAAC 24847880 */  addiu $a0, %lo(D_800E7880) # addiu $a0, $a0, 0x7880
/* 2401C0 8021FAB0 8C680000 */  lw    $t0, ($v1)
/* 2401C4 8021FAB4 24010002 */  li    $at, 2
/* 2401C8 8021FAB8 240B0005 */  li    $t3, 5
/* 2401CC 8021FABC 00884821 */  addu  $t1, $a0, $t0
/* 2401D0 8021FAC0 912A0000 */  lbu   $t2, ($t1)
/* 2401D4 8021FAC4 00026040 */  sll   $t4, $v0, 1
/* 2401D8 8021FAC8 00827021 */  addu  $t6, $a0, $v0
/* 2401DC 8021FACC 15410006 */  bne   $t2, $at, .L8021FAE8_ovl19
/* 2401E0 8021FAD0 240D0001 */   li    $t5, 1
/* 2401E4 8021FAD4 3C01800E */ lui $at, %hi(D_800E77A0)
/* 2401E8 8021FAD8 002C0821 */  addu  $at, $at, $t4
/* 2401EC 8021FADC A42B77A0 */ sh $t3, %lo(D_800E77A0)($at)
/* 2401F0 8021FAE0 10000017 */  b     .L8021FB40_ovl19
/* 2401F4 8021FAE4 A1CD0000 */   sb    $t5, ($t6)
.L8021FAE8_ovl19:
/* 2401F8 8021FAE8 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 2401FC 8021FAEC 44812000 */  mtc1  $at, $f4
/* 240200 8021FAF0 3C01800D */  lui   $at, %hi(gKirbyHp) # $at, 0x800d
/* 240204 8021FAF4 C4266E50 */  lwc1  $f6, %lo(gKirbyHp)($at)
/* 240208 8021FAF8 3C01800E */ lui $at, %hi(D_800E77A0)
/* 24020C 8021FAFC 00024840 */  sll   $t1, $v0, 1
/* 240210 8021FB00 46062032 */  c.eq.s $f4, $f6
/* 240214 8021FB04 240F0009 */  li    $t7, 9
/* 240218 8021FB08 00290821 */  addu  $at, $at, $t1
/* 24021C 8021FB0C 240A0001 */  li    $t2, 1
/* 240220 8021FB10 45000009 */  bc1f  .L8021FB38_ovl19
/* 240224 8021FB14 00825821 */   addu  $t3, $a0, $v0
/* 240228 8021FB18 0002C040 */  sll   $t8, $v0, 1
/* 24022C 8021FB1C 3C01800E */ lui $at, %hi(D_800E77A0)
/* 240230 8021FB20 00380821 */  addu  $at, $at, $t8
/* 240234 8021FB24 A42F77A0 */ sh $t7, %lo(D_800E77A0)($at)
/* 240238 8021FB28 24190001 */  li    $t9, 1
/* 24023C 8021FB2C 00824021 */  addu  $t0, $a0, $v0
/* 240240 8021FB30 10000003 */  b     .L8021FB40_ovl19
/* 240244 8021FB34 A1190000 */   sb    $t9, ($t0)
.L8021FB38_ovl19:
/* 240248 8021FB38 A42077A0 */  sh    $zero, 0x77a0($at)
/* 24024C 8021FB3C A16A0000 */  sb    $t2, ($t3)
.L8021FB40_ovl19:
/* 240250 8021FB40 3C01800E */ lui $at, %hi(D_800E7730)
/* 240254 8021FB44 00270821 */  addu  $at, $at, $a3
/* 240258 8021FB48 240C0003 */  li    $t4, 3
/* 24025C 8021FB4C A02C7730 */ sb $t4, %lo(D_800E7730)($at)
/* 240260 8021FB50 3C01800E */ lui $at, %hi(D_800E76C0)
/* 240264 8021FB54 00270821 */  addu  $at, $at, $a3
/* 240268 8021FB58 240D00FF */  li    $t5, 255
/* 24026C 8021FB5C A02D76C0 */ sb $t5, %lo(D_800E76C0)($at)
/* 240270 8021FB60 3C01800F */ lui $at, %hi(D_800E8E60)
/* 240274 8021FB64 00071080 */  sll   $v0, $a3, 2
/* 240278 8021FB68 00220821 */  addu  $at, $at, $v0
/* 24027C 8021FB6C 240E0001 */  li    $t6, 1
/* 240280 8021FB70 AC2E8E60 */ sw $t6, %lo(D_800E8E60)($at)
/* 240284 8021FB74 8C6F0000 */  lw    $t7, ($v1)
/* 240288 8021FB78 3C06800F */ lui $a2, %hi(D_800EBBE0)
/* 24028C 8021FB7C 3C08800E */ lui $t0, %hi(D_800DFBD0)
/* 240290 8021FB80 000FC080 */  sll   $t8, $t7, 2
/* 240294 8021FB84 00D83021 */  addu  $a2, $a2, $t8
/* 240298 8021FB88 8CC6BBE0 */ lw $a2, %lo(D_800EBBE0)($a2)
/* 24029C 8021FB8C 27A40034 */  addiu $a0, $sp, 0x34
/* 2402A0 8021FB90 0006C880 */  sll   $t9, $a2, 2
/* 2402A4 8021FB94 01194021 */  addu  $t0, $t0, $t9
/* 2402A8 8021FB98 8D08FBD0 */ lw $t0, %lo(D_800DFBD0)($t0)
/* 2402AC 8021FB9C 8D050008 */  lw    $a1, 8($t0)
/* 2402B0 8021FBA0 AFA70030 */  sw    $a3, 0x30($sp)
/* 2402B4 8021FBA4 0C02C8D0 */  jal   func_800B2340
/* 2402B8 8021FBA8 AFA2001C */   sw    $v0, 0x1c($sp)
/* 2402BC 8021FBAC 8FA2001C */  lw    $v0, 0x1c($sp)
/* 2402C0 8021FBB0 C7A80034 */  lwc1  $f8, 0x34($sp)
/* 2402C4 8021FBB4 3C01800E */ lui $at, %hi(gEntitiesPosXArray)
/* 2402C8 8021FBB8 00220821 */  addu  $at, $at, $v0
/* 2402CC 8021FBBC C7AA0034 */  lwc1  $f10, 0x34($sp)
/* 2402D0 8021FBC0 E4282B10 */ swc1 $f8, %lo(gEntitiesPosXArray)($at)
/* 2402D4 8021FBC4 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 2402D8 8021FBC8 00220821 */  addu  $at, $at, $v0
/* 2402DC 8021FBCC C7B00038 */  lwc1  $f16, 0x38($sp)
/* 2402E0 8021FBD0 E42A25D0 */ swc1 $f10, %lo(gEntitiesNextPosXArray)($at)
/* 2402E4 8021FBD4 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 2402E8 8021FBD8 00220821 */  addu  $at, $at, $v0
/* 2402EC 8021FBDC C7B20038 */  lwc1  $f18, 0x38($sp)
/* 2402F0 8021FBE0 E4302CD0 */ swc1 $f16, %lo(gEntitiesPosYArray)($at)
/* 2402F4 8021FBE4 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 2402F8 8021FBE8 00220821 */  addu  $at, $at, $v0
/* 2402FC 8021FBEC C7A4003C */  lwc1  $f4, 0x3c($sp)
/* 240300 8021FBF0 E4322790 */ swc1 $f18, %lo(gEntitiesNextPosYArray)($at)
/* 240304 8021FBF4 3C01800E */ lui $at, %hi(gEntitiesPosZArray)
/* 240308 8021FBF8 00220821 */  addu  $at, $at, $v0
/* 24030C 8021FBFC C7A6003C */  lwc1  $f6, 0x3c($sp)
/* 240310 8021FC00 E4242E90 */ swc1 $f4, %lo(gEntitiesPosZArray)($at)
/* 240314 8021FC04 8FA4002C */  lw    $a0, 0x2c($sp)
/* 240318 8021FC08 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 24031C 8021FC0C 00220821 */  addu  $at, $at, $v0
/* 240320 8021FC10 E4262950 */ swc1 $f6, %lo(gEntitiesNextPosZArray)($at)
/* 240324 8021FC14 90830000 */  lbu   $v1, ($a0)
/* 240328 8021FC18 3C01800E */ lui $at, %hi(D_800E6150)
/* 24032C 8021FC1C 00220821 */  addu  $at, $at, $v0
/* 240330 8021FC20 AC236150 */ sw $v1, %lo(D_800E6150)($at)
/* 240334 8021FC24 3C01800E */ lui $at, %hi(D_800E5F90)
/* 240338 8021FC28 00220821 */  addu  $at, $at, $v0
/* 24033C 8021FC2C AC235F90 */ sw $v1, %lo(D_800E5F90)($at)
/* 240340 8021FC30 C4800024 */  lwc1  $f0, 0x24($a0)
/* 240344 8021FC34 3C01800E */ lui $at, %hi(D_800E6D90)
/* 240348 8021FC38 00220821 */  addu  $at, $at, $v0
/* 24034C 8021FC3C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 240350 8021FC40 E4206D90 */ swc1 $f0, %lo(D_800E6D90)($at)
/* 240354 8021FC44 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 240358 8021FC48 3C01800E */ lui $at, %hi(D_800E6BD0)
/* 24035C 8021FC4C 00220821 */  addu  $at, $at, $v0
/* 240360 8021FC50 E4206BD0 */ swc1 $f0, %lo(D_800E6BD0)($at)
/* 240364 8021FC54 8D2A0000 */  lw    $t2, ($t1)
/* 240368 8021FC58 8FA70030 */  lw    $a3, 0x30($sp)
/* 24036C 8021FC5C 3C01800F */ lui $at, %hi(D_800EC120)
/* 240370 8021FC60 000A5880 */  sll   $t3, $t2, 2
/* 240374 8021FC64 002B0821 */  addu  $at, $at, $t3
/* 240378 8021FC68 AC27C120 */ sw $a3, %lo(D_800EC120)($at)
/* 24037C 8021FC6C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8021FC70_ovl19:
/* 240380 8021FC70 27BD0040 */  addiu $sp, $sp, 0x40
/* 240384 8021FC74 03E00008 */  jr    $ra
/* 240388 8021FC78 00000000 */   nop   
.type func_8021FA2C_ovl19, @function
.size func_8021FA2C_ovl19, . - func_8021FA2C_ovl19
