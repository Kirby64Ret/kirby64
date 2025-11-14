glabel func_8001E660
/* 01F260 8001E660 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01F264 8001E664 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01F268 8001E668 908E000E */  lbu   $t6, 0xe($a0)
/* 01F26C 8001E66C 240F0001 */  li    $t7, 1
/* 01F270 8001E670 55C0000E */  bnezl $t6, .L8001E6AC_ovl0
/* 01F274 8001E674 8FBF0014 */   lw    $ra, 0x14($sp)
/* 01F278 8001E678 8C980000 */  lw    $t8, ($a0)
/* 01F27C 8001E67C 8C880004 */  lw    $t0, 4($a0)
/* 01F280 8001E680 8C8A0008 */  lw    $t2, 8($a0)
/* 01F284 8001E684 0305C821 */  addu  $t9, $t8, $a1
/* 01F288 8001E688 01054821 */  addu  $t1, $t0, $a1
/* 01F28C 8001E68C 01455821 */  addu  $t3, $t2, $a1
/* 01F290 8001E690 A08F000E */  sb    $t7, 0xe($a0)
/* 01F294 8001E694 AC990000 */  sw    $t9, ($a0)
/* 01F298 8001E698 AC890004 */  sw    $t1, 4($a0)
/* 01F29C 8001E69C AC8B0008 */  sw    $t3, 8($a0)
/* 01F2A0 8001E6A0 0C0079AE */  jal   func_8001E6B8
/* 01F2A4 8001E6A4 01602025 */   move  $a0, $t3
/* 01F2A8 8001E6A8 8FBF0014 */  lw    $ra, 0x14($sp)
.L8001E6AC_ovl0:
/* 01F2AC 8001E6AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 01F2B0 8001E6B0 03E00008 */  jr    $ra
/* 01F2B4 8001E6B4 00000000 */   nop   
.type func_8001E660, @function
.size func_8001E660, . - func_8001E660
