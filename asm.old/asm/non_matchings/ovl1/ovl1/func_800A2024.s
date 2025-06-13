glabel func_800A2024
/* 04A274 800A2024 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04A278 800A2028 AFB00014 */  sw    $s0, 0x14($sp)
/* 04A27C 800A202C 3C10800D */  lui   $s0, %hi(D_800D6A0C) # $s0, 0x800d
/* 04A280 800A2030 8E106A0C */  lw    $s0, %lo(D_800D6A0C)($s0)
/* 04A284 800A2034 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04A288 800A2038 AFB10018 */  sw    $s1, 0x18($sp)
/* 04A28C 800A203C 52000007 */  beql  $s0, $zero, .L800A205C_ovl1
/* 04A290 800A2040 8FBF001C */   lw    $ra, 0x1c($sp)
.L800A2044_ovl1:
/* 04A294 800A2044 8E110000 */  lw    $s1, ($s0)
/* 04A298 800A2048 0C0287CC */  jal   func_800A1F30
/* 04A29C 800A204C 02002025 */   move  $a0, $s0
/* 04A2A0 800A2050 1620FFFC */  bnez  $s1, .L800A2044_ovl1
/* 04A2A4 800A2054 02208025 */   move  $s0, $s1
/* 04A2A8 800A2058 8FBF001C */  lw    $ra, 0x1c($sp)
.L800A205C_ovl1:
/* 04A2AC 800A205C 8FB00014 */  lw    $s0, 0x14($sp)
/* 04A2B0 800A2060 8FB10018 */  lw    $s1, 0x18($sp)
/* 04A2B4 800A2064 03E00008 */  jr    $ra
/* 04A2B8 800A2068 27BD0020 */   addiu $sp, $sp, 0x20
.type func_800A2024, @function
.size func_800A2024, . - func_800A2024
