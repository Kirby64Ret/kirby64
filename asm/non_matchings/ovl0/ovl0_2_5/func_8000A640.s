glabel func_8000A640
/* 00B240 8000A640 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00B244 8000A644 AFA60028 */  sw    $a2, 0x28($sp)
/* 00B248 8000A648 30C600FF */  andi  $a2, $a2, 0xff
/* 00B24C 8000A64C 14800003 */  bnez  $a0, .L8000A65C_ovl0
/* 00B250 8000A650 AFBF001C */   sw    $ra, 0x1c($sp)
/* 00B254 8000A654 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 00B258 8000A658 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
.L8000A65C_ovl0:
/* 00B25C 8000A65C 8FAE0030 */  lw    $t6, 0x30($sp)
/* 00B260 8000A660 AFA40020 */  sw    $a0, 0x20($sp)
/* 00B264 8000A664 0C002960 */  jal   func_8000A580_ovl0
/* 00B268 8000A668 AFAE0010 */   sw    $t6, 0x10($sp)
/* 00B26C 8000A66C 0C002199 */  jal   func_80008664_ovl0
/* 00B270 8000A670 8FA40020 */   lw    $a0, 0x20($sp)
/* 00B274 8000A674 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00B278 8000A678 27BD0020 */  addiu $sp, $sp, 0x20
/* 00B27C 8000A67C 03E00008 */  jr    $ra
/* 00B280 8000A680 00000000 */   nop   
