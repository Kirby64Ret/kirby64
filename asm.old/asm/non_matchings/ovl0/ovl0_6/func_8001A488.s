glabel func_8001A488
/* 01B088 8001A488 27BDFF88 */  addiu $sp, $sp, -0x78
/* 01B08C 8001A48C C7A40088 */  lwc1  $f4, 0x88($sp)
/* 01B090 8001A490 44856000 */  mtc1  $a1, $f12
/* 01B094 8001A494 44867000 */  mtc1  $a2, $f14
/* 01B098 8001A498 E7A40010 */  swc1  $f4, 0x10($sp)
/* 01B09C 8001A49C C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* 01B0A0 8001A4A0 C7A6008C */  lwc1  $f6, 0x8c($sp)
/* 01B0A4 8001A4A4 C7A80090 */  lwc1  $f8, 0x90($sp)
/* 01B0A8 8001A4A8 C7AA0094 */  lwc1  $f10, 0x94($sp)
/* 01B0AC 8001A4AC C7B00098 */  lwc1  $f16, 0x98($sp)
/* 01B0B0 8001A4B0 C7B2009C */  lwc1  $f18, 0x9c($sp)
/* 01B0B4 8001A4B4 AFBF0034 */  sw    $ra, 0x34($sp)
/* 01B0B8 8001A4B8 AFA40078 */  sw    $a0, 0x78($sp)
/* 01B0BC 8001A4BC 44056000 */  mfc1  $a1, $f12
/* 01B0C0 8001A4C0 44067000 */  mfc1  $a2, $f14
/* 01B0C4 8001A4C4 AFA70084 */  sw    $a3, 0x84($sp)
/* 01B0C8 8001A4C8 27A40038 */  addiu $a0, $sp, 0x38
/* 01B0CC 8001A4CC E7A40028 */  swc1  $f4, 0x28($sp)
/* 01B0D0 8001A4D0 E7A60014 */  swc1  $f6, 0x14($sp)
/* 01B0D4 8001A4D4 E7A80018 */  swc1  $f8, 0x18($sp)
/* 01B0D8 8001A4D8 E7AA001C */  swc1  $f10, 0x1c($sp)
/* 01B0DC 8001A4DC E7B00020 */  swc1  $f16, 0x20($sp)
/* 01B0E0 8001A4E0 0C00686C */  jal   guLookAtF_2
/* 01B0E4 8001A4E4 E7B20024 */   swc1  $f18, 0x24($sp)
/* 01B0E8 8001A4E8 27A40038 */  addiu $a0, $sp, 0x38
/* 01B0EC 8001A4EC 0C00668C */  jal   func_80019A30
/* 01B0F0 8001A4F0 8FA50078 */   lw    $a1, 0x78($sp)
/* 01B0F4 8001A4F4 8FBF0034 */  lw    $ra, 0x34($sp)
/* 01B0F8 8001A4F8 27BD0078 */  addiu $sp, $sp, 0x78
/* 01B0FC 8001A4FC 03E00008 */  jr    $ra
/* 01B100 8001A500 00000000 */   nop   
.type func_8001A488, @function
.size func_8001A488, . - func_8001A488
