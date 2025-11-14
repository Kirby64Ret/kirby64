glabel play_sound
/* 04F8C8 800A7678 3C019999 */  lui   $at, (0x99999999 >> 16) # lui $at, 0x9999
/* 04F8CC 800A767C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04F8D0 800A7680 34219999 */  ori   $at, (0x99999999 & 0xFFFF) # ori $at, $at, 0x9999
/* 04F8D4 800A7684 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04F8D8 800A7688 14810006 */  bne   $a0, $at, .L800A76A4_ovl1
/* 04F8DC 800A768C 00802825 */   move  $a1, $a0
/* 04F8E0 800A7690 3C04800D */  lui   $a0, %hi(D_800D5CE0) # $a0, 0x800d
/* 04F8E4 800A7694 0C02909C */  jal   print_error_stub
/* 04F8E8 800A7698 24845CE0 */   addiu $a0, %lo(D_800D5CE0) # addiu $a0, $a0, 0x5ce0
/* 04F8EC 800A769C 10000016 */  b     .L800A76F8_ovl1
/* 04F8F0 800A76A0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800A76A4_ovl1:
/* 04F8F4 800A76A4 00057000 */  sll   $t6, $a1, 0
/* 04F8F8 800A76A8 05C10006 */  bgez  $t6, .L800A76C4_ovl1
/* 04F8FC 800A76AC 00057840 */   sll   $t7, $a1, 1
/* 04F900 800A76B0 3C04800D */  lui   $a0, %hi(D_800D5CF8) # $a0, 0x800d
/* 04F904 800A76B4 0C02909C */  jal   print_error_stub
/* 04F908 800A76B8 24845CF8 */   addiu $a0, %lo(D_800D5CF8) # addiu $a0, $a0, 0x5cf8
/* 04F90C 800A76BC 1000000E */  b     .L800A76F8_ovl1
/* 04F910 800A76C0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800A76C4_ovl1:
/* 04F914 800A76C4 3C02800C */ lui $v0, %hi(D_800C0040)
/* 04F918 800A76C8 004F1021 */  addu  $v0, $v0, $t7
/* 04F91C 800A76CC 84420040 */ lh $v0, %lo(D_800C0040)($v0)
/* 04F920 800A76D0 3C04800D */  lui   $a0, %hi(D_800D5D14) # $a0, 0x800d
/* 04F924 800A76D4 04400005 */  bltz  $v0, .L800A76EC_ovl1
/* 04F928 800A76D8 00000000 */   nop   
/* 04F92C 800A76DC 0C008F2C */  jal   func_80023CB0_ovl1
/* 04F930 800A76E0 3044FFFF */   andi  $a0, $v0, 0xffff
/* 04F934 800A76E4 10000004 */  b     .L800A76F8_ovl1
/* 04F938 800A76E8 8FBF0014 */   lw    $ra, 0x14($sp)
.L800A76EC_ovl1:
/* 04F93C 800A76EC 0C02909C */  jal   print_error_stub
/* 04F940 800A76F0 24845D14 */   addiu $a0, %lo(D_800D5D14) # addiu $a0, $a0, 0x5d14
/* 04F944 800A76F4 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A76F8_ovl1:
/* 04F948 800A76F8 27BD0018 */  addiu $sp, $sp, 0x18
/* 04F94C 800A76FC 03E00008 */  jr    $ra
/* 04F950 800A7700 00000000 */   nop   
.size play_sound, . - play_sound
