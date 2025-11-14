glabel func_80121F14
/* 0AA984 80121F14 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0AA988 80121F18 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0AA98C 80121F1C 90620009 */  lbu   $v0, 9($v1)
/* 0AA990 80121F20 24180258 */  li    $t8, 600
/* 0AA994 80121F24 304E0001 */  andi  $t6, $v0, 1
/* 0AA998 80121F28 15C00003 */  bnez  $t6, .L80121F38_ovl2
/* 0AA99C 80121F2C 344F0001 */   ori   $t7, $v0, 1
/* 0AA9A0 80121F30 10000002 */  b     .L80121F3C_ovl2
/* 0AA9A4 80121F34 A06F0009 */   sb    $t7, 9($v1)
.L80121F38_ovl2:
/* 0AA9A8 80121F38 A478006A */  sh    $t8, 0x6a($v1)
.L80121F3C_ovl2:
/* 0AA9AC 80121F3C 8C79008C */  lw    $t9, 0x8c($v1)
/* 0AA9B0 80121F40 2401FFFE */  li    $at, -2
/* 0AA9B4 80121F44 03214024 */  and   $t0, $t9, $at
/* 0AA9B8 80121F48 03E00008 */  jr    $ra
/* 0AA9BC 80121F4C AC68008C */   sw    $t0, 0x8c($v1)
.type func_80121F14, @function
.size func_80121F14, . - func_80121F14
