glabel func_8001C968
/* 01D568 8001C968 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01D56C 8001C96C AFBF0014 */  sw    $ra, 0x14($sp)
/* 01D570 8001C970 AFA5001C */  sw    $a1, 0x1c($sp)
/* 01D574 8001C974 AFA60020 */  sw    $a2, 0x20($sp)
/* 01D578 8001C978 AFA70024 */  sw    $a3, 0x24($sp)
/* 01D57C 8001C97C 8FA70030 */  lw    $a3, 0x30($sp)
/* 01D580 8001C980 8FA6002C */  lw    $a2, 0x2c($sp)
/* 01D584 8001C984 8FA50028 */  lw    $a1, 0x28($sp)
/* 01D588 8001C988 0C0071CF */  jal   func_8001C73C
/* 01D58C 8001C98C AFA40018 */   sw    $a0, 0x18($sp)
/* 01D590 8001C990 8FA40018 */  lw    $a0, 0x18($sp)
/* 01D594 8001C994 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 01D598 8001C998 E4840030 */  swc1  $f4, 0x30($a0)
/* 01D59C 8001C99C C7A60020 */  lwc1  $f6, 0x20($sp)
/* 01D5A0 8001C9A0 E4860034 */  swc1  $f6, 0x34($a0)
/* 01D5A4 8001C9A4 C7A80024 */  lwc1  $f8, 0x24($sp)
/* 01D5A8 8001C9A8 E4880038 */  swc1  $f8, 0x38($a0)
/* 01D5AC 8001C9AC 8FA7003C */  lw    $a3, 0x3c($sp)
/* 01D5B0 8001C9B0 8FA60038 */  lw    $a2, 0x38($sp)
/* 01D5B4 8001C9B4 0C006D79 */  jal   func_8001B5E4
/* 01D5B8 8001C9B8 8FA50034 */   lw    $a1, 0x34($sp)
/* 01D5BC 8001C9BC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01D5C0 8001C9C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 01D5C4 8001C9C4 03E00008 */  jr    $ra
/* 01D5C8 8001C9C8 00000000 */   nop   
.type func_8001C968, @function
.size func_8001C968, . - func_8001C968
