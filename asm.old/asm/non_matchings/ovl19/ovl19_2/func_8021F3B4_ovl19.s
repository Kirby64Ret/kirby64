glabel func_8021F3B4_ovl19
/* 23FAC4 8021F3B4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 23FAC8 8021F3B8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 23FACC 8021F3BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 23FAD0 8021F3C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 23FAD4 8021F3C4 AFA40018 */  sw    $a0, 0x18($sp)
/* 23FAD8 8021F3C8 8DCF0000 */  lw    $t7, ($t6)
/* 23FADC 8021F3CC 3C04800E */ lui $a0, %hi(D_800E7880)
/* 23FAE0 8021F3D0 3C068023 */  lui   $a2, %hi(D_8022F088) # $a2, 0x8023
/* 23FAE4 8021F3D4 008F2021 */  addu  $a0, $a0, $t7
/* 23FAE8 8021F3D8 90847880 */ lbu $a0, %lo(D_800E7880)($a0)
/* 23FAEC 8021F3DC 24C6F088 */  addiu $a2, %lo(D_8022F088) # addiu $a2, $a2, -0xf78
/* 23FAF0 8021F3E0 0C02911F */  jal   call_virtual_function
/* 23FAF4 8021F3E4 24050005 */   li    $a1, 5
/* 23FAF8 8021F3E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 23FAFC 8021F3EC 27BD0018 */  addiu $sp, $sp, 0x18
/* 23FB00 8021F3F0 03E00008 */  jr    $ra
/* 23FB04 8021F3F4 00000000 */   nop   
.type func_8021F3B4_ovl19, @function
.size func_8021F3B4_ovl19, . - func_8021F3B4_ovl19
