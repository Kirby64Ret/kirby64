glabel func_801B6F18_ovl7
/* 15CF88 801B6F18 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 15CF8C 801B6F1C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 15CF90 801B6F20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 15CF94 801B6F24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 15CF98 801B6F28 AFA40018 */  sw         $a0, 0x18($sp)
/* 15CF9C 801B6F2C 8C620000 */  lw         $v0, 0x0($v1)
/* 15CFA0 801B6F30 3C04800E */  lui        $a0, %hi(D_800E1B50)
/* 15CFA4 801B6F34 3C08800E */  lui        $t0, %hi(D_800E3590)
/* 15CFA8 801B6F38 00021080 */  sll        $v0, $v0, 2
/* 15CFAC 801B6F3C 00822021 */  addu       $a0, $a0, $v0
/* 15CFB0 801B6F40 8C841B50 */  lw         $a0, %lo(D_800E1B50)($a0)
/* 15CFB4 801B6F44 25083590 */  addiu      $t0, $t0, %lo(D_800E3590)
/* 15CFB8 801B6F48 3C01800E */  lui        $at, %hi(D_800E3050)
/* 15CFBC 801B6F4C 908E003C */  lbu        $t6, 0x3C($a0)
/* 15CFC0 801B6F50 00220821 */  addu       $at, $at, $v0
/* 15CFC4 801B6F54 01027821 */  addu       $t7, $t0, $v0
/* 15CFC8 801B6F58 15C00042 */  bnez       $t6, .L801B7064_ovl7
/* 15CFCC 801B6F5C 00000000 */   nop
/* 15CFD0 801B6F60 44807000 */  mtc1       $zero, $f14
/* 15CFD4 801B6F64 C4203050 */  lwc1       $f0, %lo(D_800E3050)($at)
/* 15CFD8 801B6F68 3C07800E */  lui        $a3, %hi(D_800E3910)
/* 15CFDC 801B6F6C 24E73910 */  addiu      $a3, $a3, %lo(D_800E3910)
/* 15CFE0 801B6F70 460E003C */  c.lt.s     $f0, $f14
/* 15CFE4 801B6F74 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 15CFE8 801B6F78 00220821 */  addu       $at, $at, $v0
/* 15CFEC 801B6F7C 00E22021 */  addu       $a0, $a3, $v0
/* 15CFF0 801B6F80 45020004 */  bc1fl      .L801B6F94_ovl7
/* 15CFF4 801B6F84 46000306 */   mov.s     $f12, $f0
/* 15CFF8 801B6F88 10000002 */  b          .L801B6F94_ovl7
/* 15CFFC 801B6F8C 46000307 */   neg.s     $f12, $f0
/* 15D000 801B6F90 46000306 */  mov.s      $f12, $f0
.L801B6F94_ovl7:
/* 15D004 801B6F94 C5E00000 */  lwc1       $f0, 0x0($t7)
/* 15D008 801B6F98 460E003C */  c.lt.s     $f0, $f14
/* 15D00C 801B6F9C 00000000 */  nop
/* 15D010 801B6FA0 45020004 */  bc1fl      .L801B6FB4_ovl7
/* 15D014 801B6FA4 46000086 */   mov.s     $f2, $f0
/* 15D018 801B6FA8 10000002 */  b          .L801B6FB4_ovl7
/* 15D01C 801B6FAC 46000087 */   neg.s     $f2, $f0
/* 15D020 801B6FB0 46000086 */  mov.s      $f2, $f0
.L801B6FB4_ovl7:
/* 15D024 801B6FB4 4602603E */  c.le.s     $f12, $f2
/* 15D028 801B6FB8 00000000 */  nop
/* 15D02C 801B6FBC 45000029 */  bc1f       .L801B7064_ovl7
/* 15D030 801B6FC0 00000000 */   nop
/* 15D034 801B6FC4 C42233D0 */  lwc1       $f2, %lo(D_800E33D0)($at)
/* 15D038 801B6FC8 3C06800F */  lui        $a2, %hi(D_800EA520)
/* 15D03C 801B6FCC 24C6A520 */  addiu      $a2, $a2, %lo(D_800EA520)
/* 15D040 801B6FD0 460E103C */  c.lt.s     $f2, $f14
/* 15D044 801B6FD4 00C2C021 */  addu       $t8, $a2, $v0
/* 15D048 801B6FD8 45020004 */  bc1fl      .L801B6FEC_ovl7
/* 15D04C 801B6FDC 46001006 */   mov.s     $f0, $f2
/* 15D050 801B6FE0 10000002 */  b          .L801B6FEC_ovl7
/* 15D054 801B6FE4 46001007 */   neg.s     $f0, $f2
/* 15D058 801B6FE8 46001006 */  mov.s      $f0, $f2
.L801B6FEC_ovl7:
/* 15D05C 801B6FEC C4820000 */  lwc1       $f2, 0x0($a0)
/* 15D060 801B6FF0 460E103C */  c.lt.s     $f2, $f14
/* 15D064 801B6FF4 00000000 */  nop
/* 15D068 801B6FF8 45020004 */  bc1fl      .L801B700C_ovl7
/* 15D06C 801B6FFC 46001306 */   mov.s     $f12, $f2
/* 15D070 801B7000 10000002 */  b          .L801B700C_ovl7
/* 15D074 801B7004 46001307 */   neg.s     $f12, $f2
/* 15D078 801B7008 46001306 */  mov.s      $f12, $f2
.L801B700C_ovl7:
/* 15D07C 801B700C 460C003E */  c.le.s     $f0, $f12
/* 15D080 801B7010 00000000 */  nop
/* 15D084 801B7014 45000013 */  bc1f       .L801B7064_ovl7
/* 15D088 801B7018 00000000 */   nop
/* 15D08C 801B701C 8F190000 */  lw         $t9, 0x0($t8)
/* 15D090 801B7020 2401FFFF */  addiu      $at, $zero, -0x1
/* 15D094 801B7024 1721000F */  bne        $t9, $at, .L801B7064_ovl7
/* 15D098 801B7028 00000000 */   nop
/* 15D09C 801B702C 44802000 */  mtc1       $zero, $f4
/* 15D0A0 801B7030 240B002A */  addiu      $t3, $zero, 0x2A
/* 15D0A4 801B7034 E4840000 */  swc1       $f4, 0x0($a0)
/* 15D0A8 801B7038 8C620000 */  lw         $v0, 0x0($v1)
/* 15D0AC 801B703C 00021080 */  sll        $v0, $v0, 2
/* 15D0B0 801B7040 00E24821 */  addu       $t1, $a3, $v0
/* 15D0B4 801B7044 C5260000 */  lwc1       $f6, 0x0($t1)
/* 15D0B8 801B7048 01025021 */  addu       $t2, $t0, $v0
/* 15D0BC 801B704C E5460000 */  swc1       $f6, 0x0($t2)
/* 15D0C0 801B7050 8C6C0000 */  lw         $t4, 0x0($v1)
/* 15D0C4 801B7054 000C6880 */  sll        $t5, $t4, 2
/* 15D0C8 801B7058 00CD7021 */  addu       $t6, $a2, $t5
/* 15D0CC 801B705C 1000004F */  b          .L801B719C_ovl7
/* 15D0D0 801B7060 ADCB0000 */   sw        $t3, 0x0($t6)
.L801B7064_ovl7:
/* 15D0D4 801B7064 3C06800F */  lui        $a2, %hi(D_800EA520)
/* 15D0D8 801B7068 24C6A520 */  addiu      $a2, $a2, %lo(D_800EA520)
/* 15D0DC 801B706C 00C22821 */  addu       $a1, $a2, $v0
/* 15D0E0 801B7070 8CA40000 */  lw         $a0, 0x0($a1)
/* 15D0E4 801B7074 3C07800E */  lui        $a3, %hi(D_800E3910)
/* 15D0E8 801B7078 3C08800E */  lui        $t0, %hi(D_800E3590)
/* 15D0EC 801B707C 25083590 */  addiu      $t0, $t0, %lo(D_800E3590)
/* 15D0F0 801B7080 14800042 */  bnez       $a0, .L801B718C_ovl7
/* 15D0F4 801B7084 24E73910 */   addiu     $a3, $a3, %lo(D_800E3910)
/* 15D0F8 801B7088 44804000 */  mtc1       $zero, $f8
/* 15D0FC 801B708C 00E27821 */  addu       $t7, $a3, $v0
/* 15D100 801B7090 3C01800E */  lui        $at, %hi(D_800E3750)
/* 15D104 801B7094 E5E80000 */  swc1       $f8, 0x0($t7)
/* 15D108 801B7098 8C620000 */  lw         $v0, 0x0($v1)
/* 15D10C 801B709C 3C06800E */  lui        $a2, %hi(D_800E3E50)
/* 15D110 801B70A0 24C63E50 */  addiu      $a2, $a2, %lo(D_800E3E50)
/* 15D114 801B70A4 00021080 */  sll        $v0, $v0, 2
/* 15D118 801B70A8 00E2C021 */  addu       $t8, $a3, $v0
/* 15D11C 801B70AC C7000000 */  lwc1       $f0, 0x0($t8)
/* 15D120 801B70B0 00220821 */  addu       $at, $at, $v0
/* 15D124 801B70B4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 15D128 801B70B8 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
/* 15D12C 801B70BC 8C790000 */  lw         $t9, 0x0($v1)
/* 15D130 801B70C0 3C01800E */  lui        $at, %hi(D_800E33D0)
/* 15D134 801B70C4 3C05801B */  lui        $a1, %hi(func_801B6B88_ovl7)
/* 15D138 801B70C8 00194880 */  sll        $t1, $t9, 2
/* 15D13C 801B70CC 01095021 */  addu       $t2, $t0, $t1
/* 15D140 801B70D0 E5400000 */  swc1       $f0, 0x0($t2)
/* 15D144 801B70D4 8C6C0000 */  lw         $t4, 0x0($v1)
/* 15D148 801B70D8 24A56B88 */  addiu      $a1, $a1, %lo(func_801B6B88_ovl7)
/* 15D14C 801B70DC 000C6880 */  sll        $t5, $t4, 2
/* 15D150 801B70E0 002D0821 */  addu       $at, $at, $t5
/* 15D154 801B70E4 E42033D0 */  swc1       $f0, %lo(D_800E33D0)($at)
/* 15D158 801B70E8 8C6B0000 */  lw         $t3, 0x0($v1)
/* 15D15C 801B70EC 3C01800E */  lui        $at, %hi(D_800E3210)
/* 15D160 801B70F0 000B7080 */  sll        $t6, $t3, 2
/* 15D164 801B70F4 002E0821 */  addu       $at, $at, $t6
/* 15D168 801B70F8 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 15D16C 801B70FC 8C6F0000 */  lw         $t7, 0x0($v1)
/* 15D170 801B7100 3C01800E */  lui        $at, %hi(D_800E3050)
/* 15D174 801B7104 240E0001 */  addiu      $t6, $zero, 0x1
/* 15D178 801B7108 000FC080 */  sll        $t8, $t7, 2
/* 15D17C 801B710C 00380821 */  addu       $at, $at, $t8
/* 15D180 801B7110 E4203050 */  swc1       $f0, %lo(D_800E3050)($at)
/* 15D184 801B7114 8C790000 */  lw         $t9, 0x0($v1)
/* 15D188 801B7118 3C01801D */  lui        $at, %hi(D_801CE350_ovl7)
/* 15D18C 801B711C C42AE350 */  lwc1       $f10, %lo(D_801CE350_ovl7)($at)
/* 15D190 801B7120 00194880 */  sll        $t1, $t9, 2
/* 15D194 801B7124 00C95021 */  addu       $t2, $a2, $t1
/* 15D198 801B7128 E54A0000 */  swc1       $f10, 0x0($t2)
/* 15D19C 801B712C 8C620000 */  lw         $v0, 0x0($v1)
/* 15D1A0 801B7130 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 15D1A4 801B7134 00021080 */  sll        $v0, $v0, 2
/* 15D1A8 801B7138 00C26021 */  addu       $t4, $a2, $v0
/* 15D1AC 801B713C C5820000 */  lwc1       $f2, 0x0($t4)
/* 15D1B0 801B7140 00220821 */  addu       $at, $at, $v0
/* 15D1B4 801B7144 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* 15D1B8 801B7148 8C6D0000 */  lw         $t5, 0x0($v1)
/* 15D1BC 801B714C 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 15D1C0 801B7150 000D5880 */  sll        $t3, $t5, 2
/* 15D1C4 801B7154 002B0821 */  addu       $at, $at, $t3
/* 15D1C8 801B7158 E4223AD0 */  swc1       $f2, %lo(D_800E3AD0)($at)
/* 15D1CC 801B715C 8C6F0000 */  lw         $t7, 0x0($v1)
/* 15D1D0 801B7160 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 15D1D4 801B7164 000FC080 */  sll        $t8, $t7, 2
/* 15D1D8 801B7168 00380821 */  addu       $at, $at, $t8
/* 15D1DC 801B716C AC2EDC50 */  sw         $t6, %lo(gEntityVtableIndexArray)($at)
/* 15D1E0 801B7170 8C790000 */  lw         $t9, 0x0($v1)
/* 15D1E4 801B7174 00194880 */  sll        $t1, $t9, 2
/* 15D1E8 801B7178 00892021 */  addu       $a0, $a0, $t1
/* 15D1EC 801B717C 0C02C7B2 */  jal        assign_new_process_entry
/* 15D1F0 801B7180 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 15D1F4 801B7184 10000006 */  b          .L801B71A0_ovl7
/* 15D1F8 801B7188 8FBF0014 */   lw        $ra, 0x14($sp)
.L801B718C_ovl7:
/* 15D1FC 801B718C 2401FFFF */  addiu      $at, $zero, -0x1
/* 15D200 801B7190 10810002 */  beq        $a0, $at, .L801B719C_ovl7
/* 15D204 801B7194 248AFFFF */   addiu     $t2, $a0, -0x1
/* 15D208 801B7198 ACAA0000 */  sw         $t2, 0x0($a1)
.L801B719C_ovl7:
/* 15D20C 801B719C 8FBF0014 */  lw         $ra, 0x14($sp)
.L801B71A0_ovl7:
/* 15D210 801B71A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 15D214 801B71A4 03E00008 */  jr         $ra
/* 15D218 801B71A8 00000000 */   nop
