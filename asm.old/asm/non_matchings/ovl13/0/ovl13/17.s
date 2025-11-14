glabel func_801DD614_ovl13 # 17
/* 1F5594 801DD614 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 1F5598 801DD618 AFB2001C */  sw          $s2, 0x1C($sp)
/* 1F559C 801DD61C 3C128005 */  lui         $s2, %hi(D_8004A7C4)
/* 1F55A0 801DD620 2652A7C4 */  addiu       $s2, $s2, %lo(D_8004A7C4)
/* 1F55A4 801DD624 8E430000 */  lw          $v1, 0x0($s2)
/* 1F55A8 801DD628 AFBF0034 */  sw          $ra, 0x34($sp)
/* 1F55AC 801DD62C AFB70030 */  sw          $s7, 0x30($sp)
/* 1F55B0 801DD630 AFB6002C */  sw          $s6, 0x2C($sp)
/* 1F55B4 801DD634 AFB50028 */  sw          $s5, 0x28($sp)
/* 1F55B8 801DD638 AFB40024 */  sw          $s4, 0x24($sp)
/* 1F55BC 801DD63C AFB30020 */  sw          $s3, 0x20($sp)
/* 1F55C0 801DD640 AFB10018 */  sw          $s1, 0x18($sp)
/* 1F55C4 801DD644 AFB00014 */  sw          $s0, 0x14($sp)
/* 1F55C8 801DD648 AFA40038 */  sw          $a0, 0x38($sp)
/* 1F55CC 801DD64C 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1F55D0 801DD650 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1F55D4 801DD654 24170002 */  addiu       $s7, $zero, 0x2
/* 1F55D8 801DD658 000E7880 */  sll         $t7, $t6, 2
/* 1F55DC 801DD65C 002F0821 */  addu        $at, $at, $t7
/* 1F55E0 801DD660 AC37DFD0 */  sw          $s7, %lo(D_800DDFD0)($at)
/* 1F55E4 801DD664 8C790000 */  lw          $t9, 0x0($v1)
/* 1F55E8 801DD668 3C10800E */  lui         $s0, %hi(D_800E1B50)
/* 1F55EC 801DD66C 26101B50 */  addiu       $s0, $s0, %lo(D_800E1B50)
/* 1F55F0 801DD670 00194080 */  sll         $t0, $t9, 2
/* 1F55F4 801DD674 02084821 */  addu        $t1, $s0, $t0
/* 1F55F8 801DD678 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1F55FC 801DD67C 3C18801E */  lui         $t8, %hi(D_801D93A8)
/* 1F5600 801DD680 271893A8 */  addiu       $t8, $t8, %lo(D_801D93A8)
/* 1F5604 801DD684 AD58008C */  sw          $t8, 0x8C($t2)
/* 1F5608 801DD688 8E4B0000 */  lw          $t3, 0x0($s2)
/* 1F560C 801DD68C 3C04801E */  lui         $a0, %hi(D_801DAADC)
/* 1F5610 801DD690 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F5614 801DD694 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F5618 801DD698 2484AADC */  addiu       $a0, $a0, %lo(D_801DAADC)
/* 1F561C 801DD69C 000C6880 */  sll         $t5, $t4, 2
/* 1F5620 801DD6A0 002D0821 */  addu        $at, $at, $t5
/* 1F5624 801DD6A4 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F5628 801DD6A8 AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F562C 801DD6AC 8E4F0000 */  lw          $t7, 0x0($s2)
/* 1F5630 801DD6B0 3C0E801E */  lui         $t6, %hi(D_801DADF8)
/* 1F5634 801DD6B4 25CEADF8 */  addiu       $t6, $t6, %lo(D_801DADF8)
/* 1F5638 801DD6B8 8DF90000 */  lw          $t9, 0x0($t7)
/* 1F563C 801DD6BC 00194080 */  sll         $t0, $t9, 2
/* 1F5640 801DD6C0 02084821 */  addu        $t1, $s0, $t0
/* 1F5644 801DD6C4 8D380000 */  lw          $t8, 0x0($t1)
/* 1F5648 801DD6C8 0C02CCFD */  jal         func_800B33F4
/* 1F564C 801DD6CC AF0E0098 */   sw         $t6, 0x98($t8)
/* 1F5650 801DD6D0 8E430000 */  lw          $v1, 0x0($s2)
/* 1F5654 801DD6D4 3C014000 */  lui         $at, (0x40000000 >> 16)
/* 1F5658 801DD6D8 44812000 */  mtc1        $at, $f4
/* 1F565C 801DD6DC 8C6A0000 */  lw          $t2, 0x0($v1)
/* 1F5660 801DD6E0 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1F5664 801DD6E4 3C02800E */  lui         $v0, %hi(D_800E64D0)
/* 1F5668 801DD6E8 000A5880 */  sll         $t3, $t2, 2
/* 1F566C 801DD6EC 002B0821 */  addu        $at, $at, $t3
/* 1F5670 801DD6F0 E4243C90 */  swc1        $f4, %lo(D_800E3C90)($at)
/* 1F5674 801DD6F4 8C640000 */  lw          $a0, 0x0($v1)
/* 1F5678 801DD6F8 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F567C 801DD6FC 244264D0 */  addiu       $v0, $v0, %lo(D_800E64D0)
/* 1F5680 801DD700 00042080 */  sll         $a0, $a0, 2
/* 1F5684 801DD704 00240821 */  addu        $at, $at, $a0
/* 1F5688 801DD708 C4266A10 */  lwc1        $f6, %lo(D_800E6A10)($at)
/* 1F568C 801DD70C 3C01C000 */  lui         $at, (0xC0000000 >> 16)
/* 1F5690 801DD710 44814000 */  mtc1        $at, $f8
/* 1F5694 801DD714 00446021 */  addu        $t4, $v0, $a0
/* 1F5698 801DD718 3C0F800F */  lui         $t7, %hi(D_800EBBE0)
/* 1F569C 801DD71C 46083282 */  mul.s       $f10, $f6, $f8
/* 1F56A0 801DD720 3C10800F */  lui         $s0, %hi(D_800EA360)
/* 1F56A4 801DD724 2610A360 */  addiu       $s0, $s0, %lo(D_800EA360)
/* 1F56A8 801DD728 24090001 */  addiu       $t1, $zero, 0x1
/* 1F56AC 801DD72C 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 1F56B0 801DD730 3C13800E */  lui         $s3, %hi(gEntityVtableIndexArray)
/* 1F56B4 801DD734 2673DC50 */  addiu       $s3, $s3, %lo(gEntityVtableIndexArray)
/* 1F56B8 801DD738 E58A0000 */  swc1        $f10, 0x0($t4)
/* 1F56BC 801DD73C 8C640000 */  lw          $a0, 0x0($v1)
/* 1F56C0 801DD740 3C160001 */  lui         $s6, (0x1042A >> 16)
/* 1F56C4 801DD744 3C15800E */  lui         $s5, %hi(D_800DF310)
/* 1F56C8 801DD748 00042080 */  sll         $a0, $a0, 2
/* 1F56CC 801DD74C 01E47821 */  addu        $t7, $t7, $a0
/* 1F56D0 801DD750 8DEFBBE0 */  lw          $t7, %lo(D_800EBBE0)($t7)
/* 1F56D4 801DD754 00446821 */  addu        $t5, $v0, $a0
/* 1F56D8 801DD758 C5B00000 */  lwc1        $f16, 0x0($t5)
/* 1F56DC 801DD75C 000FC880 */  sll         $t9, $t7, 2
/* 1F56E0 801DD760 00594021 */  addu        $t0, $v0, $t9
/* 1F56E4 801DD764 E5100000 */  swc1        $f16, 0x0($t0)
/* 1F56E8 801DD768 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1F56EC 801DD76C 3C140001 */  lui         $s4, (0x1041D >> 16)
/* 1F56F0 801DD770 3694041D */  ori         $s4, $s4, (0x1041D & 0xFFFF)
/* 1F56F4 801DD774 000EC080 */  sll         $t8, $t6, 2
/* 1F56F8 801DD778 02185021 */  addu        $t2, $s0, $t8
/* 1F56FC 801DD77C AD490000 */  sw          $t1, 0x0($t2)
/* 1F5700 801DD780 8C640000 */  lw          $a0, 0x0($v1)
/* 1F5704 801DD784 26B5F310 */  addiu       $s5, $s5, %lo(D_800DF310)
/* 1F5708 801DD788 36D6042A */  ori         $s6, $s6, (0x1042A & 0xFFFF)
/* 1F570C 801DD78C 00042080 */  sll         $a0, $a0, 2
/* 1F5710 801DD790 02045821 */  addu        $t3, $s0, $a0
/* 1F5714 801DD794 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F5718 801DD798 00240821 */  addu        $at, $at, $a0
/* 1F571C 801DD79C AC2C9E20 */  sw          $t4, %lo(D_800E9E20)($at)
/* 1F5720 801DD7A0 8C640000 */  lw          $a0, 0x0($v1)
/* 1F5724 801DD7A4 00042080 */  sll         $a0, $a0, 2
/* 1F5728 801DD7A8 02646821 */  addu        $t5, $s3, $a0
/* 1F572C 801DD7AC 8DAF0000 */  lw          $t7, 0x0($t5)
/* 1F5730 801DD7B0 16EF002A */  bne         $s7, $t7, L801DD85C_ovl13
/* 1F5734 801DD7B4 02041021 */   addu       $v0, $s0, $a0
glabel L801DD7B8_ovl13
/* 1F5738 801DD7B8 8C590000 */  lw          $t9, 0x0($v0)
/* 1F573C 801DD7BC 3C11801E */  lui         $s1, %hi(func_801DDADC_ovl13)
/* 1F5740 801DD7C0 2631DADC */  addiu       $s1, $s1, %lo(func_801DDADC_ovl13)
/* 1F5744 801DD7C4 27280001 */  addiu       $t0, $t9, 0x1
/* 1F5748 801DD7C8 AC480000 */  sw          $t0, 0x0($v0)
/* 1F574C 801DD7CC 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1F5750 801DD7D0 02C02025 */  move        $a0, $s6
/* 1F5754 801DD7D4 000EC080 */  sll         $t8, $t6, 2
/* 1F5758 801DD7D8 02181021 */  addu        $v0, $s0, $t8
/* 1F575C 801DD7DC 8C490000 */  lw          $t1, 0x0($v0)
/* 1F5760 801DD7E0 05210004 */  bgez        $t1, L801DD7F4_ovl13
/* 1F5764 801DD7E4 312A0001 */   andi       $t2, $t1, 0x1
/* 1F5768 801DD7E8 11400002 */  beqz        $t2, L801DD7F4_ovl13
/* 1F576C 801DD7EC 00000000 */   nop
/* 1F5770 801DD7F0 254AFFFE */  addiu       $t2, $t2, -0x2
glabel L801DD7F4_ovl13
/* 1F5774 801DD7F4 AC4A0000 */  sw          $t2, 0x0($v0)
/* 1F5778 801DD7F8 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1F577C 801DD7FC 000B6080 */  sll         $t4, $t3, 2
/* 1F5780 801DD800 020C6821 */  addu        $t5, $s0, $t4
/* 1F5784 801DD804 8DAF0000 */  lw          $t7, 0x0($t5)
/* 1F5788 801DD808 11E0000B */  beqz        $t7, L801DD838_ovl13
/* 1F578C 801DD80C 00000000 */   nop
/* 1F5790 801DD810 0C02A806 */  jal         func_800AA018
/* 1F5794 801DD814 02802025 */   move       $a0, $s4
/* 1F5798 801DD818 8E590000 */  lw          $t9, 0x0($s2)
/* 1F579C 801DD81C 8F280000 */  lw          $t0, 0x0($t9)
/* 1F57A0 801DD820 00087080 */  sll         $t6, $t0, 2
/* 1F57A4 801DD824 02AEC021 */  addu        $t8, $s5, $t6
/* 1F57A8 801DD828 0C02BC9F */  jal         func_800AF27C
/* 1F57AC 801DD82C AF110000 */   sw         $s1, 0x0($t8)
/* 1F57B0 801DD830 10000004 */  b           L801DD844_ovl13
/* 1F57B4 801DD834 8E430000 */   lw         $v1, 0x0($s2)
glabel L801DD838_ovl13
/* 1F57B8 801DD838 0C02AA19 */  jal         func_800AA864
/* 1F57BC 801DD83C 24050002 */   addiu      $a1, $zero, 0x2
/* 1F57C0 801DD840 8E430000 */  lw          $v1, 0x0($s2)
glabel L801DD844_ovl13
/* 1F57C4 801DD844 8C640000 */  lw          $a0, 0x0($v1)
/* 1F57C8 801DD848 00042080 */  sll         $a0, $a0, 2
/* 1F57CC 801DD84C 02644821 */  addu        $t1, $s3, $a0
/* 1F57D0 801DD850 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1F57D4 801DD854 52EAFFD8 */  beql        $s7, $t2, L801DD7B8_ovl13
/* 1F57D8 801DD858 02041021 */   addu       $v0, $s0, $a0
glabel L801DD85C_ovl13
/* 1F57DC 801DD85C 8FBF0034 */  lw          $ra, 0x34($sp)
/* 1F57E0 801DD860 8FB00014 */  lw          $s0, 0x14($sp)
/* 1F57E4 801DD864 8FB10018 */  lw          $s1, 0x18($sp)
/* 1F57E8 801DD868 8FB2001C */  lw          $s2, 0x1C($sp)
/* 1F57EC 801DD86C 8FB30020 */  lw          $s3, 0x20($sp)
/* 1F57F0 801DD870 8FB40024 */  lw          $s4, 0x24($sp)
/* 1F57F4 801DD874 8FB50028 */  lw          $s5, 0x28($sp)
/* 1F57F8 801DD878 8FB6002C */  lw          $s6, 0x2C($sp)
/* 1F57FC 801DD87C 8FB70030 */  lw          $s7, 0x30($sp)
/* 1F5800 801DD880 03E00008 */  jr          $ra
/* 1F5804 801DD884 27BD0038 */   addiu      $sp, $sp, 0x38
.type func_801DD614_ovl13, @function

.size func_801DD614_ovl13, . - func_801DD614_ovl13
