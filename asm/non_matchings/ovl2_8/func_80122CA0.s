glabel func_80122CA0
/* 0AB710 80122CA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0AB714 80122CA4 44866000 */  mtc1  $a2, $f12
/* 0AB718 80122CA8 24010002 */  li    $at, 2
/* 0AB71C 80122CAC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AB720 80122CB0 14A10009 */  bne   $a1, $at, .L80122CD8_ovl2
/* 0AB724 80122CB4 AFA40018 */   sw    $a0, 0x18($sp)
/* 0AB728 80122CB8 44802000 */  mtc1  $zero, $f4
/* 0AB72C 80122CBC 00000000 */  nop   
/* 0AB730 80122CC0 46046032 */  c.eq.s $f12, $f4
/* 0AB734 80122CC4 00000000 */  nop   
/* 0AB738 80122CC8 45030004 */  bc1tl .L80122CDC_ovl2
/* 0AB73C 80122CCC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AB740 80122CD0 0C048B3A */  jal   func_80122CE8
/* 0AB744 80122CD4 00000000 */   nop   
.L80122CD8_ovl2:
/* 0AB748 80122CD8 8FBF0014 */  lw    $ra, 0x14($sp)
.L80122CDC_ovl2:
/* 0AB74C 80122CDC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0AB750 80122CE0 03E00008 */  jr    $ra
/* 0AB754 80122CE4 00000000 */   nop   
