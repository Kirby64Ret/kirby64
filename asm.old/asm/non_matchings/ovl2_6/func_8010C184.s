glabel func_8010C184
/* 094BF4 8010C184 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 094BF8 8010C188 AFBF002C */  sw    $ra, 0x2c($sp)
/* 094BFC 8010C18C AFB00028 */  sw    $s0, 0x28($sp)
/* 094C00 8010C190 8C8E0058 */  lw    $t6, 0x58($a0)
/* 094C04 8010C194 00808025 */  move  $s0, $a0
/* 094C08 8010C198 3C018013 */  lui   $at, %hi(D_8012BD44) # $at, 0x8013
/* 094C0C 8010C19C 3C048013 */  lui   $a0, %hi(D_8012BCA0) # $a0, 0x8013
/* 094C10 8010C1A0 2484BCA0 */  addiu $a0, %lo(D_8012BCA0) # addiu $a0, $a0, -0x4360
/* 094C14 8010C1A4 0C041486 */  jal   func_80105218
/* 094C18 8010C1A8 AC2EBD44 */   sw    $t6, %lo(D_8012BD44)($at)
/* 094C1C 8010C1AC C6040028 */  lwc1  $f4, 0x28($s0)
/* 094C20 8010C1B0 3C188013 */  lui   $t8, %hi(D_8012BCDC) # $t8, 0x8013
/* 094C24 8010C1B4 3C198013 */  lui   $t9, %hi(D_8012BCD8) # $t9, 0x8013
/* 094C28 8010C1B8 E7A40040 */  swc1  $f4, 0x40($sp)
/* 094C2C 8010C1BC C606002C */  lwc1  $f6, 0x2c($s0)
/* 094C30 8010C1C0 3C088013 */  lui   $t0, %hi(D_8012BCD4) # $t0, 0x8013
/* 094C34 8010C1C4 2508BCD4 */  addiu $t0, %lo(D_8012BCD4) # addiu $t0, $t0, -0x432c
/* 094C38 8010C1C8 E7A60044 */  swc1  $f6, 0x44($sp)
/* 094C3C 8010C1CC C6080030 */  lwc1  $f8, 0x30($s0)
/* 094C40 8010C1D0 2739BCD8 */  addiu $t9, %lo(D_8012BCD8) # addiu $t9, $t9, -0x4328
/* 094C44 8010C1D4 2718BCDC */  addiu $t8, %lo(D_8012BCDC) # addiu $t8, $t8, -0x4324
/* 094C48 8010C1D8 E7A80048 */  swc1  $f8, 0x48($sp)
/* 094C4C 8010C1DC C60A0004 */  lwc1  $f10, 4($s0)
/* 094C50 8010C1E0 260F0004 */  addiu $t7, $s0, 4
/* 094C54 8010C1E4 27A40040 */  addiu $a0, $sp, 0x40
/* 094C58 8010C1E8 E7AA0034 */  swc1  $f10, 0x34($sp)
/* 094C5C 8010C1EC C6120010 */  lwc1  $f18, 0x10($s0)
/* 094C60 8010C1F0 C6100008 */  lwc1  $f16, 8($s0)
/* 094C64 8010C1F4 27A50034 */  addiu $a1, $sp, 0x34
/* 094C68 8010C1F8 00003025 */  move  $a2, $zero
/* 094C6C 8010C1FC 46128100 */  add.s $f4, $f16, $f18
/* 094C70 8010C200 00003825 */  move  $a3, $zero
/* 094C74 8010C204 E7A40038 */  swc1  $f4, 0x38($sp)
/* 094C78 8010C208 C606000C */  lwc1  $f6, 0xc($s0)
/* 094C7C 8010C20C AFA8001C */  sw    $t0, 0x1c($sp)
/* 094C80 8010C210 AFB90018 */  sw    $t9, 0x18($sp)
/* 094C84 8010C214 AFB80014 */  sw    $t8, 0x14($sp)
/* 094C88 8010C218 AFAF0010 */  sw    $t7, 0x10($sp)
/* 094C8C 8010C21C 0C040E4C */  jal   func_80103930
/* 094C90 8010C220 E7A6003C */   swc1  $f6, 0x3c($sp)
/* 094C94 8010C224 1040000B */  beqz  $v0, .L8010C254_ovl2
/* 094C98 8010C228 3C0C8013 */   lui   $t4, %hi(D_8012BD40) # $t4, 0x8013
/* 094C9C 8010C22C C6080008 */  lwc1  $f8, 8($s0)
/* 094CA0 8010C230 C60A0010 */  lwc1  $f10, 0x10($s0)
/* 094CA4 8010C234 3C098013 */  lui   $t1, %hi(D_8012BCA0) # $t1, 0x8013
/* 094CA8 8010C238 3C018013 */  lui   $at, %hi(D_8012BCA0) # $at, 0x8013
/* 094CAC 8010C23C 460A4401 */  sub.s $f16, $f8, $f10
/* 094CB0 8010C240 E6100008 */  swc1  $f16, 8($s0)
/* 094CB4 8010C244 9529BCA0 */  lhu   $t1, %lo(D_8012BCA0)($t1)
/* 094CB8 8010C248 312A0007 */  andi  $t2, $t1, 7
/* 094CBC 8010C24C 354B8000 */  ori   $t3, $t2, 0x8000
/* 094CC0 8010C250 A42BBCA0 */  sh    $t3, %lo(D_8012BCA0)($at)
.L8010C254_ovl2:
/* 094CC4 8010C254 8D8CBD40 */  lw    $t4, %lo(D_8012BD40)($t4)
/* 094CC8 8010C258 00001025 */  move  $v0, $zero
/* 094CCC 8010C25C AE0C0058 */  sw    $t4, 0x58($s0)
/* 094CD0 8010C260 8FBF002C */  lw    $ra, 0x2c($sp)
/* 094CD4 8010C264 8FB00028 */  lw    $s0, 0x28($sp)
/* 094CD8 8010C268 27BD0050 */  addiu $sp, $sp, 0x50
/* 094CDC 8010C26C 03E00008 */  jr    $ra
/* 094CE0 8010C270 00000000 */   nop   
.type func_8010C184, @function
.size func_8010C184, . - func_8010C184
