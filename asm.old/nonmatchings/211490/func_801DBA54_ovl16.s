glabel func_801DBA54_ovl16
/* 211D04 801DBA54 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
.L801DBA58_ovl15:
/* 211D08 801DBA58 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 211D0C 801DBA5C 90AE0002 */  lbu        $t6, 0x2($a1)
/* 211D10 801DBA60 3C01800F */  lui        $at, %hi(D_800E83E0)
/* 211D14 801DBA64 8DF80000 */  lw         $t8, 0x0($t7)
/* 211D18 801DBA68 0018C880 */  sll        $t9, $t8, 2
/* 211D1C 801DBA6C 00390821 */  addu       $at, $at, $t9
/* 211D20 801DBA70 AC2E83E0 */  sw         $t6, %lo(D_800E83E0)($at)
/* 211D24 801DBA74 90A80003 */  lbu        $t0, 0x3($a1)
.L801DBA78_ovl12:
/* 211D28 801DBA78 A0880043 */  sb         $t0, 0x43($a0)
/* 211D2C 801DBA7C 90A90000 */  lbu        $t1, 0x0($a1)
/* 211D30 801DBA80 A089003E */  sb         $t1, 0x3E($a0)
/* 211D34 801DBA84 90AA0001 */  lbu        $t2, 0x1($a1)
glabel func_801DBA88_ovl15
/* 211D38 801DBA88 A08A003F */  sb         $t2, 0x3F($a0)
glabel func_801DBA8C_ovl17
/* 211D3C 801DBA8C 8CAB000C */  lw         $t3, 0xC($a1)
/* 211D40 801DBA90 03E00008 */  jr         $ra
/* 211D44 801DBA94 A08B003A */   sb        $t3, 0x3A($a0)
