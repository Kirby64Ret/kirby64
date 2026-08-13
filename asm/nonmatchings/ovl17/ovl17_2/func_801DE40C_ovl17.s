nonmatching func_801DE40C_ovl17, 0x340

glabel func_801DE40C_ovl17
    /* 2295FC 801DE40C 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 229600 801DE410 AFB4002C */  sw         $s4, 0x2C($sp)
    /* 229604 801DE414 3C148005 */  lui        $s4, %hi(omCurrentObj)
    /* 229608 801DE418 2694A7C4 */  addiu      $s4, $s4, %lo(omCurrentObj)
    /* 22960C 801DE41C 8E830000 */  lw         $v1, 0x0($s4)
    /* 229610 801DE420 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 229614 801DE424 AFB50030 */  sw         $s5, 0x30($sp)
    /* 229618 801DE428 AFB30028 */  sw         $s3, 0x28($sp)
    /* 22961C 801DE42C AFB20024 */  sw         $s2, 0x24($sp)
    /* 229620 801DE430 AFB10020 */  sw         $s1, 0x20($sp)
    /* 229624 801DE434 AFB0001C */  sw         $s0, 0x1C($sp)
    /* 229628 801DE438 8C650000 */  lw         $a1, 0x0($v1)
    /* 22962C 801DE43C 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
    /* 229630 801DE440 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* 229634 801DE444 00052880 */  sll        $a1, $a1, 2
    /* 229638 801DE448 01C57021 */  addu       $t6, $t6, $a1
    /* 22963C 801DE44C 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
    /* 229640 801DE450 00250821 */  addu       $at, $at, $a1
    /* 229644 801DE454 240F0003 */  addiu      $t7, $zero, 0x3
    /* 229648 801DE458 8DD3007C */  lw         $s3, 0x7C($t6)
    /* 22964C 801DE45C AC2FDFD0 */  sw         $t7, %lo(D_800DDFD0)($at)
    /* 229650 801DE460 8C780000 */  lw         $t8, 0x0($v1)
    /* 229654 801DE464 00808025 */  or         $s0, $a0, $zero
    /* 229658 801DE468 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 22965C 801DE46C 0018C880 */  sll        $t9, $t8, 2
    /* 229660 801DE470 00390821 */  addu       $at, $at, $t9
    /* 229664 801DE474 3C040001 */  lui        $a0, (0x10501 >> 16)
    /* 229668 801DE478 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
    /* 22966C 801DE47C 0C02A806 */  jal        func_800AA018
    /* 229670 801DE480 34840501 */   ori       $a0, $a0, (0x10501 & 0xFFFF)
    /* 229674 801DE484 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* 229678 801DE488 44810000 */  mtc1       $at, $f0
    /* 22967C 801DE48C 8E08003C */  lw         $t0, 0x3C($s0)
    /* 229680 801DE490 3C110001 */  lui        $s1, (0x10500 >> 16)
    /* 229684 801DE494 36310500 */  ori        $s1, $s1, (0x10500 & 0xFFFF)
    /* 229688 801DE498 3C070001 */  lui        $a3, (0x10083 >> 16)
    /* 22968C 801DE49C 8D040010 */  lw         $a0, 0x10($t0)
    /* 229690 801DE4A0 44060000 */  mfc1       $a2, $f0
    /* 229694 801DE4A4 34E70083 */  ori        $a3, $a3, (0x10083 & 0xFFFF)
    /* 229698 801DE4A8 02202825 */  or         $a1, $s1, $zero
    /* 22969C 801DE4AC 0C02A982 */  jal        func_800AA608
    /* 2296A0 801DE4B0 E7A00010 */   swc1      $f0, 0x10($sp)
    /* 2296A4 801DE4B4 02202025 */  or         $a0, $s1, $zero
    /* 2296A8 801DE4B8 0C02A7E6 */  jal        func_800A9F98
    /* 2296AC 801DE4BC 3C054080 */   lui       $a1, (0x40800000 >> 16)
    /* 2296B0 801DE4C0 8E8A0000 */  lw         $t2, 0x0($s4)
    /* 2296B4 801DE4C4 3C01800F */  lui        $at, %hi(D_800E93A0)
    /* 2296B8 801DE4C8 24090014 */  addiu      $t1, $zero, 0x14
    /* 2296BC 801DE4CC 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 2296C0 801DE4D0 24040008 */  addiu      $a0, $zero, 0x8
    /* 2296C4 801DE4D4 000B6080 */  sll        $t4, $t3, 2
    /* 2296C8 801DE4D8 002C0821 */  addu       $at, $at, $t4
    /* 2296CC 801DE4DC 0C002DAF */  jal        ohSleep
    /* 2296D0 801DE4E0 AC2993A0 */   sw        $t1, %lo(D_800E93A0)($at)
    /* 2296D4 801DE4E4 27B1005C */  addiu      $s1, $sp, 0x5C
    /* 2296D8 801DE4E8 02202025 */  or         $a0, $s1, $zero
    /* 2296DC 801DE4EC 0C0291E5 */  jal        utilGetTransformSRT
    /* 2296E0 801DE4F0 02602825 */   or        $a1, $s3, $zero
    /* 2296E4 801DE4F4 2404003D */  addiu      $a0, $zero, 0x3D
    /* 2296E8 801DE4F8 24050001 */  addiu      $a1, $zero, 0x1
    /* 2296EC 801DE4FC 0C06B364 */  jal        func_801ACD90_ovl7
    /* 2296F0 801DE500 02203025 */   or        $a2, $s1, $zero
    /* 2296F4 801DE504 0C029D9E */  jal        play_sound
    /* 2296F8 801DE508 2404025E */   addiu     $a0, $zero, 0x25E
    /* 2296FC 801DE50C 8E830000 */  lw         $v1, 0x0($s4)
    /* 229700 801DE510 3C10800F */  lui        $s0, %hi(D_800E9560)
    /* 229704 801DE514 26109560 */  addiu      $s0, $s0, %lo(D_800E9560)
    /* 229708 801DE518 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 22970C 801DE51C 24120007 */  addiu      $s2, $zero, 0x7
    /* 229710 801DE520 000D7080 */  sll        $t6, $t5, 2
    /* 229714 801DE524 020E7821 */  addu       $t7, $s0, $t6
    /* 229718 801DE528 ADE00000 */  sw         $zero, 0x0($t7)
    /* 22971C 801DE52C 8C650000 */  lw         $a1, 0x0($v1)
    /* 229720 801DE530 00052880 */  sll        $a1, $a1, 2
    /* 229724 801DE534 0205C021 */  addu       $t8, $s0, $a1
    /* 229728 801DE538 8F190000 */  lw         $t9, 0x0($t8)
    /* 22972C 801DE53C 2B210002 */  slti       $at, $t9, 0x2
    /* 229730 801DE540 1020001F */  beqz       $at, .L801DE5C0_ovl17
    /* 229734 801DE544 00000000 */   nop
  .L801DE548_ovl17:
    /* 229738 801DE548 0C006291 */  jal        random_soft_s32_range
    /* 22973C 801DE54C 2404000A */   addiu     $a0, $zero, 0xA
    /* 229740 801DE550 00520019 */  multu      $v0, $s2
    /* 229744 801DE554 00002012 */  mflo       $a0
    /* 229748 801DE558 24840007 */  addiu      $a0, $a0, 0x7
    /* 22974C 801DE55C 0C002DAF */  jal        ohSleep
    /* 229750 801DE560 00000000 */   nop
    /* 229754 801DE564 02202025 */  or         $a0, $s1, $zero
    /* 229758 801DE568 0C0291E5 */  jal        utilGetTransformSRT
    /* 22975C 801DE56C 02602825 */   or        $a1, $s3, $zero
    /* 229760 801DE570 2404003D */  addiu      $a0, $zero, 0x3D
    /* 229764 801DE574 00002825 */  or         $a1, $zero, $zero
    /* 229768 801DE578 0C06B364 */  jal        func_801ACD90_ovl7
    /* 22976C 801DE57C 02203025 */   or        $a2, $s1, $zero
    /* 229770 801DE580 0C029D9E */  jal        play_sound
    /* 229774 801DE584 2404025E */   addiu     $a0, $zero, 0x25E
    /* 229778 801DE588 8E830000 */  lw         $v1, 0x0($s4)
    /* 22977C 801DE58C 8C680000 */  lw         $t0, 0x0($v1)
    /* 229780 801DE590 00085080 */  sll        $t2, $t0, 2
    /* 229784 801DE594 020A1021 */  addu       $v0, $s0, $t2
    /* 229788 801DE598 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 22978C 801DE59C 25690001 */  addiu      $t1, $t3, 0x1
    /* 229790 801DE5A0 AC490000 */  sw         $t1, 0x0($v0)
    /* 229794 801DE5A4 8C650000 */  lw         $a1, 0x0($v1)
    /* 229798 801DE5A8 00052880 */  sll        $a1, $a1, 2
    /* 22979C 801DE5AC 02056021 */  addu       $t4, $s0, $a1
    /* 2297A0 801DE5B0 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 2297A4 801DE5B4 29A10002 */  slti       $at, $t5, 0x2
    /* 2297A8 801DE5B8 1420FFE3 */  bnez       $at, .L801DE548_ovl17
    /* 2297AC 801DE5BC 00000000 */   nop
  .L801DE5C0_ovl17:
    /* 2297B0 801DE5C0 3C15800F */  lui        $s5, %hi(D_800EA1A0)
    /* 2297B4 801DE5C4 26B5A1A0 */  addiu      $s5, $s5, %lo(D_800EA1A0)
    /* 2297B8 801DE5C8 02A57821 */  addu       $t7, $s5, $a1
    /* 2297BC 801DE5CC 240E0009 */  addiu      $t6, $zero, 0x9
    /* 2297C0 801DE5D0 ADEE0000 */  sw         $t6, 0x0($t7)
    /* 2297C4 801DE5D4 8C650000 */  lw         $a1, 0x0($v1)
    /* 2297C8 801DE5D8 24120007 */  addiu      $s2, $zero, 0x7
    /* 2297CC 801DE5DC 00052880 */  sll        $a1, $a1, 2
    /* 2297D0 801DE5E0 02A51021 */  addu       $v0, $s5, $a1
    /* 2297D4 801DE5E4 8C580000 */  lw         $t8, 0x0($v0)
    /* 2297D8 801DE5E8 2B010006 */  slti       $at, $t8, 0x6
    /* 2297DC 801DE5EC 14200032 */  bnez       $at, .L801DE6B8_ovl17
    /* 2297E0 801DE5F0 0205C821 */   addu      $t9, $s0, $a1
  .L801DE5F4_ovl17:
    /* 2297E4 801DE5F4 AF200000 */  sw         $zero, 0x0($t9)
    /* 2297E8 801DE5F8 8C650000 */  lw         $a1, 0x0($v1)
    /* 2297EC 801DE5FC 00052880 */  sll        $a1, $a1, 2
    /* 2297F0 801DE600 02054021 */  addu       $t0, $s0, $a1
    /* 2297F4 801DE604 8D0A0000 */  lw         $t2, 0x0($t0)
    /* 2297F8 801DE608 29410003 */  slti       $at, $t2, 0x3
    /* 2297FC 801DE60C 50200020 */  beql       $at, $zero, .L801DE690_ovl17
    /* 229800 801DE610 02A51021 */   addu      $v0, $s5, $a1
  .L801DE614_ovl17:
    /* 229804 801DE614 0C006291 */  jal        random_soft_s32_range
    /* 229808 801DE618 24040008 */   addiu     $a0, $zero, 0x8
    /* 22980C 801DE61C 00520019 */  multu      $v0, $s2
    /* 229810 801DE620 00002012 */  mflo       $a0
    /* 229814 801DE624 2484000E */  addiu      $a0, $a0, 0xE
    /* 229818 801DE628 0C002DAF */  jal        ohSleep
    /* 22981C 801DE62C 00000000 */   nop
    /* 229820 801DE630 02202025 */  or         $a0, $s1, $zero
    /* 229824 801DE634 0C0291E5 */  jal        utilGetTransformSRT
    /* 229828 801DE638 02602825 */   or        $a1, $s3, $zero
    /* 22982C 801DE63C 2404003D */  addiu      $a0, $zero, 0x3D
    /* 229830 801DE640 00002825 */  or         $a1, $zero, $zero
    /* 229834 801DE644 0C06B364 */  jal        func_801ACD90_ovl7
    /* 229838 801DE648 02203025 */   or        $a2, $s1, $zero
    /* 22983C 801DE64C 0C029D9E */  jal        play_sound
    /* 229840 801DE650 2404025E */   addiu     $a0, $zero, 0x25E
    /* 229844 801DE654 8E830000 */  lw         $v1, 0x0($s4)
    /* 229848 801DE658 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 22984C 801DE65C 000B4880 */  sll        $t1, $t3, 2
    /* 229850 801DE660 02091021 */  addu       $v0, $s0, $t1
    /* 229854 801DE664 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 229858 801DE668 258D0001 */  addiu      $t5, $t4, 0x1
    /* 22985C 801DE66C AC4D0000 */  sw         $t5, 0x0($v0)
    /* 229860 801DE670 8C650000 */  lw         $a1, 0x0($v1)
    /* 229864 801DE674 00052880 */  sll        $a1, $a1, 2
    /* 229868 801DE678 02057021 */  addu       $t6, $s0, $a1
    /* 22986C 801DE67C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 229870 801DE680 29E10003 */  slti       $at, $t7, 0x3
    /* 229874 801DE684 1420FFE3 */  bnez       $at, .L801DE614_ovl17
    /* 229878 801DE688 00000000 */   nop
    /* 22987C 801DE68C 02A51021 */  addu       $v0, $s5, $a1
  .L801DE690_ovl17:
    /* 229880 801DE690 8C580000 */  lw         $t8, 0x0($v0)
    /* 229884 801DE694 2719FFFF */  addiu      $t9, $t8, -0x1
    /* 229888 801DE698 AC590000 */  sw         $t9, 0x0($v0)
    /* 22988C 801DE69C 8C650000 */  lw         $a1, 0x0($v1)
    /* 229890 801DE6A0 00052880 */  sll        $a1, $a1, 2
    /* 229894 801DE6A4 02A51021 */  addu       $v0, $s5, $a1
    /* 229898 801DE6A8 8C480000 */  lw         $t0, 0x0($v0)
    /* 22989C 801DE6AC 29010006 */  slti       $at, $t0, 0x6
    /* 2298A0 801DE6B0 5020FFD0 */  beql       $at, $zero, .L801DE5F4_ovl17
    /* 2298A4 801DE6B4 0205C821 */   addu      $t9, $s0, $a1
  .L801DE6B8_ovl17:
    /* 2298A8 801DE6B8 AC400000 */  sw         $zero, 0x0($v0)
    /* 2298AC 801DE6BC 0C002DAF */  jal        ohSleep
    /* 2298B0 801DE6C0 24040009 */   addiu     $a0, $zero, 0x9
    /* 2298B4 801DE6C4 3C01800D */  lui        $at, %hi(D_800D7098 + 0x4)
    /* 2298B8 801DE6C8 AC20709C */  sw         $zero, %lo(D_800D7098 + 0x4)($at)
    /* 2298BC 801DE6CC 0C002DAF */  jal        ohSleep
    /* 2298C0 801DE6D0 24040001 */   addiu     $a0, $zero, 0x1
    /* 2298C4 801DE6D4 3C040001 */  lui        $a0, (0x10504 >> 16)
    /* 2298C8 801DE6D8 0C02A806 */  jal        func_800AA018
    /* 2298CC 801DE6DC 34840504 */   ori       $a0, $a0, (0x10504 & 0xFFFF)
    /* 2298D0 801DE6E0 8E830000 */  lw         $v1, 0x0($s4)
    /* 2298D4 801DE6E4 3C01800F */  lui        $at, %hi(D_800EA360)
    /* 2298D8 801DE6E8 2409003C */  addiu      $t1, $zero, 0x3C
    /* 2298DC 801DE6EC 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 2298E0 801DE6F0 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 2298E4 801DE6F4 240E0001 */  addiu      $t6, $zero, 0x1
    /* 2298E8 801DE6F8 000A5880 */  sll        $t3, $t2, 2
    /* 2298EC 801DE6FC 002B0821 */  addu       $at, $at, $t3
    /* 2298F0 801DE700 AC20A360 */  sw         $zero, %lo(D_800EA360)($at)
    /* 2298F4 801DE704 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 2298F8 801DE708 3C01800F */  lui        $at, %hi(D_800EA520)
    /* 2298FC 801DE70C 8FB4002C */  lw         $s4, 0x2C($sp)
    /* 229900 801DE710 000C6880 */  sll        $t5, $t4, 2
    /* 229904 801DE714 002D0821 */  addu       $at, $at, $t5
    /* 229908 801DE718 AC29A520 */  sw         $t1, %lo(D_800EA520)($at)
    /* 22990C 801DE71C 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 229910 801DE720 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 229914 801DE724 8FB0001C */  lw         $s0, 0x1C($sp)
    /* 229918 801DE728 000FC080 */  sll        $t8, $t7, 2
    /* 22991C 801DE72C 00380821 */  addu       $at, $at, $t8
    /* 229920 801DE730 8FB10020 */  lw         $s1, 0x20($sp)
    /* 229924 801DE734 8FB20024 */  lw         $s2, 0x24($sp)
    /* 229928 801DE738 8FB30028 */  lw         $s3, 0x28($sp)
    /* 22992C 801DE73C 8FB50030 */  lw         $s5, 0x30($sp)
    /* 229930 801DE740 AC2EDC50 */  sw         $t6, %lo(gEntityFuncListIDArray)($at)
    /* 229934 801DE744 03E00008 */  jr         $ra
    /* 229938 801DE748 27BD0068 */   addiu     $sp, $sp, 0x68
endlabel func_801DE40C_ovl17
.size func_801DE40C_ovl17, . - func_801DE40C_ovl17
