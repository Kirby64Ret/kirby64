nonmatching func_80177D04_ovl5, 0x21C

glabel func_80177D04_ovl5
    /* 11F174 80177D04 3C078019 */  lui        $a3, %hi(D_8018ECE0_ovl5)
    /* 11F178 80177D08 24E7ECE0 */  addiu      $a3, $a3, %lo(D_8018ECE0_ovl5)
    /* 11F17C 80177D0C 90EE0000 */  lbu        $t6, 0x0($a3)
    /* 11F180 80177D10 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 11F184 80177D14 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 11F188 80177D18 15C0007D */  bnez       $t6, .L80177F10_ovl5
    /* 11F18C 80177D1C AFA40018 */   sw        $a0, 0x18($sp)
    /* 11F190 80177D20 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 11F194 80177D24 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 11F198 80177D28 3C0F800F */  lui        $t7, %hi(D_800E9AA0)
    /* 11F19C 80177D2C 3C068005 */  lui        $a2, %hi(gPlayerControllers)
    /* 11F1A0 80177D30 8C620000 */  lw         $v0, 0x0($v1)
    /* 11F1A4 80177D34 3C19800F */  lui        $t9, %hi(D_800E98E0)
    /* 11F1A8 80177D38 24C68F20 */  addiu      $a2, $a2, %lo(gPlayerControllers)
    /* 11F1AC 80177D3C 00021080 */  sll        $v0, $v0, 2
    /* 11F1B0 80177D40 01E27821 */  addu       $t7, $t7, $v0
    /* 11F1B4 80177D44 8DEF9AA0 */  lw         $t7, %lo(D_800E9AA0)($t7)
    /* 11F1B8 80177D48 273998E0 */  addiu      $t9, $t9, %lo(D_800E98E0)
    /* 11F1BC 80177D4C 51E00071 */  beql       $t7, $zero, .L80177F14_ovl5
    /* 11F1C0 80177D50 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 11F1C4 80177D54 94C50000 */  lhu        $a1, 0x0($a2)
    /* 11F1C8 80177D58 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 11F1CC 80177D5C 00220821 */  addu       $at, $at, $v0
    /* 11F1D0 80177D60 30B80F00 */  andi       $t8, $a1, 0xF00
    /* 11F1D4 80177D64 57000005 */  bnel       $t8, $zero, .L80177D7C_ovl5
    /* 11F1D8 80177D68 00591821 */   addu      $v1, $v0, $t9
    /* 11F1DC 80177D6C AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
    /* 11F1E0 80177D70 8C620000 */  lw         $v0, 0x0($v1)
    /* 11F1E4 80177D74 00021080 */  sll        $v0, $v0, 2
    /* 11F1E8 80177D78 00591821 */  addu       $v1, $v0, $t9
  .L80177D7C_ovl5:
    /* 11F1EC 80177D7C 8C640000 */  lw         $a0, 0x0($v1)
    /* 11F1F0 80177D80 10800003 */  beqz       $a0, .L80177D90_ovl5
    /* 11F1F4 80177D84 2488FFFF */   addiu     $t0, $a0, -0x1
    /* 11F1F8 80177D88 10000061 */  b          .L80177F10_ovl5
    /* 11F1FC 80177D8C AC680000 */   sw        $t0, 0x0($v1)
  .L80177D90_ovl5:
    /* 11F200 80177D90 3C09800F */  lui        $t1, %hi(D_800E9C60)
    /* 11F204 80177D94 01224821 */  addu       $t1, $t1, $v0
    /* 11F208 80177D98 8D299C60 */  lw         $t1, %lo(D_800E9C60)($t1)
    /* 11F20C 80177D9C 51200037 */  beql       $t1, $zero, .L80177E7C_ovl5
    /* 11F210 80177DA0 94D90002 */   lhu       $t9, 0x2($a2)
    /* 11F214 80177DA4 94CA0002 */  lhu        $t2, 0x2($a2)
    /* 11F218 80177DA8 240C0001 */  addiu      $t4, $zero, 0x1
    /* 11F21C 80177DAC 314B9000 */  andi       $t3, $t2, 0x9000
    /* 11F220 80177DB0 51600004 */  beql       $t3, $zero, .L80177DC4_ovl5
    /* 11F224 80177DB4 30AD0800 */   andi      $t5, $a1, 0x800
    /* 11F228 80177DB8 10000055 */  b          .L80177F10_ovl5
    /* 11F22C 80177DBC A0EC0000 */   sb        $t4, 0x0($a3)
    /* 11F230 80177DC0 30AD0800 */  andi       $t5, $a1, 0x800
  .L80177DC4_ovl5:
    /* 11F234 80177DC4 51A00016 */  beql       $t5, $zero, .L80177E20_ovl5
    /* 11F238 80177DC8 30AA0400 */   andi      $t2, $a1, 0x400
    /* 11F23C 80177DCC 0C029D9E */  jal        play_sound
    /* 11F240 80177DD0 24040113 */   addiu     $a0, $zero, 0x113
    /* 11F244 80177DD4 3C038019 */  lui        $v1, %hi(D_8018ECF8_ovl5)
    /* 11F248 80177DD8 2463ECF8 */  addiu      $v1, $v1, %lo(D_8018ECF8_ovl5)
    /* 11F24C 80177DDC 90620000 */  lbu        $v0, 0x0($v1)
    /* 11F250 80177DE0 240E0002 */  addiu      $t6, $zero, 0x2
    /* 11F254 80177DE4 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 11F258 80177DE8 14400003 */  bnez       $v0, .L80177DF8_ovl5
    /* 11F25C 80177DEC 244FFFFF */   addiu     $t7, $v0, -0x1
    /* 11F260 80177DF0 10000002 */  b          .L80177DFC_ovl5
    /* 11F264 80177DF4 A06E0000 */   sb        $t6, 0x0($v1)
  .L80177DF8_ovl5:
    /* 11F268 80177DF8 A06F0000 */  sb         $t7, 0x0($v1)
  .L80177DFC_ovl5:
    /* 11F26C 80177DFC 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 11F270 80177E00 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 11F274 80177E04 24180004 */  addiu      $t8, $zero, 0x4
    /* 11F278 80177E08 8F280000 */  lw         $t0, 0x0($t9)
    /* 11F27C 80177E0C 00084880 */  sll        $t1, $t0, 2
    /* 11F280 80177E10 00290821 */  addu       $at, $at, $t1
    /* 11F284 80177E14 1000003E */  b          .L80177F10_ovl5
    /* 11F288 80177E18 AC3898E0 */   sw        $t8, %lo(D_800E98E0)($at)
    /* 11F28C 80177E1C 30AA0400 */  andi       $t2, $a1, 0x400
  .L80177E20_ovl5:
    /* 11F290 80177E20 5140003C */  beql       $t2, $zero, .L80177F14_ovl5
    /* 11F294 80177E24 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 11F298 80177E28 0C029D9E */  jal        play_sound
    /* 11F29C 80177E2C 24040113 */   addiu     $a0, $zero, 0x113
    /* 11F2A0 80177E30 3C038019 */  lui        $v1, %hi(D_8018ECF8_ovl5)
    /* 11F2A4 80177E34 2463ECF8 */  addiu      $v1, $v1, %lo(D_8018ECF8_ovl5)
    /* 11F2A8 80177E38 90620000 */  lbu        $v0, 0x0($v1)
    /* 11F2AC 80177E3C 24010002 */  addiu      $at, $zero, 0x2
    /* 11F2B0 80177E40 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 11F2B4 80177E44 14410003 */  bne        $v0, $at, .L80177E54_ovl5
    /* 11F2B8 80177E48 244B0001 */   addiu     $t3, $v0, 0x1
    /* 11F2BC 80177E4C 10000002 */  b          .L80177E58_ovl5
    /* 11F2C0 80177E50 A0600000 */   sb        $zero, 0x0($v1)
  .L80177E54_ovl5:
    /* 11F2C4 80177E54 A06B0000 */  sb         $t3, 0x0($v1)
  .L80177E58_ovl5:
    /* 11F2C8 80177E58 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 11F2CC 80177E5C 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 11F2D0 80177E60 240C0004 */  addiu      $t4, $zero, 0x4
    /* 11F2D4 80177E64 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 11F2D8 80177E68 000E7880 */  sll        $t7, $t6, 2
    /* 11F2DC 80177E6C 002F0821 */  addu       $at, $at, $t7
    /* 11F2E0 80177E70 10000027 */  b          .L80177F10_ovl5
    /* 11F2E4 80177E74 AC2C98E0 */   sw        $t4, %lo(D_800E98E0)($at)
    /* 11F2E8 80177E78 94D90002 */  lhu        $t9, 0x2($a2)
  .L80177E7C_ovl5:
    /* 11F2EC 80177E7C 33289000 */  andi       $t0, $t9, 0x9000
    /* 11F2F0 80177E80 51000024 */  beql       $t0, $zero, .L80177F14_ovl5
    /* 11F2F4 80177E84 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 11F2F8 80177E88 0C029D9E */  jal        play_sound
    /* 11F2FC 80177E8C 24040113 */   addiu     $a0, $zero, 0x113
    /* 11F300 80177E90 24040010 */  addiu      $a0, $zero, 0x10
    /* 11F304 80177E94 00002825 */  or         $a1, $zero, $zero
    /* 11F308 80177E98 0C02BB02 */  jal        request_track_general
    /* 11F30C 80177E9C 24060070 */   addiu     $a2, $zero, 0x70
    /* 11F310 80177EA0 00024880 */  sll        $t1, $v0, 2
    /* 11F314 80177EA4 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 11F318 80177EA8 00290821 */  addu       $at, $at, $t1
    /* 11F31C 80177EAC 24180008 */  addiu      $t8, $zero, 0x8
    /* 11F320 80177EB0 AC3898E0 */  sw         $t8, %lo(D_800E98E0)($at)
    /* 11F324 80177EB4 24040010 */  addiu      $a0, $zero, 0x10
    /* 11F328 80177EB8 00002825 */  or         $a1, $zero, $zero
    /* 11F32C 80177EBC 0C02BB02 */  jal        request_track_general
    /* 11F330 80177EC0 24060070 */   addiu     $a2, $zero, 0x70
    /* 11F334 80177EC4 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 11F338 80177EC8 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 11F33C 80177ECC 00025880 */  sll        $t3, $v0, 2
    /* 11F340 80177ED0 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 11F344 80177ED4 002B0821 */  addu       $at, $at, $t3
    /* 11F348 80177ED8 240A0009 */  addiu      $t2, $zero, 0x9
    /* 11F34C 80177EDC AC2A98E0 */  sw         $t2, %lo(D_800E98E0)($at)
    /* 11F350 80177EE0 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 11F354 80177EE4 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 11F358 80177EE8 240D0001 */  addiu      $t5, $zero, 0x1
    /* 11F35C 80177EEC 000E6080 */  sll        $t4, $t6, 2
    /* 11F360 80177EF0 002C0821 */  addu       $at, $at, $t4
    /* 11F364 80177EF4 AC2D9C60 */  sw         $t5, %lo(D_800E9C60)($at)
    /* 11F368 80177EF8 8C790000 */  lw         $t9, 0x0($v1)
    /* 11F36C 80177EFC 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 11F370 80177F00 240F0004 */  addiu      $t7, $zero, 0x4
    /* 11F374 80177F04 00194080 */  sll        $t0, $t9, 2
    /* 11F378 80177F08 00280821 */  addu       $at, $at, $t0
    /* 11F37C 80177F0C AC2F98E0 */  sw         $t7, %lo(D_800E98E0)($at)
  .L80177F10_ovl5:
    /* 11F380 80177F10 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80177F14_ovl5:
    /* 11F384 80177F14 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 11F388 80177F18 03E00008 */  jr         $ra
    /* 11F38C 80177F1C 00000000 */   nop
endlabel func_80177D04_ovl5
.size func_80177D04_ovl5, . - func_80177D04_ovl5
