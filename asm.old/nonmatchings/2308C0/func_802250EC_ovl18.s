glabel func_802250EC_ovl18
/* 237A8C 802250EC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 237A90 802250F0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 237A94 802250F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 237A98 802250F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 237A9C 802250FC AFA40018 */  sw         $a0, 0x18($sp)
/* 237AA0 80225100 8C4F0000 */  lw         $t7, 0x0($v0)
/* 237AA4 80225104 3C0E800B */  lui        $t6, %hi(func_800B7138)
/* 237AA8 80225108 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 237AAC 8022510C 000FC080 */  sll        $t8, $t7, 2
/* 237AB0 80225110 00380821 */  addu       $at, $at, $t8
/* 237AB4 80225114 25CE7138 */  addiu      $t6, $t6, %lo(func_800B7138)
/* 237AB8 80225118 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 237ABC 8022511C 8C590000 */  lw         $t9, 0x0($v0)
/* 237AC0 80225120 3C04800E */  lui        $a0, %hi(D_800E7880)
/* 237AC4 80225124 3C068023 */  lui        $a2, %hi(D_8022AC98_ovl18)
/* 237AC8 80225128 00992021 */  addu       $a0, $a0, $t9
/* 237ACC 8022512C 90847880 */  lbu        $a0, %lo(D_800E7880)($a0)
/* 237AD0 80225130 24C6AC98 */  addiu      $a2, $a2, %lo(D_8022AC98_ovl18)
/* 237AD4 80225134 0C02911F */  jal        call_virtual_function
/* 237AD8 80225138 24050001 */   addiu     $a1, $zero, 0x1
/* 237ADC 8022513C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 237AE0 80225140 27BD0018 */  addiu      $sp, $sp, 0x18
/* 237AE4 80225144 03E00008 */  jr         $ra
/* 237AE8 80225148 00000000 */   nop
