glabel func_8017CC3C_ovl5
/* DD67C 8017CC3C 00000000 */  nop
/* DD680 8017CC40 ACE80044 */  sw         $t0, 0x44($a3)
/* DD684 8017CC44 8C620000 */  lw         $v0, 0x0($v1)
/* DD688 8017CC48 00021080 */  sll        $v0, $v0, 2
.L8017CC4C_ovl3:
/* DD68C 8017CC4C 3C0A800F */  lui        $t2, %hi(D_800EA520)
/* DD690 8017CC50 01425021 */  addu       $t2, $t2, $v0
/* DD694 8017CC54 8D4AA520 */  lw         $t2, %lo(D_800EA520)($t2)
/* DD698 8017CC58 90E90150 */  lbu        $t1, 0x150($a3)
/* DD69C 8017CC5C 112A0093 */  beq        $t1, $t2, .L8017CEAC_ovl3
/* DD6A0 8017CC60 00000000 */   nop
/* DD6A4 8017CC64 8CEB0020 */  lw         $t3, 0x20($a3)
/* DD6A8 8017CC68 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* DD6AC 8017CC6C 00822021 */  addu       $a0, $a0, $v0
/* DD6B0 8017CC70 1560008E */  bnez       $t3, .L8017CEAC_ovl3
/* DD6B4 8017CC74 3C058017 */   lui       $a1, %hi(func_8016C510_ovl3)
/* DD6B8 8017CC78 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
/* DD6BC 8017CC7C 0C02C7B2 */  jal        assign_new_process_entry
/* DD6C0 8017CC80 24A5C510 */   addiu     $a1, $a1, %lo(func_8016C510_ovl3)
/* DD6C4 8017CC84 3C078013 */  lui        $a3, %hi(gKirbyState)
/* DD6C8 8017CC88 10000088 */  b          .L8017CEAC_ovl3
/* DD6CC 8017CC8C 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* DD6D0 8017CC90 8CEC0034 */  lw         $t4, %lo(D_80130034)($a3)
/* DD6D4 8017CC94 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* DD6D8 8017CC98 318D0001 */  andi       $t5, $t4, 0x1
.L8017CC9C_ovl5:
/* DD6DC 8017CC9C 55A0001F */  bnel       $t5, $zero, .L8017CD1C_ovl3
/* DD6E0 8017CCA0 8CEA003C */   lw        $t2, %lo(D_8013003C)($a3)
/* DD6E4 8017CCA4 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* DD6E8 8017CCA8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* DD6EC 8017CCAC 44802000 */  mtc1       $zero, $f4
/* DD6F0 8017CCB0 8DE20000 */  lw         $v0, 0x0($t7)
/* DD6F4 8017CCB4 3C0E800D */  lui        $t6, %hi(gKirbyController + 0x2)
/* DD6F8 8017CCB8 00021080 */  sll        $v0, $v0, 2
/* DD6FC 8017CCBC 00220821 */  addu       $at, $at, $v0
/* DD700 8017CCC0 C42664D0 */  lwc1       $f6, %lo(D_800E64D0)($at)
/* DD704 8017CCC4 46062032 */  c.eq.s     $f4, $f6
/* DD708 8017CCC8 00000000 */  nop
/* DD70C 8017CCCC 45000004 */  bc1f       func_8017CCE0_ovl5
/* DD710 8017CCD0 00000000 */   nop
/* DD714 8017CCD4 24030004 */  addiu      $v1, $zero, 0x4
/* DD718 8017CCD8 1000000F */  b          .L8017CD18_ovl3
/* DD71C 8017CCDC ACE30044 */   sw        $v1, %lo(D_80130044)($a3)
glabel func_8017CCE0_ovl5
/* DD720 8017CCE0 95CE6FEA */  lhu        $t6, %lo(gKirbyController + 0x2)($t6)
/* DD724 8017CCE4 3C08800F */  lui        $t0, %hi(D_800E8920)
/* DD728 8017CCE8 01024021 */  addu       $t0, $t0, $v0
/* DD72C 8017CCEC 31D98000 */  andi       $t9, $t6, 0x8000
/* DD730 8017CCF0 13200004 */  beqz       $t9, .L8017CD04_ovl3
/* DD734 8017CCF4 00000000 */   nop
/* DD738 8017CCF8 ACE40044 */  sw         $a0, %lo(D_80130044)($a3)
/* DD73C 8017CCFC 10000006 */  b          .L8017CD18_ovl3
/* DD740 8017CD00 00801825 */   or        $v1, $a0, $zero
.L8017CD04_ovl3:
/* DD744 8017CD04 8D088920 */  lw         $t0, %lo(D_800E8920)($t0)
/* DD748 8017CD08 55000004 */  bnel       $t0, $zero, .L8017CD1C_ovl3
/* DD74C 8017CD0C 8CEA003C */   lw        $t2, %lo(D_8013003C)($a3)
/* DD750 8017CD10 24030007 */  addiu      $v1, $zero, 0x7
/* DD754 8017CD14 ACE30044 */  sw         $v1, %lo(D_80130044)($a3)
.L8017CD18_ovl3:
/* DD758 8017CD18 8CEA003C */  lw         $t2, %lo(D_8013003C)($a3)
.L8017CD1C_ovl3:
/* DD75C 8017CD1C 15430003 */  bne        $t2, $v1, .L8017CD2C_ovl3
/* DD760 8017CD20 00000000 */   nop
/* DD764 8017CD24 0C048672 */  jal        func_801219C8
/* DD768 8017CD28 00000000 */   nop
.L8017CD2C_ovl3:
/* DD76C 8017CD2C 0C047B5A */  jal        func_8011ED68
/* DD770 8017CD30 00000000 */   nop
/* DD774 8017CD34 3C078013 */  lui        $a3, %hi(gKirbyState)
/* DD778 8017CD38 1000005C */  b          .L8017CEAC_ovl3
/* DD77C 8017CD3C 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* DD780 8017CD40 8CEB0034 */  lw         $t3, %lo(D_80130034)($a3)
/* DD784 8017CD44 316C0001 */  andi       $t4, $t3, 0x1
/* DD788 8017CD48 5580000A */  bnel       $t4, $zero, .L8017CD74_ovl3
/* DD78C 8017CD4C 8CF800E4 */   lw        $t8, %lo(D_801300E4)($a3)
/* DD790 8017CD50 0C048465 */  jal        func_80121194
/* DD794 8017CD54 00000000 */   nop
/* DD798 8017CD58 3C078013 */  lui        $a3, %hi(gKirbyState)
/* DD79C 8017CD5C 10400004 */  beqz       $v0, .L8017CD70_ovl3
/* DD7A0 8017CD60 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* DD7A4 8017CD64 8CED0034 */  lw         $t5, 0x34($a3)
/* DD7A8 8017CD68 35AF0001 */  ori        $t7, $t5, 0x1
/* DD7AC 8017CD6C ACEF0034 */  sw         $t7, 0x34($a3)
.L8017CD70_ovl3:
/* DD7B0 8017CD70 8CF800E4 */  lw         $t8, 0xE4($a3)
.L8017CD74_ovl3:
/* DD7B4 8017CD74 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* DD7B8 8017CD78 5300000B */  beql       $t8, $zero, .L8017CDA8_ovl3
/* DD7BC 8017CD7C 94EA00D2 */   lhu       $t2, %lo(D_801300D2)($a3)
/* DD7C0 8017CD80 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* DD7C4 8017CD84 44804000 */  mtc1       $zero, $f8
/* DD7C8 8017CD88 3C01800E */  lui        $at, %hi(D_800E3210)
/* DD7CC 8017CD8C 8DD90000 */  lw         $t9, 0x0($t6)
/* DD7D0 8017CD90 24090007 */  addiu      $t1, $zero, 0x7
/* DD7D4 8017CD94 00194080 */  sll        $t0, $t9, 2
/* DD7D8 8017CD98 00280821 */  addu       $at, $at, $t0
/* DD7DC 8017CD9C E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* DD7E0 8017CDA0 ACE90044 */  sw         $t1, %lo(D_80130044)($a3)
/* DD7E4 8017CDA4 94EA00D2 */  lhu        $t2, %lo(D_801300D2)($a3)
.L8017CDA8_ovl3:
/* DD7E8 8017CDA8 15400003 */  bnez       $t2, .L8017CDB8_ovl3
/* DD7EC 8017CDAC 00000000 */   nop
/* DD7F0 8017CDB0 0C047AF5 */  jal        func_8011EBD4
/* DD7F4 8017CDB4 00000000 */   nop
.L8017CDB8_ovl3:
/* DD7F8 8017CDB8 0C048672 */  jal        func_801219C8
/* DD7FC 8017CDBC 00000000 */   nop
/* DD800 8017CDC0 0C047B5A */  jal        func_8011ED68
/* DD804 8017CDC4 00000000 */   nop
/* DD808 8017CDC8 3C078013 */  lui        $a3, %hi(gKirbyState)
/* DD80C 8017CDCC 10000037 */  b          .L8017CEAC_ovl3
/* DD810 8017CDD0 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* DD814 8017CDD4 8CEB0034 */  lw         $t3, %lo(D_80130034)($a3)
/* DD818 8017CDD8 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* DD81C 8017CDDC 316C0001 */  andi       $t4, $t3, 0x1
/* DD820 8017CDE0 5580000C */  bnel       $t4, $zero, .L8017CE14_ovl3
/* DD824 8017CDE4 8CE8003C */   lw        $t0, %lo(D_8013003C)($a3)
/* DD828 8017CDE8 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* DD82C 8017CDEC 3C0E800F */  lui        $t6, %hi(D_800E8920)
/* DD830 8017CDF0 8DAF0000 */  lw         $t7, 0x0($t5)
/* DD834 8017CDF4 000FC080 */  sll        $t8, $t7, 2
/* DD838 8017CDF8 01D87021 */  addu       $t6, $t6, $t8
/* DD83C 8017CDFC 8DCE8920 */  lw         $t6, %lo(D_800E8920)($t6)
/* DD840 8017CE00 51C00004 */  beql       $t6, $zero, .L8017CE14_ovl3
/* DD844 8017CE04 8CE8003C */   lw        $t0, %lo(D_8013003C)($a3)
/* DD848 8017CE08 24030008 */  addiu      $v1, $zero, 0x8
/* DD84C 8017CE0C ACE30044 */  sw         $v1, %lo(D_80130044)($a3)
/* DD850 8017CE10 8CE8003C */  lw         $t0, %lo(D_8013003C)($a3)
.L8017CE14_ovl3:
/* DD854 8017CE14 15030003 */  bne        $t0, $v1, .L8017CE24_ovl3
/* DD858 8017CE18 00000000 */   nop
/* DD85C 8017CE1C 0C048672 */  jal        func_801219C8
/* DD860 8017CE20 00000000 */   nop
.L8017CE24_ovl3:
/* DD864 8017CE24 0C047B5A */  jal        func_8011ED68
/* DD868 8017CE28 00000000 */   nop
/* DD86C 8017CE2C 3C078013 */  lui        $a3, %hi(gKirbyState)
/* DD870 8017CE30 1000001E */  b          .L8017CEAC_ovl3
/* DD874 8017CE34 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* DD878 8017CE38 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* DD87C 8017CE3C 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* DD880 8017CE40 3C01800E */  lui        $at, %hi(D_800E64D0)
/* DD884 8017CE44 44805000 */  mtc1       $zero, $f10
/* DD888 8017CE48 8D2A0000 */  lw         $t2, 0x0($t1)
/* DD88C 8017CE4C 240C0005 */  addiu      $t4, $zero, 0x5
/* DD890 8017CE50 3C0D800D */  lui        $t5, %hi(gKirbyController + 0x2)
/* DD894 8017CE54 000A5880 */  sll        $t3, $t2, 2
/* DD898 8017CE58 002B0821 */  addu       $at, $at, $t3
/* DD89C 8017CE5C C43064D0 */  lwc1       $f16, %lo(D_800E64D0)($at)
/* DD8A0 8017CE60 46105032 */  c.eq.s     $f10, $f16
/* DD8A4 8017CE64 00000000 */  nop
/* DD8A8 8017CE68 45010003 */  bc1t       .L8017CE78_ovl3
/* DD8AC 8017CE6C 00000000 */   nop
/* DD8B0 8017CE70 1000000E */  b          .L8017CEAC_ovl3
/* DD8B4 8017CE74 ACEC0044 */   sw        $t4, %lo(D_80130044)($a3)
.L8017CE78_ovl3:
/* DD8B8 8017CE78 95AD6FEA */  lhu        $t5, %lo(gKirbyController + 0x2)($t5)
/* DD8BC 8017CE7C 31AF8000 */  andi       $t7, $t5, 0x8000
/* DD8C0 8017CE80 11E00003 */  beqz       $t7, .L8017CE90_ovl3
/* DD8C4 8017CE84 00000000 */   nop
/* DD8C8 8017CE88 10000008 */  b          .L8017CEAC_ovl3
/* DD8CC 8017CE8C ACE40044 */   sw        $a0, %lo(D_80130044)($a3)
.L8017CE90_ovl3:
/* DD8D0 8017CE90 0C02BC8C */  jal        func_800AF230
/* DD8D4 8017CE94 00000000 */   nop
/* DD8D8 8017CE98 3C078013 */  lui        $a3, %hi(gKirbyState)
/* DD8DC 8017CE9C 10400003 */  beqz       $v0, .L8017CEAC_ovl3
/* DD8E0 8017CEA0 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* DD8E4 8017CEA4 24180004 */  addiu      $t8, $zero, 0x4
/* DD8E8 8017CEA8 ACF80044 */  sw         $t8, 0x44($a3)
.L8017CEAC_ovl3:
/* DD8EC 8017CEAC 3C0E801A */  lui        $t6, %hi(D_80198834_ovl3)
/* DD8F0 8017CEB0 8DCE8834 */  lw         $t6, %lo(D_80198834_ovl3)($t6)
/* DD8F4 8017CEB4 51C00015 */  beql       $t6, $zero, .L8017CF0C_ovl3
/* DD8F8 8017CEB8 8CEC003C */   lw        $t4, 0x3C($a3)
/* DD8FC 8017CEBC 8CF900A0 */  lw         $t9, 0xA0($a3)
/* DD900 8017CEC0 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* DD904 8017CEC4 53200011 */  beql       $t9, $zero, .L8017CF0C_ovl3
/* DD908 8017CEC8 8CEC003C */   lw        $t4, 0x3C($a3)
/* DD90C 8017CECC 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
/* DD910 8017CED0 3C05800F */  lui        $a1, %hi(D_800EBBE0)
/* DD914 8017CED4 3C048019 */  lui        $a0, %hi(D_80192330_ovl3)
/* DD918 8017CED8 8D090000 */  lw         $t1, 0x0($t0)
/* DD91C 8017CEDC 24842330 */  addiu      $a0, $a0, %lo(D_80192330_ovl3)
/* DD920 8017CEE0 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* DD924 8017CEE4 00095080 */  sll        $t2, $t1, 2
/* DD928 8017CEE8 00AA2821 */  addu       $a1, $a1, $t2
/* DD92C 8017CEEC 0C047616 */  jal        func_8011D858
/* DD930 8017CEF0 8CA5BBE0 */   lw        $a1, %lo(D_800EBBE0)($a1)
/* DD934 8017CEF4 3C078013 */  lui        $a3, %hi(gKirbyState)
/* DD938 8017CEF8 10400003 */  beqz       $v0, .L8017CF08_ovl3
/* DD93C 8017CEFC 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* DD940 8017CF00 240B0001 */  addiu      $t3, $zero, 0x1
/* DD944 8017CF04 ACEB0044 */  sw         $t3, 0x44($a3)
.L8017CF08_ovl3:
/* DD948 8017CF08 8CEC003C */  lw         $t4, 0x3C($a3)
.L8017CF0C_ovl3:
/* DD94C 8017CF0C 8CED0044 */  lw         $t5, 0x44($a3)
/* DD950 8017CF10 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* DD954 8017CF14 518D000F */  beql       $t4, $t5, .L8017CF54_ovl3
/* DD958 8017CF18 8FBF0014 */   lw        $ra, 0x14($sp)
/* DD95C 8017CF1C 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* DD960 8017CF20 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* DD964 8017CF24 3C058017 */  lui        $a1, %hi(func_8016C510_ovl3)
/* DD968 8017CF28 8DF80000 */  lw         $t8, 0x0($t7)
/* DD96C 8017CF2C 24A5C510 */  addiu      $a1, $a1, %lo(func_8016C510_ovl3)
/* DD970 8017CF30 00187080 */  sll        $t6, $t8, 2
/* DD974 8017CF34 008E2021 */  addu       $a0, $a0, $t6
/* DD978 8017CF38 0C02C7B2 */  jal        assign_new_process_entry
/* DD97C 8017CF3C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* DD980 8017CF40 3C078013 */  lui        $a3, %hi(gKirbyState)
/* DD984 8017CF44 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* DD988 8017CF48 8CF90044 */  lw         $t9, 0x44($a3)
/* DD98C 8017CF4C ACF9003C */  sw         $t9, 0x3C($a3)
.L8017CF50_ovl3:
/* DD990 8017CF50 8FBF0014 */  lw         $ra, 0x14($sp)
.L8017CF54_ovl3:
/* DD994 8017CF54 27BD0018 */  addiu      $sp, $sp, 0x18
/* DD998 8017CF58 03E00008 */  jr         $ra
/* DD99C 8017CF5C 00000000 */   nop
