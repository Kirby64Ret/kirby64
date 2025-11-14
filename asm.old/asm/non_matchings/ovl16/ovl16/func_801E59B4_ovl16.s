glabel func_801E59B4_ovl16
/* 21BC64 801E59B4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 21BC68 801E59B8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 21BC6C 801E59BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 21BC70 801E59C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 21BC74 801E59C4 AFA40018 */  sw    $a0, 0x18($sp)
/* 21BC78 801E59C8 8DCF0000 */  lw    $t7, ($t6)
/* 21BC7C 801E59CC 3C01800F */ lui $at, %hi(D_800E8920)
/* 21BC80 801E59D0 000FC080 */  sll   $t8, $t7, 2
/* 21BC84 801E59D4 00380821 */  addu  $at, $at, $t8
/* 21BC88 801E59D8 0C076D00 */  jal   func_801DB400_ovl16
/* 21BC8C 801E59DC AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 21BC90 801E59E0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 21BC94 801E59E4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 21BC98 801E59E8 3C0B800E */ lui $t3, %hi(D_800E1B50)
/* 21BC9C 801E59EC 3C19801E */  lui   $t9, %hi(D_801D9948) # $t9, 0x801e
/* 21BCA0 801E59F0 8D090000 */  lw    $t1, ($t0)
/* 21BCA4 801E59F4 27399948 */  addiu $t9, %lo(D_801D9948) # addiu $t9, $t9, -0x66b8
/* 21BCA8 801E59F8 00002025 */  move  $a0, $zero
/* 21BCAC 801E59FC 00095080 */  sll   $t2, $t1, 2
/* 21BCB0 801E5A00 016A5821 */  addu  $t3, $t3, $t2
/* 21BCB4 801E5A04 8D6B1B50 */ lw $t3, %lo(D_800E1B50)($t3)
/* 21BCB8 801E5A08 00002825 */  move  $a1, $zero
/* 21BCBC 801E5A0C 00003025 */  move  $a2, $zero
/* 21BCC0 801E5A10 0C0770C5 */  jal   func_801DC314_ovl16
/* 21BCC4 801E5A14 AD79008C */   sw    $t9, 0x8c($t3)
/* 21BCC8 801E5A18 8FBF0014 */  lw    $ra, 0x14($sp)
/* 21BCCC 801E5A1C 27BD0018 */  addiu $sp, $sp, 0x18
/* 21BCD0 801E5A20 03E00008 */  jr    $ra
/* 21BCD4 801E5A24 00000000 */   nop   
.type func_801E59B4_ovl16, @function
.size func_801E59B4_ovl16, . - func_801E59B4_ovl16
