glabel func_8011AA7C
/* 0A34EC 8011AA7C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0A34F0 8011AA80 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A34F4 8011AA84 8C830000 */  lw    $v1, ($a0)
/* 0A34F8 8011AA88 3C02800E */  lui   $v0, %hi(gEntitiesNextPosYArray) # $v0, 0x800e
/* 0A34FC 8011AA8C 24422790 */  addiu $v0, %lo(gEntitiesNextPosYArray) # addiu $v0, $v0, 0x2790
/* 0A3500 8011AA90 00037080 */  sll   $t6, $v1, 2
/* 0A3504 8011AA94 004E7821 */  addu  $t7, $v0, $t6
/* 0A3508 8011AA98 C5E60000 */  lwc1  $f6, ($t7)
/* 0A350C 8011AA9C C4440000 */  lwc1  $f4, ($v0)
/* 0A3510 8011AAA0 3C02800E */ lui $v0, %hi(D_800E77A0)
/* 0A3514 8011AAA4 0003C040 */  sll   $t8, $v1, 1
/* 0A3518 8011AAA8 4604303E */  c.le.s $f6, $f4
/* 0A351C 8011AAAC 00581021 */  addu  $v0, $v0, $t8
/* 0A3520 8011AAB0 4502002F */  bc1fl .L8011AB70_ovl2
/* 0A3524 8011AAB4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A3528 8011AAB8 944277A0 */ lhu $v0, %lo(D_800E77A0)($v0)
/* 0A352C 8011AABC 3C0D8012 */  lui   $t5, %hi(D_8011A9EC) # $t5, 0x8012
/* 0A3530 8011AAC0 25ADA9EC */  addiu $t5, %lo(D_8011A9EC) # addiu $t5, $t5, -0x5614
/* 0A3534 8011AAC4 2C4100F5 */  sltiu $at, $v0, 0xf5
/* 0A3538 8011AAC8 14200017 */  bnez  $at, .L8011AB28_ovl2
/* 0A353C 8011AACC 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0A3540 8011AAD0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0A3544 8011AAD4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0A3548 8011AAD8 3C198011 */  lui   $t9, %hi(func_80112B4C) # $t9, 0x8011
/* 0A354C 8011AADC 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A3550 8011AAE0 8D090000 */  lw    $t1, ($t0)
/* 0A3554 8011AAE4 2442FF0F */  addiu $v0, $v0, -0xf1
/* 0A3558 8011AAE8 3C0C8012 */  lui   $t4, %hi(D_80126DCC) # $t4, 0x8012
/* 0A355C 8011AAEC 00095080 */  sll   $t2, $t1, 2
/* 0A3560 8011AAF0 002A0821 */  addu  $at, $at, $t2
/* 0A3564 8011AAF4 27392B4C */  addiu $t9, %lo(func_80112B4C) # addiu $t9, $t9, 0x2b4c
/* 0A3568 8011AAF8 258C6DCC */  addiu $t4, %lo(D_80126DCC) # addiu $t4, $t4, 0x6dcc
/* 0A356C 8011AAFC 000258C0 */  sll   $t3, $v0, 3
/* 0A3570 8011AB00 AC39EF90 */ sw $t9, %lo(D_800DEF90)($at)
/* 0A3574 8011AB04 016C1821 */  addu  $v1, $t3, $t4
/* 0A3578 8011AB08 8C640004 */  lw    $a0, 4($v1)
/* 0A357C 8011AB0C 0C02A806 */  jal   func_800AA018
/* 0A3580 8011AB10 AFA3001C */   sw    $v1, 0x1c($sp)
/* 0A3584 8011AB14 8FA3001C */  lw    $v1, 0x1c($sp)
/* 0A3588 8011AB18 0C02A806 */  jal   func_800AA018
/* 0A358C 8011AB1C 8C640000 */   lw    $a0, ($v1)
/* 0A3590 8011AB20 10000013 */  b     .L8011AB70_ovl2
/* 0A3594 8011AB24 8FBF0014 */   lw    $ra, 0x14($sp)
.L8011AB28_ovl2:
/* 0A3598 8011AB28 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0A359C 8011AB2C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A35A0 8011AB30 2442FF2A */  addiu $v0, $v0, -0xd6
/* 0A35A4 8011AB34 8DCF0000 */  lw    $t7, ($t6)
/* 0A35A8 8011AB38 3C098012 */  lui   $t1, %hi(D_80126DCC) # $t1, 0x8012
/* 0A35AC 8011AB3C 25296DCC */  addiu $t1, %lo(D_80126DCC) # addiu $t1, $t1, 0x6dcc
/* 0A35B0 8011AB40 000FC080 */  sll   $t8, $t7, 2
/* 0A35B4 8011AB44 00380821 */  addu  $at, $at, $t8
/* 0A35B8 8011AB48 000240C0 */  sll   $t0, $v0, 3
/* 0A35BC 8011AB4C AC2DEF90 */ sw $t5, %lo(D_800DEF90)($at)
/* 0A35C0 8011AB50 01091821 */  addu  $v1, $t0, $t1
/* 0A35C4 8011AB54 8C640004 */  lw    $a0, 4($v1)
/* 0A35C8 8011AB58 0C02A806 */  jal   func_800AA018
/* 0A35CC 8011AB5C AFA3001C */   sw    $v1, 0x1c($sp)
/* 0A35D0 8011AB60 8FA3001C */  lw    $v1, 0x1c($sp)
/* 0A35D4 8011AB64 0C02A806 */  jal   func_800AA018
/* 0A35D8 8011AB68 8C640000 */   lw    $a0, ($v1)
/* 0A35DC 8011AB6C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011AB70_ovl2:
/* 0A35E0 8011AB70 27BD0028 */  addiu $sp, $sp, 0x28
/* 0A35E4 8011AB74 03E00008 */  jr    $ra
/* 0A35E8 8011AB78 00000000 */   nop   
.type func_8011AA7C, @function
.size func_8011AA7C, . - func_8011AA7C
