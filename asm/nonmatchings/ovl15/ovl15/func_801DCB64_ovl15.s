nonmatching func_801DCB64_ovl15, 0x244

glabel func_801DCB64_ovl15
    /* 2076C4 801DCB64 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 2076C8 801DCB68 AFB40024 */  sw         $s4, 0x24($sp)
    /* 2076CC 801DCB6C 3C148005 */  lui        $s4, %hi(omCurrentObj)
    /* 2076D0 801DCB70 2694A7C4 */  addiu      $s4, $s4, %lo(omCurrentObj)
    /* 2076D4 801DCB74 8E870000 */  lw         $a3, 0x0($s4)
    /* 2076D8 801DCB78 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 2076DC 801DCB7C AFB50028 */  sw         $s5, 0x28($sp)
    /* 2076E0 801DCB80 AFB30020 */  sw         $s3, 0x20($sp)
    /* 2076E4 801DCB84 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 2076E8 801DCB88 AFB10018 */  sw         $s1, 0x18($sp)
    /* 2076EC 801DCB8C AFB00014 */  sw         $s0, 0x14($sp)
    /* 2076F0 801DCB90 AFA40030 */  sw         $a0, 0x30($sp)
    /* 2076F4 801DCB94 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 2076F8 801DCB98 44801000 */  mtc1       $zero, $f2
    /* 2076FC 801DCB9C 3C03800E */  lui        $v1, %hi(gEntitiesAngleZArray)
    /* 207700 801DCBA0 24634390 */  addiu      $v1, $v1, %lo(gEntitiesAngleZArray)
    /* 207704 801DCBA4 000E7880 */  sll        $t7, $t6, 2
    /* 207708 801DCBA8 006FC021 */  addu       $t8, $v1, $t7
    /* 20770C 801DCBAC E7020000 */  swc1       $f2, 0x0($t8)
    /* 207710 801DCBB0 8CE20000 */  lw         $v0, 0x0($a3)
    /* 207714 801DCBB4 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 207718 801DCBB8 3C08800F */  lui        $t0, %hi(D_800E9020)
    /* 20771C 801DCBBC 00021080 */  sll        $v0, $v0, 2
    /* 207720 801DCBC0 0062C821 */  addu       $t9, $v1, $v0
    /* 207724 801DCBC4 C7200000 */  lwc1       $f0, 0x0($t9)
    /* 207728 801DCBC8 00220821 */  addu       $at, $at, $v0
    /* 20772C 801DCBCC 25089020 */  addiu      $t0, $t0, %lo(D_800E9020)
    /* 207730 801DCBD0 E42041D0 */  swc1       $f0, %lo(gEntitiesAngleYArray)($at)
    /* 207734 801DCBD4 8CE90000 */  lw         $t1, 0x0($a3)
    /* 207738 801DCBD8 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* 20773C 801DCBDC 3C0F800B */  lui        $t7, %hi(func_800B4924)
    /* 207740 801DCBE0 00095080 */  sll        $t2, $t1, 2
    /* 207744 801DCBE4 002A0821 */  addu       $at, $at, $t2
    /* 207748 801DCBE8 E4204010 */  swc1       $f0, %lo(gEntitiesAngleXArray)($at)
    /* 20774C 801DCBEC 8CEB0000 */  lw         $t3, 0x0($a3)
    /* 207750 801DCBF0 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* 207754 801DCBF4 25EF4924 */  addiu      $t7, $t7, %lo(func_800B4924)
    /* 207758 801DCBF8 000B6080 */  sll        $t4, $t3, 2
    /* 20775C 801DCBFC 010C6821 */  addu       $t5, $t0, $t4
    /* 207760 801DCC00 E5A20000 */  swc1       $f2, 0x0($t5)
    /* 207764 801DCC04 8CE20000 */  lw         $v0, 0x0($a3)
    /* 207768 801DCC08 3C09801E */  lui        $t1, %hi(func_801DCDA8_ovl15)
    /* 20776C 801DCC0C 2529CDA8 */  addiu      $t1, $t1, %lo(func_801DCDA8_ovl15)
    /* 207770 801DCC10 00021080 */  sll        $v0, $v0, 2
    /* 207774 801DCC14 01027021 */  addu       $t6, $t0, $v0
    /* 207778 801DCC18 C5C40000 */  lwc1       $f4, 0x0($t6)
    /* 20777C 801DCC1C 00220821 */  addu       $at, $at, $v0
    /* 207780 801DCC20 3C040001 */  lui        $a0, (0x100DA >> 16)
    /* 207784 801DCC24 E42417D0 */  swc1       $f4, %lo(D_800E17D0)($at)
    /* 207788 801DCC28 8CF80000 */  lw         $t8, 0x0($a3)
    /* 20778C 801DCC2C 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 207790 801DCC30 348400DA */  ori        $a0, $a0, (0x100DA & 0xFFFF)
    /* 207794 801DCC34 0018C880 */  sll        $t9, $t8, 2
    /* 207798 801DCC38 00390821 */  addu       $at, $at, $t9
    /* 20779C 801DCC3C AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
    /* 2077A0 801DCC40 8CEA0000 */  lw         $t2, 0x0($a3)
    /* 2077A4 801DCC44 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 2077A8 801DCC48 24050023 */  addiu      $a1, $zero, 0x23
    /* 2077AC 801DCC4C 000A5880 */  sll        $t3, $t2, 2
    /* 2077B0 801DCC50 002B0821 */  addu       $at, $at, $t3
    /* 2077B4 801DCC54 AC29F150 */  sw         $t1, %lo(D_800DF150)($at)
    /* 2077B8 801DCC58 0C02A619 */  jal        func_800A9864
    /* 2077BC 801DCC5C 24060010 */   addiu     $a2, $zero, 0x10
    /* 2077C0 801DCC60 8E870000 */  lw         $a3, 0x0($s4)
    /* 2077C4 801DCC64 3C12800E */  lui        $s2, %hi(D_800E0D50)
    /* 2077C8 801DCC68 26520D50 */  addiu      $s2, $s2, %lo(D_800E0D50)
    /* 2077CC 801DCC6C 8CE20000 */  lw         $v0, 0x0($a3)
    /* 2077D0 801DCC70 3C11800E */  lui        $s1, %hi(D_800DFF50)
    /* 2077D4 801DCC74 2631FF50 */  addiu      $s1, $s1, %lo(D_800DFF50)
    /* 2077D8 801DCC78 00021080 */  sll        $v0, $v0, 2
    /* 2077DC 801DCC7C 02426021 */  addu       $t4, $s2, $v0
    /* 2077E0 801DCC80 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 2077E4 801DCC84 3C130001 */  lui        $s3, (0x103BD >> 16)
    /* 2077E8 801DCC88 367303BD */  ori        $s3, $s3, (0x103BD & 0xFFFF)
    /* 2077EC 801DCC8C 000D7080 */  sll        $t6, $t5, 2
    /* 2077F0 801DCC90 022EC021 */  addu       $t8, $s1, $t6
    /* 2077F4 801DCC94 8F030000 */  lw         $v1, 0x0($t8)
    /* 2077F8 801DCC98 3C150001 */  lui        $s5, (0x103BF >> 16)
    /* 2077FC 801DCC9C 36B503BF */  ori        $s5, $s5, (0x103BF & 0xFFFF)
    /* 207800 801DCCA0 1073000A */  beq        $v1, $s3, .L801DCCCC_ovl15
    /* 207804 801DCCA4 00002025 */   or        $a0, $zero, $zero
    /* 207808 801DCCA8 3C150001 */  lui        $s5, (0x103BF >> 16)
    /* 20780C 801DCCAC 36B503BF */  ori        $s5, $s5, (0x103BF & 0xFFFF)
    /* 207810 801DCCB0 10750006 */  beq        $v1, $s5, .L801DCCCC_ovl15
    /* 207814 801DCCB4 3C100001 */   lui       $s0, (0x103C1 >> 16)
    /* 207818 801DCCB8 361003C1 */  ori        $s0, $s0, (0x103C1 & 0xFFFF)
    /* 20781C 801DCCBC 1070000B */  beq        $v1, $s0, .L801DCCEC_ovl15
    /* 207820 801DCCC0 3C013FC0 */   lui       $at, (0x3FC00000 >> 16)
    /* 207824 801DCCC4 1000000A */  b          .L801DCCF0_ovl15
    /* 207828 801DCCC8 44814000 */   mtc1      $at, $f8
  .L801DCCCC_ovl15:
    /* 20782C 801DCCCC 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* 207830 801DCCD0 44813000 */  mtc1       $at, $f6
    /* 207834 801DCCD4 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
    /* 207838 801DCCD8 00220821 */  addu       $at, $at, $v0
    /* 20783C 801DCCDC 3C100001 */  lui        $s0, (0x103C1 >> 16)
    /* 207840 801DCCE0 361003C1 */  ori        $s0, $s0, (0x103C1 & 0xFFFF)
    /* 207844 801DCCE4 10000005 */  b          .L801DCCFC_ovl15
    /* 207848 801DCCE8 E4264550 */   swc1      $f6, %lo(gEntitiesScaleXArray)($at)
  .L801DCCEC_ovl15:
    /* 20784C 801DCCEC 44814000 */  mtc1       $at, $f8
  .L801DCCF0_ovl15:
    /* 207850 801DCCF0 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
    /* 207854 801DCCF4 00220821 */  addu       $at, $at, $v0
    /* 207858 801DCCF8 E4284550 */  swc1       $f8, %lo(gEntitiesScaleXArray)($at)
  .L801DCCFC_ovl15:
    /* 20785C 801DCCFC 0C02BEED */  jal        func_800AFBB4
    /* 207860 801DCD00 00E02825 */   or        $a1, $a3, $zero
    /* 207864 801DCD04 8E8F0000 */  lw         $t7, 0x0($s4)
    /* 207868 801DCD08 8DE30000 */  lw         $v1, 0x0($t7)
    /* 20786C 801DCD0C 0003C880 */  sll        $t9, $v1, 2
    /* 207870 801DCD10 02595021 */  addu       $t2, $s2, $t9
    /* 207874 801DCD14 8D490000 */  lw         $t1, 0x0($t2)
    /* 207878 801DCD18 00095880 */  sll        $t3, $t1, 2
    /* 20787C 801DCD1C 022B6021 */  addu       $t4, $s1, $t3
    /* 207880 801DCD20 8D820000 */  lw         $v0, 0x0($t4)
    /* 207884 801DCD24 12620005 */  beq        $s3, $v0, .L801DCD3C_ovl15
    /* 207888 801DCD28 00000000 */   nop
    /* 20788C 801DCD2C 12A20003 */  beq        $s5, $v0, .L801DCD3C_ovl15
    /* 207890 801DCD30 00000000 */   nop
    /* 207894 801DCD34 16020011 */  bne        $s0, $v0, .L801DCD7C_ovl15
    /* 207898 801DCD38 00000000 */   nop
  .L801DCD3C_ovl15:
    /* 20789C 801DCD3C 0C002DAF */  jal        ohSleep
    /* 2078A0 801DCD40 24040001 */   addiu     $a0, $zero, 0x1
    /* 2078A4 801DCD44 8E8D0000 */  lw         $t5, 0x0($s4)
    /* 2078A8 801DCD48 8DA30000 */  lw         $v1, 0x0($t5)
    /* 2078AC 801DCD4C 00037080 */  sll        $t6, $v1, 2
    /* 2078B0 801DCD50 024EC021 */  addu       $t8, $s2, $t6
    /* 2078B4 801DCD54 8F0F0000 */  lw         $t7, 0x0($t8)
    /* 2078B8 801DCD58 000FC880 */  sll        $t9, $t7, 2
    /* 2078BC 801DCD5C 02395021 */  addu       $t2, $s1, $t9
    /* 2078C0 801DCD60 8D420000 */  lw         $v0, 0x0($t2)
    /* 2078C4 801DCD64 1262FFF5 */  beq        $s3, $v0, .L801DCD3C_ovl15
    /* 2078C8 801DCD68 00000000 */   nop
    /* 2078CC 801DCD6C 12A2FFF3 */  beq        $s5, $v0, .L801DCD3C_ovl15
    /* 2078D0 801DCD70 00000000 */   nop
    /* 2078D4 801DCD74 1202FFF1 */  beq        $s0, $v0, .L801DCD3C_ovl15
    /* 2078D8 801DCD78 00000000 */   nop
  .L801DCD7C_ovl15:
    /* 2078DC 801DCD7C 0C067656 */  jal        func_8019D958_ovl7
    /* 2078E0 801DCD80 3064FFFF */   andi      $a0, $v1, 0xFFFF
    /* 2078E4 801DCD84 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 2078E8 801DCD88 8FB00014 */  lw         $s0, 0x14($sp)
    /* 2078EC 801DCD8C 8FB10018 */  lw         $s1, 0x18($sp)
    /* 2078F0 801DCD90 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 2078F4 801DCD94 8FB30020 */  lw         $s3, 0x20($sp)
    /* 2078F8 801DCD98 8FB40024 */  lw         $s4, 0x24($sp)
    /* 2078FC 801DCD9C 8FB50028 */  lw         $s5, 0x28($sp)
    /* 207900 801DCDA0 03E00008 */  jr         $ra
    /* 207904 801DCDA4 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_801DCB64_ovl15
.size func_801DCB64_ovl15, . - func_801DCB64_ovl15
