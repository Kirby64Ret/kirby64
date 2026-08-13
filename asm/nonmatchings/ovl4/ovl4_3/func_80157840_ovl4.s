nonmatching func_80157840_ovl4, 0x2DC

glabel func_80157840_ovl4
    /* FED70 80157840 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* FED74 80157844 3C0F8016 */  lui        $t7, %hi(D_8015AA60_ovl4)
    /* FED78 80157848 AFBF004C */  sw         $ra, 0x4C($sp)
    /* FED7C 8015784C AFBE0048 */  sw         $fp, 0x48($sp)
    /* FED80 80157850 AFB70044 */  sw         $s7, 0x44($sp)
    /* FED84 80157854 AFB60040 */  sw         $s6, 0x40($sp)
    /* FED88 80157858 AFB5003C */  sw         $s5, 0x3C($sp)
    /* FED8C 8015785C AFB40038 */  sw         $s4, 0x38($sp)
    /* FED90 80157860 AFB30034 */  sw         $s3, 0x34($sp)
    /* FED94 80157864 AFB20030 */  sw         $s2, 0x30($sp)
    /* FED98 80157868 AFB1002C */  sw         $s1, 0x2C($sp)
    /* FED9C 8015786C AFB00028 */  sw         $s0, 0x28($sp)
    /* FEDA0 80157870 F7B40020 */  sdc1       $f20, 0x20($sp)
    /* FEDA4 80157874 25EFAA60 */  addiu      $t7, $t7, %lo(D_8015AA60_ovl4)
    /* FEDA8 80157878 8DF90000 */  lw         $t9, 0x0($t7)
    /* FEDAC 8015787C 27AE006C */  addiu      $t6, $sp, 0x6C
    /* FEDB0 80157880 8DF80004 */  lw         $t8, 0x4($t7)
    /* FEDB4 80157884 ADD90000 */  sw         $t9, 0x0($t6)
    /* FEDB8 80157888 8DF90008 */  lw         $t9, 0x8($t7)
    /* FEDBC 8015788C 3C158005 */  lui        $s5, %hi(omCurrentObj)
    /* FEDC0 80157890 26B5A7C4 */  addiu      $s5, $s5, %lo(omCurrentObj)
    /* FEDC4 80157894 ADD80004 */  sw         $t8, 0x4($t6)
    /* FEDC8 80157898 ADD90008 */  sw         $t9, 0x8($t6)
    /* FEDCC 8015789C 8EA20000 */  lw         $v0, 0x0($s5)
    /* FEDD0 801578A0 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* FEDD4 801578A4 00809025 */  or         $s2, $a0, $zero
    /* FEDD8 801578A8 8C480000 */  lw         $t0, 0x0($v0)
    /* FEDDC 801578AC 00A08025 */  or         $s0, $a1, $zero
    /* FEDE0 801578B0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* FEDE4 801578B4 00084880 */  sll        $t1, $t0, 2
    /* FEDE8 801578B8 00290821 */  addu       $at, $at, $t1
    /* FEDEC 801578BC AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
    /* FEDF0 801578C0 8C4A0000 */  lw         $t2, 0x0($v0)
    /* FEDF4 801578C4 3C05800B */  lui        $a1, %hi(procMainStub)
    /* FEDF8 801578C8 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* FEDFC 801578CC 000A5880 */  sll        $t3, $t2, 2
    /* FEE00 801578D0 008B2021 */  addu       $a0, $a0, $t3
    /* FEE04 801578D4 0C02C7DA */  jal        setProcessMain
    /* FEE08 801578D8 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* FEE0C 801578DC 3C05800B */  lui        $a1, %hi(func_800AD1A0)
    /* FEE10 801578E0 240C0012 */  addiu      $t4, $zero, 0x12
    /* FEE14 801578E4 AFAC0010 */  sw         $t4, 0x10($sp)
    /* FEE18 801578E8 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
    /* FEE1C 801578EC 02402025 */  or         $a0, $s2, $zero
    /* FEE20 801578F0 24060012 */  addiu      $a2, $zero, 0x12
    /* FEE24 801578F4 0C00297F */  jal        omLinkGObjDL
    /* FEE28 801578F8 3C078000 */   lui       $a3, (0x80000000 >> 16)
    /* FEE2C 801578FC 001018C0 */  sll        $v1, $s0, 3
    /* FEE30 80157900 3C0D8016 */  lui        $t5, %hi(D_8015B6C4_ovl4)
    /* FEE34 80157904 25ADB6C4 */  addiu      $t5, $t5, %lo(D_8015B6C4_ovl4)
    /* FEE38 80157908 3C148016 */  lui        $s4, %hi(D_8015C6D0_ovl4)
    /* FEE3C 8015790C 3C13800F */  lui        $s3, %hi(D_800EA1A0)
    /* FEE40 80157910 2673A1A0 */  addiu      $s3, $s3, %lo(D_800EA1A0)
    /* FEE44 80157914 2694C6D0 */  addiu      $s4, $s4, %lo(D_8015C6D0_ovl4)
    /* FEE48 80157918 006DB821 */  addu       $s7, $v1, $t5
    /* FEE4C 8015791C AFA30058 */  sw         $v1, 0x58($sp)
    /* FEE50 80157920 27B60074 */  addiu      $s6, $sp, 0x74
    /* FEE54 80157924 27BE006C */  addiu      $fp, $sp, 0x6C
    /* FEE58 80157928 24110004 */  addiu      $s1, $zero, 0x4
  .L8015792C_ovl4:
    /* FEE5C 8015792C 0C029D9E */  jal        play_sound
    /* FEE60 80157930 240400D3 */   addiu     $a0, $zero, 0xD3
    /* FEE64 80157934 02402025 */  or         $a0, $s2, $zero
    /* FEE68 80157938 0C0571D0 */  jal        func_8015C740_ovl5
    /* FEE6C 8015793C 8EC50000 */   lw        $a1, 0x0($s6)
    /* FEE70 80157940 8EEE0000 */  lw         $t6, 0x0($s7)
    /* FEE74 80157944 00008025 */  or         $s0, $zero, $zero
    /* FEE78 80157948 448E2000 */  mtc1       $t6, $f4
    /* FEE7C 8015794C 00000000 */  nop
    /* FEE80 80157950 468021A0 */  cvt.s.w    $f6, $f4
    /* FEE84 80157954 E4460020 */  swc1       $f6, 0x20($v0)
    /* FEE88 80157958 8EEF0004 */  lw         $t7, 0x4($s7)
    /* FEE8C 8015795C 448F4000 */  mtc1       $t7, $f8
    /* FEE90 80157960 00000000 */  nop
    /* FEE94 80157964 468042A0 */  cvt.s.w    $f10, $f8
    /* FEE98 80157968 E44A0024 */  swc1       $f10, 0x24($v0)
    /* FEE9C 8015796C 8E980000 */  lw         $t8, 0x0($s4)
  .L80157970_ovl4:
    /* FEEA0 80157970 0018C880 */  sll        $t9, $t8, 2
    /* FEEA4 80157974 02794021 */  addu       $t0, $s3, $t9
    /* FEEA8 80157978 8D090000 */  lw         $t1, 0x0($t0)
    /* FEEAC 8015797C 16290006 */  bne        $s1, $t1, .L80157998_ovl4
    /* FEEB0 80157980 00000000 */   nop
    /* FEEB4 80157984 0C02B2F7 */  jal        func_800ACBDC
    /* FEEB8 80157988 02402025 */   or        $a0, $s2, $zero
    /* FEEBC 8015798C 8EAA0000 */  lw         $t2, 0x0($s5)
    /* FEEC0 80157990 0C02C640 */  jal        func_800B1900
    /* FEEC4 80157994 95440002 */   lhu       $a0, 0x2($t2)
  .L80157998_ovl4:
    /* FEEC8 80157998 0C002DAF */  jal        ohSleep
    /* FEECC 8015799C 24040001 */   addiu     $a0, $zero, 0x1
    /* FEED0 801579A0 26100001 */  addiu      $s0, $s0, 0x1
    /* FEED4 801579A4 2A01001E */  slti       $at, $s0, 0x1E
    /* FEED8 801579A8 5420FFF1 */  bnel       $at, $zero, .L80157970_ovl4
    /* FEEDC 801579AC 8E980000 */   lw        $t8, 0x0($s4)
    /* FEEE0 801579B0 0C02B2F7 */  jal        func_800ACBDC
    /* FEEE4 801579B4 02402025 */   or        $a0, $s2, $zero
    /* FEEE8 801579B8 26D6FFFC */  addiu      $s6, $s6, -0x4
    /* FEEEC 801579BC 02DE082B */  sltu       $at, $s6, $fp
    /* FEEF0 801579C0 1020FFDA */  beqz       $at, .L8015792C_ovl4
    /* FEEF4 801579C4 00000000 */   nop
    /* FEEF8 801579C8 8E8B0000 */  lw         $t3, 0x0($s4)
    /* FEEFC 801579CC 000B6080 */  sll        $t4, $t3, 2
    /* FEF00 801579D0 026C1021 */  addu       $v0, $s3, $t4
    /* FEF04 801579D4 8C4D0000 */  lw         $t5, 0x0($v0)
    /* FEF08 801579D8 562D000A */  bnel       $s1, $t5, .L80157A04_ovl4
    /* FEF0C 801579DC 24190003 */   addiu     $t9, $zero, 0x3
    /* FEF10 801579E0 0C02B2F7 */  jal        func_800ACBDC
    /* FEF14 801579E4 02402025 */   or        $a0, $s2, $zero
    /* FEF18 801579E8 8EAE0000 */  lw         $t6, 0x0($s5)
    /* FEF1C 801579EC 0C02C640 */  jal        func_800B1900
    /* FEF20 801579F0 95C40002 */   lhu       $a0, 0x2($t6)
    /* FEF24 801579F4 8E8F0000 */  lw         $t7, 0x0($s4)
    /* FEF28 801579F8 000FC080 */  sll        $t8, $t7, 2
    /* FEF2C 801579FC 02781021 */  addu       $v0, $s3, $t8
    /* FEF30 80157A00 24190003 */  addiu      $t9, $zero, 0x3
  .L80157A04_ovl4:
    /* FEF34 80157A04 AC590000 */  sw         $t9, 0x0($v0)
    /* FEF38 80157A08 0C029D9E */  jal        play_sound
    /* FEF3C 80157A0C 2404000E */   addiu     $a0, $zero, 0xE
    /* FEF40 80157A10 3C058016 */  lui        $a1, %hi(D_8015B6DC_ovl4)
    /* FEF44 80157A14 24A5B6DC */  addiu      $a1, $a1, %lo(D_8015B6DC_ovl4)
    /* FEF48 80157A18 0C0571D0 */  jal        func_8015C740_ovl5
    /* FEF4C 80157A1C 02402025 */   or        $a0, $s2, $zero
    /* FEF50 80157A20 8FA80058 */  lw         $t0, 0x58($sp)
    /* FEF54 80157A24 3C098016 */  lui        $t1, %hi(D_8015B6FC_ovl4)
    /* FEF58 80157A28 2529B6FC */  addiu      $t1, $t1, %lo(D_8015B6FC_ovl4)
    /* FEF5C 80157A2C 01091821 */  addu       $v1, $t0, $t1
    /* FEF60 80157A30 8C6A0000 */  lw         $t2, 0x0($v1)
    /* FEF64 80157A34 00408825 */  or         $s1, $v0, $zero
    /* FEF68 80157A38 00002025 */  or         $a0, $zero, $zero
    /* FEF6C 80157A3C 448A8000 */  mtc1       $t2, $f16
    /* FEF70 80157A40 00002825 */  or         $a1, $zero, $zero
    /* FEF74 80157A44 468084A0 */  cvt.s.w    $f18, $f16
    /* FEF78 80157A48 E4520020 */  swc1       $f18, 0x20($v0)
    /* FEF7C 80157A4C 8C6B0004 */  lw         $t3, 0x4($v1)
    /* FEF80 80157A50 448B2000 */  mtc1       $t3, $f4
    /* FEF84 80157A54 00000000 */  nop
    /* FEF88 80157A58 468021A0 */  cvt.s.w    $f6, $f4
    /* FEF8C 80157A5C 0C02ED1A */  jal        func_800BB468
    /* FEF90 80157A60 E4460024 */   swc1      $f6, 0x24($v0)
    /* FEF94 80157A64 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* FEF98 80157A68 4481A000 */  mtc1       $at, $f20
    /* FEF9C 80157A6C 00008025 */  or         $s0, $zero, $zero
    /* FEFA0 80157A70 2416000F */  addiu      $s6, $zero, 0xF
    /* FEFA4 80157A74 C6280020 */  lwc1       $f8, 0x20($s1)
  .L80157A78_ovl4:
    /* FEFA8 80157A78 C6300024 */  lwc1       $f16, 0x24($s1)
    /* FEFAC 80157A7C 24040001 */  addiu      $a0, $zero, 0x1
    /* FEFB0 80157A80 46144281 */  sub.s      $f10, $f8, $f20
    /* FEFB4 80157A84 46148481 */  sub.s      $f18, $f16, $f20
    /* FEFB8 80157A88 E62A0020 */  swc1       $f10, 0x20($s1)
    /* FEFBC 80157A8C 0C002DAF */  jal        ohSleep
    /* FEFC0 80157A90 E6320024 */   swc1      $f18, 0x24($s1)
    /* FEFC4 80157A94 C6240020 */  lwc1       $f4, 0x20($s1)
    /* FEFC8 80157A98 C6280024 */  lwc1       $f8, 0x24($s1)
    /* FEFCC 80157A9C 24040001 */  addiu      $a0, $zero, 0x1
    /* FEFD0 80157AA0 46142180 */  add.s      $f6, $f4, $f20
    /* FEFD4 80157AA4 46144280 */  add.s      $f10, $f8, $f20
    /* FEFD8 80157AA8 E6260020 */  swc1       $f6, 0x20($s1)
    /* FEFDC 80157AAC 0C002DAF */  jal        ohSleep
    /* FEFE0 80157AB0 E62A0024 */   swc1      $f10, 0x24($s1)
    /* FEFE4 80157AB4 26100001 */  addiu      $s0, $s0, 0x1
    /* FEFE8 80157AB8 5616FFEF */  bnel       $s0, $s6, .L80157A78_ovl4
    /* FEFEC 80157ABC C6280020 */   lwc1      $f8, 0x20($s1)
    /* FEFF0 80157AC0 0C02B2F7 */  jal        func_800ACBDC
    /* FEFF4 80157AC4 02402025 */   or        $a0, $s2, $zero
    /* FEFF8 80157AC8 8E8D0000 */  lw         $t5, 0x0($s4)
    /* FEFFC 80157ACC 240C0002 */  addiu      $t4, $zero, 0x2
    /* FF000 80157AD0 000D7080 */  sll        $t6, $t5, 2
    /* FF004 80157AD4 026E7821 */  addu       $t7, $s3, $t6
    /* FF008 80157AD8 ADEC0000 */  sw         $t4, 0x0($t7)
    /* FF00C 80157ADC 8EB80000 */  lw         $t8, 0x0($s5)
    /* FF010 80157AE0 0C02C640 */  jal        func_800B1900
    /* FF014 80157AE4 97040002 */   lhu       $a0, 0x2($t8)
    /* FF018 80157AE8 8FBF004C */  lw         $ra, 0x4C($sp)
    /* FF01C 80157AEC D7B40020 */  ldc1       $f20, 0x20($sp)
    /* FF020 80157AF0 8FB00028 */  lw         $s0, 0x28($sp)
    /* FF024 80157AF4 8FB1002C */  lw         $s1, 0x2C($sp)
    /* FF028 80157AF8 8FB20030 */  lw         $s2, 0x30($sp)
    /* FF02C 80157AFC 8FB30034 */  lw         $s3, 0x34($sp)
    /* FF030 80157B00 8FB40038 */  lw         $s4, 0x38($sp)
    /* FF034 80157B04 8FB5003C */  lw         $s5, 0x3C($sp)
    /* FF038 80157B08 8FB60040 */  lw         $s6, 0x40($sp)
    /* FF03C 80157B0C 8FB70044 */  lw         $s7, 0x44($sp)
    /* FF040 80157B10 8FBE0048 */  lw         $fp, 0x48($sp)
    /* FF044 80157B14 03E00008 */  jr         $ra
    /* FF048 80157B18 27BD0078 */   addiu     $sp, $sp, 0x78
endlabel func_80157840_ovl4
.size func_80157840_ovl4, . - func_80157840_ovl4
