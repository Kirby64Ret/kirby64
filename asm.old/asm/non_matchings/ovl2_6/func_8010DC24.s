glabel func_8010DC24
/* 096694 8010DC24 1080000B */  beqz  $a0, .L8010DC54_ovl2
/* 096698 8010DC28 00001025 */   move  $v0, $zero
/* 09669C 8010DC2C 948E0012 */  lhu   $t6, 0x12($a0)
/* 0966A0 8010DC30 24010006 */  li    $at, 6
/* 0966A4 8010DC34 15C10007 */  bne   $t6, $at, .L8010DC54_ovl2
/* 0966A8 8010DC38 00000000 */   nop   
/* 0966AC 8010DC3C 948F000E */  lhu   $t7, 0xe($a0)
/* 0966B0 8010DC40 3C028012 */  lui   $v0, 0x8012
/* 0966B4 8010DC44 000FC080 */  sll   $t8, $t7, 2
/* 0966B8 8010DC48 00581021 */  addu  $v0, $v0, $t8
/* 0966BC 8010DC4C 03E00008 */  jr    $ra
/* 0966C0 8010DC50 94424770 */   lhu   $v0, 0x4770($v0)
.type func_8010DC24, @function

.L8010DC54_ovl2:
/* 0966C4 8010DC54 03E00008 */  jr    $ra
/* 0966C8 8010DC58 00000000 */   nop   
.type func_8010DC24, @function
.size func_8010DC24, . - func_8010DC24
