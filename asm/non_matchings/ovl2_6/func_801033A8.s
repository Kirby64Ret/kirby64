glabel func_801033A8
/* 08BE18 801033A8 8CB80000 */  lw    $t8, ($a1)
/* 08BE1C 801033AC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08BE20 801033B0 27AE0014 */  addiu $t6, $sp, 0x14
/* 08BE24 801033B4 ADD80000 */  sw    $t8, ($t6)
/* 08BE28 801033B8 8CAF0004 */  lw    $t7, 4($a1)
/* 08BE2C 801033BC 27B90008 */  addiu $t9, $sp, 8
/* 08BE30 801033C0 ADCF0004 */  sw    $t7, 4($t6)
/* 08BE34 801033C4 8CB80008 */  lw    $t8, 8($a1)
/* 08BE38 801033C8 ADD80008 */  sw    $t8, 8($t6)
/* 08BE3C 801033CC 8CC90000 */  lw    $t1, ($a2)
/* 08BE40 801033D0 AF290000 */  sw    $t1, ($t9)
/* 08BE44 801033D4 8CC80004 */  lw    $t0, 4($a2)
/* 08BE48 801033D8 AF280004 */  sw    $t0, 4($t9)
/* 08BE4C 801033DC 8CC90008 */  lw    $t1, 8($a2)
/* 08BE50 801033E0 AF290008 */  sw    $t1, 8($t9)
/* 08BE54 801033E4 C7A40014 */  lwc1  $f4, 0x14($sp)
/* 08BE58 801033E8 C48000A0 */  lwc1  $f0, 0xa0($a0)
/* 08BE5C 801033EC C7A60008 */  lwc1  $f6, 8($sp)
/* 08BE60 801033F0 C7A80014 */  lwc1  $f8, 0x14($sp)
/* 08BE64 801033F4 4600203C */  c.lt.s $f4, $f0
/* 08BE68 801033F8 00000000 */  nop   
/* 08BE6C 801033FC 45020008 */  bc1fl .L80103420_ovl2
/* 08BE70 80103400 C48000AC */   lwc1  $f0, 0xac($a0)
/* 08BE74 80103404 4600303C */  c.lt.s $f6, $f0
/* 08BE78 80103408 00000000 */  nop   
/* 08BE7C 8010340C 45020004 */  bc1fl .L80103420_ovl2
/* 08BE80 80103410 C48000AC */   lwc1  $f0, 0xac($a0)
/* 08BE84 80103414 10000042 */  b     .L80103520_ovl2
/* 08BE88 80103418 00001025 */   move  $v0, $zero
/* 08BE8C 8010341C C48000AC */  lwc1  $f0, 0xac($a0)
.L80103420_ovl2:
/* 08BE90 80103420 C7AA0008 */  lwc1  $f10, 8($sp)
/* 08BE94 80103424 C7B00018 */  lwc1  $f16, 0x18($sp)
/* 08BE98 80103428 4608003C */  c.lt.s $f0, $f8
/* 08BE9C 8010342C 00000000 */  nop   
/* 08BEA0 80103430 45020008 */  bc1fl .L80103454_ovl2
/* 08BEA4 80103434 C48000A4 */   lwc1  $f0, 0xa4($a0)
/* 08BEA8 80103438 460A003C */  c.lt.s $f0, $f10
/* 08BEAC 8010343C 00000000 */  nop   
/* 08BEB0 80103440 45020004 */  bc1fl .L80103454_ovl2
/* 08BEB4 80103444 C48000A4 */   lwc1  $f0, 0xa4($a0)
/* 08BEB8 80103448 10000035 */  b     .L80103520_ovl2
/* 08BEBC 8010344C 00001025 */   move  $v0, $zero
/* 08BEC0 80103450 C48000A4 */  lwc1  $f0, 0xa4($a0)
.L80103454_ovl2:
/* 08BEC4 80103454 C7B2000C */  lwc1  $f18, 0xc($sp)
/* 08BEC8 80103458 C7A40018 */  lwc1  $f4, 0x18($sp)
/* 08BECC 8010345C 4600803C */  c.lt.s $f16, $f0
/* 08BED0 80103460 00000000 */  nop   
/* 08BED4 80103464 45020008 */  bc1fl .L80103488_ovl2
/* 08BED8 80103468 C48000B0 */   lwc1  $f0, 0xb0($a0)
/* 08BEDC 8010346C 4600903C */  c.lt.s $f18, $f0
/* 08BEE0 80103470 00000000 */  nop   
/* 08BEE4 80103474 45020004 */  bc1fl .L80103488_ovl2
/* 08BEE8 80103478 C48000B0 */   lwc1  $f0, 0xb0($a0)
/* 08BEEC 8010347C 10000028 */  b     .L80103520_ovl2
/* 08BEF0 80103480 00001025 */   move  $v0, $zero
/* 08BEF4 80103484 C48000B0 */  lwc1  $f0, 0xb0($a0)
.L80103488_ovl2:
/* 08BEF8 80103488 C7A6000C */  lwc1  $f6, 0xc($sp)
/* 08BEFC 8010348C C7A8001C */  lwc1  $f8, 0x1c($sp)
/* 08BF00 80103490 4604003C */  c.lt.s $f0, $f4
/* 08BF04 80103494 00000000 */  nop   
/* 08BF08 80103498 45020008 */  bc1fl .L801034BC_ovl2
/* 08BF0C 8010349C C48000A8 */   lwc1  $f0, 0xa8($a0)
/* 08BF10 801034A0 4606003C */  c.lt.s $f0, $f6
/* 08BF14 801034A4 00000000 */  nop   
/* 08BF18 801034A8 45020004 */  bc1fl .L801034BC_ovl2
/* 08BF1C 801034AC C48000A8 */   lwc1  $f0, 0xa8($a0)
/* 08BF20 801034B0 1000001B */  b     .L80103520_ovl2
/* 08BF24 801034B4 00001025 */   move  $v0, $zero
/* 08BF28 801034B8 C48000A8 */  lwc1  $f0, 0xa8($a0)
.L801034BC_ovl2:
/* 08BF2C 801034BC C7AA0010 */  lwc1  $f10, 0x10($sp)
/* 08BF30 801034C0 C7B0001C */  lwc1  $f16, 0x1c($sp)
/* 08BF34 801034C4 4600403C */  c.lt.s $f8, $f0
/* 08BF38 801034C8 00000000 */  nop   
/* 08BF3C 801034CC 45020008 */  bc1fl .L801034F0_ovl2
/* 08BF40 801034D0 C48000B4 */   lwc1  $f0, 0xb4($a0)
/* 08BF44 801034D4 4600503C */  c.lt.s $f10, $f0
/* 08BF48 801034D8 00000000 */  nop   
/* 08BF4C 801034DC 45020004 */  bc1fl .L801034F0_ovl2
/* 08BF50 801034E0 C48000B4 */   lwc1  $f0, 0xb4($a0)
/* 08BF54 801034E4 1000000E */  b     .L80103520_ovl2
/* 08BF58 801034E8 00001025 */   move  $v0, $zero
/* 08BF5C 801034EC C48000B4 */  lwc1  $f0, 0xb4($a0)
.L801034F0_ovl2:
/* 08BF60 801034F0 C7B20010 */  lwc1  $f18, 0x10($sp)
/* 08BF64 801034F4 24020001 */  li    $v0, 1
/* 08BF68 801034F8 4610003C */  c.lt.s $f0, $f16
/* 08BF6C 801034FC 00000000 */  nop   
/* 08BF70 80103500 45000007 */  bc1f  .L80103520_ovl2
/* 08BF74 80103504 00000000 */   nop   
/* 08BF78 80103508 4612003C */  c.lt.s $f0, $f18
/* 08BF7C 8010350C 00000000 */  nop   
/* 08BF80 80103510 45000003 */  bc1f  .L80103520_ovl2
/* 08BF84 80103514 00000000 */   nop   
/* 08BF88 80103518 10000001 */  b     .L80103520_ovl2
/* 08BF8C 8010351C 00001025 */   move  $v0, $zero
.L80103520_ovl2:
/* 08BF90 80103520 03E00008 */  jr    $ra
/* 08BF94 80103524 27BD0020 */   addiu $sp, $sp, 0x20
