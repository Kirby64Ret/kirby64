glabel func_801123AC
/* 09AE1C 801123AC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 09AE20 801123B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09AE24 801123B4 AFA40028 */  sw    $a0, 0x28($sp)
/* 09AE28 801123B8 0C00D604 */  jal   func_80035810_ovl2
/* 09AE2C 801123BC C48C0024 */   lwc1  $f12, 0x24($a0)
/* 09AE30 801123C0 8FAF0028 */  lw    $t7, 0x28($sp)
/* 09AE34 801123C4 C5EC0024 */  lwc1  $f12, 0x24($t7)
/* 09AE38 801123C8 0C00B5B8 */  jal   func_8002D6E0_ovl2
/* 09AE3C 801123CC E7A0001C */   swc1  $f0, 0x1c($sp)
/* 09AE40 801123D0 8FA20028 */  lw    $v0, 0x28($sp)
/* 09AE44 801123D4 3C038013 */  lui   $v1, %hi(D_8012D934) # $v1, 0x8013
/* 09AE48 801123D8 2463D934 */  addiu $v1, %lo(D_8012D934) # addiu $v1, $v1, -0x26cc
/* 09AE4C 801123DC C444001C */  lwc1  $f4, 0x1c($v0)
/* 09AE50 801123E0 8C780000 */  lw    $t8, ($v1)
/* 09AE54 801123E4 C7A2001C */  lwc1  $f2, 0x1c($sp)
/* 09AE58 801123E8 46002182 */  mul.s $f6, $f4, $f0
/* 09AE5C 801123EC 24420010 */  addiu $v0, $v0, 0x10
/* 09AE60 801123F0 E7060040 */  swc1  $f6, 0x40($t8)
/* 09AE64 801123F4 C448000C */  lwc1  $f8, 0xc($v0)
/* 09AE68 801123F8 8C790000 */  lw    $t9, ($v1)
/* 09AE6C 801123FC 46024282 */  mul.s $f10, $f8, $f2
/* 09AE70 80112400 44804000 */  mtc1  $zero, $f8
/* 09AE74 80112404 E72A0044 */  swc1  $f10, 0x44($t9)
/* 09AE78 80112408 C4500010 */  lwc1  $f16, 0x10($v0)
/* 09AE7C 8011240C 8C680000 */  lw    $t0, ($v1)
/* 09AE80 80112410 46008482 */  mul.s $f18, $f16, $f0
/* 09AE84 80112414 E5120048 */  swc1  $f18, 0x48($t0)
/* 09AE88 80112418 C4440010 */  lwc1  $f4, 0x10($v0)
/* 09AE8C 8011241C 8C690000 */  lw    $t1, ($v1)
/* 09AE90 80112420 46022182 */  mul.s $f6, $f4, $f2
/* 09AE94 80112424 E526004C */  swc1  $f6, 0x4c($t1)
/* 09AE98 80112428 C44A000C */  lwc1  $f10, 0xc($v0)
/* 09AE9C 8011242C 460A403C */  c.lt.s $f8, $f10
/* 09AEA0 80112430 00000000 */  nop   
/* 09AEA4 80112434 45020007 */  bc1fl .L80112454_ovl2
/* 09AEA8 80112438 8C6C0000 */   lw    $t4, ($v1)
/* 09AEAC 8011243C 8C6A0000 */  lw    $t2, ($v1)
/* 09AEB0 80112440 E5400050 */  swc1  $f0, 0x50($t2)
/* 09AEB4 80112444 8C6B0000 */  lw    $t3, ($v1)
/* 09AEB8 80112448 10000007 */  b     .L80112468_ovl2
/* 09AEBC 8011244C E5620054 */   swc1  $f2, 0x54($t3)
/* 09AEC0 80112450 8C6C0000 */  lw    $t4, ($v1)
.L80112454_ovl2:
/* 09AEC4 80112454 46000407 */  neg.s $f16, $f0
/* 09AEC8 80112458 46001487 */  neg.s $f18, $f2
/* 09AECC 8011245C E5900050 */  swc1  $f16, 0x50($t4)
/* 09AED0 80112460 8C6D0000 */  lw    $t5, ($v1)
/* 09AED4 80112464 E5B20054 */  swc1  $f18, 0x54($t5)
.L80112468_ovl2:
/* 09AED8 80112468 8C620000 */  lw    $v0, ($v1)
/* 09AEDC 8011246C C4440050 */  lwc1  $f4, 0x50($v0)
/* 09AEE0 80112470 46002187 */  neg.s $f6, $f4
/* 09AEE4 80112474 E4460058 */  swc1  $f6, 0x58($v0)
/* 09AEE8 80112478 8C620000 */  lw    $v0, ($v1)
/* 09AEEC 8011247C C4480054 */  lwc1  $f8, 0x54($v0)
/* 09AEF0 80112480 46004287 */  neg.s $f10, $f8
/* 09AEF4 80112484 E44A005C */  swc1  $f10, 0x5c($v0)
/* 09AEF8 80112488 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09AEFC 8011248C 27BD0028 */  addiu $sp, $sp, 0x28
/* 09AF00 80112490 03E00008 */  jr    $ra
/* 09AF04 80112494 00000000 */   nop   
