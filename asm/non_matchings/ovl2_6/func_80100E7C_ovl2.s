glabel func_80100E7C
/* 0898EC 80100E7C 44802000 */  mtc1  $zero, $f4
/* 0898F0 80100E80 3C018013 */  lui   $at, 0x8013
/* 0898F4 80100E84 460C203E */  c.le.s $f4, $f12
/* 0898F8 80100E88 00000000 */  nop   
/* 0898FC 80100E8C 4500000B */  bc1f  .L80100EBC_ovl2
/* 089900 80100E90 00000000 */   nop   
/* 089904 80100E94 3C018013 */  lui   $at, %hi(D_80128A2C) # $at, 0x8013
/* 089908 80100E98 C4268A2C */  lwc1  $f6, %lo(D_80128A2C)($at)
/* 08990C 80100E9C 4606603E */  c.le.s $f12, $f6
/* 089910 80100EA0 00000000 */  nop   
/* 089914 80100EA4 45000003 */  bc1f  .L80100EB4_ovl2
/* 089918 80100EA8 00000000 */   nop   
/* 08991C 80100EAC 03E00008 */  jr    $ra
/* 089920 80100EB0 00001025 */   move  $v0, $zero

.L80100EB4_ovl2:
/* 089924 80100EB4 03E00008 */  jr    $ra
/* 089928 80100EB8 24020001 */   li    $v0, 1

.L80100EBC_ovl2:
/* 08992C 80100EBC C4288A30 */  lwc1  $f8, -0x75d0($at)
/* 089930 80100EC0 24020002 */  li    $v0, 2
/* 089934 80100EC4 460C403E */  c.le.s $f8, $f12
/* 089938 80100EC8 00000000 */  nop   
/* 08993C 80100ECC 45000003 */  bc1f  .L80100EDC_ovl2
/* 089940 80100ED0 00000000 */   nop   
/* 089944 80100ED4 03E00008 */  jr    $ra
/* 089948 80100ED8 24020003 */   li    $v0, 3

.L80100EDC_ovl2:
/* 08994C 80100EDC 03E00008 */  jr    $ra
/* 089950 80100EE0 00000000 */   nop   
