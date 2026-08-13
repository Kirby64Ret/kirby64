nonmatching func_801D7240_ovl8, 0x368

glabel func_801D7240_ovl8
    /* 17AD20 801D7240 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 17AD24 801D7244 AFB10018 */  sw         $s1, 0x18($sp)
    /* 17AD28 801D7248 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* 17AD2C 801D724C 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* 17AD30 801D7250 8E230000 */  lw         $v1, 0x0($s1)
    /* 17AD34 801D7254 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 17AD38 801D7258 AFB00014 */  sw         $s0, 0x14($sp)
    /* 17AD3C 801D725C AFA40048 */  sw         $a0, 0x48($sp)
    /* 17AD40 801D7260 8C660000 */  lw         $a2, 0x0($v1)
    /* 17AD44 801D7264 3C0E800F */  lui        $t6, %hi(D_800EA520)
    /* 17AD48 801D7268 00063080 */  sll        $a2, $a2, 2
    /* 17AD4C 801D726C 01C67021 */  addu       $t6, $t6, $a2
    /* 17AD50 801D7270 8DCEA520 */  lw         $t6, %lo(D_800EA520)($t6)
    /* 17AD54 801D7274 31CF00FF */  andi       $t7, $t6, 0xFF
    /* 17AD58 801D7278 15E00015 */  bnez       $t7, .L801D72D0_ovl8
    /* 17AD5C 801D727C 3C040002 */   lui       $a0, (0x20007 >> 16)
    /* 17AD60 801D7280 0C02A5D8 */  jal        func_800A9760
    /* 17AD64 801D7284 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
    /* 17AD68 801D7288 8E230000 */  lw         $v1, 0x0($s1)
    /* 17AD6C 801D728C 3C10800E */  lui        $s0, %hi(D_800E0D50)
    /* 17AD70 801D7290 26100D50 */  addiu      $s0, $s0, %lo(D_800E0D50)
    /* 17AD74 801D7294 8C660000 */  lw         $a2, 0x0($v1)
    /* 17AD78 801D7298 3C04800E */  lui        $a0, %hi(D_800DFBD0)
    /* 17AD7C 801D729C 2484FBD0 */  addiu      $a0, $a0, %lo(D_800DFBD0)
    /* 17AD80 801D72A0 00063080 */  sll        $a2, $a2, 2
    /* 17AD84 801D72A4 02064821 */  addu       $t1, $s0, $a2
    /* 17AD88 801D72A8 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 17AD8C 801D72AC 0086C021 */  addu       $t8, $a0, $a2
    /* 17AD90 801D72B0 8F190000 */  lw         $t9, 0x0($t8)
    /* 17AD94 801D72B4 000A5880 */  sll        $t3, $t2, 2
    /* 17AD98 801D72B8 008B6021 */  addu       $t4, $a0, $t3
    /* 17AD9C 801D72BC 8F280008 */  lw         $t0, 0x8($t9)
    /* 17ADA0 801D72C0 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 17ADA4 801D72C4 AFA8002C */  sw         $t0, 0x2C($sp)
    /* 17ADA8 801D72C8 8DAE001C */  lw         $t6, 0x1C($t5)
    /* 17ADAC 801D72CC AFAE0028 */  sw         $t6, 0x28($sp)
  .L801D72D0_ovl8:
    /* 17ADB0 801D72D0 3C0F801D */  lui        $t7, %hi(func_801D75A8_ovl8)
    /* 17ADB4 801D72D4 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 17ADB8 801D72D8 00260821 */  addu       $at, $at, $a2
    /* 17ADBC 801D72DC 25EF75A8 */  addiu      $t7, $t7, %lo(func_801D75A8_ovl8)
    /* 17ADC0 801D72E0 AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
    /* 17ADC4 801D72E4 8C790000 */  lw         $t9, 0x0($v1)
    /* 17ADC8 801D72E8 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 17ADCC 801D72EC 3C18800B */  lui        $t8, %hi(func_800B4954)
    /* 17ADD0 801D72F0 00194080 */  sll        $t0, $t9, 2
    /* 17ADD4 801D72F4 00280821 */  addu       $at, $at, $t0
    /* 17ADD8 801D72F8 27184954 */  addiu      $t8, $t8, %lo(func_800B4954)
    /* 17ADDC 801D72FC AC38EF90 */  sw         $t8, %lo(D_800DEF90)($at)
    /* 17ADE0 801D7300 8C690000 */  lw         $t1, 0x0($v1)
    /* 17ADE4 801D7304 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 17ADE8 801D7308 3C10800E */  lui        $s0, %hi(D_800E0D50)
    /* 17ADEC 801D730C 00095080 */  sll        $t2, $t1, 2
    /* 17ADF0 801D7310 002A0821 */  addu       $at, $at, $t2
    /* 17ADF4 801D7314 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* 17ADF8 801D7318 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 17ADFC 801D731C 3C01800F */  lui        $at, %hi(D_800EC2E0)
    /* 17AE00 801D7320 26100D50 */  addiu      $s0, $s0, %lo(D_800E0D50)
    /* 17AE04 801D7324 000B6080 */  sll        $t4, $t3, 2
    /* 17AE08 801D7328 002C0821 */  addu       $at, $at, $t4
    /* 17AE0C 801D732C AC20C2E0 */  sw         $zero, %lo(D_800EC2E0)($at)
    /* 17AE10 801D7330 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 17AE14 801D7334 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 17AE18 801D7338 000D7080 */  sll        $t6, $t5, 2
    /* 17AE1C 801D733C 002E0821 */  addu       $at, $at, $t6
    /* 17AE20 801D7340 0C05AEF4 */  jal        func_8016BBD0_ovl3
    /* 17AE24 801D7344 AC2098E0 */   sw        $zero, %lo(D_800E98E0)($at)
    /* 17AE28 801D7348 00002025 */  or         $a0, $zero, $zero
    /* 17AE2C 801D734C 24050001 */  addiu      $a1, $zero, 0x1
    /* 17AE30 801D7350 24060020 */  addiu      $a2, $zero, 0x20
    /* 17AE34 801D7354 0C02A040 */  jal        func_800A8100
    /* 17AE38 801D7358 8FA7002C */   lw        $a3, 0x2C($sp)
    /* 17AE3C 801D735C 8E2F0000 */  lw         $t7, 0x0($s1)
    /* 17AE40 801D7360 27A40030 */  addiu      $a0, $sp, 0x30
    /* 17AE44 801D7364 8FA50028 */  lw         $a1, 0x28($sp)
    /* 17AE48 801D7368 8DF90000 */  lw         $t9, 0x0($t7)
    /* 17AE4C 801D736C 0019C080 */  sll        $t8, $t9, 2
    /* 17AE50 801D7370 02184021 */  addu       $t0, $s0, $t8
    /* 17AE54 801D7374 0C02C8D0 */  jal        func_800B2340
    /* 17AE58 801D7378 8D060000 */   lw        $a2, 0x0($t0)
    /* 17AE5C 801D737C 8E230000 */  lw         $v1, 0x0($s1)
    /* 17AE60 801D7380 3C02800E */  lui        $v0, %hi(gEntitiesNextPosYArray)
    /* 17AE64 801D7384 24422790 */  addiu      $v0, $v0, %lo(gEntitiesNextPosYArray)
    /* 17AE68 801D7388 8C660000 */  lw         $a2, 0x0($v1)
    /* 17AE6C 801D738C 3C014270 */  lui        $at, (0x42700000 >> 16)
    /* 17AE70 801D7390 44813000 */  mtc1       $at, $f6
    /* 17AE74 801D7394 00063080 */  sll        $a2, $a2, 2
    /* 17AE78 801D7398 02064821 */  addu       $t1, $s0, $a2
    /* 17AE7C 801D739C 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 17AE80 801D73A0 00466821 */  addu       $t5, $v0, $a2
    /* 17AE84 801D73A4 3C09800E */  lui        $t1, %hi(D_800E5F90)
    /* 17AE88 801D73A8 000A5880 */  sll        $t3, $t2, 2
    /* 17AE8C 801D73AC 004B6021 */  addu       $t4, $v0, $t3
    /* 17AE90 801D73B0 C5840000 */  lwc1       $f4, 0x0($t4)
    /* 17AE94 801D73B4 3C01800E */  lui        $at, %hi(D_800E6BD0)
    /* 17AE98 801D73B8 27A4003C */  addiu      $a0, $sp, 0x3C
    /* 17AE9C 801D73BC 46062200 */  add.s      $f8, $f4, $f6
    /* 17AEA0 801D73C0 E5A80000 */  swc1       $f8, 0x0($t5)
    /* 17AEA4 801D73C4 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 17AEA8 801D73C8 000E7880 */  sll        $t7, $t6, 2
    /* 17AEAC 801D73CC 020FC821 */  addu       $t9, $s0, $t7
    /* 17AEB0 801D73D0 8F380000 */  lw         $t8, 0x0($t9)
    /* 17AEB4 801D73D4 00184080 */  sll        $t0, $t8, 2
    /* 17AEB8 801D73D8 01284821 */  addu       $t1, $t1, $t0
    /* 17AEBC 801D73DC 8D295F90 */  lw         $t1, %lo(D_800E5F90)($t1)
    /* 17AEC0 801D73E0 AFA9003C */  sw         $t1, 0x3C($sp)
    /* 17AEC4 801D73E4 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 17AEC8 801D73E8 000A5880 */  sll        $t3, $t2, 2
    /* 17AECC 801D73EC 020B6021 */  addu       $t4, $s0, $t3
    /* 17AED0 801D73F0 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 17AED4 801D73F4 000D7080 */  sll        $t6, $t5, 2
    /* 17AED8 801D73F8 002E0821 */  addu       $at, $at, $t6
    /* 17AEDC 801D73FC C42A6BD0 */  lwc1       $f10, %lo(D_800E6BD0)($at)
    /* 17AEE0 801D7400 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 17AEE4 801D7404 E7AA0040 */  swc1       $f10, 0x40($sp)
    /* 17AEE8 801D7408 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 17AEEC 801D740C 000FC880 */  sll        $t9, $t7, 2
    /* 17AEF0 801D7410 0219C021 */  addu       $t8, $s0, $t9
    /* 17AEF4 801D7414 8F080000 */  lw         $t0, 0x0($t8)
    /* 17AEF8 801D7418 00084880 */  sll        $t1, $t0, 2
    /* 17AEFC 801D741C 00290821 */  addu       $at, $at, $t1
    /* 17AF00 801D7420 C4306A10 */  lwc1       $f16, %lo(D_800E6A10)($at)
    /* 17AF04 801D7424 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
    /* 17AF08 801D7428 44819000 */  mtc1       $at, $f18
    /* 17AF0C 801D742C 00000000 */  nop
    /* 17AF10 801D7430 46128002 */  mul.s      $f0, $f16, $f18
    /* 17AF14 801D7434 44050000 */  mfc1       $a1, $f0
    /* 17AF18 801D7438 0C03E622 */  jal        func_800F9888
    /* 17AF1C 801D743C 00000000 */   nop
    /* 17AF20 801D7440 5440001F */  bnel       $v0, $zero, .L801D74C0_ovl8
    /* 17AF24 801D7444 8E2B0000 */   lw        $t3, 0x0($s1)
    /* 17AF28 801D7448 8E230000 */  lw         $v1, 0x0($s1)
    /* 17AF2C 801D744C 8FAA003C */  lw         $t2, 0x3C($sp)
    /* 17AF30 801D7450 3C02800E */  lui        $v0, %hi(D_800E6150)
    /* 17AF34 801D7454 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 17AF38 801D7458 24426150 */  addiu      $v0, $v0, %lo(D_800E6150)
    /* 17AF3C 801D745C 3C01800E */  lui        $at, %hi(D_800E5F90)
    /* 17AF40 801D7460 000B6080 */  sll        $t4, $t3, 2
    /* 17AF44 801D7464 004C6821 */  addu       $t5, $v0, $t4
    /* 17AF48 801D7468 ADAA0000 */  sw         $t2, 0x0($t5)
    /* 17AF4C 801D746C 8C660000 */  lw         $a2, 0x0($v1)
    /* 17AF50 801D7470 C7A40040 */  lwc1       $f4, 0x40($sp)
    /* 17AF54 801D7474 3C04800E */  lui        $a0, %hi(D_800E6D90)
    /* 17AF58 801D7478 00063080 */  sll        $a2, $a2, 2
    /* 17AF5C 801D747C 00467021 */  addu       $t6, $v0, $a2
    /* 17AF60 801D7480 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 17AF64 801D7484 00260821 */  addu       $at, $at, $a2
    /* 17AF68 801D7488 24846D90 */  addiu      $a0, $a0, %lo(D_800E6D90)
    /* 17AF6C 801D748C AC2F5F90 */  sw         $t7, %lo(D_800E5F90)($at)
    /* 17AF70 801D7490 8C790000 */  lw         $t9, 0x0($v1)
    /* 17AF74 801D7494 3C01800E */  lui        $at, %hi(D_800E6BD0)
    /* 17AF78 801D7498 0019C080 */  sll        $t8, $t9, 2
    /* 17AF7C 801D749C 00984021 */  addu       $t0, $a0, $t8
    /* 17AF80 801D74A0 E5040000 */  swc1       $f4, 0x0($t0)
    /* 17AF84 801D74A4 8C660000 */  lw         $a2, 0x0($v1)
    /* 17AF88 801D74A8 00063080 */  sll        $a2, $a2, 2
    /* 17AF8C 801D74AC 00864821 */  addu       $t1, $a0, $a2
    /* 17AF90 801D74B0 C5260000 */  lwc1       $f6, 0x0($t1)
    /* 17AF94 801D74B4 00260821 */  addu       $at, $at, $a2
    /* 17AF98 801D74B8 E4266BD0 */  swc1       $f6, %lo(D_800E6BD0)($at)
    /* 17AF9C 801D74BC 8E2B0000 */  lw         $t3, 0x0($s1)
  .L801D74C0_ovl8:
    /* 17AFA0 801D74C0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 17AFA4 801D74C4 44814000 */  mtc1       $at, $f8
    /* 17AFA8 801D74C8 8D660000 */  lw         $a2, 0x0($t3)
    /* 17AFAC 801D74CC 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 17AFB0 801D74D0 00063080 */  sll        $a2, $a2, 2
    /* 17AFB4 801D74D4 02066021 */  addu       $t4, $s0, $a2
    /* 17AFB8 801D74D8 8D8A0000 */  lw         $t2, 0x0($t4)
    /* 17AFBC 801D74DC 000A6880 */  sll        $t5, $t2, 2
    /* 17AFC0 801D74E0 002D0821 */  addu       $at, $at, $t5
    /* 17AFC4 801D74E4 C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
    /* 17AFC8 801D74E8 3C01C1A0 */  lui        $at, (0xC1A00000 >> 16)
    /* 17AFCC 801D74EC 460A4032 */  c.eq.s     $f8, $f10
    /* 17AFD0 801D74F0 00000000 */  nop
    /* 17AFD4 801D74F4 45020008 */  bc1fl      .L801D7518_ovl8
    /* 17AFD8 801D74F8 44819000 */   mtc1      $at, $f18
    /* 17AFDC 801D74FC 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* 17AFE0 801D7500 44818000 */  mtc1       $at, $f16
    /* 17AFE4 801D7504 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* 17AFE8 801D7508 00260821 */  addu       $at, $at, $a2
    /* 17AFEC 801D750C 10000005 */  b          .L801D7524_ovl8
    /* 17AFF0 801D7510 E43064D0 */   swc1      $f16, %lo(D_800E64D0)($at)
    /* 17AFF4 801D7514 44819000 */  mtc1       $at, $f18
  .L801D7518_ovl8:
    /* 17AFF8 801D7518 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* 17AFFC 801D751C 00260821 */  addu       $at, $at, $a2
    /* 17B000 801D7520 E43264D0 */  swc1       $f18, %lo(D_800E64D0)($at)
  .L801D7524_ovl8:
    /* 17B004 801D7524 0C029D9E */  jal        play_sound
    /* 17B008 801D7528 240401E9 */   addiu     $a0, $zero, 0x1E9
    /* 17B00C 801D752C 0C002DAF */  jal        ohSleep
    /* 17B010 801D7530 24040001 */   addiu     $a0, $zero, 0x1
    /* 17B014 801D7534 8E2F0000 */  lw         $t7, 0x0($s1)
    /* 17B018 801D7538 3C0E800B */  lui        $t6, %hi(func_800B531C)
    /* 17B01C 801D753C 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 17B020 801D7540 8DF90000 */  lw         $t9, 0x0($t7)
    /* 17B024 801D7544 25CE531C */  addiu      $t6, $t6, %lo(func_800B531C)
    /* 17B028 801D7548 3C04801D */  lui        $a0, %hi(D_801CA980)
    /* 17B02C 801D754C 0019C080 */  sll        $t8, $t9, 2
    /* 17B030 801D7550 00380821 */  addu       $at, $at, $t8
    /* 17B034 801D7554 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
    /* 17B038 801D7558 0C068CBB */  jal        func_801A32EC
    /* 17B03C 801D755C 2484A980 */   addiu     $a0, $a0, %lo(D_801CA980)
    /* 17B040 801D7560 8E230000 */  lw         $v1, 0x0($s1)
    /* 17B044 801D7564 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 17B048 801D7568 240B0001 */  addiu      $t3, $zero, 0x1
    /* 17B04C 801D756C 8C680000 */  lw         $t0, 0x0($v1)
    /* 17B050 801D7570 00084880 */  sll        $t1, $t0, 2
    /* 17B054 801D7574 00290821 */  addu       $at, $at, $t1
    /* 17B058 801D7578 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* 17B05C 801D757C 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 17B060 801D7580 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 17B064 801D7584 000C5080 */  sll        $t2, $t4, 2
    /* 17B068 801D7588 002A0821 */  addu       $at, $at, $t2
    /* 17B06C 801D758C 0C02BE85 */  jal        curObjSleepForever
    /* 17B070 801D7590 AC2B98E0 */   sw        $t3, %lo(D_800E98E0)($at)
    /* 17B074 801D7594 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 17B078 801D7598 8FB00014 */  lw         $s0, 0x14($sp)
    /* 17B07C 801D759C 8FB10018 */  lw         $s1, 0x18($sp)
    /* 17B080 801D75A0 03E00008 */  jr         $ra
    /* 17B084 801D75A4 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_801D7240_ovl8
.size func_801D7240_ovl8, . - func_801D7240_ovl8
