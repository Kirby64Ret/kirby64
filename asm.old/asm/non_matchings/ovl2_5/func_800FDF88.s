glabel func_800FDF88
/* 0869F8 800FDF88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0869FC 800FDF8C AFBF0014 */  sw    $ra, 0x14($sp)
/* 086A00 800FDF90 AFA40018 */  sw    $a0, 0x18($sp)
/* 086A04 800FDF94 AFA60020 */  sw    $a2, 0x20($sp)
/* 086A08 800FDF98 00A03825 */  move  $a3, $a1
/* 086A0C 800FDF9C 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 086A10 800FDFA0 44813000 */  mtc1  $at, $f6
/* 086A14 800FDFA4 C4E40010 */  lwc1  $f4, 0x10($a3)
/* 086A18 800FDFA8 00802825 */  move  $a1, $a0
/* 086A1C 800FDFAC 46062003 */  div.s $f0, $f4, $f6
/* 086A20 800FDFB0 E4800048 */  swc1  $f0, 0x48($a0)
/* 086A24 800FDFB4 E4800040 */  swc1  $f0, 0x40($a0)
/* 086A28 800FDFB8 C4E80004 */  lwc1  $f8, 4($a3)
/* 086A2C 800FDFBC E488001C */  swc1  $f8, 0x1c($a0)
/* 086A30 800FDFC0 C4EA000C */  lwc1  $f10, 0xc($a3)
/* 086A34 800FDFC4 E48A0024 */  swc1  $f10, 0x24($a0)
/* 086A38 800FDFC8 C4F0001C */  lwc1  $f16, 0x1c($a3)
/* 086A3C 800FDFCC E4900034 */  swc1  $f16, 0x34($a0)
/* 086A40 800FDFD0 3C048005 */  lui   $a0, %hi(gDisplayListHeads) # $a0, 0x8005
/* 086A44 800FDFD4 0C004460 */  jal   func_80011180_ovl2
/* 086A48 800FDFD8 2484A3D0 */   addiu $a0, %lo(gDisplayListHeads) # addiu $a0, $a0, -0x5c30
/* 086A4C 800FDFDC 8FAE0020 */  lw    $t6, 0x20($sp)
/* 086A50 800FDFE0 ADC20000 */  sw    $v0, ($t6)
/* 086A54 800FDFE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 086A58 800FDFE8 27BD0018 */  addiu $sp, $sp, 0x18
/* 086A5C 800FDFEC 03E00008 */  jr    $ra
/* 086A60 800FDFF0 00000000 */   nop   
.type func_800FDF88, @function
.size func_800FDF88, . - func_800FDF88
