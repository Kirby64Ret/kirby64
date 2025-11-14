glabel func_8001C9CC
/* 01D5CC 8001C9CC 27BDFF90 */  addiu $sp, $sp, -0x70
/* 01D5D0 8001C9D0 44856000 */  mtc1  $a1, $f12
/* 01D5D4 8001C9D4 44867000 */  mtc1  $a2, $f14
/* 01D5D8 8001C9D8 C7A40080 */  lwc1  $f4, 0x80($sp)
/* 01D5DC 8001C9DC C7A60084 */  lwc1  $f6, 0x84($sp)
/* 01D5E0 8001C9E0 C7A80088 */  lwc1  $f8, 0x88($sp)
/* 01D5E4 8001C9E4 C7AA008C */  lwc1  $f10, 0x8c($sp)
/* 01D5E8 8001C9E8 C7B00090 */  lwc1  $f16, 0x90($sp)
/* 01D5EC 8001C9EC C7B20094 */  lwc1  $f18, 0x94($sp)
/* 01D5F0 8001C9F0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 01D5F4 8001C9F4 AFA40070 */  sw    $a0, 0x70($sp)
/* 01D5F8 8001C9F8 44056000 */  mfc1  $a1, $f12
/* 01D5FC 8001C9FC 44067000 */  mfc1  $a2, $f14
/* 01D600 8001CA00 AFA7007C */  sw    $a3, 0x7c($sp)
/* 01D604 8001CA04 27A40030 */  addiu $a0, $sp, 0x30
/* 01D608 8001CA08 E7A40010 */  swc1  $f4, 0x10($sp)
/* 01D60C 8001CA0C E7A60014 */  swc1  $f6, 0x14($sp)
/* 01D610 8001CA10 E7A80018 */  swc1  $f8, 0x18($sp)
/* 01D614 8001CA14 E7AA001C */  swc1  $f10, 0x1c($sp)
/* 01D618 8001CA18 E7B00020 */  swc1  $f16, 0x20($sp)
/* 01D61C 8001CA1C 0C00725A */  jal   func_8001C968
/* 01D620 8001CA20 E7B20024 */   swc1  $f18, 0x24($sp)
/* 01D624 8001CA24 27A40030 */  addiu $a0, $sp, 0x30
/* 01D628 8001CA28 0C006718 */  jal   func_80019C60
/* 01D62C 8001CA2C 8FA50070 */   lw    $a1, 0x70($sp)
/* 01D630 8001CA30 8FBF002C */  lw    $ra, 0x2c($sp)
/* 01D634 8001CA34 27BD0070 */  addiu $sp, $sp, 0x70
/* 01D638 8001CA38 03E00008 */  jr    $ra
/* 01D63C 8001CA3C 00000000 */   nop   
.type func_8001C9CC, @function
.size func_8001C9CC, . - func_8001C9CC
