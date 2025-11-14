glabel func_8017B78C_ovl3
/* 0DC1CC 8017B78C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0DC1D0 8017B790 AFB00018 */  sw    $s0, 0x18($sp)
/* 0DC1D4 8017B794 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0DC1D8 8017B798 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0DC1DC 8017B79C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0DC1E0 8017B7A0 AFA40020 */  sw    $a0, 0x20($sp)
/* 0DC1E4 8017B7A4 AE000030 */  sw    $zero, 0x30($s0)
/* 0DC1E8 8017B7A8 0C0473D6 */  jal   func_8011CF58
/* 0DC1EC 8017B7AC AE00003C */   sw    $zero, 0x3c($s0)
/* 0DC1F0 8017B7B0 8E0E0090 */  lw    $t6, 0x90($s0)
/* 0DC1F4 8017B7B4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0DC1F8 8017B7B8 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0DC1FC 8017B7BC AE0E00A0 */  sw    $t6, 0xa0($s0)
/* 0DC200 8017B7C0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0DC204 8017B7C4 240F0024 */  li    $t7, 36
/* 0DC208 8017B7C8 3C088019 */  lui   $t0, %hi(D_801928BC) # $t0, 0x8019
/* 0DC20C 8017B7CC 8C580000 */  lw    $t8, ($v0)
/* 0DC210 8017B7D0 250828BC */  addiu $t0, %lo(D_801928BC) # addiu $t0, $t0, 0x28bc
/* 0DC214 8017B7D4 3C0B8019 */  lui   $t3, %hi(D_80190358) # $t3, 0x8019
/* 0DC218 8017B7D8 0018C880 */  sll   $t9, $t8, 2
/* 0DC21C 8017B7DC 00390821 */  addu  $at, $at, $t9
/* 0DC220 8017B7E0 AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 0DC224 8017B7E4 8C490000 */  lw    $t1, ($v0)
/* 0DC228 8017B7E8 3C01800E */ lui $at, %hi(D_800E0490)
/* 0DC22C 8017B7EC 256B0358 */  addiu $t3, %lo(D_80190358) # addiu $t3, $t3, 0x358
/* 0DC230 8017B7F0 00095080 */  sll   $t2, $t1, 2
/* 0DC234 8017B7F4 002A0821 */  addu  $at, $at, $t2
/* 0DC238 8017B7F8 AC280490 */ sw $t0, %lo(D_800E0490)($at)
/* 0DC23C 8017B7FC 3C040002 */  lui   $a0, (0x0002000E >> 16) # lui $a0, 2
/* 0DC240 8017B800 AE0B015C */  sw    $t3, 0x15c($s0)
/* 0DC244 8017B804 0C048BC2 */  jal   func_80122F08
/* 0DC248 8017B808 3484000E */   ori   $a0, (0x0002000E & 0xFFFF) # ori $a0, $a0, 0xe
/* 0DC24C 8017B80C 240C0002 */  li    $t4, 2
/* 0DC250 8017B810 AE0C0154 */  sw    $t4, 0x154($s0)
/* 0DC254 8017B814 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0DC258 8017B818 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0DC25C 8017B81C 3C0D800F */ lui $t5, %hi(D_800E8920)
/* 0DC260 8017B820 24010001 */  li    $at, 1
/* 0DC264 8017B824 8C430000 */  lw    $v1, ($v0)
/* 0DC268 8017B828 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 0DC26C 8017B82C 00031880 */  sll   $v1, $v1, 2
/* 0DC270 8017B830 01A36821 */  addu  $t5, $t5, $v1
/* 0DC274 8017B834 8DAD8920 */ lw $t5, %lo(D_800E8920)($t5)
/* 0DC278 8017B838 15A10016 */  bne   $t5, $at, .L8017B894_ovl3
/* 0DC27C 8017B83C 00000000 */   nop   
/* 0DC280 8017B840 44802000 */  mtc1  $zero, $f4
/* 0DC284 8017B844 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 0DC288 8017B848 00837021 */  addu  $t6, $a0, $v1
/* 0DC28C 8017B84C E5C40000 */  swc1  $f4, ($t6)
/* 0DC290 8017B850 8C430000 */  lw    $v1, ($v0)
/* 0DC294 8017B854 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0DC298 8017B858 00031880 */  sll   $v1, $v1, 2
/* 0DC29C 8017B85C 0083C021 */  addu  $t8, $a0, $v1
/* 0DC2A0 8017B860 C7060000 */  lwc1  $f6, ($t8)
/* 0DC2A4 8017B864 00230821 */  addu  $at, $at, $v1
/* 0DC2A8 8017B868 E42664D0 */ swc1 $f6, %lo(D_800E64D0)($at)
/* 0DC2AC 8017B86C 8C4F0000 */  lw    $t7, ($v0)
/* 0DC2B0 8017B870 3C018019 */  lui   $at, %hi(D_801975EC) # $at, 0x8019
/* 0DC2B4 8017B874 C42875EC */  lwc1  $f8, %lo(D_801975EC)($at)
/* 0DC2B8 8017B878 3C01800E */ lui $at, %hi(D_800E6850)
/* 0DC2BC 8017B87C 000FC880 */  sll   $t9, $t7, 2
/* 0DC2C0 8017B880 00390821 */  addu  $at, $at, $t9
/* 0DC2C4 8017B884 E4286850 */ swc1 $f8, %lo(D_800E6850)($at)
/* 0DC2C8 8017B888 8E090034 */  lw    $t1, 0x34($s0)
/* 0DC2CC 8017B88C 35284000 */  ori   $t0, $t1, 0x4000
/* 0DC2D0 8017B890 AE080034 */  sw    $t0, 0x34($s0)
.L8017B894_ovl3:
/* 0DC2D4 8017B894 0C047701 */  jal   func_8011DC04
/* 0DC2D8 8017B898 24040139 */   li    $a0, 313
/* 0DC2DC 8017B89C 0C04770C */  jal   func_8011DC30
/* 0DC2E0 8017B8A0 2404026E */   li    $a0, 622
/* 0DC2E4 8017B8A4 3C040002 */  lui   $a0, (0x00020193 >> 16) # lui $a0, 2
/* 0DC2E8 8017B8A8 0C02A855 */  jal   func_800AA154
/* 0DC2EC 8017B8AC 34840193 */   ori   $a0, (0x00020193 & 0xFFFF) # ori $a0, $a0, 0x193
/* 0DC2F0 8017B8B0 3C040002 */  lui   $a0, (0x00020194 >> 16) # lui $a0, 2
/* 0DC2F4 8017B8B4 0C02A855 */  jal   func_800AA154
/* 0DC2F8 8017B8B8 34840194 */   ori   $a0, (0x00020194 & 0xFFFF) # ori $a0, $a0, 0x194
/* 0DC2FC 8017B8BC 3C040002 */  lui   $a0, (0x00020195 >> 16) # lui $a0, 2
/* 0DC300 8017B8C0 0C02A855 */  jal   func_800AA154
/* 0DC304 8017B8C4 34840195 */   ori   $a0, (0x00020195 & 0xFFFF) # ori $a0, $a0, 0x195
/* 0DC308 8017B8C8 8E0A0030 */  lw    $t2, 0x30($s0)
/* 0DC30C 8017B8CC AE0000A0 */  sw    $zero, 0xa0($s0)
/* 0DC310 8017B8D0 A2000007 */  sb    $zero, 7($s0)
/* 0DC314 8017B8D4 254B0001 */  addiu $t3, $t2, 1
/* 0DC318 8017B8D8 0C02BE85 */  jal   func_800AFA14
/* 0DC31C 8017B8DC AE0B0030 */   sw    $t3, 0x30($s0)
/* 0DC320 8017B8E0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0DC324 8017B8E4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0DC328 8017B8E8 27BD0020 */  addiu $sp, $sp, 0x20
/* 0DC32C 8017B8EC 03E00008 */  jr    $ra
/* 0DC330 8017B8F0 00000000 */   nop   
.type func_8017B78C_ovl3, @function
.size func_8017B78C_ovl3, . - func_8017B78C_ovl3
