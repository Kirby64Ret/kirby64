glabel func_8000FE2C
/* 010A2C 8000FE2C 8C82006C */  lw    $v0, 0x6c($a0)
/* 010A30 8000FE30 44866000 */  mtc1  $a2, $f12
/* 010A34 8000FE34 3C018004 */  lui   $at, %hi(D_800408E8) # $at, 0x8004
/* 010A38 8000FE38 50400006 */  beql  $v0, $zero, .L8000FE54_ovl0
/* 010A3C 8000FE3C AC850070 */   sw    $a1, 0x70($a0)
/* 010A40 8000FE40 A0400005 */  sb    $zero, 5($v0)
.L8000FE44_ovl0:
/* 010A44 8000FE44 8C420000 */  lw    $v0, ($v0)
/* 010A48 8000FE48 5440FFFE */  bnezl $v0, .L8000FE44_ovl0
/* 010A4C 8000FE4C A0400005 */   sb    $zero, 5($v0)
/* 010A50 8000FE50 AC850070 */  sw    $a1, 0x70($a0)
.L8000FE54_ovl0:
/* 010A54 8000FE54 C42408E8 */  lwc1  $f4, %lo(D_800408E8)($at)
/* 010A58 8000FE58 E48C007C */  swc1  $f12, 0x7c($a0)
/* 010A5C 8000FE5C 03E00008 */  jr    $ra
/* 010A60 8000FE60 E4840074 */   swc1  $f4, 0x74($a0)
.type func_8000FE2C, @function
.size func_8000FE2C, . - func_8000FE2C
