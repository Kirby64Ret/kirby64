glabel func_801EC37C_ovl10
/* 1DD0EC 801EC37C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DD0F0 801EC380 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DD0F4 801EC384 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DD0F8 801EC388 3C04801F */  lui   $a0, %hi(D_801EC3C8) # $a0, 0x801f
/* 1DD0FC 801EC38C 0C068354 */  jal   func_801A0D50
/* 1DD100 801EC390 2484C3C8 */   addiu $a0, %lo(D_801EC3C8) # addiu $a0, $a0, -0x3c38
/* 1DD104 801EC394 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1DD108 801EC398 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1DD10C 801EC39C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DD110 801EC3A0 8FA40018 */  lw    $a0, 0x18($sp)
/* 1DD114 801EC3A4 8DCF0000 */  lw    $t7, ($t6)
/* 1DD118 801EC3A8 000FC080 */  sll   $t8, $t7, 2
/* 1DD11C 801EC3AC 00380821 */  addu  $at, $at, $t8
/* 1DD120 801EC3B0 0C07B0F2 */  jal   D_801EC3C8_ovl10
/* 1DD124 801EC3B4 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 1DD128 801EC3B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DD12C 801EC3BC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DD130 801EC3C0 03E00008 */  jr    $ra
/* 1DD134 801EC3C4 00000000 */   nop   
.type func_801EC37C_ovl10, @function
.size func_801EC37C_ovl10, . - func_801EC37C_ovl10
