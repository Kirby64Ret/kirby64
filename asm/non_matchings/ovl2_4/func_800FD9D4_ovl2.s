glabel func_800FD9D4_ovl2
/* 086444 800FD9D4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 086448 800FD9D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08644C 800FD9DC AFA40020 */  sw    $a0, 0x20($sp)
/* 086450 800FD9E0 24040022 */  li    $a0, 34
/* 086454 800FD9E4 2405003C */  li    $a1, 60
/* 086458 800FD9E8 0C02BB02 */  jal   func_800AEC08_ovl2
/* 08645C 800FD9EC 2406004A */   li    $a2, 74
/* 086460 800FD9F0 2401FFFF */  li    $at, -1
/* 086464 800FD9F4 14410007 */  bne   $v0, $at, .L800FDA14_ovl2
/* 086468 800FD9F8 00401825 */   move  $v1, $v0
/* 08646C 800FD9FC 3C048013 */  lui   $a0, %hi(D_8012896C) # $a0, 0x8013
/* 086470 800FDA00 2484896C */  addiu $a0, %lo(D_8012896C) # addiu $a0, $a0, -0x7694
/* 086474 800FDA04 0C02909C */  jal   print_error_stub
/* 086478 800FDA08 AFA3001C */   sw    $v1, 0x1c($sp)
/* 08647C 800FDA0C 10000006 */  b     .L800FDA28_ovl2
/* 086480 800FDA10 8FA3001C */   lw    $v1, 0x1c($sp)
.L800FDA14_ovl2:
/* 086484 800FDA14 8FAE0020 */  lw    $t6, 0x20($sp)
/* 086488 800FDA18 00027880 */  sll   $t7, $v0, 2
/* 08648C 800FDA1C 3C01800E */  lui   $at, 0x800e
/* 086490 800FDA20 002F0821 */  addu  $at, $at, $t7
/* 086494 800FDA24 AC2EDC50 */  sw    $t6, -0x23b0($at)
.L800FDA28_ovl2:
/* 086498 800FDA28 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08649C 800FDA2C 27BD0020 */  addiu $sp, $sp, 0x20
/* 0864A0 800FDA30 00601025 */  move  $v0, $v1
/* 0864A4 800FDA34 03E00008 */  jr    $ra
/* 0864A8 800FDA38 00000000 */   nop   
