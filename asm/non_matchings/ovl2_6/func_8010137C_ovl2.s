glabel func_8010137C
/* 089DEC 8010137C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 089DF0 80101380 AFBF001C */  sw    $ra, 0x1c($sp)
/* 089DF4 80101384 AFB10018 */  sw    $s1, 0x18($sp)
/* 089DF8 80101388 0C0404CF */  jal   func_8010133C
/* 089DFC 8010138C AFB00014 */   sw    $s0, 0x14($sp)
/* 089E00 80101390 00008025 */  move  $s0, $zero
/* 089E04 80101394 24110004 */  li    $s1, 4
.L80101398_ovl2:
/* 089E08 80101398 0C04037E */  jal   func_80100DF8
/* 089E0C 8010139C 02002025 */   move  $a0, $s0
/* 089E10 801013A0 50400004 */  beql  $v0, $zero, .L801013B4_ovl2
/* 089E14 801013A4 26100001 */   addiu $s0, $s0, 1
/* 089E18 801013A8 0C040394 */  jal   func_80100E50
/* 089E1C 801013AC 02002025 */   move  $a0, $s0
/* 089E20 801013B0 26100001 */  addiu $s0, $s0, 1
.L801013B4_ovl2:
/* 089E24 801013B4 1611FFF8 */  bne   $s0, $s1, .L80101398_ovl2
/* 089E28 801013B8 00000000 */   nop   
/* 089E2C 801013BC 00002025 */  move  $a0, $zero
/* 089E30 801013C0 00002825 */  move  $a1, $zero
/* 089E34 801013C4 2406001A */  li    $a2, 26
/* 089E38 801013C8 0C002860 */  jal   func_8000A180
/* 089E3C 801013CC 3C078000 */   lui   $a3, 0x8000
/* 089E40 801013D0 3C058010 */  lui   $a1, %hi(D_80100EE4) # $a1, 0x8010
/* 089E44 801013D4 24A50EE4 */  addiu $a1, %lo(D_80100EE4) # addiu $a1, $a1, 0xee4
/* 089E48 801013D8 00402025 */  move  $a0, $v0
/* 089E4C 801013DC 24060001 */  li    $a2, 1
/* 089E50 801013E0 0C002286 */  jal   func_80008A18
/* 089E54 801013E4 00003825 */   move  $a3, $zero
/* 089E58 801013E8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 089E5C 801013EC 8FB00014 */  lw    $s0, 0x14($sp)
/* 089E60 801013F0 8FB10018 */  lw    $s1, 0x18($sp)
/* 089E64 801013F4 03E00008 */  jr    $ra
/* 089E68 801013F8 27BD0020 */   addiu $sp, $sp, 0x20
/* 089E6C 801013FC 00000000 */  nop   
