glabel func_8001E5C8
/* 01F1C8 8001E5C8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01F1CC 8001E5CC AFBF002C */  sw    $ra, 0x2c($sp)
/* 01F1D0 8001E5D0 AFB40028 */  sw    $s4, 0x28($sp)
/* 01F1D4 8001E5D4 AFB30024 */  sw    $s3, 0x24($sp)
/* 01F1D8 8001E5D8 AFB20020 */  sw    $s2, 0x20($sp)
/* 01F1DC 8001E5DC AFB1001C */  sw    $s1, 0x1c($sp)
/* 01F1E0 8001E5E0 AFB00018 */  sw    $s0, 0x18($sp)
/* 01F1E4 8001E5E4 908E0003 */  lbu   $t6, 3($a0)
/* 01F1E8 8001E5E8 00A09025 */  move  $s2, $a1
/* 01F1EC 8001E5EC 00809825 */  move  $s3, $a0
/* 01F1F0 8001E5F0 15C00013 */  bnez  $t6, .L8001E640_ovl0
/* 01F1F4 8001E5F4 00C0A025 */   move  $s4, $a2
/* 01F1F8 8001E5F8 8498000E */  lh    $t8, 0xe($a0)
/* 01F1FC 8001E5FC 240F0001 */  li    $t7, 1
/* 01F200 8001E600 A08F0003 */  sb    $t7, 3($a0)
/* 01F204 8001E604 1B00000E */  blez  $t8, .L8001E640_ovl0
/* 01F208 8001E608 00008825 */   move  $s1, $zero
/* 01F20C 8001E60C 00808025 */  move  $s0, $a0
/* 01F210 8001E610 8E190010 */  lw    $t9, 0x10($s0)
.L8001E614_ovl0:
/* 01F214 8001E614 02402825 */  move  $a1, $s2
/* 01F218 8001E618 02803025 */  move  $a2, $s4
/* 01F21C 8001E61C 03322021 */  addu  $a0, $t9, $s2
/* 01F220 8001E620 0C007998 */  jal   func_8001E660
/* 01F224 8001E624 AE040010 */   sw    $a0, 0x10($s0)
/* 01F228 8001E628 8669000E */  lh    $t1, 0xe($s3)
/* 01F22C 8001E62C 26310001 */  addiu $s1, $s1, 1
/* 01F230 8001E630 26100004 */  addiu $s0, $s0, 4
/* 01F234 8001E634 0229082A */  slt   $at, $s1, $t1
/* 01F238 8001E638 5420FFF6 */  bnezl $at, .L8001E614_ovl0
/* 01F23C 8001E63C 8E190010 */   lw    $t9, 0x10($s0)
.L8001E640_ovl0:
/* 01F240 8001E640 8FBF002C */  lw    $ra, 0x2c($sp)
/* 01F244 8001E644 8FB00018 */  lw    $s0, 0x18($sp)
/* 01F248 8001E648 8FB1001C */  lw    $s1, 0x1c($sp)
/* 01F24C 8001E64C 8FB20020 */  lw    $s2, 0x20($sp)
/* 01F250 8001E650 8FB30024 */  lw    $s3, 0x24($sp)
/* 01F254 8001E654 8FB40028 */  lw    $s4, 0x28($sp)
/* 01F258 8001E658 03E00008 */  jr    $ra
/* 01F25C 8001E65C 27BD0030 */   addiu $sp, $sp, 0x30
.type func_8001E5C8, @function
.size func_8001E5C8, . - func_8001E5C8
