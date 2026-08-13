nonmatching func_8016E6F0_ovl5, 0x1E0

glabel func_8016E6F0_ovl5
    /* 115B60 8016E6F0 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 115B64 8016E6F4 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 115B68 8016E6F8 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 115B6C 8016E6FC AFBF0044 */  sw         $ra, 0x44($sp)
    /* 115B70 8016E700 AFBE0040 */  sw         $fp, 0x40($sp)
    /* 115B74 8016E704 AFB7003C */  sw         $s7, 0x3C($sp)
    /* 115B78 8016E708 AFB60038 */  sw         $s6, 0x38($sp)
    /* 115B7C 8016E70C AFB50034 */  sw         $s5, 0x34($sp)
    /* 115B80 8016E710 AFB40030 */  sw         $s4, 0x30($sp)
    /* 115B84 8016E714 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 115B88 8016E718 AFB20028 */  sw         $s2, 0x28($sp)
    /* 115B8C 8016E71C AFB10024 */  sw         $s1, 0x24($sp)
    /* 115B90 8016E720 AFB00020 */  sw         $s0, 0x20($sp)
    /* 115B94 8016E724 AFA5004C */  sw         $a1, 0x4C($sp)
    /* 115B98 8016E728 8C590000 */  lw         $t9, 0x0($v0)
    /* 115B9C 8016E72C 3C188019 */  lui        $t8, %hi(D_8018E288_ovl5)
    /* 115BA0 8016E730 2718E288 */  addiu      $t8, $t8, %lo(D_8018E288_ovl5)
    /* 115BA4 8016E734 00057880 */  sll        $t7, $a1, 2
    /* 115BA8 8016E738 01F8F021 */  addu       $fp, $t7, $t8
    /* 115BAC 8016E73C 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 115BB0 8016E740 00194080 */  sll        $t0, $t9, 2
    /* 115BB4 8016E744 8FD40000 */  lw         $s4, 0x0($fp)
    /* 115BB8 8016E748 00280821 */  addu       $at, $at, $t0
    /* 115BBC 8016E74C AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
    /* 115BC0 8016E750 8C490000 */  lw         $t1, 0x0($v0)
    /* 115BC4 8016E754 0080B825 */  or         $s7, $a0, $zero
    /* 115BC8 8016E758 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 115BCC 8016E75C 00095080 */  sll        $t2, $t1, 2
    /* 115BD0 8016E760 008A2021 */  addu       $a0, $a0, $t2
    /* 115BD4 8016E764 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 115BD8 8016E768 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* 115BDC 8016E76C 8C84EC10 */  lw         $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 115BE0 8016E770 0C02C7DA */  jal        setProcessMain
    /* 115BE4 8016E774 26940001 */   addiu     $s4, $s4, 0x1
    /* 115BE8 8016E778 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* 115BEC 8016E77C 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* 115BF0 8016E780 3C01800E */  lui        $at, %hi(D_800DDA90)
    /* 115BF4 8016E784 240B0024 */  addiu      $t3, $zero, 0x24
    /* 115BF8 8016E788 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 115BFC 8016E78C 3C05800B */  lui        $a1, %hi(func_800AD1A0)
    /* 115C00 8016E790 240F000A */  addiu      $t7, $zero, 0xA
    /* 115C04 8016E794 000D7080 */  sll        $t6, $t5, 2
    /* 115C08 8016E798 002E0821 */  addu       $at, $at, $t6
    /* 115C0C 8016E79C AC2BDA90 */  sw         $t3, %lo(D_800DDA90)($at)
    /* 115C10 8016E7A0 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 115C14 8016E7A4 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
    /* 115C18 8016E7A8 02E02025 */  or         $a0, $s7, $zero
    /* 115C1C 8016E7AC 2406000A */  addiu      $a2, $zero, 0xA
    /* 115C20 8016E7B0 0C00297F */  jal        omLinkGObjDL
    /* 115C24 8016E7B4 3C078000 */   lui       $a3, (0x80000000 >> 16)
    /* 115C28 8016E7B8 3C168018 */  lui        $s6, %hi(D_80186E10_ovl5)
    /* 115C2C 8016E7BC 3C158018 */  lui        $s5, %hi(D_80186DC8_ovl5)
    /* 115C30 8016E7C0 26B56DC8 */  addiu      $s5, $s5, %lo(D_80186DC8_ovl5)
    /* 115C34 8016E7C4 26D66E10 */  addiu      $s6, $s6, %lo(D_80186E10_ovl5)
    /* 115C38 8016E7C8 24110064 */  addiu      $s1, $zero, 0x64
    /* 115C3C 8016E7CC 8FC20000 */  lw         $v0, 0x0($fp)
  .L8016E7D0_ovl5:
    /* 115C40 8016E7D0 12820028 */  beq        $s4, $v0, .L8016E874_ovl5
    /* 115C44 8016E7D4 00000000 */   nop
    /* 115C48 8016E7D8 14400005 */  bnez       $v0, .L8016E7F0_ovl5
    /* 115C4C 8016E7DC 0040A025 */   or        $s4, $v0, $zero
    /* 115C50 8016E7E0 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 115C54 8016E7E4 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 115C58 8016E7E8 0C02C640 */  jal        func_800B1900
    /* 115C5C 8016E7EC 97040002 */   lhu       $a0, 0x2($t8)
  .L8016E7F0_ovl5:
    /* 115C60 8016E7F0 8FB9004C */  lw         $t9, 0x4C($sp)
    /* 115C64 8016E7F4 3C098018 */  lui        $t1, %hi(D_80186C88_ovl5)
    /* 115C68 8016E7F8 25296C88 */  addiu      $t1, $t1, %lo(D_80186C88_ovl5)
    /* 115C6C 8016E7FC 001940C0 */  sll        $t0, $t9, 3
    /* 115C70 8016E800 01099021 */  addu       $s2, $t0, $t1
    /* 115C74 8016E804 0C02B2F7 */  jal        func_800ACBDC
    /* 115C78 8016E808 02E02025 */   or        $a0, $s7, $zero
    /* 115C7C 8016E80C 3C0A8018 */  lui        $t2, %hi(D_80186DE8_ovl5)
    /* 115C80 8016E810 25506DE8 */  addiu      $s0, $t2, %lo(D_80186DE8_ovl5)
    /* 115C84 8016E814 001460C0 */  sll        $t4, $s4, 3
    /* 115C88 8016E818 01909821 */  addu       $s3, $t4, $s0
    /* 115C8C 8016E81C 02E02025 */  or         $a0, $s7, $zero
  .L8016E820_ovl5:
    /* 115C90 8016E820 0C0571D0 */  jal        func_8015C740_ovl5
    /* 115C94 8016E824 02A02825 */   or        $a1, $s5, $zero
    /* 115C98 8016E828 C6040000 */  lwc1       $f4, 0x0($s0)
    /* 115C9C 8016E82C C6460000 */  lwc1       $f6, 0x0($s2)
    /* 115CA0 8016E830 0213082B */  sltu       $at, $s0, $s3
    /* 115CA4 8016E834 26100008 */  addiu      $s0, $s0, 0x8
    /* 115CA8 8016E838 46062200 */  add.s      $f8, $f4, $f6
    /* 115CAC 8016E83C E4480020 */  swc1       $f8, 0x20($v0)
    /* 115CB0 8016E840 C6500004 */  lwc1       $f16, 0x4($s2)
    /* 115CB4 8016E844 C60AFFFC */  lwc1       $f10, -0x4($s0)
    /* 115CB8 8016E848 46105480 */  add.s      $f18, $f10, $f16
    /* 115CBC 8016E84C 14200007 */  bnez       $at, .L8016E86C_ovl5
    /* 115CC0 8016E850 E4520024 */   swc1      $f18, 0x24($v0)
    /* 115CC4 8016E854 A0510014 */  sb         $s1, 0x14($v0)
    /* 115CC8 8016E858 A0510015 */  sb         $s1, 0x15($v0)
    /* 115CCC 8016E85C A0510016 */  sb         $s1, 0x16($v0)
    /* 115CD0 8016E860 A0400018 */  sb         $zero, 0x18($v0)
    /* 115CD4 8016E864 A0400019 */  sb         $zero, 0x19($v0)
    /* 115CD8 8016E868 A040001A */  sb         $zero, 0x1A($v0)
  .L8016E86C_ovl5:
    /* 115CDC 8016E86C 5616FFEC */  bnel       $s0, $s6, .L8016E820_ovl5
    /* 115CE0 8016E870 02E02025 */   or        $a0, $s7, $zero
  .L8016E874_ovl5:
    /* 115CE4 8016E874 0C002DAF */  jal        ohSleep
    /* 115CE8 8016E878 24040001 */   addiu     $a0, $zero, 0x1
    /* 115CEC 8016E87C 1000FFD4 */  b          .L8016E7D0_ovl5
    /* 115CF0 8016E880 8FC20000 */   lw        $v0, 0x0($fp)
    /* 115CF4 8016E884 00000000 */  nop
    /* 115CF8 8016E888 00000000 */  nop
    /* 115CFC 8016E88C 00000000 */  nop
    /* 115D00 8016E890 00000000 */  nop
    /* 115D04 8016E894 00000000 */  nop
    /* 115D08 8016E898 00000000 */  nop
    /* 115D0C 8016E89C 00000000 */  nop
    /* 115D10 8016E8A0 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 115D14 8016E8A4 8FB00020 */  lw         $s0, 0x20($sp)
    /* 115D18 8016E8A8 8FB10024 */  lw         $s1, 0x24($sp)
    /* 115D1C 8016E8AC 8FB20028 */  lw         $s2, 0x28($sp)
    /* 115D20 8016E8B0 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 115D24 8016E8B4 8FB40030 */  lw         $s4, 0x30($sp)
    /* 115D28 8016E8B8 8FB50034 */  lw         $s5, 0x34($sp)
    /* 115D2C 8016E8BC 8FB60038 */  lw         $s6, 0x38($sp)
    /* 115D30 8016E8C0 8FB7003C */  lw         $s7, 0x3C($sp)
    /* 115D34 8016E8C4 8FBE0040 */  lw         $fp, 0x40($sp)
    /* 115D38 8016E8C8 03E00008 */  jr         $ra
    /* 115D3C 8016E8CC 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_8016E6F0_ovl5
.size func_8016E6F0_ovl5, . - func_8016E6F0_ovl5
