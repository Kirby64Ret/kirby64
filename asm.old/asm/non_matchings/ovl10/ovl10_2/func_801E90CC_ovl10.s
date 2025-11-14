glabel func_801E90CC_ovl10
/* 1D9E3C 801E90CC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D9E40 801E90D0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D9E44 801E90D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D9E48 801E90D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D9E4C 801E90DC 8DC20000 */  lw    $v0, ($t6)
/* 1D9E50 801E90E0 3C0F800E */ lui $t7, %hi(D_800E6310)
/* 1D9E54 801E90E4 3C03800E */ lui $v1, %hi(D_800E1B50)
/* 1D9E58 801E90E8 00021080 */  sll   $v0, $v0, 2
/* 1D9E5C 801E90EC 01E27821 */  addu  $t7, $t7, $v0
/* 1D9E60 801E90F0 8DEF6310 */ lw $t7, %lo(D_800E6310)($t7)
/* 1D9E64 801E90F4 00621821 */  addu  $v1, $v1, $v0
/* 1D9E68 801E90F8 8C631B50 */ lw $v1, %lo(D_800E1B50)($v1)
/* 1D9E6C 801E90FC 51E00007 */  beql  $t7, $zero, .L801E911C_ovl10
/* 1D9E70 801E9100 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D9E74 801E9104 9078003C */  lbu   $t8, 0x3c($v1)
/* 1D9E78 801E9108 57000004 */  bnezl $t8, .L801E911C_ovl10
/* 1D9E7C 801E910C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D9E80 801E9110 0C0667C7 */  jal   func_80199F1C_ovl10
/* 1D9E84 801E9114 00000000 */   nop   
/* 1D9E88 801E9118 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E911C_ovl10:
/* 1D9E8C 801E911C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D9E90 801E9120 03E00008 */  jr    $ra
/* 1D9E94 801E9124 00000000 */   nop   
.type func_801E90CC_ovl10, @function
.size func_801E90CC_ovl10, . - func_801E90CC_ovl10
