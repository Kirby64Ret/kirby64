glabel func_801ED634_ovl16
/* 2238E4 801ED634 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 2238E8 801ED638 AFB30030 */  sw         $s3, 0x30($sp)
/* 2238EC 801ED63C 3C138005 */  lui        $s3, %hi(D_8004A7C4)
/* 2238F0 801ED640 2673A7C4 */  addiu      $s3, $s3, %lo(D_8004A7C4)
/* 2238F4 801ED644 8E650000 */  lw         $a1, 0x0($s3)
glabel func_801ED648_ovl9
/* 2238F8 801ED648 AFBF0034 */  sw         $ra, 0x34($sp)
/* 2238FC 801ED64C AFB2002C */  sw         $s2, 0x2C($sp)
/* 223900 801ED650 AFB10028 */  sw         $s1, 0x28($sp)
/* 223904 801ED654 AFB00024 */  sw         $s0, 0x24($sp)
/* 223908 801ED658 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 22390C 801ED65C F7B40010 */  sdc1       $f20, 0x10($sp)
/* 223910 801ED660 AFA40040 */  sw         $a0, 0x40($sp)
/* 223914 801ED664 8CA30000 */  lw         $v1, 0x0($a1)
/* 223918 801ED668 3C08800E */  lui        $t0, %hi(D_800E0D50)
/* 22391C 801ED66C 25080D50 */  addiu      $t0, $t0, %lo(D_800E0D50)
/* 223920 801ED670 00031880 */  sll        $v1, $v1, 2
/* 223924 801ED674 0103C021 */  addu       $t8, $t0, $v1
/* 223928 801ED678 8F190000 */  lw         $t9, 0x0($t8)
/* 22392C 801ED67C 3C11800E */  lui        $s1, %hi(D_800E1B50)
/* 223930 801ED680 3C02800E */  lui        $v0, %hi(D_800E17D0)
/* 223934 801ED684 244217D0 */  addiu      $v0, $v0, %lo(D_800E17D0)
/* 223938 801ED688 26311B50 */  addiu      $s1, $s1, %lo(D_800E1B50)
/* 22393C 801ED68C 00194880 */  sll        $t1, $t9, 2
/* 223940 801ED690 02237021 */  addu       $t6, $s1, $v1
.L801ED694_ovl9:
/* 223944 801ED694 00495021 */  addu       $t2, $v0, $t1
/* 223948 801ED698 8DCF0000 */  lw         $t7, 0x0($t6)
.L801ED69C_ovl10:
/* 22394C 801ED69C C5440000 */  lwc1       $f4, 0x0($t2)
.L801ED6A0_ovl10:
/* 223950 801ED6A0 00435821 */  addu       $t3, $v0, $v1
/* 223954 801ED6A4 AFAF003C */  sw         $t7, 0x3C($sp)
/* 223958 801ED6A8 E5640000 */  swc1       $f4, 0x0($t3)
/* 22395C 801ED6AC 8CA30000 */  lw         $v1, 0x0($a1)
/* 223960 801ED6B0 3C06800F */  lui        $a2, %hi(D_800E9020)
/* 223964 801ED6B4 24C69020 */  addiu      $a2, $a2, %lo(D_800E9020)
glabel func_801ED6B8_ovl10
/* 223968 801ED6B8 00031880 */  sll        $v1, $v1, 2
/* 22396C 801ED6BC 01036021 */  addu       $t4, $t0, $v1
/* 223970 801ED6C0 8D8D0000 */  lw         $t5, 0x0($t4)
/* 223974 801ED6C4 00C3C021 */  addu       $t8, $a2, $v1
/* 223978 801ED6C8 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 22397C 801ED6CC 000D7080 */  sll        $t6, $t5, 2
/* 223980 801ED6D0 00CE7821 */  addu       $t7, $a2, $t6
/* 223984 801ED6D4 C5E60000 */  lwc1       $f6, 0x0($t7)
/* 223988 801ED6D8 24070001 */  addiu      $a3, $zero, 0x1
/* 22398C 801ED6DC 240E000A */  addiu      $t6, $zero, 0xA
/* 223990 801ED6E0 E7060000 */  swc1       $f6, 0x0($t8)
glabel func_801ED6E4_ovl10
/* 223994 801ED6E4 8CB90000 */  lw         $t9, 0x0($a1)
/* 223998 801ED6E8 3C12800F */  lui        $s2, %hi(D_800EA1A0)
/* 22399C 801ED6EC 2652A1A0 */  addiu      $s2, $s2, %lo(D_800EA1A0)
/* 2239A0 801ED6F0 00194880 */  sll        $t1, $t9, 2
/* 2239A4 801ED6F4 00290821 */  addu       $at, $at, $t1
/* 2239A8 801ED6F8 AC279AA0 */  sw         $a3, %lo(D_800E9AA0)($at)
/* 2239AC 801ED6FC 8CAA0000 */  lw         $t2, 0x0($a1)
/* 2239B0 801ED700 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 2239B4 801ED704 000A5880 */  sll        $t3, $t2, 2
/* 2239B8 801ED708 002B0821 */  addu       $at, $at, $t3
/* 2239BC 801ED70C AC279C60 */  sw         $a3, %lo(D_800E9C60)($at)
/* 2239C0 801ED710 8CAC0000 */  lw         $t4, 0x0($a1)
/* 2239C4 801ED714 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 2239C8 801ED718 3C0B800B */  lui        $t3, %hi(func_800B7560)
/* 2239CC 801ED71C 000C6880 */  sll        $t5, $t4, 2
/* 2239D0 801ED720 002D0821 */  addu       $at, $at, $t5
/* 2239D4 801ED724 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 2239D8 801ED728 8CAF0000 */  lw         $t7, 0x0($a1)
/* 2239DC 801ED72C 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 2239E0 801ED730 256B7560 */  addiu      $t3, $t3, %lo(func_800B7560)
/* 2239E4 801ED734 000FC080 */  sll        $t8, $t7, 2
/* 2239E8 801ED738 00380821 */  addu       $at, $at, $t8
/* 2239EC 801ED73C AC2E9FE0 */  sw         $t6, %lo(D_800E9FE0)($at)
/* 2239F0 801ED740 8CB90000 */  lw         $t9, 0x0($a1)
/* 2239F4 801ED744 3C01800E */  lui        $at, %hi(D_800DEF90)
.L801ED748_ovl9:
/* 2239F8 801ED748 3C0F801F */  lui        $t7, %hi(func_801EDE50_ovl16)
/* 2239FC 801ED74C 00194880 */  sll        $t1, $t9, 2
/* 223A00 801ED750 02495021 */  addu       $t2, $s2, $t1
.L801ED754_ovl9:
/* 223A04 801ED754 AD400000 */  sw         $zero, 0x0($t2)
/* 223A08 801ED758 8CAC0000 */  lw         $t4, 0x0($a1)
/* 223A0C 801ED75C 25EFDE50 */  addiu      $t7, $t7, %lo(func_801EDE50_ovl16)
/* 223A10 801ED760 000C6880 */  sll        $t5, $t4, 2
/* 223A14 801ED764 002D0821 */  addu       $at, $at, $t5
/* 223A18 801ED768 AC2BEF90 */  sw         $t3, %lo(D_800DEF90)($at)
/* 223A1C 801ED76C 8CAE0000 */  lw         $t6, 0x0($a1)
.L801ED770_ovl9:
/* 223A20 801ED770 3C01800E */  lui        $at, %hi(D_800DF150)
/* 223A24 801ED774 000EC080 */  sll        $t8, $t6, 2
/* 223A28 801ED778 00380821 */  addu       $at, $at, $t8
/* 223A2C 801ED77C AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
/* 223A30 801ED780 8CB90000 */  lw         $t9, 0x0($a1)
/* 223A34 801ED784 3C01800F */  lui        $at, %hi(D_800E8920)
/* 223A38 801ED788 00194880 */  sll        $t1, $t9, 2
/* 223A3C 801ED78C 00290821 */  addu       $at, $at, $t1
/* 223A40 801ED790 0C02CCFD */  jal        func_800B33F4
.L801ED794_ovl9:
/* 223A44 801ED794 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 223A48 801ED798 3C10800D */  lui        $s0, %hi(D_800D6B10)
/* 223A4C 801ED79C 26106B10 */  addiu      $s0, $s0, %lo(D_800D6B10)
.L801ED7A0_ovl9:
/* 223A50 801ED7A0 0C02BB30 */  jal        func_800AECC0
/* 223A54 801ED7A4 C60C0000 */   lwc1      $f12, 0x0($s0)
/* 223A58 801ED7A8 0C02BB48 */  jal        func_800AED20
/* 223A5C 801ED7AC C60C0000 */   lwc1      $f12, 0x0($s0)
/* 223A60 801ED7B0 8E6C0000 */  lw         $t4, 0x0($s3)
/* 223A64 801ED7B4 3C0A801E */  lui        $t2, %hi(D_801DA484)
/* 223A68 801ED7B8 3C10800D */  lui        $s0, %hi(D_800D7098)
.L801ED7BC_ovl9:
/* 223A6C 801ED7BC 8D8B0000 */  lw         $t3, 0x0($t4)
/* 223A70 801ED7C0 254AA484 */  addiu      $t2, $t2, %lo(D_801DA484)
/* 223A74 801ED7C4 26107098 */  addiu      $s0, $s0, %lo(D_800D7098)
glabel func_801ED7C8_ovl10
/* 223A78 801ED7C8 000B6880 */  sll        $t5, $t3, 2
/* 223A7C 801ED7CC 022D7021 */  addu       $t6, $s1, $t5
glabel func_801ED7D0_ovl10
/* 223A80 801ED7D0 8DCF0000 */  lw         $t7, 0x0($t6)
/* 223A84 801ED7D4 00003025 */  or         $a2, $zero, $zero
/* 223A88 801ED7D8 ADEA008C */  sw         $t2, 0x8C($t7)
/* 223A8C 801ED7DC 8E180010 */  lw         $t8, 0x10($s0)
/* 223A90 801ED7E0 2B010002 */  slti       $at, $t8, 0x2
/* 223A94 801ED7E4 10200012 */  beqz       $at, .L801ED830_ovl16
/* 223A98 801ED7E8 28C2001F */   slti      $v0, $a2, 0x1F
.L801ED7EC_ovl16:
/* 223A9C 801ED7EC 38420001 */  xori       $v0, $v0, 0x1
/* 223AA0 801ED7F0 10400007 */  beqz       $v0, .L801ED810_ovl16
.L801ED7F4_ovl9:
/* 223AA4 801ED7F4 24C60001 */   addiu     $a2, $a2, 0x1
/* 223AA8 801ED7F8 8E790000 */  lw         $t9, 0x0($s3)
/* 223AAC 801ED7FC 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 223AB0 801ED800 8F290000 */  lw         $t1, 0x0($t9)
/* 223AB4 801ED804 00096080 */  sll        $t4, $t1, 2
/* 223AB8 801ED808 002C0821 */  addu       $at, $at, $t4
/* 223ABC 801ED80C AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
.L801ED810_ovl16:
/* 223AC0 801ED810 24040001 */  addiu      $a0, $zero, 0x1
/* 223AC4 801ED814 0C002DAF */  jal        finish_current_thread
/* 223AC8 801ED818 AFA60038 */   sw        $a2, 0x38($sp)
/* 223ACC 801ED81C 8E0B0010 */  lw         $t3, 0x10($s0)
/* 223AD0 801ED820 8FA60038 */  lw         $a2, 0x38($sp)
/* 223AD4 801ED824 29610002 */  slti       $at, $t3, 0x2
/* 223AD8 801ED828 5420FFF0 */  bnel       $at, $zero, .L801ED7EC_ovl16
/* 223ADC 801ED82C 28C2001F */   slti      $v0, $a2, 0x1F
.L801ED830_ovl16:
/* 223AE0 801ED830 0C029D9E */  jal        play_sound
/* 223AE4 801ED834 240401A6 */   addiu     $a0, $zero, 0x1A6
/* 223AE8 801ED838 8E650000 */  lw         $a1, 0x0($s3)
/* 223AEC 801ED83C 3C0A800E */  lui        $t2, %hi(D_800E0D50)
/* 223AF0 801ED840 3C18800E */  lui        $t8, %hi(D_800DFBD0)
/* 223AF4 801ED844 8CA30000 */  lw         $v1, 0x0($a1)
/* 223AF8 801ED848 3C0D800F */  lui        $t5, %hi(D_800E98E0)
/* 223AFC 801ED84C 3C01801F */  lui        $at, %hi(D_801F00E8_ovl16)
/* 223B00 801ED850 00031880 */  sll        $v1, $v1, 2
/* 223B04 801ED854 01435021 */  addu       $t2, $t2, $v1
/* 223B08 801ED858 8D4A0D50 */  lw         $t2, %lo(D_800E0D50)($t2)
/* 223B0C 801ED85C 01A36821 */  addu       $t5, $t5, $v1
/* 223B10 801ED860 8DAD98E0 */  lw         $t5, %lo(D_800E98E0)($t5)
/* 223B14 801ED864 000A7880 */  sll        $t7, $t2, 2
/* 223B18 801ED868 030FC021 */  addu       $t8, $t8, $t7
/* 223B1C 801ED86C 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
/* 223B20 801ED870 C43400E8 */  lwc1       $f20, %lo(D_801F00E8_ovl16)($at)
/* 223B24 801ED874 3C01801F */  lui        $at, %hi(func_801EFDAC_ovl9 + 0x4)
/* 223B28 801ED878 8F19000C */  lw         $t9, 0xC($t8)
/* 223B2C 801ED87C 000D7080 */  sll        $t6, $t5, 2
/* 223B30 801ED880 002E0821 */  addu       $at, $at, $t6
.L801ED884_ovl10:
/* 223B34 801ED884 C428FDB0 */  lwc1       $f8, %lo(func_801EFDAC_ovl9 + 0x4)($at)
/* 223B38 801ED888 C72A0038 */  lwc1       $f10, 0x38($t9)
/* 223B3C 801ED88C 3C11800F */  lui        $s1, %hi(D_800EA6E0)
/* 223B40 801ED890 2631A6E0 */  addiu      $s1, $s1, %lo(D_800EA6E0)
/* 223B44 801ED894 460A4400 */  add.s      $f16, $f8, $f10
/* 223B48 801ED898 02234821 */  addu       $t1, $s1, $v1
/* 223B4C 801ED89C 3C01801F */  lui        $at, %hi(D_801F00EC_ovl16)
/* 223B50 801ED8A0 E5300000 */  swc1       $f16, 0x0($t1)
/* 223B54 801ED8A4 8CAC0000 */  lw         $t4, 0x0($a1)
/* 223B58 801ED8A8 000C5880 */  sll        $t3, $t4, 2
/* 223B5C 801ED8AC 022B1021 */  addu       $v0, $s1, $t3
/* 223B60 801ED8B0 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 223B64 801ED8B4 460CA03C */  c.lt.s     $f20, $f12
/* 223B68 801ED8B8 00000000 */  nop
/* 223B6C 801ED8BC 4500000B */  bc1f       .L801ED8EC_ovl16
/* 223B70 801ED8C0 00000000 */   nop
/* 223B74 801ED8C4 46146481 */  sub.s      $f18, $f12, $f20
.L801ED8C8_ovl16:
/* 223B78 801ED8C8 E4520000 */  swc1       $f18, 0x0($v0)
/* 223B7C 801ED8CC 8CAD0000 */  lw         $t5, 0x0($a1)
/* 223B80 801ED8D0 000D7080 */  sll        $t6, $t5, 2
/* 223B84 801ED8D4 022E1021 */  addu       $v0, $s1, $t6
/* 223B88 801ED8D8 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 223B8C 801ED8DC 460CA03C */  c.lt.s     $f20, $f12
/* 223B90 801ED8E0 00000000 */  nop
/* 223B94 801ED8E4 4503FFF8 */  bc1tl      .L801ED8C8_ovl16
.L801ED8E8_ovl10:
/* 223B98 801ED8E8 46146481 */   sub.s     $f18, $f12, $f20
.L801ED8EC_ovl16:
/* 223B9C 801ED8EC C43600EC */  lwc1       $f22, %lo(D_801F00EC_ovl16)($at)
/* 223BA0 801ED8F0 4616603C */  c.lt.s     $f12, $f22
/* 223BA4 801ED8F4 00000000 */  nop
/* 223BA8 801ED8F8 4500000B */  bc1f       .L801ED928_ovl16
/* 223BAC 801ED8FC 00000000 */   nop
/* 223BB0 801ED900 46146100 */  add.s      $f4, $f12, $f20
.L801ED904_ovl16:
/* 223BB4 801ED904 E4440000 */  swc1       $f4, 0x0($v0)
/* 223BB8 801ED908 8CAA0000 */  lw         $t2, 0x0($a1)
/* 223BBC 801ED90C 000A7880 */  sll        $t7, $t2, 2
/* 223BC0 801ED910 022F1021 */  addu       $v0, $s1, $t7
/* 223BC4 801ED914 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 223BC8 801ED918 4616603C */  c.lt.s     $f12, $f22
/* 223BCC 801ED91C 00000000 */  nop
/* 223BD0 801ED920 4503FFF8 */  bc1tl      .L801ED904_ovl16
/* 223BD4 801ED924 46146100 */   add.s     $f4, $f12, $f20
.L801ED928_ovl16:
/* 223BD8 801ED928 0C00B5B8 */  jal        sinf
/* 223BDC 801ED92C 00000000 */   nop
glabel func_801ED930_ovl10
/* 223BE0 801ED930 3C01C0C0 */  lui        $at, (0xC0C00000 >> 16)
/* 223BE4 801ED934 44813000 */  mtc1       $at, $f6
.L801ED938_ovl9:
/* 223BE8 801ED938 8E650000 */  lw         $a1, 0x0($s3)
/* 223BEC 801ED93C 3C01800E */  lui        $at, %hi(D_800E3050)
/* 223BF0 801ED940 46060202 */  mul.s      $f8, $f0, $f6
/* 223BF4 801ED944 8CB80000 */  lw         $t8, 0x0($a1)
.L801ED948_ovl9:
/* 223BF8 801ED948 0018C880 */  sll        $t9, $t8, 2
/* 223BFC 801ED94C 00390821 */  addu       $at, $at, $t9
/* 223C00 801ED950 E4283050 */  swc1       $f8, %lo(D_800E3050)($at)
/* 223C04 801ED954 8CA90000 */  lw         $t1, 0x0($a1)
/* 223C08 801ED958 00096080 */  sll        $t4, $t1, 2
/* 223C0C 801ED95C 022C5821 */  addu       $t3, $s1, $t4
/* 223C10 801ED960 0C00D604 */  jal        cosf
/* 223C14 801ED964 C56C0000 */   lwc1      $f12, 0x0($t3)
/* 223C18 801ED968 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 223C1C 801ED96C 44815000 */  mtc1       $at, $f10
/* 223C20 801ED970 8E6D0000 */  lw         $t5, 0x0($s3)
/* 223C24 801ED974 3C01800E */  lui        $at, %hi(D_800E3210)
/* 223C28 801ED978 460A0402 */  mul.s      $f16, $f0, $f10
/* 223C2C 801ED97C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 223C30 801ED980 3C040001 */  lui        $a0, (0x1048C >> 16)
/* 223C34 801ED984 3484048C */  ori        $a0, $a0, (0x1048C & 0xFFFF)
/* 223C38 801ED988 000E5080 */  sll        $t2, $t6, 2
/* 223C3C 801ED98C 002A0821 */  addu       $at, $at, $t2
/* 223C40 801ED990 0C02A855 */  jal        func_800AA154
/* 223C44 801ED994 E4303210 */   swc1      $f16, %lo(D_800E3210)($at)
/* 223C48 801ED998 8E0F0010 */  lw         $t7, 0x10($s0)
/* 223C4C 801ED99C 29E10003 */  slti       $at, $t7, 0x3
/* 223C50 801ED9A0 54200008 */  bnel       $at, $zero, .L801ED9C4_ovl16
/* 223C54 801ED9A4 3C040001 */   lui       $a0, (0x10494 >> 16)
/* 223C58 801ED9A8 8E780000 */  lw         $t8, 0x0($s3)
glabel func_801ED9AC_ovl9
/* 223C5C 801ED9AC 8F190000 */  lw         $t9, 0x0($t8)
/* 223C60 801ED9B0 00194880 */  sll        $t1, $t9, 2
/* 223C64 801ED9B4 02496021 */  addu       $t4, $s2, $t1
/* 223C68 801ED9B8 8D8B0000 */  lw         $t3, 0x0($t4)
/* 223C6C 801ED9BC 1560000E */  bnez       $t3, .L801ED9F8_ovl16
/* 223C70 801ED9C0 3C040001 */   lui       $a0, (0x10494 >> 16)
.L801ED9C4_ovl16:
/* 223C74 801ED9C4 0C02A855 */  jal        func_800AA154
/* 223C78 801ED9C8 34840494 */   ori       $a0, $a0, (0x10494 & 0xFFFF)
/* 223C7C 801ED9CC 8E0D0010 */  lw         $t5, 0x10($s0)
/* 223C80 801ED9D0 29A10003 */  slti       $at, $t5, 0x3
/* 223C84 801ED9D4 5420FFFB */  bnel       $at, $zero, .L801ED9C4_ovl16
/* 223C88 801ED9D8 3C040001 */   lui       $a0, (0x10494 >> 16)
/* 223C8C 801ED9DC 8E6E0000 */  lw         $t6, 0x0($s3)
/* 223C90 801ED9E0 8DCA0000 */  lw         $t2, 0x0($t6)
/* 223C94 801ED9E4 000A7880 */  sll        $t7, $t2, 2
/* 223C98 801ED9E8 024FC021 */  addu       $t8, $s2, $t7
/* 223C9C 801ED9EC 8F190000 */  lw         $t9, 0x0($t8)
/* 223CA0 801ED9F0 5320FFF4 */  beql       $t9, $zero, .L801ED9C4_ovl16
/* 223CA4 801ED9F4 3C040001 */   lui       $a0, (0x10494 >> 16)
.L801ED9F8_ovl16:
/* 223CA8 801ED9F8 3C040001 */  lui        $a0, (0x10490 >> 16)
/* 223CAC 801ED9FC 0C02A855 */  jal        func_800AA154
/* 223CB0 801EDA00 34840490 */   ori       $a0, $a0, (0x10490 & 0xFFFF)
/* 223CB4 801EDA04 8E090010 */  lw         $t1, 0x10($s0)
/* 223CB8 801EDA08 29210003 */  slti       $at, $t1, 0x3
/* 223CBC 801EDA0C 14200008 */  bnez       $at, .L801EDA30_ovl16
/* 223CC0 801EDA10 00000000 */   nop
/* 223CC4 801EDA14 8E6C0000 */  lw         $t4, 0x0($s3)
/* 223CC8 801EDA18 8D8B0000 */  lw         $t3, 0x0($t4)
/* 223CCC 801EDA1C 000B6880 */  sll        $t5, $t3, 2
/* 223CD0 801EDA20 024D7021 */  addu       $t6, $s2, $t5
/* 223CD4 801EDA24 8DCA0000 */  lw         $t2, 0x0($t6)
/* 223CD8 801EDA28 1540000E */  bnez       $t2, .L801EDA64_ovl16
/* 223CDC 801EDA2C 00000000 */   nop
.L801EDA30_ovl16:
/* 223CE0 801EDA30 0C002DAF */  jal        finish_current_thread
/* 223CE4 801EDA34 24040001 */   addiu     $a0, $zero, 0x1
/* 223CE8 801EDA38 8E0F0010 */  lw         $t7, 0x10($s0)
/* 223CEC 801EDA3C 29E10003 */  slti       $at, $t7, 0x3
/* 223CF0 801EDA40 1420FFFB */  bnez       $at, .L801EDA30_ovl16
/* 223CF4 801EDA44 00000000 */   nop
/* 223CF8 801EDA48 8E780000 */  lw         $t8, 0x0($s3)
/* 223CFC 801EDA4C 8F190000 */  lw         $t9, 0x0($t8)
/* 223D00 801EDA50 00194880 */  sll        $t1, $t9, 2
/* 223D04 801EDA54 02496021 */  addu       $t4, $s2, $t1
/* 223D08 801EDA58 8D8B0000 */  lw         $t3, 0x0($t4)
/* 223D0C 801EDA5C 1160FFF4 */  beqz       $t3, .L801EDA30_ovl16
/* 223D10 801EDA60 00000000 */   nop
.L801EDA64_ovl16:
/* 223D14 801EDA64 0C029D9E */  jal        play_sound
/* 223D18 801EDA68 240401A7 */   addiu     $a0, $zero, 0x1A7
/* 223D1C 801EDA6C 0C02CCFD */  jal        func_800B33F4
/* 223D20 801EDA70 00000000 */   nop
/* 223D24 801EDA74 8E6D0000 */  lw         $t5, 0x0($s3)
/* 223D28 801EDA78 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 223D2C 801EDA7C 8DA30000 */  lw         $v1, 0x0($t5)
/* 223D30 801EDA80 00031880 */  sll        $v1, $v1, 2
/* 223D34 801EDA84 00230821 */  addu       $at, $at, $v1
/* 223D38 801EDA88 C43225D0 */  lwc1       $f18, %lo(gEntitiesNextPosXArray)($at)
/* 223D3C 801EDA8C 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* 223D40 801EDA90 00230821 */  addu       $at, $at, $v1
/* 223D44 801EDA94 C4242B10 */  lwc1       $f4, %lo(gEntitiesPosXArray)($at)
glabel func_801EDA98_ovl10
/* 223D48 801EDA98 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 223D4C 801EDA9C 00230821 */  addu       $at, $at, $v1
glabel func_801EDAA0_ovl10
/* 223D50 801EDAA0 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 223D54 801EDAA4 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
/* 223D58 801EDAA8 00230821 */  addu       $at, $at, $v1
/* 223D5C 801EDAAC C4282CD0 */  lwc1       $f8, %lo(gEntitiesPosYArray)($at)
/* 223D60 801EDAB0 46049301 */  sub.s      $f12, $f18, $f4
.L801EDAB4_ovl9:
/* 223D64 801EDAB4 46083381 */  sub.s      $f14, $f6, $f8
/* 223D68 801EDAB8 0C0061C3 */  jal        atan2f
/* 223D6C 801EDABC 46007387 */   neg.s     $f14, $f14
/* 223D70 801EDAC0 8E6E0000 */  lw         $t6, 0x0($s3)
/* 223D74 801EDAC4 24040036 */  addiu      $a0, $zero, 0x36
/* 223D78 801EDAC8 24050001 */  addiu      $a1, $zero, 0x1
/* 223D7C 801EDACC 8DCA0000 */  lw         $t2, 0x0($t6)
/* 223D80 801EDAD0 000A7880 */  sll        $t7, $t2, 2
/* 223D84 801EDAD4 022FC021 */  addu       $t8, $s1, $t7
/* 223D88 801EDAD8 0C06B30D */  jal        func_801ACC34_ovl7
/* 223D8C 801EDADC E7000000 */   swc1      $f0, 0x0($t8)
/* 223D90 801EDAE0 10400031 */  beqz       $v0, .L801EDBA8_ovl16
/* 223D94 801EDAE4 00403025 */   or        $a2, $v0, $zero
/* 223D98 801EDAE8 00022080 */  sll        $a0, $v0, 2
/* 223D9C 801EDAEC 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 223DA0 801EDAF0 00240821 */  addu       $at, $at, $a0
/* 223DA4 801EDAF4 24190001 */  addiu      $t9, $zero, 0x1
/* 223DA8 801EDAF8 AC398E60 */  sw         $t9, %lo(D_800E8E60)($at)
/* 223DAC 801EDAFC 8E650000 */  lw         $a1, 0x0($s3)
/* 223DB0 801EDB00 3C01800E */  lui        $at, %hi(D_800E0D50)
/* 223DB4 801EDB04 00240821 */  addu       $at, $at, $a0
/* 223DB8 801EDB08 8CA90000 */  lw         $t1, 0x0($a1)
/* 223DBC 801EDB0C 02241821 */  addu       $v1, $s1, $a0
/* 223DC0 801EDB10 AC290D50 */  sw         $t1, %lo(D_800E0D50)($at)
/* 223DC4 801EDB14 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 223DC8 801EDB18 00240821 */  addu       $at, $at, $a0
/* 223DCC 801EDB1C AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 223DD0 801EDB20 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 223DD4 801EDB24 00240821 */  addu       $at, $at, $a0
/* 223DD8 801EDB28 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
/* 223DDC 801EDB2C 8CAC0000 */  lw         $t4, 0x0($a1)
/* 223DE0 801EDB30 3C01801F */  lui        $at, %hi(D_801F00F0_ovl16)
/* 223DE4 801EDB34 C43000F0 */  lwc1       $f16, %lo(D_801F00F0_ovl16)($at)
/* 223DE8 801EDB38 000C5880 */  sll        $t3, $t4, 2
/* 223DEC 801EDB3C 022B6821 */  addu       $t5, $s1, $t3
/* 223DF0 801EDB40 C5AA0000 */  lwc1       $f10, 0x0($t5)
/* 223DF4 801EDB44 46105480 */  add.s      $f18, $f10, $f16
/* 223DF8 801EDB48 E4720000 */  swc1       $f18, 0x0($v1)
/* 223DFC 801EDB4C C4600000 */  lwc1       $f0, 0x0($v1)
/* 223E00 801EDB50 4600A03C */  c.lt.s     $f20, $f0
/* 223E04 801EDB54 00000000 */  nop
/* 223E08 801EDB58 45020009 */  bc1fl      .L801EDB80_ovl16
/* 223E0C 801EDB5C 4616003C */   c.lt.s    $f0, $f22
/* 223E10 801EDB60 46140101 */  sub.s      $f4, $f0, $f20
.L801EDB64_ovl16:
/* 223E14 801EDB64 E4640000 */  swc1       $f4, 0x0($v1)
/* 223E18 801EDB68 C4600000 */  lwc1       $f0, 0x0($v1)
/* 223E1C 801EDB6C 4600A03C */  c.lt.s     $f20, $f0
/* 223E20 801EDB70 00000000 */  nop
/* 223E24 801EDB74 4503FFFB */  bc1tl      .L801EDB64_ovl16
/* 223E28 801EDB78 46140101 */   sub.s     $f4, $f0, $f20
/* 223E2C 801EDB7C 4616003C */  c.lt.s     $f0, $f22
.L801EDB80_ovl16:
/* 223E30 801EDB80 00000000 */  nop
/* 223E34 801EDB84 45020009 */  bc1fl      .L801EDBAC_ovl16
/* 223E38 801EDB88 24040036 */   addiu     $a0, $zero, 0x36
/* 223E3C 801EDB8C 46140180 */  add.s      $f6, $f0, $f20
.L801EDB90_ovl16:
/* 223E40 801EDB90 E4660000 */  swc1       $f6, 0x0($v1)
/* 223E44 801EDB94 C4600000 */  lwc1       $f0, 0x0($v1)
/* 223E48 801EDB98 4616003C */  c.lt.s     $f0, $f22
/* 223E4C 801EDB9C 00000000 */  nop
/* 223E50 801EDBA0 4503FFFB */  bc1tl      .L801EDB90_ovl16
/* 223E54 801EDBA4 46140180 */   add.s     $f6, $f0, $f20
.L801EDBA8_ovl16:
/* 223E58 801EDBA8 24040036 */  addiu      $a0, $zero, 0x36
.L801EDBAC_ovl16:
/* 223E5C 801EDBAC 24050001 */  addiu      $a1, $zero, 0x1
/* 223E60 801EDBB0 0C06B30D */  jal        func_801ACC34_ovl7
/* 223E64 801EDBB4 AFA60038 */   sw        $a2, 0x38($sp)
/* 223E68 801EDBB8 8FA60038 */  lw         $a2, 0x38($sp)
/* 223E6C 801EDBBC 10400032 */  beqz       $v0, .L801EDC88_ovl16
/* 223E70 801EDBC0 00408025 */   or        $s0, $v0, $zero
/* 223E74 801EDBC4 00022080 */  sll        $a0, $v0, 2
/* 223E78 801EDBC8 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 223E7C 801EDBCC 00240821 */  addu       $at, $at, $a0
/* 223E80 801EDBD0 240E0001 */  addiu      $t6, $zero, 0x1
/* 223E84 801EDBD4 AC2E8E60 */  sw         $t6, %lo(D_800E8E60)($at)
/* 223E88 801EDBD8 8E650000 */  lw         $a1, 0x0($s3)
/* 223E8C 801EDBDC 3C01800E */  lui        $at, %hi(D_800E0D50)
/* 223E90 801EDBE0 00240821 */  addu       $at, $at, $a0
/* 223E94 801EDBE4 8CAA0000 */  lw         $t2, 0x0($a1)
/* 223E98 801EDBE8 240F0001 */  addiu      $t7, $zero, 0x1
glabel func_801EDBEC_ovl9
/* 223E9C 801EDBEC 02241821 */  addu       $v1, $s1, $a0
/* 223EA0 801EDBF0 AC2A0D50 */  sw         $t2, %lo(D_800E0D50)($at)
/* 223EA4 801EDBF4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 223EA8 801EDBF8 00240821 */  addu       $at, $at, $a0
/* 223EAC 801EDBFC AC2F98E0 */  sw         $t7, %lo(D_800E98E0)($at)
/* 223EB0 801EDC00 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 223EB4 801EDC04 00240821 */  addu       $at, $at, $a0
/* 223EB8 801EDC08 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
/* 223EBC 801EDC0C 8CB80000 */  lw         $t8, 0x0($a1)
/* 223EC0 801EDC10 3C01801F */  lui        $at, %hi(D_801F00F4_ovl16)
/* 223EC4 801EDC14 C42A00F4 */  lwc1       $f10, %lo(D_801F00F4_ovl16)($at)
/* 223EC8 801EDC18 0018C880 */  sll        $t9, $t8, 2
/* 223ECC 801EDC1C 02394821 */  addu       $t1, $s1, $t9
/* 223ED0 801EDC20 C5280000 */  lwc1       $f8, 0x0($t1)
/* 223ED4 801EDC24 460A4401 */  sub.s      $f16, $f8, $f10
/* 223ED8 801EDC28 E4700000 */  swc1       $f16, 0x0($v1)
/* 223EDC 801EDC2C C4600000 */  lwc1       $f0, 0x0($v1)
/* 223EE0 801EDC30 4600A03C */  c.lt.s     $f20, $f0
/* 223EE4 801EDC34 00000000 */  nop
/* 223EE8 801EDC38 45020009 */  bc1fl      .L801EDC60_ovl16
/* 223EEC 801EDC3C 4616003C */   c.lt.s    $f0, $f22
/* 223EF0 801EDC40 46140481 */  sub.s      $f18, $f0, $f20
.L801EDC44_ovl16:
/* 223EF4 801EDC44 E4720000 */  swc1       $f18, 0x0($v1)
/* 223EF8 801EDC48 C4600000 */  lwc1       $f0, 0x0($v1)
/* 223EFC 801EDC4C 4600A03C */  c.lt.s     $f20, $f0
/* 223F00 801EDC50 00000000 */  nop
/* 223F04 801EDC54 4503FFFB */  bc1tl      .L801EDC44_ovl16
/* 223F08 801EDC58 46140481 */   sub.s     $f18, $f0, $f20
/* 223F0C 801EDC5C 4616003C */  c.lt.s     $f0, $f22
.L801EDC60_ovl16:
/* 223F10 801EDC60 00000000 */  nop
/* 223F14 801EDC64 45020009 */  bc1fl      .L801EDC8C_ovl16
/* 223F18 801EDC68 8E650000 */   lw        $a1, 0x0($s3)
/* 223F1C 801EDC6C 46140100 */  add.s      $f4, $f0, $f20
.L801EDC70_ovl16:
/* 223F20 801EDC70 E4640000 */  swc1       $f4, 0x0($v1)
/* 223F24 801EDC74 C4600000 */  lwc1       $f0, 0x0($v1)
.L801EDC78_ovl10:
/* 223F28 801EDC78 4616003C */  c.lt.s     $f0, $f22
/* 223F2C 801EDC7C 00000000 */  nop
/* 223F30 801EDC80 4503FFFB */  bc1tl      .L801EDC70_ovl16
/* 223F34 801EDC84 46140100 */   add.s     $f4, $f0, $f20
.L801EDC88_ovl16:
/* 223F38 801EDC88 8E650000 */  lw         $a1, 0x0($s3)
.L801EDC8C_ovl16:
/* 223F3C 801EDC8C 3C01801F */  lui        $at, %hi(D_801F00F8_ovl16)
/* 223F40 801EDC90 C42000F8 */  lwc1       $f0, %lo(D_801F00F8_ovl16)($at)
/* 223F44 801EDC94 8CAC0000 */  lw         $t4, 0x0($a1)
/* 223F48 801EDC98 3C01801F */  lui        $at, %hi(D_801F00FC_ovl16)
/* 223F4C 801EDC9C 24040003 */  addiu      $a0, $zero, 0x3
/* 223F50 801EDCA0 000C5880 */  sll        $t3, $t4, 2
/* 223F54 801EDCA4 022B1021 */  addu       $v0, $s1, $t3
/* 223F58 801EDCA8 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 223F5C 801EDCAC 460C003C */  c.lt.s     $f0, $f12
/* 223F60 801EDCB0 00000000 */  nop
.L801EDCB4_ovl10:
/* 223F64 801EDCB4 4500000B */  bc1f       .L801EDCE4_ovl16
/* 223F68 801EDCB8 00000000 */   nop
/* 223F6C 801EDCBC 46146181 */  sub.s      $f6, $f12, $f20
.L801EDCC0_ovl16:
/* 223F70 801EDCC0 E4460000 */  swc1       $f6, 0x0($v0)
/* 223F74 801EDCC4 8CAD0000 */  lw         $t5, 0x0($a1)
/* 223F78 801EDCC8 000D7080 */  sll        $t6, $t5, 2
/* 223F7C 801EDCCC 022E1021 */  addu       $v0, $s1, $t6
/* 223F80 801EDCD0 C44C0000 */  lwc1       $f12, 0x0($v0)
.L801EDCD4_ovl10:
/* 223F84 801EDCD4 460C003C */  c.lt.s     $f0, $f12
/* 223F88 801EDCD8 00000000 */  nop
/* 223F8C 801EDCDC 4503FFF8 */  bc1tl      .L801EDCC0_ovl16
/* 223F90 801EDCE0 46146181 */   sub.s     $f6, $f12, $f20
.L801EDCE4_ovl16:
/* 223F94 801EDCE4 C42000FC */  lwc1       $f0, %lo(D_801F00FC_ovl16)($at)
/* 223F98 801EDCE8 4600603C */  c.lt.s     $f12, $f0
.L801EDCEC_ovl10:
/* 223F9C 801EDCEC 00000000 */  nop
/* 223FA0 801EDCF0 4502000C */  bc1fl      func_801EDD24_ovl16
/* 223FA4 801EDCF4 8CB8003C */   lw        $t8, 0x3C($a1)
/* 223FA8 801EDCF8 46146200 */  add.s      $f8, $f12, $f20
.L801EDCFC_ovl16:
/* 223FAC 801EDCFC E4480000 */  swc1       $f8, 0x0($v0)
/* 223FB0 801EDD00 8CAA0000 */  lw         $t2, 0x0($a1)
/* 223FB4 801EDD04 000A7880 */  sll        $t7, $t2, 2
/* 223FB8 801EDD08 022F1021 */  addu       $v0, $s1, $t7
/* 223FBC 801EDD0C C44C0000 */  lwc1       $f12, 0x0($v0)
/* 223FC0 801EDD10 4600603C */  c.lt.s     $f12, $f0
/* 223FC4 801EDD14 00000000 */  nop
/* 223FC8 801EDD18 4503FFF8 */  bc1tl      .L801EDCFC_ovl16
glabel func_801EDD1C_ovl10
/* 223FCC 801EDD1C 46146200 */   add.s     $f8, $f12, $f20
/* 223FD0 801EDD20 8CB8003C */  lw         $t8, 0x3C($a1)
glabel func_801EDD24_ovl16
/* 223FD4 801EDD24 44808000 */  mtc1       $zero, $f16
/* 223FD8 801EDD28 8F190010 */  lw         $t9, 0x10($t8)
/* 223FDC 801EDD2C E72C0038 */  swc1       $f12, 0x38($t9)
/* 223FE0 801EDD30 8E690000 */  lw         $t1, 0x0($s3)
/* 223FE4 801EDD34 8D2C0000 */  lw         $t4, 0x0($t1)
/* 223FE8 801EDD38 000C5880 */  sll        $t3, $t4, 2
/* 223FEC 801EDD3C 022B6821 */  addu       $t5, $s1, $t3
/* 223FF0 801EDD40 C5AA0000 */  lwc1       $f10, 0x0($t5)
.L801EDD44_ovl9:
/* 223FF4 801EDD44 4610503C */  c.lt.s     $f10, $f16
/* 223FF8 801EDD48 00000000 */  nop
/* 223FFC 801EDD4C 4500000F */  bc1f       .L801EDD8C_ovl16
.L801EDD50_ovl9:
/* 224000 801EDD50 00000000 */   nop
/* 224004 801EDD54 24040003 */  addiu      $a0, $zero, 0x3
/* 224008 801EDD58 0C006291 */  jal        random_soft_s32_range
/* 22400C 801EDD5C AFA60038 */   sw        $a2, 0x38($sp)
/* 224010 801EDD60 14400003 */  bnez       $v0, .L801EDD70_ovl16
/* 224014 801EDD64 8FA60038 */   lw        $a2, 0x38($sp)
/* 224018 801EDD68 10000002 */  b          .L801EDD74_ovl16
/* 22401C 801EDD6C 00C01025 */   or        $v0, $a2, $zero
.L801EDD70_ovl16:
/* 224020 801EDD70 02001025 */  or         $v0, $s0, $zero
.L801EDD74_ovl16:
/* 224024 801EDD74 00025080 */  sll        $t2, $v0, 2
/* 224028 801EDD78 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 22402C 801EDD7C 002A0821 */  addu       $at, $at, $t2
/* 224030 801EDD80 240E0001 */  addiu      $t6, $zero, 0x1
/* 224034 801EDD84 1000000D */  b          .L801EDDBC_ovl16
/* 224038 801EDD88 AC2E9C60 */   sw        $t6, %lo(D_800E9C60)($at)
.L801EDD8C_ovl16:
/* 22403C 801EDD8C 0C006291 */  jal        random_soft_s32_range
/* 224040 801EDD90 AFA60038 */   sw        $a2, 0x38($sp)
/* 224044 801EDD94 14400003 */  bnez       $v0, .L801EDDA4_ovl16
/* 224048 801EDD98 8FA60038 */   lw        $a2, 0x38($sp)
/* 22404C 801EDD9C 10000002 */  b          .L801EDDA8_ovl16
/* 224050 801EDDA0 02001025 */   or        $v0, $s0, $zero
.L801EDDA4_ovl16:
/* 224054 801EDDA4 00C01025 */  or         $v0, $a2, $zero
.L801EDDA8_ovl16:
/* 224058 801EDDA8 0002C080 */  sll        $t8, $v0, 2
/* 22405C 801EDDAC 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 224060 801EDDB0 00380821 */  addu       $at, $at, $t8
/* 224064 801EDDB4 240F0001 */  addiu      $t7, $zero, 0x1
/* 224068 801EDDB8 AC2F9C60 */  sw         $t7, %lo(D_800E9C60)($at)
.L801EDDBC_ovl16:
/* 22406C 801EDDBC 8E650000 */  lw         $a1, 0x0($s3)
/* 224070 801EDDC0 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 224074 801EDDC4 24190001 */  addiu      $t9, $zero, 0x1
/* 224078 801EDDC8 8CA90000 */  lw         $t1, 0x0($a1)
/* 22407C 801EDDCC 240B0001 */  addiu      $t3, $zero, 0x1
/* 224080 801EDDD0 3C040001 */  lui        $a0, (0x1048E >> 16)
/* 224084 801EDDD4 00096080 */  sll        $t4, $t1, 2
/* 224088 801EDDD8 002C0821 */  addu       $at, $at, $t4
/* 22408C 801EDDDC AC399AA0 */  sw         $t9, %lo(D_800E9AA0)($at)
/* 224090 801EDDE0 8CAD0000 */  lw         $t5, 0x0($a1)
/* 224094 801EDDE4 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 224098 801EDDE8 3484048E */  ori        $a0, $a0, (0x1048E & 0xFFFF)
/* 22409C 801EDDEC 000D7080 */  sll        $t6, $t5, 2
.L801EDDF0_ovl10:
/* 2240A0 801EDDF0 002E0821 */  addu       $at, $at, $t6
/* 2240A4 801EDDF4 0C02A855 */  jal        func_800AA154
/* 2240A8 801EDDF8 AC2B9E20 */   sw        $t3, %lo(D_800E9E20)($at)
/* 2240AC 801EDDFC 8E6F0000 */  lw         $t7, 0x0($s3)
/* 2240B0 801EDE00 8FAC003C */  lw         $t4, 0x3C($sp)
/* 2240B4 801EDE04 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 2240B8 801EDE08 8DF80000 */  lw         $t8, 0x0($t7)
/* 2240BC 801EDE0C 240A0002 */  addiu      $t2, $zero, 0x2
/* 2240C0 801EDE10 24190001 */  addiu      $t9, $zero, 0x1
/* 2240C4 801EDE14 00184880 */  sll        $t1, $t8, 2
/* 2240C8 801EDE18 00290821 */  addu       $at, $at, $t1
/* 2240CC 801EDE1C AC2A9E20 */  sw         $t2, %lo(D_800E9E20)($at)
/* 2240D0 801EDE20 A1990040 */  sb         $t9, 0x40($t4)
/* 2240D4 801EDE24 0C068FA0 */  jal        func_801A3E80_ovl7
.L801EDE28_ovl10:
/* 2240D8 801EDE28 8FA40040 */   lw        $a0, 0x40($sp)
/* 2240DC 801EDE2C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 2240E0 801EDE30 D7B40010 */  ldc1       $f20, 0x10($sp)
.L801EDE34_ovl10:
/* 2240E4 801EDE34 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 2240E8 801EDE38 8FB00024 */  lw         $s0, 0x24($sp)
.L801EDE3C_ovl10:
/* 2240EC 801EDE3C 8FB10028 */  lw         $s1, 0x28($sp)
/* 2240F0 801EDE40 8FB2002C */  lw         $s2, 0x2C($sp)
/* 2240F4 801EDE44 8FB30030 */  lw         $s3, 0x30($sp)
/* 2240F8 801EDE48 03E00008 */  jr         $ra
/* 2240FC 801EDE4C 27BD0040 */   addiu     $sp, $sp, 0x40
