glabel func_800A699C
/* 04EBEC 800A699C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 04EBF0 800A69A0 AFB30020 */  sw    $s3, 0x20($sp)
/* 04EBF4 800A69A4 AFB2001C */  sw    $s2, 0x1c($sp)
/* 04EBF8 800A69A8 3C128005 */  lui   $s2, %hi(D_8004A578) # $s2, 0x8005
/* 04EBFC 800A69AC 3C138005 */  lui   $s3, %hi(D_8004A5F8) # $s3, 0x8005
/* 04EC00 800A69B0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 04EC04 800A69B4 AFB10018 */  sw    $s1, 0x18($sp)
/* 04EC08 800A69B8 AFB00014 */  sw    $s0, 0x14($sp)
/* 04EC0C 800A69BC 2673A5F8 */  addiu $s3, %lo(D_8004A5F8) # addiu $s3, $s3, -0x5a08
/* 04EC10 800A69C0 2652A578 */  addiu $s2, %lo(D_8004A578) # addiu $s2, $s2, -0x5a88
/* 04EC14 800A69C4 8E500000 */  lw    $s0, ($s2)
.L800A69C8_ovl1:
/* 04EC18 800A69C8 5200000A */  beql  $s0, $zero, .L800A69F4_ovl1
/* 04EC1C 800A69CC 26520004 */   addiu $s2, $s2, 4
.L800A69D0_ovl1:
/* 04EC20 800A69D0 8E110004 */  lw    $s1, 4($s0)
/* 04EC24 800A69D4 0C002DD6 */  jal   func_8000B758_ovl1
/* 04EC28 800A69D8 02002025 */   move  $a0, $s0
/* 04EC2C 800A69DC 8E0E0044 */  lw    $t6, 0x44($s0)
/* 04EC30 800A69E0 35CF0040 */  ori   $t7, $t6, 0x40
/* 04EC34 800A69E4 AE0F0044 */  sw    $t7, 0x44($s0)
/* 04EC38 800A69E8 1620FFF9 */  bnez  $s1, .L800A69D0_ovl1
/* 04EC3C 800A69EC 02208025 */   move  $s0, $s1
/* 04EC40 800A69F0 26520004 */  addiu $s2, $s2, 4
.L800A69F4_ovl1:
/* 04EC44 800A69F4 5653FFF4 */  bnel  $s2, $s3, .L800A69C8_ovl1
/* 04EC48 800A69F8 8E500000 */   lw    $s0, ($s2)
/* 04EC4C 800A69FC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04EC50 800A6A00 8FB00014 */  lw    $s0, 0x14($sp)
/* 04EC54 800A6A04 8FB10018 */  lw    $s1, 0x18($sp)
/* 04EC58 800A6A08 8FB2001C */  lw    $s2, 0x1c($sp)
/* 04EC5C 800A6A0C 8FB30020 */  lw    $s3, 0x20($sp)
/* 04EC60 800A6A10 03E00008 */  jr    $ra
/* 04EC64 800A6A14 27BD0028 */   addiu $sp, $sp, 0x28
.type func_800A699C, @function
.size func_800A699C, . - func_800A699C
