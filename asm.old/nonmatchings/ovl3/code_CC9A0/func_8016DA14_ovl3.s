glabel func_8016DA14_ovl3
/* CE454 8016DA14 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* CE458 8016DA18 AFB00034 */  sw         $s0, 0x34($sp)
/* CE45C 8016DA1C 3C108013 */  lui        $s0, %hi(gKirbyState)
/* CE460 8016DA20 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
/* CE464 8016DA24 AFBF004C */  sw         $ra, 0x4C($sp)
/* CE468 8016DA28 240E0001 */  addiu      $t6, $zero, 0x1
/* CE46C 8016DA2C AFB50048 */  sw         $s5, 0x48($sp)
/* CE470 8016DA30 AFB40044 */  sw         $s4, 0x44($sp)
/* CE474 8016DA34 AFB30040 */  sw         $s3, 0x40($sp)
/* CE478 8016DA38 AFB2003C */  sw         $s2, 0x3C($sp)
/* CE47C 8016DA3C AFB10038 */  sw         $s1, 0x38($sp)
/* CE480 8016DA40 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* CE484 8016DA44 F7B80020 */  sdc1       $f24, 0x20($sp)
/* CE488 8016DA48 F7B60018 */  sdc1       $f22, 0x18($sp)
/* CE48C 8016DA4C F7B40010 */  sdc1       $f20, 0x10($sp)
/* CE490 8016DA50 AFA40050 */  sw         $a0, 0x50($sp)
.L8016DA54_ovl5:
/* CE494 8016DA54 0C0473D6 */  jal        func_8011CF58
/* CE498 8016DA58 A20E0007 */   sb        $t6, 0x7($s0)
/* CE49C 8016DA5C 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
.L8016DA60_ovl5:
/* CE4A0 8016DA60 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* CE4A4 8016DA64 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* CE4A8 8016DA68 24150002 */  addiu      $s5, $zero, 0x2
.L8016DA6C_ovl5:
/* CE4AC 8016DA6C 8DF80000 */  lw         $t8, 0x0($t7)
/* CE4B0 8016DA70 0018C880 */  sll        $t9, $t8, 2
/* CE4B4 8016DA74 00390821 */  addu       $at, $at, $t9
/* CE4B8 8016DA78 0C048AA0 */  jal        func_80122A80
/* CE4BC 8016DA7C AC35DFD0 */   sw        $s5, %lo(D_800DDFD0)($at)
/* CE4C0 8016DA80 3C014000 */  lui        $at, (0x40000000 >> 16)
/* CE4C4 8016DA84 4481D000 */  mtc1       $at, $f26
/* CE4C8 8016DA88 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* CE4CC 8016DA8C 92050004 */  lbu        $a1, 0x4($s0)
/* CE4D0 8016DA90 4481B000 */  mtc1       $at, $f22
/* CE4D4 8016DA94 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CE4D8 8016DA98 3C14800E */  lui        $s4, %hi(D_800E6690)
/* CE4DC 8016DA9C 3C13800E */  lui        $s3, %hi(D_800E64D0)
/* CE4E0 8016DAA0 3C11800E */  lui        $s1, %hi(D_800E6A10)
/* CE4E4 8016DAA4 4481A000 */  mtc1       $at, $f20
/* CE4E8 8016DAA8 4480C000 */  mtc1       $zero, $f24
/* CE4EC 8016DAAC 26316A10 */  addiu      $s1, $s1, %lo(D_800E6A10)
/* CE4F0 8016DAB0 267364D0 */  addiu      $s3, $s3, %lo(D_800E64D0)
/* CE4F4 8016DAB4 26946690 */  addiu      $s4, $s4, %lo(D_800E6690)
/* CE4F8 8016DAB8 24120001 */  addiu      $s2, $zero, 0x1
/* CE4FC 8016DABC 00A02025 */  or         $a0, $a1, $zero
.L8016DAC0_ovl3:
/* CE500 8016DAC0 10800007 */  beqz       $a0, .L8016DAE0_ovl3
/* CE504 8016DAC4 00003825 */   or        $a3, $zero, $zero
/* CE508 8016DAC8 1092000D */  beq        $a0, $s2, .L8016DB00_ovl3
/* CE50C 8016DACC 00003825 */   or        $a3, $zero, $zero
/* CE510 8016DAD0 50950014 */  beql       $a0, $s5, .L8016DB24_ovl3
/* CE514 8016DAD4 3C040002 */   lui       $a0, (0x200CD >> 16)
/* CE518 8016DAD8 1000001B */  b          .L8016DB48_ovl3
.L8016DADC_ovl5:
/* CE51C 8016DADC 00000000 */   nop
.L8016DAE0_ovl3:
/* CE520 8016DAE0 3C040002 */  lui        $a0, (0x2005D >> 16)
/* CE524 8016DAE4 3C050002 */  lui        $a1, (0x2005E >> 16)
.L8016DAE8_ovl5:
/* CE528 8016DAE8 34A5005E */  ori        $a1, $a1, (0x2005E & 0xFFFF)
/* CE52C 8016DAEC 3484005D */  ori        $a0, $a0, (0x2005D & 0xFFFF)
/* CE530 8016DAF0 0C048C1F */  jal        func_8012307C
.L8016DAF4_ovl5:
/* CE534 8016DAF4 8E060038 */   lw        $a2, 0x38($s0)
/* CE538 8016DAF8 10000013 */  b          .L8016DB48_ovl3
/* CE53C 8016DAFC 92050004 */   lbu       $a1, 0x4($s0)
.L8016DB00_ovl3:
/* CE540 8016DB00 3C040002 */  lui        $a0, (0x20175 >> 16)
/* CE544 8016DB04 3C050002 */  lui        $a1, (0x20176 >> 16)
/* CE548 8016DB08 34A50176 */  ori        $a1, $a1, (0x20176 & 0xFFFF)
/* CE54C 8016DB0C 34840175 */  ori        $a0, $a0, (0x20175 & 0xFFFF)
/* CE550 8016DB10 0C048C1F */  jal        func_8012307C
/* CE554 8016DB14 8E060038 */   lw        $a2, 0x38($s0)
/* CE558 8016DB18 0C02BE85 */  jal        func_800AFA14
/* CE55C 8016DB1C 00000000 */   nop
/* CE560 8016DB20 3C040002 */  lui        $a0, (0x200CD >> 16)
.L8016DB24_ovl3:
/* CE564 8016DB24 3C050002 */  lui        $a1, (0x200CE >> 16)
/* CE568 8016DB28 34A500CE */  ori        $a1, $a1, (0x200CE & 0xFFFF)
/* CE56C 8016DB2C 348400CD */  ori        $a0, $a0, (0x200CD & 0xFFFF)
/* CE570 8016DB30 8E060038 */  lw         $a2, 0x38($s0)
/* CE574 8016DB34 0C048C1F */  jal        func_8012307C
/* CE578 8016DB38 00003825 */   or        $a3, $zero, $zero
/* CE57C 8016DB3C 0C02BE85 */  jal        func_800AFA14
/* CE580 8016DB40 00000000 */   nop
/* CE584 8016DB44 92050004 */  lbu        $a1, 0x4($s0)
.L8016DB48_ovl3:
/* CE588 8016DB48 14A00061 */  bnez       $a1, .L8016DCD0_ovl3
/* CE58C 8016DB4C 00000000 */   nop
/* CE590 8016DB50 8E080044 */  lw         $t0, 0x44($s0)
/* CE594 8016DB54 1500005E */  bnez       $t0, .L8016DCD0_ovl3
/* CE598 8016DB58 00000000 */   nop
/* CE59C 8016DB5C 8E020034 */  lw         $v0, 0x34($s0)
/* CE5A0 8016DB60 3C038005 */  lui        $v1, %hi(D_8004A7C4)
.L8016DB64_ovl5:
/* CE5A4 8016DB64 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* CE5A8 8016DB68 30420001 */  andi       $v0, $v0, 0x1
.L8016DB6C_ovl3:
/* CE5AC 8016DB6C 54400011 */  bnel       $v0, $zero, .L8016DBB4_ovl3
.L8016DB70_ovl5:
/* CE5B0 8016DB70 8C620000 */   lw        $v0, 0x0($v1)
/* CE5B4 8016DB74 8E090044 */  lw         $t1, 0x44($s0)
/* CE5B8 8016DB78 5520000E */  bnel       $t1, $zero, .L8016DBB4_ovl3
.L8016DB7C_ovl5:
/* CE5BC 8016DB7C 8C620000 */   lw        $v0, 0x0($v1)
/* CE5C0 8016DB80 8C620000 */  lw         $v0, 0x0($v1)
/* CE5C4 8016DB84 00021080 */  sll        $v0, $v0, 2
.L8016DB88_ovl5:
/* CE5C8 8016DB88 02225021 */  addu       $t2, $s1, $v0
/* CE5CC 8016DB8C C5440000 */  lwc1       $f4, 0x0($t2)
/* CE5D0 8016DB90 4604A032 */  c.eq.s     $f20, $f4
/* CE5D4 8016DB94 00000000 */  nop
/* CE5D8 8016DB98 45020006 */  bc1fl      .L8016DBB4_ovl3
/* CE5DC 8016DB9C 8C620000 */   lw        $v0, 0x0($v1)
/* CE5E0 8016DBA0 8E0B00EC */  lw         $t3, 0xEC($s0)
/* CE5E4 8016DBA4 316C0001 */  andi       $t4, $t3, 0x1
/* CE5E8 8016DBA8 5580000D */  bnel       $t4, $zero, .L8016DBE0_ovl3
/* CE5EC 8016DBAC 0262C021 */   addu      $t8, $s3, $v0
/* CE5F0 8016DBB0 8C620000 */  lw         $v0, 0x0($v1)
.L8016DBB4_ovl3:
/* CE5F4 8016DBB4 00021080 */  sll        $v0, $v0, 2
/* CE5F8 8016DBB8 02226821 */  addu       $t5, $s1, $v0
/* CE5FC 8016DBBC C5A60000 */  lwc1       $f6, 0x0($t5)
/* CE600 8016DBC0 4606B032 */  c.eq.s     $f22, $f6
/* CE604 8016DBC4 00000000 */  nop
/* CE608 8016DBC8 45000016 */  bc1f       .L8016DC24_ovl3
/* CE60C 8016DBCC 00000000 */   nop
/* CE610 8016DBD0 8E0E00F0 */  lw         $t6, 0xF0($s0)
/* CE614 8016DBD4 31CF0008 */  andi       $t7, $t6, 0x8
/* CE618 8016DBD8 11E00012 */  beqz       $t7, .L8016DC24_ovl3
/* CE61C 8016DBDC 0262C021 */   addu      $t8, $s3, $v0
.L8016DBE0_ovl3:
/* CE620 8016DBE0 C7000000 */  lwc1       $f0, 0x0($t8)
/* CE624 8016DBE4 4618003C */  c.lt.s     $f0, $f24
/* CE628 8016DBE8 00000000 */  nop
/* CE62C 8016DBEC 45020004 */  bc1fl      .L8016DC00_ovl3
/* CE630 8016DBF0 46000086 */   mov.s     $f2, $f0
/* CE634 8016DBF4 10000002 */  b          .L8016DC00_ovl3
/* CE638 8016DBF8 46000087 */   neg.s     $f2, $f0
/* CE63C 8016DBFC 46000086 */  mov.s      $f2, $f0
.L8016DC00_ovl3:
/* CE640 8016DC00 4602D03C */  c.lt.s     $f26, $f2
.L8016DC04_ovl5:
/* CE644 8016DC04 00000000 */  nop
/* CE648 8016DC08 45020006 */  bc1fl      .L8016DC24_ovl3
/* CE64C 8016DC0C AE120044 */   sw        $s2, 0x44($s0)
.L8016DC10_ovl5:
/* CE650 8016DC10 92050004 */  lbu        $a1, 0x4($s0)
/* CE654 8016DC14 8E060044 */  lw         $a2, 0x44($s0)
/* CE658 8016DC18 10000009 */  b          .L8016DC40_ovl3
.L8016DC1C_ovl5:
/* CE65C 8016DC1C 00A02025 */   or        $a0, $a1, $zero
/* CE660 8016DC20 AE120044 */  sw         $s2, 0x44($s0)
.L8016DC24_ovl3:
/* CE664 8016DC24 0C002DAF */  jal        finish_current_thread
/* CE668 8016DC28 02402025 */   or        $a0, $s2, $zero
/* CE66C 8016DC2C 8E020034 */  lw         $v0, 0x34($s0)
/* CE670 8016DC30 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* CE674 8016DC34 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* CE678 8016DC38 1000FFCC */  b          .L8016DB6C_ovl3
/* CE67C 8016DC3C 30420001 */   andi      $v0, $v0, 0x1
.L8016DC40_ovl3:
/* CE680 8016DC40 24D90001 */  addiu      $t9, $a2, 0x1
/* CE684 8016DC44 AE190044 */  sw         $t9, 0x44($s0)
/* CE688 8016DC48 8C680000 */  lw         $t0, 0x0($v1)
/* CE68C 8016DC4C 44804000 */  mtc1       $zero, $f8
/* CE690 8016DC50 3C018019 */  lui        $at, %hi(D_80197358_ovl3)
/* CE694 8016DC54 00084880 */  sll        $t1, $t0, 2
/* CE698 8016DC58 02895021 */  addu       $t2, $s4, $t1
/* CE69C 8016DC5C E5480000 */  swc1       $f8, 0x0($t2)
/* CE6A0 8016DC60 8C620000 */  lw         $v0, 0x0($v1)
/* CE6A4 8016DC64 24060001 */  addiu      $a2, $zero, 0x1
/* CE6A8 8016DC68 00021080 */  sll        $v0, $v0, 2
/* CE6AC 8016DC6C 02825821 */  addu       $t3, $s4, $v0
/* CE6B0 8016DC70 C56A0000 */  lwc1       $f10, 0x0($t3)
/* CE6B4 8016DC74 02626021 */  addu       $t4, $s3, $v0
/* CE6B8 8016DC78 E58A0000 */  swc1       $f10, 0x0($t4)
/* CE6BC 8016DC7C 8C6D0000 */  lw         $t5, 0x0($v1)
/* CE6C0 8016DC80 C4307358 */  lwc1       $f16, %lo(D_80197358_ovl3)($at)
/* CE6C4 8016DC84 3C01800E */  lui        $at, %hi(D_800E6850)
/* CE6C8 8016DC88 000D7080 */  sll        $t6, $t5, 2
.L8016DC8C_ovl5:
/* CE6CC 8016DC8C 002E0821 */  addu       $at, $at, $t6
/* CE6D0 8016DC90 10800007 */  beqz       $a0, .L8016DCB0_ovl3
/* CE6D4 8016DC94 E4306850 */   swc1      $f16, %lo(D_800E6850)($at)
.L8016DC98_ovl5:
/* CE6D8 8016DC98 1092FF89 */  beq        $a0, $s2, .L8016DAC0_ovl3
/* CE6DC 8016DC9C 00000000 */   nop
/* CE6E0 8016DCA0 1095FF87 */  beq        $a0, $s5, .L8016DAC0_ovl3
.L8016DCA4_ovl5:
/* CE6E4 8016DCA4 00000000 */   nop
/* CE6E8 8016DCA8 1000FF85 */  b          .L8016DAC0_ovl3
/* CE6EC 8016DCAC 00000000 */   nop
.L8016DCB0_ovl3:
/* CE6F0 8016DCB0 3C040002 */  lui        $a0, (0x200FF >> 16)
/* CE6F4 8016DCB4 3C050002 */  lui        $a1, (0x20100 >> 16)
/* CE6F8 8016DCB8 34A50100 */  ori        $a1, $a1, (0x20100 & 0xFFFF)
/* CE6FC 8016DCBC 0C048C3A */  jal        func_801230E8
/* CE700 8016DCC0 348400FF */   ori       $a0, $a0, (0x200FF & 0xFFFF)
/* CE704 8016DCC4 92050004 */  lbu        $a1, 0x4($s0)
/* CE708 8016DCC8 1000FF7D */  b          .L8016DAC0_ovl3
/* CE70C 8016DCCC 00A02025 */   or        $a0, $a1, $zero
.L8016DCD0_ovl3:
/* CE710 8016DCD0 0C02BE85 */  jal        func_800AFA14
/* CE714 8016DCD4 00000000 */   nop
/* CE718 8016DCD8 8FBF004C */  lw         $ra, 0x4C($sp)
/* CE71C 8016DCDC D7B40010 */  ldc1       $f20, 0x10($sp)
/* CE720 8016DCE0 D7B60018 */  ldc1       $f22, 0x18($sp)
/* CE724 8016DCE4 D7B80020 */  ldc1       $f24, 0x20($sp)
/* CE728 8016DCE8 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* CE72C 8016DCEC 8FB00034 */  lw         $s0, 0x34($sp)
/* CE730 8016DCF0 8FB10038 */  lw         $s1, 0x38($sp)
/* CE734 8016DCF4 8FB2003C */  lw         $s2, 0x3C($sp)
/* CE738 8016DCF8 8FB30040 */  lw         $s3, 0x40($sp)
/* CE73C 8016DCFC 8FB40044 */  lw         $s4, 0x44($sp)
/* CE740 8016DD00 8FB50048 */  lw         $s5, 0x48($sp)
/* CE744 8016DD04 03E00008 */  jr         $ra
/* CE748 8016DD08 27BD0050 */   addiu     $sp, $sp, 0x50
