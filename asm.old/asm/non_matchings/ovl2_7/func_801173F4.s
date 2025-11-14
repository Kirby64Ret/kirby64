glabel func_801173F4
/* 09FE64 801173F4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 09FE68 801173F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09FE6C 801173FC 8C8E004C */  lw    $t6, 0x4c($a0)
/* 09FE70 80117400 3C18800E */ lui $t8, %hi(D_800E77A0)
/* 09FE74 80117404 3C018012 */ lui $at, %hi(D_80126CF4)
/* 09FE78 80117408 AFAE0024 */  sw    $t6, 0x24($sp)
/* 09FE7C 8011740C 8C850000 */  lw    $a1, ($a0)
/* 09FE80 80117410 00057840 */  sll   $t7, $a1, 1
/* 09FE84 80117414 030FC021 */  addu  $t8, $t8, $t7
/* 09FE88 80117418 971877A0 */ lhu $t8, %lo(D_800E77A0)($t8)
/* 09FE8C 8011741C AFA50020 */  sw    $a1, 0x20($sp)
/* 09FE90 80117420 0018C880 */  sll   $t9, $t8, 2
/* 09FE94 80117424 00390821 */  addu  $at, $at, $t9
/* 09FE98 80117428 C42C6CF4 */ lwc1 $f12, %lo(D_80126CF4)($at)
/* 09FE9C 8011742C 0C02D249 */  jal   D_800B4924_ovl2
/* 09FEA0 80117430 E7AC001C */   swc1  $f12, 0x1c($sp)
/* 09FEA4 80117434 8FA50020 */  lw    $a1, 0x20($sp)
/* 09FEA8 80117438 3C08800E */  lui   $t0, %hi(gEntitiesNextPosYArray) # $t0, 0x800e
/* 09FEAC 8011743C 25082790 */  addiu $t0, %lo(gEntitiesNextPosYArray) # addiu $t0, $t0, 0x2790
/* 09FEB0 80117440 00051880 */  sll   $v1, $a1, 2
/* 09FEB4 80117444 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 09FEB8 80117448 00230821 */  addu  $at, $at, $v1
/* 09FEBC 8011744C 00681021 */  addu  $v0, $v1, $t0
/* 09FEC0 80117450 C4420000 */  lwc1  $f2, ($v0)
/* 09FEC4 80117454 C420A6E0 */ lwc1 $f0, %lo(D_800EA6E0)($at)
/* 09FEC8 80117458 C7AC001C */  lwc1  $f12, 0x1c($sp)
/* 09FECC 8011745C 46001101 */  sub.s $f4, $f2, $f0
/* 09FED0 80117460 460C203C */  c.lt.s $f4, $f12
/* 09FED4 80117464 00000000 */  nop   
/* 09FED8 80117468 45020019 */  bc1fl .L801174D0_ovl2
/* 09FEDC 8011746C 4602003C */   c.lt.s $f0, $f2
/* 09FEE0 80117470 460C0080 */  add.s $f2, $f0, $f12
/* 09FEE4 80117474 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 09FEE8 80117478 00230821 */  addu  $at, $at, $v1
/* 09FEEC 8011747C 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 09FEF0 80117480 E4420000 */  swc1  $f2, ($v0)
/* 09FEF4 80117484 C4262CD0 */ lwc1 $f6, %lo(gEntitiesPosYArray)($at)
/* 09FEF8 80117488 3C01800E */ lui $at, %hi(D_800E3210)
/* 09FEFC 8011748C 00230821 */  addu  $at, $at, $v1
/* 09FF00 80117490 46061201 */  sub.s $f8, $f2, $f6
/* 09FF04 80117494 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 09FF08 80117498 2409000A */  li    $t1, 10
/* 09FF0C 8011749C 3C0A8011 */  lui   $t2, %hi(D_80117328) # $t2, 0x8011
/* 09FF10 801174A0 E4283210 */ swc1 $f8, %lo(D_800E3210)($at)
/* 09FF14 801174A4 3C01800F */ lui $at, %hi(D_800E98E0)
/* 09FF18 801174A8 00230821 */  addu  $at, $at, $v1
/* 09FF1C 801174AC AC2998E0 */ sw $t1, %lo(D_800E98E0)($at)
/* 09FF20 801174B0 8D6C0000 */  lw    $t4, ($t3)
/* 09FF24 801174B4 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09FF28 801174B8 254A7328 */  addiu $t2, %lo(D_80117328) # addiu $t2, $t2, 0x7328
/* 09FF2C 801174BC 000C6880 */  sll   $t5, $t4, 2
/* 09FF30 801174C0 002D0821 */  addu  $at, $at, $t5
/* 09FF34 801174C4 10000026 */  b     .L80117560_ovl2
/* 09FF38 801174C8 AC2AEF90 */ sw $t2, %lo(D_800DEF90)($at)
/* 09FF3C 801174CC 4602003C */  c.lt.s $f0, $f2
.L801174D0_ovl2:
/* 09FF40 801174D0 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 09FF44 801174D4 00230821 */  addu  $at, $at, $v1
/* 09FF48 801174D8 45000007 */  bc1f  .L801174F8_ovl2
/* 09FF4C 801174DC 00000000 */   nop   
/* 09FF50 801174E0 E4400000 */  swc1  $f0, ($v0)
/* 09FF54 801174E4 C42A2CD0 */ lwc1 $f10, %lo(gEntitiesPosYArray)($at)
/* 09FF58 801174E8 3C01800E */ lui $at, %hi(D_800E3210)
/* 09FF5C 801174EC 00230821 */  addu  $at, $at, $v1
/* 09FF60 801174F0 460A0401 */  sub.s $f16, $f0, $f10
/* 09FF64 801174F4 E4303210 */ swc1 $f16, %lo(D_800E3210)($at)
.L801174F8_ovl2:
/* 09FF68 801174F8 0C047891 */  jal   func_8011E244
/* 09FF6C 801174FC AFA30018 */   sw    $v1, 0x18($sp)
/* 09FF70 80117500 8FAE0024 */  lw    $t6, 0x24($sp)
/* 09FF74 80117504 8FA30018 */  lw    $v1, 0x18($sp)
/* 09FF78 80117508 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 09FF7C 8011750C 91CF0000 */  lbu   $t7, ($t6)
/* 09FF80 80117510 3C188011 */  lui   $t8, %hi(D_80117210) # $t8, 0x8011
/* 09FF84 80117514 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 09FF88 80117518 504F0012 */  beql  $v0, $t7, .L80117564_ovl2
/* 09FF8C 8011751C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 09FF90 80117520 44819000 */  mtc1  $at, $f18
/* 09FF94 80117524 3C01800E */ lui $at, %hi(D_800E3750)
/* 09FF98 80117528 00230821 */  addu  $at, $at, $v1
/* 09FF9C 8011752C E4323750 */ swc1 $f18, %lo(D_800E3750)($at)
/* 09FFA0 80117530 3C018013 */  lui   $at, %hi(D_80128D34) # $at, 0x8013
/* 09FFA4 80117534 C4248D34 */  lwc1  $f4, %lo(D_80128D34)($at)
/* 09FFA8 80117538 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 09FFAC 8011753C 3C01800E */ lui $at, %hi(D_800E3C90)
/* 09FFB0 80117540 00230821 */  addu  $at, $at, $v1
/* 09FFB4 80117544 E4243C90 */ swc1 $f4, %lo(D_800E3C90)($at)
/* 09FFB8 80117548 8F280000 */  lw    $t0, ($t9)
/* 09FFBC 8011754C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09FFC0 80117550 27187210 */  addiu $t8, %lo(D_80117210) # addiu $t8, $t8, 0x7210
/* 09FFC4 80117554 00084880 */  sll   $t1, $t0, 2
/* 09FFC8 80117558 00290821 */  addu  $at, $at, $t1
/* 09FFCC 8011755C AC38EF90 */ sw $t8, %lo(D_800DEF90)($at)
.L80117560_ovl2:
/* 09FFD0 80117560 8FBF0014 */  lw    $ra, 0x14($sp)
.L80117564_ovl2:
/* 09FFD4 80117564 27BD0028 */  addiu $sp, $sp, 0x28
/* 09FFD8 80117568 03E00008 */  jr    $ra
/* 09FFDC 8011756C 00000000 */   nop   
.type func_801173F4, @function
.size func_801173F4, . - func_801173F4
