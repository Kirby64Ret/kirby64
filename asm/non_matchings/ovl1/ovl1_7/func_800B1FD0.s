glabel func_800B1FD0
/* 05A220 800B1FD0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 05A224 800B1FD4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 05A228 800B1FD8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 05A22C 800B1FDC AFBF005C */  sw    $ra, 0x5c($sp)
/* 05A230 800B1FE0 AFB50058 */  sw    $s5, 0x58($sp)
/* 05A234 800B1FE4 AFB40054 */  sw    $s4, 0x54($sp)
/* 05A238 800B1FE8 AFB30050 */  sw    $s3, 0x50($sp)
/* 05A23C 800B1FEC AFB2004C */  sw    $s2, 0x4c($sp)
/* 05A240 800B1FF0 AFB10048 */  sw    $s1, 0x48($sp)
/* 05A244 800B1FF4 AFB00044 */  sw    $s0, 0x44($sp)
/* 05A248 800B1FF8 F7B80038 */  sdc1  $f24, 0x38($sp)
/* 05A24C 800B1FFC F7B60030 */  sdc1  $f22, 0x30($sp)
/* 05A250 800B2000 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 05A254 800B2004 8DD5003C */  lw    $s5, 0x3c($t6)
/* 05A258 800B2008 4486C000 */  mtc1  $a2, $f24
/* 05A25C 800B200C 00808025 */  move  $s0, $a0
/* 05A260 800B2010 00A09825 */  move  $s3, $a1
/* 05A264 800B2014 1095000B */  beq   $a0, $s5, .L800B2044_ovl1
/* 05A268 800B2018 00E0A025 */   move  $s4, $a3
.L800B201C_ovl1:
/* 05A26C 800B201C 12600002 */  beqz  $s3, .L800B2028_ovl1
/* 05A270 800B2020 00000000 */   nop   
/* 05A274 800B2024 26730004 */  addiu $s3, $s3, 4
.L800B2028_ovl1:
/* 05A278 800B2028 12800002 */  beqz  $s4, .L800B2034_ovl1
/* 05A27C 800B202C 00000000 */   nop   
/* 05A280 800B2030 2694002C */  addiu $s4, $s4, 0x2c
.L800B2034_ovl1:
/* 05A284 800B2034 0C002FA4 */  jal   func_8000BE90
/* 05A288 800B2038 02A02025 */   move  $a0, $s5
/* 05A28C 800B203C 1602FFF7 */  bne   $s0, $v0, .L800B201C_ovl1
/* 05A290 800B2040 0040A825 */   move  $s5, $v0
.L800B2044_ovl1:
/* 05A294 800B2044 02A08025 */  move  $s0, $s5
/* 05A298 800B2048 02808825 */  move  $s1, $s4
/* 05A29C 800B204C 12A00018 */  beqz  $s5, .L800B20B0_ovl1
/* 05A2A0 800B2050 02609025 */   move  $s2, $s3
/* 05A2A4 800B2054 4480A000 */  mtc1  $zero, $f20
/* 05A2A8 800B2058 C7B60070 */  lwc1  $f22, 0x70($sp)
/* 05A2AC 800B205C 4406C000 */  mfc1  $a2, $f24
.L800B2060_ovl1:
/* 05A2B0 800B2060 02002025 */  move  $a0, $s0
/* 05A2B4 800B2064 02402825 */  move  $a1, $s2
/* 05A2B8 800B2068 02203825 */  move  $a3, $s1
/* 05A2BC 800B206C AFA00010 */  sw    $zero, 0x10($sp)
/* 05A2C0 800B2070 E7B60014 */  swc1  $f22, 0x14($sp)
/* 05A2C4 800B2074 E7B40018 */  swc1  $f20, 0x18($sp)
/* 05A2C8 800B2078 E7B4001C */  swc1  $f20, 0x1c($sp)
/* 05A2CC 800B207C 0C003B26 */  jal   func_8000EC98_ovl1
/* 05A2D0 800B2080 E7B40020 */   swc1  $f20, 0x20($sp)
/* 05A2D4 800B2084 02002025 */  move  $a0, $s0
/* 05A2D8 800B2088 0C02C7DC */  jal   func_800B1F70
/* 05A2DC 800B208C 02A02825 */   move  $a1, $s5
/* 05A2E0 800B2090 12400002 */  beqz  $s2, .L800B209C_ovl1
/* 05A2E4 800B2094 00408025 */   move  $s0, $v0
/* 05A2E8 800B2098 26520004 */  addiu $s2, $s2, 4
.L800B209C_ovl1:
/* 05A2EC 800B209C 12200002 */  beqz  $s1, .L800B20A8_ovl1
/* 05A2F0 800B20A0 00000000 */   nop   
/* 05A2F4 800B20A4 2631002C */  addiu $s1, $s1, 0x2c
.L800B20A8_ovl1:
/* 05A2F8 800B20A8 5600FFED */  bnezl $s0, .L800B2060_ovl1
/* 05A2FC 800B20AC 4406C000 */   mfc1  $a2, $f24
.L800B20B0_ovl1:
/* 05A300 800B20B0 8FBF005C */  lw    $ra, 0x5c($sp)
/* 05A304 800B20B4 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 05A308 800B20B8 D7B60030 */  ldc1  $f22, 0x30($sp)
/* 05A30C 800B20BC D7B80038 */  ldc1  $f24, 0x38($sp)
/* 05A310 800B20C0 8FB00044 */  lw    $s0, 0x44($sp)
/* 05A314 800B20C4 8FB10048 */  lw    $s1, 0x48($sp)
/* 05A318 800B20C8 8FB2004C */  lw    $s2, 0x4c($sp)
/* 05A31C 800B20CC 8FB30050 */  lw    $s3, 0x50($sp)
/* 05A320 800B20D0 8FB40054 */  lw    $s4, 0x54($sp)
/* 05A324 800B20D4 8FB50058 */  lw    $s5, 0x58($sp)
/* 05A328 800B20D8 03E00008 */  jr    $ra
/* 05A32C 800B20DC 27BD0060 */   addiu $sp, $sp, 0x60
.type func_800B1FD0, @function
.size func_800B1FD0, . - func_800B1FD0
