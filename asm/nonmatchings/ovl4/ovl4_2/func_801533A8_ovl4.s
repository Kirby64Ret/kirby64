nonmatching func_801533A8_ovl4, 0x708

glabel func_801533A8_ovl4
    /* FA8D8 801533A8 27BDFD70 */  addiu      $sp, $sp, -0x290
    /* FA8DC 801533AC AFB30028 */  sw         $s3, 0x28($sp)
    /* FA8E0 801533B0 AFB20024 */  sw         $s2, 0x24($sp)
    /* FA8E4 801533B4 3C0E8016 */  lui        $t6, %hi(D_8015A4F0_ovl4)
    /* FA8E8 801533B8 3C12800D */  lui        $s2, %hi(D_800D6B98)
    /* FA8EC 801533BC 27B30170 */  addiu      $s3, $sp, 0x170
    /* FA8F0 801533C0 AFB70038 */  sw         $s7, 0x38($sp)
    /* FA8F4 801533C4 AFB60034 */  sw         $s6, 0x34($sp)
    /* FA8F8 801533C8 25CEA4F0 */  addiu      $t6, $t6, %lo(D_8015A4F0_ovl4)
    /* FA8FC 801533CC 0080B025 */  or         $s6, $a0, $zero
    /* FA900 801533D0 27B70050 */  addiu      $s7, $sp, 0x50
    /* FA904 801533D4 26526B98 */  addiu      $s2, $s2, %lo(D_800D6B98)
    /* FA908 801533D8 AFBF003C */  sw         $ra, 0x3C($sp)
    /* FA90C 801533DC AFB50030 */  sw         $s5, 0x30($sp)
    /* FA910 801533E0 AFB4002C */  sw         $s4, 0x2C($sp)
    /* FA914 801533E4 AFB10020 */  sw         $s1, 0x20($sp)
    /* FA918 801533E8 AFB0001C */  sw         $s0, 0x1C($sp)
    /* FA91C 801533EC F7B40010 */  sdc1       $f20, 0x10($sp)
    /* FA920 801533F0 25C80120 */  addiu      $t0, $t6, 0x120
    /* FA924 801533F4 0260C825 */  or         $t9, $s3, $zero
  .L801533F8_ovl4:
    /* FA928 801533F8 8DD80000 */  lw         $t8, 0x0($t6)
    /* FA92C 801533FC 25CE000C */  addiu      $t6, $t6, 0xC
    /* FA930 80153400 2739000C */  addiu      $t9, $t9, 0xC
    /* FA934 80153404 AF38FFF4 */  sw         $t8, -0xC($t9)
    /* FA938 80153408 8DCFFFF8 */  lw         $t7, -0x8($t6)
    /* FA93C 8015340C AF2FFFF8 */  sw         $t7, -0x8($t9)
    /* FA940 80153410 8DD8FFFC */  lw         $t8, -0x4($t6)
    /* FA944 80153414 15C8FFF8 */  bne        $t6, $t0, .L801533F8_ovl4
    /* FA948 80153418 AF38FFFC */   sw        $t8, -0x4($t9)
    /* FA94C 8015341C 3C098016 */  lui        $t1, %hi(D_8015A610_ovl4)
    /* FA950 80153420 2529A610 */  addiu      $t1, $t1, %lo(D_8015A610_ovl4)
    /* FA954 80153424 252D0120 */  addiu      $t5, $t1, 0x120
    /* FA958 80153428 02E06025 */  or         $t4, $s7, $zero
  .L8015342C_ovl4:
    /* FA95C 8015342C 8D2B0000 */  lw         $t3, 0x0($t1)
    /* FA960 80153430 2529000C */  addiu      $t1, $t1, 0xC
    /* FA964 80153434 258C000C */  addiu      $t4, $t4, 0xC
    /* FA968 80153438 AD8BFFF4 */  sw         $t3, -0xC($t4)
    /* FA96C 8015343C 8D2AFFF8 */  lw         $t2, -0x8($t1)
    /* FA970 80153440 AD8AFFF8 */  sw         $t2, -0x8($t4)
    /* FA974 80153444 8D2BFFFC */  lw         $t3, -0x4($t1)
    /* FA978 80153448 152DFFF8 */  bne        $t1, $t5, .L8015342C_ovl4
    /* FA97C 8015344C AD8BFFFC */   sw        $t3, -0x4($t4)
    /* FA980 80153450 8E440000 */  lw         $a0, 0x0($s2)
    /* FA984 80153454 0C054888 */  jal        func_80152220_ovl4
    /* FA988 80153458 02C02825 */   or        $a1, $s6, $zero
    /* FA98C 8015345C 14400005 */  bnez       $v0, .L80153474_ovl4
    /* FA990 80153460 3C148005 */   lui       $s4, %hi(omCurrentObj)
    /* FA994 80153464 2694A7C4 */  addiu      $s4, $s4, %lo(omCurrentObj)
    /* FA998 80153468 8E880000 */  lw         $t0, 0x0($s4)
    /* FA99C 8015346C 0C02C640 */  jal        func_800B1900
    /* FA9A0 80153470 95040002 */   lhu       $a0, 0x2($t0)
  .L80153474_ovl4:
    /* FA9A4 80153474 3C148005 */  lui        $s4, %hi(omCurrentObj)
    /* FA9A8 80153478 2694A7C4 */  addiu      $s4, $s4, %lo(omCurrentObj)
    /* FA9AC 8015347C 8E820000 */  lw         $v0, 0x0($s4)
    /* FA9B0 80153480 0016C880 */  sll        $t9, $s6, 2
    /* FA9B4 80153484 3C018016 */  lui        $at, %hi(D_8015C6AC_ovl4)
    /* FA9B8 80153488 8C4E0000 */  lw         $t6, 0x0($v0)
    /* FA9BC 8015348C 00390821 */  addu       $at, $at, $t9
    /* FA9C0 80153490 3C0F8015 */  lui        $t7, %hi(func_80153AB0_ovl4)
    /* FA9C4 80153494 AC2EC6AC */  sw         $t6, %lo(D_8015C6AC_ovl4)($at)
    /* FA9C8 80153498 8C580000 */  lw         $t8, 0x0($v0)
    /* FA9CC 8015349C 3C01800E */  lui        $at, %hi(D_800DF150)
    /* FA9D0 801534A0 25EF3AB0 */  addiu      $t7, $t7, %lo(func_80153AB0_ovl4)
    /* FA9D4 801534A4 00186880 */  sll        $t5, $t8, 2
    /* FA9D8 801534A8 002D0821 */  addu       $at, $at, $t5
    /* FA9DC 801534AC AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
    /* FA9E0 801534B0 8E440000 */  lw         $a0, 0x0($s2)
    /* FA9E4 801534B4 0C054888 */  jal        func_80152220_ovl4
    /* FA9E8 801534B8 02C02825 */   or        $a1, $s6, $zero
    /* FA9EC 801534BC 24010002 */  addiu      $at, $zero, 0x2
    /* FA9F0 801534C0 14410035 */  bne        $v0, $at, .L80153598_ovl4
    /* FA9F4 801534C4 001688C0 */   sll       $s1, $s6, 3
    /* FA9F8 801534C8 3C09800D */  lui        $t1, %hi(D_800D6B80)
    /* FA9FC 801534CC 8D296B80 */  lw         $t1, %lo(D_800D6B80)($t1)
    /* FAA00 801534D0 3C0A800D */  lui        $t2, %hi(D_800D6B9C)
    /* FAA04 801534D4 001688C0 */  sll        $s1, $s6, 3
    /* FAA08 801534D8 1120001B */  beqz       $t1, .L80153548_ovl4
    /* FAA0C 801534DC 3C050001 */   lui       $a1, (0x1869F >> 16)
    /* FAA10 801534E0 8D4A6B9C */  lw         $t2, %lo(D_800D6B9C)($t2)
    /* FAA14 801534E4 26CC0001 */  addiu      $t4, $s6, 0x1
    /* FAA18 801534E8 24060010 */  addiu      $a2, $zero, 0x10
    /* FAA1C 801534EC 558A0017 */  bnel       $t4, $t2, .L8015354C_ovl4
    /* FAA20 801534F0 8E4C0000 */   lw        $t4, 0x0($s2)
    /* FAA24 801534F4 8E4B0000 */  lw         $t3, 0x0($s2)
    /* FAA28 801534F8 001688C0 */  sll        $s1, $s6, 3
    /* FAA2C 801534FC 3C050001 */  lui        $a1, (0x1869F >> 16)
    /* FAA30 80153500 000B4080 */  sll        $t0, $t3, 2
    /* FAA34 80153504 010B4023 */  subu       $t0, $t0, $t3
    /* FAA38 80153508 00084100 */  sll        $t0, $t0, 4
    /* FAA3C 8015350C 02687021 */  addu       $t6, $s3, $t0
    /* FAA40 80153510 01D1C821 */  addu       $t9, $t6, $s1
    /* FAA44 80153514 8F240000 */  lw         $a0, 0x0($t9)
    /* FAA48 80153518 0C02A619 */  jal        func_800A9864
    /* FAA4C 8015351C 34A5869F */   ori       $a1, $a1, (0x1869F & 0xFFFF)
    /* FAA50 80153520 8E580000 */  lw         $t8, 0x0($s2)
    /* FAA54 80153524 00187880 */  sll        $t7, $t8, 2
    /* FAA58 80153528 01F87823 */  subu       $t7, $t7, $t8
    /* FAA5C 8015352C 000F7900 */  sll        $t7, $t7, 4
    /* FAA60 80153530 02EF6821 */  addu       $t5, $s7, $t7
    /* FAA64 80153534 01B14821 */  addu       $t1, $t5, $s1
    /* FAA68 80153538 0C02A806 */  jal        func_800AA018
    /* FAA6C 8015353C 8D240000 */   lw        $a0, 0x0($t1)
    /* FAA70 80153540 10000028 */  b          .L801535E4_ovl4
    /* FAA74 80153544 00000000 */   nop
  .L80153548_ovl4:
    /* FAA78 80153548 8E4C0000 */  lw         $t4, 0x0($s2)
  .L8015354C_ovl4:
    /* FAA7C 8015354C 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
    /* FAA80 80153550 24060010 */  addiu      $a2, $zero, 0x10
    /* FAA84 80153554 000C5080 */  sll        $t2, $t4, 2
    /* FAA88 80153558 014C5023 */  subu       $t2, $t2, $t4
    /* FAA8C 8015355C 000A5100 */  sll        $t2, $t2, 4
    /* FAA90 80153560 026A5821 */  addu       $t3, $s3, $t2
    /* FAA94 80153564 01714021 */  addu       $t0, $t3, $s1
    /* FAA98 80153568 0C02A619 */  jal        func_800A9864
    /* FAA9C 8015356C 8D040004 */   lw        $a0, 0x4($t0)
    /* FAAA0 80153570 8E4E0000 */  lw         $t6, 0x0($s2)
    /* FAAA4 80153574 000EC880 */  sll        $t9, $t6, 2
    /* FAAA8 80153578 032EC823 */  subu       $t9, $t9, $t6
    /* FAAAC 8015357C 0019C900 */  sll        $t9, $t9, 4
    /* FAAB0 80153580 02F9C021 */  addu       $t8, $s7, $t9
    /* FAAB4 80153584 03117821 */  addu       $t7, $t8, $s1
    /* FAAB8 80153588 0C02A806 */  jal        func_800AA018
    /* FAABC 8015358C 8DE40004 */   lw        $a0, 0x4($t7)
    /* FAAC0 80153590 10000014 */  b          .L801535E4_ovl4
    /* FAAC4 80153594 00000000 */   nop
  .L80153598_ovl4:
    /* FAAC8 80153598 8E4D0000 */  lw         $t5, 0x0($s2)
    /* FAACC 8015359C 3C050001 */  lui        $a1, (0x1869F >> 16)
    /* FAAD0 801535A0 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
    /* FAAD4 801535A4 000D4880 */  sll        $t1, $t5, 2
    /* FAAD8 801535A8 012D4823 */  subu       $t1, $t1, $t5
    /* FAADC 801535AC 00094900 */  sll        $t1, $t1, 4
    /* FAAE0 801535B0 02696021 */  addu       $t4, $s3, $t1
    /* FAAE4 801535B4 01915021 */  addu       $t2, $t4, $s1
    /* FAAE8 801535B8 8D440000 */  lw         $a0, 0x0($t2)
    /* FAAEC 801535BC 0C02A619 */  jal        func_800A9864
    /* FAAF0 801535C0 24060010 */   addiu     $a2, $zero, 0x10
    /* FAAF4 801535C4 8E4B0000 */  lw         $t3, 0x0($s2)
    /* FAAF8 801535C8 000B4080 */  sll        $t0, $t3, 2
    /* FAAFC 801535CC 010B4023 */  subu       $t0, $t0, $t3
    /* FAB00 801535D0 00084100 */  sll        $t0, $t0, 4
    /* FAB04 801535D4 02E87021 */  addu       $t6, $s7, $t0
    /* FAB08 801535D8 01D1C821 */  addu       $t9, $t6, $s1
    /* FAB0C 801535DC 0C02A806 */  jal        func_800AA018
    /* FAB10 801535E0 8F240000 */   lw        $a0, 0x0($t9)
  .L801535E4_ovl4:
    /* FAB14 801535E4 3C0F8016 */  lui        $t7, %hi(D_8015C698_ovl4)
    /* FAB18 801535E8 8DEFC698 */  lw         $t7, %lo(D_8015C698_ovl4)($t7)
    /* FAB1C 801535EC 3C09800F */  lui        $t1, %hi(D_800E9FE0)
    /* FAB20 801535F0 26D80001 */  addiu      $t8, $s6, 0x1
    /* FAB24 801535F4 000F6880 */  sll        $t5, $t7, 2
    /* FAB28 801535F8 012D4821 */  addu       $t1, $t1, $t5
    /* FAB2C 801535FC 8D299FE0 */  lw         $t1, %lo(D_800E9FE0)($t1)
    /* FAB30 80153600 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* FAB34 80153604 5709000B */  bnel       $t8, $t1, .L80153634_ovl4
    /* FAB38 80153608 44806000 */   mtc1      $zero, $f12
    /* FAB3C 8015360C 44816000 */  mtc1       $at, $f12
    /* FAB40 80153610 0C02BB30 */  jal        func_800AECC0
    /* FAB44 80153614 00000000 */   nop
    /* FAB48 80153618 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* FAB4C 8015361C 44816000 */  mtc1       $at, $f12
    /* FAB50 80153620 0C02BB48 */  jal        func_800AED20
    /* FAB54 80153624 00000000 */   nop
    /* FAB58 80153628 10000007 */  b          .L80153648_ovl4
    /* FAB5C 8015362C 00000000 */   nop
    /* FAB60 80153630 44806000 */  mtc1       $zero, $f12
  .L80153634_ovl4:
    /* FAB64 80153634 0C02BB30 */  jal        func_800AECC0
    /* FAB68 80153638 00000000 */   nop
    /* FAB6C 8015363C 44806000 */  mtc1       $zero, $f12
    /* FAB70 80153640 0C02BB48 */  jal        func_800AED20
    /* FAB74 80153644 00000000 */   nop
  .L80153648_ovl4:
    /* FAB78 80153648 3C0C800D */  lui        $t4, %hi(D_800D6B80)
    /* FAB7C 8015364C 8D8C6B80 */  lw         $t4, %lo(D_800D6B80)($t4)
    /* FAB80 80153650 3C0A800D */  lui        $t2, %hi(D_800D6B9C)
    /* FAB84 80153654 11800090 */  beqz       $t4, .L80153898_ovl4
    /* FAB88 80153658 00000000 */   nop
    /* FAB8C 8015365C 8D4A6B9C */  lw         $t2, %lo(D_800D6B9C)($t2)
    /* FAB90 80153660 00002025 */  or         $a0, $zero, $zero
    /* FAB94 80153664 56CA0004 */  bnel       $s6, $t2, .L80153678_ovl4
    /* FAB98 80153668 00008025 */   or        $s0, $zero, $zero
    /* FAB9C 8015366C 0C02BEED */  jal        func_800AFBB4
    /* FABA0 80153670 8E850000 */   lw        $a1, 0x0($s4)
    /* FABA4 80153674 00008025 */  or         $s0, $zero, $zero
  .L80153678_ovl4:
    /* FABA8 80153678 0C029D9E */  jal        play_sound
    /* FABAC 8015367C 240400F2 */   addiu     $a0, $zero, 0xF2
    /* FABB0 80153680 3C0B800D */  lui        $t3, %hi(D_800D6B80)
    /* FABB4 80153684 8D6B6B80 */  lw         $t3, %lo(D_800D6B80)($t3)
    /* FABB8 80153688 3C15800E */  lui        $s5, %hi(D_800DE350)
    /* FABBC 8015368C 26B5E350 */  addiu      $s5, $s5, %lo(D_800DE350)
    /* FABC0 80153690 1160002F */  beqz       $t3, .L80153750_ovl4
  .L80153694_ovl4:
    /* FABC4 80153694 3C0E800D */   lui       $t6, %hi(D_800D6B9C)
    /* FABC8 80153698 8DCE6B9C */  lw         $t6, %lo(D_800D6B9C)($t6)
    /* FABCC 8015369C 26C80001 */  addiu      $t0, $s6, 0x1
    /* FABD0 801536A0 550E0025 */  bnel       $t0, $t6, .L80153738_ovl4
    /* FABD4 801536A4 26100001 */   addiu     $s0, $s0, 0x1
    /* FABD8 801536A8 8E990000 */  lw         $t9, 0x0($s4)
    /* FABDC 801536AC 8F2F0000 */  lw         $t7, 0x0($t9)
    /* FABE0 801536B0 000F6880 */  sll        $t5, $t7, 2
    /* FABE4 801536B4 02ADC021 */  addu       $t8, $s5, $t5
    /* FABE8 801536B8 0C002EF8 */  jal        func_8000BBE0
    /* FABEC 801536BC 8F040000 */   lw        $a0, 0x0($t8)
    /* FABF0 801536C0 06010003 */  bgez       $s0, .L801536D0_ovl4
    /* FABF4 801536C4 00104843 */   sra       $t1, $s0, 1
    /* FABF8 801536C8 26010001 */  addiu      $at, $s0, 0x1
    /* FABFC 801536CC 00014843 */  sra        $t1, $at, 1
  .L801536D0_ovl4:
    /* FAC00 801536D0 05210004 */  bgez       $t1, .L801536E4_ovl4
    /* FAC04 801536D4 312C0001 */   andi      $t4, $t1, 0x1
    /* FAC08 801536D8 11800002 */  beqz       $t4, .L801536E4_ovl4
    /* FAC0C 801536DC 00000000 */   nop
    /* FAC10 801536E0 258CFFFE */  addiu      $t4, $t4, -0x2
  .L801536E4_ovl4:
    /* FAC14 801536E4 5180000C */  beql       $t4, $zero, .L80153718_ovl4
    /* FAC18 801536E8 8E590000 */   lw        $t9, 0x0($s2)
    /* FAC1C 801536EC 8E4A0000 */  lw         $t2, 0x0($s2)
    /* FAC20 801536F0 000A5880 */  sll        $t3, $t2, 2
    /* FAC24 801536F4 016A5823 */  subu       $t3, $t3, $t2
    /* FAC28 801536F8 000B5900 */  sll        $t3, $t3, 4
    /* FAC2C 801536FC 026B4021 */  addu       $t0, $s3, $t3
    /* FAC30 80153700 01117021 */  addu       $t6, $t0, $s1
    /* FAC34 80153704 0C02A5D8 */  jal        func_800A9760
    /* FAC38 80153708 8DC40000 */   lw        $a0, 0x0($t6)
    /* FAC3C 8015370C 1000000A */  b          .L80153738_ovl4
    /* FAC40 80153710 26100001 */   addiu     $s0, $s0, 0x1
    /* FAC44 80153714 8E590000 */  lw         $t9, 0x0($s2)
  .L80153718_ovl4:
    /* FAC48 80153718 00197880 */  sll        $t7, $t9, 2
    /* FAC4C 8015371C 01F97823 */  subu       $t7, $t7, $t9
    /* FAC50 80153720 000F7900 */  sll        $t7, $t7, 4
    /* FAC54 80153724 026F6821 */  addu       $t5, $s3, $t7
    /* FAC58 80153728 01B1C021 */  addu       $t8, $t5, $s1
    /* FAC5C 8015372C 0C02A5D8 */  jal        func_800A9760
    /* FAC60 80153730 8F040004 */   lw        $a0, 0x4($t8)
    /* FAC64 80153734 26100001 */  addiu      $s0, $s0, 0x1
  .L80153738_ovl4:
    /* FAC68 80153738 0C002DAF */  jal        ohSleep
    /* FAC6C 8015373C 24040001 */   addiu     $a0, $zero, 0x1
    /* FAC70 80153740 3C09800D */  lui        $t1, %hi(D_800D6B80)
    /* FAC74 80153744 8D296B80 */  lw         $t1, %lo(D_800D6B80)($t1)
    /* FAC78 80153748 1520FFD2 */  bnez       $t1, .L80153694_ovl4
    /* FAC7C 8015374C 00000000 */   nop
  .L80153750_ovl4:
    /* FAC80 80153750 3C0A800D */  lui        $t2, %hi(D_800D6B9C)
    /* FAC84 80153754 8D4A6B9C */  lw         $t2, %lo(D_800D6B9C)($t2)
    /* FAC88 80153758 3C15800E */  lui        $s5, %hi(D_800DE350)
    /* FAC8C 8015375C 26CC0001 */  addiu      $t4, $s6, 0x1
    /* FAC90 80153760 158A001D */  bne        $t4, $t2, .L801537D8_ovl4
    /* FAC94 80153764 26B5E350 */   addiu     $s5, $s5, %lo(D_800DE350)
    /* FAC98 80153768 8E8B0000 */  lw         $t3, 0x0($s4)
    /* FAC9C 8015376C 8D680000 */  lw         $t0, 0x0($t3)
    /* FACA0 80153770 00087080 */  sll        $t6, $t0, 2
    /* FACA4 80153774 02AEC821 */  addu       $t9, $s5, $t6
    /* FACA8 80153778 0C002EF8 */  jal        func_8000BBE0
    /* FACAC 8015377C 8F240000 */   lw        $a0, 0x0($t9)
    /* FACB0 80153780 8E4F0000 */  lw         $t7, 0x0($s2)
    /* FACB4 80153784 000F6880 */  sll        $t5, $t7, 2
    /* FACB8 80153788 01AF6823 */  subu       $t5, $t5, $t7
    /* FACBC 8015378C 000D6900 */  sll        $t5, $t5, 4
    /* FACC0 80153790 026DC021 */  addu       $t8, $s3, $t5
    /* FACC4 80153794 03114821 */  addu       $t1, $t8, $s1
    /* FACC8 80153798 0C02A5D8 */  jal        func_800A9760
    /* FACCC 8015379C 8D240004 */   lw        $a0, 0x4($t1)
    /* FACD0 801537A0 8E8E0000 */  lw         $t6, 0x0($s4)
    /* FACD4 801537A4 8E4C0000 */  lw         $t4, 0x0($s2)
    /* FACD8 801537A8 8DD90000 */  lw         $t9, 0x0($t6)
    /* FACDC 801537AC 000C5080 */  sll        $t2, $t4, 2
    /* FACE0 801537B0 014C5023 */  subu       $t2, $t2, $t4
    /* FACE4 801537B4 00197880 */  sll        $t7, $t9, 2
    /* FACE8 801537B8 02AF6821 */  addu       $t5, $s5, $t7
    /* FACEC 801537BC 000A5100 */  sll        $t2, $t2, 4
    /* FACF0 801537C0 8DB80000 */  lw         $t8, 0x0($t5)
    /* FACF4 801537C4 02EA5821 */  addu       $t3, $s7, $t2
    /* FACF8 801537C8 01714021 */  addu       $t0, $t3, $s1
    /* FACFC 801537CC 8D040004 */  lw         $a0, 0x4($t0)
    /* FAD00 801537D0 0C02A7E6 */  jal        func_800A9F98
    /* FAD04 801537D4 8F050040 */   lw        $a1, 0x40($t8)
  .L801537D8_ovl4:
    /* FAD08 801537D8 0C029D9E */  jal        play_sound
    /* FAD0C 801537DC 240400F3 */   addiu     $a0, $zero, 0xF3
    /* FAD10 801537E0 3C09800D */  lui        $t1, %hi(D_800D6B9C)
    /* FAD14 801537E4 8D296B9C */  lw         $t1, %lo(D_800D6B9C)($t1)
    /* FAD18 801537E8 2404000A */  addiu      $a0, $zero, 0xA
    /* FAD1C 801537EC 56C90028 */  bnel       $s6, $t1, .L80153890_ovl4
    /* FAD20 801537F0 24040001 */   addiu     $a0, $zero, 0x1
    /* FAD24 801537F4 0C002DAF */  jal        ohSleep
    /* FAD28 801537F8 00008025 */   or        $s0, $zero, $zero
    /* FAD2C 801537FC 3C014170 */  lui        $at, (0x41700000 >> 16)
    /* FAD30 80153800 4481A000 */  mtc1       $at, $f20
    /* FAD34 80153804 44802000 */  mtc1       $zero, $f4
    /* FAD38 80153808 00000000 */  nop
    /* FAD3C 8015380C 4614203C */  c.lt.s     $f4, $f20
    /* FAD40 80153810 00000000 */  nop
    /* FAD44 80153814 4502001E */  bc1fl      .L80153890_ovl4
    /* FAD48 80153818 24040001 */   addiu     $a0, $zero, 0x1
  .L8015381C_ovl4:
    /* FAD4C 8015381C 06010003 */  bgez       $s0, .L8015382C_ovl4
    /* FAD50 80153820 00106043 */   sra       $t4, $s0, 1
    /* FAD54 80153824 26010001 */  addiu      $at, $s0, 0x1
    /* FAD58 80153828 00016043 */  sra        $t4, $at, 1
  .L8015382C_ovl4:
    /* FAD5C 8015382C 05810004 */  bgez       $t4, .L80153840_ovl4
    /* FAD60 80153830 318A0001 */   andi      $t2, $t4, 0x1
    /* FAD64 80153834 11400002 */  beqz       $t2, .L80153840_ovl4
    /* FAD68 80153838 00000000 */   nop
    /* FAD6C 8015383C 254AFFFE */  addiu      $t2, $t2, -0x2
  .L80153840_ovl4:
    /* FAD70 80153840 11400006 */  beqz       $t2, .L8015385C_ovl4
    /* FAD74 80153844 24040001 */   addiu     $a0, $zero, 0x1
    /* FAD78 80153848 00002025 */  or         $a0, $zero, $zero
    /* FAD7C 8015384C 0C02BEED */  jal        func_800AFBB4
    /* FAD80 80153850 8E850000 */   lw        $a1, 0x0($s4)
    /* FAD84 80153854 10000003 */  b          .L80153864_ovl4
    /* FAD88 80153858 00000000 */   nop
  .L8015385C_ovl4:
    /* FAD8C 8015385C 0C02BEED */  jal        func_800AFBB4
    /* FAD90 80153860 8E850000 */   lw        $a1, 0x0($s4)
  .L80153864_ovl4:
    /* FAD94 80153864 0C002DAF */  jal        ohSleep
    /* FAD98 80153868 24040001 */   addiu     $a0, $zero, 0x1
    /* FAD9C 8015386C 26100001 */  addiu      $s0, $s0, 0x1
    /* FADA0 80153870 44903000 */  mtc1       $s0, $f6
    /* FADA4 80153874 00000000 */  nop
    /* FADA8 80153878 46803220 */  cvt.s.w    $f8, $f6
    /* FADAC 8015387C 4614403C */  c.lt.s     $f8, $f20
    /* FADB0 80153880 00000000 */  nop
    /* FADB4 80153884 4501FFE5 */  bc1t       .L8015381C_ovl4
    /* FADB8 80153888 00000000 */   nop
    /* FADBC 8015388C 24040001 */  addiu      $a0, $zero, 0x1
  .L80153890_ovl4:
    /* FADC0 80153890 0C02BEED */  jal        func_800AFBB4
    /* FADC4 80153894 8E850000 */   lw        $a1, 0x0($s4)
  .L80153898_ovl4:
    /* FADC8 80153898 3C15800E */  lui        $s5, %hi(D_800DE350)
    /* FADCC 8015389C 26B5E350 */  addiu      $s5, $s5, %lo(D_800DE350)
    /* FADD0 801538A0 00008025 */  or         $s0, $zero, $zero
  .L801538A4_ovl4:
    /* FADD4 801538A4 3C088016 */  lui        $t0, %hi(D_8015C698_ovl4)
    /* FADD8 801538A8 8D08C698 */  lw         $t0, %lo(D_8015C698_ovl4)($t0)
    /* FADDC 801538AC 3C19800F */  lui        $t9, %hi(D_800E9FE0)
    /* FADE0 801538B0 26CB0001 */  addiu      $t3, $s6, 0x1
    /* FADE4 801538B4 00087080 */  sll        $t6, $t0, 2
    /* FADE8 801538B8 032EC821 */  addu       $t9, $t9, $t6
    /* FADEC 801538BC 8F399FE0 */  lw         $t9, %lo(D_800E9FE0)($t9)
    /* FADF0 801538C0 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* FADF4 801538C4 5579000B */  bnel       $t3, $t9, .L801538F4_ovl4
    /* FADF8 801538C8 44806000 */   mtc1      $zero, $f12
    /* FADFC 801538CC 44816000 */  mtc1       $at, $f12
    /* FAE00 801538D0 0C02BB30 */  jal        func_800AECC0
    /* FAE04 801538D4 00000000 */   nop
    /* FAE08 801538D8 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* FAE0C 801538DC 44816000 */  mtc1       $at, $f12
    /* FAE10 801538E0 0C02BB48 */  jal        func_800AED20
    /* FAE14 801538E4 00000000 */   nop
    /* FAE18 801538E8 10000007 */  b          .L80153908_ovl4
    /* FAE1C 801538EC 00000000 */   nop
    /* FAE20 801538F0 44806000 */  mtc1       $zero, $f12
  .L801538F4_ovl4:
    /* FAE24 801538F4 0C02BB30 */  jal        func_800AECC0
    /* FAE28 801538F8 00000000 */   nop
    /* FAE2C 801538FC 44806000 */  mtc1       $zero, $f12
    /* FAE30 80153900 0C02BB48 */  jal        func_800AED20
    /* FAE34 80153904 00000000 */   nop
  .L80153908_ovl4:
    /* FAE38 80153908 0C054CC9 */  jal        func_80153324_ovl4
    /* FAE3C 8015390C 02C02025 */   or        $a0, $s6, $zero
    /* FAE40 80153910 10400057 */  beqz       $v0, .L80153A70_ovl4
    /* FAE44 80153914 00000000 */   nop
    /* FAE48 80153918 8E8F0000 */  lw         $t7, 0x0($s4)
    /* FAE4C 8015391C 8DED0000 */  lw         $t5, 0x0($t7)
    /* FAE50 80153920 000DC080 */  sll        $t8, $t5, 2
    /* FAE54 80153924 02B84821 */  addu       $t1, $s5, $t8
    /* FAE58 80153928 8D2C0000 */  lw         $t4, 0x0($t1)
    /* FAE5C 8015392C C5940040 */  lwc1       $f20, 0x40($t4)
    /* FAE60 80153930 06010003 */  bgez       $s0, .L80153940_ovl4
    /* FAE64 80153934 00105043 */   sra       $t2, $s0, 1
    /* FAE68 80153938 26010001 */  addiu      $at, $s0, 0x1
    /* FAE6C 8015393C 00015043 */  sra        $t2, $at, 1
  .L80153940_ovl4:
    /* FAE70 80153940 05410004 */  bgez       $t2, .L80153954_ovl4
    /* FAE74 80153944 31480001 */   andi      $t0, $t2, 0x1
    /* FAE78 80153948 11000002 */  beqz       $t0, .L80153954_ovl4
    /* FAE7C 8015394C 00000000 */   nop
    /* FAE80 80153950 2508FFFE */  addiu      $t0, $t0, -0x2
  .L80153954_ovl4:
    /* FAE84 80153954 51000025 */  beql       $t0, $zero, .L801539EC_ovl4
    /* FAE88 80153958 8E490000 */   lw        $t1, 0x0($s2)
    /* FAE8C 8015395C 8E4E0000 */  lw         $t6, 0x0($s2)
    /* FAE90 80153960 000E5880 */  sll        $t3, $t6, 2
    /* FAE94 80153964 016E5823 */  subu       $t3, $t3, $t6
    /* FAE98 80153968 000B5900 */  sll        $t3, $t3, 4
    /* FAE9C 8015396C 026BC821 */  addu       $t9, $s3, $t3
    /* FAEA0 80153970 03317821 */  addu       $t7, $t9, $s1
    /* FAEA4 80153974 0C02AA22 */  jal        func_800AA888
    /* FAEA8 80153978 8DE40000 */   lw        $a0, 0x0($t7)
    /* FAEAC 8015397C 5440003C */  bnel       $v0, $zero, .L80153A70_ovl4
    /* FAEB0 80153980 26100001 */   addiu     $s0, $s0, 0x1
    /* FAEB4 80153984 8E8D0000 */  lw         $t5, 0x0($s4)
    /* FAEB8 80153988 8DB80000 */  lw         $t8, 0x0($t5)
    /* FAEBC 8015398C 00184880 */  sll        $t1, $t8, 2
    /* FAEC0 80153990 02A96021 */  addu       $t4, $s5, $t1
    /* FAEC4 80153994 0C002EF8 */  jal        func_8000BBE0
    /* FAEC8 80153998 8D840000 */   lw        $a0, 0x0($t4)
    /* FAECC 8015399C 8E4A0000 */  lw         $t2, 0x0($s2)
    /* FAED0 801539A0 000A4080 */  sll        $t0, $t2, 2
    /* FAED4 801539A4 010A4023 */  subu       $t0, $t0, $t2
    /* FAED8 801539A8 00084100 */  sll        $t0, $t0, 4
    /* FAEDC 801539AC 02687021 */  addu       $t6, $s3, $t0
    /* FAEE0 801539B0 01D15821 */  addu       $t3, $t6, $s1
    /* FAEE4 801539B4 0C02A5D8 */  jal        func_800A9760
    /* FAEE8 801539B8 8D640000 */   lw        $a0, 0x0($t3)
    /* FAEEC 801539BC 8E590000 */  lw         $t9, 0x0($s2)
    /* FAEF0 801539C0 4405A000 */  mfc1       $a1, $f20
    /* FAEF4 801539C4 00197880 */  sll        $t7, $t9, 2
    /* FAEF8 801539C8 01F97823 */  subu       $t7, $t7, $t9
    /* FAEFC 801539CC 000F7900 */  sll        $t7, $t7, 4
    /* FAF00 801539D0 02EF6821 */  addu       $t5, $s7, $t7
    /* FAF04 801539D4 01B1C021 */  addu       $t8, $t5, $s1
    /* FAF08 801539D8 0C02A7E6 */  jal        func_800A9F98
    /* FAF0C 801539DC 8F040000 */   lw        $a0, 0x0($t8)
    /* FAF10 801539E0 10000023 */  b          .L80153A70_ovl4
    /* FAF14 801539E4 26100001 */   addiu     $s0, $s0, 0x1
    /* FAF18 801539E8 8E490000 */  lw         $t1, 0x0($s2)
  .L801539EC_ovl4:
    /* FAF1C 801539EC 00096080 */  sll        $t4, $t1, 2
    /* FAF20 801539F0 01896023 */  subu       $t4, $t4, $t1
    /* FAF24 801539F4 000C6100 */  sll        $t4, $t4, 4
    /* FAF28 801539F8 026C5021 */  addu       $t2, $s3, $t4
    /* FAF2C 801539FC 01514021 */  addu       $t0, $t2, $s1
    /* FAF30 80153A00 0C02AA22 */  jal        func_800AA888
    /* FAF34 80153A04 8D040004 */   lw        $a0, 0x4($t0)
    /* FAF38 80153A08 54400019 */  bnel       $v0, $zero, .L80153A70_ovl4
    /* FAF3C 80153A0C 26100001 */   addiu     $s0, $s0, 0x1
    /* FAF40 80153A10 8E8E0000 */  lw         $t6, 0x0($s4)
    /* FAF44 80153A14 8DCB0000 */  lw         $t3, 0x0($t6)
    /* FAF48 80153A18 000BC880 */  sll        $t9, $t3, 2
    /* FAF4C 80153A1C 02B97821 */  addu       $t7, $s5, $t9
    /* FAF50 80153A20 0C002EF8 */  jal        func_8000BBE0
    /* FAF54 80153A24 8DE40000 */   lw        $a0, 0x0($t7)
    /* FAF58 80153A28 8E4D0000 */  lw         $t5, 0x0($s2)
    /* FAF5C 80153A2C 000DC080 */  sll        $t8, $t5, 2
    /* FAF60 80153A30 030DC023 */  subu       $t8, $t8, $t5
    /* FAF64 80153A34 0018C100 */  sll        $t8, $t8, 4
    /* FAF68 80153A38 02784821 */  addu       $t1, $s3, $t8
    /* FAF6C 80153A3C 01316021 */  addu       $t4, $t1, $s1
    /* FAF70 80153A40 0C02A5D8 */  jal        func_800A9760
    /* FAF74 80153A44 8D840004 */   lw        $a0, 0x4($t4)
    /* FAF78 80153A48 8E4A0000 */  lw         $t2, 0x0($s2)
    /* FAF7C 80153A4C 4405A000 */  mfc1       $a1, $f20
    /* FAF80 80153A50 000A4080 */  sll        $t0, $t2, 2
    /* FAF84 80153A54 010A4023 */  subu       $t0, $t0, $t2
    /* FAF88 80153A58 00084100 */  sll        $t0, $t0, 4
    /* FAF8C 80153A5C 02E87021 */  addu       $t6, $s7, $t0
    /* FAF90 80153A60 01D15821 */  addu       $t3, $t6, $s1
    /* FAF94 80153A64 0C02A7E6 */  jal        func_800A9F98
    /* FAF98 80153A68 8D640004 */   lw        $a0, 0x4($t3)
    /* FAF9C 80153A6C 26100001 */  addiu      $s0, $s0, 0x1
  .L80153A70_ovl4:
    /* FAFA0 80153A70 0C002DAF */  jal        ohSleep
    /* FAFA4 80153A74 24040001 */   addiu     $a0, $zero, 0x1
    /* FAFA8 80153A78 1000FF8A */  b          .L801538A4_ovl4
    /* FAFAC 80153A7C 00000000 */   nop
    /* FAFB0 80153A80 8FBF003C */  lw         $ra, 0x3C($sp)
    /* FAFB4 80153A84 D7B40010 */  ldc1       $f20, 0x10($sp)
    /* FAFB8 80153A88 8FB0001C */  lw         $s0, 0x1C($sp)
    /* FAFBC 80153A8C 8FB10020 */  lw         $s1, 0x20($sp)
    /* FAFC0 80153A90 8FB20024 */  lw         $s2, 0x24($sp)
    /* FAFC4 80153A94 8FB30028 */  lw         $s3, 0x28($sp)
    /* FAFC8 80153A98 8FB4002C */  lw         $s4, 0x2C($sp)
    /* FAFCC 80153A9C 8FB50030 */  lw         $s5, 0x30($sp)
    /* FAFD0 80153AA0 8FB60034 */  lw         $s6, 0x34($sp)
    /* FAFD4 80153AA4 8FB70038 */  lw         $s7, 0x38($sp)
    /* FAFD8 80153AA8 03E00008 */  jr         $ra
    /* FAFDC 80153AAC 27BD0290 */   addiu     $sp, $sp, 0x290
endlabel func_801533A8_ovl4
.size func_801533A8_ovl4, . - func_801533A8_ovl4
