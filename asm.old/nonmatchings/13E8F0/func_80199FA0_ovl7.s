glabel func_80199FA0_ovl7
/* 140010 80199FA0 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 140014 80199FA4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 140018 80199FA8 AFA40000 */  sw         $a0, 0x0($sp)
/* 14001C 80199FAC 3C01800F */  lui        $at, %hi(D_800E8920)
/* 140020 80199FB0 8DCF0000 */  lw         $t7, 0x0($t6)
/* 140024 80199FB4 000FC080 */  sll        $t8, $t7, 2
/* 140028 80199FB8 00380821 */  addu       $at, $at, $t8
/* 14002C 80199FBC 03E00008 */  jr         $ra
/* 140030 80199FC0 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
