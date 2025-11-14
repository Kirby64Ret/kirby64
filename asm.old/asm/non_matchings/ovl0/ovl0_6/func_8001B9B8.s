glabel func_8001B9B8
/* 01C5B8 8001B9B8 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 01C5BC 8001B9BC 44856000 */  mtc1  $a1, $f12
/* 01C5C0 8001B9C0 44867000 */  mtc1  $a2, $f14
/* 01C5C4 8001B9C4 C7A40070 */  lwc1  $f4, 0x70($sp)
/* 01C5C8 8001B9C8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01C5CC 8001B9CC AFA40060 */  sw    $a0, 0x60($sp)
/* 01C5D0 8001B9D0 44056000 */  mfc1  $a1, $f12
/* 01C5D4 8001B9D4 44067000 */  mfc1  $a2, $f14
/* 01C5D8 8001B9D8 AFA7006C */  sw    $a3, 0x6c($sp)
/* 01C5DC 8001B9DC 27A40020 */  addiu $a0, $sp, 0x20
/* 01C5E0 8001B9E0 0C006E0E */  jal   func_8001B838
/* 01C5E4 8001B9E4 E7A40010 */   swc1  $f4, 0x10($sp)
/* 01C5E8 8001B9E8 27A40020 */  addiu $a0, $sp, 0x20
/* 01C5EC 8001B9EC 0C006718 */  jal   func_80019C60
/* 01C5F0 8001B9F0 8FA50060 */   lw    $a1, 0x60($sp)
/* 01C5F4 8001B9F4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01C5F8 8001B9F8 27BD0060 */  addiu $sp, $sp, 0x60
/* 01C5FC 8001B9FC 03E00008 */  jr    $ra
/* 01C600 8001BA00 00000000 */   nop   
.type func_8001B9B8, @function
.size func_8001B9B8, . - func_8001B9B8
