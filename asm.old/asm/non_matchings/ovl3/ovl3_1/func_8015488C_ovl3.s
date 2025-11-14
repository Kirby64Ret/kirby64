glabel func_8015488C_ovl3
/* 0B52CC 8015488C 00041080 */  sll   $v0, $a0, 2
/* 0B52D0 80154890 3C01800E */  lui   $at, 0x800e
/* 0B52D4 80154894 00220821 */  addu  $at, $at, $v0
/* 0B52D8 80154898 C42025D0 */  lwc1  $f0, 0x25d0($at)
/* 0B52DC 8015489C 3C01800E */  lui   $at, 0x800e
/* 0B52E0 801548A0 00220821 */  addu  $at, $at, $v0
/* 0B52E4 801548A4 E4A0000C */  swc1  $f0, 0xc($a1)
/* 0B52E8 801548A8 E4A00000 */  swc1  $f0, ($a1)
/* 0B52EC 801548AC C4202790 */  lwc1  $f0, 0x2790($at)
/* 0B52F0 801548B0 3C01800E */  lui   $at, 0x800e
/* 0B52F4 801548B4 00220821 */  addu  $at, $at, $v0
/* 0B52F8 801548B8 E4A00010 */  swc1  $f0, 0x10($a1)
/* 0B52FC 801548BC E4A00004 */  swc1  $f0, 4($a1)
/* 0B5300 801548C0 C4202950 */  lwc1  $f0, 0x2950($at)
/* 0B5304 801548C4 44802000 */  mtc1  $zero, $f4
/* 0B5308 801548C8 ACA0001C */  sw    $zero, 0x1c($a1)
/* 0B530C 801548CC E4A00014 */  swc1  $f0, 0x14($a1)
/* 0B5310 801548D0 E4A00008 */  swc1  $f0, 8($a1)
/* 0B5314 801548D4 03E00008 */  jr    $ra
/* 0B5318 801548D8 E4A40018 */   swc1  $f4, 0x18($a1)
.type func_8015488C_ovl3, @function
.size func_8015488C_ovl3, . - func_8015488C_ovl3
