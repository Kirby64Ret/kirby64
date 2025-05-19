glabel func_8001CE68
/* 01DA68 8001CE68 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01DA6C 8001CE6C AFBF0014 */  sw    $ra, 0x14($sp)
/* 01DA70 8001CE70 AFA5001C */  sw    $a1, 0x1c($sp)
/* 01DA74 8001CE74 AFA60020 */  sw    $a2, 0x20($sp)
/* 01DA78 8001CE78 AFA70024 */  sw    $a3, 0x24($sp)
/* 01DA7C 8001CE7C 8FA50028 */  lw    $a1, 0x28($sp)
/* 01DA80 8001CE80 0C007368 */  jal   create_z_rotation_matrix
/* 01DA84 8001CE84 AFA40018 */   sw    $a0, 0x18($sp)
/* 01DA88 8001CE88 8FA40018 */  lw    $a0, 0x18($sp)
/* 01DA8C 8001CE8C C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 01DA90 8001CE90 E4840030 */  swc1  $f4, 0x30($a0)
/* 01DA94 8001CE94 C7A60020 */  lwc1  $f6, 0x20($sp)
/* 01DA98 8001CE98 E4860034 */  swc1  $f6, 0x34($a0)
/* 01DA9C 8001CE9C C7A80024 */  lwc1  $f8, 0x24($sp)
/* 01DAA0 8001CEA0 E4880038 */  swc1  $f8, 0x38($a0)
/* 01DAA4 8001CEA4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01DAA8 8001CEA8 27BD0018 */  addiu $sp, $sp, 0x18
/* 01DAAC 8001CEAC 03E00008 */  jr    $ra
/* 01DAB0 8001CEB0 00000000 */   nop   
.type func_8001CE68, @function
.size func_8001CE68, . - func_8001CE68
