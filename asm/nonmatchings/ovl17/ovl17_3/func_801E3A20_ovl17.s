nonmatching func_801E3A20_ovl17, 0x610

glabel func_801E3A20_ovl17
    /* 22EC10 801E3A20 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 22EC14 801E3A24 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 22EC18 801E3A28 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 22EC1C 801E3A2C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 22EC20 801E3A30 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 22EC24 801E3A34 3C19800E */  lui        $t9, %hi(D_800E1B50)
    /* 22EC28 801E3A38 000FC080 */  sll        $t8, $t7, 2
    /* 22EC2C 801E3A3C 0338C821 */  addu       $t9, $t9, $t8
    /* 22EC30 801E3A40 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
    /* 22EC34 801E3A44 0C068119 */  jal        func_801A0464_ovl7
    /* 22EC38 801E3A48 AFB90050 */   sw        $t9, 0x50($sp)
    /* 22EC3C 801E3A4C 0C0447B3 */  jal        func_80111ECC
    /* 22EC40 801E3A50 00402025 */   or        $a0, $v0, $zero
    /* 22EC44 801E3A54 8FA80050 */  lw         $t0, 0x50($sp)
    /* 22EC48 801E3A58 8D09008C */  lw         $t1, 0x8C($t0)
    /* 22EC4C 801E3A5C 15200003 */  bnez       $t1, .L801E3A6C_ovl17
    /* 22EC50 801E3A60 00000000 */   nop
    /* 22EC54 801E3A64 1000016E */  b          .L801E4020_ovl17
    /* 22EC58 801E3A68 00001025 */   or        $v0, $zero, $zero
  .L801E3A6C_ovl17:
    /* 22EC5C 801E3A6C 0C0442C0 */  jal        func_80110B00
    /* 22EC60 801E3A70 27A4002C */   addiu     $a0, $sp, 0x2C
    /* 22EC64 801E3A74 1040000E */  beqz       $v0, .L801E3AB0_ovl17
    /* 22EC68 801E3A78 3C038005 */   lui       $v1, %hi(omCurrentObj)
    /* 22EC6C 801E3A7C 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* 22EC70 801E3A80 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 22EC74 801E3A84 93AA002E */  lbu        $t2, 0x2E($sp)
    /* 22EC78 801E3A88 3C07800F */  lui        $a3, %hi(D_800E83E0)
    /* 22EC7C 801E3A8C 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 22EC80 801E3A90 24E783E0 */  addiu      $a3, $a3, %lo(D_800E83E0)
    /* 22EC84 801E3A94 000C6880 */  sll        $t5, $t4, 2
    /* 22EC88 801E3A98 00ED7021 */  addu       $t6, $a3, $t5
    /* 22EC8C 801E3A9C ADCA0000 */  sw         $t2, 0x0($t6)
    /* 22EC90 801E3AA0 8FB80050 */  lw         $t8, 0x50($sp)
    /* 22EC94 801E3AA4 93AF002F */  lbu        $t7, 0x2F($sp)
    /* 22EC98 801E3AA8 1000000B */  b          .L801E3AD8_ovl17
    /* 22EC9C 801E3AAC A30F0043 */   sb        $t7, 0x43($t8)
  .L801E3AB0_ovl17:
    /* 22ECA0 801E3AB0 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 22ECA4 801E3AB4 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 22ECA8 801E3AB8 3C07800F */  lui        $a3, %hi(D_800E83E0)
    /* 22ECAC 801E3ABC 24E783E0 */  addiu      $a3, $a3, %lo(D_800E83E0)
    /* 22ECB0 801E3AC0 8F280000 */  lw         $t0, 0x0($t9)
    /* 22ECB4 801E3AC4 00084880 */  sll        $t1, $t0, 2
    /* 22ECB8 801E3AC8 00E95821 */  addu       $t3, $a3, $t1
    /* 22ECBC 801E3ACC AD600000 */  sw         $zero, 0x0($t3)
    /* 22ECC0 801E3AD0 8FAC0050 */  lw         $t4, 0x50($sp)
    /* 22ECC4 801E3AD4 A1800043 */  sb         $zero, 0x43($t4)
  .L801E3AD8_ovl17:
    /* 22ECC8 801E3AD8 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 22ECCC 801E3ADC 24060001 */  addiu      $a2, $zero, 0x1
    /* 22ECD0 801E3AE0 24010002 */  addiu      $at, $zero, 0x2
    /* 22ECD4 801E3AE4 8C620000 */  lw         $v0, 0x0($v1)
    /* 22ECD8 801E3AE8 00022880 */  sll        $a1, $v0, 2
    /* 22ECDC 801E3AEC 00E56821 */  addu       $t5, $a3, $a1
    /* 22ECE0 801E3AF0 8DA40000 */  lw         $a0, 0x0($t5)
    /* 22ECE4 801E3AF4 10860110 */  beq        $a0, $a2, .L801E3F38_ovl17
    /* 22ECE8 801E3AF8 00000000 */   nop
    /* 22ECEC 801E3AFC 14810133 */  bne        $a0, $at, .L801E3FCC_ovl17
    /* 22ECF0 801E3B00 3C01800E */   lui       $at, %hi(D_800E7CE0)
    /* 22ECF4 801E3B04 00250821 */  addu       $at, $at, $a1
    /* 22ECF8 801E3B08 AC267CE0 */  sw         $a2, %lo(D_800E7CE0)($at)
    /* 22ECFC 801E3B0C 0C029D9E */  jal        play_sound
    /* 22ED00 801E3B10 240401BD */   addiu     $a0, $zero, 0x1BD
    /* 22ED04 801E3B14 8FA20038 */  lw         $v0, 0x38($sp)
    /* 22ED08 801E3B18 24060001 */  addiu      $a2, $zero, 0x1
    /* 22ED0C 801E3B1C 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 22ED10 801E3B20 10400004 */  beqz       $v0, .L801E3B34_ovl17
    /* 22ED14 801E3B24 00025080 */   sll       $t2, $v0, 2
    /* 22ED18 801E3B28 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 22ED1C 801E3B2C 002A0821 */  addu       $at, $at, $t2
    /* 22ED20 801E3B30 AC2698E0 */  sw         $a2, %lo(D_800E98E0)($at)
  .L801E3B34_ovl17:
    /* 22ED24 801E3B34 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 22ED28 801E3B38 3C04800E */  lui        $a0, %hi(D_800E7880)
    /* 22ED2C 801E3B3C 24847880 */  addiu      $a0, $a0, %lo(D_800E7880)
    /* 22ED30 801E3B40 8C620000 */  lw         $v0, 0x0($v1)
    /* 22ED34 801E3B44 3C0D800E */  lui        $t5, %hi(D_800E0D50)
    /* 22ED38 801E3B48 3C08800E */  lui        $t0, %hi(D_800E0D50)
    /* 22ED3C 801E3B4C 00827021 */  addu       $t6, $a0, $v0
    /* 22ED40 801E3B50 91CF0000 */  lbu        $t7, 0x0($t6)
    /* 22ED44 801E3B54 00026080 */  sll        $t4, $v0, 2
    /* 22ED48 801E3B58 01AC6821 */  addu       $t5, $t5, $t4
    /* 22ED4C 801E3B5C 15E00009 */  bnez       $t7, .L801E3B84_ovl17
    /* 22ED50 801E3B60 0002C880 */   sll       $t9, $v0, 2
    /* 22ED54 801E3B64 01194021 */  addu       $t0, $t0, $t9
    /* 22ED58 801E3B68 8D080D50 */  lw         $t0, %lo(D_800E0D50)($t0)
    /* 22ED5C 801E3B6C 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 22ED60 801E3B70 24180003 */  addiu      $t8, $zero, 0x3
    /* 22ED64 801E3B74 00084880 */  sll        $t1, $t0, 2
    /* 22ED68 801E3B78 00290821 */  addu       $at, $at, $t1
    /* 22ED6C 801E3B7C 10000007 */  b          .L801E3B9C_ovl17
    /* 22ED70 801E3B80 AC389C60 */   sw        $t8, %lo(D_800E9C60)($at)
  .L801E3B84_ovl17:
    /* 22ED74 801E3B84 8DAD0D50 */  lw         $t5, %lo(D_800E0D50)($t5)
    /* 22ED78 801E3B88 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* 22ED7C 801E3B8C 240B0003 */  addiu      $t3, $zero, 0x3
    /* 22ED80 801E3B90 000D5080 */  sll        $t2, $t5, 2
    /* 22ED84 801E3B94 002A0821 */  addu       $at, $at, $t2
    /* 22ED88 801E3B98 AC2B9E20 */  sw         $t3, %lo(D_800E9E20)($at)
  .L801E3B9C_ovl17:
    /* 22ED8C 801E3B9C 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 22ED90 801E3BA0 008E7821 */  addu       $t7, $a0, $t6
    /* 22ED94 801E3BA4 91F90000 */  lbu        $t9, 0x0($t7)
    /* 22ED98 801E3BA8 17200072 */  bnez       $t9, .L801E3D74_ovl17
    /* 22ED9C 801E3BAC 00000000 */   nop
    /* 22EDA0 801E3BB0 0C006291 */  jal        random_soft_s32_range
    /* 22EDA4 801E3BB4 24040002 */   addiu     $a0, $zero, 0x2
    /* 22EDA8 801E3BB8 10400013 */  beqz       $v0, .L801E3C08_ovl17
    /* 22EDAC 801E3BBC 3C0A8005 */   lui       $t2, %hi(omCurrentObj)
    /* 22EDB0 801E3BC0 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 22EDB4 801E3BC4 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 22EDB8 801E3BC8 3C0C800E */  lui        $t4, %hi(D_800E0D50)
    /* 22EDBC 801E3BCC 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
    /* 22EDC0 801E3BD0 8D180000 */  lw         $t8, 0x0($t0)
    /* 22EDC4 801E3BD4 24040006 */  addiu      $a0, $zero, 0x6
    /* 22EDC8 801E3BD8 24050003 */  addiu      $a1, $zero, 0x3
    /* 22EDCC 801E3BDC 00184880 */  sll        $t1, $t8, 2
    /* 22EDD0 801E3BE0 01896021 */  addu       $t4, $t4, $t1
    /* 22EDD4 801E3BE4 8D8C0D50 */  lw         $t4, %lo(D_800E0D50)($t4)
    /* 22EDD8 801E3BE8 24060002 */  addiu      $a2, $zero, 0x2
    /* 22EDDC 801E3BEC 000C6880 */  sll        $t5, $t4, 2
    /* 22EDE0 801E3BF0 016D5821 */  addu       $t3, $t3, $t5
    /* 22EDE4 801E3BF4 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
    /* 22EDE8 801E3BF8 0C02A040 */  jal        func_800A8100
    /* 22EDEC 801E3BFC 8D670014 */   lw        $a3, 0x14($t3)
    /* 22EDF0 801E3C00 10000010 */  b          .L801E3C44_ovl17
    /* 22EDF4 801E3C04 00000000 */   nop
  .L801E3C08_ovl17:
    /* 22EDF8 801E3C08 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* 22EDFC 801E3C0C 3C19800E */  lui        $t9, %hi(D_800E0D50)
    /* 22EE00 801E3C10 3C18800E */  lui        $t8, %hi(D_800DFBD0)
    /* 22EE04 801E3C14 8D4E0000 */  lw         $t6, 0x0($t2)
    /* 22EE08 801E3C18 24040006 */  addiu      $a0, $zero, 0x6
    /* 22EE0C 801E3C1C 24050003 */  addiu      $a1, $zero, 0x3
    /* 22EE10 801E3C20 000E7880 */  sll        $t7, $t6, 2
    /* 22EE14 801E3C24 032FC821 */  addu       $t9, $t9, $t7
    /* 22EE18 801E3C28 8F390D50 */  lw         $t9, %lo(D_800E0D50)($t9)
    /* 22EE1C 801E3C2C 24060002 */  addiu      $a2, $zero, 0x2
    /* 22EE20 801E3C30 00194080 */  sll        $t0, $t9, 2
    /* 22EE24 801E3C34 0308C021 */  addu       $t8, $t8, $t0
    /* 22EE28 801E3C38 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
    /* 22EE2C 801E3C3C 0C02A040 */  jal        func_800A8100
    /* 22EE30 801E3C40 8F070018 */   lw        $a3, 0x18($t8)
  .L801E3C44_ovl17:
    /* 22EE34 801E3C44 0C006291 */  jal        random_soft_s32_range
    /* 22EE38 801E3C48 24040002 */   addiu     $a0, $zero, 0x2
    /* 22EE3C 801E3C4C 10400013 */  beqz       $v0, .L801E3C9C_ovl17
    /* 22EE40 801E3C50 3C0F8005 */   lui       $t7, %hi(omCurrentObj)
    /* 22EE44 801E3C54 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 22EE48 801E3C58 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 22EE4C 801E3C5C 3C0B800E */  lui        $t3, %hi(D_800E0D50)
    /* 22EE50 801E3C60 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
    /* 22EE54 801E3C64 8D2C0000 */  lw         $t4, 0x0($t1)
    /* 22EE58 801E3C68 24040006 */  addiu      $a0, $zero, 0x6
    /* 22EE5C 801E3C6C 24050003 */  addiu      $a1, $zero, 0x3
    /* 22EE60 801E3C70 000C6880 */  sll        $t5, $t4, 2
    /* 22EE64 801E3C74 016D5821 */  addu       $t3, $t3, $t5
    /* 22EE68 801E3C78 8D6B0D50 */  lw         $t3, %lo(D_800E0D50)($t3)
    /* 22EE6C 801E3C7C 24060002 */  addiu      $a2, $zero, 0x2
    /* 22EE70 801E3C80 000B5080 */  sll        $t2, $t3, 2
    /* 22EE74 801E3C84 01CA7021 */  addu       $t6, $t6, $t2
    /* 22EE78 801E3C88 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
    /* 22EE7C 801E3C8C 0C02A040 */  jal        func_800A8100
    /* 22EE80 801E3C90 8DC70020 */   lw        $a3, 0x20($t6)
    /* 22EE84 801E3C94 10000010 */  b          .L801E3CD8_ovl17
    /* 22EE88 801E3C98 00000000 */   nop
  .L801E3C9C_ovl17:
    /* 22EE8C 801E3C9C 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 22EE90 801E3CA0 3C18800E */  lui        $t8, %hi(D_800E0D50)
    /* 22EE94 801E3CA4 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
    /* 22EE98 801E3CA8 8DF90000 */  lw         $t9, 0x0($t7)
    /* 22EE9C 801E3CAC 24040006 */  addiu      $a0, $zero, 0x6
    /* 22EEA0 801E3CB0 24050003 */  addiu      $a1, $zero, 0x3
    /* 22EEA4 801E3CB4 00194080 */  sll        $t0, $t9, 2
    /* 22EEA8 801E3CB8 0308C021 */  addu       $t8, $t8, $t0
    /* 22EEAC 801E3CBC 8F180D50 */  lw         $t8, %lo(D_800E0D50)($t8)
    /* 22EEB0 801E3CC0 24060002 */  addiu      $a2, $zero, 0x2
    /* 22EEB4 801E3CC4 00184880 */  sll        $t1, $t8, 2
    /* 22EEB8 801E3CC8 01896021 */  addu       $t4, $t4, $t1
    /* 22EEBC 801E3CCC 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
    /* 22EEC0 801E3CD0 0C02A040 */  jal        func_800A8100
    /* 22EEC4 801E3CD4 8D870024 */   lw        $a3, 0x24($t4)
  .L801E3CD8_ovl17:
    /* 22EEC8 801E3CD8 0C006291 */  jal        random_soft_s32_range
    /* 22EECC 801E3CDC 24040002 */   addiu     $a0, $zero, 0x2
    /* 22EED0 801E3CE0 10400013 */  beqz       $v0, .L801E3D30_ovl17
    /* 22EED4 801E3CE4 3C088005 */   lui       $t0, %hi(omCurrentObj)
    /* 22EED8 801E3CE8 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 22EEDC 801E3CEC 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 22EEE0 801E3CF0 3C0E800E */  lui        $t6, %hi(D_800E0D50)
    /* 22EEE4 801E3CF4 3C19800E */  lui        $t9, %hi(D_800DFBD0)
    /* 22EEE8 801E3CF8 8DAB0000 */  lw         $t3, 0x0($t5)
    /* 22EEEC 801E3CFC 24040006 */  addiu      $a0, $zero, 0x6
    /* 22EEF0 801E3D00 24050003 */  addiu      $a1, $zero, 0x3
    /* 22EEF4 801E3D04 000B5080 */  sll        $t2, $t3, 2
    /* 22EEF8 801E3D08 01CA7021 */  addu       $t6, $t6, $t2
    /* 22EEFC 801E3D0C 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
    /* 22EF00 801E3D10 24060002 */  addiu      $a2, $zero, 0x2
    /* 22EF04 801E3D14 000E7880 */  sll        $t7, $t6, 2
    /* 22EF08 801E3D18 032FC821 */  addu       $t9, $t9, $t7
    /* 22EF0C 801E3D1C 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
    /* 22EF10 801E3D20 0C02A040 */  jal        func_800A8100
    /* 22EF14 801E3D24 8F27002C */   lw        $a3, 0x2C($t9)
    /* 22EF18 801E3D28 100000BD */  b          .L801E4020_ovl17
    /* 22EF1C 801E3D2C 24020001 */   addiu     $v0, $zero, 0x1
  .L801E3D30_ovl17:
    /* 22EF20 801E3D30 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 22EF24 801E3D34 3C0C800E */  lui        $t4, %hi(D_800E0D50)
    /* 22EF28 801E3D38 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
    /* 22EF2C 801E3D3C 8D180000 */  lw         $t8, 0x0($t0)
    /* 22EF30 801E3D40 24040006 */  addiu      $a0, $zero, 0x6
    /* 22EF34 801E3D44 24050003 */  addiu      $a1, $zero, 0x3
    /* 22EF38 801E3D48 00184880 */  sll        $t1, $t8, 2
    /* 22EF3C 801E3D4C 01896021 */  addu       $t4, $t4, $t1
    /* 22EF40 801E3D50 8D8C0D50 */  lw         $t4, %lo(D_800E0D50)($t4)
    /* 22EF44 801E3D54 24060002 */  addiu      $a2, $zero, 0x2
    /* 22EF48 801E3D58 000C6880 */  sll        $t5, $t4, 2
    /* 22EF4C 801E3D5C 016D5821 */  addu       $t3, $t3, $t5
    /* 22EF50 801E3D60 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
    /* 22EF54 801E3D64 0C02A040 */  jal        func_800A8100
    /* 22EF58 801E3D68 8D670030 */   lw        $a3, 0x30($t3)
    /* 22EF5C 801E3D6C 100000AC */  b          .L801E4020_ovl17
    /* 22EF60 801E3D70 24020001 */   addiu     $v0, $zero, 0x1
  .L801E3D74_ovl17:
    /* 22EF64 801E3D74 0C006291 */  jal        random_soft_s32_range
    /* 22EF68 801E3D78 24040002 */   addiu     $a0, $zero, 0x2
    /* 22EF6C 801E3D7C 10400013 */  beqz       $v0, .L801E3DCC_ovl17
    /* 22EF70 801E3D80 3C098005 */   lui       $t1, %hi(omCurrentObj)
    /* 22EF74 801E3D84 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* 22EF78 801E3D88 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* 22EF7C 801E3D8C 3C19800E */  lui        $t9, %hi(D_800E0D50)
    /* 22EF80 801E3D90 3C18800E */  lui        $t8, %hi(D_800DFBD0)
    /* 22EF84 801E3D94 8D4E0000 */  lw         $t6, 0x0($t2)
    /* 22EF88 801E3D98 24040006 */  addiu      $a0, $zero, 0x6
    /* 22EF8C 801E3D9C 24050003 */  addiu      $a1, $zero, 0x3
    /* 22EF90 801E3DA0 000E7880 */  sll        $t7, $t6, 2
    /* 22EF94 801E3DA4 032FC821 */  addu       $t9, $t9, $t7
    /* 22EF98 801E3DA8 8F390D50 */  lw         $t9, %lo(D_800E0D50)($t9)
    /* 22EF9C 801E3DAC 24060002 */  addiu      $a2, $zero, 0x2
    /* 22EFA0 801E3DB0 00194080 */  sll        $t0, $t9, 2
    /* 22EFA4 801E3DB4 0308C021 */  addu       $t8, $t8, $t0
    /* 22EFA8 801E3DB8 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
    /* 22EFAC 801E3DBC 0C02A040 */  jal        func_800A8100
    /* 22EFB0 801E3DC0 8F070040 */   lw        $a3, 0x40($t8)
    /* 22EFB4 801E3DC4 10000010 */  b          .L801E3E08_ovl17
    /* 22EFB8 801E3DC8 00000000 */   nop
  .L801E3DCC_ovl17:
    /* 22EFBC 801E3DCC 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 22EFC0 801E3DD0 3C0B800E */  lui        $t3, %hi(D_800E0D50)
    /* 22EFC4 801E3DD4 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
    /* 22EFC8 801E3DD8 8D2C0000 */  lw         $t4, 0x0($t1)
    /* 22EFCC 801E3DDC 24040006 */  addiu      $a0, $zero, 0x6
    /* 22EFD0 801E3DE0 24050003 */  addiu      $a1, $zero, 0x3
    /* 22EFD4 801E3DE4 000C6880 */  sll        $t5, $t4, 2
    /* 22EFD8 801E3DE8 016D5821 */  addu       $t3, $t3, $t5
    /* 22EFDC 801E3DEC 8D6B0D50 */  lw         $t3, %lo(D_800E0D50)($t3)
    /* 22EFE0 801E3DF0 24060002 */  addiu      $a2, $zero, 0x2
    /* 22EFE4 801E3DF4 000B5080 */  sll        $t2, $t3, 2
    /* 22EFE8 801E3DF8 01CA7021 */  addu       $t6, $t6, $t2
    /* 22EFEC 801E3DFC 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
    /* 22EFF0 801E3E00 0C02A040 */  jal        func_800A8100
    /* 22EFF4 801E3E04 8DC70044 */   lw        $a3, 0x44($t6)
  .L801E3E08_ovl17:
    /* 22EFF8 801E3E08 0C006291 */  jal        random_soft_s32_range
    /* 22EFFC 801E3E0C 24040002 */   addiu     $a0, $zero, 0x2
    /* 22F000 801E3E10 10400013 */  beqz       $v0, .L801E3E60_ovl17
    /* 22F004 801E3E14 3C0D8005 */   lui       $t5, %hi(omCurrentObj)
    /* 22F008 801E3E18 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* 22F00C 801E3E1C 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 22F010 801E3E20 3C18800E */  lui        $t8, %hi(D_800E0D50)
    /* 22F014 801E3E24 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
    /* 22F018 801E3E28 8DF90000 */  lw         $t9, 0x0($t7)
    /* 22F01C 801E3E2C 24040006 */  addiu      $a0, $zero, 0x6
    /* 22F020 801E3E30 24050003 */  addiu      $a1, $zero, 0x3
    /* 22F024 801E3E34 00194080 */  sll        $t0, $t9, 2
    /* 22F028 801E3E38 0308C021 */  addu       $t8, $t8, $t0
    /* 22F02C 801E3E3C 8F180D50 */  lw         $t8, %lo(D_800E0D50)($t8)
    /* 22F030 801E3E40 24060002 */  addiu      $a2, $zero, 0x2
    /* 22F034 801E3E44 00184880 */  sll        $t1, $t8, 2
    /* 22F038 801E3E48 01896021 */  addu       $t4, $t4, $t1
    /* 22F03C 801E3E4C 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
    /* 22F040 801E3E50 0C02A040 */  jal        func_800A8100
    /* 22F044 801E3E54 8D87004C */   lw        $a3, 0x4C($t4)
    /* 22F048 801E3E58 10000010 */  b          .L801E3E9C_ovl17
    /* 22F04C 801E3E5C 00000000 */   nop
  .L801E3E60_ovl17:
    /* 22F050 801E3E60 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 22F054 801E3E64 3C0E800E */  lui        $t6, %hi(D_800E0D50)
    /* 22F058 801E3E68 3C19800E */  lui        $t9, %hi(D_800DFBD0)
    /* 22F05C 801E3E6C 8DAB0000 */  lw         $t3, 0x0($t5)
    /* 22F060 801E3E70 24040006 */  addiu      $a0, $zero, 0x6
    /* 22F064 801E3E74 24050003 */  addiu      $a1, $zero, 0x3
    /* 22F068 801E3E78 000B5080 */  sll        $t2, $t3, 2
    /* 22F06C 801E3E7C 01CA7021 */  addu       $t6, $t6, $t2
    /* 22F070 801E3E80 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
    /* 22F074 801E3E84 24060002 */  addiu      $a2, $zero, 0x2
    /* 22F078 801E3E88 000E7880 */  sll        $t7, $t6, 2
    /* 22F07C 801E3E8C 032FC821 */  addu       $t9, $t9, $t7
    /* 22F080 801E3E90 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
    /* 22F084 801E3E94 0C02A040 */  jal        func_800A8100
    /* 22F088 801E3E98 8F270050 */   lw        $a3, 0x50($t9)
  .L801E3E9C_ovl17:
    /* 22F08C 801E3E9C 0C006291 */  jal        random_soft_s32_range
    /* 22F090 801E3EA0 24040002 */   addiu     $a0, $zero, 0x2
    /* 22F094 801E3EA4 10400013 */  beqz       $v0, .L801E3EF4_ovl17
    /* 22F098 801E3EA8 3C0A8005 */   lui       $t2, %hi(omCurrentObj)
    /* 22F09C 801E3EAC 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 22F0A0 801E3EB0 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 22F0A4 801E3EB4 3C0C800E */  lui        $t4, %hi(D_800E0D50)
    /* 22F0A8 801E3EB8 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
    /* 22F0AC 801E3EBC 8D180000 */  lw         $t8, 0x0($t0)
    /* 22F0B0 801E3EC0 24040006 */  addiu      $a0, $zero, 0x6
    /* 22F0B4 801E3EC4 24050003 */  addiu      $a1, $zero, 0x3
    /* 22F0B8 801E3EC8 00184880 */  sll        $t1, $t8, 2
    /* 22F0BC 801E3ECC 01896021 */  addu       $t4, $t4, $t1
    /* 22F0C0 801E3ED0 8D8C0D50 */  lw         $t4, %lo(D_800E0D50)($t4)
    /* 22F0C4 801E3ED4 24060002 */  addiu      $a2, $zero, 0x2
    /* 22F0C8 801E3ED8 000C6880 */  sll        $t5, $t4, 2
    /* 22F0CC 801E3EDC 016D5821 */  addu       $t3, $t3, $t5
    /* 22F0D0 801E3EE0 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
    /* 22F0D4 801E3EE4 0C02A040 */  jal        func_800A8100
    /* 22F0D8 801E3EE8 8D670058 */   lw        $a3, 0x58($t3)
    /* 22F0DC 801E3EEC 1000004C */  b          .L801E4020_ovl17
    /* 22F0E0 801E3EF0 24020001 */   addiu     $v0, $zero, 0x1
  .L801E3EF4_ovl17:
    /* 22F0E4 801E3EF4 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* 22F0E8 801E3EF8 3C19800E */  lui        $t9, %hi(D_800E0D50)
    /* 22F0EC 801E3EFC 3C18800E */  lui        $t8, %hi(D_800DFBD0)
    /* 22F0F0 801E3F00 8D4E0000 */  lw         $t6, 0x0($t2)
    /* 22F0F4 801E3F04 24040006 */  addiu      $a0, $zero, 0x6
    /* 22F0F8 801E3F08 24050003 */  addiu      $a1, $zero, 0x3
    /* 22F0FC 801E3F0C 000E7880 */  sll        $t7, $t6, 2
    /* 22F100 801E3F10 032FC821 */  addu       $t9, $t9, $t7
    /* 22F104 801E3F14 8F390D50 */  lw         $t9, %lo(D_800E0D50)($t9)
    /* 22F108 801E3F18 24060002 */  addiu      $a2, $zero, 0x2
    /* 22F10C 801E3F1C 00194080 */  sll        $t0, $t9, 2
    /* 22F110 801E3F20 0308C021 */  addu       $t8, $t8, $t0
    /* 22F114 801E3F24 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
    /* 22F118 801E3F28 0C02A040 */  jal        func_800A8100
    /* 22F11C 801E3F2C 8F07005C */   lw        $a3, 0x5C($t8)
    /* 22F120 801E3F30 1000003B */  b          .L801E4020_ovl17
    /* 22F124 801E3F34 24020001 */   addiu     $v0, $zero, 0x1
  .L801E3F38_ovl17:
    /* 22F128 801E3F38 3C04800E */  lui        $a0, %hi(D_800E7880)
    /* 22F12C 801E3F3C 24847880 */  addiu      $a0, $a0, %lo(D_800E7880)
    /* 22F130 801E3F40 00824821 */  addu       $t1, $a0, $v0
    /* 22F134 801E3F44 912C0000 */  lbu        $t4, 0x0($t1)
    /* 22F138 801E3F48 3C0A800E */  lui        $t2, %hi(D_800E0D50)
    /* 22F13C 801E3F4C 01455021 */  addu       $t2, $t2, $a1
    /* 22F140 801E3F50 15800009 */  bnez       $t4, .L801E3F78_ovl17
    /* 22F144 801E3F54 3C04800E */   lui       $a0, %hi(gEntityGObjProcessArray)
    /* 22F148 801E3F58 3C0D800E */  lui        $t5, %hi(D_800E0D50)
    /* 22F14C 801E3F5C 01A56821 */  addu       $t5, $t5, $a1
    /* 22F150 801E3F60 8DAD0D50 */  lw         $t5, %lo(D_800E0D50)($t5)
    /* 22F154 801E3F64 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 22F158 801E3F68 000D5880 */  sll        $t3, $t5, 2
    /* 22F15C 801E3F6C 002B0821 */  addu       $at, $at, $t3
    /* 22F160 801E3F70 10000006 */  b          .L801E3F8C_ovl17
    /* 22F164 801E3F74 AC269C60 */   sw        $a2, %lo(D_800E9C60)($at)
  .L801E3F78_ovl17:
    /* 22F168 801E3F78 8D4A0D50 */  lw         $t2, %lo(D_800E0D50)($t2)
    /* 22F16C 801E3F7C 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* 22F170 801E3F80 000A7080 */  sll        $t6, $t2, 2
    /* 22F174 801E3F84 002E0821 */  addu       $at, $at, $t6
    /* 22F178 801E3F88 AC269E20 */  sw         $a2, %lo(D_800E9E20)($at)
  .L801E3F8C_ovl17:
    /* 22F17C 801E3F8C 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 22F180 801E3F90 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
    /* 22F184 801E3F94 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
    /* 22F188 801E3F98 000FC880 */  sll        $t9, $t7, 2
    /* 22F18C 801E3F9C 00992021 */  addu       $a0, $a0, $t9
    /* 22F190 801E3FA0 0C02C7B2 */  jal        assign_new_process_entry
    /* 22F194 801E3FA4 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 22F198 801E3FA8 8FA20038 */  lw         $v0, 0x38($sp)
    /* 22F19C 801E3FAC 24060001 */  addiu      $a2, $zero, 0x1
    /* 22F1A0 801E3FB0 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 22F1A4 801E3FB4 10400003 */  beqz       $v0, .L801E3FC4_ovl17
    /* 22F1A8 801E3FB8 00024080 */   sll       $t0, $v0, 2
    /* 22F1AC 801E3FBC 00280821 */  addu       $at, $at, $t0
    /* 22F1B0 801E3FC0 AC2698E0 */  sw         $a2, %lo(D_800E98E0)($at)
  .L801E3FC4_ovl17:
    /* 22F1B4 801E3FC4 10000016 */  b          .L801E4020_ovl17
    /* 22F1B8 801E3FC8 24020001 */   addiu     $v0, $zero, 0x1
  .L801E3FCC_ovl17:
    /* 22F1BC 801E3FCC 3C04800E */  lui        $a0, %hi(D_800E7880)
    /* 22F1C0 801E3FD0 24847880 */  addiu      $a0, $a0, %lo(D_800E7880)
    /* 22F1C4 801E3FD4 0082C021 */  addu       $t8, $a0, $v0
    /* 22F1C8 801E3FD8 93090000 */  lbu        $t1, 0x0($t8)
    /* 22F1CC 801E3FDC 3C0B800E */  lui        $t3, %hi(D_800E0D50)
    /* 22F1D0 801E3FE0 01655821 */  addu       $t3, $t3, $a1
    /* 22F1D4 801E3FE4 15200009 */  bnez       $t1, .L801E400C_ovl17
    /* 22F1D8 801E3FE8 00001025 */   or        $v0, $zero, $zero
    /* 22F1DC 801E3FEC 3C0C800E */  lui        $t4, %hi(D_800E0D50)
    /* 22F1E0 801E3FF0 01856021 */  addu       $t4, $t4, $a1
    /* 22F1E4 801E3FF4 8D8C0D50 */  lw         $t4, %lo(D_800E0D50)($t4)
    /* 22F1E8 801E3FF8 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 22F1EC 801E3FFC 000C6880 */  sll        $t5, $t4, 2
    /* 22F1F0 801E4000 002D0821 */  addu       $at, $at, $t5
    /* 22F1F4 801E4004 10000006 */  b          .L801E4020_ovl17
    /* 22F1F8 801E4008 AC209C60 */   sw        $zero, %lo(D_800E9C60)($at)
  .L801E400C_ovl17:
    /* 22F1FC 801E400C 8D6B0D50 */  lw         $t3, %lo(D_800E0D50)($t3)
    /* 22F200 801E4010 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* 22F204 801E4014 000B5080 */  sll        $t2, $t3, 2
    /* 22F208 801E4018 002A0821 */  addu       $at, $at, $t2
    /* 22F20C 801E401C AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
  .L801E4020_ovl17:
    /* 22F210 801E4020 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 22F214 801E4024 27BD0058 */  addiu      $sp, $sp, 0x58
    /* 22F218 801E4028 03E00008 */  jr         $ra
    /* 22F21C 801E402C 00000000 */   nop
endlabel func_801E3A20_ovl17
.size func_801E3A20_ovl17, . - func_801E3A20_ovl17
