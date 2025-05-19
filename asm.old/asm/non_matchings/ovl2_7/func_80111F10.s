glabel func_80111F10
/* 09A980 80111F10 3C0E800D */  lui   $t6, %hi(D_800D799C) # $t6, 0x800d
/* 09A984 80111F14 8DCE799C */  lw    $t6, %lo(D_800D799C)($t6)
/* 09A988 80111F18 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 09A98C 80111F1C AFBF001C */  sw    $ra, 0x1c($sp)
/* 09A990 80111F20 AFB00018 */  sw    $s0, 0x18($sp)
/* 09A994 80111F24 8DC2003C */  lw    $v0, 0x3c($t6)
/* 09A998 80111F28 3C108013 */  lui   $s0, %hi(D_8012D934) # $s0, 0x8013
/* 09A99C 80111F2C 8E10D934 */  lw    $s0, %lo(D_8012D934)($s0)
/* 09A9A0 80111F30 27A4004C */  addiu $a0, $sp, 0x4c
/* 09A9A4 80111F34 24450048 */  addiu $a1, $v0, 0x48
/* 09A9A8 80111F38 2446003C */  addiu $a2, $v0, 0x3c
/* 09A9AC 80111F3C 0C006389 */  jal   vec3_sub_normalize
/* 09A9B0 80111F40 AFA2005C */   sw    $v0, 0x5c($sp)
/* 09A9B4 80111F44 8FA2005C */  lw    $v0, 0x5c($sp)
/* 09A9B8 80111F48 27A5004C */  addiu $a1, $sp, 0x4c
/* 09A9BC 80111F4C 27A60040 */  addiu $a2, $sp, 0x40
/* 09A9C0 80111F50 24440054 */  addiu $a0, $v0, 0x54
/* 09A9C4 80111F54 0C0065D0 */  jal   vec3_normalized_cross_product
/* 09A9C8 80111F58 AFA40020 */   sw    $a0, 0x20($sp)
/* 09A9CC 80111F5C 8FA40020 */  lw    $a0, 0x20($sp)
/* 09A9D0 80111F60 27A5004C */  addiu $a1, $sp, 0x4c
/* 09A9D4 80111F64 0C0470B5 */  jal   vec3_cross_product
/* 09A9D8 80111F68 27A60040 */   addiu $a2, $sp, 0x40
/* 09A9DC 80111F6C 27A4004C */  addiu $a0, $sp, 0x4c
/* 09A9E0 80111F70 27A50040 */  addiu $a1, $sp, 0x40
/* 09A9E4 80111F74 0C0470B5 */  jal   vec3_cross_product
/* 09A9E8 80111F78 27A60034 */   addiu $a2, $sp, 0x34
/* 09A9EC 80111F7C C7A40040 */  lwc1  $f4, 0x40($sp)
/* 09A9F0 80111F80 44800000 */  mtc1  $zero, $f0
/* 09A9F4 80111F84 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 09A9F8 80111F88 E6040000 */  swc1  $f4, ($s0)
/* 09A9FC 80111F8C C7A60044 */  lwc1  $f6, 0x44($sp)
/* 09AA00 80111F90 E6060004 */  swc1  $f6, 4($s0)
/* 09AA04 80111F94 C7A80048 */  lwc1  $f8, 0x48($sp)
/* 09AA08 80111F98 E6080008 */  swc1  $f8, 8($s0)
/* 09AA0C 80111F9C C7AA0034 */  lwc1  $f10, 0x34($sp)
/* 09AA10 80111FA0 E60A0010 */  swc1  $f10, 0x10($s0)
/* 09AA14 80111FA4 C7B00038 */  lwc1  $f16, 0x38($sp)
/* 09AA18 80111FA8 44815000 */  mtc1  $at, $f10
/* 09AA1C 80111FAC E6100014 */  swc1  $f16, 0x14($s0)
/* 09AA20 80111FB0 C7B2003C */  lwc1  $f18, 0x3c($sp)
/* 09AA24 80111FB4 E6120018 */  swc1  $f18, 0x18($s0)
/* 09AA28 80111FB8 C7A4004C */  lwc1  $f4, 0x4c($sp)
/* 09AA2C 80111FBC E6040020 */  swc1  $f4, 0x20($s0)
/* 09AA30 80111FC0 C7A60050 */  lwc1  $f6, 0x50($sp)
/* 09AA34 80111FC4 E6060024 */  swc1  $f6, 0x24($s0)
/* 09AA38 80111FC8 C7A80054 */  lwc1  $f8, 0x54($sp)
/* 09AA3C 80111FCC E600000C */  swc1  $f0, 0xc($s0)
/* 09AA40 80111FD0 E600001C */  swc1  $f0, 0x1c($s0)
/* 09AA44 80111FD4 E600002C */  swc1  $f0, 0x2c($s0)
/* 09AA48 80111FD8 E6000030 */  swc1  $f0, 0x30($s0)
/* 09AA4C 80111FDC E6000034 */  swc1  $f0, 0x34($s0)
/* 09AA50 80111FE0 E6000038 */  swc1  $f0, 0x38($s0)
/* 09AA54 80111FE4 E60A003C */  swc1  $f10, 0x3c($s0)
/* 09AA58 80111FE8 E6080028 */  swc1  $f8, 0x28($s0)
/* 09AA5C 80111FEC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 09AA60 80111FF0 8FB00018 */  lw    $s0, 0x18($sp)
/* 09AA64 80111FF4 27BD0060 */  addiu $sp, $sp, 0x60
/* 09AA68 80111FF8 03E00008 */  jr    $ra
/* 09AA6C 80111FFC 00000000 */   nop   
.type func_80111F10, @function
.size func_80111F10, . - func_80111F10
