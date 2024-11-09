glabel func_800BC298
/* 0644E8 800BC298 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0644EC 800BC29C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0644F0 800BC2A0 0C0062AB */  jal   random_u16
/* 0644F4 800BC2A4 AFA40018 */   sw    $a0, 0x18($sp)
/* 0644F8 800BC2A8 304E0003 */  andi  $t6, $v0, 3
/* 0644FC 800BC2AC 24010002 */  li    $at, 2
/* 064500 800BC2B0 15C1000E */  bne   $t6, $at, .L800BC2EC_ovl1
/* 064504 800BC2B4 8FA40018 */   lw    $a0, 0x18($sp)
/* 064508 800BC2B8 0C03E228 */  jal   func_800F88A0
/* 06450C 800BC2BC AFA40018 */   sw    $a0, 0x18($sp)
/* 064510 800BC2C0 1440000A */  bnez  $v0, .L800BC2EC_ovl1
/* 064514 800BC2C4 8FA40018 */   lw    $a0, 0x18($sp)
/* 064518 800BC2C8 3C02800D */  lui   $v0, %hi(D_800D6E54) # $v0, 0x800d
/* 06451C 800BC2CC 3C03800D */  lui   $v1, %hi(D_800D6E90) # $v1, 0x800d
/* 064520 800BC2D0 24636E90 */  addiu $v1, %lo(D_800D6E90) # addiu $v1, $v1, 0x6e90
/* 064524 800BC2D4 24426E54 */  addiu $v0, %lo(D_800D6E54) # addiu $v0, $v0, 0x6e54
/* 064528 800BC2D8 AC400000 */  sw    $zero, ($v0)
/* 06452C 800BC2DC AC600000 */  sw    $zero, ($v1)
/* 064530 800BC2E0 3C018013 */  lui   $at, %hi(D_8012E850) # $at, 0x8013
/* 064534 800BC2E4 1000000C */  b     .L800BC318_ovl1
/* 064538 800BC2E8 AC20E850 */   sw    $zero, %lo(D_8012E850)($at)
.L800BC2EC_ovl1:
/* 06453C 800BC2EC 04810002 */  bgez  $a0, .L800BC2F8_ovl1
/* 064540 800BC2F0 3C02800D */   lui   $v0, %hi(D_800D6E54) # $v0, 0x800d
/* 064544 800BC2F4 00002025 */  move  $a0, $zero
.L800BC2F8_ovl1:
/* 064548 800BC2F8 28810024 */  slti  $at, $a0, 0x24
/* 06454C 800BC2FC 14200002 */  bnez  $at, .L800BC308_ovl1
/* 064550 800BC300 24426E54 */   addiu $v0, %lo(D_800D6E54) # addiu $v0, $v0, 0x6e54
/* 064554 800BC304 24040023 */  li    $a0, 35
.L800BC308_ovl1:
/* 064558 800BC308 3C03800D */  lui   $v1, %hi(D_800D6E90) # $v1, 0x800d
/* 06455C 800BC30C 24636E90 */  addiu $v1, %lo(D_800D6E90) # addiu $v1, $v1, 0x6e90
/* 064560 800BC310 AC640000 */  sw    $a0, ($v1)
/* 064564 800BC314 AC440000 */  sw    $a0, ($v0)
.L800BC318_ovl1:
/* 064568 800BC318 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06456C 800BC31C 27BD0018 */  addiu $sp, $sp, 0x18
/* 064570 800BC320 03E00008 */  jr    $ra
/* 064574 800BC324 00000000 */   nop   
.type func_800BC298, @function
.size func_800BC298, . - func_800BC298
