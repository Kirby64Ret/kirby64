glabel func_800A78D0
/* 04FB20 800A78D0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 04FB24 800A78D4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 04FB28 800A78D8 AFA40038 */  sw    $a0, 0x38($sp)
/* 04FB2C 800A78DC AFB00020 */  sw    $s0, 0x20($sp)
/* 04FB30 800A78E0 0C026E67 */  jal   func_8009B99C
/* 04FB34 800A78E4 24040100 */   li    $a0, 256
/* 04FB38 800A78E8 3C01800D */  lui   $at, %hi(D_800D6FB4) # $at, 0x800d
/* 04FB3C 800A78EC AC226FB4 */  sw    $v0, %lo(D_800D6FB4)($at)
/* 04FB40 800A78F0 0C02812E */  jal   func_800A04B8
/* 04FB44 800A78F4 24040040 */   li    $a0, 64
/* 04FB48 800A78F8 3C10800D */  lui   $s0, %hi(D_800D6FB8) # $s0, 0x800d
/* 04FB4C 800A78FC 26106FB8 */  addiu $s0, %lo(D_800D6FB8) # addiu $s0, $s0, 0x6fb8
/* 04FB50 800A7900 AE020000 */  sw    $v0, ($s0)
/* 04FB54 800A7904 3C04800D */  lui   $a0, %hi(D_800D6FB4) # $a0, 0x800d
/* 04FB58 800A7908 0C0028A7 */  jal   func_8000A29C_ovl1
/* 04FB5C 800A790C 8C846FB4 */   lw    $a0, %lo(D_800D6FB4)($a0)
/* 04FB60 800A7910 0C0028A7 */  jal   func_8000A29C_ovl1
/* 04FB64 800A7914 8E040000 */   lw    $a0, ($s0)
/* 04FB68 800A7918 2404FFF9 */  li    $a0, -7
/* 04FB6C 800A791C 00002825 */  move  $a1, $zero
/* 04FB70 800A7920 24060018 */  li    $a2, 24
/* 04FB74 800A7924 0C002860 */  jal   func_8000A180
/* 04FB78 800A7928 00003825 */   move  $a3, $zero
/* 04FB7C 800A792C 3C05800A */  lui   $a1, %hi(D_8009E834) # $a1, 0x800a
/* 04FB80 800A7930 AE020000 */  sw    $v0, ($s0)
/* 04FB84 800A7934 3C01800D */  lui   $at, %hi(D_800D6FB4) # $at, 0x800d
/* 04FB88 800A7938 24A5E834 */  addiu $a1, %lo(D_8009E834) # addiu $a1, $a1, -0x17cc
/* 04FB8C 800A793C AC226FB4 */  sw    $v0, %lo(D_800D6FB4)($at)
/* 04FB90 800A7940 00402025 */  move  $a0, $v0
/* 04FB94 800A7944 AFA5002C */  sw    $a1, 0x2c($sp)
/* 04FB98 800A7948 24060001 */  li    $a2, 1
/* 04FB9C 800A794C 0C002286 */  jal   func_80008A18
/* 04FBA0 800A7950 00003825 */   move  $a3, $zero
/* 04FBA4 800A7954 3C05800A */  lui   $a1, %hi(D_800A09AC) # $a1, 0x800a
/* 04FBA8 800A7958 24A509AC */  addiu $a1, %lo(D_800A09AC) # addiu $a1, $a1, 0x9ac
/* 04FBAC 800A795C AFA50028 */  sw    $a1, 0x28($sp)
/* 04FBB0 800A7960 8E040000 */  lw    $a0, ($s0)
/* 04FBB4 800A7964 24060001 */  li    $a2, 1
/* 04FBB8 800A7968 0C002286 */  jal   func_80008A18
/* 04FBBC 800A796C 00003825 */   move  $a3, $zero
/* 04FBC0 800A7970 8E040000 */  lw    $a0, ($s0)
/* 04FBC4 800A7974 8FA5002C */  lw    $a1, 0x2c($sp)
/* 04FBC8 800A7978 24060001 */  li    $a2, 1
/* 04FBCC 800A797C 0C002286 */  jal   func_80008A18
/* 04FBD0 800A7980 00003825 */   move  $a3, $zero
/* 04FBD4 800A7984 8E040000 */  lw    $a0, ($s0)
/* 04FBD8 800A7988 8FA50028 */  lw    $a1, 0x28($sp)
/* 04FBDC 800A798C 24060001 */  li    $a2, 1
/* 04FBE0 800A7990 0C002286 */  jal   func_80008A18
/* 04FBE4 800A7994 00003825 */   move  $a3, $zero
/* 04FBE8 800A7998 00002025 */  move  $a0, $zero
/* 04FBEC 800A799C 00002825 */  move  $a1, $zero
/* 04FBF0 800A79A0 24060018 */  li    $a2, 24
/* 04FBF4 800A79A4 0C002860 */  jal   func_8000A180
/* 04FBF8 800A79A8 3C078000 */   lui   $a3, 0x8000
/* 04FBFC 800A79AC 3C05800A */  lui   $a1, %hi(D_800A7ABC) # $a1, 0x800a
/* 04FC00 800A79B0 240EFFFF */  li    $t6, -1
/* 04FC04 800A79B4 00408025 */  move  $s0, $v0
/* 04FC08 800A79B8 AFAE0010 */  sw    $t6, 0x10($sp)
/* 04FC0C 800A79BC 24A57ABC */  addiu $a1, %lo(D_800A7ABC) # addiu $a1, $a1, 0x7abc
/* 04FC10 800A79C0 00402025 */  move  $a0, $v0
/* 04FC14 800A79C4 24060010 */  li    $a2, 16
/* 04FC18 800A79C8 0C00297F */  jal   func_8000A5FC
/* 04FC1C 800A79CC 2407000C */   li    $a3, 12
/* 04FC20 800A79D0 240F000F */  li    $t7, 15
/* 04FC24 800A79D4 AE0F0030 */  sw    $t7, 0x30($s0)
/* 04FC28 800A79D8 24040010 */  li    $a0, 16
/* 04FC2C 800A79DC 0C026D54 */  jal   func_8009B550
/* 04FC30 800A79E0 240500BC */   li    $a1, 188
/* 04FC34 800A79E4 3C03800D */  lui   $v1, %hi(D_800D6AB8) # $v1, 0x800d
/* 04FC38 800A79E8 3C02800D */  lui   $v0, %hi(D_800D6AD8) # $v0, 0x800d
/* 04FC3C 800A79EC 24426AD8 */  addiu $v0, %lo(D_800D6AD8) # addiu $v0, $v0, 0x6ad8
/* 04FC40 800A79F0 24636AB8 */  addiu $v1, %lo(D_800D6AB8) # addiu $v1, $v1, 0x6ab8
.L800A79F4_ovl1:
/* 04FC44 800A79F4 24630004 */  addiu $v1, $v1, 4
/* 04FC48 800A79F8 0062082B */  sltu  $at, $v1, $v0
/* 04FC4C 800A79FC 1420FFFD */  bnez  $at, .L800A79F4_ovl1
/* 04FC50 800A7A00 AC60FFFC */   sw    $zero, -4($v1)
/* 04FC54 800A7A04 3C02800D */  lui   $v0, %hi(D_800D6A38) # $v0, 0x800d
/* 04FC58 800A7A08 3C03800D */  lui   $v1, %hi(D_800D6A58) # $v1, 0x800d
/* 04FC5C 800A7A0C 24636A58 */  addiu $v1, %lo(D_800D6A58) # addiu $v1, $v1, 0x6a58
/* 04FC60 800A7A10 24426A38 */  addiu $v0, %lo(D_800D6A38) # addiu $v0, $v0, 0x6a38
.L800A7A14_ovl1:
/* 04FC64 800A7A14 24420010 */  addiu $v0, $v0, 0x10
/* 04FC68 800A7A18 AC40FFF4 */  sw    $zero, -0xc($v0)
/* 04FC6C 800A7A1C AC40FFF8 */  sw    $zero, -8($v0)
/* 04FC70 800A7A20 AC40FFFC */  sw    $zero, -4($v0)
/* 04FC74 800A7A24 1443FFFB */  bne   $v0, $v1, .L800A7A14_ovl1
/* 04FC78 800A7A28 AC40FFF0 */   sw    $zero, -0x10($v0)
/* 04FC7C 800A7A2C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04FC80 800A7A30 8FB00020 */  lw    $s0, 0x20($sp)
/* 04FC84 800A7A34 27BD0038 */  addiu $sp, $sp, 0x38
/* 04FC88 800A7A38 03E00008 */  jr    $ra
/* 04FC8C 800A7A3C 00000000 */   nop   
.type func_800A78D0, @function
.size func_800A78D0, . - func_800A78D0
