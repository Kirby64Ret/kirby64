glabel func_8017599C_ovl3
/* D63DC 8017599C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* D63E0 801759A0 AFB00018 */  sw         $s0, 0x18($sp)
/* D63E4 801759A4 3C108013 */  lui        $s0, %hi(gKirbyState)
/* D63E8 801759A8 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
/* D63EC 801759AC AE000030 */  sw         $zero, 0x30($s0)
/* D63F0 801759B0 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* D63F4 801759B4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* D63F8 801759B8 AFBF001C */  sw         $ra, 0x1C($sp)
/* D63FC 801759BC AFA40038 */  sw         $a0, 0x38($sp)
/* D6400 801759C0 8DCF0000 */  lw         $t7, 0x0($t6)
/* D6404 801759C4 3C19800F */  lui        $t9, %hi(D_800E8AE0)
/* D6408 801759C8 3C014080 */  lui        $at, (0x40800000 >> 16)
.L801759CC_ovl5:
/* D640C 801759CC 000FC080 */  sll        $t8, $t7, 2
/* D6410 801759D0 0338C821 */  addu       $t9, $t9, $t8
/* D6414 801759D4 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
/* D6418 801759D8 33280006 */  andi       $t0, $t9, 0x6
/* D641C 801759DC 51000006 */  beql       $t0, $zero, .L801759F8_ovl3
/* D6420 801759E0 44813000 */   mtc1      $at, $f6
/* D6424 801759E4 3C014000 */  lui        $at, (0x40000000 >> 16)
/* D6428 801759E8 44812000 */  mtc1       $at, $f4
/* D642C 801759EC 10000004 */  b          .L80175A00_ovl3
/* D6430 801759F0 E7A40024 */   swc1      $f4, 0x24($sp)
/* D6434 801759F4 44813000 */  mtc1       $at, $f6
.L801759F8_ovl3:
/* D6438 801759F8 00000000 */  nop
/* D643C 801759FC E7A60024 */  swc1       $f6, 0x24($sp)
.L80175A00_ovl3:
/* D6440 80175A00 0C02BB30 */  jal        func_800AECC0
/* D6444 80175A04 C7AC0024 */   lwc1      $f12, 0x24($sp)
/* D6448 80175A08 0C02BB48 */  jal        func_800AED20
.L80175A0C_ovl5:
/* D644C 80175A0C C7AC0024 */   lwc1      $f12, 0x24($sp)
/* D6450 80175A10 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D6454 80175A14 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* D6458 80175A18 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* D645C 80175A1C 24090014 */  addiu      $t1, $zero, 0x14
/* D6460 80175A20 8C6A0000 */  lw         $t2, 0x0($v1)
/* D6464 80175A24 24040001 */  addiu      $a0, $zero, 0x1
glabel func_80175A28_ovl5
/* D6468 80175A28 3C0F8019 */  lui        $t7, %hi(D_801926E8_ovl3)
/* D646C 80175A2C 000A5880 */  sll        $t3, $t2, 2
/* D6470 80175A30 002B0821 */  addu       $at, $at, $t3
/* D6474 80175A34 AC29DFD0 */  sw         $t1, %lo(D_800DDFD0)($at)
/* D6478 80175A38 92020004 */  lbu        $v0, 0x4($s0)
/* D647C 80175A3C 3C0A8019 */  lui        $t2, %hi(D_80190358_ovl3)
/* D6480 80175A40 3C0C8019 */  lui        $t4, %hi(D_80192704_ovl3)
/* D6484 80175A44 14820008 */  bne        $a0, $v0, .L80175A68_ovl3
/* D6488 80175A48 254A0358 */   addiu     $t2, $t2, %lo(D_80190358_ovl3)
/* D648C 80175A4C 8C6D0000 */  lw         $t5, 0x0($v1)
/* D6490 80175A50 3C01800E */  lui        $at, %hi(D_800E0490)
/* D6494 80175A54 258C2704 */  addiu      $t4, $t4, %lo(D_80192704_ovl3)
/* D6498 80175A58 000D7080 */  sll        $t6, $t5, 2
/* D649C 80175A5C 002E0821 */  addu       $at, $at, $t6
/* D64A0 80175A60 10000007 */  b          .L80175A80_ovl3
/* D64A4 80175A64 AC2C0490 */   sw        $t4, %lo(D_800E0490)($at)
.L80175A68_ovl3:
/* D64A8 80175A68 8C780000 */  lw         $t8, 0x0($v1)
/* D64AC 80175A6C 3C01800E */  lui        $at, %hi(D_800E0490)
/* D64B0 80175A70 25EF26E8 */  addiu      $t7, $t7, %lo(D_801926E8_ovl3)
/* D64B4 80175A74 0018C880 */  sll        $t9, $t8, 2
/* D64B8 80175A78 00390821 */  addu       $at, $at, $t9
/* D64BC 80175A7C AC2F0490 */  sw         $t7, %lo(D_800E0490)($at)
.L80175A80_ovl3:
/* D64C0 80175A80 14820005 */  bne        $a0, $v0, .L80175A98_ovl3
/* D64C4 80175A84 3C018019 */   lui       $at, %hi(D_80197480_ovl3)
/* D64C8 80175A88 3C088019 */  lui        $t0, %hi(D_801903E0_ovl3)
/* D64CC 80175A8C 250803E0 */  addiu      $t0, $t0, %lo(D_801903E0_ovl3)
/* D64D0 80175A90 10000002 */  b          .L80175A9C_ovl3
/* D64D4 80175A94 AE08015C */   sw        $t0, 0x15C($s0)
.L80175A98_ovl3:
/* D64D8 80175A98 AE0A015C */  sw         $t2, 0x15C($s0)
.L80175A9C_ovl3:
/* D64DC 80175A9C 8C690000 */  lw         $t1, 0x0($v1)
/* D64E0 80175AA0 C4207480 */  lwc1       $f0, %lo(D_80197480_ovl3)($at)
/* D64E4 80175AA4 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* D64E8 80175AA8 00095880 */  sll        $t3, $t1, 2
/* D64EC 80175AAC 002B0821 */  addu       $at, $at, $t3
/* D64F0 80175AB0 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* D64F4 80175AB4 8C6D0000 */  lw         $t5, 0x0($v1)
/* D64F8 80175AB8 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* D64FC 80175ABC 44804000 */  mtc1       $zero, $f8
/* D6500 80175AC0 000D6080 */  sll        $t4, $t5, 2
/* D6504 80175AC4 002C0821 */  addu       $at, $at, $t4
/* D6508 80175AC8 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* D650C 80175ACC 8C6E0000 */  lw         $t6, 0x0($v1)
glabel func_80175AD0_ovl5
/* D6510 80175AD0 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* D6514 80175AD4 2409FFFF */  addiu      $t1, $zero, -0x1
/* D6518 80175AD8 000EC080 */  sll        $t8, $t6, 2
/* D651C 80175ADC 00380821 */  addu       $at, $at, $t8
/* D6520 80175AE0 E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
/* D6524 80175AE4 8C6F0000 */  lw         $t7, 0x0($v1)
/* D6528 80175AE8 3C01800E */  lui        $at, %hi(D_800DF310)
/* D652C 80175AEC 000FC880 */  sll        $t9, $t7, 2
/* D6530 80175AF0 00390821 */  addu       $at, $at, $t9
/* D6534 80175AF4 AC20F310 */  sw         $zero, %lo(D_800DF310)($at)
.L80175AF8_ovl5:
/* D6538 80175AF8 8C680000 */  lw         $t0, 0x0($v1)
/* D653C 80175AFC 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* D6540 80175B00 00085080 */  sll        $t2, $t0, 2
/* D6544 80175B04 002A0821 */  addu       $at, $at, $t2
/* D6548 80175B08 E4284010 */  swc1       $f8, %lo(gEntitiesAngleXArray)($at)
/* D654C 80175B0C 3C01800D */  lui        $at, %hi(D_800D6ED0 + 0x40)
/* D6550 80175B10 AC206F10 */  sw         $zero, %lo(D_800D6ED0 + 0x40)($at)
/* D6554 80175B14 AE000034 */  sw         $zero, 0x34($s0)
/* D6558 80175B18 A2000007 */  sb         $zero, 0x7($s0)
/* D655C 80175B1C A20000B0 */  sb         $zero, 0xB0($s0)
/* D6560 80175B20 8C6B0000 */  lw         $t3, 0x0($v1)
/* D6564 80175B24 3C01800F */  lui        $at, %hi(D_800E7CE0 + 0x380)
/* D6568 80175B28 000B6880 */  sll        $t5, $t3, 2
/* D656C 80175B2C 002D0821 */  addu       $at, $at, $t5
/* D6570 80175B30 0C047717 */  jal        func_8011DC5C
/* D6574 80175B34 AC298060 */   sw        $t1, %lo(D_800E7CE0 + 0x380)($at)
/* D6578 80175B38 0C04783A */  jal        func_8011E0E8
/* D657C 80175B3C 00000000 */   nop
/* D6580 80175B40 0C04788D */  jal        func_8011E234
/* D6584 80175B44 00000000 */   nop
/* D6588 80175B48 8E0E00A0 */  lw         $t6, 0xA0($s0)
/* D658C 80175B4C 240C00F0 */  addiu      $t4, $zero, 0xF0
/* D6590 80175B50 24010012 */  addiu      $at, $zero, 0x12
/* D6594 80175B54 11C10005 */  beq        $t6, $at, .L80175B6C_ovl3
/* D6598 80175B58 AE0C001C */   sw        $t4, 0x1C($s0)
/* D659C 80175B5C AE0000A0 */  sw         $zero, 0xA0($s0)
/* D65A0 80175B60 24180003 */  addiu      $t8, $zero, 0x3
/* D65A4 80175B64 3C01801A */  lui        $at, %hi(D_80198838_ovl3)
/* D65A8 80175B68 A4388838 */  sh         $t8, %lo(D_80198838_ovl3)($at)
.L80175B6C_ovl3:
/* D65AC 80175B6C 820F000D */  lb         $t7, 0xD($s0)
glabel func_80175B70_ovl5
/* D65B0 80175B70 25F90001 */  addiu      $t9, $t7, 0x1
/* D65B4 80175B74 2F210006 */  sltiu      $at, $t9, 0x6
/* D65B8 80175B78 10200019 */  beqz       $at, .L80175BE0_ovl3
/* D65BC 80175B7C 0019C880 */   sll       $t9, $t9, 2
/* D65C0 80175B80 3C018019 */  lui        $at, %hi(jtbl_80197484_ovl3)
/* D65C4 80175B84 00390821 */  addu       $at, $at, $t9
/* D65C8 80175B88 8C397484 */  lw         $t9, %lo(jtbl_80197484_ovl3)($at)
glabel func_80175B8C_ovl5
/* D65CC 80175B8C 03200008 */  jr         $t9
/* D65D0 80175B90 00000000 */   nop
/* D65D4 80175B94 2408FFFF */  addiu      $t0, $zero, -0x1
/* D65D8 80175B98 A208000D */  sb         $t0, 0xD($s0)
/* D65DC 80175B9C 10000011 */  b          .L80175BE4_ovl3
/* D65E0 80175BA0 92020004 */   lbu       $v0, 0x4($s0)
/* D65E4 80175BA4 240A0002 */  addiu      $t2, $zero, 0x2
/* D65E8 80175BA8 A20A000D */  sb         $t2, 0xD($s0)
/* D65EC 80175BAC 1000000D */  b          .L80175BE4_ovl3
glabel func_80175BB0_ovl5
/* D65F0 80175BB0 92020004 */   lbu       $v0, 0x4($s0)
/* D65F4 80175BB4 920B0006 */  lbu        $t3, 0x6($s0)
/* D65F8 80175BB8 24010018 */  addiu      $at, $zero, 0x18
/* D65FC 80175BBC 15610006 */  bne        $t3, $at, .L80175BD8_ovl3
/* D6600 80175BC0 00000000 */   nop
/* D6604 80175BC4 92090004 */  lbu        $t1, 0x4($s0)
/* D6608 80175BC8 240DFFFD */  addiu      $t5, $zero, -0x3
/* D660C 80175BCC 15200002 */  bnez       $t1, .L80175BD8_ovl3
/* D6610 80175BD0 00000000 */   nop
glabel func_80175BD4_ovl5
/* D6614 80175BD4 A20D000D */  sb         $t5, 0xD($s0)
.L80175BD8_ovl3:
/* D6618 80175BD8 10000002 */  b          .L80175BE4_ovl3
/* D661C 80175BDC 92020004 */   lbu       $v0, 0x4($s0)
.L80175BE0_ovl3:
/* D6620 80175BE0 92020004 */  lbu        $v0, 0x4($s0)
.L80175BE4_ovl3:
/* D6624 80175BE4 24010001 */  addiu      $at, $zero, 0x1
/* D6628 80175BE8 1441000A */  bne        $v0, $at, .L80175C14_ovl3
/* D662C 80175BEC 3C040002 */   lui       $a0, (0x20007 >> 16)
/* D6630 80175BF0 3C040002 */  lui        $a0, (0x20009 >> 16)
/* D6634 80175BF4 0C02AA22 */  jal        func_800AA888
/* D6638 80175BF8 34840009 */   ori       $a0, $a0, (0x20009 & 0xFFFF)
/* D663C 80175BFC 1440000B */  bnez       $v0, .L80175C2C_ovl3
/* D6640 80175C00 3C040002 */   lui       $a0, (0x20009 >> 16)
/* D6644 80175C04 0C048BC2 */  jal        func_80122F08
/* D6648 80175C08 34840009 */   ori       $a0, $a0, (0x20009 & 0xFFFF)
/* D664C 80175C0C 10000008 */  b          .L80175C30_ovl3
/* D6650 80175C10 240C0002 */   addiu     $t4, $zero, 0x2
.L80175C14_ovl3:
/* D6654 80175C14 0C02AA22 */  jal        func_800AA888
/* D6658 80175C18 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
/* D665C 80175C1C 14400003 */  bnez       $v0, .L80175C2C_ovl3
/* D6660 80175C20 3C040002 */   lui       $a0, (0x20007 >> 16)
/* D6664 80175C24 0C048BC2 */  jal        func_80122F08
/* D6668 80175C28 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
.L80175C2C_ovl3:
/* D666C 80175C2C 240C0002 */  addiu      $t4, $zero, 0x2
.L80175C30_ovl3:
/* D6670 80175C30 AE0C0154 */  sw         $t4, 0x154($s0)
/* D6674 80175C34 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D6678 80175C38 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* D667C 80175C3C 44805000 */  mtc1       $zero, $f10
.L80175C40_ovl5:
/* D6680 80175C40 3C05800E */  lui        $a1, %hi(D_800E3750)
/* D6684 80175C44 8C6E0000 */  lw         $t6, 0x0($v1)
/* D6688 80175C48 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* D668C 80175C4C 3C01800E */  lui        $at, %hi(D_800E3210)
/* D6690 80175C50 000EC080 */  sll        $t8, $t6, 2
/* D6694 80175C54 00B87821 */  addu       $t7, $a1, $t8
/* D6698 80175C58 E5EA0000 */  swc1       $f10, 0x0($t7)
/* D669C 80175C5C 8C620000 */  lw         $v0, 0x0($v1)
/* D66A0 80175C60 24040263 */  addiu      $a0, $zero, 0x263
/* D66A4 80175C64 00021080 */  sll        $v0, $v0, 2
/* D66A8 80175C68 00A2C821 */  addu       $t9, $a1, $v0
/* D66AC 80175C6C C7300000 */  lwc1       $f16, 0x0($t9)
.L80175C70_ovl5:
/* D66B0 80175C70 00220821 */  addu       $at, $at, $v0
/* D66B4 80175C74 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
/* D66B8 80175C78 8C680000 */  lw         $t0, 0x0($v1)
/* D66BC 80175C7C 3C018019 */  lui        $at, %hi(D_8019749C_ovl3)
/* D66C0 80175C80 C432749C */  lwc1       $f18, %lo(D_8019749C_ovl3)($at)
/* D66C4 80175C84 3C01800E */  lui        $at, %hi(D_800E3C90)
/* D66C8 80175C88 00085080 */  sll        $t2, $t0, 2
/* D66CC 80175C8C 002A0821 */  addu       $at, $at, $t2
/* D66D0 80175C90 0C029D9E */  jal        play_sound
/* D66D4 80175C94 E4323C90 */   swc1      $f18, %lo(D_800E3C90)($at)
/* D66D8 80175C98 240B0001 */  addiu      $t3, $zero, 0x1
/* D66DC 80175C9C A60B0068 */  sh         $t3, 0x68($s0)
/* D66E0 80175CA0 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* D66E4 80175CA4 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* D66E8 80175CA8 3C0D800F */  lui        $t5, %hi(D_800E83E0 + 0x1C0)
/* D66EC 80175CAC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* D66F0 80175CB0 8D220000 */  lw         $v0, 0x0($t1)
/* D66F4 80175CB4 44816000 */  mtc1       $at, $f12
/* D66F8 80175CB8 3C01800E */  lui        $at, %hi(D_800E6A10)
/* D66FC 80175CBC 00021080 */  sll        $v0, $v0, 2
/* D6700 80175CC0 01A26821 */  addu       $t5, $t5, $v0
/* D6704 80175CC4 8DAD85A0 */  lw         $t5, %lo(D_800E83E0 + 0x1C0)($t5)
/* D6708 80175CC8 00220821 */  addu       $at, $at, $v0
/* D670C 80175CCC 00002025 */  or         $a0, $zero, $zero
/* D6710 80175CD0 448D2000 */  mtc1       $t5, $f4
/* D6714 80175CD4 00000000 */  nop
/* D6718 80175CD8 46802020 */  cvt.s.w    $f0, $f4
/* D671C 80175CDC 46006032 */  c.eq.s     $f12, $f0
/* D6720 80175CE0 00000000 */  nop
/* D6724 80175CE4 45020006 */  bc1fl      .L80175D00_ovl3
/* D6728 80175CE8 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
/* D672C 80175CEC C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
/* D6730 80175CF0 46066032 */  c.eq.s     $f12, $f6
/* D6734 80175CF4 00000000 */  nop
/* D6738 80175CF8 4501000C */  bc1t       .L80175D2C_ovl3
/* D673C 80175CFC 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
.L80175D00_ovl3:
/* D6740 80175D00 44811000 */  mtc1       $at, $f2
/* D6744 80175D04 3C01800E */  lui        $at, %hi(D_800E6A10)
/* D6748 80175D08 00220821 */  addu       $at, $at, $v0
/* D674C 80175D0C 46001032 */  c.eq.s     $f2, $f0
/* D6750 80175D10 00000000 */  nop
/* D6754 80175D14 45020009 */  bc1fl      .L80175D3C_ovl3
/* D6758 80175D18 AE000044 */   sw        $zero, 0x44($s0)
/* D675C 80175D1C C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* D6760 80175D20 46081032 */  c.eq.s     $f2, $f8
/* D6764 80175D24 00000000 */  nop
/* D6768 80175D28 45000003 */  bc1f       .L80175D38_ovl3
.L80175D2C_ovl3:
/* D676C 80175D2C 240C0001 */   addiu     $t4, $zero, 0x1
/* D6770 80175D30 10000002 */  b          .L80175D3C_ovl3
/* D6774 80175D34 AE0C0044 */   sw        $t4, 0x44($s0)
.L80175D38_ovl3:
/* D6778 80175D38 AE000044 */  sw         $zero, 0x44($s0)
.L80175D3C_ovl3:
/* D677C 80175D3C 0C02ED1A */  jal        func_800BB468
/* D6780 80175D40 00002825 */   or        $a1, $zero, $zero
/* D6784 80175D44 92020006 */  lbu        $v0, 0x6($s0)
/* D6788 80175D48 2401000B */  addiu      $at, $zero, 0xB
/* D678C 80175D4C 10410003 */  beq        $v0, $at, .L80175D5C_ovl3
/* D6790 80175D50 2401000A */   addiu     $at, $zero, 0xA
/* D6794 80175D54 14410014 */  bne        $v0, $at, .L80175DA8_ovl3
/* D6798 80175D58 00000000 */   nop
.L80175D5C_ovl3:
/* D679C 80175D5C 8E0E0044 */  lw         $t6, 0x44($s0)
/* D67A0 80175D60 3C040002 */  lui        $a0, (0x20071 >> 16)
/* D67A4 80175D64 34840071 */  ori        $a0, $a0, (0x20071 & 0xFFFF)
/* D67A8 80175D68 11C00004 */  beqz       $t6, .L80175D7C_ovl3
/* D67AC 80175D6C 00000000 */   nop
/* D67B0 80175D70 3C040002 */  lui        $a0, (0x2006B >> 16)
/* D67B4 80175D74 10000001 */  b          .L80175D7C_ovl3
/* D67B8 80175D78 3484006B */   ori       $a0, $a0, (0x2006B & 0xFFFF)
.L80175D7C_ovl3:
/* D67BC 80175D7C 0C0473D6 */  jal        func_8011CF58
/* D67C0 80175D80 AFA40034 */   sw        $a0, 0x34($sp)
/* D67C4 80175D84 3C050002 */  lui        $a1, (0x20007 >> 16)
/* D67C8 80175D88 8FA40034 */  lw         $a0, 0x34($sp)
/* D67CC 80175D8C 34A50007 */  ori        $a1, $a1, (0x20007 & 0xFFFF)
/* D67D0 80175D90 0C02A9E3 */  jal        func_800AA78C
/* D67D4 80175D94 3C064040 */   lui       $a2, (0x40400000 >> 16)
/* D67D8 80175D98 0C02BB30 */  jal        func_800AECC0
/* D67DC 80175D9C C7AC0024 */   lwc1      $f12, 0x24($sp)
/* D67E0 80175DA0 0C02BB48 */  jal        func_800AED20
/* D67E4 80175DA4 C7AC0024 */   lwc1      $f12, 0x24($sp)
.L80175DA8_ovl3:
/* D67E8 80175DA8 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D67EC 80175DAC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* D67F0 80175DB0 3C18800F */  lui        $t8, %hi(D_800E83E0 + 0x1C0)
/* D67F4 80175DB4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* D67F8 80175DB8 8C620000 */  lw         $v0, 0x0($v1)
glabel func_80175DBC_ovl5
/* D67FC 80175DBC 44815000 */  mtc1       $at, $f10
/* D6800 80175DC0 3C0F800F */  lui        $t7, %hi(D_800E8AE0)
/* D6804 80175DC4 00021080 */  sll        $v0, $v0, 2
/* D6808 80175DC8 0302C021 */  addu       $t8, $t8, $v0
/* D680C 80175DCC 8F1885A0 */  lw         $t8, %lo(D_800E83E0 + 0x1C0)($t8)
/* D6810 80175DD0 44802000 */  mtc1       $zero, $f4
/* D6814 80175DD4 3C01C100 */  lui        $at, (0xC1000000 >> 16)
/* D6818 80175DD8 44988000 */  mtc1       $t8, $f16
/* D681C 80175DDC 01E27821 */  addu       $t7, $t7, $v0
/* D6820 80175DE0 3C07800E */  lui        $a3, %hi(D_800E6690)
/* D6824 80175DE4 468084A0 */  cvt.s.w    $f18, $f16
/* D6828 80175DE8 46125032 */  c.eq.s     $f10, $f18
/* D682C 80175DEC 00000000 */  nop
/* D6830 80175DF0 45020007 */  bc1fl      .L80175E10_ovl3
/* D6834 80175DF4 44810000 */   mtc1      $at, $f0
/* D6838 80175DF8 3C014100 */  lui        $at, (0x41000000 >> 16)
/* D683C 80175DFC 44810000 */  mtc1       $at, $f0
/* D6840 80175E00 3C018019 */  lui        $at, %hi(D_801974A0_ovl3)
/* D6844 80175E04 10000004 */  b          .L80175E18_ovl3
/* D6848 80175E08 C42274A0 */   lwc1      $f2, %lo(D_801974A0_ovl3)($at)
/* D684C 80175E0C 44810000 */  mtc1       $at, $f0
.L80175E10_ovl3:
/* D6850 80175E10 3C018019 */  lui        $at, %hi(D_801974A4_ovl3)
/* D6854 80175E14 C42274A4 */  lwc1       $f2, %lo(D_801974A4_ovl3)($at)
.L80175E18_ovl3:
/* D6858 80175E18 8DEF8AE0 */  lw         $t7, %lo(D_800E8AE0)($t7)
/* D685C 80175E1C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* D6860 80175E20 11E00007 */  beqz       $t7, .L80175E40_ovl3
/* D6864 80175E24 00000000 */   nop
/* D6868 80175E28 44816000 */  mtc1       $at, $f12
/* D686C 80175E2C 00000000 */  nop
/* D6870 80175E30 460C0002 */  mul.s      $f0, $f0, $f12
/* D6874 80175E34 00000000 */  nop
/* D6878 80175E38 460C1082 */  mul.s      $f2, $f2, $f12
/* D687C 80175E3C 00000000 */  nop
.L80175E40_ovl3:
/* D6880 80175E40 3C01800E */  lui        $at, %hi(D_800E64D0)
/* D6884 80175E44 00220821 */  addu       $at, $at, $v0
/* D6888 80175E48 E42064D0 */  swc1       $f0, %lo(D_800E64D0)($at)
.L80175E4C_ovl5:
/* D688C 80175E4C 8C790000 */  lw         $t9, 0x0($v1)
/* D6890 80175E50 4604003C */  c.lt.s     $f0, $f4
/* D6894 80175E54 24E76690 */  addiu      $a3, $a3, %lo(D_800E6690)
/* D6898 80175E58 00194080 */  sll        $t0, $t9, 2
.L80175E5C_ovl5:
/* D689C 80175E5C 00E85021 */  addu       $t2, $a3, $t0
/* D68A0 80175E60 45000008 */  bc1f       .L80175E84_ovl3
/* D68A4 80175E64 E5420000 */   swc1      $f2, 0x0($t2)
/* D68A8 80175E68 8C6B0000 */  lw         $t3, 0x0($v1)
/* D68AC 80175E6C 3C01800E */  lui        $at, %hi(D_800E6850)
/* D68B0 80175E70 46000187 */  neg.s      $f6, $f0
/* D68B4 80175E74 000B4880 */  sll        $t1, $t3, 2
/* D68B8 80175E78 00290821 */  addu       $at, $at, $t1
/* D68BC 80175E7C 10000006 */  b          func_80175E98_ovl5
/* D68C0 80175E80 E4266850 */   swc1      $f6, %lo(D_800E6850)($at)
.L80175E84_ovl3:
/* D68C4 80175E84 8C6D0000 */  lw         $t5, 0x0($v1)
/* D68C8 80175E88 3C01800E */  lui        $at, %hi(D_800E6850)
/* D68CC 80175E8C 000D6080 */  sll        $t4, $t5, 2
/* D68D0 80175E90 002C0821 */  addu       $at, $at, $t4
/* D68D4 80175E94 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
glabel func_80175E98_ovl5
/* D68D8 80175E98 92020004 */  lbu        $v0, 0x4($s0)
/* D68DC 80175E9C 24010001 */  addiu      $at, $zero, 0x1
/* D68E0 80175EA0 50400009 */  beql       $v0, $zero, .L80175EC8_ovl3
/* D68E4 80175EA4 8E0E0044 */   lw        $t6, 0x44($s0)
/* D68E8 80175EA8 1041006E */  beq        $v0, $at, .L80176064_ovl3
/* D68EC 80175EAC 3C040002 */   lui       $a0, (0x20161 >> 16)
/* D68F0 80175EB0 24010002 */  addiu      $at, $zero, 0x2
/* D68F4 80175EB4 10410061 */  beq        $v0, $at, .L8017603C_ovl3
/* D68F8 80175EB8 3C040002 */   lui       $a0, (0x200BF >> 16)
/* D68FC 80175EBC 10000073 */  b          .L8017608C_ovl3
/* D6900 80175EC0 8C6E0000 */   lw        $t6, 0x0($v1)
/* D6904 80175EC4 8E0E0044 */  lw         $t6, 0x44($s0)
.L80175EC8_ovl3:
/* D6908 80175EC8 3C040002 */  lui        $a0, (0x20071 >> 16)
/* D690C 80175ECC 34840071 */  ori        $a0, $a0, (0x20071 & 0xFFFF)
/* D6910 80175ED0 11C00009 */  beqz       $t6, .L80175EF8_ovl3
/* D6914 80175ED4 3C050002 */   lui       $a1, (0x20072 >> 16)
/* D6918 80175ED8 3C040002 */  lui        $a0, (0x2006B >> 16)
/* D691C 80175EDC 3C050002 */  lui        $a1, (0x2006C >> 16)
/* D6920 80175EE0 34A5006C */  ori        $a1, $a1, (0x2006C & 0xFFFF)
/* D6924 80175EE4 3484006B */  ori        $a0, $a0, (0x2006B & 0xFFFF)
/* D6928 80175EE8 0C048C3A */  jal        func_801230E8
/* D692C 80175EEC 24060001 */   addiu     $a2, $zero, 0x1
/* D6930 80175EF0 10000004 */  b          .L80175F04_ovl3
/* D6934 80175EF4 00000000 */   nop
.L80175EF8_ovl3:
/* D6938 80175EF8 34A50072 */  ori        $a1, $a1, (0x20072 & 0xFFFF)
/* D693C 80175EFC 0C048C3A */  jal        func_801230E8
/* D6940 80175F00 24060001 */   addiu     $a2, $zero, 0x1
.L80175F04_ovl3:
/* D6944 80175F04 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D6948 80175F08 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* D694C 80175F0C 3C18800F */  lui        $t8, %hi(D_800E8920)
/* D6950 80175F10 3C0F800F */  lui        $t7, %hi(D_800E8AE0)
/* D6954 80175F14 8C620000 */  lw         $v0, 0x0($v1)
/* D6958 80175F18 00021080 */  sll        $v0, $v0, 2
.L80175F1C_ovl5:
/* D695C 80175F1C 0302C021 */  addu       $t8, $t8, $v0
/* D6960 80175F20 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
/* D6964 80175F24 01E27821 */  addu       $t7, $t7, $v0
/* D6968 80175F28 57000030 */  bnel       $t8, $zero, .L80175FEC_ovl3
/* D696C 80175F2C 8E0C0044 */   lw        $t4, 0x44($s0)
/* D6970 80175F30 8DEF8AE0 */  lw         $t7, %lo(D_800E8AE0)($t7)
/* D6974 80175F34 3C040002 */  lui        $a0, (0x20075 >> 16)
/* D6978 80175F38 3C018019 */  lui        $at, %hi(D_801974AC_ovl3)
/* D697C 80175F3C 31F90006 */  andi       $t9, $t7, 0x6
/* D6980 80175F40 1320000E */  beqz       $t9, .L80175F7C_ovl3
/* D6984 80175F44 34840075 */   ori       $a0, $a0, (0x20075 & 0xFFFF)
/* D6988 80175F48 3C018019 */  lui        $at, %hi(D_801974A8_ovl3)
/* D698C 80175F4C C42874A8 */  lwc1       $f8, %lo(D_801974A8_ovl3)($at)
glabel func_80175F50_ovl5
/* D6990 80175F50 3C01800E */  lui        $at, %hi(D_800E3750)
/* D6994 80175F54 00220821 */  addu       $at, $at, $v0
/* D6998 80175F58 E4283750 */  swc1       $f8, %lo(D_800E3750)($at)
/* D699C 80175F5C 8C680000 */  lw         $t0, 0x0($v1)
/* D69A0 80175F60 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* D69A4 80175F64 44818000 */  mtc1       $at, $f16
/* D69A8 80175F68 3C01800E */  lui        $at, %hi(D_800E3C90)
/* D69AC 80175F6C 00085080 */  sll        $t2, $t0, 2
/* D69B0 80175F70 002A0821 */  addu       $at, $at, $t2
/* D69B4 80175F74 1000000C */  b          .L80175FA8_ovl3
/* D69B8 80175F78 E4303C90 */   swc1      $f16, %lo(D_800E3C90)($at)
.L80175F7C_ovl3:
/* D69BC 80175F7C C42A74AC */  lwc1       $f10, %lo(D_801974AC_ovl3)($at)
/* D69C0 80175F80 3C01800E */  lui        $at, %hi(D_800E3750)
/* D69C4 80175F84 00220821 */  addu       $at, $at, $v0
/* D69C8 80175F88 E42A3750 */  swc1       $f10, %lo(D_800E3750)($at)
/* D69CC 80175F8C 8C6B0000 */  lw         $t3, 0x0($v1)
/* D69D0 80175F90 3C014180 */  lui        $at, (0x41800000 >> 16)
/* D69D4 80175F94 44819000 */  mtc1       $at, $f18
/* D69D8 80175F98 3C01800E */  lui        $at, %hi(D_800E3C90)
/* D69DC 80175F9C 000B4880 */  sll        $t1, $t3, 2
/* D69E0 80175FA0 00290821 */  addu       $at, $at, $t1
/* D69E4 80175FA4 E4323C90 */  swc1       $f18, %lo(D_800E3C90)($at)
.L80175FA8_ovl3:
/* D69E8 80175FA8 8E0D0044 */  lw         $t5, 0x44($s0)
/* D69EC 80175FAC 3C050002 */  lui        $a1, (0x20076 >> 16)
/* D69F0 80175FB0 24060001 */  addiu      $a2, $zero, 0x1
/* D69F4 80175FB4 11A00008 */  beqz       $t5, .L80175FD8_ovl3
/* D69F8 80175FB8 34A50076 */   ori       $a1, $a1, (0x20076 & 0xFFFF)
/* D69FC 80175FBC 3C040002 */  lui        $a0, (0x2006F >> 16)
.L80175FC0_ovl5:
/* D6A00 80175FC0 3C050002 */  lui        $a1, (0x20070 >> 16)
/* D6A04 80175FC4 34A50070 */  ori        $a1, $a1, (0x20070 & 0xFFFF)
/* D6A08 80175FC8 0C048C3A */  jal        func_801230E8
/* D6A0C 80175FCC 3484006F */   ori       $a0, $a0, (0x2006F & 0xFFFF)
/* D6A10 80175FD0 10000015 */  b          .L80176028_ovl5
/* D6A14 80175FD4 00000000 */   nop
.L80175FD8_ovl3:
/* D6A18 80175FD8 0C048C3A */  jal        func_801230E8
/* D6A1C 80175FDC 24060001 */   addiu     $a2, $zero, 0x1
/* D6A20 80175FE0 10000011 */  b          .L80176028_ovl5
/* D6A24 80175FE4 00000000 */   nop
/* D6A28 80175FE8 8E0C0044 */  lw         $t4, 0x44($s0)
.L80175FEC_ovl3:
/* D6A2C 80175FEC 3C040002 */  lui        $a0, (0x20073 >> 16)
.L80175FF0_ovl5:
/* D6A30 80175FF0 34840073 */  ori        $a0, $a0, (0x20073 & 0xFFFF)
/* D6A34 80175FF4 11800009 */  beqz       $t4, .L8017601C_ovl5
/* D6A38 80175FF8 3C050002 */   lui       $a1, (0x20074 >> 16)
/* D6A3C 80175FFC 3C040002 */  lui        $a0, (0x2006D >> 16)
/* D6A40 80176000 3C050002 */  lui        $a1, (0x2006E >> 16)
/* D6A44 80176004 34A5006E */  ori        $a1, $a1, (0x2006E & 0xFFFF)
/* D6A48 80176008 3484006D */  ori        $a0, $a0, (0x2006D & 0xFFFF)
/* D6A4C 8017600C 0C048C3A */  jal        func_801230E8
/* D6A50 80176010 24060001 */   addiu     $a2, $zero, 0x1
/* D6A54 80176014 10000004 */  b          .L80176028_ovl5
/* D6A58 80176018 00000000 */   nop
.L8017601C_ovl5:
/* D6A5C 8017601C 34A50074 */  ori        $a1, $a1, (0x20074 & 0xFFFF)
/* D6A60 80176020 0C048C3A */  jal        func_801230E8
/* D6A64 80176024 24060001 */   addiu     $a2, $zero, 0x1
.L80176028_ovl5:
/* D6A68 80176028 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D6A6C 8017602C 3C07800E */  lui        $a3, %hi(D_800E6690)
/* D6A70 80176030 24E76690 */  addiu      $a3, $a3, %lo(D_800E6690)
/* D6A74 80176034 10000014 */  b          .L80176088_ovl3
/* D6A78 80176038 8C63A7C4 */   lw        $v1, %lo(D_8004A7C4)($v1)
.L8017603C_ovl3:
/* D6A7C 8017603C 3C050002 */  lui        $a1, (0x200C0 >> 16)
/* D6A80 80176040 34A500C0 */  ori        $a1, $a1, (0x200C0 & 0xFFFF)
/* D6A84 80176044 348400BF */  ori        $a0, $a0, (0x200BF & 0xFFFF)
/* D6A88 80176048 0C048C3A */  jal        func_801230E8
/* D6A8C 8017604C 24060001 */   addiu     $a2, $zero, 0x1
/* D6A90 80176050 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D6A94 80176054 3C07800E */  lui        $a3, %hi(D_800E6690)
/* D6A98 80176058 24E76690 */  addiu      $a3, $a3, %lo(D_800E6690)
/* D6A9C 8017605C 1000000A */  b          .L80176088_ovl3
/* D6AA0 80176060 8C63A7C4 */   lw        $v1, %lo(D_8004A7C4)($v1)
.L80176064_ovl3:
/* D6AA4 80176064 3C050002 */  lui        $a1, (0x20162 >> 16)
/* D6AA8 80176068 34A50162 */  ori        $a1, $a1, (0x20162 & 0xFFFF)
.L8017606C_ovl5:
/* D6AAC 8017606C 34840161 */  ori        $a0, $a0, (0x20161 & 0xFFFF)
/* D6AB0 80176070 0C048C3A */  jal        func_801230E8
/* D6AB4 80176074 24060001 */   addiu     $a2, $zero, 0x1
/* D6AB8 80176078 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D6ABC 8017607C 3C07800E */  lui        $a3, %hi(D_800E6690)
/* D6AC0 80176080 24E76690 */  addiu      $a3, $a3, %lo(D_800E6690)
/* D6AC4 80176084 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
.L80176088_ovl3:
/* D6AC8 80176088 8C6E0000 */  lw         $t6, 0x0($v1)
.L8017608C_ovl3:
/* D6ACC 8017608C 44802000 */  mtc1       $zero, $f4
/* D6AD0 80176090 3C01800E */  lui        $at, %hi(D_800E64D0)
/* D6AD4 80176094 000EC080 */  sll        $t8, $t6, 2
.L80176098_ovl5:
/* D6AD8 80176098 00F87821 */  addu       $t7, $a3, $t8
.L8017609C_ovl5:
/* D6ADC 8017609C E5E40000 */  swc1       $f4, 0x0($t7)
/* D6AE0 801760A0 8C620000 */  lw         $v0, 0x0($v1)
/* D6AE4 801760A4 00021080 */  sll        $v0, $v0, 2
/* D6AE8 801760A8 00E2C821 */  addu       $t9, $a3, $v0
/* D6AEC 801760AC C7260000 */  lwc1       $f6, 0x0($t9)
/* D6AF0 801760B0 00220821 */  addu       $at, $at, $v0
/* D6AF4 801760B4 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* D6AF8 801760B8 8C680000 */  lw         $t0, 0x0($v1)
/* D6AFC 801760BC 3C018019 */  lui        $at, %hi(D_801974B0_ovl3)
/* D6B00 801760C0 C42874B0 */  lwc1       $f8, %lo(D_801974B0_ovl3)($at)
/* D6B04 801760C4 3C01800E */  lui        $at, %hi(D_800E6850)
/* D6B08 801760C8 00085080 */  sll        $t2, $t0, 2
/* D6B0C 801760CC 002A0821 */  addu       $at, $at, $t2
/* D6B10 801760D0 E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
.L801760D4_ovl5:
/* D6B14 801760D4 8E0B0030 */  lw         $t3, 0x30($s0)
.L801760D8_ovl5:
/* D6B18 801760D8 A6000068 */  sh         $zero, 0x68($s0)
/* D6B1C 801760DC 25690001 */  addiu      $t1, $t3, 0x1
/* D6B20 801760E0 0C02BE85 */  jal        func_800AFA14
/* D6B24 801760E4 AE090030 */   sw        $t1, 0x30($s0)
/* D6B28 801760E8 8FBF001C */  lw         $ra, 0x1C($sp)
/* D6B2C 801760EC 8FB00018 */  lw         $s0, 0x18($sp)
/* D6B30 801760F0 27BD0038 */  addiu      $sp, $sp, 0x38
/* D6B34 801760F4 03E00008 */  jr         $ra
/* D6B38 801760F8 00000000 */   nop
