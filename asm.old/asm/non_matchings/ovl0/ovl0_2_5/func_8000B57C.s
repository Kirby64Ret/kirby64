glabel func_8000B57C
/* 00C17C 8000B57C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00C180 8000B580 AFB70030 */  sw    $s7, 0x30($sp)
/* 00C184 8000B584 AFB6002C */  sw    $s6, 0x2c($sp)
/* 00C188 8000B588 AFB50028 */  sw    $s5, 0x28($sp)
/* 00C18C 8000B58C AFB40024 */  sw    $s4, 0x24($sp)
/* 00C190 8000B590 AFB30020 */  sw    $s3, 0x20($sp)
/* 00C194 8000B594 AFB2001C */  sw    $s2, 0x1c($sp)
/* 00C198 8000B598 AFB10018 */  sw    $s1, 0x18($sp)
/* 00C19C 8000B59C 3C168005 */  lui   $s6, %hi(D_8004A578) # $s6, 0x8005
/* 00C1A0 8000B5A0 3C178005 */  lui   $s7, %hi(D_8004A5F8) # $s7, 0x8005
/* 00C1A4 8000B5A4 00A08825 */  move  $s1, $a1
/* 00C1A8 8000B5A8 00809025 */  move  $s2, $a0
/* 00C1AC 8000B5AC 00C09825 */  move  $s3, $a2
/* 00C1B0 8000B5B0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 00C1B4 8000B5B4 AFB00014 */  sw    $s0, 0x14($sp)
/* 00C1B8 8000B5B8 0000A825 */  move  $s5, $zero
/* 00C1BC 8000B5BC 26F7A5F8 */  addiu $s7, %lo(D_8004A5F8) # addiu $s7, $s7, -0x5a08
/* 00C1C0 8000B5C0 26D6A578 */  addiu $s6, %lo(D_8004A578) # addiu $s6, $s6, -0x5a88
/* 00C1C4 8000B5C4 24140001 */  li    $s4, 1
/* 00C1C8 8000B5C8 8EC40000 */  lw    $a0, ($s6)
.L8000B5CC_ovl0:
/* 00C1CC 8000B5CC 5080000D */  beql  $a0, $zero, .L8000B604_ovl0
/* 00C1D0 8000B5D0 26D60004 */   addiu $s6, $s6, 4
.L8000B5D4_ovl0:
/* 00C1D4 8000B5D4 8C900004 */  lw    $s0, 4($a0)
/* 00C1D8 8000B5D8 0240F809 */  jalr  $s2
/* 00C1DC 8000B5DC 02202825 */  move  $a1, $s1
/* 00C1E0 8000B5E0 10400005 */  beqz  $v0, .L8000B5F8_ovl0
/* 00C1E4 8000B5E4 00000000 */   nop   
/* 00C1E8 8000B5E8 16740003 */  bne   $s3, $s4, .L8000B5F8_ovl0
/* 00C1EC 8000B5EC 0040A825 */   move  $s5, $v0
/* 00C1F0 8000B5F0 10000008 */  b     .L8000B614_ovl0
/* 00C1F4 8000B5F4 8FBF0034 */   lw    $ra, 0x34($sp)
.L8000B5F8_ovl0:
/* 00C1F8 8000B5F8 1600FFF6 */  bnez  $s0, .L8000B5D4_ovl0
/* 00C1FC 8000B5FC 02002025 */   move  $a0, $s0
/* 00C200 8000B600 26D60004 */  addiu $s6, $s6, 4
.L8000B604_ovl0:
/* 00C204 8000B604 56D7FFF1 */  bnel  $s6, $s7, .L8000B5CC_ovl0
/* 00C208 8000B608 8EC40000 */   lw    $a0, ($s6)
/* 00C20C 8000B60C 02A01025 */  move  $v0, $s5
/* 00C210 8000B610 8FBF0034 */  lw    $ra, 0x34($sp)
.L8000B614_ovl0:
/* 00C214 8000B614 8FB00014 */  lw    $s0, 0x14($sp)
/* 00C218 8000B618 8FB10018 */  lw    $s1, 0x18($sp)
/* 00C21C 8000B61C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 00C220 8000B620 8FB30020 */  lw    $s3, 0x20($sp)
/* 00C224 8000B624 8FB40024 */  lw    $s4, 0x24($sp)
/* 00C228 8000B628 8FB50028 */  lw    $s5, 0x28($sp)
/* 00C22C 8000B62C 8FB6002C */  lw    $s6, 0x2c($sp)
/* 00C230 8000B630 8FB70030 */  lw    $s7, 0x30($sp)
/* 00C234 8000B634 03E00008 */  jr    $ra
/* 00C238 8000B638 27BD0038 */   addiu $sp, $sp, 0x38
.type func_8000B57C, @function
.size func_8000B57C, . - func_8000B57C
