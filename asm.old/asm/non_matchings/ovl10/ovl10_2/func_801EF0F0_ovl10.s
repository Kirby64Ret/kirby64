glabel func_801EF0F0_ovl10
/* 1DFE60 801EF0F0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1DFE64 801EF0F4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1DFE68 801EF0F8 AFB10018 */  sw    $s1, 0x18($sp)
/* 1DFE6C 801EF0FC AFB00014 */  sw    $s0, 0x14($sp)
/* 1DFE70 801EF100 8C91003C */  lw    $s1, 0x3c($a0)
/* 1DFE74 801EF104 00A08025 */  move  $s0, $a1
/* 1DFE78 801EF108 52200010 */  beql  $s1, $zero, .L801EF14C_ovl10
/* 1DFE7C 801EF10C 8FBF001C */   lw    $ra, 0x1c($sp)
.L801EF110_ovl10:
/* 1DFE80 801EF110 8E220080 */  lw    $v0, 0x80($s1)
/* 1DFE84 801EF114 10400008 */  beqz  $v0, .L801EF138_ovl10
/* 1DFE88 801EF118 00000000 */   nop   
/* 1DFE8C 801EF11C 8A0F0000 */  lwl   $t7, ($s0)
.L801EF120_ovl10:
/* 1DFE90 801EF120 9A0F0003 */  lwr   $t7, 3($s0)
/* 1DFE94 801EF124 A84F0058 */  swl   $t7, 0x58($v0)
/* 1DFE98 801EF128 B84F005B */  swr   $t7, 0x5b($v0)
/* 1DFE9C 801EF12C 8C420000 */  lw    $v0, ($v0)
/* 1DFEA0 801EF130 5440FFFB */  bnezl $v0, .L801EF120_ovl10
/* 1DFEA4 801EF134 8A0F0000 */   lwl   $t7, ($s0)
.L801EF138_ovl10:
/* 1DFEA8 801EF138 0C002FA4 */  jal   func_8000BE90
/* 1DFEAC 801EF13C 02202025 */   move  $a0, $s1
/* 1DFEB0 801EF140 1440FFF3 */  bnez  $v0, .L801EF110_ovl10
/* 1DFEB4 801EF144 00408825 */   move  $s1, $v0
/* 1DFEB8 801EF148 8FBF001C */  lw    $ra, 0x1c($sp)
.L801EF14C_ovl10:
/* 1DFEBC 801EF14C 8FB00014 */  lw    $s0, 0x14($sp)
/* 1DFEC0 801EF150 8FB10018 */  lw    $s1, 0x18($sp)
/* 1DFEC4 801EF154 03E00008 */  jr    $ra
/* 1DFEC8 801EF158 27BD0020 */   addiu $sp, $sp, 0x20
.type func_801EF0F0_ovl10, @function
.size func_801EF0F0_ovl10, . - func_801EF0F0_ovl10
