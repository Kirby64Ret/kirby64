glabel func_801DC750_ovl12
/* 1ECA90 801DC750 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1ECA94 801DC754 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1ECA98 801DC758 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1ECA9C 801DC75C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1ECAA0 801DC760 AFA40018 */  sw         $a0, 0x18($sp)
/* 1ECAA4 801DC764 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1ECAA8 801DC768 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1ECAAC 801DC76C 240E0005 */  addiu      $t6, $zero, 0x5
/* 1ECAB0 801DC770 000FC080 */  sll        $t8, $t7, 2
/* 1ECAB4 801DC774 00380821 */  addu       $at, $at, $t8
/* 1ECAB8 801DC778 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
.L801DC77C_ovl9:
/* 1ECABC 801DC77C 8C590000 */  lw         $t9, 0x0($v0)
/* 1ECAC0 801DC780 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 1ECAC4 801DC784 44802000 */  mtc1       $zero, $f4
glabel func_801DC788_ovl13
/* 1ECAC8 801DC788 00194080 */  sll        $t0, $t9, 2
/* 1ECACC 801DC78C 00280821 */  addu       $at, $at, $t0
/* 1ECAD0 801DC790 AC209FE0 */  sw         $zero, %lo(D_800E9FE0)($at)
/* 1ECAD4 801DC794 8C490000 */  lw         $t1, 0x0($v0)
/* 1ECAD8 801DC798 3C04800E */  lui        $a0, %hi(D_800E6690)
/* 1ECADC 801DC79C 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
/* 1ECAE0 801DC7A0 00095080 */  sll        $t2, $t1, 2
.L801DC7A4_ovl11:
/* 1ECAE4 801DC7A4 008A5821 */  addu       $t3, $a0, $t2
/* 1ECAE8 801DC7A8 E5640000 */  swc1       $f4, 0x0($t3)
/* 1ECAEC 801DC7AC 8C430000 */  lw         $v1, 0x0($v0)
.L801DC7B0_ovl16:
/* 1ECAF0 801DC7B0 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1ECAF4 801DC7B4 240E0001 */  addiu      $t6, $zero, 0x1
glabel func_801DC7B8_ovl11
/* 1ECAF8 801DC7B8 00031880 */  sll        $v1, $v1, 2
/* 1ECAFC 801DC7BC 00836021 */  addu       $t4, $a0, $v1
/* 1ECB00 801DC7C0 C5860000 */  lwc1       $f6, 0x0($t4)
/* 1ECB04 801DC7C4 00230821 */  addu       $at, $at, $v1
.L801DC7C8_ovl9:
/* 1ECB08 801DC7C8 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* 1ECB0C 801DC7CC 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1ECB10 801DC7D0 3C01801E */  lui        $at, %hi(func_801E2D34_ovl13 + 0x28)
/* 1ECB14 801DC7D4 C4282D5C */  lwc1       $f8, %lo(func_801E2D34_ovl13 + 0x28)($at)
.L801DC7D8_ovl9:
/* 1ECB18 801DC7D8 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1ECB1C 801DC7DC 000D7880 */  sll        $t7, $t5, 2
/* 1ECB20 801DC7E0 002F0821 */  addu       $at, $at, $t7
/* 1ECB24 801DC7E4 E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
/* 1ECB28 801DC7E8 3C01800D */  lui        $at, %hi(D_800D7098 + 0x2C)
/* 1ECB2C 801DC7EC 0C02BE85 */  jal        func_800AFA14
/* 1ECB30 801DC7F0 AC2E70C4 */   sw        $t6, %lo(D_800D7098 + 0x2C)($at)
/* 1ECB34 801DC7F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1ECB38 801DC7F8 27BD0018 */  addiu      $sp, $sp, 0x18
.L801DC7FC_ovl14:
/* 1ECB3C 801DC7FC 03E00008 */  jr         $ra
/* 1ECB40 801DC800 00000000 */   nop
