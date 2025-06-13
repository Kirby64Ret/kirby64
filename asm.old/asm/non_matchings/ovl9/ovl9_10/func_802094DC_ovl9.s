glabel func_802094DC_ovl9
/* 1B752C 802094DC 3C0E8005 */ lui $t6, %hi(D_8004A7C4)
/* 1B7530 802094E0 8DCEA7C4 */ lw $t6, %lo(D_8004A7C4)($t6)
/* 1B7534 802094E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1B7538 802094E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1B753C 802094EC 8DC20000 */  lw    $v0, ($t6)
/* 1B7540 802094F0 3C0F800F */ lui $t7, %hi(D_800E98E0)
/* 1B7544 802094F4 25EF98E0 */ addiu $t7, %lo(D_800E98E0)
/* 1B7548 802094F8 00021080 */  sll   $v0, $v0, 2
/* 1B754C 802094FC 004F1821 */  addu  $v1, $v0, $t7
/* 1B7550 80209500 8C650000 */  lw    $a1, ($v1)
/* 1B7554 80209504 14A00009 */  bnez  $a1, .L8020952C_ovl9
/* 1B7558 80209508 24B8FFFF */   addiu $t8, $a1, -1
/* 1B755C 8020950C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1B7560 80209510 00822021 */  addu  $a0, $a0, $v0
/* 1B7564 80209514 3C05801B */ lui $a1, %hi(D_801ACF84)
/* 1B7568 80209518 24A5CF84 */ addiu $a1, %lo(D_801ACF84)
/* 1B756C 8020951C 0C02C7B2 */  jal   assign_new_process_entry
/* 1B7570 80209520 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1B7574 80209524 10000006 */  b     .L80209540_ovl9
/* 1B7578 80209528 8FBF0014 */   lw    $ra, 0x14($sp)
.L8020952C_ovl9:
/* 1B757C 8020952C 0C06835D */  jal   func_801A0D74_ovl9
/* 1B7580 80209530 AC780000 */   sw    $t8, ($v1)
/* 1B7584 80209534 0C0680ED */  jal   func_801A03B4_ovl9
/* 1B7588 80209538 00000000 */   nop   
/* 1B758C 8020953C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80209540_ovl9:
/* 1B7590 80209540 27BD0018 */  addiu $sp, $sp, 0x18
/* 1B7594 80209544 03E00008 */  jr    $ra
/* 1B7598 80209548 00000000 */   nop   
.type func_802094DC_ovl9, @function
.size func_802094DC_ovl9, . - func_802094DC_ovl9
