glabel func_800FA7EC
/* 08325C 800FA7EC AFA40000 */  sw    $a0, ($sp)
/* 083260 800FA7F0 C4C4000C */  lwc1  $f4, 0xc($a2)
/* 083264 800FA7F4 C4C60010 */  lwc1  $f6, 0x10($a2)
/* 083268 800FA7F8 C4C80014 */  lwc1  $f8, 0x14($a2)
/* 08326C 800FA7FC ACC00030 */  sw    $zero, 0x30($a2)
/* 083270 800FA800 ACC00034 */  sw    $zero, 0x34($a2)
/* 083274 800FA804 ACC00038 */  sw    $zero, 0x38($a2)
/* 083278 800FA808 E4C40024 */  swc1  $f4, 0x24($a2)
/* 08327C 800FA80C E4C60028 */  swc1  $f6, 0x28($a2)
/* 083280 800FA810 E4C8002C */  swc1  $f8, 0x2c($a2)
/* 083284 800FA814 90AE0018 */  lbu   $t6, 0x18($a1)
/* 083288 800FA818 51C00015 */  beql  $t6, $zero, .L800FA870_ovl2
/* 08328C 800FA81C 90A90019 */   lbu   $t1, 0x19($a1)
/* 083290 800FA820 C4A00020 */  lwc1  $f0, 0x20($a1)
/* 083294 800FA824 C4C20024 */  lwc1  $f2, 0x24($a2)
/* 083298 800FA828 34180001 */  ori    $t8, $zero, 1
/* 08329C 800FA82C 4600103E */  c.le.s $f2, $f0
/* 0832A0 800FA830 00000000 */  nop   
/* 0832A4 800FA834 45020005 */  bc1fl .L800FA84C_ovl2
/* 0832A8 800FA838 C4A00024 */   lwc1  $f0, 0x24($a1)
/* 0832AC 800FA83C E4C00024 */  swc1  $f0, 0x24($a2)
/* 0832B0 800FA840 C4C20024 */  lwc1  $f2, 0x24($a2)
/* 0832B4 800FA844 ACD80030 */  sw    $t8, 0x30($a2)
/* 0832B8 800FA848 C4A00024 */  lwc1  $f0, 0x24($a1)
.L800FA84C_ovl2:
/* 0832BC 800FA84C 4602003E */  c.le.s $f0, $f2
/* 0832C0 800FA850 00000000 */  nop   
/* 0832C4 800FA854 45020006 */  bc1fl .L800FA870_ovl2
/* 0832C8 800FA858 90A90019 */   lbu   $t1, 0x19($a1)
/* 0832CC 800FA85C 8CD90030 */  lw    $t9, 0x30($a2)
/* 0832D0 800FA860 E4C00024 */  swc1  $f0, 0x24($a2)
/* 0832D4 800FA864 37280002 */  ori   $t0, $t9, 2
/* 0832D8 800FA868 ACC80030 */  sw    $t0, 0x30($a2)
/* 0832DC 800FA86C 90A90019 */  lbu   $t1, 0x19($a1)
.L800FA870_ovl2:
/* 0832E0 800FA870 51200016 */  beql  $t1, $zero, .L800FA8CC_ovl2
/* 0832E4 800FA874 90AE001A */   lbu   $t6, 0x1a($a1)
/* 0832E8 800FA878 C4A00028 */  lwc1  $f0, 0x28($a1)
/* 0832EC 800FA87C C4C20028 */  lwc1  $f2, 0x28($a2)
/* 0832F0 800FA880 4600103E */  c.le.s $f2, $f0
/* 0832F4 800FA884 00000000 */  nop   
/* 0832F8 800FA888 45020007 */  bc1fl .L800FA8A8_ovl2
/* 0832FC 800FA88C C4A0002C */   lwc1  $f0, 0x2c($a1)
/* 083300 800FA890 8CCA0034 */  lw    $t2, 0x34($a2)
/* 083304 800FA894 E4C00028 */  swc1  $f0, 0x28($a2)
/* 083308 800FA898 C4C20028 */  lwc1  $f2, 0x28($a2)
/* 08330C 800FA89C 354B0001 */  ori   $t3, $t2, 1
/* 083310 800FA8A0 ACCB0034 */  sw    $t3, 0x34($a2)
/* 083314 800FA8A4 C4A0002C */  lwc1  $f0, 0x2c($a1)
.L800FA8A8_ovl2:
/* 083318 800FA8A8 4602003E */  c.le.s $f0, $f2
/* 08331C 800FA8AC 00000000 */  nop   
/* 083320 800FA8B0 45020006 */  bc1fl .L800FA8CC_ovl2
/* 083324 800FA8B4 90AE001A */   lbu   $t6, 0x1a($a1)
/* 083328 800FA8B8 8CCC0034 */  lw    $t4, 0x34($a2)
/* 08332C 800FA8BC E4C00028 */  swc1  $f0, 0x28($a2)
/* 083330 800FA8C0 358D0002 */  ori   $t5, $t4, 2
/* 083334 800FA8C4 ACCD0034 */  sw    $t5, 0x34($a2)
/* 083338 800FA8C8 90AE001A */  lbu   $t6, 0x1a($a1)
.L800FA8CC_ovl2:
/* 08333C 800FA8CC 11C00015 */  beqz  $t6, .L800FA924_ovl2
/* 083340 800FA8D0 00000000 */   nop   
/* 083344 800FA8D4 C4A00030 */  lwc1  $f0, 0x30($a1)
/* 083348 800FA8D8 C4C2002C */  lwc1  $f2, 0x2c($a2)
/* 08334C 800FA8DC 4600103E */  c.le.s $f2, $f0
/* 083350 800FA8E0 00000000 */  nop   
/* 083354 800FA8E4 45020007 */  bc1fl .L800FA904_ovl2
/* 083358 800FA8E8 C4A00034 */   lwc1  $f0, 0x34($a1)
/* 08335C 800FA8EC 8CCF0038 */  lw    $t7, 0x38($a2)
/* 083360 800FA8F0 E4C0002C */  swc1  $f0, 0x2c($a2)
/* 083364 800FA8F4 C4C2002C */  lwc1  $f2, 0x2c($a2)
/* 083368 800FA8F8 35F80001 */  ori   $t8, $t7, 1
/* 08336C 800FA8FC ACD80038 */  sw    $t8, 0x38($a2)
/* 083370 800FA900 C4A00034 */  lwc1  $f0, 0x34($a1)
.L800FA904_ovl2:
/* 083374 800FA904 4602003E */  c.le.s $f0, $f2
/* 083378 800FA908 00000000 */  nop   
/* 08337C 800FA90C 45000005 */  bc1f  .L800FA924_ovl2
/* 083380 800FA910 00000000 */   nop   
/* 083384 800FA914 8CD90038 */  lw    $t9, 0x38($a2)
/* 083388 800FA918 E4C0002C */  swc1  $f0, 0x2c($a2)
/* 08338C 800FA91C 37280002 */  ori   $t0, $t9, 2
/* 083390 800FA920 ACC80038 */  sw    $t0, 0x38($a2)
.L800FA924_ovl2:
/* 083394 800FA924 03E00008 */  jr    $ra
/* 083398 800FA928 00000000 */   nop   
.type func_800FA7EC, @function
.size func_800FA7EC, . - func_800FA7EC