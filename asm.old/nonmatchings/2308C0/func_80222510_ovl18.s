glabel func_80222510_ovl18
/* 234EB0 80222510 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 234EB4 80222514 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 234EB8 80222518 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 234EBC 8022251C AFBF0014 */  sw         $ra, 0x14($sp)
/* 234EC0 80222520 AFA40018 */  sw         $a0, 0x18($sp)
/* 234EC4 80222524 8C4F0000 */  lw         $t7, 0x0($v0)
/* 234EC8 80222528 3C0E800B */  lui        $t6, %hi(func_800B72AC)
/* 234ECC 8022252C 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 234ED0 80222530 000FC080 */  sll        $t8, $t7, 2
/* 234ED4 80222534 00380821 */  addu       $at, $at, $t8
/* 234ED8 80222538 25CE72AC */  addiu      $t6, $t6, %lo(func_800B72AC)
/* 234EDC 8022253C AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 234EE0 80222540 8C590000 */  lw         $t9, 0x0($v0)
/* 234EE4 80222544 3C04800E */  lui        $a0, %hi(D_800E7880)
/* 234EE8 80222548 3C068023 */  lui        $a2, %hi(D_8022ABDC_ovl18)
/* 234EEC 8022254C 00992021 */  addu       $a0, $a0, $t9
/* 234EF0 80222550 90847880 */  lbu        $a0, %lo(D_800E7880)($a0)
/* 234EF4 80222554 24C6ABDC */  addiu      $a2, $a2, %lo(D_8022ABDC_ovl18)
/* 234EF8 80222558 0C02911F */  jal        call_virtual_function
/* 234EFC 8022255C 24050001 */   addiu     $a1, $zero, 0x1
/* 234F00 80222560 8FBF0014 */  lw         $ra, 0x14($sp)
/* 234F04 80222564 27BD0018 */  addiu      $sp, $sp, 0x18
/* 234F08 80222568 03E00008 */  jr         $ra
/* 234F0C 8022256C 00000000 */   nop
