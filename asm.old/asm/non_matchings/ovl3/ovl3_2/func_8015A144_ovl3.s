glabel func_8015A144_ovl3
/* 0BAB84 8015A144 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0BAB88 8015A148 AFB10018 */  sw    $s1, 0x18($sp)
/* 0BAB8C 8015A14C 3C118013 */  lui   $s1, %hi(gKirbyState) # $s1, 0x8013
/* 0BAB90 8015A150 AFB00014 */  sw    $s0, 0x14($sp)
/* 0BAB94 8015A154 24100001 */  li    $s0, 1
/* 0BAB98 8015A158 2631E7C0 */  addiu $s1, %lo(gKirbyState) # addiu $s1, $s1, -0x1840
/* 0BAB9C 8015A15C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0BABA0 8015A160 AFA40020 */  sw    $a0, 0x20($sp)
/* 0BABA4 8015A164 AE200030 */  sw    $zero, 0x30($s1)
/* 0BABA8 8015A168 0C0473D6 */  jal   func_8011CF58
/* 0BABAC 8015A16C AE300044 */   sw    $s0, 0x44($s1)
/* 0BABB0 8015A170 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0BABB4 8015A174 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0BABB8 8015A178 3C01800E */  lui   $at, 0x800e
/* 0BABBC 8015A17C 240E004E */  li    $t6, 78
/* 0BABC0 8015A180 8DF80000 */  lw    $t8, ($t7)
/* 0BABC4 8015A184 8FA40020 */  lw    $a0, 0x20($sp)
/* 0BABC8 8015A188 0018C880 */  sll   $t9, $t8, 2
/* 0BABCC 8015A18C 00390821 */  addu  $at, $at, $t9
/* 0BABD0 8015A190 0C055F17 */  jal   func_80157C5C_ovl3
/* 0BABD4 8015A194 AC2EDFD0 */   sw    $t6, -0x2030($at)
/* 0BABD8 8015A198 2408FFFD */  li    $t0, -3
/* 0BABDC 8015A19C 3C040002 */  lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0BABE0 8015A1A0 A2200004 */  sb    $zero, 4($s1)
/* 0BABE4 8015A1A4 A228000D */  sb    $t0, 0xd($s1)
/* 0BABE8 8015A1A8 0C02A5D8 */  jal   func_800A9760
/* 0BABEC 8015A1AC 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
/* 0BABF0 8015A1B0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0BABF4 8015A1B4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0BABF8 8015A1B8 3C013F20 */  li    $at, 0x3F200000 # 0.625000
/* 0BABFC 8015A1BC 44812000 */  mtc1  $at, $f4
/* 0BAC00 8015A1C0 8C490000 */  lw    $t1, ($v0)
/* 0BAC04 8015A1C4 3C01800E */  lui   $at, 0x800e
/* 0BAC08 8015A1C8 3C040002 */  lui   $a0, (0x00020141 >> 16) # lui $a0, 2
/* 0BAC0C 8015A1CC 00095080 */  sll   $t2, $t1, 2
/* 0BAC10 8015A1D0 002A0821 */  addu  $at, $at, $t2
/* 0BAC14 8015A1D4 E4246690 */  swc1  $f4, 0x6690($at)
/* 0BAC18 8015A1D8 8C4B0000 */  lw    $t3, ($v0)
/* 0BAC1C 8015A1DC 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0BAC20 8015A1E0 44813000 */  mtc1  $at, $f6
/* 0BAC24 8015A1E4 3C01800E */  lui   $at, 0x800e
/* 0BAC28 8015A1E8 000B6080 */  sll   $t4, $t3, 2
/* 0BAC2C 8015A1EC 002C0821 */  addu  $at, $at, $t4
/* 0BAC30 8015A1F0 3C050002 */  lui   $a1, (0x00020142 >> 16) # lui $a1, 2
/* 0BAC34 8015A1F4 34A50142 */  ori   $a1, (0x00020142 & 0xFFFF) # ori $a1, $a1, 0x142
/* 0BAC38 8015A1F8 34840141 */  ori   $a0, (0x00020141 & 0xFFFF) # ori $a0, $a0, 0x141
/* 0BAC3C 8015A1FC 00003025 */  move  $a2, $zero
/* 0BAC40 8015A200 0C048C3A */  jal   func_801230E8
/* 0BAC44 8015A204 E4266850 */   swc1  $f6, 0x6850($at)
/* 0BAC48 8015A208 8E2D0044 */  lw    $t5, 0x44($s1)
/* 0BAC4C 8015A20C 160D0006 */  bne   $s0, $t5, .L8015A228_ovl3
/* 0BAC50 8015A210 00000000 */   nop   
.L8015A214_ovl3:
/* 0BAC54 8015A214 0C002DAF */  jal   finish_current_thread
/* 0BAC58 8015A218 02002025 */   move  $a0, $s0
/* 0BAC5C 8015A21C 8E2F0044 */  lw    $t7, 0x44($s1)
/* 0BAC60 8015A220 120FFFFC */  beq   $s0, $t7, .L8015A214_ovl3
/* 0BAC64 8015A224 00000000 */   nop   
.L8015A228_ovl3:
/* 0BAC68 8015A228 0C03E905 */  jal   func_800FA414
/* 0BAC6C 8015A22C 24040005 */   li    $a0, 5
/* 0BAC70 8015A230 3C040002 */  lui   $a0, (0x0002009B >> 16) # lui $a0, 2
/* 0BAC74 8015A234 3C050002 */  lui   $a1, (0x0002009C >> 16) # lui $a1, 2
/* 0BAC78 8015A238 34A5009C */  ori   $a1, (0x0002009C & 0xFFFF) # ori $a1, $a1, 0x9c
/* 0BAC7C 8015A23C 3484009B */  ori   $a0, (0x0002009B & 0xFFFF) # ori $a0, $a0, 0x9b
/* 0BAC80 8015A240 0C048C3A */  jal   func_801230E8
/* 0BAC84 8015A244 00003025 */   move  $a2, $zero
/* 0BAC88 8015A248 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0BAC8C 8015A24C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0BAC90 8015A250 3C09800E */  lui   $t1, 0x800e
/* 0BAC94 8015A254 3C01800F */  lui   $at, 0x800f
/* 0BAC98 8015A258 8DD90000 */  lw    $t9, ($t6)
/* 0BAC9C 8015A25C 24180002 */  li    $t8, 2
/* 0BACA0 8015A260 2404001A */  li    $a0, 26
/* 0BACA4 8015A264 00194080 */  sll   $t0, $t9, 2
/* 0BACA8 8015A268 01284821 */  addu  $t1, $t1, $t0
/* 0BACAC 8015A26C 8D290D50 */  lw    $t1, 0xd50($t1)
/* 0BACB0 8015A270 00095080 */  sll   $t2, $t1, 2
/* 0BACB4 8015A274 002A0821 */  addu  $at, $at, $t2
/* 0BACB8 8015A278 0C002DAF */  jal   finish_current_thread
/* 0BACBC 8015A27C AC388060 */   sw    $t8, -0x7fa0($at)
/* 0BACC0 8015A280 3C040002 */  lui   $a0, (0x0002009F >> 16) # lui $a0, 2
/* 0BACC4 8015A284 3C050002 */  lui   $a1, (0x000200A0 >> 16) # lui $a1, 2
/* 0BACC8 8015A288 34A500A0 */  ori   $a1, (0x000200A0 & 0xFFFF) # ori $a1, $a1, 0xa0
/* 0BACCC 8015A28C 3484009F */  ori   $a0, (0x0002009F & 0xFFFF) # ori $a0, $a0, 0x9f
/* 0BACD0 8015A290 0C048C3A */  jal   func_801230E8
/* 0BACD4 8015A294 00003025 */   move  $a2, $zero
/* 0BACD8 8015A298 0C029D9E */  jal   play_sound
/* 0BACDC 8015A29C 24040259 */   li    $a0, 601
/* 0BACE0 8015A2A0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0BACE4 8015A2A4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0BACE8 8015A2A8 3C01428C */  li    $at, 0x428C0000 # 70.000000
/* 0BACEC 8015A2AC 44810000 */  mtc1  $at, $f0
/* 0BACF0 8015A2B0 8C4B0000 */  lw    $t3, ($v0)
/* 0BACF4 8015A2B4 3C01800E */  lui   $at, 0x800e
/* 0BACF8 8015A2B8 44804000 */  mtc1  $zero, $f8
/* 0BACFC 8015A2BC 000B6080 */  sll   $t4, $t3, 2
/* 0BAD00 8015A2C0 002C0821 */  addu  $at, $at, $t4
/* 0BAD04 8015A2C4 E4203210 */  swc1  $f0, 0x3210($at)
/* 0BAD08 8015A2C8 8C4D0000 */  lw    $t5, ($v0)
/* 0BAD0C 8015A2CC 3C01800E */  lui   $at, 0x800e
/* 0BAD10 8015A2D0 24040022 */  li    $a0, 34
/* 0BAD14 8015A2D4 000D7880 */  sll   $t7, $t5, 2
/* 0BAD18 8015A2D8 002F0821 */  addu  $at, $at, $t7
/* 0BAD1C 8015A2DC E4283750 */  swc1  $f8, 0x3750($at)
/* 0BAD20 8015A2E0 8C4E0000 */  lw    $t6, ($v0)
/* 0BAD24 8015A2E4 3C01800E */  lui   $at, 0x800e
/* 0BAD28 8015A2E8 000EC880 */  sll   $t9, $t6, 2
/* 0BAD2C 8015A2EC 00390821 */  addu  $at, $at, $t9
/* 0BAD30 8015A2F0 0C002DAF */  jal   finish_current_thread
/* 0BAD34 8015A2F4 E4203C90 */   swc1  $f0, 0x3c90($at)
/* 0BAD38 8015A2F8 8E280030 */  lw    $t0, 0x30($s1)
/* 0BAD3C 8015A2FC 25090001 */  addiu $t1, $t0, 1
/* 0BAD40 8015A300 0C02BE85 */  jal   func_800AFA14
/* 0BAD44 8015A304 AE290030 */   sw    $t1, 0x30($s1)
/* 0BAD48 8015A308 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0BAD4C 8015A30C 8FB00014 */  lw    $s0, 0x14($sp)
/* 0BAD50 8015A310 8FB10018 */  lw    $s1, 0x18($sp)
/* 0BAD54 8015A314 03E00008 */  jr    $ra
/* 0BAD58 8015A318 27BD0020 */   addiu $sp, $sp, 0x20
.type func_8015A144_ovl3, @function
.size func_8015A144_ovl3, . - func_8015A144_ovl3
