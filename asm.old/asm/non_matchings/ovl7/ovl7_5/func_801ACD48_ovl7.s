glabel func_801ACD48_ovl7
/* 152DB8 801ACD48 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 152DBC 801ACD4C AFBF0014 */  sw    $ra, 0x14($sp)
/* 152DC0 801ACD50 0C06B30D */  jal   func_801ACC34_ovl7
/* 152DC4 801ACD54 00000000 */   nop   
/* 152DC8 801ACD58 14400003 */  bnez  $v0, .L801ACD68_ovl7
/* 152DCC 801ACD5C 00401825 */   move  $v1, $v0
/* 152DD0 801ACD60 10000007 */  b     .L801ACD80_ovl7
/* 152DD4 801ACD64 00001025 */   move  $v0, $zero
.L801ACD68_ovl7:
/* 152DD8 801ACD68 00037880 */  sll   $t7, $v1, 2
/* 152DDC 801ACD6C 3C01800F */ lui $at, %hi(D_800E8E60)
/* 152DE0 801ACD70 002F0821 */  addu  $at, $at, $t7
/* 152DE4 801ACD74 240E0001 */  li    $t6, 1
/* 152DE8 801ACD78 AC2E8E60 */ sw $t6, %lo(D_800E8E60)($at)
/* 152DEC 801ACD7C 00601025 */  move  $v0, $v1
.L801ACD80_ovl7:
/* 152DF0 801ACD80 8FBF0014 */  lw    $ra, 0x14($sp)
/* 152DF4 801ACD84 27BD0018 */  addiu $sp, $sp, 0x18
/* 152DF8 801ACD88 03E00008 */  jr    $ra
/* 152DFC 801ACD8C 00000000 */   nop   
.type func_801ACD48_ovl7, @function
.size func_801ACD48_ovl7, . - func_801ACD48_ovl7
