glabel func_8017F988_ovl3
/* E03C8 8017F988 27BDFF98 */  addiu      $sp, $sp, -0x68
/* E03CC 8017F98C AFBF001C */  sw         $ra, 0x1C($sp)
/* E03D0 8017F990 AFA40068 */  sw         $a0, 0x68($sp)
/* E03D4 8017F994 0C054E61 */  jal        func_80153984_ovl3
/* E03D8 8017F998 AFA00054 */   sw        $zero, 0x54($sp)
/* E03DC 8017F99C 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* E03E0 8017F9A0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* E03E4 8017F9A4 3C19800F */  lui        $t9, %hi(D_800E8AE0)
/* E03E8 8017F9A8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* E03EC 8017F9AC 8DCF0000 */  lw         $t7, 0x0($t6)
/* E03F0 8017F9B0 000FC080 */  sll        $t8, $t7, 2
/* E03F4 8017F9B4 0338C821 */  addu       $t9, $t9, $t8
/* E03F8 8017F9B8 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
/* E03FC 8017F9BC 33290006 */  andi       $t1, $t9, 0x6
/* E0400 8017F9C0 55200006 */  bnel       $t1, $zero, .L8017F9DC_ovl5
/* E0404 8017F9C4 44816000 */   mtc1      $at, $f12
/* E0408 8017F9C8 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
/* E040C 8017F9CC 44816000 */  mtc1       $at, $f12
/* E0410 8017F9D0 10000003 */  b          .L8017F9E0_ovl5
/* E0414 8017F9D4 00000000 */   nop
/* E0418 8017F9D8 44816000 */  mtc1       $at, $f12
.L8017F9DC_ovl5:
/* E041C 8017F9DC 00000000 */  nop
.L8017F9E0_ovl5:
/* E0420 8017F9E0 0C02BB30 */  jal        func_800AECC0
/* E0424 8017F9E4 00000000 */   nop
/* E0428 8017F9E8 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* E042C 8017F9EC 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* E0430 8017F9F0 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
/* E0434 8017F9F4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* E0438 8017F9F8 8D4B0000 */  lw         $t3, 0x0($t2)
.L8017F9FC_ovl5:
/* E043C 8017F9FC 000B6080 */  sll        $t4, $t3, 2
/* E0440 8017FA00 01AC6821 */  addu       $t5, $t5, $t4
/* E0444 8017FA04 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
/* E0448 8017FA08 31AE0006 */  andi       $t6, $t5, 0x6
/* E044C 8017FA0C 55C00006 */  bnel       $t6, $zero, .L8017FA28_ovl3
/* E0450 8017FA10 44817000 */   mtc1      $at, $f14
/* E0454 8017FA14 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
/* E0458 8017FA18 44817000 */  mtc1       $at, $f14
/* E045C 8017FA1C 10000003 */  b          .L8017FA2C_ovl3
/* E0460 8017FA20 00000000 */   nop
/* E0464 8017FA24 44817000 */  mtc1       $at, $f14
.L8017FA28_ovl3:
/* E0468 8017FA28 00000000 */  nop
.L8017FA2C_ovl3:
/* E046C 8017FA2C 0C02BB48 */  jal        func_800AED20
/* E0470 8017FA30 46007306 */   mov.s     $f12, $f14
/* E0474 8017FA34 3C018019 */  lui        $at, %hi(D_801976D4_ovl3)
/* E0478 8017FA38 C42C76D4 */  lwc1       $f12, %lo(D_801976D4_ovl3)($at)
/* E047C 8017FA3C 3C014190 */  lui        $at, (0x41900000 >> 16)
/* E0480 8017FA40 44817000 */  mtc1       $at, $f14
/* E0484 8017FA44 44066000 */  mfc1       $a2, $f12
/* E0488 8017FA48 0C04860A */  jal        func_80121828
.L8017FA4C_ovl5:
/* E048C 8017FA4C 3C074110 */   lui       $a3, (0x41100000 >> 16)
.L8017FA50_ovl5:
/* E0490 8017FA50 10400028 */  beqz       $v0, .L8017FAF4_ovl3
/* E0494 8017FA54 3C088013 */   lui       $t0, %hi(gKirbyState)
/* E0498 8017FA58 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* E049C 8017FA5C 8D0F0044 */  lw         $t7, 0x44($t0)
/* E04A0 8017FA60 24010003 */  addiu      $at, $zero, 0x3
/* E04A4 8017FA64 11E1000A */  beq        $t7, $at, .L8017FA90_ovl3
/* E04A8 8017FA68 00000000 */   nop
.L8017FA6C_ovl5:
/* E04AC 8017FA6C 0C03EE45 */  jal        func_800FB914
.L8017FA70_ovl5:
/* E04B0 8017FA70 24040003 */   addiu     $a0, $zero, 0x3
/* E04B4 8017FA74 00002025 */  or         $a0, $zero, $zero
/* E04B8 8017FA78 0C02ED1A */  jal        func_800BB468
glabel func_8017FA7C_ovl5
/* E04BC 8017FA7C 00002825 */   or        $a1, $zero, $zero
/* E04C0 8017FA80 0C029D9E */  jal        play_sound
/* E04C4 8017FA84 24040123 */   addiu     $a0, $zero, 0x123
/* E04C8 8017FA88 10000003 */  b          .L8017FA98_ovl3
/* E04CC 8017FA8C 00000000 */   nop
.L8017FA90_ovl3:
/* E04D0 8017FA90 0C029D9E */  jal        play_sound
/* E04D4 8017FA94 24040149 */   addiu     $a0, $zero, 0x149
.L8017FA98_ovl3:
/* E04D8 8017FA98 0C048C76 */  jal        func_801231D8
/* E04DC 8017FA9C 00000000 */   nop
/* E04E0 8017FAA0 2401FFFF */  addiu      $at, $zero, -0x1
/* E04E4 8017FAA4 10410013 */  beq        $v0, $at, .L8017FAF4_ovl3
/* E04E8 8017FAA8 00403025 */   or        $a2, $v0, $zero
/* E04EC 8017FAAC 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* E04F0 8017FAB0 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* E04F4 8017FAB4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* E04F8 8017FAB8 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* E04FC 8017FABC 8F020000 */  lw         $v0, 0x0($t8)
/* E0500 8017FAC0 24040005 */  addiu      $a0, $zero, 0x5
/* E0504 8017FAC4 24050001 */  addiu      $a1, $zero, 0x1
/* E0508 8017FAC8 00021080 */  sll        $v0, $v0, 2
/* E050C 8017FACC 00220821 */  addu       $at, $at, $v0
/* E0510 8017FAD0 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
/* E0514 8017FAD4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* E0518 8017FAD8 00220821 */  addu       $at, $at, $v0
/* E051C 8017FADC C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
/* E0520 8017FAE0 00E23821 */  addu       $a3, $a3, $v0
/* E0524 8017FAE4 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* E0528 8017FAE8 E7A40010 */  swc1       $f4, 0x10($sp)
/* E052C 8017FAEC 0C029FDD */  jal        func_800A7F74
/* E0530 8017FAF0 E7A60014 */   swc1      $f6, 0x14($sp)
.L8017FAF4_ovl3:
/* E0534 8017FAF4 3C05800D */  lui        $a1, %hi(gKirbyController)
/* E0538 8017FAF8 24A56FE8 */  addiu      $a1, $a1, %lo(gKirbyController)
/* E053C 8017FAFC 94A40000 */  lhu        $a0, 0x0($a1)
/* E0540 8017FB00 3C088013 */  lui        $t0, %hi(gKirbyState)
/* E0544 8017FB04 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* E0548 8017FB08 30990300 */  andi       $t9, $a0, 0x300
/* E054C 8017FB0C 13200013 */  beqz       $t9, .L8017FB5C_ovl3
/* E0550 8017FB10 30890100 */   andi      $t1, $a0, 0x100
/* E0554 8017FB14 1120000A */  beqz       $t1, .L8017FB40_ovl3
/* E0558 8017FB18 3C0E8005 */   lui       $t6, %hi(D_8004A7C4)
/* E055C 8017FB1C 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* E0560 8017FB20 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* E0564 8017FB24 3C01800F */  lui        $at, %hi(D_800E98E0)
/* E0568 8017FB28 24060001 */  addiu      $a2, $zero, 0x1
/* E056C 8017FB2C 8D4B0000 */  lw         $t3, 0x0($t2)
/* E0570 8017FB30 000B6080 */  sll        $t4, $t3, 2
/* E0574 8017FB34 002C0821 */  addu       $at, $at, $t4
/* E0578 8017FB38 10000008 */  b          .L8017FB5C_ovl3
/* E057C 8017FB3C AC2698E0 */   sw        $a2, %lo(D_800E98E0)($at)
.L8017FB40_ovl3:
/* E0580 8017FB40 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* E0584 8017FB44 3C01800F */  lui        $at, %hi(D_800E98E0)
/* E0588 8017FB48 240DFFFF */  addiu      $t5, $zero, -0x1
/* E058C 8017FB4C 8DCF0000 */  lw         $t7, 0x0($t6)
/* E0590 8017FB50 000FC080 */  sll        $t8, $t7, 2
/* E0594 8017FB54 00380821 */  addu       $at, $at, $t8
/* E0598 8017FB58 AC2D98E0 */  sw         $t5, %lo(D_800E98E0)($at)
.L8017FB5C_ovl3:
/* E059C 8017FB5C 91190017 */  lbu        $t9, 0x17($t0)
/* E05A0 8017FB60 24060001 */  addiu      $a2, $zero, 0x1
/* E05A4 8017FB64 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* E05A8 8017FB68 17200009 */  bnez       $t9, .L8017FB90_ovl3
/* E05AC 8017FB6C 00000000 */   nop
/* E05B0 8017FB70 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* E05B4 8017FB74 3C0C800F */  lui        $t4, %hi(D_800E83E0)
/* E05B8 8017FB78 8D2A0000 */  lw         $t2, 0x0($t1)
/* E05BC 8017FB7C 000A5880 */  sll        $t3, $t2, 2
/* E05C0 8017FB80 018B6021 */  addu       $t4, $t4, $t3
glabel func_8017FB84_ovl5
/* E05C4 8017FB84 8D8C83E0 */  lw         $t4, %lo(D_800E83E0)($t4)
/* E05C8 8017FB88 51800004 */  beql       $t4, $zero, .L8017FB9C_ovl3
/* E05CC 8017FB8C 910E0016 */   lbu       $t6, 0x16($t0)
.L8017FB90_ovl3:
/* E05D0 8017FB90 10000016 */  b          .L8017FBEC_ovl3
/* E05D4 8017FB94 AFA60054 */   sw        $a2, 0x54($sp)
/* E05D8 8017FB98 910E0016 */  lbu        $t6, 0x16($t0)
.L8017FB9C_ovl3:
/* E05DC 8017FB9C 55C0000E */  bnel       $t6, $zero, .L8017FBD8_ovl3
/* E05E0 8017FBA0 94B90002 */   lhu       $t9, 0x2($a1)
glabel func_8017FBA4_ovl5
/* E05E4 8017FBA4 94AF0002 */  lhu        $t7, 0x2($a1)
/* E05E8 8017FBA8 31ED4000 */  andi       $t5, $t7, 0x4000
/* E05EC 8017FBAC 51A00004 */  beql       $t5, $zero, .L8017FBC0_ovl3
/* E05F0 8017FBB0 9118000A */   lbu       $t8, 0xA($t0)
/* E05F4 8017FBB4 1000000D */  b          .L8017FBEC_ovl3
/* E05F8 8017FBB8 AFA60054 */   sw        $a2, 0x54($sp)
/* E05FC 8017FBBC 9118000A */  lbu        $t8, 0xA($t0)
.L8017FBC0_ovl3:
/* E0600 8017FBC0 24010004 */  addiu      $at, $zero, 0x4
/* E0604 8017FBC4 5701000A */  bnel       $t8, $at, .L8017FBF0_ovl3
.L8017FBC8_ovl5:
/* E0608 8017FBC8 8FAB0054 */   lw        $t3, 0x54($sp)
/* E060C 8017FBCC 10000007 */  b          .L8017FBEC_ovl3
/* E0610 8017FBD0 AFA60054 */   sw        $a2, 0x54($sp)
/* E0614 8017FBD4 94B90002 */  lhu        $t9, 0x2($a1)
.L8017FBD8_ovl3:
/* E0618 8017FBD8 240A0004 */  addiu      $t2, $zero, 0x4
/* E061C 8017FBDC 33294000 */  andi       $t1, $t9, 0x4000
/* E0620 8017FBE0 51200003 */  beql       $t1, $zero, .L8017FBF0_ovl3
/* E0624 8017FBE4 8FAB0054 */   lw        $t3, 0x54($sp)
/* E0628 8017FBE8 A10A000A */  sb         $t2, 0xA($t0)
.L8017FBEC_ovl3:
/* E062C 8017FBEC 8FAB0054 */  lw         $t3, 0x54($sp)
.L8017FBF0_ovl3:
/* E0630 8017FBF0 5160002C */  beql       $t3, $zero, .L8017FCA4_ovl5
/* E0634 8017FBF4 8D0F0044 */   lw        $t7, 0x44($t0)
/* E0638 8017FBF8 8D0C0044 */  lw         $t4, 0x44($t0)
/* E063C 8017FBFC 24010003 */  addiu      $at, $zero, 0x3
/* E0640 8017FC00 240E0003 */  addiu      $t6, $zero, 0x3
/* E0644 8017FC04 11810026 */  beq        $t4, $at, .L8017FCA0_ovl3
/* E0648 8017FC08 3C0F8005 */   lui       $t7, %hi(D_8004A7C4)
/* E064C 8017FC0C AD0E0044 */  sw         $t6, 0x44($t0)
/* E0650 8017FC10 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* E0654 8017FC14 3C0D800F */  lui        $t5, %hi(D_800E98E0)
/* E0658 8017FC18 3C01800E */  lui        $at, %hi(D_800E6A10)
/* E065C 8017FC1C 8DE20000 */  lw         $v0, 0x0($t7)
/* E0660 8017FC20 00021080 */  sll        $v0, $v0, 2
.L8017FC24_ovl5:
/* E0664 8017FC24 01A26821 */  addu       $t5, $t5, $v0
/* E0668 8017FC28 8DAD98E0 */  lw         $t5, %lo(D_800E98E0)($t5)
/* E066C 8017FC2C 00220821 */  addu       $at, $at, $v0
/* E0670 8017FC30 448D4000 */  mtc1       $t5, $f8
.L8017FC34_ovl5:
/* E0674 8017FC34 00000000 */  nop
/* E0678 8017FC38 468042A0 */  cvt.s.w    $f10, $f8
/* E067C 8017FC3C 0C0478DD */  jal        func_8011E374
/* E0680 8017FC40 E42A6A10 */   swc1      $f10, %lo(D_800E6A10)($at)
/* E0684 8017FC44 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* E0688 8017FC48 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* E068C 8017FC4C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* E0690 8017FC50 3C088013 */  lui        $t0, %hi(gKirbyState)
/* E0694 8017FC54 8C780000 */  lw         $t8, 0x0($v1)
glabel func_8017FC58_ovl5
/* E0698 8017FC58 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* E069C 8017FC5C 0018C880 */  sll        $t9, $t8, 2
/* E06A0 8017FC60 00390821 */  addu       $at, $at, $t9
/* E06A4 8017FC64 E42041D0 */  swc1       $f0, %lo(gEntitiesAngleYArray)($at)
/* E06A8 8017FC68 8C690000 */  lw         $t1, 0x0($v1)
/* E06AC 8017FC6C 3C01800E */  lui        $at, %hi(D_800E17D0)
/* E06B0 8017FC70 00095080 */  sll        $t2, $t1, 2
/* E06B4 8017FC74 002A0821 */  addu       $at, $at, $t2
/* E06B8 8017FC78 E42017D0 */  swc1       $f0, %lo(D_800E17D0)($at)
/* E06BC 8017FC7C 910B0017 */  lbu        $t3, 0x17($t0)
/* E06C0 8017FC80 11600005 */  beqz       $t3, .L8017FC98_ovl3
/* E06C4 8017FC84 00000000 */   nop
/* E06C8 8017FC88 8D0C0034 */  lw         $t4, 0x34($t0)
/* E06CC 8017FC8C 2401FFFE */  addiu      $at, $zero, -0x2
/* E06D0 8017FC90 01817024 */  and        $t6, $t4, $at
/* E06D4 8017FC94 AD0E0034 */  sw         $t6, 0x34($t0)
.L8017FC98_ovl3:
/* E06D8 8017FC98 100002CA */  b          .L801807C4_ovl3
/* E06DC 8017FC9C 8D020044 */   lw        $v0, 0x44($t0)
.L8017FCA0_ovl3:
/* E06E0 8017FCA0 8D0F0044 */  lw         $t7, 0x44($t0)
.L8017FCA4_ovl5:
/* E06E4 8017FCA4 25ED0001 */  addiu      $t5, $t7, 0x1
/* E06E8 8017FCA8 2DA10005 */  sltiu      $at, $t5, 0x5
/* E06EC 8017FCAC 102002AE */  beqz       $at, .L80180768_ovl3
/* E06F0 8017FCB0 000D6880 */   sll       $t5, $t5, 2
/* E06F4 8017FCB4 3C018019 */  lui        $at, %hi(jtbl_801976D8_ovl3)
.L8017FCB8_ovl5:
/* E06F8 8017FCB8 002D0821 */  addu       $at, $at, $t5
/* E06FC 8017FCBC 8C2D76D8 */  lw         $t5, %lo(jtbl_801976D8_ovl3)($at)
/* E0700 8017FCC0 01A00008 */  jr         $t5
/* E0704 8017FCC4 00000000 */   nop
/* E0708 8017FCC8 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* E070C 8017FCCC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* E0710 8017FCD0 3C05800E */  lui        $a1, %hi(gEntitiesScaleXArray)
.L8017FCD4_ovl5:
/* E0714 8017FCD4 24A54550 */  addiu      $a1, $a1, %lo(gEntitiesScaleXArray)
/* E0718 8017FCD8 8C780000 */  lw         $t8, 0x0($v1)
/* E071C 8017FCDC 3C018019 */  lui        $at, %hi(D_801976EC_ovl3)
/* E0720 8017FCE0 C42276EC */  lwc1       $f2, %lo(D_801976EC_ovl3)($at)
/* E0724 8017FCE4 0018C880 */  sll        $t9, $t8, 2
/* E0728 8017FCE8 00B92021 */  addu       $a0, $a1, $t9
/* E072C 8017FCEC C4800000 */  lwc1       $f0, 0x0($a0)
/* E0730 8017FCF0 3C018019 */  lui        $at, %hi(D_801976F0_ovl3)
/* E0734 8017FCF4 4602003C */  c.lt.s     $f0, $f2
/* E0738 8017FCF8 00000000 */  nop
.L8017FCFC_ovl5:
/* E073C 8017FCFC 45020012 */  bc1fl      .L8017FD48_ovl5
/* E0740 8017FD00 E4820000 */   swc1      $f2, 0x0($a0)
/* E0744 8017FD04 C42476F0 */  lwc1       $f4, %lo(D_801976F0_ovl3)($at)
.L8017FD08_ovl5:
/* E0748 8017FD08 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* E074C 8017FD0C 46040180 */  add.s      $f6, $f0, $f4
/* E0750 8017FD10 E4860000 */  swc1       $f6, 0x0($a0)
/* E0754 8017FD14 8C620000 */  lw         $v0, 0x0($v1)
/* E0758 8017FD18 00021080 */  sll        $v0, $v0, 2
/* E075C 8017FD1C 00A24821 */  addu       $t1, $a1, $v0
.L8017FD20_ovl5:
/* E0760 8017FD20 C52C0000 */  lwc1       $f12, 0x0($t1)
.L8017FD24_ovl5:
/* E0764 8017FD24 00220821 */  addu       $at, $at, $v0
/* E0768 8017FD28 E42C48D0 */  swc1       $f12, %lo(gEntitiesScaleZArray)($at)
/* E076C 8017FD2C 8C6A0000 */  lw         $t2, 0x0($v1)
/* E0770 8017FD30 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
.L8017FD34_ovl5:
/* E0774 8017FD34 000A5880 */  sll        $t3, $t2, 2
/* E0778 8017FD38 002B0821 */  addu       $at, $at, $t3
/* E077C 8017FD3C 1000028A */  b          .L80180768_ovl3
/* E0780 8017FD40 E42C4710 */   swc1      $f12, %lo(gEntitiesScaleYArray)($at)
/* E0784 8017FD44 E4820000 */  swc1       $f2, 0x0($a0)
.L8017FD48_ovl5:
/* E0788 8017FD48 8C6C0000 */  lw         $t4, 0x0($v1)
/* E078C 8017FD4C 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* E0790 8017FD50 000C7080 */  sll        $t6, $t4, 2
/* E0794 8017FD54 002E0821 */  addu       $at, $at, $t6
/* E0798 8017FD58 E4224710 */  swc1       $f2, %lo(gEntitiesScaleYArray)($at)
/* E079C 8017FD5C 8C6F0000 */  lw         $t7, 0x0($v1)
/* E07A0 8017FD60 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* E07A4 8017FD64 000F6880 */  sll        $t5, $t7, 2
/* E07A8 8017FD68 002D0821 */  addu       $at, $at, $t5
/* E07AC 8017FD6C 1000027E */  b          .L80180768_ovl3
/* E07B0 8017FD70 E42248D0 */   swc1      $f2, %lo(gEntitiesScaleZArray)($at)
/* E07B4 8017FD74 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* E07B8 8017FD78 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* E07BC 8017FD7C 3C01800E */  lui        $at, %hi(D_800E17D0)
/* E07C0 8017FD80 3C09800F */  lui        $t1, %hi(D_800E8920)
glabel func_8017FD84_ovl5
/* E07C4 8017FD84 8C620000 */  lw         $v0, 0x0($v1)
/* E07C8 8017FD88 00021080 */  sll        $v0, $v0, 2
/* E07CC 8017FD8C 00220821 */  addu       $at, $at, $v0
/* E07D0 8017FD90 C42817D0 */  lwc1       $f8, %lo(D_800E17D0)($at)
/* E07D4 8017FD94 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* E07D8 8017FD98 00220821 */  addu       $at, $at, $v0
/* E07DC 8017FD9C E42841D0 */  swc1       $f8, %lo(gEntitiesAngleYArray)($at)
/* E07E0 8017FDA0 8C780000 */  lw         $t8, 0x0($v1)
/* E07E4 8017FDA4 0018C880 */  sll        $t9, $t8, 2
/* E07E8 8017FDA8 01394821 */  addu       $t1, $t1, $t9
/* E07EC 8017FDAC 8D298920 */  lw         $t1, %lo(D_800E8920)($t1)
/* E07F0 8017FDB0 15200007 */  bnez       $t1, .L8017FDD0_ovl3
/* E07F4 8017FDB4 00000000 */   nop
/* E07F8 8017FDB8 0C04828A */  jal        func_80120A28
/* E07FC 8017FDBC 00000000 */   nop
/* E0800 8017FDC0 3C088013 */  lui        $t0, %hi(gKirbyState)
/* E0804 8017FDC4 44809000 */  mtc1       $zero, $f18
/* E0808 8017FDC8 100000BF */  b          .L801800C8_ovl3
/* E080C 8017FDCC 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
.L8017FDD0_ovl3:
/* E0810 8017FDD0 0C0482BE */  jal        func_80120AF8
/* E0814 8017FDD4 27A4005C */   addiu     $a0, $sp, 0x5C
/* E0818 8017FDD8 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* E081C 8017FDDC 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* E0820 8017FDE0 3C05800E */  lui        $a1, %hi(D_800E17D0)
/* E0824 8017FDE4 3C048013 */  lui        $a0, %hi(D_8012BCA8 + 0x4)
/* E0828 8017FDE8 8D4B0000 */  lw         $t3, 0x0($t2)
/* E082C 8017FDEC 8C84BCAC */  lw         $a0, %lo(D_8012BCA8 + 0x4)($a0)
/* E0830 8017FDF0 000B6080 */  sll        $t4, $t3, 2
/* E0834 8017FDF4 00AC2821 */  addu       $a1, $a1, $t4
/* E0838 8017FDF8 0C03E209 */  jal        func_800F8824
/* E083C 8017FDFC 8CA517D0 */   lw        $a1, %lo(D_800E17D0)($a1)
/* E0840 8017FE00 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* E0844 8017FE04 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* E0848 8017FE08 46000287 */  neg.s      $f10, $f0
/* E084C 8017FE0C 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* E0850 8017FE10 8C6E0000 */  lw         $t6, 0x0($v1)
/* E0854 8017FE14 44802000 */  mtc1       $zero, $f4
/* E0858 8017FE18 3C088013 */  lui        $t0, %hi(gKirbyState)
/* E085C 8017FE1C 000E7880 */  sll        $t7, $t6, 2
/* E0860 8017FE20 002F0821 */  addu       $at, $at, $t7
/* E0864 8017FE24 E42AA6E0 */  swc1       $f10, %lo(D_800EA6E0)($at)
/* E0868 8017FE28 8C620000 */  lw         $v0, 0x0($v1)
/* E086C 8017FE2C 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* E0870 8017FE30 44809000 */  mtc1       $zero, $f18
/* E0874 8017FE34 00021080 */  sll        $v0, $v0, 2
/* E0878 8017FE38 00220821 */  addu       $at, $at, $v0
/* E087C 8017FE3C C422A6E0 */  lwc1       $f2, %lo(D_800EA6E0)($at)
/* E0880 8017FE40 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
/* E0884 8017FE44 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* E0888 8017FE48 4602203C */  c.lt.s     $f4, $f2
/* E088C 8017FE4C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* E0890 8017FE50 01A26821 */  addu       $t5, $t5, $v0
/* E0894 8017FE54 3C0C800F */  lui        $t4, %hi(D_800E8AE0)
/* E0898 8017FE58 4502000A */  bc1fl      .L8017FE84_ovl3
/* E089C 8017FE5C 44805000 */   mtc1      $zero, $f10
/* E08A0 8017FE60 44813000 */  mtc1       $at, $f6
/* E08A4 8017FE64 3C01800E */  lui        $at, %hi(D_800E6A10)
/* E08A8 8017FE68 00220821 */  addu       $at, $at, $v0
/* E08AC 8017FE6C C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* E08B0 8017FE70 46083032 */  c.eq.s     $f6, $f8
/* E08B4 8017FE74 00000000 */  nop
/* E08B8 8017FE78 4501000E */  bc1t       .L8017FEB4_ovl3
/* E08BC 8017FE7C 00000000 */   nop
/* E08C0 8017FE80 44805000 */  mtc1       $zero, $f10
.L8017FE84_ovl3:
/* E08C4 8017FE84 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* E08C8 8017FE88 460A103C */  c.lt.s     $f2, $f10
/* E08CC 8017FE8C 00000000 */  nop
.L8017FE90_ovl5:
/* E08D0 8017FE90 4500000E */  bc1f       .L8017FECC_ovl5
/* E08D4 8017FE94 00000000 */   nop
/* E08D8 8017FE98 44812000 */  mtc1       $at, $f4
/* E08DC 8017FE9C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* E08E0 8017FEA0 00220821 */  addu       $at, $at, $v0
/* E08E4 8017FEA4 C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
/* E08E8 8017FEA8 46062032 */  c.eq.s     $f4, $f6
/* E08EC 8017FEAC 00000000 */  nop
/* E08F0 8017FEB0 45000006 */  bc1f       .L8017FECC_ovl5
.L8017FEB4_ovl3:
/* E08F4 8017FEB4 3C018019 */   lui       $at, %hi(D_801976F4_ovl3)
/* E08F8 8017FEB8 C42876F4 */  lwc1       $f8, %lo(D_801976F4_ovl3)($at)
/* E08FC 8017FEBC C7AA0060 */  lwc1       $f10, 0x60($sp)
/* E0900 8017FEC0 460A4002 */  mul.s      $f0, $f8, $f10
/* E0904 8017FEC4 10000007 */  b          .L8017FEE4_ovl3
/* E0908 8017FEC8 46121032 */   c.eq.s    $f2, $f18
.L8017FECC_ovl5:
/* E090C 8017FECC 3C018019 */  lui        $at, %hi(D_801976F8_ovl3)
/* E0910 8017FED0 C42476F8 */  lwc1       $f4, %lo(D_801976F8_ovl3)($at)
/* E0914 8017FED4 C7A60060 */  lwc1       $f6, 0x60($sp)
/* E0918 8017FED8 46062002 */  mul.s      $f0, $f4, $f6
/* E091C 8017FEDC 00000000 */  nop
/* E0920 8017FEE0 46121032 */  c.eq.s     $f2, $f18
.L8017FEE4_ovl3:
/* E0924 8017FEE4 00000000 */  nop
.L8017FEE8_ovl5:
/* E0928 8017FEE8 45000004 */  bc1f       .L8017FEFC_ovl3
/* E092C 8017FEEC 00000000 */   nop
/* E0930 8017FEF0 44807000 */  mtc1       $zero, $f14
/* E0934 8017FEF4 1000000D */  b          .L8017FF2C_ovl3
/* E0938 8017FEF8 4612103C */   c.lt.s    $f2, $f18
.L8017FEFC_ovl3:
/* E093C 8017FEFC 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
/* E0940 8017FF00 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* E0944 8017FF04 31B80006 */  andi       $t8, $t5, 0x6
/* E0948 8017FF08 57000006 */  bnel       $t8, $zero, .L8017FF24_ovl3
/* E094C 8017FF0C 44817000 */   mtc1      $at, $f14
/* E0950 8017FF10 3C014000 */  lui        $at, (0x40000000 >> 16)
/* E0954 8017FF14 44817000 */  mtc1       $at, $f14
/* E0958 8017FF18 10000004 */  b          .L8017FF2C_ovl3
/* E095C 8017FF1C 4612103C */   c.lt.s    $f2, $f18
/* E0960 8017FF20 44817000 */  mtc1       $at, $f14
.L8017FF24_ovl3:
/* E0964 8017FF24 00000000 */  nop
.L8017FF28_ovl5:
/* E0968 8017FF28 4612103C */  c.lt.s     $f2, $f18
.L8017FF2C_ovl3:
/* E096C 8017FF2C 3C014120 */  lui        $at, (0x41200000 >> 16)
/* E0970 8017FF30 44814000 */  mtc1       $at, $f8
/* E0974 8017FF34 3C01800E */  lui        $at, %hi(D_800E6690)
/* E0978 8017FF38 45000003 */  bc1f       .L8017FF48_ovl3
.L8017FF3C_ovl5:
/* E097C 8017FF3C 00220821 */   addu      $at, $at, $v0
/* E0980 8017FF40 10000002 */  b          .L8017FF4C_ovl3
/* E0984 8017FF44 46001307 */   neg.s     $f12, $f2
.L8017FF48_ovl3:
/* E0988 8017FF48 46001306 */  mov.s      $f12, $f2
.L8017FF4C_ovl3:
/* E098C 8017FF4C 46086282 */  mul.s      $f10, $f12, $f8
/* E0990 8017FF50 4612103C */  c.lt.s     $f2, $f18
/* E0994 8017FF54 46005102 */  mul.s      $f4, $f10, $f0
/* E0998 8017FF58 45000003 */  bc1f       .L8017FF68_ovl5
/* E099C 8017FF5C 46002400 */   add.s     $f16, $f4, $f0
/* E09A0 8017FF60 10000002 */  b          .L8017FF6C_ovl3
/* E09A4 8017FF64 46001307 */   neg.s     $f12, $f2
.L8017FF68_ovl5:
/* E09A8 8017FF68 46001306 */  mov.s      $f12, $f2
.L8017FF6C_ovl3:
/* E09AC 8017FF6C E4306690 */  swc1       $f16, %lo(D_800E6690)($at)
/* E09B0 8017FF70 3C014080 */  lui        $at, (0x40800000 >> 16)
/* E09B4 8017FF74 44813000 */  mtc1       $at, $f6
/* E09B8 8017FF78 3C0F800C */  lui        $t7, %hi(D_800BE4EC)
/* E09BC 8017FF7C 46066202 */  mul.s      $f8, $f12, $f6
/* E09C0 8017FF80 00000000 */  nop
/* E09C4 8017FF84 460E4282 */  mul.s      $f10, $f8, $f14
/* E09C8 8017FF88 460E5000 */  add.s      $f0, $f10, $f14
/* E09CC 8017FF8C 4612003C */  c.lt.s     $f0, $f18
/* E09D0 8017FF90 00000000 */  nop
/* E09D4 8017FF94 45000008 */  bc1f       func_8017FFB8_ovl5
/* E09D8 8017FF98 00000000 */   nop
/* E09DC 8017FF9C 8C790000 */  lw         $t9, 0x0($v1)
/* E09E0 8017FFA0 3C01800E */  lui        $at, %hi(D_800E6850)
/* E09E4 8017FFA4 46000107 */  neg.s      $f4, $f0
/* E09E8 8017FFA8 00194880 */  sll        $t1, $t9, 2
/* E09EC 8017FFAC 00290821 */  addu       $at, $at, $t1
/* E09F0 8017FFB0 10000006 */  b          .L8017FFCC_ovl3
/* E09F4 8017FFB4 E4246850 */   swc1      $f4, %lo(D_800E6850)($at)
glabel func_8017FFB8_ovl5
/* E09F8 8017FFB8 8C6A0000 */  lw         $t2, 0x0($v1)
/* E09FC 8017FFBC 3C01800E */  lui        $at, %hi(D_800E6850)
/* E0A00 8017FFC0 000A5880 */  sll        $t3, $t2, 2
/* E0A04 8017FFC4 002B0821 */  addu       $at, $at, $t3
/* E0A08 8017FFC8 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L8017FFCC_ovl3:
/* E0A0C 8017FFCC 8C620000 */  lw         $v0, 0x0($v1)
/* E0A10 8017FFD0 3C01800E */  lui        $at, %hi(D_800E64D0)
/* E0A14 8017FFD4 00021080 */  sll        $v0, $v0, 2
/* E0A18 8017FFD8 00220821 */  addu       $at, $at, $v0
/* E0A1C 8017FFDC C42064D0 */  lwc1       $f0, %lo(D_800E64D0)($at)
/* E0A20 8017FFE0 3C014040 */  lui        $at, (0x40400000 >> 16)
/* E0A24 8017FFE4 01826021 */  addu       $t4, $t4, $v0
/* E0A28 8017FFE8 4612003C */  c.lt.s     $f0, $f18
/* E0A2C 8017FFEC 00000000 */  nop
/* E0A30 8017FFF0 45020004 */  bc1fl      .L80180004_ovl3
/* E0A34 8017FFF4 46000386 */   mov.s     $f14, $f0
/* E0A38 8017FFF8 10000002 */  b          .L80180004_ovl3
/* E0A3C 8017FFFC 46000387 */   neg.s     $f14, $f0
/* E0A40 80180000 46000386 */  mov.s      $f14, $f0
.L80180004_ovl3:
/* E0A44 80180004 8D8C8AE0 */  lw         $t4, %lo(D_800E8AE0)($t4)
/* E0A48 80180008 318E0006 */  andi       $t6, $t4, 0x6
/* E0A4C 8018000C 55C00006 */  bnel       $t6, $zero, .L80180028_ovl3
/* E0A50 80180010 44816000 */   mtc1      $at, $f12
/* E0A54 80180014 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* E0A58 80180018 44816000 */  mtc1       $at, $f12
/* E0A5C 8018001C 10000004 */  b          .L80180030_ovl3
/* E0A60 80180020 460E603C */   c.lt.s    $f12, $f14
/* E0A64 80180024 44816000 */  mtc1       $at, $f12
.L80180028_ovl3:
/* E0A68 80180028 00000000 */  nop
/* E0A6C 8018002C 460E603C */  c.lt.s     $f12, $f14
.L80180030_ovl3:
/* E0A70 80180030 00000000 */  nop
/* E0A74 80180034 45000024 */  bc1f       .L801800C8_ovl3
/* E0A78 80180038 00000000 */   nop
/* E0A7C 8018003C 8DEFE4EC */  lw         $t7, %lo(D_800BE4EC)($t7)
/* E0A80 80180040 24010003 */  addiu      $at, $zero, 0x3
/* E0A84 80180044 01E1001B */  divu       $zero, $t7, $at
/* E0A88 80180048 00006810 */  mfhi       $t5
/* E0A8C 8018004C 15A0001E */  bnez       $t5, .L801800C8_ovl3
/* E0A90 80180050 00000000 */   nop
/* E0A94 80180054 0C048C90 */  jal        func_80123240
/* E0A98 80180058 00000000 */   nop
/* E0A9C 8018005C 3C088013 */  lui        $t0, %hi(gKirbyState)
/* E0AA0 80180060 44809000 */  mtc1       $zero, $f18
/* E0AA4 80180064 2401FFFF */  addiu      $at, $zero, -0x1
/* E0AA8 80180068 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* E0AAC 8018006C 10410016 */  beq        $v0, $at, .L801800C8_ovl3
/* E0AB0 80180070 00403025 */   or        $a2, $v0, $zero
/* E0AB4 80180074 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* E0AB8 80180078 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* E0ABC 8018007C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
glabel func_80180080_ovl5
/* E0AC0 80180080 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* E0AC4 80180084 8F020000 */  lw         $v0, 0x0($t8)
/* E0AC8 80180088 24040005 */  addiu      $a0, $zero, 0x5
/* E0ACC 8018008C 24050001 */  addiu      $a1, $zero, 0x1
/* E0AD0 80180090 00021080 */  sll        $v0, $v0, 2
/* E0AD4 80180094 00220821 */  addu       $at, $at, $v0
/* E0AD8 80180098 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* E0ADC 8018009C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* E0AE0 801800A0 00220821 */  addu       $at, $at, $v0
/* E0AE4 801800A4 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
.L801800A8_ovl5:
/* E0AE8 801800A8 00E23821 */  addu       $a3, $a3, $v0
/* E0AEC 801800AC 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* E0AF0 801800B0 E7A60010 */  swc1       $f6, 0x10($sp)
/* E0AF4 801800B4 0C029FDD */  jal        func_800A7F74
.L801800B8_ovl5:
/* E0AF8 801800B8 E7A80014 */   swc1      $f8, 0x14($sp)
/* E0AFC 801800BC 3C088013 */  lui        $t0, %hi(gKirbyState)
/* E0B00 801800C0 44809000 */  mtc1       $zero, $f18
/* E0B04 801800C4 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
.L801800C8_ovl3:
/* E0B08 801800C8 3C038005 */  lui        $v1, %hi(D_8004A7C4)
glabel func_801800CC_ovl5
/* E0B0C 801800CC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* E0B10 801800D0 3C05800E */  lui        $a1, %hi(D_800E64D0)
/* E0B14 801800D4 24A564D0 */  addiu      $a1, $a1, %lo(D_800E64D0)
/* E0B18 801800D8 8C620000 */  lw         $v0, 0x0($v1)
/* E0B1C 801800DC 3C018019 */  lui        $at, %hi(D_801976FC_ovl3)
/* E0B20 801800E0 00021080 */  sll        $v0, $v0, 2
/* E0B24 801800E4 00A2C821 */  addu       $t9, $a1, $v0
/* E0B28 801800E8 C7200000 */  lwc1       $f0, 0x0($t9)
/* E0B2C 801800EC 46009032 */  c.eq.s     $f18, $f0
/* E0B30 801800F0 00000000 */  nop
/* E0B34 801800F4 45010060 */  bc1t       .L80180278_ovl3
/* E0B38 801800F8 00000000 */   nop
/* E0B3C 801800FC 46000280 */  add.s      $f10, $f0, $f0
/* E0B40 80180100 C42476FC */  lwc1       $f4, %lo(D_801976FC_ovl3)($at)
glabel func_80180104_ovl5
/* E0B44 80180104 3C014334 */  lui        $at, (0x43340000 >> 16)
/* E0B48 80180108 44814000 */  mtc1       $at, $f8
/* E0B4C 8018010C 46045182 */  mul.s      $f6, $f10, $f4
/* E0B50 80180110 C5040040 */  lwc1       $f4, 0x40($t0)
/* E0B54 80180114 00002025 */  or         $a0, $zero, $zero
/* E0B58 80180118 3C018019 */  lui        $at, %hi(D_80197704_ovl3)
/* E0B5C 8018011C 46083283 */  div.s      $f10, $f6, $f8
/* E0B60 80180120 44804000 */  mtc1       $zero, $f8
/* E0B64 80180124 460A2180 */  add.s      $f6, $f4, $f10
/* E0B68 80180128 E5060040 */  swc1       $f6, 0x40($t0)
/* E0B6C 8018012C C5020040 */  lwc1       $f2, 0x40($t0)
/* E0B70 80180130 4608103C */  c.lt.s     $f2, $f8
.L80180134_ovl5:
/* E0B74 80180134 00000000 */  nop
.L80180138_ovl5:
/* E0B78 80180138 45000007 */  bc1f       .L80180158_ovl3
/* E0B7C 8018013C 00000000 */   nop
/* E0B80 80180140 3C018019 */  lui        $at, %hi(D_80197700_ovl3)
glabel func_80180144_ovl5
/* E0B84 80180144 C4207700 */  lwc1       $f0, %lo(D_80197700_ovl3)($at)
/* E0B88 80180148 24040001 */  addiu      $a0, $zero, 0x1
/* E0B8C 8018014C 46001100 */  add.s      $f4, $f2, $f0
/* E0B90 80180150 10000009 */  b          .L80180178_ovl3
/* E0B94 80180154 E5040040 */   swc1      $f4, 0x40($t0)
.L80180158_ovl3:
/* E0B98 80180158 C4207704 */  lwc1       $f0, %lo(D_80197704_ovl3)($at)
/* E0B9C 8018015C 4602003E */  c.le.s     $f0, $f2
/* E0BA0 80180160 00000000 */  nop
/* E0BA4 80180164 45020005 */  bc1fl      .L8018017C_ovl3
/* E0BA8 80180168 8C620000 */   lw        $v0, 0x0($v1)
/* E0BAC 8018016C 46001281 */  sub.s      $f10, $f2, $f0
/* E0BB0 80180170 24040001 */  addiu      $a0, $zero, 0x1
/* E0BB4 80180174 E50A0040 */  swc1       $f10, 0x40($t0)
.L80180178_ovl3:
/* E0BB8 80180178 8C620000 */  lw         $v0, 0x0($v1)
.L8018017C_ovl3:
/* E0BBC 8018017C 3C09800F */  lui        $t1, %hi(D_800E8920)
/* E0BC0 80180180 00021080 */  sll        $v0, $v0, 2
/* E0BC4 80180184 01224821 */  addu       $t1, $t1, $v0
/* E0BC8 80180188 8D298920 */  lw         $t1, %lo(D_800E8920)($t1)
/* E0BCC 8018018C 1120001C */  beqz       $t1, .L80180200_ovl3
/* E0BD0 80180190 00000000 */   nop
/* E0BD4 80180194 1080001A */  beqz       $a0, .L80180200_ovl3
/* E0BD8 80180198 00A25021 */   addu      $t2, $a1, $v0
/* E0BDC 8018019C C5400000 */  lwc1       $f0, 0x0($t2)
/* E0BE0 801801A0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* E0BE4 801801A4 44813000 */  mtc1       $at, $f6
/* E0BE8 801801A8 4612003C */  c.lt.s     $f0, $f18
/* E0BEC 801801AC 00000000 */  nop
/* E0BF0 801801B0 45020004 */  bc1fl      .L801801C4_ovl3
/* E0BF4 801801B4 46000306 */   mov.s     $f12, $f0
/* E0BF8 801801B8 10000002 */  b          .L801801C4_ovl3
/* E0BFC 801801BC 46000307 */   neg.s     $f12, $f0
/* E0C00 801801C0 46000306 */  mov.s      $f12, $f0
.L801801C4_ovl3:
/* E0C04 801801C4 460C303C */  c.lt.s     $f6, $f12
/* E0C08 801801C8 00000000 */  nop
/* E0C0C 801801CC 4500000C */  bc1f       .L80180200_ovl3
/* E0C10 801801D0 00000000 */   nop
/* E0C14 801801D4 0C029D9E */  jal        play_sound
/* E0C18 801801D8 24040121 */   addiu     $a0, $zero, 0x121
/* E0C1C 801801DC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* E0C20 801801E0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* E0C24 801801E4 3C088013 */  lui        $t0, %hi(gKirbyState)
/* E0C28 801801E8 3C05800E */  lui        $a1, %hi(D_800E64D0)
/* E0C2C 801801EC 8C620000 */  lw         $v0, 0x0($v1)
/* E0C30 801801F0 44809000 */  mtc1       $zero, $f18
/* E0C34 801801F4 24A564D0 */  addiu      $a1, $a1, %lo(D_800E64D0)
/* E0C38 801801F8 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* E0C3C 801801FC 00021080 */  sll        $v0, $v0, 2
.L80180200_ovl3:
/* E0C40 80180200 3C06800E */  lui        $a2, %hi(D_800E6A10)
/* E0C44 80180204 24C66A10 */  addiu      $a2, $a2, %lo(D_800E6A10)
/* E0C48 80180208 00C25821 */  addu       $t3, $a2, $v0
/* E0C4C 8018020C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* E0C50 80180210 44814000 */  mtc1       $at, $f8
/* E0C54 80180214 C5640000 */  lwc1       $f4, 0x0($t3)
/* E0C58 80180218 3C04800D */  lui        $a0, %hi(D_800D71E8 + 0x50)
/* E0C5C 8018021C 24847238 */  addiu      $a0, $a0, %lo(D_800D71E8 + 0x50)
/* E0C60 80180220 46044032 */  c.eq.s     $f8, $f4
/* E0C64 80180224 C5020040 */  lwc1       $f2, 0x40($t0)
/* E0C68 80180228 45020007 */  bc1fl      .L80180248_ovl3
/* E0C6C 8018022C E4820000 */   swc1      $f2, 0x0($a0)
/* E0C70 80180230 3C04800D */  lui        $a0, %hi(D_800D71E8 + 0x50)
/* E0C74 80180234 46001287 */  neg.s      $f10, $f2
/* E0C78 80180238 24847238 */  addiu      $a0, $a0, %lo(D_800D71E8 + 0x50)
/* E0C7C 8018023C 10000002 */  b          .L80180248_ovl3
/* E0C80 80180240 E48A0000 */   swc1      $f10, 0x0($a0)
/* E0C84 80180244 E4820000 */  swc1       $f2, 0x0($a0)
.L80180248_ovl3:
/* E0C88 80180248 8C6C0000 */  lw         $t4, 0x0($v1)
/* E0C8C 8018024C 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* E0C90 80180250 C4860000 */  lwc1       $f6, 0x0($a0)
/* E0C94 80180254 000C7080 */  sll        $t6, $t4, 2
/* E0C98 80180258 01EE7821 */  addu       $t7, $t7, $t6
/* E0C9C 8018025C 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
/* E0CA0 80180260 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* E0CA4 80180264 8DED0004 */  lw         $t5, 0x4($t7)
/* E0CA8 80180268 E5A60030 */  swc1       $f6, 0x30($t5)
/* E0CAC 8018026C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* E0CB0 80180270 8C620000 */  lw         $v0, 0x0($v1)
/* E0CB4 80180274 00021080 */  sll        $v0, $v0, 2
.L80180278_ovl3:
/* E0CB8 80180278 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* E0CBC 8018027C 00220821 */  addu       $at, $at, $v0
/* E0CC0 80180280 C428A6E0 */  lwc1       $f8, %lo(D_800EA6E0)($at)
glabel func_80180284_ovl5
/* E0CC4 80180284 3C06800E */  lui        $a2, %hi(D_800E6A10)
/* E0CC8 80180288 3C18800F */  lui        $t8, %hi(D_800E8920)
/* E0CCC 8018028C 46089032 */  c.eq.s     $f18, $f8
/* E0CD0 80180290 24C66A10 */  addiu      $a2, $a2, %lo(D_800E6A10)
/* E0CD4 80180294 0302C021 */  addu       $t8, $t8, $v0
/* E0CD8 80180298 45020134 */  bc1fl      .L8018076C_ovl3
/* E0CDC 8018029C 8D0D00A0 */   lw        $t5, 0xA0($t0)
/* E0CE0 801802A0 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
/* E0CE4 801802A4 3C04800D */  lui        $a0, (0x800D0000 >> 16)
