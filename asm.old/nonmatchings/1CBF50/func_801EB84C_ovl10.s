glabel func_801EB84C_ovl10
/* 1DC5BC 801EB84C 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1DC5C0 801EB850 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1DC5C4 801EB854 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1DC5C8 801EB858 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1DC5CC 801EB85C 8DC20000 */  lw         $v0, 0x0($t6)
/* 1DC5D0 801EB860 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 1DC5D4 801EB864 44812000 */  mtc1       $at, $f4
/* 1DC5D8 801EB868 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 1DC5DC 801EB86C 00021080 */  sll        $v0, $v0, 2
/* 1DC5E0 801EB870 00220821 */  addu       $at, $at, $v0
glabel func_801EB874_ovl9
/* 1DC5E4 801EB874 C426AA60 */  lwc1       $f6, %lo(D_800EAA60)($at)
/* 1DC5E8 801EB878 3C08800E */  lui        $t0, %hi(D_800E5F90)
/* 1DC5EC 801EB87C 3C09800E */  lui        $t1, %hi(D_800E6BD0)
/* 1DC5F0 801EB880 46062032 */  c.eq.s     $f4, $f6
/* 1DC5F4 801EB884 25296BD0 */  addiu      $t1, $t1, %lo(D_800E6BD0)
/* 1DC5F8 801EB888 25085F90 */  addiu      $t0, $t0, %lo(D_800E5F90)
/* 1DC5FC 801EB88C 01025821 */  addu       $t3, $t0, $v0
/* 1DC600 801EB890 45000013 */  bc1f       .L801EB8E0_ovl10
/* 1DC604 801EB894 01226021 */   addu      $t4, $t1, $v0
/* 1DC608 801EB898 3C03800D */  lui        $v1, %hi(D_800D7098)
/* 1DC60C 801EB89C 8C637098 */  lw         $v1, %lo(D_800D7098)($v1)
/* 1DC610 801EB8A0 3C08800E */  lui        $t0, %hi(D_800E5F90)
/* 1DC614 801EB8A4 3C09800E */  lui        $t1, %hi(D_800E6BD0)
/* 1DC618 801EB8A8 25296BD0 */  addiu      $t1, $t1, %lo(D_800E6BD0)
/* 1DC61C 801EB8AC 25085F90 */  addiu      $t0, $t0, %lo(D_800E5F90)
/* 1DC620 801EB8B0 00031880 */  sll        $v1, $v1, 2
/* 1DC624 801EB8B4 0103C821 */  addu       $t9, $t0, $v1
/* 1DC628 801EB8B8 01235021 */  addu       $t2, $t1, $v1
/* 1DC62C 801EB8BC 01027821 */  addu       $t7, $t0, $v0
/* 1DC630 801EB8C0 0122C021 */  addu       $t8, $t1, $v0
/* 1DC634 801EB8C4 8F050000 */  lw         $a1, 0x0($t8)
/* 1DC638 801EB8C8 8DE40000 */  lw         $a0, 0x0($t7)
/* 1DC63C 801EB8CC 8D470000 */  lw         $a3, 0x0($t2)
/* 1DC640 801EB8D0 0C03E547 */  jal        func_800F951C
/* 1DC644 801EB8D4 8F260000 */   lw        $a2, 0x0($t9)
/* 1DC648 801EB8D8 1000000C */  b          .L801EB90C_ovl10
.L801EB8DC_ovl9:
/* 1DC64C 801EB8DC 44804000 */   mtc1      $zero, $f8
.L801EB8E0_ovl10:
/* 1DC650 801EB8E0 3C03800D */  lui        $v1, %hi(D_800D7098 + 0x4)
/* 1DC654 801EB8E4 8C63709C */  lw         $v1, %lo(D_800D7098 + 0x4)($v1)
glabel func_801EB8E8_ovl9
/* 1DC658 801EB8E8 8D640000 */  lw         $a0, 0x0($t3)
/* 1DC65C 801EB8EC 8D850000 */  lw         $a1, 0x0($t4)
/* 1DC660 801EB8F0 00031880 */  sll        $v1, $v1, 2
/* 1DC664 801EB8F4 01036821 */  addu       $t5, $t0, $v1
/* 1DC668 801EB8F8 01237021 */  addu       $t6, $t1, $v1
/* 1DC66C 801EB8FC 8DC70000 */  lw         $a3, 0x0($t6)
/* 1DC670 801EB900 0C03E547 */  jal        func_800F951C
/* 1DC674 801EB904 8DA60000 */   lw        $a2, 0x0($t5)
/* 1DC678 801EB908 44804000 */  mtc1       $zero, $f8
.L801EB90C_ovl10:
/* 1DC67C 801EB90C 3C013E00 */  lui        $at, (0x3E000000 >> 16)
/* 1DC680 801EB910 44815000 */  mtc1       $at, $f10
/* 1DC684 801EB914 4608003C */  c.lt.s     $f0, $f8
/* 1DC688 801EB918 00000000 */  nop
/* 1DC68C 801EB91C 45020004 */  bc1fl      .L801EB930_ovl10
/* 1DC690 801EB920 46000086 */   mov.s     $f2, $f0
/* 1DC694 801EB924 10000002 */  b          .L801EB930_ovl10
/* 1DC698 801EB928 46000087 */   neg.s     $f2, $f0
/* 1DC69C 801EB92C 46000086 */  mov.s      $f2, $f0
.L801EB930_ovl10:
/* 1DC6A0 801EB930 460A1402 */  mul.s      $f16, $f2, $f10
/* 1DC6A4 801EB934 3C014470 */  lui        $at, (0x44700000 >> 16)
/* 1DC6A8 801EB938 44812000 */  mtc1       $at, $f4
/* 1DC6AC 801EB93C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1DC6B0 801EB940 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1DC6B4 801EB944 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1DC6B8 801EB948 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1DC6BC 801EB94C 4600848D */  trunc.w.s  $f18, $f16
/* 1DC6C0 801EB950 8C790000 */  lw         $t9, 0x0($v1)
/* 1DC6C4 801EB954 44049000 */  mfc1       $a0, $f18
/* 1DC6C8 801EB958 00195080 */  sll        $t2, $t9, 2
/* 1DC6CC 801EB95C 002A0821 */  addu       $at, $at, $t2
/* 1DC6D0 801EB960 00840019 */  multu      $a0, $a0
/* 1DC6D4 801EB964 0000C012 */  mflo       $t8
/* 1DC6D8 801EB968 44983000 */  mtc1       $t8, $f6
/* 1DC6DC 801EB96C 00000000 */  nop
/* 1DC6E0 801EB970 46803220 */  cvt.s.w    $f8, $f6
/* 1DC6E4 801EB974 44843000 */  mtc1       $a0, $f6
/* 1DC6E8 801EB978 46082283 */  div.s      $f10, $f4, $f8
/* 1DC6EC 801EB97C 46803120 */  cvt.s.w    $f4, $f6
.L801EB980_ovl16:
/* 1DC6F0 801EB980 46005407 */  neg.s      $f16, $f10
/* 1DC6F4 801EB984 E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
/* 1DC6F8 801EB988 3C0143F0 */  lui        $at, (0x43F00000 >> 16)
glabel func_801EB98C_ovl9
/* 1DC6FC 801EB98C 44819000 */  mtc1       $at, $f18
/* 1DC700 801EB990 8C6B0000 */  lw         $t3, 0x0($v1)
/* 1DC704 801EB994 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1DC708 801EB998 46049203 */  div.s      $f8, $f18, $f4
/* 1DC70C 801EB99C 000B6080 */  sll        $t4, $t3, 2
/* 1DC710 801EB9A0 002C0821 */  addu       $at, $at, $t4
.L801EB9A4_ovl16:
/* 1DC714 801EB9A4 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 1DC718 801EB9A8 8C620000 */  lw         $v0, 0x0($v1)
/* 1DC71C 801EB9AC 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 1DC720 801EB9B0 00021080 */  sll        $v0, $v0, 2
/* 1DC724 801EB9B4 00220821 */  addu       $at, $at, $v0
/* 1DC728 801EB9B8 C42AAA60 */  lwc1       $f10, %lo(D_800EAA60)($at)
.L801EB9BC_ovl16:
/* 1DC72C 801EB9BC 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 1DC730 801EB9C0 44818000 */  mtc1       $at, $f16
/* 1DC734 801EB9C4 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1DC738 801EB9C8 00220821 */  addu       $at, $at, $v0
/* 1DC73C 801EB9CC 46105182 */  mul.s      $f6, $f10, $f16
/* 1DC740 801EB9D0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1DC744 801EB9D4 03E00008 */  jr         $ra
/* 1DC748 801EB9D8 E42664D0 */   swc1      $f6, %lo(D_800E64D0)($at)
