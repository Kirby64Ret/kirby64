nonmatching func_80165440_ovl5, 0x1D0

glabel func_80165440_ovl5
    /* 10C8B0 80165440 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 10C8B4 80165444 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 10C8B8 80165448 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 10C8BC 8016544C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 10C8C0 80165450 8DC20000 */  lw         $v0, 0x0($t6)
    /* 10C8C4 80165454 3C03800F */  lui        $v1, %hi(D_800E98E0)
    /* 10C8C8 80165458 00021080 */  sll        $v0, $v0, 2
    /* 10C8CC 8016545C 00621821 */  addu       $v1, $v1, $v0
    /* 10C8D0 80165460 8C6398E0 */  lw         $v1, %lo(D_800E98E0)($v1)
    /* 10C8D4 80165464 2C610014 */  sltiu      $at, $v1, 0x14
    /* 10C8D8 80165468 10200065 */  beqz       $at, .L80165600_ovl5
    /* 10C8DC 8016546C 00037880 */   sll       $t7, $v1, 2
    /* 10C8E0 80165470 3C018019 */  lui        $at, %hi(jtbl_8018D658_ovl5)
    /* 10C8E4 80165474 002F0821 */  addu       $at, $at, $t7
    /* 10C8E8 80165478 8C2FD658 */  lw         $t7, %lo(jtbl_8018D658_ovl5)($at)
    /* 10C8EC 8016547C 01E00008 */  jr         $t7
    /* 10C8F0 80165480 00000000 */   nop
  jlabel .L80165484_ovl5
    /* 10C8F4 80165484 0C059ACA */  jal        func_80166B28_ovl5
    /* 10C8F8 80165488 00000000 */   nop
    /* 10C8FC 8016548C 1000005D */  b          .L80165604_ovl5
    /* 10C900 80165490 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L80165494_ovl5
    /* 10C904 80165494 0C059E4B */  jal        func_8016792C_ovl5
    /* 10C908 80165498 2465FFFE */   addiu     $a1, $v1, -0x2
    /* 10C90C 8016549C 10000059 */  b          .L80165604_ovl5
    /* 10C910 801654A0 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L801654A4_ovl5
    /* 10C914 801654A4 0C05B2DF */  jal        func_8016CB7C_ovl5
    /* 10C918 801654A8 00000000 */   nop
    /* 10C91C 801654AC 10000055 */  b          .L80165604_ovl5
    /* 10C920 801654B0 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L801654B4_ovl5
    /* 10C924 801654B4 3C05800F */  lui        $a1, %hi(D_800E9C60)
    /* 10C928 801654B8 3C06800F */  lui        $a2, %hi(D_800E9E20)
    /* 10C92C 801654BC 3C07800F */  lui        $a3, %hi(D_800E9FE0)
    /* 10C930 801654C0 00E23821 */  addu       $a3, $a3, $v0
    /* 10C934 801654C4 00C23021 */  addu       $a2, $a2, $v0
    /* 10C938 801654C8 00A22821 */  addu       $a1, $a1, $v0
    /* 10C93C 801654CC 8CA59C60 */  lw         $a1, %lo(D_800E9C60)($a1)
    /* 10C940 801654D0 8CC69E20 */  lw         $a2, %lo(D_800E9E20)($a2)
    /* 10C944 801654D4 0C05ADD5 */  jal        func_8016B754_ovl5
    /* 10C948 801654D8 8CE79FE0 */   lw        $a3, %lo(D_800E9FE0)($a3)
    /* 10C94C 801654DC 10000049 */  b          .L80165604_ovl5
    /* 10C950 801654E0 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L801654E4_ovl5
    /* 10C954 801654E4 3C05800F */  lui        $a1, %hi(D_800E9FE0)
    /* 10C958 801654E8 00A22821 */  addu       $a1, $a1, $v0
    /* 10C95C 801654EC 0C05B3EC */  jal        func_8016CFB0_ovl5
    /* 10C960 801654F0 8CA59FE0 */   lw        $a1, %lo(D_800E9FE0)($a1)
    /* 10C964 801654F4 10000043 */  b          .L80165604_ovl5
    /* 10C968 801654F8 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L801654FC_ovl5
    /* 10C96C 801654FC 3C05800F */  lui        $a1, %hi(D_800E9FE0)
    /* 10C970 80165500 00A22821 */  addu       $a1, $a1, $v0
    /* 10C974 80165504 0C05B9BC */  jal        func_8016E6F0_ovl5
    /* 10C978 80165508 8CA59FE0 */   lw        $a1, %lo(D_800E9FE0)($a1)
    /* 10C97C 8016550C 1000003D */  b          .L80165604_ovl5
    /* 10C980 80165510 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L80165514_ovl5
    /* 10C984 80165514 3C05800F */  lui        $a1, %hi(D_800E9AA0)
    /* 10C988 80165518 00A22821 */  addu       $a1, $a1, $v0
    /* 10C98C 8016551C 0C05989B */  jal        func_8016626C_ovl5
    /* 10C990 80165520 8CA59AA0 */   lw        $a1, %lo(D_800E9AA0)($a1)
    /* 10C994 80165524 10000037 */  b          .L80165604_ovl5
    /* 10C998 80165528 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L8016552C_ovl5
    /* 10C99C 8016552C 3C05800F */  lui        $a1, %hi(D_800E9AA0)
    /* 10C9A0 80165530 3C06800F */  lui        $a2, %hi(D_800E9FE0)
    /* 10C9A4 80165534 00C23021 */  addu       $a2, $a2, $v0
    /* 10C9A8 80165538 00A22821 */  addu       $a1, $a1, $v0
    /* 10C9AC 8016553C 8CA59AA0 */  lw         $a1, %lo(D_800E9AA0)($a1)
    /* 10C9B0 80165540 0C05AFAC */  jal        func_8016BEB0_ovl5
    /* 10C9B4 80165544 8CC69FE0 */   lw        $a2, %lo(D_800E9FE0)($a2)
    /* 10C9B8 80165548 1000002E */  b          .L80165604_ovl5
    /* 10C9BC 8016554C 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L80165550_ovl5
    /* 10C9C0 80165550 3C05800F */  lui        $a1, %hi(D_800E9FE0)
    /* 10C9C4 80165554 00A22821 */  addu       $a1, $a1, $v0
    /* 10C9C8 80165558 0C05AFFC */  jal        func_8016BFF0_ovl5
    /* 10C9CC 8016555C 8CA59FE0 */   lw        $a1, %lo(D_800E9FE0)($a1)
    /* 10C9D0 80165560 10000028 */  b          .L80165604_ovl5
    /* 10C9D4 80165564 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L80165568_ovl5
    /* 10C9D8 80165568 3C05800F */  lui        $a1, %hi(D_800E9FE0)
    /* 10C9DC 8016556C 00A22821 */  addu       $a1, $a1, $v0
    /* 10C9E0 80165570 0C05B0A3 */  jal        func_8016C28C_ovl5
    /* 10C9E4 80165574 8CA59FE0 */   lw        $a1, %lo(D_800E9FE0)($a1)
    /* 10C9E8 80165578 10000022 */  b          .L80165604_ovl5
    /* 10C9EC 8016557C 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L80165580_ovl5
    /* 10C9F0 80165580 0C05BABF */  jal        func_8016EAFC_ovl5
    /* 10C9F4 80165584 00000000 */   nop
    /* 10C9F8 80165588 1000001E */  b          .L80165604_ovl5
    /* 10C9FC 8016558C 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L80165590_ovl5
    /* 10CA00 80165590 3C05800F */  lui        $a1, %hi(D_800EA1A0)
    /* 10CA04 80165594 00A22821 */  addu       $a1, $a1, $v0
    /* 10CA08 80165598 0C05A9DD */  jal        func_8016A774_ovl5
    /* 10CA0C 8016559C 8CA5A1A0 */   lw        $a1, %lo(D_800EA1A0)($a1)
    /* 10CA10 801655A0 10000018 */  b          .L80165604_ovl5
    /* 10CA14 801655A4 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L801655A8_ovl5
    /* 10CA18 801655A8 3C05800F */  lui        $a1, %hi(D_800E9FE0)
    /* 10CA1C 801655AC 00A22821 */  addu       $a1, $a1, $v0
    /* 10CA20 801655B0 0C05B142 */  jal        func_8016C508_ovl5
    /* 10CA24 801655B4 8CA59FE0 */   lw        $a1, %lo(D_800E9FE0)($a1)
    /* 10CA28 801655B8 10000012 */  b          .L80165604_ovl5
    /* 10CA2C 801655BC 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L801655C0_ovl5
    /* 10CA30 801655C0 3C05800F */  lui        $a1, %hi(D_800E9FE0)
    /* 10CA34 801655C4 00A22821 */  addu       $a1, $a1, $v0
    /* 10CA38 801655C8 0C05B25D */  jal        func_8016C974_ovl5
    /* 10CA3C 801655CC 8CA59FE0 */   lw        $a1, %lo(D_800E9FE0)($a1)
    /* 10CA40 801655D0 1000000C */  b          .L80165604_ovl5
    /* 10CA44 801655D4 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L801655D8_ovl5
    /* 10CA48 801655D8 0C05BBDE */  jal        func_8016EF78_ovl5
    /* 10CA4C 801655DC 00000000 */   nop
    /* 10CA50 801655E0 10000008 */  b          .L80165604_ovl5
    /* 10CA54 801655E4 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L801655E8_ovl5
    /* 10CA58 801655E8 0C05BCBC */  jal        func_8016F2F0_ovl5
    /* 10CA5C 801655EC 00000000 */   nop
    /* 10CA60 801655F0 10000004 */  b          .L80165604_ovl5
    /* 10CA64 801655F4 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L801655F8_ovl5
    /* 10CA68 801655F8 0C05BD03 */  jal        func_8016F40C_ovl5
    /* 10CA6C 801655FC 00000000 */   nop
  .L80165600_ovl5:
    /* 10CA70 80165600 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80165604_ovl5:
    /* 10CA74 80165604 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 10CA78 80165608 03E00008 */  jr         $ra
    /* 10CA7C 8016560C 00000000 */   nop
endlabel func_80165440_ovl5
.size func_80165440_ovl5, . - func_80165440_ovl5
