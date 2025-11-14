glabel func_800A56F4
/* 04D944 800A56F4 3C01800D */  lui   $at, %hi(D_800D6B24) # $at, 0x800d
/* 04D948 800A56F8 AC206B24 */  sw    $zero, %lo(D_800D6B24)($at)
/* 04D94C 800A56FC 3C01800D */  lui   $at, %hi(D_800D6B34) # $at, 0x800d
/* 04D950 800A5700 AC246B34 */  sw    $a0, %lo(D_800D6B34)($at)
/* 04D954 800A5704 3C01800D */  lui   $at, %hi(D_800D6B38) # $at, 0x800d
/* 04D958 800A5708 AC256B38 */  sw    $a1, %lo(D_800D6B38)($at)
/* 04D95C 800A570C 3C01800D */  lui   $at, %hi(D_800D6B3C) # $at, 0x800d
/* 04D960 800A5710 AC266B3C */  sw    $a2, %lo(D_800D6B3C)($at)
/* 04D964 800A5714 93AE0013 */  lbu   $t6, 0x13($sp)
/* 04D968 800A5718 3C01800D */  lui   $at, %hi(D_800D6B40) # $at, 0x800d
/* 04D96C 800A571C AC276B40 */  sw    $a3, %lo(D_800D6B40)($at)
/* 04D970 800A5720 93AF0017 */  lbu   $t7, 0x17($sp)
/* 04D974 800A5724 3C01800D */  lui   $at, %hi(D_800D6B28) # $at, 0x800d
/* 04D978 800A5728 A02E6B28 */  sb    $t6, %lo(D_800D6B28)($at)
/* 04D97C 800A572C 3C01800D */  lui   $at, %hi(D_800D6B29) # $at, 0x800d
/* 04D980 800A5730 93B8001B */  lbu   $t8, 0x1b($sp)
/* 04D984 800A5734 A02F6B29 */  sb    $t7, %lo(D_800D6B29)($at)
/* 04D988 800A5738 3C01800D */ lui $at, %hi(D_800D6B2A)
/* 04D98C 800A573C 03E00008 */  jr    $ra
/* 04D990 800A5740 A0386B2A */ sb $t8, %lo(D_800D6B2A)($at)
.type func_800A56F4, @function
.size func_800A56F4, . - func_800A56F4
