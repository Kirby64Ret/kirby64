glabel func_8001BF88
/* 01CB88 8001BF88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01CB8C 8001BF8C AFBF0014 */  sw    $ra, 0x14($sp)
/* 01CB90 8001BF90 AFA5001C */  sw    $a1, 0x1c($sp)
/* 01CB94 8001BF94 AFA60020 */  sw    $a2, 0x20($sp)
/* 01CB98 8001BF98 AFA70024 */  sw    $a3, 0x24($sp)
/* 01CB9C 8001BF9C 8FA70030 */  lw    $a3, 0x30($sp)
/* 01CBA0 8001BFA0 8FA6002C */  lw    $a2, 0x2c($sp)
/* 01CBA4 8001BFA4 8FA50028 */  lw    $a1, 0x28($sp)
/* 01CBA8 8001BFA8 0C006EEB */  jal   HS64_MkRotationMtxF
/* 01CBAC 8001BFAC AFA40018 */   sw    $a0, 0x18($sp)
/* 01CBB0 8001BFB0 8FA40018 */  lw    $a0, 0x18($sp)
/* 01CBB4 8001BFB4 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 01CBB8 8001BFB8 E4840030 */  swc1  $f4, 0x30($a0)
/* 01CBBC 8001BFBC C7A60020 */  lwc1  $f6, 0x20($sp)
/* 01CBC0 8001BFC0 E4860034 */  swc1  $f6, 0x34($a0)
/* 01CBC4 8001BFC4 C7A80024 */  lwc1  $f8, 0x24($sp)
/* 01CBC8 8001BFC8 E4880038 */  swc1  $f8, 0x38($a0)
/* 01CBCC 8001BFCC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01CBD0 8001BFD0 27BD0018 */  addiu $sp, $sp, 0x18
/* 01CBD4 8001BFD4 03E00008 */  jr    $ra
/* 01CBD8 8001BFD8 00000000 */   nop   
.type func_8001BF88, @function
.size func_8001BF88, . - func_8001BF88
