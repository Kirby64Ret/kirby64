glabel func_80174A30_ovl3
/* 0D5470 80174A30 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D5474 80174A34 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D5478 80174A38 3C018013 */  lui   $at, %hi(D_8012E7F0) # $at, 0x8013
/* 0D547C 80174A3C AFA40018 */  sw    $a0, 0x18($sp)
/* 0D5480 80174A40 0C0473D6 */  jal   func_8011CF58
/* 0D5484 80174A44 AC20E7F0 */   sw    $zero, %lo(D_8012E7F0)($at)
/* 0D5488 80174A48 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0D548C 80174A4C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0D5490 80174A50 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0D5494 80174A54 240E0012 */  li    $t6, 18
/* 0D5498 80174A58 8DF80000 */  lw    $t8, ($t7)
/* 0D549C 80174A5C 3C040002 */  lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0D54A0 80174A60 34840007 */  ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
/* 0D54A4 80174A64 0018C880 */  sll   $t9, $t8, 2
/* 0D54A8 80174A68 00390821 */  addu  $at, $at, $t9
/* 0D54AC 80174A6C 0C048BC2 */  jal   func_80122F08
/* 0D54B0 80174A70 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 0D54B4 80174A74 24080002 */  li    $t0, 2
/* 0D54B8 80174A78 3C018013 */  lui   $at, %hi(D_8012E914) # $at, 0x8013
/* 0D54BC 80174A7C 0C04828A */  jal   func_80120A28
/* 0D54C0 80174A80 AC28E914 */   sw    $t0, %lo(D_8012E914)($at)
/* 0D54C4 80174A84 3C040002 */  lui   $a0, (0x000200DF >> 16) # lui $a0, 2
/* 0D54C8 80174A88 3C050002 */  lui   $a1, (0x000200E0 >> 16) # lui $a1, 2
/* 0D54CC 80174A8C 34A500E0 */  ori   $a1, (0x000200E0 & 0xFFFF) # ori $a1, $a1, 0xe0
/* 0D54D0 80174A90 348400DF */  ori   $a0, (0x000200DF & 0xFFFF) # ori $a0, $a0, 0xdf
/* 0D54D4 80174A94 0C048C3A */  jal   func_801230E8
/* 0D54D8 80174A98 00003025 */   move  $a2, $zero
/* 0D54DC 80174A9C 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0D54E0 80174AA0 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0D54E4 80174AA4 3C098017 */  lui   $t1, %hi(D_80174AEC) # $t1, 0x8017
/* 0D54E8 80174AA8 3C01800E */ lui $at, %hi(D_800DF310)
/* 0D54EC 80174AAC 8D4B0000 */  lw    $t3, ($t2)
/* 0D54F0 80174AB0 25294AEC */  addiu $t1, %lo(D_80174AEC) # addiu $t1, $t1, 0x4aec
/* 0D54F4 80174AB4 000B6080 */  sll   $t4, $t3, 2
/* 0D54F8 80174AB8 002C0821 */  addu  $at, $at, $t4
/* 0D54FC 80174ABC 0C02BC9F */  jal   func_800AF27C
/* 0D5500 80174AC0 AC29F310 */ sw $t1, %lo(D_800DF310)($at)
/* 0D5504 80174AC4 3C0D8013 */  lui   $t5, %hi(D_8012E7F0) # $t5, 0x8013
/* 0D5508 80174AC8 8DADE7F0 */  lw    $t5, %lo(D_8012E7F0)($t5)
/* 0D550C 80174ACC 3C018013 */  lui   $at, %hi(D_8012E7F0) # $at, 0x8013
/* 0D5510 80174AD0 25AF0001 */  addiu $t7, $t5, 1
/* 0D5514 80174AD4 0C02BE85 */  jal   func_800AFA14
/* 0D5518 80174AD8 AC2FE7F0 */   sw    $t7, %lo(D_8012E7F0)($at)
/* 0D551C 80174ADC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D5520 80174AE0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D5524 80174AE4 03E00008 */  jr    $ra
/* 0D5528 80174AE8 00000000 */   nop   
.type func_80174A30_ovl3, @function
.size func_80174A30_ovl3, . - func_80174A30_ovl3
