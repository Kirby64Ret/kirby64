glabel func_800A7E48
/* 050098 800A7E48 3C02800D */  lui   $v0, %hi(D_800D6FB4) # $v0, 0x800d
/* 05009C 800A7E4C 8C426FB4 */  lw    $v0, %lo(D_800D6FB4)($v0)
/* 0500A0 800A7E50 3C0E0001 */  lui   $t6, 1
/* 0500A4 800A7E54 008E1804 */  sllv  $v1, $t6, $a0
/* 0500A8 800A7E58 8C4F0044 */  lw    $t7, 0x44($v0)
/* 0500AC 800A7E5C 3C05800D */  lui   $a1, %hi(D_800D6FB8) # $a1, 0x800d
/* 0500B0 800A7E60 01E3C025 */  or    $t8, $t7, $v1
/* 0500B4 800A7E64 AC580044 */  sw    $t8, 0x44($v0)
/* 0500B8 800A7E68 8CA56FB8 */  lw    $a1, %lo(D_800D6FB8)($a1)
/* 0500BC 800A7E6C 8CB90044 */  lw    $t9, 0x44($a1)
/* 0500C0 800A7E70 03234025 */  or    $t0, $t9, $v1
/* 0500C4 800A7E74 03E00008 */  jr    $ra
/* 0500C8 800A7E78 ACA80044 */   sw    $t0, 0x44($a1)
.type func_800A7E48, @function
.size func_800A7E48, . - func_800A7E48
