glabel func_8022CE18_ovl19
/* 24D528 8022CE18 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 24D52C 8022CE1C 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 24D530 8022CE20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 24D534 8022CE24 240E0001 */  addiu      $t6, $zero, 0x1
/* 24D538 8022CE28 3C018013 */  lui        $at, %hi(D_8012E7E8 + 0x8)
/* 24D53C 8022CE2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 24D540 8022CE30 AFA40018 */  sw         $a0, 0x18($sp)
/* 24D544 8022CE34 AC2EE7F0 */  sw         $t6, %lo(D_8012E7E8 + 0x8)($at)
/* 24D548 8022CE38 8CD80000 */  lw         $t8, 0x0($a2)
/* 24D54C 8022CE3C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 24D550 8022CE40 3C0F8023 */  lui        $t7, %hi(func_8022D13C_ovl19)
/* 24D554 8022CE44 0018C880 */  sll        $t9, $t8, 2
/* 24D558 8022CE48 00390821 */  addu       $at, $at, $t9
/* 24D55C 8022CE4C 25EFD13C */  addiu      $t7, $t7, %lo(func_8022D13C_ovl19)
/* 24D560 8022CE50 AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
/* 24D564 8022CE54 8CC80000 */  lw         $t0, 0x0($a2)
/* 24D568 8022CE58 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray4)
/* 24D56C 8022CE5C 3C05800B */  lui        $a1, %hi(func_800B1870)
/* 24D570 8022CE60 00084880 */  sll        $t1, $t0, 2
/* 24D574 8022CE64 00892021 */  addu       $a0, $a0, $t1
/* 24D578 8022CE68 8C84EA50 */  lw         $a0, %lo(gEntityGObjProcessArray4)($a0)
/* 24D57C 8022CE6C 0C02C7DA */  jal        func_800B1F68
/* 24D580 8022CE70 24A51870 */   addiu     $a1, $a1, %lo(func_800B1870)
/* 24D584 8022CE74 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 24D588 8022CE78 0C02BB30 */  jal        func_800AECC0
/* 24D58C 8022CE7C C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 24D590 8022CE80 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 24D594 8022CE84 0C02BB48 */  jal        func_800AED20
/* 24D598 8022CE88 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 24D59C 8022CE8C 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 24D5A0 8022CE90 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 24D5A4 8022CE94 3C018013 */  lui        $at, %hi(D_8012E90C + 0x10)
/* 24D5A8 8022CE98 AC20E91C */  sw         $zero, %lo(D_8012E90C + 0x10)($at)
/* 24D5AC 8022CE9C 8D4B0000 */  lw         $t3, 0x0($t2)
/* 24D5B0 8022CEA0 3C04800E */  lui        $a0, %hi(D_800DFA10)
/* 24D5B4 8022CEA4 000B6080 */  sll        $t4, $t3, 2
/* 24D5B8 8022CEA8 008C2021 */  addu       $a0, $a0, $t4
/* 24D5BC 8022CEAC 0C02BE95 */  jal        func_800AFA54
/* 24D5C0 8022CEB0 8C84FA10 */   lw        $a0, %lo(D_800DFA10)($a0)
/* 24D5C4 8022CEB4 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 24D5C8 8022CEB8 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* 24D5CC 8022CEBC 3C05800E */  lui        $a1, %hi(D_800DFD90)
/* 24D5D0 8022CEC0 8CCD0000 */  lw         $t5, 0x0($a2)
/* 24D5D4 8022CEC4 00C02025 */  or         $a0, $a2, $zero
/* 24D5D8 8022CEC8 000D7080 */  sll        $t6, $t5, 2
/* 24D5DC 8022CECC 00AE2821 */  addu       $a1, $a1, $t6
/* 24D5E0 8022CED0 0C02C838 */  jal        func_800B20E0
/* 24D5E4 8022CED4 8CA5FD90 */   lw        $a1, %lo(D_800DFD90)($a1)
/* 24D5E8 8022CED8 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 24D5EC 8022CEDC 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 24D5F0 8022CEE0 8CAF0000 */  lw         $t7, 0x0($a1)
/* 24D5F4 8022CEE4 3C09800E */  lui        $t1, %hi(D_800DFBD0)
/* 24D5F8 8022CEE8 24180002 */  addiu      $t8, $zero, 0x2
/* 24D5FC 8022CEEC 8DF90000 */  lw         $t9, 0x0($t7)
/* 24D600 8022CEF0 3C028013 */  lui        $v0, %hi(gKirbyState)
/* 24D604 8022CEF4 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
/* 24D608 8022CEF8 00194080 */  sll        $t0, $t9, 2
/* 24D60C 8022CEFC 01284821 */  addu       $t1, $t1, $t0
/* 24D610 8022CF00 8D29FBD0 */  lw         $t1, %lo(D_800DFBD0)($t1)
/* 24D614 8022CF04 3C01800F */  lui        $at, %hi(D_800E7CE0 + 0x380)
/* 24D618 8022CF08 240BFFFF */  addiu      $t3, $zero, -0x1
/* 24D61C 8022CF0C 8D2A005C */  lw         $t2, 0x5C($t1)
/* 24D620 8022CF10 3C03800E */  lui        $v1, %hi(D_800E6690)
/* 24D624 8022CF14 44800000 */  mtc1       $zero, $f0
/* 24D628 8022CF18 A1580054 */  sb         $t8, 0x54($t2)
/* 24D62C 8022CF1C 8CA60000 */  lw         $a2, 0x0($a1)
/* 24D630 8022CF20 A0400007 */  sb         $zero, 0x7($v0)
/* 24D634 8022CF24 24636690 */  addiu      $v1, $v1, %lo(D_800E6690)
/* 24D638 8022CF28 8CCC0000 */  lw         $t4, 0x0($a2)
/* 24D63C 8022CF2C 000C6880 */  sll        $t5, $t4, 2
/* 24D640 8022CF30 002D0821 */  addu       $at, $at, $t5
/* 24D644 8022CF34 AC2B8060 */  sw         $t3, %lo(D_800E7CE0 + 0x380)($at)
/* 24D648 8022CF38 8C4E00E8 */  lw         $t6, 0xE8($v0)
/* 24D64C 8022CF3C 51C00006 */  beql       $t6, $zero, .L8022CF58_ovl19
/* 24D650 8022CF40 8CD90000 */   lw        $t9, 0x0($a2)
/* 24D654 8022CF44 8C4F00E4 */  lw         $t7, 0xE4($v0)
/* 24D658 8022CF48 51E00003 */  beql       $t7, $zero, .L8022CF58_ovl19
/* 24D65C 8022CF4C 8CD90000 */   lw        $t9, 0x0($a2)
/* 24D660 8022CF50 AC400030 */  sw         $zero, 0x30($v0)
/* 24D664 8022CF54 8CD90000 */  lw         $t9, 0x0($a2)
.L8022CF58_ovl19:
/* 24D668 8022CF58 3C018023 */  lui        $at, %hi(D_8022FA30_ovl19)
/* 24D66C 8022CF5C C422FA30 */  lwc1       $f2, %lo(D_8022FA30_ovl19)($at)
/* 24D670 8022CF60 00194080 */  sll        $t0, $t9, 2
/* 24D674 8022CF64 00684821 */  addu       $t1, $v1, $t0
/* 24D678 8022CF68 E5200000 */  swc1       $f0, 0x0($t1)
/* 24D67C 8022CF6C 8CC20000 */  lw         $v0, 0x0($a2)
/* 24D680 8022CF70 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24D684 8022CF74 3C04800E */  lui        $a0, %hi(D_800E3750)
/* 24D688 8022CF78 00021080 */  sll        $v0, $v0, 2
/* 24D68C 8022CF7C 0062C021 */  addu       $t8, $v1, $v0
/* 24D690 8022CF80 C7040000 */  lwc1       $f4, 0x0($t8)
/* 24D694 8022CF84 00220821 */  addu       $at, $at, $v0
/* 24D698 8022CF88 24843750 */  addiu      $a0, $a0, %lo(D_800E3750)
/* 24D69C 8022CF8C E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* 24D6A0 8022CF90 8CCA0000 */  lw         $t2, 0x0($a2)
/* 24D6A4 8022CF94 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24D6A8 8022CF98 44804000 */  mtc1       $zero, $f8
/* 24D6AC 8022CF9C 000A6080 */  sll        $t4, $t2, 2
/* 24D6B0 8022CFA0 002C0821 */  addu       $at, $at, $t4
/* 24D6B4 8022CFA4 E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
/* 24D6B8 8022CFA8 8CCB0000 */  lw         $t3, 0x0($a2)
/* 24D6BC 8022CFAC 3C01800E */  lui        $at, %hi(D_800E3210)
/* 24D6C0 8022CFB0 000B6880 */  sll        $t5, $t3, 2
/* 24D6C4 8022CFB4 008D7021 */  addu       $t6, $a0, $t5
/* 24D6C8 8022CFB8 E5C00000 */  swc1       $f0, 0x0($t6)
/* 24D6CC 8022CFBC 8CC20000 */  lw         $v0, 0x0($a2)
/* 24D6D0 8022CFC0 00021080 */  sll        $v0, $v0, 2
/* 24D6D4 8022CFC4 00827821 */  addu       $t7, $a0, $v0
/* 24D6D8 8022CFC8 C5E60000 */  lwc1       $f6, 0x0($t7)
/* 24D6DC 8022CFCC 00220821 */  addu       $at, $at, $v0
/* 24D6E0 8022CFD0 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* 24D6E4 8022CFD4 8CD90000 */  lw         $t9, 0x0($a2)
/* 24D6E8 8022CFD8 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 24D6EC 8022CFDC 00194080 */  sll        $t0, $t9, 2
/* 24D6F0 8022CFE0 00280821 */  addu       $at, $at, $t0
/* 24D6F4 8022CFE4 E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
/* 24D6F8 8022CFE8 8CC90000 */  lw         $t1, 0x0($a2)
/* 24D6FC 8022CFEC 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 24D700 8022CFF0 0009C080 */  sll        $t8, $t1, 2
/* 24D704 8022CFF4 00380821 */  addu       $at, $at, $t8
/* 24D708 8022CFF8 0C008322 */  jal        func_80020C88
/* 24D70C 8022CFFC E4284010 */   swc1      $f8, %lo(gEntitiesAngleXArray)($at)
/* 24D710 8022D000 0C029FAD */  jal        func_800A7EB4
/* 24D714 8022D004 00000000 */   nop
/* 24D718 8022D008 3C01800D */  lui        $at, %hi(gKirbyHp)
/* 24D71C 8022D00C 44800000 */  mtc1       $zero, $f0
/* 24D720 8022D010 C42A6E50 */  lwc1       $f10, %lo(gKirbyHp)($at)
/* 24D724 8022D014 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 24D728 8022D018 460A0032 */  c.eq.s     $f0, $f10
/* 24D72C 8022D01C 00000000 */  nop
/* 24D730 8022D020 4500000F */  bc1f       .L8022D060_ovl19
/* 24D734 8022D024 00000000 */   nop
/* 24D738 8022D028 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 24D73C 8022D02C 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 24D740 8022D030 8D4C0000 */  lw         $t4, 0x0($t2)
/* 24D744 8022D034 000C5880 */  sll        $t3, $t4, 2
/* 24D748 8022D038 002B0821 */  addu       $at, $at, $t3
/* 24D74C 8022D03C C4307B20 */  lwc1       $f16, %lo(D_800E7B20)($at)
/* 24D750 8022D040 46100032 */  c.eq.s     $f0, $f16
/* 24D754 8022D044 00000000 */  nop
/* 24D758 8022D048 45010005 */  bc1t       .L8022D060_ovl19
/* 24D75C 8022D04C 00000000 */   nop
/* 24D760 8022D050 0C029D9E */  jal        play_sound
/* 24D764 8022D054 240400DC */   addiu     $a0, $zero, 0xDC
/* 24D768 8022D058 10000003 */  b          .L8022D068_ovl19
/* 24D76C 8022D05C 00000000 */   nop
.L8022D060_ovl19:
/* 24D770 8022D060 0C029D9E */  jal        play_sound
/* 24D774 8022D064 24040046 */   addiu     $a0, $zero, 0x46
.L8022D068_ovl19:
/* 24D778 8022D068 0C04768D */  jal        func_8011DA34
/* 24D77C 8022D06C 00000000 */   nop
/* 24D780 8022D070 00002025 */  or         $a0, $zero, $zero
/* 24D784 8022D074 0C029D6C */  jal        play_music
/* 24D788 8022D078 24050005 */   addiu     $a1, $zero, 0x5
/* 24D78C 8022D07C 0C05D8E6 */  jal        func_80176398_ovl3
/* 24D790 8022D080 00000000 */   nop
/* 24D794 8022D084 0C02ED26 */  jal        func_800BB498
/* 24D798 8022D088 00000000 */   nop
/* 24D79C 8022D08C 24040002 */  addiu      $a0, $zero, 0x2
/* 24D7A0 8022D090 0C02ED1A */  jal        func_800BB468
/* 24D7A4 8022D094 00002825 */   or        $a1, $zero, $zero
/* 24D7A8 8022D098 240D00A0 */  addiu      $t5, $zero, 0xA0
/* 24D7AC 8022D09C 3C01800D */  lui        $at, %hi(D_800D6B54 + 0x4)
/* 24D7B0 8022D0A0 AC2D6B58 */  sw         $t5, %lo(D_800D6B54 + 0x4)($at)
/* 24D7B4 8022D0A4 3C01800D */  lui        $at, %hi(D_800D6B54)
/* 24D7B8 8022D0A8 240E0001 */  addiu      $t6, $zero, 0x1
/* 24D7BC 8022D0AC 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 24D7C0 8022D0B0 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 24D7C4 8022D0B4 AC2E6B54 */  sw         $t6, %lo(D_800D6B54)($at)
/* 24D7C8 8022D0B8 3C01800C */  lui        $at, %hi(D_800BE4F8)
/* 24D7CC 8022D0BC 240F0006 */  addiu      $t7, $zero, 0x6
/* 24D7D0 8022D0C0 AC2FE4F8 */  sw         $t7, %lo(D_800BE4F8)($at)
/* 24D7D4 8022D0C4 8F280000 */  lw         $t0, 0x0($t9)
/* 24D7D8 8022D0C8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 24D7DC 8022D0CC 44819000 */  mtc1       $at, $f18
/* 24D7E0 8022D0D0 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 24D7E4 8022D0D4 00084880 */  sll        $t1, $t0, 2
/* 24D7E8 8022D0D8 00290821 */  addu       $at, $at, $t1
/* 24D7EC 8022D0DC C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 24D7F0 8022D0E0 3C040002 */  lui        $a0, (0x20376 >> 16)
/* 24D7F4 8022D0E4 3C050002 */  lui        $a1, (0x20377 >> 16)
/* 24D7F8 8022D0E8 46049032 */  c.eq.s     $f18, $f4
/* 24D7FC 8022D0EC 24060001 */  addiu      $a2, $zero, 0x1
/* 24D800 8022D0F0 34A50377 */  ori        $a1, $a1, (0x20377 & 0xFFFF)
/* 24D804 8022D0F4 34840376 */  ori        $a0, $a0, (0x20376 & 0xFFFF)
/* 24D808 8022D0F8 45000008 */  bc1f       .L8022D11C_ovl19
/* 24D80C 8022D0FC 00000000 */   nop
/* 24D810 8022D100 3C040002 */  lui        $a0, (0x20378 >> 16)
/* 24D814 8022D104 3C050002 */  lui        $a1, (0x20379 >> 16)
/* 24D818 8022D108 34A50379 */  ori        $a1, $a1, (0x20379 & 0xFFFF)
/* 24D81C 8022D10C 0C048C3A */  jal        func_801230E8
/* 24D820 8022D110 34840378 */   ori       $a0, $a0, (0x20378 & 0xFFFF)
/* 24D824 8022D114 10000003 */  b          .L8022D124_ovl19
/* 24D828 8022D118 00000000 */   nop
.L8022D11C_ovl19:
/* 24D82C 8022D11C 0C048C3A */  jal        func_801230E8
/* 24D830 8022D120 24060001 */   addiu     $a2, $zero, 0x1
.L8022D124_ovl19:
/* 24D834 8022D124 0C02BE85 */  jal        func_800AFA14
/* 24D838 8022D128 00000000 */   nop
/* 24D83C 8022D12C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 24D840 8022D130 27BD0018 */  addiu      $sp, $sp, 0x18
/* 24D844 8022D134 03E00008 */  jr         $ra
/* 24D848 8022D138 00000000 */   nop
