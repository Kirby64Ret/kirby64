nonmatching func_8015EAB4_ovl5, 0x2E8

glabel func_8015EAB4_ovl5
    /* 105F24 8015EAB4 27BDFE98 */  addiu      $sp, $sp, -0x168
    /* 105F28 8015EAB8 AFA40168 */  sw         $a0, 0x168($sp)
    /* 105F2C 8015EABC 3C058019 */  lui        $a1, %hi(D_8018E050_ovl5)
    /* 105F30 8015EAC0 3C07800F */  lui        $a3, %hi(D_800E9FE0)
    /* 105F34 8015EAC4 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 105F38 8015EAC8 AFB20020 */  sw         $s2, 0x20($sp)
    /* 105F3C 8015EACC AFB1001C */  sw         $s1, 0x1C($sp)
    /* 105F40 8015EAD0 AFB00018 */  sw         $s0, 0x18($sp)
    /* 105F44 8015EAD4 00005825 */  or         $t3, $zero, $zero
    /* 105F48 8015EAD8 24E79FE0 */  addiu      $a3, $a3, %lo(D_800E9FE0)
    /* 105F4C 8015EADC 24A5E050 */  addiu      $a1, $a1, %lo(D_8018E050_ovl5)
    /* 105F50 8015EAE0 240400FF */  addiu      $a0, $zero, 0xFF
    /* 105F54 8015EAE4 27A800D0 */  addiu      $t0, $sp, 0xD0
    /* 105F58 8015EAE8 00001825 */  or         $v1, $zero, $zero
    /* 105F5C 8015EAEC 24090064 */  addiu      $t1, $zero, 0x64
    /* 105F60 8015EAF0 24060003 */  addiu      $a2, $zero, 0x3
  .L8015EAF4_ovl5:
    /* 105F64 8015EAF4 51600005 */  beql       $t3, $zero, .L8015EB0C_ovl5
    /* 105F68 8015EAF8 8CA20000 */   lw        $v0, 0x0($a1)
    /* 105F6C 8015EAFC 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 105F70 8015EB00 108E000F */  beq        $a0, $t6, .L8015EB40_ovl5
    /* 105F74 8015EB04 00000000 */   nop
    /* 105F78 8015EB08 8CA20000 */  lw         $v0, 0x0($a1)
  .L8015EB0C_ovl5:
    /* 105F7C 8015EB0C 10820009 */  beq        $a0, $v0, .L8015EB34_ovl5
    /* 105F80 8015EB10 00027880 */   sll       $t7, $v0, 2
    /* 105F84 8015EB14 00EFC021 */  addu       $t8, $a3, $t7
    /* 105F88 8015EB18 8F190000 */  lw         $t9, 0x0($t8)
    /* 105F8C 8015EB1C 000B6080 */  sll        $t4, $t3, 2
    /* 105F90 8015EB20 010C6821 */  addu       $t5, $t0, $t4
    /* 105F94 8015EB24 54D90004 */  bnel       $a2, $t9, .L8015EB38_ovl5
    /* 105F98 8015EB28 24630001 */   addiu     $v1, $v1, 0x1
    /* 105F9C 8015EB2C ADA30000 */  sw         $v1, 0x0($t5)
    /* 105FA0 8015EB30 256B0001 */  addiu      $t3, $t3, 0x1
  .L8015EB34_ovl5:
    /* 105FA4 8015EB34 24630001 */  addiu      $v1, $v1, 0x1
  .L8015EB38_ovl5:
    /* 105FA8 8015EB38 1469FFEE */  bne        $v1, $t1, .L8015EAF4_ovl5
    /* 105FAC 8015EB3C 24A50004 */   addiu     $a1, $a1, 0x4
  .L8015EB40_ovl5:
    /* 105FB0 8015EB40 15600003 */  bnez       $t3, .L8015EB50_ovl5
    /* 105FB4 8015EB44 24010001 */   addiu     $at, $zero, 0x1
    /* 105FB8 8015EB48 1000008E */  b          .L8015ED84_ovl5
    /* 105FBC 8015EB4C 240200FF */   addiu     $v0, $zero, 0xFF
  .L8015EB50_ovl5:
    /* 105FC0 8015EB50 15610003 */  bne        $t3, $at, .L8015EB60_ovl5
    /* 105FC4 8015EB54 00000000 */   nop
    /* 105FC8 8015EB58 1000008A */  b          .L8015ED84_ovl5
    /* 105FCC 8015EB5C 8FA200D0 */   lw        $v0, 0xD0($sp)
  .L8015EB60_ovl5:
    /* 105FD0 8015EB60 19600035 */  blez       $t3, .L8015EC38_ovl5
    /* 105FD4 8015EB64 00001825 */   or        $v1, $zero, $zero
    /* 105FD8 8015EB68 8FAE0168 */  lw         $t6, 0x168($sp)
    /* 105FDC 8015EB6C 3C188019 */  lui        $t8, %hi(D_8018E030_ovl5)
    /* 105FE0 8015EB70 2718E030 */  addiu      $t8, $t8, %lo(D_8018E030_ovl5)
    /* 105FE4 8015EB74 000E7880 */  sll        $t7, $t6, 2
    /* 105FE8 8015EB78 01F82821 */  addu       $a1, $t7, $t8
    /* 105FEC 8015EB7C 3C12800E */  lui        $s2, %hi(gEntitiesNextPosXArray)
    /* 105FF0 8015EB80 3C11800E */  lui        $s1, %hi(gEntitiesNextPosYArray)
    /* 105FF4 8015EB84 26312790 */  addiu      $s1, $s1, %lo(gEntitiesNextPosYArray)
    /* 105FF8 8015EB88 265225D0 */  addiu      $s2, $s2, %lo(gEntitiesNextPosXArray)
    /* 105FFC 8015EB8C AFA50048 */  sw         $a1, 0x48($sp)
    /* 106000 8015EB90 27B000D0 */  addiu      $s0, $sp, 0xD0
    /* 106004 8015EB94 27A60058 */  addiu      $a2, $sp, 0x58
    /* 106008 8015EB98 240A0001 */  addiu      $t2, $zero, 0x1
    /* 10600C 8015EB9C 25640001 */  addiu      $a0, $t3, 0x1
  .L8015EBA0_ovl5:
    /* 106010 8015EBA0 8E190000 */  lw         $t9, 0x0($s0)
    /* 106014 8015EBA4 8FA50048 */  lw         $a1, 0x48($sp)
    /* 106018 8015EBA8 3C028019 */  lui        $v0, %hi(D_8018E050_ovl5)
    /* 10601C 8015EBAC 00196080 */  sll        $t4, $t9, 2
    /* 106020 8015EBB0 004C1021 */  addu       $v0, $v0, $t4
    /* 106024 8015EBB4 8C42E050 */  lw         $v0, %lo(D_8018E050_ovl5)($v0)
    /* 106028 8015EBB8 8CA30000 */  lw         $v1, 0x0($a1)
    /* 10602C 8015EBBC 00021080 */  sll        $v0, $v0, 2
    /* 106030 8015EBC0 00031880 */  sll        $v1, $v1, 2
    /* 106034 8015EBC4 02237021 */  addu       $t6, $s1, $v1
    /* 106038 8015EBC8 02226821 */  addu       $t5, $s1, $v0
    /* 10603C 8015EBCC C5A40000 */  lwc1       $f4, 0x0($t5)
    /* 106040 8015EBD0 C5C60000 */  lwc1       $f6, 0x0($t6)
    /* 106044 8015EBD4 0243C021 */  addu       $t8, $s2, $v1
    /* 106048 8015EBD8 02427821 */  addu       $t7, $s2, $v0
    /* 10604C 8015EBDC 46062001 */  sub.s      $f0, $f4, $f6
    /* 106050 8015EBE0 C5E80000 */  lwc1       $f8, 0x0($t7)
    /* 106054 8015EBE4 C70A0000 */  lwc1       $f10, 0x0($t8)
    /* 106058 8015EBE8 AFAB0160 */  sw         $t3, 0x160($sp)
    /* 10605C 8015EBEC 46000402 */  mul.s      $f16, $f0, $f0
    /* 106060 8015EBF0 460A4081 */  sub.s      $f2, $f8, $f10
    /* 106064 8015EBF4 AFAA0040 */  sw         $t2, 0x40($sp)
    /* 106068 8015EBF8 AFA60044 */  sw         $a2, 0x44($sp)
    /* 10606C 8015EBFC AFA4003C */  sw         $a0, 0x3C($sp)
    /* 106070 8015EC00 46021482 */  mul.s      $f18, $f2, $f2
    /* 106074 8015EC04 0C00CAC8 */  jal        sqrtf
    /* 106078 8015EC08 46128300 */   add.s     $f12, $f16, $f18
    /* 10607C 8015EC0C 8FAA0040 */  lw         $t2, 0x40($sp)
    /* 106080 8015EC10 8FA4003C */  lw         $a0, 0x3C($sp)
    /* 106084 8015EC14 8FA60044 */  lw         $a2, 0x44($sp)
    /* 106088 8015EC18 8FAB0160 */  lw         $t3, 0x160($sp)
    /* 10608C 8015EC1C 254A0001 */  addiu      $t2, $t2, 0x1
    /* 106090 8015EC20 26100004 */  addiu      $s0, $s0, 0x4
    /* 106094 8015EC24 27A800D0 */  addiu      $t0, $sp, 0xD0
    /* 106098 8015EC28 24C60004 */  addiu      $a2, $a2, 0x4
    /* 10609C 8015EC2C 1544FFDC */  bne        $t2, $a0, .L8015EBA0_ovl5
    /* 1060A0 8015EC30 E4C0FFFC */   swc1      $f0, -0x4($a2)
    /* 1060A4 8015EC34 00001825 */  or         $v1, $zero, $zero
  .L8015EC38_ovl5:
    /* 1060A8 8015EC38 19600044 */  blez       $t3, .L8015ED4C_ovl5
    /* 1060AC 8015EC3C 240A0001 */   addiu     $t2, $zero, 0x1
  .L8015EC40_ovl5:
    /* 1060B0 8015EC40 014B082A */  slt        $at, $t2, $t3
    /* 1060B4 8015EC44 1020003E */  beqz       $at, .L8015ED40_ovl5
    /* 1060B8 8015EC48 01401025 */   or        $v0, $t2, $zero
    /* 1060BC 8015EC4C 00033880 */  sll        $a3, $v1, 2
    /* 1060C0 8015EC50 016A2023 */  subu       $a0, $t3, $t2
    /* 1060C4 8015EC54 30830001 */  andi       $v1, $a0, 0x1
    /* 1060C8 8015EC58 27B90058 */  addiu      $t9, $sp, 0x58
    /* 1060CC 8015EC5C 10600013 */  beqz       $v1, .L8015ECAC_ovl5
    /* 1060D0 8015EC60 00F93021 */   addu      $a2, $a3, $t9
    /* 1060D4 8015EC64 000A2880 */  sll        $a1, $t2, 2
    /* 1060D8 8015EC68 00B92021 */  addu       $a0, $a1, $t9
    /* 1060DC 8015EC6C C48C0000 */  lwc1       $f12, 0x0($a0)
    /* 1060E0 8015EC70 C4C00000 */  lwc1       $f0, 0x0($a2)
    /* 1060E4 8015EC74 01051821 */  addu       $v1, $t0, $a1
    /* 1060E8 8015EC78 01078021 */  addu       $s0, $t0, $a3
    /* 1060EC 8015EC7C 4600603C */  c.lt.s     $f12, $f0
    /* 1060F0 8015EC80 00000000 */  nop
    /* 1060F4 8015EC84 45020008 */  bc1fl      .L8015ECA8_ovl5
    /* 1060F8 8015EC88 25420001 */   addiu     $v0, $t2, 0x1
    /* 1060FC 8015EC8C 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 106100 8015EC90 8E020000 */  lw         $v0, 0x0($s0)
    /* 106104 8015EC94 E4CC0000 */  swc1       $f12, 0x0($a2)
    /* 106108 8015EC98 AE0C0000 */  sw         $t4, 0x0($s0)
    /* 10610C 8015EC9C E4800000 */  swc1       $f0, 0x0($a0)
    /* 106110 8015ECA0 AC620000 */  sw         $v0, 0x0($v1)
    /* 106114 8015ECA4 25420001 */  addiu      $v0, $t2, 0x1
  .L8015ECA8_ovl5:
    /* 106118 8015ECA8 104B0025 */  beq        $v0, $t3, .L8015ED40_ovl5
  .L8015ECAC_ovl5:
    /* 10611C 8015ECAC 27AD0058 */   addiu     $t5, $sp, 0x58
    /* 106120 8015ECB0 00022880 */  sll        $a1, $v0, 2
    /* 106124 8015ECB4 000B7080 */  sll        $t6, $t3, 2
    /* 106128 8015ECB8 01CD4821 */  addu       $t1, $t6, $t5
    /* 10612C 8015ECBC 00AD2021 */  addu       $a0, $a1, $t5
  .L8015ECC0_ovl5:
    /* 106130 8015ECC0 C48C0000 */  lwc1       $f12, 0x0($a0)
    /* 106134 8015ECC4 C4C00000 */  lwc1       $f0, 0x0($a2)
    /* 106138 8015ECC8 01078021 */  addu       $s0, $t0, $a3
    /* 10613C 8015ECCC 01051821 */  addu       $v1, $t0, $a1
    /* 106140 8015ECD0 4600603C */  c.lt.s     $f12, $f0
    /* 106144 8015ECD4 00000000 */  nop
    /* 106148 8015ECD8 4502000A */  bc1fl      .L8015ED04_ovl5
    /* 10614C 8015ECDC C48C0004 */   lwc1      $f12, 0x4($a0)
    /* 106150 8015ECE0 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 106154 8015ECE4 8E020000 */  lw         $v0, 0x0($s0)
    /* 106158 8015ECE8 46000086 */  mov.s      $f2, $f0
    /* 10615C 8015ECEC E4CC0000 */  swc1       $f12, 0x0($a2)
    /* 106160 8015ECF0 E4820000 */  swc1       $f2, 0x0($a0)
    /* 106164 8015ECF4 AE0F0000 */  sw         $t7, 0x0($s0)
    /* 106168 8015ECF8 C4C00000 */  lwc1       $f0, 0x0($a2)
    /* 10616C 8015ECFC AC620000 */  sw         $v0, 0x0($v1)
    /* 106170 8015ED00 C48C0004 */  lwc1       $f12, 0x4($a0)
  .L8015ED04_ovl5:
    /* 106174 8015ED04 01078021 */  addu       $s0, $t0, $a3
    /* 106178 8015ED08 01051821 */  addu       $v1, $t0, $a1
    /* 10617C 8015ED0C 4600603C */  c.lt.s     $f12, $f0
    /* 106180 8015ED10 00000000 */  nop
    /* 106184 8015ED14 45020008 */  bc1fl      .L8015ED38_ovl5
    /* 106188 8015ED18 24840008 */   addiu     $a0, $a0, 0x8
    /* 10618C 8015ED1C 8C780004 */  lw         $t8, 0x4($v1)
    /* 106190 8015ED20 8E020000 */  lw         $v0, 0x0($s0)
    /* 106194 8015ED24 E4CC0000 */  swc1       $f12, 0x0($a2)
    /* 106198 8015ED28 AE180000 */  sw         $t8, 0x0($s0)
    /* 10619C 8015ED2C E4800004 */  swc1       $f0, 0x4($a0)
    /* 1061A0 8015ED30 AC620004 */  sw         $v0, 0x4($v1)
    /* 1061A4 8015ED34 24840008 */  addiu      $a0, $a0, 0x8
  .L8015ED38_ovl5:
    /* 1061A8 8015ED38 1489FFE1 */  bne        $a0, $t1, .L8015ECC0_ovl5
    /* 1061AC 8015ED3C 24A50008 */   addiu     $a1, $a1, 0x8
  .L8015ED40_ovl5:
    /* 1061B0 8015ED40 01401825 */  or         $v1, $t2, $zero
    /* 1061B4 8015ED44 154BFFBE */  bne        $t2, $t3, .L8015EC40_ovl5
    /* 1061B8 8015ED48 254A0001 */   addiu     $t2, $t2, 0x1
  .L8015ED4C_ovl5:
    /* 1061BC 8015ED4C 8FB000D0 */  lw         $s0, 0xD0($sp)
    /* 1061C0 8015ED50 8FB100D4 */  lw         $s1, 0xD4($sp)
    /* 1061C4 8015ED54 8FA40168 */  lw         $a0, 0x168($sp)
    /* 1061C8 8015ED58 0C057CC0 */  jal        func_8015F300_ovl5
    /* 1061CC 8015ED5C 02002825 */   or        $a1, $s0, $zero
    /* 1061D0 8015ED60 00409025 */  or         $s2, $v0, $zero
    /* 1061D4 8015ED64 8FA40168 */  lw         $a0, 0x168($sp)
    /* 1061D8 8015ED68 0C057CC0 */  jal        func_8015F300_ovl5
    /* 1061DC 8015ED6C 02202825 */   or        $a1, $s1, $zero
    /* 1061E0 8015ED70 0052082A */  slt        $at, $v0, $s2
    /* 1061E4 8015ED74 14200003 */  bnez       $at, .L8015ED84_ovl5
    /* 1061E8 8015ED78 02201025 */   or        $v0, $s1, $zero
    /* 1061EC 8015ED7C 10000001 */  b          .L8015ED84_ovl5
    /* 1061F0 8015ED80 02001025 */   or        $v0, $s0, $zero
  .L8015ED84_ovl5:
    /* 1061F4 8015ED84 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 1061F8 8015ED88 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1061FC 8015ED8C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 106200 8015ED90 8FB20020 */  lw         $s2, 0x20($sp)
    /* 106204 8015ED94 03E00008 */  jr         $ra
    /* 106208 8015ED98 27BD0168 */   addiu     $sp, $sp, 0x168
endlabel func_8015EAB4_ovl5
.size func_8015EAB4_ovl5, . - func_8015EAB4_ovl5
