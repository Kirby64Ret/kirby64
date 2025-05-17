glabel func_80111ECC
/* 09A93C 80111ECC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09A940 80111ED0 AFB00018 */  sw    $s0, 0x18($sp)
/* 09A944 80111ED4 00808025 */  move  $s0, $a0
/* 09A948 80111ED8 10800006 */  beqz  $a0, .L80111EF4_ovl2
/* 09A94C 80111EDC AFBF001C */   sw    $ra, 0x1c($sp)
/* 09A950 80111EE0 8C840000 */  lw    $a0, ($a0)
/* 09A954 80111EE4 8E05001C */  lw    $a1, 0x1c($s0)
/* 09A958 80111EE8 8E060020 */  lw    $a2, 0x20($s0)
/* 09A95C 80111EEC 0C04404E */  jal   func_80110138
/* 09A960 80111EF0 8E070024 */   lw    $a3, 0x24($s0)
.L80111EF4_ovl2:
/* 09A964 80111EF4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 09A968 80111EF8 8FB00018 */  lw    $s0, 0x18($sp)
/* 09A96C 80111EFC 27BD0020 */  addiu $sp, $sp, 0x20
/* 09A970 80111F00 03E00008 */  jr    $ra
/* 09A974 80111F04 00000000 */   nop   
/* 09A978 80111F08 00000000 */  nop   
/* 09A97C 80111F0C 00000000 */  nop   
.type func_80111ECC, @function
.size func_80111ECC, . - func_80111ECC
