glabel func_801DDEC0_ovl11
/* 1E8780 801DDEC0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1E8784 801DDEC4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1E8788 801DDEC8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E878C 801DDECC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E8790 801DDED0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E8794 801DDED4 8DCF0000 */  lw    $t7, ($t6)
/* 1E8798 801DDED8 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1E879C 801DDEDC 3C06801E */  lui   $a2, %hi(D_801E0B9C) # $a2, 0x801e
/* 1E87A0 801DDEE0 000FC080 */  sll   $t8, $t7, 2
/* 1E87A4 801DDEE4 00982021 */  addu  $a0, $a0, $t8
/* 1E87A8 801DDEE8 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1E87AC 801DDEEC 24C60B9C */  addiu $a2, %lo(D_801E0B9C) # addiu $a2, $a2, 0xb9c
/* 1E87B0 801DDEF0 0C02911F */  jal   call_virtual_function
/* 1E87B4 801DDEF4 24050005 */   li    $a1, 5
/* 1E87B8 801DDEF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E87BC 801DDEFC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E87C0 801DDF00 03E00008 */  jr    $ra
/* 1E87C4 801DDF04 00000000 */   nop   
.type func_801DDEC0_ovl11, @function
.size func_801DDEC0_ovl11, . - func_801DDEC0_ovl11
