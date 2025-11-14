glabel func_802244FC_ovl18
/* 236E9C 802244FC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 236EA0 80224500 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 236EA4 80224504 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 236EA8 80224508 AFBF0014 */  sw    $ra, 0x14($sp)
/* 236EAC 8022450C 8DC20000 */  lw    $v0, ($t6)
/* 236EB0 80224510 3C0F800F */  lui   $t7, %hi(D_800E98E0) # $t7, 0x800f
/* 236EB4 80224514 25EF98E0 */  addiu $t7, %lo(D_800E98E0) # addiu $t7, $t7, -0x6720
/* 236EB8 80224518 00021080 */  sll   $v0, $v0, 2
/* 236EBC 8022451C 004F1821 */  addu  $v1, $v0, $t7
/* 236EC0 80224520 8C650000 */  lw    $a1, ($v1)
/* 236EC4 80224524 14A00009 */  bnez  $a1, .L8022454C_ovl18
/* 236EC8 80224528 24B8FFFF */   addiu $t8, $a1, -1
/* 236ECC 8022452C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 236ED0 80224530 00822021 */  addu  $a0, $a0, $v0
/* 236ED4 80224534 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 236ED8 80224538 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 236EDC 8022453C 0C02C7B2 */  jal   assign_new_process_entry
/* 236EE0 80224540 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 236EE4 80224544 10000004 */  b     .L80224558_ovl18
/* 236EE8 80224548 8FBF0014 */   lw    $ra, 0x14($sp)
.L8022454C_ovl18:
/* 236EEC 8022454C 0C06B3D7 */  jal   func_801ACF5C_ovl7
/* 236EF0 80224550 AC780000 */   sw    $t8, ($v1)
/* 236EF4 80224554 8FBF0014 */  lw    $ra, 0x14($sp)
.L80224558_ovl18:
/* 236EF8 80224558 27BD0018 */  addiu $sp, $sp, 0x18
/* 236EFC 8022455C 03E00008 */  jr    $ra
/* 236F00 80224560 00000000 */   nop   
.type func_802244FC_ovl18, @function

/* 236F04 80224564 00000000 */  nop   
/* 236F08 80224568 00000000 */  nop   
/* 236F0C 8022456C 00000000 */  nop   
/* 236F10 80224570 00000000 */  nop   
/* 236F14 80224574 00000000 */  nop   
/* 236F18 80224578 00000000 */  nop   
/* 236F1C 8022457C 00000000 */  nop   
.type func_802244FC_ovl18, @function
.size func_802244FC_ovl18, . - func_802244FC_ovl18
