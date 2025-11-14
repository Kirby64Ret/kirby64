glabel func_802224BC_ovl19
/* 242BCC 802224BC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 242BD0 802224C0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 242BD4 802224C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 242BD8 802224C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 242BDC 802224CC AFA40018 */  sw    $a0, 0x18($sp)
/* 242BE0 802224D0 8DCF0000 */  lw    $t7, ($t6)
/* 242BE4 802224D4 3C04800E */ lui $a0, %hi(D_800E7880)
/* 242BE8 802224D8 3C068023 */  lui   $a2, %hi(D_8022F14C) # $a2, 0x8023
/* 242BEC 802224DC 008F2021 */  addu  $a0, $a0, $t7
/* 242BF0 802224E0 90847880 */ lbu $a0, %lo(D_800E7880)($a0)
/* 242BF4 802224E4 24C6F14C */  addiu $a2, %lo(D_8022F14C) # addiu $a2, $a2, -0xeb4
/* 242BF8 802224E8 0C02911F */  jal   call_virtual_function
/* 242BFC 802224EC 24050003 */   li    $a1, 3
/* 242C00 802224F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 242C04 802224F4 27BD0018 */  addiu $sp, $sp, 0x18
/* 242C08 802224F8 03E00008 */  jr    $ra
/* 242C0C 802224FC 00000000 */   nop   
.type func_802224BC_ovl19, @function
.size func_802224BC_ovl19, . - func_802224BC_ovl19
