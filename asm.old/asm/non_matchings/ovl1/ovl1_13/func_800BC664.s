glabel func_800BC664
/* 0648B4 800BC664 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0648B8 800BC668 AFB00020 */  sw    $s0, 0x20($sp)
/* 0648BC 800BC66C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0648C0 800BC670 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0648C4 800BC674 8E030000 */  lw    $v1, ($s0)
/* 0648C8 800BC678 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0648CC 800BC67C AFB40030 */  sw    $s4, 0x30($sp)
/* 0648D0 800BC680 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0648D4 800BC684 AFB20028 */  sw    $s2, 0x28($sp)
/* 0648D8 800BC688 AFB10024 */  sw    $s1, 0x24($sp)
/* 0648DC 800BC68C 8C680000 */  lw    $t0, ($v1)
/* 0648E0 800BC690 3C07800F */ lui $a3, %hi(D_800E9E20)
/* 0648E4 800BC694 3C0F800D */  lui   $t7, %hi(D_800D5574) # $t7, 0x800d
/* 0648E8 800BC698 00084080 */  sll   $t0, $t0, 2
/* 0648EC 800BC69C 00E83821 */  addu  $a3, $a3, $t0
/* 0648F0 800BC6A0 8CE79E20 */ lw $a3, %lo(D_800E9E20)($a3)
/* 0648F4 800BC6A4 25EF5574 */  addiu $t7, %lo(D_800D5574) # addiu $t7, $t7, 0x5574
/* 0648F8 800BC6A8 0080A025 */  move  $s4, $a0
/* 0648FC 800BC6AC 00077080 */  sll   $t6, $a3, 2
/* 064900 800BC6B0 01CF1021 */  addu  $v0, $t6, $t7
/* 064904 800BC6B4 8C580000 */  lw    $t8, ($v0)
/* 064908 800BC6B8 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 06490C 800BC6BC 2405000A */  li    $a1, 10
/* 064910 800BC6C0 44982000 */  mtc1  $t8, $f4
/* 064914 800BC6C4 07010004 */  bgez  $t8, .L800BC6D8_ovl1
/* 064918 800BC6C8 468021A0 */   cvt.s.w $f6, $f4
/* 06491C 800BC6CC 44814000 */  mtc1  $at, $f8
/* 064920 800BC6D0 00000000 */  nop   
/* 064924 800BC6D4 46083180 */  add.s $f6, $f6, $f8
.L800BC6D8_ovl1:
/* 064928 800BC6D8 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 06492C 800BC6DC 00280821 */  addu  $at, $at, $t0
/* 064930 800BC6E0 E42625D0 */ swc1 $f6, %lo(gEntitiesNextPosXArray)($at)
/* 064934 800BC6E4 8C590004 */  lw    $t9, 4($v0)
/* 064938 800BC6E8 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 06493C 800BC6EC 44995000 */  mtc1  $t9, $f10
/* 064940 800BC6F0 07210004 */  bgez  $t9, .L800BC704_ovl1
/* 064944 800BC6F4 46805420 */   cvt.s.w $f16, $f10
/* 064948 800BC6F8 44819000 */  mtc1  $at, $f18
/* 06494C 800BC6FC 00000000 */  nop   
/* 064950 800BC700 46128400 */  add.s $f16, $f16, $f18
.L800BC704_ovl1:
/* 064954 800BC704 8C690000 */  lw    $t1, ($v1)
/* 064958 800BC708 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 06495C 800BC70C 24060006 */  li    $a2, 6
/* 064960 800BC710 00095080 */  sll   $t2, $t1, 2
/* 064964 800BC714 002A0821 */  addu  $at, $at, $t2
/* 064968 800BC718 E4302790 */ swc1 $f16, %lo(gEntitiesNextPosYArray)($at)
/* 06496C 800BC71C 0C02BE30 */  jal   func_800AF8C0
/* 064970 800BC720 8C440008 */   lw    $a0, 8($v0)
/* 064974 800BC724 240B00FF */  li    $t3, 255
/* 064978 800BC728 AFAB0010 */  sw    $t3, 0x10($sp)
/* 06497C 800BC72C 02802025 */  move  $a0, $s4
/* 064980 800BC730 240500D0 */  li    $a1, 208
/* 064984 800BC734 240600B0 */  li    $a2, 176
/* 064988 800BC738 0C0296C5 */  jal   func_800A5B14
/* 06498C 800BC73C 24070080 */   li    $a3, 128
/* 064990 800BC740 3C13800F */  lui   $s3, %hi(D_800E9AA0) # $s3, 0x800f
/* 064994 800BC744 3C12800E */  lui   $s2, %hi(D_800E0D50) # $s2, 0x800e
/* 064998 800BC748 3C11800F */  lui   $s1, %hi(D_800E9C60) # $s1, 0x800f
/* 06499C 800BC74C 26319C60 */  addiu $s1, %lo(D_800E9C60) # addiu $s1, $s1, -0x63a0
/* 0649A0 800BC750 26520D50 */  addiu $s2, %lo(D_800E0D50) # addiu $s2, $s2, 0xd50
/* 0649A4 800BC754 26739AA0 */  addiu $s3, %lo(D_800E9AA0) # addiu $s3, $s3, -0x6560
/* 0649A8 800BC758 8E0C0000 */  lw    $t4, ($s0)
.L800BC75C_ovl1:
/* 0649AC 800BC75C 8D8D0000 */  lw    $t5, ($t4)
/* 0649B0 800BC760 000D7080 */  sll   $t6, $t5, 2
/* 0649B4 800BC764 024E7821 */  addu  $t7, $s2, $t6
/* 0649B8 800BC768 8DE20000 */  lw    $v0, ($t7)
/* 0649BC 800BC76C 00021080 */  sll   $v0, $v0, 2
/* 0649C0 800BC770 0222C021 */  addu  $t8, $s1, $v0
/* 0649C4 800BC774 8F190000 */  lw    $t9, ($t8)
/* 0649C8 800BC778 5320000D */  beql  $t9, $zero, .L800BC7B0_ovl1
/* 0649CC 800BC77C 02627021 */   addu  $t6, $s3, $v0
/* 0649D0 800BC780 0C02B2F7 */  jal   func_800ACBDC
/* 0649D4 800BC784 02802025 */   move  $a0, $s4
/* 0649D8 800BC788 8E090000 */  lw    $t1, ($s0)
/* 0649DC 800BC78C 0C02C640 */  jal   func_800B1900
/* 0649E0 800BC790 95240002 */   lhu   $a0, 2($t1)
/* 0649E4 800BC794 8E0A0000 */  lw    $t2, ($s0)
/* 0649E8 800BC798 8D4B0000 */  lw    $t3, ($t2)
/* 0649EC 800BC79C 000B6080 */  sll   $t4, $t3, 2
/* 0649F0 800BC7A0 024C6821 */  addu  $t5, $s2, $t4
/* 0649F4 800BC7A4 8DA20000 */  lw    $v0, ($t5)
/* 0649F8 800BC7A8 00021080 */  sll   $v0, $v0, 2
/* 0649FC 800BC7AC 02627021 */  addu  $t6, $s3, $v0
.L800BC7B0_ovl1:
/* 064A00 800BC7B0 8DCF0000 */  lw    $t7, ($t6)
/* 064A04 800BC7B4 00003825 */  move  $a3, $zero
/* 064A08 800BC7B8 11E00002 */  beqz  $t7, .L800BC7C4_ovl1
/* 064A0C 800BC7BC 00000000 */   nop   
/* 064A10 800BC7C0 24070001 */  li    $a3, 1
.L800BC7C4_ovl1:
/* 064A14 800BC7C4 0C02BE48 */  jal   func_800AF920
/* 064A18 800BC7C8 00E02025 */   move  $a0, $a3
/* 064A1C 800BC7CC 0C002DAF */  jal   finish_current_thread
/* 064A20 800BC7D0 24040001 */   li    $a0, 1
/* 064A24 800BC7D4 1000FFE1 */  b     .L800BC75C_ovl1
/* 064A28 800BC7D8 8E0C0000 */   lw    $t4, ($s0)
/* 064A2C 800BC7DC 00000000 */  nop   
/* 064A30 800BC7E0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 064A34 800BC7E4 8FB00020 */  lw    $s0, 0x20($sp)
/* 064A38 800BC7E8 8FB10024 */  lw    $s1, 0x24($sp)
/* 064A3C 800BC7EC 8FB20028 */  lw    $s2, 0x28($sp)
/* 064A40 800BC7F0 8FB3002C */  lw    $s3, 0x2c($sp)
/* 064A44 800BC7F4 8FB40030 */  lw    $s4, 0x30($sp)
/* 064A48 800BC7F8 03E00008 */  jr    $ra
/* 064A4C 800BC7FC 27BD0038 */   addiu $sp, $sp, 0x38
.type func_800BC664, @function
.size func_800BC664, . - func_800BC664
