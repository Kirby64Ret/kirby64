glabel func_80224B54_ovl18
/* 2374F4 80224B54 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 2374F8 80224B58 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 2374FC 80224B5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 237500 80224B60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 237504 80224B64 AFA40018 */  sw         $a0, 0x18($sp)
/* 237508 80224B68 8DCF0000 */  lw         $t7, 0x0($t6)
/* 23750C 80224B6C 3C04800E */  lui        $a0, %hi(gEntityVtableIndexArray)
/* 237510 80224B70 3C068023 */  lui        $a2, %hi(D_8022AC88_ovl18)
/* 237514 80224B74 000FC080 */  sll        $t8, $t7, 2
/* 237518 80224B78 00982021 */  addu       $a0, $a0, $t8
/* 23751C 80224B7C 8C84DC50 */  lw         $a0, %lo(gEntityVtableIndexArray)($a0)
/* 237520 80224B80 24C6AC88 */  addiu      $a2, $a2, %lo(D_8022AC88_ovl18)
/* 237524 80224B84 0C02911F */  jal        call_virtual_function
/* 237528 80224B88 24050002 */   addiu     $a1, $zero, 0x2
/* 23752C 80224B8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 237530 80224B90 27BD0018 */  addiu      $sp, $sp, 0x18
/* 237534 80224B94 03E00008 */  jr         $ra
/* 237538 80224B98 00000000 */   nop
