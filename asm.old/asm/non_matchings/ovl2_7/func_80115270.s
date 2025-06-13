glabel func_80115270
/* 09DCE0 80115270 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09DCE4 80115274 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09DCE8 80115278 AFA40020 */  sw    $a0, 0x20($sp)
/* 09DCEC 8011527C 8C8F004C */  lw    $t7, 0x4c($a0)
/* 09DCF0 80115280 0C047891 */  jal   func_8011E244
/* 09DCF4 80115284 AFAF001C */   sw    $t7, 0x1c($sp)
/* 09DCF8 80115288 8FB8001C */  lw    $t8, 0x1c($sp)
/* 09DCFC 8011528C 8FA80020 */  lw    $t0, 0x20($sp)
/* 09DD00 80115290 3C0B800E */ lui $t3, %hi(D_800E77A0)
/* 09DD04 80115294 93190000 */  lbu   $t9, ($t8)
/* 09DD08 80115298 54590022 */  bnel  $v0, $t9, .L80115324_ovl2
/* 09DD0C 8011529C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 09DD10 801152A0 8D090000 */  lw    $t1, ($t0)
/* 09DD14 801152A4 3C0D8012 */  lui   $t5, %hi(D_80124E14) # $t5, 0x8012
/* 09DD18 801152A8 25AD4E14 */  addiu $t5, %lo(D_80124E14) # addiu $t5, $t5, 0x4e14
/* 09DD1C 801152AC 00095040 */  sll   $t2, $t1, 1
/* 09DD20 801152B0 016A5821 */  addu  $t3, $t3, $t2
/* 09DD24 801152B4 956B77A0 */ lhu $t3, %lo(D_800E77A0)($t3)
/* 09DD28 801152B8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 09DD2C 801152BC C42C6B10 */  lwc1  $f12, %lo(D_800D6B10)($at)
/* 09DD30 801152C0 000B60C0 */  sll   $t4, $t3, 3
/* 09DD34 801152C4 018B6023 */  subu  $t4, $t4, $t3
/* 09DD38 801152C8 000C6080 */  sll   $t4, $t4, 2
/* 09DD3C 801152CC 018D7021 */  addu  $t6, $t4, $t5
/* 09DD40 801152D0 0C02BB30 */  jal   func_800AECC0
/* 09DD44 801152D4 AFAE0018 */   sw    $t6, 0x18($sp)
/* 09DD48 801152D8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 09DD4C 801152DC 0C02BB48 */  jal   func_800AED20
/* 09DD50 801152E0 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 09DD54 801152E4 8FA40020 */  lw    $a0, 0x20($sp)
/* 09DD58 801152E8 0C044CC0 */  jal   func_80113300
/* 09DD5C 801152EC 00002825 */   move  $a1, $zero
/* 09DD60 801152F0 8FAF0018 */  lw    $t7, 0x18($sp)
/* 09DD64 801152F4 0C02A806 */  jal   func_800AA018
/* 09DD68 801152F8 8DE40008 */   lw    $a0, 8($t7)
/* 09DD6C 801152FC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 09DD70 80115300 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 09DD74 80115304 8FB80018 */  lw    $t8, 0x18($sp)
/* 09DD78 80115308 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09DD7C 8011530C 8D090000 */  lw    $t1, ($t0)
/* 09DD80 80115310 8F190014 */  lw    $t9, 0x14($t8)
/* 09DD84 80115314 00095080 */  sll   $t2, $t1, 2
/* 09DD88 80115318 002A0821 */  addu  $at, $at, $t2
/* 09DD8C 8011531C AC39EF90 */ sw $t9, %lo(D_800DEF90)($at)
/* 09DD90 80115320 8FBF0014 */  lw    $ra, 0x14($sp)
.L80115324_ovl2:
/* 09DD94 80115324 27BD0020 */  addiu $sp, $sp, 0x20
/* 09DD98 80115328 03E00008 */  jr    $ra
/* 09DD9C 8011532C 00000000 */   nop   
.type func_80115270, @function
.size func_80115270, . - func_80115270
