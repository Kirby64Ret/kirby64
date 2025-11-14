glabel func_8000C144
/* 00CD44 8000C144 8C820090 */  lw    $v0, 0x90($a0)
/* 00CD48 8000C148 44866000 */  mtc1  $a2, $f12
/* 00CD4C 8000C14C 3C018004 */  lui   $at, %hi(D_800406A4) # $at, 0x8004
/* 00CD50 8000C150 50400006 */  beql  $v0, $zero, .L8000C16C_ovl0
/* 00CD54 8000C154 AC850094 */   sw    $a1, 0x94($a0)
/* 00CD58 8000C158 A0400005 */  sb    $zero, 5($v0)
.L8000C15C_ovl0:
/* 00CD5C 8000C15C 8C420000 */  lw    $v0, ($v0)
/* 00CD60 8000C160 5440FFFE */  bnezl $v0, .L8000C15C_ovl0
/* 00CD64 8000C164 A0400005 */   sb    $zero, 5($v0)
/* 00CD68 8000C168 AC850094 */  sw    $a1, 0x94($a0)
.L8000C16C_ovl0:
/* 00CD6C 8000C16C C42406A4 */  lwc1  $f4, %lo(D_800406A4)($at)
/* 00CD70 8000C170 E48C00A0 */  swc1  $f12, 0xa0($a0)
/* 00CD74 8000C174 03E00008 */  jr    $ra
/* 00CD78 8000C178 E4840098 */   swc1  $f4, 0x98($a0)
.type func_8000C144, @function
.size func_8000C144, . - func_8000C144
