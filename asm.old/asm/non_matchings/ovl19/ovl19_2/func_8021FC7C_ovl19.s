glabel func_8021FC7C_ovl19
/* 24038C 8021FC7C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 240390 8021FC80 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 240394 8021FC84 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 240398 8021FC88 AFBF0014 */  sw    $ra, 0x14($sp)
/* 24039C 8021FC8C AFA40018 */  sw    $a0, 0x18($sp)
/* 2403A0 8021FC90 8DCF0000 */  lw    $t7, ($t6)
/* 2403A4 8021FC94 3C04800E */ lui $a0, %hi(D_800E7880)
/* 2403A8 8021FC98 3C068023 */  lui   $a2, %hi(D_8022F09C) # $a2, 0x8023
/* 2403AC 8021FC9C 008F2021 */  addu  $a0, $a0, $t7
/* 2403B0 8021FCA0 90847880 */ lbu $a0, %lo(D_800E7880)($a0)
/* 2403B4 8021FCA4 24C6F09C */  addiu $a2, %lo(D_8022F09C) # addiu $a2, $a2, -0xf64
/* 2403B8 8021FCA8 0C02911F */  jal   call_virtual_function
/* 2403BC 8021FCAC 24050002 */   li    $a1, 2
/* 2403C0 8021FCB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2403C4 8021FCB4 27BD0018 */  addiu $sp, $sp, 0x18
/* 2403C8 8021FCB8 03E00008 */  jr    $ra
/* 2403CC 8021FCBC 00000000 */   nop   
.type func_8021FC7C_ovl19, @function
.size func_8021FC7C_ovl19, . - func_8021FC7C_ovl19
