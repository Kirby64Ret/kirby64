nonmatching func_8017AD54_ovl5, 0x194

glabel func_8017AD54_ovl5
    /* 1221C4 8017AD54 3C028005 */  lui        $v0, %hi(gPlayerControllers + 0x2)
    /* 1221C8 8017AD58 94428F22 */  lhu        $v0, %lo(gPlayerControllers + 0x2)($v0)
    /* 1221CC 8017AD5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1221D0 8017AD60 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1221D4 8017AD64 304E9000 */  andi       $t6, $v0, 0x9000
    /* 1221D8 8017AD68 11C00011 */  beqz       $t6, .L8017ADB0_ovl5
    /* 1221DC 8017AD6C 304A4000 */   andi      $t2, $v0, 0x4000
    /* 1221E0 8017AD70 0C029D9E */  jal        play_sound
    /* 1221E4 8017AD74 240400ED */   addiu     $a0, $zero, 0xED
    /* 1221E8 8017AD78 0C05E7E4 */  jal        func_80179F90_ovl5
    /* 1221EC 8017AD7C 00000000 */   nop
    /* 1221F0 8017AD80 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 1221F4 8017AD84 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 1221F8 8017AD88 240F0001 */  addiu      $t7, $zero, 0x1
    /* 1221FC 8017AD8C 3C018019 */  lui        $at, %hi(D_8018ED00_ovl5)
    /* 122200 8017AD90 A02FED00 */  sb         $t7, %lo(D_8018ED00_ovl5)($at)
    /* 122204 8017AD94 8F280000 */  lw         $t0, 0x0($t9)
    /* 122208 8017AD98 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 12220C 8017AD9C 24180004 */  addiu      $t8, $zero, 0x4
    /* 122210 8017ADA0 00084880 */  sll        $t1, $t0, 2
    /* 122214 8017ADA4 00290821 */  addu       $at, $at, $t1
    /* 122218 8017ADA8 10000049 */  b          .L8017AED0_ovl5
    /* 12221C 8017ADAC AC3898E0 */   sw        $t8, %lo(D_800E98E0)($at)
  .L8017ADB0_ovl5:
    /* 122220 8017ADB0 11400010 */  beqz       $t2, .L8017ADF4_ovl5
    /* 122224 8017ADB4 00000000 */   nop
    /* 122228 8017ADB8 0C029D9E */  jal        play_sound
    /* 12222C 8017ADBC 2404002B */   addiu     $a0, $zero, 0x2B
    /* 122230 8017ADC0 240B0001 */  addiu      $t3, $zero, 0x1
    /* 122234 8017ADC4 3C018019 */  lui        $at, %hi(D_8018ED04_ovl5)
    /* 122238 8017ADC8 0C05F1B2 */  jal        func_8017C6C8_ovl5
    /* 12223C 8017ADCC AC2BED04 */   sw        $t3, %lo(D_8018ED04_ovl5)($at)
    /* 122240 8017ADD0 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 122244 8017ADD4 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 122248 8017ADD8 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 12224C 8017ADDC 240C0004 */  addiu      $t4, $zero, 0x4
    /* 122250 8017ADE0 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 122254 8017ADE4 000E7880 */  sll        $t7, $t6, 2
    /* 122258 8017ADE8 002F0821 */  addu       $at, $at, $t7
    /* 12225C 8017ADEC 10000038 */  b          .L8017AED0_ovl5
    /* 122260 8017ADF0 AC2C98E0 */   sw        $t4, %lo(D_800E98E0)($at)
  .L8017ADF4_ovl5:
    /* 122264 8017ADF4 0C05EAE0 */  jal        func_8017AB80_ovl5
    /* 122268 8017ADF8 00000000 */   nop
    /* 12226C 8017ADFC 10400034 */  beqz       $v0, .L8017AED0_ovl5
    /* 122270 8017AE00 3C028005 */   lui       $v0, %hi(gPlayerControllers)
    /* 122274 8017AE04 94428F20 */  lhu        $v0, %lo(gPlayerControllers)($v0)
    /* 122278 8017AE08 30590200 */  andi       $t9, $v0, 0x200
    /* 12227C 8017AE0C 13200017 */  beqz       $t9, .L8017AE6C_ovl5
    /* 122280 8017AE10 304C0100 */   andi      $t4, $v0, 0x100
    /* 122284 8017AE14 0C029D9E */  jal        play_sound
    /* 122288 8017AE18 24040113 */   addiu     $a0, $zero, 0x113
    /* 12228C 8017AE1C 3C038019 */  lui        $v1, %hi(D_8018ED10_ovl5)
    /* 122290 8017AE20 2463ED10 */  addiu      $v1, $v1, %lo(D_8018ED10_ovl5)
    /* 122294 8017AE24 8C680000 */  lw         $t0, 0x0($v1)
    /* 122298 8017AE28 2518FFFF */  addiu      $t8, $t0, -0x1
    /* 12229C 8017AE2C 07010006 */  bgez       $t8, .L8017AE48_ovl5
    /* 1222A0 8017AE30 AC780000 */   sw        $t8, 0x0($v1)
    /* 1222A4 8017AE34 0C05EAE0 */  jal        func_8017AB80_ovl5
    /* 1222A8 8017AE38 00000000 */   nop
    /* 1222AC 8017AE3C 3C038019 */  lui        $v1, %hi(D_8018ED10_ovl5)
    /* 1222B0 8017AE40 2463ED10 */  addiu      $v1, $v1, %lo(D_8018ED10_ovl5)
    /* 1222B4 8017AE44 AC620000 */  sw         $v0, 0x0($v1)
  .L8017AE48_ovl5:
    /* 1222B8 8017AE48 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* 1222BC 8017AE4C 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 1222C0 8017AE50 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 1222C4 8017AE54 240A0004 */  addiu      $t2, $zero, 0x4
    /* 1222C8 8017AE58 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 1222CC 8017AE5C 000D7080 */  sll        $t6, $t5, 2
    /* 1222D0 8017AE60 002E0821 */  addu       $at, $at, $t6
    /* 1222D4 8017AE64 1000001A */  b          .L8017AED0_ovl5
    /* 1222D8 8017AE68 AC2A98E0 */   sw        $t2, %lo(D_800E98E0)($at)
  .L8017AE6C_ovl5:
    /* 1222DC 8017AE6C 51800019 */  beql       $t4, $zero, .L8017AED4_ovl5
    /* 1222E0 8017AE70 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1222E4 8017AE74 0C029D9E */  jal        play_sound
    /* 1222E8 8017AE78 24040113 */   addiu     $a0, $zero, 0x113
    /* 1222EC 8017AE7C 3C038019 */  lui        $v1, %hi(D_8018ED10_ovl5)
    /* 1222F0 8017AE80 2463ED10 */  addiu      $v1, $v1, %lo(D_8018ED10_ovl5)
    /* 1222F4 8017AE84 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 1222F8 8017AE88 25F90001 */  addiu      $t9, $t7, 0x1
    /* 1222FC 8017AE8C 0C05EAE0 */  jal        func_8017AB80_ovl5
    /* 122300 8017AE90 AC790000 */   sw        $t9, 0x0($v1)
    /* 122304 8017AE94 3C038019 */  lui        $v1, %hi(D_8018ED10_ovl5)
    /* 122308 8017AE98 2463ED10 */  addiu      $v1, $v1, %lo(D_8018ED10_ovl5)
    /* 12230C 8017AE9C 8C680000 */  lw         $t0, 0x0($v1)
    /* 122310 8017AEA0 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 122314 8017AEA4 0048082A */  slt        $at, $v0, $t0
    /* 122318 8017AEA8 10200002 */  beqz       $at, .L8017AEB4_ovl5
    /* 12231C 8017AEAC 00000000 */   nop
    /* 122320 8017AEB0 AC600000 */  sw         $zero, 0x0($v1)
  .L8017AEB4_ovl5:
    /* 122324 8017AEB4 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 122328 8017AEB8 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 12232C 8017AEBC 24180004 */  addiu      $t8, $zero, 0x4
    /* 122330 8017AEC0 8D2B0000 */  lw         $t3, 0x0($t1)
    /* 122334 8017AEC4 000B6880 */  sll        $t5, $t3, 2
    /* 122338 8017AEC8 002D0821 */  addu       $at, $at, $t5
    /* 12233C 8017AECC AC3898E0 */  sw         $t8, %lo(D_800E98E0)($at)
  .L8017AED0_ovl5:
    /* 122340 8017AED0 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8017AED4_ovl5:
    /* 122344 8017AED4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 122348 8017AED8 03E00008 */  jr         $ra
    /* 12234C 8017AEDC 00000000 */   nop
    /* 122350 8017AEE0 03E00008 */  jr         $ra
    /* 122354 8017AEE4 00000000 */   nop
endlabel func_8017AD54_ovl5
.size func_8017AD54_ovl5, . - func_8017AD54_ovl5
