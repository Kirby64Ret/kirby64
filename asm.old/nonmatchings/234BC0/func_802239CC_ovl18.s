glabel func_802239CC_ovl18
/* 23636C 802239CC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 236370 802239D0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 236374 802239D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 236378 802239D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 23637C 802239DC AFA40018 */  sw         $a0, 0x18($sp)
/* 236380 802239E0 8DCF0000 */  lw         $t7, 0x0($t6)
/* 236384 802239E4 3C04800E */  lui        $a0, %hi(gEntityVtableIndexArray)
/* 236388 802239E8 3C068023 */  lui        $a2, %hi(D_8022AC34_ovl18)
/* 23638C 802239EC 000FC080 */  sll        $t8, $t7, 2
/* 236390 802239F0 00982021 */  addu       $a0, $a0, $t8
/* 236394 802239F4 8C84DC50 */  lw         $a0, %lo(gEntityVtableIndexArray)($a0)
/* 236398 802239F8 24C6AC34 */  addiu      $a2, $a2, %lo(D_8022AC34_ovl18)
.L802239FC_ovl19:
/* 23639C 802239FC 0C02911F */  jal        call_virtual_function
/* 2363A0 80223A00 24050005 */   addiu     $a1, $zero, 0x5
/* 2363A4 80223A04 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2363A8 80223A08 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2363AC 80223A0C 03E00008 */  jr         $ra
/* 2363B0 80223A10 00000000 */   nop
