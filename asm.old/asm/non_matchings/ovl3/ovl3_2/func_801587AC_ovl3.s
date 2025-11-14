glabel func_801587AC_ovl3
/* 0B91EC 801587AC 44802000 */  mtc1  $zero, $f4
/* 0B91F0 801587B0 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0B91F4 801587B4 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0B91F8 801587B8 240E0002 */  li    $t6, 2
/* 0B91FC 801587BC AC4E003C */  sw    $t6, 0x3c($v0)
/* 0B9200 801587C0 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0B9204 801587C4 E4440040 */  swc1  $f4, 0x40($v0)
/* 0B9208 801587C8 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0B920C 801587CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B9210 801587D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B9214 801587D4 8F190000 */  lw    $t9, ($t8)
/* 0B9218 801587D8 3C01800E */  lui   $at, 0x800e
/* 0B921C 801587DC 240F0052 */  li    $t7, 82
/* 0B9220 801587E0 00194080 */  sll   $t0, $t9, 2
/* 0B9224 801587E4 00280821 */  addu  $at, $at, $t0
/* 0B9228 801587E8 3C058015 */  lui   $a1, %hi(D_80157F18) # $a1, 0x8015
/* 0B922C 801587EC AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 0B9230 801587F0 24A57F18 */  addiu $a1, %lo(D_80157F18) # addiu $a1, $a1, 0x7f18
/* 0B9234 801587F4 0C056053 */  jal   func_8015814C_ovl3
/* 0B9238 801587F8 3C063F80 */   lui   $a2, 0x3f80
/* 0B923C 801587FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B9240 80158800 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B9244 80158804 03E00008 */  jr    $ra
/* 0B9248 80158808 00000000 */   nop   
.type func_801587AC_ovl3, @function
.size func_801587AC_ovl3, . - func_801587AC_ovl3
