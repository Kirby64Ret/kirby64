glabel func_8010B860_ovl2
/* 0942D0 8010B860 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0942D4 8010B864 AFB00028 */  sw    $s0, 0x28($sp)
/* 0942D8 8010B868 00808025 */  move  $s0, $a0
/* 0942DC 8010B86C AFBF002C */  sw    $ra, 0x2c($sp)
/* 0942E0 8010B870 3C048013 */  lui   $a0, %hi(D_8012BCA0) # $a0, 0x8013
/* 0942E4 8010B874 0C041486 */  jal   func_80105218_ovl2
/* 0942E8 8010B878 2484BCA0 */   addiu $a0, %lo(D_8012BCA0) # addiu $a0, $a0, -0x4360
/* 0942EC 8010B87C 0C043182 */  jal   func_8010C608_ovl2
/* 0942F0 8010B880 02002025 */   move  $a0, $s0
/* 0942F4 8010B884 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 0942F8 8010B888 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 0942FC 8010B88C C464001C */  lwc1  $f4, 0x1c($v1)
/* 094300 8010B890 44803000 */  mtc1  $zero, $f6
/* 094304 8010B894 C4680020 */  lwc1  $f8, 0x20($v1)
/* 094308 8010B898 E7A40034 */  swc1  $f4, 0x34($sp)
/* 09430C 8010B89C E7A60038 */  swc1  $f6, 0x38($sp)
/* 094310 8010B8A0 E7A8003C */  swc1  $f8, 0x3c($sp)
/* 094314 8010B8A4 C60A0004 */  lwc1  $f10, 4($s0)
/* 094318 8010B8A8 26020010 */  addiu $v0, $s0, 0x10
/* 09431C 8010B8AC 27A4004C */  addiu $a0, $sp, 0x4c
/* 094320 8010B8B0 E7AA004C */  swc1  $f10, 0x4c($sp)
/* 094324 8010B8B4 C4520000 */  lwc1  $f18, ($v0)
/* 094328 8010B8B8 C6100008 */  lwc1  $f16, 8($s0)
/* 09432C 8010B8BC C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 094330 8010B8C0 C46A000C */  lwc1  $f10, 0xc($v1)
/* 094334 8010B8C4 46128100 */  add.s $f4, $f16, $f18
/* 094338 8010B8C8 27A50040 */  addiu $a1, $sp, 0x40
/* 09433C 8010B8CC 27A60034 */  addiu $a2, $sp, 0x34
/* 094340 8010B8D0 460A4400 */  add.s $f16, $f8, $f10
/* 094344 8010B8D4 E7A40050 */  swc1  $f4, 0x50($sp)
/* 094348 8010B8D8 C606000C */  lwc1  $f6, 0xc($s0)
/* 09434C 8010B8DC C7B20050 */  lwc1  $f18, 0x50($sp)
/* 094350 8010B8E0 E7B00040 */  swc1  $f16, 0x40($sp)
/* 094354 8010B8E4 E7A60054 */  swc1  $f6, 0x54($sp)
/* 094358 8010B8E8 C7A40054 */  lwc1  $f4, 0x54($sp)
/* 09435C 8010B8EC C4660010 */  lwc1  $f6, 0x10($v1)
/* 094360 8010B8F0 AFA20030 */  sw    $v0, 0x30($sp)
/* 094364 8010B8F4 AFA0001C */  sw    $zero, 0x1c($sp)
/* 094368 8010B8F8 46062200 */  add.s $f8, $f4, $f6
/* 09436C 8010B8FC AFA00018 */  sw    $zero, 0x18($sp)
/* 094370 8010B900 AFA00014 */  sw    $zero, 0x14($sp)
/* 094374 8010B904 AFA00010 */  sw    $zero, 0x10($sp)
/* 094378 8010B908 E7A80048 */  swc1  $f8, 0x48($sp)
/* 09437C 8010B90C 00003825 */  move  $a3, $zero
/* 094380 8010B910 0C04108F */  jal   func_8010423C_ovl2
/* 094384 8010B914 E7B20044 */   swc1  $f18, 0x44($sp)
/* 094388 8010B918 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 09438C 8010B91C 10400009 */  beqz  $v0, .L8010B944_ovl2
/* 094390 8010B920 2463BD00 */   addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 094394 8010B924 3C0E8013 */  lui   $t6, %hi(D_8012BCA0) # $t6, 0x8013
/* 094398 8010B928 95CEBCA0 */  lhu   $t6, %lo(D_8012BCA0)($t6)
/* 09439C 8010B92C 3C018013 */  lui   $at, %hi(D_8012BCA0) # $at, 0x8013
/* 0943A0 8010B930 24020001 */  li    $v0, 1
/* 0943A4 8010B934 31CF0007 */  andi  $t7, $t6, 7
/* 0943A8 8010B938 35F80040 */  ori   $t8, $t7, 0x40
/* 0943AC 8010B93C 1000003C */  b     .L8010BA30_ovl2
/* 0943B0 8010B940 A438BCA0 */   sh    $t8, %lo(D_8012BCA0)($at)
.L8010B944_ovl2:
/* 0943B4 8010B944 C7AA004C */  lwc1  $f10, 0x4c($sp)
/* 0943B8 8010B948 C4700004 */  lwc1  $f16, 4($v1)
/* 0943BC 8010B94C 8FB90030 */  lw    $t9, 0x30($sp)
/* 0943C0 8010B950 27A4004C */  addiu $a0, $sp, 0x4c
/* 0943C4 8010B954 46105480 */  add.s $f18, $f10, $f16
/* 0943C8 8010B958 C4700008 */  lwc1  $f16, 8($v1)
/* 0943CC 8010B95C C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 0943D0 8010B960 27A50040 */  addiu $a1, $sp, 0x40
/* 0943D4 8010B964 E7B2004C */  swc1  $f18, 0x4c($sp)
/* 0943D8 8010B968 C6040008 */  lwc1  $f4, 8($s0)
/* 0943DC 8010B96C C7260008 */  lwc1  $f6, 8($t9)
/* 0943E0 8010B970 46105480 */  add.s $f18, $f10, $f16
/* 0943E4 8010B974 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0943E8 8010B978 AFA00018 */  sw    $zero, 0x18($sp)
/* 0943EC 8010B97C 46062200 */  add.s $f8, $f4, $f6
/* 0943F0 8010B980 E7B20054 */  swc1  $f18, 0x54($sp)
/* 0943F4 8010B984 AFA00014 */  sw    $zero, 0x14($sp)
/* 0943F8 8010B988 AFA00010 */  sw    $zero, 0x10($sp)
/* 0943FC 8010B98C E7A80050 */  swc1  $f8, 0x50($sp)
/* 094400 8010B990 C7A40050 */  lwc1  $f4, 0x50($sp)
/* 094404 8010B994 27A60034 */  addiu $a2, $sp, 0x34
/* 094408 8010B998 00003825 */  move  $a3, $zero
/* 09440C 8010B99C 0C04108F */  jal   func_8010423C_ovl2
/* 094410 8010B9A0 E7A40044 */   swc1  $f4, 0x44($sp)
/* 094414 8010B9A4 10400009 */  beqz  $v0, .L8010B9CC_ovl2
/* 094418 8010B9A8 8FAB0030 */   lw    $t3, 0x30($sp)
/* 09441C 8010B9AC 3C088013 */  lui   $t0, %hi(D_8012BCA0) # $t0, 0x8013
/* 094420 8010B9B0 9508BCA0 */  lhu   $t0, %lo(D_8012BCA0)($t0)
/* 094424 8010B9B4 3C018013 */  lui   $at, %hi(D_8012BCA0) # $at, 0x8013
/* 094428 8010B9B8 24020001 */  li    $v0, 1
/* 09442C 8010B9BC 31090007 */  andi  $t1, $t0, 7
/* 094430 8010B9C0 352A0100 */  ori   $t2, $t1, 0x100
/* 094434 8010B9C4 1000001A */  b     .L8010BA30_ovl2
/* 094438 8010B9C8 A42ABCA0 */   sh    $t2, %lo(D_8012BCA0)($at)
.L8010B9CC_ovl2:
/* 09443C 8010B9CC C6060008 */  lwc1  $f6, 8($s0)
/* 094440 8010B9D0 C5680004 */  lwc1  $f8, 4($t3)
/* 094444 8010B9D4 AFA0001C */  sw    $zero, 0x1c($sp)
/* 094448 8010B9D8 AFA00018 */  sw    $zero, 0x18($sp)
/* 09444C 8010B9DC 46083280 */  add.s $f10, $f6, $f8
/* 094450 8010B9E0 AFA00014 */  sw    $zero, 0x14($sp)
/* 094454 8010B9E4 AFA00010 */  sw    $zero, 0x10($sp)
/* 094458 8010B9E8 27A4004C */  addiu $a0, $sp, 0x4c
/* 09445C 8010B9EC E7AA0044 */  swc1  $f10, 0x44($sp)
/* 094460 8010B9F0 C7B00044 */  lwc1  $f16, 0x44($sp)
/* 094464 8010B9F4 27A50040 */  addiu $a1, $sp, 0x40
/* 094468 8010B9F8 27A60034 */  addiu $a2, $sp, 0x34
/* 09446C 8010B9FC 00003825 */  move  $a3, $zero
/* 094470 8010BA00 0C04108F */  jal   func_8010423C_ovl2
/* 094474 8010BA04 E7B00050 */   swc1  $f16, 0x50($sp)
/* 094478 8010BA08 10400008 */  beqz  $v0, .L8010BA2C_ovl2
/* 09447C 8010BA0C 3C0C8013 */   lui   $t4, %hi(D_8012BCA0) # $t4, 0x8013
/* 094480 8010BA10 958CBCA0 */  lhu   $t4, %lo(D_8012BCA0)($t4)
/* 094484 8010BA14 3C018013 */  lui   $at, %hi(D_8012BCA0) # $at, 0x8013
/* 094488 8010BA18 24020001 */  li    $v0, 1
/* 09448C 8010BA1C 318D0007 */  andi  $t5, $t4, 7
/* 094490 8010BA20 35AE0080 */  ori   $t6, $t5, 0x80
/* 094494 8010BA24 10000002 */  b     .L8010BA30_ovl2
/* 094498 8010BA28 A42EBCA0 */   sh    $t6, %lo(D_8012BCA0)($at)
.L8010BA2C_ovl2:
/* 09449C 8010BA2C 00001025 */  move  $v0, $zero
.L8010BA30_ovl2:
/* 0944A0 8010BA30 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0944A4 8010BA34 8FB00028 */  lw    $s0, 0x28($sp)
/* 0944A8 8010BA38 27BD0060 */  addiu $sp, $sp, 0x60
/* 0944AC 8010BA3C 03E00008 */  jr    $ra
/* 0944B0 8010BA40 00000000 */   nop   
