glabel func_80225DF8_ovl19
/* 246508 80225DF8 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 24650C 80225DFC 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 246510 80225E00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 246514 80225E04 AFBF0014 */  sw    $ra, 0x14($sp)
/* 246518 80225E08 AFA40018 */  sw    $a0, 0x18($sp)
/* 24651C 80225E0C 8DF80000 */  lw    $t8, ($t7)
/* 246520 80225E10 3C01800E */ lui $at, %hi(D_800DE190)
/* 246524 80225E14 240E0001 */  li    $t6, 1
/* 246528 80225E18 0018C880 */  sll   $t9, $t8, 2
/* 24652C 80225E1C 00390821 */  addu  $at, $at, $t9
/* 246530 80225E20 0C02BE85 */  jal   func_800AFA14
/* 246534 80225E24 AC2EE190 */ sw $t6, %lo(D_800DE190)($at)
/* 246538 80225E28 8FBF0014 */  lw    $ra, 0x14($sp)
/* 24653C 80225E2C 27BD0018 */  addiu $sp, $sp, 0x18
/* 246540 80225E30 03E00008 */  jr    $ra
/* 246544 80225E34 00000000 */   nop   
.type func_80225DF8_ovl19, @function
.size func_80225DF8_ovl19, . - func_80225DF8_ovl19
