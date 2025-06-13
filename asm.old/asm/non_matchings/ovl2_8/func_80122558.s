glabel func_80122558
/* 0AAFC8 80122558 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0AAFCC 8012255C 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0AAFD0 80122560 906E0015 */  lbu   $t6, 0x15($v1)
/* 0AAFD4 80122564 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0AAFD8 80122568 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AAFDC 8012256C 55C0005F */  bnezl $t6, .L801226EC_ovl2
/* 0AAFE0 80122570 00001025 */   move  $v0, $zero
/* 0AAFE4 80122574 906F0004 */  lbu   $t7, 4($v1)
/* 0AAFE8 80122578 55E0005C */  bnezl $t7, .L801226EC_ovl2
/* 0AAFEC 8012257C 00001025 */   move  $v0, $zero
/* 0AAFF0 80122580 8C780034 */  lw    $t8, 0x34($v1)
/* 0AAFF4 80122584 3C068013 */  lui   $a2, %hi(D_8012BCA0) # $a2, 0x8013
/* 0AAFF8 80122588 24C6BCA0 */  addiu $a2, %lo(D_8012BCA0) # addiu $a2, $a2, -0x4360
/* 0AAFFC 8012258C 33190005 */  andi  $t9, $t8, 5
/* 0AB000 80122590 17200055 */  bnez  $t9, .L801226E8_ovl2
/* 0AB004 80122594 00002825 */   move  $a1, $zero
/* 0AB008 80122598 27A8001C */  addiu $t0, $sp, 0x1c
/* 0AB00C 8012259C 00C05825 */  move  $t3, $a2
/* 0AB010 801225A0 24CC0054 */  addiu $t4, $a2, 0x54
.L801225A4_ovl2:
/* 0AB014 801225A4 8D6A0000 */  lw    $t2, ($t3)
/* 0AB018 801225A8 256B000C */  addiu $t3, $t3, 0xc
/* 0AB01C 801225AC 2508000C */  addiu $t0, $t0, 0xc
/* 0AB020 801225B0 AD0AFFF4 */  sw    $t2, -0xc($t0)
/* 0AB024 801225B4 8D69FFF8 */  lw    $t1, -8($t3)
/* 0AB028 801225B8 AD09FFF8 */  sw    $t1, -8($t0)
/* 0AB02C 801225BC 8D6AFFFC */  lw    $t2, -4($t3)
/* 0AB030 801225C0 156CFFF8 */  bne   $t3, $t4, .L801225A4_ovl2
/* 0AB034 801225C4 AD0AFFFC */   sw    $t2, -4($t0)
/* 0AB038 801225C8 8D6A0000 */  lw    $t2, ($t3)
/* 0AB03C 801225CC 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0AB040 801225D0 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0AB044 801225D4 AD0A0000 */  sw    $t2, ($t0)
/* 0AB048 801225D8 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0AB04C 801225DC 8DAE0000 */  lw    $t6, ($t5)
/* 0AB050 801225E0 000E7880 */  sll   $t7, $t6, 2
/* 0AB054 801225E4 002F0821 */  addu  $at, $at, $t7
/* 0AB058 801225E8 C4206A10 */  lwc1  $f0, 0x6a10($at)
/* 0AB05C 801225EC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0AB060 801225F0 44812000 */  mtc1  $at, $f4
/* 0AB064 801225F4 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0AB068 801225F8 46002032 */  c.eq.s $f4, $f0
/* 0AB06C 801225FC 00000000 */  nop   
/* 0AB070 80122600 45020005 */  bc1fl .L80122618_ovl2
/* 0AB074 80122604 44813000 */   mtc1  $at, $f6
/* 0AB078 80122608 8C7800EC */  lw    $t8, 0xec($v1)
/* 0AB07C 8012260C 17000009 */  bnez  $t8, .L80122634_ovl2
/* 0AB080 80122610 00000000 */   nop   
/* 0AB084 80122614 44813000 */  mtc1  $at, $f6
.L80122618_ovl2:
/* 0AB088 80122618 00000000 */  nop   
/* 0AB08C 8012261C 46003032 */  c.eq.s $f6, $f0
/* 0AB090 80122620 00000000 */  nop   
/* 0AB094 80122624 45020018 */  bc1fl .L80122688_ovl2
/* 0AB098 80122628 27A8001C */   addiu $t0, $sp, 0x1c
/* 0AB09C 8012262C 8C7900F0 */  lw    $t9, 0xf0($v1)
/* 0AB0A0 80122630 13200014 */  beqz  $t9, .L80122684_ovl2
.L80122634_ovl2:
/* 0AB0A4 80122634 3C048013 */   lui   $a0, %hi(gPositionState) # $a0, 0x8013
/* 0AB0A8 80122638 2484E968 */  addiu $a0, %lo(gPositionState) # addiu $a0, $a0, -0x1698
/* 0AB0AC 8012263C 0C0431CD */  jal   func_8010C734
/* 0AB0B0 80122640 AFA50074 */   sw    $a1, 0x74($sp)
/* 0AB0B4 80122644 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0AB0B8 80122648 3C068013 */  lui   $a2, %hi(D_8012BCA0) # $a2, 0x8013
/* 0AB0BC 8012264C 24C6BCA0 */  addiu $a2, %lo(D_8012BCA0) # addiu $a2, $a2, -0x4360
/* 0AB0C0 80122650 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0AB0C4 80122654 1040000B */  beqz  $v0, .L80122684_ovl2
/* 0AB0C8 80122658 8FA50074 */   lw    $a1, 0x74($sp)
/* 0AB0CC 8012265C 8CC20000 */  lw    $v0, ($a2)
/* 0AB0D0 80122660 24010007 */  li    $at, 7
/* 0AB0D4 80122664 000214C2 */  srl   $v0, $v0, 0x13
/* 0AB0D8 80122668 304C0007 */  andi  $t4, $v0, 7
/* 0AB0DC 8012266C 11810004 */  beq   $t4, $at, .L80122680_ovl2
/* 0AB0E0 80122670 304B0038 */   andi  $t3, $v0, 0x38
/* 0AB0E4 80122674 24010038 */  li    $at, 56
/* 0AB0E8 80122678 55610003 */  bnel  $t3, $at, .L80122688_ovl2
/* 0AB0EC 8012267C 27A8001C */   addiu $t0, $sp, 0x1c
.L80122680_ovl2:
/* 0AB0F0 80122680 24050001 */  li    $a1, 1
.L80122684_ovl2:
/* 0AB0F4 80122684 27A8001C */  addiu $t0, $sp, 0x1c
.L80122688_ovl2:
/* 0AB0F8 80122688 250E0054 */  addiu $t6, $t0, 0x54
/* 0AB0FC 8012268C 00C06825 */  move  $t5, $a2
.L80122690_ovl2:
/* 0AB100 80122690 8D0A0000 */  lw    $t2, ($t0)
/* 0AB104 80122694 2508000C */  addiu $t0, $t0, 0xc
/* 0AB108 80122698 25AD000C */  addiu $t5, $t5, 0xc
/* 0AB10C 8012269C ADAAFFF4 */  sw    $t2, -0xc($t5)
/* 0AB110 801226A0 8D09FFF8 */  lw    $t1, -8($t0)
/* 0AB114 801226A4 ADA9FFF8 */  sw    $t1, -8($t5)
/* 0AB118 801226A8 8D0AFFFC */  lw    $t2, -4($t0)
/* 0AB11C 801226AC 150EFFF8 */  bne   $t0, $t6, .L80122690_ovl2
/* 0AB120 801226B0 ADAAFFFC */   sw    $t2, -4($t5)
/* 0AB124 801226B4 8D0A0000 */  lw    $t2, ($t0)
/* 0AB128 801226B8 10A0000B */  beqz  $a1, .L801226E8_ovl2
/* 0AB12C 801226BC ADAA0000 */   sw    $t2, ($t5)
/* 0AB130 801226C0 44804000 */  mtc1  $zero, $f8
/* 0AB134 801226C4 AC600030 */  sw    $zero, 0x30($v1)
/* 0AB138 801226C8 2404000D */  li    $a0, 13
/* 0AB13C 801226CC E4680168 */  swc1  $f8, 0x168($v1)
/* 0AB140 801226D0 C46A0168 */  lwc1  $f10, 0x168($v1)
/* 0AB144 801226D4 2405000A */  li    $a1, 10
/* 0AB148 801226D8 0C048BDB */  jal   set_kirby_action_1
/* 0AB14C 801226DC E46A0164 */   swc1  $f10, 0x164($v1)
/* 0AB150 801226E0 10000002 */  b     .L801226EC_ovl2
/* 0AB154 801226E4 24020001 */   li    $v0, 1
.L801226E8_ovl2:
/* 0AB158 801226E8 00001025 */  move  $v0, $zero
.L801226EC_ovl2:
/* 0AB15C 801226EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0AB160 801226F0 27BD0078 */  addiu $sp, $sp, 0x78
/* 0AB164 801226F4 03E00008 */  jr    $ra
/* 0AB168 801226F8 00000000 */   nop   
.type func_80122558, @function
.size func_80122558, . - func_80122558
