glabel func_8010F0B4
/* 097B24 8010F0B4 C4A20014 */  lwc1  $f2, 0x14($a1)
.L8010F0B8_ovl2:
/* 097B28 8010F0B8 C4AC0020 */  lwc1  $f12, 0x20($a1)
/* 097B2C 8010F0BC 460C103C */  c.lt.s $f2, $f12
/* 097B30 8010F0C0 00000000 */  nop   
/* 097B34 8010F0C4 4502000F */  bc1fl .L8010F104_ovl2
/* 097B38 8010F0C8 46006201 */   sub.s $f8, $f12, $f0
/* 097B3C 8010F0CC 46001101 */  sub.s $f4, $f2, $f0
/* 097B40 8010F0D0 C48E0014 */  lwc1  $f14, 0x14($a0)
/* 097B44 8010F0D4 4604703C */  c.lt.s $f14, $f4
/* 097B48 8010F0D8 00000000 */  nop   
/* 097B4C 8010F0DC 45010006 */  bc1t  .L8010F0F8_ovl2
/* 097B50 8010F0E0 00000000 */   nop   
/* 097B54 8010F0E4 46006180 */  add.s $f6, $f12, $f0
/* 097B58 8010F0E8 460E303C */  c.lt.s $f6, $f14
/* 097B5C 8010F0EC 00000000 */  nop   
/* 097B60 8010F0F0 45020011 */  bc1fl .L8010F138_ovl2
/* 097B64 8010F0F4 24020001 */   li    $v0, 1
.L8010F0F8_ovl2:
/* 097B68 8010F0F8 03E00008 */  jr    $ra
/* 097B6C 8010F0FC 00001025 */   move  $v0, $zero

/* 097B70 8010F100 46006201 */  sub.s $f8, $f12, $f0
.L8010F104_ovl2:
/* 097B74 8010F104 C48E0014 */  lwc1  $f14, 0x14($a0)
/* 097B78 8010F108 4608703C */  c.lt.s $f14, $f8
/* 097B7C 8010F10C 00000000 */  nop   
/* 097B80 8010F110 45010006 */  bc1t  .L8010F12C_ovl2
/* 097B84 8010F114 00000000 */   nop   
/* 097B88 8010F118 46001280 */  add.s $f10, $f2, $f0
/* 097B8C 8010F11C 460E503C */  c.lt.s $f10, $f14
/* 097B90 8010F120 00000000 */  nop   
/* 097B94 8010F124 45020004 */  bc1fl .L8010F138_ovl2
/* 097B98 8010F128 24020001 */   li    $v0, 1
.L8010F12C_ovl2:
/* 097B9C 8010F12C 03E00008 */  jr    $ra
/* 097BA0 8010F130 00001025 */   move  $v0, $zero

/* 097BA4 8010F134 24020001 */  li    $v0, 1
.L8010F138_ovl2:
/* 097BA8 8010F138 03E00008 */  jr    $ra
/* 097BAC 8010F13C 00000000 */   nop   
