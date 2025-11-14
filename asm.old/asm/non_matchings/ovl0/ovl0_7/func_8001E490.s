glabel func_8001E490
/* 01F090 8001E490 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 01F094 8001E494 AFBF0024 */  sw    $ra, 0x24($sp)
/* 01F098 8001E498 AFB30020 */  sw    $s3, 0x20($sp)
/* 01F09C 8001E49C AFB2001C */  sw    $s2, 0x1c($sp)
/* 01F0A0 8001E4A0 AFB10018 */  sw    $s1, 0x18($sp)
/* 01F0A4 8001E4A4 AFB00014 */  sw    $s0, 0x14($sp)
/* 01F0A8 8001E4A8 848E0002 */  lh    $t6, 2($a0)
/* 01F0AC 8001E4AC 00808825 */  move  $s1, $a0
/* 01F0B0 8001E4B0 00A09825 */  move  $s3, $a1
/* 01F0B4 8001E4B4 19C0000F */  blez  $t6, .L8001E4F4_ovl0
/* 01F0B8 8001E4B8 00009025 */   move  $s2, $zero
/* 01F0BC 8001E4BC 00808025 */  move  $s0, $a0
/* 01F0C0 8001E4C0 8E0F0004 */  lw    $t7, 4($s0)
.L8001E4C4_ovl0:
/* 01F0C4 8001E4C4 02202825 */  move  $a1, $s1
/* 01F0C8 8001E4C8 01F12021 */  addu  $a0, $t7, $s1
/* 01F0CC 8001E4CC 10800003 */  beqz  $a0, .L8001E4DC_ovl0
/* 01F0D0 8001E4D0 AE040004 */   sw    $a0, 4($s0)
/* 01F0D4 8001E4D4 0C007944 */  jal   func_8001E510
/* 01F0D8 8001E4D8 02603025 */   move  $a2, $s3
.L8001E4DC_ovl0:
/* 01F0DC 8001E4DC 86390002 */  lh    $t9, 2($s1)
/* 01F0E0 8001E4E0 26520001 */  addiu $s2, $s2, 1
/* 01F0E4 8001E4E4 26100004 */  addiu $s0, $s0, 4
/* 01F0E8 8001E4E8 0259082A */  slt   $at, $s2, $t9
/* 01F0EC 8001E4EC 5420FFF5 */  bnezl $at, .L8001E4C4_ovl0
/* 01F0F0 8001E4F0 8E0F0004 */   lw    $t7, 4($s0)
.L8001E4F4_ovl0:
/* 01F0F4 8001E4F4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 01F0F8 8001E4F8 8FB00014 */  lw    $s0, 0x14($sp)
/* 01F0FC 8001E4FC 8FB10018 */  lw    $s1, 0x18($sp)
/* 01F100 8001E500 8FB2001C */  lw    $s2, 0x1c($sp)
/* 01F104 8001E504 8FB30020 */  lw    $s3, 0x20($sp)
/* 01F108 8001E508 03E00008 */  jr    $ra
/* 01F10C 8001E50C 27BD0028 */   addiu $sp, $sp, 0x28
.type func_8001E490, @function
.size func_8001E490, . - func_8001E490
