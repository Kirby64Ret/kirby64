glabel func_8001C8B8
/* 01D4B8 8001C8B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01D4BC 8001C8BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 01D4C0 8001C8C0 AFA5001C */  sw    $a1, 0x1c($sp)
/* 01D4C4 8001C8C4 AFA60020 */  sw    $a2, 0x20($sp)
/* 01D4C8 8001C8C8 AFA70024 */  sw    $a3, 0x24($sp)
/* 01D4CC 8001C8CC 8FA70030 */  lw    $a3, 0x30($sp)
/* 01D4D0 8001C8D0 8FA6002C */  lw    $a2, 0x2c($sp)
/* 01D4D4 8001C8D4 8FA50028 */  lw    $a1, 0x28($sp)
/* 01D4D8 8001C8D8 0C0071CF */  jal   func_8001C73C
/* 01D4DC 8001C8DC AFA40018 */   sw    $a0, 0x18($sp)
/* 01D4E0 8001C8E0 8FA40018 */  lw    $a0, 0x18($sp)
/* 01D4E4 8001C8E4 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 01D4E8 8001C8E8 E4840030 */  swc1  $f4, 0x30($a0)
/* 01D4EC 8001C8EC C7A60020 */  lwc1  $f6, 0x20($sp)
/* 01D4F0 8001C8F0 E4860034 */  swc1  $f6, 0x34($a0)
/* 01D4F4 8001C8F4 C7A80024 */  lwc1  $f8, 0x24($sp)
/* 01D4F8 8001C8F8 E4880038 */  swc1  $f8, 0x38($a0)
/* 01D4FC 8001C8FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01D500 8001C900 27BD0018 */  addiu $sp, $sp, 0x18
/* 01D504 8001C904 03E00008 */  jr    $ra
/* 01D508 8001C908 00000000 */   nop   
.type func_8001C8B8, @function
.size func_8001C8B8, . - func_8001C8B8
