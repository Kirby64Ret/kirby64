glabel func_80112600
/* 09B070 80112600 3C078013 */  lui   $a3, %hi(D_8012D934) # $a3, 0x8013
/* 09B074 80112604 24E7D934 */  addiu $a3, %lo(D_8012D934) # addiu $a3, $a3, -0x26cc
/* 09B078 80112608 8CE30000 */  lw    $v1, ($a3)
/* 09B07C 8011260C C4840004 */  lwc1  $f4, 4($a0)
/* 09B080 80112610 C4880008 */  lwc1  $f8, 8($a0)
/* 09B084 80112614 C4660048 */  lwc1  $f6, 0x48($v1)
/* 09B088 80112618 C48A0010 */  lwc1  $f10, 0x10($a0)
/* 09B08C 8011261C C492000C */  lwc1  $f18, 0xc($a0)
/* 09B090 80112620 46062000 */  add.s $f0, $f4, $f6
/* 09B094 80112624 C464004C */  lwc1  $f4, 0x4c($v1)
/* 09B098 80112628 44808000 */  mtc1  $zero, $f16
/* 09B09C 8011262C 24040002 */  li    $a0, 2
/* 09B0A0 80112630 00002825 */  move  $a1, $zero
/* 09B0A4 80112634 24660060 */  addiu $a2, $v1, 0x60
/* 09B0A8 80112638 460A4080 */  add.s $f2, $f8, $f10
/* 09B0AC 8011263C 46049300 */  add.s $f12, $f18, $f4
.L80112640_ovl2:
/* 09B0B0 80112640 C4C60000 */  lwc1  $f6, ($a2)
/* 09B0B4 80112644 C4CA0004 */  lwc1  $f10, 4($a2)
/* 09B0B8 80112648 46003202 */  mul.s $f8, $f6, $f0
/* 09B0BC 8011264C C4C60008 */  lwc1  $f6, 8($a2)
/* 09B0C0 80112650 46025482 */  mul.s $f18, $f10, $f2
/* 09B0C4 80112654 46124100 */  add.s $f4, $f8, $f18
/* 09B0C8 80112658 460C3282 */  mul.s $f10, $f6, $f12
/* 09B0CC 8011265C C4D2000C */  lwc1  $f18, 0xc($a2)
/* 09B0D0 80112660 460A2200 */  add.s $f8, $f4, $f10
/* 09B0D4 80112664 46124380 */  add.s $f14, $f8, $f18
/* 09B0D8 80112668 460E803C */  c.lt.s $f16, $f14
/* 09B0DC 8011266C 00000000 */  nop   
/* 09B0E0 80112670 45020007 */  bc1fl .L80112690_ovl2
/* 09B0E4 80112674 24A50001 */   addiu $a1, $a1, 1
/* 09B0E8 80112678 AC650084 */  sw    $a1, 0x84($v1)
/* 09B0EC 8011267C 8CEE0000 */  lw    $t6, ($a3)
/* 09B0F0 80112680 24020001 */  li    $v0, 1
/* 09B0F4 80112684 03E00008 */  jr    $ra
/* 09B0F8 80112688 E5CE0080 */   swc1  $f14, 0x80($t6)
.type func_80112600, @function

/* 09B0FC 8011268C 24A50001 */  addiu $a1, $a1, 1
.L80112690_ovl2:
/* 09B100 80112690 14A4FFEB */  bne   $a1, $a0, .L80112640_ovl2
/* 09B104 80112694 24C60010 */   addiu $a2, $a2, 0x10
/* 09B108 80112698 00001025 */  move  $v0, $zero
/* 09B10C 8011269C 03E00008 */  jr    $ra
/* 09B110 801126A0 00000000 */   nop   
.type func_80112600, @function
.size func_80112600, . - func_80112600
