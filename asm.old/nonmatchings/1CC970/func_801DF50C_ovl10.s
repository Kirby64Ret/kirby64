glabel func_801DF50C_ovl10
/* 1D027C 801DF50C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1D0280 801DF510 AFB60040 */  sw         $s6, 0x40($sp)
glabel func_801DF514_ovl14
/* 1D0284 801DF514 3C168005 */  lui        $s6, %hi(D_8004A7C4)
/* 1D0288 801DF518 26D6A7C4 */  addiu      $s6, $s6, %lo(D_8004A7C4)
.L801DF51C_ovl9:
/* 1D028C 801DF51C 8ECE0000 */  lw         $t6, 0x0($s6)
/* 1D0290 801DF520 AFBF004C */  sw         $ra, 0x4C($sp)
.L801DF524_ovl17:
/* 1D0294 801DF524 AFBE0048 */  sw         $fp, 0x48($sp)
/* 1D0298 801DF528 AFB70044 */  sw         $s7, 0x44($sp)
glabel func_801DF52C_ovl15
/* 1D029C 801DF52C AFB5003C */  sw         $s5, 0x3C($sp)
.L801DF530_ovl16:
/* 1D02A0 801DF530 AFB40038 */  sw         $s4, 0x38($sp)
/* 1D02A4 801DF534 AFB30034 */  sw         $s3, 0x34($sp)
/* 1D02A8 801DF538 AFB20030 */  sw         $s2, 0x30($sp)
/* 1D02AC 801DF53C AFB1002C */  sw         $s1, 0x2C($sp)
.L801DF540_ovl16:
/* 1D02B0 801DF540 AFB00028 */  sw         $s0, 0x28($sp)
.L801DF544_ovl13:
/* 1D02B4 801DF544 F7B60020 */  sdc1       $f22, 0x20($sp)
glabel func_801DF548_ovl11
/* 1D02B8 801DF548 F7B40018 */  sdc1       $f20, 0x18($sp)
.L801DF54C_ovl17:
/* 1D02BC 801DF54C AFA40058 */  sw         $a0, 0x58($sp)
.L801DF550_ovl14:
/* 1D02C0 801DF550 8DCF0000 */  lw         $t7, 0x0($t6)
.L801DF554_ovl12:
/* 1D02C4 801DF554 3C11800E */  lui        $s1, %hi(D_800E1B50)
/* 1D02C8 801DF558 26311B50 */  addiu      $s1, $s1, %lo(D_800E1B50)
.L801DF55C_ovl17:
/* 1D02CC 801DF55C 000FC080 */  sll        $t8, $t7, 2
.L801DF560_ovl17:
/* 1D02D0 801DF560 0238C821 */  addu       $t9, $s1, $t8
/* 1D02D4 801DF564 8F280000 */  lw         $t0, 0x0($t9)
/* 1D02D8 801DF568 0C077F99 */  jal        func_801DFE64_ovl10
/* 1D02DC 801DF56C AFA80054 */   sw        $t0, 0x54($sp)
.L801DF570_ovl13:
/* 1D02E0 801DF570 3C10800D */  lui        $s0, %hi(D_800D6B10)
.L801DF574_ovl16:
/* 1D02E4 801DF574 26106B10 */  addiu      $s0, $s0, %lo(D_800D6B10)
/* 1D02E8 801DF578 0C02BB30 */  jal        func_800AECC0
/* 1D02EC 801DF57C C60C0000 */   lwc1      $f12, 0x0($s0)
glabel func_801DF580_ovl14
/* 1D02F0 801DF580 0C02BB48 */  jal        func_800AED20
/* 1D02F4 801DF584 C60C0000 */   lwc1      $f12, 0x0($s0)
glabel func_801DF588_ovl13
/* 1D02F8 801DF588 8EC50000 */  lw         $a1, 0x0($s6)
/* 1D02FC 801DF58C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1D0300 801DF590 2409000A */  addiu      $t1, $zero, 0xA
/* 1D0304 801DF594 8CAA0000 */  lw         $t2, 0x0($a1)
/* 1D0308 801DF598 3C12801F */  lui        $s2, %hi(D_801F3A84_ovl10)
/* 1D030C 801DF59C 26523A84 */  addiu      $s2, $s2, %lo(D_801F3A84_ovl10)
/* 1D0310 801DF5A0 000A5880 */  sll        $t3, $t2, 2
/* 1D0314 801DF5A4 002B0821 */  addu       $at, $at, $t3
.L801DF5A8_ovl12:
/* 1D0318 801DF5A8 AC29DFD0 */  sw         $t1, %lo(D_800DDFD0)($at)
.L801DF5AC_ovl11:
/* 1D031C 801DF5AC 8CAC0000 */  lw         $t4, 0x0($a1)
.L801DF5B0_ovl16:
/* 1D0320 801DF5B0 3C18801F */  lui        $t8, %hi(D_801F4094_ovl10)
/* 1D0324 801DF5B4 27184094 */  addiu      $t8, $t8, %lo(D_801F4094_ovl10)
glabel func_801DF5B8_ovl11
/* 1D0328 801DF5B8 000C6880 */  sll        $t5, $t4, 2
/* 1D032C 801DF5BC 022D7021 */  addu       $t6, $s1, $t5
/* 1D0330 801DF5C0 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1D0334 801DF5C4 ADF2008C */  sw         $s2, 0x8C($t7)
.L801DF5C8_ovl13:
/* 1D0338 801DF5C8 8ED90000 */  lw         $t9, 0x0($s6)
.L801DF5CC_ovl15:
/* 1D033C 801DF5CC 8F280000 */  lw         $t0, 0x0($t9)
glabel func_801DF5D0_ovl13
/* 1D0340 801DF5D0 00085080 */  sll        $t2, $t0, 2
/* 1D0344 801DF5D4 022A4821 */  addu       $t1, $s1, $t2
/* 1D0348 801DF5D8 8D2B0000 */  lw         $t3, 0x0($t1)
/* 1D034C 801DF5DC 0C02CCFD */  jal        func_800B33F4
/* 1D0350 801DF5E0 AD780098 */   sw        $t8, 0x98($t3)
.L801DF5E4_ovl16:
/* 1D0354 801DF5E4 3C040001 */  lui        $a0, (0x1005D >> 16)
/* 1D0358 801DF5E8 0C02A5D8 */  jal        func_800A9760
/* 1D035C 801DF5EC 3484005D */   ori       $a0, $a0, (0x1005D & 0xFFFF)
glabel func_801DF5F0_ovl12
/* 1D0360 801DF5F0 3C040001 */  lui        $a0, (0x10305 >> 16)
.L801DF5F4_ovl16:
/* 1D0364 801DF5F4 0C02A806 */  jal        func_800AA018
/* 1D0368 801DF5F8 34840305 */   ori       $a0, $a0, (0x10305 & 0xFFFF)
/* 1D036C 801DF5FC 3C040001 */  lui        $a0, (0x10304 >> 16)
.L801DF600_ovl14:
/* 1D0370 801DF600 0C02A806 */  jal        func_800AA018
/* 1D0374 801DF604 34840304 */   ori       $a0, $a0, (0x10304 & 0xFFFF)
.L801DF608_ovl9:
/* 1D0378 801DF608 8ECC0000 */  lw         $t4, 0x0($s6)
.L801DF60C_ovl11:
/* 1D037C 801DF60C 3C10800F */  lui        $s0, %hi(D_800E9020)
.L801DF610_ovl9:
/* 1D0380 801DF610 26109020 */  addiu      $s0, $s0, %lo(D_800E9020)
/* 1D0384 801DF614 8D8D0000 */  lw         $t5, 0x0($t4)
.L801DF618_ovl9:
/* 1D0388 801DF618 4480B000 */  mtc1       $zero, $f22
/* 1D038C 801DF61C 000D7080 */  sll        $t6, $t5, 2
/* 1D0390 801DF620 020E7821 */  addu       $t7, $s0, $t6
.L801DF624_ovl16:
/* 1D0394 801DF624 C5E40000 */  lwc1       $f4, 0x0($t7)
glabel func_801DF628_ovl9
/* 1D0398 801DF628 4604B032 */  c.eq.s     $f22, $f4
glabel func_801DF62C_ovl16
/* 1D039C 801DF62C 00000000 */  nop
/* 1D03A0 801DF630 45010005 */  bc1t       func_801DF648_ovl17
/* 1D03A4 801DF634 00000000 */   nop
/* 1D03A8 801DF638 0C077F30 */  jal        func_801DFCC0_ovl10
.L801DF63C_ovl14:
/* 1D03AC 801DF63C 00000000 */   nop
/* 1D03B0 801DF640 10000004 */  b          .L801DF654_ovl10
/* 1D03B4 801DF644 3C040001 */   lui       $a0, (0x10307 >> 16)
glabel func_801DF648_ovl17
/* 1D03B8 801DF648 0C02BC9F */  jal        func_800AF27C
glabel func_801DF64C_ovl15
/* 1D03BC 801DF64C 00000000 */   nop
/* 1D03C0 801DF650 3C040001 */  lui        $a0, (0x10307 >> 16)
.L801DF654_ovl10:
/* 1D03C4 801DF654 0C02A806 */  jal        func_800AA018
/* 1D03C8 801DF658 34840307 */   ori       $a0, $a0, (0x10307 & 0xFFFF)
/* 1D03CC 801DF65C 3C040001 */  lui        $a0, (0x10306 >> 16)
/* 1D03D0 801DF660 0C02A806 */  jal        func_800AA018
/* 1D03D4 801DF664 34840306 */   ori       $a0, $a0, (0x10306 & 0xFFFF)
/* 1D03D8 801DF668 8ED90000 */  lw         $t9, 0x0($s6)
/* 1D03DC 801DF66C 8F280000 */  lw         $t0, 0x0($t9)
.L801DF670_ovl17:
/* 1D03E0 801DF670 00085080 */  sll        $t2, $t0, 2
/* 1D03E4 801DF674 020A4821 */  addu       $t1, $s0, $t2
.L801DF678_ovl14:
/* 1D03E8 801DF678 C5260000 */  lwc1       $f6, 0x0($t1)
/* 1D03EC 801DF67C 4606B032 */  c.eq.s     $f22, $f6
.L801DF680_ovl17:
/* 1D03F0 801DF680 00000000 */  nop
.L801DF684_ovl9:
/* 1D03F4 801DF684 45010005 */  bc1t       .L801DF69C_ovl10
.L801DF688_ovl17:
/* 1D03F8 801DF688 00000000 */   nop
/* 1D03FC 801DF68C 0C077F30 */  jal        func_801DFCC0_ovl10
/* 1D0400 801DF690 00000000 */   nop
/* 1D0404 801DF694 10000004 */  b          .L801DF6A8_ovl10
/* 1D0408 801DF698 8EC50000 */   lw        $a1, 0x0($s6)
.L801DF69C_ovl10:
/* 1D040C 801DF69C 0C02BC9F */  jal        func_800AF27C
/* 1D0410 801DF6A0 00000000 */   nop
.L801DF6A4_ovl17:
/* 1D0414 801DF6A4 8EC50000 */  lw         $a1, 0x0($s6)
.L801DF6A8_ovl10:
/* 1D0418 801DF6A8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1D041C 801DF6AC 3C04801F */  lui        $a0, %hi(func_801F3408_ovl9 + 0x44)
.L801DF6B0_ovl12:
/* 1D0420 801DF6B0 8CB80000 */  lw         $t8, 0x0($a1)
.L801DF6B4_ovl14:
/* 1D0424 801DF6B4 2484344C */  addiu      $a0, $a0, %lo(func_801F3408_ovl9 + 0x44)
/* 1D0428 801DF6B8 00185880 */  sll        $t3, $t8, 2
/* 1D042C 801DF6BC 020B6021 */  addu       $t4, $s0, $t3
/* 1D0430 801DF6C0 E5960000 */  swc1       $f22, 0x0($t4)
/* 1D0434 801DF6C4 8CAD0000 */  lw         $t5, 0x0($a1)
/* 1D0438 801DF6C8 000D7080 */  sll        $t6, $t5, 2
/* 1D043C 801DF6CC 002E0821 */  addu       $at, $at, $t6
/* 1D0440 801DF6D0 E43664D0 */  swc1       $f22, %lo(D_800E64D0)($at)
.L801DF6D4_ovl16:
/* 1D0444 801DF6D4 8CAF0000 */  lw         $t7, 0x0($a1)
/* 1D0448 801DF6D8 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1D044C 801DF6DC 000FC880 */  sll        $t9, $t7, 2
/* 1D0450 801DF6E0 00390821 */  addu       $at, $at, $t9
/* 1D0454 801DF6E4 0C066220 */  jal        func_80198880_ovl7
.L801DF6E8_ovl15:
/* 1D0458 801DF6E8 E4363210 */   swc1      $f22, %lo(D_800E3210)($at)
/* 1D045C 801DF6EC 8FA80054 */  lw         $t0, 0x54($sp)
.L801DF6F0_ovl16:
/* 1D0460 801DF6F0 8D0A0088 */  lw         $t2, 0x88($t0)
/* 1D0464 801DF6F4 0C068AB7 */  jal        func_801A2ADC_ovl7
glabel func_801DF6F8_ovl12
/* 1D0468 801DF6F8 8D440010 */   lw        $a0, 0x10($t2)
/* 1D046C 801DF6FC 8EC90000 */  lw         $t1, 0x0($s6)
/* 1D0470 801DF700 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1D0474 801DF704 3C10800F */  lui        $s0, %hi(D_800EA520)
/* 1D0478 801DF708 8D380000 */  lw         $t8, 0x0($t1)
/* 1D047C 801DF70C 2610A520 */  addiu      $s0, $s0, %lo(D_800EA520)
.L801DF710_ovl14:
/* 1D0480 801DF710 3C17800E */  lui        $s7, %hi(D_800E6690)
/* 1D0484 801DF714 00185880 */  sll        $t3, $t8, 2
/* 1D0488 801DF718 022B6021 */  addu       $t4, $s1, $t3
/* 1D048C 801DF71C 8D8D0000 */  lw         $t5, 0x0($t4)
glabel func_801DF720_ovl16
/* 1D0490 801DF720 3C11800E */  lui        $s1, %hi(D_800E0D50)
.L801DF724_ovl13:
/* 1D0494 801DF724 3C15800F */  lui        $s5, %hi(D_800EA6E0)
glabel func_801DF728_ovl11
/* 1D0498 801DF728 ADB2008C */  sw         $s2, 0x8C($t5)
.L801DF72C_ovl9:
/* 1D049C 801DF72C 8EC50000 */  lw         $a1, 0x0($s6)
/* 1D04A0 801DF730 3C12801F */  lui        $s2, %hi(func_801F427C_ovl9 + 0xE8)
/* 1D04A4 801DF734 3C14800F */  lui        $s4, %hi(D_800EA8A0)
/* 1D04A8 801DF738 8CAE0000 */  lw         $t6, 0x0($a1)
/* 1D04AC 801DF73C 3C13800E */  lui        $s3, %hi(gEntitiesNextPosYArray)
.L801DF740_ovl12:
/* 1D04B0 801DF740 3C07800E */  lui        $a3, %hi(D_800E3C90)
/* 1D04B4 801DF744 000E7880 */  sll        $t7, $t6, 2
/* 1D04B8 801DF748 002F0821 */  addu       $at, $at, $t7
.L801DF74C_ovl12:
/* 1D04BC 801DF74C AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1D04C0 801DF750 8CB90000 */  lw         $t9, 0x0($a1)
/* 1D04C4 801DF754 24E73C90 */  addiu      $a3, $a3, %lo(D_800E3C90)
glabel func_801DF758_ovl13
/* 1D04C8 801DF758 26732790 */  addiu      $s3, $s3, %lo(gEntitiesNextPosYArray)
glabel func_801DF75C_ovl14
/* 1D04CC 801DF75C 00194080 */  sll        $t0, $t9, 2
.L801DF760_ovl16:
/* 1D04D0 801DF760 02085021 */  addu       $t2, $s0, $t0
/* 1D04D4 801DF764 AD400000 */  sw         $zero, 0x0($t2)
glabel func_801DF768_ovl17
/* 1D04D8 801DF768 8CA20000 */  lw         $v0, 0x0($a1)
.L801DF76C_ovl15:
/* 1D04DC 801DF76C 2694A8A0 */  addiu      $s4, $s4, %lo(D_800EA8A0)
/* 1D04E0 801DF770 26524364 */  addiu      $s2, $s2, %lo(func_801F427C_ovl9 + 0xE8)
/* 1D04E4 801DF774 00021080 */  sll        $v0, $v0, 2
glabel func_801DF778_ovl11
/* 1D04E8 801DF778 02024821 */  addu       $t1, $s0, $v0
/* 1D04EC 801DF77C 8D240000 */  lw         $a0, 0x0($t1)
/* 1D04F0 801DF780 26B5A6E0 */  addiu      $s5, $s5, %lo(D_800EA6E0)
/* 1D04F4 801DF784 26310D50 */  addiu      $s1, $s1, %lo(D_800E0D50)
/* 1D04F8 801DF788 2881000A */  slti       $at, $a0, 0xA
.L801DF78C_ovl13:
/* 1D04FC 801DF78C 102000D7 */  beqz       $at, .L801DFAEC_ovl12
glabel func_801DF790_ovl15
/* 1D0500 801DF790 26F76690 */   addiu     $s7, $s7, %lo(D_800E6690)
.L801DF794_ovl16:
/* 1D0504 801DF794 3C1E800E */  lui        $fp, %hi(D_800E3750)
glabel func_801DF798_ovl11
/* 1D0508 801DF798 4480A000 */  mtc1       $zero, $f20
.L801DF79C_ovl13:
/* 1D050C 801DF79C 27DE3750 */  addiu      $fp, $fp, %lo(D_800E3750)
.L801DF7A0_ovl10:
/* 1D0510 801DF7A0 3C03801F */  lui        $v1, %hi(func_801F427C_ovl9 + 0xBC)
.L801DF7A4_ovl16:
/* 1D0514 801DF7A4 24634338 */  addiu      $v1, $v1, %lo(func_801F427C_ovl9 + 0xBC)
/* 1D0518 801DF7A8 0004C080 */  sll        $t8, $a0, 2
/* 1D051C 801DF7AC 00785821 */  addu       $t3, $v1, $t8
/* 1D0520 801DF7B0 C5600000 */  lwc1       $f0, 0x0($t3)
/* 1D0524 801DF7B4 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1D0528 801DF7B8 00220821 */  addu       $at, $at, $v0
/* 1D052C 801DF7BC 4614003C */  c.lt.s     $f0, $f20
/* 1D0530 801DF7C0 00000000 */  nop
/* 1D0534 801DF7C4 45000006 */  bc1f       .L801DF7E0_ovl10
/* 1D0538 801DF7C8 00000000 */   nop
/* 1D053C 801DF7CC 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1D0540 801DF7D0 46000207 */  neg.s      $f8, $f0
/* 1D0544 801DF7D4 00220821 */  addu       $at, $at, $v0
.L801DF7D8_ovl16:
/* 1D0548 801DF7D8 10000002 */  b          .L801DF7E4_ovl10
.L801DF7DC_ovl14:
/* 1D054C 801DF7DC E4286850 */   swc1      $f8, %lo(D_800E6850)($at)
.L801DF7E0_ovl10:
/* 1D0550 801DF7E0 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L801DF7E4_ovl10:
/* 1D0554 801DF7E4 8CA20000 */  lw         $v0, 0x0($a1)
/* 1D0558 801DF7E8 00021080 */  sll        $v0, $v0, 2
/* 1D055C 801DF7EC 02026021 */  addu       $t4, $s0, $v0
.L801DF7F0_ovl11:
/* 1D0560 801DF7F0 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1D0564 801DF7F4 00E24021 */  addu       $t0, $a3, $v0
/* 1D0568 801DF7F8 00E2C821 */  addu       $t9, $a3, $v0
/* 1D056C 801DF7FC 000D7080 */  sll        $t6, $t5, 2
/* 1D0570 801DF800 006E7821 */  addu       $t7, $v1, $t6
/* 1D0574 801DF804 C5E00000 */  lwc1       $f0, 0x0($t7)
.L801DF808_ovl13:
/* 1D0578 801DF808 4614003C */  c.lt.s     $f0, $f20
.L801DF80C_ovl12:
/* 1D057C 801DF80C 00000000 */  nop
.L801DF810_ovl16:
/* 1D0580 801DF810 45020005 */  bc1fl      .L801DF828_ovl10
/* 1D0584 801DF814 E5000000 */   swc1      $f0, 0x0($t0)
.L801DF818_ovl14:
/* 1D0588 801DF818 46000287 */  neg.s      $f10, $f0
.L801DF81C_ovl9:
/* 1D058C 801DF81C 10000002 */  b          .L801DF828_ovl10
/* 1D0590 801DF820 E72A0000 */   swc1      $f10, 0x0($t9)
/* 1D0594 801DF824 E5000000 */  swc1       $f0, 0x0($t0)
.L801DF828_ovl10:
/* 1D0598 801DF828 8CAA0000 */  lw         $t2, 0x0($a1)
/* 1D059C 801DF82C 3C014348 */  lui        $at, (0x43480000 >> 16)
/* 1D05A0 801DF830 44818000 */  mtc1       $at, $f16
/* 1D05A4 801DF834 000A4880 */  sll        $t1, $t2, 2
glabel func_801DF838_ovl9
/* 1D05A8 801DF838 0289C021 */  addu       $t8, $s4, $t1
/* 1D05AC 801DF83C E7100000 */  swc1       $f16, 0x0($t8)
/* 1D05B0 801DF840 8CA20000 */  lw         $v0, 0x0($a1)
.L801DF844_ovl16:
/* 1D05B4 801DF844 00021080 */  sll        $v0, $v0, 2
.L801DF848_ovl12:
/* 1D05B8 801DF848 02825821 */  addu       $t3, $s4, $v0
/* 1D05BC 801DF84C C5720000 */  lwc1       $f18, 0x0($t3)
/* 1D05C0 801DF850 02A26021 */  addu       $t4, $s5, $v0
.L801DF854_ovl16:
/* 1D05C4 801DF854 E5920000 */  swc1       $f18, 0x0($t4)
/* 1D05C8 801DF858 8CA30000 */  lw         $v1, 0x0($a1)
/* 1D05CC 801DF85C 00031080 */  sll        $v0, $v1, 2
/* 1D05D0 801DF860 02023021 */  addu       $a2, $s0, $v0
/* 1D05D4 801DF864 8CC40000 */  lw         $a0, 0x0($a2)
/* 1D05D8 801DF868 02A27021 */  addu       $t6, $s5, $v0
/* 1D05DC 801DF86C 2881000B */  slti       $at, $a0, 0xB
/* 1D05E0 801DF870 10200093 */  beqz       $at, .L801DFAC0_ovl10
/* 1D05E4 801DF874 00046880 */   sll       $t5, $a0, 2
/* 1D05E8 801DF878 3C01801F */  lui        $at, %hi(func_801F4368_ovl9 + 0x28)
/* 1D05EC 801DF87C 002D0821 */  addu       $at, $at, $t5
/* 1D05F0 801DF880 C4204390 */  lwc1       $f0, %lo(func_801F4368_ovl9 + 0x28)($at)
.L801DF884_ovl13:
/* 1D05F4 801DF884 C5C40000 */  lwc1       $f4, 0x0($t6)
.L801DF888_ovl16:
/* 1D05F8 801DF888 02827821 */  addu       $t7, $s4, $v0
.L801DF88C_ovl11:
/* 1D05FC 801DF88C 4604003C */  c.lt.s     $f0, $f4
.L801DF890_ovl14:
/* 1D0600 801DF890 00000000 */  nop
.L801DF894_ovl13:
/* 1D0604 801DF894 45030006 */  bc1tl      .L801DF8B0_ovl10
/* 1D0608 801DF898 0222C821 */   addu      $t9, $s1, $v0
glabel func_801DF89C_ovl11
/* 1D060C 801DF89C C5E60000 */  lwc1       $f6, 0x0($t7)
/* 1D0610 801DF8A0 4606003C */  c.lt.s     $f0, $f6
.L801DF8A4_ovl15:
/* 1D0614 801DF8A4 00000000 */  nop
.L801DF8A8_ovl12:
/* 1D0618 801DF8A8 45000085 */  bc1f       .L801DFAC0_ovl10
/* 1D061C 801DF8AC 0222C821 */   addu      $t9, $s1, $v0
.L801DF8B0_ovl10:
/* 1D0620 801DF8B0 8F250000 */  lw         $a1, 0x0($t9)
/* 1D0624 801DF8B4 0C03E60A */  jal        func_800F9828
glabel func_801DF8B8_ovl9
/* 1D0628 801DF8B8 00602025 */   or        $a0, $v1, $zero
/* 1D062C 801DF8BC 4614003C */  c.lt.s     $f0, $f20
.L801DF8C0_ovl15:
/* 1D0630 801DF8C0 00000000 */  nop
.L801DF8C4_ovl16:
/* 1D0634 801DF8C4 45020010 */  bc1fl      .L801DF908_ovl16
/* 1D0638 801DF8C8 8ECD0000 */   lw        $t5, 0x0($s6)
.L801DF8CC_ovl14:
/* 1D063C 801DF8CC 8EC80000 */  lw         $t0, 0x0($s6)
/* 1D0640 801DF8D0 8D030000 */  lw         $v1, 0x0($t0)
/* 1D0644 801DF8D4 00035080 */  sll        $t2, $v1, 2
/* 1D0648 801DF8D8 022A4821 */  addu       $t1, $s1, $t2
.L801DF8DC_ovl12:
/* 1D064C 801DF8DC 8D250000 */  lw         $a1, 0x0($t1)
/* 1D0650 801DF8E0 0C03E60A */  jal        func_800F9828
/* 1D0654 801DF8E4 00602025 */   or        $a0, $v1, $zero
/* 1D0658 801DF8E8 8EC50000 */  lw         $a1, 0x0($s6)
.L801DF8EC_ovl14:
/* 1D065C 801DF8EC 46000207 */  neg.s      $f8, $f0
/* 1D0660 801DF8F0 8CB80000 */  lw         $t8, 0x0($a1)
.L801DF8F4_ovl13:
/* 1D0664 801DF8F4 00185880 */  sll        $t3, $t8, 2
.L801DF8F8_ovl16:
/* 1D0668 801DF8F8 02AB6021 */  addu       $t4, $s5, $t3
glabel func_801DF8FC_ovl14
/* 1D066C 801DF8FC 1000000D */  b          .L801DF934_ovl15
glabel func_801DF900_ovl13
/* 1D0670 801DF900 E5880000 */   swc1      $f8, 0x0($t4)
/* 1D0674 801DF904 8ECD0000 */  lw         $t5, 0x0($s6)
.L801DF908_ovl16:
/* 1D0678 801DF908 8DA30000 */  lw         $v1, 0x0($t5)
/* 1D067C 801DF90C 00037080 */  sll        $t6, $v1, 2
glabel func_801DF910_ovl12
/* 1D0680 801DF910 022E7821 */  addu       $t7, $s1, $t6
/* 1D0684 801DF914 8DE50000 */  lw         $a1, 0x0($t7)
/* 1D0688 801DF918 0C03E60A */  jal        func_800F9828
.L801DF91C_ovl13:
/* 1D068C 801DF91C 00602025 */   or        $a0, $v1, $zero
/* 1D0690 801DF920 8EC50000 */  lw         $a1, 0x0($s6)
/* 1D0694 801DF924 8CB90000 */  lw         $t9, 0x0($a1)
/* 1D0698 801DF928 00194080 */  sll        $t0, $t9, 2
/* 1D069C 801DF92C 02A85021 */  addu       $t2, $s5, $t0
.L801DF930_ovl13:
/* 1D06A0 801DF930 E5400000 */  swc1       $f0, 0x0($t2)
.L801DF934_ovl15:
/* 1D06A4 801DF934 4600B03C */  c.lt.s     $f22, $f0
/* 1D06A8 801DF938 00000000 */  nop
.L801DF93C_ovl16:
/* 1D06AC 801DF93C 4502000D */  bc1fl      .L801DF974_ovl16
.L801DF940_ovl15:
/* 1D06B0 801DF940 8CA20000 */   lw        $v0, 0x0($a1)
/* 1D06B4 801DF944 8CA20000 */  lw         $v0, 0x0($a1)
/* 1D06B8 801DF948 00021080 */  sll        $v0, $v0, 2
/* 1D06BC 801DF94C 02024821 */  addu       $t1, $s0, $v0
.L801DF950_ovl14:
/* 1D06C0 801DF950 8D380000 */  lw         $t8, 0x0($t1)
/* 1D06C4 801DF954 02E26821 */  addu       $t5, $s7, $v0
/* 1D06C8 801DF958 00185880 */  sll        $t3, $t8, 2
/* 1D06CC 801DF95C 024B6021 */  addu       $t4, $s2, $t3
/* 1D06D0 801DF960 C58A0000 */  lwc1       $f10, 0x0($t4)
/* 1D06D4 801DF964 46005407 */  neg.s      $f16, $f10
/* 1D06D8 801DF968 1000000A */  b          .L801DF994_ovl14
.L801DF96C_ovl14:
/* 1D06DC 801DF96C E5B00000 */   swc1      $f16, 0x0($t5)
/* 1D06E0 801DF970 8CA20000 */  lw         $v0, 0x0($a1)
.L801DF974_ovl16:
/* 1D06E4 801DF974 00021080 */  sll        $v0, $v0, 2
/* 1D06E8 801DF978 02027021 */  addu       $t6, $s0, $v0
/* 1D06EC 801DF97C 8DCF0000 */  lw         $t7, 0x0($t6)
.L801DF980_ovl12:
/* 1D06F0 801DF980 02E25021 */  addu       $t2, $s7, $v0
/* 1D06F4 801DF984 000FC880 */  sll        $t9, $t7, 2
/* 1D06F8 801DF988 02594021 */  addu       $t0, $s2, $t9
/* 1D06FC 801DF98C C5120000 */  lwc1       $f18, 0x0($t0)
/* 1D0700 801DF990 E5520000 */  swc1       $f18, 0x0($t2)
.L801DF994_ovl14:
/* 1D0704 801DF994 8CA20000 */  lw         $v0, 0x0($a1)
/* 1D0708 801DF998 00021080 */  sll        $v0, $v0, 2
.L801DF99C_ovl12:
/* 1D070C 801DF99C 0222C021 */  addu       $t8, $s1, $v0
.L801DF9A0_ovl17:
/* 1D0710 801DF9A0 8F0B0000 */  lw         $t3, 0x0($t8)
/* 1D0714 801DF9A4 02624821 */  addu       $t1, $s3, $v0
.L801DF9A8_ovl16:
/* 1D0718 801DF9A8 C5200000 */  lwc1       $f0, 0x0($t1)
.L801DF9AC_ovl15:
/* 1D071C 801DF9AC 000B6080 */  sll        $t4, $t3, 2
/* 1D0720 801DF9B0 026C6821 */  addu       $t5, $s3, $t4
/* 1D0724 801DF9B4 C5A20000 */  lwc1       $f2, 0x0($t5)
.L801DF9B8_ovl16:
/* 1D0728 801DF9B8 4602003C */  c.lt.s     $f0, $f2
.L801DF9BC_ovl14:
/* 1D072C 801DF9BC 00000000 */  nop
/* 1D0730 801DF9C0 45020007 */  bc1fl      .L801DF9E0_ovl10
.L801DF9C4_ovl17:
/* 1D0734 801DF9C4 46020201 */   sub.s     $f8, $f0, $f2
glabel func_801DF9C8_ovl15
/* 1D0738 801DF9C8 46020101 */  sub.s      $f4, $f0, $f2
.L801DF9CC_ovl14:
/* 1D073C 801DF9CC 02827021 */  addu       $t6, $s4, $v0
.L801DF9D0_ovl17:
/* 1D0740 801DF9D0 46002187 */  neg.s      $f6, $f4
.L801DF9D4_ovl12:
/* 1D0744 801DF9D4 10000004 */  b          .L801DF9E8_ovl10
/* 1D0748 801DF9D8 E5C60000 */   swc1      $f6, 0x0($t6)
glabel func_801DF9DC_ovl17
/* 1D074C 801DF9DC 46020201 */  sub.s      $f8, $f0, $f2
.L801DF9E0_ovl10:
/* 1D0750 801DF9E0 02827821 */  addu       $t7, $s4, $v0
/* 1D0754 801DF9E4 E5E80000 */  swc1       $f8, 0x0($t7)
.L801DF9E8_ovl10:
/* 1D0758 801DF9E8 8CA20000 */  lw         $v0, 0x0($a1)
glabel func_801DF9EC_ovl16
/* 1D075C 801DF9EC 00021080 */  sll        $v0, $v0, 2
/* 1D0760 801DF9F0 02224021 */  addu       $t0, $s1, $v0
/* 1D0764 801DF9F4 8D0A0000 */  lw         $t2, 0x0($t0)
.L801DF9F8_ovl17:
/* 1D0768 801DF9F8 0262C821 */  addu       $t9, $s3, $v0
/* 1D076C 801DF9FC C72A0000 */  lwc1       $f10, 0x0($t9)
/* 1D0770 801DFA00 000A4880 */  sll        $t1, $t2, 2
/* 1D0774 801DFA04 0269C021 */  addu       $t8, $s3, $t1
/* 1D0778 801DFA08 C7100000 */  lwc1       $f16, 0x0($t8)
/* 1D077C 801DFA0C 0202C821 */  addu       $t9, $s0, $v0
/* 1D0780 801DFA10 02025821 */  addu       $t3, $s0, $v0
/* 1D0784 801DFA14 4610503C */  c.lt.s     $f10, $f16
/* 1D0788 801DFA18 00000000 */  nop
/* 1D078C 801DFA1C 4502000A */  bc1fl      .L801DFA48_ovl10
/* 1D0790 801DFA20 8F280000 */   lw        $t0, 0x0($t9)
.L801DFA24_ovl16:
/* 1D0794 801DFA24 8D6C0000 */  lw         $t4, 0x0($t3)
/* 1D0798 801DFA28 03C27821 */  addu       $t7, $fp, $v0
/* 1D079C 801DFA2C 000C6880 */  sll        $t5, $t4, 2
/* 1D07A0 801DFA30 024D7021 */  addu       $t6, $s2, $t5
/* 1D07A4 801DFA34 C5D20000 */  lwc1       $f18, 0x0($t6)
glabel func_801DFA38_ovl11
/* 1D07A8 801DFA38 46009107 */  neg.s      $f4, $f18
/* 1D07AC 801DFA3C 10000007 */  b          func_801DFA5C_ovl14
/* 1D07B0 801DFA40 E5E40000 */   swc1      $f4, 0x0($t7)
.L801DFA44_ovl9:
/* 1D07B4 801DFA44 8F280000 */  lw         $t0, 0x0($t9)
.L801DFA48_ovl10:
/* 1D07B8 801DFA48 03C2C021 */  addu       $t8, $fp, $v0
/* 1D07BC 801DFA4C 00085080 */  sll        $t2, $t0, 2
/* 1D07C0 801DFA50 024A4821 */  addu       $t1, $s2, $t2
/* 1D07C4 801DFA54 C5260000 */  lwc1       $f6, 0x0($t1)
.L801DFA58_ovl16:
/* 1D07C8 801DFA58 E7060000 */  swc1       $f6, 0x0($t8)
glabel func_801DFA5C_ovl14
/* 1D07CC 801DFA5C 0C002DAF */  jal        finish_current_thread
glabel func_801DFA60_ovl15
/* 1D07D0 801DFA60 24040001 */   addiu     $a0, $zero, 0x1
/* 1D07D4 801DFA64 8EC50000 */  lw         $a1, 0x0($s6)
.L801DFA68_ovl16:
/* 1D07D8 801DFA68 8CA30000 */  lw         $v1, 0x0($a1)
/* 1D07DC 801DFA6C 00031080 */  sll        $v0, $v1, 2
.L801DFA70_ovl9:
/* 1D07E0 801DFA70 02023021 */  addu       $a2, $s0, $v0
/* 1D07E4 801DFA74 8CC40000 */  lw         $a0, 0x0($a2)
/* 1D07E8 801DFA78 02A26021 */  addu       $t4, $s5, $v0
glabel func_801DFA7C_ovl12
/* 1D07EC 801DFA7C 2881000B */  slti       $at, $a0, 0xB
/* 1D07F0 801DFA80 1020000F */  beqz       $at, .L801DFAC0_ovl10
/* 1D07F4 801DFA84 00045880 */   sll       $t3, $a0, 2
.L801DFA88_ovl11:
/* 1D07F8 801DFA88 3C01801F */  lui        $at, %hi(func_801F4368_ovl9 + 0x28)
/* 1D07FC 801DFA8C 002B0821 */  addu       $at, $at, $t3
.L801DFA90_ovl11:
/* 1D0800 801DFA90 C4204390 */  lwc1       $f0, %lo(func_801F4368_ovl9 + 0x28)($at)
/* 1D0804 801DFA94 C5880000 */  lwc1       $f8, 0x0($t4)
.L801DFA98_ovl16:
/* 1D0808 801DFA98 4608003C */  c.lt.s     $f0, $f8
glabel func_801DFA9C_ovl11
/* 1D080C 801DFA9C 00000000 */  nop
glabel func_801DFAA0_ovl16
/* 1D0810 801DFAA0 4503FF83 */  bc1tl      .L801DF8B0_ovl10
/* 1D0814 801DFAA4 0222C821 */   addu      $t9, $s1, $v0
.L801DFAA8_ovl14:
/* 1D0818 801DFAA8 02826821 */  addu       $t5, $s4, $v0
/* 1D081C 801DFAAC C5AA0000 */  lwc1       $f10, 0x0($t5)
/* 1D0820 801DFAB0 460A003C */  c.lt.s     $f0, $f10
.L801DFAB4_ovl9:
/* 1D0824 801DFAB4 00000000 */  nop
/* 1D0828 801DFAB8 4503FF7D */  bc1tl      .L801DF8B0_ovl10
glabel func_801DFABC_ovl17
/* 1D082C 801DFABC 0222C821 */   addu      $t9, $s1, $v0
.L801DFAC0_ovl10:
/* 1D0830 801DFAC0 248E0001 */  addiu      $t6, $a0, 0x1
/* 1D0834 801DFAC4 ACCE0000 */  sw         $t6, 0x0($a2)
/* 1D0838 801DFAC8 8CA20000 */  lw         $v0, 0x0($a1)
glabel func_801DFACC_ovl11
/* 1D083C 801DFACC 3C07800E */  lui        $a3, %hi(D_800E3C90)
/* 1D0840 801DFAD0 24E73C90 */  addiu      $a3, $a3, %lo(D_800E3C90)
/* 1D0844 801DFAD4 00021080 */  sll        $v0, $v0, 2
.L801DFAD8_ovl9:
/* 1D0848 801DFAD8 02027821 */  addu       $t7, $s0, $v0
/* 1D084C 801DFADC 8DE40000 */  lw         $a0, 0x0($t7)
/* 1D0850 801DFAE0 2881000A */  slti       $at, $a0, 0xA
/* 1D0854 801DFAE4 1420FF2E */  bnez       $at, .L801DF7A0_ovl10
.L801DFAE8_ovl12:
/* 1D0858 801DFAE8 00000000 */   nop
.L801DFAEC_ovl12:
/* 1D085C 801DFAEC 0C02BC9F */  jal        func_800AF27C
/* 1D0860 801DFAF0 00000000 */   nop
/* 1D0864 801DFAF4 8FB90054 */  lw         $t9, 0x54($sp)
/* 1D0868 801DFAF8 8EC50000 */  lw         $a1, 0x0($s6)
/* 1D086C 801DFAFC 3C02800E */  lui        $v0, %hi(D_800E7B20)
glabel func_801DFB00_ovl14
/* 1D0870 801DFB00 8F280088 */  lw         $t0, 0x88($t9)
/* 1D0874 801DFB04 8CAA0000 */  lw         $t2, 0x0($a1)
/* 1D0878 801DFB08 24427B20 */  addiu      $v0, $v0, %lo(D_800E7B20)
/* 1D087C 801DFB0C C5100000 */  lwc1       $f16, 0x0($t0)
.L801DFB10_ovl13:
/* 1D0880 801DFB10 000A4880 */  sll        $t1, $t2, 2
/* 1D0884 801DFB14 0049C021 */  addu       $t8, $v0, $t1
/* 1D0888 801DFB18 E7100000 */  swc1       $f16, 0x0($t8)
/* 1D088C 801DFB1C 8CAB0000 */  lw         $t3, 0x0($a1)
/* 1D0890 801DFB20 000B6080 */  sll        $t4, $t3, 2
.L801DFB24_ovl12:
/* 1D0894 801DFB24 004C6821 */  addu       $t5, $v0, $t4
glabel func_801DFB28_ovl9
/* 1D0898 801DFB28 C5B20000 */  lwc1       $f18, 0x0($t5)
/* 1D089C 801DFB2C 4600910D */  trunc.w.s  $f4, $f18
/* 1D08A0 801DFB30 44042000 */  mfc1       $a0, $f4
glabel func_801DFB34_ovl12
/* 1D08A4 801DFB34 0C02F07F */  jal        func_800BC1FC
/* 1D08A8 801DFB38 00000000 */   nop
/* 1D08AC 801DFB3C 0C02BC9F */  jal        func_800AF27C
.L801DFB40_ovl15:
/* 1D08B0 801DFB40 00000000 */   nop
glabel func_801DFB44_ovl11
/* 1D08B4 801DFB44 0C02BC9F */  jal        func_800AF27C
glabel func_801DFB48_ovl14
/* 1D08B8 801DFB48 00000000 */   nop
/* 1D08BC 801DFB4C 0C006291 */  jal        random_soft_s32_range
glabel func_801DFB50_ovl9
/* 1D08C0 801DFB50 24040004 */   addiu     $a0, $zero, 0x4
/* 1D08C4 801DFB54 8ECF0000 */  lw         $t7, 0x0($s6)
/* 1D08C8 801DFB58 3C01800F */  lui        $at, %hi(D_800E98E0)
.L801DFB5C_ovl13:
/* 1D08CC 801DFB5C 24040004 */  addiu      $a0, $zero, 0x4
.L801DFB60_ovl13:
/* 1D08D0 801DFB60 8DF90000 */  lw         $t9, 0x0($t7)
/* 1D08D4 801DFB64 00194080 */  sll        $t0, $t9, 2
/* 1D08D8 801DFB68 00280821 */  addu       $at, $at, $t0
/* 1D08DC 801DFB6C 0C006291 */  jal        random_soft_s32_range
/* 1D08E0 801DFB70 AC2298E0 */   sw        $v0, %lo(D_800E98E0)($at)
/* 1D08E4 801DFB74 8ECA0000 */  lw         $t2, 0x0($s6)
/* 1D08E8 801DFB78 3C01800F */  lui        $at, %hi(D_800E9AA0)
.L801DFB7C_ovl15:
/* 1D08EC 801DFB7C 24040006 */  addiu      $a0, $zero, 0x6
/* 1D08F0 801DFB80 8D490000 */  lw         $t1, 0x0($t2)
/* 1D08F4 801DFB84 0009C080 */  sll        $t8, $t1, 2
.L801DFB88_ovl15:
/* 1D08F8 801DFB88 00380821 */  addu       $at, $at, $t8
.L801DFB8C_ovl13:
/* 1D08FC 801DFB8C 0C006291 */  jal        random_soft_s32_range
.L801DFB90_ovl16:
/* 1D0900 801DFB90 AC229AA0 */   sw        $v0, %lo(D_800E9AA0)($at)
/* 1D0904 801DFB94 8EC50000 */  lw         $a1, 0x0($s6)
/* 1D0908 801DFB98 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1D090C 801DFB9C 8FBF004C */  lw         $ra, 0x4C($sp)
/* 1D0910 801DFBA0 8CAB0000 */  lw         $t3, 0x0($a1)
/* 1D0914 801DFBA4 240D000B */  addiu      $t5, $zero, 0xB
/* 1D0918 801DFBA8 8FB60040 */  lw         $s6, 0x40($sp)
/* 1D091C 801DFBAC 000B6080 */  sll        $t4, $t3, 2
/* 1D0920 801DFBB0 002C0821 */  addu       $at, $at, $t4
/* 1D0924 801DFBB4 AC229C60 */  sw         $v0, %lo(D_800E9C60)($at)
.L801DFBB8_ovl13:
/* 1D0928 801DFBB8 8CAE0000 */  lw         $t6, 0x0($a1)
/* 1D092C 801DFBBC 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
.L801DFBC0_ovl16:
/* 1D0930 801DFBC0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 1D0934 801DFBC4 000E7880 */  sll        $t7, $t6, 2
/* 1D0938 801DFBC8 002F0821 */  addu       $at, $at, $t7
.L801DFBCC_ovl14:
/* 1D093C 801DFBCC D7B60020 */  ldc1       $f22, 0x20($sp)
/* 1D0940 801DFBD0 8FB00028 */  lw         $s0, 0x28($sp)
.L801DFBD4_ovl13:
/* 1D0944 801DFBD4 8FB1002C */  lw         $s1, 0x2C($sp)
.L801DFBD8_ovl16:
/* 1D0948 801DFBD8 8FB20030 */  lw         $s2, 0x30($sp)
/* 1D094C 801DFBDC 8FB30034 */  lw         $s3, 0x34($sp)
/* 1D0950 801DFBE0 8FB40038 */  lw         $s4, 0x38($sp)
/* 1D0954 801DFBE4 8FB5003C */  lw         $s5, 0x3C($sp)
/* 1D0958 801DFBE8 8FB70044 */  lw         $s7, 0x44($sp)
glabel func_801DFBEC_ovl12
/* 1D095C 801DFBEC 8FBE0048 */  lw         $fp, 0x48($sp)
/* 1D0960 801DFBF0 AC2DDC50 */  sw         $t5, %lo(gEntityVtableIndexArray)($at)
.L801DFBF4_ovl15:
/* 1D0964 801DFBF4 03E00008 */  jr         $ra
/* 1D0968 801DFBF8 27BD0058 */   addiu     $sp, $sp, 0x58
