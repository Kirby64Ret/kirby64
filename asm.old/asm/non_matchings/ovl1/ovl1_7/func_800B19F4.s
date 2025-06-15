glabel func_800B19F4
/* 059C44 800B19F4 3C0E800E */  lui   $t6, %hi(D_800DD8D0) # $t6, 0x800e
/* 059C48 800B19F8 25CED8D0 */  addiu $t6, %lo(D_800DD8D0) # addiu $t6, $t6, -0x2730
/* 059C4C 800B19FC 00051080 */  sll   $v0, $a1, 2
/* 059C50 800B1A00 004E1821 */  addu  $v1, $v0, $t6
/* 059C54 800B1A04 8C660000 */  lw    $a2, ($v1)
/* 059C58 800B1A08 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 059C5C 800B1A0C AFBF0014 */  sw    $ra, 0x14($sp)
/* 059C60 800B1A10 30CF0080 */  andi  $t7, $a2, 0x80
/* 059C64 800B1A14 15E00009 */  bnez  $t7, .L800B1A3C_ovl1
/* 059C68 800B1A18 2401FF00 */   li    $at, -256
/* 059C6C 800B1A1C 309900FF */  andi  $t9, $a0, 0xff
/* 059C70 800B1A20 00C1C024 */  and   $t8, $a2, $at
/* 059C74 800B1A24 03194025 */  or    $t0, $t8, $t9
/* 059C78 800B1A28 3C04800E */ lui $a0, %hi(D_800DE350)
/* 059C7C 800B1A2C AC680000 */  sw    $t0, ($v1)
/* 059C80 800B1A30 00822021 */  addu  $a0, $a0, $v0
/* 059C84 800B1A34 0C02C71F */  jal   func_800B1C7C
/* 059C88 800B1A38 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
.L800B1A3C_ovl1:
/* 059C8C 800B1A3C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 059C90 800B1A40 27BD0018 */  addiu $sp, $sp, 0x18
/* 059C94 800B1A44 03E00008 */  jr    $ra
/* 059C98 800B1A48 00000000 */   nop   
.type func_800B19F4, @function
.size func_800B19F4, . - func_800B19F4
