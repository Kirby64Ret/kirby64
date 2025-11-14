glabel func_8001CB9C
/* 01D79C 8001CB9C 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 01D7A0 8001CBA0 44856000 */  mtc1  $a1, $f12
/* 01D7A4 8001CBA4 44867000 */  mtc1  $a2, $f14
/* 01D7A8 8001CBA8 C7A40070 */  lwc1  $f4, 0x70($sp)
/* 01D7AC 8001CBAC C7A60074 */  lwc1  $f6, 0x74($sp)
/* 01D7B0 8001CBB0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01D7B4 8001CBB4 AFA40060 */  sw    $a0, 0x60($sp)
/* 01D7B8 8001CBB8 44056000 */  mfc1  $a1, $f12
/* 01D7BC 8001CBBC 44067000 */  mfc1  $a2, $f14
/* 01D7C0 8001CBC0 AFA7006C */  sw    $a3, 0x6c($sp)
/* 01D7C4 8001CBC4 27A40020 */  addiu $a0, $sp, 0x20
/* 01D7C8 8001CBC8 E7A40010 */  swc1  $f4, 0x10($sp)
/* 01D7CC 8001CBCC 0C0072D3 */  jal   func_8001CB4C
/* 01D7D0 8001CBD0 E7A60014 */   swc1  $f6, 0x14($sp)
/* 01D7D4 8001CBD4 27A40020 */  addiu $a0, $sp, 0x20
/* 01D7D8 8001CBD8 0C006718 */  jal   func_80019C60
/* 01D7DC 8001CBDC 8FA50060 */   lw    $a1, 0x60($sp)
/* 01D7E0 8001CBE0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01D7E4 8001CBE4 27BD0060 */  addiu $sp, $sp, 0x60
/* 01D7E8 8001CBE8 03E00008 */  jr    $ra
/* 01D7EC 8001CBEC 00000000 */   nop   
.type func_8001CB9C, @function
.size func_8001CB9C, . - func_8001CB9C
