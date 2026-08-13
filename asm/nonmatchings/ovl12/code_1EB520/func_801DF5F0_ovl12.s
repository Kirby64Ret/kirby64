nonmatching func_801DF5F0_ovl12, 0x168

glabel func_801DF5F0_ovl12
    /* 1EF930 801DF5F0 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 1EF934 801DF5F4 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 1EF938 801DF5F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EF93C 801DF5FC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EF940 801DF600 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 1EF944 801DF604 3C06800F */  lui        $a2, %hi(D_800EA520)
    /* 1EF948 801DF608 24C6A520 */  addiu      $a2, $a2, %lo(D_800EA520)
    /* 1EF94C 801DF60C 000E7880 */  sll        $t7, $t6, 2
    /* 1EF950 801DF610 00CFC021 */  addu       $t8, $a2, $t7
    /* 1EF954 801DF614 AF000000 */  sw         $zero, 0x0($t8)
    /* 1EF958 801DF618 90990000 */  lbu        $t9, 0x0($a0)
    /* 1EF95C 801DF61C 24070001 */  addiu      $a3, $zero, 0x1
    /* 1EF960 801DF620 54F90024 */  bnel       $a3, $t9, .L801DF6B4_ovl12
    /* 1EF964 801DF624 8CA20000 */   lw        $v0, 0x0($a1)
    /* 1EF968 801DF628 90880001 */  lbu        $t0, 0x1($a0)
    /* 1EF96C 801DF62C 24010003 */  addiu      $at, $zero, 0x3
    /* 1EF970 801DF630 55010020 */  bnel       $t0, $at, .L801DF6B4_ovl12
    /* 1EF974 801DF634 8CA20000 */   lw        $v0, 0x0($a1)
    /* 1EF978 801DF638 8C82000C */  lw         $v0, 0xC($a0)
    /* 1EF97C 801DF63C 3C09800E */  lui        $t1, %hi(D_800DD710)
    /* 1EF980 801DF640 2401001A */  addiu      $at, $zero, 0x1A
    /* 1EF984 801DF644 00021880 */  sll        $v1, $v0, 2
    /* 1EF988 801DF648 01234821 */  addu       $t1, $t1, $v1
    /* 1EF98C 801DF64C 8D29D710 */  lw         $t1, %lo(D_800DD710)($t1)
    /* 1EF990 801DF650 3C0B800E */  lui        $t3, %hi(D_800E77A0)
    /* 1EF994 801DF654 00025040 */  sll        $t2, $v0, 1
    /* 1EF998 801DF658 15210015 */  bne        $t1, $at, .L801DF6B0_ovl12
    /* 1EF99C 801DF65C 016A5821 */   addu      $t3, $t3, $t2
    /* 1EF9A0 801DF660 956B77A0 */  lhu        $t3, %lo(D_800E77A0)($t3)
    /* 1EF9A4 801DF664 24010029 */  addiu      $at, $zero, 0x29
    /* 1EF9A8 801DF668 00C36021 */  addu       $t4, $a2, $v1
    /* 1EF9AC 801DF66C 55610011 */  bnel       $t3, $at, .L801DF6B4_ovl12
    /* 1EF9B0 801DF670 8CA20000 */   lw        $v0, 0x0($a1)
    /* 1EF9B4 801DF674 8CA20000 */  lw         $v0, 0x0($a1)
    /* 1EF9B8 801DF678 3C0E800F */  lui        $t6, %hi(D_800EA360)
    /* 1EF9BC 801DF67C 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 1EF9C0 801DF680 00021080 */  sll        $v0, $v0, 2
    /* 1EF9C4 801DF684 01C27021 */  addu       $t6, $t6, $v0
    /* 1EF9C8 801DF688 8DCEA360 */  lw         $t6, %lo(D_800EA360)($t6)
    /* 1EF9CC 801DF68C 3C04800E */  lui        $a0, %hi(D_800E7B20)
    /* 1EF9D0 801DF690 24847B20 */  addiu      $a0, $a0, %lo(D_800E7B20)
    /* 1EF9D4 801DF694 15AE0006 */  bne        $t5, $t6, .L801DF6B0_ovl12
    /* 1EF9D8 801DF698 00821821 */   addu      $v1, $a0, $v0
    /* 1EF9DC 801DF69C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 1EF9E0 801DF6A0 44813000 */  mtc1       $at, $f6
    /* 1EF9E4 801DF6A4 C4640000 */  lwc1       $f4, 0x0($v1)
    /* 1EF9E8 801DF6A8 46062201 */  sub.s      $f8, $f4, $f6
    /* 1EF9EC 801DF6AC E4680000 */  swc1       $f8, 0x0($v1)
  .L801DF6B0_ovl12:
    /* 1EF9F0 801DF6B0 8CA20000 */  lw         $v0, 0x0($a1)
  .L801DF6B4_ovl12:
    /* 1EF9F4 801DF6B4 3C04800E */  lui        $a0, %hi(D_800E7B20)
    /* 1EF9F8 801DF6B8 24847B20 */  addiu      $a0, $a0, %lo(D_800E7B20)
    /* 1EF9FC 801DF6BC 00021080 */  sll        $v0, $v0, 2
    /* 1EFA00 801DF6C0 3C01800F */  lui        $at, %hi(D_800EB160)
    /* 1EFA04 801DF6C4 00220821 */  addu       $at, $at, $v0
    /* 1EFA08 801DF6C8 00827821 */  addu       $t7, $a0, $v0
    /* 1EFA0C 801DF6CC C5F00000 */  lwc1       $f16, 0x0($t7)
    /* 1EFA10 801DF6D0 C42AB160 */  lwc1       $f10, %lo(D_800EB160)($at)
    /* 1EFA14 801DF6D4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 1EFA18 801DF6D8 44819000 */  mtc1       $at, $f18
    /* 1EFA1C 801DF6DC 46105001 */  sub.s      $f0, $f10, $f16
    /* 1EFA20 801DF6E0 00C2C021 */  addu       $t8, $a2, $v0
    /* 1EFA24 801DF6E4 4600903C */  c.lt.s     $f18, $f0
    /* 1EFA28 801DF6E8 00000000 */  nop
    /* 1EFA2C 801DF6EC 45000002 */  bc1f       .L801DF6F8_ovl12
    /* 1EFA30 801DF6F0 00000000 */   nop
    /* 1EFA34 801DF6F4 AF070000 */  sw         $a3, 0x0($t8)
  .L801DF6F8_ovl12:
    /* 1EFA38 801DF6F8 3C02800D */  lui        $v0, %hi(D_800D70D8)
    /* 1EFA3C 801DF6FC 244270D8 */  addiu      $v0, $v0, %lo(D_800D70D8)
    /* 1EFA40 801DF700 C4440004 */  lwc1       $f4, 0x4($v0)
    /* 1EFA44 801DF704 44804000 */  mtc1       $zero, $f8
    /* 1EFA48 801DF708 46002181 */  sub.s      $f6, $f4, $f0
    /* 1EFA4C 801DF70C E4460004 */  swc1       $f6, 0x4($v0)
    /* 1EFA50 801DF710 8CB90000 */  lw         $t9, 0x0($a1)
    /* 1EFA54 801DF714 00194080 */  sll        $t0, $t9, 2
    /* 1EFA58 801DF718 00884821 */  addu       $t1, $a0, $t0
    /* 1EFA5C 801DF71C C52A0000 */  lwc1       $f10, 0x0($t1)
    /* 1EFA60 801DF720 4608503E */  c.le.s     $f10, $f8
    /* 1EFA64 801DF724 00000000 */  nop
    /* 1EFA68 801DF728 45000005 */  bc1f       .L801DF740_ovl12
    /* 1EFA6C 801DF72C 00000000 */   nop
    /* 1EFA70 801DF730 0C077CFC */  jal        func_801DF3F0_ovl12
    /* 1EFA74 801DF734 00000000 */   nop
    /* 1EFA78 801DF738 10000004 */  b          .L801DF74C_ovl12
    /* 1EFA7C 801DF73C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801DF740_ovl12:
    /* 1EFA80 801DF740 0C077E77 */  jal        func_801DF9DC_ovl12
    /* 1EFA84 801DF744 00000000 */   nop
    /* 1EFA88 801DF748 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801DF74C_ovl12:
    /* 1EFA8C 801DF74C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EFA90 801DF750 03E00008 */  jr         $ra
    /* 1EFA94 801DF754 00000000 */   nop
endlabel func_801DF5F0_ovl12
.size func_801DF5F0_ovl12, . - func_801DF5F0_ovl12
