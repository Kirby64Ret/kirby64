glabel func_80225478_ovl18
/* 237E18 80225478 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 237E1C 8022547C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 237E20 80225480 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 237E24 80225484 AFBF0014 */  sw         $ra, 0x14($sp)
/* 237E28 80225488 AFA40018 */  sw         $a0, 0x18($sp)
/* 237E2C 8022548C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 237E30 80225490 3C04800E */  lui        $a0, %hi(gEntityVtableIndexArray)
/* 237E34 80225494 3C068023 */  lui        $a2, %hi(D_8022ACE8_ovl18)
/* 237E38 80225498 000FC080 */  sll        $t8, $t7, 2
/* 237E3C 8022549C 00982021 */  addu       $a0, $a0, $t8
/* 237E40 802254A0 8C84DC50 */  lw         $a0, %lo(gEntityVtableIndexArray)($a0)
/* 237E44 802254A4 24C6ACE8 */  addiu      $a2, $a2, %lo(D_8022ACE8_ovl18)
/* 237E48 802254A8 0C02911F */  jal        call_virtual_function
/* 237E4C 802254AC 24050002 */   addiu     $a1, $zero, 0x2
/* 237E50 802254B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 237E54 802254B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 237E58 802254B8 03E00008 */  jr         $ra
/* 237E5C 802254BC 00000000 */   nop
