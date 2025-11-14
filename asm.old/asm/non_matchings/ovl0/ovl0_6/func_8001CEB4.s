glabel func_8001CEB4
/* 01DAB4 8001CEB4 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 01DAB8 8001CEB8 44856000 */  mtc1  $a1, $f12
/* 01DABC 8001CEBC 44867000 */  mtc1  $a2, $f14
/* 01DAC0 8001CEC0 C7A40070 */  lwc1  $f4, 0x70($sp)
/* 01DAC4 8001CEC4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01DAC8 8001CEC8 AFA40060 */  sw    $a0, 0x60($sp)
/* 01DACC 8001CECC 44056000 */  mfc1  $a1, $f12
/* 01DAD0 8001CED0 44067000 */  mfc1  $a2, $f14
/* 01DAD4 8001CED4 AFA7006C */  sw    $a3, 0x6c($sp)
/* 01DAD8 8001CED8 27A40020 */  addiu $a0, $sp, 0x20
/* 01DADC 8001CEDC 0C00739A */  jal   func_8001CE68
/* 01DAE0 8001CEE0 E7A40010 */   swc1  $f4, 0x10($sp)
/* 01DAE4 8001CEE4 27A40020 */  addiu $a0, $sp, 0x20
/* 01DAE8 8001CEE8 0C006718 */  jal   func_80019C60
/* 01DAEC 8001CEEC 8FA50060 */   lw    $a1, 0x60($sp)
/* 01DAF0 8001CEF0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01DAF4 8001CEF4 27BD0060 */  addiu $sp, $sp, 0x60
/* 01DAF8 8001CEF8 03E00008 */  jr    $ra
/* 01DAFC 8001CEFC 00000000 */   nop   
.type func_8001CEB4, @function
.size func_8001CEB4, . - func_8001CEB4
