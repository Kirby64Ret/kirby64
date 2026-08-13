nonmatching func_8019F650_ovl7, 0x380

glabel func_8019F650_ovl7
    /* 1456C0 8019F650 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 1456C4 8019F654 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 1456C8 8019F658 8CCE0000 */  lw         $t6, 0x0($a2)
    /* 1456CC 8019F65C 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 1456D0 8019F660 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1456D4 8019F664 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 1456D8 8019F668 3C03800E */  lui        $v1, %hi(D_800E1B50)
    /* 1456DC 8019F66C 27A40024 */  addiu      $a0, $sp, 0x24
    /* 1456E0 8019F670 000FC080 */  sll        $t8, $t7, 2
    /* 1456E4 8019F674 00781821 */  addu       $v1, $v1, $t8
    /* 1456E8 8019F678 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
    /* 1456EC 8019F67C 0C0442C0 */  jal        func_80110B00
    /* 1456F0 8019F680 AFA30040 */   sw        $v1, 0x40($sp)
    /* 1456F4 8019F684 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 1456F8 8019F688 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 1456FC 8019F68C 10400013 */  beqz       $v0, .L8019F6DC_ovl7
    /* 145700 8019F690 8FA30040 */   lw        $v1, 0x40($sp)
    /* 145704 8019F694 8CCA0000 */  lw         $t2, 0x0($a2)
    /* 145708 8019F698 93B90026 */  lbu        $t9, 0x26($sp)
    /* 14570C 8019F69C 3C08800F */  lui        $t0, %hi(D_800E83E0)
    /* 145710 8019F6A0 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 145714 8019F6A4 250883E0 */  addiu      $t0, $t0, %lo(D_800E83E0)
    /* 145718 8019F6A8 2409FFFF */  addiu      $t1, $zero, -0x1
    /* 14571C 8019F6AC 000B6080 */  sll        $t4, $t3, 2
    /* 145720 8019F6B0 010C6821 */  addu       $t5, $t0, $t4
    /* 145724 8019F6B4 ADB90000 */  sw         $t9, 0x0($t5)
    /* 145728 8019F6B8 93AE0027 */  lbu        $t6, 0x27($sp)
    /* 14572C 8019F6BC A06E0043 */  sb         $t6, 0x43($v1)
    /* 145730 8019F6C0 93AF0024 */  lbu        $t7, 0x24($sp)
    /* 145734 8019F6C4 A06F003E */  sb         $t7, 0x3E($v1)
    /* 145738 8019F6C8 93B80025 */  lbu        $t8, 0x25($sp)
    /* 14573C 8019F6CC A078003F */  sb         $t8, 0x3F($v1)
    /* 145740 8019F6D0 8FAA0030 */  lw         $t2, 0x30($sp)
    /* 145744 8019F6D4 1000003D */  b          .L8019F7CC_ovl7
    /* 145748 8019F6D8 A06A003A */   sb        $t2, 0x3A($v1)
  .L8019F6DC_ovl7:
    /* 14574C 8019F6DC 27A40024 */  addiu      $a0, $sp, 0x24
    /* 145750 8019F6E0 0C0443F5 */  jal        func_80110FD4
    /* 145754 8019F6E4 AFA30040 */   sw        $v1, 0x40($sp)
    /* 145758 8019F6E8 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 14575C 8019F6EC 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 145760 8019F6F0 10400013 */  beqz       $v0, .L8019F740_ovl7
    /* 145764 8019F6F4 8FA30040 */   lw        $v1, 0x40($sp)
    /* 145768 8019F6F8 8CCC0000 */  lw         $t4, 0x0($a2)
    /* 14576C 8019F6FC 93AB0026 */  lbu        $t3, 0x26($sp)
    /* 145770 8019F700 3C08800F */  lui        $t0, %hi(D_800E83E0)
    /* 145774 8019F704 8D990000 */  lw         $t9, 0x0($t4)
    /* 145778 8019F708 250883E0 */  addiu      $t0, $t0, %lo(D_800E83E0)
    /* 14577C 8019F70C 2409FFFF */  addiu      $t1, $zero, -0x1
    /* 145780 8019F710 00196880 */  sll        $t5, $t9, 2
    /* 145784 8019F714 010D7021 */  addu       $t6, $t0, $t5
    /* 145788 8019F718 ADCB0000 */  sw         $t3, 0x0($t6)
    /* 14578C 8019F71C 93AF0027 */  lbu        $t7, 0x27($sp)
    /* 145790 8019F720 A06F0043 */  sb         $t7, 0x43($v1)
    /* 145794 8019F724 93B80024 */  lbu        $t8, 0x24($sp)
    /* 145798 8019F728 A078003E */  sb         $t8, 0x3E($v1)
    /* 14579C 8019F72C 93AA0025 */  lbu        $t2, 0x25($sp)
    /* 1457A0 8019F730 A06A003F */  sb         $t2, 0x3F($v1)
    /* 1457A4 8019F734 8FAC0030 */  lw         $t4, 0x30($sp)
    /* 1457A8 8019F738 10000024 */  b          .L8019F7CC_ovl7
    /* 1457AC 8019F73C A06C003A */   sb        $t4, 0x3A($v1)
  .L8019F740_ovl7:
    /* 1457B0 8019F740 27A40024 */  addiu      $a0, $sp, 0x24
    /* 1457B4 8019F744 0C044054 */  jal        func_80110150
    /* 1457B8 8019F748 AFA30040 */   sw        $v1, 0x40($sp)
    /* 1457BC 8019F74C 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 1457C0 8019F750 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 1457C4 8019F754 10400013 */  beqz       $v0, .L8019F7A4_ovl7
    /* 1457C8 8019F758 8FA30040 */   lw        $v1, 0x40($sp)
    /* 1457CC 8019F75C 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 1457D0 8019F760 93B90026 */  lbu        $t9, 0x26($sp)
    /* 1457D4 8019F764 3C08800F */  lui        $t0, %hi(D_800E83E0)
    /* 1457D8 8019F768 8DAB0000 */  lw         $t3, 0x0($t5)
    /* 1457DC 8019F76C 250883E0 */  addiu      $t0, $t0, %lo(D_800E83E0)
    /* 1457E0 8019F770 2409FFFF */  addiu      $t1, $zero, -0x1
    /* 1457E4 8019F774 000B7080 */  sll        $t6, $t3, 2
    /* 1457E8 8019F778 010E7821 */  addu       $t7, $t0, $t6
    /* 1457EC 8019F77C ADF90000 */  sw         $t9, 0x0($t7)
    /* 1457F0 8019F780 93B80027 */  lbu        $t8, 0x27($sp)
    /* 1457F4 8019F784 A0780043 */  sb         $t8, 0x43($v1)
    /* 1457F8 8019F788 93AA0024 */  lbu        $t2, 0x24($sp)
    /* 1457FC 8019F78C A06A003E */  sb         $t2, 0x3E($v1)
    /* 145800 8019F790 93AC0025 */  lbu        $t4, 0x25($sp)
    /* 145804 8019F794 A06C003F */  sb         $t4, 0x3F($v1)
    /* 145808 8019F798 8FAD0030 */  lw         $t5, 0x30($sp)
    /* 14580C 8019F79C 1000000B */  b          .L8019F7CC_ovl7
    /* 145810 8019F7A0 A06D003A */   sb        $t5, 0x3A($v1)
  .L8019F7A4_ovl7:
    /* 145814 8019F7A4 8CCB0000 */  lw         $t3, 0x0($a2)
    /* 145818 8019F7A8 3C08800F */  lui        $t0, %hi(D_800E83E0)
    /* 14581C 8019F7AC 250883E0 */  addiu      $t0, $t0, %lo(D_800E83E0)
    /* 145820 8019F7B0 8D6E0000 */  lw         $t6, 0x0($t3)
    /* 145824 8019F7B4 2409FFFF */  addiu      $t1, $zero, -0x1
    /* 145828 8019F7B8 000EC880 */  sll        $t9, $t6, 2
    /* 14582C 8019F7BC 01197821 */  addu       $t7, $t0, $t9
    /* 145830 8019F7C0 ADE00000 */  sw         $zero, 0x0($t7)
    /* 145834 8019F7C4 A0600043 */  sb         $zero, 0x43($v1)
    /* 145838 8019F7C8 A069003A */  sb         $t1, 0x3A($v1)
  .L8019F7CC_ovl7:
    /* 14583C 8019F7CC 8CC70000 */  lw         $a3, 0x0($a2)
    /* 145840 8019F7D0 24010001 */  addiu      $at, $zero, 0x1
    /* 145844 8019F7D4 8CE50000 */  lw         $a1, 0x0($a3)
    /* 145848 8019F7D8 00052880 */  sll        $a1, $a1, 2
    /* 14584C 8019F7DC 0105C021 */  addu       $t8, $t0, $a1
    /* 145850 8019F7E0 8F020000 */  lw         $v0, 0x0($t8)
    /* 145854 8019F7E4 1041000A */  beq        $v0, $at, .L8019F810_ovl7
    /* 145858 8019F7E8 24010002 */   addiu     $at, $zero, 0x2
    /* 14585C 8019F7EC 10410037 */  beq        $v0, $at, .L8019F8CC_ovl7
    /* 145860 8019F7F0 3C04800E */   lui       $a0, %hi(D_800DE350)
    /* 145864 8019F7F4 24010003 */  addiu      $at, $zero, 0x3
    /* 145868 8019F7F8 1041003B */  beq        $v0, $at, .L8019F8E8_ovl7
    /* 14586C 8019F7FC 24010004 */   addiu     $at, $zero, 0x4
    /* 145870 8019F800 10410052 */  beq        $v0, $at, .L8019F94C_ovl7
    /* 145874 8019F804 00000000 */   nop
    /* 145878 8019F808 1000006D */  b          .L8019F9C0_ovl7
    /* 14587C 8019F80C 00001025 */   or        $v0, $zero, $zero
  .L8019F810_ovl7:
    /* 145880 8019F810 8FA40030 */  lw         $a0, 0x30($sp)
    /* 145884 8019F814 0C068091 */  jal        func_801A0244_ovl7
    /* 145888 8019F818 AFA30040 */   sw        $v1, 0x40($sp)
    /* 14588C 8019F81C 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 145890 8019F820 3C08800F */  lui        $t0, %hi(D_800E83E0)
    /* 145894 8019F824 2409FFFF */  addiu      $t1, $zero, -0x1
    /* 145898 8019F828 250883E0 */  addiu      $t0, $t0, %lo(D_800E83E0)
    /* 14589C 8019F82C 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 1458A0 8019F830 1049001B */  beq        $v0, $t1, .L8019F8A0_ovl7
    /* 1458A4 8019F834 8FA30040 */   lw        $v1, 0x40($sp)
    /* 1458A8 8019F838 8CCC0000 */  lw         $t4, 0x0($a2)
    /* 1458AC 8019F83C 240A0012 */  addiu      $t2, $zero, 0x12
    /* 1458B0 8019F840 240400F4 */  addiu      $a0, $zero, 0xF4
    /* 1458B4 8019F844 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 1458B8 8019F848 000D5880 */  sll        $t3, $t5, 2
    /* 1458BC 8019F84C 010B7021 */  addu       $t6, $t0, $t3
    /* 1458C0 8019F850 ADCA0000 */  sw         $t2, 0x0($t6)
    /* 1458C4 8019F854 0C029D9E */  jal        play_sound
    /* 1458C8 8019F858 AFA30040 */   sw        $v1, 0x40($sp)
    /* 1458CC 8019F85C 8FA30040 */  lw         $v1, 0x40($sp)
    /* 1458D0 8019F860 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 1458D4 8019F864 24190001 */  addiu      $t9, $zero, 0x1
    /* 1458D8 8019F868 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 1458DC 8019F86C AC600094 */  sw         $zero, 0x94($v1)
    /* 1458E0 8019F870 A0790040 */  sb         $t9, 0x40($v1)
    /* 1458E4 8019F874 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 1458E8 8019F878 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 1458EC 8019F87C 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
    /* 1458F0 8019F880 8DF80000 */  lw         $t8, 0x0($t7)
    /* 1458F4 8019F884 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
    /* 1458F8 8019F888 00186080 */  sll        $t4, $t8, 2
    /* 1458FC 8019F88C 008C2021 */  addu       $a0, $a0, $t4
    /* 145900 8019F890 0C02C7B2 */  jal        assign_new_process_entry
    /* 145904 8019F894 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 145908 8019F898 10000049 */  b          .L8019F9C0_ovl7
    /* 14590C 8019F89C 24020001 */   addiu     $v0, $zero, 0x1
  .L8019F8A0_ovl7:
    /* 145910 8019F8A0 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 145914 8019F8A4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 145918 8019F8A8 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
    /* 14591C 8019F8AC 8DAB0000 */  lw         $t3, 0x0($t5)
    /* 145920 8019F8B0 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
    /* 145924 8019F8B4 000B5080 */  sll        $t2, $t3, 2
    /* 145928 8019F8B8 008A2021 */  addu       $a0, $a0, $t2
    /* 14592C 8019F8BC 0C02C7B2 */  jal        assign_new_process_entry
    /* 145930 8019F8C0 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 145934 8019F8C4 1000003E */  b          .L8019F9C0_ovl7
    /* 145938 8019F8C8 24020001 */   addiu     $v0, $zero, 0x1
  .L8019F8CC_ovl7:
    /* 14593C 8019F8CC 00852021 */  addu       $a0, $a0, $a1
    /* 145940 8019F8D0 0C067AF3 */  jal        func_8019EBCC_ovl7
    /* 145944 8019F8D4 8C84E350 */   lw        $a0, %lo(D_800DE350)($a0)
    /* 145948 8019F8D8 0C068EE9 */  jal        func_801A3BA4_ovl7
    /* 14594C 8019F8DC 00000000 */   nop
    /* 145950 8019F8E0 10000037 */  b          .L8019F9C0_ovl7
    /* 145954 8019F8E4 24020001 */   addiu     $v0, $zero, 0x1
  .L8019F8E8_ovl7:
    /* 145958 8019F8E8 8FAE0030 */  lw         $t6, 0x30($sp)
    /* 14595C 8019F8EC 3C01800F */  lui        $at, %hi(D_800E8220)
    /* 145960 8019F8F0 00250821 */  addu       $at, $at, $a1
    /* 145964 8019F8F4 11C90006 */  beq        $t6, $t1, .L8019F910_ovl7
    /* 145968 8019F8F8 AC208220 */   sw        $zero, %lo(D_800E8220)($at)
    /* 14596C 8019F8FC 8CF90000 */  lw         $t9, 0x0($a3)
    /* 145970 8019F900 3C01800E */  lui        $at, %hi(D_800E0D50)
    /* 145974 8019F904 00197880 */  sll        $t7, $t9, 2
    /* 145978 8019F908 002F0821 */  addu       $at, $at, $t7
    /* 14597C 8019F90C AC2E0D50 */  sw         $t6, %lo(D_800E0D50)($at)
  .L8019F910_ovl7:
    /* 145980 8019F910 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* 145984 8019F914 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* 145988 8019F918 845800B2 */  lh         $t8, 0xB2($v0)
    /* 14598C 8019F91C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 145990 8019F920 3C05801A */  lui        $a1, %hi(func_801A7000_ovl7)
    /* 145994 8019F924 270C0001 */  addiu      $t4, $t8, 0x1
    /* 145998 8019F928 A44C00B2 */  sh         $t4, 0xB2($v0)
    /* 14599C 8019F92C 8CED0000 */  lw         $t5, 0x0($a3)
    /* 1459A0 8019F930 24A57000 */  addiu      $a1, $a1, %lo(func_801A7000_ovl7)
    /* 1459A4 8019F934 000D5880 */  sll        $t3, $t5, 2
    /* 1459A8 8019F938 008B2021 */  addu       $a0, $a0, $t3
    /* 1459AC 8019F93C 0C02C7B2 */  jal        assign_new_process_entry
    /* 1459B0 8019F940 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 1459B4 8019F944 1000001E */  b          .L8019F9C0_ovl7
    /* 1459B8 8019F948 24020001 */   addiu     $v0, $zero, 0x1
  .L8019F94C_ovl7:
    /* 1459BC 8019F94C 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* 1459C0 8019F950 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* 1459C4 8019F954 904A0004 */  lbu        $t2, 0x4($v0)
    /* 1459C8 8019F958 3C01800F */  lui        $at, %hi(D_800E8220)
    /* 1459CC 8019F95C 00250821 */  addu       $at, $at, $a1
    /* 1459D0 8019F960 15400015 */  bnez       $t2, .L8019F9B8_ovl7
    /* 1459D4 8019F964 24190001 */   addiu     $t9, $zero, 0x1
    /* 1459D8 8019F968 8FAF0030 */  lw         $t7, 0x30($sp)
    /* 1459DC 8019F96C AC398220 */  sw         $t9, %lo(D_800E8220)($at)
    /* 1459E0 8019F970 240E0002 */  addiu      $t6, $zero, 0x2
    /* 1459E4 8019F974 11E90006 */  beq        $t7, $t1, .L8019F990_ovl7
    /* 1459E8 8019F978 A04E0004 */   sb        $t6, 0x4($v0)
    /* 1459EC 8019F97C 8CF80000 */  lw         $t8, 0x0($a3)
    /* 1459F0 8019F980 3C01800E */  lui        $at, %hi(D_800E0D50)
    /* 1459F4 8019F984 00186080 */  sll        $t4, $t8, 2
    /* 1459F8 8019F988 002C0821 */  addu       $at, $at, $t4
    /* 1459FC 8019F98C AC2F0D50 */  sw         $t7, %lo(D_800E0D50)($at)
  .L8019F990_ovl7:
    /* 145A00 8019F990 8CED0000 */  lw         $t5, 0x0($a3)
    /* 145A04 8019F994 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 145A08 8019F998 3C05801A */  lui        $a1, %hi(func_801A7000_ovl7)
    /* 145A0C 8019F99C 000D5880 */  sll        $t3, $t5, 2
    /* 145A10 8019F9A0 008B2021 */  addu       $a0, $a0, $t3
    /* 145A14 8019F9A4 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 145A18 8019F9A8 0C02C7B2 */  jal        assign_new_process_entry
    /* 145A1C 8019F9AC 24A57000 */   addiu     $a1, $a1, %lo(func_801A7000_ovl7)
    /* 145A20 8019F9B0 10000003 */  b          .L8019F9C0_ovl7
    /* 145A24 8019F9B4 24020001 */   addiu     $v0, $zero, 0x1
  .L8019F9B8_ovl7:
    /* 145A28 8019F9B8 10000001 */  b          .L8019F9C0_ovl7
    /* 145A2C 8019F9BC 00001025 */   or        $v0, $zero, $zero
  .L8019F9C0_ovl7:
    /* 145A30 8019F9C0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 145A34 8019F9C4 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 145A38 8019F9C8 03E00008 */  jr         $ra
    /* 145A3C 8019F9CC 00000000 */   nop
endlabel func_8019F650_ovl7
.size func_8019F650_ovl7, . - func_8019F650_ovl7
