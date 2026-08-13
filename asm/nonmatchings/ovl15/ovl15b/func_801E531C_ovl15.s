nonmatching func_801E531C_ovl15, 0x3B0

glabel func_801E531C_ovl15
    /* 20FE7C 801E531C 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 20FE80 801E5320 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 20FE84 801E5324 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 20FE88 801E5328 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 20FE8C 801E532C AFA40048 */  sw         $a0, 0x48($sp)
    /* 20FE90 801E5330 8C660000 */  lw         $a2, 0x0($v1)
    /* 20FE94 801E5334 3C04800F */  lui        $a0, %hi(D_800E9560)
    /* 20FE98 801E5338 24849560 */  addiu      $a0, $a0, %lo(D_800E9560)
    /* 20FE9C 801E533C 3C07800E */  lui        $a3, %hi(D_800E1B50)
    /* 20FEA0 801E5340 00063080 */  sll        $a2, $a2, 2
    /* 20FEA4 801E5344 24E71B50 */  addiu      $a3, $a3, %lo(D_800E1B50)
    /* 20FEA8 801E5348 00861021 */  addu       $v0, $a0, $a2
    /* 20FEAC 801E534C 8C580000 */  lw         $t8, 0x0($v0)
    /* 20FEB0 801E5350 00E67021 */  addu       $t6, $a3, $a2
    /* 20FEB4 801E5354 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 20FEB8 801E5358 27190001 */  addiu      $t9, $t8, 0x1
    /* 20FEBC 801E535C AC590000 */  sw         $t9, 0x0($v0)
    /* 20FEC0 801E5360 AFAF0044 */  sw         $t7, 0x44($sp)
    /* 20FEC4 801E5364 8C660000 */  lw         $a2, 0x0($v1)
    /* 20FEC8 801E5368 3C08800E */  lui        $t0, %hi(gEntitiesNextPosXArray)
    /* 20FECC 801E536C 250825D0 */  addiu      $t0, $t0, %lo(gEntitiesNextPosXArray)
    /* 20FED0 801E5370 00063080 */  sll        $a2, $a2, 2
    /* 20FED4 801E5374 01064821 */  addu       $t1, $t0, $a2
    /* 20FED8 801E5378 C5240000 */  lwc1       $f4, 0x0($t1)
    /* 20FEDC 801E537C 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 20FEE0 801E5380 00260821 */  addu       $at, $at, $a2
    /* 20FEE4 801E5384 E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
    /* 20FEE8 801E5388 8C660000 */  lw         $a2, 0x0($v1)
    /* 20FEEC 801E538C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 20FEF0 801E5390 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
    /* 20FEF4 801E5394 00063080 */  sll        $a2, $a2, 2
    /* 20FEF8 801E5398 00260821 */  addu       $at, $at, $a2
    /* 20FEFC 801E539C C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 20FF00 801E53A0 3C01800F */  lui        $at, %hi(D_800EA8A0)
    /* 20FF04 801E53A4 00260821 */  addu       $at, $at, $a2
    /* 20FF08 801E53A8 E426A8A0 */  swc1       $f6, %lo(D_800EA8A0)($at)
    /* 20FF0C 801E53AC 8C660000 */  lw         $a2, 0x0($v1)
    /* 20FF10 801E53B0 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 20FF14 801E53B4 00063080 */  sll        $a2, $a2, 2
    /* 20FF18 801E53B8 00260821 */  addu       $at, $at, $a2
    /* 20FF1C 801E53BC C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 20FF20 801E53C0 3C01800F */  lui        $at, %hi(D_800EAA60)
    /* 20FF24 801E53C4 00260821 */  addu       $at, $at, $a2
    /* 20FF28 801E53C8 E428AA60 */  swc1       $f8, %lo(D_800EAA60)($at)
    /* 20FF2C 801E53CC 8C660000 */  lw         $a2, 0x0($v1)
    /* 20FF30 801E53D0 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 20FF34 801E53D4 00063080 */  sll        $a2, $a2, 2
    /* 20FF38 801E53D8 00260821 */  addu       $at, $at, $a2
    /* 20FF3C 801E53DC C42A3050 */  lwc1       $f10, %lo(D_800E3050)($at)
    /* 20FF40 801E53E0 3C01800F */  lui        $at, %hi(D_800EAC20)
    /* 20FF44 801E53E4 00260821 */  addu       $at, $at, $a2
    /* 20FF48 801E53E8 E42AAC20 */  swc1       $f10, %lo(D_800EAC20)($at)
    /* 20FF4C 801E53EC 8C660000 */  lw         $a2, 0x0($v1)
    /* 20FF50 801E53F0 3C01800E */  lui        $at, %hi(D_800E3590)
    /* 20FF54 801E53F4 00063080 */  sll        $a2, $a2, 2
    /* 20FF58 801E53F8 00260821 */  addu       $at, $at, $a2
    /* 20FF5C 801E53FC C4303590 */  lwc1       $f16, %lo(D_800E3590)($at)
    /* 20FF60 801E5400 3C01800F */  lui        $at, %hi(D_800EADE0)
    /* 20FF64 801E5404 00260821 */  addu       $at, $at, $a2
    /* 20FF68 801E5408 E430ADE0 */  swc1       $f16, %lo(D_800EADE0)($at)
    /* 20FF6C 801E540C 8C660000 */  lw         $a2, 0x0($v1)
    /* 20FF70 801E5410 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 20FF74 801E5414 00063080 */  sll        $a2, $a2, 2
    /* 20FF78 801E5418 00260821 */  addu       $at, $at, $a2
    /* 20FF7C 801E541C C4323210 */  lwc1       $f18, %lo(D_800E3210)($at)
    /* 20FF80 801E5420 3C01800F */  lui        $at, %hi(D_800EAFA0)
    /* 20FF84 801E5424 00260821 */  addu       $at, $at, $a2
    /* 20FF88 801E5428 E432AFA0 */  swc1       $f18, %lo(D_800EAFA0)($at)
    /* 20FF8C 801E542C 8C660000 */  lw         $a2, 0x0($v1)
    /* 20FF90 801E5430 00063080 */  sll        $a2, $a2, 2
    /* 20FF94 801E5434 00865021 */  addu       $t2, $a0, $a2
    /* 20FF98 801E5438 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 20FF9C 801E543C 01A66821 */  addu       $t5, $t5, $a2
    /* 20FFA0 801E5440 05610004 */  bgez       $t3, .L801E5454_ovl15
    /* 20FFA4 801E5444 316C0001 */   andi      $t4, $t3, 0x1
    /* 20FFA8 801E5448 11800002 */  beqz       $t4, .L801E5454_ovl15
    /* 20FFAC 801E544C 00000000 */   nop
    /* 20FFB0 801E5450 258CFFFE */  addiu      $t4, $t4, -0x2
  .L801E5454_ovl15:
    /* 20FFB4 801E5454 51800017 */  beql       $t4, $zero, .L801E54B4_ovl15
    /* 20FFB8 801E5458 01067821 */   addu      $t7, $t0, $a2
    /* 20FFBC 801E545C 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
    /* 20FFC0 801E5460 27A40038 */  addiu      $a0, $sp, 0x38
    /* 20FFC4 801E5464 0C0291E5 */  jal        utilGetTransformSRT
    /* 20FFC8 801E5468 8DA50014 */   lw        $a1, 0x14($t5)
    /* 20FFCC 801E546C C7A4003C */  lwc1       $f4, 0x3C($sp)
    /* 20FFD0 801E5470 C7A60040 */  lwc1       $f6, 0x40($sp)
    /* 20FFD4 801E5474 24040006 */  addiu      $a0, $zero, 0x6
    /* 20FFD8 801E5478 24050002 */  addiu      $a1, $zero, 0x2
    /* 20FFDC 801E547C 2406000B */  addiu      $a2, $zero, 0xB
    /* 20FFE0 801E5480 8FA70038 */  lw         $a3, 0x38($sp)
    /* 20FFE4 801E5484 E7A40010 */  swc1       $f4, 0x10($sp)
    /* 20FFE8 801E5488 0C029FDD */  jal        func_800A7F74
    /* 20FFEC 801E548C E7A60014 */   swc1      $f6, 0x14($sp)
    /* 20FFF0 801E5490 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 20FFF4 801E5494 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 20FFF8 801E5498 3C08800E */  lui        $t0, %hi(gEntitiesNextPosXArray)
    /* 20FFFC 801E549C 3C07800E */  lui        $a3, %hi(D_800E1B50)
    /* 210000 801E54A0 8DC60000 */  lw         $a2, 0x0($t6)
    /* 210004 801E54A4 24E71B50 */  addiu      $a3, $a3, %lo(D_800E1B50)
    /* 210008 801E54A8 250825D0 */  addiu      $t0, $t0, %lo(gEntitiesNextPosXArray)
    /* 21000C 801E54AC 00063080 */  sll        $a2, $a2, 2
    /* 210010 801E54B0 01067821 */  addu       $t7, $t0, $a2
  .L801E54B4_ovl15:
    /* 210014 801E54B4 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* 210018 801E54B8 44815000 */  mtc1       $at, $f10
    /* 21001C 801E54BC C5E80000 */  lwc1       $f8, 0x0($t7)
    /* 210020 801E54C0 C5120000 */  lwc1       $f18, 0x0($t0)
    /* 210024 801E54C4 3C18801E */  lui        $t8, %hi(D_801DA0DC)
    /* 210028 801E54C8 460A4401 */  sub.s      $f16, $f8, $f10
    /* 21002C 801E54CC 00E6C821 */  addu       $t9, $a3, $a2
    /* 210030 801E54D0 00E65821 */  addu       $t3, $a3, $a2
    /* 210034 801E54D4 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 210038 801E54D8 4612803C */  c.lt.s     $f16, $f18
    /* 21003C 801E54DC 00000000 */  nop
    /* 210040 801E54E0 45020006 */  bc1fl      .L801E54FC_ovl15
    /* 210044 801E54E4 8D6C0000 */   lw        $t4, 0x0($t3)
    /* 210048 801E54E8 8F290000 */  lw         $t1, 0x0($t9)
    /* 21004C 801E54EC 2718A0DC */  addiu      $t8, $t8, %lo(D_801DA0DC)
    /* 210050 801E54F0 10000005 */  b          .L801E5508_ovl15
    /* 210054 801E54F4 AD38008C */   sw        $t8, 0x8C($t1)
    /* 210058 801E54F8 8D6C0000 */  lw         $t4, 0x0($t3)
  .L801E54FC_ovl15:
    /* 21005C 801E54FC 3C0A801E */  lui        $t2, %hi(D_801DA0B8)
    /* 210060 801E5500 254AA0B8 */  addiu      $t2, $t2, %lo(D_801DA0B8)
    /* 210064 801E5504 AD8A008C */  sw         $t2, 0x8C($t4)
  .L801E5508_ovl15:
    /* 210068 801E5508 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 21006C 801E550C 3C19800E */  lui        $t9, %hi(D_800DFBD0)
    /* 210070 801E5510 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 210074 801E5514 000E7880 */  sll        $t7, $t6, 2
    /* 210078 801E5518 032FC821 */  addu       $t9, $t9, $t7
    /* 21007C 801E551C 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
    /* 210080 801E5520 0C0680F9 */  jal        func_801A03E4_ovl7
    /* 210084 801E5524 8F240008 */   lw        $a0, 0x8($t9)
    /* 210088 801E5528 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 21008C 801E552C 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 210090 801E5530 3C0A800F */  lui        $t2, %hi(D_800E83E0)
    /* 210094 801E5534 24010003 */  addiu      $at, $zero, 0x3
    /* 210098 801E5538 8F090000 */  lw         $t1, 0x0($t8)
    /* 21009C 801E553C 24040038 */  addiu      $a0, $zero, 0x38
    /* 2100A0 801E5540 00095880 */  sll        $t3, $t1, 2
    /* 2100A4 801E5544 014B5021 */  addu       $t2, $t2, $t3
    /* 2100A8 801E5548 8D4A83E0 */  lw         $t2, %lo(D_800E83E0)($t2)
    /* 2100AC 801E554C 15410047 */  bne        $t2, $at, .L801E566C_ovl15
    /* 2100B0 801E5550 00000000 */   nop
    /* 2100B4 801E5554 0C06B274 */  jal        func_801AC9D0_ovl7
    /* 2100B8 801E5558 24050003 */   addiu     $a1, $zero, 0x3
    /* 2100BC 801E555C 3C08800E */  lui        $t0, %hi(gEntitiesNextPosXArray)
    /* 2100C0 801E5560 1040001E */  beqz       $v0, .L801E55DC_ovl15
    /* 2100C4 801E5564 250825D0 */   addiu     $t0, $t0, %lo(gEntitiesNextPosXArray)
    /* 2100C8 801E5568 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 2100CC 801E556C 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 2100D0 801E5570 00022080 */  sll        $a0, $v0, 2
    /* 2100D4 801E5574 3C01800F */  lui        $at, %hi(D_800E8E60)
    /* 2100D8 801E5578 00240821 */  addu       $at, $at, $a0
    /* 2100DC 801E557C 240C0001 */  addiu      $t4, $zero, 0x1
    /* 2100E0 801E5580 AC2C8E60 */  sw         $t4, %lo(D_800E8E60)($at)
    /* 2100E4 801E5584 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 2100E8 801E5588 0104C821 */  addu       $t9, $t0, $a0
    /* 2100EC 801E558C 3C0B800E */  lui        $t3, %hi(gEntitiesNextPosYArray)
    /* 2100F0 801E5590 000D7080 */  sll        $t6, $t5, 2
    /* 2100F4 801E5594 010E7821 */  addu       $t7, $t0, $t6
    /* 2100F8 801E5598 C5E40000 */  lwc1       $f4, 0x0($t7)
    /* 2100FC 801E559C 256B2790 */  addiu      $t3, $t3, %lo(gEntitiesNextPosYArray)
    /* 210100 801E55A0 008B6021 */  addu       $t4, $a0, $t3
    /* 210104 801E55A4 E7240000 */  swc1       $f4, 0x0($t9)
    /* 210108 801E55A8 8C780000 */  lw         $t8, 0x0($v1)
    /* 21010C 801E55AC 3C0F800E */  lui        $t7, %hi(gEntitiesNextPosZArray)
    /* 210110 801E55B0 25EF2950 */  addiu      $t7, $t7, %lo(gEntitiesNextPosZArray)
    /* 210114 801E55B4 00184880 */  sll        $t1, $t8, 2
    /* 210118 801E55B8 012B5021 */  addu       $t2, $t1, $t3
    /* 21011C 801E55BC C5460000 */  lwc1       $f6, 0x0($t2)
    /* 210120 801E55C0 008FC021 */  addu       $t8, $a0, $t7
    /* 210124 801E55C4 E5860000 */  swc1       $f6, 0x0($t4)
    /* 210128 801E55C8 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 21012C 801E55CC 000D7080 */  sll        $t6, $t5, 2
    /* 210130 801E55D0 01CFC821 */  addu       $t9, $t6, $t7
    /* 210134 801E55D4 C7280000 */  lwc1       $f8, 0x0($t9)
    /* 210138 801E55D8 E7080000 */  swc1       $f8, 0x0($t8)
  .L801E55DC_ovl15:
    /* 21013C 801E55DC 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 210140 801E55E0 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 210144 801E55E4 3C0A800E */  lui        $t2, %hi(D_800DFBD0)
    /* 210148 801E55E8 44805000 */  mtc1       $zero, $f10
    /* 21014C 801E55EC 8D260000 */  lw         $a2, 0x0($t1)
    /* 210150 801E55F0 00063080 */  sll        $a2, $a2, 2
    /* 210154 801E55F4 01465021 */  addu       $t2, $t2, $a2
    /* 210158 801E55F8 8D4AFBD0 */  lw         $t2, %lo(D_800DFBD0)($t2)
    /* 21015C 801E55FC 01061021 */  addu       $v0, $t0, $a2
    /* 210160 801E5600 8D4B000C */  lw         $t3, 0xC($t2)
    /* 210164 801E5604 C5600020 */  lwc1       $f0, 0x20($t3)
    /* 210168 801E5608 460A003C */  c.lt.s     $f0, $f10
    /* 21016C 801E560C 00000000 */  nop
    /* 210170 801E5610 45020004 */  bc1fl      .L801E5624_ovl15
    /* 210174 801E5614 46000086 */   mov.s     $f2, $f0
    /* 210178 801E5618 10000002 */  b          .L801E5624_ovl15
    /* 21017C 801E561C 46000087 */   neg.s     $f2, $f0
    /* 210180 801E5620 46000086 */  mov.s      $f2, $f0
  .L801E5624_ovl15:
    /* 210184 801E5624 C4500000 */  lwc1       $f16, 0x0($v0)
    /* 210188 801E5628 3C04801D */  lui        $a0, %hi(D_801D7C8C)
    /* 21018C 801E562C 24847C8C */  addiu      $a0, $a0, %lo(D_801D7C8C)
    /* 210190 801E5630 46028481 */  sub.s      $f18, $f16, $f2
    /* 210194 801E5634 0C066220 */  jal        func_80198880_ovl7
    /* 210198 801E5638 E4520000 */   swc1      $f18, 0x0($v0)
    /* 21019C 801E563C 8FAC0044 */  lw         $t4, 0x44($sp)
    /* 2101A0 801E5640 8D8D0088 */  lw         $t5, 0x88($t4)
    /* 2101A4 801E5644 0C068AB7 */  jal        func_801A2ADC_ovl7
    /* 2101A8 801E5648 8DA40010 */   lw        $a0, 0x10($t5)
    /* 2101AC 801E564C 3C040001 */  lui        $a0, (0x10093 >> 16)
    /* 2101B0 801E5650 0C02A5D8 */  jal        func_800A9760
    /* 2101B4 801E5654 34840093 */   ori       $a0, $a0, (0x10093 & 0xFFFF)
    /* 2101B8 801E5658 8FAE0044 */  lw         $t6, 0x44($sp)
    /* 2101BC 801E565C 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* 2101C0 801E5660 44812000 */  mtc1       $at, $f4
    /* 2101C4 801E5664 8DD90080 */  lw         $t9, 0x80($t6)
    /* 2101C8 801E5668 E7240010 */  swc1       $f4, 0x10($t9)
  .L801E566C_ovl15:
    /* 2101CC 801E566C 3C0F800D */  lui        $t7, %hi(D_800D7118 + 0x3C)
    /* 2101D0 801E5670 8DEF7154 */  lw         $t7, %lo(D_800D7118 + 0x3C)($t7)
    /* 2101D4 801E5674 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 2101D8 801E5678 55E00011 */  bnel       $t7, $zero, .L801E56C0_ovl15
    /* 2101DC 801E567C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* 2101E0 801E5680 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 2101E4 801E5684 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 2101E8 801E5688 2418FFFF */  addiu      $t8, $zero, -0x1
    /* 2101EC 801E568C 8C690000 */  lw         $t1, 0x0($v1)
    /* 2101F0 801E5690 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 2101F4 801E5694 3C05801B */  lui        $a1, %hi(func_801ACF84_ovl7)
    /* 2101F8 801E5698 00095080 */  sll        $t2, $t1, 2
    /* 2101FC 801E569C 002A0821 */  addu       $at, $at, $t2
    /* 210200 801E56A0 AC38DC50 */  sw         $t8, %lo(gEntityFuncListIDArray)($at)
    /* 210204 801E56A4 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 210208 801E56A8 24A5CF84 */  addiu      $a1, $a1, %lo(func_801ACF84_ovl7)
    /* 21020C 801E56AC 000B6080 */  sll        $t4, $t3, 2
    /* 210210 801E56B0 008C2021 */  addu       $a0, $a0, $t4
    /* 210214 801E56B4 0C02C7B2 */  jal        assign_new_process_entry
    /* 210218 801E56B8 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 21021C 801E56BC 8FBF001C */  lw         $ra, 0x1C($sp)
  .L801E56C0_ovl15:
    /* 210220 801E56C0 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 210224 801E56C4 03E00008 */  jr         $ra
    /* 210228 801E56C8 00000000 */   nop
endlabel func_801E531C_ovl15
.size func_801E531C_ovl15, . - func_801E531C_ovl15
