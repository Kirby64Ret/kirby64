glabel func_8001CB4C
/* 01D74C 8001CB4C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01D750 8001CB50 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01D754 8001CB54 AFA5001C */  sw    $a1, 0x1c($sp)
/* 01D758 8001CB58 AFA60020 */  sw    $a2, 0x20($sp)
/* 01D75C 8001CB5C AFA70024 */  sw    $a3, 0x24($sp)
/* 01D760 8001CB60 8FA6002C */  lw    $a2, 0x2c($sp)
/* 01D764 8001CB64 8FA50028 */  lw    $a1, 0x28($sp)
/* 01D768 8001CB68 0C007290 */  jal   create_yz_rotation_matrix
/* 01D76C 8001CB6C AFA40018 */   sw    $a0, 0x18($sp)
/* 01D770 8001CB70 8FA40018 */  lw    $a0, 0x18($sp)
/* 01D774 8001CB74 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 01D778 8001CB78 E4840030 */  swc1  $f4, 0x30($a0)
/* 01D77C 8001CB7C C7A60020 */  lwc1  $f6, 0x20($sp)
/* 01D780 8001CB80 E4860034 */  swc1  $f6, 0x34($a0)
/* 01D784 8001CB84 C7A80024 */  lwc1  $f8, 0x24($sp)
/* 01D788 8001CB88 E4880038 */  swc1  $f8, 0x38($a0)
/* 01D78C 8001CB8C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01D790 8001CB90 27BD0018 */  addiu $sp, $sp, 0x18
/* 01D794 8001CB94 03E00008 */  jr    $ra
/* 01D798 8001CB98 00000000 */   nop   
.type func_8001CB4C, @function
.size func_8001CB4C, . - func_8001CB4C
