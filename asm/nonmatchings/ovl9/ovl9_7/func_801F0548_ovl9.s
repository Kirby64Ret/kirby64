nonmatching func_801F0548_ovl9, 0x49C

glabel func_801F0548_ovl9
    /* 19E598 801F0548 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 19E59C 801F054C AFB00018 */  sw         $s0, 0x18($sp)
    /* 19E5A0 801F0550 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 19E5A4 801F0554 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* 19E5A8 801F0558 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 19E5AC 801F055C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 19E5B0 801F0560 AFA40048 */  sw         $a0, 0x48($sp)
    /* 19E5B4 801F0564 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 19E5B8 801F0568 3C19800E */  lui        $t9, %hi(D_800E1B50)
    /* 19E5BC 801F056C 000FC080 */  sll        $t8, $t7, 2
    /* 19E5C0 801F0570 0338C821 */  addu       $t9, $t9, $t8
    /* 19E5C4 801F0574 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
    /* 19E5C8 801F0578 0C066EB2 */  jal        func_8019BAC8_ovl7
    /* 19E5CC 801F057C AFB9003C */   sw        $t9, 0x3C($sp)
    /* 19E5D0 801F0580 8FAB003C */  lw         $t3, 0x3C($sp)
    /* 19E5D4 801F0584 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* 19E5D8 801F0588 44812000 */  mtc1       $at, $f4
    /* 19E5DC 801F058C 8D6C0080 */  lw         $t4, 0x80($t3)
    /* 19E5E0 801F0590 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 19E5E4 801F0594 3C0D801F */  lui        $t5, %hi(func_801F09E4_ovl9)
    /* 19E5E8 801F0598 E5840010 */  swc1       $f4, 0x10($t4)
    /* 19E5EC 801F059C 8E020000 */  lw         $v0, 0x0($s0)
    /* 19E5F0 801F05A0 25AD09E4 */  addiu      $t5, $t5, %lo(func_801F09E4_ovl9)
    /* 19E5F4 801F05A4 3C0C800E */  lui        $t4, %hi(D_800E1B50)
    /* 19E5F8 801F05A8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 19E5FC 801F05AC 3C18801D */  lui        $t8, %hi(D_801CB4DC_ovl7)
    /* 19E600 801F05B0 2718B4DC */  addiu      $t8, $t8, %lo(D_801CB4DC_ovl7)
    /* 19E604 801F05B4 000E7880 */  sll        $t7, $t6, 2
    /* 19E608 801F05B8 002F0821 */  addu       $at, $at, $t7
    /* 19E60C 801F05BC AC2DF150 */  sw         $t5, %lo(D_800DF150)($at)
    /* 19E610 801F05C0 8C590000 */  lw         $t9, 0x0($v0)
    /* 19E614 801F05C4 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 19E618 801F05C8 3C0F800E */  lui        $t7, %hi(D_800E7880)
    /* 19E61C 801F05CC 00195880 */  sll        $t3, $t9, 2
    /* 19E620 801F05D0 018B6021 */  addu       $t4, $t4, $t3
    /* 19E624 801F05D4 8D8C1B50 */  lw         $t4, %lo(D_800E1B50)($t4)
    /* 19E628 801F05D8 3C0A800E */  lui        $t2, %hi(D_800E0D50)
    /* 19E62C 801F05DC 254A0D50 */  addiu      $t2, $t2, %lo(D_800E0D50)
    /* 19E630 801F05E0 AD980098 */  sw         $t8, 0x98($t4)
    /* 19E634 801F05E4 8E020000 */  lw         $v0, 0x0($s0)
    /* 19E638 801F05E8 3C08800E */  lui        $t0, %hi(D_800E6A10)
    /* 19E63C 801F05EC 25086A10 */  addiu      $t0, $t0, %lo(D_800E6A10)
    /* 19E640 801F05F0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 19E644 801F05F4 3C09800E */  lui        $t1, %hi(gEntitiesNextPosYArray)
    /* 19E648 801F05F8 000E6880 */  sll        $t5, $t6, 2
    /* 19E64C 801F05FC 002D0821 */  addu       $at, $at, $t5
    /* 19E650 801F0600 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* 19E654 801F0604 8C460000 */  lw         $a2, 0x0($v0)
    /* 19E658 801F0608 01E67821 */  addu       $t7, $t7, $a2
    /* 19E65C 801F060C 91EF7880 */  lbu        $t7, %lo(D_800E7880)($t7)
    /* 19E660 801F0610 00061880 */  sll        $v1, $a2, 2
    /* 19E664 801F0614 0143C821 */  addu       $t9, $t2, $v1
    /* 19E668 801F0618 11E0001D */  beqz       $t7, .L801F0690_ovl9
    /* 19E66C 801F061C 00000000 */   nop
    /* 19E670 801F0620 8F240000 */  lw         $a0, 0x0($t9)
    /* 19E674 801F0624 25292790 */  addiu      $t1, $t1, %lo(gEntitiesNextPosYArray)
    /* 19E678 801F0628 01236021 */  addu       $t4, $t1, $v1
    /* 19E67C 801F062C 00042080 */  sll        $a0, $a0, 2
    /* 19E680 801F0630 0124C021 */  addu       $t8, $t1, $a0
    /* 19E684 801F0634 C7060000 */  lwc1       $f6, 0x0($t8)
    /* 19E688 801F0638 01445821 */  addu       $t3, $t2, $a0
    /* 19E68C 801F063C 8D670000 */  lw         $a3, 0x0($t3)
    /* 19E690 801F0640 E5860000 */  swc1       $f6, 0x0($t4)
    /* 19E694 801F0644 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 19E698 801F0648 00072880 */  sll        $a1, $a3, 2
    /* 19E69C 801F064C 01057021 */  addu       $t6, $t0, $a1
    /* 19E6A0 801F0650 C5C80000 */  lwc1       $f8, 0x0($t6)
    /* 19E6A4 801F0654 000D7880 */  sll        $t7, $t5, 2
    /* 19E6A8 801F0658 010FC821 */  addu       $t9, $t0, $t7
    /* 19E6AC 801F065C E7280000 */  swc1       $f8, 0x0($t9)
    /* 19E6B0 801F0660 8C430000 */  lw         $v1, 0x0($v0)
    /* 19E6B4 801F0664 3C01800F */  lui        $at, %hi(D_800EC660)
    /* 19E6B8 801F0668 00031880 */  sll        $v1, $v1, 2
    /* 19E6BC 801F066C 01035821 */  addu       $t3, $t0, $v1
    /* 19E6C0 801F0670 00230821 */  addu       $at, $at, $v1
    /* 19E6C4 801F0674 C430C660 */  lwc1       $f16, %lo(D_800EC660)($at)
    /* 19E6C8 801F0678 C56A0000 */  lwc1       $f10, 0x0($t3)
    /* 19E6CC 801F067C 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 19E6D0 801F0680 00230821 */  addu       $at, $at, $v1
    /* 19E6D4 801F0684 46105482 */  mul.s      $f18, $f10, $f16
    /* 19E6D8 801F0688 10000025 */  b          .L801F0720_ovl9
    /* 19E6DC 801F068C E432A6E0 */   swc1      $f18, %lo(D_800EA6E0)($at)
  .L801F0690_ovl9:
    /* 19E6E0 801F0690 3C0A800E */  lui        $t2, %hi(D_800E0D50)
    /* 19E6E4 801F0694 254A0D50 */  addiu      $t2, $t2, %lo(D_800E0D50)
    /* 19E6E8 801F0698 00061880 */  sll        $v1, $a2, 2
    /* 19E6EC 801F069C 0143C021 */  addu       $t8, $t2, $v1
    /* 19E6F0 801F06A0 8F070000 */  lw         $a3, 0x0($t8)
    /* 19E6F4 801F06A4 3C0C800E */  lui        $t4, %hi(D_800DD710)
    /* 19E6F8 801F06A8 2401FFFF */  addiu      $at, $zero, -0x1
    /* 19E6FC 801F06AC 00072880 */  sll        $a1, $a3, 2
    /* 19E700 801F06B0 01856021 */  addu       $t4, $t4, $a1
    /* 19E704 801F06B4 8D8CD710 */  lw         $t4, %lo(D_800DD710)($t4)
    /* 19E708 801F06B8 11810004 */  beq        $t4, $at, .L801F06CC_ovl9
    /* 19E70C 801F06BC 3C0E800F */   lui       $t6, %hi(D_800EBBE0)
    /* 19E710 801F06C0 01C57021 */  addu       $t6, $t6, $a1
    /* 19E714 801F06C4 8DCEBBE0 */  lw         $t6, %lo(D_800EBBE0)($t6)
    /* 19E718 801F06C8 10CE0007 */  beq        $a2, $t6, .L801F06E8_ovl9
  .L801F06CC_ovl9:
    /* 19E71C 801F06CC 30C4FFFF */   andi      $a0, $a2, 0xFFFF
    /* 19E720 801F06D0 0C067656 */  jal        func_8019D958_ovl7
    /* 19E724 801F06D4 AFA50024 */   sw        $a1, 0x24($sp)
    /* 19E728 801F06D8 8E020000 */  lw         $v0, 0x0($s0)
    /* 19E72C 801F06DC 8FA50024 */  lw         $a1, 0x24($sp)
    /* 19E730 801F06E0 8C430000 */  lw         $v1, 0x0($v0)
    /* 19E734 801F06E4 00031880 */  sll        $v1, $v1, 2
  .L801F06E8_ovl9:
    /* 19E738 801F06E8 3C08800E */  lui        $t0, %hi(D_800E6A10)
    /* 19E73C 801F06EC 25086A10 */  addiu      $t0, $t0, %lo(D_800E6A10)
    /* 19E740 801F06F0 01056821 */  addu       $t5, $t0, $a1
    /* 19E744 801F06F4 C5A40000 */  lwc1       $f4, 0x0($t5)
    /* 19E748 801F06F8 01037821 */  addu       $t7, $t0, $v1
    /* 19E74C 801F06FC 3C01800F */  lui        $at, %hi(D_800EADE0)
    /* 19E750 801F0700 E5E40000 */  swc1       $f4, 0x0($t7)
    /* 19E754 801F0704 8C590000 */  lw         $t9, 0x0($v0)
    /* 19E758 801F0708 00250821 */  addu       $at, $at, $a1
    /* 19E75C 801F070C C426ADE0 */  lwc1       $f6, %lo(D_800EADE0)($at)
    /* 19E760 801F0710 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 19E764 801F0714 00195880 */  sll        $t3, $t9, 2
    /* 19E768 801F0718 002B0821 */  addu       $at, $at, $t3
    /* 19E76C 801F071C E426A6E0 */  swc1       $f6, %lo(D_800EA6E0)($at)
  .L801F0720_ovl9:
    /* 19E770 801F0720 3C03800E */  lui        $v1, %hi(D_800E5F90)
    /* 19E774 801F0724 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 19E778 801F0728 24635F90 */  addiu      $v1, $v1, %lo(D_800E5F90)
    /* 19E77C 801F072C 0065C021 */  addu       $t8, $v1, $a1
    /* 19E780 801F0730 8F0C0000 */  lw         $t4, 0x0($t8)
    /* 19E784 801F0734 000E6880 */  sll        $t5, $t6, 2
    /* 19E788 801F0738 006D7821 */  addu       $t7, $v1, $t5
    /* 19E78C 801F073C ADEC0000 */  sw         $t4, 0x0($t7)
    /* 19E790 801F0740 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 19E794 801F0744 3C04800E */  lui        $a0, %hi(D_800E6BD0)
    /* 19E798 801F0748 24846BD0 */  addiu      $a0, $a0, %lo(D_800E6BD0)
    /* 19E79C 801F074C 0085C821 */  addu       $t9, $a0, $a1
    /* 19E7A0 801F0750 C7280000 */  lwc1       $f8, 0x0($t9)
    /* 19E7A4 801F0754 000BC080 */  sll        $t8, $t3, 2
    /* 19E7A8 801F0758 00987021 */  addu       $t6, $a0, $t8
    /* 19E7AC 801F075C 0C02CCFD */  jal        func_800B33F4
    /* 19E7B0 801F0760 E5C80000 */   swc1      $f8, 0x0($t6)
    /* 19E7B4 801F0764 3C040001 */  lui        $a0, (0x10089 >> 16)
    /* 19E7B8 801F0768 34840089 */  ori        $a0, $a0, (0x10089 & 0xFFFF)
    /* 19E7BC 801F076C 24050023 */  addiu      $a1, $zero, 0x23
    /* 19E7C0 801F0770 0C02A619 */  jal        func_800A9864
    /* 19E7C4 801F0774 24060010 */   addiu     $a2, $zero, 0x10
    /* 19E7C8 801F0778 3C040001 */  lui        $a0, (0x1051C >> 16)
    /* 19E7CC 801F077C 0C02A806 */  jal        func_800AA018
    /* 19E7D0 801F0780 3484051C */   ori       $a0, $a0, (0x1051C & 0xFFFF)
    /* 19E7D4 801F0784 8E020000 */  lw         $v0, 0x0($s0)
    /* 19E7D8 801F0788 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 19E7DC 801F078C 3C03800E */  lui        $v1, %hi(D_800E7880)
    /* 19E7E0 801F0790 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 19E7E4 801F0794 000D6080 */  sll        $t4, $t5, 2
    /* 19E7E8 801F0798 002C0821 */  addu       $at, $at, $t4
    /* 19E7EC 801F079C AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
    /* 19E7F0 801F07A0 8C460000 */  lw         $a2, 0x0($v0)
    /* 19E7F4 801F07A4 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 19E7F8 801F07A8 00661821 */  addu       $v1, $v1, $a2
    /* 19E7FC 801F07AC 90637880 */  lbu        $v1, %lo(D_800E7880)($v1)
    /* 19E800 801F07B0 0006C880 */  sll        $t9, $a2, 2
    /* 19E804 801F07B4 00390821 */  addu       $at, $at, $t9
    /* 19E808 801F07B8 10600006 */  beqz       $v1, .L801F07D4_ovl9
    /* 19E80C 801F07BC 30640001 */   andi      $a0, $v1, 0x1
    /* 19E810 801F07C0 24010001 */  addiu      $at, $zero, 0x1
    /* 19E814 801F07C4 10610025 */  beq        $v1, $at, .L801F085C_ovl9
    /* 19E818 801F07C8 00047880 */   sll       $t7, $a0, 2
    /* 19E81C 801F07CC 1000004A */  b          .L801F08F8_ovl9
    /* 19E820 801F07D0 AFAF0030 */   sw        $t7, 0x30($sp)
  .L801F07D4_ovl9:
    /* 19E824 801F07D4 C42CA6E0 */  lwc1       $f12, %lo(D_800EA6E0)($at)
    /* 19E828 801F07D8 0C00B5B8 */  jal        sinf
    /* 19E82C 801F07DC AFA40040 */   sw        $a0, 0x40($sp)
    /* 19E830 801F07E0 8FA40040 */  lw         $a0, 0x40($sp)
    /* 19E834 801F07E4 3C0E8022 */  lui        $t6, %hi(D_8021C300_ovl9)
    /* 19E838 801F07E8 25CEC300 */  addiu      $t6, $t6, %lo(D_8021C300_ovl9)
    /* 19E83C 801F07EC 00045880 */  sll        $t3, $a0, 2
    /* 19E840 801F07F0 016E1821 */  addu       $v1, $t3, $t6
    /* 19E844 801F07F4 C46A0000 */  lwc1       $f10, 0x0($v1)
    /* 19E848 801F07F8 8E020000 */  lw         $v0, 0x0($s0)
    /* 19E84C 801F07FC AFAB0030 */  sw         $t3, 0x30($sp)
    /* 19E850 801F0800 46005402 */  mul.s      $f16, $f10, $f0
    /* 19E854 801F0804 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 19E858 801F0808 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* 19E85C 801F080C 000D6080 */  sll        $t4, $t5, 2
    /* 19E860 801F0810 002C0821 */  addu       $at, $at, $t4
    /* 19E864 801F0814 E43064D0 */  swc1       $f16, %lo(D_800E64D0)($at)
    /* 19E868 801F0818 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 19E86C 801F081C 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 19E870 801F0820 AFA3002C */  sw         $v1, 0x2C($sp)
    /* 19E874 801F0824 000FC880 */  sll        $t9, $t7, 2
    /* 19E878 801F0828 00390821 */  addu       $at, $at, $t9
    /* 19E87C 801F082C 0C00D604 */  jal        cosf
    /* 19E880 801F0830 C42CA6E0 */   lwc1      $f12, %lo(D_800EA6E0)($at)
    /* 19E884 801F0834 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 19E888 801F0838 8E0B0000 */  lw         $t3, 0x0($s0)
    /* 19E88C 801F083C 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 19E890 801F0840 C4720000 */  lwc1       $f18, 0x0($v1)
    /* 19E894 801F0844 8D780000 */  lw         $t8, 0x0($t3)
    /* 19E898 801F0848 46009102 */  mul.s      $f4, $f18, $f0
    /* 19E89C 801F084C 00187080 */  sll        $t6, $t8, 2
    /* 19E8A0 801F0850 002E0821 */  addu       $at, $at, $t6
    /* 19E8A4 801F0854 10000028 */  b          .L801F08F8_ovl9
    /* 19E8A8 801F0858 E4243210 */   swc1      $f4, %lo(D_800E3210)($at)
  .L801F085C_ovl9:
    /* 19E8AC 801F085C 00066880 */  sll        $t5, $a2, 2
    /* 19E8B0 801F0860 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 19E8B4 801F0864 002D0821 */  addu       $at, $at, $t5
    /* 19E8B8 801F0868 C42CA6E0 */  lwc1       $f12, %lo(D_800EA6E0)($at)
    /* 19E8BC 801F086C 0C00B5B8 */  jal        sinf
    /* 19E8C0 801F0870 AFA40040 */   sw        $a0, 0x40($sp)
    /* 19E8C4 801F0874 8FA40040 */  lw         $a0, 0x40($sp)
    /* 19E8C8 801F0878 3C0C8022 */  lui        $t4, %hi(D_8021C300_ovl9)
    /* 19E8CC 801F087C 258CC300 */  addiu      $t4, $t4, %lo(D_8021C300_ovl9)
    /* 19E8D0 801F0880 00042880 */  sll        $a1, $a0, 2
    /* 19E8D4 801F0884 00AC1821 */  addu       $v1, $a1, $t4
    /* 19E8D8 801F0888 C4660000 */  lwc1       $f6, 0x0($v1)
    /* 19E8DC 801F088C 8E020000 */  lw         $v0, 0x0($s0)
    /* 19E8E0 801F0890 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* 19E8E4 801F0894 46003202 */  mul.s      $f8, $f6, $f0
    /* 19E8E8 801F0898 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 19E8EC 801F089C 000FC880 */  sll        $t9, $t7, 2
    /* 19E8F0 801F08A0 00390821 */  addu       $at, $at, $t9
    /* 19E8F4 801F08A4 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
    /* 19E8F8 801F08A8 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 19E8FC 801F08AC 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 19E900 801F08B0 AFA50030 */  sw         $a1, 0x30($sp)
    /* 19E904 801F08B4 000BC080 */  sll        $t8, $t3, 2
    /* 19E908 801F08B8 00380821 */  addu       $at, $at, $t8
    /* 19E90C 801F08BC C42CA6E0 */  lwc1       $f12, %lo(D_800EA6E0)($at)
    /* 19E910 801F08C0 0C00D604 */  jal        cosf
    /* 19E914 801F08C4 AFA3002C */   sw        $v1, 0x2C($sp)
    /* 19E918 801F08C8 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 19E91C 801F08CC 3C014120 */  lui        $at, (0x41200000 >> 16)
    /* 19E920 801F08D0 44818000 */  mtc1       $at, $f16
    /* 19E924 801F08D4 C46A0000 */  lwc1       $f10, 0x0($v1)
    /* 19E928 801F08D8 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 19E92C 801F08DC 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 19E930 801F08E0 46105481 */  sub.s      $f18, $f10, $f16
    /* 19E934 801F08E4 8DCD0000 */  lw         $t5, 0x0($t6)
    /* 19E938 801F08E8 46009102 */  mul.s      $f4, $f18, $f0
    /* 19E93C 801F08EC 000D6080 */  sll        $t4, $t5, 2
    /* 19E940 801F08F0 002C0821 */  addu       $at, $at, $t4
    /* 19E944 801F08F4 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
  .L801F08F8_ovl9:
    /* 19E948 801F08F8 0C002DAF */  jal        ohSleep
    /* 19E94C 801F08FC 24040001 */   addiu     $a0, $zero, 0x1
    /* 19E950 801F0900 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 19E954 801F0904 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 19E958 801F0908 8DF90000 */  lw         $t9, 0x0($t7)
    /* 19E95C 801F090C 00195880 */  sll        $t3, $t9, 2
    /* 19E960 801F0910 002B0821 */  addu       $at, $at, $t3
    /* 19E964 801F0914 0C00B5B8 */  jal        sinf
    /* 19E968 801F0918 C42CA6E0 */   lwc1      $f12, %lo(D_800EA6E0)($at)
    /* 19E96C 801F091C 8FB80030 */  lw         $t8, 0x30($sp)
    /* 19E970 801F0920 3C0E8022 */  lui        $t6, %hi(D_8021C308_ovl9)
    /* 19E974 801F0924 25CEC308 */  addiu      $t6, $t6, %lo(D_8021C308_ovl9)
    /* 19E978 801F0928 030E1821 */  addu       $v1, $t8, $t6
    /* 19E97C 801F092C C4660000 */  lwc1       $f6, 0x0($v1)
    /* 19E980 801F0930 8E020000 */  lw         $v0, 0x0($s0)
    /* 19E984 801F0934 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* 19E988 801F0938 46003202 */  mul.s      $f8, $f6, $f0
    /* 19E98C 801F093C 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 19E990 801F0940 000D6080 */  sll        $t4, $t5, 2
    /* 19E994 801F0944 002C0821 */  addu       $at, $at, $t4
    /* 19E998 801F0948 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
    /* 19E99C 801F094C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 19E9A0 801F0950 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 19E9A4 801F0954 AFA3002C */  sw         $v1, 0x2C($sp)
    /* 19E9A8 801F0958 000FC880 */  sll        $t9, $t7, 2
    /* 19E9AC 801F095C 00390821 */  addu       $at, $at, $t9
    /* 19E9B0 801F0960 0C00D604 */  jal        cosf
    /* 19E9B4 801F0964 C42CA6E0 */   lwc1      $f12, %lo(D_800EA6E0)($at)
    /* 19E9B8 801F0968 8FA3002C */  lw         $v1, 0x2C($sp)
    /* 19E9BC 801F096C 8E020000 */  lw         $v0, 0x0($s0)
    /* 19E9C0 801F0970 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 19E9C4 801F0974 C46A0000 */  lwc1       $f10, 0x0($v1)
    /* 19E9C8 801F0978 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 19E9CC 801F097C 3C0E8022 */  lui        $t6, %hi(D_8021C308_ovl9)
    /* 19E9D0 801F0980 46005402 */  mul.s      $f16, $f10, $f0
    /* 19E9D4 801F0984 000BC080 */  sll        $t8, $t3, 2
    /* 19E9D8 801F0988 00380821 */  addu       $at, $at, $t8
    /* 19E9DC 801F098C 25CEC308 */  addiu      $t6, $t6, %lo(D_8021C308_ovl9)
    /* 19E9E0 801F0990 106E0005 */  beq        $v1, $t6, .L801F09A8_ovl9
    /* 19E9E4 801F0994 E4303210 */   swc1      $f16, %lo(D_800E3210)($at)
    /* 19E9E8 801F0998 0C002DAF */  jal        ohSleep
    /* 19E9EC 801F099C 24040003 */   addiu     $a0, $zero, 0x3
    /* 19E9F0 801F09A0 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 19E9F4 801F09A4 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
  .L801F09A8_ovl9:
    /* 19E9F8 801F09A8 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 19E9FC 801F09AC 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 19EA00 801F09B0 240D0001 */  addiu      $t5, $zero, 0x1
    /* 19EA04 801F09B4 000C7880 */  sll        $t7, $t4, 2
    /* 19EA08 801F09B8 002F0821 */  addu       $at, $at, $t7
    /* 19EA0C 801F09BC AC2D98E0 */  sw         $t5, %lo(D_800E98E0)($at)
    /* 19EA10 801F09C0 0C002DAF */  jal        ohSleep
    /* 19EA14 801F09C4 2404003C */   addiu     $a0, $zero, 0x3C
    /* 19EA18 801F09C8 0C06B3E1 */  jal        func_801ACF84_ovl7
    /* 19EA1C 801F09CC 8FA40048 */   lw        $a0, 0x48($sp)
    /* 19EA20 801F09D0 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 19EA24 801F09D4 8FB00018 */  lw         $s0, 0x18($sp)
    /* 19EA28 801F09D8 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 19EA2C 801F09DC 03E00008 */  jr         $ra
    /* 19EA30 801F09E0 00000000 */   nop
endlabel func_801F0548_ovl9
.size func_801F0548_ovl9, . - func_801F0548_ovl9
