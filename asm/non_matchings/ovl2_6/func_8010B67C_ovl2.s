glabel func_8010B67C_ovl2
/* 0940EC 8010B67C 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0940F0 8010B680 AFB00028 */  sw    $s0, 0x28($sp)
/* 0940F4 8010B684 00808025 */  move  $s0, $a0
/* 0940F8 8010B688 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0940FC 8010B68C 3C048013 */  lui   $a0, %hi(D_8012BCA0) # $a0, 0x8013
/* 094100 8010B690 0C041486 */  jal   func_80105218_ovl2
/* 094104 8010B694 2484BCA0 */   addiu $a0, %lo(D_8012BCA0) # addiu $a0, $a0, -0x4360
/* 094108 8010B698 0C043182 */  jal   func_8010C608_ovl2
/* 09410C 8010B69C 02002025 */   move  $a0, $s0
/* 094110 8010B6A0 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 094114 8010B6A4 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 094118 8010B6A8 C4640014 */  lwc1  $f4, 0x14($v1)
/* 09411C 8010B6AC 44803000 */  mtc1  $zero, $f6
/* 094120 8010B6B0 C4680018 */  lwc1  $f8, 0x18($v1)
/* 094124 8010B6B4 E7A40034 */  swc1  $f4, 0x34($sp)
/* 094128 8010B6B8 E7A60038 */  swc1  $f6, 0x38($sp)
/* 09412C 8010B6BC E7A8003C */  swc1  $f8, 0x3c($sp)
/* 094130 8010B6C0 C60A0004 */  lwc1  $f10, 4($s0)
/* 094134 8010B6C4 26020010 */  addiu $v0, $s0, 0x10
/* 094138 8010B6C8 27A4004C */  addiu $a0, $sp, 0x4c
/* 09413C 8010B6CC E7AA004C */  swc1  $f10, 0x4c($sp)
/* 094140 8010B6D0 C4520000 */  lwc1  $f18, ($v0)
/* 094144 8010B6D4 C6100008 */  lwc1  $f16, 8($s0)
/* 094148 8010B6D8 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 09414C 8010B6DC C46A0004 */  lwc1  $f10, 4($v1)
/* 094150 8010B6E0 46128100 */  add.s $f4, $f16, $f18
/* 094154 8010B6E4 27A50040 */  addiu $a1, $sp, 0x40
/* 094158 8010B6E8 27A60034 */  addiu $a2, $sp, 0x34
/* 09415C 8010B6EC 460A4400 */  add.s $f16, $f8, $f10
/* 094160 8010B6F0 E7A40050 */  swc1  $f4, 0x50($sp)
/* 094164 8010B6F4 C606000C */  lwc1  $f6, 0xc($s0)
/* 094168 8010B6F8 C7B20050 */  lwc1  $f18, 0x50($sp)
/* 09416C 8010B6FC E7B00040 */  swc1  $f16, 0x40($sp)
/* 094170 8010B700 E7A60054 */  swc1  $f6, 0x54($sp)
/* 094174 8010B704 C7A40054 */  lwc1  $f4, 0x54($sp)
/* 094178 8010B708 C4660008 */  lwc1  $f6, 8($v1)
/* 09417C 8010B70C AFA20030 */  sw    $v0, 0x30($sp)
/* 094180 8010B710 AFA0001C */  sw    $zero, 0x1c($sp)
/* 094184 8010B714 46062200 */  add.s $f8, $f4, $f6
/* 094188 8010B718 AFA00018 */  sw    $zero, 0x18($sp)
/* 09418C 8010B71C AFA00014 */  sw    $zero, 0x14($sp)
/* 094190 8010B720 AFA00010 */  sw    $zero, 0x10($sp)
/* 094194 8010B724 E7A80048 */  swc1  $f8, 0x48($sp)
/* 094198 8010B728 00003825 */  move  $a3, $zero
/* 09419C 8010B72C 0C04108F */  jal   func_8010423C_ovl2
/* 0941A0 8010B730 E7B20044 */   swc1  $f18, 0x44($sp)
/* 0941A4 8010B734 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 0941A8 8010B738 10400009 */  beqz  $v0, .L8010B760_ovl2
/* 0941AC 8010B73C 2463BD00 */   addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 0941B0 8010B740 3C0E8013 */  lui   $t6, %hi(D_8012BCA0) # $t6, 0x8013
/* 0941B4 8010B744 95CEBCA0 */  lhu   $t6, %lo(D_8012BCA0)($t6)
/* 0941B8 8010B748 3C018013 */  lui   $at, %hi(D_8012BCA0) # $at, 0x8013
/* 0941BC 8010B74C 24020001 */  li    $v0, 1
/* 0941C0 8010B750 31CF0007 */  andi  $t7, $t6, 7
/* 0941C4 8010B754 35F80008 */  ori   $t8, $t7, 8
/* 0941C8 8010B758 1000003C */  b     .L8010B84C_ovl2
/* 0941CC 8010B75C A438BCA0 */   sh    $t8, %lo(D_8012BCA0)($at)
.L8010B760_ovl2:
/* 0941D0 8010B760 C7AA004C */  lwc1  $f10, 0x4c($sp)
/* 0941D4 8010B764 C470000C */  lwc1  $f16, 0xc($v1)
/* 0941D8 8010B768 8FB90030 */  lw    $t9, 0x30($sp)
/* 0941DC 8010B76C 27A4004C */  addiu $a0, $sp, 0x4c
/* 0941E0 8010B770 46105480 */  add.s $f18, $f10, $f16
/* 0941E4 8010B774 C4700010 */  lwc1  $f16, 0x10($v1)
/* 0941E8 8010B778 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 0941EC 8010B77C 27A50040 */  addiu $a1, $sp, 0x40
/* 0941F0 8010B780 E7B2004C */  swc1  $f18, 0x4c($sp)
/* 0941F4 8010B784 C6040008 */  lwc1  $f4, 8($s0)
/* 0941F8 8010B788 C7260008 */  lwc1  $f6, 8($t9)
/* 0941FC 8010B78C 46105480 */  add.s $f18, $f10, $f16
/* 094200 8010B790 AFA0001C */  sw    $zero, 0x1c($sp)
/* 094204 8010B794 AFA00018 */  sw    $zero, 0x18($sp)
/* 094208 8010B798 46062200 */  add.s $f8, $f4, $f6
/* 09420C 8010B79C E7B20054 */  swc1  $f18, 0x54($sp)
/* 094210 8010B7A0 AFA00014 */  sw    $zero, 0x14($sp)
/* 094214 8010B7A4 AFA00010 */  sw    $zero, 0x10($sp)
/* 094218 8010B7A8 E7A80050 */  swc1  $f8, 0x50($sp)
/* 09421C 8010B7AC C7A40050 */  lwc1  $f4, 0x50($sp)
/* 094220 8010B7B0 27A60034 */  addiu $a2, $sp, 0x34
/* 094224 8010B7B4 00003825 */  move  $a3, $zero
/* 094228 8010B7B8 0C04108F */  jal   func_8010423C_ovl2
/* 09422C 8010B7BC E7A40044 */   swc1  $f4, 0x44($sp)
/* 094230 8010B7C0 10400009 */  beqz  $v0, .L8010B7E8_ovl2
/* 094234 8010B7C4 8FAB0030 */   lw    $t3, 0x30($sp)
/* 094238 8010B7C8 3C088013 */  lui   $t0, %hi(D_8012BCA0) # $t0, 0x8013
/* 09423C 8010B7CC 9508BCA0 */  lhu   $t0, %lo(D_8012BCA0)($t0)
/* 094240 8010B7D0 3C018013 */  lui   $at, %hi(D_8012BCA0) # $at, 0x8013
/* 094244 8010B7D4 24020001 */  li    $v0, 1
/* 094248 8010B7D8 31090007 */  andi  $t1, $t0, 7
/* 09424C 8010B7DC 352A0020 */  ori   $t2, $t1, 0x20
/* 094250 8010B7E0 1000001A */  b     .L8010B84C_ovl2
/* 094254 8010B7E4 A42ABCA0 */   sh    $t2, %lo(D_8012BCA0)($at)
.L8010B7E8_ovl2:
/* 094258 8010B7E8 C6060008 */  lwc1  $f6, 8($s0)
/* 09425C 8010B7EC C5680004 */  lwc1  $f8, 4($t3)
/* 094260 8010B7F0 AFA0001C */  sw    $zero, 0x1c($sp)
/* 094264 8010B7F4 AFA00018 */  sw    $zero, 0x18($sp)
/* 094268 8010B7F8 46083280 */  add.s $f10, $f6, $f8
/* 09426C 8010B7FC AFA00014 */  sw    $zero, 0x14($sp)
/* 094270 8010B800 AFA00010 */  sw    $zero, 0x10($sp)
/* 094274 8010B804 27A4004C */  addiu $a0, $sp, 0x4c
/* 094278 8010B808 E7AA0044 */  swc1  $f10, 0x44($sp)
/* 09427C 8010B80C C7B00044 */  lwc1  $f16, 0x44($sp)
/* 094280 8010B810 27A50040 */  addiu $a1, $sp, 0x40
/* 094284 8010B814 27A60034 */  addiu $a2, $sp, 0x34
/* 094288 8010B818 00003825 */  move  $a3, $zero
/* 09428C 8010B81C 0C04108F */  jal   func_8010423C_ovl2
/* 094290 8010B820 E7B00050 */   swc1  $f16, 0x50($sp)
/* 094294 8010B824 10400008 */  beqz  $v0, .L8010B848_ovl2
/* 094298 8010B828 3C0C8013 */   lui   $t4, %hi(D_8012BCA0) # $t4, 0x8013
/* 09429C 8010B82C 958CBCA0 */  lhu   $t4, %lo(D_8012BCA0)($t4)
/* 0942A0 8010B830 3C018013 */  lui   $at, %hi(D_8012BCA0) # $at, 0x8013
/* 0942A4 8010B834 24020001 */  li    $v0, 1
/* 0942A8 8010B838 318D0007 */  andi  $t5, $t4, 7
/* 0942AC 8010B83C 35AE0010 */  ori   $t6, $t5, 0x10
/* 0942B0 8010B840 10000002 */  b     .L8010B84C_ovl2
/* 0942B4 8010B844 A42EBCA0 */   sh    $t6, %lo(D_8012BCA0)($at)
.L8010B848_ovl2:
/* 0942B8 8010B848 00001025 */  move  $v0, $zero
.L8010B84C_ovl2:
/* 0942BC 8010B84C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0942C0 8010B850 8FB00028 */  lw    $s0, 0x28($sp)
/* 0942C4 8010B854 27BD0060 */  addiu $sp, $sp, 0x60
/* 0942C8 8010B858 03E00008 */  jr    $ra
/* 0942CC 8010B85C 00000000 */   nop   
