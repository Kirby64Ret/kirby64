glabel func_8011B22C
/* 0A3C9C 8011B22C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0A3CA0 8011B230 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0A3CA4 8011B234 AFB00018 */  sw    $s0, 0x18($sp)
/* 0A3CA8 8011B238 8C820000 */  lw    $v0, ($a0)
/* 0A3CAC 8011B23C 3C03800E */  lui   $v1, %hi(gEntitiesNextPosXArray) # $v1, 0x800e
/* 0A3CB0 8011B240 246325D0 */  addiu $v1, %lo(gEntitiesNextPosXArray) # addiu $v1, $v1, 0x25d0
/* 0A3CB4 8011B244 00028080 */  sll   $s0, $v0, 2
/* 0A3CB8 8011B248 00703021 */  addu  $a2, $v1, $s0
/* 0A3CBC 8011B24C C4C60000 */  lwc1  $f6, ($a2)
/* 0A3CC0 8011B250 C4640000 */  lwc1  $f4, ($v1)
/* 0A3CC4 8011B254 4604303E */  c.le.s $f6, $f4
/* 0A3CC8 8011B258 00000000 */  nop   
/* 0A3CCC 8011B25C 4502002E */  bc1fl .L8011B318_ovl2
/* 0A3CD0 8011B260 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0A3CD4 8011B264 8C8E004C */  lw    $t6, 0x4c($a0)
/* 0A3CD8 8011B268 AFA60020 */  sw    $a2, 0x20($sp)
/* 0A3CDC 8011B26C 24040054 */  li    $a0, 84
/* 0A3CE0 8011B270 0C047939 */  jal   func_8011E4E4
/* 0A3CE4 8011B274 AFAE0028 */   sw    $t6, 0x28($sp)
/* 0A3CE8 8011B278 0C03EE45 */  jal   func_800FB914
/* 0A3CEC 8011B27C 24040003 */   li    $a0, 3
/* 0A3CF0 8011B280 00002025 */  move  $a0, $zero
/* 0A3CF4 8011B284 0C02ED1A */  jal   func_800BB468
/* 0A3CF8 8011B288 00002825 */   move  $a1, $zero
/* 0A3CFC 8011B28C 8FA20028 */  lw    $v0, 0x28($sp)
/* 0A3D00 8011B290 24040254 */  li    $a0, 596
/* 0A3D04 8011B294 24450098 */  addiu $a1, $v0, 0x98
/* 0A3D08 8011B298 0C029DFA */  jal   func_800A77E8
/* 0A3D0C 8011B29C 2446009C */   addiu $a2, $v0, 0x9c
/* 0A3D10 8011B2A0 3C040006 */  lui   $a0, (0x000600D9 >> 16) # lui $a0, 6
/* 0A3D14 8011B2A4 0C02A806 */  jal   func_800AA018
/* 0A3D18 8011B2A8 348400D9 */   ori   $a0, (0x000600D9 & 0xFFFF) # ori $a0, $a0, 0xd9
/* 0A3D1C 8011B2AC 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0A3D20 8011B2B0 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0A3D24 8011B2B4 3C0F8012 */  lui   $t7, %hi(D_8011B188) # $t7, 0x8012
/* 0A3D28 8011B2B8 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A3D2C 8011B2BC 8F190000 */  lw    $t9, ($t8)
/* 0A3D30 8011B2C0 25EFB188 */  addiu $t7, %lo(D_8011B188) # addiu $t7, $t7, -0x4e78
/* 0A3D34 8011B2C4 24090007 */  li    $t1, 7
/* 0A3D38 8011B2C8 00194080 */  sll   $t0, $t9, 2
/* 0A3D3C 8011B2CC 00280821 */  addu  $at, $at, $t0
/* 0A3D40 8011B2D0 AC2FEF90 */ sw $t7, %lo(D_800DEF90)($at)
/* 0A3D44 8011B2D4 3C01800F */ lui $at, %hi(D_800E98E0)
/* 0A3D48 8011B2D8 00300821 */  addu  $at, $at, $s0
/* 0A3D4C 8011B2DC AC2998E0 */ sw $t1, %lo(D_800E98E0)($at)
/* 0A3D50 8011B2E0 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 0A3D54 8011B2E4 00300821 */  addu  $at, $at, $s0
/* 0A3D58 8011B2E8 240A005A */  li    $t2, 90
/* 0A3D5C 8011B2EC AC2A9AA0 */ sw $t2, %lo(D_800E9AA0)($at)
/* 0A3D60 8011B2F0 3C018013 */  lui   $at, %hi(D_80128D68) # $at, 0x8013
/* 0A3D64 8011B2F4 C4288D68 */  lwc1  $f8, %lo(D_80128D68)($at)
/* 0A3D68 8011B2F8 3C014060 */  li    $at, 0x40600000 # 3.500000
/* 0A3D6C 8011B2FC 8FAB0020 */  lw    $t3, 0x20($sp)
/* 0A3D70 8011B300 44815000 */  mtc1  $at, $f10
/* 0A3D74 8011B304 3C01800E */ lui $at, %hi(D_800E3050)
/* 0A3D78 8011B308 00300821 */  addu  $at, $at, $s0
/* 0A3D7C 8011B30C E5680000 */  swc1  $f8, ($t3)
/* 0A3D80 8011B310 E42A3050 */ swc1 $f10, %lo(D_800E3050)($at)
/* 0A3D84 8011B314 8FBF001C */  lw    $ra, 0x1c($sp)
.L8011B318_ovl2:
/* 0A3D88 8011B318 8FB00018 */  lw    $s0, 0x18($sp)
/* 0A3D8C 8011B31C 27BD0030 */  addiu $sp, $sp, 0x30
/* 0A3D90 8011B320 03E00008 */  jr    $ra
/* 0A3D94 8011B324 00000000 */   nop   
.type func_8011B22C, @function
.size func_8011B22C, . - func_8011B22C
