glabel func_800FF5E0_ovl2
/* 088050 800FF5E0 3C0F8013 */  lui   $t7, %hi(D_8012BBF8) # $t7, 0x8013
/* 088054 800FF5E4 25EFBBF8 */  addiu $t7, %lo(D_8012BBF8) # addiu $t7, $t7, -0x4408
/* 088058 800FF5E8 00047100 */  sll   $t6, $a0, 4
/* 08805C 800FF5EC 01CF1021 */  addu  $v0, $t6, $t7
/* 088060 800FF5F0 44866000 */  mtc1  $a2, $f12
/* 088064 800FF5F4 C4440004 */  lwc1  $f4, 4($v0)
/* 088068 800FF5F8 8C430000 */  lw    $v1, ($v0)
/* 08806C 800FF5FC 44857000 */  mtc1  $a1, $f14
/* 088070 800FF600 460C2180 */  add.s $f6, $f4, $f12
/* 088074 800FF604 0004C080 */  sll   $t8, $a0, 2
/* 088078 800FF608 0304C023 */  subu  $t8, $t8, $a0
/* 08807C 800FF60C 3C198013 */  lui   $t9, %hi(D_8012B9B8) # $t9, 0x8013
/* 088080 800FF610 E4460004 */  swc1  $f6, 4($v0)
/* 088084 800FF614 C4680020 */  lwc1  $f8, 0x20($v1)
/* 088088 800FF618 C4700024 */  lwc1  $f16, 0x24($v1)
/* 08808C 800FF61C 2739B9B8 */  addiu $t9, %lo(D_8012B9B8) # addiu $t9, $t9, -0x4648
/* 088090 800FF620 460E4280 */  add.s $f10, $f8, $f14
/* 088094 800FF624 0018C100 */  sll   $t8, $t8, 4
/* 088098 800FF628 03192821 */  addu  $a1, $t8, $t9
/* 08809C 800FF62C 460C8480 */  add.s $f18, $f16, $f12
/* 0880A0 800FF630 E46A0020 */  swc1  $f10, 0x20($v1)
/* 0880A4 800FF634 E4720024 */  swc1  $f18, 0x24($v1)
/* 0880A8 800FF638 C4A40010 */  lwc1  $f4, 0x10($a1)
/* 0880AC 800FF63C E4640028 */  swc1  $f4, 0x28($v1)
/* 0880B0 800FF640 C4A60014 */  lwc1  $f6, 0x14($a1)
/* 0880B4 800FF644 03E00008 */  jr    $ra
/* 0880B8 800FF648 E466002C */   swc1  $f6, 0x2c($v1)
