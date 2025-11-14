glabel func_8001D014
/* 01DC14 8001D014 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 01DC18 8001D018 44856000 */  mtc1  $a1, $f12
/* 01DC1C 8001D01C 44867000 */  mtc1  $a2, $f14
/* 01DC20 8001D020 C7A40070 */  lwc1  $f4, 0x70($sp)
/* 01DC24 8001D024 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01DC28 8001D028 AFA40060 */  sw    $a0, 0x60($sp)
/* 01DC2C 8001D02C 44056000 */  mfc1  $a1, $f12
/* 01DC30 8001D030 44067000 */  mfc1  $a2, $f14
/* 01DC34 8001D034 AFA7006C */  sw    $a3, 0x6c($sp)
/* 01DC38 8001D038 27A40020 */  addiu $a0, $sp, 0x20
/* 01DC3C 8001D03C 0C0073F2 */  jal   func_8001CFC8
/* 01DC40 8001D040 E7A40010 */   swc1  $f4, 0x10($sp)
/* 01DC44 8001D044 27A40020 */  addiu $a0, $sp, 0x20
/* 01DC48 8001D048 0C006718 */  jal   func_80019C60
/* 01DC4C 8001D04C 8FA50060 */   lw    $a1, 0x60($sp)
/* 01DC50 8001D050 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01DC54 8001D054 27BD0060 */  addiu $sp, $sp, 0x60
/* 01DC58 8001D058 03E00008 */  jr    $ra
/* 01DC5C 8001D05C 00000000 */   nop   
.type func_8001D014, @function
.size func_8001D014, . - func_8001D014
