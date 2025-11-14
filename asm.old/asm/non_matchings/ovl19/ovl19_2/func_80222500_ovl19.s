glabel func_80222500_ovl19
/* 242C10 80222500 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 242C14 80222504 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 242C18 80222508 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 242C1C 8022250C AFBF0014 */  sw    $ra, 0x14($sp)
/* 242C20 80222510 8C4E0000 */  lw    $t6, ($v0)
/* 242C24 80222514 3C18800E */ lui $t8, %hi(D_800DFBD0)
/* 242C28 80222518 44800000 */  mtc1  $zero, $f0
/* 242C2C 8022251C 000E7880 */  sll   $t7, $t6, 2
/* 242C30 80222520 030FC021 */  addu  $t8, $t8, $t7
/* 242C34 80222524 8F18FBD0 */ lw $t8, %lo(D_800DFBD0)($t8)
/* 242C38 80222528 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 242C3C 8022252C 44812000 */  mtc1  $at, $f4
/* 242C40 80222530 8F050004 */  lw    $a1, 4($t8)
/* 242C44 80222534 E7A00038 */  swc1  $f0, 0x38($sp)
/* 242C48 80222538 E7A0003C */  swc1  $f0, 0x3c($sp)
/* 242C4C 8022253C E7A40040 */  swc1  $f4, 0x40($sp)
/* 242C50 80222540 8C460000 */  lw    $a2, ($v0)
/* 242C54 80222544 27A40020 */  addiu $a0, $sp, 0x20
/* 242C58 80222548 0C02C8D0 */  jal   func_800B2340
/* 242C5C 8022254C AFA50044 */   sw    $a1, 0x44($sp)
/* 242C60 80222550 3C01800E */  lui   $at, %hi(gEntitiesNextPosXArray) # $at, 0x800e
/* 242C64 80222554 C42625D0 */  lwc1  $f6, %lo(gEntitiesNextPosXArray)($at)
/* 242C68 80222558 C7A80020 */  lwc1  $f8, 0x20($sp)
/* 242C6C 8022255C 3C01800E */  lui   $at, %hi(gEntitiesNextPosZArray) # $at, 0x800e
/* 242C70 80222560 C4322950 */  lwc1  $f18, %lo(gEntitiesNextPosZArray)($at)
/* 242C74 80222564 C7A40028 */  lwc1  $f4, 0x28($sp)
/* 242C78 80222568 46083281 */  sub.s $f10, $f6, $f8
/* 242C7C 8022256C 44808000 */  mtc1  $zero, $f16
/* 242C80 80222570 27A40038 */  addiu $a0, $sp, 0x38
/* 242C84 80222574 46049181 */  sub.s $f6, $f18, $f4
/* 242C88 80222578 E7AA002C */  swc1  $f10, 0x2c($sp)
/* 242C8C 8022257C 27A5002C */  addiu $a1, $sp, 0x2c
/* 242C90 80222580 E7B00030 */  swc1  $f16, 0x30($sp)
/* 242C94 80222584 0C03E270 */  jal   vec3_abs_angle_diff
/* 242C98 80222588 E7A60034 */   swc1  $f6, 0x34($sp)
/* 242C9C 8022258C 8FB90044 */  lw    $t9, 0x44($sp)
/* 242CA0 80222590 E7200034 */  swc1  $f0, 0x34($t9)
/* 242CA4 80222594 8FBF0014 */  lw    $ra, 0x14($sp)
/* 242CA8 80222598 27BD0048 */  addiu $sp, $sp, 0x48
/* 242CAC 8022259C 03E00008 */  jr    $ra
/* 242CB0 802225A0 00000000 */   nop   
.type func_80222500_ovl19, @function
.size func_80222500_ovl19, . - func_80222500_ovl19
