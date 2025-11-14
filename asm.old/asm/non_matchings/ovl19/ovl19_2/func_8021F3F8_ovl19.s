glabel func_8021F3F8_ovl19
/* 23FB08 8021F3F8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 23FB0C 8021F3FC AFBF001C */  sw    $ra, 0x1c($sp)
/* 23FB10 8021F400 AFB10018 */  sw    $s1, 0x18($sp)
/* 23FB14 8021F404 AFB00014 */  sw    $s0, 0x14($sp)
/* 23FB18 8021F408 0C087861 */  jal   func_8021E184_ovl19
/* 23FB1C 8021F40C AFA40020 */   sw    $a0, 0x20($sp)
/* 23FB20 8021F410 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 23FB24 8021F414 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 23FB28 8021F418 8E0E0000 */  lw    $t6, ($s0)
/* 23FB2C 8021F41C 3C11800F */  lui   $s1, %hi(D_800E98E0) # $s1, 0x800f
/* 23FB30 8021F420 263198E0 */  addiu $s1, %lo(D_800E98E0) # addiu $s1, $s1, -0x6720
/* 23FB34 8021F424 8DCF0000 */  lw    $t7, ($t6)
/* 23FB38 8021F428 000FC080 */  sll   $t8, $t7, 2
/* 23FB3C 8021F42C 0238C821 */  addu  $t9, $s1, $t8
/* 23FB40 8021F430 0C03F394 */  jal   func_800FCE50
/* 23FB44 8021F434 AF200000 */   sw    $zero, ($t9)
/* 23FB48 8021F438 8E030000 */  lw    $v1, ($s0)
/* 23FB4C 8021F43C 3C018023 */  lui   $at, %hi(D_8022F754) # $at, 0x8023
/* 23FB50 8021F440 C420F754 */  lwc1  $f0, %lo(D_8022F754)($at)
/* 23FB54 8021F444 8C680000 */  lw    $t0, ($v1)
/* 23FB58 8021F448 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 23FB5C 8021F44C 3C0A8022 */  lui   $t2, %hi(D_8021E894) # $t2, 0x8022
/* 23FB60 8021F450 00084880 */  sll   $t1, $t0, 2
/* 23FB64 8021F454 00290821 */  addu  $at, $at, $t1
/* 23FB68 8021F458 AC229AA0 */ sw $v0, %lo(D_800E9AA0)($at)
/* 23FB6C 8021F45C 8C6B0000 */  lw    $t3, ($v1)
/* 23FB70 8021F460 3C01800E */ lui $at, %hi(D_800DEF90)
/* 23FB74 8021F464 254AE894 */  addiu $t2, %lo(D_8021E894) # addiu $t2, $t2, -0x176c
/* 23FB78 8021F468 000B6080 */  sll   $t4, $t3, 2
/* 23FB7C 8021F46C 002C0821 */  addu  $at, $at, $t4
/* 23FB80 8021F470 AC2AEF90 */ sw $t2, %lo(D_800DEF90)($at)
/* 23FB84 8021F474 8C6E0000 */  lw    $t6, ($v1)
/* 23FB88 8021F478 3C01800E */ lui $at, %hi(D_800DF150)
/* 23FB8C 8021F47C 3C0D8022 */  lui   $t5, %hi(D_8021F600) # $t5, 0x8022
/* 23FB90 8021F480 000E7880 */  sll   $t7, $t6, 2
/* 23FB94 8021F484 002F0821 */  addu  $at, $at, $t7
/* 23FB98 8021F488 25ADF600 */  addiu $t5, %lo(D_8021F600) # addiu $t5, $t5, -0xa00
/* 23FB9C 8021F48C AC2DF150 */ sw $t5, %lo(D_800DF150)($at)
/* 23FBA0 8021F490 8C780000 */  lw    $t8, ($v1)
/* 23FBA4 8021F494 3C018023 */  lui   $at, %hi(D_8022F758) # $at, 0x8023
/* 23FBA8 8021F498 C424F758 */  lwc1  $f4, %lo(D_8022F758)($at)
/* 23FBAC 8021F49C 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 23FBB0 8021F4A0 0018C880 */  sll   $t9, $t8, 2
/* 23FBB4 8021F4A4 00390821 */  addu  $at, $at, $t9
/* 23FBB8 8021F4A8 E42441D0 */ swc1 $f4, %lo(gEntitiesAngleYArray)($at)
/* 23FBBC 8021F4AC 8C680000 */  lw    $t0, ($v1)
/* 23FBC0 8021F4B0 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 23FBC4 8021F4B4 24040001 */  li    $a0, 1
/* 23FBC8 8021F4B8 00084880 */  sll   $t1, $t0, 2
/* 23FBCC 8021F4BC 00290821 */  addu  $at, $at, $t1
/* 23FBD0 8021F4C0 E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 23FBD4 8021F4C4 8C6B0000 */  lw    $t3, ($v1)
/* 23FBD8 8021F4C8 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 23FBDC 8021F4CC 24050003 */  li    $a1, 3
/* 23FBE0 8021F4D0 000B5080 */  sll   $t2, $t3, 2
/* 23FBE4 8021F4D4 002A0821 */  addu  $at, $at, $t2
/* 23FBE8 8021F4D8 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 23FBEC 8021F4DC 8C6C0000 */  lw    $t4, ($v1)
/* 23FBF0 8021F4E0 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 23FBF4 8021F4E4 000C7080 */  sll   $t6, $t4, 2
/* 23FBF8 8021F4E8 002E0821 */  addu  $at, $at, $t6
/* 23FBFC 8021F4EC 0C0878B4 */  jal   func_8021E2D0_ovl19
/* 23FC00 8021F4F0 E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 23FC04 8021F4F4 8E0D0000 */  lw    $t5, ($s0)
/* 23FC08 8021F4F8 3C01800F */ lui $at, %hi(D_800EBBE0)
/* 23FC0C 8021F4FC 24040001 */  li    $a0, 1
/* 23FC10 8021F500 8DAF0000 */  lw    $t7, ($t5)
/* 23FC14 8021F504 24050004 */  li    $a1, 4
/* 23FC18 8021F508 000FC080 */  sll   $t8, $t7, 2
/* 23FC1C 8021F50C 00380821 */  addu  $at, $at, $t8
/* 23FC20 8021F510 0C0878B4 */  jal   func_8021E2D0_ovl19
/* 23FC24 8021F514 AC22BBE0 */ sw $v0, %lo(D_800EBBE0)($at)
/* 23FC28 8021F518 8E190000 */  lw    $t9, ($s0)
/* 23FC2C 8021F51C 3C01800F */ lui $at, %hi(D_800EBDA0)
/* 23FC30 8021F520 3C040002 */  lui   $a0, (0x0002006F >> 16) # lui $a0, 2
/* 23FC34 8021F524 8F280000 */  lw    $t0, ($t9)
/* 23FC38 8021F528 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 23FC3C 8021F52C 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 23FC40 8021F530 00084880 */  sll   $t1, $t0, 2
/* 23FC44 8021F534 00290821 */  addu  $at, $at, $t1
/* 23FC48 8021F538 AC22BDA0 */ sw $v0, %lo(D_800EBDA0)($at)
/* 23FC4C 8021F53C 3484006F */  ori   $a0, (0x0002006F & 0xFFFF) # ori $a0, $a0, 0x6f
/* 23FC50 8021F540 0C02A619 */  jal   func_800A9864
/* 23FC54 8021F544 24060010 */   li    $a2, 16
/* 23FC58 8021F548 3C0B800D */  lui   $t3, %hi(D_800D6E64) # $t3, 0x800d
/* 23FC5C 8021F54C 8D6B6E64 */  lw    $t3, %lo(D_800D6E64)($t3)
/* 23FC60 8021F550 3C040002 */  lui   $a0, (0x000203CD >> 16) # lui $a0, 2
/* 23FC64 8021F554 348403CD */  ori   $a0, (0x000203CD & 0xFFFF) # ori $a0, $a0, 0x3cd
/* 23FC68 8021F558 1560001C */  bnez  $t3, .L8021F5CC_ovl19
/* 23FC6C 8021F55C 3C050002 */   lui   $a1, (0x000203CE >> 16) # lui $a1, 2
/* 23FC70 8021F560 34A503CE */  ori   $a1, (0x000203CE & 0xFFFF) # ori $a1, $a1, 0x3ce
/* 23FC74 8021F564 0C048C3A */  jal   func_801230E8
/* 23FC78 8021F568 00003025 */   move  $a2, $zero
/* 23FC7C 8021F56C 8E0A0000 */  lw    $t2, ($s0)
/* 23FC80 8021F570 8D4C0000 */  lw    $t4, ($t2)
/* 23FC84 8021F574 000C7080 */  sll   $t6, $t4, 2
/* 23FC88 8021F578 022E6821 */  addu  $t5, $s1, $t6
/* 23FC8C 8021F57C 8DAF0000 */  lw    $t7, ($t5)
/* 23FC90 8021F580 15E0000A */  bnez  $t7, .L8021F5AC_ovl19
/* 23FC94 8021F584 00000000 */   nop   
.L8021F588_ovl19:
/* 23FC98 8021F588 0C002DAF */  jal   finish_current_thread
/* 23FC9C 8021F58C 24040001 */   li    $a0, 1
/* 23FCA0 8021F590 8E180000 */  lw    $t8, ($s0)
/* 23FCA4 8021F594 8F190000 */  lw    $t9, ($t8)
/* 23FCA8 8021F598 00194080 */  sll   $t0, $t9, 2
/* 23FCAC 8021F59C 02284821 */  addu  $t1, $s1, $t0
/* 23FCB0 8021F5A0 8D2B0000 */  lw    $t3, ($t1)
/* 23FCB4 8021F5A4 1160FFF8 */  beqz  $t3, .L8021F588_ovl19
/* 23FCB8 8021F5A8 00000000 */   nop   
.L8021F5AC_ovl19:
/* 23FCBC 8021F5AC 0C087E8B */  jal   func_8021FA2C_ovl19
/* 23FCC0 8021F5B0 00000000 */   nop   
/* 23FCC4 8021F5B4 3C040002 */  lui   $a0, (0x000203CB >> 16) # lui $a0, 2
/* 23FCC8 8021F5B8 3C050002 */  lui   $a1, (0x000203CC >> 16) # lui $a1, 2
/* 23FCCC 8021F5BC 34A503CC */  ori   $a1, (0x000203CC & 0xFFFF) # ori $a1, $a1, 0x3cc
/* 23FCD0 8021F5C0 348403CB */  ori   $a0, (0x000203CB & 0xFFFF) # ori $a0, $a0, 0x3cb
/* 23FCD4 8021F5C4 0C048C3A */  jal   func_801230E8
/* 23FCD8 8021F5C8 24060001 */   li    $a2, 1
.L8021F5CC_ovl19:
/* 23FCDC 8021F5CC 3C040002 */  lui   $a0, (0x000203CF >> 16) # lui $a0, 2
/* 23FCE0 8021F5D0 3C050002 */  lui   $a1, (0x000203D0 >> 16) # lui $a1, 2
/* 23FCE4 8021F5D4 34A503D0 */  ori   $a1, (0x000203D0 & 0xFFFF) # ori $a1, $a1, 0x3d0
/* 23FCE8 8021F5D8 348403CF */  ori   $a0, (0x000203CF & 0xFFFF) # ori $a0, $a0, 0x3cf
/* 23FCEC 8021F5DC 0C048C3A */  jal   func_801230E8
/* 23FCF0 8021F5E0 00003025 */   move  $a2, $zero
/* 23FCF4 8021F5E4 0C02BE85 */  jal   func_800AFA14
/* 23FCF8 8021F5E8 00000000 */   nop   
/* 23FCFC 8021F5EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 23FD00 8021F5F0 8FB00014 */  lw    $s0, 0x14($sp)
/* 23FD04 8021F5F4 8FB10018 */  lw    $s1, 0x18($sp)
/* 23FD08 8021F5F8 03E00008 */  jr    $ra
/* 23FD0C 8021F5FC 27BD0020 */   addiu $sp, $sp, 0x20
.type func_8021F3F8_ovl19, @function
.size func_8021F3F8_ovl19, . - func_8021F3F8_ovl19
