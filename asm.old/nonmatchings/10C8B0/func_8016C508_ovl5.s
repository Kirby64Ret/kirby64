glabel func_8016C508_ovl5
/* 113978 8016C508 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 11397C 8016C50C AFB60040 */  sw         $s6, 0x40($sp)
glabel func_8016C510_ovl3
/* 113980 8016C510 3C168005 */  lui        $s6, %hi(D_8004A7C4)
/* 113984 8016C514 26D6A7C4 */  addiu      $s6, $s6, %lo(D_8004A7C4)
/* 113988 8016C518 8EC20000 */  lw         $v0, 0x0($s6)
/* 11398C 8016C51C AFBF004C */  sw         $ra, 0x4C($sp)
/* 113990 8016C520 AFBE0048 */  sw         $fp, 0x48($sp)
/* 113994 8016C524 AFB70044 */  sw         $s7, 0x44($sp)
/* 113998 8016C528 AFB5003C */  sw         $s5, 0x3C($sp)
/* 11399C 8016C52C AFB40038 */  sw         $s4, 0x38($sp)
/* 1139A0 8016C530 AFB30034 */  sw         $s3, 0x34($sp)
/* 1139A4 8016C534 AFB20030 */  sw         $s2, 0x30($sp)
/* 1139A8 8016C538 AFB1002C */  sw         $s1, 0x2C($sp)
/* 1139AC 8016C53C AFB00028 */  sw         $s0, 0x28($sp)
/* 1139B0 8016C540 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 1139B4 8016C544 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 1139B8 8016C548 AFA40050 */  sw         $a0, 0x50($sp)
/* 1139BC 8016C54C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1139C0 8016C550 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1139C4 8016C554 00A0F025 */  or         $fp, $a1, $zero
glabel func_8016C558_ovl3
/* 1139C8 8016C558 000E7880 */  sll        $t7, $t6, 2
/* 1139CC 8016C55C 002F0821 */  addu       $at, $at, $t7
/* 1139D0 8016C560 AC2598E0 */  sw         $a1, %lo(D_800E98E0)($at)
/* 1139D4 8016C564 8C580000 */  lw         $t8, 0x0($v0)
/* 1139D8 8016C568 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 1139DC 8016C56C 3C088017 */  lui        $t0, %hi(func_8016C8C0_ovl5)
/* 1139E0 8016C570 0018C880 */  sll        $t9, $t8, 2
/* 1139E4 8016C574 00390821 */  addu       $at, $at, $t9
/* 1139E8 8016C578 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
/* 1139EC 8016C57C 8C490000 */  lw         $t1, 0x0($v0)
/* 1139F0 8016C580 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1139F4 8016C584 2508C8C0 */  addiu      $t0, $t0, %lo(func_8016C8C0_ovl5)
/* 1139F8 8016C588 00095080 */  sll        $t2, $t1, 2
.L8016C58C_ovl3:
/* 1139FC 8016C58C 002A0821 */  addu       $at, $at, $t2
/* 113A00 8016C590 3C050001 */  lui        $a1, (0x1869F >> 16)
/* 113A04 8016C594 3C048018 */  lui        $a0, %hi(D_8018737C_ovl5)
/* 113A08 8016C598 AC28F150 */  sw         $t0, %lo(D_800DF150)($at)
/* 113A0C 8016C59C 8C84737C */  lw         $a0, %lo(D_8018737C_ovl5)($a0)
/* 113A10 8016C5A0 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
.L8016C5A4_ovl3:
/* 113A14 8016C5A4 0C02A619 */  jal        func_800A9864
/* 113A18 8016C5A8 24060010 */   addiu     $a2, $zero, 0x10
/* 113A1C 8016C5AC 449E2000 */  mtc1       $fp, $f4
/* 113A20 8016C5B0 3C158018 */  lui        $s5, %hi(D_80187380_ovl5)
/* 113A24 8016C5B4 26B57380 */  addiu      $s5, $s5, %lo(D_80187380_ovl5)
/* 113A28 8016C5B8 46802520 */  cvt.s.w    $f20, $f4
/* 113A2C 8016C5BC 8EA40000 */  lw         $a0, 0x0($s5)
/* 113A30 8016C5C0 4405A000 */  mfc1       $a1, $f20
/* 113A34 8016C5C4 0C02A7E6 */  jal        func_800A9F98
/* 113A38 8016C5C8 00000000 */   nop
/* 113A3C 8016C5CC 4480B000 */  mtc1       $zero, $f22
/* 113A40 8016C5D0 0C02BB30 */  jal        func_800AECC0
/* 113A44 8016C5D4 4600B306 */   mov.s     $f12, $f22
/* 113A48 8016C5D8 0C02BB48 */  jal        func_800AED20
/* 113A4C 8016C5DC 4600B306 */   mov.s     $f12, $f22
/* 113A50 8016C5E0 3C138019 */  lui        $s3, %hi(func_8018E3B0_ovl5 + 0x70)
/* 113A54 8016C5E4 2673E420 */  addiu      $s3, $s3, %lo(func_8018E3B0_ovl5 + 0x70)
/* 113A58 8016C5E8 8E620000 */  lw         $v0, 0x0($s3)
.L8016C5EC_ovl3:
/* 113A5C 8016C5EC 1040004A */  beqz       $v0, .L8016C718_ovl5
/* 113A60 8016C5F0 00000000 */   nop
/* 113A64 8016C5F4 10400045 */  beqz       $v0, .L8016C70C_ovl5
/* 113A68 8016C5F8 00009025 */   or        $s2, $zero, $zero
/* 113A6C 8016C5FC 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 113A70 8016C600 4481B000 */  mtc1       $at, $f22
/* 113A74 8016C604 24140005 */  addiu      $s4, $zero, 0x5
/* 113A78 8016C608 26520001 */  addiu      $s2, $s2, 0x1
.L8016C60C_ovl5:
/* 113A7C 8016C60C 0254001A */  div        $zero, $s2, $s4
/* 113A80 8016C610 00005810 */  mfhi       $t3
/* 113A84 8016C614 16800002 */  bnez       $s4, .L8016C620_ovl5
/* 113A88 8016C618 00000000 */   nop
/* 113A8C 8016C61C 0007000D */  break      7
.L8016C620_ovl5:
/* 113A90 8016C620 2401FFFF */  addiu      $at, $zero, -0x1
/* 113A94 8016C624 16810004 */  bne        $s4, $at, .L8016C638_ovl5
/* 113A98 8016C628 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 113A9C 8016C62C 16410002 */  bne        $s2, $at, .L8016C638_ovl5
/* 113AA0 8016C630 00000000 */   nop
/* 113AA4 8016C634 0006000D */  break      6
.L8016C638_ovl5:
/* 113AA8 8016C638 1160002F */  beqz       $t3, .L8016C6F8_ovl5
/* 113AAC 8016C63C 00000000 */   nop
.L8016C640_ovl3:
/* 113AB0 8016C640 0254001A */  div        $zero, $s2, $s4
/* 113AB4 8016C644 00008012 */  mflo       $s0
.L8016C648_ovl3:
/* 113AB8 8016C648 3C0D8019 */  lui        $t5, %hi(func_8018E3B0_ovl5 + 0x18)
/* 113ABC 8016C64C 16800002 */  bnez       $s4, .L8016C658_ovl5
/* 113AC0 8016C650 00000000 */   nop
/* 113AC4 8016C654 0007000D */  break      7
.L8016C658_ovl5:
/* 113AC8 8016C658 2401FFFF */  addiu      $at, $zero, -0x1
/* 113ACC 8016C65C 16810004 */  bne        $s4, $at, .L8016C670_ovl5
/* 113AD0 8016C660 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 113AD4 8016C664 16410002 */  bne        $s2, $at, .L8016C670_ovl5
/* 113AD8 8016C668 00000000 */   nop
/* 113ADC 8016C66C 0006000D */  break      6
.L8016C670_ovl5:
/* 113AE0 8016C670 25ADE3C8 */  addiu      $t5, $t5, %lo(func_8018E3B0_ovl5 + 0x18)
/* 113AE4 8016C674 06010004 */  bgez       $s0, .L8016C688_ovl5
/* 113AE8 8016C678 320C0001 */   andi      $t4, $s0, 0x1
/* 113AEC 8016C67C 11800002 */  beqz       $t4, .L8016C688_ovl5
/* 113AF0 8016C680 00000000 */   nop
/* 113AF4 8016C684 258CFFFE */  addiu      $t4, $t4, -0x2
.L8016C688_ovl5:
/* 113AF8 8016C688 11800006 */  beqz       $t4, .L8016C6A4_ovl5
/* 113AFC 8016C68C 24040001 */   addiu     $a0, $zero, 0x1
/* 113B00 8016C690 00002025 */  or         $a0, $zero, $zero
/* 113B04 8016C694 0C02BEED */  jal        func_800AFBB4
/* 113B08 8016C698 8EC50000 */   lw        $a1, 0x0($s6)
/* 113B0C 8016C69C 10000016 */  b          .L8016C6F8_ovl5
/* 113B10 8016C6A0 00000000 */   nop
.L8016C6A4_ovl5:
/* 113B14 8016C6A4 8EC50000 */  lw         $a1, 0x0($s6)
/* 113B18 8016C6A8 0C02BEED */  jal        func_800AFBB4
/* 113B1C 8016C6AC 03CD8821 */   addu      $s1, $fp, $t5
.L8016C6B0_ovl3:
/* 113B20 8016C6B0 922E0000 */  lbu        $t6, 0x0($s1)
/* 113B24 8016C6B4 11C00010 */  beqz       $t6, .L8016C6F8_ovl5
/* 113B28 8016C6B8 00000000 */   nop
/* 113B2C 8016C6BC 06010004 */  bgez       $s0, .L8016C6D0_ovl5
.L8016C6C0_ovl3:
/* 113B30 8016C6C0 320F0003 */   andi      $t7, $s0, 0x3
/* 113B34 8016C6C4 11E00002 */  beqz       $t7, .L8016C6D0_ovl5
/* 113B38 8016C6C8 00000000 */   nop
/* 113B3C 8016C6CC 25EFFFFC */  addiu      $t7, $t7, -0x4
.L8016C6D0_ovl5:
/* 113B40 8016C6D0 51E00007 */  beql       $t7, $zero, .L8016C6F0_ovl5
/* 113B44 8016C6D4 4405B000 */   mfc1      $a1, $f22
/* 113B48 8016C6D8 4405A000 */  mfc1       $a1, $f20
/* 113B4C 8016C6DC 0C02A7E6 */  jal        func_800A9F98
/* 113B50 8016C6E0 8EA40000 */   lw        $a0, 0x0($s5)
/* 113B54 8016C6E4 10000004 */  b          .L8016C6F8_ovl5
/* 113B58 8016C6E8 00000000 */   nop
/* 113B5C 8016C6EC 4405B000 */  mfc1       $a1, $f22
.L8016C6F0_ovl5:
/* 113B60 8016C6F0 0C02A7E6 */  jal        func_800A9F98
/* 113B64 8016C6F4 8EA40000 */   lw        $a0, 0x0($s5)
.L8016C6F8_ovl5:
/* 113B68 8016C6F8 0C002DAF */  jal        finish_current_thread
/* 113B6C 8016C6FC 24040001 */   addiu     $a0, $zero, 0x1
/* 113B70 8016C700 8E780000 */  lw         $t8, 0x0($s3)
.L8016C704_ovl3:
/* 113B74 8016C704 5700FFC1 */  bnel       $t8, $zero, .L8016C60C_ovl5
/* 113B78 8016C708 26520001 */   addiu     $s2, $s2, 0x1
.L8016C70C_ovl5:
/* 113B7C 8016C70C 8ED90000 */  lw         $t9, 0x0($s6)
/* 113B80 8016C710 0C02C640 */  jal        func_800B1900
/* 113B84 8016C714 97240002 */   lhu       $a0, 0x2($t9)
.L8016C718_ovl5:
/* 113B88 8016C718 3C088019 */  lui        $t0, %hi(func_8018E164_ovl5 + 0x104)
/* 113B8C 8016C71C 2508E268 */  addiu      $t0, $t0, %lo(func_8018E164_ovl5 + 0x104)
/* 113B90 8016C720 001E4880 */  sll        $t1, $fp, 2
/* 113B94 8016C724 0128B821 */  addu       $s7, $t1, $t0
/* 113B98 8016C728 8EEA0000 */  lw         $t2, 0x0($s7)
/* 113B9C 8016C72C 3C0C800F */  lui        $t4, %hi(D_800E9C60)
/* 113BA0 8016C730 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 113BA4 8016C734 000A5880 */  sll        $t3, $t2, 2
/* 113BA8 8016C738 018B6021 */  addu       $t4, $t4, $t3
/* 113BAC 8016C73C 8D8C9C60 */  lw         $t4, %lo(D_800E9C60)($t4)
/* 113BB0 8016C740 4481B000 */  mtc1       $at, $f22
/* 113BB4 8016C744 24010002 */  addiu      $at, $zero, 0x2
/* 113BB8 8016C748 24140005 */  addiu      $s4, $zero, 0x5
/* 113BBC 8016C74C 00009025 */  or         $s2, $zero, $zero
/* 113BC0 8016C750 1181004A */  beq        $t4, $at, .L8016C87C_ovl5
/* 113BC4 8016C754 2413003B */   addiu     $s3, $zero, 0x3B
/* 113BC8 8016C758 26520001 */  addiu      $s2, $s2, 0x1
.L8016C75C_ovl5:
/* 113BCC 8016C75C 0254001A */  div        $zero, $s2, $s4
/* 113BD0 8016C760 00006810 */  mfhi       $t5
/* 113BD4 8016C764 16800002 */  bnez       $s4, .L8016C770_ovl5
/* 113BD8 8016C768 00000000 */   nop
/* 113BDC 8016C76C 0007000D */  break      7
.L8016C770_ovl5:
/* 113BE0 8016C770 2401FFFF */  addiu      $at, $zero, -0x1
/* 113BE4 8016C774 16810004 */  bne        $s4, $at, .L8016C788_ovl5
/* 113BE8 8016C778 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 113BEC 8016C77C 16410002 */  bne        $s2, $at, .L8016C788_ovl5
/* 113BF0 8016C780 00000000 */   nop
/* 113BF4 8016C784 0006000D */  break      6
.L8016C788_ovl5:
/* 113BF8 8016C788 11A0002F */  beqz       $t5, .L8016C848_ovl5
/* 113BFC 8016C78C 00000000 */   nop
/* 113C00 8016C790 0254001A */  div        $zero, $s2, $s4
/* 113C04 8016C794 00008012 */  mflo       $s0
/* 113C08 8016C798 3C0F8019 */  lui        $t7, %hi(func_8018E3B0_ovl5 + 0x18)
/* 113C0C 8016C79C 16800002 */  bnez       $s4, .L8016C7A8_ovl5
.L8016C7A0_ovl3:
/* 113C10 8016C7A0 00000000 */   nop
/* 113C14 8016C7A4 0007000D */  break      7
.L8016C7A8_ovl5:
/* 113C18 8016C7A8 2401FFFF */  addiu      $at, $zero, -0x1
/* 113C1C 8016C7AC 16810004 */  bne        $s4, $at, .L8016C7C0_ovl5
/* 113C20 8016C7B0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 113C24 8016C7B4 16410002 */  bne        $s2, $at, .L8016C7C0_ovl5
/* 113C28 8016C7B8 00000000 */   nop
/* 113C2C 8016C7BC 0006000D */  break      6
.L8016C7C0_ovl5:
/* 113C30 8016C7C0 25EFE3C8 */  addiu      $t7, $t7, %lo(func_8018E3B0_ovl5 + 0x18)
/* 113C34 8016C7C4 06010004 */  bgez       $s0, .L8016C7D8_ovl5
/* 113C38 8016C7C8 320E0001 */   andi      $t6, $s0, 0x1
/* 113C3C 8016C7CC 11C00002 */  beqz       $t6, .L8016C7D8_ovl5
/* 113C40 8016C7D0 00000000 */   nop
/* 113C44 8016C7D4 25CEFFFE */  addiu      $t6, $t6, -0x2
.L8016C7D8_ovl5:
/* 113C48 8016C7D8 11C00006 */  beqz       $t6, .L8016C7F4_ovl5
/* 113C4C 8016C7DC 24040001 */   addiu     $a0, $zero, 0x1
/* 113C50 8016C7E0 00002025 */  or         $a0, $zero, $zero
/* 113C54 8016C7E4 0C02BEED */  jal        func_800AFBB4
/* 113C58 8016C7E8 8EC50000 */   lw        $a1, 0x0($s6)
/* 113C5C 8016C7EC 10000016 */  b          .L8016C848_ovl5
/* 113C60 8016C7F0 00000000 */   nop
.L8016C7F4_ovl5:
/* 113C64 8016C7F4 8EC50000 */  lw         $a1, 0x0($s6)
/* 113C68 8016C7F8 0C02BEED */  jal        func_800AFBB4
/* 113C6C 8016C7FC 03CF8821 */   addu      $s1, $fp, $t7
/* 113C70 8016C800 92380000 */  lbu        $t8, 0x0($s1)
/* 113C74 8016C804 13000010 */  beqz       $t8, .L8016C848_ovl5
/* 113C78 8016C808 00000000 */   nop
/* 113C7C 8016C80C 06010004 */  bgez       $s0, .L8016C820_ovl5
/* 113C80 8016C810 32190003 */   andi      $t9, $s0, 0x3
/* 113C84 8016C814 13200002 */  beqz       $t9, .L8016C820_ovl5
/* 113C88 8016C818 00000000 */   nop
/* 113C8C 8016C81C 2739FFFC */  addiu      $t9, $t9, -0x4
.L8016C820_ovl5:
/* 113C90 8016C820 53200007 */  beql       $t9, $zero, .L8016C840_ovl5
/* 113C94 8016C824 4405B000 */   mfc1      $a1, $f22
/* 113C98 8016C828 4405A000 */  mfc1       $a1, $f20
/* 113C9C 8016C82C 0C02A7E6 */  jal        func_800A9F98
/* 113CA0 8016C830 8EA40000 */   lw        $a0, 0x0($s5)
/* 113CA4 8016C834 10000004 */  b          .L8016C848_ovl5
/* 113CA8 8016C838 00000000 */   nop
/* 113CAC 8016C83C 4405B000 */  mfc1       $a1, $f22
.L8016C840_ovl5:
/* 113CB0 8016C840 0C02A7E6 */  jal        func_800A9F98
/* 113CB4 8016C844 8EA40000 */   lw        $a0, 0x0($s5)
.L8016C848_ovl5:
/* 113CB8 8016C848 0C002DAF */  jal        finish_current_thread
/* 113CBC 8016C84C 24040001 */   addiu     $a0, $zero, 0x1
/* 113CC0 8016C850 2673FFFF */  addiu      $s3, $s3, -0x1
/* 113CC4 8016C854 5260000A */  beql       $s3, $zero, .L8016C880_ovl5
/* 113CC8 8016C858 8ECB0000 */   lw        $t3, 0x0($s6)
/* 113CCC 8016C85C 8EE90000 */  lw         $t1, 0x0($s7)
/* 113CD0 8016C860 3C0A800F */  lui        $t2, %hi(D_800E9C60)
/* 113CD4 8016C864 24010002 */  addiu      $at, $zero, 0x2
/* 113CD8 8016C868 00094080 */  sll        $t0, $t1, 2
/* 113CDC 8016C86C 01485021 */  addu       $t2, $t2, $t0
/* 113CE0 8016C870 8D4A9C60 */  lw         $t2, %lo(D_800E9C60)($t2)
/* 113CE4 8016C874 5541FFB9 */  bnel       $t2, $at, .L8016C75C_ovl5
.L8016C878_ovl3:
/* 113CE8 8016C878 26520001 */   addiu     $s2, $s2, 0x1
.L8016C87C_ovl5:
/* 113CEC 8016C87C 8ECB0000 */  lw         $t3, 0x0($s6)
.L8016C880_ovl5:
/* 113CF0 8016C880 0C02C640 */  jal        func_800B1900
/* 113CF4 8016C884 95640002 */   lhu       $a0, 0x2($t3)
/* 113CF8 8016C888 8FBF004C */  lw         $ra, 0x4C($sp)
/* 113CFC 8016C88C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 113D00 8016C890 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 113D04 8016C894 8FB00028 */  lw         $s0, 0x28($sp)
/* 113D08 8016C898 8FB1002C */  lw         $s1, 0x2C($sp)
/* 113D0C 8016C89C 8FB20030 */  lw         $s2, 0x30($sp)
/* 113D10 8016C8A0 8FB30034 */  lw         $s3, 0x34($sp)
/* 113D14 8016C8A4 8FB40038 */  lw         $s4, 0x38($sp)
/* 113D18 8016C8A8 8FB5003C */  lw         $s5, 0x3C($sp)
/* 113D1C 8016C8AC 8FB60040 */  lw         $s6, 0x40($sp)
/* 113D20 8016C8B0 8FB70044 */  lw         $s7, 0x44($sp)
/* 113D24 8016C8B4 8FBE0048 */  lw         $fp, 0x48($sp)
/* 113D28 8016C8B8 03E00008 */  jr         $ra
/* 113D2C 8016C8BC 27BD0050 */   addiu     $sp, $sp, 0x50
