glabel func_801FB744_ovl9
/* 1A9794 801FB744 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1A9798 801FB748 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1A979C 801FB74C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A97A0 801FB750 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A97A4 801FB754 8DC20000 */  lw         $v0, 0x0($t6)
/* 1A97A8 801FB758 3C0F800E */  lui        $t7, %hi(D_800E1B50)
/* 1A97AC 801FB75C 3C04800E */  lui        $a0, %hi(D_800E5F90)
/* 1A97B0 801FB760 00021080 */  sll        $v0, $v0, 2
/* 1A97B4 801FB764 01E27821 */  addu       $t7, $t7, $v0
/* 1A97B8 801FB768 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
/* 1A97BC 801FB76C 3C05800E */  lui        $a1, %hi(D_800E6BD0)
/* 1A97C0 801FB770 3C06800F */  lui        $a2, %hi(D_800E98E0)
/* 1A97C4 801FB774 3C07800F */  lui        $a3, %hi(D_800EA6E0)
/* 1A97C8 801FB778 00E23821 */  addu       $a3, $a3, $v0
/* 1A97CC 801FB77C 00C23021 */  addu       $a2, $a2, $v0
/* 1A97D0 801FB780 00A22821 */  addu       $a1, $a1, $v0
/* 1A97D4 801FB784 00822021 */  addu       $a0, $a0, $v0
/* 1A97D8 801FB788 8C845F90 */  lw         $a0, %lo(D_800E5F90)($a0)
/* 1A97DC 801FB78C 8CA56BD0 */  lw         $a1, %lo(D_800E6BD0)($a1)
/* 1A97E0 801FB790 8CC698E0 */  lw         $a2, %lo(D_800E98E0)($a2)
/* 1A97E4 801FB794 8CE7A6E0 */  lw         $a3, %lo(D_800EA6E0)($a3)
/* 1A97E8 801FB798 0C03E547 */  jal        func_800F951C
/* 1A97EC 801FB79C AFAF001C */   sw        $t7, 0x1C($sp)
/* 1A97F0 801FB7A0 3C018022 */  lui        $at, %hi(D_8021D98C_ovl9)
/* 1A97F4 801FB7A4 C424D98C */  lwc1       $f4, %lo(D_8021D98C_ovl9)($at)
/* 1A97F8 801FB7A8 3C048022 */  lui        $a0, %hi(D_8021D940_ovl9)
/* 1A97FC 801FB7AC 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 1A9800 801FB7B0 46040032 */  c.eq.s     $f0, $f4
/* 1A9804 801FB7B4 8FB9001C */  lw         $t9, 0x1C($sp)
/* 1A9808 801FB7B8 45000005 */  bc1f       .L801FB7D0_ovl9
/* 1A980C 801FB7BC 00000000 */   nop
/* 1A9810 801FB7C0 0C02909C */  jal        print_error_stub
/* 1A9814 801FB7C4 2484D940 */   addiu     $a0, $a0, %lo(D_8021D940_ovl9)
/* 1A9818 801FB7C8 10000038 */  b          .L801FB8AC_ovl9
/* 1A981C 801FB7CC 8FBF0014 */   lw        $ra, 0x14($sp)
.L801FB7D0_ovl9:
/* 1A9820 801FB7D0 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 1A9824 801FB7D4 44807000 */  mtc1       $zero, $f14
/* 1A9828 801FB7D8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1A982C 801FB7DC 8F020000 */  lw         $v0, 0x0($t8)
/* 1A9830 801FB7E0 460E003C */  c.lt.s     $f0, $f14
/* 1A9834 801FB7E4 C7260004 */  lwc1       $f6, 0x4($t9)
/* 1A9838 801FB7E8 00021080 */  sll        $v0, $v0, 2
/* 1A983C 801FB7EC 00220821 */  addu       $at, $at, $v0
/* 1A9840 801FB7F0 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* 1A9844 801FB7F4 3C014270 */  lui        $at, (0x42700000 >> 16)
/* 1A9848 801FB7F8 45000003 */  bc1f       .L801FB808_ovl9
/* 1A984C 801FB7FC 46083301 */   sub.s     $f12, $f6, $f8
/* 1A9850 801FB800 10000002 */  b          .L801FB80C_ovl9
/* 1A9854 801FB804 46000087 */   neg.s     $f2, $f0
.L801FB808_ovl9:
/* 1A9858 801FB808 46000086 */  mov.s      $f2, $f0
.L801FB80C_ovl9:
/* 1A985C 801FB80C 44818000 */  mtc1       $at, $f16
/* 1A9860 801FB810 3C08800F */  lui        $t0, %hi(D_800E9C60)
/* 1A9864 801FB814 25089C60 */  addiu      $t0, $t0, %lo(D_800E9C60)
/* 1A9868 801FB818 4602803E */  c.le.s     $f16, $f2
/* 1A986C 801FB81C 00481821 */  addu       $v1, $v0, $t0
/* 1A9870 801FB820 4503000D */  bc1tl      .L801FB858_ovl9
/* 1A9874 801FB824 8C690000 */   lw        $t1, 0x0($v1)
/* 1A9878 801FB828 460E603C */  c.lt.s     $f12, $f14
/* 1A987C 801FB82C 00000000 */  nop
/* 1A9880 801FB830 45020004 */  bc1fl      .L801FB844_ovl9
/* 1A9884 801FB834 46006006 */   mov.s     $f0, $f12
/* 1A9888 801FB838 10000002 */  b          .L801FB844_ovl9
/* 1A988C 801FB83C 46006007 */   neg.s     $f0, $f12
/* 1A9890 801FB840 46006006 */  mov.s      $f0, $f12
.L801FB844_ovl9:
/* 1A9894 801FB844 4600803E */  c.le.s     $f16, $f0
/* 1A9898 801FB848 00000000 */  nop
/* 1A989C 801FB84C 45000010 */  bc1f       .L801FB890_ovl9
/* 1A98A0 801FB850 00000000 */   nop
/* 1A98A4 801FB854 8C690000 */  lw         $t1, 0x0($v1)
.L801FB858_ovl9:
/* 1A98A8 801FB858 5520000B */  bnel       $t1, $zero, .L801FB888_ovl9
/* 1A98AC 801FB85C 240E0001 */   addiu     $t6, $zero, 0x1
/* 1A98B0 801FB860 0C07ED75 */  jal        func_801FB5D4_ovl9
/* 1A98B4 801FB864 00000000 */   nop
/* 1A98B8 801FB868 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 1A98BC 801FB86C 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 1A98C0 801FB870 3C0D800F */  lui        $t5, %hi(D_800E9C60)
/* 1A98C4 801FB874 25AD9C60 */  addiu      $t5, $t5, %lo(D_800E9C60)
/* 1A98C8 801FB878 8D4B0000 */  lw         $t3, 0x0($t2)
/* 1A98CC 801FB87C 000B6080 */  sll        $t4, $t3, 2
/* 1A98D0 801FB880 018D1821 */  addu       $v1, $t4, $t5
/* 1A98D4 801FB884 240E0001 */  addiu      $t6, $zero, 0x1
.L801FB888_ovl9:
/* 1A98D8 801FB888 10000005 */  b          .L801FB8A0_ovl9
/* 1A98DC 801FB88C AC6E0000 */   sw        $t6, 0x0($v1)
.L801FB890_ovl9:
/* 1A98E0 801FB890 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1A98E4 801FB894 00220821 */  addu       $at, $at, $v0
/* 1A98E8 801FB898 0C07ED4A */  jal        func_801FB528_ovl9
/* 1A98EC 801FB89C AC209C60 */   sw        $zero, %lo(D_800E9C60)($at)
.L801FB8A0_ovl9:
/* 1A98F0 801FB8A0 0C07EDB4 */  jal        func_801FB6D0_ovl9
/* 1A98F4 801FB8A4 00000000 */   nop
/* 1A98F8 801FB8A8 8FBF0014 */  lw         $ra, 0x14($sp)
.L801FB8AC_ovl9:
/* 1A98FC 801FB8AC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1A9900 801FB8B0 03E00008 */  jr         $ra
/* 1A9904 801FB8B4 00000000 */   nop
