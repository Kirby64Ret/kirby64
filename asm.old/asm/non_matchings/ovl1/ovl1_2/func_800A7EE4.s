glabel func_800A7EE4
/* 050134 800A7EE4 3C02800D */  lui   $v0, %hi(D_800D6FB4) # $v0, 0x800d
/* 050138 800A7EE8 8C426FB4 */  lw    $v0, %lo(D_800D6FB4)($v0)
/* 05013C 800A7EEC 3C03800D */  lui   $v1, %hi(D_800D6FB8) # $v1, 0x800d
/* 050140 800A7EF0 8C4E0044 */  lw    $t6, 0x44($v0)
/* 050144 800A7EF4 31CFFFFF */  andi  $t7, $t6, 0xffff
/* 050148 800A7EF8 AC4F0044 */  sw    $t7, 0x44($v0)
/* 05014C 800A7EFC 8C636FB8 */  lw    $v1, %lo(D_800D6FB8)($v1)
/* 050150 800A7F00 8C780044 */  lw    $t8, 0x44($v1)
/* 050154 800A7F04 3319FFFF */  andi  $t9, $t8, 0xffff
/* 050158 800A7F08 03E00008 */  jr    $ra
/* 05015C 800A7F0C AC790044 */   sw    $t9, 0x44($v1)
.type func_800A7EE4, @function
.size func_800A7EE4, . - func_800A7EE4
