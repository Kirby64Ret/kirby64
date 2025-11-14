glabel func_801E4A74_ovl10
/* 1D57E4 801E4A74 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D57E8 801E4A78 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D57EC 801E4A7C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 1D57F0 801E4A80 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D57F4 801E4A84 8C4E0000 */  lw    $t6, ($v0)
/* 1D57F8 801E4A88 3C18800E */ lui $t8, %hi(D_800DFBD0)
/* 1D57FC 801E4A8C 44800000 */  mtc1  $zero, $f0
/* 1D5800 801E4A90 000E7880 */  sll   $t7, $t6, 2
/* 1D5804 801E4A94 030FC021 */  addu  $t8, $t8, $t7
/* 1D5808 801E4A98 8F18FBD0 */ lw $t8, %lo(D_800DFBD0)($t8)
/* 1D580C 801E4A9C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1D5810 801E4AA0 44812000 */  mtc1  $at, $f4
/* 1D5814 801E4AA4 8F030010 */  lw    $v1, 0x10($t8)
/* 1D5818 801E4AA8 E7A00038 */  swc1  $f0, 0x38($sp)
/* 1D581C 801E4AAC E7A0003C */  swc1  $f0, 0x3c($sp)
/* 1D5820 801E4AB0 E7A40040 */  swc1  $f4, 0x40($sp)
/* 1D5824 801E4AB4 8C590000 */  lw    $t9, ($v0)
/* 1D5828 801E4AB8 3C06800E */ lui $a2, %hi(gEntitiesAngleYArray)
/* 1D582C 801E4ABC 27A40038 */  addiu $a0, $sp, 0x38
/* 1D5830 801E4AC0 00194080 */  sll   $t0, $t9, 2
/* 1D5834 801E4AC4 00C83021 */  addu  $a2, $a2, $t0
/* 1D5838 801E4AC8 8CC641D0 */ lw $a2, %lo(gEntitiesAngleYArray)($a2)
/* 1D583C 801E4ACC 24050002 */  li    $a1, 2
/* 1D5840 801E4AD0 0C006424 */  jal   lbvector_Rotate
/* 1D5844 801E4AD4 AFA30044 */   sw    $v1, 0x44($sp)
/* 1D5848 801E4AD8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D584C 801E4ADC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D5850 801E4AE0 3C06800E */  lui   $a2, %hi(gEntitiesNextPosXArray) # $a2, 0x800e
/* 1D5854 801E4AE4 24C625D0 */  addiu $a2, %lo(gEntitiesNextPosXArray) # addiu $a2, $a2, 0x25d0
/* 1D5858 801E4AE8 8C490000 */  lw    $t1, ($v0)
/* 1D585C 801E4AEC C4C60000 */  lwc1  $f6, ($a2)
/* 1D5860 801E4AF0 44808000 */  mtc1  $zero, $f16
/* 1D5864 801E4AF4 00095080 */  sll   $t2, $t1, 2
/* 1D5868 801E4AF8 00CA5821 */  addu  $t3, $a2, $t2
/* 1D586C 801E4AFC C5680000 */  lwc1  $f8, ($t3)
/* 1D5870 801E4B00 E7B00030 */  swc1  $f16, 0x30($sp)
/* 1D5874 801E4B04 3C07800E */  lui   $a3, %hi(gEntitiesNextPosZArray) # $a3, 0x800e
/* 1D5878 801E4B08 46083281 */  sub.s $f10, $f6, $f8
/* 1D587C 801E4B0C 24E72950 */  addiu $a3, %lo(gEntitiesNextPosZArray) # addiu $a3, $a3, 0x2950
/* 1D5880 801E4B10 C4F20000 */  lwc1  $f18, ($a3)
/* 1D5884 801E4B14 27A40038 */  addiu $a0, $sp, 0x38
/* 1D5888 801E4B18 E7AA002C */  swc1  $f10, 0x2c($sp)
/* 1D588C 801E4B1C 8C4C0000 */  lw    $t4, ($v0)
/* 1D5890 801E4B20 27A5002C */  addiu $a1, $sp, 0x2c
/* 1D5894 801E4B24 000C6880 */  sll   $t5, $t4, 2
/* 1D5898 801E4B28 00ED7021 */  addu  $t6, $a3, $t5
/* 1D589C 801E4B2C C5C40000 */  lwc1  $f4, ($t6)
/* 1D58A0 801E4B30 46049181 */  sub.s $f6, $f18, $f4
/* 1D58A4 801E4B34 0C03E270 */  jal   vec3_abs_angle_diff
/* 1D58A8 801E4B38 E7A60034 */   swc1  $f6, 0x34($sp)
/* 1D58AC 801E4B3C 44807000 */  mtc1  $zero, $f14
/* 1D58B0 801E4B40 8FA30044 */  lw    $v1, 0x44($sp)
/* 1D58B4 801E4B44 24020001 */  li    $v0, 1
/* 1D58B8 801E4B48 460E003C */  c.lt.s $f0, $f14
/* 1D58BC 801E4B4C C4620034 */  lwc1  $f2, 0x34($v1)
/* 1D58C0 801E4B50 45000003 */  bc1f  .L801E4B60_ovl10
/* 1D58C4 801E4B54 46001306 */   mov.s $f12, $f2
/* 1D58C8 801E4B58 10000001 */  b     .L801E4B60_ovl10
/* 1D58CC 801E4B5C 2402FFFF */   li    $v0, -1
.L801E4B60_ovl10:
/* 1D58D0 801E4B60 44825000 */  mtc1  $v0, $f10
/* 1D58D4 801E4B64 3C01801F */  lui   $at, %hi(D_801F4B20_ovl10) # $at, 0x801f
/* 1D58D8 801E4B68 C4284B20 */  lwc1  $f8, %lo(D_801F4B20_ovl10)($at)
/* 1D58DC 801E4B6C 46805420 */  cvt.s.w $f16, $f10
/* 1D58E0 801E4B70 3C01801F */  lui   $at, %hi(D_801F4B24_ovl10) # $at, 0x801f
/* 1D58E4 801E4B74 46104482 */  mul.s $f18, $f8, $f16
/* 1D58E8 801E4B78 46121100 */  add.s $f4, $f2, $f18
/* 1D58EC 801E4B7C E4640034 */  swc1  $f4, 0x34($v1)
/* 1D58F0 801E4B80 C4620034 */  lwc1  $f2, 0x34($v1)
/* 1D58F4 801E4B84 460E103C */  c.lt.s $f2, $f14
/* 1D58F8 801E4B88 00000000 */  nop   
/* 1D58FC 801E4B8C 45020004 */  bc1fl .L801E4BA0_ovl10
/* 1D5900 801E4B90 46001006 */   mov.s $f0, $f2
/* 1D5904 801E4B94 10000002 */  b     .L801E4BA0_ovl10
/* 1D5908 801E4B98 46001007 */   neg.s $f0, $f2
/* 1D590C 801E4B9C 46001006 */  mov.s $f0, $f2
.L801E4BA0_ovl10:
/* 1D5910 801E4BA0 C4264B24 */  lwc1  $f6, %lo(D_801F4B24_ovl10)($at)
/* 1D5914 801E4BA4 4600303C */  c.lt.s $f6, $f0
/* 1D5918 801E4BA8 00000000 */  nop   
/* 1D591C 801E4BAC 45020003 */  bc1fl .L801E4BBC_ovl10
/* 1D5920 801E4BB0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D5924 801E4BB4 E46C0034 */  swc1  $f12, 0x34($v1)
/* 1D5928 801E4BB8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E4BBC_ovl10:
/* 1D592C 801E4BBC 27BD0048 */  addiu $sp, $sp, 0x48
/* 1D5930 801E4BC0 03E00008 */  jr    $ra
/* 1D5934 801E4BC4 00000000 */   nop   
.type func_801E4A74_ovl10, @function
.size func_801E4A74_ovl10, . - func_801E4A74_ovl10
