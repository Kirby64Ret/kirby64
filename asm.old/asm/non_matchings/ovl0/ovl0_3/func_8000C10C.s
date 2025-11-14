glabel func_8000C10C
/* 00CD0C 8000C10C 8C82006C */  lw    $v0, 0x6c($a0)
/* 00CD10 8000C110 44866000 */  mtc1  $a2, $f12
/* 00CD14 8000C114 3C018004 */  lui   $at, %hi(D_800406A0) # $at, 0x8004
/* 00CD18 8000C118 50400006 */  beql  $v0, $zero, .L8000C134_ovl0
/* 00CD1C 8000C11C AC850070 */   sw    $a1, 0x70($a0)
/* 00CD20 8000C120 A0400005 */  sb    $zero, 5($v0)
.L8000C124_ovl0:
/* 00CD24 8000C124 8C420000 */  lw    $v0, ($v0)
/* 00CD28 8000C128 5440FFFE */  bnezl $v0, .L8000C124_ovl0
/* 00CD2C 8000C12C A0400005 */   sb    $zero, 5($v0)
/* 00CD30 8000C130 AC850070 */  sw    $a1, 0x70($a0)
.L8000C134_ovl0:
/* 00CD34 8000C134 C42406A0 */  lwc1  $f4, %lo(D_800406A0)($at)
/* 00CD38 8000C138 E48C007C */  swc1  $f12, 0x7c($a0)
/* 00CD3C 8000C13C 03E00008 */  jr    $ra
/* 00CD40 8000C140 E4840074 */   swc1  $f4, 0x74($a0)
.type func_8000C10C, @function
.size func_8000C10C, . - func_8000C10C
