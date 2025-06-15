glabel func_801EB1A4_ovl10
/* 1DBF14 801EB1A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DBF18 801EB1A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DBF1C 801EB1AC 0C006291 */  jal   random_soft_s32_range
/* 1DBF20 801EB1B0 24040003 */   li    $a0, 3
/* 1DBF24 801EB1B4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1DBF28 801EB1B8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1DBF2C 801EB1BC 3C19800F */  lui   $t9, %hi(D_800E9FE0) # $t9, 0x800f
/* 1DBF30 801EB1C0 27399FE0 */  addiu $t9, %lo(D_800E9FE0) # addiu $t9, $t9, -0x6020
/* 1DBF34 801EB1C4 8DCF0000 */  lw    $t7, ($t6)
/* 1DBF38 801EB1C8 24450001 */  addiu $a1, $v0, 1
/* 1DBF3C 801EB1CC 00401825 */  move  $v1, $v0
/* 1DBF40 801EB1D0 000FC080 */  sll   $t8, $t7, 2
/* 1DBF44 801EB1D4 03192021 */  addu  $a0, $t8, $t9
/* 1DBF48 801EB1D8 8C880000 */  lw    $t0, ($a0)
/* 1DBF4C 801EB1DC 28A10003 */  slti  $at, $a1, 3
/* 1DBF50 801EB1E0 54480006 */  bnel  $v0, $t0, .L801EB1FC_ovl10
/* 1DBF54 801EB1E4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1DBF58 801EB1E8 14200003 */  bnez  $at, .L801EB1F8_ovl10
/* 1DBF5C 801EB1EC 00A01825 */   move  $v1, $a1
/* 1DBF60 801EB1F0 10000001 */  b     .L801EB1F8_ovl10
/* 1DBF64 801EB1F4 00001825 */   move  $v1, $zero
.L801EB1F8_ovl10:
/* 1DBF68 801EB1F8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801EB1FC_ovl10:
/* 1DBF6C 801EB1FC AC830000 */  sw    $v1, ($a0)
/* 1DBF70 801EB200 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DBF74 801EB204 03E00008 */  jr    $ra
/* 1DBF78 801EB208 00000000 */   nop   
.type func_801EB1A4_ovl10, @function
.size func_801EB1A4_ovl10, . - func_801EB1A4_ovl10
