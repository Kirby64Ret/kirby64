glabel func_8000BC34
/* 00C834 8000BC34 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00C838 8000BC38 AFB30020 */  sw    $s3, 0x20($sp)
/* 00C83C 8000BC3C AFB2001C */  sw    $s2, 0x1c($sp)
/* 00C840 8000BC40 3C128005 */  lui   $s2, %hi(D_8004A578) # $s2, 0x8005
/* 00C844 8000BC44 3C138005 */  lui   $s3, %hi(D_8004A5F8) # $s3, 0x8005
/* 00C848 8000BC48 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00C84C 8000BC4C AFB10018 */  sw    $s1, 0x18($sp)
/* 00C850 8000BC50 AFB00014 */  sw    $s0, 0x14($sp)
/* 00C854 8000BC54 2673A5F8 */  addiu $s3, %lo(D_8004A5F8) # addiu $s3, $s3, -0x5a08
/* 00C858 8000BC58 2652A578 */  addiu $s2, %lo(D_8004A578) # addiu $s2, $s2, -0x5a88
/* 00C85C 8000BC5C 8E500000 */  lw    $s0, ($s2)
.L8000BC60_ovl0:
/* 00C860 8000BC60 52000007 */  beql  $s0, $zero, .L8000BC80_ovl0
/* 00C864 8000BC64 26520004 */   addiu $s2, $s2, 4
.L8000BC68_ovl0:
/* 00C868 8000BC68 8E110004 */  lw    $s1, 4($s0)
/* 00C86C 8000BC6C 0C0028A7 */  jal   func_8000A29C
/* 00C870 8000BC70 02002025 */   move  $a0, $s0
/* 00C874 8000BC74 1620FFFC */  bnez  $s1, .L8000BC68_ovl0
/* 00C878 8000BC78 02208025 */   move  $s0, $s1
/* 00C87C 8000BC7C 26520004 */  addiu $s2, $s2, 4
.L8000BC80_ovl0:
/* 00C880 8000BC80 5653FFF7 */  bnel  $s2, $s3, .L8000BC60_ovl0
/* 00C884 8000BC84 8E500000 */   lw    $s0, ($s2)
/* 00C888 8000BC88 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00C88C 8000BC8C 8FB00014 */  lw    $s0, 0x14($sp)
/* 00C890 8000BC90 8FB10018 */  lw    $s1, 0x18($sp)
/* 00C894 8000BC94 8FB2001C */  lw    $s2, 0x1c($sp)
/* 00C898 8000BC98 8FB30020 */  lw    $s3, 0x20($sp)
/* 00C89C 8000BC9C 03E00008 */  jr    $ra
/* 00C8A0 8000BCA0 27BD0028 */   addiu $sp, $sp, 0x28
.type func_8000BC34, @function
.size func_8000BC34, . - func_8000BC34
