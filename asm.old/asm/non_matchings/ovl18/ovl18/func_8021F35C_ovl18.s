glabel func_8021F35C_ovl18
/* 231CFC 8021F35C 3C05800A */ lui $a1, %hi(ovl1_TamperCheck)
/* 231D00 8021F360 3C078022 */ lui $a3, %hi(ovl18_TamperCheck)
/* 231D04 8021F364 24A46B64 */  addiu $a0, $a1, %lo(ovl1_TamperCheck)
/* 231D08 8021F368 24E6F304 */  addiu $a2, $a3, %lo(ovl18_TamperCheck)
/* 231D0C 8021F36C 8CC20000 */  lw    $v0, ($a2)
/* 231D10 8021F370 8CCF0004 */  lw    $t7, 4($a2)
/* 231D14 8021F374 8C830000 */  lw    $v1, ($a0)
/* 231D18 8021F378 8C8E0004 */  lw    $t6, 4($a0)
/* 231D1C 8021F37C 24C60008 */  addiu $a2, $a2, 8
/* 231D20 8021F380 24840008 */  addiu $a0, $a0, 8
/* 231D24 8021F384 2405000A */  li    $a1, 10
/* 231D28 8021F388 24080002 */  li    $t0, 2
/* 231D2C 8021F38C 004F1021 */  addu  $v0, $v0, $t7
/* 231D30 8021F390 006E1821 */  addu  $v1, $v1, $t6
.L8021F394_ovl18:
/* 231D34 8021F394 8C980000 */  lw    $t8, ($a0)
/* 231D38 8021F398 8CD90000 */  lw    $t9, ($a2)
/* 231D3C 8021F39C 8C890004 */  lw    $t1, 4($a0)
/* 231D40 8021F3A0 8CCA0004 */  lw    $t2, 4($a2)
/* 231D44 8021F3A4 8C8B0008 */  lw    $t3, 8($a0)
/* 231D48 8021F3A8 8CCC0008 */  lw    $t4, 8($a2)
/* 231D4C 8021F3AC 00781821 */  addu  $v1, $v1, $t8
/* 231D50 8021F3B0 00591021 */  addu  $v0, $v0, $t9
/* 231D54 8021F3B4 8C8D000C */  lw    $t5, 0xc($a0)
/* 231D58 8021F3B8 8CCE000C */  lw    $t6, 0xc($a2)
/* 231D5C 8021F3BC 00691821 */  addu  $v1, $v1, $t1
/* 231D60 8021F3C0 004A1021 */  addu  $v0, $v0, $t2
/* 231D64 8021F3C4 25080004 */  addiu $t0, $t0, 4
/* 231D68 8021F3C8 006B1821 */  addu  $v1, $v1, $t3
/* 231D6C 8021F3CC 004C1021 */  addu  $v0, $v0, $t4
/* 231D70 8021F3D0 24840010 */  addiu $a0, $a0, 0x10
/* 231D74 8021F3D4 24C60010 */  addiu $a2, $a2, 0x10
/* 231D78 8021F3D8 006D1821 */  addu  $v1, $v1, $t5
/* 231D7C 8021F3DC 1505FFED */  bne   $t0, $a1, .L8021F394_ovl18
/* 231D80 8021F3E0 004E1021 */   addu  $v0, $v0, $t6
/* 231D84 8021F3E4 50620004 */  beql  $v1, $v0, .L8021F3F8_ovl18
/* 231D88 8021F3E8 24020001 */   li    $v0, 1
/* 231D8C 8021F3EC 03E00008 */  jr    $ra
/* 231D90 8021F3F0 00001025 */   move  $v0, $zero
/* 231D94 8021F3F4 24020001 */  li    $v0, 1
.L8021F3F8_ovl18:
/* 231D98 8021F3F8 03E00008 */  jr    $ra
/* 231D9C 8021F3FC 00000000 */   nop   
.type func_8021F35C_ovl18, @function
.size func_8021F35C_ovl18, . - func_8021F35C_ovl18
