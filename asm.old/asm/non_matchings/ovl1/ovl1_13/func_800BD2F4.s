glabel draw_kirby_stars
/* 065544 800BD2F4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 065548 800BD2F8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 06554C 800BD2FC 00808825 */  move  $s1, $a0
/* 065550 800BD300 AFBF0024 */  sw    $ra, 0x24($sp)
/* 065554 800BD304 AFB20020 */  sw    $s2, 0x20($sp)
/* 065558 800BD308 04810002 */  bgez  $a0, .L800BD314_ovl1
/* 06555C 800BD30C AFB00018 */   sw    $s0, 0x18($sp)
/* 065560 800BD310 00008825 */  move  $s1, $zero
.L800BD314_ovl1:
/* 065564 800BD314 2A21001F */  slti  $at, $s1, 0x1f
/* 065568 800BD318 14200002 */  bnez  $at, .L800BD324_ovl1
/* 06556C 800BD31C 00008025 */   move  $s0, $zero
/* 065570 800BD320 2411001E */  li    $s1, 30
.L800BD324_ovl1:
/* 065574 800BD324 2412001E */  li    $s2, 30
/* 065578 800BD328 0211082A */  slt   $at, $s0, $s1
.L800BD32C_ovl1:
/* 06557C 800BD32C 10200006 */  beqz  $at, .L800BD348_ovl1
/* 065580 800BD330 02002025 */   move  $a0, $s0
/* 065584 800BD334 02002025 */  move  $a0, $s0
/* 065588 800BD338 0C02F4DD */  jal   draw_star_segments
/* 06558C 800BD33C 24050001 */   li    $a1, 1
/* 065590 800BD340 10000004 */  b     .L800BD354_ovl1
/* 065594 800BD344 26100001 */   addiu $s0, $s0, 1
.L800BD348_ovl1:
/* 065598 800BD348 0C02F4DD */  jal   draw_star_segments
/* 06559C 800BD34C 00002825 */   move  $a1, $zero
/* 0655A0 800BD350 26100001 */  addiu $s0, $s0, 1
.L800BD354_ovl1:
/* 0655A4 800BD354 5612FFF5 */  bnel  $s0, $s2, .L800BD32C_ovl1
/* 0655A8 800BD358 0211082A */   slt   $at, $s0, $s1
/* 0655AC 800BD35C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0655B0 800BD360 8FB00018 */  lw    $s0, 0x18($sp)
/* 0655B4 800BD364 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0655B8 800BD368 8FB20020 */  lw    $s2, 0x20($sp)
/* 0655BC 800BD36C 03E00008 */  jr    $ra
/* 0655C0 800BD370 27BD0028 */   addiu $sp, $sp, 0x28
.size draw_kirby_stars, . - draw_kirby_stars
