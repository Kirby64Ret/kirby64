glabel func_800A7EB4
/* 050104 800A7EB4 3C02800D */  lui   $v0, %hi(D_800D6FB4) # $v0, 0x800d
/* 050108 800A7EB8 8C426FB4 */  lw    $v0, %lo(D_800D6FB4)($v0)
/* 05010C 800A7EBC 3C04FFFF */  lui   $a0, 0xffff
/* 050110 800A7EC0 3C03800D */  lui   $v1, %hi(D_800D6FB8) # $v1, 0x800d
/* 050114 800A7EC4 8C4E0044 */  lw    $t6, 0x44($v0)
/* 050118 800A7EC8 01C47825 */  or    $t7, $t6, $a0
/* 05011C 800A7ECC AC4F0044 */  sw    $t7, 0x44($v0)
/* 050120 800A7ED0 8C636FB8 */  lw    $v1, %lo(D_800D6FB8)($v1)
/* 050124 800A7ED4 8C780044 */  lw    $t8, 0x44($v1)
/* 050128 800A7ED8 0304C825 */  or    $t9, $t8, $a0
/* 05012C 800A7EDC 03E00008 */  jr    $ra
/* 050130 800A7EE0 AC790044 */   sw    $t9, 0x44($v1)
.type func_800A7EB4, @function
.size func_800A7EB4, . - func_800A7EB4
