glabel func_801EB2C4_ovl10
/* 1DC034 801EB2C4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DC038 801EB2C8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DC03C 801EB2CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DC040 801EB2D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DC044 801EB2D4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DC048 801EB2D8 8C4E0000 */  lw    $t6, ($v0)
/* 1DC04C 801EB2DC 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DC050 801EB2E0 24180003 */  li    $t8, 3
/* 1DC054 801EB2E4 000E7880 */  sll   $t7, $t6, 2
/* 1DC058 801EB2E8 002F0821 */  addu  $at, $at, $t7
/* 1DC05C 801EB2EC AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1DC060 801EB2F0 8C590000 */  lw    $t9, ($v0)
/* 1DC064 801EB2F4 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DC068 801EB2F8 3C040001 */  lui   $a0, (0x00010392 >> 16) # lui $a0, 1
/* 1DC06C 801EB2FC 00194080 */  sll   $t0, $t9, 2
/* 1DC070 801EB300 00280821 */  addu  $at, $at, $t0
/* 1DC074 801EB304 AC38DFD0 */ sw $t8, %lo(D_800DDFD0)($at)
/* 1DC078 801EB308 0C02A7A9 */  jal   func_800A9EA4
/* 1DC07C 801EB30C 34840392 */   ori   $a0, (0x00010392 & 0xFFFF) # ori $a0, $a0, 0x392
/* 1DC080 801EB310 3C040001 */  lui   $a0, (0x00010391 >> 16) # lui $a0, 1
/* 1DC084 801EB314 34840391 */  ori   $a0, (0x00010391 & 0xFFFF) # ori $a0, $a0, 0x391
/* 1DC088 801EB318 0C02AA19 */  jal   func_800AA864
/* 1DC08C 801EB31C 24050001 */   li    $a1, 1
/* 1DC090 801EB320 0C002DAF */  jal   finish_current_thread
/* 1DC094 801EB324 24040008 */   li    $a0, 8
/* 1DC098 801EB328 3C040001 */  lui   $a0, (0x00010376 >> 16) # lui $a0, 1
/* 1DC09C 801EB32C 0C02A7A9 */  jal   func_800A9EA4
/* 1DC0A0 801EB330 34840376 */   ori   $a0, (0x00010376 & 0xFFFF) # ori $a0, $a0, 0x376
/* 1DC0A4 801EB334 3C040001 */  lui   $a0, (0x00010375 >> 16) # lui $a0, 1
/* 1DC0A8 801EB338 0C02A7A9 */  jal   func_800A9EA4
/* 1DC0AC 801EB33C 34840375 */   ori   $a0, (0x00010375 & 0xFFFF) # ori $a0, $a0, 0x375
/* 1DC0B0 801EB340 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 1DC0B4 801EB344 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 1DC0B8 801EB348 3C09801F */  lui   $t1, %hi(D_801EB20C) # $t1, 0x801f
/* 1DC0BC 801EB34C 3C01800E */ lui $at, %hi(D_800DF310)
/* 1DC0C0 801EB350 8D4B0000 */  lw    $t3, ($t2)
/* 1DC0C4 801EB354 2529B20C */  addiu $t1, %lo(D_801EB20C) # addiu $t1, $t1, -0x4df4
/* 1DC0C8 801EB358 000B6080 */  sll   $t4, $t3, 2
/* 1DC0CC 801EB35C 002C0821 */  addu  $at, $at, $t4
/* 1DC0D0 801EB360 0C02BC9F */  jal   func_800AF27C
/* 1DC0D4 801EB364 AC29F310 */ sw $t1, %lo(D_800DF310)($at)
/* 1DC0D8 801EB368 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1DC0DC 801EB36C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1DC0E0 801EB370 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DC0E4 801EB374 240D0001 */  li    $t5, 1
/* 1DC0E8 801EB378 8DCF0000 */  lw    $t7, ($t6)
/* 1DC0EC 801EB37C 000FC880 */  sll   $t9, $t7, 2
/* 1DC0F0 801EB380 00390821 */  addu  $at, $at, $t9
/* 1DC0F4 801EB384 0C02BE85 */  jal   func_800AFA14
/* 1DC0F8 801EB388 AC2D9E20 */ sw $t5, %lo(D_800E9E20)($at)
/* 1DC0FC 801EB38C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DC100 801EB390 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DC104 801EB394 03E00008 */  jr    $ra
/* 1DC108 801EB398 00000000 */   nop   
.type func_801EB2C4_ovl10, @function
.size func_801EB2C4_ovl10, . - func_801EB2C4_ovl10
