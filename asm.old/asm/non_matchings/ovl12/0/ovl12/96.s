glabel func_801DFA7C_ovl12 # 96
/* 00487C 801DFA7C 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 004880 801DFA80 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 004884 801DFA84 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 004888 801DFA88 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00488C 801DFA8C 8DC30000 */  lw          $v1, 0x0($t6)
/* 004890 801DFA90 3C02800E */  lui         $v0, %hi(D_800E1B50)
/* 004894 801DFA94 3C04800E */  lui         $a0, %hi(D_800DE350)
/* 004898 801DFA98 00031880 */  sll         $v1, $v1, 2
/* 00489C 801DFA9C 00431021 */  addu        $v0, $v0, $v1
/* 0048A0 801DFAA0 00832021 */  addu        $a0, $a0, $v1
/* 0048A4 801DFAA4 8C421B50 */  lw          $v0, %lo(D_800E1B50)($v0)
/* 0048A8 801DFAA8 8C84E350 */  lw          $a0, %lo(D_800DE350)($a0)
/* 0048AC 801DFAAC 8C580070 */  lw          $t8, 0x70($v0)
/* 0048B0 801DFAB0 8C8F003C */  lw          $t7, 0x3C($a0)
/* 0048B4 801DFAB4 2719FFFF */  addiu       $t9, $t8, -0x1
/* 0048B8 801DFAB8 8DE50010 */  lw          $a1, 0x10($t7)
/* 0048BC 801DFABC 17200019 */  bnez        $t9, .L801DFB24
/* 0048C0 801DFAC0 AC590070 */   sw         $t9, 0x70($v0)
/* 0048C4 801DFAC4 8C43006C */  lw          $v1, 0x6C($v0)
/* 0048C8 801DFAC8 24090002 */  addiu       $t1, $zero, 0x2
/* 0048CC 801DFACC AC490070 */  sw          $t1, 0x70($v0)
/* 0048D0 801DFAD0 24630001 */  addiu       $v1, $v1, 0x1
/* 0048D4 801DFAD4 2C610003 */  sltiu       $at, $v1, 0x3
/* 0048D8 801DFAD8 14200003 */  bnez        $at, .L801DFAE8
/* 0048DC 801DFADC 00A02025 */   move       $a0, $a1
/* 0048E0 801DFAE0 10000002 */  b           .L801DFAEC
/* 0048E4 801DFAE4 AC40006C */   sw         $zero, 0x6C($v0)
.L801DFAE8:
/* 0048E8 801DFAE8 AC43006C */  sw          $v1, 0x6C($v0)
.L801DFAEC:
/* 0048EC 801DFAEC 0C077E44 */  jal         func_801DF910_ovl12
/* 0048F0 801DFAF0 AFA2001C */   sw         $v0, 0x1C($sp)
/* 0048F4 801DFAF4 8FA2001C */  lw          $v0, 0x1C($sp)
/* 0048F8 801DFAF8 3C0D8005 */  lui         $t5, %hi(D_8004A7C4)
/* 0048FC 801DFAFC 8C4A0068 */  lw          $t2, 0x68($v0)
/* 004900 801DFB00 254BFFFF */  addiu       $t3, $t2, -0x1
/* 004904 801DFB04 15600007 */  bnez        $t3, .L801DFB24
/* 004908 801DFB08 AC4B0068 */   sw         $t3, 0x68($v0)
/* 00490C 801DFB0C 8DADA7C4 */  lw          $t5, %lo(D_8004A7C4)($t5)
/* 004910 801DFB10 3C01800F */  lui         $at, %hi(D_800EA1A0)
/* 004914 801DFB14 8DAE0000 */  lw          $t6, 0x0($t5)
/* 004918 801DFB18 000E7880 */  sll         $t7, $t6, 2
/* 00491C 801DFB1C 002F0821 */  addu        $at, $at, $t7
/* 004920 801DFB20 AC20A1A0 */  sw          $zero, %lo(D_800EA1A0)($at)
.L801DFB24:
/* 004924 801DFB24 8FBF0014 */  lw          $ra, 0x14($sp)
/* 004928 801DFB28 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00492C 801DFB2C 03E00008 */  jr          $ra
/* 004930 801DFB30 00000000 */   nop
.type func_801DFA7C_ovl12, @function
.size func_801DFA7C_ovl12, . - func_801DFA7C_ovl12
