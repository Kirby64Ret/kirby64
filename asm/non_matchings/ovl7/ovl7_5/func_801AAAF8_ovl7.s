glabel func_801AAAF8_ovl7
/* 150B68 801AAAF8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 150B6C 801AAAFC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 150B70 801AAB00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 150B74 801AAB04 AFBF0014 */  sw    $ra, 0x14($sp)
/* 150B78 801AAB08 AFA40018 */  sw    $a0, 0x18($sp)
/* 150B7C 801AAB0C 8DC60000 */  lw    $a2, ($t6)
/* 150B80 801AAB10 3C0F800E */ lui $t7, %hi(D_800E7730)
/* 150B84 801AAB14 24010006 */  li    $at, 6
/* 150B88 801AAB18 01E67821 */  addu  $t7, $t7, $a2
/* 150B8C 801AAB1C 91EF7730 */ lbu $t7, %lo(D_800E7730)($t7)
/* 150B90 801AAB20 3C03800E */ lui $v1, %hi(D_800E77A0)
/* 150B94 801AAB24 0006C040 */  sll   $t8, $a2, 1
/* 150B98 801AAB28 15E10009 */  bne   $t7, $at, .L801AAB50_ovl7
/* 150B9C 801AAB2C 00781821 */   addu  $v1, $v1, $t8
/* 150BA0 801AAB30 946377A0 */ lhu $v1, %lo(D_800E77A0)($v1)
/* 150BA4 801AAB34 18600006 */  blez  $v1, .L801AAB50_ovl7
/* 150BA8 801AAB38 2861002C */   slti  $at, $v1, 0x2c
/* 150BAC 801AAB3C 10200004 */  beqz  $at, .L801AAB50_ovl7
/* 150BB0 801AAB40 00000000 */   nop   
/* 150BB4 801AAB44 0C070162 */  jal   func_801C0588_ovl7
/* 150BB8 801AAB48 00000000 */   nop   
/* 150BBC 801AAB4C 144000C0 */  bnez  $v0, .L801AAE50_ovl7
.L801AAB50_ovl7:
/* 150BC0 801AAB50 3C198005 */   lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 150BC4 801AAB54 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 150BC8 801AAB58 3C03800F */ lui $v1, %hi(D_800E83E0)
/* 150BCC 801AAB5C 3C08800F */ lui $t0, %hi(D_800E8760)
/* 150BD0 801AAB60 8F220000 */  lw    $v0, ($t9)
/* 150BD4 801AAB64 24010012 */  li    $at, 18
/* 150BD8 801AAB68 00021080 */  sll   $v0, $v0, 2
/* 150BDC 801AAB6C 00621821 */  addu  $v1, $v1, $v0
/* 150BE0 801AAB70 8C6383E0 */ lw $v1, %lo(D_800E83E0)($v1)
/* 150BE4 801AAB74 01024021 */  addu  $t0, $t0, $v0
/* 150BE8 801AAB78 14600004 */  bnez  $v1, .L801AAB8C_ovl7
/* 150BEC 801AAB7C 00000000 */   nop   
/* 150BF0 801AAB80 8D088760 */ lw $t0, %lo(D_800E8760)($t0)
/* 150BF4 801AAB84 11000012 */  beqz  $t0, .L801AABD0_ovl7
/* 150BF8 801AAB88 00000000 */   nop   
.L801AAB8C_ovl7:
/* 150BFC 801AAB8C 14610009 */  bne   $v1, $at, .L801AABB4_ovl7
/* 150C00 801AAB90 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 150C04 801AAB94 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 150C08 801AAB98 00822021 */  addu  $a0, $a0, $v0
/* 150C0C 801AAB9C 3C05801B */  lui   $a1, %hi(D_801AC33C) # $a1, 0x801b
/* 150C10 801AABA0 24A5C33C */  addiu $a1, %lo(D_801AC33C) # addiu $a1, $a1, -0x3cc4
/* 150C14 801AABA4 0C02C7B2 */  jal   assign_new_process_entry
/* 150C18 801AABA8 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 150C1C 801AABAC 100000A9 */  b     .L801AAE54_ovl7
/* 150C20 801AABB0 8FBF0014 */   lw    $ra, 0x14($sp)
.L801AABB4_ovl7:
/* 150C24 801AABB4 00822021 */  addu  $a0, $a0, $v0
/* 150C28 801AABB8 3C05801B */  lui   $a1, %hi(func_801AC11C) # $a1, 0x801b
/* 150C2C 801AABBC 24A5C11C */  addiu $a1, %lo(func_801AC11C) # addiu $a1, $a1, -0x3ee4
/* 150C30 801AABC0 0C02C7B2 */  jal   assign_new_process_entry
/* 150C34 801AABC4 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 150C38 801AABC8 100000A2 */  b     .L801AAE54_ovl7
/* 150C3C 801AABCC 8FBF0014 */   lw    $ra, 0x14($sp)
.L801AABD0_ovl7:
/* 150C40 801AABD0 0C06AC02 */  jal   func_801AB008_ovl7
/* 150C44 801AABD4 00000000 */   nop   
/* 150C48 801AABD8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 150C4C 801AABDC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 150C50 801AABE0 3C09800F */ lui $t1, %hi(D_800E8AE0)
/* 150C54 801AABE4 3C014160 */  li    $at, 0x41600000 # 14.000000
/* 150C58 801AABE8 8C620000 */  lw    $v0, ($v1)
/* 150C5C 801AABEC 00021080 */  sll   $v0, $v0, 2
/* 150C60 801AABF0 01224821 */  addu  $t1, $t1, $v0
/* 150C64 801AABF4 8D298AE0 */ lw $t1, %lo(D_800E8AE0)($t1)
/* 150C68 801AABF8 312A0001 */  andi  $t2, $t1, 1
/* 150C6C 801AABFC 51400017 */  beql  $t2, $zero, .L801AAC5C_ovl7
/* 150C70 801AAC00 44810000 */   mtc1  $at, $f0
/* 150C74 801AAC04 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 150C78 801AAC08 44810000 */  mtc1  $at, $f0
/* 150C7C 801AAC0C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 150C80 801AAC10 00220821 */  addu  $at, $at, $v0
/* 150C84 801AAC14 C4246A10 */ lwc1 $f4, %lo(D_800E6A10)($at)
/* 150C88 801AAC18 3C01800E */ lui $at, %hi(D_800E64D0)
/* 150C8C 801AAC1C 00220821 */  addu  $at, $at, $v0
/* 150C90 801AAC20 46002182 */  mul.s $f6, $f4, $f0
/* 150C94 801AAC24 44804000 */  mtc1  $zero, $f8
/* 150C98 801AAC28 E42664D0 */ swc1 $f6, %lo(D_800E64D0)($at)
/* 150C9C 801AAC2C 8C6B0000 */  lw    $t3, ($v1)
/* 150CA0 801AAC30 3C01800E */ lui $at, %hi(D_800E6690)
/* 150CA4 801AAC34 000B6080 */  sll   $t4, $t3, 2
/* 150CA8 801AAC38 002C0821 */  addu  $at, $at, $t4
/* 150CAC 801AAC3C E4286690 */ swc1 $f8, %lo(D_800E6690)($at)
/* 150CB0 801AAC40 8C6D0000 */  lw    $t5, ($v1)
/* 150CB4 801AAC44 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 150CB8 801AAC48 000D7080 */  sll   $t6, $t5, 2
/* 150CBC 801AAC4C 002E0821 */  addu  $at, $at, $t6
/* 150CC0 801AAC50 10000014 */  b     .L801AACA4_ovl7
/* 150CC4 801AAC54 E4206850 */   swc1  $f0, 0x6850($at)
/* 150CC8 801AAC58 44810000 */  mtc1  $at, $f0
.L801AAC5C_ovl7:
/* 150CCC 801AAC5C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 150CD0 801AAC60 00220821 */  addu  $at, $at, $v0
/* 150CD4 801AAC64 C42A6A10 */ lwc1 $f10, %lo(D_800E6A10)($at)
/* 150CD8 801AAC68 3C01800E */ lui $at, %hi(D_800E64D0)
/* 150CDC 801AAC6C 00220821 */  addu  $at, $at, $v0
/* 150CE0 801AAC70 46005402 */  mul.s $f16, $f10, $f0
/* 150CE4 801AAC74 44809000 */  mtc1  $zero, $f18
/* 150CE8 801AAC78 E43064D0 */ swc1 $f16, %lo(D_800E64D0)($at)
/* 150CEC 801AAC7C 8C6F0000 */  lw    $t7, ($v1)
/* 150CF0 801AAC80 3C01800E */ lui $at, %hi(D_800E6690)
/* 150CF4 801AAC84 000FC080 */  sll   $t8, $t7, 2
/* 150CF8 801AAC88 00380821 */  addu  $at, $at, $t8
/* 150CFC 801AAC8C E4326690 */ swc1 $f18, %lo(D_800E6690)($at)
/* 150D00 801AAC90 8C790000 */  lw    $t9, ($v1)
/* 150D04 801AAC94 3C01800E */ lui $at, %hi(D_800E6850)
/* 150D08 801AAC98 00194080 */  sll   $t0, $t9, 2
/* 150D0C 801AAC9C 00280821 */  addu  $at, $at, $t0
/* 150D10 801AACA0 E4206850 */ swc1 $f0, %lo(D_800E6850)($at)
.L801AACA4_ovl7:
/* 150D14 801AACA4 8C660000 */  lw    $a2, ($v1)
/* 150D18 801AACA8 3C02800E */ lui $v0, %hi(D_800E7730)
/* 150D1C 801AACAC 3C03800E */ lui $v1, %hi(D_800E77A0)
/* 150D20 801AACB0 00461021 */  addu  $v0, $v0, $a2
/* 150D24 801AACB4 90427730 */ lbu $v0, %lo(D_800E7730)($v0)
/* 150D28 801AACB8 24010006 */  li    $at, 6
/* 150D2C 801AACBC 00064840 */  sll   $t1, $a2, 1
/* 150D30 801AACC0 14410029 */  bne   $v0, $at, .L801AAD68_ovl7
/* 150D34 801AACC4 00691821 */   addu  $v1, $v1, $t1
/* 150D38 801AACC8 946377A0 */ lhu $v1, %lo(D_800E77A0)($v1)
/* 150D3C 801AACCC 28610008 */  slti  $at, $v1, 8
/* 150D40 801AACD0 14200025 */  bnez  $at, .L801AAD68_ovl7
/* 150D44 801AACD4 2861002C */   slti  $at, $v1, 0x2c
/* 150D48 801AACD8 10200023 */  beqz  $at, .L801AAD68_ovl7
/* 150D4C 801AACDC 3C04801D */   lui   $a0, %hi(D_801CB0F8) # $a0, 0x801d
/* 150D50 801AACE0 0C068E4E */  jal   func_801A3938_ovl7
/* 150D54 801AACE4 2484B0F8 */   addiu $a0, %lo(D_801CB0F8) # addiu $a0, $a0, -0x4f08
/* 150D58 801AACE8 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 150D5C 801AACEC 0C068DB3 */  jal   func_801A36CC_ovl7
/* 150D60 801AACF0 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
/* 150D64 801AACF4 0C06835D */  jal   func_801A0D74_ovl7
/* 150D68 801AACF8 8FA40018 */   lw    $a0, 0x18($sp)
/* 150D6C 801AACFC 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 150D70 801AAD00 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 150D74 801AAD04 3C03800E */ lui $v1, %hi(D_800E77A0)
/* 150D78 801AAD08 3C04801D */  lui   $a0, %hi(D_801CA7DC) # $a0, 0x801d
/* 150D7C 801AAD0C 8D460000 */  lw    $a2, ($t2)
/* 150D80 801AAD10 2484A7DC */  addiu $a0, %lo(D_801CA7DC) # addiu $a0, $a0, -0x5824
/* 150D84 801AAD14 00065840 */  sll   $t3, $a2, 1
/* 150D88 801AAD18 006B1821 */  addu  $v1, $v1, $t3
/* 150D8C 801AAD1C 946377A0 */ lhu $v1, %lo(D_800E77A0)($v1)
/* 150D90 801AAD20 28610008 */  slti  $at, $v1, 8
/* 150D94 801AAD24 1420000A */  bnez  $at, .L801AAD50_ovl7
/* 150D98 801AAD28 28610024 */   slti  $at, $v1, 0x24
/* 150D9C 801AAD2C 10200008 */  beqz  $at, .L801AAD50_ovl7
/* 150DA0 801AAD30 00C02825 */   move  $a1, $a2
/* 150DA4 801AAD34 3C04801D */  lui   $a0, %hi(D_801D0A38) # $a0, 0x801d
/* 150DA8 801AAD38 0C0445EF */  jal   func_801117BC
/* 150DAC 801AAD3C 24840A38 */   addiu $a0, %lo(D_801D0A38) # addiu $a0, $a0, 0xa38
/* 150DB0 801AAD40 0C044713 */  jal   func_80111C4C
/* 150DB4 801AAD44 00402025 */   move  $a0, $v0
/* 150DB8 801AAD48 10000035 */  b     .L801AAE20_ovl7
/* 150DBC 801AAD4C 00000000 */   nop   
.L801AAD50_ovl7:
/* 150DC0 801AAD50 0C0445EF */  jal   func_801117BC
/* 150DC4 801AAD54 00C02825 */   move  $a1, $a2
/* 150DC8 801AAD58 0C044713 */  jal   func_80111C4C
/* 150DCC 801AAD5C 00402025 */   move  $a0, $v0
/* 150DD0 801AAD60 1000002F */  b     .L801AAE20_ovl7
/* 150DD4 801AAD64 00000000 */   nop   
.L801AAD68_ovl7:
/* 150DD8 801AAD68 24010006 */  li    $at, 6
/* 150DDC 801AAD6C 1441001B */  bne   $v0, $at, .L801AADDC_ovl7
/* 150DE0 801AAD70 00066040 */   sll   $t4, $a2, 1
/* 150DE4 801AAD74 3C03800E */ lui $v1, %hi(D_800E77A0)
/* 150DE8 801AAD78 006C1821 */  addu  $v1, $v1, $t4
/* 150DEC 801AAD7C 946377A0 */ lhu $v1, %lo(D_800E77A0)($v1)
/* 150DF0 801AAD80 18600016 */  blez  $v1, .L801AADDC_ovl7
/* 150DF4 801AAD84 28610008 */   slti  $at, $v1, 8
/* 150DF8 801AAD88 10200014 */  beqz  $at, .L801AADDC_ovl7
/* 150DFC 801AAD8C 00000000 */   nop   
/* 150E00 801AAD90 0C06835D */  jal   func_801A0D74_ovl7
/* 150E04 801AAD94 8FA40018 */   lw    $a0, 0x18($sp)
/* 150E08 801AAD98 10400006 */  beqz  $v0, .L801AADB4_ovl7
/* 150E0C 801AAD9C 3C04801D */   lui   $a0, %hi(D_801CB008) # $a0, 0x801d
/* 150E10 801AADA0 0C068E4E */  jal   func_801A3938_ovl7
/* 150E14 801AADA4 2484B008 */   addiu $a0, %lo(D_801CB008) # addiu $a0, $a0, -0x4ff8
/* 150E18 801AADA8 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 150E1C 801AADAC 0C068DB3 */  jal   func_801A36CC_ovl7
/* 150E20 801AADB0 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
.L801AADB4_ovl7:
/* 150E24 801AADB4 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 150E28 801AADB8 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 150E2C 801AADBC 3C04801D */  lui   $a0, %hi(D_801D0A58) # $a0, 0x801d
/* 150E30 801AADC0 24840A58 */  addiu $a0, %lo(D_801D0A58) # addiu $a0, $a0, 0xa58
/* 150E34 801AADC4 0C0445EF */  jal   func_801117BC
/* 150E38 801AADC8 8DA50000 */   lw    $a1, ($t5)
/* 150E3C 801AADCC 0C044713 */  jal   func_80111C4C
/* 150E40 801AADD0 00402025 */   move  $a0, $v0
/* 150E44 801AADD4 10000012 */  b     .L801AAE20_ovl7
/* 150E48 801AADD8 00000000 */   nop   
.L801AADDC_ovl7:
/* 150E4C 801AADDC 0C06835D */  jal   func_801A0D74_ovl7
/* 150E50 801AADE0 8FA40018 */   lw    $a0, 0x18($sp)
/* 150E54 801AADE4 10400006 */  beqz  $v0, .L801AAE00_ovl7
/* 150E58 801AADE8 3C04801D */   lui   $a0, %hi(D_801CB008) # $a0, 0x801d
/* 150E5C 801AADEC 0C068E4E */  jal   func_801A3938_ovl7
/* 150E60 801AADF0 2484B008 */   addiu $a0, %lo(D_801CB008) # addiu $a0, $a0, -0x4ff8
/* 150E64 801AADF4 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 150E68 801AADF8 0C068DB3 */  jal   func_801A36CC_ovl7
/* 150E6C 801AADFC 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
.L801AAE00_ovl7:
/* 150E70 801AAE00 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 150E74 801AAE04 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 150E78 801AAE08 3C04801D */  lui   $a0, %hi(D_801CA6F4) # $a0, 0x801d
/* 150E7C 801AAE0C 2484A6F4 */  addiu $a0, %lo(D_801CA6F4) # addiu $a0, $a0, -0x590c
/* 150E80 801AAE10 0C0445EF */  jal   func_801117BC
/* 150E84 801AAE14 8DC50000 */   lw    $a1, ($t6)
/* 150E88 801AAE18 0C044713 */  jal   func_80111C4C
/* 150E8C 801AAE1C 00402025 */   move  $a0, $v0
.L801AAE20_ovl7:
/* 150E90 801AAE20 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 150E94 801AAE24 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 150E98 801AAE28 3C08800F */  lui   $t0, %hi(D_800E8920) # $t0, 0x800f
/* 150E9C 801AAE2C 25088920 */  addiu $t0, %lo(D_800E8920) # addiu $t0, $t0, -0x76e0
/* 150EA0 801AAE30 8DF80000 */  lw    $t8, ($t7)
/* 150EA4 801AAE34 24010001 */  li    $at, 1
/* 150EA8 801AAE38 0018C880 */  sll   $t9, $t8, 2
/* 150EAC 801AAE3C 03281021 */  addu  $v0, $t9, $t0
/* 150EB0 801AAE40 8C490000 */  lw    $t1, ($v0)
/* 150EB4 801AAE44 55210003 */  bnel  $t1, $at, .L801AAE54_ovl7
/* 150EB8 801AAE48 8FBF0014 */   lw    $ra, 0x14($sp)
/* 150EBC 801AAE4C AC400000 */  sw    $zero, ($v0)
.L801AAE50_ovl7:
/* 150EC0 801AAE50 8FBF0014 */  lw    $ra, 0x14($sp)
.L801AAE54_ovl7:
/* 150EC4 801AAE54 27BD0018 */  addiu $sp, $sp, 0x18
/* 150EC8 801AAE58 03E00008 */  jr    $ra
/* 150ECC 801AAE5C 00000000 */   nop   
.type func_801AAAF8_ovl7, @function
.size func_801AAAF8_ovl7, . - func_801AAAF8_ovl7
