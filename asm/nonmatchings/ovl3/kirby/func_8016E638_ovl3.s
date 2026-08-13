nonmatching func_8016E638_ovl3, 0x268

glabel func_8016E638_ovl3
    /* CF078 8016E638 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* CF07C 8016E63C AFB1001C */  sw         $s1, 0x1C($sp)
    /* CF080 8016E640 3C118013 */  lui        $s1, %hi(gKirbyState)
    /* CF084 8016E644 2631E7C0 */  addiu      $s1, $s1, %lo(gKirbyState)
    /* CF088 8016E648 AFBF0024 */  sw         $ra, 0x24($sp)
    /* CF08C 8016E64C AFB20020 */  sw         $s2, 0x20($sp)
    /* CF090 8016E650 AFB00018 */  sw         $s0, 0x18($sp)
    /* CF094 8016E654 AFA40028 */  sw         $a0, 0x28($sp)
    /* CF098 8016E658 AE200044 */  sw         $zero, 0x44($s1)
    /* CF09C 8016E65C 0C0473D6 */  jal        func_8011CF58
    /* CF0A0 8016E660 AE200030 */   sw        $zero, 0x30($s1)
    /* CF0A4 8016E664 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* CF0A8 8016E668 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* CF0AC 8016E66C 8E420000 */  lw         $v0, 0x0($s2)
    /* CF0B0 8016E670 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* CF0B4 8016E674 240F0003 */  addiu      $t7, $zero, 0x3
    /* CF0B8 8016E678 8C580000 */  lw         $t8, 0x0($v0)
    /* CF0BC 8016E67C 3C0C8019 */  lui        $t4, %hi(D_80190358_ovl3)
    /* CF0C0 8016E680 3C0B8019 */  lui        $t3, %hi(D_801903E0_ovl3)
    /* CF0C4 8016E684 0018C880 */  sll        $t9, $t8, 2
    /* CF0C8 8016E688 00390821 */  addu       $at, $at, $t9
    /* CF0CC 8016E68C AC2FDFD0 */  sw         $t7, %lo(D_800DDFD0)($at)
    /* CF0D0 8016E690 8C480000 */  lw         $t0, 0x0($v0)
    /* CF0D4 8016E694 3C01800F */  lui        $at, %hi(D_800E8920)
    /* CF0D8 8016E698 256B03E0 */  addiu      $t3, $t3, %lo(D_801903E0_ovl3)
    /* CF0DC 8016E69C 00084880 */  sll        $t1, $t0, 2
    /* CF0E0 8016E6A0 00290821 */  addu       $at, $at, $t1
    /* CF0E4 8016E6A4 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* CF0E8 8016E6A8 922A0004 */  lbu        $t2, 0x4($s1)
    /* CF0EC 8016E6AC 24010001 */  addiu      $at, $zero, 0x1
    /* CF0F0 8016E6B0 258C0358 */  addiu      $t4, $t4, %lo(D_80190358_ovl3)
    /* CF0F4 8016E6B4 15410003 */  bne        $t2, $at, .L8016E6C4_ovl3
    /* CF0F8 8016E6B8 3C040002 */   lui       $a0, (0x2009F >> 16)
    /* CF0FC 8016E6BC 10000002 */  b          .L8016E6C8_ovl3
    /* CF100 8016E6C0 AE2B015C */   sw        $t3, 0x15C($s1)
  .L8016E6C4_ovl3:
    /* CF104 8016E6C4 AE2C015C */  sw         $t4, 0x15C($s1)
  .L8016E6C8_ovl3:
    /* CF108 8016E6C8 8C4D0000 */  lw         $t5, 0x0($v0)
    /* CF10C 8016E6CC 3C01800F */  lui        $at, %hi(D_800E83E0)
    /* CF110 8016E6D0 3C050002 */  lui        $a1, (0x20007 >> 16)
    /* CF114 8016E6D4 000D7080 */  sll        $t6, $t5, 2
    /* CF118 8016E6D8 002E0821 */  addu       $at, $at, $t6
    /* CF11C 8016E6DC AC2083E0 */  sw         $zero, %lo(D_800E83E0)($at)
    /* CF120 8016E6E0 92380006 */  lbu        $t8, 0x6($s1)
    /* CF124 8016E6E4 2401000B */  addiu      $at, $zero, 0xB
    /* CF128 8016E6E8 34A50007 */  ori        $a1, $a1, (0x20007 & 0xFFFF)
    /* CF12C 8016E6EC 17010005 */  bne        $t8, $at, .L8016E704_ovl3
    /* CF130 8016E6F0 3484009F */   ori       $a0, $a0, (0x2009F & 0xFFFF)
    /* CF134 8016E6F4 0C02A9E3 */  jal        func_800AA78C
    /* CF138 8016E6F8 3C064040 */   lui       $a2, (0x40400000 >> 16)
    /* CF13C 8016E6FC 10000008 */  b          .L8016E720_ovl3
    /* CF140 8016E700 92220004 */   lbu       $v0, 0x4($s1)
  .L8016E704_ovl3:
    /* CF144 8016E704 8C4F0000 */  lw         $t7, 0x0($v0)
    /* CF148 8016E708 3C04800E */  lui        $a0, %hi(D_800DFA10)
    /* CF14C 8016E70C 000FC880 */  sll        $t9, $t7, 2
    /* CF150 8016E710 00992021 */  addu       $a0, $a0, $t9
    /* CF154 8016E714 0C02BE95 */  jal        func_800AFA54
    /* CF158 8016E718 8C84FA10 */   lw        $a0, %lo(D_800DFA10)($a0)
    /* CF15C 8016E71C 92220004 */  lbu        $v0, 0x4($s1)
  .L8016E720_ovl3:
    /* CF160 8016E720 3C040002 */  lui        $a0, (0x2009F >> 16)
    /* CF164 8016E724 3484009F */  ori        $a0, $a0, (0x2009F & 0xFFFF)
    /* CF168 8016E728 10400009 */  beqz       $v0, .L8016E750_ovl3
    /* CF16C 8016E72C 3C050002 */   lui       $a1, (0x200A0 >> 16)
    /* CF170 8016E730 24010001 */  addiu      $at, $zero, 0x1
    /* CF174 8016E734 1041000B */  beq        $v0, $at, .L8016E764_ovl3
    /* CF178 8016E738 3C040002 */   lui       $a0, (0x2016D >> 16)
    /* CF17C 8016E73C 24010002 */  addiu      $at, $zero, 0x2
    /* CF180 8016E740 1041000F */  beq        $v0, $at, .L8016E780_ovl3
    /* CF184 8016E744 3C040002 */   lui       $a0, (0x200C7 >> 16)
    /* CF188 8016E748 10000013 */  b          .L8016E798_ovl3
    /* CF18C 8016E74C 8E480000 */   lw        $t0, 0x0($s2)
  .L8016E750_ovl3:
    /* CF190 8016E750 34A500A0 */  ori        $a1, $a1, (0x200A0 & 0xFFFF)
    /* CF194 8016E754 0C048C3A */  jal        func_801230E8
    /* CF198 8016E758 00003025 */   or        $a2, $zero, $zero
    /* CF19C 8016E75C 1000000E */  b          .L8016E798_ovl3
    /* CF1A0 8016E760 8E480000 */   lw        $t0, 0x0($s2)
  .L8016E764_ovl3:
    /* CF1A4 8016E764 3C050002 */  lui        $a1, (0x2016E >> 16)
    /* CF1A8 8016E768 34A5016E */  ori        $a1, $a1, (0x2016E & 0xFFFF)
    /* CF1AC 8016E76C 3484016D */  ori        $a0, $a0, (0x2016D & 0xFFFF)
    /* CF1B0 8016E770 0C048C3A */  jal        func_801230E8
    /* CF1B4 8016E774 00003025 */   or        $a2, $zero, $zero
    /* CF1B8 8016E778 10000007 */  b          .L8016E798_ovl3
    /* CF1BC 8016E77C 8E480000 */   lw        $t0, 0x0($s2)
  .L8016E780_ovl3:
    /* CF1C0 8016E780 3C050002 */  lui        $a1, (0x200C8 >> 16)
    /* CF1C4 8016E784 34A500C8 */  ori        $a1, $a1, (0x200C8 & 0xFFFF)
    /* CF1C8 8016E788 348400C7 */  ori        $a0, $a0, (0x200C7 & 0xFFFF)
    /* CF1CC 8016E78C 0C048C3A */  jal        func_801230E8
    /* CF1D0 8016E790 00003025 */   or        $a2, $zero, $zero
    /* CF1D4 8016E794 8E480000 */  lw         $t0, 0x0($s2)
  .L8016E798_ovl3:
    /* CF1D8 8016E798 3C10800E */  lui        $s0, %hi(D_800E3210)
    /* CF1DC 8016E79C 26103210 */  addiu      $s0, $s0, %lo(D_800E3210)
    /* CF1E0 8016E7A0 8D090000 */  lw         $t1, 0x0($t0)
    /* CF1E4 8016E7A4 C62400CC */  lwc1       $f4, 0xCC($s1)
    /* CF1E8 8016E7A8 00095080 */  sll        $t2, $t1, 2
    /* CF1EC 8016E7AC 020A5821 */  addu       $t3, $s0, $t2
    /* CF1F0 8016E7B0 C5660000 */  lwc1       $f6, 0x0($t3)
    /* CF1F4 8016E7B4 4606203C */  c.lt.s     $f4, $f6
    /* CF1F8 8016E7B8 00000000 */  nop
    /* CF1FC 8016E7BC 4502000E */  bc1fl      .L8016E7F8_ovl3
    /* CF200 8016E7C0 962F00D2 */   lhu       $t7, 0xD2($s1)
  .L8016E7C4_ovl3:
    /* CF204 8016E7C4 0C002DAF */  jal        ohSleep
    /* CF208 8016E7C8 24040001 */   addiu     $a0, $zero, 0x1
    /* CF20C 8016E7CC 8E4C0000 */  lw         $t4, 0x0($s2)
    /* CF210 8016E7D0 C62800CC */  lwc1       $f8, 0xCC($s1)
    /* CF214 8016E7D4 8D8D0000 */  lw         $t5, 0x0($t4)
    /* CF218 8016E7D8 000D7080 */  sll        $t6, $t5, 2
    /* CF21C 8016E7DC 020EC021 */  addu       $t8, $s0, $t6
    /* CF220 8016E7E0 C70A0000 */  lwc1       $f10, 0x0($t8)
    /* CF224 8016E7E4 460A403C */  c.lt.s     $f8, $f10
    /* CF228 8016E7E8 00000000 */  nop
    /* CF22C 8016E7EC 4501FFF5 */  bc1t       .L8016E7C4_ovl3
    /* CF230 8016E7F0 00000000 */   nop
    /* CF234 8016E7F4 962F00D2 */  lhu        $t7, 0xD2($s1)
  .L8016E7F8_ovl3:
    /* CF238 8016E7F8 92220004 */  lbu        $v0, 0x4($s1)
    /* CF23C 8016E7FC 3C040002 */  lui        $a0, (0x200A1 >> 16)
    /* CF240 8016E800 25F90001 */  addiu      $t9, $t7, 0x1
    /* CF244 8016E804 10400009 */  beqz       $v0, .L8016E82C_ovl3
    /* CF248 8016E808 A63900D2 */   sh        $t9, 0xD2($s1)
    /* CF24C 8016E80C 24010001 */  addiu      $at, $zero, 0x1
    /* CF250 8016E810 1041000D */  beq        $v0, $at, .L8016E848_ovl3
    /* CF254 8016E814 3C040002 */   lui       $a0, (0x2016F >> 16)
    /* CF258 8016E818 24010002 */  addiu      $at, $zero, 0x2
    /* CF25C 8016E81C 10410011 */  beq        $v0, $at, .L8016E864_ovl3
    /* CF260 8016E820 3C040002 */   lui       $a0, (0x200C9 >> 16)
    /* CF264 8016E824 10000015 */  b          .L8016E87C_ovl3
    /* CF268 8016E828 8E280030 */   lw        $t0, 0x30($s1)
  .L8016E82C_ovl3:
    /* CF26C 8016E82C 3C050002 */  lui        $a1, (0x200A2 >> 16)
    /* CF270 8016E830 34A500A2 */  ori        $a1, $a1, (0x200A2 & 0xFFFF)
    /* CF274 8016E834 348400A1 */  ori        $a0, $a0, (0x200A1 & 0xFFFF)
    /* CF278 8016E838 0C048C3A */  jal        func_801230E8
    /* CF27C 8016E83C 24060001 */   addiu     $a2, $zero, 0x1
    /* CF280 8016E840 1000000E */  b          .L8016E87C_ovl3
    /* CF284 8016E844 8E280030 */   lw        $t0, 0x30($s1)
  .L8016E848_ovl3:
    /* CF288 8016E848 3C050002 */  lui        $a1, (0x20170 >> 16)
    /* CF28C 8016E84C 34A50170 */  ori        $a1, $a1, (0x20170 & 0xFFFF)
    /* CF290 8016E850 3484016F */  ori        $a0, $a0, (0x2016F & 0xFFFF)
    /* CF294 8016E854 0C048C3A */  jal        func_801230E8
    /* CF298 8016E858 24060001 */   addiu     $a2, $zero, 0x1
    /* CF29C 8016E85C 10000007 */  b          .L8016E87C_ovl3
    /* CF2A0 8016E860 8E280030 */   lw        $t0, 0x30($s1)
  .L8016E864_ovl3:
    /* CF2A4 8016E864 3C050002 */  lui        $a1, (0x200CA >> 16)
    /* CF2A8 8016E868 34A500CA */  ori        $a1, $a1, (0x200CA & 0xFFFF)
    /* CF2AC 8016E86C 348400C9 */  ori        $a0, $a0, (0x200C9 & 0xFFFF)
    /* CF2B0 8016E870 0C048C3A */  jal        func_801230E8
    /* CF2B4 8016E874 24060001 */   addiu     $a2, $zero, 0x1
    /* CF2B8 8016E878 8E280030 */  lw         $t0, 0x30($s1)
  .L8016E87C_ovl3:
    /* CF2BC 8016E87C 25090001 */  addiu      $t1, $t0, 0x1
    /* CF2C0 8016E880 0C02BE85 */  jal        curObjSleepForever
    /* CF2C4 8016E884 AE290030 */   sw        $t1, 0x30($s1)
    /* CF2C8 8016E888 8FBF0024 */  lw         $ra, 0x24($sp)
    /* CF2CC 8016E88C 8FB00018 */  lw         $s0, 0x18($sp)
    /* CF2D0 8016E890 8FB1001C */  lw         $s1, 0x1C($sp)
    /* CF2D4 8016E894 8FB20020 */  lw         $s2, 0x20($sp)
    /* CF2D8 8016E898 03E00008 */  jr         $ra
    /* CF2DC 8016E89C 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_8016E638_ovl3
.size func_8016E638_ovl3, . - func_8016E638_ovl3
