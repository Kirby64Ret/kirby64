glabel func_800A7E7C
/* 0500CC 800A7E7C 3C02800D */  lui   $v0, %hi(D_800D6FB4) # $v0, 0x800d
/* 0500D0 800A7E80 8C426FB4 */  lw    $v0, %lo(D_800D6FB4)($v0)
/* 0500D4 800A7E84 3C0E0001 */  lui   $t6, 1
/* 0500D8 800A7E88 008E1804 */  sllv  $v1, $t6, $a0
/* 0500DC 800A7E8C 8C4F0044 */  lw    $t7, 0x44($v0)
/* 0500E0 800A7E90 00601827 */  not   $v1, $v1
/* 0500E4 800A7E94 3C05800D */  lui   $a1, %hi(D_800D6FB8) # $a1, 0x800d
/* 0500E8 800A7E98 01E3C024 */  and   $t8, $t7, $v1
/* 0500EC 800A7E9C AC580044 */  sw    $t8, 0x44($v0)
/* 0500F0 800A7EA0 8CA56FB8 */  lw    $a1, %lo(D_800D6FB8)($a1)
/* 0500F4 800A7EA4 8CB90044 */  lw    $t9, 0x44($a1)
/* 0500F8 800A7EA8 03234024 */  and   $t0, $t9, $v1
/* 0500FC 800A7EAC 03E00008 */  jr    $ra
/* 050100 800A7EB0 ACA80044 */   sw    $t0, 0x44($a1)
.type func_800A7E7C, @function
.size func_800A7E7C, . - func_800A7E7C
