glabel func_800A5744
/* 04D994 800A5744 3C01800D */  lui   $at, %hi(D_800D6B24) # $at, 0x800d
/* 04D998 800A5748 AC206B24 */  sw    $zero, %lo(D_800D6B24)($at)
/* 04D99C 800A574C 2402000A */  li    $v0, 10
/* 04D9A0 800A5750 3C01800D */  lui   $at, %hi(D_800D6B34) # $at, 0x800d
/* 04D9A4 800A5754 AC226B34 */  sw    $v0, %lo(D_800D6B34)($at)
/* 04D9A8 800A5758 3C01800D */  lui   $at, %hi(D_800D6B38) # $at, 0x800d
/* 04D9AC 800A575C AC226B38 */  sw    $v0, %lo(D_800D6B38)($at)
/* 04D9B0 800A5760 3C01800D */  lui   $at, %hi(D_800D6B3C) # $at, 0x800d
/* 04D9B4 800A5764 240E0136 */  li    $t6, 310
/* 04D9B8 800A5768 AC2E6B3C */  sw    $t6, %lo(D_800D6B3C)($at)
/* 04D9BC 800A576C 3C01800D */  lui   $at, %hi(D_800D6B40) # $at, 0x800d
/* 04D9C0 800A5770 240F00E6 */  li    $t7, 230
/* 04D9C4 800A5774 AC2F6B40 */  sw    $t7, %lo(D_800D6B40)($at)
/* 04D9C8 800A5778 3C01800D */  lui   $at, %hi(D_800D6B28) # $at, 0x800d
/* 04D9CC 800A577C A0246B28 */  sb    $a0, %lo(D_800D6B28)($at)
/* 04D9D0 800A5780 3C01800D */  lui   $at, %hi(D_800D6B29) # $at, 0x800d
/* 04D9D4 800A5784 A0256B29 */  sb    $a1, %lo(D_800D6B29)($at)
/* 04D9D8 800A5788 3C01800D */ lui $at, %hi(D_800D6B2A)
/* 04D9DC 800A578C AFA40000 */  sw    $a0, ($sp)
/* 04D9E0 800A5790 AFA50004 */  sw    $a1, 4($sp)
/* 04D9E4 800A5794 AFA60008 */  sw    $a2, 8($sp)
/* 04D9E8 800A5798 03E00008 */  jr    $ra
/* 04D9EC 800A579C A0266B2A */ sb $a2, %lo(D_800D6B2A)($at)
.type func_800A5744, @function
.size func_800A5744, . - func_800A5744
