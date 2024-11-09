glabel func_8000A180
/* 00AD80 8000A180 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00AD84 8000A184 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00AD88 8000A188 AFA60028 */  sw    $a2, 0x28($sp)
/* 00AD8C 8000A18C 0C002830 */  jal   omGAddCommon
/* 00AD90 8000A190 30C600FF */   andi  $a2, $a2, 0xff
/* 00AD94 8000A194 14400003 */  bnez  $v0, .L8000A1A4_ovl0
/* 00AD98 8000A198 00402025 */   move  $a0, $v0
/* 00AD9C 8000A19C 10000004 */  b     .L8000A1B0_ovl0
/* 00ADA0 8000A1A0 00001025 */   move  $v0, $zero
.L8000A1A4_ovl0:
/* 00ADA4 8000A1A4 0C00210D */  jal   func_80008434
/* 00ADA8 8000A1A8 AFA4001C */   sw    $a0, 0x1c($sp)
/* 00ADAC 8000A1AC 8FA2001C */  lw    $v0, 0x1c($sp)
.L8000A1B0_ovl0:
/* 00ADB0 8000A1B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00ADB4 8000A1B4 27BD0020 */  addiu $sp, $sp, 0x20
/* 00ADB8 8000A1B8 03E00008 */  jr    $ra
/* 00ADBC 8000A1BC 00000000 */   nop   
.type func_8000A180, @function
.size func_8000A180, . - func_8000A180
