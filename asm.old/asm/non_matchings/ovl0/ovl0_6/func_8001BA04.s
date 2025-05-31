glabel func_8001BA04
/* 01C604 8001BA04 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01C608 8001BA08 C7A4003C */  lwc1  $f4, 0x3c($sp)
/* 01C60C 8001BA0C AFBF001C */  sw    $ra, 0x1c($sp)
/* 01C610 8001BA10 AFA50024 */  sw    $a1, 0x24($sp)
/* 01C614 8001BA14 AFA60028 */  sw    $a2, 0x28($sp)
/* 01C618 8001BA18 AFA7002C */  sw    $a3, 0x2c($sp)
/* 01C61C 8001BA1C 8FA70038 */  lw    $a3, 0x38($sp)
/* 01C620 8001BA20 8FA60034 */  lw    $a2, 0x34($sp)
/* 01C624 8001BA24 8FA50030 */  lw    $a1, 0x30($sp)
/* 01C628 8001BA28 AFA40020 */  sw    $a0, 0x20($sp)
/* 01C62C 8001BA2C 0C006E0E */  jal   func_8001B838
/* 01C630 8001BA30 E7A40010 */   swc1  $f4, 0x10($sp)
/* 01C634 8001BA34 8FA40020 */  lw    $a0, 0x20($sp)
/* 01C638 8001BA38 C7A60024 */  lwc1  $f6, 0x24($sp)
/* 01C63C 8001BA3C E4860030 */  swc1  $f6, 0x30($a0)
/* 01C640 8001BA40 C7A80028 */  lwc1  $f8, 0x28($sp)
/* 01C644 8001BA44 E4880034 */  swc1  $f8, 0x34($a0)
/* 01C648 8001BA48 C7AA002C */  lwc1  $f10, 0x2c($sp)
/* 01C64C 8001BA4C E48A0038 */  swc1  $f10, 0x38($a0)
/* 01C650 8001BA50 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01C654 8001BA54 27BD0020 */  addiu $sp, $sp, 0x20
/* 01C658 8001BA58 03E00008 */  jr    $ra
/* 01C65C 8001BA5C 00000000 */   nop   
.type func_8001BA04, @function
.size func_8001BA04, . - func_8001BA04
