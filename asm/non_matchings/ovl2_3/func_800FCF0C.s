glabel func_800FCF0C
/* 08597C 800FCF0C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 085980 800FCF10 AFBF0014 */  sw    $ra, 0x14($sp)
/* 085984 800FCF14 0C06655A */  jal   func_80199568_ovl2
/* 085988 800FCF18 AFA40018 */   sw    $a0, 0x18($sp)
/* 08598C 800FCF1C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 085990 800FCF20 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 085994 800FCF24 3C04800E */  lui   $a0, 0x800e
/* 085998 800FCF28 3C068012 */  lui   $a2, %hi(D_801242D0) # $a2, 0x8012
/* 08599C 800FCF2C 8DCF0000 */  lw    $t7, ($t6)
/* 0859A0 800FCF30 24C642D0 */  addiu $a2, %lo(D_801242D0) # addiu $a2, $a2, 0x42d0
/* 0859A4 800FCF34 2405006B */  li    $a1, 107
/* 0859A8 800FCF38 000FC040 */  sll   $t8, $t7, 1
/* 0859AC 800FCF3C 00982021 */  addu  $a0, $a0, $t8
/* 0859B0 800FCF40 0C02911F */  jal   func_800A447C_ovl2
/* 0859B4 800FCF44 948477A0 */   lhu   $a0, 0x77a0($a0)
/* 0859B8 800FCF48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0859BC 800FCF4C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0859C0 800FCF50 03E00008 */  jr    $ra
/* 0859C4 800FCF54 00000000 */   nop   
