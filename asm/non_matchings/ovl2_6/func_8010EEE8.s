glabel func_8010EEE8
/* 097958 8010EEE8 C4A20018 */  lwc1  $f2, 0x18($a1)
/* 09795C 8010EEEC C4840018 */  lwc1  $f4, 0x18($a0)
/* 097960 8010EEF0 C486000C */  lwc1  $f6, 0xc($a0)
/* 097964 8010EEF4 C4A8000C */  lwc1  $f8, 0xc($a1)
/* 097968 8010EEF8 46022000 */  add.s $f0, $f4, $f2
/* 09796C 8010EEFC 46083301 */  sub.s $f12, $f6, $f8
/* 097970 8010EF00 460C003C */  c.lt.s $f0, $f12
/* 097974 8010EF04 00000000 */  nop   
/* 097978 8010EF08 45010006 */  bc1t  .L8010EF24_ovl2
/* 09797C 8010EF0C 00000000 */   nop   
/* 097980 8010EF10 46000387 */  neg.s $f14, $f0
/* 097984 8010EF14 460E603C */  c.lt.s $f12, $f14
/* 097988 8010EF18 00000000 */  nop   
/* 09798C 8010EF1C 45020004 */  bc1fl .L8010EF30_ovl2
/* 097990 8010EF20 C48A001C */   lwc1  $f10, 0x1c($a0)
.L8010EF24_ovl2:
/* 097994 8010EF24 03E00008 */  jr    $ra
/* 097998 8010EF28 00001025 */   move  $v0, $zero
.type func_8010EEE8, @function

/* 09799C 8010EF2C C48A001C */  lwc1  $f10, 0x1c($a0)
.L8010EF30_ovl2:
/* 0979A0 8010EF30 C4920010 */  lwc1  $f18, 0x10($a0)
/* 0979A4 8010EF34 C4A40010 */  lwc1  $f4, 0x10($a1)
/* 0979A8 8010EF38 46025300 */  add.s $f12, $f10, $f2
/* 0979AC 8010EF3C 46049401 */  sub.s $f16, $f18, $f4
/* 0979B0 8010EF40 4610603C */  c.lt.s $f12, $f16
/* 0979B4 8010EF44 00000000 */  nop   
/* 0979B8 8010EF48 45010006 */  bc1t  .L8010EF64_ovl2
/* 0979BC 8010EF4C 00000000 */   nop   
/* 0979C0 8010EF50 46006187 */  neg.s $f6, $f12
/* 0979C4 8010EF54 4606803C */  c.lt.s $f16, $f6
/* 0979C8 8010EF58 00000000 */  nop   
/* 0979CC 8010EF5C 45020004 */  bc1fl .L8010EF70_ovl2
/* 0979D0 8010EF60 C4880014 */   lwc1  $f8, 0x14($a0)
.L8010EF64_ovl2:
/* 0979D4 8010EF64 03E00008 */  jr    $ra
/* 0979D8 8010EF68 00001025 */   move  $v0, $zero
.type func_8010EEE8, @function

/* 0979DC 8010EF6C C4880014 */  lwc1  $f8, 0x14($a0)
.L8010EF70_ovl2:
/* 0979E0 8010EF70 C4AA0014 */  lwc1  $f10, 0x14($a1)
/* 0979E4 8010EF74 460A4081 */  sub.s $f2, $f8, $f10
/* 0979E8 8010EF78 4602003C */  c.lt.s $f0, $f2
/* 0979EC 8010EF7C 00000000 */  nop   
/* 0979F0 8010EF80 45010005 */  bc1t  .L8010EF98_ovl2
/* 0979F4 8010EF84 00000000 */   nop   
/* 0979F8 8010EF88 460E103C */  c.lt.s $f2, $f14
/* 0979FC 8010EF8C 24020001 */  li    $v0, 1
/* 097A00 8010EF90 45000003 */  bc1f  .L8010EFA0_ovl2
/* 097A04 8010EF94 00000000 */   nop   
.L8010EF98_ovl2:
/* 097A08 8010EF98 03E00008 */  jr    $ra
/* 097A0C 8010EF9C 00001025 */   move  $v0, $zero
.type func_8010EEE8, @function

.L8010EFA0_ovl2:
/* 097A10 8010EFA0 03E00008 */  jr    $ra
/* 097A14 8010EFA4 00000000 */   nop   
.type func_8010EEE8, @function
.size func_8010EEE8, . - func_8010EEE8
