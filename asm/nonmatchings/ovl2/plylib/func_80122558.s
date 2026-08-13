nonmatching func_80122558, 0x1A4

glabel func_80122558
    /* AAFC8 80122558 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* AAFCC 8012255C 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
    /* AAFD0 80122560 906E0015 */  lbu        $t6, 0x15($v1)
    /* AAFD4 80122564 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* AAFD8 80122568 AFBF0014 */  sw         $ra, 0x14($sp)
    /* AAFDC 8012256C 55C0005F */  bnel       $t6, $zero, .L801226EC
    /* AAFE0 80122570 00001025 */   or        $v0, $zero, $zero
    /* AAFE4 80122574 906F0004 */  lbu        $t7, 0x4($v1)
    /* AAFE8 80122578 55E0005C */  bnel       $t7, $zero, .L801226EC
    /* AAFEC 8012257C 00001025 */   or        $v0, $zero, $zero
    /* AAFF0 80122580 8C780034 */  lw         $t8, 0x34($v1)
    /* AAFF4 80122584 3C068013 */  lui        $a2, %hi(D_8012BCA0)
    /* AAFF8 80122588 24C6BCA0 */  addiu      $a2, $a2, %lo(D_8012BCA0)
    /* AAFFC 8012258C 33190005 */  andi       $t9, $t8, 0x5
    /* AB000 80122590 17200055 */  bnez       $t9, .L801226E8
    /* AB004 80122594 00002825 */   or        $a1, $zero, $zero
    /* AB008 80122598 27A8001C */  addiu      $t0, $sp, 0x1C
    /* AB00C 8012259C 00C05825 */  or         $t3, $a2, $zero
    /* AB010 801225A0 24CC0054 */  addiu      $t4, $a2, 0x54
  .L801225A4:
    /* AB014 801225A4 8D6A0000 */  lw         $t2, 0x0($t3)
    /* AB018 801225A8 256B000C */  addiu      $t3, $t3, 0xC
    /* AB01C 801225AC 2508000C */  addiu      $t0, $t0, 0xC
    /* AB020 801225B0 AD0AFFF4 */  sw         $t2, -0xC($t0)
    /* AB024 801225B4 8D69FFF8 */  lw         $t1, -0x8($t3)
    /* AB028 801225B8 AD09FFF8 */  sw         $t1, -0x8($t0)
    /* AB02C 801225BC 8D6AFFFC */  lw         $t2, -0x4($t3)
    /* AB030 801225C0 156CFFF8 */  bne        $t3, $t4, .L801225A4
    /* AB034 801225C4 AD0AFFFC */   sw        $t2, -0x4($t0)
    /* AB038 801225C8 8D6A0000 */  lw         $t2, 0x0($t3)
    /* AB03C 801225CC 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* AB040 801225D0 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* AB044 801225D4 AD0A0000 */  sw         $t2, 0x0($t0)
    /* AB048 801225D8 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* AB04C 801225DC 8DAE0000 */  lw         $t6, 0x0($t5)
    /* AB050 801225E0 000E7880 */  sll        $t7, $t6, 2
    /* AB054 801225E4 002F0821 */  addu       $at, $at, $t7
    /* AB058 801225E8 C4206A10 */  lwc1       $f0, %lo(D_800E6A10)($at)
    /* AB05C 801225EC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* AB060 801225F0 44812000 */  mtc1       $at, $f4
    /* AB064 801225F4 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* AB068 801225F8 46002032 */  c.eq.s     $f4, $f0
    /* AB06C 801225FC 00000000 */  nop
    /* AB070 80122600 45020005 */  bc1fl      .L80122618
    /* AB074 80122604 44813000 */   mtc1      $at, $f6
    /* AB078 80122608 8C7800EC */  lw         $t8, 0xEC($v1)
    /* AB07C 8012260C 17000009 */  bnez       $t8, .L80122634
    /* AB080 80122610 00000000 */   nop
    /* AB084 80122614 44813000 */  mtc1       $at, $f6
  .L80122618:
    /* AB088 80122618 00000000 */  nop
    /* AB08C 8012261C 46003032 */  c.eq.s     $f6, $f0
    /* AB090 80122620 00000000 */  nop
    /* AB094 80122624 45020018 */  bc1fl      .L80122688
    /* AB098 80122628 27A8001C */   addiu     $t0, $sp, 0x1C
    /* AB09C 8012262C 8C7900F0 */  lw         $t9, 0xF0($v1)
    /* AB0A0 80122630 13200014 */  beqz       $t9, .L80122684
  .L80122634:
    /* AB0A4 80122634 3C048013 */   lui       $a0, %hi(gPositionState)
    /* AB0A8 80122638 2484E968 */  addiu      $a0, $a0, %lo(gPositionState)
    /* AB0AC 8012263C 0C0431CD */  jal        func_8010C734
    /* AB0B0 80122640 AFA50074 */   sw        $a1, 0x74($sp)
    /* AB0B4 80122644 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* AB0B8 80122648 3C068013 */  lui        $a2, %hi(D_8012BCA0)
    /* AB0BC 8012264C 24C6BCA0 */  addiu      $a2, $a2, %lo(D_8012BCA0)
    /* AB0C0 80122650 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
    /* AB0C4 80122654 1040000B */  beqz       $v0, .L80122684
    /* AB0C8 80122658 8FA50074 */   lw        $a1, 0x74($sp)
    /* AB0CC 8012265C 8CC20000 */  lw         $v0, 0x0($a2)
    /* AB0D0 80122660 24010007 */  addiu      $at, $zero, 0x7
    /* AB0D4 80122664 000214C2 */  srl        $v0, $v0, 19
    /* AB0D8 80122668 304C0007 */  andi       $t4, $v0, 0x7
    /* AB0DC 8012266C 11810004 */  beq        $t4, $at, .L80122680
    /* AB0E0 80122670 304B0038 */   andi      $t3, $v0, 0x38
    /* AB0E4 80122674 24010038 */  addiu      $at, $zero, 0x38
    /* AB0E8 80122678 55610003 */  bnel       $t3, $at, .L80122688
    /* AB0EC 8012267C 27A8001C */   addiu     $t0, $sp, 0x1C
  .L80122680:
    /* AB0F0 80122680 24050001 */  addiu      $a1, $zero, 0x1
  .L80122684:
    /* AB0F4 80122684 27A8001C */  addiu      $t0, $sp, 0x1C
  .L80122688:
    /* AB0F8 80122688 250E0054 */  addiu      $t6, $t0, 0x54
    /* AB0FC 8012268C 00C06825 */  or         $t5, $a2, $zero
  .L80122690:
    /* AB100 80122690 8D0A0000 */  lw         $t2, 0x0($t0)
    /* AB104 80122694 2508000C */  addiu      $t0, $t0, 0xC
    /* AB108 80122698 25AD000C */  addiu      $t5, $t5, 0xC
    /* AB10C 8012269C ADAAFFF4 */  sw         $t2, -0xC($t5)
    /* AB110 801226A0 8D09FFF8 */  lw         $t1, -0x8($t0)
    /* AB114 801226A4 ADA9FFF8 */  sw         $t1, -0x8($t5)
    /* AB118 801226A8 8D0AFFFC */  lw         $t2, -0x4($t0)
    /* AB11C 801226AC 150EFFF8 */  bne        $t0, $t6, .L80122690
    /* AB120 801226B0 ADAAFFFC */   sw        $t2, -0x4($t5)
    /* AB124 801226B4 8D0A0000 */  lw         $t2, 0x0($t0)
    /* AB128 801226B8 10A0000B */  beqz       $a1, .L801226E8
    /* AB12C 801226BC ADAA0000 */   sw        $t2, 0x0($t5)
    /* AB130 801226C0 44804000 */  mtc1       $zero, $f8
    /* AB134 801226C4 AC600030 */  sw         $zero, 0x30($v1)
    /* AB138 801226C8 2404000D */  addiu      $a0, $zero, 0xD
    /* AB13C 801226CC E4680168 */  swc1       $f8, 0x168($v1)
    /* AB140 801226D0 C46A0168 */  lwc1       $f10, 0x168($v1)
    /* AB144 801226D4 2405000A */  addiu      $a1, $zero, 0xA
    /* AB148 801226D8 0C048BDB */  jal        set_kirby_action_1
    /* AB14C 801226DC E46A0164 */   swc1      $f10, 0x164($v1)
    /* AB150 801226E0 10000002 */  b          .L801226EC
    /* AB154 801226E4 24020001 */   addiu     $v0, $zero, 0x1
  .L801226E8:
    /* AB158 801226E8 00001025 */  or         $v0, $zero, $zero
  .L801226EC:
    /* AB15C 801226EC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* AB160 801226F0 27BD0078 */  addiu      $sp, $sp, 0x78
    /* AB164 801226F4 03E00008 */  jr         $ra
    /* AB168 801226F8 00000000 */   nop
endlabel func_80122558
.size func_80122558, . - func_80122558
