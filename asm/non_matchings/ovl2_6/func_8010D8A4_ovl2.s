glabel func_8010D8A4_ovl2
/* 096314 8010D8A4 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 096318 8010D8A8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 09631C 8010D8AC AFB00028 */  sw    $s0, 0x28($sp)
/* 096320 8010D8B0 0C0413EE */  jal   func_80104FB8_ovl2
/* 096324 8010D8B4 00808025 */   move  $s0, $a0
/* 096328 8010D8B8 44800000 */  mtc1  $zero, $f0
/* 09632C 8010D8BC 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 096330 8010D8C0 44812000 */  mtc1  $at, $f4
/* 096334 8010D8C4 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 096338 8010D8C8 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 09633C 8010D8CC E7A00038 */  swc1  $f0, 0x38($sp)
/* 096340 8010D8D0 E7A00040 */  swc1  $f0, 0x40($sp)
/* 096344 8010D8D4 E7A4003C */  swc1  $f4, 0x3c($sp)
/* 096348 8010D8D8 C6060004 */  lwc1  $f6, 4($s0)
/* 09634C 8010D8DC C4680004 */  lwc1  $f8, 4($v1)
/* 096350 8010D8E0 26020010 */  addiu $v0, $s0, 0x10
/* 096354 8010D8E4 3C018013 */  lui   $at, %hi(D_80128AE0) # $at, 0x8013
/* 096358 8010D8E8 46083280 */  add.s $f10, $f6, $f8
/* 09635C 8010D8EC C4680008 */  lwc1  $f8, 8($v1)
/* 096360 8010D8F0 27AE0034 */  addiu $t6, $sp, 0x34
/* 096364 8010D8F4 27A40050 */  addiu $a0, $sp, 0x50
/* 096368 8010D8F8 E7AA0050 */  swc1  $f10, 0x50($sp)
/* 09636C 8010D8FC C6100008 */  lwc1  $f16, 8($s0)
/* 096370 8010D900 C4520004 */  lwc1  $f18, 4($v0)
/* 096374 8010D904 27A50044 */  addiu $a1, $sp, 0x44
/* 096378 8010D908 27A60038 */  addiu $a2, $sp, 0x38
/* 09637C 8010D90C 46128100 */  add.s $f4, $f16, $f18
/* 096380 8010D910 C7B00050 */  lwc1  $f16, 0x50($sp)
/* 096384 8010D914 00003825 */  move  $a3, $zero
/* 096388 8010D918 E7A40054 */  swc1  $f4, 0x54($sp)
/* 09638C 8010D91C C606000C */  lwc1  $f6, 0xc($s0)
/* 096390 8010D920 E7B00044 */  swc1  $f16, 0x44($sp)
/* 096394 8010D924 46083280 */  add.s $f10, $f6, $f8
/* 096398 8010D928 C4288AE0 */  lwc1  $f8, %lo(D_80128AE0)($at)
/* 09639C 8010D92C E7AA0058 */  swc1  $f10, 0x58($sp)
/* 0963A0 8010D930 C4440008 */  lwc1  $f4, 8($v0)
/* 0963A4 8010D934 C6120008 */  lwc1  $f18, 8($s0)
/* 0963A8 8010D938 C7B00058 */  lwc1  $f16, 0x58($sp)
/* 0963AC 8010D93C AFA0001C */  sw    $zero, 0x1c($sp)
/* 0963B0 8010D940 46049180 */  add.s $f6, $f18, $f4
/* 0963B4 8010D944 AFAE0018 */  sw    $t6, 0x18($sp)
/* 0963B8 8010D948 AFA00014 */  sw    $zero, 0x14($sp)
/* 0963BC 8010D94C AFA00010 */  sw    $zero, 0x10($sp)
/* 0963C0 8010D950 46083281 */  sub.s $f10, $f6, $f8
/* 0963C4 8010D954 E7B0004C */  swc1  $f16, 0x4c($sp)
/* 0963C8 8010D958 0C040FA8 */  jal   func_80103EA0_ovl2
/* 0963CC 8010D95C E7AA0048 */   swc1  $f10, 0x48($sp)
/* 0963D0 8010D960 10400009 */  beqz  $v0, .L8010D988_ovl2
/* 0963D4 8010D964 8FA40034 */   lw    $a0, 0x34($sp)
/* 0963D8 8010D968 00002825 */  move  $a1, $zero
/* 0963DC 8010D96C 00003025 */  move  $a2, $zero
/* 0963E0 8010D970 0C0408C9 */  jal   D_80102324_ovl2
/* 0963E4 8010D974 00003825 */   move  $a3, $zero
/* 0963E8 8010D978 14400003 */  bnez  $v0, .L8010D988_ovl2
/* 0963EC 8010D97C 00000000 */   nop   
/* 0963F0 8010D980 10000024 */  b     .L8010DA14_ovl2
/* 0963F4 8010D984 00001025 */   move  $v0, $zero
.L8010D988_ovl2:
/* 0963F8 8010D988 3C028013 */  lui   $v0, %hi(D_8012BD00) # $v0, 0x8013
/* 0963FC 8010D98C 2442BD00 */  addiu $v0, %lo(D_8012BD00) # addiu $v0, $v0, -0x4300
/* 096400 8010D990 C444000C */  lwc1  $f4, 0xc($v0)
/* 096404 8010D994 C6120004 */  lwc1  $f18, 4($s0)
/* 096408 8010D998 C44A0010 */  lwc1  $f10, 0x10($v0)
/* 09640C 8010D99C 27AF0034 */  addiu $t7, $sp, 0x34
/* 096410 8010D9A0 46049180 */  add.s $f6, $f18, $f4
/* 096414 8010D9A4 27A40050 */  addiu $a0, $sp, 0x50
/* 096418 8010D9A8 27A50044 */  addiu $a1, $sp, 0x44
/* 09641C 8010D9AC 27A60038 */  addiu $a2, $sp, 0x38
/* 096420 8010D9B0 E7A60050 */  swc1  $f6, 0x50($sp)
/* 096424 8010D9B4 C608000C */  lwc1  $f8, 0xc($s0)
/* 096428 8010D9B8 C7B20050 */  lwc1  $f18, 0x50($sp)
/* 09642C 8010D9BC AFA0001C */  sw    $zero, 0x1c($sp)
/* 096430 8010D9C0 460A4400 */  add.s $f16, $f8, $f10
/* 096434 8010D9C4 AFAF0018 */  sw    $t7, 0x18($sp)
/* 096438 8010D9C8 AFA00014 */  sw    $zero, 0x14($sp)
/* 09643C 8010D9CC AFA00010 */  sw    $zero, 0x10($sp)
/* 096440 8010D9D0 E7B00058 */  swc1  $f16, 0x58($sp)
/* 096444 8010D9D4 C7A40058 */  lwc1  $f4, 0x58($sp)
/* 096448 8010D9D8 00003825 */  move  $a3, $zero
/* 09644C 8010D9DC E7B20044 */  swc1  $f18, 0x44($sp)
/* 096450 8010D9E0 0C040FA8 */  jal   func_80103EA0_ovl2
/* 096454 8010D9E4 E7A4004C */   swc1  $f4, 0x4c($sp)
/* 096458 8010D9E8 10400009 */  beqz  $v0, .L8010DA10_ovl2
/* 09645C 8010D9EC 8FA40034 */   lw    $a0, 0x34($sp)
/* 096460 8010D9F0 00002825 */  move  $a1, $zero
/* 096464 8010D9F4 00003025 */  move  $a2, $zero
/* 096468 8010D9F8 0C0408C9 */  jal   D_80102324_ovl2
/* 09646C 8010D9FC 00003825 */   move  $a3, $zero
/* 096470 8010DA00 54400004 */  bnezl $v0, .L8010DA14_ovl2
/* 096474 8010DA04 24020001 */   li    $v0, 1
/* 096478 8010DA08 10000002 */  b     .L8010DA14_ovl2
/* 09647C 8010DA0C 00001025 */   move  $v0, $zero
.L8010DA10_ovl2:
/* 096480 8010DA10 24020001 */  li    $v0, 1
.L8010DA14_ovl2:
/* 096484 8010DA14 8FBF002C */  lw    $ra, 0x2c($sp)
/* 096488 8010DA18 8FB00028 */  lw    $s0, 0x28($sp)
/* 09648C 8010DA1C 27BD0060 */  addiu $sp, $sp, 0x60
/* 096490 8010DA20 03E00008 */  jr    $ra
/* 096494 8010DA24 00000000 */   nop   
