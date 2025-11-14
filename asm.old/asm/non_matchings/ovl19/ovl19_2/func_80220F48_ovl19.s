glabel func_80220F48_ovl19
/* 241658 80220F48 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 24165C 80220F4C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 241660 80220F50 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 241664 80220F54 AFBF0014 */  sw    $ra, 0x14($sp)
/* 241668 80220F58 AFA40018 */  sw    $a0, 0x18($sp)
/* 24166C 80220F5C 8DCF0000 */  lw    $t7, ($t6)
/* 241670 80220F60 3C04800E */ lui $a0, %hi(D_800E7880)
/* 241674 80220F64 3C068023 */  lui   $a2, %hi(D_8022F0E8) # $a2, 0x8023
/* 241678 80220F68 008F2021 */  addu  $a0, $a0, $t7
/* 24167C 80220F6C 90847880 */ lbu $a0, %lo(D_800E7880)($a0)
/* 241680 80220F70 24C6F0E8 */  addiu $a2, %lo(D_8022F0E8) # addiu $a2, $a2, -0xf18
/* 241684 80220F74 0C02911F */  jal   call_virtual_function
/* 241688 80220F78 24050004 */   li    $a1, 4
/* 24168C 80220F7C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 241690 80220F80 27BD0018 */  addiu $sp, $sp, 0x18
/* 241694 80220F84 03E00008 */  jr    $ra
/* 241698 80220F88 00000000 */   nop   
.type func_80220F48_ovl19, @function
.size func_80220F48_ovl19, . - func_80220F48_ovl19
