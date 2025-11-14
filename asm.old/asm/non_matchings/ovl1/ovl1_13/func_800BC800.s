glabel func_800BC800
/* 064A50 800BC800 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 064A54 800BC804 AFB00014 */  sw    $s0, 0x14($sp)
/* 064A58 800BC808 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 064A5C 800BC80C 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 064A60 800BC810 8E030000 */  lw    $v1, ($s0)
/* 064A64 800BC814 AFBF002C */  sw    $ra, 0x2c($sp)
/* 064A68 800BC818 AFB50028 */  sw    $s5, 0x28($sp)
/* 064A6C 800BC81C AFB40024 */  sw    $s4, 0x24($sp)
/* 064A70 800BC820 AFB30020 */  sw    $s3, 0x20($sp)
/* 064A74 800BC824 AFB2001C */  sw    $s2, 0x1c($sp)
/* 064A78 800BC828 AFB10018 */  sw    $s1, 0x18($sp)
/* 064A7C 800BC82C 8C680000 */  lw    $t0, ($v1)
/* 064A80 800BC830 3C07800F */ lui $a3, %hi(D_800E9E20)
/* 064A84 800BC834 3C0F800D */  lui   $t7, %hi(D_800D5598) # $t7, 0x800d
/* 064A88 800BC838 00084080 */  sll   $t0, $t0, 2
/* 064A8C 800BC83C 00E83821 */  addu  $a3, $a3, $t0
/* 064A90 800BC840 8CE79E20 */ lw $a3, %lo(D_800E9E20)($a3)
/* 064A94 800BC844 25EF5598 */  addiu $t7, %lo(D_800D5598) # addiu $t7, $t7, 0x5598
/* 064A98 800BC848 00808825 */  move  $s1, $a0
/* 064A9C 800BC84C 00077080 */  sll   $t6, $a3, 2
/* 064AA0 800BC850 01CF1021 */  addu  $v0, $t6, $t7
/* 064AA4 800BC854 8C580000 */  lw    $t8, ($v0)
/* 064AA8 800BC858 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 064AAC 800BC85C 2405000A */  li    $a1, 10
/* 064AB0 800BC860 44982000 */  mtc1  $t8, $f4
/* 064AB4 800BC864 07010004 */  bgez  $t8, .L800BC878_ovl1
/* 064AB8 800BC868 468021A0 */   cvt.s.w $f6, $f4
/* 064ABC 800BC86C 44814000 */  mtc1  $at, $f8
/* 064AC0 800BC870 00000000 */  nop   
/* 064AC4 800BC874 46083180 */  add.s $f6, $f6, $f8
.L800BC878_ovl1:
/* 064AC8 800BC878 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 064ACC 800BC87C 00280821 */  addu  $at, $at, $t0
/* 064AD0 800BC880 E42625D0 */ swc1 $f6, %lo(gEntitiesNextPosXArray)($at)
/* 064AD4 800BC884 8C590004 */  lw    $t9, 4($v0)
/* 064AD8 800BC888 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 064ADC 800BC88C 44995000 */  mtc1  $t9, $f10
/* 064AE0 800BC890 07210004 */  bgez  $t9, .L800BC8A4_ovl1
/* 064AE4 800BC894 46805420 */   cvt.s.w $f16, $f10
/* 064AE8 800BC898 44819000 */  mtc1  $at, $f18
/* 064AEC 800BC89C 00000000 */  nop   
/* 064AF0 800BC8A0 46128400 */  add.s $f16, $f16, $f18
.L800BC8A4_ovl1:
/* 064AF4 800BC8A4 8C690000 */  lw    $t1, ($v1)
/* 064AF8 800BC8A8 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 064AFC 800BC8AC 24060004 */  li    $a2, 4
/* 064B00 800BC8B0 00095080 */  sll   $t2, $t1, 2
/* 064B04 800BC8B4 002A0821 */  addu  $at, $at, $t2
/* 064B08 800BC8B8 E4302790 */ swc1 $f16, %lo(gEntitiesNextPosYArray)($at)
/* 064B0C 800BC8BC 0C02BE30 */  jal   func_800AF8C0
/* 064B10 800BC8C0 8C440008 */   lw    $a0, 8($v0)
/* 064B14 800BC8C4 3C15800F */  lui   $s5, %hi(D_800E9AA0) # $s5, 0x800f
/* 064B18 800BC8C8 3C14800F */  lui   $s4, %hi(D_800E98E0) # $s4, 0x800f
/* 064B1C 800BC8CC 3C13800E */  lui   $s3, %hi(D_800E0D50) # $s3, 0x800e
/* 064B20 800BC8D0 3C12800F */  lui   $s2, %hi(D_800E9C60) # $s2, 0x800f
/* 064B24 800BC8D4 26529C60 */  addiu $s2, %lo(D_800E9C60) # addiu $s2, $s2, -0x63a0
/* 064B28 800BC8D8 26730D50 */  addiu $s3, %lo(D_800E0D50) # addiu $s3, $s3, 0xd50
/* 064B2C 800BC8DC 269498E0 */  addiu $s4, %lo(D_800E98E0) # addiu $s4, $s4, -0x6720
/* 064B30 800BC8E0 26B59AA0 */  addiu $s5, %lo(D_800E9AA0) # addiu $s5, $s5, -0x6560
/* 064B34 800BC8E4 8E0B0000 */  lw    $t3, ($s0)
.L800BC8E8_ovl1:
/* 064B38 800BC8E8 8D6C0000 */  lw    $t4, ($t3)
/* 064B3C 800BC8EC 000C6880 */  sll   $t5, $t4, 2
/* 064B40 800BC8F0 026D7021 */  addu  $t6, $s3, $t5
/* 064B44 800BC8F4 8DC20000 */  lw    $v0, ($t6)
/* 064B48 800BC8F8 00021080 */  sll   $v0, $v0, 2
/* 064B4C 800BC8FC 02427821 */  addu  $t7, $s2, $v0
/* 064B50 800BC900 8DF80000 */  lw    $t8, ($t7)
/* 064B54 800BC904 5300000D */  beql  $t8, $zero, .L800BC93C_ovl1
/* 064B58 800BC908 02826821 */   addu  $t5, $s4, $v0
/* 064B5C 800BC90C 0C02B2F7 */  jal   func_800ACBDC
/* 064B60 800BC910 02202025 */   move  $a0, $s1
/* 064B64 800BC914 8E190000 */  lw    $t9, ($s0)
/* 064B68 800BC918 0C02C640 */  jal   func_800B1900
/* 064B6C 800BC91C 97240002 */   lhu   $a0, 2($t9)
/* 064B70 800BC920 8E090000 */  lw    $t1, ($s0)
/* 064B74 800BC924 8D2A0000 */  lw    $t2, ($t1)
/* 064B78 800BC928 000A5880 */  sll   $t3, $t2, 2
/* 064B7C 800BC92C 026B6021 */  addu  $t4, $s3, $t3
/* 064B80 800BC930 8D820000 */  lw    $v0, ($t4)
/* 064B84 800BC934 00021080 */  sll   $v0, $v0, 2
/* 064B88 800BC938 02826821 */  addu  $t5, $s4, $v0
.L800BC93C_ovl1:
/* 064B8C 800BC93C 8DAE0000 */  lw    $t6, ($t5)
/* 064B90 800BC940 00003825 */  move  $a3, $zero
/* 064B94 800BC944 02A27821 */  addu  $t7, $s5, $v0
/* 064B98 800BC948 11C00005 */  beqz  $t6, .L800BC960_ovl1
/* 064B9C 800BC94C 00000000 */   nop   
/* 064BA0 800BC950 8DF80000 */  lw    $t8, ($t7)
/* 064BA4 800BC954 13000002 */  beqz  $t8, .L800BC960_ovl1
/* 064BA8 800BC958 00000000 */   nop   
/* 064BAC 800BC95C 24070001 */  li    $a3, 1
.L800BC960_ovl1:
/* 064BB0 800BC960 0C02BE48 */  jal   func_800AF920
/* 064BB4 800BC964 00E02025 */   move  $a0, $a3
/* 064BB8 800BC968 0C002DAF */  jal   finish_current_thread
/* 064BBC 800BC96C 24040001 */   li    $a0, 1
/* 064BC0 800BC970 1000FFDD */  b     .L800BC8E8_ovl1
/* 064BC4 800BC974 8E0B0000 */   lw    $t3, ($s0)
/* 064BC8 800BC978 00000000 */  nop   
/* 064BCC 800BC97C 00000000 */  nop   
/* 064BD0 800BC980 8FBF002C */  lw    $ra, 0x2c($sp)
/* 064BD4 800BC984 8FB00014 */  lw    $s0, 0x14($sp)
/* 064BD8 800BC988 8FB10018 */  lw    $s1, 0x18($sp)
/* 064BDC 800BC98C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 064BE0 800BC990 8FB30020 */  lw    $s3, 0x20($sp)
/* 064BE4 800BC994 8FB40024 */  lw    $s4, 0x24($sp)
/* 064BE8 800BC998 8FB50028 */  lw    $s5, 0x28($sp)
/* 064BEC 800BC99C 03E00008 */  jr    $ra
/* 064BF0 800BC9A0 27BD0030 */   addiu $sp, $sp, 0x30
.type func_800BC800, @function
.size func_800BC800, . - func_800BC800
