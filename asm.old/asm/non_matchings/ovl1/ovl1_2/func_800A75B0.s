glabel play_music
/* 04F800 800A75B0 3C03800D */  lui   $v1, %hi(D_800D6B44) # $v1, 0x800d
/* 04F804 800A75B4 24636B44 */  addiu $v1, %lo(D_800D6B44) # addiu $v1, $v1, 0x6b44
/* 04F808 800A75B8 8C6E0000 */  lw    $t6, ($v1)
/* 04F80C 800A75BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04F810 800A75C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04F814 800A75C4 14AE0003 */  bne   $a1, $t6, .L800A75D4_ovl1
/* 04F818 800A75C8 3C019999 */   lui   $at, (0x99999999 >> 16) # lui $at, 0x9999
/* 04F81C 800A75CC 10000026 */  b     .L800A7668_ovl1
/* 04F820 800A75D0 00001025 */   move  $v0, $zero
.L800A75D4_ovl1:
/* 04F824 800A75D4 34219999 */  ori   $at, (0x99999999 & 0xFFFF) # ori $at, $at, 0x9999
/* 04F828 800A75D8 54A10009 */  bnel  $a1, $at, .L800A7600_ovl1
/* 04F82C 800A75DC 3C018000 */   lui   $at, 0x8000
/* 04F830 800A75E0 0C008235 */  jal   func_800208D4_ovl1
/* 04F834 800A75E4 AFA5001C */   sw    $a1, 0x1c($sp)
/* 04F838 800A75E8 8FA5001C */  lw    $a1, 0x1c($sp)
/* 04F83C 800A75EC 3C03800D */  lui   $v1, %hi(D_800D6B44) # $v1, 0x800d
/* 04F840 800A75F0 24636B44 */  addiu $v1, %lo(D_800D6B44) # addiu $v1, $v1, 0x6b44
/* 04F844 800A75F4 1000001B */  b     .L800A7664_ovl1
/* 04F848 800A75F8 AC650000 */   sw    $a1, ($v1)
/* 04F84C 800A75FC 3C018000 */  lui   $at, 0x8000
.L800A7600_ovl1:
/* 04F850 800A7600 14A10008 */  bne   $a1, $at, .L800A7624_ovl1
/* 04F854 800A7604 00057840 */   sll   $t7, $a1, 1
/* 04F858 800A7608 0C00825A */  jal   func_80020968_ovl1
/* 04F85C 800A760C AFA5001C */   sw    $a1, 0x1c($sp)
/* 04F860 800A7610 8FA5001C */  lw    $a1, 0x1c($sp)
/* 04F864 800A7614 3C03800D */  lui   $v1, %hi(D_800D6B44) # $v1, 0x800d
/* 04F868 800A7618 24636B44 */  addiu $v1, %lo(D_800D6B44) # addiu $v1, $v1, 0x6b44
/* 04F86C 800A761C 10000011 */  b     .L800A7664_ovl1
/* 04F870 800A7620 AC650000 */   sw    $a1, ($v1)
.L800A7624_ovl1:
/* 04F874 800A7624 3C02800C */ lui $v0, %hi(D_800BFFC0)
/* 04F878 800A7628 AC650000 */  sw    $a1, ($v1)
/* 04F87C 800A762C 004F1021 */  addu  $v0, $v0, $t7
/* 04F880 800A7630 8442FFC0 */ lh $v0, %lo(D_800BFFC0)($v0)
/* 04F884 800A7634 04400005 */  bltz  $v0, .L800A764C_ovl1
/* 04F888 800A7638 00000000 */   nop   
/* 04F88C 800A763C 0C008245 */  jal   func_80020914_ovl1
/* 04F890 800A7640 00402825 */   move  $a1, $v0
/* 04F894 800A7644 10000009 */  b     .L800A766C_ovl1
/* 04F898 800A7648 8FBF0014 */   lw    $ra, 0x14($sp)
.L800A764C_ovl1:
/* 04F89C 800A764C 14A00003 */  bnez  $a1, .L800A765C_ovl1
/* 04F8A0 800A7650 3C04800D */   lui   $a0, %hi(D_800D5CC0) # $a0, 0x800d
/* 04F8A4 800A7654 10000004 */  b     .L800A7668_ovl1
/* 04F8A8 800A7658 00001025 */   move  $v0, $zero
.L800A765C_ovl1:
/* 04F8AC 800A765C 0C02909C */  jal   print_error_stub
/* 04F8B0 800A7660 24845CC0 */   addiu $a0, %lo(D_800D5CC0) # addiu $a0, $a0, 0x5cc0
.L800A7664_ovl1:
/* 04F8B4 800A7664 00001025 */  move  $v0, $zero
.L800A7668_ovl1:
/* 04F8B8 800A7668 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A766C_ovl1:
/* 04F8BC 800A766C 27BD0018 */  addiu $sp, $sp, 0x18
/* 04F8C0 800A7670 03E00008 */  jr    $ra
/* 04F8C4 800A7674 00000000 */   nop   
.size play_music, . - play_music
