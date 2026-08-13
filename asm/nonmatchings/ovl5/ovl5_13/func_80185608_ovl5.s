nonmatching func_80185608_ovl5, 0x1BC

glabel func_80185608_ovl5
    /* 12CA78 80185608 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 12CA7C 8018560C AFB4002C */  sw         $s4, 0x2C($sp)
    /* 12CA80 80185610 3C0E8019 */  lui        $t6, %hi(D_8018A58C_ovl5)
    /* 12CA84 80185614 27B40040 */  addiu      $s4, $sp, 0x40
    /* 12CA88 80185618 AFB30028 */  sw         $s3, 0x28($sp)
    /* 12CA8C 8018561C 25CEA58C */  addiu      $t6, $t6, %lo(D_8018A58C_ovl5)
    /* 12CA90 80185620 00809825 */  or         $s3, $a0, $zero
    /* 12CA94 80185624 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 12CA98 80185628 AFB50030 */  sw         $s5, 0x30($sp)
    /* 12CA9C 8018562C AFB20024 */  sw         $s2, 0x24($sp)
    /* 12CAA0 80185630 AFB10020 */  sw         $s1, 0x20($sp)
    /* 12CAA4 80185634 AFB0001C */  sw         $s0, 0x1C($sp)
    /* 12CAA8 80185638 25C80024 */  addiu      $t0, $t6, 0x24
    /* 12CAAC 8018563C 0280C825 */  or         $t9, $s4, $zero
  .L80185640_ovl5:
    /* 12CAB0 80185640 8DD80000 */  lw         $t8, 0x0($t6)
    /* 12CAB4 80185644 25CE000C */  addiu      $t6, $t6, 0xC
    /* 12CAB8 80185648 2739000C */  addiu      $t9, $t9, 0xC
    /* 12CABC 8018564C AF38FFF4 */  sw         $t8, -0xC($t9)
    /* 12CAC0 80185650 8DCFFFF8 */  lw         $t7, -0x8($t6)
    /* 12CAC4 80185654 AF2FFFF8 */  sw         $t7, -0x8($t9)
    /* 12CAC8 80185658 8DD8FFFC */  lw         $t8, -0x4($t6)
    /* 12CACC 8018565C 15C8FFF8 */  bne        $t6, $t0, .L80185640_ovl5
    /* 12CAD0 80185660 AF38FFFC */   sw        $t8, -0x4($t9)
    /* 12CAD4 80185664 8DD80000 */  lw         $t8, 0x0($t6)
    /* 12CAD8 80185668 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 12CADC 8018566C 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 12CAE0 80185670 AF380000 */  sw         $t8, 0x0($t9)
    /* 12CAE4 80185674 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 12CAE8 80185678 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 12CAEC 8018567C 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 12CAF0 80185680 8C490000 */  lw         $t1, 0x0($v0)
    /* 12CAF4 80185684 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* 12CAF8 80185688 00095080 */  sll        $t2, $t1, 2
    /* 12CAFC 8018568C 002A0821 */  addu       $at, $at, $t2
    /* 12CB00 80185690 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
    /* 12CB04 80185694 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 12CB08 80185698 000B6080 */  sll        $t4, $t3, 2
    /* 12CB0C 8018569C 008C2021 */  addu       $a0, $a0, $t4
    /* 12CB10 801856A0 0C02C7DA */  jal        setProcessMain
    /* 12CB14 801856A4 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 12CB18 801856A8 3C158019 */  lui        $s5, %hi(D_8018EE18_ovl5)
    /* 12CB1C 801856AC 26B5EE18 */  addiu      $s5, $s5, %lo(D_8018EE18_ovl5)
    /* 12CB20 801856B0 3C05800B */  lui        $a1, %hi(func_800AD1A0)
    /* 12CB24 801856B4 240D0012 */  addiu      $t5, $zero, 0x12
    /* 12CB28 801856B8 92B00000 */  lbu        $s0, 0x0($s5)
    /* 12CB2C 801856BC AFAD0010 */  sw         $t5, 0x10($sp)
    /* 12CB30 801856C0 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
    /* 12CB34 801856C4 02602025 */  or         $a0, $s3, $zero
    /* 12CB38 801856C8 24060012 */  addiu      $a2, $zero, 0x12
    /* 12CB3C 801856CC 0C00297F */  jal        omLinkGObjDL
    /* 12CB40 801856D0 3C078000 */   lui       $a3, (0x80000000 >> 16)
    /* 12CB44 801856D4 02602025 */  or         $a0, $s3, $zero
    /* 12CB48 801856D8 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12CB4C 801856DC 8FA50064 */   lw        $a1, 0x64($sp)
    /* 12CB50 801856E0 3C038019 */  lui        $v1, %hi(D_8018AB18_ovl5)
    /* 12CB54 801856E4 2463AB18 */  addiu      $v1, $v1, %lo(D_8018AB18_ovl5)
    /* 12CB58 801856E8 C4640000 */  lwc1       $f4, 0x0($v1)
    /* 12CB5C 801856EC 3C058019 */  lui        $a1, %hi(D_8018AAF0_ovl5)
    /* 12CB60 801856F0 24A5AAF0 */  addiu      $a1, $a1, %lo(D_8018AAF0_ovl5)
    /* 12CB64 801856F4 E4440020 */  swc1       $f4, 0x20($v0)
    /* 12CB68 801856F8 C4660004 */  lwc1       $f6, 0x4($v1)
    /* 12CB6C 801856FC 02602025 */  or         $a0, $s3, $zero
    /* 12CB70 80185700 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12CB74 80185704 E4460024 */   swc1      $f6, 0x24($v0)
    /* 12CB78 80185708 00104080 */  sll        $t0, $s0, 2
    /* 12CB7C 8018570C 02887021 */  addu       $t6, $s4, $t0
    /* 12CB80 80185710 8DC50004 */  lw         $a1, 0x4($t6)
    /* 12CB84 80185714 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12CB88 80185718 02602025 */   or        $a0, $s3, $zero
    /* 12CB8C 8018571C 3C128019 */  lui        $s2, %hi(D_8018AB10_ovl5)
    /* 12CB90 80185720 2652AB10 */  addiu      $s2, $s2, %lo(D_8018AB10_ovl5)
    /* 12CB94 80185724 C6480000 */  lwc1       $f8, 0x0($s2)
    /* 12CB98 80185728 00408825 */  or         $s1, $v0, $zero
    /* 12CB9C 8018572C E4480020 */  swc1       $f8, 0x20($v0)
    /* 12CBA0 80185730 C64A0004 */  lwc1       $f10, 0x4($s2)
    /* 12CBA4 80185734 E44A0024 */  swc1       $f10, 0x24($v0)
    /* 12CBA8 80185738 92A20000 */  lbu        $v0, 0x0($s5)
  .L8018573C_ovl5:
    /* 12CBAC 8018573C 02202025 */  or         $a0, $s1, $zero
    /* 12CBB0 80185740 1202000D */  beq        $s0, $v0, .L80185778_ovl5
    /* 12CBB4 80185744 00000000 */   nop
    /* 12CBB8 80185748 0C02B2DF */  jal        func_800ACB7C
    /* 12CBBC 8018574C 00408025 */   or        $s0, $v0, $zero
    /* 12CBC0 80185750 0010C880 */  sll        $t9, $s0, 2
    /* 12CBC4 80185754 02997821 */  addu       $t7, $s4, $t9
    /* 12CBC8 80185758 8DE50004 */  lw         $a1, 0x4($t7)
    /* 12CBCC 8018575C 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12CBD0 80185760 02602025 */   or        $a0, $s3, $zero
    /* 12CBD4 80185764 C6500000 */  lwc1       $f16, 0x0($s2)
    /* 12CBD8 80185768 00408825 */  or         $s1, $v0, $zero
    /* 12CBDC 8018576C E4500020 */  swc1       $f16, 0x20($v0)
    /* 12CBE0 80185770 C6520004 */  lwc1       $f18, 0x4($s2)
    /* 12CBE4 80185774 E4520024 */  swc1       $f18, 0x24($v0)
  .L80185778_ovl5:
    /* 12CBE8 80185778 0C002DAF */  jal        ohSleep
    /* 12CBEC 8018577C 24040001 */   addiu     $a0, $zero, 0x1
    /* 12CBF0 80185780 1000FFEE */  b          .L8018573C_ovl5
    /* 12CBF4 80185784 92A20000 */   lbu       $v0, 0x0($s5)
    /* 12CBF8 80185788 00000000 */  nop
    /* 12CBFC 8018578C 00000000 */  nop
    /* 12CC00 80185790 00000000 */  nop
    /* 12CC04 80185794 00000000 */  nop
    /* 12CC08 80185798 00000000 */  nop
    /* 12CC0C 8018579C 00000000 */  nop
    /* 12CC10 801857A0 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 12CC14 801857A4 8FB0001C */  lw         $s0, 0x1C($sp)
    /* 12CC18 801857A8 8FB10020 */  lw         $s1, 0x20($sp)
    /* 12CC1C 801857AC 8FB20024 */  lw         $s2, 0x24($sp)
    /* 12CC20 801857B0 8FB30028 */  lw         $s3, 0x28($sp)
    /* 12CC24 801857B4 8FB4002C */  lw         $s4, 0x2C($sp)
    /* 12CC28 801857B8 8FB50030 */  lw         $s5, 0x30($sp)
    /* 12CC2C 801857BC 03E00008 */  jr         $ra
    /* 12CC30 801857C0 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_80185608_ovl5
.size func_80185608_ovl5, . - func_80185608_ovl5
