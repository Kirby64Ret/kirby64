glabel func_800A30E8
/* 04B338 800A30E8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04B33C 800A30EC AFBF0014 */  sw    $ra, 0x14($sp)
/* 04B340 800A30F0 0C029AC8 */  jal   load_overlay
/* 04B344 800A30F4 24040013 */   li    $a0, 19
/* 04B348 800A30F8 0C0C0000 */  jal   tamper_check_ovl20
/* 04B34C 800A30FC 00000000 */   nop   
/* 04B350 800A3100 0C029AC8 */  jal   load_overlay
/* 04B354 800A3104 24040005 */   li    $a0, 5
/* 04B358 800A3108 0C029AC8 */  jal   load_overlay
/* 04B35C 800A310C 24040006 */   li    $a0, 6
/* 04B360 800A3110 0C029AC8 */  jal   load_overlay
/* 04B364 800A3114 24040011 */   li    $a0, 17
/* 04B368 800A3118 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04B36C 800A311C 27BD0018 */  addiu $sp, $sp, 0x18
/* 04B370 800A3120 03E00008 */  jr    $ra
/* 04B374 800A3124 00000000 */   nop   
