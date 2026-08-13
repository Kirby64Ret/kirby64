nonmatching func_80164980_ovl3, 0x528

glabel func_80164980_ovl3
    /* C53C0 80164980 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* C53C4 80164984 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* C53C8 80164988 27BDFED8 */  addiu      $sp, $sp, -0x128
    /* C53CC 8016498C AFBF0014 */  sw         $ra, 0x14($sp)
    /* C53D0 80164990 AFA40128 */  sw         $a0, 0x128($sp)
    /* C53D4 80164994 8C6E0000 */  lw         $t6, 0x0($v1)
    /* C53D8 80164998 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* C53DC 8016499C 44802000 */  mtc1       $zero, $f4
    /* C53E0 801649A0 000E7880 */  sll        $t7, $t6, 2
    /* C53E4 801649A4 002F0821 */  addu       $at, $at, $t7
    /* C53E8 801649A8 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
    /* C53EC 801649AC 8C780000 */  lw         $t8, 0x0($v1)
    /* C53F0 801649B0 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* C53F4 801649B4 27AA0028 */  addiu      $t2, $sp, 0x28
    /* C53F8 801649B8 0018C880 */  sll        $t9, $t8, 2
    /* C53FC 801649BC 00390821 */  addu       $at, $at, $t9
    /* C5400 801649C0 E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
    /* C5404 801649C4 8C6B0000 */  lw         $t3, 0x0($v1)
    /* C5408 801649C8 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* C540C 801649CC 3C0D800B */  lui        $t5, %hi(func_800B4954)
    /* C5410 801649D0 000B6080 */  sll        $t4, $t3, 2
    /* C5414 801649D4 002C0821 */  addu       $at, $at, $t4
    /* C5418 801649D8 AC2A9AA0 */  sw         $t2, %lo(D_800E9AA0)($at)
    /* C541C 801649DC 8C6E0000 */  lw         $t6, 0x0($v1)
    /* C5420 801649E0 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* C5424 801649E4 25AD4954 */  addiu      $t5, $t5, %lo(func_800B4954)
    /* C5428 801649E8 000E7880 */  sll        $t7, $t6, 2
    /* C542C 801649EC 002F0821 */  addu       $at, $at, $t7
    /* C5430 801649F0 AC2DEF90 */  sw         $t5, %lo(D_800DEF90)($at)
    /* C5434 801649F4 8C790000 */  lw         $t9, 0x0($v1)
    /* C5438 801649F8 3C01800E */  lui        $at, %hi(D_800DF150)
    /* C543C 801649FC 3C188016 */  lui        $t8, %hi(func_80164EA8_ovl3)
    /* C5440 80164A00 00195880 */  sll        $t3, $t9, 2
    /* C5444 80164A04 002B0821 */  addu       $at, $at, $t3
    /* C5448 80164A08 27184EA8 */  addiu      $t8, $t8, %lo(func_80164EA8_ovl3)
    /* C544C 80164A0C AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
    /* C5450 80164A10 8C6A0000 */  lw         $t2, 0x0($v1)
    /* C5454 80164A14 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* C5458 80164A18 24840D50 */  addiu      $a0, $a0, %lo(D_800E0D50)
    /* C545C 80164A1C 000A6080 */  sll        $t4, $t2, 2
    /* C5460 80164A20 008C7021 */  addu       $t6, $a0, $t4
    /* C5464 80164A24 8DCD0000 */  lw         $t5, 0x0($t6)
    /* C5468 80164A28 3C01800E */  lui        $at, %hi(D_800E09D0)
    /* C546C 80164A2C 000D7880 */  sll        $t7, $t5, 2
    /* C5470 80164A30 002F0821 */  addu       $at, $at, $t7
    /* C5474 80164A34 0C02BB30 */  jal        func_800AECC0
    /* C5478 80164A38 C42C09D0 */   lwc1      $f12, %lo(D_800E09D0)($at)
    /* C547C 80164A3C 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* C5480 80164A40 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* C5484 80164A44 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* C5488 80164A48 24840D50 */  addiu      $a0, $a0, %lo(D_800E0D50)
    /* C548C 80164A4C 8F380000 */  lw         $t8, 0x0($t9)
    /* C5490 80164A50 3C01800E */  lui        $at, %hi(D_800E09D0)
    /* C5494 80164A54 00185880 */  sll        $t3, $t8, 2
    /* C5498 80164A58 008B5021 */  addu       $t2, $a0, $t3
    /* C549C 80164A5C 8D4C0000 */  lw         $t4, 0x0($t2)
    /* C54A0 80164A60 000C7080 */  sll        $t6, $t4, 2
    /* C54A4 80164A64 002E0821 */  addu       $at, $at, $t6
    /* C54A8 80164A68 0C02BB48 */  jal        func_800AED20
    /* C54AC 80164A6C C42C09D0 */   lwc1      $f12, %lo(D_800E09D0)($at)
    /* C54B0 80164A70 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* C54B4 80164A74 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* C54B8 80164A78 3C018019 */  lui        $at, %hi(D_80197160_ovl3)
    /* C54BC 80164A7C C4227160 */  lwc1       $f2, %lo(D_80197160_ovl3)($at)
    /* C54C0 80164A80 8C6D0000 */  lw         $t5, 0x0($v1)
    /* C54C4 80164A84 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
    /* C54C8 80164A88 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* C54CC 80164A8C 000D7880 */  sll        $t7, $t5, 2
    /* C54D0 80164A90 002F0821 */  addu       $at, $at, $t7
    /* C54D4 80164A94 E4224550 */  swc1       $f2, %lo(gEntitiesScaleXArray)($at)
    /* C54D8 80164A98 8C790000 */  lw         $t9, 0x0($v1)
    /* C54DC 80164A9C 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
    /* C54E0 80164AA0 24840D50 */  addiu      $a0, $a0, %lo(D_800E0D50)
    /* C54E4 80164AA4 0019C080 */  sll        $t8, $t9, 2
    /* C54E8 80164AA8 00380821 */  addu       $at, $at, $t8
    /* C54EC 80164AAC E4224710 */  swc1       $f2, %lo(gEntitiesScaleYArray)($at)
    /* C54F0 80164AB0 8C6B0000 */  lw         $t3, 0x0($v1)
    /* C54F4 80164AB4 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
    /* C54F8 80164AB8 3C06800E */  lui        $a2, %hi(gEntitiesNextPosYArray)
    /* C54FC 80164ABC 000B5080 */  sll        $t2, $t3, 2
    /* C5500 80164AC0 002A0821 */  addu       $at, $at, $t2
    /* C5504 80164AC4 E42248D0 */  swc1       $f2, %lo(gEntitiesScaleZArray)($at)
    /* C5508 80164AC8 8C620000 */  lw         $v0, 0x0($v1)
    /* C550C 80164ACC 24C62790 */  addiu      $a2, $a2, %lo(gEntitiesNextPosYArray)
    /* C5510 80164AD0 3C07800E */  lui        $a3, %hi(gEntitiesAngleYArray)
    /* C5514 80164AD4 00021080 */  sll        $v0, $v0, 2
    /* C5518 80164AD8 00826021 */  addu       $t4, $a0, $v0
    /* C551C 80164ADC 8D8E0000 */  lw         $t6, 0x0($t4)
    /* C5520 80164AE0 00C2C821 */  addu       $t9, $a2, $v0
    /* C5524 80164AE4 24E741D0 */  addiu      $a3, $a3, %lo(gEntitiesAngleYArray)
    /* C5528 80164AE8 000E6880 */  sll        $t5, $t6, 2
    /* C552C 80164AEC 00CD7821 */  addu       $t7, $a2, $t5
    /* C5530 80164AF0 C5E60000 */  lwc1       $f6, 0x0($t7)
    /* C5534 80164AF4 3C08800E */  lui        $t0, %hi(D_800E5F90)
    /* C5538 80164AF8 25085F90 */  addiu      $t0, $t0, %lo(D_800E5F90)
    /* C553C 80164AFC E7260000 */  swc1       $f6, 0x0($t9)
    /* C5540 80164B00 8C620000 */  lw         $v0, 0x0($v1)
    /* C5544 80164B04 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* C5548 80164B08 25298AE0 */  addiu      $t1, $t1, %lo(D_800E8AE0)
    /* C554C 80164B0C 00021080 */  sll        $v0, $v0, 2
    /* C5550 80164B10 0082C021 */  addu       $t8, $a0, $v0
    /* C5554 80164B14 8F0B0000 */  lw         $t3, 0x0($t8)
    /* C5558 80164B18 00E27021 */  addu       $t6, $a3, $v0
    /* C555C 80164B1C 3C05800E */  lui        $a1, %hi(D_800E64D0)
    /* C5560 80164B20 000B5080 */  sll        $t2, $t3, 2
    /* C5564 80164B24 00EA6021 */  addu       $t4, $a3, $t2
    /* C5568 80164B28 C5880000 */  lwc1       $f8, 0x0($t4)
    /* C556C 80164B2C 24A564D0 */  addiu      $a1, $a1, %lo(D_800E64D0)
    /* C5570 80164B30 44806000 */  mtc1       $zero, $f12
    /* C5574 80164B34 E5C80000 */  swc1       $f8, 0x0($t6)
    /* C5578 80164B38 8C620000 */  lw         $v0, 0x0($v1)
    /* C557C 80164B3C 3C01800E */  lui        $at, %hi(D_800E6850)
    /* C5580 80164B40 00021080 */  sll        $v0, $v0, 2
    /* C5584 80164B44 00826821 */  addu       $t5, $a0, $v0
    /* C5588 80164B48 8DAF0000 */  lw         $t7, 0x0($t5)
    /* C558C 80164B4C 01025021 */  addu       $t2, $t0, $v0
    /* C5590 80164B50 000FC880 */  sll        $t9, $t7, 2
    /* C5594 80164B54 0119C021 */  addu       $t8, $t0, $t9
    /* C5598 80164B58 8F0B0000 */  lw         $t3, 0x0($t8)
    /* C559C 80164B5C AD4B0000 */  sw         $t3, 0x0($t2)
    /* C55A0 80164B60 8C620000 */  lw         $v0, 0x0($v1)
    /* C55A4 80164B64 00021080 */  sll        $v0, $v0, 2
    /* C55A8 80164B68 00826021 */  addu       $t4, $a0, $v0
    /* C55AC 80164B6C 8D8E0000 */  lw         $t6, 0x0($t4)
    /* C55B0 80164B70 0122C021 */  addu       $t8, $t1, $v0
    /* C55B4 80164B74 000E6880 */  sll        $t5, $t6, 2
    /* C55B8 80164B78 012D7821 */  addu       $t7, $t1, $t5
    /* C55BC 80164B7C 8DF90000 */  lw         $t9, 0x0($t7)
    /* C55C0 80164B80 AF190000 */  sw         $t9, 0x0($t8)
    /* C55C4 80164B84 8C620000 */  lw         $v0, 0x0($v1)
    /* C55C8 80164B88 00021080 */  sll        $v0, $v0, 2
    /* C55CC 80164B8C 00825821 */  addu       $t3, $a0, $v0
    /* C55D0 80164B90 8D6A0000 */  lw         $t2, 0x0($t3)
    /* C55D4 80164B94 00A26821 */  addu       $t5, $a1, $v0
    /* C55D8 80164B98 000A6080 */  sll        $t4, $t2, 2
    /* C55DC 80164B9C 00AC7021 */  addu       $t6, $a1, $t4
    /* C55E0 80164BA0 C5CA0000 */  lwc1       $f10, 0x0($t6)
    /* C55E4 80164BA4 E5AA0000 */  swc1       $f10, 0x0($t5)
    /* C55E8 80164BA8 8C620000 */  lw         $v0, 0x0($v1)
    /* C55EC 80164BAC 00021080 */  sll        $v0, $v0, 2
    /* C55F0 80164BB0 00827821 */  addu       $t7, $a0, $v0
    /* C55F4 80164BB4 8DF90000 */  lw         $t9, 0x0($t7)
    /* C55F8 80164BB8 00220821 */  addu       $at, $at, $v0
    /* C55FC 80164BBC 0019C080 */  sll        $t8, $t9, 2
    /* C5600 80164BC0 00B85821 */  addu       $t3, $a1, $t8
    /* C5604 80164BC4 C5600000 */  lwc1       $f0, 0x0($t3)
    /* C5608 80164BC8 460C003C */  c.lt.s     $f0, $f12
    /* C560C 80164BCC 00000000 */  nop
    /* C5610 80164BD0 45000006 */  bc1f       .L80164BEC_ovl3
    /* C5614 80164BD4 00000000 */   nop
    /* C5618 80164BD8 3C01800E */  lui        $at, %hi(D_800E6850)
    /* C561C 80164BDC 46000407 */  neg.s      $f16, $f0
    /* C5620 80164BE0 00220821 */  addu       $at, $at, $v0
    /* C5624 80164BE4 10000002 */  b          .L80164BF0_ovl3
    /* C5628 80164BE8 E4306850 */   swc1      $f16, %lo(D_800E6850)($at)
  .L80164BEC_ovl3:
    /* C562C 80164BEC E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
  .L80164BF0_ovl3:
    /* C5630 80164BF0 8C620000 */  lw         $v0, 0x0($v1)
    /* C5634 80164BF4 44801000 */  mtc1       $zero, $f2
    /* C5638 80164BF8 00021080 */  sll        $v0, $v0, 2
    /* C563C 80164BFC 00A25021 */  addu       $t2, $a1, $v0
    /* C5640 80164C00 C5520000 */  lwc1       $f18, 0x0($t2)
    /* C5644 80164C04 01226021 */  addu       $t4, $t1, $v0
    /* C5648 80164C08 01227821 */  addu       $t7, $t1, $v0
    /* C564C 80164C0C 4612103C */  c.lt.s     $f2, $f18
    /* C5650 80164C10 00000000 */  nop
    /* C5654 80164C14 45020012 */  bc1fl      .L80164C60_ovl3
    /* C5658 80164C18 8DF90000 */   lw        $t9, 0x0($t7)
    /* C565C 80164C1C 8D8E0000 */  lw         $t6, 0x0($t4)
    /* C5660 80164C20 3C01BE00 */  lui        $at, (0xBE000000 >> 16)
    /* C5664 80164C24 31CD0006 */  andi       $t5, $t6, 0x6
    /* C5668 80164C28 55A00008 */  bnel       $t5, $zero, .L80164C4C_ovl3
    /* C566C 80164C2C 44813000 */   mtc1      $at, $f6
    /* C5670 80164C30 3C01BE80 */  lui        $at, (0xBE800000 >> 16)
    /* C5674 80164C34 44812000 */  mtc1       $at, $f4
    /* C5678 80164C38 3C01800E */  lui        $at, %hi(D_800E6690)
    /* C567C 80164C3C 00220821 */  addu       $at, $at, $v0
    /* C5680 80164C40 10000015 */  b          .L80164C98_ovl3
    /* C5684 80164C44 E4246690 */   swc1      $f4, %lo(D_800E6690)($at)
    /* C5688 80164C48 44813000 */  mtc1       $at, $f6
  .L80164C4C_ovl3:
    /* C568C 80164C4C 3C01800E */  lui        $at, %hi(D_800E6690)
    /* C5690 80164C50 00220821 */  addu       $at, $at, $v0
    /* C5694 80164C54 10000010 */  b          .L80164C98_ovl3
    /* C5698 80164C58 E4266690 */   swc1      $f6, %lo(D_800E6690)($at)
    /* C569C 80164C5C 8DF90000 */  lw         $t9, 0x0($t7)
  .L80164C60_ovl3:
    /* C56A0 80164C60 3C013E00 */  lui        $at, (0x3E000000 >> 16)
    /* C56A4 80164C64 33380006 */  andi       $t8, $t9, 0x6
    /* C56A8 80164C68 57000008 */  bnel       $t8, $zero, .L80164C8C_ovl3
    /* C56AC 80164C6C 44815000 */   mtc1      $at, $f10
    /* C56B0 80164C70 3C013E80 */  lui        $at, (0x3E800000 >> 16)
    /* C56B4 80164C74 44814000 */  mtc1       $at, $f8
    /* C56B8 80164C78 3C01800E */  lui        $at, %hi(D_800E6690)
    /* C56BC 80164C7C 00220821 */  addu       $at, $at, $v0
    /* C56C0 80164C80 10000005 */  b          .L80164C98_ovl3
    /* C56C4 80164C84 E4286690 */   swc1      $f8, %lo(D_800E6690)($at)
    /* C56C8 80164C88 44815000 */  mtc1       $at, $f10
  .L80164C8C_ovl3:
    /* C56CC 80164C8C 3C01800E */  lui        $at, %hi(D_800E6690)
    /* C56D0 80164C90 00220821 */  addu       $at, $at, $v0
    /* C56D4 80164C94 E42A6690 */  swc1       $f10, %lo(D_800E6690)($at)
  .L80164C98_ovl3:
    /* C56D8 80164C98 8C620000 */  lw         $v0, 0x0($v1)
    /* C56DC 80164C9C 3C05800E */  lui        $a1, %hi(D_800E3210)
    /* C56E0 80164CA0 24A53210 */  addiu      $a1, $a1, %lo(D_800E3210)
    /* C56E4 80164CA4 00021080 */  sll        $v0, $v0, 2
    /* C56E8 80164CA8 00825821 */  addu       $t3, $a0, $v0
    /* C56EC 80164CAC 8D6A0000 */  lw         $t2, 0x0($t3)
    /* C56F0 80164CB0 00A26821 */  addu       $t5, $a1, $v0
    /* C56F4 80164CB4 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* C56F8 80164CB8 000A6080 */  sll        $t4, $t2, 2
    /* C56FC 80164CBC 00AC7021 */  addu       $t6, $a1, $t4
    /* C5700 80164CC0 C5D00000 */  lwc1       $f16, 0x0($t6)
    /* C5704 80164CC4 E5B00000 */  swc1       $f16, 0x0($t5)
    /* C5708 80164CC8 8C620000 */  lw         $v0, 0x0($v1)
    /* C570C 80164CCC 00021080 */  sll        $v0, $v0, 2
    /* C5710 80164CD0 00827821 */  addu       $t7, $a0, $v0
    /* C5714 80164CD4 8DF90000 */  lw         $t9, 0x0($t7)
    /* C5718 80164CD8 00220821 */  addu       $at, $at, $v0
    /* C571C 80164CDC 0019C080 */  sll        $t8, $t9, 2
    /* C5720 80164CE0 00B85821 */  addu       $t3, $a1, $t8
    /* C5724 80164CE4 C5600000 */  lwc1       $f0, 0x0($t3)
    /* C5728 80164CE8 460C003C */  c.lt.s     $f0, $f12
    /* C572C 80164CEC 00000000 */  nop
    /* C5730 80164CF0 45000006 */  bc1f       .L80164D0C_ovl3
    /* C5734 80164CF4 00000000 */   nop
    /* C5738 80164CF8 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* C573C 80164CFC 46000487 */  neg.s      $f18, $f0
    /* C5740 80164D00 00220821 */  addu       $at, $at, $v0
    /* C5744 80164D04 10000002 */  b          .L80164D10_ovl3
    /* C5748 80164D08 E4323C90 */   swc1      $f18, %lo(D_800E3C90)($at)
  .L80164D0C_ovl3:
    /* C574C 80164D0C E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
  .L80164D10_ovl3:
    /* C5750 80164D10 8C620000 */  lw         $v0, 0x0($v1)
    /* C5754 80164D14 00021080 */  sll        $v0, $v0, 2
    /* C5758 80164D18 00A25021 */  addu       $t2, $a1, $v0
    /* C575C 80164D1C C5440000 */  lwc1       $f4, 0x0($t2)
    /* C5760 80164D20 01226021 */  addu       $t4, $t1, $v0
    /* C5764 80164D24 01227821 */  addu       $t7, $t1, $v0
    /* C5768 80164D28 4604103C */  c.lt.s     $f2, $f4
    /* C576C 80164D2C 00000000 */  nop
    /* C5770 80164D30 45020012 */  bc1fl      .L80164D7C_ovl3
    /* C5774 80164D34 8DF90000 */   lw        $t9, 0x0($t7)
    /* C5778 80164D38 8D8E0000 */  lw         $t6, 0x0($t4)
    /* C577C 80164D3C 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
    /* C5780 80164D40 31CD0006 */  andi       $t5, $t6, 0x6
    /* C5784 80164D44 55A00008 */  bnel       $t5, $zero, .L80164D68_ovl3
    /* C5788 80164D48 44814000 */   mtc1      $at, $f8
    /* C578C 80164D4C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* C5790 80164D50 44813000 */  mtc1       $at, $f6
    /* C5794 80164D54 3C01800E */  lui        $at, %hi(D_800E3750)
    /* C5798 80164D58 00220821 */  addu       $at, $at, $v0
    /* C579C 80164D5C 10000015 */  b          .L80164DB4_ovl3
    /* C57A0 80164D60 E4263750 */   swc1      $f6, %lo(D_800E3750)($at)
    /* C57A4 80164D64 44814000 */  mtc1       $at, $f8
  .L80164D68_ovl3:
    /* C57A8 80164D68 3C01800E */  lui        $at, %hi(D_800E3750)
    /* C57AC 80164D6C 00220821 */  addu       $at, $at, $v0
    /* C57B0 80164D70 10000010 */  b          .L80164DB4_ovl3
    /* C57B4 80164D74 E4283750 */   swc1      $f8, %lo(D_800E3750)($at)
    /* C57B8 80164D78 8DF90000 */  lw         $t9, 0x0($t7)
  .L80164D7C_ovl3:
    /* C57BC 80164D7C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* C57C0 80164D80 33380006 */  andi       $t8, $t9, 0x6
    /* C57C4 80164D84 57000008 */  bnel       $t8, $zero, .L80164DA8_ovl3
    /* C57C8 80164D88 44818000 */   mtc1      $at, $f16
    /* C57CC 80164D8C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* C57D0 80164D90 44815000 */  mtc1       $at, $f10
    /* C57D4 80164D94 3C01800E */  lui        $at, %hi(D_800E3750)
    /* C57D8 80164D98 00220821 */  addu       $at, $at, $v0
    /* C57DC 80164D9C 10000005 */  b          .L80164DB4_ovl3
    /* C57E0 80164DA0 E42A3750 */   swc1      $f10, %lo(D_800E3750)($at)
    /* C57E4 80164DA4 44818000 */  mtc1       $at, $f16
  .L80164DA8_ovl3:
    /* C57E8 80164DA8 3C01800E */  lui        $at, %hi(D_800E3750)
    /* C57EC 80164DAC 00220821 */  addu       $at, $at, $v0
    /* C57F0 80164DB0 E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
  .L80164DB4_ovl3:
    /* C57F4 80164DB4 0C029D9E */  jal        play_sound
    /* C57F8 80164DB8 24040017 */   addiu     $a0, $zero, 0x17
    /* C57FC 80164DBC 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* C5800 80164DC0 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* C5804 80164DC4 3C0E800F */  lui        $t6, %hi(D_800EC2E0)
    /* C5808 80164DC8 3C048019 */  lui        $a0, %hi(D_80196888_ovl3)
    /* C580C 80164DCC 8D6A0000 */  lw         $t2, 0x0($t3)
    /* C5810 80164DD0 24050022 */  addiu      $a1, $zero, 0x22
    /* C5814 80164DD4 24060010 */  addiu      $a2, $zero, 0x10
    /* C5818 80164DD8 000A6080 */  sll        $t4, $t2, 2
    /* C581C 80164DDC 01CC7021 */  addu       $t6, $t6, $t4
    /* C5820 80164DE0 8DCEC2E0 */  lw         $t6, %lo(D_800EC2E0)($t6)
    /* C5824 80164DE4 000E6880 */  sll        $t5, $t6, 2
    /* C5828 80164DE8 01AE6823 */  subu       $t5, $t5, $t6
    /* C582C 80164DEC 000D6880 */  sll        $t5, $t5, 2
    /* C5830 80164DF0 008D2021 */  addu       $a0, $a0, $t5
    /* C5834 80164DF4 0C02A619 */  jal        func_800A9864
    /* C5838 80164DF8 8C846888 */   lw        $a0, %lo(D_80196888_ovl3)($a0)
    /* C583C 80164DFC 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* C5840 80164E00 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* C5844 80164E04 3C0B800F */  lui        $t3, %hi(D_800EC2E0)
    /* C5848 80164E08 3C048019 */  lui        $a0, %hi(D_80196890_ovl3)
    /* C584C 80164E0C 8DF90000 */  lw         $t9, 0x0($t7)
    /* C5850 80164E10 0019C080 */  sll        $t8, $t9, 2
    /* C5854 80164E14 01785821 */  addu       $t3, $t3, $t8
    /* C5858 80164E18 8D6BC2E0 */  lw         $t3, %lo(D_800EC2E0)($t3)
    /* C585C 80164E1C 000B5080 */  sll        $t2, $t3, 2
    /* C5860 80164E20 014B5023 */  subu       $t2, $t2, $t3
    /* C5864 80164E24 000A5080 */  sll        $t2, $t2, 2
    /* C5868 80164E28 008A2021 */  addu       $a0, $a0, $t2
    /* C586C 80164E2C 0C02A806 */  jal        func_800AA018
    /* C5870 80164E30 8C846890 */   lw        $a0, %lo(D_80196890_ovl3)($a0)
    /* C5874 80164E34 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* C5878 80164E38 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* C587C 80164E3C 3C0F800F */  lui        $t7, %hi(D_800EC2E0)
    /* C5880 80164E40 3C048019 */  lui        $a0, %hi(D_8019688C_ovl3)
    /* C5884 80164E44 8D8E0000 */  lw         $t6, 0x0($t4)
    /* C5888 80164E48 000E6880 */  sll        $t5, $t6, 2
    /* C588C 80164E4C 01ED7821 */  addu       $t7, $t7, $t5
    /* C5890 80164E50 8DEFC2E0 */  lw         $t7, %lo(D_800EC2E0)($t7)
    /* C5894 80164E54 000FC880 */  sll        $t9, $t7, 2
    /* C5898 80164E58 032FC823 */  subu       $t9, $t9, $t7
    /* C589C 80164E5C 0019C880 */  sll        $t9, $t9, 2
    /* C58A0 80164E60 00992021 */  addu       $a0, $a0, $t9
    /* C58A4 80164E64 0C02A855 */  jal        func_800AA154
    /* C58A8 80164E68 8C84688C */   lw        $a0, %lo(D_8019688C_ovl3)($a0)
    /* C58AC 80164E6C 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* C58B0 80164E70 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* C58B4 80164E74 3C0C800F */  lui        $t4, %hi(D_800E98E0)
    /* C58B8 80164E78 258C98E0 */  addiu      $t4, $t4, %lo(D_800E98E0)
    /* C58BC 80164E7C 8F0B0000 */  lw         $t3, 0x0($t8)
    /* C58C0 80164E80 000B5080 */  sll        $t2, $t3, 2
    /* C58C4 80164E84 014C1021 */  addu       $v0, $t2, $t4
    /* C58C8 80164E88 8C4E0000 */  lw         $t6, 0x0($v0)
    /* C58CC 80164E8C 25CD0001 */  addiu      $t5, $t6, 0x1
    /* C58D0 80164E90 0C02BE85 */  jal        curObjSleepForever
    /* C58D4 80164E94 AC4D0000 */   sw        $t5, 0x0($v0)
    /* C58D8 80164E98 8FBF0014 */  lw         $ra, 0x14($sp)
    /* C58DC 80164E9C 27BD0128 */  addiu      $sp, $sp, 0x128
    /* C58E0 80164EA0 03E00008 */  jr         $ra
    /* C58E4 80164EA4 00000000 */   nop
endlabel func_80164980_ovl3
.size func_80164980_ovl3, . - func_80164980_ovl3
