glabel func_801E6E0C_ovl16
/* 21D0BC 801E6E0C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 21D0C0 801E6E10 AFB50030 */  sw    $s5, 0x30($sp)
/* 21D0C4 801E6E14 3C158005 */  lui   $s5, %hi(D_8004A7C4) # $s5, 0x8005
/* 21D0C8 801E6E18 26B5A7C4 */  addiu $s5, %lo(D_8004A7C4) # addiu $s5, $s5, -0x583c
/* 21D0CC 801E6E1C 8EAF0000 */  lw    $t7, ($s5)
/* 21D0D0 801E6E20 AFBF003C */  sw    $ra, 0x3c($sp)
/* 21D0D4 801E6E24 AFB70038 */  sw    $s7, 0x38($sp)
/* 21D0D8 801E6E28 AFB60034 */  sw    $s6, 0x34($sp)
/* 21D0DC 801E6E2C AFB4002C */  sw    $s4, 0x2c($sp)
/* 21D0E0 801E6E30 AFB30028 */  sw    $s3, 0x28($sp)
/* 21D0E4 801E6E34 AFB20024 */  sw    $s2, 0x24($sp)
/* 21D0E8 801E6E38 AFB10020 */  sw    $s1, 0x20($sp)
/* 21D0EC 801E6E3C AFB0001C */  sw    $s0, 0x1c($sp)
/* 21D0F0 801E6E40 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 21D0F4 801E6E44 AFA40040 */  sw    $a0, 0x40($sp)
/* 21D0F8 801E6E48 8DF80000 */  lw    $t8, ($t7)
/* 21D0FC 801E6E4C 3C170001 */  lui   $s7, (0x000104BC >> 16) # lui $s7, 1
/* 21D100 801E6E50 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 21D104 801E6E54 0018C880 */  sll   $t9, $t8, 2
/* 21D108 801E6E58 36F704BC */  ori   $s7, (0x000104BC & 0xFFFF) # ori $s7, $s7, 0x4bc
/* 21D10C 801E6E5C 00390821 */  addu  $at, $at, $t9
/* 21D110 801E6E60 240E0017 */  li    $t6, 23
/* 21D114 801E6E64 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 21D118 801E6E68 0C02A855 */  jal   func_800AA154
/* 21D11C 801E6E6C 02E02025 */   move  $a0, $s7
/* 21D120 801E6E70 3C040001 */  lui   $a0, (0x000104AE >> 16) # lui $a0, 1
/* 21D124 801E6E74 0C02A806 */  jal   func_800AA018
/* 21D128 801E6E78 348404AE */   ori   $a0, (0x000104AE & 0xFFFF) # ori $a0, $a0, 0x4ae
/* 21D12C 801E6E7C 8EA30000 */  lw    $v1, ($s5)
/* 21D130 801E6E80 3C16800F */  lui   $s6, %hi(D_800E9AA0) # $s6, 0x800f
/* 21D134 801E6E84 26D69AA0 */  addiu $s6, %lo(D_800E9AA0) # addiu $s6, $s6, -0x6560
/* 21D138 801E6E88 8C680000 */  lw    $t0, ($v1)
/* 21D13C 801E6E8C 3C01800F */ lui $at, %hi(D_800E9C60)
/* 21D140 801E6E90 3C11800F */  lui   $s1, %hi(D_800E9E20) # $s1, 0x800f
/* 21D144 801E6E94 00084880 */  sll   $t1, $t0, 2
/* 21D148 801E6E98 02C95021 */  addu  $t2, $s6, $t1
/* 21D14C 801E6E9C AD400000 */  sw    $zero, ($t2)
/* 21D150 801E6EA0 8C6B0000 */  lw    $t3, ($v1)
/* 21D154 801E6EA4 26319E20 */  addiu $s1, %lo(D_800E9E20) # addiu $s1, $s1, -0x61e0
/* 21D158 801E6EA8 3C12800F */  lui   $s2, %hi(D_800E98E0) # $s2, 0x800f
/* 21D15C 801E6EAC 000B6080 */  sll   $t4, $t3, 2
/* 21D160 801E6EB0 002C0821 */  addu  $at, $at, $t4
/* 21D164 801E6EB4 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 21D168 801E6EB8 8C6D0000 */  lw    $t5, ($v1)
/* 21D16C 801E6EBC 265298E0 */  addiu $s2, %lo(D_800E98E0) # addiu $s2, $s2, -0x6720
/* 21D170 801E6EC0 3C14800F */  lui   $s4, %hi(D_800EA8A0) # $s4, 0x800f
/* 21D174 801E6EC4 000D7880 */  sll   $t7, $t5, 2
/* 21D178 801E6EC8 022FC021 */  addu  $t8, $s1, $t7
/* 21D17C 801E6ECC AF000000 */  sw    $zero, ($t8)
/* 21D180 801E6ED0 8C6E0000 */  lw    $t6, ($v1)
/* 21D184 801E6ED4 2694A8A0 */  addiu $s4, %lo(D_800EA8A0) # addiu $s4, $s4, -0x5760
/* 21D188 801E6ED8 000EC880 */  sll   $t9, $t6, 2
/* 21D18C 801E6EDC 02594021 */  addu  $t0, $s2, $t9
/* 21D190 801E6EE0 AD000000 */  sw    $zero, ($t0)
/* 21D194 801E6EE4 8C700000 */  lw    $s0, ($v1)
/* 21D198 801E6EE8 00108080 */  sll   $s0, $s0, 2
/* 21D19C 801E6EEC 02504821 */  addu  $t1, $s2, $s0
/* 21D1A0 801E6EF0 8D2A0000 */  lw    $t2, ($t1)
/* 21D1A4 801E6EF4 02305821 */  addu  $t3, $s1, $s0
/* 21D1A8 801E6EF8 AD6A0000 */  sw    $t2, ($t3)
/* 21D1AC 801E6EFC 8C700000 */  lw    $s0, ($v1)
/* 21D1B0 801E6F00 00108080 */  sll   $s0, $s0, 2
/* 21D1B4 801E6F04 02306021 */  addu  $t4, $s1, $s0
/* 21D1B8 801E6F08 8D8D0000 */  lw    $t5, ($t4)
/* 21D1BC 801E6F0C 29A1010E */  slti  $at, $t5, 0x10e
/* 21D1C0 801E6F10 5020003C */  beql  $at, $zero, .L801E7004_ovl16
/* 21D1C4 801E6F14 240A000A */   li    $t2, 10
/* 21D1C8 801E6F18 4480A000 */  mtc1  $zero, $f20
/* 21D1CC 801E6F1C 2413003C */  li    $s3, 60
/* 21D1D0 801E6F20 02D07821 */  addu  $t7, $s6, $s0
.L801E6F24_ovl16:
/* 21D1D4 801E6F24 8DF80000 */  lw    $t8, ($t7)
/* 21D1D8 801E6F28 5700000E */  bnezl $t8, .L801E6F64_ovl16
/* 21D1DC 801E6F2C 02501021 */   addu  $v0, $s2, $s0
/* 21D1E0 801E6F30 02507021 */  addu  $t6, $s2, $s0
/* 21D1E4 801E6F34 8DD90000 */  lw    $t9, ($t6)
/* 21D1E8 801E6F38 02E02025 */  move  $a0, $s7
/* 21D1EC 801E6F3C 44992000 */  mtc1  $t9, $f4
/* 21D1F0 801E6F40 00000000 */  nop   
/* 21D1F4 801E6F44 46802120 */  cvt.s.w $f4, $f4
/* 21D1F8 801E6F48 44052000 */  mfc1  $a1, $f4
/* 21D1FC 801E6F4C 0C02A7E6 */  jal   func_800A9F98
/* 21D200 801E6F50 00000000 */   nop   
/* 21D204 801E6F54 8EA30000 */  lw    $v1, ($s5)
/* 21D208 801E6F58 8C700000 */  lw    $s0, ($v1)
/* 21D20C 801E6F5C 00108080 */  sll   $s0, $s0, 2
/* 21D210 801E6F60 02501021 */  addu  $v0, $s2, $s0
.L801E6F64_ovl16:
/* 21D214 801E6F64 8C480000 */  lw    $t0, ($v0)
/* 21D218 801E6F68 25090002 */  addiu $t1, $t0, 2
/* 21D21C 801E6F6C 0133001A */  div   $zero, $t1, $s3
/* 21D220 801E6F70 00005010 */  mfhi  $t2
/* 21D224 801E6F74 AC4A0000 */  sw    $t2, ($v0)
/* 21D228 801E6F78 8C700000 */  lw    $s0, ($v1)
/* 21D22C 801E6F7C 16600002 */  bnez  $s3, .L801E6F88_ovl16
/* 21D230 801E6F80 00000000 */   nop   
/* 21D234 801E6F84 0007000D */  break 7
.L801E6F88_ovl16:
/* 21D238 801E6F88 2401FFFF */  li    $at, -1
/* 21D23C 801E6F8C 16610004 */  bne   $s3, $at, .L801E6FA0_ovl16
/* 21D240 801E6F90 3C018000 */   lui   $at, 0x8000
/* 21D244 801E6F94 15210002 */  bne   $t1, $at, .L801E6FA0_ovl16
/* 21D248 801E6F98 00000000 */   nop   
/* 21D24C 801E6F9C 0006000D */  break 6
.L801E6FA0_ovl16:
/* 21D250 801E6FA0 00108080 */  sll   $s0, $s0, 2
/* 21D254 801E6FA4 02305821 */  addu  $t3, $s1, $s0
/* 21D258 801E6FA8 8D6C0000 */  lw    $t4, ($t3)
/* 21D25C 801E6FAC 02906821 */  addu  $t5, $s4, $s0
/* 21D260 801E6FB0 2981001F */  slti  $at, $t4, 0x1f
/* 21D264 801E6FB4 14200002 */  bnez  $at, .L801E6FC0_ovl16
/* 21D268 801E6FB8 00000000 */   nop   
/* 21D26C 801E6FBC E5B40000 */  swc1  $f20, ($t5)
.L801E6FC0_ovl16:
/* 21D270 801E6FC0 0C002DAF */  jal   finish_current_thread
/* 21D274 801E6FC4 24040001 */   li    $a0, 1
/* 21D278 801E6FC8 8EA30000 */  lw    $v1, ($s5)
/* 21D27C 801E6FCC 8C6F0000 */  lw    $t7, ($v1)
/* 21D280 801E6FD0 000FC080 */  sll   $t8, $t7, 2
/* 21D284 801E6FD4 02381021 */  addu  $v0, $s1, $t8
/* 21D288 801E6FD8 8C4E0000 */  lw    $t6, ($v0)
/* 21D28C 801E6FDC 25D90001 */  addiu $t9, $t6, 1
/* 21D290 801E6FE0 AC590000 */  sw    $t9, ($v0)
/* 21D294 801E6FE4 8C700000 */  lw    $s0, ($v1)
/* 21D298 801E6FE8 00108080 */  sll   $s0, $s0, 2
/* 21D29C 801E6FEC 02304021 */  addu  $t0, $s1, $s0
/* 21D2A0 801E6FF0 8D090000 */  lw    $t1, ($t0)
/* 21D2A4 801E6FF4 2921010E */  slti  $at, $t1, 0x10e
/* 21D2A8 801E6FF8 5420FFCA */  bnezl $at, .L801E6F24_ovl16
/* 21D2AC 801E6FFC 02D07821 */   addu  $t7, $s6, $s0
/* 21D2B0 801E7000 240A000A */  li    $t2, 10
.L801E7004_ovl16:
/* 21D2B4 801E7004 02D05821 */  addu  $t3, $s6, $s0
/* 21D2B8 801E7008 AD6A0000 */  sw    $t2, ($t3)
/* 21D2BC 801E700C 8C6D0000 */  lw    $t5, ($v1)
/* 21D2C0 801E7010 8FBF003C */  lw    $ra, 0x3c($sp)
/* 21D2C4 801E7014 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 21D2C8 801E7018 000D7880 */  sll   $t7, $t5, 2
/* 21D2CC 801E701C 002F0821 */  addu  $at, $at, $t7
/* 21D2D0 801E7020 240C001F */  li    $t4, 31
/* 21D2D4 801E7024 8FB70038 */  lw    $s7, 0x38($sp)
/* 21D2D8 801E7028 8FB60034 */  lw    $s6, 0x34($sp)
/* 21D2DC 801E702C 8FB50030 */  lw    $s5, 0x30($sp)
/* 21D2E0 801E7030 8FB4002C */  lw    $s4, 0x2c($sp)
/* 21D2E4 801E7034 8FB30028 */  lw    $s3, 0x28($sp)
/* 21D2E8 801E7038 8FB20024 */  lw    $s2, 0x24($sp)
/* 21D2EC 801E703C 8FB10020 */  lw    $s1, 0x20($sp)
/* 21D2F0 801E7040 8FB0001C */  lw    $s0, 0x1c($sp)
/* 21D2F4 801E7044 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 21D2F8 801E7048 AC2CDC50 */ sw $t4, %lo(gEntityVtableIndexArray)($at)
/* 21D2FC 801E704C 03E00008 */  jr    $ra
/* 21D300 801E7050 27BD0040 */   addiu $sp, $sp, 0x40
.type func_801E6E0C_ovl16, @function
.size func_801E6E0C_ovl16, . - func_801E6E0C_ovl16
