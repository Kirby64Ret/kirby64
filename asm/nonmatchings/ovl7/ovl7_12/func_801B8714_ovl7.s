nonmatching func_801B8714_ovl7, 0xC8

glabel func_801B8714_ovl7
    /* 15E784 801B8714 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 15E788 801B8718 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 15E78C 801B871C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 15E790 801B8720 AFA50024 */  sw         $a1, 0x24($sp)
    /* 15E794 801B8724 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 15E798 801B8728 AFA40020 */  sw         $a0, 0x20($sp)
    /* 15E79C 801B872C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 15E7A0 801B8730 3C05801D */  lui        $a1, %hi(D_801D0A98_ovl7)
    /* 15E7A4 801B8734 24A50A98 */  addiu      $a1, $a1, %lo(D_801D0A98_ovl7)
    /* 15E7A8 801B8738 8CB90000 */  lw         $t9, 0x0($a1)
    /* 15E7AC 801B873C 3C03800E */  lui        $v1, %hi(D_800E1B50)
    /* 15E7B0 801B8740 000FC080 */  sll        $t8, $t7, 2
    /* 15E7B4 801B8744 44866000 */  mtc1       $a2, $f12
    /* 15E7B8 801B8748 00781821 */  addu       $v1, $v1, $t8
    /* 15E7BC 801B874C 1720000E */  bnez       $t9, .L801B8788_ovl7
    /* 15E7C0 801B8750 8C631B50 */   lw        $v1, %lo(D_800E1B50)($v1)
    /* 15E7C4 801B8754 4600610D */  trunc.w.s  $f4, $f12
    /* 15E7C8 801B8758 2404015F */  addiu      $a0, $zero, 0x15F
    /* 15E7CC 801B875C 44092000 */  mfc1       $t1, $f4
    /* 15E7D0 801B8760 00000000 */  nop
    /* 15E7D4 801B8764 51200009 */  beql       $t1, $zero, .L801B878C_ovl7
    /* 15E7D8 801B8768 4600618D */   trunc.w.s $f6, $f12
    /* 15E7DC 801B876C AFA3001C */  sw         $v1, 0x1C($sp)
    /* 15E7E0 801B8770 0C029D9E */  jal        play_sound
    /* 15E7E4 801B8774 E7AC0028 */   swc1      $f12, 0x28($sp)
    /* 15E7E8 801B8778 3C05801D */  lui        $a1, %hi(D_801D0A98_ovl7)
    /* 15E7EC 801B877C 24A50A98 */  addiu      $a1, $a1, %lo(D_801D0A98_ovl7)
    /* 15E7F0 801B8780 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 15E7F4 801B8784 C7AC0028 */  lwc1       $f12, 0x28($sp)
  .L801B8788_ovl7:
    /* 15E7F8 801B8788 4600618D */  trunc.w.s  $f6, $f12
  .L801B878C_ovl7:
    /* 15E7FC 801B878C 440B3000 */  mfc1       $t3, $f6
    /* 15E800 801B8790 00000000 */  nop
    /* 15E804 801B8794 1560000D */  bnez       $t3, .L801B87CC_ovl7
    /* 15E808 801B8798 ACAB0000 */   sw        $t3, 0x0($a1)
    /* 15E80C 801B879C 8C620034 */  lw         $v0, 0x34($v1)
    /* 15E810 801B87A0 1040000A */  beqz       $v0, .L801B87CC_ovl7
    /* 15E814 801B87A4 00402025 */   or        $a0, $v0, $zero
    /* 15E818 801B87A8 0C0288B5 */  jal        func_800A22D4
    /* 15E81C 801B87AC AFA3001C */   sw        $v1, 0x1C($sp)
    /* 15E820 801B87B0 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 15E824 801B87B4 3C05801D */  lui        $a1, %hi(D_801D0A98_ovl7)
    /* 15E828 801B87B8 24A50A98 */  addiu      $a1, $a1, %lo(D_801D0A98_ovl7)
    /* 15E82C 801B87BC AC600034 */  sw         $zero, 0x34($v1)
    /* 15E830 801B87C0 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 15E834 801B87C4 3C01801D */  lui        $at, %hi(D_801D0A9C_ovl7)
    /* 15E838 801B87C8 AC2D0A9C */  sw         $t5, %lo(D_801D0A9C_ovl7)($at)
  .L801B87CC_ovl7:
    /* 15E83C 801B87CC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 15E840 801B87D0 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 15E844 801B87D4 03E00008 */  jr         $ra
    /* 15E848 801B87D8 00000000 */   nop
endlabel func_801B8714_ovl7
.size func_801B8714_ovl7, . - func_801B8714_ovl7
