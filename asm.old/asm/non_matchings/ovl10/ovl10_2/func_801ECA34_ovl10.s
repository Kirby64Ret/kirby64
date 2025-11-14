glabel func_801ECA34_ovl10
/* 1DD7A4 801ECA34 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 1DD7A8 801ECA38 AFB50038 */  sw    $s5, 0x38($sp)
/* 1DD7AC 801ECA3C 3C158005 */  lui   $s5, %hi(D_8004A7C4) # $s5, 0x8005
/* 1DD7B0 801ECA40 26B5A7C4 */  addiu $s5, %lo(D_8004A7C4) # addiu $s5, $s5, -0x583c
/* 1DD7B4 801ECA44 8EA30000 */  lw    $v1, ($s5)
/* 1DD7B8 801ECA48 AFBF003C */  sw    $ra, 0x3c($sp)
/* 1DD7BC 801ECA4C AFB40034 */  sw    $s4, 0x34($sp)
/* 1DD7C0 801ECA50 AFB30030 */  sw    $s3, 0x30($sp)
/* 1DD7C4 801ECA54 AFB2002C */  sw    $s2, 0x2c($sp)
/* 1DD7C8 801ECA58 AFB10028 */  sw    $s1, 0x28($sp)
/* 1DD7CC 801ECA5C AFB00024 */  sw    $s0, 0x24($sp)
/* 1DD7D0 801ECA60 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 1DD7D4 801ECA64 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 1DD7D8 801ECA68 8C710000 */  lw    $s1, ($v1)
/* 1DD7DC 801ECA6C 3C0E800B */  lui   $t6, %hi(D_800B79F4) # $t6, 0x800b
/* 1DD7E0 801ECA70 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DD7E4 801ECA74 00118880 */  sll   $s1, $s1, 2
/* 1DD7E8 801ECA78 00310821 */  addu  $at, $at, $s1
/* 1DD7EC 801ECA7C 25CE79F4 */  addiu $t6, %lo(D_800B79F4) # addiu $t6, $t6, 0x79f4
/* 1DD7F0 801ECA80 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1DD7F4 801ECA84 8C780000 */  lw    $t8, ($v1)
/* 1DD7F8 801ECA88 3C10800E */ lui $s0, %hi(D_800E1B50)
/* 1DD7FC 801ECA8C 02118021 */  addu  $s0, $s0, $s1
/* 1DD800 801ECA90 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DD804 801ECA94 0018C880 */  sll   $t9, $t8, 2
/* 1DD808 801ECA98 8E101B50 */ lw $s0, %lo(D_800E1B50)($s0)
/* 1DD80C 801ECA9C 00809025 */  move  $s2, $a0
/* 1DD810 801ECAA0 00390821 */  addu  $at, $at, $t9
/* 1DD814 801ECAA4 240F0002 */  li    $t7, 2
/* 1DD818 801ECAA8 3C08801F */  lui   $t0, %hi(D_801F4148_ovl10) # $t0, 0x801f
/* 1DD81C 801ECAAC AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 1DD820 801ECAB0 25084148 */  addiu $t0, %lo(D_801F4148_ovl10) # addiu $t0, $t0, 0x4148
/* 1DD824 801ECAB4 3C040001 */  lui   $a0, (0x000102B4 >> 16) # lui $a0, 1
/* 1DD828 801ECAB8 348402B4 */  ori   $a0, (0x000102B4 & 0xFFFF) # ori $a0, $a0, 0x2b4
/* 1DD82C 801ECABC 0C02A806 */  jal   func_800AA018
/* 1DD830 801ECAC0 AE080098 */   sw    $t0, 0x98($s0)
/* 1DD834 801ECAC4 3C040001 */  lui   $a0, (0x000102B5 >> 16) # lui $a0, 1
/* 1DD838 801ECAC8 0C02A806 */  jal   func_800AA018
/* 1DD83C 801ECACC 348402B5 */   ori   $a0, (0x000102B5 & 0xFFFF) # ori $a0, $a0, 0x2b5
/* 1DD840 801ECAD0 0C02CD48 */  jal   func_800B3520
/* 1DD844 801ECAD4 00000000 */   nop   
/* 1DD848 801ECAD8 0C07BBF3 */  jal   func_801EEFCC_ovl10
/* 1DD84C 801ECADC 00000000 */   nop   
/* 1DD850 801ECAE0 8EA90000 */  lw    $t1, ($s5)
/* 1DD854 801ECAE4 3C02800E */ lui $v0, %hi(gEntityVtableIndexArray)
/* 1DD858 801ECAE8 3C14800E */  lui   $s4, %hi(D_800E6A10) # $s4, 0x800e
/* 1DD85C 801ECAEC 8D310000 */  lw    $s1, ($t1)
/* 1DD860 801ECAF0 26946A10 */  addiu $s4, %lo(D_800E6A10) # addiu $s4, $s4, 0x6a10
/* 1DD864 801ECAF4 24010008 */  li    $at, 8
/* 1DD868 801ECAF8 00118880 */  sll   $s1, $s1, 2
/* 1DD86C 801ECAFC 00511021 */  addu  $v0, $v0, $s1
/* 1DD870 801ECB00 8C42DC50 */ lw $v0, %lo(gEntityVtableIndexArray)($v0)
/* 1DD874 801ECB04 02915021 */  addu  $t2, $s4, $s1
/* 1DD878 801ECB08 10410002 */  beq   $v0, $at, .L801ECB14_ovl10
/* 1DD87C 801ECB0C 2401000C */   li    $at, 12
/* 1DD880 801ECB10 14410029 */  bne   $v0, $at, .L801ECBB8_ovl10
.L801ECB14_ovl10:
/* 1DD884 801ECB14 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 1DD888 801ECB18 44812000 */  mtc1  $at, $f4
/* 1DD88C 801ECB1C C5400000 */  lwc1  $f0, ($t2)
/* 1DD890 801ECB20 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1DD894 801ECB24 00310821 */  addu  $at, $at, $s1
/* 1DD898 801ECB28 46002032 */  c.eq.s $f4, $f0
/* 1DD89C 801ECB2C 00000000 */  nop   
/* 1DD8A0 801ECB30 45020007 */  bc1fl .L801ECB50_ovl10
/* 1DD8A4 801ECB34 3C01BF80 */   lui   $at, %hi(D_BF8025D0) # $at, 0xbf80
/* 1DD8A8 801ECB38 44803000 */  mtc1  $zero, $f6
/* 1DD8AC 801ECB3C C42825D0 */  lwc1  $f8, %lo(D_BF8025D0)($at)
/* 1DD8B0 801ECB40 4608303C */  c.lt.s $f6, $f8
/* 1DD8B4 801ECB44 00000000 */  nop   
/* 1DD8B8 801ECB48 4501000F */  bc1t  .L801ECB88_ovl10
/* 1DD8BC 801ECB4C 3C01BF80 */   li    $at, 0xBF800000 # -1.000000
.L801ECB50_ovl10:
/* 1DD8C0 801ECB50 44815000 */  mtc1  $at, $f10
/* 1DD8C4 801ECB54 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1DD8C8 801ECB58 00310821 */  addu  $at, $at, $s1
/* 1DD8CC 801ECB5C 46005032 */  c.eq.s $f10, $f0
/* 1DD8D0 801ECB60 00000000 */  nop   
/* 1DD8D4 801ECB64 4502000B */  bc1fl .L801ECB94_ovl10
/* 1DD8D8 801ECB68 920B003C */   lbu   $t3, 0x3c($s0)
/* 1DD8DC 801ECB6C C43025D0 */ lwc1 $f16, %lo(gEntitiesNextPosXArray)($at)
/* 1DD8E0 801ECB70 44809000 */  mtc1  $zero, $f18
/* 1DD8E4 801ECB74 00000000 */  nop   
/* 1DD8E8 801ECB78 4612803C */  c.lt.s $f16, $f18
/* 1DD8EC 801ECB7C 00000000 */  nop   
/* 1DD8F0 801ECB80 45020004 */  bc1fl .L801ECB94_ovl10
/* 1DD8F4 801ECB84 920B003C */   lbu   $t3, 0x3c($s0)
.L801ECB88_ovl10:
/* 1DD8F8 801ECB88 0C0667C7 */  jal   func_80199F1C_ovl10
/* 1DD8FC 801ECB8C 02402025 */   move  $a0, $s2
/* 1DD900 801ECB90 920B003C */  lbu   $t3, 0x3c($s0)
.L801ECB94_ovl10:
/* 1DD904 801ECB94 51600009 */  beql  $t3, $zero, .L801ECBBC_ovl10
/* 1DD908 801ECB98 8EA30000 */   lw    $v1, ($s5)
.L801ECB9C_ovl10:
/* 1DD90C 801ECB9C 0C066FA7 */  jal   func_8019BE9C_ovl10
/* 1DD910 801ECBA0 24040001 */   li    $a0, 1
/* 1DD914 801ECBA4 0C002DAF */  jal   finish_current_thread
/* 1DD918 801ECBA8 24040001 */   li    $a0, 1
/* 1DD91C 801ECBAC 920C003C */  lbu   $t4, 0x3c($s0)
/* 1DD920 801ECBB0 1580FFFA */  bnez  $t4, .L801ECB9C_ovl10
/* 1DD924 801ECBB4 00000000 */   nop   
.L801ECBB8_ovl10:
/* 1DD928 801ECBB8 8EA30000 */  lw    $v1, ($s5)
.L801ECBBC_ovl10:
/* 1DD92C 801ECBBC 3C14800E */  lui   $s4, %hi(D_800E6A10) # $s4, 0x800e
/* 1DD930 801ECBC0 26946A10 */  addiu $s4, %lo(D_800E6A10) # addiu $s4, $s4, 0x6a10
/* 1DD934 801ECBC4 8C710000 */  lw    $s1, ($v1)
/* 1DD938 801ECBC8 3C01801F */  lui   $at, %hi(D_801F4BA0_ovl10) # $at, 0x801f
/* 1DD93C 801ECBCC C4264BA0 */  lwc1  $f6, %lo(D_801F4BA0_ovl10)($at)
/* 1DD940 801ECBD0 00118880 */  sll   $s1, $s1, 2
/* 1DD944 801ECBD4 02916821 */  addu  $t5, $s4, $s1
/* 1DD948 801ECBD8 C5A40000 */  lwc1  $f4, ($t5)
/* 1DD94C 801ECBDC 3C13800E */  lui   $s3, %hi(D_800E4C50) # $s3, 0x800e
/* 1DD950 801ECBE0 26734C50 */  addiu $s3, %lo(D_800E4C50) # addiu $s3, $s3, 0x4c50
/* 1DD954 801ECBE4 46062202 */  mul.s $f8, $f4, $f6
/* 1DD958 801ECBE8 02717021 */  addu  $t6, $s3, $s1
/* 1DD95C 801ECBEC 3C12800F */  lui   $s2, %hi(D_800E9560) # $s2, 0x800f
/* 1DD960 801ECBF0 26529560 */  addiu $s2, %lo(D_800E9560) # addiu $s2, $s2, -0x6aa0
/* 1DD964 801ECBF4 24180001 */  li    $t8, 1
/* 1DD968 801ECBF8 E5C80000 */  swc1  $f8, ($t6)
/* 1DD96C 801ECBFC 8C6F0000 */  lw    $t7, ($v1)
/* 1DD970 801ECC00 000FC880 */  sll   $t9, $t7, 2
/* 1DD974 801ECC04 02594021 */  addu  $t0, $s2, $t9
/* 1DD978 801ECC08 AD180000 */  sw    $t8, ($t0)
/* 1DD97C 801ECC0C 8C710000 */  lw    $s1, ($v1)
/* 1DD980 801ECC10 00118880 */  sll   $s1, $s1, 2
/* 1DD984 801ECC14 02514821 */  addu  $t1, $s2, $s1
/* 1DD988 801ECC18 8D300000 */  lw    $s0, ($t1)
/* 1DD98C 801ECC1C 2A010005 */  slti  $at, $s0, 5
/* 1DD990 801ECC20 1020001E */  beqz  $at, .L801ECC9C_ovl10
/* 1DD994 801ECC24 3C01801F */   lui   $at, %hi(D_801F4BA4_ovl10) # $at, 0x801f
/* 1DD998 801ECC28 C4364BA4 */  lwc1  $f22, %lo(D_801F4BA4_ovl10)($at)
/* 1DD99C 801ECC2C 3C01801F */  lui   $at, %hi(D_801F4BA8_ovl10) # $at, 0x801f
/* 1DD9A0 801ECC30 C4344BA8 */  lwc1  $f20, %lo(D_801F4BA8_ovl10)($at)
/* 1DD9A4 801ECC34 44908000 */  mtc1  $s0, $f16
.L801ECC38_ovl10:
/* 1DD9A8 801ECC38 02915021 */  addu  $t2, $s4, $s1
/* 1DD9AC 801ECC3C C54A0000 */  lwc1  $f10, ($t2)
/* 1DD9B0 801ECC40 468084A0 */  cvt.s.w $f18, $f16
/* 1DD9B4 801ECC44 02715821 */  addu  $t3, $s3, $s1
/* 1DD9B8 801ECC48 24040001 */  li    $a0, 1
/* 1DD9BC 801ECC4C 4612B102 */  mul.s $f4, $f22, $f18
/* 1DD9C0 801ECC50 4604A181 */  sub.s $f6, $f20, $f4
/* 1DD9C4 801ECC54 46003207 */  neg.s $f8, $f6
/* 1DD9C8 801ECC58 46085402 */  mul.s $f16, $f10, $f8
/* 1DD9CC 801ECC5C 0C002DAF */  jal   finish_current_thread
/* 1DD9D0 801ECC60 E5700000 */   swc1  $f16, ($t3)
/* 1DD9D4 801ECC64 8EA30000 */  lw    $v1, ($s5)
/* 1DD9D8 801ECC68 8C6C0000 */  lw    $t4, ($v1)
/* 1DD9DC 801ECC6C 000C6880 */  sll   $t5, $t4, 2
/* 1DD9E0 801ECC70 024D1021 */  addu  $v0, $s2, $t5
/* 1DD9E4 801ECC74 8C4E0000 */  lw    $t6, ($v0)
/* 1DD9E8 801ECC78 25CF0001 */  addiu $t7, $t6, 1
/* 1DD9EC 801ECC7C AC4F0000 */  sw    $t7, ($v0)
/* 1DD9F0 801ECC80 8C710000 */  lw    $s1, ($v1)
/* 1DD9F4 801ECC84 00118880 */  sll   $s1, $s1, 2
/* 1DD9F8 801ECC88 0251C821 */  addu  $t9, $s2, $s1
/* 1DD9FC 801ECC8C 8F300000 */  lw    $s0, ($t9)
/* 1DDA00 801ECC90 2A010005 */  slti  $at, $s0, 5
/* 1DDA04 801ECC94 5420FFE8 */  bnezl $at, .L801ECC38_ovl10
/* 1DDA08 801ECC98 44908000 */   mtc1  $s0, $f16
.L801ECC9C_ovl10:
/* 1DDA0C 801ECC9C 0291C021 */  addu  $t8, $s4, $s1
/* 1DDA10 801ECCA0 3C01801F */  lui   $at, %hi(D_801F4BAC_ovl10) # $at, 0x801f
/* 1DDA14 801ECCA4 C4244BAC */  lwc1  $f4, %lo(D_801F4BAC_ovl10)($at)
/* 1DDA18 801ECCA8 C7120000 */  lwc1  $f18, ($t8)
/* 1DDA1C 801ECCAC 02714021 */  addu  $t0, $s3, $s1
/* 1DDA20 801ECCB0 46049182 */  mul.s $f6, $f18, $f4
/* 1DDA24 801ECCB4 E5060000 */  swc1  $f6, ($t0)
/* 1DDA28 801ECCB8 8FBF003C */  lw    $ra, 0x3c($sp)
/* 1DDA2C 801ECCBC 8FB50038 */  lw    $s5, 0x38($sp)
/* 1DDA30 801ECCC0 8FB40034 */  lw    $s4, 0x34($sp)
/* 1DDA34 801ECCC4 8FB30030 */  lw    $s3, 0x30($sp)
/* 1DDA38 801ECCC8 8FB2002C */  lw    $s2, 0x2c($sp)
/* 1DDA3C 801ECCCC 8FB10028 */  lw    $s1, 0x28($sp)
/* 1DDA40 801ECCD0 8FB00024 */  lw    $s0, 0x24($sp)
/* 1DDA44 801ECCD4 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 1DDA48 801ECCD8 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 1DDA4C 801ECCDC 03E00008 */  jr    $ra
/* 1DDA50 801ECCE0 27BD0040 */   addiu $sp, $sp, 0x40
.type func_801ECA34_ovl10, @function
.size func_801ECA34_ovl10, . - func_801ECA34_ovl10
