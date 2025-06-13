glabel calc_save_header_checksum
/* 0612B8 800B9068 3C06800F */  lui   $a2, %hi(gSaveBuffer1) # $a2, 0x800f
/* 0612BC 800B906C 3C07800F */  lui   $a3, %hi(D_800ECA04) # $a3, 0x800f
/* 0612C0 800B9070 24E7CA04 */  addiu $a3, %lo(D_800ECA04) # addiu $a3, $a3, -0x35fc
/* 0612C4 800B9074 24C6C9F8 */  addiu $a2, %lo(gSaveBuffer1) # addiu $a2, $a2, -0x3608
/* 0612C8 800B9078 3C049753 */  lui   $a0, (0x97538642 >> 16) # lui $a0, 0x9753
/* 0612CC 800B907C 00C01025 */  move  $v0, $a2
/* 0612D0 800B9080 00E01825 */  move  $v1, $a3
/* 0612D4 800B9084 10E60014 */  beq   $a3, $a2, .L800B90D8_ovl1
/* 0612D8 800B9088 34848642 */   ori   $a0, (0x97538642 & 0xFFFF) # ori $a0, $a0, 0x8642
/* 0612DC 800B908C 2405000C */  li    $a1, 12
/* 0612E0 800B9090 10A00007 */  beqz  $a1, .L800B90B0_ovl1
/* 0612E4 800B9094 24C5000C */   addiu $a1, $a2, 0xc
.L800B9098_ovl1:
/* 0612E8 800B9098 8C4E0000 */  lw    $t6, ($v0)
/* 0612EC 800B909C 24420004 */  addiu $v0, $v0, 4
/* 0612F0 800B90A0 14A2FFFD */  bne   $a1, $v0, .L800B9098_ovl1
/* 0612F4 800B90A4 008E2021 */   addu  $a0, $a0, $t6
/* 0612F8 800B90A8 1047000B */  beq   $v0, $a3, .L800B90D8_ovl1
/* 0612FC 800B90AC 00000000 */   nop   
.L800B90B0_ovl1:
/* 061300 800B90B0 8C4F0000 */  lw    $t7, ($v0)
/* 061304 800B90B4 8C580004 */  lw    $t8, 4($v0)
/* 061308 800B90B8 8C590008 */  lw    $t9, 8($v0)
/* 06130C 800B90BC 008F2021 */  addu  $a0, $a0, $t7
/* 061310 800B90C0 8C48000C */  lw    $t0, 0xc($v0)
/* 061314 800B90C4 00982021 */  addu  $a0, $a0, $t8
/* 061318 800B90C8 24420010 */  addiu $v0, $v0, 0x10
/* 06131C 800B90CC 00992021 */  addu  $a0, $a0, $t9
/* 061320 800B90D0 1443FFF7 */  bne   $v0, $v1, .L800B90B0_ovl1
/* 061324 800B90D4 00882021 */   addu  $a0, $a0, $t0
.L800B90D8_ovl1:
/* 061328 800B90D8 03E00008 */  jr    $ra
/* 06132C 800B90DC 00801025 */   move  $v0, $a0
.size calc_save_header_checksum, . - calc_save_header_checksum
