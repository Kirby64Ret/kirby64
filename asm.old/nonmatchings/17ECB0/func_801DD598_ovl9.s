glabel func_801DD598_ovl9
/* 18B5E8 801DD598 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 18B5EC 801DD59C AFB00030 */  sw         $s0, 0x30($sp)
/* 18B5F0 801DD5A0 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 18B5F4 801DD5A4 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 18B5F8 801DD5A8 8E030000 */  lw         $v1, 0x0($s0)
/* 18B5FC 801DD5AC AFBF0044 */  sw         $ra, 0x44($sp)
/* 18B600 801DD5B0 AFB40040 */  sw         $s4, 0x40($sp)
/* 18B604 801DD5B4 AFB3003C */  sw         $s3, 0x3C($sp)
/* 18B608 801DD5B8 AFB20038 */  sw         $s2, 0x38($sp)
/* 18B60C 801DD5BC AFB10034 */  sw         $s1, 0x34($sp)
/* 18B610 801DD5C0 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 18B614 801DD5C4 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 18B618 801DD5C8 F7B40018 */  sdc1       $f20, 0x18($sp)
.L801DD5CC_ovl12:
/* 18B61C 801DD5CC AFA40048 */  sw         $a0, 0x48($sp)
/* 18B620 801DD5D0 8C6F0000 */  lw         $t7, 0x0($v1)
/* 18B624 801DD5D4 3C01800E */  lui        $at, %hi(D_800E76C0)
.L801DD5D8_ovl12:
/* 18B628 801DD5D8 240E00FF */  addiu      $t6, $zero, 0xFF
/* 18B62C 801DD5DC 002F0821 */  addu       $at, $at, $t7
/* 18B630 801DD5E0 A02E76C0 */  sb         $t6, %lo(D_800E76C0)($at)
glabel func_801DD5E4_ovl12
/* 18B634 801DD5E4 8C780000 */  lw         $t8, 0x0($v1)
/* 18B638 801DD5E8 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 18B63C 801DD5EC 24080004 */  addiu      $t0, $zero, 0x4
.L801DD5F0_ovl16:
/* 18B640 801DD5F0 0018C880 */  sll        $t9, $t8, 2
/* 18B644 801DD5F4 00390821 */  addu       $at, $at, $t9
.L801DD5F8_ovl11:
/* 18B648 801DD5F8 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
.L801DD5FC_ovl13:
/* 18B64C 801DD5FC 8C690000 */  lw         $t1, 0x0($v1)
/* 18B650 801DD600 3C01800E */  lui        $at, %hi(D_800DDFD0)
.L801DD604_ovl15:
/* 18B654 801DD604 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 18B658 801DD608 00095080 */  sll        $t2, $t1, 2
glabel func_801DD60C_ovl17
/* 18B65C 801DD60C 002A0821 */  addu       $at, $at, $t2
/* 18B660 801DD610 AC28DFD0 */  sw         $t0, %lo(D_800DDFD0)($at)
glabel func_801DD614_ovl13
/* 18B664 801DD614 8C6C0000 */  lw         $t4, 0x0($v1)
/* 18B668 801DD618 24421B50 */  addiu      $v0, $v0, %lo(D_800E1B50)
/* 18B66C 801DD61C 3C0B801D */  lui        $t3, %hi(D_801C8080)
.L801DD620_ovl14:
/* 18B670 801DD620 000C6880 */  sll        $t5, $t4, 2
/* 18B674 801DD624 004D7021 */  addu       $t6, $v0, $t5
/* 18B678 801DD628 8DCF0000 */  lw         $t7, 0x0($t6)
/* 18B67C 801DD62C 256B8080 */  addiu      $t3, $t3, %lo(D_801C8080)
.L801DD630_ovl15:
/* 18B680 801DD630 4480A000 */  mtc1       $zero, $f20
/* 18B684 801DD634 ADEB008C */  sw         $t3, 0x8C($t7)
.L801DD638_ovl10:
/* 18B688 801DD638 8E190000 */  lw         $t9, 0x0($s0)
glabel func_801DD63C_ovl12
/* 18B68C 801DD63C 3C18801D */  lui        $t8, %hi(D_801CB740)
.L801DD640_ovl14:
/* 18B690 801DD640 2718B740 */  addiu      $t8, $t8, %lo(D_801CB740)
.L801DD644_ovl10:
/* 18B694 801DD644 8F290000 */  lw         $t1, 0x0($t9)
/* 18B698 801DD648 4600A306 */  mov.s      $f12, $f20
/* 18B69C 801DD64C 00094080 */  sll        $t0, $t1, 2
/* 18B6A0 801DD650 00485021 */  addu       $t2, $v0, $t0
/* 18B6A4 801DD654 8D4C0000 */  lw         $t4, 0x0($t2)
.L801DD658_ovl11:
/* 18B6A8 801DD658 0C02BB30 */  jal        func_800AECC0
/* 18B6AC 801DD65C AD980098 */   sw        $t8, 0x98($t4)
/* 18B6B0 801DD660 0C02BB48 */  jal        func_800AED20
/* 18B6B4 801DD664 4600A306 */   mov.s     $f12, $f20
.L801DD668_ovl14:
/* 18B6B8 801DD668 8E030000 */  lw         $v1, 0x0($s0)
/* 18B6BC 801DD66C 3C14800F */  lui        $s4, %hi(D_800E8920)
/* 18B6C0 801DD670 26948920 */  addiu      $s4, $s4, %lo(D_800E8920)
glabel func_801DD674_ovl10
/* 18B6C4 801DD674 8C6D0000 */  lw         $t5, 0x0($v1)
/* 18B6C8 801DD678 3C01800F */  lui        $at, %hi(D_800EB160)
/* 18B6CC 801DD67C 3C11800F */  lui        $s1, %hi(D_800EAC20)
/* 18B6D0 801DD680 000D7080 */  sll        $t6, $t5, 2
/* 18B6D4 801DD684 028E5821 */  addu       $t3, $s4, $t6
/* 18B6D8 801DD688 AD600000 */  sw         $zero, 0x0($t3)
/* 18B6DC 801DD68C 8C6F0000 */  lw         $t7, 0x0($v1)
.L801DD690_ovl14:
/* 18B6E0 801DD690 2631AC20 */  addiu      $s1, $s1, %lo(D_800EAC20)
/* 18B6E4 801DD694 3C09800E */  lui        $t1, %hi(D_800E7880)
/* 18B6E8 801DD698 000FC880 */  sll        $t9, $t7, 2
.L801DD69C_ovl12:
/* 18B6EC 801DD69C 00390821 */  addu       $at, $at, $t9
/* 18B6F0 801DD6A0 E434B160 */  swc1       $f20, %lo(D_800EB160)($at)
/* 18B6F4 801DD6A4 8C650000 */  lw         $a1, 0x0($v1)
/* 18B6F8 801DD6A8 3C10800E */  lui        $s0, %hi(D_800E3C90)
/* 18B6FC 801DD6AC 4480C000 */  mtc1       $zero, $f24
.L801DD6B0_ovl12:
/* 18B700 801DD6B0 00051080 */  sll        $v0, $a1, 2
.L801DD6B4_ovl16:
/* 18B704 801DD6B4 02222021 */  addu       $a0, $s1, $v0
.L801DD6B8_ovl14:
/* 18B708 801DD6B8 C4800000 */  lwc1       $f0, 0x0($a0)
glabel func_801DD6BC_ovl12
/* 18B70C 801DD6BC 3C13800E */  lui        $s3, %hi(D_800E3750)
/* 18B710 801DD6C0 3C0A800F */  lui        $t2, %hi(D_800E8AE0)
/* 18B714 801DD6C4 4600A032 */  c.eq.s     $f20, $f0
/* 18B718 801DD6C8 26733750 */  addiu      $s3, $s3, %lo(D_800E3750)
/* 18B71C 801DD6CC 26103C90 */  addiu      $s0, $s0, %lo(D_800E3C90)
/* 18B720 801DD6D0 24120001 */  addiu      $s2, $zero, 0x1
/* 18B724 801DD6D4 45010011 */  bc1t       .L801DD71C_ovl9
/* 18B728 801DD6D8 01254821 */   addu      $t1, $t1, $a1
/* 18B72C 801DD6DC 91297880 */  lbu        $t1, %lo(D_800E7880)($t1)
.L801DD6E0_ovl14:
/* 18B730 801DD6E0 3C018022 */  lui        $at, %hi(D_8021BDB8_ovl9)
.L801DD6E4_ovl14:
/* 18B734 801DD6E4 00094080 */  sll        $t0, $t1, 2
/* 18B738 801DD6E8 00280821 */  addu       $at, $at, $t0
.L801DD6EC_ovl10:
/* 18B73C 801DD6EC C424BDB8 */  lwc1       $f4, %lo(D_8021BDB8_ovl9)($at)
/* 18B740 801DD6F0 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 18B744 801DD6F4 00220821 */  addu       $at, $at, $v0
/* 18B748 801DD6F8 46040182 */  mul.s      $f6, $f0, $f4
/* 18B74C 801DD6FC C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* 18B750 801DD700 3C01800E */  lui        $at, %hi(D_800E64D0)
glabel func_801DD704_ovl17
/* 18B754 801DD704 00220821 */  addu       $at, $at, $v0
/* 18B758 801DD708 46083282 */  mul.s      $f10, $f6, $f8
/* 18B75C 801DD70C E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* 18B760 801DD710 8C620000 */  lw         $v0, 0x0($v1)
/* 18B764 801DD714 00021080 */  sll        $v0, $v0, 2
/* 18B768 801DD718 02222021 */  addu       $a0, $s1, $v0
.L801DD71C_ovl9:
/* 18B76C 801DD71C 01425021 */  addu       $t2, $t2, $v0
.L801DD720_ovl11:
/* 18B770 801DD720 8D4A8AE0 */  lw         $t2, %lo(D_800E8AE0)($t2)
.L801DD724_ovl11:
/* 18B774 801DD724 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 18B778 801DD728 31580001 */  andi       $t8, $t2, 0x1
/* 18B77C 801DD72C 53000006 */  beql       $t8, $zero, .L801DD748_ovl9
glabel func_801DD730_ovl11
/* 18B780 801DD730 44819000 */   mtc1      $at, $f18
/* 18B784 801DD734 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 18B788 801DD738 44818000 */  mtc1       $at, $f16
/* 18B78C 801DD73C 10000004 */  b          .L801DD750_ovl10
/* 18B790 801DD740 E4900000 */   swc1      $f16, 0x0($a0)
/* 18B794 801DD744 44819000 */  mtc1       $at, $f18
.L801DD748_ovl9:
/* 18B798 801DD748 00000000 */  nop
glabel func_801DD74C_ovl15
/* 18B79C 801DD74C E4920000 */  swc1       $f18, 0x0($a0)
.L801DD750_ovl10:
/* 18B7A0 801DD750 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 18B7A4 801DD754 4481B000 */  mtc1       $at, $f22
/* 18B7A8 801DD758 3C018022 */  lui        $at, %hi(D_8021CF64_ovl9)
/* 18B7AC 801DD75C C434CF64 */  lwc1       $f20, %lo(D_8021CF64_ovl9)($at)
glabel func_801DD760_ovl10
/* 18B7B0 801DD760 8C620000 */  lw         $v0, 0x0($v1)
/* 18B7B4 801DD764 00021080 */  sll        $v0, $v0, 2
/* 18B7B8 801DD768 02826021 */  addu       $t4, $s4, $v0
/* 18B7BC 801DD76C 8D8D0000 */  lw         $t5, 0x0($t4)
/* 18B7C0 801DD770 02227021 */  addu       $t6, $s1, $v0
/* 18B7C4 801DD774 524D001A */  beql       $s2, $t5, .L801DD7E0_ovl9
/* 18B7C8 801DD778 8FBF0044 */   lw        $ra, 0x44($sp)
/* 18B7CC 801DD77C C5C40000 */  lwc1       $f4, 0x0($t6)
/* 18B7D0 801DD780 02625821 */  addu       $t3, $s3, $v0
/* 18B7D4 801DD784 46142182 */  mul.s      $f6, $f4, $f20
/* 18B7D8 801DD788 E5660000 */  swc1       $f6, 0x0($t3)
/* 18B7DC 801DD78C 8C620000 */  lw         $v0, 0x0($v1)
/* 18B7E0 801DD790 00021080 */  sll        $v0, $v0, 2
/* 18B7E4 801DD794 02227821 */  addu       $t7, $s1, $v0
/* 18B7E8 801DD798 C5E80000 */  lwc1       $f8, 0x0($t7)
/* 18B7EC 801DD79C 02024821 */  addu       $t1, $s0, $v0
/* 18B7F0 801DD7A0 0202C821 */  addu       $t9, $s0, $v0
/* 18B7F4 801DD7A4 46164002 */  mul.s      $f0, $f8, $f22
/* 18B7F8 801DD7A8 4618003C */  c.lt.s     $f0, $f24
.L801DD7AC_ovl12:
/* 18B7FC 801DD7AC 00000000 */  nop
/* 18B800 801DD7B0 45020005 */  bc1fl      func_801DD7C8_ovl15
/* 18B804 801DD7B4 E5200000 */   swc1      $f0, 0x0($t1)
.L801DD7B8_ovl13:
/* 18B808 801DD7B8 46000287 */  neg.s      $f10, $f0
/* 18B80C 801DD7BC 10000002 */  b          func_801DD7C8_ovl15
glabel func_801DD7C0_ovl15
/* 18B810 801DD7C0 E72A0000 */   swc1      $f10, 0x0($t9)
/* 18B814 801DD7C4 E5200000 */  swc1       $f0, 0x0($t1)
glabel func_801DD7C8_ovl15
/* 18B818 801DD7C8 0C002DAF */  jal        finish_current_thread
glabel func_801DD7CC_ovl12
/* 18B81C 801DD7CC 24040001 */   addiu     $a0, $zero, 0x1
/* 18B820 801DD7D0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
glabel func_801DD7D4_ovl11
/* 18B824 801DD7D4 1000FFE2 */  b          func_801DD760_ovl10
/* 18B828 801DD7D8 8C63A7C4 */   lw        $v1, %lo(D_8004A7C4)($v1)
/* 18B82C 801DD7DC 8FBF0044 */  lw         $ra, 0x44($sp)
.L801DD7E0_ovl9:
/* 18B830 801DD7E0 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 18B834 801DD7E4 00220821 */  addu       $at, $at, $v0
/* 18B838 801DD7E8 24080005 */  addiu      $t0, $zero, 0x5
/* 18B83C 801DD7EC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 18B840 801DD7F0 D7B60020 */  ldc1       $f22, 0x20($sp)
.L801DD7F4_ovl13:
/* 18B844 801DD7F4 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 18B848 801DD7F8 8FB00030 */  lw         $s0, 0x30($sp)
/* 18B84C 801DD7FC 8FB10034 */  lw         $s1, 0x34($sp)
/* 18B850 801DD800 8FB20038 */  lw         $s2, 0x38($sp)
/* 18B854 801DD804 8FB3003C */  lw         $s3, 0x3C($sp)
/* 18B858 801DD808 8FB40040 */  lw         $s4, 0x40($sp)
/* 18B85C 801DD80C AC28DC50 */  sw         $t0, %lo(gEntityVtableIndexArray)($at)
/* 18B860 801DD810 03E00008 */  jr         $ra
/* 18B864 801DD814 27BD0048 */   addiu     $sp, $sp, 0x48
