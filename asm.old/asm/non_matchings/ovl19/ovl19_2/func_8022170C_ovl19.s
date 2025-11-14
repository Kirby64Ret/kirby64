glabel func_8022170C_ovl19
/* 241E1C 8022170C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 241E20 80221710 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 241E24 80221714 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 241E28 80221718 AFBF0014 */  sw    $ra, 0x14($sp)
/* 241E2C 8022171C AFA40018 */  sw    $a0, 0x18($sp)
/* 241E30 80221720 8DCF0000 */  lw    $t7, ($t6)
/* 241E34 80221724 3C04800E */ lui $a0, %hi(D_800E7880)
/* 241E38 80221728 3C068023 */  lui   $a2, %hi(D_8022F13C) # $a2, 0x8023
/* 241E3C 8022172C 008F2021 */  addu  $a0, $a0, $t7
/* 241E40 80221730 90847880 */ lbu $a0, %lo(D_800E7880)($a0)
/* 241E44 80221734 24C6F13C */  addiu $a2, %lo(D_8022F13C) # addiu $a2, $a2, -0xec4
/* 241E48 80221738 0C02911F */  jal   call_virtual_function
/* 241E4C 8022173C 24050002 */   li    $a1, 2
/* 241E50 80221740 8FBF0014 */  lw    $ra, 0x14($sp)
/* 241E54 80221744 27BD0018 */  addiu $sp, $sp, 0x18
/* 241E58 80221748 03E00008 */  jr    $ra
/* 241E5C 8022174C 00000000 */   nop   
.type func_8022170C_ovl19, @function
.size func_8022170C_ovl19, . - func_8022170C_ovl19
