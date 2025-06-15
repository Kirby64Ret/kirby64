glabel func_800B9C50
/* 061EA0 800B9C50 3C0E800D */  lui   $t6, %hi(D_800D6B88) # $t6, 0x800d
/* 061EA4 800B9C54 8DCE6B88 */  lw    $t6, %lo(D_800D6B88)($t6)
/* 061EA8 800B9C58 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 061EAC 800B9C5C AFB00018 */  sw    $s0, 0x18($sp)
/* 061EB0 800B9C60 00808025 */  move  $s0, $a0
/* 061EB4 800B9C64 05C0000E */  bltz  $t6, .L800B9CA0_ovl1
/* 061EB8 800B9C68 AFBF001C */   sw    $ra, 0x1c($sp)
/* 061EBC 800B9C6C 0C02E5A8 */  jal   func_800B96A0
/* 061EC0 800B9C70 24050001 */   li    $a1, 1
/* 061EC4 800B9C74 0C02E4B6 */  jal   verify_save
/* 061EC8 800B9C78 02002025 */   move  $a0, $s0
/* 061ECC 800B9C7C 0C02E53F */  jal   func_800B94FC
/* 061ED0 800B9C80 02002025 */   move  $a0, $s0
/* 061ED4 800B9C84 0C02E3F2 */  jal   calc_file_checksum
/* 061ED8 800B9C88 02002025 */   move  $a0, $s0
/* 061EDC 800B9C8C 0C02E247 */  jal   func_800B891C
/* 061EE0 800B9C90 02002025 */   move  $a0, $s0
/* 061EE4 800B9C94 02002025 */  move  $a0, $s0
/* 061EE8 800B9C98 0C02E5A8 */  jal   func_800B96A0
/* 061EEC 800B9C9C 00002825 */   move  $a1, $zero
.L800B9CA0_ovl1:
/* 061EF0 800B9CA0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 061EF4 800B9CA4 8FB00018 */  lw    $s0, 0x18($sp)
/* 061EF8 800B9CA8 27BD0020 */  addiu $sp, $sp, 0x20
/* 061EFC 800B9CAC 03E00008 */  jr    $ra
/* 061F00 800B9CB0 00000000 */   nop   
.type func_800B9C50, @function
.size func_800B9C50, . - func_800B9C50
