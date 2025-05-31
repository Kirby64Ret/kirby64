glabel func_800BDFB8
/* 066208 800BDFB8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 06620C 800BDFBC AFB2001C */  sw    $s2, 0x1c($sp)
/* 066210 800BDFC0 AFB00014 */  sw    $s0, 0x14($sp)
/* 066214 800BDFC4 00C09025 */  move  $s2, $a2
/* 066218 800BDFC8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 06621C 800BDFCC AFB30020 */  sw    $s3, 0x20($sp)
/* 066220 800BDFD0 AFB10018 */  sw    $s1, 0x18($sp)
/* 066224 800BDFD4 10C0000D */  beqz  $a2, .L800BE00C_ovl1
/* 066228 800BDFD8 00008025 */   move  $s0, $zero
/* 06622C 800BDFDC 00057080 */  sll   $t6, $a1, 2
/* 066230 800BDFE0 008E8821 */  addu  $s1, $a0, $t6
/* 066234 800BDFE4 3413FFFF */  li    $s3, 65535
.L800BDFE8_ovl1:
/* 066238 800BDFE8 8E240000 */  lw    $a0, ($s1)
/* 06623C 800BDFEC 52640008 */  beql  $s3, $a0, .L800BE010_ovl1
/* 066240 800BDFF0 8FBF0024 */   lw    $ra, 0x24($sp)
/* 066244 800BDFF4 0C02A2EB */  jal   func_800A8BAC
/* 066248 800BDFF8 00000000 */   nop   
/* 06624C 800BDFFC 26100001 */  addiu $s0, $s0, 1
/* 066250 800BE000 0212082B */  sltu  $at, $s0, $s2
/* 066254 800BE004 1420FFF8 */  bnez  $at, .L800BDFE8_ovl1
/* 066258 800BE008 26310004 */   addiu $s1, $s1, 4
.L800BE00C_ovl1:
/* 06625C 800BE00C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800BE010_ovl1:
/* 066260 800BE010 8FB00014 */  lw    $s0, 0x14($sp)
/* 066264 800BE014 8FB10018 */  lw    $s1, 0x18($sp)
/* 066268 800BE018 8FB2001C */  lw    $s2, 0x1c($sp)
/* 06626C 800BE01C 8FB30020 */  lw    $s3, 0x20($sp)
/* 066270 800BE020 03E00008 */  jr    $ra
/* 066274 800BE024 27BD0028 */   addiu $sp, $sp, 0x28
.type func_800BDFB8, @function
.size func_800BDFB8, . - func_800BDFB8
