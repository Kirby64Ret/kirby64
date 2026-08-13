nonmatching func_8016EF78_ovl5, 0x378

glabel func_8016EF78_ovl5
    /* 1163E8 8016EF78 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 1163EC 8016EF7C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 1163F0 8016EF80 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 1163F4 8016EF84 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 1163F8 8016EF88 AFBE0040 */  sw         $fp, 0x40($sp)
    /* 1163FC 8016EF8C AFB7003C */  sw         $s7, 0x3C($sp)
    /* 116400 8016EF90 AFB60038 */  sw         $s6, 0x38($sp)
    /* 116404 8016EF94 AFB50034 */  sw         $s5, 0x34($sp)
    /* 116408 8016EF98 AFB40030 */  sw         $s4, 0x30($sp)
    /* 11640C 8016EF9C AFB3002C */  sw         $s3, 0x2C($sp)
    /* 116410 8016EFA0 AFB20028 */  sw         $s2, 0x28($sp)
    /* 116414 8016EFA4 AFB10024 */  sw         $s1, 0x24($sp)
    /* 116418 8016EFA8 AFB00020 */  sw         $s0, 0x20($sp)
    /* 11641C 8016EFAC AFA40048 */  sw         $a0, 0x48($sp)
    /* 116420 8016EFB0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 116424 8016EFB4 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 116428 8016EFB8 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 11642C 8016EFBC 000E7880 */  sll        $t7, $t6, 2
    /* 116430 8016EFC0 002F0821 */  addu       $at, $at, $t7
    /* 116434 8016EFC4 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
    /* 116438 8016EFC8 8C580000 */  lw         $t8, 0x0($v0)
    /* 11643C 8016EFCC 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 116440 8016EFD0 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* 116444 8016EFD4 0018C880 */  sll        $t9, $t8, 2
    /* 116448 8016EFD8 00992021 */  addu       $a0, $a0, $t9
    /* 11644C 8016EFDC 0C02C7DA */  jal        setProcessMain
    /* 116450 8016EFE0 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 116454 8016EFE4 3C118019 */  lui        $s1, %hi(D_8018E440_ovl5)
    /* 116458 8016EFE8 2631E440 */  addiu      $s1, $s1, %lo(D_8018E440_ovl5)
    /* 11645C 8016EFEC 3C05800B */  lui        $a1, %hi(func_800AD1A0)
    /* 116460 8016EFF0 2408000A */  addiu      $t0, $zero, 0xA
    /* 116464 8016EFF4 A2200000 */  sb         $zero, 0x0($s1)
    /* 116468 8016EFF8 AFA80010 */  sw         $t0, 0x10($sp)
    /* 11646C 8016EFFC 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
    /* 116470 8016F000 8FA40048 */  lw         $a0, 0x48($sp)
    /* 116474 8016F004 2406000A */  addiu      $a2, $zero, 0xA
    /* 116478 8016F008 0C00297F */  jal        omLinkGObjDL
    /* 11647C 8016F00C 3C078000 */   lui       $a3, (0x80000000 >> 16)
    /* 116480 8016F010 0C02ECFC */  jal        func_800BB3F0
    /* 116484 8016F014 00000000 */   nop
    /* 116488 8016F018 3C058018 */  lui        $a1, %hi(D_80187014_ovl5)
    /* 11648C 8016F01C 24A57014 */  addiu      $a1, $a1, %lo(D_80187014_ovl5)
    /* 116490 8016F020 0C0571D0 */  jal        func_8015C740_ovl5
    /* 116494 8016F024 8FA40048 */   lw        $a0, 0x48($sp)
    /* 116498 8016F028 3C014250 */  lui        $at, (0x42500000 >> 16)
    /* 11649C 8016F02C 44812000 */  mtc1       $at, $f4
    /* 1164A0 8016F030 3C018019 */  lui        $at, %hi(D_8018D770_ovl5)
    /* 1164A4 8016F034 3C058018 */  lui        $a1, %hi(D_80186F94_ovl5)
    /* 1164A8 8016F038 E4440028 */  swc1       $f4, 0x28($v0)
    /* 1164AC 8016F03C C426D770 */  lwc1       $f6, %lo(D_8018D770_ovl5)($at)
    /* 1164B0 8016F040 24A56F94 */  addiu      $a1, $a1, %lo(D_80186F94_ovl5)
    /* 1164B4 8016F044 E446002C */  swc1       $f6, 0x2C($v0)
    /* 1164B8 8016F048 0C0571D0 */  jal        func_8015C740_ovl5
    /* 1164BC 8016F04C 8FA40048 */   lw        $a0, 0x48($sp)
    /* 1164C0 8016F050 3C058018 */  lui        $a1, %hi(D_80186FB4_ovl5)
    /* 1164C4 8016F054 24A56FB4 */  addiu      $a1, $a1, %lo(D_80186FB4_ovl5)
    /* 1164C8 8016F058 0C0571D0 */  jal        func_8015C740_ovl5
    /* 1164CC 8016F05C 8FA40048 */   lw        $a0, 0x48($sp)
    /* 1164D0 8016F060 3C058018 */  lui        $a1, %hi(D_80186FD4_ovl5)
    /* 1164D4 8016F064 24A56FD4 */  addiu      $a1, $a1, %lo(D_80186FD4_ovl5)
    /* 1164D8 8016F068 0C0571D0 */  jal        func_8015C740_ovl5
    /* 1164DC 8016F06C 8FA40048 */   lw        $a0, 0x48($sp)
    /* 1164E0 8016F070 3C058018 */  lui        $a1, %hi(D_80186FF4_ovl5)
    /* 1164E4 8016F074 24A56FF4 */  addiu      $a1, $a1, %lo(D_80186FF4_ovl5)
    /* 1164E8 8016F078 0C0571D0 */  jal        func_8015C740_ovl5
    /* 1164EC 8016F07C 8FA40048 */   lw        $a0, 0x48($sp)
    /* 1164F0 8016F080 3C058018 */  lui        $a1, %hi(D_80187034_ovl5)
    /* 1164F4 8016F084 24A57034 */  addiu      $a1, $a1, %lo(D_80187034_ovl5)
    /* 1164F8 8016F088 0C0571D0 */  jal        func_8015C740_ovl5
    /* 1164FC 8016F08C 8FA40048 */   lw        $a0, 0x48($sp)
    /* 116500 8016F090 3C058018 */  lui        $a1, %hi(D_80187054_ovl5)
    /* 116504 8016F094 24A57054 */  addiu      $a1, $a1, %lo(D_80187054_ovl5)
    /* 116508 8016F098 0C0571D0 */  jal        func_8015C740_ovl5
    /* 11650C 8016F09C 8FA40048 */   lw        $a0, 0x48($sp)
    /* 116510 8016F0A0 3C058018 */  lui        $a1, %hi(D_80187074_ovl5)
    /* 116514 8016F0A4 24A57074 */  addiu      $a1, $a1, %lo(D_80187074_ovl5)
    /* 116518 8016F0A8 0C0571D0 */  jal        func_8015C740_ovl5
    /* 11651C 8016F0AC 8FA40048 */   lw        $a0, 0x48($sp)
    /* 116520 8016F0B0 92290000 */  lbu        $t1, 0x0($s1)
    /* 116524 8016F0B4 3C158018 */  lui        $s5, %hi(D_80187094_ovl5)
    /* 116528 8016F0B8 26B57094 */  addiu      $s5, $s5, %lo(D_80187094_ovl5)
    /* 11652C 8016F0BC 000950C0 */  sll        $t2, $t1, 3
    /* 116530 8016F0C0 02AA5821 */  addu       $t3, $s5, $t2
    /* 116534 8016F0C4 C5680000 */  lwc1       $f8, 0x0($t3)
    /* 116538 8016F0C8 0040A025 */  or         $s4, $v0, $zero
    /* 11653C 8016F0CC 24040006 */  addiu      $a0, $zero, 0x6
    /* 116540 8016F0D0 E4480020 */  swc1       $f8, 0x20($v0)
    /* 116544 8016F0D4 922C0000 */  lbu        $t4, 0x0($s1)
    /* 116548 8016F0D8 000C68C0 */  sll        $t5, $t4, 3
    /* 11654C 8016F0DC 02AD7021 */  addu       $t6, $s5, $t5
    /* 116550 8016F0E0 C5CA0004 */  lwc1       $f10, 0x4($t6)
    /* 116554 8016F0E4 0C002DAF */  jal        ohSleep
    /* 116558 8016F0E8 E44A0024 */   swc1      $f10, 0x24($v0)
    /* 11655C 8016F0EC 3C16800D */  lui        $s6, %hi(D_800D7178)
    /* 116560 8016F0F0 3C138005 */  lui        $s3, %hi(gPlayerControllers)
    /* 116564 8016F0F4 3C12800C */  lui        $s2, %hi(gGameState)
    /* 116568 8016F0F8 24100005 */  addiu      $s0, $zero, 0x5
    /* 11656C 8016F0FC 2652E4F0 */  addiu      $s2, $s2, %lo(gGameState)
    /* 116570 8016F100 26738F20 */  addiu      $s3, $s3, %lo(gPlayerControllers)
    /* 116574 8016F104 26D67178 */  addiu      $s6, $s6, %lo(D_800D7178)
    /* 116578 8016F108 241E0002 */  addiu      $fp, $zero, 0x2
    /* 11657C 8016F10C 24170001 */  addiu      $s7, $zero, 0x1
  .L8016F110_ovl5:
    /* 116580 8016F110 52000009 */  beql       $s0, $zero, .L8016F138_ovl5
    /* 116584 8016F114 96790002 */   lhu       $t9, 0x2($s3)
    /* 116588 8016F118 966F0000 */  lhu        $t7, 0x0($s3)
    /* 11658C 8016F11C 2610FFFF */  addiu      $s0, $s0, -0x1
    /* 116590 8016F120 31F80F00 */  andi       $t8, $t7, 0xF00
    /* 116594 8016F124 1700005F */  bnez       $t8, .L8016F2A4_ovl5
    /* 116598 8016F128 00000000 */   nop
    /* 11659C 8016F12C 1000005D */  b          .L8016F2A4_ovl5
    /* 1165A0 8016F130 00008025 */   or        $s0, $zero, $zero
    /* 1165A4 8016F134 96790002 */  lhu        $t9, 0x2($s3)
  .L8016F138_ovl5:
    /* 1165A8 8016F138 33289000 */  andi       $t0, $t9, 0x9000
    /* 1165AC 8016F13C 51000033 */  beql       $t0, $zero, .L8016F20C_ovl5
    /* 1165B0 8016F140 96620000 */   lhu       $v0, 0x0($s3)
    /* 1165B4 8016F144 92220000 */  lbu        $v0, 0x0($s1)
    /* 1165B8 8016F148 AED70078 */  sw         $s7, 0x78($s6)
    /* 1165BC 8016F14C 24040113 */  addiu      $a0, $zero, 0x113
    /* 1165C0 8016F150 10400009 */  beqz       $v0, .L8016F178_ovl5
    /* 1165C4 8016F154 00000000 */   nop
    /* 1165C8 8016F158 10570011 */  beq        $v0, $s7, .L8016F1A0_ovl5
    /* 1165CC 8016F15C 00000000 */   nop
    /* 1165D0 8016F160 105E0014 */  beq        $v0, $fp, .L8016F1B4_ovl5
    /* 1165D4 8016F164 24010003 */   addiu     $at, $zero, 0x3
    /* 1165D8 8016F168 1041001A */  beq        $v0, $at, .L8016F1D4_ovl5
    /* 1165DC 8016F16C 00000000 */   nop
    /* 1165E0 8016F170 1000001F */  b          .L8016F1F0_ovl5
    /* 1165E4 8016F174 00000000 */   nop
  .L8016F178_ovl5:
    /* 1165E8 8016F178 0C029D9E */  jal        play_sound
    /* 1165EC 8016F17C AEDE0078 */   sw        $fp, 0x78($s6)
    /* 1165F0 8016F180 0C02B2F7 */  jal        func_800ACBDC
    /* 1165F4 8016F184 8FA40048 */   lw        $a0, 0x48($sp)
    /* 1165F8 8016F188 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 1165FC 8016F18C 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 116600 8016F190 0C02C640 */  jal        func_800B1900
    /* 116604 8016F194 95240002 */   lhu       $a0, 0x2($t1)
    /* 116608 8016F198 10000015 */  b          .L8016F1F0_ovl5
    /* 11660C 8016F19C 00000000 */   nop
  .L8016F1A0_ovl5:
    /* 116610 8016F1A0 0C029D9E */  jal        play_sound
    /* 116614 8016F1A4 240400ED */   addiu     $a0, $zero, 0xED
    /* 116618 8016F1A8 240A001E */  addiu      $t2, $zero, 0x1E
    /* 11661C 8016F1AC 10000010 */  b          .L8016F1F0_ovl5
    /* 116620 8016F1B0 AE4A0000 */   sw        $t2, 0x0($s2)
  .L8016F1B4_ovl5:
    /* 116624 8016F1B4 0C029D9E */  jal        play_sound
    /* 116628 8016F1B8 240400ED */   addiu     $a0, $zero, 0xED
    /* 11662C 8016F1BC 8E4B0000 */  lw         $t3, 0x0($s2)
    /* 116630 8016F1C0 3C01800D */  lui        $at, %hi(D_800D6B68)
    /* 116634 8016F1C4 240C001B */  addiu      $t4, $zero, 0x1B
    /* 116638 8016F1C8 AC2B6B68 */  sw         $t3, %lo(D_800D6B68)($at)
    /* 11663C 8016F1CC 10000008 */  b          .L8016F1F0_ovl5
    /* 116640 8016F1D0 AE4C0000 */   sw        $t4, 0x0($s2)
  .L8016F1D4_ovl5:
    /* 116644 8016F1D4 0C029D9E */  jal        play_sound
    /* 116648 8016F1D8 2404002B */   addiu     $a0, $zero, 0x2B
    /* 11664C 8016F1DC 8E4D0000 */  lw         $t5, 0x0($s2)
    /* 116650 8016F1E0 3C01800D */  lui        $at, %hi(D_800D6B68)
    /* 116654 8016F1E4 240E000A */  addiu      $t6, $zero, 0xA
    /* 116658 8016F1E8 AC2D6B68 */  sw         $t5, %lo(D_800D6B68)($at)
    /* 11665C 8016F1EC AE4E0000 */  sw         $t6, 0x0($s2)
  .L8016F1F0_ovl5:
    /* 116660 8016F1F0 0C05BDCC */  jal        func_8016F730_ovl5
    /* 116664 8016F1F4 00000000 */   nop
    /* 116668 8016F1F8 0C02BE85 */  jal        curObjSleepForever
    /* 11666C 8016F1FC 00000000 */   nop
    /* 116670 8016F200 1000001F */  b          .L8016F280_ovl5
    /* 116674 8016F204 922A0000 */   lbu       $t2, 0x0($s1)
    /* 116678 8016F208 96620000 */  lhu        $v0, 0x0($s3)
  .L8016F20C_ovl5:
    /* 11667C 8016F20C 304F0800 */  andi       $t7, $v0, 0x800
    /* 116680 8016F210 11E0000D */  beqz       $t7, .L8016F248_ovl5
    /* 116684 8016F214 30480400 */   andi      $t0, $v0, 0x400
    /* 116688 8016F218 0C029D9E */  jal        play_sound
    /* 11668C 8016F21C 24040113 */   addiu     $a0, $zero, 0x113
    /* 116690 8016F220 92220000 */  lbu        $v0, 0x0($s1)
    /* 116694 8016F224 24180003 */  addiu      $t8, $zero, 0x3
    /* 116698 8016F228 24100005 */  addiu      $s0, $zero, 0x5
    /* 11669C 8016F22C 14400004 */  bnez       $v0, .L8016F240_ovl5
    /* 1166A0 8016F230 2459FFFF */   addiu     $t9, $v0, -0x1
    /* 1166A4 8016F234 A2380000 */  sb         $t8, 0x0($s1)
    /* 1166A8 8016F238 10000010 */  b          .L8016F27C_ovl5
    /* 1166AC 8016F23C 24100005 */   addiu     $s0, $zero, 0x5
  .L8016F240_ovl5:
    /* 1166B0 8016F240 1000000E */  b          .L8016F27C_ovl5
    /* 1166B4 8016F244 A2390000 */   sb        $t9, 0x0($s1)
  .L8016F248_ovl5:
    /* 1166B8 8016F248 5100000D */  beql       $t0, $zero, .L8016F280_ovl5
    /* 1166BC 8016F24C 922A0000 */   lbu       $t2, 0x0($s1)
    /* 1166C0 8016F250 0C029D9E */  jal        play_sound
    /* 1166C4 8016F254 24040113 */   addiu     $a0, $zero, 0x113
    /* 1166C8 8016F258 92220000 */  lbu        $v0, 0x0($s1)
    /* 1166CC 8016F25C 24010003 */  addiu      $at, $zero, 0x3
    /* 1166D0 8016F260 24100005 */  addiu      $s0, $zero, 0x5
    /* 1166D4 8016F264 14410004 */  bne        $v0, $at, .L8016F278_ovl5
    /* 1166D8 8016F268 24490001 */   addiu     $t1, $v0, 0x1
    /* 1166DC 8016F26C A2200000 */  sb         $zero, 0x0($s1)
    /* 1166E0 8016F270 10000002 */  b          .L8016F27C_ovl5
    /* 1166E4 8016F274 24100005 */   addiu     $s0, $zero, 0x5
  .L8016F278_ovl5:
    /* 1166E8 8016F278 A2290000 */  sb         $t1, 0x0($s1)
  .L8016F27C_ovl5:
    /* 1166EC 8016F27C 922A0000 */  lbu        $t2, 0x0($s1)
  .L8016F280_ovl5:
    /* 1166F0 8016F280 000A58C0 */  sll        $t3, $t2, 3
    /* 1166F4 8016F284 02AB6021 */  addu       $t4, $s5, $t3
    /* 1166F8 8016F288 C5900000 */  lwc1       $f16, 0x0($t4)
    /* 1166FC 8016F28C E6900020 */  swc1       $f16, 0x20($s4)
    /* 116700 8016F290 922D0000 */  lbu        $t5, 0x0($s1)
    /* 116704 8016F294 000D70C0 */  sll        $t6, $t5, 3
    /* 116708 8016F298 02AE7821 */  addu       $t7, $s5, $t6
    /* 11670C 8016F29C C5F20004 */  lwc1       $f18, 0x4($t7)
    /* 116710 8016F2A0 E6920024 */  swc1       $f18, 0x24($s4)
  .L8016F2A4_ovl5:
    /* 116714 8016F2A4 0C002DAF */  jal        ohSleep
    /* 116718 8016F2A8 02E02025 */   or        $a0, $s7, $zero
    /* 11671C 8016F2AC 1000FF98 */  b          .L8016F110_ovl5
    /* 116720 8016F2B0 00000000 */   nop
    /* 116724 8016F2B4 00000000 */  nop
    /* 116728 8016F2B8 00000000 */  nop
    /* 11672C 8016F2BC 00000000 */  nop
    /* 116730 8016F2C0 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 116734 8016F2C4 8FB00020 */  lw         $s0, 0x20($sp)
    /* 116738 8016F2C8 8FB10024 */  lw         $s1, 0x24($sp)
    /* 11673C 8016F2CC 8FB20028 */  lw         $s2, 0x28($sp)
    /* 116740 8016F2D0 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 116744 8016F2D4 8FB40030 */  lw         $s4, 0x30($sp)
    /* 116748 8016F2D8 8FB50034 */  lw         $s5, 0x34($sp)
    /* 11674C 8016F2DC 8FB60038 */  lw         $s6, 0x38($sp)
    /* 116750 8016F2E0 8FB7003C */  lw         $s7, 0x3C($sp)
    /* 116754 8016F2E4 8FBE0040 */  lw         $fp, 0x40($sp)
    /* 116758 8016F2E8 03E00008 */  jr         $ra
    /* 11675C 8016F2EC 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_8016EF78_ovl5
.size func_8016EF78_ovl5, . - func_8016EF78_ovl5
