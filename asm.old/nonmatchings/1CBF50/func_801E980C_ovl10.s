glabel func_801E980C_ovl10
/* 1DA57C 801E980C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1DA580 801E9810 AFB20024 */  sw         $s2, 0x24($sp)
/* 1DA584 801E9814 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 1DA588 801E9818 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 1DA58C 801E981C 8E450000 */  lw         $a1, 0x0($s2)
/* 1DA590 801E9820 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1DA594 801E9824 AFB50030 */  sw         $s5, 0x30($sp)
/* 1DA598 801E9828 AFB4002C */  sw         $s4, 0x2C($sp)
/* 1DA59C 801E982C AFB30028 */  sw         $s3, 0x28($sp)
/* 1DA5A0 801E9830 AFB10020 */  sw         $s1, 0x20($sp)
/* 1DA5A4 801E9834 AFB0001C */  sw         $s0, 0x1C($sp)
/* 1DA5A8 801E9838 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 1DA5AC 801E983C AFA40038 */  sw         $a0, 0x38($sp)
/* 1DA5B0 801E9840 8CAE0000 */  lw         $t6, 0x0($a1)
/* 1DA5B4 801E9844 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1DA5B8 801E9848 24180001 */  addiu      $t8, $zero, 0x1
/* 1DA5BC 801E984C 000E7880 */  sll        $t7, $t6, 2
/* 1DA5C0 801E9850 002F0821 */  addu       $at, $at, $t7
/* 1DA5C4 801E9854 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
glabel func_801E9858_ovl16
/* 1DA5C8 801E9858 8CB90000 */  lw         $t9, 0x0($a1)
/* 1DA5CC 801E985C 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1DA5D0 801E9860 24150002 */  addiu      $s5, $zero, 0x2
/* 1DA5D4 801E9864 00194080 */  sll        $t0, $t9, 2
/* 1DA5D8 801E9868 00280821 */  addu       $at, $at, $t0
/* 1DA5DC 801E986C AC389C60 */  sw         $t8, %lo(D_800E9C60)($at)
/* 1DA5E0 801E9870 8CA90000 */  lw         $t1, 0x0($a1)
/* 1DA5E4 801E9874 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1DA5E8 801E9878 3C040001 */  lui        $a0, (0x1036D >> 16)
/* 1DA5EC 801E987C 00095080 */  sll        $t2, $t1, 2
/* 1DA5F0 801E9880 002A0821 */  addu       $at, $at, $t2
/* 1DA5F4 801E9884 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1DA5F8 801E9888 8CAB0000 */  lw         $t3, 0x0($a1)
/* 1DA5FC 801E988C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1DA600 801E9890 00008025 */  or         $s0, $zero, $zero
/* 1DA604 801E9894 000B6080 */  sll        $t4, $t3, 2
/* 1DA608 801E9898 002C0821 */  addu       $at, $at, $t4
/* 1DA60C 801E989C AC35DFD0 */  sw         $s5, %lo(D_800DDFD0)($at)
/* 1DA610 801E98A0 0C02A7A9 */  jal        func_800A9EA4
/* 1DA614 801E98A4 3484036D */   ori       $a0, $a0, (0x1036D & 0xFFFF)
/* 1DA618 801E98A8 3C040001 */  lui        $a0, (0x1036C >> 16)
/* 1DA61C 801E98AC 0C02A7A9 */  jal        func_800A9EA4
/* 1DA620 801E98B0 3484036C */   ori       $a0, $a0, (0x1036C & 0xFFFF)
/* 1DA624 801E98B4 8E450000 */  lw         $a1, 0x0($s2)
/* 1DA628 801E98B8 3C01C090 */  lui        $at, (0xC0900000 >> 16)
/* 1DA62C 801E98BC 44812000 */  mtc1       $at, $f4
/* 1DA630 801E98C0 8CAD0000 */  lw         $t5, 0x0($a1)
/* 1DA634 801E98C4 3C13800E */  lui        $s3, %hi(D_800E3210)
/* 1DA638 801E98C8 26733210 */  addiu      $s3, $s3, %lo(D_800E3210)
/* 1DA63C 801E98CC 000D7080 */  sll        $t6, $t5, 2
/* 1DA640 801E98D0 026E7821 */  addu       $t7, $s3, $t6
/* 1DA644 801E98D4 E5E40000 */  swc1       $f4, 0x0($t7)
/* 1DA648 801E98D8 8CB90000 */  lw         $t9, 0x0($a1)
/* 1DA64C 801E98DC 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 1DA650 801E98E0 44813000 */  mtc1       $at, $f6
/* 1DA654 801E98E4 3C11800E */  lui        $s1, %hi(D_800E3750)
/* 1DA658 801E98E8 26313750 */  addiu      $s1, $s1, %lo(D_800E3750)
/* 1DA65C 801E98EC 0019C080 */  sll        $t8, $t9, 2
/* 1DA660 801E98F0 02384021 */  addu       $t0, $s1, $t8
/* 1DA664 801E98F4 E5060000 */  swc1       $f6, 0x0($t0)
.L801E98F8_ovl9:
/* 1DA668 801E98F8 8CA90000 */  lw         $t1, 0x0($a1)
/* 1DA66C 801E98FC 3C014090 */  lui        $at, (0x40900000 >> 16)
/* 1DA670 801E9900 44814000 */  mtc1       $at, $f8
/* 1DA674 801E9904 3C14800E */  lui        $s4, %hi(D_800E3C90)
/* 1DA678 801E9908 26943C90 */  addiu      $s4, $s4, %lo(D_800E3C90)
/* 1DA67C 801E990C 00095080 */  sll        $t2, $t1, 2
/* 1DA680 801E9910 028A5821 */  addu       $t3, $s4, $t2
/* 1DA684 801E9914 4480A000 */  mtc1       $zero, $f20
/* 1DA688 801E9918 E5680000 */  swc1       $f8, 0x0($t3)
.L801E991C_ovl10:
/* 1DA68C 801E991C 0C002DAF */  jal        finish_current_thread
/* 1DA690 801E9920 24040001 */   addiu     $a0, $zero, 0x1
/* 1DA694 801E9924 8E450000 */  lw         $a1, 0x0($s2)
glabel func_801E9928_ovl9
/* 1DA698 801E9928 8CA30000 */  lw         $v1, 0x0($a1)
/* 1DA69C 801E992C 00031880 */  sll        $v1, $v1, 2
/* 1DA6A0 801E9930 02636021 */  addu       $t4, $s3, $v1
/* 1DA6A4 801E9934 C5800000 */  lwc1       $f0, 0x0($t4)
/* 1DA6A8 801E9938 02836821 */  addu       $t5, $s4, $v1
/* 1DA6AC 801E993C 02231021 */  addu       $v0, $s1, $v1
/* 1DA6B0 801E9940 4614003C */  c.lt.s     $f0, $f20
/* 1DA6B4 801E9944 00000000 */  nop
/* 1DA6B8 801E9948 45020004 */  bc1fl      .L801E995C_ovl10
/* 1DA6BC 801E994C 46000086 */   mov.s     $f2, $f0
/* 1DA6C0 801E9950 10000002 */  b          .L801E995C_ovl10
/* 1DA6C4 801E9954 46000087 */   neg.s     $f2, $f0
/* 1DA6C8 801E9958 46000086 */  mov.s      $f2, $f0
.L801E995C_ovl10:
/* 1DA6CC 801E995C C5AA0000 */  lwc1       $f10, 0x0($t5)
/* 1DA6D0 801E9960 4602503E */  c.le.s     $f10, $f2
/* 1DA6D4 801E9964 00000000 */  nop
/* 1DA6D8 801E9968 45000005 */  bc1f       .L801E9980_ovl10
/* 1DA6DC 801E996C 00000000 */   nop
/* 1DA6E0 801E9970 C4500000 */  lwc1       $f16, 0x0($v0)
/* 1DA6E4 801E9974 26100001 */  addiu      $s0, $s0, 0x1
/* 1DA6E8 801E9978 46008487 */  neg.s      $f18, $f16
/* 1DA6EC 801E997C E4520000 */  swc1       $f18, 0x0($v0)
.L801E9980_ovl10:
/* 1DA6F0 801E9980 1615FFE6 */  bne        $s0, $s5, .L801E991C_ovl10
/* 1DA6F4 801E9984 00000000 */   nop
/* 1DA6F8 801E9988 8CAE0000 */  lw         $t6, 0x0($a1)
/* 1DA6FC 801E998C 44802000 */  mtc1       $zero, $f4
/* 1DA700 801E9990 3C01801F */  lui        $at, %hi(func_801F4B30_ovl10 + 0x24)
/* 1DA704 801E9994 000E7880 */  sll        $t7, $t6, 2
.L801E9998_ovl9:
/* 1DA708 801E9998 022FC821 */  addu       $t9, $s1, $t7
.L801E999C_ovl9:
/* 1DA70C 801E999C E7240000 */  swc1       $f4, 0x0($t9)
/* 1DA710 801E99A0 8CA30000 */  lw         $v1, 0x0($a1)
/* 1DA714 801E99A4 240C0001 */  addiu      $t4, $zero, 0x1
glabel func_801E99A8_ovl9
/* 1DA718 801E99A8 00031880 */  sll        $v1, $v1, 2
/* 1DA71C 801E99AC 0223C021 */  addu       $t8, $s1, $v1
/* 1DA720 801E99B0 C7060000 */  lwc1       $f6, 0x0($t8)
/* 1DA724 801E99B4 02634021 */  addu       $t0, $s3, $v1
/* 1DA728 801E99B8 E5060000 */  swc1       $f6, 0x0($t0)
/* 1DA72C 801E99BC 8CA90000 */  lw         $t1, 0x0($a1)
/* 1DA730 801E99C0 C4284B54 */  lwc1       $f8, %lo(func_801F4B30_ovl10 + 0x24)($at)
/* 1DA734 801E99C4 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1DA738 801E99C8 00095080 */  sll        $t2, $t1, 2
/* 1DA73C 801E99CC 028A5821 */  addu       $t3, $s4, $t2
/* 1DA740 801E99D0 E5680000 */  swc1       $f8, 0x0($t3)
/* 1DA744 801E99D4 8CAD0000 */  lw         $t5, 0x0($a1)
/* 1DA748 801E99D8 000D7080 */  sll        $t6, $t5, 2
/* 1DA74C 801E99DC 002E0821 */  addu       $at, $at, $t6
/* 1DA750 801E99E0 0C02BE85 */  jal        func_800AFA14
/* 1DA754 801E99E4 AC2C9E20 */   sw        $t4, %lo(D_800E9E20)($at)
/* 1DA758 801E99E8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1DA75C 801E99EC D7B40010 */  ldc1       $f20, 0x10($sp)
/* 1DA760 801E99F0 8FB0001C */  lw         $s0, 0x1C($sp)
/* 1DA764 801E99F4 8FB10020 */  lw         $s1, 0x20($sp)
/* 1DA768 801E99F8 8FB20024 */  lw         $s2, 0x24($sp)
/* 1DA76C 801E99FC 8FB30028 */  lw         $s3, 0x28($sp)
/* 1DA770 801E9A00 8FB4002C */  lw         $s4, 0x2C($sp)
/* 1DA774 801E9A04 8FB50030 */  lw         $s5, 0x30($sp)
/* 1DA778 801E9A08 03E00008 */  jr         $ra
/* 1DA77C 801E9A0C 27BD0038 */   addiu     $sp, $sp, 0x38
