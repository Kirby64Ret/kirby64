glabel func_801DCDA8_ovl15
/* 207908 801DCDA8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 20790C 801DCDAC AFB10018 */  sw         $s1, 0x18($sp)
/* 207910 801DCDB0 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 207914 801DCDB4 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 207918 801DCDB8 8E2E0000 */  lw         $t6, 0x0($s1)
/* 20791C 801DCDBC AFBF001C */  sw         $ra, 0x1C($sp)
/* 207920 801DCDC0 AFB00014 */  sw         $s0, 0x14($sp)
/* 207924 801DCDC4 AFA40058 */  sw         $a0, 0x58($sp)
glabel func_801DCDC8_ovl16
/* 207928 801DCDC8 8DC20000 */  lw         $v0, 0x0($t6)
/* 20792C 801DCDCC 3C03800E */  lui        $v1, %hi(D_800E7880)
.L801DCDD0_ovl17:
/* 207930 801DCDD0 3C18800E */  lui        $t8, %hi(D_800E0D50)
glabel func_801DCDD4_ovl10
/* 207934 801DCDD4 00621821 */  addu       $v1, $v1, $v0
/* 207938 801DCDD8 90637880 */  lbu        $v1, %lo(D_800E7880)($v1)
/* 20793C 801DCDDC 00027880 */  sll        $t7, $v0, 2
/* 207940 801DCDE0 030FC021 */  addu       $t8, $t8, $t7
/* 207944 801DCDE4 8F180D50 */  lw         $t8, %lo(D_800E0D50)($t8)
/* 207948 801DCDE8 2463FFF9 */  addiu      $v1, $v1, -0x7
.L801DCDEC_ovl14:
/* 20794C 801DCDEC 3C10800E */  lui        $s0, %hi(D_800DFBD0)
/* 207950 801DCDF0 00033080 */  sll        $a2, $v1, 2
.L801DCDF4_ovl12:
/* 207954 801DCDF4 3C0A801E */  lui        $t2, %hi(func_801E6444_ovl10 + 0xBC)
/* 207958 801DCDF8 2610FBD0 */  addiu      $s0, $s0, %lo(D_800DFBD0)
glabel func_801DCDFC_ovl12
/* 20795C 801DCDFC 01465021 */  addu       $t2, $t2, $a2
/* 207960 801DCE00 0018C880 */  sll        $t9, $t8, 2
glabel func_801DCE04_ovl11
/* 207964 801DCE04 8D4A6500 */  lw         $t2, %lo(func_801E6444_ovl10 + 0xBC)($t2)
/* 207968 801DCE08 02194021 */  addu       $t0, $s0, $t9
.L801DCE0C_ovl9:
/* 20796C 801DCE0C 8D090000 */  lw         $t1, 0x0($t0)
/* 207970 801DCE10 000A5880 */  sll        $t3, $t2, 2
/* 207974 801DCE14 27A4004C */  addiu      $a0, $sp, 0x4C
/* 207978 801DCE18 012B6021 */  addu       $t4, $t1, $t3
glabel func_801DCE1C_ovl14
/* 20797C 801DCE1C 8D850000 */  lw         $a1, 0x0($t4)
/* 207980 801DCE20 0C0291E5 */  jal        func_800A4794
/* 207984 801DCE24 AFA60028 */   sw        $a2, 0x28($sp)
.L801DCE28_ovl17:
/* 207988 801DCE28 3C01C2A0 */  lui        $at, (0xC2A00000 >> 16)
/* 20798C 801DCE2C C7A20054 */  lwc1       $f2, 0x54($sp)
/* 207990 801DCE30 44812000 */  mtc1       $at, $f4
.L801DCE34_ovl9:
/* 207994 801DCE34 24040001 */  addiu      $a0, $zero, 0x1
.L801DCE38_ovl11:
/* 207998 801DCE38 4604103C */  c.lt.s     $f2, $f4
.L801DCE3C_ovl11:
/* 20799C 801DCE3C 00000000 */  nop
/* 2079A0 801DCE40 45000006 */  bc1f       .L801DCE5C_ovl15
glabel func_801DCE44_ovl17
/* 2079A4 801DCE44 00000000 */   nop
glabel func_801DCE48_ovl12
/* 2079A8 801DCE48 00002025 */  or         $a0, $zero, $zero
/* 2079AC 801DCE4C 0C02BEED */  jal        func_800AFBB4
/* 2079B0 801DCE50 8E250000 */   lw        $a1, 0x0($s1)
/* 2079B4 801DCE54 10000075 */  b          func_801DD02C_ovl15
.L801DCE58_ovl17:
/* 2079B8 801DCE58 8FBF001C */   lw        $ra, 0x1C($sp)
.L801DCE5C_ovl15:
/* 2079BC 801DCE5C 0C02BEED */  jal        func_800AFBB4
/* 2079C0 801DCE60 8E250000 */   lw        $a1, 0x0($s1)
.L801DCE64_ovl12:
/* 2079C4 801DCE64 8E220000 */  lw         $v0, 0x0($s1)
.L801DCE68_ovl14:
/* 2079C8 801DCE68 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
glabel func_801DCE6C_ovl12
/* 2079CC 801DCE6C 44818000 */  mtc1       $at, $f16
/* 2079D0 801DCE70 8C4D0000 */  lw         $t5, 0x0($v0)
.L801DCE74_ovl17:
/* 2079D4 801DCE74 C7A6004C */  lwc1       $f6, 0x4C($sp)
/* 2079D8 801DCE78 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 2079DC 801DCE7C 000D7080 */  sll        $t6, $t5, 2
/* 2079E0 801DCE80 002E0821 */  addu       $at, $at, $t6
/* 2079E4 801DCE84 E42625D0 */  swc1       $f6, %lo(gEntitiesNextPosXArray)($at)
/* 2079E8 801DCE88 8C4F0000 */  lw         $t7, 0x0($v0)
/* 2079EC 801DCE8C 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 2079F0 801DCE90 44814000 */  mtc1       $at, $f8
/* 2079F4 801DCE94 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 2079F8 801DCE98 000FC080 */  sll        $t8, $t7, 2
glabel func_801DCE9C_ovl13
/* 2079FC 801DCE9C 00380821 */  addu       $at, $at, $t8
/* 207A00 801DCEA0 E4282790 */  swc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* 207A04 801DCEA4 8C590000 */  lw         $t9, 0x0($v0)
/* 207A08 801DCEA8 C7AA0054 */  lwc1       $f10, 0x54($sp)
/* 207A0C 801DCEAC 3C05800E */  lui        $a1, %hi(gEntitiesNextPosZArray)
/* 207A10 801DCEB0 24A52950 */  addiu      $a1, $a1, %lo(gEntitiesNextPosZArray)
/* 207A14 801DCEB4 00194080 */  sll        $t0, $t9, 2
/* 207A18 801DCEB8 00A85021 */  addu       $t2, $a1, $t0
/* 207A1C 801DCEBC E54A0000 */  swc1       $f10, 0x0($t2)
glabel func_801DCEC0_ovl14
/* 207A20 801DCEC0 8C430000 */  lw         $v1, 0x0($v0)
/* 207A24 801DCEC4 00031880 */  sll        $v1, $v1, 2
/* 207A28 801DCEC8 00A32021 */  addu       $a0, $a1, $v1
/* 207A2C 801DCECC C4920000 */  lwc1       $f18, 0x0($a0)
/* 207A30 801DCED0 4612803C */  c.lt.s     $f16, $f18
/* 207A34 801DCED4 00000000 */  nop
.L801DCED8_ovl17:
/* 207A38 801DCED8 45020005 */  bc1fl      .L801DCEF0_ovl16
/* 207A3C 801DCEDC 02034821 */   addu      $t1, $s0, $v1
/* 207A40 801DCEE0 E4900000 */  swc1       $f16, 0x0($a0)
/* 207A44 801DCEE4 8C430000 */  lw         $v1, 0x0($v0)
/* 207A48 801DCEE8 00031880 */  sll        $v1, $v1, 2
.L801DCEEC_ovl16:
/* 207A4C 801DCEEC 02034821 */  addu       $t1, $s0, $v1
.L801DCEF0_ovl16:
/* 207A50 801DCEF0 8D2B0000 */  lw         $t3, 0x0($t1)
/* 207A54 801DCEF4 44807000 */  mtc1       $zero, $f14
/* 207A58 801DCEF8 27A40040 */  addiu      $a0, $sp, 0x40
/* 207A5C 801DCEFC 8D6C0004 */  lw         $t4, 0x4($t3)
/* 207A60 801DCF00 E58E001C */  swc1       $f14, 0x1C($t4)
/* 207A64 801DCF04 8E2D0000 */  lw         $t5, 0x0($s1)
/* 207A68 801DCF08 8DAE0000 */  lw         $t6, 0x0($t5)
/* 207A6C 801DCF0C 000E7880 */  sll        $t7, $t6, 2
/* 207A70 801DCF10 020FC021 */  addu       $t8, $s0, $t7
/* 207A74 801DCF14 8F190000 */  lw         $t9, 0x0($t8)
/* 207A78 801DCF18 8F280004 */  lw         $t0, 0x4($t9)
/* 207A7C 801DCF1C E50E0020 */  swc1       $f14, 0x20($t0)
/* 207A80 801DCF20 8E2A0000 */  lw         $t2, 0x0($s1)
/* 207A84 801DCF24 3C08800E */  lui        $t0, %hi(D_800E0D50)
/* 207A88 801DCF28 8D490000 */  lw         $t1, 0x0($t2)
.L801DCF2C_ovl14:
/* 207A8C 801DCF2C 00095880 */  sll        $t3, $t1, 2
/* 207A90 801DCF30 020B6021 */  addu       $t4, $s0, $t3
/* 207A94 801DCF34 8D8D0000 */  lw         $t5, 0x0($t4)
.L801DCF38_ovl17:
/* 207A98 801DCF38 8DAE0004 */  lw         $t6, 0x4($t5)
/* 207A9C 801DCF3C 3C0D801E */  lui        $t5, %hi(func_801E6444_ovl10 + 0xC4)
/* 207AA0 801DCF40 E5CE0024 */  swc1       $f14, 0x24($t6)
/* 207AA4 801DCF44 8E2F0000 */  lw         $t7, 0x0($s1)
glabel func_801DCF48_ovl10
/* 207AA8 801DCF48 8FAC0028 */  lw         $t4, 0x28($sp)
/* 207AAC 801DCF4C 8DF80000 */  lw         $t8, 0x0($t7)
.L801DCF50_ovl9:
/* 207AB0 801DCF50 01AC6821 */  addu       $t5, $t5, $t4
.L801DCF54_ovl17:
/* 207AB4 801DCF54 8DAD6508 */  lw         $t5, %lo(func_801E6444_ovl10 + 0xC4)($t5)
.L801DCF58_ovl17:
/* 207AB8 801DCF58 0018C880 */  sll        $t9, $t8, 2
/* 207ABC 801DCF5C 01194021 */  addu       $t0, $t0, $t9
/* 207AC0 801DCF60 8D080D50 */  lw         $t0, %lo(D_800E0D50)($t0)
.L801DCF64_ovl17:
/* 207AC4 801DCF64 000D7080 */  sll        $t6, $t5, 2
/* 207AC8 801DCF68 00085080 */  sll        $t2, $t0, 2
/* 207ACC 801DCF6C 020A4821 */  addu       $t1, $s0, $t2
glabel func_801DCF70_ovl11
/* 207AD0 801DCF70 8D2B0000 */  lw         $t3, 0x0($t1)
/* 207AD4 801DCF74 016E7821 */  addu       $t7, $t3, $t6
/* 207AD8 801DCF78 0C0291E5 */  jal        func_800A4794
/* 207ADC 801DCF7C 8DE50000 */   lw        $a1, 0x0($t7)
/* 207AE0 801DCF80 C7A00048 */  lwc1       $f0, 0x48($sp)
.L801DCF84_ovl14:
/* 207AE4 801DCF84 C7A20054 */  lwc1       $f2, 0x54($sp)
/* 207AE8 801DCF88 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
.L801DCF8C_ovl17:
/* 207AEC 801DCF8C 44818000 */  mtc1       $at, $f16
/* 207AF0 801DCF90 46001032 */  c.eq.s     $f2, $f0
/* 207AF4 801DCF94 C7A40054 */  lwc1       $f4, 0x54($sp)
.L801DCF98_ovl9:
/* 207AF8 801DCF98 44807000 */  mtc1       $zero, $f14
/* 207AFC 801DCF9C 46001301 */  sub.s      $f12, $f2, $f0
.L801DCFA0_ovl14:
/* 207B00 801DCFA0 45000003 */  bc1f       .L801DCFB0_ovl15
/* 207B04 801DCFA4 46102180 */   add.s     $f6, $f4, $f16
/* 207B08 801DCFA8 3C01801E */  lui        $at, %hi(D_801E6824_ovl15)
/* 207B0C 801DCFAC C42C6824 */  lwc1       $f12, %lo(D_801E6824_ovl15)($at)
.L801DCFB0_ovl15:
/* 207B10 801DCFB0 460C3003 */  div.s      $f0, $f6, $f12
.L801DCFB4_ovl10:
/* 207B14 801DCFB4 C7A80040 */  lwc1       $f8, 0x40($sp)
.L801DCFB8_ovl14:
/* 207B18 801DCFB8 C7AA004C */  lwc1       $f10, 0x4C($sp)
/* 207B1C 801DCFBC 8E380000 */  lw         $t8, 0x0($s1)
/* 207B20 801DCFC0 460A4481 */  sub.s      $f18, $f8, $f10
glabel func_801DCFC4_ovl10
/* 207B24 801DCFC4 8F190000 */  lw         $t9, 0x0($t8)
/* 207B28 801DCFC8 00194080 */  sll        $t0, $t9, 2
/* 207B2C 801DCFCC 02085021 */  addu       $t2, $s0, $t0
/* 207B30 801DCFD0 8D490000 */  lw         $t1, 0x0($t2)
glabel func_801DCFD4_ovl17
/* 207B34 801DCFD4 8D2C0008 */  lw         $t4, 0x8($t1)
/* 207B38 801DCFD8 46009102 */  mul.s      $f4, $f18, $f0
/* 207B3C 801DCFDC E584001C */  swc1       $f4, 0x1C($t4)
/* 207B40 801DCFE0 8E2D0000 */  lw         $t5, 0x0($s1)
glabel func_801DCFE4_ovl14
/* 207B44 801DCFE4 8DAB0000 */  lw         $t3, 0x0($t5)
.L801DCFE8_ovl9:
/* 207B48 801DCFE8 000B7080 */  sll        $t6, $t3, 2
/* 207B4C 801DCFEC 020E7821 */  addu       $t7, $s0, $t6
/* 207B50 801DCFF0 8DF80000 */  lw         $t8, 0x0($t7)
.L801DCFF4_ovl11:
/* 207B54 801DCFF4 8F190008 */  lw         $t9, 0x8($t8)
/* 207B58 801DCFF8 E72E0020 */  swc1       $f14, 0x20($t9)
/* 207B5C 801DCFFC 8E280000 */  lw         $t0, 0x0($s1)
/* 207B60 801DD000 C7A80054 */  lwc1       $f8, 0x54($sp)
/* 207B64 801DD004 C7A60048 */  lwc1       $f6, 0x48($sp)
/* 207B68 801DD008 8D0A0000 */  lw         $t2, 0x0($t0)
/* 207B6C 801DD00C 46083281 */  sub.s      $f10, $f6, $f8
/* 207B70 801DD010 000A4880 */  sll        $t1, $t2, 2
.L801DD014_ovl9:
/* 207B74 801DD014 02096021 */  addu       $t4, $s0, $t1
glabel func_801DD018_ovl14
/* 207B78 801DD018 8D8D0000 */  lw         $t5, 0x0($t4)
/* 207B7C 801DD01C 46005482 */  mul.s      $f18, $f10, $f0
/* 207B80 801DD020 8DAB0008 */  lw         $t3, 0x8($t5)
/* 207B84 801DD024 E5720024 */  swc1       $f18, 0x24($t3)
/* 207B88 801DD028 8FBF001C */  lw         $ra, 0x1C($sp)
glabel func_801DD02C_ovl15
/* 207B8C 801DD02C 8FB00014 */  lw         $s0, 0x14($sp)
/* 207B90 801DD030 8FB10018 */  lw         $s1, 0x18($sp)
/* 207B94 801DD034 03E00008 */  jr         $ra
.L801DD038_ovl9:
/* 207B98 801DD038 27BD0058 */   addiu     $sp, $sp, 0x58
