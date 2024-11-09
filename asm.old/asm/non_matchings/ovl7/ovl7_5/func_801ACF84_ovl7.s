glabel func_801ACF84_ovl7
/* 152FF4 801ACF84 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 152FF8 801ACF88 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 152FFC 801ACF8C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 153000 801ACF90 AFBF0014 */  sw    $ra, 0x14($sp)
/* 153004 801ACF94 8DCF0000 */  lw    $t7, ($t6)
/* 153008 801ACF98 3C02800E */ lui $v0, %hi(D_800E1B50)
/* 15300C 801ACF9C 24190001 */  li    $t9, 1
/* 153010 801ACFA0 000FC080 */  sll   $t8, $t7, 2
/* 153014 801ACFA4 00581021 */  addu  $v0, $v0, $t8
/* 153018 801ACFA8 8C421B50 */ lw $v0, %lo(D_800E1B50)($v0)
/* 15301C 801ACFAC 0C068FA0 */  jal   func_801A3E80
/* 153020 801ACFB0 A0590043 */   sb    $t9, 0x43($v0)
/* 153024 801ACFB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 153028 801ACFB8 27BD0018 */  addiu $sp, $sp, 0x18
/* 15302C 801ACFBC 03E00008 */  jr    $ra
/* 153030 801ACFC0 00000000 */   nop   
/* 153034 801ACFC4 00000000 */  nop   
/* 153038 801ACFC8 00000000 */  nop   
.type func_801ACF84_ovl7, @function
.size func_801ACF84_ovl7, . - func_801ACF84_ovl7

