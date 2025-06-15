glabel func_800AFA54
/* 057CA4 800AFA54 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 057CA8 800AFA58 00802825 */  move  $a1, $a0
/* 057CAC 800AFA5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 057CB0 800AFA60 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 057CB4 800AFA64 0C003F5E */  jal   func_8000FD78
/* 057CB8 800AFA68 8C84A7C4 */   lw    $a0, %lo(D_8004A7C4)($a0)
/* 057CBC 800AFA6C 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 057CC0 800AFA70 0C02BEA2 */  jal   func_800AFA88
/* 057CC4 800AFA74 8C84A7C4 */   lw    $a0, %lo(D_8004A7C4)($a0)
/* 057CC8 800AFA78 8FBF0014 */  lw    $ra, 0x14($sp)
/* 057CCC 800AFA7C 27BD0018 */  addiu $sp, $sp, 0x18
/* 057CD0 800AFA80 03E00008 */  jr    $ra
/* 057CD4 800AFA84 00000000 */   nop   
.type func_800AFA54, @function
.size func_800AFA54, . - func_800AFA54
