nonmatching func_80185A4C_ovl5, 0x1C4

glabel func_80185A4C_ovl5
    /* 12CEBC 80185A4C 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 12CEC0 80185A50 AFB50034 */  sw         $s5, 0x34($sp)
    /* 12CEC4 80185A54 3C158005 */  lui        $s5, %hi(omCurrentObj)
    /* 12CEC8 80185A58 26B5A7C4 */  addiu      $s5, $s5, %lo(omCurrentObj)
    /* 12CECC 80185A5C 8EA20000 */  lw         $v0, 0x0($s5)
    /* 12CED0 80185A60 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 12CED4 80185A64 AFBE0040 */  sw         $fp, 0x40($sp)
    /* 12CED8 80185A68 AFB7003C */  sw         $s7, 0x3C($sp)
    /* 12CEDC 80185A6C AFB60038 */  sw         $s6, 0x38($sp)
    /* 12CEE0 80185A70 AFB40030 */  sw         $s4, 0x30($sp)
    /* 12CEE4 80185A74 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 12CEE8 80185A78 AFB20028 */  sw         $s2, 0x28($sp)
    /* 12CEEC 80185A7C AFB10024 */  sw         $s1, 0x24($sp)
    /* 12CEF0 80185A80 AFB00020 */  sw         $s0, 0x20($sp)
    /* 12CEF4 80185A84 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 12CEF8 80185A88 3C108019 */  lui        $s0, %hi(D_8018EE44_ovl5)
    /* 12CEFC 80185A8C 2610EE44 */  addiu      $s0, $s0, %lo(D_8018EE44_ovl5)
    /* 12CF00 80185A90 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 12CF04 80185A94 000E7880 */  sll        $t7, $t6, 2
    /* 12CF08 80185A98 92140000 */  lbu        $s4, 0x0($s0)
    /* 12CF0C 80185A9C 002F0821 */  addu       $at, $at, $t7
    /* 12CF10 80185AA0 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
    /* 12CF14 80185AA4 8C580000 */  lw         $t8, 0x0($v0)
    /* 12CF18 80185AA8 00808825 */  or         $s1, $a0, $zero
    /* 12CF1C 80185AAC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 12CF20 80185AB0 0018C880 */  sll        $t9, $t8, 2
    /* 12CF24 80185AB4 00992021 */  addu       $a0, $a0, $t9
    /* 12CF28 80185AB8 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 12CF2C 80185ABC 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* 12CF30 80185AC0 0C02C7DA */  jal        setProcessMain
    /* 12CF34 80185AC4 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 12CF38 80185AC8 3C05800B */  lui        $a1, %hi(func_800AD1A0)
    /* 12CF3C 80185ACC 2408000E */  addiu      $t0, $zero, 0xE
    /* 12CF40 80185AD0 AFA80010 */  sw         $t0, 0x10($sp)
    /* 12CF44 80185AD4 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
    /* 12CF48 80185AD8 02202025 */  or         $a0, $s1, $zero
    /* 12CF4C 80185ADC 2406000E */  addiu      $a2, $zero, 0xE
    /* 12CF50 80185AE0 0C00297F */  jal        omLinkGObjDL
    /* 12CF54 80185AE4 3C078000 */   lui       $a3, (0x80000000 >> 16)
    /* 12CF58 80185AE8 3C058019 */  lui        $a1, %hi(D_8018ABA0_ovl5)
    /* 12CF5C 80185AEC 24A5ABA0 */  addiu      $a1, $a1, %lo(D_8018ABA0_ovl5)
    /* 12CF60 80185AF0 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12CF64 80185AF4 02202025 */   or        $a0, $s1, $zero
    /* 12CF68 80185AF8 3C138019 */  lui        $s3, %hi(D_8018A71C_ovl5)
    /* 12CF6C 80185AFC 2673A71C */  addiu      $s3, $s3, %lo(D_8018A71C_ovl5)
    /* 12CF70 80185B00 3C128019 */  lui        $s2, %hi(D_8018ABC0_ovl5)
    /* 12CF74 80185B04 001448C0 */  sll        $t1, $s4, 3
    /* 12CF78 80185B08 2652ABC0 */  addiu      $s2, $s2, %lo(D_8018ABC0_ovl5)
    /* 12CF7C 80185B0C 02691821 */  addu       $v1, $s3, $t1
    /* 12CF80 80185B10 C4660000 */  lwc1       $f6, 0x0($v1)
    /* 12CF84 80185B14 C6440000 */  lwc1       $f4, 0x0($s2)
    /* 12CF88 80185B18 00408825 */  or         $s1, $v0, $zero
    /* 12CF8C 80185B1C 241E000B */  addiu      $fp, $zero, 0xB
    /* 12CF90 80185B20 46062200 */  add.s      $f8, $f4, $f6
    /* 12CF94 80185B24 2417000A */  addiu      $s7, $zero, 0xA
    /* 12CF98 80185B28 24160009 */  addiu      $s6, $zero, 0x9
    /* 12CF9C 80185B2C E4480020 */  swc1       $f8, 0x20($v0)
    /* 12CFA0 80185B30 C4700004 */  lwc1       $f16, 0x4($v1)
    /* 12CFA4 80185B34 C64A0004 */  lwc1       $f10, 0x4($s2)
    /* 12CFA8 80185B38 46105480 */  add.s      $f18, $f10, $f16
    /* 12CFAC 80185B3C E4520024 */  swc1       $f18, 0x24($v0)
    /* 12CFB0 80185B40 92020000 */  lbu        $v0, 0x0($s0)
  .L80185B44_ovl5:
    /* 12CFB4 80185B44 12820022 */  beq        $s4, $v0, .L80185BD0_ovl5
    /* 12CFB8 80185B48 00000000 */   nop
    /* 12CFBC 80185B4C 12C2000B */  beq        $s6, $v0, .L80185B7C_ovl5
    /* 12CFC0 80185B50 0040A025 */   or        $s4, $v0, $zero
    /* 12CFC4 80185B54 52E2000A */  beql       $s7, $v0, .L80185B80_ovl5
    /* 12CFC8 80185B58 00002025 */   or        $a0, $zero, $zero
    /* 12CFCC 80185B5C 13C20007 */  beq        $fp, $v0, .L80185B7C_ovl5
    /* 12CFD0 80185B60 2401000C */   addiu     $at, $zero, 0xC
    /* 12CFD4 80185B64 10410005 */  beq        $v0, $at, .L80185B7C_ovl5
    /* 12CFD8 80185B68 2401000D */   addiu     $at, $zero, 0xD
    /* 12CFDC 80185B6C 10410003 */  beq        $v0, $at, .L80185B7C_ovl5
    /* 12CFE0 80185B70 2401000E */   addiu     $at, $zero, 0xE
    /* 12CFE4 80185B74 14410006 */  bne        $v0, $at, .L80185B90_ovl5
    /* 12CFE8 80185B78 24040001 */   addiu     $a0, $zero, 0x1
  .L80185B7C_ovl5:
    /* 12CFEC 80185B7C 00002025 */  or         $a0, $zero, $zero
  .L80185B80_ovl5:
    /* 12CFF0 80185B80 0C02BEED */  jal        func_800AFBB4
    /* 12CFF4 80185B84 8EA50000 */   lw        $a1, 0x0($s5)
    /* 12CFF8 80185B88 10000011 */  b          .L80185BD0_ovl5
    /* 12CFFC 80185B8C 00000000 */   nop
  .L80185B90_ovl5:
    /* 12D000 80185B90 0C02BEED */  jal        func_800AFBB4
    /* 12D004 80185B94 8EA50000 */   lw        $a1, 0x0($s5)
    /* 12D008 80185B98 920A0000 */  lbu        $t2, 0x0($s0)
    /* 12D00C 80185B9C C6440000 */  lwc1       $f4, 0x0($s2)
    /* 12D010 80185BA0 000A58C0 */  sll        $t3, $t2, 3
    /* 12D014 80185BA4 026B6021 */  addu       $t4, $s3, $t3
    /* 12D018 80185BA8 C5860000 */  lwc1       $f6, 0x0($t4)
    /* 12D01C 80185BAC 46062200 */  add.s      $f8, $f4, $f6
    /* 12D020 80185BB0 E6280020 */  swc1       $f8, 0x20($s1)
    /* 12D024 80185BB4 920D0000 */  lbu        $t5, 0x0($s0)
    /* 12D028 80185BB8 C64A0004 */  lwc1       $f10, 0x4($s2)
    /* 12D02C 80185BBC 000D70C0 */  sll        $t6, $t5, 3
    /* 12D030 80185BC0 026E7821 */  addu       $t7, $s3, $t6
    /* 12D034 80185BC4 C5F00004 */  lwc1       $f16, 0x4($t7)
    /* 12D038 80185BC8 46105480 */  add.s      $f18, $f10, $f16
    /* 12D03C 80185BCC E6320024 */  swc1       $f18, 0x24($s1)
  .L80185BD0_ovl5:
    /* 12D040 80185BD0 0C002DAF */  jal        ohSleep
    /* 12D044 80185BD4 24040001 */   addiu     $a0, $zero, 0x1
    /* 12D048 80185BD8 1000FFDA */  b          .L80185B44_ovl5
    /* 12D04C 80185BDC 92020000 */   lbu       $v0, 0x0($s0)
    /* 12D050 80185BE0 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 12D054 80185BE4 8FB00020 */  lw         $s0, 0x20($sp)
    /* 12D058 80185BE8 8FB10024 */  lw         $s1, 0x24($sp)
    /* 12D05C 80185BEC 8FB20028 */  lw         $s2, 0x28($sp)
    /* 12D060 80185BF0 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 12D064 80185BF4 8FB40030 */  lw         $s4, 0x30($sp)
    /* 12D068 80185BF8 8FB50034 */  lw         $s5, 0x34($sp)
    /* 12D06C 80185BFC 8FB60038 */  lw         $s6, 0x38($sp)
    /* 12D070 80185C00 8FB7003C */  lw         $s7, 0x3C($sp)
    /* 12D074 80185C04 8FBE0040 */  lw         $fp, 0x40($sp)
    /* 12D078 80185C08 03E00008 */  jr         $ra
    /* 12D07C 80185C0C 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_80185A4C_ovl5
.size func_80185A4C_ovl5, . - func_80185A4C_ovl5
