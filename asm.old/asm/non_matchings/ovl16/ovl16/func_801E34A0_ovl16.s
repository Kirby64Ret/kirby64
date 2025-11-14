glabel func_801E34A0_ovl16
/* 219750 801E34A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 219754 801E34A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 219758 801E34A8 0C077D8B */  jal   func_801DF62C_ovl16
/* 21975C 801E34AC AFA40018 */   sw    $a0, 0x18($sp)
/* 219760 801E34B0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 219764 801E34B4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 219768 801E34B8 3C01800F */ lui $at, %hi(D_800E8920)
/* 21976C 801E34BC 8DCF0000 */  lw    $t7, ($t6)
/* 219770 801E34C0 000FC080 */  sll   $t8, $t7, 2
/* 219774 801E34C4 00380821 */  addu  $at, $at, $t8
/* 219778 801E34C8 0C076D00 */  jal   func_801DB400_ovl16
/* 21977C 801E34CC AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 219780 801E34D0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 219784 801E34D4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 219788 801E34D8 3C0B800E */ lui $t3, %hi(D_800E1B50)
/* 21978C 801E34DC 3C19801E */  lui   $t9, %hi(D_801D9798) # $t9, 0x801e
/* 219790 801E34E0 8D090000 */  lw    $t1, ($t0)
/* 219794 801E34E4 27399798 */  addiu $t9, %lo(D_801D9798) # addiu $t9, $t9, -0x6868
/* 219798 801E34E8 00002025 */  move  $a0, $zero
/* 21979C 801E34EC 00095080 */  sll   $t2, $t1, 2
/* 2197A0 801E34F0 016A5821 */  addu  $t3, $t3, $t2
/* 2197A4 801E34F4 8D6B1B50 */ lw $t3, %lo(D_800E1B50)($t3)
/* 2197A8 801E34F8 00002825 */  move  $a1, $zero
/* 2197AC 801E34FC 00003025 */  move  $a2, $zero
/* 2197B0 801E3500 0C0770C5 */  jal   func_801DC314_ovl16
/* 2197B4 801E3504 AD79008C */   sw    $t9, 0x8c($t3)
/* 2197B8 801E3508 8FBF0014 */  lw    $ra, 0x14($sp)
/* 2197BC 801E350C 27BD0018 */  addiu $sp, $sp, 0x18
/* 2197C0 801E3510 03E00008 */  jr    $ra
/* 2197C4 801E3514 00000000 */   nop   
.type func_801E34A0_ovl16, @function
.size func_801E34A0_ovl16, . - func_801E34A0_ovl16
