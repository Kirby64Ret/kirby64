glabel func_80222A54_ovl19
/* 243164 80222A54 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 243168 80222A58 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 24316C 80222A5C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 243170 80222A60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 243174 80222A64 AFA40018 */  sw    $a0, 0x18($sp)
/* 243178 80222A68 8DCF0000 */  lw    $t7, ($t6)
/* 24317C 80222A6C 3C04800E */ lui $a0, %hi(D_800E7880)
/* 243180 80222A70 3C068023 */  lui   $a2, %hi(D_8022F158) # $a2, 0x8023
/* 243184 80222A74 008F2021 */  addu  $a0, $a0, $t7
/* 243188 80222A78 90847880 */ lbu $a0, %lo(D_800E7880)($a0)
/* 24318C 80222A7C 24C6F158 */  addiu $a2, %lo(D_8022F158) # addiu $a2, $a2, -0xea8
/* 243190 80222A80 0C02911F */  jal   call_virtual_function
/* 243194 80222A84 24050003 */   li    $a1, 3
/* 243198 80222A88 8FBF0014 */  lw    $ra, 0x14($sp)
/* 24319C 80222A8C 27BD0018 */  addiu $sp, $sp, 0x18
/* 2431A0 80222A90 03E00008 */  jr    $ra
/* 2431A4 80222A94 00000000 */   nop   
.type func_80222A54_ovl19, @function
.size func_80222A54_ovl19, . - func_80222A54_ovl19
