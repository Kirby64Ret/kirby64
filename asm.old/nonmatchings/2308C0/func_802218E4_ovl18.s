glabel func_802218E4_ovl18
/* 234284 802218E4 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 234288 802218E8 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 23428C 802218EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 234290 802218F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 234294 802218F4 AFA40018 */  sw         $a0, 0x18($sp)
/* 234298 802218F8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 23429C 802218FC 3C04800E */  lui        $a0, %hi(D_800DDFD0)
/* 2342A0 80221900 3C068023 */  lui        $a2, %hi(D_8022ABC0_ovl18)
/* 2342A4 80221904 000FC080 */  sll        $t8, $t7, 2
/* 2342A8 80221908 00982021 */  addu       $a0, $a0, $t8
/* 2342AC 8022190C 8C84DFD0 */  lw         $a0, %lo(D_800DDFD0)($a0)
/* 2342B0 80221910 24C6ABC0 */  addiu      $a2, $a2, %lo(D_8022ABC0_ovl18)
/* 2342B4 80221914 0C02911F */  jal        call_virtual_function
/* 2342B8 80221918 24050004 */   addiu     $a1, $zero, 0x4
/* 2342BC 8022191C 0C087D73 */  jal        func_8021F5CC_ovl19
/* 2342C0 80221920 00000000 */   nop
/* 2342C4 80221924 8FBF0014 */  lw         $ra, 0x14($sp)
glabel func_80221928_ovl19
/* 2342C8 80221928 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2342CC 8022192C 03E00008 */  jr         $ra
/* 2342D0 80221930 00000000 */   nop
