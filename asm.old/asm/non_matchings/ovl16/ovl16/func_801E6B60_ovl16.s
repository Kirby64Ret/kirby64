glabel func_801E6B60_ovl16
/* 21CE10 801E6B60 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 21CE14 801E6B64 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 21CE18 801E6B68 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 21CE1C 801E6B6C AFBF0014 */  sw    $ra, 0x14($sp)
/* 21CE20 801E6B70 AFA40018 */  sw    $a0, 0x18($sp)
/* 21CE24 801E6B74 8DCF0000 */  lw    $t7, ($t6)
/* 21CE28 801E6B78 3C01800F */ lui $at, %hi(D_800E8920)
/* 21CE2C 801E6B7C 000FC080 */  sll   $t8, $t7, 2
/* 21CE30 801E6B80 00380821 */  addu  $at, $at, $t8
/* 21CE34 801E6B84 0C076D00 */  jal   func_801DB400_ovl16
/* 21CE38 801E6B88 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 21CE3C 801E6B8C 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 21CE40 801E6B90 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 21CE44 801E6B94 3C0B800E */ lui $t3, %hi(D_800E1B50)
/* 21CE48 801E6B98 3C19801E */  lui   $t9, %hi(D_801D9A20) # $t9, 0x801e
/* 21CE4C 801E6B9C 8D090000 */  lw    $t1, ($t0)
/* 21CE50 801E6BA0 27399A20 */  addiu $t9, %lo(D_801D9A20) # addiu $t9, $t9, -0x65e0
/* 21CE54 801E6BA4 00002025 */  move  $a0, $zero
/* 21CE58 801E6BA8 00095080 */  sll   $t2, $t1, 2
/* 21CE5C 801E6BAC 016A5821 */  addu  $t3, $t3, $t2
/* 21CE60 801E6BB0 8D6B1B50 */ lw $t3, %lo(D_800E1B50)($t3)
/* 21CE64 801E6BB4 00002825 */  move  $a1, $zero
/* 21CE68 801E6BB8 00003025 */  move  $a2, $zero
/* 21CE6C 801E6BBC 0C0770C5 */  jal   func_801DC314_ovl16
/* 21CE70 801E6BC0 AD79008C */   sw    $t9, 0x8c($t3)
/* 21CE74 801E6BC4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 21CE78 801E6BC8 27BD0018 */  addiu $sp, $sp, 0x18
/* 21CE7C 801E6BCC 03E00008 */  jr    $ra
/* 21CE80 801E6BD0 00000000 */   nop   
.type func_801E6B60_ovl16, @function
.size func_801E6B60_ovl16, . - func_801E6B60_ovl16
