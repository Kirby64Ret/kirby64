glabel func_800A57A0
/* 04D9F0 800A57A0 3C01800D */  lui   $at, %hi(D_800D6B28) # $at, 0x800d
/* 04D9F4 800A57A4 A0246B28 */  sb    $a0, %lo(D_800D6B28)($at)
/* 04D9F8 800A57A8 3C01800D */  lui   $at, %hi(D_800D6B29) # $at, 0x800d
/* 04D9FC 800A57AC A0256B29 */  sb    $a1, %lo(D_800D6B29)($at)
/* 04DA00 800A57B0 3C01800D */ lui $at, %hi(D_800D6B2A)
/* 04DA04 800A57B4 AFA40000 */  sw    $a0, ($sp)
/* 04DA08 800A57B8 AFA50004 */  sw    $a1, 4($sp)
/* 04DA0C 800A57BC AFA60008 */  sw    $a2, 8($sp)
/* 04DA10 800A57C0 03E00008 */  jr    $ra
/* 04DA14 800A57C4 A0266B2A */ sb $a2, %lo(D_800D6B2A)($at)
.type func_800A57A0, @function
.size func_800A57A0, . - func_800A57A0
