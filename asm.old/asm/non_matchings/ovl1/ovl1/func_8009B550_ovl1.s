glabel func_8009B550
/* 0437A0 8009B550 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0437A4 8009B554 AFB30020 */  sw    $s3, 0x20($sp)
/* 0437A8 8009B558 3C13800D */  lui   $s3, %hi(D_800D6AEC) # $s3, 0x800d
/* 0437AC 8009B55C 26736AEC */  addiu $s3, %lo(D_800D6AEC) # addiu $s3, $s3, 0x6aec
/* 0437B0 8009B560 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0437B4 8009B564 AFB10018 */  sw    $s1, 0x18($sp)
/* 0437B8 8009B568 AFB00014 */  sw    $s0, 0x14($sp)
/* 0437BC 8009B56C 00808825 */  move  $s1, $a0
/* 0437C0 8009B570 00A09025 */  move  $s2, $a1
/* 0437C4 8009B574 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0437C8 8009B578 AE600000 */  sw    $zero, ($s3)
/* 0437CC 8009B57C 1880000E */  blez  $a0, .L8009B5B8_ovl1
/* 0437D0 8009B580 00008025 */   move  $s0, $zero
.L8009B584_ovl1:
/* 0437D4 8009B584 02402025 */  move  $a0, $s2
/* 0437D8 8009B588 0C001500 */  jal   alloc_with_alignment
/* 0437DC 8009B58C 24050004 */   li    $a1, 4
/* 0437E0 8009B590 54400004 */  bnezl $v0, .L8009B5A4_ovl1
/* 0437E4 8009B594 8E6E0000 */   lw    $t6, ($s3)
/* 0437E8 8009B598 1000000C */  b     .L8009B5CC_ovl1
/* 0437EC 8009B59C 02001025 */   move  $v0, $s0
/* 0437F0 8009B5A0 8E6E0000 */  lw    $t6, ($s3)
.L8009B5A4_ovl1:
/* 0437F4 8009B5A4 26100001 */  addiu $s0, $s0, 1
/* 0437F8 8009B5A8 3C01800D */  lui   $at, %hi(D_800D6AEC) # $at, 0x800d
/* 0437FC 8009B5AC AC4E0000 */  sw    $t6, ($v0)
/* 043800 8009B5B0 1611FFF4 */  bne   $s0, $s1, .L8009B584_ovl1
/* 043804 8009B5B4 AC226AEC */   sw    $v0, %lo(D_800D6AEC)($at)
.L8009B5B8_ovl1:
/* 043808 8009B5B8 3C01800D */  lui   $at, %hi(D_800D6AE4) # $at, 0x800d
/* 04380C 8009B5BC A4206AE4 */  sh    $zero, %lo(D_800D6AE4)($at)
/* 043810 8009B5C0 3C01800D */  lui   $at, %hi(D_800D6AEA) # $at, 0x800d
/* 043814 8009B5C4 A4206AEA */  sh    $zero, %lo(D_800D6AEA)($at)
/* 043818 8009B5C8 02001025 */  move  $v0, $s0
.L8009B5CC_ovl1:
/* 04381C 8009B5CC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 043820 8009B5D0 8FB00014 */  lw    $s0, 0x14($sp)
/* 043824 8009B5D4 8FB10018 */  lw    $s1, 0x18($sp)
/* 043828 8009B5D8 8FB2001C */  lw    $s2, 0x1c($sp)
/* 04382C 8009B5DC 8FB30020 */  lw    $s3, 0x20($sp)
/* 043830 8009B5E0 03E00008 */  jr    $ra
/* 043834 8009B5E4 27BD0028 */   addiu $sp, $sp, 0x28
.type func_8009B550, @function
.size func_8009B550, . - func_8009B550
