nonmatching func_80178220_ovl5, 0x198

glabel func_80178220_ovl5
    /* 11F690 80178220 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 11F694 80178224 AFB10020 */  sw         $s1, 0x20($sp)
    /* 11F698 80178228 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* 11F69C 8017822C 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* 11F6A0 80178230 8E220000 */  lw         $v0, 0x0($s1)
    /* 11F6A4 80178234 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 11F6A8 80178238 AFB0001C */  sw         $s0, 0x1C($sp)
    /* 11F6AC 8017823C AFA40038 */  sw         $a0, 0x38($sp)
    /* 11F6B0 80178240 AFA5003C */  sw         $a1, 0x3C($sp)
    /* 11F6B4 80178244 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 11F6B8 80178248 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 11F6BC 8017824C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 11F6C0 80178250 000E7880 */  sll        $t7, $t6, 2
    /* 11F6C4 80178254 002F0821 */  addu       $at, $at, $t7
    /* 11F6C8 80178258 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
    /* 11F6CC 8017825C 8C580000 */  lw         $t8, 0x0($v0)
    /* 11F6D0 80178260 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 11F6D4 80178264 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* 11F6D8 80178268 0018C880 */  sll        $t9, $t8, 2
    /* 11F6DC 8017826C 00992021 */  addu       $a0, $a0, $t9
    /* 11F6E0 80178270 0C02C7DA */  jal        setProcessMain
    /* 11F6E4 80178274 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 11F6E8 80178278 8FB0003C */  lw         $s0, 0x3C($sp)
    /* 11F6EC 8017827C 3C08800D */  lui        $t0, %hi(D_800D7178)
    /* 11F6F0 80178280 25087178 */  addiu      $t0, $t0, %lo(D_800D7178)
    /* 11F6F4 80178284 00108080 */  sll        $s0, $s0, 2
    /* 11F6F8 80178288 02084821 */  addu       $t1, $s0, $t0
    /* 11F6FC 8017828C AFA9002C */  sw         $t1, 0x2C($sp)
    /* 11F700 80178290 8D2B0048 */  lw         $t3, 0x48($t1)
    /* 11F704 80178294 15600004 */  bnez       $t3, .L801782A8_ovl5
    /* 11F708 80178298 00000000 */   nop
    /* 11F70C 8017829C 8E2C0000 */  lw         $t4, 0x0($s1)
    /* 11F710 801782A0 0C02C640 */  jal        func_800B1900
    /* 11F714 801782A4 95840002 */   lhu       $a0, 0x2($t4)
  .L801782A8_ovl5:
    /* 11F718 801782A8 3C05800B */  lui        $a1, %hi(func_800AD1A0)
    /* 11F71C 801782AC 240D0012 */  addiu      $t5, $zero, 0x12
    /* 11F720 801782B0 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 11F724 801782B4 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
    /* 11F728 801782B8 8FA40038 */  lw         $a0, 0x38($sp)
    /* 11F72C 801782BC 24060012 */  addiu      $a2, $zero, 0x12
    /* 11F730 801782C0 0C00297F */  jal        omLinkGObjDL
    /* 11F734 801782C4 3C078000 */   lui       $a3, (0x80000000 >> 16)
    /* 11F738 801782C8 3C0F800D */  lui        $t7, %hi(D_800D7178)
    /* 11F73C 801782CC 25EF7178 */  addiu      $t7, $t7, %lo(D_800D7178)
    /* 11F740 801782D0 00107080 */  sll        $t6, $s0, 2
    /* 11F744 801782D4 01CF8821 */  addu       $s1, $t6, $t7
    /* 11F748 801782D8 8E38000C */  lw         $t8, 0xC($s1)
    /* 11F74C 801782DC 8FB9002C */  lw         $t9, 0x2C($sp)
    /* 11F750 801782E0 8FA40038 */  lw         $a0, 0x38($sp)
    /* 11F754 801782E4 17000008 */  bnez       $t8, .L80178308_ovl5
    /* 11F758 801782E8 8FA8002C */   lw        $t0, 0x2C($sp)
    /* 11F75C 801782EC 8F260048 */  lw         $a2, 0x48($t9)
    /* 11F760 801782F0 8FA40038 */  lw         $a0, 0x38($sp)
    /* 11F764 801782F4 8FA5003C */  lw         $a1, 0x3C($sp)
    /* 11F768 801782F8 0C05DFC8 */  jal        func_80177F20_ovl5
    /* 11F76C 801782FC 24C6FFFF */   addiu     $a2, $a2, -0x1
    /* 11F770 80178300 10000005 */  b          .L80178318_ovl5
    /* 11F774 80178304 8E29000C */   lw        $t1, 0xC($s1)
  .L80178308_ovl5:
    /* 11F778 80178308 8FA5003C */  lw         $a1, 0x3C($sp)
    /* 11F77C 8017830C 0C05DFC8 */  jal        func_80177F20_ovl5
    /* 11F780 80178310 8D060048 */   lw        $a2, 0x48($t0)
    /* 11F784 80178314 8E29000C */  lw         $t1, 0xC($s1)
  .L80178318_ovl5:
    /* 11F788 80178318 3C118019 */  lui        $s1, %hi(D_8018ECE4_ovl5)
    /* 11F78C 8017831C 2631ECE4 */  addiu      $s1, $s1, %lo(D_8018ECE4_ovl5)
    /* 11F790 80178320 1520001E */  bnez       $t1, .L8017839C_ovl5
    /* 11F794 80178324 00000000 */   nop
    /* 11F798 80178328 8E2A0000 */  lw         $t2, 0x0($s1)
    /* 11F79C 8017832C 3C10800F */  lui        $s0, %hi(D_800E9AA0)
    /* 11F7A0 80178330 26109AA0 */  addiu      $s0, $s0, %lo(D_800E9AA0)
    /* 11F7A4 80178334 000A5880 */  sll        $t3, $t2, 2
    /* 11F7A8 80178338 020B6021 */  addu       $t4, $s0, $t3
    /* 11F7AC 8017833C 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 11F7B0 80178340 15A00009 */  bnez       $t5, .L80178368_ovl5
    /* 11F7B4 80178344 00000000 */   nop
  .L80178348_ovl5:
    /* 11F7B8 80178348 0C002DAF */  jal        ohSleep
    /* 11F7BC 8017834C 24040001 */   addiu     $a0, $zero, 0x1
    /* 11F7C0 80178350 8E2E0000 */  lw         $t6, 0x0($s1)
    /* 11F7C4 80178354 000E7880 */  sll        $t7, $t6, 2
    /* 11F7C8 80178358 020FC021 */  addu       $t8, $s0, $t7
    /* 11F7CC 8017835C 8F190000 */  lw         $t9, 0x0($t8)
    /* 11F7D0 80178360 1320FFF9 */  beqz       $t9, .L80178348_ovl5
    /* 11F7D4 80178364 00000000 */   nop
  .L80178368_ovl5:
    /* 11F7D8 80178368 0C02B2F7 */  jal        func_800ACBDC
    /* 11F7DC 8017836C 8FA40038 */   lw        $a0, 0x38($sp)
    /* 11F7E0 80178370 0C029D9E */  jal        play_sound
    /* 11F7E4 80178374 2404026C */   addiu     $a0, $zero, 0x26C
    /* 11F7E8 80178378 8FA8002C */  lw         $t0, 0x2C($sp)
    /* 11F7EC 8017837C 8FA40038 */  lw         $a0, 0x38($sp)
    /* 11F7F0 80178380 8FA5003C */  lw         $a1, 0x3C($sp)
    /* 11F7F4 80178384 0C05DFC8 */  jal        func_80177F20_ovl5
    /* 11F7F8 80178388 8D060048 */   lw        $a2, 0x48($t0)
    /* 11F7FC 8017838C 0C02BE85 */  jal        curObjSleepForever
    /* 11F800 80178390 00000000 */   nop
    /* 11F804 80178394 10000004 */  b          .L801783A8_ovl5
    /* 11F808 80178398 8FBF0024 */   lw        $ra, 0x24($sp)
  .L8017839C_ovl5:
    /* 11F80C 8017839C 0C02BE85 */  jal        curObjSleepForever
    /* 11F810 801783A0 00000000 */   nop
    /* 11F814 801783A4 8FBF0024 */  lw         $ra, 0x24($sp)
  .L801783A8_ovl5:
    /* 11F818 801783A8 8FB0001C */  lw         $s0, 0x1C($sp)
    /* 11F81C 801783AC 8FB10020 */  lw         $s1, 0x20($sp)
    /* 11F820 801783B0 03E00008 */  jr         $ra
    /* 11F824 801783B4 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_80178220_ovl5
.size func_80178220_ovl5, . - func_80178220_ovl5
