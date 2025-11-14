glabel func_801E75DC_ovl16
/* 21D88C 801E75DC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 21D890 801E75E0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 21D894 801E75E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 21D898 801E75E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 21D89C 801E75EC AFA40018 */  sw    $a0, 0x18($sp)
/* 21D8A0 801E75F0 8DCF0000 */  lw    $t7, ($t6)
/* 21D8A4 801E75F4 3C01800F */ lui $at, %hi(D_800E8920)
/* 21D8A8 801E75F8 000FC080 */  sll   $t8, $t7, 2
/* 21D8AC 801E75FC 00380821 */  addu  $at, $at, $t8
/* 21D8B0 801E7600 0C076D00 */  jal   func_801DB400_ovl16
/* 21D8B4 801E7604 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 21D8B8 801E7608 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 21D8BC 801E760C 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 21D8C0 801E7610 3C0B800E */ lui $t3, %hi(D_800E1B50)
/* 21D8C4 801E7614 3C19801E */  lui   $t9, %hi(D_801D9AB0) # $t9, 0x801e
/* 21D8C8 801E7618 8D090000 */  lw    $t1, ($t0)
/* 21D8CC 801E761C 27399AB0 */  addiu $t9, %lo(D_801D9AB0) # addiu $t9, $t9, -0x6550
/* 21D8D0 801E7620 00002025 */  move  $a0, $zero
/* 21D8D4 801E7624 00095080 */  sll   $t2, $t1, 2
/* 21D8D8 801E7628 016A5821 */  addu  $t3, $t3, $t2
/* 21D8DC 801E762C 8D6B1B50 */ lw $t3, %lo(D_800E1B50)($t3)
/* 21D8E0 801E7630 00002825 */  move  $a1, $zero
/* 21D8E4 801E7634 00003025 */  move  $a2, $zero
/* 21D8E8 801E7638 0C0770C5 */  jal   func_801DC314_ovl16
/* 21D8EC 801E763C AD79008C */   sw    $t9, 0x8c($t3)
/* 21D8F0 801E7640 8FBF0014 */  lw    $ra, 0x14($sp)
/* 21D8F4 801E7644 27BD0018 */  addiu $sp, $sp, 0x18
/* 21D8F8 801E7648 03E00008 */  jr    $ra
/* 21D8FC 801E764C 00000000 */   nop   
.type func_801E75DC_ovl16, @function
.size func_801E75DC_ovl16, . - func_801E75DC_ovl16
