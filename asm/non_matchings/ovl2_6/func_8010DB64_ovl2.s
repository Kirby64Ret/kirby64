glabel func_8010DB64_ovl2
/* 0965D4 8010DB64 10800024 */  beqz  $a0, .L8010DBF8_ovl2
/* 0965D8 8010DB68 24010014 */   li    $at, 20
/* 0965DC 8010DB6C 10A1000A */  beq   $a1, $at, .L8010DB98_ovl2
/* 0965E0 8010DB70 3C028013 */   lui   $v0, 0x8013
/* 0965E4 8010DB74 00057080 */  sll   $t6, $a1, 2
/* 0965E8 8010DB78 01C57023 */  subu  $t6, $t6, $a1
/* 0965EC 8010DB7C 000E70C0 */  sll   $t6, $t6, 3
/* 0965F0 8010DB80 01C57023 */  subu  $t6, $t6, $a1
/* 0965F4 8010DB84 000E70C0 */  sll   $t6, $t6, 3
/* 0965F8 8010DB88 3C028013 */  lui   $v0, 0x8013
/* 0965FC 8010DB8C 004E1021 */  addu  $v0, $v0, $t6
/* 096600 8010DB90 10000002 */  b     .L8010DB9C_ovl2
/* 096604 8010DB94 8C42D94C */   lw    $v0, -0x26b4($v0)
.L8010DB98_ovl2:
/* 096608 8010DB98 8C429410 */  lw    $v0, -0x6bf0($v0)
.L8010DB9C_ovl2:
/* 09660C 8010DB9C 94980006 */  lhu   $t8, 6($a0)
/* 096610 8010DBA0 94880008 */  lhu   $t0, 8($a0)
/* 096614 8010DBA4 8C4F0014 */  lw    $t7, 0x14($v0)
/* 096618 8010DBA8 0018C900 */  sll   $t9, $t8, 4
/* 09661C 8010DBAC 31090001 */  andi  $t1, $t0, 1
/* 096620 8010DBB0 11200008 */  beqz  $t1, .L8010DBD4_ovl2
/* 096624 8010DBB4 01F91821 */   addu  $v1, $t7, $t9
/* 096628 8010DBB8 C4640000 */  lwc1  $f4, ($v1)
/* 09662C 8010DBBC E4C40000 */  swc1  $f4, ($a2)
/* 096630 8010DBC0 C4660004 */  lwc1  $f6, 4($v1)
/* 096634 8010DBC4 E4C60004 */  swc1  $f6, 4($a2)
/* 096638 8010DBC8 C4680008 */  lwc1  $f8, 8($v1)
/* 09663C 8010DBCC 03E00008 */  jr    $ra
/* 096640 8010DBD0 E4C80008 */   swc1  $f8, 8($a2)

.L8010DBD4_ovl2:
/* 096644 8010DBD4 C46A0000 */  lwc1  $f10, ($v1)
/* 096648 8010DBD8 46005407 */  neg.s $f16, $f10
/* 09664C 8010DBDC E4D00000 */  swc1  $f16, ($a2)
/* 096650 8010DBE0 C4720004 */  lwc1  $f18, 4($v1)
/* 096654 8010DBE4 46009107 */  neg.s $f4, $f18
/* 096658 8010DBE8 E4C40004 */  swc1  $f4, 4($a2)
/* 09665C 8010DBEC C4660008 */  lwc1  $f6, 8($v1)
/* 096660 8010DBF0 46003207 */  neg.s $f8, $f6
/* 096664 8010DBF4 E4C80008 */  swc1  $f8, 8($a2)
.L8010DBF8_ovl2:
/* 096668 8010DBF8 03E00008 */  jr    $ra
/* 09666C 8010DBFC 00000000 */   nop   
