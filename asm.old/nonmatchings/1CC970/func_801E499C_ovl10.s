glabel func_801E499C_ovl10
/* 1D570C 801E499C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1D5710 801E49A0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
.L801E49A4_ovl17:
/* 1D5714 801E49A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
.L801E49A8_ovl9:
/* 1D5718 801E49A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D571C 801E49AC 8C620000 */  lw         $v0, 0x0($v1)
/* 1D5720 801E49B0 3C0E800E */  lui        $t6, %hi(D_800DD8D0)
/* 1D5724 801E49B4 3C18800F */  lui        $t8, %hi(D_800EC4A0)
glabel func_801E49B8_ovl17
/* 1D5728 801E49B8 00021080 */  sll        $v0, $v0, 2
.L801E49BC_ovl15:
/* 1D572C 801E49BC 01C27021 */  addu       $t6, $t6, $v0
/* 1D5730 801E49C0 8DCED8D0 */  lw         $t6, %lo(D_800DD8D0)($t6)
/* 1D5734 801E49C4 2718C4A0 */  addiu      $t8, $t8, %lo(D_800EC4A0)
/* 1D5738 801E49C8 00002825 */  or         $a1, $zero, $zero
/* 1D573C 801E49CC 000E7F82 */  srl        $t7, $t6, 30
/* 1D5740 801E49D0 11E00024 */  beqz       $t7, .L801E4A64_ovl10
/* 1D5744 801E49D4 00582021 */   addu      $a0, $v0, $t8
/* 1D5748 801E49D8 8C990000 */  lw         $t9, 0x0($a0)
/* 1D574C 801E49DC 5720000C */  bnel       $t9, $zero, .L801E4A10_ovl10
/* 1D5750 801E49E0 AC850000 */   sw        $a1, 0x0($a0)
/* 1D5754 801E49E4 0C006291 */  jal        random_soft_s32_range
/* 1D5758 801E49E8 24040002 */   addiu     $a0, $zero, 0x2
.L801E49EC_ovl9:
/* 1D575C 801E49EC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1D5760 801E49F0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1D5764 801E49F4 3C0A800F */  lui        $t2, %hi(D_800EC4A0)
/* 1D5768 801E49F8 254AC4A0 */  addiu      $t2, $t2, %lo(D_800EC4A0)
.L801E49FC_ovl13:
/* 1D576C 801E49FC 8C680000 */  lw         $t0, 0x0($v1)
/* 1D5770 801E4A00 00402825 */  or         $a1, $v0, $zero
.L801E4A04_ovl9:
/* 1D5774 801E4A04 00084880 */  sll        $t1, $t0, 2
/* 1D5778 801E4A08 012A2021 */  addu       $a0, $t1, $t2
/* 1D577C 801E4A0C AC850000 */  sw         $a1, 0x0($a0)
.L801E4A10_ovl10:
/* 1D5780 801E4A10 8C6B0000 */  lw         $t3, 0x0($v1)
/* 1D5784 801E4A14 3C0D800F */  lui        $t5, %hi(D_800EC4A0)
/* 1D5788 801E4A18 3C040001 */  lui        $a0, (0x10311 >> 16)
glabel func_801E4A1C_ovl9
/* 1D578C 801E4A1C 000B6080 */  sll        $t4, $t3, 2
/* 1D5790 801E4A20 01AC6821 */  addu       $t5, $t5, $t4
/* 1D5794 801E4A24 8DADC4A0 */  lw         $t5, %lo(D_800EC4A0)($t5)
/* 1D5798 801E4A28 15A00009 */  bnez       $t5, .L801E4A50_ovl10
/* 1D579C 801E4A2C 00000000 */   nop
/* 1D57A0 801E4A30 3C040001 */  lui        $a0, (0x10313 >> 16)
/* 1D57A4 801E4A34 0C02A806 */  jal        func_800AA018
/* 1D57A8 801E4A38 34840313 */   ori       $a0, $a0, (0x10313 & 0xFFFF)
/* 1D57AC 801E4A3C 3C040001 */  lui        $a0, (0x10312 >> 16)
/* 1D57B0 801E4A40 0C02A806 */  jal        func_800AA018
/* 1D57B4 801E4A44 34840312 */   ori       $a0, $a0, (0x10312 & 0xFFFF)
.L801E4A48_ovl13:
/* 1D57B8 801E4A48 10000007 */  b          .L801E4A68_ovl10
/* 1D57BC 801E4A4C 8FBF0014 */   lw        $ra, 0x14($sp)
.L801E4A50_ovl10:
/* 1D57C0 801E4A50 0C02A806 */  jal        func_800AA018
.L801E4A54_ovl13:
/* 1D57C4 801E4A54 34840311 */   ori       $a0, $a0, (0x10311 & 0xFFFF)
/* 1D57C8 801E4A58 3C040001 */  lui        $a0, (0x10310 >> 16)
/* 1D57CC 801E4A5C 0C02A806 */  jal        func_800AA018
/* 1D57D0 801E4A60 34840310 */   ori       $a0, $a0, (0x10310 & 0xFFFF)
.L801E4A64_ovl10:
/* 1D57D4 801E4A64 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E4A68_ovl10:
/* 1D57D8 801E4A68 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D57DC 801E4A6C 03E00008 */  jr         $ra
.L801E4A70_ovl9:
/* 1D57E0 801E4A70 00000000 */   nop
