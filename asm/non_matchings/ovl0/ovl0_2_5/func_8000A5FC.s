glabel func_8000A5FC
/* 00B1FC 8000A5FC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00B200 8000A600 AFA60028 */  sw    $a2, 0x28($sp)
/* 00B204 8000A604 30C600FF */  andi  $a2, $a2, 0xff
/* 00B208 8000A608 14800003 */  bnez  $a0, .L8000A618_ovl0
/* 00B20C 8000A60C AFBF001C */   sw    $ra, 0x1c($sp)
/* 00B210 8000A610 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 00B214 8000A614 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
.L8000A618_ovl0:
/* 00B218 8000A618 8FAE0030 */  lw    $t6, 0x30($sp)
/* 00B21C 8000A61C AFA40020 */  sw    $a0, 0x20($sp)
/* 00B220 8000A620 0C002960 */  jal   func_8000A580_ovl0
/* 00B224 8000A624 AFAE0010 */   sw    $t6, 0x10($sp)
/* 00B228 8000A628 0C00217E */  jal   func_800085F8_ovl0
/* 00B22C 8000A62C 8FA40020 */   lw    $a0, 0x20($sp)
/* 00B230 8000A630 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00B234 8000A634 27BD0020 */  addiu $sp, $sp, 0x20
/* 00B238 8000A638 03E00008 */  jr    $ra
/* 00B23C 8000A63C 00000000 */   nop   
