glabel func_8015C804_ovl5
/* 103C74 8015C804 948E001C */  lhu   $t6, 0x1c($a0)
/* 103C78 8015C808 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 103C7C 8015C80C 44810000 */  mtc1  $at, $f0
/* 103C80 8015C810 448E2000 */  mtc1  $t6, $f4
/* 103C84 8015C814 44856000 */  mtc1  $a1, $f12
/* 103C88 8015C818 44867000 */  mtc1  $a2, $f14
/* 103C8C 8015C81C 05C10005 */  bgez  $t6, .L8015C834_ovl5
/* 103C90 8015C820 468021A0 */   cvt.s.w $f6, $f4
/* 103C94 8015C824 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 103C98 8015C828 44814000 */  mtc1  $at, $f8
/* 103C9C 8015C82C 00000000 */  nop   
/* 103CA0 8015C830 46083180 */  add.s $f6, $f6, $f8
.L8015C834_ovl5:
/* 103CA4 8015C834 C48A0028 */  lwc1  $f10, 0x28($a0)
/* 103CA8 8015C838 948F001E */  lhu   $t7, 0x1e($a0)
/* 103CAC 8015C83C 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 103CB0 8015C840 460A3402 */  mul.s $f16, $f6, $f10
/* 103CB4 8015C844 448F4000 */  mtc1  $t7, $f8
/* 103CB8 8015C848 00000000 */  nop   
/* 103CBC 8015C84C 468041A0 */  cvt.s.w $f6, $f8
/* 103CC0 8015C850 46008483 */  div.s $f18, $f16, $f0
/* 103CC4 8015C854 46126101 */  sub.s $f4, $f12, $f18
/* 103CC8 8015C858 05E10004 */  bgez  $t7, .L8015C86C_ovl5
/* 103CCC 8015C85C E4840020 */   swc1  $f4, 0x20($a0)
/* 103CD0 8015C860 44815000 */  mtc1  $at, $f10
/* 103CD4 8015C864 00000000 */  nop   
/* 103CD8 8015C868 460A3180 */  add.s $f6, $f6, $f10
.L8015C86C_ovl5:
/* 103CDC 8015C86C C490002C */  lwc1  $f16, 0x2c($a0)
/* 103CE0 8015C870 46103482 */  mul.s $f18, $f6, $f16
/* 103CE4 8015C874 46009103 */  div.s $f4, $f18, $f0
/* 103CE8 8015C878 46047201 */  sub.s $f8, $f14, $f4
/* 103CEC 8015C87C 03E00008 */  jr    $ra
/* 103CF0 8015C880 E4880024 */   swc1  $f8, 0x24($a0)