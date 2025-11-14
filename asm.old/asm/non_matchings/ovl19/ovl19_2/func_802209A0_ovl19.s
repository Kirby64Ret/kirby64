glabel func_802209A0_ovl19
/* 2410B0 802209A0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 2410B4 802209A4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 2410B8 802209A8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 2410BC 802209AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 2410C0 802209B0 AFA40018 */  sw    $a0, 0x18($sp)
/* 2410C4 802209B4 8DCF0000 */  lw    $t7, ($t6)
/* 2410C8 802209B8 3C04800E */ lui $a0, %hi(D_800E7880)
/* 2410CC 802209BC 3C068023 */  lui   $a2, %hi(D_8022F0D8) # $a2, 0x8023
/* 2410D0 802209C0 008F2021 */  addu  $a0, $a0, $t7
/* 2410D4 802209C4 90847880 */ lbu $a0, %lo(D_800E7880)($a0)
/* 2410D8 802209C8 24C6F0D8 */  addiu $a2, %lo(D_8022F0D8) # addiu $a2, $a2, -0xf28
/* 2410DC 802209CC 0C02911F */  jal   call_virtual_function
/* 2410E0 802209D0 24050004 */   li    $a1, 4
/* 2410E4 802209D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2410E8 802209D8 27BD0018 */  addiu $sp, $sp, 0x18
/* 2410EC 802209DC 03E00008 */  jr    $ra
/* 2410F0 802209E0 00000000 */   nop   
.type func_802209A0_ovl19, @function
.size func_802209A0_ovl19, . - func_802209A0_ovl19
