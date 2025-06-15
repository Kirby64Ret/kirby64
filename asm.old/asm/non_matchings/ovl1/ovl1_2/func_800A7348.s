glabel func_800A7348
/* 04F598 800A7348 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04F59C 800A734C AFBF0014 */  sw    $ra, 0x14($sp)
/* 04F5A0 800A7350 3C04800D */  lui   $a0, %hi(D_800D79B4) # $a0, 0x800d
/* 04F5A4 800A7354 3C05800A */  lui   $a1, %hi(D_800A72AC) # $a1, 0x800a
/* 04F5A8 800A7358 24A572AC */  addiu $a1, %lo(D_800A72AC) # addiu $a1, $a1, 0x72ac
/* 04F5AC 800A735C 8C8479B4 */  lw    $a0, %lo(D_800D79B4)($a0)
/* 04F5B0 800A7360 24060001 */  li    $a2, 1
/* 04F5B4 800A7364 0C002286 */  jal   func_80008A18
/* 04F5B8 800A7368 00003825 */   move  $a3, $zero
/* 04F5BC 800A736C 3C02800D */  lui   $v0, %hi(D_800D79B4) # $v0, 0x800d
/* 04F5C0 800A7370 8C4279B4 */  lw    $v0, %lo(D_800D79B4)($v0)
/* 04F5C4 800A7374 8C4E0044 */  lw    $t6, 0x44($v0)
/* 04F5C8 800A7378 35CF0001 */  ori   $t7, $t6, 1
/* 04F5CC 800A737C 0C05D921 */  jal   func_80176484_ovl1
/* 04F5D0 800A7380 AC4F0044 */   sw    $t7, 0x44($v0)
/* 04F5D4 800A7384 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04F5D8 800A7388 27BD0018 */  addiu $sp, $sp, 0x18
/* 04F5DC 800A738C 03E00008 */  jr    $ra
/* 04F5E0 800A7390 00000000 */   nop   
.type func_800A7348, @function
.size func_800A7348, . - func_800A7348
