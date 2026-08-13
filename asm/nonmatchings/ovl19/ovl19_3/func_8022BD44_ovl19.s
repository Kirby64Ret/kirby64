nonmatching func_8022BD44_ovl19, 0x3FC

glabel func_8022BD44_ovl19
    /* 24C454 8022BD44 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 24C458 8022BD48 AFB30028 */  sw         $s3, 0x28($sp)
    /* 24C45C 8022BD4C AFB10020 */  sw         $s1, 0x20($sp)
    /* 24C460 8022BD50 3C118013 */  lui        $s1, %hi(gKirbyState)
    /* 24C464 8022BD54 3C138005 */  lui        $s3, %hi(omCurrentObj)
    /* 24C468 8022BD58 2673A7C4 */  addiu      $s3, $s3, %lo(omCurrentObj)
    /* 24C46C 8022BD5C 2631E7C0 */  addiu      $s1, $s1, %lo(gKirbyState)
    /* 24C470 8022BD60 8E6E0000 */  lw         $t6, 0x0($s3)
    /* 24C474 8022BD64 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 24C478 8022BD68 AFB50030 */  sw         $s5, 0x30($sp)
    /* 24C47C 8022BD6C AFB4002C */  sw         $s4, 0x2C($sp)
    /* 24C480 8022BD70 AFB20024 */  sw         $s2, 0x24($sp)
    /* 24C484 8022BD74 AFB0001C */  sw         $s0, 0x1C($sp)
    /* 24C488 8022BD78 F7B40010 */  sdc1       $f20, 0x10($sp)
    /* 24C48C 8022BD7C AE200030 */  sw         $zero, 0x30($s1)
    /* 24C490 8022BD80 AE20003C */  sw         $zero, 0x3C($s1)
    /* 24C494 8022BD84 AE200044 */  sw         $zero, 0x44($s1)
    /* 24C498 8022BD88 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 24C49C 8022BD8C 3C01800F */  lui        $at, %hi(D_800E8220)
    /* 24C4A0 8022BD90 0080A025 */  or         $s4, $a0, $zero
    /* 24C4A4 8022BD94 000FC080 */  sll        $t8, $t7, 2
    /* 24C4A8 8022BD98 00380821 */  addu       $at, $at, $t8
    /* 24C4AC 8022BD9C 0C0473D6 */  jal        func_8011CF58
    /* 24C4B0 8022BDA0 AC208220 */   sw        $zero, %lo(D_800E8220)($at)
    /* 24C4B4 8022BDA4 8E620000 */  lw         $v0, 0x0($s3)
    /* 24C4B8 8022BDA8 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* 24C4BC 8022BDAC 2419000E */  addiu      $t9, $zero, 0xE
    /* 24C4C0 8022BDB0 8C480000 */  lw         $t0, 0x0($v0)
    /* 24C4C4 8022BDB4 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
    /* 24C4C8 8022BDB8 240A0001 */  addiu      $t2, $zero, 0x1
    /* 24C4CC 8022BDBC 00084880 */  sll        $t1, $t0, 2
    /* 24C4D0 8022BDC0 00290821 */  addu       $at, $at, $t1
    /* 24C4D4 8022BDC4 AC39DFD0 */  sw         $t9, %lo(D_800DDFD0)($at)
    /* 24C4D8 8022BDC8 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 24C4DC 8022BDCC 000B6080 */  sll        $t4, $t3, 2
    /* 24C4E0 8022BDD0 01AC6821 */  addu       $t5, $t5, $t4
    /* 24C4E4 8022BDD4 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
    /* 24C4E8 8022BDD8 8DAE005C */  lw         $t6, 0x5C($t5)
    /* 24C4EC 8022BDDC 0C04828A */  jal        func_80120A28
    /* 24C4F0 8022BDE0 A1CA0054 */   sb        $t2, 0x54($t6)
    /* 24C4F4 8022BDE4 8E6F0000 */  lw         $t7, 0x0($s3)
    /* 24C4F8 8022BDE8 3C15800F */  lui        $s5, %hi(D_800E9720)
    /* 24C4FC 8022BDEC 26B59720 */  addiu      $s5, $s5, %lo(D_800E9720)
    /* 24C500 8022BDF0 8DF80000 */  lw         $t8, 0x0($t7)
    /* 24C504 8022BDF4 3C040002 */  lui        $a0, (0x20362 >> 16)
    /* 24C508 8022BDF8 3C050002 */  lui        $a1, (0x20363 >> 16)
    /* 24C50C 8022BDFC 00184080 */  sll        $t0, $t8, 2
    /* 24C510 8022BE00 02A8C821 */  addu       $t9, $s5, $t0
    /* 24C514 8022BE04 AF200000 */  sw         $zero, 0x0($t9)
    /* 24C518 8022BE08 34A50363 */  ori        $a1, $a1, (0x20363 & 0xFFFF)
    /* 24C51C 8022BE0C 34840362 */  ori        $a0, $a0, (0x20362 & 0xFFFF)
    /* 24C520 8022BE10 0C048C3A */  jal        func_801230E8
    /* 24C524 8022BE14 00003025 */   or        $a2, $zero, $zero
    /* 24C528 8022BE18 0C02BC8C */  jal        func_800AF230
    /* 24C52C 8022BE1C 00000000 */   nop
    /* 24C530 8022BE20 14400013 */  bnez       $v0, .L8022BE70_ovl19
    /* 24C534 8022BE24 3C12800D */   lui       $s2, %hi(gKirbyController)
    /* 24C538 8022BE28 26526FE8 */  addiu      $s2, $s2, %lo(gKirbyController)
    /* 24C53C 8022BE2C 96490000 */  lhu        $t1, 0x0($s2)
  .L8022BE30_ovl19:
    /* 24C540 8022BE30 312B4000 */  andi       $t3, $t1, 0x4000
    /* 24C544 8022BE34 5160002C */  beql       $t3, $zero, .L8022BEE8_ovl19
    /* 24C548 8022BE38 8E6A0000 */   lw        $t2, 0x0($s3)
    /* 24C54C 8022BE3C 8E6C0000 */  lw         $t4, 0x0($s3)
    /* 24C550 8022BE40 24040001 */  addiu      $a0, $zero, 0x1
    /* 24C554 8022BE44 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 24C558 8022BE48 000D5080 */  sll        $t2, $t5, 2
    /* 24C55C 8022BE4C 02AA1021 */  addu       $v0, $s5, $t2
    /* 24C560 8022BE50 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 24C564 8022BE54 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 24C568 8022BE58 0C002DAF */  jal        ohSleep
    /* 24C56C 8022BE5C AC4F0000 */   sw        $t7, 0x0($v0)
    /* 24C570 8022BE60 0C02BC8C */  jal        func_800AF230
    /* 24C574 8022BE64 00000000 */   nop
    /* 24C578 8022BE68 5040FFF1 */  beql       $v0, $zero, .L8022BE30_ovl19
    /* 24C57C 8022BE6C 96490000 */   lhu       $t1, 0x0($s2)
  .L8022BE70_ovl19:
    /* 24C580 8022BE70 3C12800D */  lui        $s2, %hi(gKirbyController)
    /* 24C584 8022BE74 3C040002 */  lui        $a0, (0x2036C >> 16)
    /* 24C588 8022BE78 3C050002 */  lui        $a1, (0x2036D >> 16)
    /* 24C58C 8022BE7C 26526FE8 */  addiu      $s2, $s2, %lo(gKirbyController)
    /* 24C590 8022BE80 34A5036D */  ori        $a1, $a1, (0x2036D & 0xFFFF)
    /* 24C594 8022BE84 3484036C */  ori        $a0, $a0, (0x2036C & 0xFFFF)
    /* 24C598 8022BE88 0C048C3A */  jal        func_801230E8
    /* 24C59C 8022BE8C 00003025 */   or        $a2, $zero, $zero
    /* 24C5A0 8022BE90 0C02BC8C */  jal        func_800AF230
    /* 24C5A4 8022BE94 00000000 */   nop
    /* 24C5A8 8022BE98 54400013 */  bnel       $v0, $zero, .L8022BEE8_ovl19
    /* 24C5AC 8022BE9C 8E6A0000 */   lw        $t2, 0x0($s3)
    /* 24C5B0 8022BEA0 96580000 */  lhu        $t8, 0x0($s2)
  .L8022BEA4_ovl19:
    /* 24C5B4 8022BEA4 33084000 */  andi       $t0, $t8, 0x4000
    /* 24C5B8 8022BEA8 5100000F */  beql       $t0, $zero, .L8022BEE8_ovl19
    /* 24C5BC 8022BEAC 8E6A0000 */   lw        $t2, 0x0($s3)
    /* 24C5C0 8022BEB0 8E790000 */  lw         $t9, 0x0($s3)
    /* 24C5C4 8022BEB4 24040001 */  addiu      $a0, $zero, 0x1
    /* 24C5C8 8022BEB8 8F290000 */  lw         $t1, 0x0($t9)
    /* 24C5CC 8022BEBC 00095880 */  sll        $t3, $t1, 2
    /* 24C5D0 8022BEC0 02AB1021 */  addu       $v0, $s5, $t3
    /* 24C5D4 8022BEC4 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 24C5D8 8022BEC8 258D0001 */  addiu      $t5, $t4, 0x1
    /* 24C5DC 8022BECC 0C002DAF */  jal        ohSleep
    /* 24C5E0 8022BED0 AC4D0000 */   sw        $t5, 0x0($v0)
    /* 24C5E4 8022BED4 0C02BC8C */  jal        func_800AF230
    /* 24C5E8 8022BED8 00000000 */   nop
    /* 24C5EC 8022BEDC 5040FFF1 */  beql       $v0, $zero, .L8022BEA4_ovl19
    /* 24C5F0 8022BEE0 96580000 */   lhu       $t8, 0x0($s2)
    /* 24C5F4 8022BEE4 8E6A0000 */  lw         $t2, 0x0($s3)
  .L8022BEE8_ovl19:
    /* 24C5F8 8022BEE8 3C040002 */  lui        $a0, (0x20366 >> 16)
    /* 24C5FC 8022BEEC 3C050002 */  lui        $a1, (0x20367 >> 16)
    /* 24C600 8022BEF0 8D4E0000 */  lw         $t6, 0x0($t2)
    /* 24C604 8022BEF4 24190001 */  addiu      $t9, $zero, 0x1
    /* 24C608 8022BEF8 00003025 */  or         $a2, $zero, $zero
    /* 24C60C 8022BEFC 000E7880 */  sll        $t7, $t6, 2
    /* 24C610 8022BF00 02AFC021 */  addu       $t8, $s5, $t7
    /* 24C614 8022BF04 8F080000 */  lw         $t0, 0x0($t8)
    /* 24C618 8022BF08 34A50367 */  ori        $a1, $a1, (0x20367 & 0xFFFF)
    /* 24C61C 8022BF0C 34840366 */  ori        $a0, $a0, (0x20366 & 0xFFFF)
    /* 24C620 8022BF10 2901000C */  slti       $at, $t0, 0xC
    /* 24C624 8022BF14 10200038 */  beqz       $at, .L8022BFF8_ovl19
    /* 24C628 8022BF18 00000000 */   nop
    /* 24C62C 8022BF1C 3C040002 */  lui        $a0, (0x20364 >> 16)
    /* 24C630 8022BF20 3C050002 */  lui        $a1, (0x20365 >> 16)
    /* 24C634 8022BF24 AE390044 */  sw         $t9, 0x44($s1)
    /* 24C638 8022BF28 34A50365 */  ori        $a1, $a1, (0x20365 & 0xFFFF)
    /* 24C63C 8022BF2C 0C048C3A */  jal        func_801230E8
    /* 24C640 8022BF30 34840364 */   ori       $a0, $a0, (0x20364 & 0xFFFF)
    /* 24C644 8022BF34 8E6B0000 */  lw         $t3, 0x0($s3)
    /* 24C648 8022BF38 3C098023 */  lui        $t1, %hi(func_8022C140_ovl19)
    /* 24C64C 8022BF3C 3C01800E */  lui        $at, %hi(D_800DF310)
    /* 24C650 8022BF40 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 24C654 8022BF44 2529C140 */  addiu      $t1, $t1, %lo(func_8022C140_ovl19)
    /* 24C658 8022BF48 000C6880 */  sll        $t5, $t4, 2
    /* 24C65C 8022BF4C 002D0821 */  addu       $at, $at, $t5
    /* 24C660 8022BF50 0C02BC8C */  jal        func_800AF230
    /* 24C664 8022BF54 AC29F310 */   sw        $t1, %lo(D_800DF310)($at)
    /* 24C668 8022BF58 1440005E */  bnez       $v0, .L8022C0D4_ovl19
    /* 24C66C 8022BF5C 3C013F00 */   lui       $at, (0x3F000000 >> 16)
    /* 24C670 8022BF60 4481A000 */  mtc1       $at, $f20
    /* 24C674 8022BF64 2410FFFF */  addiu      $s0, $zero, -0x1
    /* 24C678 8022BF68 8E6A0000 */  lw         $t2, 0x0($s3)
  .L8022BF6C_ovl19:
    /* 24C67C 8022BF6C 3C18800F */  lui        $t8, %hi(D_800E8220)
    /* 24C680 8022BF70 8D4E0000 */  lw         $t6, 0x0($t2)
    /* 24C684 8022BF74 000E7880 */  sll        $t7, $t6, 2
    /* 24C688 8022BF78 030FC021 */  addu       $t8, $t8, $t7
    /* 24C68C 8022BF7C 8F188220 */  lw         $t8, %lo(D_800E8220)($t8)
    /* 24C690 8022BF80 5300000A */  beql       $t8, $zero, .L8022BFAC_ovl19
    /* 24C694 8022BF84 8E22003C */   lw        $v0, 0x3C($s1)
    /* 24C698 8022BF88 0C02BCC5 */  jal        func_800AF314
    /* 24C69C 8022BF8C 00000000 */   nop
    /* 24C6A0 8022BF90 0C02BCE8 */  jal        func_800AF3A0
    /* 24C6A4 8022BF94 00000000 */   nop
    /* 24C6A8 8022BF98 0C002DAF */  jal        ohSleep
    /* 24C6AC 8022BF9C 2404000F */   addiu     $a0, $zero, 0xF
    /* 24C6B0 8022BFA0 1000004D */  b          .L8022C0D8_ovl19
    /* 24C6B4 8022BFA4 8E620000 */   lw        $v0, 0x0($s3)
    /* 24C6B8 8022BFA8 8E22003C */  lw         $v0, 0x3C($s1)
  .L8022BFAC_ovl19:
    /* 24C6BC 8022BFAC 12020009 */  beq        $s0, $v0, .L8022BFD4_ovl19
    /* 24C6C0 8022BFB0 28410005 */   slti      $at, $v0, 0x5
    /* 24C6C4 8022BFB4 50200008 */  beql       $at, $zero, .L8022BFD8_ovl19
    /* 24C6C8 8022BFB8 AE30003C */   sw        $s0, 0x3C($s1)
    /* 24C6CC 8022BFBC C6840040 */  lwc1       $f4, 0x40($s4)
    /* 24C6D0 8022BFC0 46142182 */  mul.s      $f6, $f4, $f20
    /* 24C6D4 8022BFC4 4600320D */  trunc.w.s  $f8, $f6
    /* 24C6D8 8022BFC8 44194000 */  mfc1       $t9, $f8
    /* 24C6DC 8022BFCC 10000002 */  b          .L8022BFD8_ovl19
    /* 24C6E0 8022BFD0 AE39003C */   sw        $t9, 0x3C($s1)
  .L8022BFD4_ovl19:
    /* 24C6E4 8022BFD4 AE30003C */  sw         $s0, 0x3C($s1)
  .L8022BFD8_ovl19:
    /* 24C6E8 8022BFD8 0C002DAF */  jal        ohSleep
    /* 24C6EC 8022BFDC 24040001 */   addiu     $a0, $zero, 0x1
    /* 24C6F0 8022BFE0 0C02BC8C */  jal        func_800AF230
    /* 24C6F4 8022BFE4 00000000 */   nop
    /* 24C6F8 8022BFE8 5040FFE0 */  beql       $v0, $zero, .L8022BF6C_ovl19
    /* 24C6FC 8022BFEC 8E6A0000 */   lw        $t2, 0x0($s3)
    /* 24C700 8022BFF0 10000039 */  b          .L8022C0D8_ovl19
    /* 24C704 8022BFF4 8E620000 */   lw        $v0, 0x0($s3)
  .L8022BFF8_ovl19:
    /* 24C708 8022BFF8 0C048C3A */  jal        func_801230E8
    /* 24C70C 8022BFFC 24060001 */   addiu     $a2, $zero, 0x1
    /* 24C710 8022C000 964B0000 */  lhu        $t3, 0x0($s2)
    /* 24C714 8022C004 3C100002 */  lui        $s0, (0x20368 >> 16)
    /* 24C718 8022C008 36100368 */  ori        $s0, $s0, (0x20368 & 0xFFFF)
    /* 24C71C 8022C00C 316C4000 */  andi       $t4, $t3, 0x4000
    /* 24C720 8022C010 11800009 */  beqz       $t4, .L8022C038_ovl19
    /* 24C724 8022C014 3C050002 */   lui       $a1, (0x20369 >> 16)
  .L8022C018_ovl19:
    /* 24C728 8022C018 34A50369 */  ori        $a1, $a1, (0x20369 & 0xFFFF)
    /* 24C72C 8022C01C 02002025 */  or         $a0, $s0, $zero
    /* 24C730 8022C020 0C048C3A */  jal        func_801230E8
    /* 24C734 8022C024 24060001 */   addiu     $a2, $zero, 0x1
    /* 24C738 8022C028 96490000 */  lhu        $t1, 0x0($s2)
    /* 24C73C 8022C02C 312D4000 */  andi       $t5, $t1, 0x4000
    /* 24C740 8022C030 55A0FFF9 */  bnel       $t5, $zero, .L8022C018_ovl19
    /* 24C744 8022C034 3C050002 */   lui       $a1, (0x20369 >> 16)
  .L8022C038_ovl19:
    /* 24C748 8022C038 240A0002 */  addiu      $t2, $zero, 0x2
    /* 24C74C 8022C03C 3C040002 */  lui        $a0, (0x2036A >> 16)
    /* 24C750 8022C040 3C050002 */  lui        $a1, (0x2036B >> 16)
    /* 24C754 8022C044 AE2A0044 */  sw         $t2, 0x44($s1)
    /* 24C758 8022C048 34A5036B */  ori        $a1, $a1, (0x2036B & 0xFFFF)
    /* 24C75C 8022C04C 3484036A */  ori        $a0, $a0, (0x2036A & 0xFFFF)
    /* 24C760 8022C050 0C048C3A */  jal        func_801230E8
    /* 24C764 8022C054 00003025 */   or        $a2, $zero, $zero
    /* 24C768 8022C058 8E6F0000 */  lw         $t7, 0x0($s3)
    /* 24C76C 8022C05C 3C0E8023 */  lui        $t6, %hi(func_8022C140_ovl19)
    /* 24C770 8022C060 3C01800E */  lui        $at, %hi(D_800DF310)
    /* 24C774 8022C064 8DF80000 */  lw         $t8, 0x0($t7)
    /* 24C778 8022C068 25CEC140 */  addiu      $t6, $t6, %lo(func_8022C140_ovl19)
    /* 24C77C 8022C06C 00184080 */  sll        $t0, $t8, 2
    /* 24C780 8022C070 00280821 */  addu       $at, $at, $t0
    /* 24C784 8022C074 0C02BC8C */  jal        func_800AF230
    /* 24C788 8022C078 AC2EF310 */   sw        $t6, %lo(D_800DF310)($at)
    /* 24C78C 8022C07C 14400015 */  bnez       $v0, .L8022C0D4_ovl19
    /* 24C790 8022C080 3C013F00 */   lui       $at, (0x3F000000 >> 16)
    /* 24C794 8022C084 4481A000 */  mtc1       $at, $f20
    /* 24C798 8022C088 2410FFFF */  addiu      $s0, $zero, -0x1
    /* 24C79C 8022C08C 8E22003C */  lw         $v0, 0x3C($s1)
  .L8022C090_ovl19:
    /* 24C7A0 8022C090 12020009 */  beq        $s0, $v0, .L8022C0B8_ovl19
    /* 24C7A4 8022C094 28410005 */   slti      $at, $v0, 0x5
    /* 24C7A8 8022C098 50200008 */  beql       $at, $zero, .L8022C0BC_ovl19
    /* 24C7AC 8022C09C AE30003C */   sw        $s0, 0x3C($s1)
    /* 24C7B0 8022C0A0 C68A0040 */  lwc1       $f10, 0x40($s4)
    /* 24C7B4 8022C0A4 46145402 */  mul.s      $f16, $f10, $f20
    /* 24C7B8 8022C0A8 4600848D */  trunc.w.s  $f18, $f16
    /* 24C7BC 8022C0AC 440B9000 */  mfc1       $t3, $f18
    /* 24C7C0 8022C0B0 10000002 */  b          .L8022C0BC_ovl19
    /* 24C7C4 8022C0B4 AE2B003C */   sw        $t3, 0x3C($s1)
  .L8022C0B8_ovl19:
    /* 24C7C8 8022C0B8 AE30003C */  sw         $s0, 0x3C($s1)
  .L8022C0BC_ovl19:
    /* 24C7CC 8022C0BC 0C002DAF */  jal        ohSleep
    /* 24C7D0 8022C0C0 24040001 */   addiu     $a0, $zero, 0x1
    /* 24C7D4 8022C0C4 0C02BC8C */  jal        func_800AF230
    /* 24C7D8 8022C0C8 00000000 */   nop
    /* 24C7DC 8022C0CC 5040FFF0 */  beql       $v0, $zero, .L8022C090_ovl19
    /* 24C7E0 8022C0D0 8E22003C */   lw        $v0, 0x3C($s1)
  .L8022C0D4_ovl19:
    /* 24C7E4 8022C0D4 8E620000 */  lw         $v0, 0x0($s3)
  .L8022C0D8_ovl19:
    /* 24C7E8 8022C0D8 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
    /* 24C7EC 8022C0DC 240A0002 */  addiu      $t2, $zero, 0x2
    /* 24C7F0 8022C0E0 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 24C7F4 8022C0E4 000C4880 */  sll        $t1, $t4, 2
    /* 24C7F8 8022C0E8 02A96821 */  addu       $t5, $s5, $t1
    /* 24C7FC 8022C0EC ADA00000 */  sw         $zero, 0x0($t5)
    /* 24C800 8022C0F0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 24C804 8022C0F4 000FC080 */  sll        $t8, $t7, 2
    /* 24C808 8022C0F8 01D87021 */  addu       $t6, $t6, $t8
    /* 24C80C 8022C0FC 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
    /* 24C810 8022C100 8DC8005C */  lw         $t0, 0x5C($t6)
    /* 24C814 8022C104 A10A0054 */  sb         $t2, 0x54($t0)
    /* 24C818 8022C108 8E390030 */  lw         $t9, 0x30($s1)
    /* 24C81C 8022C10C 272B0001 */  addiu      $t3, $t9, 0x1
    /* 24C820 8022C110 0C02BE85 */  jal        curObjSleepForever
    /* 24C824 8022C114 AE2B0030 */   sw        $t3, 0x30($s1)
    /* 24C828 8022C118 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 24C82C 8022C11C D7B40010 */  ldc1       $f20, 0x10($sp)
    /* 24C830 8022C120 8FB0001C */  lw         $s0, 0x1C($sp)
    /* 24C834 8022C124 8FB10020 */  lw         $s1, 0x20($sp)
    /* 24C838 8022C128 8FB20024 */  lw         $s2, 0x24($sp)
    /* 24C83C 8022C12C 8FB30028 */  lw         $s3, 0x28($sp)
    /* 24C840 8022C130 8FB4002C */  lw         $s4, 0x2C($sp)
    /* 24C844 8022C134 8FB50030 */  lw         $s5, 0x30($sp)
    /* 24C848 8022C138 03E00008 */  jr         $ra
    /* 24C84C 8022C13C 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_8022BD44_ovl19
.size func_8022BD44_ovl19, . - func_8022BD44_ovl19
