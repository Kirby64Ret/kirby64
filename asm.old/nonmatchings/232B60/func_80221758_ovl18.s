glabel func_80221758_ovl18
/* 2340F8 80221758 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 2340FC 8022175C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 234100 80221760 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 234104 80221764 AFBF0014 */  sw         $ra, 0x14($sp)
/* 234108 80221768 AFA40018 */  sw         $a0, 0x18($sp)
/* 23410C 8022176C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 234110 80221770 3C04800E */  lui        $a0, %hi(gEntityVtableIndexArray)
/* 234114 80221774 3C068023 */  lui        $a2, %hi(D_8022ABB0_ovl18)
/* 234118 80221778 000FC080 */  sll        $t8, $t7, 2
/* 23411C 8022177C 00982021 */  addu       $a0, $a0, $t8
/* 234120 80221780 8C84DC50 */  lw         $a0, %lo(gEntityVtableIndexArray)($a0)
/* 234124 80221784 24C6ABB0 */  addiu      $a2, $a2, %lo(D_8022ABB0_ovl18)
/* 234128 80221788 0C02911F */  jal        call_virtual_function
/* 23412C 8022178C 24050004 */   addiu     $a1, $zero, 0x4
/* 234130 80221790 8FBF0014 */  lw         $ra, 0x14($sp)
/* 234134 80221794 27BD0018 */  addiu      $sp, $sp, 0x18
/* 234138 80221798 03E00008 */  jr         $ra
/* 23413C 8022179C 00000000 */   nop
