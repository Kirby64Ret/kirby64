glabel func_8000D030
/* 00DC30 8000D030 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00DC34 8000D034 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00DC38 8000D038 90820005 */  lbu   $v0, 5($a0)
/* 00DC3C 8000D03C 24010001 */  li    $at, 1
/* 00DC40 8000D040 10410014 */  beq   $v0, $at, .L8000D094_ovl0
/* 00DC44 8000D044 24010002 */   li    $at, 2
/* 00DC48 8000D048 10410005 */  beq   $v0, $at, .L8000D060_ovl0
/* 00DC4C 8000D04C 24010003 */   li    $at, 3
/* 00DC50 8000D050 50410006 */  beql  $v0, $at, .L8000D06C_ovl0
/* 00DC54 8000D054 C4840018 */   lwc1  $f4, 0x18($a0)
/* 00DC58 8000D058 10000011 */  b     .L8000D0A0_ovl0
/* 00DC5C 8000D05C 8FBF001C */   lw    $ra, 0x1c($sp)
.L8000D060_ovl0:
/* 00DC60 8000D060 1000000E */  b     .L8000D09C_ovl0
/* 00DC64 8000D064 C4800018 */   lwc1  $f0, 0x18($a0)
/* 00DC68 8000D068 C4840018 */  lwc1  $f4, 0x18($a0)
.L8000D06C_ovl0:
/* 00DC6C 8000D06C C48C0008 */  lwc1  $f12, 8($a0)
/* 00DC70 8000D070 C48E000C */  lwc1  $f14, 0xc($a0)
/* 00DC74 8000D074 8C860010 */  lw    $a2, 0x10($a0)
/* 00DC78 8000D078 8C870014 */  lw    $a3, 0x14($a0)
/* 00DC7C 8000D07C E7A40010 */  swc1  $f4, 0x10($sp)
/* 00DC80 8000D080 C486001C */  lwc1  $f6, 0x1c($a0)
/* 00DC84 8000D084 0C0033B3 */  jal   func_8000CECC
/* 00DC88 8000D088 E7A60014 */   swc1  $f6, 0x14($sp)
/* 00DC8C 8000D08C 10000004 */  b     .L8000D0A0_ovl0
/* 00DC90 8000D090 8FBF001C */   lw    $ra, 0x1c($sp)
.L8000D094_ovl0:
/* 00DC94 8000D094 44800000 */  mtc1  $zero, $f0
/* 00DC98 8000D098 00000000 */  nop   
.L8000D09C_ovl0:
/* 00DC9C 8000D09C 8FBF001C */  lw    $ra, 0x1c($sp)
.L8000D0A0_ovl0:
/* 00DCA0 8000D0A0 27BD0020 */  addiu $sp, $sp, 0x20
/* 00DCA4 8000D0A4 03E00008 */  jr    $ra
/* 00DCA8 8000D0A8 00000000 */   nop   
.type func_8000D030, @function
.size func_8000D030, . - func_8000D030
