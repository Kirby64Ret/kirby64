glabel func_801E8988_ovl10
/* 1D96F8 801E8988 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D96FC 801E898C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D9700 801E8990 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D9704 801E8994 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D9708 801E8998 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D970C 801E899C 8DCF0000 */  lw    $t7, ($t6)
/* 1D9710 801E89A0 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1D9714 801E89A4 3C06801F */  lui   $a2, %hi(D_801F4570_ovl10) # $a2, 0x801f
/* 1D9718 801E89A8 000FC080 */  sll   $t8, $t7, 2
/* 1D971C 801E89AC 00982021 */  addu  $a0, $a0, $t8
/* 1D9720 801E89B0 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1D9724 801E89B4 24C64570 */  addiu $a2, %lo(D_801F4570_ovl10) # addiu $a2, $a2, 0x4570
/* 1D9728 801E89B8 0C02911F */  jal   call_virtual_function
/* 1D972C 801E89BC 24050003 */   li    $a1, 3
/* 1D9730 801E89C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D9734 801E89C4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D9738 801E89C8 03E00008 */  jr    $ra
/* 1D973C 801E89CC 00000000 */   nop   
.type func_801E8988_ovl10, @function
.size func_801E8988_ovl10, . - func_801E8988_ovl10
