glabel func_80111C4C
/* 09A6BC 80111C4C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09A6C0 80111C50 AFB00018 */  sw    $s0, 0x18($sp)
/* 09A6C4 80111C54 00808025 */  move  $s0, $a0
/* 09A6C8 80111C58 10800006 */  beqz  $a0, .L80111C74_ovl2
/* 09A6CC 80111C5C AFBF001C */   sw    $ra, 0x1c($sp)
/* 09A6D0 80111C60 8C840000 */  lw    $a0, ($a0)
/* 09A6D4 80111C64 8E050018 */  lw    $a1, 0x18($s0)
/* 09A6D8 80111C68 8E06001C */  lw    $a2, 0x1c($s0)
/* 09A6DC 80111C6C 0C04404E */  jal   func_80110138
/* 09A6E0 80111C70 8E070020 */   lw    $a3, 0x20($s0)
.L80111C74_ovl2:
/* 09A6E4 80111C74 8FBF001C */  lw    $ra, 0x1c($sp)
/* 09A6E8 80111C78 8FB00018 */  lw    $s0, 0x18($sp)
/* 09A6EC 80111C7C 27BD0020 */  addiu $sp, $sp, 0x20
/* 09A6F0 80111C80 03E00008 */  jr    $ra
/* 09A6F4 80111C84 00000000 */   nop   
.type func_80111C4C, @function
.size func_80111C4C, . - func_80111C4C
