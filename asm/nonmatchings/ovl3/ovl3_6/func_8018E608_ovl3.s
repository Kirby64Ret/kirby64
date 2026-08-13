nonmatching func_8018E608_ovl3, 0xCAC

glabel func_8018E608_ovl3
    /* EF048 8018E608 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* EF04C 8018E60C AFB00020 */  sw         $s0, 0x20($sp)
    /* EF050 8018E610 3C108013 */  lui        $s0, %hi(gKirbyState)
    /* EF054 8018E614 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
    /* EF058 8018E618 8E0E00A0 */  lw         $t6, 0xA0($s0)
    /* EF05C 8018E61C AFBF0034 */  sw         $ra, 0x34($sp)
    /* EF060 8018E620 AFB40030 */  sw         $s4, 0x30($sp)
    /* EF064 8018E624 AFB3002C */  sw         $s3, 0x2C($sp)
    /* EF068 8018E628 AFB20028 */  sw         $s2, 0x28($sp)
    /* EF06C 8018E62C AFB10024 */  sw         $s1, 0x24($sp)
    /* EF070 8018E630 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* EF074 8018E634 15C00041 */  bnez       $t6, .L8018E73C_ovl3
    /* EF078 8018E638 AFA40038 */   sw        $a0, 0x38($sp)
    /* EF07C 8018E63C 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* EF080 8018E640 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* EF084 8018E644 8E420000 */  lw         $v0, 0x0($s2)
    /* EF088 8018E648 AE000030 */  sw         $zero, 0x30($s0)
    /* EF08C 8018E64C A2000007 */  sb         $zero, 0x7($s0)
    /* EF090 8018E650 8C4F0000 */  lw         $t7, 0x0($v0)
    /* EF094 8018E654 3C11800F */  lui        $s1, %hi(D_800EA360)
    /* EF098 8018E658 2631A360 */  addiu      $s1, $s1, %lo(D_800EA360)
    /* EF09C 8018E65C 000FC080 */  sll        $t8, $t7, 2
    /* EF0A0 8018E660 0238C821 */  addu       $t9, $s1, $t8
    /* EF0A4 8018E664 AF200000 */  sw         $zero, 0x0($t9)
    /* EF0A8 8018E668 8C430000 */  lw         $v1, 0x0($v0)
    /* EF0AC 8018E66C 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* EF0B0 8018E670 00031880 */  sll        $v1, $v1, 2
    /* EF0B4 8018E674 02234021 */  addu       $t0, $s1, $v1
    /* EF0B8 8018E678 8D040000 */  lw         $a0, 0x0($t0)
    /* EF0BC 8018E67C 00230821 */  addu       $at, $at, $v1
    /* EF0C0 8018E680 AC249E20 */  sw         $a0, %lo(D_800E9E20)($at)
    /* EF0C4 8018E684 8C490000 */  lw         $t1, 0x0($v0)
    /* EF0C8 8018E688 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* EF0CC 8018E68C 00095080 */  sll        $t2, $t1, 2
    /* EF0D0 8018E690 002A0821 */  addu       $at, $at, $t2
    /* EF0D4 8018E694 AC249C60 */  sw         $a0, %lo(D_800E9C60)($at)
    /* EF0D8 8018E698 A60000D0 */  sh         $zero, 0xD0($s0)
    /* EF0DC 8018E69C 0C0473D6 */  jal        func_8011CF58
    /* EF0E0 8018E6A0 A60000D2 */   sh        $zero, 0xD2($s0)
    /* EF0E4 8018E6A4 8E0C0090 */  lw         $t4, 0x90($s0)
    /* EF0E8 8018E6A8 8E4E0000 */  lw         $t6, 0x0($s2)
    /* EF0EC 8018E6AC 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* EF0F0 8018E6B0 AE0C00A0 */  sw         $t4, 0xA0($s0)
    /* EF0F4 8018E6B4 8DCF0000 */  lw         $t7, 0x0($t6)
    /* EF0F8 8018E6B8 240D0042 */  addiu      $t5, $zero, 0x42
    /* EF0FC 8018E6BC 24040036 */  addiu      $a0, $zero, 0x36
    /* EF100 8018E6C0 000FC080 */  sll        $t8, $t7, 2
    /* EF104 8018E6C4 00380821 */  addu       $at, $at, $t8
    /* EF108 8018E6C8 0C047701 */  jal        func_8011DC04
    /* EF10C 8018E6CC AC2DDFD0 */   sw        $t5, %lo(D_800DDFD0)($at)
    /* EF110 8018E6D0 0C05A4F1 */  jal        func_801693C4_ovl3
    /* EF114 8018E6D4 24040015 */   addiu     $a0, $zero, 0x15
    /* EF118 8018E6D8 3C040002 */  lui        $a0, (0x20055 >> 16)
    /* EF11C 8018E6DC 3C050002 */  lui        $a1, (0x20056 >> 16)
    /* EF120 8018E6E0 AE00003C */  sw         $zero, 0x3C($s0)
    /* EF124 8018E6E4 AE000044 */  sw         $zero, 0x44($s0)
    /* EF128 8018E6E8 34A50056 */  ori        $a1, $a1, (0x20056 & 0xFFFF)
    /* EF12C 8018E6EC 34840055 */  ori        $a0, $a0, (0x20055 & 0xFFFF)
    /* EF130 8018E6F0 0C048C3A */  jal        func_801230E8
    /* EF134 8018E6F4 24060001 */   addiu     $a2, $zero, 0x1
    /* EF138 8018E6F8 0C04828A */  jal        func_80120A28
    /* EF13C 8018E6FC 00000000 */   nop
    /* EF140 8018E700 8E480000 */  lw         $t0, 0x0($s2)
    /* EF144 8018E704 3C0B800F */  lui        $t3, %hi(D_800E8920)
    /* EF148 8018E708 24070001 */  addiu      $a3, $zero, 0x1
    /* EF14C 8018E70C 8D090000 */  lw         $t1, 0x0($t0)
    /* EF150 8018E710 240E0004 */  addiu      $t6, $zero, 0x4
    /* EF154 8018E714 00095080 */  sll        $t2, $t1, 2
    /* EF158 8018E718 016A5821 */  addu       $t3, $t3, $t2
    /* EF15C 8018E71C 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
    /* EF160 8018E720 51600005 */  beql       $t3, $zero, .L8018E738_ovl3
    /* EF164 8018E724 AE0E003C */   sw        $t6, 0x3C($s0)
    /* EF168 8018E728 AE07003C */  sw         $a3, 0x3C($s0)
    /* EF16C 8018E72C 10000003 */  b          .L8018E73C_ovl3
    /* EF170 8018E730 AE070044 */   sw        $a3, 0x44($s0)
    /* EF174 8018E734 AE0E003C */  sw         $t6, 0x3C($s0)
  .L8018E738_ovl3:
    /* EF178 8018E738 AE0E0044 */  sw         $t6, 0x44($s0)
  .L8018E73C_ovl3:
    /* EF17C 8018E73C 8E0D0044 */  lw         $t5, 0x44($s0)
    /* EF180 8018E740 3C11800F */  lui        $s1, %hi(D_800EA360)
    /* EF184 8018E744 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* EF188 8018E748 25B8FFFF */  addiu      $t8, $t5, -0x1
    /* EF18C 8018E74C 2F010008 */  sltiu      $at, $t8, 0x8
    /* EF190 8018E750 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* EF194 8018E754 2631A360 */  addiu      $s1, $s1, %lo(D_800EA360)
    /* EF198 8018E758 102002C9 */  beqz       $at, .L8018F280_ovl3
    /* EF19C 8018E75C 24070001 */   addiu     $a3, $zero, 0x1
    /* EF1A0 8018E760 0018C080 */  sll        $t8, $t8, 2
    /* EF1A4 8018E764 3C018019 */  lui        $at, %hi(jtbl_80197B70_ovl3)
    /* EF1A8 8018E768 00380821 */  addu       $at, $at, $t8
    /* EF1AC 8018E76C 8C387B70 */  lw         $t8, %lo(jtbl_80197B70_ovl3)($at)
    /* EF1B0 8018E770 03000008 */  jr         $t8
    /* EF1B4 8018E774 00000000 */   nop
  jlabel .L8018E778_ovl3
    /* EF1B8 8018E778 8E420000 */  lw         $v0, 0x0($s2)
    /* EF1BC 8018E77C 44802000 */  mtc1       $zero, $f4
    /* EF1C0 8018E780 3C05800E */  lui        $a1, %hi(D_800E6690)
    /* EF1C4 8018E784 8C590000 */  lw         $t9, 0x0($v0)
    /* EF1C8 8018E788 24A56690 */  addiu      $a1, $a1, %lo(D_800E6690)
    /* EF1CC 8018E78C 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* EF1D0 8018E790 00194080 */  sll        $t0, $t9, 2
    /* EF1D4 8018E794 00A84821 */  addu       $t1, $a1, $t0
    /* EF1D8 8018E798 E5240000 */  swc1       $f4, 0x0($t1)
    /* EF1DC 8018E79C 8C430000 */  lw         $v1, 0x0($v0)
    /* EF1E0 8018E7A0 00031880 */  sll        $v1, $v1, 2
    /* EF1E4 8018E7A4 00A35021 */  addu       $t2, $a1, $v1
    /* EF1E8 8018E7A8 C5460000 */  lwc1       $f6, 0x0($t2)
    /* EF1EC 8018E7AC 00230821 */  addu       $at, $at, $v1
    /* EF1F0 8018E7B0 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
    /* EF1F4 8018E7B4 8C4B0000 */  lw         $t3, 0x0($v0)
    /* EF1F8 8018E7B8 3C018019 */  lui        $at, %hi(D_80197B90_ovl3)
    /* EF1FC 8018E7BC C4287B90 */  lwc1       $f8, %lo(D_80197B90_ovl3)($at)
    /* EF200 8018E7C0 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EF204 8018E7C4 000B6080 */  sll        $t4, $t3, 2
    /* EF208 8018E7C8 002C0821 */  addu       $at, $at, $t4
    /* EF20C 8018E7CC E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
    /* EF210 8018E7D0 92040150 */  lbu        $a0, 0x150($s0)
    /* EF214 8018E7D4 A2000007 */  sb         $zero, 0x7($s0)
    /* EF218 8018E7D8 50800009 */  beql       $a0, $zero, .L8018E800_ovl3
    /* EF21C 8018E7DC 3C110002 */   lui       $s1, (0x2004D >> 16)
    /* EF220 8018E7E0 8C430000 */  lw         $v1, 0x0($v0)
    /* EF224 8018E7E4 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
    /* EF228 8018E7E8 00031880 */  sll        $v1, $v1, 2
    /* EF22C 8018E7EC 01C37021 */  addu       $t6, $t6, $v1
    /* EF230 8018E7F0 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
    /* EF234 8018E7F4 31CF0006 */  andi       $t7, $t6, 0x6
    /* EF238 8018E7F8 11E00013 */  beqz       $t7, .L8018E848_ovl3
    /* EF23C 8018E7FC 3C110002 */   lui       $s1, (0x2004D >> 16)
  .L8018E800_ovl3:
    /* EF240 8018E800 3631004D */  ori        $s1, $s1, (0x2004D & 0xFFFF)
    /* EF244 8018E804 3C050002 */  lui        $a1, (0x20007 >> 16)
    /* EF248 8018E808 34A50007 */  ori        $a1, $a1, (0x20007 & 0xFFFF)
    /* EF24C 8018E80C 02202025 */  or         $a0, $s1, $zero
    /* EF250 8018E810 0C02A9E3 */  jal        func_800AA78C
    /* EF254 8018E814 3C0640C0 */   lui       $a2, (0x40C00000 >> 16)
    /* EF258 8018E818 3C050002 */  lui        $a1, (0x2004E >> 16)
    /* EF25C 8018E81C 34A5004E */  ori        $a1, $a1, (0x2004E & 0xFFFF)
    /* EF260 8018E820 02202025 */  or         $a0, $s1, $zero
    /* EF264 8018E824 0C048C3A */  jal        func_801230E8
    /* EF268 8018E828 00003025 */   or        $a2, $zero, $zero
    /* EF26C 8018E82C 0C02BE85 */  jal        curObjSleepForever
    /* EF270 8018E830 00000000 */   nop
    /* EF274 8018E834 8E420000 */  lw         $v0, 0x0($s2)
    /* EF278 8018E838 92040150 */  lbu        $a0, 0x150($s0)
    /* EF27C 8018E83C 24070001 */  addiu      $a3, $zero, 0x1
    /* EF280 8018E840 8C430000 */  lw         $v1, 0x0($v0)
    /* EF284 8018E844 00031880 */  sll        $v1, $v1, 2
  .L8018E848_ovl3:
    /* EF288 8018E848 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* EF28C 8018E84C 00230821 */  addu       $at, $at, $v1
    /* EF290 8018E850 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
    /* EF294 8018E854 8C580000 */  lw         $t8, 0x0($v0)
    /* EF298 8018E858 3C01800F */  lui        $at, %hi(D_800E9720)
    /* EF29C 8018E85C 240D000F */  addiu      $t5, $zero, 0xF
    /* EF2A0 8018E860 0018C880 */  sll        $t9, $t8, 2
    /* EF2A4 8018E864 00390821 */  addu       $at, $at, $t9
    /* EF2A8 8018E868 AC2D9720 */  sw         $t5, %lo(D_800E9720)($at)
    /* EF2AC 8018E86C 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* EF2B0 8018E870 3C140002 */  lui        $s4, (0x20047 >> 16)
    /* EF2B4 8018E874 3C11800F */  lui        $s1, %hi(D_800E98E0)
    /* EF2B8 8018E878 4481A000 */  mtc1       $at, $f20
    /* EF2BC 8018E87C 263198E0 */  addiu      $s1, $s1, %lo(D_800E98E0)
    /* EF2C0 8018E880 36940047 */  ori        $s4, $s4, (0x20047 & 0xFFFF)
    /* EF2C4 8018E884 24130002 */  addiu      $s3, $zero, 0x2
  .L8018E888_ovl3:
    /* EF2C8 8018E888 16640007 */  bne        $s3, $a0, .L8018E8A8_ovl3
    /* EF2CC 8018E88C 00802825 */   or        $a1, $a0, $zero
    /* EF2D0 8018E890 8E420000 */  lw         $v0, 0x0($s2)
    /* EF2D4 8018E894 8C480000 */  lw         $t0, 0x0($v0)
    /* EF2D8 8018E898 00084880 */  sll        $t1, $t0, 2
    /* EF2DC 8018E89C 02295021 */  addu       $t2, $s1, $t1
    /* EF2E0 8018E8A0 10000006 */  b          .L8018E8BC_ovl3
    /* EF2E4 8018E8A4 AD470000 */   sw        $a3, 0x0($t2)
  .L8018E8A8_ovl3:
    /* EF2E8 8018E8A8 8E420000 */  lw         $v0, 0x0($s2)
    /* EF2EC 8018E8AC 8C4B0000 */  lw         $t3, 0x0($v0)
    /* EF2F0 8018E8B0 000B6080 */  sll        $t4, $t3, 2
    /* EF2F4 8018E8B4 022C7021 */  addu       $t6, $s1, $t4
    /* EF2F8 8018E8B8 ADC00000 */  sw         $zero, 0x0($t6)
  .L8018E8BC_ovl3:
    /* EF2FC 8018E8BC 8C430000 */  lw         $v1, 0x0($v0)
    /* EF300 8018E8C0 3C0F800F */  lui        $t7, %hi(D_800E9AA0)
    /* EF304 8018E8C4 25EF9AA0 */  addiu      $t7, $t7, %lo(D_800E9AA0)
    /* EF308 8018E8C8 00031880 */  sll        $v1, $v1, 2
    /* EF30C 8018E8CC 006F2021 */  addu       $a0, $v1, $t7
    /* EF310 8018E8D0 8C980000 */  lw         $t8, 0x0($a0)
    /* EF314 8018E8D4 02236821 */  addu       $t5, $s1, $v1
    /* EF318 8018E8D8 53000013 */  beql       $t8, $zero, .L8018E928_ovl3
    /* EF31C 8018E8DC AC870000 */   sw        $a3, 0x0($a0)
    /* EF320 8018E8E0 8DB90000 */  lw         $t9, 0x0($t5)
    /* EF324 8018E8E4 3C040002 */  lui        $a0, (0x20049 >> 16)
    /* EF328 8018E8E8 34840049 */  ori        $a0, $a0, (0x20049 & 0xFFFF)
    /* EF32C 8018E8EC 17200008 */  bnez       $t9, .L8018E910_ovl3
    /* EF330 8018E8F0 3C050002 */   lui       $a1, (0x20007 >> 16)
    /* EF334 8018E8F4 3C050002 */  lui        $a1, (0x20007 >> 16)
    /* EF338 8018E8F8 4406A000 */  mfc1       $a2, $f20
    /* EF33C 8018E8FC 34A50007 */  ori        $a1, $a1, (0x20007 & 0xFFFF)
    /* EF340 8018E900 0C02A9E3 */  jal        func_800AA78C
    /* EF344 8018E904 02802025 */   or        $a0, $s4, $zero
    /* EF348 8018E908 10000004 */  b          .L8018E91C_ovl3
    /* EF34C 8018E90C 00000000 */   nop
  .L8018E910_ovl3:
    /* EF350 8018E910 4406A000 */  mfc1       $a2, $f20
    /* EF354 8018E914 0C02A9E3 */  jal        func_800AA78C
    /* EF358 8018E918 34A50007 */   ori       $a1, $a1, (0x20007 & 0xFFFF)
  .L8018E91C_ovl3:
    /* EF35C 8018E91C 10000002 */  b          .L8018E928_ovl3
    /* EF360 8018E920 92050150 */   lbu       $a1, 0x150($s0)
    /* EF364 8018E924 AC870000 */  sw         $a3, 0x0($a0)
  .L8018E928_ovl3:
    /* EF368 8018E928 16650008 */  bne        $s3, $a1, .L8018E94C_ovl3
    /* EF36C 8018E92C 3C040002 */   lui       $a0, (0x20049 >> 16)
    /* EF370 8018E930 3C050002 */  lui        $a1, (0x20048 >> 16)
    /* EF374 8018E934 34A50048 */  ori        $a1, $a1, (0x20048 & 0xFFFF)
    /* EF378 8018E938 02802025 */  or         $a0, $s4, $zero
    /* EF37C 8018E93C 0C048C3A */  jal        func_801230E8
    /* EF380 8018E940 00003025 */   or        $a2, $zero, $zero
    /* EF384 8018E944 10000007 */  b          .L8018E964_ovl3
    /* EF388 8018E948 8E020034 */   lw        $v0, 0x34($s0)
  .L8018E94C_ovl3:
    /* EF38C 8018E94C 3C050002 */  lui        $a1, (0x2004A >> 16)
    /* EF390 8018E950 34A5004A */  ori        $a1, $a1, (0x2004A & 0xFFFF)
    /* EF394 8018E954 34840049 */  ori        $a0, $a0, (0x20049 & 0xFFFF)
    /* EF398 8018E958 0C048C3A */  jal        func_801230E8
    /* EF39C 8018E95C 00003025 */   or        $a2, $zero, $zero
    /* EF3A0 8018E960 8E020034 */  lw         $v0, 0x34($s0)
  .L8018E964_ovl3:
    /* EF3A4 8018E964 30420001 */  andi       $v0, $v0, 0x1
    /* EF3A8 8018E968 10400007 */  beqz       $v0, .L8018E988_ovl3
    /* EF3AC 8018E96C 00000000 */   nop
  .L8018E970_ovl3:
    /* EF3B0 8018E970 0C002DAF */  jal        ohSleep
    /* EF3B4 8018E974 24040001 */   addiu     $a0, $zero, 0x1
    /* EF3B8 8018E978 8E020034 */  lw         $v0, 0x34($s0)
    /* EF3BC 8018E97C 30420001 */  andi       $v0, $v0, 0x1
    /* EF3C0 8018E980 1440FFFB */  bnez       $v0, .L8018E970_ovl3
    /* EF3C4 8018E984 00000000 */   nop
  .L8018E988_ovl3:
    /* EF3C8 8018E988 10400004 */  beqz       $v0, .L8018E99C_ovl3
    /* EF3CC 8018E98C 00000000 */   nop
    /* EF3D0 8018E990 92040150 */  lbu        $a0, 0x150($s0)
    /* EF3D4 8018E994 1000FFBC */  b          .L8018E888_ovl3
    /* EF3D8 8018E998 24070001 */   addiu     $a3, $zero, 0x1
  .L8018E99C_ovl3:
    /* EF3DC 8018E99C 0C002DAF */  jal        ohSleep
    /* EF3E0 8018E9A0 24040001 */   addiu     $a0, $zero, 0x1
    /* EF3E4 8018E9A4 8E020034 */  lw         $v0, 0x34($s0)
    /* EF3E8 8018E9A8 1000FFF7 */  b          .L8018E988_ovl3
    /* EF3EC 8018E9AC 30420001 */   andi      $v0, $v0, 0x1
  jlabel .L8018E9B0_ovl3
    /* EF3F0 8018E9B0 8E480000 */  lw         $t0, 0x0($s2)
    /* EF3F4 8018E9B4 3C01800F */  lui        $at, %hi(D_800E9560)
    /* EF3F8 8018E9B8 8D090000 */  lw         $t1, 0x0($t0)
    /* EF3FC 8018E9BC 00095080 */  sll        $t2, $t1, 2
    /* EF400 8018E9C0 002A0821 */  addu       $at, $at, $t2
    /* EF404 8018E9C4 AC209560 */  sw         $zero, %lo(D_800E9560)($at)
    /* EF408 8018E9C8 920B0007 */  lbu        $t3, 0x7($s0)
    /* EF40C 8018E9CC 14EB0003 */  bne        $a3, $t3, .L8018E9DC_ovl3
    /* EF410 8018E9D0 00000000 */   nop
    /* EF414 8018E9D4 0C048AA0 */  jal        func_80122A80
    /* EF418 8018E9D8 00000000 */   nop
  .L8018E9DC_ovl3:
    /* EF41C 8018E9DC 0C04842D */  jal        func_801210B4
    /* EF420 8018E9E0 00000000 */   nop
    /* EF424 8018E9E4 24010001 */  addiu      $at, $zero, 0x1
    /* EF428 8018E9E8 14410012 */  bne        $v0, $at, .L8018EA34_ovl3
    /* EF42C 8018E9EC 3C110002 */   lui       $s1, (0x20059 >> 16)
    /* EF430 8018E9F0 8E420000 */  lw         $v0, 0x0($s2)
    /* EF434 8018E9F4 3C013E80 */  lui        $at, (0x3E800000 >> 16)
    /* EF438 8018E9F8 44815000 */  mtc1       $at, $f10
    /* EF43C 8018E9FC 8C4C0000 */  lw         $t4, 0x0($v0)
    /* EF440 8018EA00 3C05800E */  lui        $a1, %hi(D_800E6690)
    /* EF444 8018EA04 24A56690 */  addiu      $a1, $a1, %lo(D_800E6690)
    /* EF448 8018EA08 000C7080 */  sll        $t6, $t4, 2
    /* EF44C 8018EA0C 00AE7821 */  addu       $t7, $a1, $t6
    /* EF450 8018EA10 E5EA0000 */  swc1       $f10, 0x0($t7)
    /* EF454 8018EA14 8C580000 */  lw         $t8, 0x0($v0)
    /* EF458 8018EA18 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* EF45C 8018EA1C 44818000 */  mtc1       $at, $f16
    /* EF460 8018EA20 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EF464 8018EA24 00186880 */  sll        $t5, $t8, 2
    /* EF468 8018EA28 002D0821 */  addu       $at, $at, $t5
    /* EF46C 8018EA2C 10000011 */  b          .L8018EA74_ovl3
    /* EF470 8018EA30 E4306850 */   swc1      $f16, %lo(D_800E6850)($at)
  .L8018EA34_ovl3:
    /* EF474 8018EA34 8E420000 */  lw         $v0, 0x0($s2)
    /* EF478 8018EA38 3C01BE80 */  lui        $at, (0xBE800000 >> 16)
    /* EF47C 8018EA3C 44819000 */  mtc1       $at, $f18
    /* EF480 8018EA40 8C590000 */  lw         $t9, 0x0($v0)
    /* EF484 8018EA44 3C05800E */  lui        $a1, %hi(D_800E6690)
    /* EF488 8018EA48 24A56690 */  addiu      $a1, $a1, %lo(D_800E6690)
    /* EF48C 8018EA4C 00194080 */  sll        $t0, $t9, 2
    /* EF490 8018EA50 00A84821 */  addu       $t1, $a1, $t0
    /* EF494 8018EA54 E5320000 */  swc1       $f18, 0x0($t1)
    /* EF498 8018EA58 8C4A0000 */  lw         $t2, 0x0($v0)
    /* EF49C 8018EA5C 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* EF4A0 8018EA60 44812000 */  mtc1       $at, $f4
    /* EF4A4 8018EA64 3C01800E */  lui        $at, %hi(D_800E6850)
    /* EF4A8 8018EA68 000A5880 */  sll        $t3, $t2, 2
    /* EF4AC 8018EA6C 002B0821 */  addu       $at, $at, $t3
    /* EF4B0 8018EA70 E4246850 */  swc1       $f4, %lo(D_800E6850)($at)
  .L8018EA74_ovl3:
    /* EF4B4 8018EA74 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* EF4B8 8018EA78 4481A000 */  mtc1       $at, $f20
    /* EF4BC 8018EA7C 36310059 */  ori        $s1, $s1, (0x20059 & 0xFFFF)
    /* EF4C0 8018EA80 3C050002 */  lui        $a1, (0x20007 >> 16)
    /* EF4C4 8018EA84 4406A000 */  mfc1       $a2, $f20
    /* EF4C8 8018EA88 34A50007 */  ori        $a1, $a1, (0x20007 & 0xFFFF)
    /* EF4CC 8018EA8C 0C02A9E3 */  jal        func_800AA78C
    /* EF4D0 8018EA90 02202025 */   or        $a0, $s1, $zero
    /* EF4D4 8018EA94 3C050002 */  lui        $a1, (0x2005A >> 16)
    /* EF4D8 8018EA98 34A5005A */  ori        $a1, $a1, (0x2005A & 0xFFFF)
    /* EF4DC 8018EA9C 02202025 */  or         $a0, $s1, $zero
    /* EF4E0 8018EAA0 0C048C3A */  jal        func_801230E8
    /* EF4E4 8018EAA4 00003025 */   or        $a2, $zero, $zero
    /* EF4E8 8018EAA8 8E4E0000 */  lw         $t6, 0x0($s2)
    /* EF4EC 8018EAAC 3C0C8019 */  lui        $t4, %hi(func_8018F2B4_ovl3)
    /* EF4F0 8018EAB0 3C01800E */  lui        $at, %hi(D_800DF310)
    /* EF4F4 8018EAB4 8DCF0000 */  lw         $t7, 0x0($t6)
    /* EF4F8 8018EAB8 258CF2B4 */  addiu      $t4, $t4, %lo(func_8018F2B4_ovl3)
    /* EF4FC 8018EABC 000FC080 */  sll        $t8, $t7, 2
    /* EF500 8018EAC0 00380821 */  addu       $at, $at, $t8
    /* EF504 8018EAC4 0C02BE85 */  jal        curObjSleepForever
    /* EF508 8018EAC8 AC2CF310 */   sw        $t4, %lo(D_800DF310)($at)
  jlabel .L8018EACC_ovl3
    /* EF50C 8018EACC 8E420000 */  lw         $v0, 0x0($s2)
    /* EF510 8018EAD0 3C01800F */  lui        $at, %hi(D_800E8920)
    /* EF514 8018EAD4 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
    /* EF518 8018EAD8 8C4D0000 */  lw         $t5, 0x0($v0)
    /* EF51C 8018EADC 00002025 */  or         $a0, $zero, $zero
    /* EF520 8018EAE0 000DC880 */  sll        $t9, $t5, 2
    /* EF524 8018EAE4 00390821 */  addu       $at, $at, $t9
    /* EF528 8018EAE8 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* EF52C 8018EAEC 8C480000 */  lw         $t0, 0x0($v0)
    /* EF530 8018EAF0 3C01800F */  lui        $at, %hi(D_800E83E0)
    /* EF534 8018EAF4 00084880 */  sll        $t1, $t0, 2
    /* EF538 8018EAF8 00290821 */  addu       $at, $at, $t1
    /* EF53C 8018EAFC AC2083E0 */  sw         $zero, %lo(D_800E83E0)($at)
    /* EF540 8018EB00 8C4A0000 */  lw         $t2, 0x0($v0)
    /* EF544 8018EB04 24010006 */  addiu      $at, $zero, 0x6
    /* EF548 8018EB08 000A5880 */  sll        $t3, $t2, 2
    /* EF54C 8018EB0C 01CB7021 */  addu       $t6, $t6, $t3
    /* EF550 8018EB10 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
    /* EF554 8018EB14 31CF0006 */  andi       $t7, $t6, 0x6
    /* EF558 8018EB18 15E10003 */  bne        $t7, $at, .L8018EB28_ovl3
    /* EF55C 8018EB1C 00000000 */   nop
    /* EF560 8018EB20 10000001 */  b          .L8018EB28_ovl3
    /* EF564 8018EB24 24040001 */   addiu     $a0, $zero, 0x1
  .L8018EB28_ovl3:
    /* EF568 8018EB28 1080001E */  beqz       $a0, .L8018EBA4_ovl3
    /* EF56C 8018EB2C 00000000 */   nop
    /* EF570 8018EB30 0C029D9E */  jal        play_sound
    /* EF574 8018EB34 2404010B */   addiu     $a0, $zero, 0x10B
    /* EF578 8018EB38 3C014108 */  lui        $at, (0x41080000 >> 16)
    /* EF57C 8018EB3C 44810000 */  mtc1       $at, $f0
    /* EF580 8018EB40 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* EF584 8018EB44 44813000 */  mtc1       $at, $f6
    /* EF588 8018EB48 8E420000 */  lw         $v0, 0x0($s2)
    /* EF58C 8018EB4C 3C14800E */  lui        $s4, %hi(D_800E3210)
    /* EF590 8018EB50 E60600CC */  swc1       $f6, 0xCC($s0)
    /* EF594 8018EB54 8C4C0000 */  lw         $t4, 0x0($v0)
    /* EF598 8018EB58 26943210 */  addiu      $s4, $s4, %lo(D_800E3210)
    /* EF59C 8018EB5C 3C018019 */  lui        $at, %hi(D_80197B94_ovl3)
    /* EF5A0 8018EB60 000CC080 */  sll        $t8, $t4, 2
    /* EF5A4 8018EB64 02986821 */  addu       $t5, $s4, $t8
    /* EF5A8 8018EB68 E5A00000 */  swc1       $f0, 0x0($t5)
    /* EF5AC 8018EB6C 8C590000 */  lw         $t9, 0x0($v0)
    /* EF5B0 8018EB70 C4287B94 */  lwc1       $f8, %lo(D_80197B94_ovl3)($at)
    /* EF5B4 8018EB74 3C13800E */  lui        $s3, %hi(D_800E3750)
    /* EF5B8 8018EB78 26733750 */  addiu      $s3, $s3, %lo(D_800E3750)
    /* EF5BC 8018EB7C 00194080 */  sll        $t0, $t9, 2
    /* EF5C0 8018EB80 02684821 */  addu       $t1, $s3, $t0
    /* EF5C4 8018EB84 E5280000 */  swc1       $f8, 0x0($t1)
    /* EF5C8 8018EB88 8C4A0000 */  lw         $t2, 0x0($v0)
    /* EF5CC 8018EB8C 3C11800E */  lui        $s1, %hi(D_800E3C90)
    /* EF5D0 8018EB90 26313C90 */  addiu      $s1, $s1, %lo(D_800E3C90)
    /* EF5D4 8018EB94 000A5880 */  sll        $t3, $t2, 2
    /* EF5D8 8018EB98 022B7021 */  addu       $t6, $s1, $t3
    /* EF5DC 8018EB9C 10000020 */  b          .L8018EC20_ovl3
    /* EF5E0 8018EBA0 E5C00000 */   swc1      $f0, 0x0($t6)
  .L8018EBA4_ovl3:
    /* EF5E4 8018EBA4 0C029D9E */  jal        play_sound
    /* EF5E8 8018EBA8 240400F7 */   addiu     $a0, $zero, 0xF7
    /* EF5EC 8018EBAC 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* EF5F0 8018EBB0 44815000 */  mtc1       $at, $f10
    /* EF5F4 8018EBB4 3C014188 */  lui        $at, (0x41880000 >> 16)
    /* EF5F8 8018EBB8 44816000 */  mtc1       $at, $f12
    /* EF5FC 8018EBBC 0C048C51 */  jal        func_80123144
    /* EF600 8018EBC0 E60A00CC */   swc1      $f10, 0xCC($s0)
    /* EF604 8018EBC4 8E420000 */  lw         $v0, 0x0($s2)
    /* EF608 8018EBC8 3C14800E */  lui        $s4, %hi(D_800E3210)
    /* EF60C 8018EBCC 26943210 */  addiu      $s4, $s4, %lo(D_800E3210)
    /* EF610 8018EBD0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* EF614 8018EBD4 3C018019 */  lui        $at, %hi(D_80197B98_ovl3)
    /* EF618 8018EBD8 3C13800E */  lui        $s3, %hi(D_800E3750)
    /* EF61C 8018EBDC 000F6080 */  sll        $t4, $t7, 2
    /* EF620 8018EBE0 028CC021 */  addu       $t8, $s4, $t4
    /* EF624 8018EBE4 E7000000 */  swc1       $f0, 0x0($t8)
    /* EF628 8018EBE8 8C4D0000 */  lw         $t5, 0x0($v0)
    /* EF62C 8018EBEC C4307B98 */  lwc1       $f16, %lo(D_80197B98_ovl3)($at)
    /* EF630 8018EBF0 26733750 */  addiu      $s3, $s3, %lo(D_800E3750)
    /* EF634 8018EBF4 000DC880 */  sll        $t9, $t5, 2
    /* EF638 8018EBF8 02794021 */  addu       $t0, $s3, $t9
    /* EF63C 8018EBFC E5100000 */  swc1       $f16, 0x0($t0)
    /* EF640 8018EC00 8C490000 */  lw         $t1, 0x0($v0)
    /* EF644 8018EC04 3C014180 */  lui        $at, (0x41800000 >> 16)
    /* EF648 8018EC08 44819000 */  mtc1       $at, $f18
    /* EF64C 8018EC0C 3C11800E */  lui        $s1, %hi(D_800E3C90)
    /* EF650 8018EC10 26313C90 */  addiu      $s1, $s1, %lo(D_800E3C90)
    /* EF654 8018EC14 00095080 */  sll        $t2, $t1, 2
    /* EF658 8018EC18 022A5821 */  addu       $t3, $s1, $t2
    /* EF65C 8018EC1C E5720000 */  swc1       $f18, 0x0($t3)
  .L8018EC20_ovl3:
    /* EF660 8018EC20 3C040002 */  lui        $a0, (0x2004F >> 16)
    /* EF664 8018EC24 3C050002 */  lui        $a1, (0x20050 >> 16)
    /* EF668 8018EC28 34A50050 */  ori        $a1, $a1, (0x20050 & 0xFFFF)
    /* EF66C 8018EC2C 3484004F */  ori        $a0, $a0, (0x2004F & 0xFFFF)
    /* EF670 8018EC30 0C048C3A */  jal        func_801230E8
    /* EF674 8018EC34 00003025 */   or        $a2, $zero, $zero
    /* EF678 8018EC38 8E4E0000 */  lw         $t6, 0x0($s2)
    /* EF67C 8018EC3C C60400CC */  lwc1       $f4, 0xCC($s0)
    /* EF680 8018EC40 8DCF0000 */  lw         $t7, 0x0($t6)
    /* EF684 8018EC44 000F6080 */  sll        $t4, $t7, 2
    /* EF688 8018EC48 028CC021 */  addu       $t8, $s4, $t4
    /* EF68C 8018EC4C C7060000 */  lwc1       $f6, 0x0($t8)
    /* EF690 8018EC50 4606203C */  c.lt.s     $f4, $f6
    /* EF694 8018EC54 00000000 */  nop
    /* EF698 8018EC58 4502000E */  bc1fl      .L8018EC94_ovl3
    /* EF69C 8018EC5C 960A00D2 */   lhu       $t2, 0xD2($s0)
  .L8018EC60_ovl3:
    /* EF6A0 8018EC60 0C002DAF */  jal        ohSleep
    /* EF6A4 8018EC64 24040001 */   addiu     $a0, $zero, 0x1
    /* EF6A8 8018EC68 8E4D0000 */  lw         $t5, 0x0($s2)
    /* EF6AC 8018EC6C C60800CC */  lwc1       $f8, 0xCC($s0)
    /* EF6B0 8018EC70 8DB90000 */  lw         $t9, 0x0($t5)
    /* EF6B4 8018EC74 00194080 */  sll        $t0, $t9, 2
    /* EF6B8 8018EC78 02884821 */  addu       $t1, $s4, $t0
    /* EF6BC 8018EC7C C52A0000 */  lwc1       $f10, 0x0($t1)
    /* EF6C0 8018EC80 460A403C */  c.lt.s     $f8, $f10
    /* EF6C4 8018EC84 00000000 */  nop
    /* EF6C8 8018EC88 4501FFF5 */  bc1t       .L8018EC60_ovl3
    /* EF6CC 8018EC8C 00000000 */   nop
    /* EF6D0 8018EC90 960A00D2 */  lhu        $t2, 0xD2($s0)
  .L8018EC94_ovl3:
    /* EF6D4 8018EC94 3C040002 */  lui        $a0, (0x20051 >> 16)
    /* EF6D8 8018EC98 3C050002 */  lui        $a1, (0x20052 >> 16)
    /* EF6DC 8018EC9C 254B0001 */  addiu      $t3, $t2, 0x1
    /* EF6E0 8018ECA0 A60B00D2 */  sh         $t3, 0xD2($s0)
    /* EF6E4 8018ECA4 34A50052 */  ori        $a1, $a1, (0x20052 & 0xFFFF)
    /* EF6E8 8018ECA8 34840051 */  ori        $a0, $a0, (0x20051 & 0xFFFF)
    /* EF6EC 8018ECAC 0C048C3A */  jal        func_801230E8
    /* EF6F0 8018ECB0 00003025 */   or        $a2, $zero, $zero
    /* EF6F4 8018ECB4 240F0004 */  addiu      $t7, $zero, 0x4
    /* EF6F8 8018ECB8 A60000D2 */  sh         $zero, 0xD2($s0)
    /* EF6FC 8018ECBC A60000D0 */  sh         $zero, 0xD0($s0)
    /* EF700 8018ECC0 AE0F003C */  sw         $t7, 0x3C($s0)
    /* EF704 8018ECC4 AE0F0044 */  sw         $t7, 0x44($s0)
  jlabel .L8018ECC8_ovl3
    /* EF708 8018ECC8 8E420000 */  lw         $v0, 0x0($s2)
    /* EF70C 8018ECCC 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* EF710 8018ECD0 4481A000 */  mtc1       $at, $f20
    /* EF714 8018ECD4 8C580000 */  lw         $t8, 0x0($v0)
    /* EF718 8018ECD8 3C01800F */  lui        $at, %hi(D_800E8920)
    /* EF71C 8018ECDC 3C19800F */  lui        $t9, %hi(D_800E8AE0)
    /* EF720 8018ECE0 00186880 */  sll        $t5, $t8, 2
    /* EF724 8018ECE4 002D0821 */  addu       $at, $at, $t5
    /* EF728 8018ECE8 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* EF72C 8018ECEC 8C430000 */  lw         $v1, 0x0($v0)
    /* EF730 8018ECF0 3C11800E */  lui        $s1, %hi(D_800E3C90)
    /* EF734 8018ECF4 3C13800E */  lui        $s3, %hi(D_800E3750)
    /* EF738 8018ECF8 00031880 */  sll        $v1, $v1, 2
    /* EF73C 8018ECFC 0323C821 */  addu       $t9, $t9, $v1
    /* EF740 8018ED00 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
    /* EF744 8018ED04 26733750 */  addiu      $s3, $s3, %lo(D_800E3750)
    /* EF748 8018ED08 26313C90 */  addiu      $s1, $s1, %lo(D_800E3C90)
    /* EF74C 8018ED0C 33280006 */  andi       $t0, $t9, 0x6
    /* EF750 8018ED10 1100000C */  beqz       $t0, .L8018ED44_ovl3
    /* EF754 8018ED14 3C040002 */   lui       $a0, (0x2004B >> 16)
    /* EF758 8018ED18 3C018019 */  lui        $at, %hi(D_80197B9C_ovl3)
    /* EF75C 8018ED1C C4307B9C */  lwc1       $f16, %lo(D_80197B9C_ovl3)($at)
    /* EF760 8018ED20 02634821 */  addu       $t1, $s3, $v1
    /* EF764 8018ED24 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* EF768 8018ED28 E5300000 */  swc1       $f16, 0x0($t1)
    /* EF76C 8018ED2C 8C4A0000 */  lw         $t2, 0x0($v0)
    /* EF770 8018ED30 44819000 */  mtc1       $at, $f18
    /* EF774 8018ED34 000A5880 */  sll        $t3, $t2, 2
    /* EF778 8018ED38 022B7021 */  addu       $t6, $s1, $t3
    /* EF77C 8018ED3C 1000000B */  b          .L8018ED6C_ovl3
    /* EF780 8018ED40 E5D20000 */   swc1      $f18, 0x0($t6)
  .L8018ED44_ovl3:
    /* EF784 8018ED44 3C018019 */  lui        $at, %hi(D_80197BA0_ovl3)
    /* EF788 8018ED48 C4247BA0 */  lwc1       $f4, %lo(D_80197BA0_ovl3)($at)
    /* EF78C 8018ED4C 02637821 */  addu       $t7, $s3, $v1
    /* EF790 8018ED50 3C014180 */  lui        $at, (0x41800000 >> 16)
    /* EF794 8018ED54 E5E40000 */  swc1       $f4, 0x0($t7)
    /* EF798 8018ED58 8C4C0000 */  lw         $t4, 0x0($v0)
    /* EF79C 8018ED5C 44813000 */  mtc1       $at, $f6
    /* EF7A0 8018ED60 000CC080 */  sll        $t8, $t4, 2
    /* EF7A4 8018ED64 02386821 */  addu       $t5, $s1, $t8
    /* EF7A8 8018ED68 E5A60000 */  swc1       $f6, 0x0($t5)
  .L8018ED6C_ovl3:
    /* EF7AC 8018ED6C 3C050002 */  lui        $a1, (0x20007 >> 16)
    /* EF7B0 8018ED70 4406A000 */  mfc1       $a2, $f20
    /* EF7B4 8018ED74 34A50007 */  ori        $a1, $a1, (0x20007 & 0xFFFF)
    /* EF7B8 8018ED78 0C02A9E3 */  jal        func_800AA78C
    /* EF7BC 8018ED7C 3484004B */   ori       $a0, $a0, (0x2004B & 0xFFFF)
    /* EF7C0 8018ED80 3C040002 */  lui        $a0, (0x2004B >> 16)
    /* EF7C4 8018ED84 3C050002 */  lui        $a1, (0x2004C >> 16)
    /* EF7C8 8018ED88 34A5004C */  ori        $a1, $a1, (0x2004C & 0xFFFF)
    /* EF7CC 8018ED8C 3484004B */  ori        $a0, $a0, (0x2004B & 0xFFFF)
    /* EF7D0 8018ED90 0C048C3A */  jal        func_801230E8
    /* EF7D4 8018ED94 00003025 */   or        $a2, $zero, $zero
    /* EF7D8 8018ED98 0C02BE85 */  jal        curObjSleepForever
    /* EF7DC 8018ED9C 00000000 */   nop
  jlabel .L8018EDA0_ovl3
    /* EF7E0 8018EDA0 3C040002 */  lui        $a0, (0x20053 >> 16)
    /* EF7E4 8018EDA4 3C050002 */  lui        $a1, (0x20054 >> 16)
    /* EF7E8 8018EDA8 34A50054 */  ori        $a1, $a1, (0x20054 & 0xFFFF)
    /* EF7EC 8018EDAC 34840053 */  ori        $a0, $a0, (0x20053 & 0xFFFF)
    /* EF7F0 8018EDB0 0C048C3A */  jal        func_801230E8
    /* EF7F4 8018EDB4 00003025 */   or        $a2, $zero, $zero
    /* EF7F8 8018EDB8 0C02BE85 */  jal        curObjSleepForever
    /* EF7FC 8018EDBC 00000000 */   nop
  jlabel .L8018EDC0_ovl3
    /* EF800 8018EDC0 8E420000 */  lw         $v0, 0x0($s2)
    /* EF804 8018EDC4 3C01800F */  lui        $at, %hi(D_800E9560)
    /* EF808 8018EDC8 3C09800F */  lui        $t1, %hi(D_800E9560)
    /* EF80C 8018EDCC 8C590000 */  lw         $t9, 0x0($v0)
    /* EF810 8018EDD0 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
    /* EF814 8018EDD4 3C11800E */  lui        $s1, %hi(D_800E3C90)
    /* EF818 8018EDD8 00194080 */  sll        $t0, $t9, 2
    /* EF81C 8018EDDC 00280821 */  addu       $at, $at, $t0
    /* EF820 8018EDE0 AC209560 */  sw         $zero, %lo(D_800E9560)($at)
    /* EF824 8018EDE4 8C430000 */  lw         $v1, 0x0($v0)
    /* EF828 8018EDE8 3C01800F */  lui        $at, %hi(D_800E93A0)
    /* EF82C 8018EDEC 3C13800E */  lui        $s3, %hi(D_800E3750)
    /* EF830 8018EDF0 00031880 */  sll        $v1, $v1, 2
    /* EF834 8018EDF4 01234821 */  addu       $t1, $t1, $v1
    /* EF838 8018EDF8 8D299560 */  lw         $t1, %lo(D_800E9560)($t1)
    /* EF83C 8018EDFC 00230821 */  addu       $at, $at, $v1
    /* EF840 8018EE00 3C14800E */  lui        $s4, %hi(D_800E3210)
    /* EF844 8018EE04 AC2993A0 */  sw         $t1, %lo(D_800E93A0)($at)
    /* EF848 8018EE08 A2000007 */  sb         $zero, 0x7($s0)
    /* EF84C 8018EE0C 8C4A0000 */  lw         $t2, 0x0($v0)
    /* EF850 8018EE10 3C01800F */  lui        $at, %hi(D_800E8920)
    /* EF854 8018EE14 26943210 */  addiu      $s4, $s4, %lo(D_800E3210)
    /* EF858 8018EE18 000A5880 */  sll        $t3, $t2, 2
    /* EF85C 8018EE1C 002B0821 */  addu       $at, $at, $t3
    /* EF860 8018EE20 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* EF864 8018EE24 8C430000 */  lw         $v1, 0x0($v0)
    /* EF868 8018EE28 26733750 */  addiu      $s3, $s3, %lo(D_800E3750)
    /* EF86C 8018EE2C 26313C90 */  addiu      $s1, $s1, %lo(D_800E3C90)
    /* EF870 8018EE30 00031880 */  sll        $v1, $v1, 2
    /* EF874 8018EE34 01C37021 */  addu       $t6, $t6, $v1
    /* EF878 8018EE38 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
    /* EF87C 8018EE3C 3C0A800F */  lui        $t2, %hi(D_800E9E20)
    /* EF880 8018EE40 31CF0080 */  andi       $t7, $t6, 0x80
    /* EF884 8018EE44 11E0001D */  beqz       $t7, .L8018EEBC_ovl3
    /* EF888 8018EE48 02832021 */   addu      $a0, $s4, $v1
    /* EF88C 8018EE4C C4800000 */  lwc1       $f0, 0x0($a0)
    /* EF890 8018EE50 44804000 */  mtc1       $zero, $f8
    /* EF894 8018EE54 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* EF898 8018EE58 4608003C */  c.lt.s     $f0, $f8
    /* EF89C 8018EE5C 00000000 */  nop
    /* EF8A0 8018EE60 45020017 */  bc1fl      .L8018EEC0_ovl3
    /* EF8A4 8018EE64 01435021 */   addu      $t2, $t2, $v1
    /* EF8A8 8018EE68 44811000 */  mtc1       $at, $f2
    /* EF8AC 8018EE6C 00000000 */  nop
    /* EF8B0 8018EE70 4602003C */  c.lt.s     $f0, $f2
    /* EF8B4 8018EE74 00000000 */  nop
    /* EF8B8 8018EE78 45020011 */  bc1fl      .L8018EEC0_ovl3
    /* EF8BC 8018EE7C 01435021 */   addu      $t2, $t2, $v1
    /* EF8C0 8018EE80 E4820000 */  swc1       $f2, 0x0($a0)
    /* EF8C4 8018EE84 8C4C0000 */  lw         $t4, 0x0($v0)
    /* EF8C8 8018EE88 3C018019 */  lui        $at, %hi(D_80197BA4_ovl3)
    /* EF8CC 8018EE8C C42A7BA4 */  lwc1       $f10, %lo(D_80197BA4_ovl3)($at)
    /* EF8D0 8018EE90 000CC080 */  sll        $t8, $t4, 2
    /* EF8D4 8018EE94 02786821 */  addu       $t5, $s3, $t8
    /* EF8D8 8018EE98 E5AA0000 */  swc1       $f10, 0x0($t5)
    /* EF8DC 8018EE9C 8C590000 */  lw         $t9, 0x0($v0)
    /* EF8E0 8018EEA0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* EF8E4 8018EEA4 44818000 */  mtc1       $at, $f16
    /* EF8E8 8018EEA8 00194080 */  sll        $t0, $t9, 2
    /* EF8EC 8018EEAC 02284821 */  addu       $t1, $s1, $t0
    /* EF8F0 8018EEB0 E5300000 */  swc1       $f16, 0x0($t1)
    /* EF8F4 8018EEB4 8C430000 */  lw         $v1, 0x0($v0)
    /* EF8F8 8018EEB8 00031880 */  sll        $v1, $v1, 2
  .L8018EEBC_ovl3:
    /* EF8FC 8018EEBC 01435021 */  addu       $t2, $t2, $v1
  .L8018EEC0_ovl3:
    /* EF900 8018EEC0 8D4A9E20 */  lw         $t2, %lo(D_800E9E20)($t2)
    /* EF904 8018EEC4 11400010 */  beqz       $t2, .L8018EF08_ovl3
    /* EF908 8018EEC8 3C0140C0 */   lui       $at, (0x40C00000 >> 16)
    /* EF90C 8018EECC 44819000 */  mtc1       $at, $f18
    /* EF910 8018EED0 02835821 */  addu       $t3, $s4, $v1
    /* EF914 8018EED4 3C018019 */  lui        $at, %hi(D_80197BA8_ovl3)
    /* EF918 8018EED8 E5720000 */  swc1       $f18, 0x0($t3)
    /* EF91C 8018EEDC 8C4E0000 */  lw         $t6, 0x0($v0)
    /* EF920 8018EEE0 C4247BA8 */  lwc1       $f4, %lo(D_80197BA8_ovl3)($at)
    /* EF924 8018EEE4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* EF928 8018EEE8 000E7880 */  sll        $t7, $t6, 2
    /* EF92C 8018EEEC 026F6021 */  addu       $t4, $s3, $t7
    /* EF930 8018EEF0 E5840000 */  swc1       $f4, 0x0($t4)
    /* EF934 8018EEF4 8C580000 */  lw         $t8, 0x0($v0)
    /* EF938 8018EEF8 44813000 */  mtc1       $at, $f6
    /* EF93C 8018EEFC 00186880 */  sll        $t5, $t8, 2
    /* EF940 8018EF00 022DC821 */  addu       $t9, $s1, $t5
    /* EF944 8018EF04 E7260000 */  swc1       $f6, 0x0($t9)
  .L8018EF08_ovl3:
    /* EF948 8018EF08 0C029D9E */  jal        play_sound
    /* EF94C 8018EF0C 2404010B */   addiu     $a0, $zero, 0x10B
    /* EF950 8018EF10 3C100002 */  lui        $s0, (0x20057 >> 16)
    /* EF954 8018EF14 36100057 */  ori        $s0, $s0, (0x20057 & 0xFFFF)
    /* EF958 8018EF18 3C050002 */  lui        $a1, (0x20007 >> 16)
    /* EF95C 8018EF1C 34A50007 */  ori        $a1, $a1, (0x20007 & 0xFFFF)
    /* EF960 8018EF20 02002025 */  or         $a0, $s0, $zero
    /* EF964 8018EF24 0C02A9E3 */  jal        func_800AA78C
    /* EF968 8018EF28 3C0640C0 */   lui       $a2, (0x40C00000 >> 16)
    /* EF96C 8018EF2C 3C050002 */  lui        $a1, (0x20058 >> 16)
    /* EF970 8018EF30 34A50058 */  ori        $a1, $a1, (0x20058 & 0xFFFF)
    /* EF974 8018EF34 02002025 */  or         $a0, $s0, $zero
    /* EF978 8018EF38 0C048C3A */  jal        func_801230E8
    /* EF97C 8018EF3C 00003025 */   or        $a2, $zero, $zero
    /* EF980 8018EF40 8E490000 */  lw         $t1, 0x0($s2)
    /* EF984 8018EF44 3C088012 */  lui        $t0, %hi(func_80122CA0)
    /* EF988 8018EF48 3C01800E */  lui        $at, %hi(D_800DF310)
    /* EF98C 8018EF4C 8D2A0000 */  lw         $t2, 0x0($t1)
    /* EF990 8018EF50 25082CA0 */  addiu      $t0, $t0, %lo(func_80122CA0)
    /* EF994 8018EF54 3C10800D */  lui        $s0, %hi(gKirbyController)
    /* EF998 8018EF58 000A5880 */  sll        $t3, $t2, 2
    /* EF99C 8018EF5C 002B0821 */  addu       $at, $at, $t3
    /* EF9A0 8018EF60 AC28F310 */  sw         $t0, %lo(D_800DF310)($at)
    /* EF9A4 8018EF64 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* EF9A8 8018EF68 4481A000 */  mtc1       $at, $f20
    /* EF9AC 8018EF6C 26106FE8 */  addiu      $s0, $s0, %lo(gKirbyController)
    /* EF9B0 8018EF70 960E0002 */  lhu        $t6, 0x2($s0)
  .L8018EF74_ovl3:
    /* EF9B4 8018EF74 31CF8000 */  andi       $t7, $t6, 0x8000
    /* EF9B8 8018EF78 51E00027 */  beql       $t7, $zero, .L8018F018_ovl3
    /* EF9BC 8018EF7C 8E590000 */   lw        $t9, 0x0($s2)
    /* EF9C0 8018EF80 8E580000 */  lw         $t8, 0x0($s2)
    /* EF9C4 8018EF84 3C01800F */  lui        $at, %hi(D_800E93A0)
    /* EF9C8 8018EF88 240C000F */  addiu      $t4, $zero, 0xF
    /* EF9CC 8018EF8C 8F0D0000 */  lw         $t5, 0x0($t8)
    /* EF9D0 8018EF90 2404010B */  addiu      $a0, $zero, 0x10B
    /* EF9D4 8018EF94 000DC880 */  sll        $t9, $t5, 2
    /* EF9D8 8018EF98 00390821 */  addu       $at, $at, $t9
    /* EF9DC 8018EF9C 0C029D9E */  jal        play_sound
    /* EF9E0 8018EFA0 AC2C93A0 */   sw        $t4, %lo(D_800E93A0)($at)
    /* EF9E4 8018EFA4 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* EF9E8 8018EFA8 44816000 */  mtc1       $at, $f12
    /* EF9EC 8018EFAC 0C02BB30 */  jal        func_800AECC0
    /* EF9F0 8018EFB0 00000000 */   nop
    /* EF9F4 8018EFB4 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* EF9F8 8018EFB8 44816000 */  mtc1       $at, $f12
    /* EF9FC 8018EFBC 0C02BB48 */  jal        func_800AED20
    /* EFA00 8018EFC0 00000000 */   nop
    /* EFA04 8018EFC4 8E420000 */  lw         $v0, 0x0($s2)
    /* EFA08 8018EFC8 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* EFA0C 8018EFCC 44814000 */  mtc1       $at, $f8
    /* EFA10 8018EFD0 8C490000 */  lw         $t1, 0x0($v0)
    /* EFA14 8018EFD4 3C018019 */  lui        $at, %hi(D_80197BAC_ovl3)
    /* EFA18 8018EFD8 00095080 */  sll        $t2, $t1, 2
    /* EFA1C 8018EFDC 028A4021 */  addu       $t0, $s4, $t2
    /* EFA20 8018EFE0 E5080000 */  swc1       $f8, 0x0($t0)
    /* EFA24 8018EFE4 8C4B0000 */  lw         $t3, 0x0($v0)
    /* EFA28 8018EFE8 C42A7BAC */  lwc1       $f10, %lo(D_80197BAC_ovl3)($at)
    /* EFA2C 8018EFEC 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* EFA30 8018EFF0 000B7080 */  sll        $t6, $t3, 2
    /* EFA34 8018EFF4 026E7821 */  addu       $t7, $s3, $t6
    /* EFA38 8018EFF8 E5EA0000 */  swc1       $f10, 0x0($t7)
    /* EFA3C 8018EFFC 8C580000 */  lw         $t8, 0x0($v0)
    /* EFA40 8018F000 44818000 */  mtc1       $at, $f16
    /* EFA44 8018F004 00186880 */  sll        $t5, $t8, 2
    /* EFA48 8018F008 022D6021 */  addu       $t4, $s1, $t5
    /* EFA4C 8018F00C 10000062 */  b          .L8018F198_ovl3
    /* EFA50 8018F010 E5900000 */   swc1      $f16, 0x0($t4)
    /* EFA54 8018F014 8E590000 */  lw         $t9, 0x0($s2)
  .L8018F018_ovl3:
    /* EFA58 8018F018 3C08800F */  lui        $t0, %hi(D_800E93A0)
    /* EFA5C 8018F01C 8F290000 */  lw         $t1, 0x0($t9)
    /* EFA60 8018F020 00095080 */  sll        $t2, $t1, 2
    /* EFA64 8018F024 010A4021 */  addu       $t0, $t0, $t2
    /* EFA68 8018F028 8D0893A0 */  lw         $t0, %lo(D_800E93A0)($t0)
    /* EFA6C 8018F02C 1500005A */  bnez       $t0, .L8018F198_ovl3
    /* EFA70 8018F030 00000000 */   nop
    /* EFA74 8018F034 96020000 */  lhu        $v0, 0x0($s0)
    /* EFA78 8018F038 304B0400 */  andi       $t3, $v0, 0x400
    /* EFA7C 8018F03C 11600020 */  beqz       $t3, .L8018F0C0_ovl3
    /* EFA80 8018F040 30480800 */   andi      $t0, $v0, 0x800
    /* EFA84 8018F044 0C02BB30 */  jal        func_800AECC0
    /* EFA88 8018F048 4600A306 */   mov.s     $f12, $f20
    /* EFA8C 8018F04C 0C02BB48 */  jal        func_800AED20
    /* EFA90 8018F050 4600A306 */   mov.s     $f12, $f20
    /* EFA94 8018F054 8E420000 */  lw         $v0, 0x0($s2)
    /* EFA98 8018F058 3C014020 */  lui        $at, (0x40200000 >> 16)
    /* EFA9C 8018F05C 44819000 */  mtc1       $at, $f18
    /* EFAA0 8018F060 8C430000 */  lw         $v1, 0x0($v0)
    /* EFAA4 8018F064 3C01C020 */  lui        $at, (0xC0200000 >> 16)
    /* EFAA8 8018F068 00031880 */  sll        $v1, $v1, 2
    /* EFAAC 8018F06C 02237021 */  addu       $t6, $s1, $v1
    /* EFAB0 8018F070 C5C40000 */  lwc1       $f4, 0x0($t6)
    /* EFAB4 8018F074 46049032 */  c.eq.s     $f18, $f4
    /* EFAB8 8018F078 00000000 */  nop
    /* EFABC 8018F07C 45010046 */  bc1t       .L8018F198_ovl3
    /* EFAC0 8018F080 00000000 */   nop
    /* EFAC4 8018F084 44813000 */  mtc1       $at, $f6
    /* EFAC8 8018F088 02837821 */  addu       $t7, $s4, $v1
    /* EFACC 8018F08C 44804000 */  mtc1       $zero, $f8
    /* EFAD0 8018F090 E5E60000 */  swc1       $f6, 0x0($t7)
    /* EFAD4 8018F094 8C580000 */  lw         $t8, 0x0($v0)
    /* EFAD8 8018F098 3C014020 */  lui        $at, (0x40200000 >> 16)
    /* EFADC 8018F09C 44815000 */  mtc1       $at, $f10
    /* EFAE0 8018F0A0 00186880 */  sll        $t5, $t8, 2
    /* EFAE4 8018F0A4 026D6021 */  addu       $t4, $s3, $t5
    /* EFAE8 8018F0A8 E5880000 */  swc1       $f8, 0x0($t4)
    /* EFAEC 8018F0AC 8C590000 */  lw         $t9, 0x0($v0)
    /* EFAF0 8018F0B0 00194880 */  sll        $t1, $t9, 2
    /* EFAF4 8018F0B4 02295021 */  addu       $t2, $s1, $t1
    /* EFAF8 8018F0B8 10000037 */  b          .L8018F198_ovl3
    /* EFAFC 8018F0BC E54A0000 */   swc1      $f10, 0x0($t2)
  .L8018F0C0_ovl3:
    /* EFB00 8018F0C0 11000021 */  beqz       $t0, .L8018F148_ovl3
    /* EFB04 8018F0C4 3C013F80 */   lui       $at, (0x3F800000 >> 16)
    /* EFB08 8018F0C8 0C02BB30 */  jal        func_800AECC0
    /* EFB0C 8018F0CC 4600A306 */   mov.s     $f12, $f20
    /* EFB10 8018F0D0 0C02BB48 */  jal        func_800AED20
    /* EFB14 8018F0D4 4600A306 */   mov.s     $f12, $f20
    /* EFB18 8018F0D8 8E420000 */  lw         $v0, 0x0($s2)
    /* EFB1C 8018F0DC 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
    /* EFB20 8018F0E0 44810000 */  mtc1       $at, $f0
    /* EFB24 8018F0E4 8C4B0000 */  lw         $t3, 0x0($v0)
    /* EFB28 8018F0E8 3C01800F */  lui        $at, %hi(D_800E8920)
    /* EFB2C 8018F0EC 000B7080 */  sll        $t6, $t3, 2
    /* EFB30 8018F0F0 002E0821 */  addu       $at, $at, $t6
    /* EFB34 8018F0F4 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* EFB38 8018F0F8 8C430000 */  lw         $v1, 0x0($v0)
    /* EFB3C 8018F0FC 00031880 */  sll        $v1, $v1, 2
    /* EFB40 8018F100 02237821 */  addu       $t7, $s1, $v1
    /* EFB44 8018F104 C5F00000 */  lwc1       $f16, 0x0($t7)
    /* EFB48 8018F108 0283C021 */  addu       $t8, $s4, $v1
    /* EFB4C 8018F10C 46100032 */  c.eq.s     $f0, $f16
    /* EFB50 8018F110 00000000 */  nop
    /* EFB54 8018F114 45010020 */  bc1t       .L8018F198_ovl3
    /* EFB58 8018F118 00000000 */   nop
    /* EFB5C 8018F11C E7000000 */  swc1       $f0, 0x0($t8)
    /* EFB60 8018F120 8C4D0000 */  lw         $t5, 0x0($v0)
    /* EFB64 8018F124 44809000 */  mtc1       $zero, $f18
    /* EFB68 8018F128 000D6080 */  sll        $t4, $t5, 2
    /* EFB6C 8018F12C 026CC821 */  addu       $t9, $s3, $t4
    /* EFB70 8018F130 E7320000 */  swc1       $f18, 0x0($t9)
    /* EFB74 8018F134 8C490000 */  lw         $t1, 0x0($v0)
    /* EFB78 8018F138 00095080 */  sll        $t2, $t1, 2
    /* EFB7C 8018F13C 022A4021 */  addu       $t0, $s1, $t2
    /* EFB80 8018F140 10000015 */  b          .L8018F198_ovl3
    /* EFB84 8018F144 E5000000 */   swc1      $f0, 0x0($t0)
  .L8018F148_ovl3:
    /* EFB88 8018F148 44816000 */  mtc1       $at, $f12
    /* EFB8C 8018F14C 0C02BB30 */  jal        func_800AECC0
    /* EFB90 8018F150 00000000 */   nop
    /* EFB94 8018F154 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* EFB98 8018F158 44816000 */  mtc1       $at, $f12
    /* EFB9C 8018F15C 0C02BB48 */  jal        func_800AED20
    /* EFBA0 8018F160 00000000 */   nop
    /* EFBA4 8018F164 8E420000 */  lw         $v0, 0x0($s2)
    /* EFBA8 8018F168 3C018019 */  lui        $at, %hi(D_80197BB0_ovl3)
    /* EFBAC 8018F16C C4247BB0 */  lwc1       $f4, %lo(D_80197BB0_ovl3)($at)
    /* EFBB0 8018F170 8C4B0000 */  lw         $t3, 0x0($v0)
    /* EFBB4 8018F174 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* EFBB8 8018F178 44813000 */  mtc1       $at, $f6
    /* EFBBC 8018F17C 000B7080 */  sll        $t6, $t3, 2
    /* EFBC0 8018F180 026E7821 */  addu       $t7, $s3, $t6
    /* EFBC4 8018F184 E5E40000 */  swc1       $f4, 0x0($t7)
    /* EFBC8 8018F188 8C580000 */  lw         $t8, 0x0($v0)
    /* EFBCC 8018F18C 00186880 */  sll        $t5, $t8, 2
    /* EFBD0 8018F190 022D6021 */  addu       $t4, $s1, $t5
    /* EFBD4 8018F194 E5860000 */  swc1       $f6, 0x0($t4)
  .L8018F198_ovl3:
    /* EFBD8 8018F198 0C002DAF */  jal        ohSleep
    /* EFBDC 8018F19C 24040001 */   addiu     $a0, $zero, 0x1
    /* EFBE0 8018F1A0 1000FF74 */  b          .L8018EF74_ovl3
    /* EFBE4 8018F1A4 960E0002 */   lhu       $t6, 0x2($s0)
  jlabel .L8018F1A8_ovl3
    /* EFBE8 8018F1A8 0C04828A */  jal        func_80120A28
    /* EFBEC 8018F1AC 00000000 */   nop
    /* EFBF0 8018F1B0 8E420000 */  lw         $v0, 0x0($s2)
    /* EFBF4 8018F1B4 A2000007 */  sb         $zero, 0x7($s0)
    /* EFBF8 8018F1B8 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
    /* EFBFC 8018F1BC 8C590000 */  lw         $t9, 0x0($v0)
    /* EFC00 8018F1C0 00194880 */  sll        $t1, $t9, 2
    /* EFC04 8018F1C4 02295021 */  addu       $t2, $s1, $t1
    /* EFC08 8018F1C8 AD400000 */  sw         $zero, 0x0($t2)
    /* EFC0C 8018F1CC 8C480000 */  lw         $t0, 0x0($v0)
    /* EFC10 8018F1D0 00085880 */  sll        $t3, $t0, 2
    /* EFC14 8018F1D4 01CB7021 */  addu       $t6, $t6, $t3
    /* EFC18 8018F1D8 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
    /* EFC1C 8018F1DC 31CF0006 */  andi       $t7, $t6, 0x6
    /* EFC20 8018F1E0 11E00005 */  beqz       $t7, .L8018F1F8_ovl3
    /* EFC24 8018F1E4 00000000 */   nop
    /* EFC28 8018F1E8 0C04770C */  jal        func_8011DC30
    /* EFC2C 8018F1EC 24040038 */   addiu     $a0, $zero, 0x38
    /* EFC30 8018F1F0 10000004 */  b          .L8018F204_ovl3
    /* EFC34 8018F1F4 8E580000 */   lw        $t8, 0x0($s2)
  .L8018F1F8_ovl3:
    /* EFC38 8018F1F8 0C04770C */  jal        func_8011DC30
    /* EFC3C 8018F1FC 24040037 */   addiu     $a0, $zero, 0x37
    /* EFC40 8018F200 8E580000 */  lw         $t8, 0x0($s2)
  .L8018F204_ovl3:
    /* EFC44 8018F204 3C19800F */  lui        $t9, %hi(D_800E8920)
    /* EFC48 8018F208 8F0D0000 */  lw         $t5, 0x0($t8)
    /* EFC4C 8018F20C 000D6080 */  sll        $t4, $t5, 2
    /* EFC50 8018F210 032CC821 */  addu       $t9, $t9, $t4
    /* EFC54 8018F214 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
    /* EFC58 8018F218 13200008 */  beqz       $t9, .L8018F23C_ovl3
    /* EFC5C 8018F21C 3C040002 */   lui       $a0, (0x20043 >> 16)
    /* EFC60 8018F220 3C050002 */  lui        $a1, (0x20044 >> 16)
    /* EFC64 8018F224 34A50044 */  ori        $a1, $a1, (0x20044 & 0xFFFF)
    /* EFC68 8018F228 34840043 */  ori        $a0, $a0, (0x20043 & 0xFFFF)
    /* EFC6C 8018F22C 0C048C3A */  jal        func_801230E8
    /* EFC70 8018F230 24060001 */   addiu     $a2, $zero, 0x1
    /* EFC74 8018F234 10000008 */  b          .L8018F258_ovl3
    /* EFC78 8018F238 8E490000 */   lw        $t1, 0x0($s2)
  .L8018F23C_ovl3:
    /* EFC7C 8018F23C 3C040002 */  lui        $a0, (0x20045 >> 16)
    /* EFC80 8018F240 3C050002 */  lui        $a1, (0x20046 >> 16)
    /* EFC84 8018F244 34A50046 */  ori        $a1, $a1, (0x20046 & 0xFFFF)
    /* EFC88 8018F248 34840045 */  ori        $a0, $a0, (0x20045 & 0xFFFF)
    /* EFC8C 8018F24C 0C048C3A */  jal        func_801230E8
    /* EFC90 8018F250 24060001 */   addiu     $a2, $zero, 0x1
    /* EFC94 8018F254 8E490000 */  lw         $t1, 0x0($s2)
  .L8018F258_ovl3:
    /* EFC98 8018F258 8D2A0000 */  lw         $t2, 0x0($t1)
    /* EFC9C 8018F25C 000A4080 */  sll        $t0, $t2, 2
    /* EFCA0 8018F260 02281021 */  addu       $v0, $s1, $t0
    /* EFCA4 8018F264 8C4B0000 */  lw         $t3, 0x0($v0)
    /* EFCA8 8018F268 256E0001 */  addiu      $t6, $t3, 0x1
    /* EFCAC 8018F26C 0C02BE85 */  jal        curObjSleepForever
    /* EFCB0 8018F270 AC4E0000 */   sw        $t6, 0x0($v0)
  jlabel .L8018F274_ovl3
    /* EFCB4 8018F274 0C04828A */  jal        func_80120A28
    /* EFCB8 8018F278 00000000 */   nop
    /* EFCBC 8018F27C A2000007 */  sb         $zero, 0x7($s0)
  .L8018F280_ovl3:
    /* EFCC0 8018F280 8E0F0030 */  lw         $t7, 0x30($s0)
    /* EFCC4 8018F284 25F80001 */  addiu      $t8, $t7, 0x1
    /* EFCC8 8018F288 0C02BE85 */  jal        curObjSleepForever
    /* EFCCC 8018F28C AE180030 */   sw        $t8, 0x30($s0)
    /* EFCD0 8018F290 8FBF0034 */  lw         $ra, 0x34($sp)
    /* EFCD4 8018F294 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* EFCD8 8018F298 8FB00020 */  lw         $s0, 0x20($sp)
    /* EFCDC 8018F29C 8FB10024 */  lw         $s1, 0x24($sp)
    /* EFCE0 8018F2A0 8FB20028 */  lw         $s2, 0x28($sp)
    /* EFCE4 8018F2A4 8FB3002C */  lw         $s3, 0x2C($sp)
    /* EFCE8 8018F2A8 8FB40030 */  lw         $s4, 0x30($sp)
    /* EFCEC 8018F2AC 03E00008 */  jr         $ra
    /* EFCF0 8018F2B0 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_8018E608_ovl3
.size func_8018E608_ovl3, . - func_8018E608_ovl3
