glabel func_801E86F4_ovl16
/* 21E9A4 801E86F4 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 21E9A8 801E86F8 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 21E9AC 801E86FC 8D0E0000 */  lw         $t6, 0x0($t0)
/* 21E9B0 801E8700 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 21E9B4 801E8704 AFBF0014 */  sw         $ra, 0x14($sp)
/* 21E9B8 801E8708 AFA40040 */  sw         $a0, 0x40($sp)
/* 21E9BC 801E870C 8DC20000 */  lw         $v0, 0x0($t6)
/* 21E9C0 801E8710 3C04800E */  lui        $a0, %hi(D_800E7880)
/* 21E9C4 801E8714 3C0F800E */  lui        $t7, %hi(D_800E1B50)
/* 21E9C8 801E8718 00021880 */  sll        $v1, $v0, 2
glabel func_801E871C_ovl10
/* 21E9CC 801E871C 00822021 */  addu       $a0, $a0, $v0
/* 21E9D0 801E8720 90847880 */  lbu        $a0, %lo(D_800E7880)($a0)
/* 21E9D4 801E8724 01E37821 */  addu       $t7, $t7, $v1
/* 21E9D8 801E8728 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
/* 21E9DC 801E872C 24010001 */  addiu      $at, $zero, 0x1
/* 21E9E0 801E8730 10800005 */  beqz       $a0, .L801E8748_ovl16
.L801E8734_ovl9:
/* 21E9E4 801E8734 AFAF003C */   sw        $t7, 0x3C($sp)
/* 21E9E8 801E8738 10810072 */  beq        $a0, $at, .L801E8904_ovl16
/* 21E9EC 801E873C 3C07800E */   lui       $a3, %hi(D_800DFBD0)
/* 21E9F0 801E8740 100000DD */  b          .L801E8AB8_ovl16
/* 21E9F4 801E8744 24E7FBD0 */   addiu     $a3, $a3, %lo(D_800DFBD0)
.L801E8748_ovl16:
/* 21E9F8 801E8748 3C04801D */  lui        $a0, %hi(func_801D7D54_ovl9 + 0x4)
/* 21E9FC 801E874C 0C066220 */  jal        func_80198880_ovl7
/* 21EA00 801E8750 24847D58 */   addiu     $a0, $a0, %lo(func_801D7D54_ovl9 + 0x4)
/* 21EA04 801E8754 3C088005 */  lui        $t0, %hi(D_8004A7C4)
.L801E8758_ovl9:
/* 21EA08 801E8758 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 21EA0C 801E875C 8D180000 */  lw         $t8, 0x0($t0)
/* 21EA10 801E8760 3C07800E */  lui        $a3, %hi(D_800DFBD0)
/* 21EA14 801E8764 24E7FBD0 */  addiu      $a3, $a3, %lo(D_800DFBD0)
/* 21EA18 801E8768 8F190000 */  lw         $t9, 0x0($t8)
/* 21EA1C 801E876C 3C01801F */  lui        $at, %hi(D_801F00A0_ovl16)
/* 21EA20 801E8770 C42200A0 */  lwc1       $f2, %lo(D_801F00A0_ovl16)($at)
/* 21EA24 801E8774 00194880 */  sll        $t1, $t9, 2
/* 21EA28 801E8778 00E95021 */  addu       $t2, $a3, $t1
/* 21EA2C 801E877C 8D4B0000 */  lw         $t3, 0x0($t2)
/* 21EA30 801E8780 3C01801F */  lui        $at, %hi(D_801F00A4_ovl16)
/* 21EA34 801E8784 C42600A4 */  lwc1       $f6, %lo(D_801F00A4_ovl16)($at)
/* 21EA38 801E8788 8D620004 */  lw         $v0, 0x4($t3)
/* 21EA3C 801E878C 3C01801F */  lui        $at, %hi(D_801F00A8_ovl16)
/* 21EA40 801E8790 C4440030 */  lwc1       $f4, 0x30($v0)
/* 21EA44 801E8794 46062200 */  add.s      $f8, $f4, $f6
/* 21EA48 801E8798 E4480030 */  swc1       $f8, 0x30($v0)
/* 21EA4C 801E879C 8D0C0000 */  lw         $t4, 0x0($t0)
/* 21EA50 801E87A0 8D8D0000 */  lw         $t5, 0x0($t4)
/* 21EA54 801E87A4 000D7080 */  sll        $t6, $t5, 2
/* 21EA58 801E87A8 00EE7821 */  addu       $t7, $a3, $t6
/* 21EA5C 801E87AC 8DF80000 */  lw         $t8, 0x0($t7)
/* 21EA60 801E87B0 8F020004 */  lw         $v0, 0x4($t8)
/* 21EA64 801E87B4 C4400030 */  lwc1       $f0, 0x30($v0)
/* 21EA68 801E87B8 4600103C */  c.lt.s     $f2, $f0
/* 21EA6C 801E87BC 00000000 */  nop
glabel func_801E87C0_ovl9
/* 21EA70 801E87C0 4500000E */  bc1f       .L801E87FC_ovl16
/* 21EA74 801E87C4 00000000 */   nop
/* 21EA78 801E87C8 46020281 */  sub.s      $f10, $f0, $f2
.L801E87CC_ovl16:
/* 21EA7C 801E87CC E44A0030 */  swc1       $f10, 0x30($v0)
/* 21EA80 801E87D0 8D190000 */  lw         $t9, 0x0($t0)
/* 21EA84 801E87D4 8F290000 */  lw         $t1, 0x0($t9)
/* 21EA88 801E87D8 00095080 */  sll        $t2, $t1, 2
/* 21EA8C 801E87DC 00EA5821 */  addu       $t3, $a3, $t2
/* 21EA90 801E87E0 8D6C0000 */  lw         $t4, 0x0($t3)
/* 21EA94 801E87E4 8D820004 */  lw         $v0, 0x4($t4)
/* 21EA98 801E87E8 C4400030 */  lwc1       $f0, 0x30($v0)
/* 21EA9C 801E87EC 4600103C */  c.lt.s     $f2, $f0
/* 21EAA0 801E87F0 00000000 */  nop
/* 21EAA4 801E87F4 4503FFF5 */  bc1tl      .L801E87CC_ovl16
/* 21EAA8 801E87F8 46020281 */   sub.s     $f10, $f0, $f2
.L801E87FC_ovl16:
/* 21EAAC 801E87FC C42C00A8 */  lwc1       $f12, %lo(D_801F00A8_ovl16)($at)
/* 21EAB0 801E8800 3C01801F */  lui        $at, %hi(D_801F00AC_ovl16)
/* 21EAB4 801E8804 460C003C */  c.lt.s     $f0, $f12
/* 21EAB8 801E8808 00000000 */  nop
/* 21EABC 801E880C 4502000F */  bc1fl      .L801E884C_ovl16
/* 21EAC0 801E8810 C4520038 */   lwc1      $f18, 0x38($v0)
/* 21EAC4 801E8814 46020400 */  add.s      $f16, $f0, $f2
.L801E8818_ovl16:
/* 21EAC8 801E8818 E4500030 */  swc1       $f16, 0x30($v0)
/* 21EACC 801E881C 8D0D0000 */  lw         $t5, 0x0($t0)
/* 21EAD0 801E8820 8DAE0000 */  lw         $t6, 0x0($t5)
/* 21EAD4 801E8824 000E7880 */  sll        $t7, $t6, 2
/* 21EAD8 801E8828 00EFC021 */  addu       $t8, $a3, $t7
/* 21EADC 801E882C 8F190000 */  lw         $t9, 0x0($t8)
/* 21EAE0 801E8830 8F220004 */  lw         $v0, 0x4($t9)
/* 21EAE4 801E8834 C4400030 */  lwc1       $f0, 0x30($v0)
/* 21EAE8 801E8838 460C003C */  c.lt.s     $f0, $f12
/* 21EAEC 801E883C 00000000 */  nop
/* 21EAF0 801E8840 4503FFF5 */  bc1tl      .L801E8818_ovl16
/* 21EAF4 801E8844 46020400 */   add.s     $f16, $f0, $f2
/* 21EAF8 801E8848 C4520038 */  lwc1       $f18, 0x38($v0)
.L801E884C_ovl16:
/* 21EAFC 801E884C C42400AC */  lwc1       $f4, %lo(D_801F00AC_ovl16)($at)
.L801E8850_ovl9:
/* 21EB00 801E8850 46049180 */  add.s      $f6, $f18, $f4
.L801E8854_ovl9:
/* 21EB04 801E8854 E4460038 */  swc1       $f6, 0x38($v0)
/* 21EB08 801E8858 8D090000 */  lw         $t1, 0x0($t0)
.L801E885C_ovl10:
/* 21EB0C 801E885C 8D230000 */  lw         $v1, 0x0($t1)
glabel func_801E8860_ovl9
/* 21EB10 801E8860 00031880 */  sll        $v1, $v1, 2
/* 21EB14 801E8864 00E35021 */  addu       $t2, $a3, $v1
/* 21EB18 801E8868 8D4B0000 */  lw         $t3, 0x0($t2)
/* 21EB1C 801E886C 8D620004 */  lw         $v0, 0x4($t3)
/* 21EB20 801E8870 C4400038 */  lwc1       $f0, 0x38($v0)
/* 21EB24 801E8874 4600103C */  c.lt.s     $f2, $f0
/* 21EB28 801E8878 00000000 */  nop
/* 21EB2C 801E887C 4502000F */  bc1fl      .L801E88BC_ovl16
/* 21EB30 801E8880 460C003C */   c.lt.s    $f0, $f12
/* 21EB34 801E8884 46020201 */  sub.s      $f8, $f0, $f2
.L801E8888_ovl16:
/* 21EB38 801E8888 E4480038 */  swc1       $f8, 0x38($v0)
/* 21EB3C 801E888C 8D0C0000 */  lw         $t4, 0x0($t0)
/* 21EB40 801E8890 8D830000 */  lw         $v1, 0x0($t4)
/* 21EB44 801E8894 00031880 */  sll        $v1, $v1, 2
/* 21EB48 801E8898 00E36821 */  addu       $t5, $a3, $v1
/* 21EB4C 801E889C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 21EB50 801E88A0 8DC20004 */  lw         $v0, 0x4($t6)
/* 21EB54 801E88A4 C4400038 */  lwc1       $f0, 0x38($v0)
/* 21EB58 801E88A8 4600103C */  c.lt.s     $f2, $f0
/* 21EB5C 801E88AC 00000000 */  nop
/* 21EB60 801E88B0 4503FFF5 */  bc1tl      .L801E8888_ovl16
/* 21EB64 801E88B4 46020201 */   sub.s     $f8, $f0, $f2
/* 21EB68 801E88B8 460C003C */  c.lt.s     $f0, $f12
.L801E88BC_ovl16:
/* 21EB6C 801E88BC 00000000 */  nop
/* 21EB70 801E88C0 4500007D */  bc1f       .L801E8AB8_ovl16
/* 21EB74 801E88C4 00000000 */   nop
/* 21EB78 801E88C8 46020280 */  add.s      $f10, $f0, $f2
.L801E88CC_ovl16:
/* 21EB7C 801E88CC E44A0038 */  swc1       $f10, 0x38($v0)
/* 21EB80 801E88D0 8D0F0000 */  lw         $t7, 0x0($t0)
.L801E88D4_ovl10:
/* 21EB84 801E88D4 8DE30000 */  lw         $v1, 0x0($t7)
.L801E88D8_ovl10:
/* 21EB88 801E88D8 00031880 */  sll        $v1, $v1, 2
/* 21EB8C 801E88DC 00E3C021 */  addu       $t8, $a3, $v1
/* 21EB90 801E88E0 8F190000 */  lw         $t9, 0x0($t8)
glabel func_801E88E4_ovl10
/* 21EB94 801E88E4 8F220004 */  lw         $v0, 0x4($t9)
/* 21EB98 801E88E8 C4400038 */  lwc1       $f0, 0x38($v0)
/* 21EB9C 801E88EC 460C003C */  c.lt.s     $f0, $f12
/* 21EBA0 801E88F0 00000000 */  nop
/* 21EBA4 801E88F4 4503FFF5 */  bc1tl      .L801E88CC_ovl16
/* 21EBA8 801E88F8 46020280 */   add.s     $f10, $f0, $f2
/* 21EBAC 801E88FC 1000006E */  b          .L801E8AB8_ovl16
/* 21EBB0 801E8900 00000000 */   nop
.L801E8904_ovl16:
/* 21EBB4 801E8904 3C04801D */  lui        $a0, %hi(func_801D7D54_ovl9 + 0x48)
/* 21EBB8 801E8908 0C066220 */  jal        func_80198880_ovl7
/* 21EBBC 801E890C 24847D9C */   addiu     $a0, $a0, %lo(func_801D7D54_ovl9 + 0x48)
/* 21EBC0 801E8910 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 21EBC4 801E8914 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 21EBC8 801E8918 8D090000 */  lw         $t1, 0x0($t0)
/* 21EBCC 801E891C 3C07800E */  lui        $a3, %hi(D_800DFBD0)
/* 21EBD0 801E8920 24E7FBD0 */  addiu      $a3, $a3, %lo(D_800DFBD0)
/* 21EBD4 801E8924 8D2A0000 */  lw         $t2, 0x0($t1)
/* 21EBD8 801E8928 3C01801F */  lui        $at, %hi(D_801F00B0_ovl16)
/* 21EBDC 801E892C C42200B0 */  lwc1       $f2, %lo(D_801F00B0_ovl16)($at)
/* 21EBE0 801E8930 000A5880 */  sll        $t3, $t2, 2
/* 21EBE4 801E8934 00EB6021 */  addu       $t4, $a3, $t3
/* 21EBE8 801E8938 8D8D0000 */  lw         $t5, 0x0($t4)
.L801E893C_ovl9:
/* 21EBEC 801E893C 3C01801F */  lui        $at, %hi(D_801F00B4_ovl16)
/* 21EBF0 801E8940 C43200B4 */  lwc1       $f18, %lo(D_801F00B4_ovl16)($at)
/* 21EBF4 801E8944 8DA20004 */  lw         $v0, 0x4($t5)
/* 21EBF8 801E8948 3C01801F */  lui        $at, %hi(D_801F00B8_ovl16)
/* 21EBFC 801E894C C4500030 */  lwc1       $f16, 0x30($v0)
.L801E8950_ovl10:
/* 21EC00 801E8950 46128100 */  add.s      $f4, $f16, $f18
/* 21EC04 801E8954 E4440030 */  swc1       $f4, 0x30($v0)
/* 21EC08 801E8958 8D0E0000 */  lw         $t6, 0x0($t0)
/* 21EC0C 801E895C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 21EC10 801E8960 000FC080 */  sll        $t8, $t7, 2
/* 21EC14 801E8964 00F8C821 */  addu       $t9, $a3, $t8
/* 21EC18 801E8968 8F290000 */  lw         $t1, 0x0($t9)
.L801E896C_ovl9:
/* 21EC1C 801E896C 8D220004 */  lw         $v0, 0x4($t1)
/* 21EC20 801E8970 C4400030 */  lwc1       $f0, 0x30($v0)
/* 21EC24 801E8974 4600103C */  c.lt.s     $f2, $f0
/* 21EC28 801E8978 00000000 */  nop
/* 21EC2C 801E897C 4500000E */  bc1f       func_801E89B8_ovl16
.L801E8980_ovl10:
/* 21EC30 801E8980 00000000 */   nop
/* 21EC34 801E8984 46020181 */  sub.s      $f6, $f0, $f2
glabel func_801E8988_ovl16
/* 21EC38 801E8988 E4460030 */  swc1       $f6, 0x30($v0)
/* 21EC3C 801E898C 8D0A0000 */  lw         $t2, 0x0($t0)
/* 21EC40 801E8990 8D4B0000 */  lw         $t3, 0x0($t2)
/* 21EC44 801E8994 000B6080 */  sll        $t4, $t3, 2
/* 21EC48 801E8998 00EC6821 */  addu       $t5, $a3, $t4
/* 21EC4C 801E899C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 21EC50 801E89A0 8DC20004 */  lw         $v0, 0x4($t6)
/* 21EC54 801E89A4 C4400030 */  lwc1       $f0, 0x30($v0)
/* 21EC58 801E89A8 4600103C */  c.lt.s     $f2, $f0
/* 21EC5C 801E89AC 00000000 */  nop
/* 21EC60 801E89B0 4503FFF5 */  bc1tl      func_801E8988_ovl16
/* 21EC64 801E89B4 46020181 */   sub.s     $f6, $f0, $f2
glabel func_801E89B8_ovl16
/* 21EC68 801E89B8 C42C00B8 */  lwc1       $f12, %lo(D_801F00B8_ovl16)($at)
/* 21EC6C 801E89BC 3C01801F */  lui        $at, %hi(D_801F00BC_ovl16)
/* 21EC70 801E89C0 460C003C */  c.lt.s     $f0, $f12
/* 21EC74 801E89C4 00000000 */  nop
/* 21EC78 801E89C8 4502000F */  bc1fl      .L801E8A08_ovl16
/* 21EC7C 801E89CC C44A0038 */   lwc1      $f10, 0x38($v0)
glabel func_801E89D0_ovl10
/* 21EC80 801E89D0 46020200 */  add.s      $f8, $f0, $f2
.L801E89D4_ovl16:
/* 21EC84 801E89D4 E4480030 */  swc1       $f8, 0x30($v0)
/* 21EC88 801E89D8 8D0F0000 */  lw         $t7, 0x0($t0)
/* 21EC8C 801E89DC 8DF80000 */  lw         $t8, 0x0($t7)
/* 21EC90 801E89E0 0018C880 */  sll        $t9, $t8, 2
/* 21EC94 801E89E4 00F94821 */  addu       $t1, $a3, $t9
/* 21EC98 801E89E8 8D2A0000 */  lw         $t2, 0x0($t1)
.L801E89EC_ovl9:
/* 21EC9C 801E89EC 8D420004 */  lw         $v0, 0x4($t2)
/* 21ECA0 801E89F0 C4400030 */  lwc1       $f0, 0x30($v0)
/* 21ECA4 801E89F4 460C003C */  c.lt.s     $f0, $f12
/* 21ECA8 801E89F8 00000000 */  nop
/* 21ECAC 801E89FC 4503FFF5 */  bc1tl      .L801E89D4_ovl16
/* 21ECB0 801E8A00 46020200 */   add.s     $f8, $f0, $f2
/* 21ECB4 801E8A04 C44A0038 */  lwc1       $f10, 0x38($v0)
.L801E8A08_ovl16:
/* 21ECB8 801E8A08 C43000BC */  lwc1       $f16, %lo(D_801F00BC_ovl16)($at)
/* 21ECBC 801E8A0C 46105480 */  add.s      $f18, $f10, $f16
/* 21ECC0 801E8A10 E4520038 */  swc1       $f18, 0x38($v0)
/* 21ECC4 801E8A14 8D0B0000 */  lw         $t3, 0x0($t0)
/* 21ECC8 801E8A18 8D630000 */  lw         $v1, 0x0($t3)
/* 21ECCC 801E8A1C 00031880 */  sll        $v1, $v1, 2
/* 21ECD0 801E8A20 00E36021 */  addu       $t4, $a3, $v1
/* 21ECD4 801E8A24 8D8D0000 */  lw         $t5, 0x0($t4)
/* 21ECD8 801E8A28 8DA20004 */  lw         $v0, 0x4($t5)
/* 21ECDC 801E8A2C C4400038 */  lwc1       $f0, 0x38($v0)
/* 21ECE0 801E8A30 4600103C */  c.lt.s     $f2, $f0
/* 21ECE4 801E8A34 00000000 */  nop
glabel func_801E8A38_ovl9
/* 21ECE8 801E8A38 4502000F */  bc1fl      .L801E8A78_ovl16
/* 21ECEC 801E8A3C 460C003C */   c.lt.s    $f0, $f12
/* 21ECF0 801E8A40 46020101 */  sub.s      $f4, $f0, $f2
.L801E8A44_ovl16:
/* 21ECF4 801E8A44 E4440038 */  swc1       $f4, 0x38($v0)
/* 21ECF8 801E8A48 8D0E0000 */  lw         $t6, 0x0($t0)
/* 21ECFC 801E8A4C 8DC30000 */  lw         $v1, 0x0($t6)
/* 21ED00 801E8A50 00031880 */  sll        $v1, $v1, 2
/* 21ED04 801E8A54 00E37821 */  addu       $t7, $a3, $v1
/* 21ED08 801E8A58 8DF80000 */  lw         $t8, 0x0($t7)
/* 21ED0C 801E8A5C 8F020004 */  lw         $v0, 0x4($t8)
/* 21ED10 801E8A60 C4400038 */  lwc1       $f0, 0x38($v0)
/* 21ED14 801E8A64 4600103C */  c.lt.s     $f2, $f0
/* 21ED18 801E8A68 00000000 */  nop
/* 21ED1C 801E8A6C 4503FFF5 */  bc1tl      .L801E8A44_ovl16
/* 21ED20 801E8A70 46020101 */   sub.s     $f4, $f0, $f2
/* 21ED24 801E8A74 460C003C */  c.lt.s     $f0, $f12
.L801E8A78_ovl16:
/* 21ED28 801E8A78 00000000 */  nop
/* 21ED2C 801E8A7C 4500000E */  bc1f       .L801E8AB8_ovl16
glabel func_801E8A80_ovl9
/* 21ED30 801E8A80 00000000 */   nop
/* 21ED34 801E8A84 46020180 */  add.s      $f6, $f0, $f2
.L801E8A88_ovl16:
/* 21ED38 801E8A88 E4460038 */  swc1       $f6, 0x38($v0)
/* 21ED3C 801E8A8C 8D190000 */  lw         $t9, 0x0($t0)
/* 21ED40 801E8A90 8F230000 */  lw         $v1, 0x0($t9)
/* 21ED44 801E8A94 00031880 */  sll        $v1, $v1, 2
/* 21ED48 801E8A98 00E34821 */  addu       $t1, $a3, $v1
/* 21ED4C 801E8A9C 8D2A0000 */  lw         $t2, 0x0($t1)
/* 21ED50 801E8AA0 8D420004 */  lw         $v0, 0x4($t2)
/* 21ED54 801E8AA4 C4400038 */  lwc1       $f0, 0x38($v0)
/* 21ED58 801E8AA8 460C003C */  c.lt.s     $f0, $f12
/* 21ED5C 801E8AAC 00000000 */  nop
/* 21ED60 801E8AB0 4503FFF5 */  bc1tl      .L801E8A88_ovl16
/* 21ED64 801E8AB4 46020180 */   add.s     $f6, $f0, $f2
.L801E8AB8_ovl16:
/* 21ED68 801E8AB8 3C0E800F */  lui        $t6, %hi(D_800E9C60)
/* 21ED6C 801E8ABC 01C37021 */  addu       $t6, $t6, $v1
/* 21ED70 801E8AC0 3C06800E */  lui        $a2, %hi(D_800E0D50)
/* 21ED74 801E8AC4 8DCE9C60 */  lw         $t6, %lo(D_800E9C60)($t6)
/* 21ED78 801E8AC8 00C33021 */  addu       $a2, $a2, $v1
/* 21ED7C 801E8ACC 8CC60D50 */  lw         $a2, %lo(D_800E0D50)($a2)
/* 21ED80 801E8AD0 3C18801F */  lui        $t8, %hi(func_801EFC58_ovl10 + 0x14)
/* 21ED84 801E8AD4 000E7880 */  sll        $t7, $t6, 2
/* 21ED88 801E8AD8 030FC021 */  addu       $t8, $t8, $t7
/* 21ED8C 801E8ADC 00065880 */  sll        $t3, $a2, 2
/* 21ED90 801E8AE0 8F18FC6C */  lw         $t8, %lo(func_801EFC58_ovl10 + 0x14)($t8)
/* 21ED94 801E8AE4 00EB6021 */  addu       $t4, $a3, $t3
/* 21ED98 801E8AE8 8D8D0000 */  lw         $t5, 0x0($t4)
/* 21ED9C 801E8AEC 0018C880 */  sll        $t9, $t8, 2
/* 21EDA0 801E8AF0 27A40030 */  addiu      $a0, $sp, 0x30
/* 21EDA4 801E8AF4 01B94821 */  addu       $t1, $t5, $t9
glabel func_801E8AF8_ovl10
/* 21EDA8 801E8AF8 0C02C8D0 */  jal        func_800B2340
/* 21EDAC 801E8AFC 8D250000 */   lw        $a1, 0x0($t1)
/* 21EDB0 801E8B00 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 21EDB4 801E8B04 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 21EDB8 801E8B08 8D040000 */  lw         $a0, 0x0($t0)
/* 21EDBC 801E8B0C C7A80030 */  lwc1       $f8, 0x30($sp)
/* 21EDC0 801E8B10 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 21EDC4 801E8B14 8C8A0000 */  lw         $t2, 0x0($a0)
/* 21EDC8 801E8B18 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* 21EDCC 801E8B1C C7B00038 */  lwc1       $f16, 0x38($sp)
/* 21EDD0 801E8B20 000A5880 */  sll        $t3, $t2, 2
/* 21EDD4 801E8B24 002B0821 */  addu       $at, $at, $t3
/* 21EDD8 801E8B28 E42825D0 */  swc1       $f8, %lo(gEntitiesNextPosXArray)($at)
/* 21EDDC 801E8B2C 8C8C0000 */  lw         $t4, 0x0($a0)
/* 21EDE0 801E8B30 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 21EDE4 801E8B34 3C09800F */  lui        $t1, %hi(D_800E98E0)
/* 21EDE8 801E8B38 000C7080 */  sll        $t6, $t4, 2
/* 21EDEC 801E8B3C 002E0821 */  addu       $at, $at, $t6
/* 21EDF0 801E8B40 E42A2790 */  swc1       $f10, %lo(gEntitiesNextPosYArray)($at)
.L801E8B44_ovl10:
/* 21EDF4 801E8B44 8C8F0000 */  lw         $t7, 0x0($a0)
/* 21EDF8 801E8B48 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 21EDFC 801E8B4C 000FC080 */  sll        $t8, $t7, 2
/* 21EE00 801E8B50 00380821 */  addu       $at, $at, $t8
/* 21EE04 801E8B54 E4302950 */  swc1       $f16, %lo(gEntitiesNextPosZArray)($at)
/* 21EE08 801E8B58 8C8D0000 */  lw         $t5, 0x0($a0)
/* 21EE0C 801E8B5C 000DC880 */  sll        $t9, $t5, 2
/* 21EE10 801E8B60 01394821 */  addu       $t1, $t1, $t9
/* 21EE14 801E8B64 8D2998E0 */  lw         $t1, %lo(D_800E98E0)($t1)
/* 21EE18 801E8B68 5120004D */  beql       $t1, $zero, .L801E8CA0_ovl16
/* 21EE1C 801E8B6C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 21EE20 801E8B70 0C07BC69 */  jal        func_801EF1A4_ovl16
.L801E8B74_ovl10:
/* 21EE24 801E8B74 2404000A */   addiu     $a0, $zero, 0xA
/* 21EE28 801E8B78 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 21EE2C 801E8B7C 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 21EE30 801E8B80 8D0B0000 */  lw         $t3, 0x0($t0)
.L801E8B84_ovl9:
/* 21EE34 801E8B84 3C0F800E */  lui        $t7, %hi(D_800E1B50)
/* 21EE38 801E8B88 3C0A801E */  lui        $t2, %hi(func_801DA28C_ovl9 + 0x24)
/* 21EE3C 801E8B8C 8D6C0000 */  lw         $t4, 0x0($t3)
/* 21EE40 801E8B90 254AA2B0 */  addiu      $t2, $t2, %lo(func_801DA28C_ovl9 + 0x24)
/* 21EE44 801E8B94 000C7080 */  sll        $t6, $t4, 2
/* 21EE48 801E8B98 01EE7821 */  addu       $t7, $t7, $t6
.L801E8B9C_ovl10:
/* 21EE4C 801E8B9C 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
/* 21EE50 801E8BA0 0C0680ED */  jal        func_801A03B4_ovl7
/* 21EE54 801E8BA4 ADEA008C */   sw        $t2, 0x8C($t7)
glabel func_801E8BA8_ovl10
/* 21EE58 801E8BA8 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 21EE5C 801E8BAC 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
.L801E8BB0_ovl9:
/* 21EE60 801E8BB0 8D040000 */  lw         $a0, 0x0($t0)
.L801E8BB4_ovl9:
/* 21EE64 801E8BB4 3C18800F */  lui        $t8, %hi(D_800E8920)
/* 21EE68 801E8BB8 240D0001 */  addiu      $t5, $zero, 0x1
/* 21EE6C 801E8BBC 8C830000 */  lw         $v1, 0x0($a0)
/* 21EE70 801E8BC0 3C01800D */  lui        $at, %hi(D_800D7098 + 0x38)
/* 21EE74 801E8BC4 3C19800F */  lui        $t9, %hi(D_800E83E0)
/* 21EE78 801E8BC8 00031880 */  sll        $v1, $v1, 2
/* 21EE7C 801E8BCC 0303C021 */  addu       $t8, $t8, $v1
/* 21EE80 801E8BD0 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
/* 21EE84 801E8BD4 53000005 */  beql       $t8, $zero, .L801E8BEC_ovl16
/* 21EE88 801E8BD8 0323C821 */   addu      $t9, $t9, $v1
/* 21EE8C 801E8BDC AC2D70D0 */  sw         $t5, %lo(D_800D7098 + 0x38)($at)
/* 21EE90 801E8BE0 8C830000 */  lw         $v1, 0x0($a0)
/* 21EE94 801E8BE4 00031880 */  sll        $v1, $v1, 2
/* 21EE98 801E8BE8 0323C821 */  addu       $t9, $t9, $v1
.L801E8BEC_ovl16:
/* 21EE9C 801E8BEC 8F3983E0 */  lw         $t9, %lo(D_800E83E0)($t9)
/* 21EEA0 801E8BF0 24010001 */  addiu      $at, $zero, 0x1
/* 21EEA4 801E8BF4 8FA9003C */  lw         $t1, 0x3C($sp)
/* 21EEA8 801E8BF8 57210029 */  bnel       $t9, $at, .L801E8CA0_ovl16
/* 21EEAC 801E8BFC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 21EEB0 801E8C00 8124003A */  lb         $a0, 0x3A($t1)
/* 21EEB4 801E8C04 2401FFFF */  addiu      $at, $zero, -0x1
/* 21EEB8 801E8C08 50810025 */  beql       $a0, $at, .L801E8CA0_ovl16
/* 21EEBC 801E8C0C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 21EEC0 801E8C10 0C068091 */  jal        func_801A0244_ovl7
/* 21EEC4 801E8C14 00000000 */   nop
/* 21EEC8 801E8C18 2401FFFF */  addiu      $at, $zero, -0x1
/* 21EECC 801E8C1C 1041001F */  beq        $v0, $at, .L801E8C9C_ovl16
/* 21EED0 801E8C20 00402025 */   or        $a0, $v0, $zero
/* 21EED4 801E8C24 8FAB003C */  lw         $t3, 0x3C($sp)
/* 21EED8 801E8C28 0C07BCEC */  jal        func_801EF3B0_ovl16
/* 21EEDC 801E8C2C 8165003A */   lb        $a1, 0x3A($t3)
/* 21EEE0 801E8C30 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 21EEE4 801E8C34 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 21EEE8 801E8C38 8D0E0000 */  lw         $t6, 0x0($t0)
/* 21EEEC 801E8C3C 3C01800F */  lui        $at, %hi(D_800E83E0)
/* 21EEF0 801E8C40 240C0012 */  addiu      $t4, $zero, 0x12
/* 21EEF4 801E8C44 8DCA0000 */  lw         $t2, 0x0($t6)
/* 21EEF8 801E8C48 240400F4 */  addiu      $a0, $zero, 0xF4
/* 21EEFC 801E8C4C 000A7880 */  sll        $t7, $t2, 2
/* 21EF00 801E8C50 002F0821 */  addu       $at, $at, $t7
/* 21EF04 801E8C54 0C029D9E */  jal        play_sound
/* 21EF08 801E8C58 AC2C83E0 */   sw        $t4, %lo(D_800E83E0)($at)
/* 21EF0C 801E8C5C 8FB8003C */  lw         $t8, 0x3C($sp)
/* 21EF10 801E8C60 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 21EF14 801E8C64 240D0001 */  addiu      $t5, $zero, 0x1
glabel func_801E8C68_ovl10
/* 21EF18 801E8C68 AF000094 */  sw         $zero, 0x94($t8)
/* 21EF1C 801E8C6C 8FB9003C */  lw         $t9, 0x3C($sp)
/* 21EF20 801E8C70 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 21EF24 801E8C74 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 21EF28 801E8C78 A32D0040 */  sb         $t5, 0x40($t9)
glabel func_801E8C7C_ovl9
/* 21EF2C 801E8C7C 8D090000 */  lw         $t1, 0x0($t0)
/* 21EF30 801E8C80 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
/* 21EF34 801E8C84 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
/* 21EF38 801E8C88 8D2B0000 */  lw         $t3, 0x0($t1)
/* 21EF3C 801E8C8C 000B7080 */  sll        $t6, $t3, 2
/* 21EF40 801E8C90 008E2021 */  addu       $a0, $a0, $t6
/* 21EF44 801E8C94 0C02C7B2 */  jal        assign_new_process_entry
/* 21EF48 801E8C98 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E8C9C_ovl16:
/* 21EF4C 801E8C9C 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E8CA0_ovl16:
/* 21EF50 801E8CA0 27BD0040 */  addiu      $sp, $sp, 0x40
/* 21EF54 801E8CA4 03E00008 */  jr         $ra
/* 21EF58 801E8CA8 00000000 */   nop
