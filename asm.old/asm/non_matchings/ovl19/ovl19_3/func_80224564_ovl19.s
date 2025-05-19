glabel func_80224564_ovl19
/* 244C74 80224564 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 244C78 80224568 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 244C7C 8022456C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 244C80 80224570 AFBF0014 */  sw    $ra, 0x14($sp)
/* 244C84 80224574 AFA40018 */  sw    $a0, 0x18($sp)
/* 244C88 80224578 8DCF0000 */  lw    $t7, ($t6)
/* 244C8C 8022457C 3C01800E */ lui $at, %hi(D_800DE190)
/* 244C90 80224580 000FC080 */  sll   $t8, $t7, 2
/* 244C94 80224584 00380821 */  addu  $at, $at, $t8
/* 244C98 80224588 0C02BE85 */  jal   func_800AFA14
/* 244C9C 8022458C AC20E190 */ sw $zero, %lo(D_800DE190)($at)
/* 244CA0 80224590 8FBF0014 */  lw    $ra, 0x14($sp)
/* 244CA4 80224594 27BD0018 */  addiu $sp, $sp, 0x18
/* 244CA8 80224598 03E00008 */  jr    $ra
/* 244CAC 8022459C 00000000 */   nop   
.type func_80224564_ovl19, @function
.size func_80224564_ovl19, . - func_80224564_ovl19
