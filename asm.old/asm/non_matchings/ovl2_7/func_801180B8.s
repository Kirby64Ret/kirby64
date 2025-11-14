glabel func_801180B8
/* 0A0B28 801180B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A0B2C 801180BC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0A0B30 801180C0 0C045E0D */  jal   func_80117834
/* 0A0B34 801180C4 AFB00018 */   sw    $s0, 0x18($sp)
/* 0A0B38 801180C8 3C10800D */  lui   $s0, %hi(D_800D7098) # $s0, 0x800d
/* 0A0B3C 801180CC 26107098 */  addiu $s0, %lo(D_800D7098) # addiu $s0, $s0, 0x7098
/* 0A0B40 801180D0 8E0E000C */  lw    $t6, 0xc($s0)
/* 0A0B44 801180D4 15C00006 */  bnez  $t6, .L801180F0_ovl2
/* 0A0B48 801180D8 00000000 */   nop   
.L801180DC_ovl2:
/* 0A0B4C 801180DC 0C002DAF */  jal   finish_current_thread
/* 0A0B50 801180E0 24040001 */   li    $a0, 1
/* 0A0B54 801180E4 8E0F000C */  lw    $t7, 0xc($s0)
/* 0A0B58 801180E8 11E0FFFC */  beqz  $t7, .L801180DC_ovl2
/* 0A0B5C 801180EC 00000000 */   nop   
.L801180F0_ovl2:
/* 0A0B60 801180F0 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0A0B64 801180F4 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0A0B68 801180F8 3C018013 */  lui   $at, %hi(D_80128D5C) # $at, 0x8013
/* 0A0B6C 801180FC C4248D5C */  lwc1  $f4, %lo(D_80128D5C)($at)
/* 0A0B70 80118100 8F190000 */  lw    $t9, ($t8)
/* 0A0B74 80118104 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0A0B78 80118108 00002025 */  move  $a0, $zero
/* 0A0B7C 8011810C 00194080 */  sll   $t0, $t9, 2
/* 0A0B80 80118110 00280821 */  addu  $at, $at, $t0
/* 0A0B84 80118114 0C00236A */  jal   func_80008DA8
/* 0A0B88 80118118 E4242790 */ swc1 $f4, %lo(gEntitiesNextPosYArray)($at)
/* 0A0B8C 8011811C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0A0B90 80118120 8FB00018 */  lw    $s0, 0x18($sp)
/* 0A0B94 80118124 27BD0020 */  addiu $sp, $sp, 0x20
/* 0A0B98 80118128 03E00008 */  jr    $ra
/* 0A0B9C 8011812C 00000000 */   nop   
.type func_801180B8, @function
.size func_801180B8, . - func_801180B8
