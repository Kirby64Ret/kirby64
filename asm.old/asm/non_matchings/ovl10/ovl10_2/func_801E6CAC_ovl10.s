glabel func_801E6CAC_ovl10
/* 1D7A1C 801E6CAC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D7A20 801E6CB0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D7A24 801E6CB4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D7A28 801E6CB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D7A2C 801E6CBC 8DC20000 */  lw    $v0, ($t6)
/* 1D7A30 801E6CC0 3C0F800E */ lui $t7, %hi(D_800E6310)
/* 1D7A34 801E6CC4 3C03800E */ lui $v1, %hi(D_800E1B50)
/* 1D7A38 801E6CC8 00021080 */  sll   $v0, $v0, 2
/* 1D7A3C 801E6CCC 01E27821 */  addu  $t7, $t7, $v0
/* 1D7A40 801E6CD0 8DEF6310 */ lw $t7, %lo(D_800E6310)($t7)
/* 1D7A44 801E6CD4 00621821 */  addu  $v1, $v1, $v0
/* 1D7A48 801E6CD8 8C631B50 */ lw $v1, %lo(D_800E1B50)($v1)
/* 1D7A4C 801E6CDC 51E00007 */  beql  $t7, $zero, .L801E6CFC_ovl10
/* 1D7A50 801E6CE0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D7A54 801E6CE4 9078003C */  lbu   $t8, 0x3c($v1)
/* 1D7A58 801E6CE8 57000004 */  bnezl $t8, .L801E6CFC_ovl10
/* 1D7A5C 801E6CEC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D7A60 801E6CF0 0C0667C7 */  jal   func_80199F1C_ovl10
/* 1D7A64 801E6CF4 00000000 */   nop   
/* 1D7A68 801E6CF8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E6CFC_ovl10:
/* 1D7A6C 801E6CFC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D7A70 801E6D00 03E00008 */  jr    $ra
/* 1D7A74 801E6D04 00000000 */   nop   
.type func_801E6CAC_ovl10, @function
.size func_801E6CAC_ovl10, . - func_801E6CAC_ovl10
