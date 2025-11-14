glabel func_801DEA94_ovl16
/* 214D44 801DEA94 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 214D48 801DEA98 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 214D4C 801DEA9C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 214D50 801DEAA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 214D54 801DEAA4 AFA40018 */  sw    $a0, 0x18($sp)
/* 214D58 801DEAA8 8DCF0000 */  lw    $t7, ($t6)
/* 214D5C 801DEAAC 3C01800F */ lui $at, %hi(D_800E8920)
/* 214D60 801DEAB0 000FC080 */  sll   $t8, $t7, 2
/* 214D64 801DEAB4 00380821 */  addu  $at, $at, $t8
/* 214D68 801DEAB8 0C076D00 */  jal   func_801DB400_ovl16
/* 214D6C 801DEABC AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 214D70 801DEAC0 00002025 */  move  $a0, $zero
/* 214D74 801DEAC4 00002825 */  move  $a1, $zero
/* 214D78 801DEAC8 0C0770C5 */  jal   func_801DC314_ovl16
/* 214D7C 801DEACC 00003025 */   move  $a2, $zero
/* 214D80 801DEAD0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 214D84 801DEAD4 27BD0018 */  addiu $sp, $sp, 0x18
/* 214D88 801DEAD8 03E00008 */  jr    $ra
/* 214D8C 801DEADC 00000000 */   nop   
.type func_801DEA94_ovl16, @function
.size func_801DEA94_ovl16, . - func_801DEA94_ovl16
