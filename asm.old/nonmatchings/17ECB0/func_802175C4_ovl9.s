glabel func_802175C4_ovl9
/* 1C5614 802175C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C5618 802175C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C561C 802175CC 0C06835D */  jal        func_801A0D74_ovl7
/* 1C5620 802175D0 00000000 */   nop
/* 1C5624 802175D4 44823000 */  mtc1       $v0, $f6
/* 1C5628 802175D8 44802000 */  mtc1       $zero, $f4
/* 1C562C 802175DC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1C5630 802175E0 46803220 */  cvt.s.w    $f8, $f6
/* 1C5634 802175E4 46082032 */  c.eq.s     $f4, $f8
/* 1C5638 802175E8 00000000 */  nop
/* 1C563C 802175EC 4500000B */  bc1f       .L8021761C_ovl9
/* 1C5640 802175F0 00000000 */   nop
/* 1C5644 802175F4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1C5648 802175F8 3C04800E */  lui        $a0, %hi(D_800DDFD0)
/* 1C564C 802175FC 3C068022 */  lui        $a2, %hi(D_8021CD7C_ovl9)
/* 1C5650 80217600 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1C5654 80217604 24C6CD7C */  addiu      $a2, $a2, %lo(D_8021CD7C_ovl9)
/* 1C5658 80217608 24050007 */  addiu      $a1, $zero, 0x7
/* 1C565C 8021760C 000FC080 */  sll        $t8, $t7, 2
/* 1C5660 80217610 00982021 */  addu       $a0, $a0, $t8
/* 1C5664 80217614 0C02911F */  jal        call_virtual_function
/* 1C5668 80217618 8C84DFD0 */   lw        $a0, %lo(D_800DDFD0)($a0)
.L8021761C_ovl9:
/* 1C566C 8021761C 0C067CEC */  jal        func_8019F3B0_ovl7
/* 1C5670 80217620 00000000 */   nop
/* 1C5674 80217624 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C5678 80217628 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1C567C 8021762C 03E00008 */  jr         $ra
/* 1C5680 80217630 00000000 */   nop
