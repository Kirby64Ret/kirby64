glabel func_800FBA98
/* 084508 800FBA98 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08450C 800FBA9C AFB00014 */  sw    $s0, 0x14($sp)
/* 084510 800FBAA0 3C108013 */  lui   $s0, %hi(D_801291B0) # $s0, 0x8013
/* 084514 800FBAA4 261091B0 */  addiu $s0, %lo(D_801291B0) # addiu $s0, $s0, -0x6e50
/* 084518 800FBAA8 AFB10018 */  sw    $s1, 0x18($sp)
/* 08451C 800FBAAC 3C118013 */  lui   $s1, %hi(D_801292F0) # $s1, 0x8013
/* 084520 800FBAB0 3C0E8013 */  lui   $t6, %hi(D_80129150) # $t6, 0x8013
/* 084524 800FBAB4 263192F0 */  addiu $s1, %lo(D_801292F0) # addiu $s1, $s1, -0x6d10
/* 084528 800FBAB8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08452C 800FBABC 25CE9150 */  addiu $t6, %lo(D_80129150) # addiu $t6, $t6, -0x6eb0
/* 084530 800FBAC0 0200C825 */  move  $t9, $s0
/* 084534 800FBAC4 26080060 */  addiu $t0, $s0, 0x60
.L800FBAC8_ovl2:
/* 084538 800FBAC8 8F380000 */  lw    $t8, ($t9)
/* 08453C 800FBACC 2739000C */  addiu $t9, $t9, 0xc
/* 084540 800FBAD0 25CE000C */  addiu $t6, $t6, 0xc
/* 084544 800FBAD4 ADD8FFF4 */  sw    $t8, -0xc($t6)
/* 084548 800FBAD8 8F2FFFF8 */  lw    $t7, -8($t9)
/* 08454C 800FBADC ADCFFFF8 */  sw    $t7, -8($t6)
/* 084550 800FBAE0 8F38FFFC */  lw    $t8, -4($t9)
/* 084554 800FBAE4 1728FFF8 */  bne   $t9, $t0, .L800FBAC8_ovl2
/* 084558 800FBAE8 ADD8FFFC */   sw    $t8, -4($t6)
/* 08455C 800FBAEC 3C098013 */  lui   $t1, %hi(D_80129270) # $t1, 0x8013
/* 084560 800FBAF0 25299270 */  addiu $t1, %lo(D_80129270) # addiu $t1, $t1, -0x6d90
/* 084564 800FBAF4 02206025 */  move  $t4, $s1
/* 084568 800FBAF8 262D003C */  addiu $t5, $s1, 0x3c
.L800FBAFC_ovl2:
/* 08456C 800FBAFC 8D8B0000 */  lw    $t3, ($t4)
/* 084570 800FBB00 258C000C */  addiu $t4, $t4, 0xc
/* 084574 800FBB04 2529000C */  addiu $t1, $t1, 0xc
/* 084578 800FBB08 AD2BFFF4 */  sw    $t3, -0xc($t1)
/* 08457C 800FBB0C 8D8AFFF8 */  lw    $t2, -8($t4)
/* 084580 800FBB10 AD2AFFF8 */  sw    $t2, -8($t1)
/* 084584 800FBB14 8D8BFFFC */  lw    $t3, -4($t4)
/* 084588 800FBB18 158DFFF8 */  bne   $t4, $t5, .L800FBAFC_ovl2
/* 08458C 800FBB1C AD2BFFFC */   sw    $t3, -4($t1)
/* 084590 800FBB20 3C048013 */  lui   $a0, %hi(D_80129138) # $a0, 0x8013
/* 084594 800FBB24 8C849138 */  lw    $a0, %lo(D_80129138)($a0)
/* 084598 800FBB28 0C03E90E */  jal   func_800FA438
/* 08459C 800FBB2C 02002825 */   move  $a1, $s0
/* 0845A0 800FBB30 3C048013 */  lui   $a0, %hi(D_80129138) # $a0, 0x8013
/* 0845A4 800FBB34 8C849138 */  lw    $a0, %lo(D_80129138)($a0)
/* 0845A8 800FBB38 02002825 */  move  $a1, $s0
/* 0845AC 800FBB3C 0C03E970 */  jal   func_800FA5C0
/* 0845B0 800FBB40 02203025 */   move  $a2, $s1
/* 0845B4 800FBB44 3C048013 */  lui   $a0, %hi(D_80129138) # $a0, 0x8013
/* 0845B8 800FBB48 8C849138 */  lw    $a0, %lo(D_80129138)($a0)
/* 0845BC 800FBB4C 02002825 */  move  $a1, $s0
/* 0845C0 800FBB50 0C03E982 */  jal   func_800FA608
/* 0845C4 800FBB54 02203025 */   move  $a2, $s1
/* 0845C8 800FBB58 3C048013 */  lui   $a0, %hi(D_80129138) # $a0, 0x8013
/* 0845CC 800FBB5C 8C849138 */  lw    $a0, %lo(D_80129138)($a0)
/* 0845D0 800FBB60 02002825 */  move  $a1, $s0
/* 0845D4 800FBB64 0C03E9FB */  jal   func_800FA7EC
/* 0845D8 800FBB68 02203025 */   move  $a2, $s1
/* 0845DC 800FBB6C 3C048013 */  lui   $a0, %hi(D_80129138) # $a0, 0x8013
/* 0845E0 800FBB70 8C849138 */  lw    $a0, %lo(D_80129138)($a0)
/* 0845E4 800FBB74 02002825 */  move  $a1, $s0
/* 0845E8 800FBB78 0C03EA4B */  jal   func_800FA92C
/* 0845EC 800FBB7C 02203025 */   move  $a2, $s1
/* 0845F0 800FBB80 3C048013 */  lui   $a0, %hi(D_801292B0) # $a0, 0x8013
/* 0845F4 800FBB84 248492B0 */  addiu $a0, %lo(D_801292B0) # addiu $a0, $a0, -0x6d50
/* 0845F8 800FBB88 02002825 */  move  $a1, $s0
/* 0845FC 800FBB8C 0C03EB1D */  jal   func_800FAC74
/* 084600 800FBB90 02203025 */   move  $a2, $s1
/* 084604 800FBB94 3C058013 */  lui   $a1, %hi(D_801292B0) # $a1, 0x8013
/* 084608 800FBB98 24A592B0 */  addiu $a1, %lo(D_801292B0) # addiu $a1, $a1, -0x6d50
/* 08460C 800FBB9C 0C03E8B5 */  jal   func_800FA2D4
/* 084610 800FBBA0 02002025 */   move  $a0, $s0
/* 084614 800FBBA4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 084618 800FBBA8 8FB00014 */  lw    $s0, 0x14($sp)
/* 08461C 800FBBAC 8FB10018 */  lw    $s1, 0x18($sp)
/* 084620 800FBBB0 03E00008 */  jr    $ra
/* 084624 800FBBB4 27BD0020 */   addiu $sp, $sp, 0x20
.type func_800FBA98, @function
.size func_800FBA98, . - func_800FBA98
