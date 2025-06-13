glabel func_8009BD3C
/* 043F8C 8009BD3C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 043F90 8009BD40 C7A4006C */  lwc1  $f4, 0x6c($sp)
/* 043F94 8009BD44 C7A60070 */  lwc1  $f6, 0x70($sp)
/* 043F98 8009BD48 C7A80074 */  lwc1  $f8, 0x74($sp)
/* 043F9C 8009BD4C AFA70064 */  sw    $a3, 0x64($sp)
/* 043FA0 8009BD50 E7A40018 */  swc1  $f4, 0x18($sp)
/* 043FA4 8009BD54 E7A6001C */  swc1  $f6, 0x1c($sp)
/* 043FA8 8009BD58 E7A80020 */  swc1  $f8, 0x20($sp)
/* 043FAC 8009BD5C C7A8008C */  lwc1  $f8, 0x8c($sp)
/* 043FB0 8009BD60 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 043FB4 8009BD64 C7A40084 */  lwc1  $f4, 0x84($sp)
/* 043FB8 8009BD68 8FAE0064 */  lw    $t6, 0x64($sp)
/* 043FBC 8009BD6C 8FAF0068 */  lw    $t7, 0x68($sp)
/* 043FC0 8009BD70 C7AA0078 */  lwc1  $f10, 0x78($sp)
/* 043FC4 8009BD74 C7B0007C */  lwc1  $f16, 0x7c($sp)
/* 043FC8 8009BD78 C7B20080 */  lwc1  $f18, 0x80($sp)
/* 043FCC 8009BD7C 8FB80090 */  lw    $t8, 0x90($sp)
/* 043FD0 8009BD80 8FB90094 */  lw    $t9, 0x94($sp)
/* 043FD4 8009BD84 AFA60060 */  sw    $a2, 0x60($sp)
/* 043FD8 8009BD88 00A03025 */  move  $a2, $a1
/* 043FDC 8009BD8C AFBF004C */  sw    $ra, 0x4c($sp)
/* 043FE0 8009BD90 AFA40058 */  sw    $a0, 0x58($sp)
/* 043FE4 8009BD94 AFA5005C */  sw    $a1, 0x5c($sp)
/* 043FE8 8009BD98 97A70062 */  lhu   $a3, 0x62($sp)
/* 043FEC 8009BD9C 8FA50058 */  lw    $a1, 0x58($sp)
/* 043FF0 8009BDA0 00002025 */  move  $a0, $zero
/* 043FF4 8009BDA4 E7A80038 */  swc1  $f8, 0x38($sp)
/* 043FF8 8009BDA8 E7A60034 */  swc1  $f6, 0x34($sp)
/* 043FFC 8009BDAC E7A40030 */  swc1  $f4, 0x30($sp)
/* 044000 8009BDB0 AFAE0010 */  sw    $t6, 0x10($sp)
/* 044004 8009BDB4 AFAF0014 */  sw    $t7, 0x14($sp)
/* 044008 8009BDB8 E7AA0024 */  swc1  $f10, 0x24($sp)
/* 04400C 8009BDBC E7B00028 */  swc1  $f16, 0x28($sp)
/* 044010 8009BDC0 E7B2002C */  swc1  $f18, 0x2c($sp)
/* 044014 8009BDC4 AFB8003C */  sw    $t8, 0x3c($sp)
/* 044018 8009BDC8 0C026E9D */  jal   func_8009BA74
/* 04401C 8009BDCC AFB90040 */   sw    $t9, 0x40($sp)
/* 044020 8009BDD0 10400007 */  beqz  $v0, .L8009BDF0_ovl1
/* 044024 8009BDD4 00402025 */   move  $a0, $v0
/* 044028 8009BDD8 8FA60058 */  lw    $a2, 0x58($sp)
/* 04402C 8009BDDC 00002825 */  move  $a1, $zero
/* 044030 8009BDE0 AFA20054 */  sw    $v0, 0x54($sp)
/* 044034 8009BDE4 0C027138 */  jal   func_8009C4E0
/* 044038 8009BDE8 000630C3 */   sra   $a2, $a2, 3
/* 04403C 8009BDEC 8FA40054 */  lw    $a0, 0x54($sp)
.L8009BDF0_ovl1:
/* 044040 8009BDF0 8FBF004C */  lw    $ra, 0x4c($sp)
/* 044044 8009BDF4 27BD0058 */  addiu $sp, $sp, 0x58
/* 044048 8009BDF8 00801025 */  move  $v0, $a0
/* 04404C 8009BDFC 03E00008 */  jr    $ra
/* 044050 8009BE00 00000000 */   nop   
.type func_8009BD3C, @function
.size func_8009BD3C, . - func_8009BD3C
