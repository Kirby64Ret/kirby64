glabel func_80155498_ovl3
/* 0B5ED8 80155498 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0B5EDC 8015549C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0B5EE0 801554A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B5EE4 801554A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B5EE8 801554A8 8DC30000 */  lw    $v1, ($t6)
/* 0B5EEC 801554AC 3C0F800E */  lui   $t7, 0x800e
/* 0B5EF0 801554B0 3C01800F */  lui   $at, 0x800f
/* 0B5EF4 801554B4 00031880 */  sll   $v1, $v1, 2
/* 0B5EF8 801554B8 01E37821 */  addu  $t7, $t7, $v1
/* 0B5EFC 801554BC 8DEF0490 */  lw    $t7, 0x0490($t7)
/* 0B5F00 801554C0 00230821 */  addu  $at, $at, $v1
/* 0B5F04 801554C4 00001025 */  move  $v0, $zero
/* 0B5F08 801554C8 15E00003 */  bnez  $t7, .L801554D8_ovl3
/* 0B5F0C 801554CC 00000000 */   nop   
/* 0B5F10 801554D0 1000000A */  b     .L801554FC_ovl3
/* 0B5F14 801554D4 AC208920 */   sw    $zero, -0x76e0($at)
.L801554D8_ovl3:
/* 0B5F18 801554D8 0C055237 */  jal   func_801548DC_ovl3
/* 0B5F1C 801554DC 00000000 */   nop   
/* 0B5F20 801554E0 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0B5F24 801554E4 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0B5F28 801554E8 3C02800F */  lui   $v0, 0x800f
/* 0B5F2C 801554EC 8F190000 */  lw    $t9, ($t8)
/* 0B5F30 801554F0 00194080 */  sll   $t0, $t9, 2
/* 0B5F34 801554F4 00481021 */  addu  $v0, $v0, $t0
/* 0B5F38 801554F8 8C428920 */  lw    $v0, -0x76e0($v0)
.L801554FC_ovl3:
/* 0B5F3C 801554FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B5F40 80155500 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B5F44 80155504 03E00008 */  jr    $ra
/* 0B5F48 80155508 00000000 */   nop   
.type func_80155498_ovl3, @function
.size func_80155498_ovl3, . - func_80155498_ovl3
