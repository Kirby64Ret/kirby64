glabel func_8016CA8C_ovl3
/* CD4CC 8016CA8C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* CD4D0 8016CA90 AFB4002C */  sw         $s4, 0x2C($sp)
/* CD4D4 8016CA94 3C148013 */  lui        $s4, %hi(gKirbyState)
/* CD4D8 8016CA98 2694E7C0 */  addiu      $s4, $s4, %lo(gKirbyState)
/* CD4DC 8016CA9C AFBF0034 */  sw         $ra, 0x34($sp)
/* CD4E0 8016CAA0 AFB50030 */  sw         $s5, 0x30($sp)
/* CD4E4 8016CAA4 AFB30028 */  sw         $s3, 0x28($sp)
/* CD4E8 8016CAA8 AFB20024 */  sw         $s2, 0x24($sp)
/* CD4EC 8016CAAC AFB10020 */  sw         $s1, 0x20($sp)
/* CD4F0 8016CAB0 AFB0001C */  sw         $s0, 0x1C($sp)
.L8016CAB4_ovl5:
/* CD4F4 8016CAB4 F7B40010 */  sdc1       $f20, 0x10($sp)
.L8016CAB8_ovl5:
/* CD4F8 8016CAB8 AFA40038 */  sw         $a0, 0x38($sp)
/* CD4FC 8016CABC AE800030 */  sw         $zero, 0x30($s4)
/* CD500 8016CAC0 0C0473D6 */  jal        func_8011CF58
/* CD504 8016CAC4 AE80002C */   sw        $zero, 0x2C($s4)
/* CD508 8016CAC8 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* CD50C 8016CACC 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* CD510 8016CAD0 8E250000 */  lw         $a1, 0x0($s1)
/* CD514 8016CAD4 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* CD518 8016CAD8 24130001 */  addiu      $s3, $zero, 0x1
/* CD51C 8016CADC 8CAF0000 */  lw         $t7, 0x0($a1)
.L8016CAE0_ovl5:
/* CD520 8016CAE0 3C0E8019 */  lui        $t6, %hi(D_80190358_ovl3)
.L8016CAE4_ovl5:
/* CD524 8016CAE4 3C0A8019 */  lui        $t2, %hi(D_801926E8_ovl3)
/* CD528 8016CAE8 000FC080 */  sll        $t8, $t7, 2
/* CD52C 8016CAEC 00380821 */  addu       $at, $at, $t8
/* CD530 8016CAF0 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
/* CD534 8016CAF4 92830004 */  lbu        $v1, 0x4($s4)
/* CD538 8016CAF8 3C198019 */  lui        $t9, %hi(D_80192704_ovl3)
/* CD53C 8016CAFC 25CE0358 */  addiu      $t6, $t6, %lo(D_80190358_ovl3)
/* CD540 8016CB00 16630008 */  bne        $s3, $v1, .L8016CB24_ovl3
/* CD544 8016CB04 3C04800E */   lui       $a0, %hi(D_800E6690)
/* CD548 8016CB08 8CA80000 */  lw         $t0, 0x0($a1)
.L8016CB0C_ovl5:
/* CD54C 8016CB0C 3C01800E */  lui        $at, %hi(D_800E0490)
/* CD550 8016CB10 27392704 */  addiu      $t9, $t9, %lo(D_80192704_ovl3)
glabel func_8016CB14_ovl5
/* CD554 8016CB14 00084880 */  sll        $t1, $t0, 2
/* CD558 8016CB18 00290821 */  addu       $at, $at, $t1
/* CD55C 8016CB1C 10000007 */  b          .L8016CB3C_ovl3
/* CD560 8016CB20 AC390490 */   sw        $t9, %lo(D_800E0490)($at)
.L8016CB24_ovl3:
/* CD564 8016CB24 8CAB0000 */  lw         $t3, 0x0($a1)
/* CD568 8016CB28 3C01800E */  lui        $at, %hi(D_800E0490)
/* CD56C 8016CB2C 254A26E8 */  addiu      $t2, $t2, %lo(D_801926E8_ovl3)
/* CD570 8016CB30 000B6080 */  sll        $t4, $t3, 2
/* CD574 8016CB34 002C0821 */  addu       $at, $at, $t4
/* CD578 8016CB38 AC2A0490 */  sw         $t2, %lo(D_800E0490)($at)
.L8016CB3C_ovl3:
/* CD57C 8016CB3C 16630004 */  bne        $s3, $v1, .L8016CB50_ovl3
/* CD580 8016CB40 3C0D8019 */   lui       $t5, %hi(D_801903E0_ovl3)
.L8016CB44_ovl5:
/* CD584 8016CB44 25AD03E0 */  addiu      $t5, $t5, %lo(D_801903E0_ovl3)
/* CD588 8016CB48 10000002 */  b          .L8016CB54_ovl3
/* CD58C 8016CB4C AE8D015C */   sw        $t5, 0x15C($s4)
.L8016CB50_ovl3:
/* CD590 8016CB50 AE8E015C */  sw         $t6, 0x15C($s4)
.L8016CB54_ovl3:
/* CD594 8016CB54 8CAF0000 */  lw         $t7, 0x0($a1)
/* CD598 8016CB58 44802000 */  mtc1       $zero, $f4
/* CD59C 8016CB5C 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
/* CD5A0 8016CB60 000FC080 */  sll        $t8, $t7, 2
/* CD5A4 8016CB64 00984021 */  addu       $t0, $a0, $t8
/* CD5A8 8016CB68 E5040000 */  swc1       $f4, 0x0($t0)
/* CD5AC 8016CB6C 8CA20000 */  lw         $v0, 0x0($a1)
/* CD5B0 8016CB70 3C01800E */  lui        $at, %hi(D_800E64D0)
/* CD5B4 8016CB74 24120002 */  addiu      $s2, $zero, 0x2
/* CD5B8 8016CB78 00021080 */  sll        $v0, $v0, 2
glabel func_8016CB7C_ovl5
/* CD5BC 8016CB7C 0082C821 */  addu       $t9, $a0, $v0
/* CD5C0 8016CB80 C7260000 */  lwc1       $f6, 0x0($t9)
/* CD5C4 8016CB84 00220821 */  addu       $at, $at, $v0
/* CD5C8 8016CB88 3C150002 */  lui        $s5, (0x20007 >> 16)
/* CD5CC 8016CB8C E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* CD5D0 8016CB90 8CA90000 */  lw         $t1, 0x0($a1)
/* CD5D4 8016CB94 3C018019 */  lui        $at, %hi(D_8019734C_ovl3)
/* CD5D8 8016CB98 C428734C */  lwc1       $f8, %lo(D_8019734C_ovl3)($at)
/* CD5DC 8016CB9C 3C01800E */  lui        $at, %hi(D_800E6850)
/* CD5E0 8016CBA0 00095880 */  sll        $t3, $t1, 2
/* CD5E4 8016CBA4 002B0821 */  addu       $at, $at, $t3
/* CD5E8 8016CBA8 16430008 */  bne        $s2, $v1, .L8016CBCC_ovl3
/* CD5EC 8016CBAC E4286850 */   swc1      $f8, %lo(D_800E6850)($at)
/* CD5F0 8016CBB0 36B50007 */  ori        $s5, $s5, (0x20007 & 0xFFFF)
/* CD5F4 8016CBB4 0C02AA22 */  jal        func_800AA888
/* CD5F8 8016CBB8 02A02025 */   or        $a0, $s5, $zero
/* CD5FC 8016CBBC 54400004 */  bnel       $v0, $zero, .L8016CBD0_ovl3
/* CD600 8016CBC0 92830150 */   lbu       $v1, 0x150($s4)
/* CD604 8016CBC4 0C048BC2 */  jal        func_80122F08
/* CD608 8016CBC8 02A02025 */   or        $a0, $s5, $zero
.L8016CBCC_ovl3:
/* CD60C 8016CBCC 92830150 */  lbu        $v1, 0x150($s4)
.L8016CBD0_ovl3:
/* CD610 8016CBD0 3C150002 */  lui        $s5, (0x20007 >> 16)
/* CD614 8016CBD4 36B50007 */  ori        $s5, $s5, (0x20007 & 0xFFFF)
/* CD618 8016CBD8 5060000E */  beql       $v1, $zero, .L8016CC14_ovl3
/* CD61C 8016CBDC 92830004 */   lbu       $v1, 0x4($s4)
/* CD620 8016CBE0 8E250000 */  lw         $a1, 0x0($s1)
/* CD624 8016CBE4 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
/* CD628 8016CBE8 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* CD62C 8016CBEC 8CAA0000 */  lw         $t2, 0x0($a1)
/* CD630 8016CBF0 00601025 */  or         $v0, $v1, $zero
/* CD634 8016CBF4 3C10800F */  lui        $s0, %hi(D_800E9720)
/* CD638 8016CBF8 000A6080 */  sll        $t4, $t2, 2
/* CD63C 8016CBFC 01AC6821 */  addu       $t5, $t5, $t4
/* CD640 8016CC00 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
/* CD644 8016CC04 31AE0006 */  andi       $t6, $t5, 0x6
/* CD648 8016CC08 51C000A7 */  beql       $t6, $zero, .L8016CEA8_ovl3
/* CD64C 8016CC0C AE80003C */   sw        $zero, 0x3C($s4)
/* CD650 8016CC10 92830004 */  lbu        $v1, 0x4($s4)
.L8016CC14_ovl3:
/* CD654 8016CC14 56430017 */  bnel       $s2, $v1, .L8016CC74_ovl3
/* CD658 8016CC18 3C014140 */   lui       $at, (0x41400000 >> 16)
/* CD65C 8016CC1C 92820006 */  lbu        $v0, 0x6($s4)
/* CD660 8016CC20 24010011 */  addiu      $at, $zero, 0x11
/* CD664 8016CC24 5040000A */  beql       $v0, $zero, .L8016CC50_ovl3
/* CD668 8016CC28 3C040002 */   lui       $a0, (0x200C3 >> 16)
/* CD66C 8016CC2C 10410007 */  beq        $v0, $at, .L8016CC4C_ovl3
/* CD670 8016CC30 3C014140 */   lui       $at, (0x41400000 >> 16)
/* CD674 8016CC34 4481A000 */  mtc1       $at, $f20
.L8016CC38_ovl5:
/* CD678 8016CC38 3C040002 */  lui        $a0, (0x200C3 >> 16)
/* CD67C 8016CC3C 348400C3 */  ori        $a0, $a0, (0x200C3 & 0xFFFF)
/* CD680 8016CC40 4406A000 */  mfc1       $a2, $f20
/* CD684 8016CC44 0C02A9E3 */  jal        func_800AA78C
/* CD688 8016CC48 02A02825 */   or        $a1, $s5, $zero
.L8016CC4C_ovl3:
/* CD68C 8016CC4C 3C040002 */  lui        $a0, (0x200C3 >> 16)
.L8016CC50_ovl3:
/* CD690 8016CC50 3C050002 */  lui        $a1, (0x200C4 >> 16)
/* CD694 8016CC54 34A500C4 */  ori        $a1, $a1, (0x200C4 & 0xFFFF)
/* CD698 8016CC58 348400C3 */  ori        $a0, $a0, (0x200C3 & 0xFFFF)
.L8016CC5C_ovl5:
/* CD69C 8016CC5C 0C048C3A */  jal        func_801230E8
/* CD6A0 8016CC60 00003025 */   or        $a2, $zero, $zero
/* CD6A4 8016CC64 0C02BE85 */  jal        func_800AFA14
/* CD6A8 8016CC68 00000000 */   nop
/* CD6AC 8016CC6C 92830004 */  lbu        $v1, 0x4($s4)
/* CD6B0 8016CC70 3C014140 */  lui        $at, (0x41400000 >> 16)
.L8016CC74_ovl3:
/* CD6B4 8016CC74 4481A000 */  mtc1       $at, $f20
/* CD6B8 8016CC78 1460001E */  bnez       $v1, .L8016CCF4_ovl3
/* CD6BC 8016CC7C 00000000 */   nop
/* CD6C0 8016CC80 8E2F0000 */  lw         $t7, 0x0($s1)
/* CD6C4 8016CC84 3C018019 */  lui        $at, %hi(D_80197350_ovl3)
glabel func_8016CC88_ovl5
/* CD6C8 8016CC88 C42A7350 */  lwc1       $f10, %lo(D_80197350_ovl3)($at)
/* CD6CC 8016CC8C 8DF80000 */  lw         $t8, 0x0($t7)
/* CD6D0 8016CC90 3C01800E */  lui        $at, %hi(D_800E7B20)
/* CD6D4 8016CC94 00184080 */  sll        $t0, $t8, 2
/* CD6D8 8016CC98 00280821 */  addu       $at, $at, $t0
/* CD6DC 8016CC9C C4307B20 */  lwc1       $f16, %lo(D_800E7B20)($at)
/* CD6E0 8016CCA0 460A803E */  c.le.s     $f16, $f10
/* CD6E4 8016CCA4 00000000 */  nop
/* CD6E8 8016CCA8 45000012 */  bc1f       .L8016CCF4_ovl3
/* CD6EC 8016CCAC 00000000 */   nop
/* CD6F0 8016CCB0 92990006 */  lbu        $t9, 0x6($s4)
/* CD6F4 8016CCB4 3C040002 */  lui        $a0, (0x200D3 >> 16)
/* CD6F8 8016CCB8 348400D3 */  ori        $a0, $a0, (0x200D3 & 0xFFFF)
/* CD6FC 8016CCBC 53200005 */  beql       $t9, $zero, .L8016CCD4_ovl3
/* CD700 8016CCC0 3C040002 */   lui       $a0, (0x200D3 >> 16)
/* CD704 8016CCC4 4406A000 */  mfc1       $a2, $f20
/* CD708 8016CCC8 0C02A9E3 */  jal        func_800AA78C
/* CD70C 8016CCCC 02A02825 */   or        $a1, $s5, $zero
/* CD710 8016CCD0 3C040002 */  lui        $a0, (0x200D3 >> 16)
.L8016CCD4_ovl3:
/* CD714 8016CCD4 3C050002 */  lui        $a1, (0x200D4 >> 16)
/* CD718 8016CCD8 34A500D4 */  ori        $a1, $a1, (0x200D4 & 0xFFFF)
/* CD71C 8016CCDC 348400D3 */  ori        $a0, $a0, (0x200D3 & 0xFFFF)
/* CD720 8016CCE0 0C048C3A */  jal        func_801230E8
.L8016CCE4_ovl5:
/* CD724 8016CCE4 00003025 */   or        $a2, $zero, $zero
/* CD728 8016CCE8 0C02BE85 */  jal        func_800AFA14
/* CD72C 8016CCEC 00000000 */   nop
/* CD730 8016CCF0 92830004 */  lbu        $v1, 0x4($s4)
.L8016CCF4_ovl3:
/* CD734 8016CCF4 1263000A */  beq        $s3, $v1, .L8016CD20_ovl3
/* CD738 8016CCF8 00000000 */   nop
/* CD73C 8016CCFC 8E290000 */  lw         $t1, 0x0($s1)
/* CD740 8016CD00 3C0C800F */  lui        $t4, %hi(D_800E8AE0)
.L8016CD04_ovl5:
/* CD744 8016CD04 8D2B0000 */  lw         $t3, 0x0($t1)
/* CD748 8016CD08 000B5080 */  sll        $t2, $t3, 2
/* CD74C 8016CD0C 018A6021 */  addu       $t4, $t4, $t2
/* CD750 8016CD10 8D8C8AE0 */  lw         $t4, %lo(D_800E8AE0)($t4)
/* CD754 8016CD14 318D0006 */  andi       $t5, $t4, 0x6
/* CD758 8016CD18 51A00024 */  beql       $t5, $zero, .L8016CDAC_ovl5
/* CD75C 8016CD1C 92980006 */   lbu       $t8, 0x6($s4)
.L8016CD20_ovl3:
/* CD760 8016CD20 54600012 */  bnel       $v1, $zero, .L8016CD6C_ovl3
/* CD764 8016CD24 928F0006 */   lbu       $t7, 0x6($s4)
/* CD768 8016CD28 928E0006 */  lbu        $t6, 0x6($s4)
/* CD76C 8016CD2C 3C120002 */  lui        $s2, (0x2009B >> 16)
/* CD770 8016CD30 3644009B */  ori        $a0, $s2, (0x2009B & 0xFFFF)
/* CD774 8016CD34 51C00005 */  beql       $t6, $zero, .L8016CD4C_ovl3
/* CD778 8016CD38 3C120002 */   lui       $s2, (0x2009B >> 16)
/* CD77C 8016CD3C 4406A000 */  mfc1       $a2, $f20
/* CD780 8016CD40 0C02A9E3 */  jal        func_800AA78C
/* CD784 8016CD44 02A02825 */   or        $a1, $s5, $zero
/* CD788 8016CD48 3C120002 */  lui        $s2, (0x2009B >> 16)
.L8016CD4C_ovl3:
/* CD78C 8016CD4C 3C130002 */  lui        $s3, (0x2009C >> 16)
/* CD790 8016CD50 3665009C */  ori        $a1, $s3, (0x2009C & 0xFFFF)
/* CD794 8016CD54 3644009B */  ori        $a0, $s2, (0x2009B & 0xFFFF)
/* CD798 8016CD58 0C048C3A */  jal        func_801230E8
/* CD79C 8016CD5C 00003025 */   or        $a2, $zero, $zero
/* CD7A0 8016CD60 1000000F */  b          .L8016CDA0_ovl3
/* CD7A4 8016CD64 00000000 */   nop
/* CD7A8 8016CD68 928F0006 */  lbu        $t7, 0x6($s4)
.L8016CD6C_ovl3:
/* CD7AC 8016CD6C 3C040002 */  lui        $a0, (0x20169 >> 16)
/* CD7B0 8016CD70 34840169 */  ori        $a0, $a0, (0x20169 & 0xFFFF)
/* CD7B4 8016CD74 11E00004 */  beqz       $t7, .L8016CD88_ovl3
/* CD7B8 8016CD78 3C050002 */   lui       $a1, (0x20009 >> 16)
/* CD7BC 8016CD7C 4406A000 */  mfc1       $a2, $f20
/* CD7C0 8016CD80 0C02A9E3 */  jal        func_800AA78C
/* CD7C4 8016CD84 34A50009 */   ori       $a1, $a1, (0x20009 & 0xFFFF)
.L8016CD88_ovl3:
/* CD7C8 8016CD88 3C040002 */  lui        $a0, (0x20169 >> 16)
/* CD7CC 8016CD8C 3C050002 */  lui        $a1, (0x2016A >> 16)
/* CD7D0 8016CD90 34A5016A */  ori        $a1, $a1, (0x2016A & 0xFFFF)
/* CD7D4 8016CD94 34840169 */  ori        $a0, $a0, (0x20169 & 0xFFFF)
/* CD7D8 8016CD98 0C048C3A */  jal        func_801230E8
/* CD7DC 8016CD9C 00003025 */   or        $a2, $zero, $zero
.L8016CDA0_ovl3:
/* CD7E0 8016CDA0 0C02BE85 */  jal        func_800AFA14
/* CD7E4 8016CDA4 00000000 */   nop
/* CD7E8 8016CDA8 92980006 */  lbu        $t8, 0x6($s4)
.L8016CDAC_ovl5:
/* CD7EC 8016CDAC 3C120002 */  lui        $s2, (0x2009B >> 16)
.L8016CDB0_ovl5:
/* CD7F0 8016CDB0 3C130002 */  lui        $s3, (0x2009C >> 16)
/* CD7F4 8016CDB4 3673009C */  ori        $s3, $s3, (0x2009C & 0xFFFF)
/* CD7F8 8016CDB8 13000005 */  beqz       $t8, .L8016CDD0_ovl3
/* CD7FC 8016CDBC 3652009B */   ori       $s2, $s2, (0x2009B & 0xFFFF)
/* CD800 8016CDC0 4406A000 */  mfc1       $a2, $f20
/* CD804 8016CDC4 02402025 */  or         $a0, $s2, $zero
/* CD808 8016CDC8 0C02A9E3 */  jal        func_800AA78C
/* CD80C 8016CDCC 02A02825 */   or        $a1, $s5, $zero
.L8016CDD0_ovl3:
/* CD810 8016CDD0 2408FFFF */  addiu      $t0, $zero, -0x1
.L8016CDD4_ovl5:
/* CD814 8016CDD4 AE880044 */  sw         $t0, 0x44($s4)
/* CD818 8016CDD8 00008025 */  or         $s0, $zero, $zero
.L8016CDDC_ovl3:
/* CD81C 8016CDDC 0C006291 */  jal        random_soft_s32_range
/* CD820 8016CDE0 24040008 */   addiu     $a0, $zero, 0x8
/* CD824 8016CDE4 24510008 */  addiu      $s1, $v0, 0x8
.L8016CDE8_ovl5:
/* CD828 8016CDE8 1A200008 */  blez       $s1, .L8016CE0C_ovl5
/* CD82C 8016CDEC 02402025 */   or        $a0, $s2, $zero
.L8016CDF0_ovl3:
/* CD830 8016CDF0 02602825 */  or         $a1, $s3, $zero
/* CD834 8016CDF4 0C048C3A */  jal        func_801230E8
/* CD838 8016CDF8 24060001 */   addiu     $a2, $zero, 0x1
/* CD83C 8016CDFC 26100001 */  addiu      $s0, $s0, 0x1
/* CD840 8016CE00 0211082A */  slt        $at, $s0, $s1
/* CD844 8016CE04 5420FFFA */  bnel       $at, $zero, .L8016CDF0_ovl3
/* CD848 8016CE08 02402025 */   or        $a0, $s2, $zero
.L8016CE0C_ovl5:
/* CD84C 8016CE0C 0C006291 */  jal        random_soft_s32_range
/* CD850 8016CE10 24040003 */   addiu     $a0, $zero, 0x3
/* CD854 8016CE14 8E990044 */  lw         $t9, 0x44($s4)
.L8016CE18_ovl5:
/* CD858 8016CE18 1059FFFC */  beq        $v0, $t9, .L8016CE0C_ovl5
/* CD85C 8016CE1C 00000000 */   nop
/* CD860 8016CE20 3C0B8019 */  lui        $t3, %hi(D_80196C34_ovl3)
/* CD864 8016CE24 3C018013 */  lui        $at, %hi(D_8012E7E8 + 0x1C)
/* CD868 8016CE28 256B6C34 */  addiu      $t3, $t3, %lo(D_80196C34_ovl3)
/* CD86C 8016CE2C 000248C0 */  sll        $t1, $v0, 3
.L8016CE30_ovl5:
/* CD870 8016CE30 AC22E804 */  sw         $v0, %lo(D_8012E7E8 + 0x1C)($at)
/* CD874 8016CE34 012B8021 */  addu       $s0, $t1, $t3
/* CD878 8016CE38 4406A000 */  mfc1       $a2, $f20
/* CD87C 8016CE3C 8E040000 */  lw         $a0, 0x0($s0)
/* CD880 8016CE40 0C02A9E3 */  jal        func_800AA78C
/* CD884 8016CE44 02A02825 */   or        $a1, $s5, $zero
/* CD888 8016CE48 02002025 */  or         $a0, $s0, $zero
/* CD88C 8016CE4C 24050000 */  addiu      $a1, $zero, 0x0
/* CD890 8016CE50 0C048C01 */  jal        func_80123004
/* CD894 8016CE54 00003025 */   or        $a2, $zero, $zero
/* CD898 8016CE58 8E8A0034 */  lw         $t2, 0x34($s4)
.L8016CE5C_ovl3:
/* CD89C 8016CE5C 314C0001 */  andi       $t4, $t2, 0x1
/* CD8A0 8016CE60 55800006 */  bnel       $t4, $zero, .L8016CE7C_ovl3
/* CD8A4 8016CE64 4406A000 */   mfc1      $a2, $f20
/* CD8A8 8016CE68 0C02BC8C */  jal        func_800AF230
/* CD8AC 8016CE6C 00000000 */   nop
/* CD8B0 8016CE70 10400008 */  beqz       $v0, .L8016CE94_ovl3
.L8016CE74_ovl5:
/* CD8B4 8016CE74 00000000 */   nop
/* CD8B8 8016CE78 4406A000 */  mfc1       $a2, $f20
.L8016CE7C_ovl3:
/* CD8BC 8016CE7C 00008025 */  or         $s0, $zero, $zero
/* CD8C0 8016CE80 02402025 */  or         $a0, $s2, $zero
/* CD8C4 8016CE84 0C02A9E3 */  jal        func_800AA78C
/* CD8C8 8016CE88 02A02825 */   or        $a1, $s5, $zero
/* CD8CC 8016CE8C 1000FFD3 */  b          .L8016CDDC_ovl3
/* CD8D0 8016CE90 00000000 */   nop
.L8016CE94_ovl3:
/* CD8D4 8016CE94 0C002DAF */  jal        finish_current_thread
/* CD8D8 8016CE98 24040001 */   addiu     $a0, $zero, 0x1
/* CD8DC 8016CE9C 1000FFEF */  b          .L8016CE5C_ovl3
/* CD8E0 8016CEA0 8E8A0034 */   lw        $t2, 0x34($s4)
/* CD8E4 8016CEA4 AE80003C */  sw         $zero, 0x3C($s4)
.L8016CEA8_ovl3:
/* CD8E8 8016CEA8 8CAE0000 */  lw         $t6, 0x0($a1)
/* CD8EC 8016CEAC 8E8D0020 */  lw         $t5, 0x20($s4)
/* CD8F0 8016CEB0 26109720 */  addiu      $s0, $s0, %lo(D_800E9720)
/* CD8F4 8016CEB4 000E7880 */  sll        $t7, $t6, 2
/* CD8F8 8016CEB8 002F0821 */  addu       $at, $at, $t7
/* CD8FC 8016CEBC AC2D9AA0 */  sw         $t5, %lo(D_800E9AA0)($at)
.L8016CEC0_ovl5:
/* CD900 8016CEC0 8E980034 */  lw         $t8, 0x34($s4)
.L8016CEC4_ovl5:
/* CD904 8016CEC4 3C014040 */  lui        $at, (0x40400000 >> 16)
/* CD908 8016CEC8 4481A000 */  mtc1       $at, $f20
/* CD90C 8016CECC 37080002 */  ori        $t0, $t8, 0x2
/* CD910 8016CED0 AE880034 */  sw         $t0, 0x34($s4)
.L8016CED4_ovl3:
/* CD914 8016CED4 56420005 */  bnel       $s2, $v0, .L8016CEEC_ovl3
/* CD918 8016CED8 AE800030 */   sw        $zero, 0x30($s4)
/* CD91C 8016CEDC AE930030 */  sw         $s3, 0x30($s4)
/* CD920 8016CEE0 10000003 */  b          .L8016CEF0_ovl3
/* CD924 8016CEE4 8E82003C */   lw        $v0, 0x3C($s4)
/* CD928 8016CEE8 AE800030 */  sw         $zero, 0x30($s4)
.L8016CEEC_ovl3:
/* CD92C 8016CEEC 8E82003C */  lw         $v0, 0x3C($s4)
.L8016CEF0_ovl3:
/* CD930 8016CEF0 10400046 */  beqz       $v0, .L8016D00C_ovl3
/* CD934 8016CEF4 244B0001 */   addiu     $t3, $v0, 0x1
/* CD938 8016CEF8 8E830030 */  lw         $v1, 0x30($s4)
/* CD93C 8016CEFC 54600023 */  bnel       $v1, $zero, .L8016CF8C_ovl3
/* CD940 8016CF00 92840004 */   lbu       $a0, 0x4($s4)
/* CD944 8016CF04 92840004 */  lbu        $a0, 0x4($s4)
/* CD948 8016CF08 02A02825 */  or         $a1, $s5, $zero
/* CD94C 8016CF0C 50800008 */  beql       $a0, $zero, .L8016CF30_ovl3
/* CD950 8016CF10 3C040002 */   lui       $a0, (0x20017 >> 16)
/* CD954 8016CF14 1093000B */  beq        $a0, $s3, .L8016CF44_ovl3
/* CD958 8016CF18 3C050002 */   lui       $a1, (0x20009 >> 16)
/* CD95C 8016CF1C 50920011 */  beql       $a0, $s2, .L8016CF64_ovl3
/* CD960 8016CF20 92990006 */   lbu       $t9, 0x6($s4)
/* CD964 8016CF24 1000003B */  b          .L8016D014_ovl3
/* CD968 8016CF28 00000000 */   nop
/* CD96C 8016CF2C 3C040002 */  lui        $a0, (0x20017 >> 16)
.L8016CF30_ovl3:
/* CD970 8016CF30 4406A000 */  mfc1       $a2, $f20
/* CD974 8016CF34 0C02A9E3 */  jal        func_800AA78C
/* CD978 8016CF38 34840017 */   ori       $a0, $a0, (0x20017 & 0xFFFF)
.L8016CF3C_ovl5:
/* CD97C 8016CF3C 10000035 */  b          .L8016D014_ovl3
/* CD980 8016CF40 8E830030 */   lw        $v1, 0x30($s4)
.L8016CF44_ovl3:
/* CD984 8016CF44 3C040002 */  lui        $a0, (0x2015B >> 16)
/* CD988 8016CF48 4406A000 */  mfc1       $a2, $f20
/* CD98C 8016CF4C 3484015B */  ori        $a0, $a0, (0x2015B & 0xFFFF)
/* CD990 8016CF50 0C02A9E3 */  jal        func_800AA78C
.L8016CF54_ovl5:
/* CD994 8016CF54 34A50009 */   ori       $a1, $a1, (0x20009 & 0xFFFF)
/* CD998 8016CF58 1000002E */  b          .L8016D014_ovl3
/* CD99C 8016CF5C 8E830030 */   lw        $v1, 0x30($s4)
/* CD9A0 8016CF60 92990006 */  lbu        $t9, 0x6($s4)
.L8016CF64_ovl3:
/* CD9A4 8016CF64 24010011 */  addiu      $at, $zero, 0x11
/* CD9A8 8016CF68 3C040002 */  lui        $a0, (0x200B9 >> 16)
.L8016CF6C_ovl5:
/* CD9AC 8016CF6C 13210029 */  beq        $t9, $at, .L8016D014_ovl3
/* CD9B0 8016CF70 348400B9 */   ori       $a0, $a0, (0x200B9 & 0xFFFF)
/* CD9B4 8016CF74 4406A000 */  mfc1       $a2, $f20
/* CD9B8 8016CF78 0C02A9E3 */  jal        func_800AA78C
/* CD9BC 8016CF7C 02A02825 */   or        $a1, $s5, $zero
/* CD9C0 8016CF80 10000024 */  b          .L8016D014_ovl3
.L8016CF84_ovl5:
/* CD9C4 8016CF84 8E830030 */   lw        $v1, 0x30($s4)
.L8016CF88_ovl5:
/* CD9C8 8016CF88 92840004 */  lbu        $a0, 0x4($s4)
.L8016CF8C_ovl3:
/* CD9CC 8016CF8C 02A02825 */  or         $a1, $s5, $zero
/* CD9D0 8016CF90 50800008 */  beql       $a0, $zero, .L8016CFB4_ovl3
/* CD9D4 8016CF94 3C040002 */   lui       $a0, (0x20015 >> 16)
/* CD9D8 8016CF98 1093000B */  beq        $a0, $s3, .L8016CFC8_ovl3
/* CD9DC 8016CF9C 3C050002 */   lui       $a1, (0x20009 >> 16)
/* CD9E0 8016CFA0 50920011 */  beql       $a0, $s2, .L8016CFE8_ovl3
/* CD9E4 8016CFA4 92890006 */   lbu       $t1, 0x6($s4)
/* CD9E8 8016CFA8 1000001A */  b          .L8016D014_ovl3
/* CD9EC 8016CFAC 00000000 */   nop
glabel func_8016CFB0_ovl5
/* CD9F0 8016CFB0 3C040002 */  lui        $a0, (0x20015 >> 16)
.L8016CFB4_ovl3:
/* CD9F4 8016CFB4 4406A000 */  mfc1       $a2, $f20
/* CD9F8 8016CFB8 0C02A9E3 */  jal        func_800AA78C
/* CD9FC 8016CFBC 34840015 */   ori       $a0, $a0, (0x20015 & 0xFFFF)
/* CDA00 8016CFC0 10000014 */  b          .L8016D014_ovl3
/* CDA04 8016CFC4 8E830030 */   lw        $v1, 0x30($s4)
.L8016CFC8_ovl3:
/* CDA08 8016CFC8 3C040002 */  lui        $a0, (0x20159 >> 16)
/* CDA0C 8016CFCC 4406A000 */  mfc1       $a2, $f20
/* CDA10 8016CFD0 34840159 */  ori        $a0, $a0, (0x20159 & 0xFFFF)
/* CDA14 8016CFD4 0C02A9E3 */  jal        func_800AA78C
/* CDA18 8016CFD8 34A50009 */   ori       $a1, $a1, (0x20009 & 0xFFFF)
/* CDA1C 8016CFDC 1000000D */  b          .L8016D014_ovl3
/* CDA20 8016CFE0 8E830030 */   lw        $v1, 0x30($s4)
/* CDA24 8016CFE4 92890006 */  lbu        $t1, 0x6($s4)
.L8016CFE8_ovl3:
/* CDA28 8016CFE8 24010011 */  addiu      $at, $zero, 0x11
/* CDA2C 8016CFEC 3C040002 */  lui        $a0, (0x200B7 >> 16)
/* CDA30 8016CFF0 11210008 */  beq        $t1, $at, .L8016D014_ovl3
/* CDA34 8016CFF4 348400B7 */   ori       $a0, $a0, (0x200B7 & 0xFFFF)
/* CDA38 8016CFF8 4406A000 */  mfc1       $a2, $f20
/* CDA3C 8016CFFC 0C02A9E3 */  jal        func_800AA78C
/* CDA40 8016D000 02A02825 */   or        $a1, $s5, $zero
/* CDA44 8016D004 10000003 */  b          .L8016D014_ovl3
/* CDA48 8016D008 8E830030 */   lw        $v1, 0x30($s4)
.L8016D00C_ovl3:
/* CDA4C 8016D00C AE8B003C */  sw         $t3, 0x3C($s4)
/* CDA50 8016D010 8E830030 */  lw         $v1, 0x30($s4)
.L8016D014_ovl3:
/* CDA54 8016D014 54600020 */  bnel       $v1, $zero, .L8016D098_ovl3
/* CDA58 8016D018 92840004 */   lbu       $a0, 0x4($s4)
/* CDA5C 8016D01C 92840004 */  lbu        $a0, 0x4($s4)
/* CDA60 8016D020 3C050002 */  lui        $a1, (0x20018 >> 16)
/* CDA64 8016D024 34A50018 */  ori        $a1, $a1, (0x20018 & 0xFFFF)
/* CDA68 8016D028 10800007 */  beqz       $a0, .L8016D048_ovl3
/* CDA6C 8016D02C 00003025 */   or        $a2, $zero, $zero
/* CDA70 8016D030 1093000A */  beq        $a0, $s3, .L8016D05C_ovl3
/* CDA74 8016D034 3C050002 */   lui       $a1, (0x2015C >> 16)
/* CDA78 8016D038 1092000F */  beq        $a0, $s2, .L8016D078_ovl3
/* CDA7C 8016D03C 3C050002 */   lui       $a1, (0x200BA >> 16)
/* CDA80 8016D040 10000031 */  b          .L8016D108_ovl3
/* CDA84 8016D044 8E250000 */   lw        $a1, 0x0($s1)
.L8016D048_ovl3:
/* CDA88 8016D048 3C040002 */  lui        $a0, (0x20017 >> 16)
/* CDA8C 8016D04C 0C048C3A */  jal        func_801230E8
/* CDA90 8016D050 34840017 */   ori       $a0, $a0, (0x20017 & 0xFFFF)
/* CDA94 8016D054 1000002C */  b          .L8016D108_ovl3
/* CDA98 8016D058 8E250000 */   lw        $a1, 0x0($s1)
.L8016D05C_ovl3:
/* CDA9C 8016D05C 3C040002 */  lui        $a0, (0x2015B >> 16)
/* CDAA0 8016D060 3484015B */  ori        $a0, $a0, (0x2015B & 0xFFFF)
/* CDAA4 8016D064 34A5015C */  ori        $a1, $a1, (0x2015C & 0xFFFF)
/* CDAA8 8016D068 0C048C3A */  jal        func_801230E8
/* CDAAC 8016D06C 00003025 */   or        $a2, $zero, $zero
/* CDAB0 8016D070 10000025 */  b          .L8016D108_ovl3
/* CDAB4 8016D074 8E250000 */   lw        $a1, 0x0($s1)
.L8016D078_ovl3:
/* CDAB8 8016D078 3C040002 */  lui        $a0, (0x200B9 >> 16)
/* CDABC 8016D07C 348400B9 */  ori        $a0, $a0, (0x200B9 & 0xFFFF)
/* CDAC0 8016D080 34A500BA */  ori        $a1, $a1, (0x200BA & 0xFFFF)
/* CDAC4 8016D084 0C048C3A */  jal        func_801230E8
/* CDAC8 8016D088 00003025 */   or        $a2, $zero, $zero
/* CDACC 8016D08C 1000001E */  b          .L8016D108_ovl3
/* CDAD0 8016D090 8E250000 */   lw        $a1, 0x0($s1)
/* CDAD4 8016D094 92840004 */  lbu        $a0, 0x4($s4)
.L8016D098_ovl3:
/* CDAD8 8016D098 3C050002 */  lui        $a1, (0x20016 >> 16)
/* CDADC 8016D09C 34A50016 */  ori        $a1, $a1, (0x20016 & 0xFFFF)
/* CDAE0 8016D0A0 10800007 */  beqz       $a0, .L8016D0C0_ovl3
/* CDAE4 8016D0A4 00003025 */   or        $a2, $zero, $zero
/* CDAE8 8016D0A8 1093000A */  beq        $a0, $s3, .L8016D0D4_ovl3
/* CDAEC 8016D0AC 3C050002 */   lui       $a1, (0x2015A >> 16)
/* CDAF0 8016D0B0 1092000F */  beq        $a0, $s2, .L8016D0F0_ovl3
/* CDAF4 8016D0B4 3C050002 */   lui       $a1, (0x200B8 >> 16)
/* CDAF8 8016D0B8 10000013 */  b          .L8016D108_ovl3
/* CDAFC 8016D0BC 8E250000 */   lw        $a1, 0x0($s1)
.L8016D0C0_ovl3:
/* CDB00 8016D0C0 3C040002 */  lui        $a0, (0x20015 >> 16)
/* CDB04 8016D0C4 0C048C3A */  jal        func_801230E8
/* CDB08 8016D0C8 34840015 */   ori       $a0, $a0, (0x20015 & 0xFFFF)
/* CDB0C 8016D0CC 1000000E */  b          .L8016D108_ovl3
/* CDB10 8016D0D0 8E250000 */   lw        $a1, 0x0($s1)
.L8016D0D4_ovl3:
/* CDB14 8016D0D4 3C040002 */  lui        $a0, (0x20159 >> 16)
/* CDB18 8016D0D8 34840159 */  ori        $a0, $a0, (0x20159 & 0xFFFF)
/* CDB1C 8016D0DC 34A5015A */  ori        $a1, $a1, (0x2015A & 0xFFFF)
/* CDB20 8016D0E0 0C048C3A */  jal        func_801230E8
/* CDB24 8016D0E4 00003025 */   or        $a2, $zero, $zero
/* CDB28 8016D0E8 10000007 */  b          .L8016D108_ovl3
/* CDB2C 8016D0EC 8E250000 */   lw        $a1, 0x0($s1)
.L8016D0F0_ovl3:
/* CDB30 8016D0F0 3C040002 */  lui        $a0, (0x200B7 >> 16)
/* CDB34 8016D0F4 348400B7 */  ori        $a0, $a0, (0x200B7 & 0xFFFF)
/* CDB38 8016D0F8 34A500B8 */  ori        $a1, $a1, (0x200B8 & 0xFFFF)
/* CDB3C 8016D0FC 0C048C3A */  jal        func_801230E8
/* CDB40 8016D100 00003025 */   or        $a2, $zero, $zero
/* CDB44 8016D104 8E250000 */  lw         $a1, 0x0($s1)
.L8016D108_ovl3:
/* CDB48 8016D108 8CAC0000 */  lw         $t4, 0x0($a1)
/* CDB4C 8016D10C 240A000F */  addiu      $t2, $zero, 0xF
/* CDB50 8016D110 000C7080 */  sll        $t6, $t4, 2
/* CDB54 8016D114 020E6821 */  addu       $t5, $s0, $t6
/* CDB58 8016D118 ADAA0000 */  sw         $t2, 0x0($t5)
/* CDB5C 8016D11C 8CAF0000 */  lw         $t7, 0x0($a1)
/* CDB60 8016D120 000FC080 */  sll        $t8, $t7, 2
/* CDB64 8016D124 02181021 */  addu       $v0, $s0, $t8
/* CDB68 8016D128 8C430000 */  lw         $v1, 0x0($v0)
/* CDB6C 8016D12C 2468FFFF */  addiu      $t0, $v1, -0x1
/* CDB70 8016D130 1060000B */  beqz       $v1, .L8016D160_ovl3
/* CDB74 8016D134 AC480000 */   sw        $t0, 0x0($v0)
.L8016D138_ovl3:
/* CDB78 8016D138 0C002DAF */  jal        finish_current_thread
.L8016D13C_ovl5:
/* CDB7C 8016D13C 02602025 */   or        $a0, $s3, $zero
/* CDB80 8016D140 8E390000 */  lw         $t9, 0x0($s1)
/* CDB84 8016D144 8F290000 */  lw         $t1, 0x0($t9)
.L8016D148_ovl5:
/* CDB88 8016D148 00095880 */  sll        $t3, $t1, 2
/* CDB8C 8016D14C 020B1021 */  addu       $v0, $s0, $t3
/* CDB90 8016D150 8C430000 */  lw         $v1, 0x0($v0)
.L8016D154_ovl5:
/* CDB94 8016D154 246CFFFF */  addiu      $t4, $v1, -0x1
/* CDB98 8016D158 1460FFF7 */  bnez       $v1, .L8016D138_ovl3
/* CDB9C 8016D15C AC4C0000 */   sw        $t4, 0x0($v0)
.L8016D160_ovl3:
/* CDBA0 8016D160 3C0E800D */  lui        $t6, %hi(D_800D6B54)
/* CDBA4 8016D164 8DCE6B54 */  lw         $t6, %lo(D_800D6B54)($t6)
/* CDBA8 8016D168 55C00004 */  bnel       $t6, $zero, .L8016D17C_ovl3
/* CDBAC 8016D16C 8E820034 */   lw        $v0, 0x34($s4)
/* CDBB0 8016D170 0C029D9E */  jal        play_sound
/* CDBB4 8016D174 240400EB */   addiu     $a0, $zero, 0xEB
/* CDBB8 8016D178 8E820034 */  lw         $v0, 0x34($s4)
.L8016D17C_ovl3:
/* CDBBC 8016D17C 30420001 */  andi       $v0, $v0, 0x1
.L8016D180_ovl3:
/* CDBC0 8016D180 10400003 */  beqz       $v0, .L8016D190_ovl3
/* CDBC4 8016D184 00000000 */   nop
/* CDBC8 8016D188 1000FF52 */  b          .L8016CED4_ovl3
/* CDBCC 8016D18C 92820150 */   lbu       $v0, 0x150($s4)
.L8016D190_ovl3:
/* CDBD0 8016D190 0C002DAF */  jal        finish_current_thread
/* CDBD4 8016D194 02602025 */   or        $a0, $s3, $zero
/* CDBD8 8016D198 8E820034 */  lw         $v0, 0x34($s4)
/* CDBDC 8016D19C 1000FFF8 */  b          .L8016D180_ovl3
/* CDBE0 8016D1A0 30420001 */   andi      $v0, $v0, 0x1
/* CDBE4 8016D1A4 00000000 */  nop
/* CDBE8 8016D1A8 00000000 */  nop
/* CDBEC 8016D1AC 00000000 */  nop
/* CDBF0 8016D1B0 00000000 */  nop
/* CDBF4 8016D1B4 00000000 */  nop
/* CDBF8 8016D1B8 00000000 */  nop
/* CDBFC 8016D1BC 00000000 */  nop
/* CDC00 8016D1C0 8FBF0034 */  lw         $ra, 0x34($sp)
.L8016D1C4_ovl5:
/* CDC04 8016D1C4 D7B40010 */  ldc1       $f20, 0x10($sp)
/* CDC08 8016D1C8 8FB0001C */  lw         $s0, 0x1C($sp)
/* CDC0C 8016D1CC 8FB10020 */  lw         $s1, 0x20($sp)
.L8016D1D0_ovl5:
/* CDC10 8016D1D0 8FB20024 */  lw         $s2, 0x24($sp)
/* CDC14 8016D1D4 8FB30028 */  lw         $s3, 0x28($sp)
/* CDC18 8016D1D8 8FB4002C */  lw         $s4, 0x2C($sp)
.L8016D1DC_ovl5:
/* CDC1C 8016D1DC 8FB50030 */  lw         $s5, 0x30($sp)
/* CDC20 8016D1E0 03E00008 */  jr         $ra
/* CDC24 8016D1E4 27BD0038 */   addiu     $sp, $sp, 0x38
