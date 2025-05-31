glabel func_8009B99C
/* 043BEC 8009B99C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 043BF0 8009B9A0 AFB10018 */  sw    $s1, 0x18($sp)
/* 043BF4 8009B9A4 3C11800D */  lui   $s1, %hi(D_800D69C0) # $s1, 0x800d
/* 043BF8 8009B9A8 263169C0 */  addiu $s1, %lo(D_800D69C0) # addiu $s1, $s1, 0x69c0
/* 043BFC 8009B9AC 3C02800D */  lui   $v0, %hi(D_800D69C8) # $v0, 0x800d
/* 043C00 8009B9B0 3C03800D */  lui   $v1, %hi(D_800D6A08) # $v1, 0x800d
/* 043C04 8009B9B4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 043C08 8009B9B8 AFB00014 */  sw    $s0, 0x14($sp)
/* 043C0C 8009B9BC AE200000 */  sw    $zero, ($s1)
/* 043C10 8009B9C0 24636A08 */  addiu $v1, %lo(D_800D6A08) # addiu $v1, $v1, 0x6a08
/* 043C14 8009B9C4 244269C8 */  addiu $v0, %lo(D_800D69C8) # addiu $v0, $v0, 0x69c8
.L8009B9C8_ovl1:
/* 043C18 8009B9C8 24420004 */  addiu $v0, $v0, 4
/* 043C1C 8009B9CC 0043082B */  sltu  $at, $v0, $v1
/* 043C20 8009B9D0 1420FFFD */  bnez  $at, .L8009B9C8_ovl1
/* 043C24 8009B9D4 AC40FFFC */   sw    $zero, -4($v0)
/* 043C28 8009B9D8 2490FFFF */  addiu $s0, $a0, -1
/* 043C2C 8009B9DC 0600000D */  bltz  $s0, .L8009BA14_ovl1
.L8009B9E0_ovl1:
/* 043C30 8009B9E0 24040064 */   li    $a0, 100
/* 043C34 8009B9E4 0C001500 */  jal   alloc_with_alignment
/* 043C38 8009B9E8 24050004 */   li    $a1, 4
/* 043C3C 8009B9EC 54400004 */  bnezl $v0, .L8009BA00_ovl1
/* 043C40 8009B9F0 8E2E0000 */   lw    $t6, ($s1)
/* 043C44 8009B9F4 10000017 */  b     .L8009BA54_ovl1
/* 043C48 8009B9F8 00001025 */   move  $v0, $zero
/* 043C4C 8009B9FC 8E2E0000 */  lw    $t6, ($s1)
.L8009BA00_ovl1:
/* 043C50 8009BA00 2610FFFF */  addiu $s0, $s0, -1
/* 043C54 8009BA04 3C01800D */  lui   $at, %hi(D_800D69C0) # $at, 0x800d
/* 043C58 8009BA08 AC4E0000 */  sw    $t6, ($v0)
/* 043C5C 8009BA0C 0601FFF4 */  bgez  $s0, .L8009B9E0_ovl1
/* 043C60 8009BA10 AC2269C0 */   sw    $v0, %lo(D_800D69C0)($at)
.L8009BA14_ovl1:
/* 043C64 8009BA14 3C01800D */  lui   $at, %hi(D_800D6AE0) # $at, 0x800d
/* 043C68 8009BA18 A4206AE0 */  sh    $zero, %lo(D_800D6AE0)($at)
/* 043C6C 8009BA1C 3C01800D */  lui   $at, %hi(D_800D6AE6) # $at, 0x800d
/* 043C70 8009BA20 A4206AE6 */  sh    $zero, %lo(D_800D6AE6)($at)
/* 043C74 8009BA24 0C002DA2 */  jal   func_8000B688_ovl1
/* 043C78 8009BA28 2404FFFA */   li    $a0, -6
/* 043C7C 8009BA2C 10400003 */  beqz  $v0, .L8009BA3C_ovl1
/* 043C80 8009BA30 00000000 */   nop   
/* 043C84 8009BA34 10000007 */  b     .L8009BA54_ovl1
/* 043C88 8009BA38 00001025 */   move  $v0, $zero
.L8009BA3C_ovl1:
/* 043C8C 8009BA3C 3C05800A */  lui   $a1, %hi(D_8009E834) # $a1, 0x800a
/* 043C90 8009BA40 24A5E834 */  addiu $a1, %lo(D_8009E834) # addiu $a1, $a1, -0x17cc
/* 043C94 8009BA44 2404FFFA */  li    $a0, -6
/* 043C98 8009BA48 00003025 */  move  $a2, $zero
/* 043C9C 8009BA4C 0C002860 */  jal   func_8000A180
/* 043CA0 8009BA50 3C078000 */   lui   $a3, 0x8000
.L8009BA54_ovl1:
/* 043CA4 8009BA54 8FBF001C */  lw    $ra, 0x1c($sp)
/* 043CA8 8009BA58 8FB00014 */  lw    $s0, 0x14($sp)
/* 043CAC 8009BA5C 8FB10018 */  lw    $s1, 0x18($sp)
/* 043CB0 8009BA60 03E00008 */  jr    $ra
/* 043CB4 8009BA64 27BD0020 */   addiu $sp, $sp, 0x20
.type func_8009B99C, @function
.size func_8009B99C, . - func_8009B99C
