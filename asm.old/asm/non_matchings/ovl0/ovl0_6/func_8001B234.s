glabel func_8001B234
/* 01BE34 8001B234 27BDFF98 */  addiu $sp, $sp, -0x68
/* 01BE38 8001B238 44866000 */  mtc1  $a2, $f12
/* 01BE3C 8001B23C 44877000 */  mtc1  $a3, $f14
/* 01BE40 8001B240 C7A40078 */  lwc1  $f4, 0x78($sp)
/* 01BE44 8001B244 C7A6007C */  lwc1  $f6, 0x7c($sp)
/* 01BE48 8001B248 C7A80080 */  lwc1  $f8, 0x80($sp)
/* 01BE4C 8001B24C AFBF0024 */  sw    $ra, 0x24($sp)
/* 01BE50 8001B250 AFA40068 */  sw    $a0, 0x68($sp)
/* 01BE54 8001B254 44066000 */  mfc1  $a2, $f12
/* 01BE58 8001B258 44077000 */  mfc1  $a3, $f14
/* 01BE5C 8001B25C 27A40028 */  addiu $a0, $sp, 0x28
/* 01BE60 8001B260 E7A40010 */  swc1  $f4, 0x10($sp)
/* 01BE64 8001B264 E7A60014 */  swc1  $f6, 0x14($sp)
/* 01BE68 8001B268 0C006C02 */  jal   func_8001B008
/* 01BE6C 8001B26C E7A80018 */   swc1  $f8, 0x18($sp)
/* 01BE70 8001B270 27A40028 */  addiu $a0, $sp, 0x28
/* 01BE74 8001B274 0C00668C */  jal   func_80019A30
/* 01BE78 8001B278 8FA50068 */   lw    $a1, 0x68($sp)
/* 01BE7C 8001B27C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 01BE80 8001B280 27BD0068 */  addiu $sp, $sp, 0x68
/* 01BE84 8001B284 03E00008 */  jr    $ra
/* 01BE88 8001B288 00000000 */   nop   
.type func_8001B234, @function
.size func_8001B234, . - func_8001B234
