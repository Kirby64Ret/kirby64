glabel func_80010988
/* 011588 80010988 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 01158C 8001098C AFBF0014 */  sw    $ra, 0x14($sp)
/* 011590 80010990 8C84003C */  lw    $a0, 0x3c($a0)
/* 011594 80010994 0C003F99 */  jal   func_8000FE64
/* 011598 80010998 AFA4001C */   sw    $a0, 0x1c($sp)
/* 01159C 8001099C 0C0041D3 */  jal   func_8001074C
/* 0115A0 800109A0 8FA4001C */   lw    $a0, 0x1c($sp)
/* 0115A4 800109A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0115A8 800109A8 27BD0020 */  addiu $sp, $sp, 0x20
/* 0115AC 800109AC 03E00008 */  jr    $ra
/* 0115B0 800109B0 00000000 */   nop   
.type func_80010988, @function
.size func_80010988, . - func_80010988
