glabel func_8009BFD4
/* 044224 8009BFD4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 044228 8009BFD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 04422C 8009BFDC 90850008 */  lbu   $a1, 8($a0)
/* 044230 8009BFE0 3C0F800D */  lui   $t7, %hi(D_800D69C8) # $t7, 0x800d
/* 044234 8009BFE4 25EF69C8 */  addiu $t7, %lo(D_800D69C8) # addiu $t7, $t7, 0x69c8
/* 044238 8009BFE8 000528C3 */  sra   $a1, $a1, 3
/* 04423C 8009BFEC 00057080 */  sll   $t6, $a1, 2
/* 044240 8009BFF0 01CF3021 */  addu  $a2, $t6, $t7
/* 044244 8009BFF4 8CC20000 */  lw    $v0, ($a2)
/* 044248 8009BFF8 00001825 */  move  $v1, $zero
/* 04424C 8009BFFC 50400036 */  beql  $v0, $zero, .L8009C0D8_ovl1
/* 044250 8009C000 8FBF0014 */   lw    $ra, 0x14($sp)
.L8009C004_ovl1:
/* 044254 8009C004 54440030 */  bnel  $v0, $a0, .L8009C0C8_ovl1
/* 044258 8009C008 00401825 */   move  $v1, $v0
/* 04425C 8009C00C 54600005 */  bnezl $v1, .L8009C024_ovl1
/* 044260 8009C010 8C590000 */   lw    $t9, ($v0)
/* 044264 8009C014 8C580000 */  lw    $t8, ($v0)
/* 044268 8009C018 10000003 */  b     .L8009C028_ovl1
/* 04426C 8009C01C ACD80000 */   sw    $t8, ($a2)
/* 044270 8009C020 8C590000 */  lw    $t9, ($v0)
.L8009C024_ovl1:
/* 044274 8009C024 AC790000 */  sw    $t9, ($v1)
.L8009C028_ovl1:
/* 044278 8009C028 8C83005C */  lw    $v1, 0x5c($a0)
/* 04427C 8009C02C 5060000D */  beql  $v1, $zero, .L8009C064_ovl1
/* 044280 8009C030 8C850060 */   lw    $a1, 0x60($a0)
/* 044284 8009C034 94880006 */  lhu   $t0, 6($a0)
/* 044288 8009C038 31090004 */  andi  $t1, $t0, 4
/* 04428C 8009C03C 51200009 */  beql  $t1, $zero, .L8009C064_ovl1
/* 044290 8009C040 8C850060 */   lw    $a1, 0x60($a0)
/* 044294 8009C044 906A0009 */  lbu   $t2, 9($v1)
/* 044298 8009C048 24010002 */  li    $at, 2
/* 04429C 8009C04C 55410005 */  bnel  $t2, $at, .L8009C064_ovl1
/* 0442A0 8009C050 8C850060 */   lw    $a1, 0x60($a0)
/* 0442A4 8009C054 946B0054 */  lhu   $t3, 0x54($v1)
/* 0442A8 8009C058 256CFFFF */  addiu $t4, $t3, -1
/* 0442AC 8009C05C A46C0054 */  sh    $t4, 0x54($v1)
/* 0442B0 8009C060 8C850060 */  lw    $a1, 0x60($a0)
.L8009C064_ovl1:
/* 0442B4 8009C064 10A0000C */  beqz  $a1, .L8009C098_ovl1
/* 0442B8 8009C068 00000000 */   nop   
/* 0442BC 8009C06C 94AD002A */  lhu   $t5, 0x2a($a1)
/* 0442C0 8009C070 25AEFFFF */  addiu $t6, $t5, -1
/* 0442C4 8009C074 A4AE002A */  sh    $t6, 0x2a($a1)
/* 0442C8 8009C078 8C850060 */  lw    $a1, 0x60($a0)
/* 0442CC 8009C07C 94AF002A */  lhu   $t7, 0x2a($a1)
/* 0442D0 8009C080 00A02025 */  move  $a0, $a1
/* 0442D4 8009C084 15E00004 */  bnez  $t7, .L8009C098_ovl1
/* 0442D8 8009C088 00000000 */   nop   
/* 0442DC 8009C08C 0C026DA7 */  jal   func_8009B69C
/* 0442E0 8009C090 AFA20018 */   sw    $v0, 0x18($sp)
/* 0442E4 8009C094 8FA20018 */  lw    $v0, 0x18($sp)
.L8009C098_ovl1:
/* 0442E8 8009C098 3C03800D */  lui   $v1, %hi(D_800D69C0) # $v1, 0x800d
/* 0442EC 8009C09C 246369C0 */  addiu $v1, %lo(D_800D69C0) # addiu $v1, $v1, 0x69c0
/* 0442F0 8009C0A0 8C780000 */  lw    $t8, ($v1)
/* 0442F4 8009C0A4 3C04800D */  lui   $a0, %hi(D_800D6AE0) # $a0, 0x800d
/* 0442F8 8009C0A8 24846AE0 */  addiu $a0, %lo(D_800D6AE0) # addiu $a0, $a0, 0x6ae0
/* 0442FC 8009C0AC AC580000 */  sw    $t8, ($v0)
/* 044300 8009C0B0 94990000 */  lhu   $t9, ($a0)
/* 044304 8009C0B4 AC620000 */  sw    $v0, ($v1)
/* 044308 8009C0B8 2728FFFF */  addiu $t0, $t9, -1
/* 04430C 8009C0BC 10000005 */  b     .L8009C0D4_ovl1
/* 044310 8009C0C0 A4880000 */   sh    $t0, ($a0)
/* 044314 8009C0C4 00401825 */  move  $v1, $v0
.L8009C0C8_ovl1:
/* 044318 8009C0C8 8C420000 */  lw    $v0, ($v0)
/* 04431C 8009C0CC 1440FFCD */  bnez  $v0, .L8009C004_ovl1
/* 044320 8009C0D0 00000000 */   nop   
.L8009C0D4_ovl1:
/* 044324 8009C0D4 8FBF0014 */  lw    $ra, 0x14($sp)
.L8009C0D8_ovl1:
/* 044328 8009C0D8 27BD0020 */  addiu $sp, $sp, 0x20
/* 04432C 8009C0DC 03E00008 */  jr    $ra
/* 044330 8009C0E0 00000000 */   nop   
.type func_8009BFD4, @function
.size func_8009BFD4, . - func_8009BFD4