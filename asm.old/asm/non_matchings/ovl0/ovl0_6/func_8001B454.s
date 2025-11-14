glabel func_8001B454
/* 01C054 8001B454 27BDFF98 */  addiu $sp, $sp, -0x68
/* 01C058 8001B458 44866000 */  mtc1  $a2, $f12
/* 01C05C 8001B45C 44877000 */  mtc1  $a3, $f14
/* 01C060 8001B460 C7A40078 */  lwc1  $f4, 0x78($sp)
/* 01C064 8001B464 C7A6007C */  lwc1  $f6, 0x7c($sp)
/* 01C068 8001B468 C7A80080 */  lwc1  $f8, 0x80($sp)
/* 01C06C 8001B46C AFBF0024 */  sw    $ra, 0x24($sp)
/* 01C070 8001B470 AFA40068 */  sw    $a0, 0x68($sp)
/* 01C074 8001B474 44066000 */  mfc1  $a2, $f12
/* 01C078 8001B478 44077000 */  mfc1  $a3, $f14
/* 01C07C 8001B47C 27A40028 */  addiu $a0, $sp, 0x28
/* 01C080 8001B480 E7A40010 */  swc1  $f4, 0x10($sp)
/* 01C084 8001B484 E7A60014 */  swc1  $f6, 0x14($sp)
/* 01C088 8001B488 0C006CA3 */  jal   func_8001B28C
/* 01C08C 8001B48C E7A80018 */   swc1  $f8, 0x18($sp)
/* 01C090 8001B490 27A40028 */  addiu $a0, $sp, 0x28
/* 01C094 8001B494 0C00668C */  jal   func_80019A30
/* 01C098 8001B498 8FA50068 */   lw    $a1, 0x68($sp)
/* 01C09C 8001B49C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 01C0A0 8001B4A0 27BD0068 */  addiu $sp, $sp, 0x68
/* 01C0A4 8001B4A4 03E00008 */  jr    $ra
/* 01C0A8 8001B4A8 00000000 */   nop   
.type func_8001B454, @function
.size func_8001B454, . - func_8001B454
