glabel func_8001BA60
/* 01C660 8001BA60 27BDFF98 */  addiu $sp, $sp, -0x68
/* 01C664 8001BA64 44856000 */  mtc1  $a1, $f12
/* 01C668 8001BA68 44867000 */  mtc1  $a2, $f14
/* 01C66C 8001BA6C C7A40078 */  lwc1  $f4, 0x78($sp)
/* 01C670 8001BA70 C7A6007C */  lwc1  $f6, 0x7c($sp)
/* 01C674 8001BA74 C7A80080 */  lwc1  $f8, 0x80($sp)
/* 01C678 8001BA78 C7AA0084 */  lwc1  $f10, 0x84($sp)
/* 01C67C 8001BA7C AFBF0024 */  sw    $ra, 0x24($sp)
/* 01C680 8001BA80 AFA40068 */  sw    $a0, 0x68($sp)
/* 01C684 8001BA84 44056000 */  mfc1  $a1, $f12
/* 01C688 8001BA88 44067000 */  mfc1  $a2, $f14
/* 01C68C 8001BA8C AFA70074 */  sw    $a3, 0x74($sp)
/* 01C690 8001BA90 27A40028 */  addiu $a0, $sp, 0x28
/* 01C694 8001BA94 E7A40010 */  swc1  $f4, 0x10($sp)
/* 01C698 8001BA98 E7A60014 */  swc1  $f6, 0x14($sp)
/* 01C69C 8001BA9C E7A80018 */  swc1  $f8, 0x18($sp)
/* 01C6A0 8001BAA0 0C006E81 */  jal   func_8001BA04
/* 01C6A4 8001BAA4 E7AA001C */   swc1  $f10, 0x1c($sp)
/* 01C6A8 8001BAA8 27A40028 */  addiu $a0, $sp, 0x28
/* 01C6AC 8001BAAC 0C006718 */  jal   func_80019C60
/* 01C6B0 8001BAB0 8FA50068 */   lw    $a1, 0x68($sp)
/* 01C6B4 8001BAB4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 01C6B8 8001BAB8 27BD0068 */  addiu $sp, $sp, 0x68
/* 01C6BC 8001BABC 03E00008 */  jr    $ra
/* 01C6C0 8001BAC0 00000000 */   nop   
.type func_8001BA60, @function
.size func_8001BA60, . - func_8001BA60
