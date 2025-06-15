glabel func_800AFA14
/* 057C64 800AFA14 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 057C68 800AFA18 AFB00018 */  sw    $s0, 0x18($sp)
/* 057C6C 800AFA1C 3C107FFF */  lui   $s0, (0x7FFFFFFF >> 16) # lui $s0, 0x7fff
/* 057C70 800AFA20 AFBF001C */  sw    $ra, 0x1c($sp)
/* 057C74 800AFA24 3610FFFF */  ori   $s0, (0x7FFFFFFF & 0xFFFF) # ori $s0, $s0, 0xffff
.L800AFA28_ovl1:
/* 057C78 800AFA28 0C002DAF */  jal   finish_current_thread
/* 057C7C 800AFA2C 02002025 */   move  $a0, $s0
/* 057C80 800AFA30 1000FFFD */  b     .L800AFA28_ovl1
/* 057C84 800AFA34 00000000 */   nop   
/* 057C88 800AFA38 00000000 */  nop   
/* 057C8C 800AFA3C 00000000 */  nop   
/* 057C90 800AFA40 8FBF001C */  lw    $ra, 0x1c($sp)
/* 057C94 800AFA44 8FB00018 */  lw    $s0, 0x18($sp)
/* 057C98 800AFA48 27BD0020 */  addiu $sp, $sp, 0x20
/* 057C9C 800AFA4C 03E00008 */  jr    $ra
/* 057CA0 800AFA50 00000000 */   nop   
.type func_800AFA14, @function
.size func_800AFA14, . - func_800AFA14
