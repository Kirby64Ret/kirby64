glabel func_802114E4_ovl9
/* 1BF534 802114E4 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1BF538 802114E8 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1BF53C 802114EC AFA40000 */  sw         $a0, 0x0($sp)
/* 1BF540 802114F0 3C018022 */  lui        $at, %hi(D_8021DD3C_ovl9)
/* 1BF544 802114F4 8DC20000 */  lw         $v0, 0x0($t6)
/* 1BF548 802114F8 C422DD3C */  lwc1       $f2, %lo(D_8021DD3C_ovl9)($at)
/* 1BF54C 802114FC 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 1BF550 80211500 00021080 */  sll        $v0, $v0, 2
/* 1BF554 80211504 00220821 */  addu       $at, $at, $v0
/* 1BF558 80211508 C420A6E0 */  lwc1       $f0, %lo(D_800EA6E0)($at)
/* 1BF55C 8021150C 3C0F800E */  lui        $t7, %hi(D_800DE350)
/* 1BF560 80211510 3C018022 */  lui        $at, %hi(D_8021DD40_ovl9)
/* 1BF564 80211514 4602003C */  c.lt.s     $f0, $f2
/* 1BF568 80211518 01E27821 */  addu       $t7, $t7, $v0
/* 1BF56C 8021151C 45000002 */  bc1f       .L80211528_ovl9
/* 1BF570 80211520 00000000 */   nop
/* 1BF574 80211524 46001006 */  mov.s      $f0, $f2
.L80211528_ovl9:
/* 1BF578 80211528 C422DD40 */  lwc1       $f2, %lo(D_8021DD40_ovl9)($at)
/* 1BF57C 8021152C 4600103C */  c.lt.s     $f2, $f0
/* 1BF580 80211530 00000000 */  nop
/* 1BF584 80211534 45000002 */  bc1f       .L80211540_ovl9
/* 1BF588 80211538 00000000 */   nop
/* 1BF58C 8021153C 46001006 */  mov.s      $f0, $f2
.L80211540_ovl9:
/* 1BF590 80211540 8DEFE350 */  lw         $t7, %lo(D_800DE350)($t7)
/* 1BF594 80211544 3C018022 */  lui        $at, %hi(D_8021DD44_ovl9)
/* 1BF598 80211548 C424DD44 */  lwc1       $f4, %lo(D_8021DD44_ovl9)($at)
/* 1BF59C 8021154C 8DF8003C */  lw         $t8, 0x3C($t7)
/* 1BF5A0 80211550 46040181 */  sub.s      $f6, $f0, $f4
/* 1BF5A4 80211554 8F190010 */  lw         $t9, 0x10($t8)
/* 1BF5A8 80211558 03E00008 */  jr         $ra
/* 1BF5AC 8021155C E7260030 */   swc1      $f6, 0x30($t9)
