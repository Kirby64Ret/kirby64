glabel func_8001AD90
/* 01B990 8001AD90 27BDFF88 */  addiu $sp, $sp, -0x78
/* 01B994 8001AD94 C7A40088 */  lwc1  $f4, 0x88($sp)
/* 01B998 8001AD98 C7A6008C */  lwc1  $f6, 0x8c($sp)
/* 01B99C 8001AD9C 44866000 */  mtc1  $a2, $f12
/* 01B9A0 8001ADA0 44877000 */  mtc1  $a3, $f14
/* 01B9A4 8001ADA4 E7A40010 */  swc1  $f4, 0x10($sp)
/* 01B9A8 8001ADA8 E7A60014 */  swc1  $f6, 0x14($sp)
/* 01B9AC 8001ADAC C7A600A4 */  lwc1  $f6, 0xa4($sp)
/* 01B9B0 8001ADB0 C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* 01B9B4 8001ADB4 C7A80090 */  lwc1  $f8, 0x90($sp)
/* 01B9B8 8001ADB8 C7AA0094 */  lwc1  $f10, 0x94($sp)
/* 01B9BC 8001ADBC C7B00098 */  lwc1  $f16, 0x98($sp)
/* 01B9C0 8001ADC0 C7B2009C */  lwc1  $f18, 0x9c($sp)
/* 01B9C4 8001ADC4 AFBF0034 */  sw    $ra, 0x34($sp)
/* 01B9C8 8001ADC8 AFA40078 */  sw    $a0, 0x78($sp)
/* 01B9CC 8001ADCC 44066000 */  mfc1  $a2, $f12
/* 01B9D0 8001ADD0 44077000 */  mfc1  $a3, $f14
/* 01B9D4 8001ADD4 27A40038 */  addiu $a0, $sp, 0x38
/* 01B9D8 8001ADD8 E7A6002C */  swc1  $f6, 0x2c($sp)
/* 01B9DC 8001ADDC E7A40028 */  swc1  $f4, 0x28($sp)
/* 01B9E0 8001ADE0 E7A80018 */  swc1  $f8, 0x18($sp)
/* 01B9E4 8001ADE4 E7AA001C */  swc1  $f10, 0x1c($sp)
/* 01B9E8 8001ADE8 E7B00020 */  swc1  $f16, 0x20($sp)
/* 01B9EC 8001ADEC 0C006A59 */  jal   guLookAtReflectF_2
/* 01B9F0 8001ADF0 E7B20024 */   swc1  $f18, 0x24($sp)
/* 01B9F4 8001ADF4 27A40038 */  addiu $a0, $sp, 0x38
/* 01B9F8 8001ADF8 0C00668C */  jal   func_80019A30
/* 01B9FC 8001ADFC 8FA50078 */   lw    $a1, 0x78($sp)
/* 01BA00 8001AE00 8FBF0034 */  lw    $ra, 0x34($sp)
/* 01BA04 8001AE04 27BD0078 */  addiu $sp, $sp, 0x78
/* 01BA08 8001AE08 03E00008 */  jr    $ra
/* 01BA0C 8001AE0C 00000000 */   nop   
.type func_8001AD90, @function
.size func_8001AD90, . - func_8001AD90
