glabel func_8021E050_ovl18
/* 2309F0 8021E050 3C0E8023 */  lui        $t6, %hi(D_8022BC90_ovl18)
/* 2309F4 8021E054 8DCEBC90 */  lw         $t6, %lo(D_8022BC90_ovl18)($t6)
/* 2309F8 8021E058 3C188023 */  lui        $t8, %hi(D_8022959C_ovl18)
/* 2309FC 8021E05C 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 230A00 8021E060 000E78C0 */  sll        $t7, $t6, 3
/* 230A04 8021E064 01EE7823 */  subu       $t7, $t7, $t6
/* 230A08 8021E068 000F7880 */  sll        $t7, $t7, 2
/* 230A0C 8021E06C 030FC021 */  addu       $t8, $t8, $t7
/* 230A10 8021E070 8F18959C */  lw         $t8, %lo(D_8022959C_ovl18)($t8)
/* 230A14 8021E074 0005C880 */  sll        $t9, $a1, 2
/* 230A18 8021E078 0325C823 */  subu       $t9, $t9, $a1
/* 230A1C 8021E07C 0019C8C0 */  sll        $t9, $t9, 3
/* 230A20 8021E080 AFBF003C */  sw         $ra, 0x3C($sp)
/* 230A24 8021E084 AFB00038 */  sw         $s0, 0x38($sp)
/* 230A28 8021E088 AFA40088 */  sw         $a0, 0x88($sp)
/* 230A2C 8021E08C 03194021 */  addu       $t0, $t8, $t9
/* 230A30 8021E090 8D090004 */  lw         $t1, 0x4($t0)
/* 230A34 8021E094 000650C0 */  sll        $t2, $a2, 3
/* 230A38 8021E098 01465021 */  addu       $t2, $t2, $a2
/* 230A3C 8021E09C 000A5080 */  sll        $t2, $t2, 2
/* 230A40 8021E0A0 012A8021 */  addu       $s0, $t1, $t2
/* 230A44 8021E0A4 C6040018 */  lwc1       $f4, 0x18($s0)
/* 230A48 8021E0A8 92020000 */  lbu        $v0, 0x0($s0)
/* 230A4C 8021E0AC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 230A50 8021E0B0 E7A40060 */  swc1       $f4, 0x60($sp)
/* 230A54 8021E0B4 C606001C */  lwc1       $f6, 0x1C($s0)
/* 230A58 8021E0B8 44810000 */  mtc1       $at, $f0
/* 230A5C 8021E0BC 30420070 */  andi       $v0, $v0, 0x70
/* 230A60 8021E0C0 E7A60064 */  swc1       $f6, 0x64($sp)
/* 230A64 8021E0C4 C6080020 */  lwc1       $f8, 0x20($s0)
/* 230A68 8021E0C8 E7A00054 */  swc1       $f0, 0x54($sp)
/* 230A6C 8021E0CC E7A00058 */  swc1       $f0, 0x58($sp)
/* 230A70 8021E0D0 E7A0005C */  swc1       $f0, 0x5C($sp)
/* 230A74 8021E0D4 1040000A */  beqz       $v0, .L8021E100_ovl18
/* 230A78 8021E0D8 E7A80068 */   swc1      $f8, 0x68($sp)
/* 230A7C 8021E0DC 24010010 */  addiu      $at, $zero, 0x10
/* 230A80 8021E0E0 1041004F */  beq        $v0, $at, .L8021E220_ovl18
/* 230A84 8021E0E4 24010020 */   addiu     $at, $zero, 0x20
/* 230A88 8021E0E8 104100C0 */  beq        $v0, $at, .L8021E3EC_ovl18
/* 230A8C 8021E0EC 24010030 */   addiu     $at, $zero, 0x30
/* 230A90 8021E0F0 504100D2 */  beql       $v0, $at, .L8021E43C_ovl18
/* 230A94 8021E0F4 C610000C */   lwc1      $f16, 0xC($s0)
/* 230A98 8021E0F8 100000F0 */  b          .L8021E4BC_ovl18
/* 230A9C 8021E0FC 8FBF003C */   lw        $ra, 0x3C($sp)
.L8021E100_ovl18:
/* 230AA0 8021E100 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 230AA4 8021E104 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 230AA8 8021E108 3C0D800E */  lui        $t5, %hi(D_800E5F90)
/* 230AAC 8021E10C 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 230AB0 8021E110 8C4B0000 */  lw         $t3, 0x0($v0)
/* 230AB4 8021E114 27A40080 */  addiu      $a0, $sp, 0x80
/* 230AB8 8021E118 27A50050 */  addiu      $a1, $sp, 0x50
/* 230ABC 8021E11C 000B6080 */  sll        $t4, $t3, 2
/* 230AC0 8021E120 01AC6821 */  addu       $t5, $t5, $t4
/* 230AC4 8021E124 8DAD5F90 */  lw         $t5, %lo(D_800E5F90)($t5)
/* 230AC8 8021E128 AFAD0080 */  sw         $t5, 0x80($sp)
/* 230ACC 8021E12C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 230AD0 8021E130 000E7880 */  sll        $t7, $t6, 2
/* 230AD4 8021E134 002F0821 */  addu       $at, $at, $t7
/* 230AD8 8021E138 C42A6BD0 */  lwc1       $f10, %lo(D_800E6BD0)($at)
/* 230ADC 8021E13C E7AA0050 */  swc1       $f10, 0x50($sp)
/* 230AE0 8021E140 0C03E65D */  jal        func_800F9974
/* 230AE4 8021E144 8E06000C */   lw        $a2, 0xC($s0)
/* 230AE8 8021E148 27A4006C */  addiu      $a0, $sp, 0x6C
/* 230AEC 8021E14C 8FA50080 */  lw         $a1, 0x80($sp)
/* 230AF0 8021E150 0C03E408 */  jal        func_800F9020
/* 230AF4 8021E154 8FA60050 */   lw        $a2, 0x50($sp)
/* 230AF8 8021E158 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 230AFC 8021E15C 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 230B00 8021E160 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 230B04 8021E164 C6120010 */  lwc1       $f18, 0x10($s0)
/* 230B08 8021E168 8F190000 */  lw         $t9, 0x0($t8)
/* 230B0C 8021E16C 00194080 */  sll        $t0, $t9, 2
/* 230B10 8021E170 00280821 */  addu       $at, $at, $t0
/* 230B14 8021E174 C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
/* 230B18 8021E178 24010007 */  addiu      $at, $zero, 0x7
/* 230B1C 8021E17C 46128100 */  add.s      $f4, $f16, $f18
/* 230B20 8021E180 E7A40070 */  swc1       $f4, 0x70($sp)
glabel func_8021E184_ovl19
/* 230B24 8021E184 92090000 */  lbu        $t1, 0x0($s0)
/* 230B28 8021E188 312A000F */  andi       $t2, $t1, 0xF
/* 230B2C 8021E18C 5141000F */  beql       $t2, $at, .L8021E1CC_ovl18
/* 230B30 8021E190 920B0002 */   lbu       $t3, 0x2($s0)
/* 230B34 8021E194 0C029D9E */  jal        play_sound
/* 230B38 8021E198 24040112 */   addiu     $a0, $zero, 0x112
/* 230B3C 8021E19C C7A60070 */  lwc1       $f6, 0x70($sp)
/* 230B40 8021E1A0 C7A80074 */  lwc1       $f8, 0x74($sp)
/* 230B44 8021E1A4 24040003 */  addiu      $a0, $zero, 0x3
/* 230B48 8021E1A8 00002825 */  or         $a1, $zero, $zero
/* 230B4C 8021E1AC 240600CE */  addiu      $a2, $zero, 0xCE
/* 230B50 8021E1B0 8FA7006C */  lw         $a3, 0x6C($sp)
/* 230B54 8021E1B4 E7A60010 */  swc1       $f6, 0x10($sp)
/* 230B58 8021E1B8 0C029FDD */  jal        func_800A7F74
/* 230B5C 8021E1BC E7A80014 */   swc1      $f8, 0x14($sp)
/* 230B60 8021E1C0 0C002DAF */  jal        finish_current_thread
/* 230B64 8021E1C4 24040012 */   addiu     $a0, $zero, 0x12
/* 230B68 8021E1C8 920B0002 */  lbu        $t3, 0x2($s0)
.L8021E1CC_ovl18:
/* 230B6C 8021E1CC 92070001 */  lbu        $a3, 0x1($s0)
/* 230B70 8021E1D0 27AF006C */  addiu      $t7, $sp, 0x6C
/* 230B74 8021E1D4 AFAB0010 */  sw         $t3, 0x10($sp)
/* 230B78 8021E1D8 920C0003 */  lbu        $t4, 0x3($s0)
/* 230B7C 8021E1DC 27B80060 */  addiu      $t8, $sp, 0x60
/* 230B80 8021E1E0 27B90054 */  addiu      $t9, $sp, 0x54
/* 230B84 8021E1E4 AFAC0014 */  sw         $t4, 0x14($sp)
/* 230B88 8021E1E8 920D0004 */  lbu        $t5, 0x4($s0)
/* 230B8C 8021E1EC AFA0001C */  sw         $zero, 0x1C($sp)
/* 230B90 8021E1F0 240400FF */  addiu      $a0, $zero, 0xFF
/* 230B94 8021E1F4 AFAD0018 */  sw         $t5, 0x18($sp)
/* 230B98 8021E1F8 860E0006 */  lh         $t6, 0x6($s0)
/* 230B9C 8021E1FC AFB9002C */  sw         $t9, 0x2C($sp)
/* 230BA0 8021E200 AFB80028 */  sw         $t8, 0x28($sp)
/* 230BA4 8021E204 AFAF0024 */  sw         $t7, 0x24($sp)
/* 230BA8 8021E208 93A50083 */  lbu        $a1, 0x83($sp)
/* 230BAC 8021E20C 8FA60050 */  lw         $a2, 0x50($sp)
/* 230BB0 8021E210 0C03F345 */  jal        func_800FCD14
/* 230BB4 8021E214 AFAE0020 */   sw        $t6, 0x20($sp)
/* 230BB8 8021E218 100000A7 */  b          .L8021E4B8_ovl18
/* 230BBC 8021E21C AFA2007C */   sw        $v0, 0x7C($sp)
.L8021E220_ovl18:
/* 230BC0 8021E220 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 230BC4 8021E224 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 230BC8 8021E228 3C0A800E */  lui        $t2, %hi(D_800E5F90)
/* 230BCC 8021E22C 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 230BD0 8021E230 8C480000 */  lw         $t0, 0x0($v0)
/* 230BD4 8021E234 00084880 */  sll        $t1, $t0, 2
/* 230BD8 8021E238 01495021 */  addu       $t2, $t2, $t1
/* 230BDC 8021E23C 8D4A5F90 */  lw         $t2, %lo(D_800E5F90)($t2)
/* 230BE0 8021E240 AFAA0080 */  sw         $t2, 0x80($sp)
/* 230BE4 8021E244 8C4B0000 */  lw         $t3, 0x0($v0)
/* 230BE8 8021E248 000B6080 */  sll        $t4, $t3, 2
/* 230BEC 8021E24C 002C0821 */  addu       $at, $at, $t4
/* 230BF0 8021E250 C42A6BD0 */  lwc1       $f10, %lo(D_800E6BD0)($at)
/* 230BF4 8021E254 E7AA0050 */  swc1       $f10, 0x50($sp)
/* 230BF8 8021E258 C610000C */  lwc1       $f16, 0xC($s0)
/* 230BFC 8021E25C 4600848D */  trunc.w.s  $f18, $f16
/* 230C00 8021E260 44049000 */  mfc1       $a0, $f18
/* 230C04 8021E264 0C006291 */  jal        random_soft_s32_range
/* 230C08 8021E268 00000000 */   nop
/* 230C0C 8021E26C 24030005 */  addiu      $v1, $zero, 0x5
/* 230C10 8021E270 0043001A */  div        $zero, $v0, $v1
/* 230C14 8021E274 00007012 */  mflo       $t6
/* 230C18 8021E278 27A40080 */  addiu      $a0, $sp, 0x80
/* 230C1C 8021E27C 27A50050 */  addiu      $a1, $sp, 0x50
/* 230C20 8021E280 01C30019 */  multu      $t6, $v1
/* 230C24 8021E284 14600002 */  bnez       $v1, .L8021E290_ovl18
/* 230C28 8021E288 00000000 */   nop
/* 230C2C 8021E28C 0007000D */  break      7
.L8021E290_ovl18:
/* 230C30 8021E290 2401FFFF */  addiu      $at, $zero, -0x1
/* 230C34 8021E294 14610004 */  bne        $v1, $at, .L8021E2A8_ovl18
/* 230C38 8021E298 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 230C3C 8021E29C 14410002 */  bne        $v0, $at, .L8021E2A8_ovl18
/* 230C40 8021E2A0 00000000 */   nop
/* 230C44 8021E2A4 0006000D */  break      6
.L8021E2A8_ovl18:
/* 230C48 8021E2A8 00007812 */  mflo       $t7
/* 230C4C 8021E2AC 448F2000 */  mtc1       $t7, $f4
/* 230C50 8021E2B0 00000000 */  nop
/* 230C54 8021E2B4 46802120 */  cvt.s.w    $f4, $f4
/* 230C58 8021E2B8 44062000 */  mfc1       $a2, $f4
/* 230C5C 8021E2BC 0C03E65D */  jal        func_800F9974
/* 230C60 8021E2C0 00000000 */   nop
/* 230C64 8021E2C4 27A4006C */  addiu      $a0, $sp, 0x6C
/* 230C68 8021E2C8 8FA50080 */  lw         $a1, 0x80($sp)
/* 230C6C 8021E2CC 0C03E408 */  jal        func_800F9020
glabel func_8021E2D0_ovl19
/* 230C70 8021E2D0 8FA60050 */   lw        $a2, 0x50($sp)
/* 230C74 8021E2D4 C6060010 */  lwc1       $f6, 0x10($s0)
/* 230C78 8021E2D8 4600320D */  trunc.w.s  $f8, $f6
/* 230C7C 8021E2DC 44044000 */  mfc1       $a0, $f8
/* 230C80 8021E2E0 0C006291 */  jal        random_soft_s32_range
/* 230C84 8021E2E4 00000000 */   nop
/* 230C88 8021E2E8 24030005 */  addiu      $v1, $zero, 0x5
/* 230C8C 8021E2EC 0043001A */  div        $zero, $v0, $v1
/* 230C90 8021E2F0 00005012 */  mflo       $t2
/* 230C94 8021E2F4 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 230C98 8021E2F8 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 230C9C 8021E2FC 01430019 */  multu      $t2, $v1
/* 230CA0 8021E300 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 230CA4 8021E304 8F280000 */  lw         $t0, 0x0($t9)
.L8021E308_ovl19:
/* 230CA8 8021E308 00084880 */  sll        $t1, $t0, 2
/* 230CAC 8021E30C 00290821 */  addu       $at, $at, $t1
/* 230CB0 8021E310 C42A2790 */  lwc1       $f10, %lo(gEntitiesNextPosYArray)($at)
/* 230CB4 8021E314 14600002 */  bnez       $v1, .L8021E320_ovl19
/* 230CB8 8021E318 00000000 */   nop
/* 230CBC 8021E31C 0007000D */  break      7
.L8021E320_ovl19:
/* 230CC0 8021E320 2401FFFF */  addiu      $at, $zero, -0x1
/* 230CC4 8021E324 14610004 */  bne        $v1, $at, .L8021E338_ovl19
/* 230CC8 8021E328 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 230CCC 8021E32C 14410002 */  bne        $v0, $at, .L8021E338_ovl19
/* 230CD0 8021E330 00000000 */   nop
/* 230CD4 8021E334 0006000D */  break      6
.L8021E338_ovl19:
/* 230CD8 8021E338 00005812 */  mflo       $t3
/* 230CDC 8021E33C 448B8000 */  mtc1       $t3, $f16
/* 230CE0 8021E340 24010007 */  addiu      $at, $zero, 0x7
/* 230CE4 8021E344 468084A0 */  cvt.s.w    $f18, $f16
/* 230CE8 8021E348 46125100 */  add.s      $f4, $f10, $f18
/* 230CEC 8021E34C E7A40070 */  swc1       $f4, 0x70($sp)
/* 230CF0 8021E350 920C0000 */  lbu        $t4, 0x0($s0)
/* 230CF4 8021E354 318D000F */  andi       $t5, $t4, 0xF
/* 230CF8 8021E358 51A1000F */  beql       $t5, $at, .L8021E398_ovl18
/* 230CFC 8021E35C 920E0002 */   lbu       $t6, 0x2($s0)
/* 230D00 8021E360 0C029D9E */  jal        play_sound
/* 230D04 8021E364 24040112 */   addiu     $a0, $zero, 0x112
/* 230D08 8021E368 C7A60070 */  lwc1       $f6, 0x70($sp)
/* 230D0C 8021E36C C7A80074 */  lwc1       $f8, 0x74($sp)
/* 230D10 8021E370 24040003 */  addiu      $a0, $zero, 0x3
/* 230D14 8021E374 00002825 */  or         $a1, $zero, $zero
/* 230D18 8021E378 240600CE */  addiu      $a2, $zero, 0xCE
/* 230D1C 8021E37C 8FA7006C */  lw         $a3, 0x6C($sp)
/* 230D20 8021E380 E7A60010 */  swc1       $f6, 0x10($sp)
/* 230D24 8021E384 0C029FDD */  jal        func_800A7F74
/* 230D28 8021E388 E7A80014 */   swc1      $f8, 0x14($sp)
/* 230D2C 8021E38C 0C002DAF */  jal        finish_current_thread
/* 230D30 8021E390 24040012 */   addiu     $a0, $zero, 0x12
/* 230D34 8021E394 920E0002 */  lbu        $t6, 0x2($s0)
.L8021E398_ovl18:
/* 230D38 8021E398 92070001 */  lbu        $a3, 0x1($s0)
/* 230D3C 8021E39C 27A8006C */  addiu      $t0, $sp, 0x6C
/* 230D40 8021E3A0 AFAE0010 */  sw         $t6, 0x10($sp)
/* 230D44 8021E3A4 920F0003 */  lbu        $t7, 0x3($s0)
/* 230D48 8021E3A8 27A90060 */  addiu      $t1, $sp, 0x60
/* 230D4C 8021E3AC 27AA0054 */  addiu      $t2, $sp, 0x54
/* 230D50 8021E3B0 AFAF0014 */  sw         $t7, 0x14($sp)
/* 230D54 8021E3B4 92180004 */  lbu        $t8, 0x4($s0)
/* 230D58 8021E3B8 AFA0001C */  sw         $zero, 0x1C($sp)
/* 230D5C 8021E3BC 240400FF */  addiu      $a0, $zero, 0xFF
/* 230D60 8021E3C0 AFB80018 */  sw         $t8, 0x18($sp)
/* 230D64 8021E3C4 86190006 */  lh         $t9, 0x6($s0)
/* 230D68 8021E3C8 AFAA002C */  sw         $t2, 0x2C($sp)
/* 230D6C 8021E3CC AFA90028 */  sw         $t1, 0x28($sp)
/* 230D70 8021E3D0 AFA80024 */  sw         $t0, 0x24($sp)
/* 230D74 8021E3D4 93A50083 */  lbu        $a1, 0x83($sp)
/* 230D78 8021E3D8 8FA60050 */  lw         $a2, 0x50($sp)
/* 230D7C 8021E3DC 0C03F345 */  jal        func_800FCD14
/* 230D80 8021E3E0 AFB90020 */   sw        $t9, 0x20($sp)
/* 230D84 8021E3E4 10000034 */  b          .L8021E4B8_ovl18
/* 230D88 8021E3E8 AFA2007C */   sw        $v0, 0x7C($sp)
.L8021E3EC_ovl18:
/* 230D8C 8021E3EC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 230D90 8021E3F0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 230D94 8021E3F4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 230D98 8021E3F8 C60A000C */  lwc1       $f10, 0xC($s0)
/* 230D9C 8021E3FC 8C4B0000 */  lw         $t3, 0x0($v0)
/* 230DA0 8021E400 000B6080 */  sll        $t4, $t3, 2
/* 230DA4 8021E404 002C0821 */  addu       $at, $at, $t4
/* 230DA8 8021E408 C43025D0 */  lwc1       $f16, %lo(gEntitiesNextPosXArray)($at)
/* 230DAC 8021E40C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 230DB0 8021E410 460A8480 */  add.s      $f18, $f16, $f10
/* 230DB4 8021E414 E7B2006C */  swc1       $f18, 0x6C($sp)
/* 230DB8 8021E418 8C4D0000 */  lw         $t5, 0x0($v0)
/* 230DBC 8021E41C C6060010 */  lwc1       $f6, 0x10($s0)
/* 230DC0 8021E420 000D7080 */  sll        $t6, $t5, 2
/* 230DC4 8021E424 002E0821 */  addu       $at, $at, $t6
/* 230DC8 8021E428 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
/* 230DCC 8021E42C 46062200 */  add.s      $f8, $f4, $f6
/* 230DD0 8021E430 10000021 */  b          .L8021E4B8_ovl18
/* 230DD4 8021E434 E7A80070 */   swc1      $f8, 0x70($sp)
/* 230DD8 8021E438 C610000C */  lwc1       $f16, 0xC($s0)
.L8021E43C_ovl18:
/* 230DDC 8021E43C 4600828D */  trunc.w.s  $f10, $f16
/* 230DE0 8021E440 44045000 */  mfc1       $a0, $f10
/* 230DE4 8021E444 0C006291 */  jal        random_soft_s32_range
/* 230DE8 8021E448 00000000 */   nop
/* 230DEC 8021E44C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 230DF0 8021E450 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 230DF4 8021E454 44829000 */  mtc1       $v0, $f18
/* 230DF8 8021E458 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 230DFC 8021E45C 8F190000 */  lw         $t9, 0x0($t8)
/* 230E00 8021E460 46809120 */  cvt.s.w    $f4, $f18
/* 230E04 8021E464 00194080 */  sll        $t0, $t9, 2
/* 230E08 8021E468 00280821 */  addu       $at, $at, $t0
/* 230E0C 8021E46C C42625D0 */  lwc1       $f6, %lo(gEntitiesNextPosXArray)($at)
/* 230E10 8021E470 46062200 */  add.s      $f8, $f4, $f6
/* 230E14 8021E474 E7A8006C */  swc1       $f8, 0x6C($sp)
/* 230E18 8021E478 C6100010 */  lwc1       $f16, 0x10($s0)
/* 230E1C 8021E47C 4600828D */  trunc.w.s  $f10, $f16
/* 230E20 8021E480 44045000 */  mfc1       $a0, $f10
/* 230E24 8021E484 0C006291 */  jal        random_soft_s32_range
/* 230E28 8021E488 00000000 */   nop
/* 230E2C 8021E48C 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 230E30 8021E490 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 230E34 8021E494 44829000 */  mtc1       $v0, $f18
/* 230E38 8021E498 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
.L8021E49C_ovl19:
/* 230E3C 8021E49C 8D4B0000 */  lw         $t3, 0x0($t2)
/* 230E40 8021E4A0 46809120 */  cvt.s.w    $f4, $f18
/* 230E44 8021E4A4 000B6080 */  sll        $t4, $t3, 2
/* 230E48 8021E4A8 002C0821 */  addu       $at, $at, $t4
/* 230E4C 8021E4AC C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
glabel func_8021E4B0_ovl19
/* 230E50 8021E4B0 46062200 */  add.s      $f8, $f4, $f6
/* 230E54 8021E4B4 E7A80070 */  swc1       $f8, 0x70($sp)
.L8021E4B8_ovl18:
/* 230E58 8021E4B8 8FBF003C */  lw         $ra, 0x3C($sp)
.L8021E4BC_ovl18:
/* 230E5C 8021E4BC 8FA2007C */  lw         $v0, 0x7C($sp)
/* 230E60 8021E4C0 8FB00038 */  lw         $s0, 0x38($sp)
/* 230E64 8021E4C4 03E00008 */  jr         $ra
/* 230E68 8021E4C8 27BD0088 */   addiu     $sp, $sp, 0x88
