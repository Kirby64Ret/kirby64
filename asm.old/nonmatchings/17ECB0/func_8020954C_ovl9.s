glabel func_8020954C_ovl9
/* 1B759C 8020954C 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 1B75A0 80209550 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
/* 1B75A4 80209554 8CEE0000 */  lw         $t6, 0x0($a3)
/* 1B75A8 80209558 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B75AC 8020955C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B75B0 80209560 AFA40018 */  sw         $a0, 0x18($sp)
/* 1B75B4 80209564 8DC20000 */  lw         $v0, 0x0($t6)
/* 1B75B8 80209568 3C03800E */  lui        $v1, %hi(D_800E1B50)
/* 1B75BC 8020956C 3C0F801B */  lui        $t7, %hi(func_801ACF5C_ovl7)
/* 1B75C0 80209570 00021080 */  sll        $v0, $v0, 2
/* 1B75C4 80209574 00621821 */  addu       $v1, $v1, $v0
/* 1B75C8 80209578 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
/* 1B75CC 8020957C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1B75D0 80209580 00220821 */  addu       $at, $at, $v0
/* 1B75D4 80209584 25EFCF5C */  addiu      $t7, $t7, %lo(func_801ACF5C_ovl7)
/* 1B75D8 80209588 3C18801D */  lui        $t8, %hi(D_801CB4DC_ovl7)
/* 1B75DC 8020958C AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
/* 1B75E0 80209590 2718B4DC */  addiu      $t8, $t8, %lo(D_801CB4DC_ovl7)
/* 1B75E4 80209594 AC780098 */  sw         $t8, 0x98($v1)
/* 1B75E8 80209598 8CF90000 */  lw         $t9, 0x0($a3)
/* 1B75EC 8020959C 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1B75F0 802095A0 3C040001 */  lui        $a0, (0x10097 >> 16)
/* 1B75F4 802095A4 8F280000 */  lw         $t0, 0x0($t9)
/* 1B75F8 802095A8 34840097 */  ori        $a0, $a0, (0x10097 & 0xFFFF)
/* 1B75FC 802095AC 24050023 */  addiu      $a1, $zero, 0x23
/* 1B7600 802095B0 00084880 */  sll        $t1, $t0, 2
/* 1B7604 802095B4 00290821 */  addu       $at, $at, $t1
/* 1B7608 802095B8 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 1B760C 802095BC 0C02A619 */  jal        func_800A9864
/* 1B7610 802095C0 24060010 */   addiu     $a2, $zero, 0x10
/* 1B7614 802095C4 3C040001 */  lui        $a0, (0x10543 >> 16)
/* 1B7618 802095C8 0C02A7A9 */  jal        func_800A9EA4
/* 1B761C 802095CC 34840543 */   ori       $a0, $a0, (0x10543 & 0xFFFF)
/* 1B7620 802095D0 0C02BE85 */  jal        func_800AFA14
/* 1B7624 802095D4 00000000 */   nop
/* 1B7628 802095D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B762C 802095DC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B7630 802095E0 03E00008 */  jr         $ra
/* 1B7634 802095E4 00000000 */   nop
