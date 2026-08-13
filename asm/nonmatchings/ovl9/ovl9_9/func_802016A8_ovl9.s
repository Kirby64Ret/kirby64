nonmatching func_802016A8_ovl9, 0x148

glabel func_802016A8_ovl9
    /* 1AF6F8 802016A8 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 1AF6FC 802016AC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1AF700 802016B0 24040015 */  addiu      $a0, $zero, 0x15
    /* 1AF704 802016B4 00002825 */  or         $a1, $zero, $zero
    /* 1AF708 802016B8 24060000 */  addiu      $a2, $zero, 0x0
    /* 1AF70C 802016BC 0C06B328 */  jal        func_801ACCA0_ovl7
    /* 1AF710 802016C0 24070000 */   addiu     $a3, $zero, 0x0
    /* 1AF714 802016C4 44800000 */  mtc1       $zero, $f0
    /* 1AF718 802016C8 10400045 */  beqz       $v0, .L802017E0_ovl9
    /* 1AF71C 802016CC AFA20028 */   sw        $v0, 0x28($sp)
    /* 1AF720 802016D0 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1AF724 802016D4 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1AF728 802016D8 E7A0003C */  swc1       $f0, 0x3C($sp)
    /* 1AF72C 802016DC E7A00038 */  swc1       $f0, 0x38($sp)
    /* 1AF730 802016E0 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 1AF734 802016E4 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 1AF738 802016E8 24040003 */  addiu      $a0, $zero, 0x3
    /* 1AF73C 802016EC 000FC080 */  sll        $t8, $t7, 2
    /* 1AF740 802016F0 00380821 */  addu       $at, $at, $t8
    /* 1AF744 802016F4 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
    /* 1AF748 802016F8 0C006291 */  jal        random_soft_s32_range
    /* 1AF74C 802016FC E7A40034 */   swc1      $f4, 0x34($sp)
    /* 1AF750 80201700 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 1AF754 80201704 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* 1AF758 80201708 3C09800F */  lui        $t1, %hi(D_800E98E0)
    /* 1AF75C 8020170C 252998E0 */  addiu      $t1, $t1, %lo(D_800E98E0)
    /* 1AF760 80201710 8CF90000 */  lw         $t9, 0x0($a3)
    /* 1AF764 80201714 00401825 */  or         $v1, $v0, $zero
    /* 1AF768 80201718 00195080 */  sll        $t2, $t9, 2
    /* 1AF76C 8020171C 012A4021 */  addu       $t0, $t1, $t2
    /* 1AF770 80201720 8D0B0000 */  lw         $t3, 0x0($t0)
    /* 1AF774 80201724 544B0009 */  bnel       $v0, $t3, .L8020174C_ovl9
    /* 1AF778 80201728 AD030000 */   sw        $v1, 0x0($t0)
    /* 1AF77C 8020172C 24430001 */  addiu      $v1, $v0, 0x1
    /* 1AF780 80201730 28610003 */  slti       $at, $v1, 0x3
    /* 1AF784 80201734 14200003 */  bnez       $at, .L80201744_ovl9
    /* 1AF788 80201738 00602025 */   or        $a0, $v1, $zero
    /* 1AF78C 8020173C 10000001 */  b          .L80201744_ovl9
    /* 1AF790 80201740 00002025 */   or        $a0, $zero, $zero
  .L80201744_ovl9:
    /* 1AF794 80201744 00801825 */  or         $v1, $a0, $zero
    /* 1AF798 80201748 AD030000 */  sw         $v1, 0x0($t0)
  .L8020174C_ovl9:
    /* 1AF79C 8020174C 8CE20000 */  lw         $v0, 0x0($a3)
    /* 1AF7A0 80201750 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 1AF7A4 80201754 27A40034 */  addiu      $a0, $sp, 0x34
    /* 1AF7A8 80201758 00021080 */  sll        $v0, $v0, 2
    /* 1AF7AC 8020175C 01226021 */  addu       $t4, $t1, $v0
    /* 1AF7B0 80201760 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 1AF7B4 80201764 00220821 */  addu       $at, $at, $v0
    /* 1AF7B8 80201768 C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
    /* 1AF7BC 8020176C 3C018022 */  lui        $at, %hi(D_8021C7A4_ovl9)
    /* 1AF7C0 80201770 000D7080 */  sll        $t6, $t5, 2
    /* 1AF7C4 80201774 002E0821 */  addu       $at, $at, $t6
    /* 1AF7C8 80201778 C428C7A4 */  lwc1       $f8, %lo(D_8021C7A4_ovl9)($at)
    /* 1AF7CC 8020177C 24050004 */  addiu      $a1, $zero, 0x4
    /* 1AF7D0 80201780 46083002 */  mul.s      $f0, $f6, $f8
    /* 1AF7D4 80201784 44060000 */  mfc1       $a2, $f0
    /* 1AF7D8 80201788 0C006424 */  jal        lbvector_Rotate
    /* 1AF7DC 8020178C 00000000 */   nop
    /* 1AF7E0 80201790 3C014120 */  lui        $at, (0x41200000 >> 16)
    /* 1AF7E4 80201794 44811000 */  mtc1       $at, $f2
    /* 1AF7E8 80201798 C7AA0034 */  lwc1       $f10, 0x34($sp)
    /* 1AF7EC 8020179C C7A00038 */  lwc1       $f0, 0x38($sp)
    /* 1AF7F0 802017A0 8FA30028 */  lw         $v1, 0x28($sp)
    /* 1AF7F4 802017A4 46025402 */  mul.s      $f16, $f10, $f2
    /* 1AF7F8 802017A8 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* 1AF7FC 802017AC 00031880 */  sll        $v1, $v1, 2
    /* 1AF800 802017B0 46020482 */  mul.s      $f18, $f0, $f2
    /* 1AF804 802017B4 00230821 */  addu       $at, $at, $v1
    /* 1AF808 802017B8 E43064D0 */  swc1       $f16, %lo(D_800E64D0)($at)
    /* 1AF80C 802017BC 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 1AF810 802017C0 00230821 */  addu       $at, $at, $v1
    /* 1AF814 802017C4 E4323210 */  swc1       $f18, %lo(D_800E3210)($at)
    /* 1AF818 802017C8 3C01BFC0 */  lui        $at, (0xBFC00000 >> 16)
    /* 1AF81C 802017CC 44812000 */  mtc1       $at, $f4
    /* 1AF820 802017D0 3C01800E */  lui        $at, %hi(D_800E3750)
    /* 1AF824 802017D4 00230821 */  addu       $at, $at, $v1
    /* 1AF828 802017D8 46040182 */  mul.s      $f6, $f0, $f4
    /* 1AF82C 802017DC E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
  .L802017E0_ovl9:
    /* 1AF830 802017E0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1AF834 802017E4 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 1AF838 802017E8 03E00008 */  jr         $ra
    /* 1AF83C 802017EC 00000000 */   nop
endlabel func_802016A8_ovl9
.size func_802016A8_ovl9, . - func_802016A8_ovl9
