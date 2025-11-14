glabel func_800A5A14
/* 04DC64 800A5A14 3C0E800D */  lui   $t6, %hi(D_800D6B24) # $t6, 0x800d
/* 04DC68 800A5A18 8DCE6B24 */  lw    $t6, %lo(D_800D6B24)($t6)
/* 04DC6C 800A5A1C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 04DC70 800A5A20 AFBF003C */  sw    $ra, 0x3c($sp)
/* 04DC74 800A5A24 AFA40040 */  sw    $a0, 0x40($sp)
/* 04DC78 800A5A28 AFA50044 */  sw    $a1, 0x44($sp)
/* 04DC7C 800A5A2C 15C00026 */  bnez  $t6, .L800A5AC8_ovl1
/* 04DC80 800A5A30 AFA60048 */   sw    $a2, 0x48($sp)
/* 04DC84 800A5A34 87B80046 */  lh    $t8, 0x46($sp)
/* 04DC88 800A5A38 87AF0042 */  lh    $t7, 0x42($sp)
/* 04DC8C 800A5A3C 3C01800D */  lui   $at, %hi(D_800D6B2E) # $at, 0x800d
/* 04DC90 800A5A40 44982000 */  mtc1  $t8, $f4
/* 04DC94 800A5A44 A42F6B2E */  sh    $t7, %lo(D_800D6B2E)($at)
/* 04DC98 800A5A48 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 04DC9C 800A5A4C 468021A0 */  cvt.s.w $f6, $f4
/* 04DCA0 800A5A50 C4286B10 */  lwc1  $f8, %lo(D_800D6B10)($at)
/* 04DCA4 800A5A54 3C01800D */  lui   $at, %hi(D_800D6B2C) # $at, 0x800d
/* 04DCA8 800A5A58 93A9004B */  lbu   $t1, 0x4b($sp)
/* 04DCAC 800A5A5C 3C0A800A */  lui   $t2, %hi(D_800A58E4) # $t2, 0x800a
/* 04DCB0 800A5A60 3C0B800A */  lui   $t3, %hi(D_800A57C8) # $t3, 0x800a
/* 04DCB4 800A5A64 46083282 */  mul.s $f10, $f6, $f8
/* 04DCB8 800A5A68 256B57C8 */  addiu $t3, %lo(D_800A57C8) # addiu $t3, $t3, 0x57c8
/* 04DCBC 800A5A6C 254A58E4 */  addiu $t2, %lo(D_800A58E4) # addiu $t2, $t2, 0x58e4
/* 04DCC0 800A5A70 240C0001 */  li    $t4, 1
/* 04DCC4 800A5A74 AFAC002C */  sw    $t4, 0x2c($sp)
/* 04DCC8 800A5A78 AFAA0010 */  sw    $t2, 0x10($sp)
/* 04DCCC 800A5A7C AFAB0028 */  sw    $t3, 0x28($sp)
/* 04DCD0 800A5A80 4600540D */  trunc.w.s $f16, $f10
/* 04DCD4 800A5A84 24040002 */  li    $a0, 2
/* 04DCD8 800A5A88 00002825 */  move  $a1, $zero
/* 04DCDC 800A5A8C 24060019 */  li    $a2, 25
/* 04DCE0 800A5A90 44088000 */  mfc1  $t0, $f16
/* 04DCE4 800A5A94 3C078000 */  lui   $a3, 0x8000
/* 04DCE8 800A5A98 AFA00014 */  sw    $zero, 0x14($sp)
/* 04DCEC 800A5A9C A4286B2C */  sh    $t0, %lo(D_800D6B2C)($at)
/* 04DCF0 800A5AA0 3C01800D */  lui   $at, %hi(D_800D6B2B) # $at, 0x800d
/* 04DCF4 800A5AA4 AFA00018 */  sw    $zero, 0x18($sp)
/* 04DCF8 800A5AA8 AFA0001C */  sw    $zero, 0x1c($sp)
/* 04DCFC 800A5AAC AFA00020 */  sw    $zero, 0x20($sp)
/* 04DD00 800A5AB0 AFA00024 */  sw    $zero, 0x24($sp)
/* 04DD04 800A5AB4 AFA00030 */  sw    $zero, 0x30($sp)
/* 04DD08 800A5AB8 0C002F4F */  jal   func_8000BD3C_ovl1
/* 04DD0C 800A5ABC A0296B2B */   sb    $t1, %lo(D_800D6B2B)($at)
/* 04DD10 800A5AC0 3C01800D */  lui   $at, %hi(D_800D6B24) # $at, 0x800d
/* 04DD14 800A5AC4 AC226B24 */  sw    $v0, %lo(D_800D6B24)($at)
.L800A5AC8_ovl1:
/* 04DD18 800A5AC8 8FBF003C */  lw    $ra, 0x3c($sp)
/* 04DD1C 800A5ACC 27BD0040 */  addiu $sp, $sp, 0x40
/* 04DD20 800A5AD0 03E00008 */  jr    $ra
/* 04DD24 800A5AD4 00000000 */   nop   
.type func_800A5A14, @function
.size func_800A5A14, . - func_800A5A14
