glabel func_80221DDC_ovl19
/* 2424EC 80221DDC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 2424F0 80221DE0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 2424F4 80221DE4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 2424F8 80221DE8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 2424FC 80221DEC AFA40018 */  sw    $a0, 0x18($sp)
/* 242500 80221DF0 8DCF0000 */  lw    $t7, ($t6)
/* 242504 80221DF4 3C04800E */ lui $a0, %hi(D_800E7880)
/* 242508 80221DF8 3C068023 */  lui   $a2, %hi(D_8022F144) # $a2, 0x8023
/* 24250C 80221DFC 008F2021 */  addu  $a0, $a0, $t7
/* 242510 80221E00 90847880 */ lbu $a0, %lo(D_800E7880)($a0)
/* 242514 80221E04 24C6F144 */  addiu $a2, %lo(D_8022F144) # addiu $a2, $a2, -0xebc
/* 242518 80221E08 0C02911F */  jal   call_virtual_function
/* 24251C 80221E0C 24050002 */   li    $a1, 2
/* 242520 80221E10 8FBF0014 */  lw    $ra, 0x14($sp)
/* 242524 80221E14 27BD0018 */  addiu $sp, $sp, 0x18
/* 242528 80221E18 03E00008 */  jr    $ra
/* 24252C 80221E1C 00000000 */   nop   
.type func_80221DDC_ovl19, @function
.size func_80221DDC_ovl19, . - func_80221DDC_ovl19
