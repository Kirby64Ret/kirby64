nonmatching func_800BCA5C, 0x490

glabel func_800BCA5C
    /* 64CAC 800BCA5C 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 64CB0 800BCA60 AFB2002C */  sw         $s2, 0x2C($sp)
    /* 64CB4 800BCA64 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* 64CB8 800BCA68 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* 64CBC 800BCA6C 8E4E0000 */  lw         $t6, 0x0($s2)
    /* 64CC0 800BCA70 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 64CC4 800BCA74 AFB30030 */  sw         $s3, 0x30($sp)
    /* 64CC8 800BCA78 AFB10028 */  sw         $s1, 0x28($sp)
    /* 64CCC 800BCA7C AFB00024 */  sw         $s0, 0x24($sp)
    /* 64CD0 800BCA80 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 64CD4 800BCA84 3C10800F */  lui        $s0, %hi(D_800EC2E0)
    /* 64CD8 800BCA88 2610C2E0 */  addiu      $s0, $s0, %lo(D_800EC2E0)
    /* 64CDC 800BCA8C 000FC080 */  sll        $t8, $t7, 2
    /* 64CE0 800BCA90 0218C821 */  addu       $t9, $s0, $t8
    /* 64CE4 800BCA94 8F220000 */  lw         $v0, 0x0($t9)
    /* 64CE8 800BCA98 3C19800D */  lui        $t9, %hi(D_800D55BC)
    /* 64CEC 800BCA9C 10400005 */  beqz       $v0, .L800BCAB4
    /* 64CF0 800BCAA0 00024080 */   sll       $t0, $v0, 2
    /* 64CF4 800BCAA4 0328C821 */  addu       $t9, $t9, $t0
    /* 64CF8 800BCAA8 8F3955BC */  lw         $t9, %lo(D_800D55BC)($t9)
    /* 64CFC 800BCAAC 0320F809 */  jalr       $t9
    /* 64D00 800BCAB0 00000000 */   nop
  .L800BCAB4:
    /* 64D04 800BCAB4 3C09800C */  lui        $t1, %hi(gGameState)
    /* 64D08 800BCAB8 8D29E4F0 */  lw         $t1, %lo(gGameState)($t1)
    /* 64D0C 800BCABC 24010021 */  addiu      $at, $zero, 0x21
    /* 64D10 800BCAC0 1521000A */  bne        $t1, $at, .L800BCAEC
    /* 64D14 800BCAC4 00000000 */   nop
    /* 64D18 800BCAC8 8E4B0000 */  lw         $t3, 0x0($s2)
    /* 64D1C 800BCACC 3C13800F */  lui        $s3, %hi(D_800E9E20)
    /* 64D20 800BCAD0 26739E20 */  addiu      $s3, $s3, %lo(D_800E9E20)
    /* 64D24 800BCAD4 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 64D28 800BCAD8 240A0002 */  addiu      $t2, $zero, 0x2
    /* 64D2C 800BCADC 000C6880 */  sll        $t5, $t4, 2
    /* 64D30 800BCAE0 026D7021 */  addu       $t6, $s3, $t5
    /* 64D34 800BCAE4 10000016 */  b          .L800BCB40
    /* 64D38 800BCAE8 ADCA0000 */   sw        $t2, 0x0($t6)
  .L800BCAEC:
    /* 64D3C 800BCAEC 0C03E158 */  jal        func_800F8560
    /* 64D40 800BCAF0 00000000 */   nop
    /* 64D44 800BCAF4 24010009 */  addiu      $at, $zero, 0x9
    /* 64D48 800BCAF8 5441000B */  bnel       $v0, $at, .L800BCB28
    /* 64D4C 800BCAFC 8E4B0000 */   lw        $t3, 0x0($s2)
    /* 64D50 800BCB00 8E580000 */  lw         $t8, 0x0($s2)
    /* 64D54 800BCB04 3C13800F */  lui        $s3, %hi(D_800E9E20)
    /* 64D58 800BCB08 26739E20 */  addiu      $s3, $s3, %lo(D_800E9E20)
    /* 64D5C 800BCB0C 8F080000 */  lw         $t0, 0x0($t8)
    /* 64D60 800BCB10 240F0001 */  addiu      $t7, $zero, 0x1
    /* 64D64 800BCB14 0008C880 */  sll        $t9, $t0, 2
    /* 64D68 800BCB18 02794821 */  addu       $t1, $s3, $t9
    /* 64D6C 800BCB1C 10000008 */  b          .L800BCB40
    /* 64D70 800BCB20 AD2F0000 */   sw        $t7, 0x0($t1)
    /* 64D74 800BCB24 8E4B0000 */  lw         $t3, 0x0($s2)
  .L800BCB28:
    /* 64D78 800BCB28 3C13800F */  lui        $s3, %hi(D_800E9E20)
    /* 64D7C 800BCB2C 26739E20 */  addiu      $s3, $s3, %lo(D_800E9E20)
    /* 64D80 800BCB30 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 64D84 800BCB34 000C6880 */  sll        $t5, $t4, 2
    /* 64D88 800BCB38 026D5021 */  addu       $t2, $s3, $t5
    /* 64D8C 800BCB3C AD400000 */  sw         $zero, 0x0($t2)
  .L800BCB40:
    /* 64D90 800BCB40 24070001 */  addiu      $a3, $zero, 0x1
  .L800BCB44:
    /* 64D94 800BCB44 24040027 */  addiu      $a0, $zero, 0x27
    /* 64D98 800BCB48 2405003C */  addiu      $a1, $zero, 0x3C
    /* 64D9C 800BCB4C 24060050 */  addiu      $a2, $zero, 0x50
    /* 64DA0 800BCB50 0C02BB1C */  jal        request_track_3
    /* 64DA4 800BCB54 AFA7003C */   sw        $a3, 0x3C($sp)
    /* 64DA8 800BCB58 8FA7003C */  lw         $a3, 0x3C($sp)
    /* 64DAC 800BCB5C 00021880 */  sll        $v1, $v0, 2
    /* 64DB0 800BCB60 02037021 */  addu       $t6, $s0, $v1
    /* 64DB4 800BCB64 ADC70000 */  sw         $a3, 0x0($t6)
    /* 64DB8 800BCB68 8E580000 */  lw         $t8, 0x0($s2)
    /* 64DBC 800BCB6C 24010005 */  addiu      $at, $zero, 0x5
    /* 64DC0 800BCB70 02636021 */  addu       $t4, $s3, $v1
    /* 64DC4 800BCB74 8F080000 */  lw         $t0, 0x0($t8)
    /* 64DC8 800BCB78 24E70001 */  addiu      $a3, $a3, 0x1
    /* 64DCC 800BCB7C 0008C880 */  sll        $t9, $t0, 2
    /* 64DD0 800BCB80 02797821 */  addu       $t7, $s3, $t9
    /* 64DD4 800BCB84 8DE90000 */  lw         $t1, 0x0($t7)
    /* 64DD8 800BCB88 00095880 */  sll        $t3, $t1, 2
    /* 64DDC 800BCB8C 01695823 */  subu       $t3, $t3, $t1
    /* 64DE0 800BCB90 14E1FFEC */  bne        $a3, $at, .L800BCB44
    /* 64DE4 800BCB94 AD8B0000 */   sw        $t3, 0x0($t4)
    /* 64DE8 800BCB98 24040028 */  addiu      $a0, $zero, 0x28
    /* 64DEC 800BCB9C 0C02BE6E */  jal        func_800AF9B8
    /* 64DF0 800BCBA0 2405000E */   addiu     $a1, $zero, 0xE
    /* 64DF4 800BCBA4 8E420000 */  lw         $v0, 0x0($s2)
    /* 64DF8 800BCBA8 3C11800F */  lui        $s1, %hi(D_800E98E0)
    /* 64DFC 800BCBAC 263198E0 */  addiu      $s1, $s1, %lo(D_800E98E0)
    /* 64E00 800BCBB0 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 64E04 800BCBB4 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 64E08 800BCBB8 240900F0 */  addiu      $t1, $zero, 0xF0
    /* 64E0C 800BCBBC 000D5080 */  sll        $t2, $t5, 2
    /* 64E10 800BCBC0 022A7021 */  addu       $t6, $s1, $t2
    /* 64E14 800BCBC4 ADC00000 */  sw         $zero, 0x0($t6)
    /* 64E18 800BCBC8 8C580000 */  lw         $t8, 0x0($v0)
    /* 64E1C 800BCBCC 240B00D8 */  addiu      $t3, $zero, 0xD8
    /* 64E20 800BCBD0 240C00A0 */  addiu      $t4, $zero, 0xA0
    /* 64E24 800BCBD4 00184080 */  sll        $t0, $t8, 2
    /* 64E28 800BCBD8 00280821 */  addu       $at, $at, $t0
    /* 64E2C 800BCBDC AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
    /* 64E30 800BCBE0 8C590000 */  lw         $t9, 0x0($v0)
    /* 64E34 800BCBE4 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 64E38 800BCBE8 AFAC0018 */  sw         $t4, 0x18($sp)
    /* 64E3C 800BCBEC 00197880 */  sll        $t7, $t9, 2
    /* 64E40 800BCBF0 002F0821 */  addu       $at, $at, $t7
    /* 64E44 800BCBF4 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
    /* 64E48 800BCBF8 AFAB0014 */  sw         $t3, 0x14($sp)
    /* 64E4C 800BCBFC AFA90010 */  sw         $t1, 0x10($sp)
    /* 64E50 800BCC00 2404000A */  addiu      $a0, $zero, 0xA
    /* 64E54 800BCC04 2405000A */  addiu      $a1, $zero, 0xA
    /* 64E58 800BCC08 24060136 */  addiu      $a2, $zero, 0x136
    /* 64E5C 800BCC0C 0C0295BD */  jal        utilSetRectBoundsAndColor
    /* 64E60 800BCC10 240700B6 */   addiu     $a3, $zero, 0xB6
    /* 64E64 800BCC14 00002025 */  or         $a0, $zero, $zero
    /* 64E68 800BCC18 24050010 */  addiu      $a1, $zero, 0x10
    /* 64E6C 800BCC1C 0C029685 */  jal        utilSpawnRect
    /* 64E70 800BCC20 00003025 */   or        $a2, $zero, $zero
    /* 64E74 800BCC24 00002025 */  or         $a0, $zero, $zero
    /* 64E78 800BCC28 24055000 */  addiu      $a1, $zero, 0x5000
    /* 64E7C 800BCC2C 0C008288 */  jal        auSetBGMVolumeSmooth
    /* 64E80 800BCC30 24060010 */   addiu     $a2, $zero, 0x10
    /* 64E84 800BCC34 0C008E21 */  jal        func_80023884
    /* 64E88 800BCC38 00000000 */   nop
    /* 64E8C 800BCC3C 0C029D9E */  jal        play_sound
    /* 64E90 800BCC40 240400ED */   addiu     $a0, $zero, 0xED
    /* 64E94 800BCC44 3C10800D */  lui        $s0, %hi(D_800D6B24)
    /* 64E98 800BCC48 26106B24 */  addiu      $s0, $s0, %lo(D_800D6B24)
    /* 64E9C 800BCC4C 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 64EA0 800BCC50 51A00007 */  beql       $t5, $zero, .L800BCC70
    /* 64EA4 800BCC54 8E580000 */   lw        $t8, 0x0($s2)
  .L800BCC58:
    /* 64EA8 800BCC58 0C002DAF */  jal        ohSleep
    /* 64EAC 800BCC5C 24040001 */   addiu     $a0, $zero, 0x1
    /* 64EB0 800BCC60 8E0A0000 */  lw         $t2, 0x0($s0)
    /* 64EB4 800BCC64 1540FFFC */  bnez       $t2, .L800BCC58
    /* 64EB8 800BCC68 00000000 */   nop
    /* 64EBC 800BCC6C 8E580000 */  lw         $t8, 0x0($s2)
  .L800BCC70:
    /* 64EC0 800BCC70 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 64EC4 800BCC74 240E0001 */  addiu      $t6, $zero, 0x1
    /* 64EC8 800BCC78 8F080000 */  lw         $t0, 0x0($t8)
    /* 64ECC 800BCC7C 240400FF */  addiu      $a0, $zero, 0xFF
    /* 64ED0 800BCC80 2405FFF0 */  addiu      $a1, $zero, -0x10
    /* 64ED4 800BCC84 0008C880 */  sll        $t9, $t0, 2
    /* 64ED8 800BCC88 00390821 */  addu       $at, $at, $t9
    /* 64EDC 800BCC8C AC2E9AA0 */  sw         $t6, %lo(D_800E9AA0)($at)
    /* 64EE0 800BCC90 0C029685 */  jal        utilSpawnRect
    /* 64EE4 800BCC94 00003025 */   or        $a2, $zero, $zero
    /* 64EE8 800BCC98 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 64EEC 800BCC9C 51E00007 */  beql       $t7, $zero, .L800BCCBC
    /* 64EF0 800BCCA0 3C014040 */   lui       $at, (0x40400000 >> 16)
  .L800BCCA4:
    /* 64EF4 800BCCA4 0C002DAF */  jal        ohSleep
    /* 64EF8 800BCCA8 24040001 */   addiu     $a0, $zero, 0x1
    /* 64EFC 800BCCAC 8E090000 */  lw         $t1, 0x0($s0)
    /* 64F00 800BCCB0 1520FFFC */  bnez       $t1, .L800BCCA4
    /* 64F04 800BCCB4 00000000 */   nop
    /* 64F08 800BCCB8 3C014040 */  lui        $at, (0x40400000 >> 16)
  .L800BCCBC:
    /* 64F0C 800BCCBC 44812000 */  mtc1       $at, $f4
    /* 64F10 800BCCC0 3C01800D */  lui        $at, %hi(gameTicksPerDrawInv)
    /* 64F14 800BCCC4 C4266B14 */  lwc1       $f6, %lo(gameTicksPerDrawInv)($at)
    /* 64F18 800BCCC8 46062202 */  mul.s      $f8, $f4, $f6
    /* 64F1C 800BCCCC 4600428D */  trunc.w.s  $f10, $f8
    /* 64F20 800BCCD0 44045000 */  mfc1       $a0, $f10
    /* 64F24 800BCCD4 0C002DAF */  jal        ohSleep
    /* 64F28 800BCCD8 00000000 */   nop
  .L800BCCDC:
    /* 64F2C 800BCCDC 3C028005 */  lui        $v0, %hi(gPlayerControllers + 0x2)
    /* 64F30 800BCCE0 94428F22 */  lhu        $v0, %lo(gPlayerControllers + 0x2)($v0)
    /* 64F34 800BCCE4 304C9000 */  andi       $t4, $v0, 0x9000
    /* 64F38 800BCCE8 11800005 */  beqz       $t4, .L800BCD00
    /* 64F3C 800BCCEC 304D0800 */   andi      $t5, $v0, 0x800
    /* 64F40 800BCCF0 0C029D9E */  jal        play_sound
    /* 64F44 800BCCF4 240400ED */   addiu     $a0, $zero, 0xED
    /* 64F48 800BCCF8 1000001C */  b          .L800BCD6C
    /* 64F4C 800BCCFC 8E4A0000 */   lw        $t2, 0x0($s2)
  .L800BCD00:
    /* 64F50 800BCD00 51A0000B */  beql       $t5, $zero, .L800BCD30
    /* 64F54 800BCD04 30590400 */   andi      $t9, $v0, 0x400
    /* 64F58 800BCD08 0C029D9E */  jal        play_sound
    /* 64F5C 800BCD0C 24040113 */   addiu     $a0, $zero, 0x113
    /* 64F60 800BCD10 8E4A0000 */  lw         $t2, 0x0($s2)
    /* 64F64 800BCD14 3C028005 */  lui        $v0, %hi(gPlayerControllers + 0x2)
    /* 64F68 800BCD18 8D580000 */  lw         $t8, 0x0($t2)
    /* 64F6C 800BCD1C 00184080 */  sll        $t0, $t8, 2
    /* 64F70 800BCD20 02287021 */  addu       $t6, $s1, $t0
    /* 64F74 800BCD24 ADC00000 */  sw         $zero, 0x0($t6)
    /* 64F78 800BCD28 94428F22 */  lhu        $v0, %lo(gPlayerControllers + 0x2)($v0)
    /* 64F7C 800BCD2C 30590400 */  andi       $t9, $v0, 0x400
  .L800BCD30:
    /* 64F80 800BCD30 13200009 */  beqz       $t9, .L800BCD58
    /* 64F84 800BCD34 00000000 */   nop
    /* 64F88 800BCD38 0C029D9E */  jal        play_sound
    /* 64F8C 800BCD3C 24040113 */   addiu     $a0, $zero, 0x113
    /* 64F90 800BCD40 8E490000 */  lw         $t1, 0x0($s2)
    /* 64F94 800BCD44 240F0001 */  addiu      $t7, $zero, 0x1
    /* 64F98 800BCD48 8D2B0000 */  lw         $t3, 0x0($t1)
    /* 64F9C 800BCD4C 000B6080 */  sll        $t4, $t3, 2
    /* 64FA0 800BCD50 022C6821 */  addu       $t5, $s1, $t4
    /* 64FA4 800BCD54 ADAF0000 */  sw         $t7, 0x0($t5)
  .L800BCD58:
    /* 64FA8 800BCD58 0C002DAF */  jal        ohSleep
    /* 64FAC 800BCD5C 24040001 */   addiu     $a0, $zero, 0x1
    /* 64FB0 800BCD60 1000FFDE */  b          .L800BCCDC
    /* 64FB4 800BCD64 00000000 */   nop
    /* 64FB8 800BCD68 8E4A0000 */  lw         $t2, 0x0($s2)
  .L800BCD6C:
    /* 64FBC 800BCD6C 24030001 */  addiu      $v1, $zero, 0x1
    /* 64FC0 800BCD70 8D420000 */  lw         $v0, 0x0($t2)
    /* 64FC4 800BCD74 00021080 */  sll        $v0, $v0, 2
    /* 64FC8 800BCD78 0222C021 */  addu       $t8, $s1, $v0
    /* 64FCC 800BCD7C 8F080000 */  lw         $t0, 0x0($t8)
    /* 64FD0 800BCD80 14680023 */  bne        $v1, $t0, .L800BCE10
    /* 64FD4 800BCD84 02627021 */   addu      $t6, $s3, $v0
    /* 64FD8 800BCD88 8DD90000 */  lw         $t9, 0x0($t6)
    /* 64FDC 800BCD8C 3C09800C */  lui        $t1, %hi(gGameState)
    /* 64FE0 800BCD90 00002025 */  or         $a0, $zero, $zero
    /* 64FE4 800BCD94 1079001E */  beq        $v1, $t9, .L800BCE10
    /* 64FE8 800BCD98 00002825 */   or        $a1, $zero, $zero
    /* 64FEC 800BCD9C 8D29E4F0 */  lw         $t1, %lo(gGameState)($t1)
    /* 64FF0 800BCDA0 24010021 */  addiu      $at, $zero, 0x21
    /* 64FF4 800BCDA4 00003025 */  or         $a2, $zero, $zero
    /* 64FF8 800BCDA8 15210002 */  bne        $t1, $at, .L800BCDB4
    /* 64FFC 800BCDAC 3C01800D */   lui       $at, %hi(D_800D6B6C)
    /* 65000 800BCDB0 AC236B6C */  sw         $v1, %lo(D_800D6B6C)($at)
  .L800BCDB4:
    /* 65004 800BCDB4 3C01800C */  lui        $at, %hi(D_800BE4F8)
    /* 65008 800BCDB8 0C0295D1 */  jal        utilSetRectColorFullScreen
    /* 6500C 800BCDBC AC20E4F8 */   sw        $zero, %lo(D_800BE4F8)($at)
    /* 65010 800BCDC0 00002025 */  or         $a0, $zero, $zero
    /* 65014 800BCDC4 24050020 */  addiu      $a1, $zero, 0x20
    /* 65018 800BCDC8 0C029685 */  jal        utilSpawnRect
    /* 6501C 800BCDCC 24060002 */   addiu     $a2, $zero, 0x2
    /* 65020 800BCDD0 00002025 */  or         $a0, $zero, $zero
    /* 65024 800BCDD4 00002825 */  or         $a1, $zero, $zero
    /* 65028 800BCDD8 0C008288 */  jal        auSetBGMVolumeSmooth
    /* 6502C 800BCDDC 24060008 */   addiu     $a2, $zero, 0x8
    /* 65030 800BCDE0 8E0B0000 */  lw         $t3, 0x0($s0)
    /* 65034 800BCDE4 11600006 */  beqz       $t3, .L800BCE00
    /* 65038 800BCDE8 00000000 */   nop
  .L800BCDEC:
    /* 6503C 800BCDEC 0C002DAF */  jal        ohSleep
    /* 65040 800BCDF0 24040001 */   addiu     $a0, $zero, 0x1
    /* 65044 800BCDF4 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 65048 800BCDF8 1580FFFC */  bnez       $t4, .L800BCDEC
    /* 6504C 800BCDFC 00000000 */   nop
  .L800BCE00:
    /* 65050 800BCE00 0C00825A */  jal        auStopSong
    /* 65054 800BCE04 00002025 */   or        $a0, $zero, $zero
    /* 65058 800BCE08 1000002F */  b          .L800BCEC8
    /* 6505C 800BCE0C 8E4F0000 */   lw        $t7, 0x0($s2)
  .L800BCE10:
    /* 65060 800BCE10 00002025 */  or         $a0, $zero, $zero
    /* 65064 800BCE14 24050010 */  addiu      $a1, $zero, 0x10
    /* 65068 800BCE18 0C029685 */  jal        utilSpawnRect
    /* 6506C 800BCE1C 00003025 */   or        $a2, $zero, $zero
    /* 65070 800BCE20 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 65074 800BCE24 51E00007 */  beql       $t7, $zero, .L800BCE44
    /* 65078 800BCE28 8E420000 */   lw        $v0, 0x0($s2)
  .L800BCE2C:
    /* 6507C 800BCE2C 0C002DAF */  jal        ohSleep
    /* 65080 800BCE30 24040001 */   addiu     $a0, $zero, 0x1
    /* 65084 800BCE34 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 65088 800BCE38 15A0FFFC */  bnez       $t5, .L800BCE2C
    /* 6508C 800BCE3C 00000000 */   nop
    /* 65090 800BCE40 8E420000 */  lw         $v0, 0x0($s2)
  .L800BCE44:
    /* 65094 800BCE44 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 65098 800BCE48 24080001 */  addiu      $t0, $zero, 0x1
    /* 6509C 800BCE4C 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 650A0 800BCE50 00002025 */  or         $a0, $zero, $zero
    /* 650A4 800BCE54 24057800 */  addiu      $a1, $zero, 0x7800
    /* 650A8 800BCE58 000AC080 */  sll        $t8, $t2, 2
    /* 650AC 800BCE5C 00380821 */  addu       $at, $at, $t8
    /* 650B0 800BCE60 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
    /* 650B4 800BCE64 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 650B8 800BCE68 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 650BC 800BCE6C 24060010 */  addiu      $a2, $zero, 0x10
    /* 650C0 800BCE70 000EC880 */  sll        $t9, $t6, 2
    /* 650C4 800BCE74 00390821 */  addu       $at, $at, $t9
    /* 650C8 800BCE78 0C008288 */  jal        auSetBGMVolumeSmooth
    /* 650CC 800BCE7C AC289C60 */   sw        $t0, %lo(D_800E9C60)($at)
    /* 650D0 800BCE80 0C008DE5 */  jal        func_80023794
    /* 650D4 800BCE84 00000000 */   nop
    /* 650D8 800BCE88 240400FF */  addiu      $a0, $zero, 0xFF
    /* 650DC 800BCE8C 2405FFF0 */  addiu      $a1, $zero, -0x10
    /* 650E0 800BCE90 0C029685 */  jal        utilSpawnRect
    /* 650E4 800BCE94 00003025 */   or        $a2, $zero, $zero
    /* 650E8 800BCE98 8E090000 */  lw         $t1, 0x0($s0)
    /* 650EC 800BCE9C 51200007 */  beql       $t1, $zero, .L800BCEBC
    /* 650F0 800BCEA0 340C8000 */   ori       $t4, $zero, 0x8000
  .L800BCEA4:
    /* 650F4 800BCEA4 0C002DAF */  jal        ohSleep
    /* 650F8 800BCEA8 24040001 */   addiu     $a0, $zero, 0x1
    /* 650FC 800BCEAC 8E0B0000 */  lw         $t3, 0x0($s0)
    /* 65100 800BCEB0 1560FFFC */  bnez       $t3, .L800BCEA4
    /* 65104 800BCEB4 00000000 */   nop
    /* 65108 800BCEB8 340C8000 */  ori        $t4, $zero, 0x8000
  .L800BCEBC:
    /* 6510C 800BCEBC 3C01800C */  lui        $at, %hi(D_800BE544)
    /* 65110 800BCEC0 AC2CE544 */  sw         $t4, %lo(D_800BE544)($at)
    /* 65114 800BCEC4 8E4F0000 */  lw         $t7, 0x0($s2)
  .L800BCEC8:
    /* 65118 800BCEC8 0C02C640 */  jal        func_800B1900
    /* 6511C 800BCECC 95E40002 */   lhu       $a0, 0x2($t7)
    /* 65120 800BCED0 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 65124 800BCED4 8FB00024 */  lw         $s0, 0x24($sp)
    /* 65128 800BCED8 8FB10028 */  lw         $s1, 0x28($sp)
    /* 6512C 800BCEDC 8FB2002C */  lw         $s2, 0x2C($sp)
    /* 65130 800BCEE0 8FB30030 */  lw         $s3, 0x30($sp)
    /* 65134 800BCEE4 03E00008 */  jr         $ra
    /* 65138 800BCEE8 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_800BCA5C
.size func_800BCA5C, . - func_800BCA5C
