glabel func_801DCE04_ovl11
/* 1E76C4 801DCE04 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E76C8 801DCE08 44866000 */  mtc1  $a2, $f12
/* 1E76CC 801DCE0C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E76D0 801DCE10 14A00009 */  bnez  $a1, .L801DCE38_ovl11
/* 1E76D4 801DCE14 AFA40018 */   sw    $a0, 0x18($sp)
/* 1E76D8 801DCE18 4600610D */  trunc.w.s $f4, $f12
/* 1E76DC 801DCE1C 24010001 */  li    $at, 1
/* 1E76E0 801DCE20 440F2000 */  mfc1  $t7, $f4
/* 1E76E4 801DCE24 00000000 */  nop   
/* 1E76E8 801DCE28 55E10004 */  bnel  $t7, $at, .L801DCE3C_ovl11
/* 1E76EC 801DCE2C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E76F0 801DCE30 0C077363 */  jal   func_801DCD8C_ovl11
/* 1E76F4 801DCE34 00000000 */   nop   
.L801DCE38_ovl11:
/* 1E76F8 801DCE38 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DCE3C_ovl11:
/* 1E76FC 801DCE3C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E7700 801DCE40 03E00008 */  jr    $ra
/* 1E7704 801DCE44 00000000 */   nop   
.type func_801DCE04_ovl11, @function
.size func_801DCE04_ovl11, . - func_801DCE04_ovl11
