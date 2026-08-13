nonmatching func_8018D4C8_ovl3, 0x904

glabel func_8018D4C8_ovl3
    /* EDF08 8018D4C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* EDF0C 8018D4CC AFBF0014 */  sw         $ra, 0x14($sp)
    /* EDF10 8018D4D0 0C054E61 */  jal        func_80153984_ovl3
    /* EDF14 8018D4D4 AFA40018 */   sw        $a0, 0x18($sp)
    /* EDF18 8018D4D8 0C0473D6 */  jal        func_8011CF58
    /* EDF1C 8018D4DC 00000000 */   nop
    /* EDF20 8018D4E0 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EDF24 8018D4E4 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EDF28 8018D4E8 8D030044 */  lw         $v1, 0x44($t0)
    /* EDF2C 8018D4EC 24010004 */  addiu      $at, $zero, 0x4
    /* EDF30 8018D4F0 50610007 */  beql       $v1, $at, .L8018D510_ovl3
    /* EDF34 8018D4F4 24050003 */   addiu     $a1, $zero, 0x3
    /* EDF38 8018D4F8 0C048596 */  jal        func_80121658
    /* EDF3C 8018D4FC 00000000 */   nop
    /* EDF40 8018D500 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EDF44 8018D504 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EDF48 8018D508 8D030044 */  lw         $v1, 0x44($t0)
    /* EDF4C 8018D50C 24050003 */  addiu      $a1, $zero, 0x3
  .L8018D510_ovl3:
    /* EDF50 8018D510 10A30011 */  beq        $a1, $v1, .L8018D558_ovl3
    /* EDF54 8018D514 3C048005 */   lui       $a0, %hi(omCurrentObj)
    /* EDF58 8018D518 910E0017 */  lbu        $t6, 0x17($t0)
    /* EDF5C 8018D51C 55C0000E */  bnel       $t6, $zero, .L8018D558_ovl3
    /* EDF60 8018D520 AD050044 */   sw        $a1, 0x44($t0)
    /* EDF64 8018D524 8D0F00FC */  lw         $t7, 0xFC($t0)
    /* EDF68 8018D528 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* EDF6C 8018D52C 55E0000A */  bnel       $t7, $zero, .L8018D558_ovl3
    /* EDF70 8018D530 AD050044 */   sw        $a1, 0x44($t0)
    /* EDF74 8018D534 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* EDF78 8018D538 3C0A800E */  lui        $t2, %hi(D_800E6310)
    /* EDF7C 8018D53C 8F190000 */  lw         $t9, 0x0($t8)
    /* EDF80 8018D540 00194880 */  sll        $t1, $t9, 2
    /* EDF84 8018D544 01495021 */  addu       $t2, $t2, $t1
    /* EDF88 8018D548 8D4A6310 */  lw         $t2, %lo(D_800E6310)($t2)
    /* EDF8C 8018D54C 51400003 */  beql       $t2, $zero, .L8018D55C_ovl3
    /* EDF90 8018D550 8D0B0030 */   lw        $t3, 0x30($t0)
    /* EDF94 8018D554 AD050044 */  sw         $a1, 0x44($t0)
  .L8018D558_ovl3:
    /* EDF98 8018D558 8D0B0030 */  lw         $t3, 0x30($t0)
  .L8018D55C_ovl3:
    /* EDF9C 8018D55C 5160002E */  beql       $t3, $zero, .L8018D618_ovl3
    /* EDFA0 8018D560 8D0E0044 */   lw        $t6, 0x44($t0)
    /* EDFA4 8018D564 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* EDFA8 8018D568 44802000 */  mtc1       $zero, $f4
    /* EDFAC 8018D56C 3C06800E */  lui        $a2, %hi(D_800E6690)
    /* EDFB0 8018D570 8C8C0000 */  lw         $t4, 0x0($a0)
    /* EDFB4 8018D574 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
    /* EDFB8 8018D578 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* EDFBC 8018D57C 000C6880 */  sll        $t5, $t4, 2
    /* EDFC0 8018D580 00CD7021 */  addu       $t6, $a2, $t5
    /* EDFC4 8018D584 E5C40000 */  swc1       $f4, 0x0($t6)
    /* EDFC8 8018D588 8C830000 */  lw         $v1, 0x0($a0)
    /* EDFCC 8018D58C 00031880 */  sll        $v1, $v1, 2
    /* EDFD0 8018D590 00C37821 */  addu       $t7, $a2, $v1
    /* EDFD4 8018D594 C5E60000 */  lwc1       $f6, 0x0($t7)
    /* EDFD8 8018D598 00230821 */  addu       $at, $at, $v1
    /* EDFDC 8018D59C E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
    /* EDFE0 8018D5A0 8C980000 */  lw         $t8, 0x0($a0)
    /* EDFE4 8018D5A4 3C018019 */  lui        $at, %hi(D_80197B30_ovl3)
    /* EDFE8 8018D5A8 C4287B30 */  lwc1       $f8, %lo(D_80197B30_ovl3)($at)
    /* EDFEC 8018D5AC 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EDFF0 8018D5B0 0018C880 */  sll        $t9, $t8, 2
    /* EDFF4 8018D5B4 00390821 */  addu       $at, $at, $t9
    /* EDFF8 8018D5B8 0C047717 */  jal        func_8011DC5C
    /* EDFFC 8018D5BC E4286850 */   swc1      $f8, %lo(D_800E6850)($at)
    /* EE000 8018D5C0 0C04783A */  jal        func_8011E0E8
    /* EE004 8018D5C4 00000000 */   nop
    /* EE008 8018D5C8 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* EE00C 8018D5CC 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* EE010 8018D5D0 44801000 */  mtc1       $zero, $f2
    /* EE014 8018D5D4 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* EE018 8018D5D8 8D2A0000 */  lw         $t2, 0x0($t1)
    /* EE01C 8018D5DC 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EE020 8018D5E0 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EE024 8018D5E4 000A5880 */  sll        $t3, $t2, 2
    /* EE028 8018D5E8 002B0821 */  addu       $at, $at, $t3
    /* EE02C 8018D5EC E4224010 */  swc1       $f2, %lo(gEntitiesAngleXArray)($at)
    /* EE030 8018D5F0 8D0C0034 */  lw         $t4, 0x34($t0)
    /* EE034 8018D5F4 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
    /* EE038 8018D5F8 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
    /* EE03C 8018D5FC 01816824 */  and        $t5, $t4, $at
    /* EE040 8018D600 AD0000A0 */  sw         $zero, 0xA0($t0)
    /* EE044 8018D604 0C04759F */  jal        func_8011D67C
    /* EE048 8018D608 AD0D0034 */   sw        $t5, 0x34($t0)
    /* EE04C 8018D60C 100001EC */  b          .L8018DDC0_ovl3
    /* EE050 8018D610 8FBF0014 */   lw        $ra, 0x14($sp)
    /* EE054 8018D614 8D0E0044 */  lw         $t6, 0x44($t0)
  .L8018D618_ovl3:
    /* EE058 8018D618 25CFFFFF */  addiu      $t7, $t6, -0x1
    /* EE05C 8018D61C 2DE10006 */  sltiu      $at, $t7, 0x6
    /* EE060 8018D620 102001E6 */  beqz       $at, .L8018DDBC_ovl3
    /* EE064 8018D624 000F7880 */   sll       $t7, $t7, 2
    /* EE068 8018D628 3C018019 */  lui        $at, %hi(jtbl_80197B34_ovl3)
    /* EE06C 8018D62C 002F0821 */  addu       $at, $at, $t7
    /* EE070 8018D630 8C2F7B34 */  lw         $t7, %lo(jtbl_80197B34_ovl3)($at)
    /* EE074 8018D634 01E00008 */  jr         $t7
    /* EE078 8018D638 00000000 */   nop
  jlabel .L8018D63C_ovl3
    /* EE07C 8018D63C 0C04843F */  jal        func_801210FC
    /* EE080 8018D640 00000000 */   nop
    /* EE084 8018D644 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EE088 8018D648 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EE08C 8018D64C 10400004 */  beqz       $v0, .L8018D660_ovl3
    /* EE090 8018D650 24050003 */   addiu     $a1, $zero, 0x3
    /* EE094 8018D654 24180002 */  addiu      $t8, $zero, 0x2
    /* EE098 8018D658 10000026 */  b          .L8018D6F4_ovl3
    /* EE09C 8018D65C AD180044 */   sw        $t8, 0x44($t0)
  .L8018D660_ovl3:
    /* EE0A0 8018D660 3C02800D */  lui        $v0, %hi(gKirbyController + 0x2)
    /* EE0A4 8018D664 94426FEA */  lhu        $v0, %lo(gKirbyController + 0x2)($v0)
    /* EE0A8 8018D668 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* EE0AC 8018D66C 30594000 */  andi       $t9, $v0, 0x4000
    /* EE0B0 8018D670 13200003 */  beqz       $t9, .L8018D680_ovl3
    /* EE0B4 8018D674 00000000 */   nop
    /* EE0B8 8018D678 1000001E */  b          .L8018D6F4_ovl3
    /* EE0BC 8018D67C AD050044 */   sw        $a1, 0x44($t0)
  .L8018D680_ovl3:
    /* EE0C0 8018D680 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* EE0C4 8018D684 3C0C800F */  lui        $t4, %hi(D_800E8920)
    /* EE0C8 8018D688 304D8000 */  andi       $t5, $v0, 0x8000
    /* EE0CC 8018D68C 8D2A0000 */  lw         $t2, 0x0($t1)
    /* EE0D0 8018D690 000A5880 */  sll        $t3, $t2, 2
    /* EE0D4 8018D694 018B6021 */  addu       $t4, $t4, $t3
    /* EE0D8 8018D698 8D8C8920 */  lw         $t4, %lo(D_800E8920)($t4)
    /* EE0DC 8018D69C 51800004 */  beql       $t4, $zero, .L8018D6B0_ovl3
    /* EE0E0 8018D6A0 910E000A */   lbu       $t6, 0xA($t0)
    /* EE0E4 8018D6A4 55A00005 */  bnel       $t5, $zero, .L8018D6BC_ovl3
    /* EE0E8 8018D6A8 240F0004 */   addiu     $t7, $zero, 0x4
    /* EE0EC 8018D6AC 910E000A */  lbu        $t6, 0xA($t0)
  .L8018D6B0_ovl3:
    /* EE0F0 8018D6B0 24010005 */  addiu      $at, $zero, 0x5
    /* EE0F4 8018D6B4 15C10004 */  bne        $t6, $at, .L8018D6C8_ovl3
    /* EE0F8 8018D6B8 240F0004 */   addiu     $t7, $zero, 0x4
  .L8018D6BC_ovl3:
    /* EE0FC 8018D6BC A100000A */  sb         $zero, 0xA($t0)
    /* EE100 8018D6C0 1000000C */  b          .L8018D6F4_ovl3
    /* EE104 8018D6C4 AD0F0044 */   sw        $t7, 0x44($t0)
  .L8018D6C8_ovl3:
    /* EE108 8018D6C8 8D180034 */  lw         $t8, 0x34($t0)
    /* EE10C 8018D6CC 33190001 */  andi       $t9, $t8, 0x1
    /* EE110 8018D6D0 17200008 */  bnez       $t9, .L8018D6F4_ovl3
    /* EE114 8018D6D4 00000000 */   nop
    /* EE118 8018D6D8 0C048465 */  jal        func_80121194
    /* EE11C 8018D6DC 00000000 */   nop
    /* EE120 8018D6E0 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EE124 8018D6E4 10400003 */  beqz       $v0, .L8018D6F4_ovl3
    /* EE128 8018D6E8 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* EE12C 8018D6EC 24090006 */  addiu      $t1, $zero, 0x6
    /* EE130 8018D6F0 AD090044 */  sw         $t1, 0x44($t0)
  .L8018D6F4_ovl3:
    /* EE134 8018D6F4 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* EE138 8018D6F8 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* EE13C 8018D6FC 3C06800F */  lui        $a2, %hi(D_800E8AE0)
    /* EE140 8018D700 24C68AE0 */  addiu      $a2, $a2, %lo(D_800E8AE0)
    /* EE144 8018D704 8C830000 */  lw         $v1, 0x0($a0)
    /* EE148 8018D708 24020007 */  addiu      $v0, $zero, 0x7
    /* EE14C 8018D70C 00031880 */  sll        $v1, $v1, 2
    /* EE150 8018D710 00C35021 */  addu       $t2, $a2, $v1
    /* EE154 8018D714 8D4B0000 */  lw         $t3, 0x0($t2)
    /* EE158 8018D718 316C0006 */  andi       $t4, $t3, 0x6
    /* EE15C 8018D71C 15800003 */  bnez       $t4, .L8018D72C_ovl3
    /* EE160 8018D720 00000000 */   nop
    /* EE164 8018D724 10000001 */  b          .L8018D72C_ovl3
    /* EE168 8018D728 24020005 */   addiu     $v0, $zero, 0x5
  .L8018D72C_ovl3:
    /* EE16C 8018D72C 44828000 */  mtc1       $v0, $f16
    /* EE170 8018D730 3C018019 */  lui        $at, %hi(D_80197B4C_ovl3)
    /* EE174 8018D734 C42A7B4C */  lwc1       $f10, %lo(D_80197B4C_ovl3)($at)
    /* EE178 8018D738 468084A0 */  cvt.s.w    $f18, $f16
    /* EE17C 8018D73C 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* EE180 8018D740 00230821 */  addu       $at, $at, $v1
    /* EE184 8018D744 3C02800D */  lui        $v0, %hi(D_800D71E8 + 0x50)
    /* EE188 8018D748 46125103 */  div.s      $f4, $f10, $f18
    /* EE18C 8018D74C E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
    /* EE190 8018D750 8C8D0000 */  lw         $t5, 0x0($a0)
    /* EE194 8018D754 3C018019 */  lui        $at, %hi(D_80197B50_ovl3)
    /* EE198 8018D758 000D7080 */  sll        $t6, $t5, 2
    /* EE19C 8018D75C 00CE7821 */  addu       $t7, $a2, $t6
    /* EE1A0 8018D760 8DF80000 */  lw         $t8, 0x0($t7)
    /* EE1A4 8018D764 33190006 */  andi       $t9, $t8, 0x6
    /* EE1A8 8018D768 17200006 */  bnez       $t9, .L8018D784_ovl3
    /* EE1AC 8018D76C 00000000 */   nop
    /* EE1B0 8018D770 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
    /* EE1B4 8018D774 44813000 */  mtc1       $at, $f6
    /* EE1B8 8018D778 24427238 */  addiu      $v0, $v0, %lo(D_800D71E8 + 0x50)
    /* EE1BC 8018D77C 10000005 */  b          .L8018D794_ovl3
    /* EE1C0 8018D780 E4460000 */   swc1      $f6, 0x0($v0)
  .L8018D784_ovl3:
    /* EE1C4 8018D784 C4287B50 */  lwc1       $f8, %lo(D_80197B50_ovl3)($at)
    /* EE1C8 8018D788 3C02800D */  lui        $v0, %hi(D_800D71E8 + 0x50)
    /* EE1CC 8018D78C 24427238 */  addiu      $v0, $v0, %lo(D_800D71E8 + 0x50)
    /* EE1D0 8018D790 E4480000 */  swc1       $f8, 0x0($v0)
  .L8018D794_ovl3:
    /* EE1D4 8018D794 8C830000 */  lw         $v1, 0x0($a0)
    /* EE1D8 8018D798 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* EE1DC 8018D79C C4400000 */  lwc1       $f0, 0x0($v0)
    /* EE1E0 8018D7A0 00031880 */  sll        $v1, $v1, 2
    /* EE1E4 8018D7A4 00230821 */  addu       $at, $at, $v1
    /* EE1E8 8018D7A8 C4306A10 */  lwc1       $f16, %lo(D_800E6A10)($at)
    /* EE1EC 8018D7AC 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* EE1F0 8018D7B0 44809000 */  mtc1       $zero, $f18
    /* EE1F4 8018D7B4 46008282 */  mul.s      $f10, $f16, $f0
    /* EE1F8 8018D7B8 00230821 */  addu       $at, $at, $v1
    /* EE1FC 8018D7BC 4612003C */  c.lt.s     $f0, $f18
    /* EE200 8018D7C0 3C06800E */  lui        $a2, %hi(D_800E6690)
    /* EE204 8018D7C4 44801000 */  mtc1       $zero, $f2
    /* EE208 8018D7C8 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
    /* EE20C 8018D7CC E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
    /* EE210 8018D7D0 8C890000 */  lw         $t1, 0x0($a0)
    /* EE214 8018D7D4 00095080 */  sll        $t2, $t1, 2
    /* EE218 8018D7D8 00CA5821 */  addu       $t3, $a2, $t2
    /* EE21C 8018D7DC 45000008 */  bc1f       .L8018D800_ovl3
    /* EE220 8018D7E0 E5620000 */   swc1      $f2, 0x0($t3)
    /* EE224 8018D7E4 8C8C0000 */  lw         $t4, 0x0($a0)
    /* EE228 8018D7E8 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EE22C 8018D7EC 46000107 */  neg.s      $f4, $f0
    /* EE230 8018D7F0 000C6880 */  sll        $t5, $t4, 2
    /* EE234 8018D7F4 002D0821 */  addu       $at, $at, $t5
    /* EE238 8018D7F8 10000134 */  b          .L8018DCCC_ovl3
    /* EE23C 8018D7FC E4246850 */   swc1      $f4, %lo(D_800E6850)($at)
  .L8018D800_ovl3:
    /* EE240 8018D800 8C8E0000 */  lw         $t6, 0x0($a0)
    /* EE244 8018D804 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EE248 8018D808 000E7880 */  sll        $t7, $t6, 2
    /* EE24C 8018D80C 002F0821 */  addu       $at, $at, $t7
    /* EE250 8018D810 1000012E */  b          .L8018DCCC_ovl3
    /* EE254 8018D814 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
  jlabel .L8018D818_ovl3
    /* EE258 8018D818 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* EE25C 8018D81C 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* EE260 8018D820 3C19800F */  lui        $t9, %hi(D_800E98E0)
    /* EE264 8018D824 24090001 */  addiu      $t1, $zero, 0x1
    /* EE268 8018D828 8F030000 */  lw         $v1, 0x0($t8)
    /* EE26C 8018D82C 3C02800D */  lui        $v0, %hi(gKirbyController + 0x2)
    /* EE270 8018D830 00031880 */  sll        $v1, $v1, 2
    /* EE274 8018D834 0323C821 */  addu       $t9, $t9, $v1
    /* EE278 8018D838 8F3998E0 */  lw         $t9, %lo(D_800E98E0)($t9)
    /* EE27C 8018D83C 13200003 */  beqz       $t9, .L8018D84C_ovl3
    /* EE280 8018D840 00000000 */   nop
    /* EE284 8018D844 10000021 */  b          .L8018D8CC_ovl3
    /* EE288 8018D848 AD090044 */   sw        $t1, 0x44($t0)
  .L8018D84C_ovl3:
    /* EE28C 8018D84C 94426FEA */  lhu        $v0, %lo(gKirbyController + 0x2)($v0)
    /* EE290 8018D850 3C0B800F */  lui        $t3, %hi(D_800E8920)
    /* EE294 8018D854 01635821 */  addu       $t3, $t3, $v1
    /* EE298 8018D858 304A4000 */  andi       $t2, $v0, 0x4000
    /* EE29C 8018D85C 11400003 */  beqz       $t2, .L8018D86C_ovl3
    /* EE2A0 8018D860 00000000 */   nop
    /* EE2A4 8018D864 10000019 */  b          .L8018D8CC_ovl3
    /* EE2A8 8018D868 AD050044 */   sw        $a1, 0x44($t0)
  .L8018D86C_ovl3:
    /* EE2AC 8018D86C 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
    /* EE2B0 8018D870 304C8000 */  andi       $t4, $v0, 0x8000
    /* EE2B4 8018D874 51600004 */  beql       $t3, $zero, .L8018D888_ovl3
    /* EE2B8 8018D878 910D000A */   lbu       $t5, 0xA($t0)
    /* EE2BC 8018D87C 55800005 */  bnel       $t4, $zero, .L8018D894_ovl3
    /* EE2C0 8018D880 240E0004 */   addiu     $t6, $zero, 0x4
    /* EE2C4 8018D884 910D000A */  lbu        $t5, 0xA($t0)
  .L8018D888_ovl3:
    /* EE2C8 8018D888 24010005 */  addiu      $at, $zero, 0x5
    /* EE2CC 8018D88C 15A10004 */  bne        $t5, $at, .L8018D8A0_ovl3
    /* EE2D0 8018D890 240E0004 */   addiu     $t6, $zero, 0x4
  .L8018D894_ovl3:
    /* EE2D4 8018D894 A100000A */  sb         $zero, 0xA($t0)
    /* EE2D8 8018D898 1000000C */  b          .L8018D8CC_ovl3
    /* EE2DC 8018D89C AD0E0044 */   sw        $t6, 0x44($t0)
  .L8018D8A0_ovl3:
    /* EE2E0 8018D8A0 8D0F0034 */  lw         $t7, 0x34($t0)
    /* EE2E4 8018D8A4 31F80001 */  andi       $t8, $t7, 0x1
    /* EE2E8 8018D8A8 57000009 */  bnel       $t8, $zero, .L8018D8D0_ovl3
    /* EE2EC 8018D8AC 8D090044 */   lw        $t1, 0x44($t0)
    /* EE2F0 8018D8B0 0C048465 */  jal        func_80121194
    /* EE2F4 8018D8B4 00000000 */   nop
    /* EE2F8 8018D8B8 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EE2FC 8018D8BC 10400003 */  beqz       $v0, .L8018D8CC_ovl3
    /* EE300 8018D8C0 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* EE304 8018D8C4 24190006 */  addiu      $t9, $zero, 0x6
    /* EE308 8018D8C8 AD190044 */  sw         $t9, 0x44($t0)
  .L8018D8CC_ovl3:
    /* EE30C 8018D8CC 8D090044 */  lw         $t1, 0x44($t0)
  .L8018D8D0_ovl3:
    /* EE310 8018D8D0 24010002 */  addiu      $at, $zero, 0x2
    /* EE314 8018D8D4 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* EE318 8018D8D8 11210008 */  beq        $t1, $at, .L8018D8FC_ovl3
    /* EE31C 8018D8DC 00000000 */   nop
    /* EE320 8018D8E0 0C0473D6 */  jal        func_8011CF58
    /* EE324 8018D8E4 00000000 */   nop
    /* EE328 8018D8E8 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EE32C 8018D8EC 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* EE330 8018D8F0 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* EE334 8018D8F4 100000F5 */  b          .L8018DCCC_ovl3
    /* EE338 8018D8F8 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
  .L8018D8FC_ovl3:
    /* EE33C 8018D8FC 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* EE340 8018D900 3C06800F */  lui        $a2, %hi(D_800E8AE0)
    /* EE344 8018D904 24C68AE0 */  addiu      $a2, $a2, %lo(D_800E8AE0)
    /* EE348 8018D908 8C8A0000 */  lw         $t2, 0x0($a0)
    /* EE34C 8018D90C 3C018019 */  lui        $at, %hi(D_80197B54_ovl3)
    /* EE350 8018D910 3C02800D */  lui        $v0, %hi(D_800D71E8 + 0x50)
    /* EE354 8018D914 000A5880 */  sll        $t3, $t2, 2
    /* EE358 8018D918 00CB6021 */  addu       $t4, $a2, $t3
    /* EE35C 8018D91C 8D8D0000 */  lw         $t5, 0x0($t4)
    /* EE360 8018D920 31AE0006 */  andi       $t6, $t5, 0x6
    /* EE364 8018D924 15C00006 */  bnez       $t6, .L8018D940_ovl3
    /* EE368 8018D928 00000000 */   nop
    /* EE36C 8018D92C 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* EE370 8018D930 44813000 */  mtc1       $at, $f6
    /* EE374 8018D934 24427238 */  addiu      $v0, $v0, %lo(D_800D71E8 + 0x50)
    /* EE378 8018D938 10000005 */  b          .L8018D950_ovl3
    /* EE37C 8018D93C E4460000 */   swc1      $f6, 0x0($v0)
  .L8018D940_ovl3:
    /* EE380 8018D940 C4287B54 */  lwc1       $f8, %lo(D_80197B54_ovl3)($at)
    /* EE384 8018D944 3C02800D */  lui        $v0, %hi(D_800D71E8 + 0x50)
    /* EE388 8018D948 24427238 */  addiu      $v0, $v0, %lo(D_800D71E8 + 0x50)
    /* EE38C 8018D94C E4480000 */  swc1       $f8, 0x0($v0)
  .L8018D950_ovl3:
    /* EE390 8018D950 8C830000 */  lw         $v1, 0x0($a0)
    /* EE394 8018D954 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* EE398 8018D958 C4400000 */  lwc1       $f0, 0x0($v0)
    /* EE39C 8018D95C 00031880 */  sll        $v1, $v1, 2
    /* EE3A0 8018D960 00230821 */  addu       $at, $at, $v1
    /* EE3A4 8018D964 C4306A10 */  lwc1       $f16, %lo(D_800E6A10)($at)
    /* EE3A8 8018D968 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* EE3AC 8018D96C 44809000 */  mtc1       $zero, $f18
    /* EE3B0 8018D970 46008282 */  mul.s      $f10, $f16, $f0
    /* EE3B4 8018D974 00230821 */  addu       $at, $at, $v1
    /* EE3B8 8018D978 4612003C */  c.lt.s     $f0, $f18
    /* EE3BC 8018D97C 3C06800E */  lui        $a2, %hi(D_800E6690)
    /* EE3C0 8018D980 44801000 */  mtc1       $zero, $f2
    /* EE3C4 8018D984 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
    /* EE3C8 8018D988 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
    /* EE3CC 8018D98C 8C8F0000 */  lw         $t7, 0x0($a0)
    /* EE3D0 8018D990 000FC080 */  sll        $t8, $t7, 2
    /* EE3D4 8018D994 00D8C821 */  addu       $t9, $a2, $t8
    /* EE3D8 8018D998 45000008 */  bc1f       .L8018D9BC_ovl3
    /* EE3DC 8018D99C E7220000 */   swc1      $f2, 0x0($t9)
    /* EE3E0 8018D9A0 8C890000 */  lw         $t1, 0x0($a0)
    /* EE3E4 8018D9A4 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EE3E8 8018D9A8 46000107 */  neg.s      $f4, $f0
    /* EE3EC 8018D9AC 00095080 */  sll        $t2, $t1, 2
    /* EE3F0 8018D9B0 002A0821 */  addu       $at, $at, $t2
    /* EE3F4 8018D9B4 100000C5 */  b          .L8018DCCC_ovl3
    /* EE3F8 8018D9B8 E4246850 */   swc1      $f4, %lo(D_800E6850)($at)
  .L8018D9BC_ovl3:
    /* EE3FC 8018D9BC 8C8B0000 */  lw         $t3, 0x0($a0)
    /* EE400 8018D9C0 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EE404 8018D9C4 000B6080 */  sll        $t4, $t3, 2
    /* EE408 8018D9C8 002C0821 */  addu       $at, $at, $t4
    /* EE40C 8018D9CC 100000BF */  b          .L8018DCCC_ovl3
    /* EE410 8018D9D0 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
  jlabel .L8018D9D4_ovl3
    /* EE414 8018D9D4 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* EE418 8018D9D8 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* EE41C 8018D9DC 3C0D800F */  lui        $t5, %hi(D_800E8920)
    /* EE420 8018D9E0 3C06800F */  lui        $a2, %hi(D_800E8AE0)
    /* EE424 8018D9E4 8C830000 */  lw         $v1, 0x0($a0)
    /* EE428 8018D9E8 24C68AE0 */  addiu      $a2, $a2, %lo(D_800E8AE0)
    /* EE42C 8018D9EC 00031880 */  sll        $v1, $v1, 2
    /* EE430 8018D9F0 01A36821 */  addu       $t5, $t5, $v1
    /* EE434 8018D9F4 8DAD8920 */  lw         $t5, %lo(D_800E8920)($t5)
    /* EE438 8018D9F8 00C3C021 */  addu       $t8, $a2, $v1
    /* EE43C 8018D9FC 51A0000F */  beql       $t5, $zero, .L8018DA3C_ovl3
    /* EE440 8018DA00 8F190000 */   lw        $t9, 0x0($t8)
    /* EE444 8018DA04 0C047717 */  jal        func_8011DC5C
    /* EE448 8018DA08 00000000 */   nop
    /* EE44C 8018DA0C 0C047701 */  jal        func_8011DC04
    /* EE450 8018DA10 2404003C */   addiu     $a0, $zero, 0x3C
    /* EE454 8018DA14 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EE458 8018DA18 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EE45C 8018DA1C 240F0001 */  addiu      $t7, $zero, 0x1
    /* EE460 8018DA20 A50000D2 */  sh         $zero, 0xD2($t0)
    /* EE464 8018DA24 A50000D0 */  sh         $zero, 0xD0($t0)
    /* EE468 8018DA28 AD0F0044 */  sw         $t7, 0x44($t0)
    /* EE46C 8018DA2C 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* EE470 8018DA30 100000A6 */  b          .L8018DCCC_ovl3
    /* EE474 8018DA34 8C84A7C4 */   lw        $a0, %lo(omCurrentObj)($a0)
    /* EE478 8018DA38 8F190000 */  lw         $t9, 0x0($t8)
  .L8018DA3C_ovl3:
    /* EE47C 8018DA3C 3C018019 */  lui        $at, %hi(D_80197B58_ovl3)
    /* EE480 8018DA40 3C02800D */  lui        $v0, %hi(D_800D71E8 + 0x50)
    /* EE484 8018DA44 33290006 */  andi       $t1, $t9, 0x6
    /* EE488 8018DA48 15200006 */  bnez       $t1, .L8018DA64_ovl3
    /* EE48C 8018DA4C 00000000 */   nop
    /* EE490 8018DA50 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
    /* EE494 8018DA54 44813000 */  mtc1       $at, $f6
    /* EE498 8018DA58 24427238 */  addiu      $v0, $v0, %lo(D_800D71E8 + 0x50)
    /* EE49C 8018DA5C 10000005 */  b          .L8018DA74_ovl3
    /* EE4A0 8018DA60 E4460000 */   swc1      $f6, 0x0($v0)
  .L8018DA64_ovl3:
    /* EE4A4 8018DA64 C4287B58 */  lwc1       $f8, %lo(D_80197B58_ovl3)($at)
    /* EE4A8 8018DA68 3C02800D */  lui        $v0, %hi(D_800D71E8 + 0x50)
    /* EE4AC 8018DA6C 24427238 */  addiu      $v0, $v0, %lo(D_800D71E8 + 0x50)
    /* EE4B0 8018DA70 E4480000 */  swc1       $f8, 0x0($v0)
  .L8018DA74_ovl3:
    /* EE4B4 8018DA74 8C830000 */  lw         $v1, 0x0($a0)
    /* EE4B8 8018DA78 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* EE4BC 8018DA7C C4400000 */  lwc1       $f0, 0x0($v0)
    /* EE4C0 8018DA80 00031880 */  sll        $v1, $v1, 2
    /* EE4C4 8018DA84 00230821 */  addu       $at, $at, $v1
    /* EE4C8 8018DA88 C4306A10 */  lwc1       $f16, %lo(D_800E6A10)($at)
    /* EE4CC 8018DA8C 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* EE4D0 8018DA90 44809000 */  mtc1       $zero, $f18
    /* EE4D4 8018DA94 46008282 */  mul.s      $f10, $f16, $f0
    /* EE4D8 8018DA98 00230821 */  addu       $at, $at, $v1
    /* EE4DC 8018DA9C 4612003C */  c.lt.s     $f0, $f18
    /* EE4E0 8018DAA0 3C06800E */  lui        $a2, %hi(D_800E6690)
    /* EE4E4 8018DAA4 44801000 */  mtc1       $zero, $f2
    /* EE4E8 8018DAA8 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
    /* EE4EC 8018DAAC E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
    /* EE4F0 8018DAB0 8C8A0000 */  lw         $t2, 0x0($a0)
    /* EE4F4 8018DAB4 000A5880 */  sll        $t3, $t2, 2
    /* EE4F8 8018DAB8 00CB6021 */  addu       $t4, $a2, $t3
    /* EE4FC 8018DABC 45000008 */  bc1f       .L8018DAE0_ovl3
    /* EE500 8018DAC0 E5820000 */   swc1      $f2, 0x0($t4)
    /* EE504 8018DAC4 8C8D0000 */  lw         $t5, 0x0($a0)
    /* EE508 8018DAC8 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EE50C 8018DACC 46000107 */  neg.s      $f4, $f0
    /* EE510 8018DAD0 000D7080 */  sll        $t6, $t5, 2
    /* EE514 8018DAD4 002E0821 */  addu       $at, $at, $t6
    /* EE518 8018DAD8 10000006 */  b          .L8018DAF4_ovl3
    /* EE51C 8018DADC E4246850 */   swc1      $f4, %lo(D_800E6850)($at)
  .L8018DAE0_ovl3:
    /* EE520 8018DAE0 8C8F0000 */  lw         $t7, 0x0($a0)
    /* EE524 8018DAE4 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EE528 8018DAE8 000FC080 */  sll        $t8, $t7, 2
    /* EE52C 8018DAEC 00380821 */  addu       $at, $at, $t8
    /* EE530 8018DAF0 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
  .L8018DAF4_ovl3:
    /* EE534 8018DAF4 8D1900E4 */  lw         $t9, 0xE4($t0)
    /* EE538 8018DAF8 240C0001 */  addiu      $t4, $zero, 0x1
    /* EE53C 8018DAFC 240D0005 */  addiu      $t5, $zero, 0x5
    /* EE540 8018DB00 13200011 */  beqz       $t9, .L8018DB48_ovl3
    /* EE544 8018DB04 3C0F800D */   lui       $t7, %hi(gKirbyController + 0x2)
    /* EE548 8018DB08 8C890000 */  lw         $t1, 0x0($a0)
    /* EE54C 8018DB0C 3C0B800E */  lui        $t3, %hi(D_800E3210)
    /* EE550 8018DB10 256B3210 */  addiu      $t3, $t3, %lo(D_800E3210)
    /* EE554 8018DB14 00095080 */  sll        $t2, $t1, 2
    /* EE558 8018DB18 014B1021 */  addu       $v0, $t2, $t3
    /* EE55C 8018DB1C C4460000 */  lwc1       $f6, 0x0($v0)
    /* EE560 8018DB20 4606103C */  c.lt.s     $f2, $f6
    /* EE564 8018DB24 00000000 */  nop
    /* EE568 8018DB28 45020005 */  bc1fl      .L8018DB40_ovl3
    /* EE56C 8018DB2C A50C00D2 */   sh        $t4, 0xD2($t0)
    /* EE570 8018DB30 44804000 */  mtc1       $zero, $f8
    /* EE574 8018DB34 00000000 */  nop
    /* EE578 8018DB38 E4480000 */  swc1       $f8, 0x0($v0)
    /* EE57C 8018DB3C A50C00D2 */  sh         $t4, 0xD2($t0)
  .L8018DB40_ovl3:
    /* EE580 8018DB40 AD0D003C */  sw         $t5, 0x3C($t0)
    /* EE584 8018DB44 AD0D0044 */  sw         $t5, 0x44($t0)
  .L8018DB48_ovl3:
    /* EE588 8018DB48 95EF6FEA */  lhu        $t7, %lo(gKirbyController + 0x2)($t7)
    /* EE58C 8018DB4C 31F84000 */  andi       $t8, $t7, 0x4000
    /* EE590 8018DB50 53000003 */  beql       $t8, $zero, .L8018DB60_ovl3
    /* EE594 8018DB54 951900D2 */   lhu       $t9, 0xD2($t0)
    /* EE598 8018DB58 AD050044 */  sw         $a1, 0x44($t0)
    /* EE59C 8018DB5C 951900D2 */  lhu        $t9, 0xD2($t0)
  .L8018DB60_ovl3:
    /* EE5A0 8018DB60 5720005B */  bnel       $t9, $zero, .L8018DCD0_ovl3
    /* EE5A4 8018DB64 8C830000 */   lw        $v1, 0x0($a0)
    /* EE5A8 8018DB68 0C047AF5 */  jal        func_8011EBD4
    /* EE5AC 8018DB6C 00000000 */   nop
    /* EE5B0 8018DB70 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EE5B4 8018DB74 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* EE5B8 8018DB78 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* EE5BC 8018DB7C 10000053 */  b          .L8018DCCC_ovl3
    /* EE5C0 8018DB80 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
  jlabel .L8018DB84_ovl3
    /* EE5C4 8018DB84 0C04843F */  jal        func_801210FC
    /* EE5C8 8018DB88 00000000 */   nop
    /* EE5CC 8018DB8C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EE5D0 8018DB90 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EE5D4 8018DB94 10400004 */  beqz       $v0, .L8018DBA8_ovl3
    /* EE5D8 8018DB98 24050003 */   addiu     $a1, $zero, 0x3
    /* EE5DC 8018DB9C 24090002 */  addiu      $t1, $zero, 0x2
    /* EE5E0 8018DBA0 10000036 */  b          .L8018DC7C_ovl3
    /* EE5E4 8018DBA4 AD090044 */   sw        $t1, 0x44($t0)
  .L8018DBA8_ovl3:
    /* EE5E8 8018DBA8 3C02800D */  lui        $v0, %hi(gKirbyController + 0x2)
    /* EE5EC 8018DBAC 94426FEA */  lhu        $v0, %lo(gKirbyController + 0x2)($v0)
    /* EE5F0 8018DBB0 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* EE5F4 8018DBB4 304A4000 */  andi       $t2, $v0, 0x4000
    /* EE5F8 8018DBB8 11400003 */  beqz       $t2, .L8018DBC8_ovl3
    /* EE5FC 8018DBBC 00000000 */   nop
    /* EE600 8018DBC0 1000002E */  b          .L8018DC7C_ovl3
    /* EE604 8018DBC4 AD050044 */   sw        $a1, 0x44($t0)
  .L8018DBC8_ovl3:
    /* EE608 8018DBC8 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* EE60C 8018DBCC 3C0C800F */  lui        $t4, %hi(D_800E8920)
    /* EE610 8018DBD0 304D8000 */  andi       $t5, $v0, 0x8000
    /* EE614 8018DBD4 8D630000 */  lw         $v1, 0x0($t3)
    /* EE618 8018DBD8 00031880 */  sll        $v1, $v1, 2
    /* EE61C 8018DBDC 01836021 */  addu       $t4, $t4, $v1
    /* EE620 8018DBE0 8D8C8920 */  lw         $t4, %lo(D_800E8920)($t4)
    /* EE624 8018DBE4 51800004 */  beql       $t4, $zero, .L8018DBF8_ovl3
    /* EE628 8018DBE8 910E000A */   lbu       $t6, 0xA($t0)
    /* EE62C 8018DBEC 55A00005 */  bnel       $t5, $zero, .L8018DC04_ovl3
    /* EE630 8018DBF0 240F0004 */   addiu     $t7, $zero, 0x4
    /* EE634 8018DBF4 910E000A */  lbu        $t6, 0xA($t0)
  .L8018DBF8_ovl3:
    /* EE638 8018DBF8 24010005 */  addiu      $at, $zero, 0x5
    /* EE63C 8018DBFC 15C10004 */  bne        $t6, $at, .L8018DC10_ovl3
    /* EE640 8018DC00 240F0004 */   addiu     $t7, $zero, 0x4
  .L8018DC04_ovl3:
    /* EE644 8018DC04 A100000A */  sb         $zero, 0xA($t0)
    /* EE648 8018DC08 1000001C */  b          .L8018DC7C_ovl3
    /* EE64C 8018DC0C AD0F0044 */   sw        $t7, 0x44($t0)
  .L8018DC10_ovl3:
    /* EE650 8018DC10 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* EE654 8018DC14 00230821 */  addu       $at, $at, $v1
    /* EE658 8018DC18 C42A64D0 */  lwc1       $f10, %lo(D_800E64D0)($at)
    /* EE65C 8018DC1C 44808000 */  mtc1       $zero, $f16
    /* EE660 8018DC20 00000000 */  nop
    /* EE664 8018DC24 460A8032 */  c.eq.s     $f16, $f10
    /* EE668 8018DC28 00000000 */  nop
    /* EE66C 8018DC2C 45000013 */  bc1f       .L8018DC7C_ovl3
    /* EE670 8018DC30 00000000 */   nop
    /* EE674 8018DC34 0C047701 */  jal        func_8011DC04
    /* EE678 8018DC38 2404003C */   addiu     $a0, $zero, 0x3C
    /* EE67C 8018DC3C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EE680 8018DC40 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EE684 8018DC44 24180002 */  addiu      $t8, $zero, 0x2
    /* EE688 8018DC48 AD180044 */  sw         $t8, 0x44($t0)
    /* EE68C 8018DC4C 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* EE690 8018DC50 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* EE694 8018DC54 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* EE698 8018DC58 44819000 */  mtc1       $at, $f18
    /* EE69C 8018DC5C 8F290000 */  lw         $t1, 0x0($t9)
    /* EE6A0 8018DC60 3C01800F */  lui        $at, %hi(D_800EA8A0)
    /* EE6A4 8018DC64 00095080 */  sll        $t2, $t1, 2
    /* EE6A8 8018DC68 002A0821 */  addu       $at, $at, $t2
    /* EE6AC 8018DC6C E432A8A0 */  swc1       $f18, %lo(D_800EA8A0)($at)
    /* EE6B0 8018DC70 8D0B0034 */  lw         $t3, 0x34($t0)
    /* EE6B4 8018DC74 356C0001 */  ori        $t4, $t3, 0x1
    /* EE6B8 8018DC78 AD0C0034 */  sw         $t4, 0x34($t0)
  jlabel .L8018DC7C_ovl3
    /* EE6BC 8018DC7C 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* EE6C0 8018DC80 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* EE6C4 8018DC84 3C18800E */  lui        $t8, %hi(D_800DFBD0)
    /* EE6C8 8018DC88 3C048019 */  lui        $a0, %hi(D_80191EA0_ovl3)
    /* EE6CC 8018DC8C 8DAE0000 */  lw         $t6, 0x0($t5)
    /* EE6D0 8018DC90 24841EA0 */  addiu      $a0, $a0, %lo(D_80191EA0_ovl3)
    /* EE6D4 8018DC94 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
    /* EE6D8 8018DC98 000E7880 */  sll        $t7, $t6, 2
    /* EE6DC 8018DC9C 030FC021 */  addu       $t8, $t8, $t7
    /* EE6E0 8018DCA0 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
    /* EE6E4 8018DCA4 0C05A153 */  jal        func_8016854C_ovl3
    /* EE6E8 8018DCA8 8F050000 */   lw        $a1, 0x0($t8)
    /* EE6EC 8018DCAC 3C048019 */  lui        $a0, %hi(D_801961CC_ovl3)
    /* EE6F0 8018DCB0 248461CC */  addiu      $a0, $a0, %lo(D_801961CC_ovl3)
    /* EE6F4 8018DCB4 0C055127 */  jal        func_8015449C_ovl3
    /* EE6F8 8018DCB8 00002825 */   or        $a1, $zero, $zero
    /* EE6FC 8018DCBC 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EE700 8018DCC0 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* EE704 8018DCC4 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EE708 8018DCC8 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
  .L8018DCCC_ovl3:
    /* EE70C 8018DCCC 8C830000 */  lw         $v1, 0x0($a0)
  .L8018DCD0_ovl3:
    /* EE710 8018DCD0 3C19800F */  lui        $t9, %hi(D_800E8920)
    /* EE714 8018DCD4 00031880 */  sll        $v1, $v1, 2
    /* EE718 8018DCD8 0323C821 */  addu       $t9, $t9, $v1
    /* EE71C 8018DCDC 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
    /* EE720 8018DCE0 57200009 */  bnel       $t9, $zero, .L8018DD08_ovl3
    /* EE724 8018DCE4 8D0A004C */   lw        $t2, 0x4C($t0)
    /* EE728 8018DCE8 0C04783A */  jal        func_8011E0E8
    /* EE72C 8018DCEC 00000000 */   nop
    /* EE730 8018DCF0 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* EE734 8018DCF4 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* EE738 8018DCF8 8D230000 */  lw         $v1, 0x0($t1)
    /* EE73C 8018DCFC 10000014 */  b          .L8018DD50_ovl3
    /* EE740 8018DD00 00031880 */   sll       $v1, $v1, 2
    /* EE744 8018DD04 8D0A004C */  lw         $t2, 0x4C($t0)
  .L8018DD08_ovl3:
    /* EE748 8018DD08 24040002 */  addiu      $a0, $zero, 0x2
    /* EE74C 8018DD0C 24050001 */  addiu      $a1, $zero, 0x1
    /* EE750 8018DD10 1540000F */  bnez       $t2, .L8018DD50_ovl3
    /* EE754 8018DD14 3C06800F */   lui       $a2, %hi(D_800E9AA0)
    /* EE758 8018DD18 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
    /* EE75C 8018DD1C 01635821 */  addu       $t3, $t3, $v1
    /* EE760 8018DD20 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
    /* EE764 8018DD24 00C33021 */  addu       $a2, $a2, $v1
    /* EE768 8018DD28 8CC69AA0 */  lw         $a2, %lo(D_800E9AA0)($a2)
    /* EE76C 8018DD2C 0C02A040 */  jal        func_800A8100
    /* EE770 8018DD30 8D670018 */   lw        $a3, 0x18($t3)
    /* EE774 8018DD34 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EE778 8018DD38 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EE77C 8018DD3C AD02004C */  sw         $v0, 0x4C($t0)
    /* EE780 8018DD40 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* EE784 8018DD44 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* EE788 8018DD48 8D830000 */  lw         $v1, 0x0($t4)
    /* EE78C 8018DD4C 00031880 */  sll        $v1, $v1, 2
  .L8018DD50_ovl3:
    /* EE790 8018DD50 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* EE794 8018DD54 00230821 */  addu       $at, $at, $v1
    /* EE798 8018DD58 C42CA6E0 */  lwc1       $f12, %lo(D_800EA6E0)($at)
    /* EE79C 8018DD5C 3C01800F */  lui        $at, %hi(D_800EA8A0)
    /* EE7A0 8018DD60 00230821 */  addu       $at, $at, $v1
    /* EE7A4 8018DD64 0C047A5E */  jal        func_8011E978
    /* EE7A8 8018DD68 C42EA8A0 */   lwc1      $f14, %lo(D_800EA8A0)($at)
    /* EE7AC 8018DD6C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EE7B0 8018DD70 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EE7B4 8018DD74 8D0D003C */  lw         $t5, 0x3C($t0)
    /* EE7B8 8018DD78 8D0E0044 */  lw         $t6, 0x44($t0)
    /* EE7BC 8018DD7C 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* EE7C0 8018DD80 51AE000F */  beql       $t5, $t6, .L8018DDC0_ovl3
    /* EE7C4 8018DD84 8FBF0014 */   lw        $ra, 0x14($sp)
    /* EE7C8 8018DD88 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* EE7CC 8018DD8C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* EE7D0 8018DD90 3C058017 */  lui        $a1, %hi(func_8016C510_ovl3)
    /* EE7D4 8018DD94 8DF80000 */  lw         $t8, 0x0($t7)
    /* EE7D8 8018DD98 24A5C510 */  addiu      $a1, $a1, %lo(func_8016C510_ovl3)
    /* EE7DC 8018DD9C 0018C880 */  sll        $t9, $t8, 2
    /* EE7E0 8018DDA0 00992021 */  addu       $a0, $a0, $t9
    /* EE7E4 8018DDA4 0C02C7B2 */  jal        assign_new_process_entry
    /* EE7E8 8018DDA8 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* EE7EC 8018DDAC 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EE7F0 8018DDB0 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EE7F4 8018DDB4 8D090044 */  lw         $t1, 0x44($t0)
    /* EE7F8 8018DDB8 AD09003C */  sw         $t1, 0x3C($t0)
  .L8018DDBC_ovl3:
    /* EE7FC 8018DDBC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8018DDC0_ovl3:
    /* EE800 8018DDC0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* EE804 8018DDC4 03E00008 */  jr         $ra
    /* EE808 8018DDC8 00000000 */   nop
endlabel func_8018D4C8_ovl3
.size func_8018D4C8_ovl3, . - func_8018D4C8_ovl3
