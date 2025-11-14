glabel func_8001BAC4
/* 01C6C4 8001BAC4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01C6C8 8001BAC8 C7A4003C */  lwc1  $f4, 0x3c($sp)
/* 01C6CC 8001BACC AFBF001C */  sw    $ra, 0x1c($sp)
/* 01C6D0 8001BAD0 AFA50024 */  sw    $a1, 0x24($sp)
/* 01C6D4 8001BAD4 AFA60028 */  sw    $a2, 0x28($sp)
/* 01C6D8 8001BAD8 AFA7002C */  sw    $a3, 0x2c($sp)
/* 01C6DC 8001BADC 8FA70038 */  lw    $a3, 0x38($sp)
/* 01C6E0 8001BAE0 8FA60034 */  lw    $a2, 0x34($sp)
/* 01C6E4 8001BAE4 8FA50030 */  lw    $a1, 0x30($sp)
/* 01C6E8 8001BAE8 AFA40020 */  sw    $a0, 0x20($sp)
/* 01C6EC 8001BAEC 0C006E0E */  jal   func_8001B838
/* 01C6F0 8001BAF0 E7A40010 */   swc1  $f4, 0x10($sp)
/* 01C6F4 8001BAF4 8FA40020 */  lw    $a0, 0x20($sp)
/* 01C6F8 8001BAF8 C7A60024 */  lwc1  $f6, 0x24($sp)
/* 01C6FC 8001BAFC E4860030 */  swc1  $f6, 0x30($a0)
/* 01C700 8001BB00 C7A80028 */  lwc1  $f8, 0x28($sp)
/* 01C704 8001BB04 E4880034 */  swc1  $f8, 0x34($a0)
/* 01C708 8001BB08 C7AA002C */  lwc1  $f10, 0x2c($sp)
/* 01C70C 8001BB0C E48A0038 */  swc1  $f10, 0x38($a0)
/* 01C710 8001BB10 8FA70048 */  lw    $a3, 0x48($sp)
/* 01C714 8001BB14 8FA60044 */  lw    $a2, 0x44($sp)
/* 01C718 8001BB18 0C006D79 */  jal   func_8001B5E4
/* 01C71C 8001BB1C 8FA50040 */   lw    $a1, 0x40($sp)
/* 01C720 8001BB20 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01C724 8001BB24 27BD0020 */  addiu $sp, $sp, 0x20
/* 01C728 8001BB28 03E00008 */  jr    $ra
/* 01C72C 8001BB2C 00000000 */   nop   
.type func_8001BAC4, @function
.size func_8001BAC4, . - func_8001BAC4
