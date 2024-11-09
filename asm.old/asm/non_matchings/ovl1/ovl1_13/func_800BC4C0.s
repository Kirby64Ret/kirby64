glabel func_800BC4C0
/* 064710 800BC4C0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 064714 800BC4C4 AFB00014 */  sw    $s0, 0x14($sp)
/* 064718 800BC4C8 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 06471C 800BC4CC 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 064720 800BC4D0 8E030000 */  lw    $v1, ($s0)
/* 064724 800BC4D4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 064728 800BC4D8 AFB50028 */  sw    $s5, 0x28($sp)
/* 06472C 800BC4DC AFB40024 */  sw    $s4, 0x24($sp)
/* 064730 800BC4E0 AFB30020 */  sw    $s3, 0x20($sp)
/* 064734 800BC4E4 AFB2001C */  sw    $s2, 0x1c($sp)
/* 064738 800BC4E8 AFB10018 */  sw    $s1, 0x18($sp)
/* 06473C 800BC4EC 8C680000 */  lw    $t0, ($v1)
/* 064740 800BC4F0 3C07800F */ lui $a3, %hi(D_800E9E20)
/* 064744 800BC4F4 3C0F800D */  lui   $t7, %hi(D_800D5550) # $t7, 0x800d
/* 064748 800BC4F8 00084080 */  sll   $t0, $t0, 2
/* 06474C 800BC4FC 00E83821 */  addu  $a3, $a3, $t0
/* 064750 800BC500 8CE79E20 */ lw $a3, %lo(D_800E9E20)($a3)
/* 064754 800BC504 25EF5550 */  addiu $t7, %lo(D_800D5550) # addiu $t7, $t7, 0x5550
/* 064758 800BC508 00808825 */  move  $s1, $a0
/* 06475C 800BC50C 00077080 */  sll   $t6, $a3, 2
/* 064760 800BC510 01CF1021 */  addu  $v0, $t6, $t7
/* 064764 800BC514 8C580000 */  lw    $t8, ($v0)
/* 064768 800BC518 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 06476C 800BC51C 2405000A */  li    $a1, 10
/* 064770 800BC520 44982000 */  mtc1  $t8, $f4
/* 064774 800BC524 07010004 */  bgez  $t8, .L800BC538_ovl1
/* 064778 800BC528 468021A0 */   cvt.s.w $f6, $f4
/* 06477C 800BC52C 44814000 */  mtc1  $at, $f8
/* 064780 800BC530 00000000 */  nop   
/* 064784 800BC534 46083180 */  add.s $f6, $f6, $f8
.L800BC538_ovl1:
/* 064788 800BC538 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 06478C 800BC53C 00280821 */  addu  $at, $at, $t0
/* 064790 800BC540 E42625D0 */ swc1 $f6, %lo(gEntitiesNextPosXArray)($at)
/* 064794 800BC544 8C590004 */  lw    $t9, 4($v0)
/* 064798 800BC548 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 06479C 800BC54C 44995000 */  mtc1  $t9, $f10
/* 0647A0 800BC550 07210004 */  bgez  $t9, .L800BC564_ovl1
/* 0647A4 800BC554 46805420 */   cvt.s.w $f16, $f10
/* 0647A8 800BC558 44819000 */  mtc1  $at, $f18
/* 0647AC 800BC55C 00000000 */  nop   
/* 0647B0 800BC560 46128400 */  add.s $f16, $f16, $f18
.L800BC564_ovl1:
/* 0647B4 800BC564 8C690000 */  lw    $t1, ($v1)
/* 0647B8 800BC568 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0647BC 800BC56C 24060004 */  li    $a2, 4
/* 0647C0 800BC570 00095080 */  sll   $t2, $t1, 2
/* 0647C4 800BC574 002A0821 */  addu  $at, $at, $t2
/* 0647C8 800BC578 E4302790 */ swc1 $f16, %lo(gEntitiesNextPosYArray)($at)
/* 0647CC 800BC57C 0C02BE30 */  jal   func_800AF8C0
/* 0647D0 800BC580 8C440008 */   lw    $a0, 8($v0)
/* 0647D4 800BC584 3C15800F */  lui   $s5, %hi(D_800E9AA0) # $s5, 0x800f
/* 0647D8 800BC588 3C14800F */  lui   $s4, %hi(D_800E98E0) # $s4, 0x800f
/* 0647DC 800BC58C 3C13800E */  lui   $s3, %hi(D_800E0D50) # $s3, 0x800e
/* 0647E0 800BC590 3C12800F */  lui   $s2, %hi(D_800E9C60) # $s2, 0x800f
/* 0647E4 800BC594 26529C60 */  addiu $s2, %lo(D_800E9C60) # addiu $s2, $s2, -0x63a0
/* 0647E8 800BC598 26730D50 */  addiu $s3, %lo(D_800E0D50) # addiu $s3, $s3, 0xd50
/* 0647EC 800BC59C 269498E0 */  addiu $s4, %lo(D_800E98E0) # addiu $s4, $s4, -0x6720
/* 0647F0 800BC5A0 26B59AA0 */  addiu $s5, %lo(D_800E9AA0) # addiu $s5, $s5, -0x6560
/* 0647F4 800BC5A4 8E0B0000 */  lw    $t3, ($s0)
.L800BC5A8_ovl1:
/* 0647F8 800BC5A8 8D6C0000 */  lw    $t4, ($t3)
/* 0647FC 800BC5AC 000C6880 */  sll   $t5, $t4, 2
/* 064800 800BC5B0 026D7021 */  addu  $t6, $s3, $t5
/* 064804 800BC5B4 8DC20000 */  lw    $v0, ($t6)
/* 064808 800BC5B8 00021080 */  sll   $v0, $v0, 2
/* 06480C 800BC5BC 02427821 */  addu  $t7, $s2, $v0
/* 064810 800BC5C0 8DF80000 */  lw    $t8, ($t7)
/* 064814 800BC5C4 5300000D */  beql  $t8, $zero, .L800BC5FC_ovl1
/* 064818 800BC5C8 02826821 */   addu  $t5, $s4, $v0
/* 06481C 800BC5CC 0C02B2F7 */  jal   func_800ACBDC
/* 064820 800BC5D0 02202025 */   move  $a0, $s1
/* 064824 800BC5D4 8E190000 */  lw    $t9, ($s0)
/* 064828 800BC5D8 0C02C640 */  jal   func_800B1900
/* 06482C 800BC5DC 97240002 */   lhu   $a0, 2($t9)
/* 064830 800BC5E0 8E090000 */  lw    $t1, ($s0)
/* 064834 800BC5E4 8D2A0000 */  lw    $t2, ($t1)
/* 064838 800BC5E8 000A5880 */  sll   $t3, $t2, 2
/* 06483C 800BC5EC 026B6021 */  addu  $t4, $s3, $t3
/* 064840 800BC5F0 8D820000 */  lw    $v0, ($t4)
/* 064844 800BC5F4 00021080 */  sll   $v0, $v0, 2
/* 064848 800BC5F8 02826821 */  addu  $t5, $s4, $v0
.L800BC5FC_ovl1:
/* 06484C 800BC5FC 8DAE0000 */  lw    $t6, ($t5)
/* 064850 800BC600 00003825 */  move  $a3, $zero
/* 064854 800BC604 02A27821 */  addu  $t7, $s5, $v0
/* 064858 800BC608 15C00005 */  bnez  $t6, .L800BC620_ovl1
/* 06485C 800BC60C 00000000 */   nop   
/* 064860 800BC610 8DF80000 */  lw    $t8, ($t7)
/* 064864 800BC614 13000002 */  beqz  $t8, .L800BC620_ovl1
/* 064868 800BC618 00000000 */   nop   
/* 06486C 800BC61C 24070001 */  li    $a3, 1
.L800BC620_ovl1:
/* 064870 800BC620 0C02BE48 */  jal   func_800AF920
/* 064874 800BC624 00E02025 */   move  $a0, $a3
/* 064878 800BC628 0C002DAF */  jal   finish_current_thread
/* 06487C 800BC62C 24040001 */   li    $a0, 1
/* 064880 800BC630 1000FFDD */  b     .L800BC5A8_ovl1
/* 064884 800BC634 8E0B0000 */   lw    $t3, ($s0)
/* 064888 800BC638 00000000 */  nop   
/* 06488C 800BC63C 00000000 */  nop   
/* 064890 800BC640 8FBF002C */  lw    $ra, 0x2c($sp)
/* 064894 800BC644 8FB00014 */  lw    $s0, 0x14($sp)
/* 064898 800BC648 8FB10018 */  lw    $s1, 0x18($sp)
/* 06489C 800BC64C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0648A0 800BC650 8FB30020 */  lw    $s3, 0x20($sp)
/* 0648A4 800BC654 8FB40024 */  lw    $s4, 0x24($sp)
/* 0648A8 800BC658 8FB50028 */  lw    $s5, 0x28($sp)
/* 0648AC 800BC65C 03E00008 */  jr    $ra
/* 0648B0 800BC660 27BD0030 */   addiu $sp, $sp, 0x30
.type func_800BC4C0, @function
.size func_800BC4C0, . - func_800BC4C0
