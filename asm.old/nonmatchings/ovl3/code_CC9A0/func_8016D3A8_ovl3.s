glabel func_8016D3A8_ovl3
/* CDDE8 8016D3A8 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* CDDEC 8016D3AC AFB40044 */  sw         $s4, 0x44($sp)
/* CDDF0 8016D3B0 3C148005 */  lui        $s4, %hi(D_8004A7C4)
/* CDDF4 8016D3B4 2694A7C4 */  addiu      $s4, $s4, %lo(D_8004A7C4)
/* CDDF8 8016D3B8 AFB00034 */  sw         $s0, 0x34($sp)
/* CDDFC 8016D3BC 8E870000 */  lw         $a3, 0x0($s4)
/* CDE00 8016D3C0 3C108013 */  lui        $s0, %hi(gKirbyState)
/* CDE04 8016D3C4 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
/* CDE08 8016D3C8 AFBF004C */  sw         $ra, 0x4C($sp)
.L8016D3CC_ovl5:
/* CDE0C 8016D3CC AFB50048 */  sw         $s5, 0x48($sp)
/* CDE10 8016D3D0 AFB30040 */  sw         $s3, 0x40($sp)
/* CDE14 8016D3D4 AFB2003C */  sw         $s2, 0x3C($sp)
.L8016D3D8_ovl5:
/* CDE18 8016D3D8 AFB10038 */  sw         $s1, 0x38($sp)
/* CDE1C 8016D3DC F7BA0028 */  sdc1       $f26, 0x28($sp)
/* CDE20 8016D3E0 F7B80020 */  sdc1       $f24, 0x20($sp)
.L8016D3E4_ovl5:
/* CDE24 8016D3E4 F7B60018 */  sdc1       $f22, 0x18($sp)
/* CDE28 8016D3E8 F7B40010 */  sdc1       $f20, 0x10($sp)
/* CDE2C 8016D3EC AFA40050 */  sw         $a0, 0x50($sp)
/* CDE30 8016D3F0 AE000044 */  sw         $zero, 0x44($s0)
/* CDE34 8016D3F4 8CEE0000 */  lw         $t6, 0x0($a3)
/* CDE38 8016D3F8 3C01800F */  lui        $at, %hi(D_800E9720)
/* CDE3C 8016D3FC 3C15800F */  lui        $s5, %hi(D_800E8AE0)
/* CDE40 8016D400 000E7880 */  sll        $t7, $t6, 2
/* CDE44 8016D404 002F0821 */  addu       $at, $at, $t7
/* CDE48 8016D408 AC209720 */  sw         $zero, %lo(D_800E9720)($at)
/* CDE4C 8016D40C 8CF80000 */  lw         $t8, 0x0($a3)
/* CDE50 8016D410 26B58AE0 */  addiu      $s5, $s5, %lo(D_800E8AE0)
/* CDE54 8016D414 3C014040 */  lui        $at, (0x40400000 >> 16)
/* CDE58 8016D418 0018C880 */  sll        $t9, $t8, 2
/* CDE5C 8016D41C 02B94021 */  addu       $t0, $s5, $t9
/* CDE60 8016D420 8D090000 */  lw         $t1, 0x0($t0)
/* CDE64 8016D424 312A0006 */  andi       $t2, $t1, 0x6
/* CDE68 8016D428 5140000A */  beql       $t2, $zero, .L8016D454_ovl5
/* CDE6C 8016D42C 4481A000 */   mtc1      $at, $f20
/* CDE70 8016D430 3C014000 */  lui        $at, (0x40000000 >> 16)
/* CDE74 8016D434 4481A000 */  mtc1       $at, $f20
/* CDE78 8016D438 0C02BB30 */  jal        func_800AECC0
/* CDE7C 8016D43C 4600A306 */   mov.s     $f12, $f20
/* CDE80 8016D440 0C02BB48 */  jal        func_800AED20
/* CDE84 8016D444 4600A306 */   mov.s     $f12, $f20
/* CDE88 8016D448 10000007 */  b          .L8016D468_ovl3
/* CDE8C 8016D44C 8E870000 */   lw        $a3, 0x0($s4)
/* CDE90 8016D450 4481A000 */  mtc1       $at, $f20
.L8016D454_ovl5:
/* CDE94 8016D454 0C02BB30 */  jal        func_800AECC0
/* CDE98 8016D458 4600A306 */   mov.s     $f12, $f20
/* CDE9C 8016D45C 0C02BB48 */  jal        func_800AED20
.L8016D460_ovl5:
/* CDEA0 8016D460 4600A306 */   mov.s     $f12, $f20
/* CDEA4 8016D464 8E870000 */  lw         $a3, 0x0($s4)
.L8016D468_ovl3:
/* CDEA8 8016D468 3C01800E */  lui        $at, %hi(D_800DDFD0)
.L8016D46C_ovl5:
/* CDEAC 8016D46C 24120001 */  addiu      $s2, $zero, 0x1
/* CDEB0 8016D470 8CEB0000 */  lw         $t3, 0x0($a3)
/* CDEB4 8016D474 3C13800E */  lui        $s3, %hi(D_800E6A10)
.L8016D478_ovl5:
/* CDEB8 8016D478 26736A10 */  addiu      $s3, $s3, %lo(D_800E6A10)
/* CDEBC 8016D47C 000B6080 */  sll        $t4, $t3, 2
/* CDEC0 8016D480 002C0821 */  addu       $at, $at, $t4
/* CDEC4 8016D484 AC32DFD0 */  sw         $s2, %lo(D_800DDFD0)($at)
/* CDEC8 8016D488 920D0006 */  lbu        $t5, 0x6($s0)
/* CDECC 8016D48C 564D005C */  bnel       $s2, $t5, .L8016D600_ovl3
/* CDED0 8016D490 3C014000 */   lui       $at, (0x40000000 >> 16)
/* CDED4 8016D494 8CE20000 */  lw         $v0, 0x0($a3)
/* CDED8 8016D498 3C040002 */  lui        $a0, (0x2009D >> 16)
/* CDEDC 8016D49C 3C013EC0 */  lui        $at, (0x3EC00000 >> 16)
/* CDEE0 8016D4A0 00021080 */  sll        $v0, $v0, 2
/* CDEE4 8016D4A4 02A27021 */  addu       $t6, $s5, $v0
/* CDEE8 8016D4A8 8DCF0000 */  lw         $t7, 0x0($t6)
/* CDEEC 8016D4AC 0262C821 */  addu       $t9, $s3, $v0
/* CDEF0 8016D4B0 3484009D */  ori        $a0, $a0, (0x2009D & 0xFFFF)
/* CDEF4 8016D4B4 31F80006 */  andi       $t8, $t7, 0x6
/* CDEF8 8016D4B8 17000005 */  bnez       $t8, .L8016D4D0_ovl3
/* CDEFC 8016D4BC 3C050002 */   lui       $a1, (0x2009E >> 16)
/* CDF00 8016D4C0 3C013F40 */  lui        $at, (0x3F400000 >> 16)
/* CDF04 8016D4C4 44811000 */  mtc1       $at, $f2
/* CDF08 8016D4C8 10000004 */  b          .L8016D4DC_ovl3
/* CDF0C 8016D4CC C7240000 */   lwc1      $f4, 0x0($t9)
.L8016D4D0_ovl3:
/* CDF10 8016D4D0 44811000 */  mtc1       $at, $f2
/* CDF14 8016D4D4 00000000 */  nop
/* CDF18 8016D4D8 C7240000 */  lwc1       $f4, 0x0($t9)
.L8016D4DC_ovl3:
/* CDF1C 8016D4DC 3C11800E */  lui        $s1, %hi(D_800E64D0)
/* CDF20 8016D4E0 263164D0 */  addiu      $s1, $s1, %lo(D_800E64D0)
/* CDF24 8016D4E4 46041182 */  mul.s      $f6, $f2, $f4
/* CDF28 8016D4E8 02224021 */  addu       $t0, $s1, $v0
/* CDF2C 8016D4EC 3C013EA0 */  lui        $at, (0x3EA00000 >> 16)
/* CDF30 8016D4F0 34A5009E */  ori        $a1, $a1, (0x2009E & 0xFFFF)
.L8016D4F4_ovl5:
/* CDF34 8016D4F4 E5060000 */  swc1       $f6, 0x0($t0)
/* CDF38 8016D4F8 8CE20000 */  lw         $v0, 0x0($a3)
/* CDF3C 8016D4FC 00021080 */  sll        $v0, $v0, 2
.L8016D500_ovl5:
/* CDF40 8016D500 02A24821 */  addu       $t1, $s5, $v0
/* CDF44 8016D504 8D2A0000 */  lw         $t2, 0x0($t1)
/* CDF48 8016D508 02626021 */  addu       $t4, $s3, $v0
.L8016D50C_ovl5:
/* CDF4C 8016D50C 314B0006 */  andi       $t3, $t2, 0x6
/* CDF50 8016D510 55600006 */  bnel       $t3, $zero, .L8016D52C_ovl3
/* CDF54 8016D514 44810000 */   mtc1      $at, $f0
/* CDF58 8016D518 3C013F20 */  lui        $at, (0x3F200000 >> 16)
/* CDF5C 8016D51C 44810000 */  mtc1       $at, $f0
/* CDF60 8016D520 10000004 */  b          .L8016D534_ovl3
/* CDF64 8016D524 C5880000 */   lwc1      $f8, 0x0($t4)
/* CDF68 8016D528 44810000 */  mtc1       $at, $f0
.L8016D52C_ovl3:
/* CDF6C 8016D52C 00000000 */  nop
/* CDF70 8016D530 C5880000 */  lwc1       $f8, 0x0($t4)
.L8016D534_ovl3:
/* CDF74 8016D534 3C15800E */  lui        $s5, %hi(D_800E6690)
/* CDF78 8016D538 26B56690 */  addiu      $s5, $s5, %lo(D_800E6690)
/* CDF7C 8016D53C 46080282 */  mul.s      $f10, $f0, $f8
/* CDF80 8016D540 02A26821 */  addu       $t5, $s5, $v0
/* CDF84 8016D544 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* CDF88 8016D548 44818000 */  mtc1       $at, $f16
/* CDF8C 8016D54C 3C01800E */  lui        $at, %hi(D_800E6850)
/* CDF90 8016D550 E5AA0000 */  swc1       $f10, 0x0($t5)
/* CDF94 8016D554 8CEE0000 */  lw         $t6, 0x0($a3)
/* CDF98 8016D558 000E7880 */  sll        $t7, $t6, 2
/* CDF9C 8016D55C 002F0821 */  addu       $at, $at, $t7
/* CDFA0 8016D560 E4306850 */  swc1       $f16, %lo(D_800E6850)($at)
/* CDFA4 8016D564 92030004 */  lbu        $v1, 0x4($s0)
/* CDFA8 8016D568 10600008 */  beqz       $v1, .L8016D58C_ovl3
/* CDFAC 8016D56C 00000000 */   nop
/* CDFB0 8016D570 1072000A */  beq        $v1, $s2, .L8016D59C_ovl3
/* CDFB4 8016D574 3C040002 */   lui       $a0, (0x2016B >> 16)
/* CDFB8 8016D578 24010002 */  addiu      $at, $zero, 0x2
.L8016D57C_ovl5:
/* CDFBC 8016D57C 1061000E */  beq        $v1, $at, .L8016D5B8_ovl3
/* CDFC0 8016D580 3C040002 */   lui       $a0, (0x200C5 >> 16)
/* CDFC4 8016D584 10000011 */  b          .L8016D5CC_ovl3
.L8016D588_ovl5:
/* CDFC8 8016D588 00000000 */   nop
.L8016D58C_ovl3:
/* CDFCC 8016D58C 0C048C3A */  jal        func_801230E8
/* CDFD0 8016D590 00003025 */   or        $a2, $zero, $zero
.L8016D594_ovl5:
/* CDFD4 8016D594 1000000D */  b          .L8016D5CC_ovl3
/* CDFD8 8016D598 00000000 */   nop
.L8016D59C_ovl3:
/* CDFDC 8016D59C 3C050002 */  lui        $a1, (0x2016C >> 16)
/* CDFE0 8016D5A0 34A5016C */  ori        $a1, $a1, (0x2016C & 0xFFFF)
/* CDFE4 8016D5A4 3484016B */  ori        $a0, $a0, (0x2016B & 0xFFFF)
/* CDFE8 8016D5A8 0C048C3A */  jal        func_801230E8
/* CDFEC 8016D5AC 00003025 */   or        $a2, $zero, $zero
/* CDFF0 8016D5B0 10000006 */  b          .L8016D5CC_ovl3
/* CDFF4 8016D5B4 00000000 */   nop
.L8016D5B8_ovl3:
/* CDFF8 8016D5B8 3C050002 */  lui        $a1, (0x200C6 >> 16)
/* CDFFC 8016D5BC 34A500C6 */  ori        $a1, $a1, (0x200C6 & 0xFFFF)
/* CE000 8016D5C0 348400C5 */  ori        $a0, $a0, (0x200C5 & 0xFFFF)
/* CE004 8016D5C4 0C048C3A */  jal        func_801230E8
/* CE008 8016D5C8 00003025 */   or        $a2, $zero, $zero
.L8016D5CC_ovl3:
/* CE00C 8016D5CC 3C18800D */  lui        $t8, %hi(gKirbyController)
/* CE010 8016D5D0 97186FE8 */  lhu        $t8, %lo(gKirbyController)($t8)
/* CE014 8016D5D4 33190300 */  andi       $t9, $t8, 0x300
/* CE018 8016D5D8 57200009 */  bnel       $t9, $zero, .L8016D600_ovl3
/* CE01C 8016D5DC 3C014000 */   lui       $at, (0x40000000 >> 16)
.L8016D5E0_ovl3:
/* CE020 8016D5E0 0C002DAF */  jal        finish_current_thread
/* CE024 8016D5E4 02402025 */   or        $a0, $s2, $zero
/* CE028 8016D5E8 3C08800D */  lui        $t0, %hi(gKirbyController)
/* CE02C 8016D5EC 95086FE8 */  lhu        $t0, %lo(gKirbyController)($t0)
/* CE030 8016D5F0 31090300 */  andi       $t1, $t0, 0x300
/* CE034 8016D5F4 1120FFFA */  beqz       $t1, .L8016D5E0_ovl3
/* CE038 8016D5F8 00000000 */   nop
/* CE03C 8016D5FC 3C014000 */  lui        $at, (0x40000000 >> 16)
.L8016D600_ovl3:
/* CE040 8016D600 4481D000 */  mtc1       $at, $f26
.L8016D604_ovl5:
/* CE044 8016D604 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* CE048 8016D608 92020004 */  lbu        $v0, 0x4($s0)
/* CE04C 8016D60C 4481B000 */  mtc1       $at, $f22
.L8016D610_ovl5:
/* CE050 8016D610 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CE054 8016D614 3C11800E */  lui        $s1, %hi(D_800E64D0)
/* CE058 8016D618 3C13800E */  lui        $s3, %hi(D_800E6A10)
.L8016D61C_ovl5:
/* CE05C 8016D61C 3C15800E */  lui        $s5, %hi(D_800E6690)
/* CE060 8016D620 4481A000 */  mtc1       $at, $f20
/* CE064 8016D624 4480C000 */  mtc1       $zero, $f24
/* CE068 8016D628 26B56690 */  addiu      $s5, $s5, %lo(D_800E6690)
/* CE06C 8016D62C 26736A10 */  addiu      $s3, $s3, %lo(D_800E6A10)
/* CE070 8016D630 263164D0 */  addiu      $s1, $s1, %lo(D_800E64D0)
/* CE074 8016D634 00401825 */  or         $v1, $v0, $zero
.L8016D638_ovl3:
/* CE078 8016D638 10600008 */  beqz       $v1, .L8016D65C_ovl3
/* CE07C 8016D63C 3C040002 */   lui       $a0, (0x20141 >> 16)
/* CE080 8016D640 1072000D */  beq        $v1, $s2, .L8016D678_ovl3
/* CE084 8016D644 3C040002 */   lui       $a0, (0x2017F >> 16)
/* CE088 8016D648 24010002 */  addiu      $at, $zero, 0x2
/* CE08C 8016D64C 10610011 */  beq        $v1, $at, .L8016D694_ovl3
/* CE090 8016D650 3C040002 */   lui       $a0, (0x20141 >> 16)
/* CE094 8016D654 10000015 */  b          .L8016D6AC_ovl3
/* CE098 8016D658 00000000 */   nop
.L8016D65C_ovl3:
/* CE09C 8016D65C 3C050002 */  lui        $a1, (0x20142 >> 16)
/* CE0A0 8016D660 34A50142 */  ori        $a1, $a1, (0x20142 & 0xFFFF)
/* CE0A4 8016D664 34840141 */  ori        $a0, $a0, (0x20141 & 0xFFFF)
/* CE0A8 8016D668 0C048C3A */  jal        func_801230E8
/* CE0AC 8016D66C 00003025 */   or        $a2, $zero, $zero
/* CE0B0 8016D670 1000000E */  b          .L8016D6AC_ovl3
/* CE0B4 8016D674 92020004 */   lbu       $v0, 0x4($s0)
.L8016D678_ovl3:
/* CE0B8 8016D678 3C050002 */  lui        $a1, (0x20180 >> 16)
/* CE0BC 8016D67C 34A50180 */  ori        $a1, $a1, (0x20180 & 0xFFFF)
/* CE0C0 8016D680 3484017F */  ori        $a0, $a0, (0x2017F & 0xFFFF)
/* CE0C4 8016D684 0C048C3A */  jal        func_801230E8
/* CE0C8 8016D688 00003025 */   or        $a2, $zero, $zero
.L8016D68C_ovl5:
/* CE0CC 8016D68C 10000007 */  b          .L8016D6AC_ovl3
/* CE0D0 8016D690 92020004 */   lbu       $v0, 0x4($s0)
.L8016D694_ovl3:
/* CE0D4 8016D694 3C050002 */  lui        $a1, (0x200D2 >> 16)
.L8016D698_ovl5:
/* CE0D8 8016D698 34A500D2 */  ori        $a1, $a1, (0x200D2 & 0xFFFF)
/* CE0DC 8016D69C 348400D1 */  ori        $a0, $a0, (0x200D1 & 0xFFFF)
/* CE0E0 8016D6A0 0C048C3A */  jal        func_801230E8
.L8016D6A4_ovl5:
/* CE0E4 8016D6A4 00003025 */   or        $a2, $zero, $zero
/* CE0E8 8016D6A8 92020004 */  lbu        $v0, 0x4($s0)
.L8016D6AC_ovl3:
/* CE0EC 8016D6AC 1440004C */  bnez       $v0, .L8016D7E0_ovl3
/* CE0F0 8016D6B0 00000000 */   nop
/* CE0F4 8016D6B4 8E030044 */  lw         $v1, 0x44($s0)
.L8016D6B8_ovl3:
/* CE0F8 8016D6B8 14600028 */  bnez       $v1, .L8016D75C_ovl3
/* CE0FC 8016D6BC 00000000 */   nop
/* CE100 8016D6C0 8E0A0034 */  lw         $t2, 0x34($s0)
/* CE104 8016D6C4 314B0001 */  andi       $t3, $t2, 0x1
/* CE108 8016D6C8 15600024 */  bnez       $t3, .L8016D75C_ovl3
/* CE10C 8016D6CC 00000000 */   nop
/* CE110 8016D6D0 8E870000 */  lw         $a3, 0x0($s4)
/* CE114 8016D6D4 8CE20000 */  lw         $v0, 0x0($a3)
/* CE118 8016D6D8 00021080 */  sll        $v0, $v0, 2
/* CE11C 8016D6DC 02626021 */  addu       $t4, $s3, $v0
/* CE120 8016D6E0 C5800000 */  lwc1       $f0, 0x0($t4)
/* CE124 8016D6E4 0222C821 */  addu       $t9, $s1, $v0
/* CE128 8016D6E8 4600A032 */  c.eq.s     $f20, $f0
/* CE12C 8016D6EC 00000000 */  nop
/* CE130 8016D6F0 45020006 */  bc1fl      .L8016D70C_ovl3
/* CE134 8016D6F4 4600B032 */   c.eq.s    $f22, $f0
/* CE138 8016D6F8 8E0D00EC */  lw         $t5, 0xEC($s0)
/* CE13C 8016D6FC 31AE0001 */  andi       $t6, $t5, 0x1
/* CE140 8016D700 55C0000A */  bnel       $t6, $zero, .L8016D72C_ovl5
/* CE144 8016D704 C7200000 */   lwc1      $f0, 0x0($t9)
/* CE148 8016D708 4600B032 */  c.eq.s     $f22, $f0
.L8016D70C_ovl3:
/* CE14C 8016D70C 00000000 */  nop
/* CE150 8016D710 45000012 */  bc1f       .L8016D75C_ovl3
.L8016D714_ovl5:
/* CE154 8016D714 00000000 */   nop
/* CE158 8016D718 8E0F00F0 */  lw         $t7, 0xF0($s0)
/* CE15C 8016D71C 31F80008 */  andi       $t8, $t7, 0x8
.L8016D720_ovl5:
/* CE160 8016D720 1300000E */  beqz       $t8, .L8016D75C_ovl3
/* CE164 8016D724 00000000 */   nop
/* CE168 8016D728 C7200000 */  lwc1       $f0, 0x0($t9)
.L8016D72C_ovl5:
/* CE16C 8016D72C 4618003C */  c.lt.s     $f0, $f24
/* CE170 8016D730 00000000 */  nop
/* CE174 8016D734 45020004 */  bc1fl      .L8016D748_ovl3
/* CE178 8016D738 46000086 */   mov.s     $f2, $f0
/* CE17C 8016D73C 10000002 */  b          .L8016D748_ovl3
/* CE180 8016D740 46000087 */   neg.s     $f2, $f0
/* CE184 8016D744 46000086 */  mov.s      $f2, $f0
.L8016D748_ovl3:
/* CE188 8016D748 4602D03C */  c.lt.s     $f26, $f2
/* CE18C 8016D74C 00000000 */  nop
/* CE190 8016D750 45030007 */  bc1tl      .L8016D770_ovl3
/* CE194 8016D754 24680001 */   addiu     $t0, $v1, 0x1
/* CE198 8016D758 AE120044 */  sw         $s2, 0x44($s0)
.L8016D75C_ovl3:
/* CE19C 8016D75C 0C002DAF */  jal        finish_current_thread
/* CE1A0 8016D760 02402025 */   or        $a0, $s2, $zero
/* CE1A4 8016D764 1000FFD4 */  b          .L8016D6B8_ovl3
/* CE1A8 8016D768 8E030044 */   lw        $v1, 0x44($s0)
/* CE1AC 8016D76C 24680001 */  addiu      $t0, $v1, 0x1
.L8016D770_ovl3:
/* CE1B0 8016D770 AE080044 */  sw         $t0, 0x44($s0)
/* CE1B4 8016D774 8CE90000 */  lw         $t1, 0x0($a3)
/* CE1B8 8016D778 44809000 */  mtc1       $zero, $f18
/* CE1BC 8016D77C 3C018019 */  lui        $at, %hi(D_80197354_ovl3)
/* CE1C0 8016D780 00095080 */  sll        $t2, $t1, 2
/* CE1C4 8016D784 02AA5821 */  addu       $t3, $s5, $t2
/* CE1C8 8016D788 E5720000 */  swc1       $f18, 0x0($t3)
/* CE1CC 8016D78C 8CE20000 */  lw         $v0, 0x0($a3)
/* CE1D0 8016D790 3C040002 */  lui        $a0, (0x200FF >> 16)
/* CE1D4 8016D794 3C050002 */  lui        $a1, (0x20100 >> 16)
/* CE1D8 8016D798 00021080 */  sll        $v0, $v0, 2
.L8016D79C_ovl5:
/* CE1DC 8016D79C 02A26021 */  addu       $t4, $s5, $v0
/* CE1E0 8016D7A0 C5840000 */  lwc1       $f4, 0x0($t4)
/* CE1E4 8016D7A4 02226821 */  addu       $t5, $s1, $v0
.L8016D7A8_ovl5:
/* CE1E8 8016D7A8 34A50100 */  ori        $a1, $a1, (0x20100 & 0xFFFF)
/* CE1EC 8016D7AC E5A40000 */  swc1       $f4, 0x0($t5)
/* CE1F0 8016D7B0 8CEE0000 */  lw         $t6, 0x0($a3)
.L8016D7B4_ovl5:
/* CE1F4 8016D7B4 C4267354 */  lwc1       $f6, %lo(D_80197354_ovl3)($at)
/* CE1F8 8016D7B8 3C01800E */  lui        $at, %hi(D_800E6850)
/* CE1FC 8016D7BC 000E7880 */  sll        $t7, $t6, 2
.L8016D7C0_ovl5:
/* CE200 8016D7C0 002F0821 */  addu       $at, $at, $t7
/* CE204 8016D7C4 348400FF */  ori        $a0, $a0, (0x200FF & 0xFFFF)
/* CE208 8016D7C8 24060001 */  addiu      $a2, $zero, 0x1
/* CE20C 8016D7CC 0C048C3A */  jal        func_801230E8
/* CE210 8016D7D0 E4266850 */   swc1      $f6, %lo(D_800E6850)($at)
/* CE214 8016D7D4 92020004 */  lbu        $v0, 0x4($s0)
/* CE218 8016D7D8 1000FF97 */  b          .L8016D638_ovl3
/* CE21C 8016D7DC 00401825 */   or        $v1, $v0, $zero
.L8016D7E0_ovl3:
/* CE220 8016D7E0 0C02BE85 */  jal        func_800AFA14
/* CE224 8016D7E4 00000000 */   nop
/* CE228 8016D7E8 8FBF004C */  lw         $ra, 0x4C($sp)
/* CE22C 8016D7EC D7B40010 */  ldc1       $f20, 0x10($sp)
/* CE230 8016D7F0 D7B60018 */  ldc1       $f22, 0x18($sp)
/* CE234 8016D7F4 D7B80020 */  ldc1       $f24, 0x20($sp)
/* CE238 8016D7F8 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* CE23C 8016D7FC 8FB00034 */  lw         $s0, 0x34($sp)
/* CE240 8016D800 8FB10038 */  lw         $s1, 0x38($sp)
/* CE244 8016D804 8FB2003C */  lw         $s2, 0x3C($sp)
/* CE248 8016D808 8FB30040 */  lw         $s3, 0x40($sp)
/* CE24C 8016D80C 8FB40044 */  lw         $s4, 0x44($sp)
/* CE250 8016D810 8FB50048 */  lw         $s5, 0x48($sp)
/* CE254 8016D814 03E00008 */  jr         $ra
/* CE258 8016D818 27BD0050 */   addiu     $sp, $sp, 0x50
