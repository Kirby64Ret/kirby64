glabel func_80183FF4_ovl3
/* E4A34 80183FF4 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* E4A38 80183FF8 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* E4A3C 80183FFC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* E4A40 80184000 AFBF001C */  sw         $ra, 0x1C($sp)
/* E4A44 80184004 AFA40050 */  sw         $a0, 0x50($sp)
/* E4A48 80184008 8DC30000 */  lw         $v1, 0x0($t6)
/* E4A4C 8018400C 3C0F800F */  lui        $t7, %hi(D_800E8AE0)
/* E4A50 80184010 3C01800F */  lui        $at, %hi(D_800E98E0)
/* E4A54 80184014 00031880 */  sll        $v1, $v1, 2
.L80184018_ovl5:
/* E4A58 80184018 01E37821 */  addu       $t7, $t7, $v1
/* E4A5C 8018401C 8DEF8AE0 */  lw         $t7, %lo(D_800E8AE0)($t7)
/* E4A60 80184020 00230821 */  addu       $at, $at, $v1
/* E4A64 80184024 AFA0004C */  sw         $zero, 0x4C($sp)
/* E4A68 80184028 0C054EB5 */  jal        func_80153AD4_ovl3
/* E4A6C 8018402C AC2F98E0 */   sw        $t7, %lo(D_800E98E0)($at)
/* E4A70 80184030 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* E4A74 80184034 8CE7A7C4 */  lw         $a3, %lo(D_8004A7C4)($a3)
/* E4A78 80184038 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosYArray)
/* E4A7C 8018403C 254A2790 */  addiu      $t2, $t2, %lo(gEntitiesNextPosYArray)
/* E4A80 80184040 8CF80000 */  lw         $t8, 0x0($a3)
/* E4A84 80184044 3C01800F */  lui        $at, %hi(D_800EC9E4)
/* E4A88 80184048 C426C9E4 */  lwc1       $f6, %lo(D_800EC9E4)($at)
/* E4A8C 8018404C 0018C880 */  sll        $t9, $t8, 2
/* E4A90 80184050 01591821 */  addu       $v1, $t2, $t9
/* E4A94 80184054 C4640000 */  lwc1       $f4, 0x0($v1)
/* E4A98 80184058 3C098013 */  lui        $t1, %hi(gKirbyState)
/* E4A9C 8018405C 2529E7C0 */  addiu      $t1, $t1, %lo(gKirbyState)
/* E4AA0 80184060 46062201 */  sub.s      $f8, $f4, $f6
/* E4AA4 80184064 8D2B00FC */  lw         $t3, 0xFC($t1)
/* E4AA8 80184068 8FA8004C */  lw         $t0, 0x4C($sp)
/* E4AAC 8018406C 11600003 */  beqz       $t3, .L8018407C_ovl3
/* E4AB0 80184070 E4680000 */   swc1      $f8, 0x0($v1)
/* E4AB4 80184074 1000002C */  b          .L80184128_ovl3
/* E4AB8 80184078 24080001 */   addiu     $t0, $zero, 0x1
.L8018407C_ovl3:
/* E4ABC 8018407C 8CEC0000 */  lw         $t4, 0x0($a3)
/* E4AC0 80184080 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
glabel func_80184084_ovl5
/* E4AC4 80184084 27A40038 */  addiu      $a0, $sp, 0x38
/* E4AC8 80184088 000C6880 */  sll        $t5, $t4, 2
/* E4ACC 8018408C 002D0821 */  addu       $at, $at, $t5
/* E4AD0 80184090 C42A25D0 */  lwc1       $f10, %lo(gEntitiesNextPosXArray)($at)
/* E4AD4 80184094 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* E4AD8 80184098 3C0541A0 */  lui        $a1, (0x41A00000 >> 16)
/* E4ADC 8018409C E7AA0038 */  swc1       $f10, 0x38($sp)
/* E4AE0 801840A0 8CEE0000 */  lw         $t6, 0x0($a3)
/* E4AE4 801840A4 24060004 */  addiu      $a2, $zero, 0x4
/* E4AE8 801840A8 000E7880 */  sll        $t7, $t6, 2
/* E4AEC 801840AC 002F0821 */  addu       $at, $at, $t7
/* E4AF0 801840B0 C4302950 */  lwc1       $f16, %lo(gEntitiesNextPosZArray)($at)
.L801840B4_ovl5:
/* E4AF4 801840B4 E7B00040 */  swc1       $f16, 0x40($sp)
/* E4AF8 801840B8 8CF80000 */  lw         $t8, 0x0($a3)
/* E4AFC 801840BC 0018C880 */  sll        $t9, $t8, 2
/* E4B00 801840C0 01595821 */  addu       $t3, $t2, $t9
/* E4B04 801840C4 C5720000 */  lwc1       $f18, 0x0($t3)
/* E4B08 801840C8 AFA8004C */  sw         $t0, 0x4C($sp)
/* E4B0C 801840CC 0C05560E */  jal        func_80155838_ovl3
/* E4B10 801840D0 E7B2003C */   swc1      $f18, 0x3C($sp)
/* E4B14 801840D4 3C098013 */  lui        $t1, %hi(gKirbyState)
/* E4B18 801840D8 2529E7C0 */  addiu      $t1, $t1, %lo(gKirbyState)
/* E4B1C 801840DC 10400003 */  beqz       $v0, .L801840EC_ovl3
/* E4B20 801840E0 8FA8004C */   lw        $t0, 0x4C($sp)
/* E4B24 801840E4 10000010 */  b          .L80184128_ovl3
/* E4B28 801840E8 24080001 */   addiu     $t0, $zero, 0x1
.L801840EC_ovl3:
/* E4B2C 801840EC 3C014220 */  lui        $at, (0x42200000 >> 16)
glabel func_801840F0_ovl5
/* E4B30 801840F0 44813000 */  mtc1       $at, $f6
/* E4B34 801840F4 C7A4003C */  lwc1       $f4, 0x3C($sp)
/* E4B38 801840F8 27A40038 */  addiu      $a0, $sp, 0x38
/* E4B3C 801840FC 3C0541A0 */  lui        $a1, (0x41A00000 >> 16)
/* E4B40 80184100 46062200 */  add.s      $f8, $f4, $f6
/* E4B44 80184104 24060004 */  addiu      $a2, $zero, 0x4
/* E4B48 80184108 AFA8004C */  sw         $t0, 0x4C($sp)
/* E4B4C 8018410C 0C05560E */  jal        func_80155838_ovl3
/* E4B50 80184110 E7A8003C */   swc1      $f8, 0x3C($sp)
/* E4B54 80184114 3C098013 */  lui        $t1, %hi(gKirbyState)
/* E4B58 80184118 2529E7C0 */  addiu      $t1, $t1, %lo(gKirbyState)
/* E4B5C 8018411C 10400002 */  beqz       $v0, .L80184128_ovl3
/* E4B60 80184120 8FA8004C */   lw        $t0, 0x4C($sp)
/* E4B64 80184124 24080001 */  addiu      $t0, $zero, 0x1
.L80184128_ovl3:
/* E4B68 80184128 15000004 */  bnez       $t0, .L8018413C_ovl3
/* E4B6C 8018412C 3C078005 */   lui       $a3, %hi(D_8004A7C4)
/* E4B70 80184130 8D2200E4 */  lw         $v0, 0xE4($t1)
.L80184134_ovl5:
/* E4B74 80184134 10400032 */  beqz       $v0, .L80184200_ovl3
/* E4B78 80184138 00000000 */   nop
.L8018413C_ovl3:
/* E4B7C 8018413C 8CE7A7C4 */  lw         $a3, %lo(D_8004A7C4)($a3)
/* E4B80 80184140 44805000 */  mtc1       $zero, $f10
/* E4B84 80184144 3C01800E */  lui        $at, %hi(D_800E6690)
/* E4B88 80184148 8CEC0000 */  lw         $t4, 0x0($a3)
/* E4B8C 8018414C 44802000 */  mtc1       $zero, $f4
/* E4B90 80184150 3C02800E */  lui        $v0, %hi(D_800E3750)
/* E4B94 80184154 000C6880 */  sll        $t5, $t4, 2
/* E4B98 80184158 002D0821 */  addu       $at, $at, $t5
/* E4B9C 8018415C E42A6690 */  swc1       $f10, %lo(D_800E6690)($at)
/* E4BA0 80184160 8CE30000 */  lw         $v1, 0x0($a3)
/* E4BA4 80184164 3C01800E */  lui        $at, %hi(D_800E6690)
/* E4BA8 80184168 24423750 */  addiu      $v0, $v0, %lo(D_800E3750)
/* E4BAC 8018416C 00031880 */  sll        $v1, $v1, 2
/* E4BB0 80184170 00230821 */  addu       $at, $at, $v1
.L80184174_ovl5:
/* E4BB4 80184174 C4306690 */  lwc1       $f16, %lo(D_800E6690)($at)
/* E4BB8 80184178 3C01800E */  lui        $at, %hi(D_800E64D0)
/* E4BBC 8018417C 00230821 */  addu       $at, $at, $v1
/* E4BC0 80184180 E43064D0 */  swc1       $f16, %lo(D_800E64D0)($at)
/* E4BC4 80184184 8CEE0000 */  lw         $t6, 0x0($a3)
/* E4BC8 80184188 3C018019 */  lui        $at, %hi(D_801977B0_ovl3)
/* E4BCC 8018418C C43277B0 */  lwc1       $f18, %lo(D_801977B0_ovl3)($at)
/* E4BD0 80184190 3C01800E */  lui        $at, %hi(D_800E6850)
/* E4BD4 80184194 000E7880 */  sll        $t7, $t6, 2
/* E4BD8 80184198 002F0821 */  addu       $at, $at, $t7
.L8018419C_ovl5:
/* E4BDC 8018419C E4326850 */  swc1       $f18, %lo(D_800E6850)($at)
/* E4BE0 801841A0 8CF80000 */  lw         $t8, 0x0($a3)
/* E4BE4 801841A4 3C01800E */  lui        $at, %hi(D_800E3210)
/* E4BE8 801841A8 0018C880 */  sll        $t9, $t8, 2
/* E4BEC 801841AC 00595821 */  addu       $t3, $v0, $t9
.L801841B0_ovl5:
/* E4BF0 801841B0 E5640000 */  swc1       $f4, 0x0($t3)
/* E4BF4 801841B4 8CE30000 */  lw         $v1, 0x0($a3)
/* E4BF8 801841B8 24190001 */  addiu      $t9, $zero, 0x1
/* E4BFC 801841BC 00031880 */  sll        $v1, $v1, 2
glabel func_801841C0_ovl5
/* E4C00 801841C0 00436021 */  addu       $t4, $v0, $v1
/* E4C04 801841C4 C5860000 */  lwc1       $f6, 0x0($t4)
/* E4C08 801841C8 00230821 */  addu       $at, $at, $v1
/* E4C0C 801841CC E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* E4C10 801841D0 8CED0000 */  lw         $t5, 0x0($a3)
/* E4C14 801841D4 3C018019 */  lui        $at, %hi(D_801977B4_ovl3)
/* E4C18 801841D8 C42877B4 */  lwc1       $f8, %lo(D_801977B4_ovl3)($at)
/* E4C1C 801841DC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* E4C20 801841E0 000D7080 */  sll        $t6, $t5, 2
/* E4C24 801841E4 002E0821 */  addu       $at, $at, $t6
/* E4C28 801841E8 E4283C90 */  swc1       $f8, %lo(D_800E3C90)($at)
/* E4C2C 801841EC 8D2F0034 */  lw         $t7, 0x34($t1)
/* E4C30 801841F0 AD39003C */  sw         $t9, 0x3C($t1)
/* E4C34 801841F4 35F84000 */  ori        $t8, $t7, 0x4000
/* E4C38 801841F8 10000006 */  b          .L80184214_ovl3
/* E4C3C 801841FC AD380034 */   sw        $t8, 0x34($t1)
.L80184200_ovl3:
/* E4C40 80184200 54400005 */  bnel       $v0, $zero, .L80184218_ovl3
/* E4C44 80184204 8D2B003C */   lw        $t3, 0x3C($t1)
/* E4C48 80184208 55000003 */  bnel       $t0, $zero, .L80184218_ovl3
/* E4C4C 8018420C 8D2B003C */   lw        $t3, 0x3C($t1)
.L80184210_ovl5:
/* E4C50 80184210 AD20003C */  sw         $zero, 0x3C($t1)
.L80184214_ovl3:
/* E4C54 80184214 8D2B003C */  lw         $t3, 0x3C($t1)
.L80184218_ovl3:
/* E4C58 80184218 55600025 */  bnel       $t3, $zero, .L801842B0_ovl3
/* E4C5C 8018421C 8D2D0030 */   lw        $t5, 0x30($t1)
/* E4C60 80184220 0C048596 */  jal        func_80121658
/* E4C64 80184224 00000000 */   nop
/* E4C68 80184228 3C098013 */  lui        $t1, %hi(gKirbyState)
/* E4C6C 8018422C 1040001F */  beqz       $v0, .L801842AC_ovl3
/* E4C70 80184230 2529E7C0 */   addiu     $t1, $t1, %lo(gKirbyState)
/* E4C74 80184234 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* E4C78 80184238 8CE7A7C4 */  lw         $a3, %lo(D_8004A7C4)($a3)
/* E4C7C 8018423C 44805000 */  mtc1       $zero, $f10
/* E4C80 80184240 3C02800E */  lui        $v0, %hi(D_800E6690)
/* E4C84 80184244 8CEC0000 */  lw         $t4, 0x0($a3)
/* E4C88 80184248 24426690 */  addiu      $v0, $v0, %lo(D_800E6690)
/* E4C8C 8018424C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* E4C90 80184250 000C6880 */  sll        $t5, $t4, 2
/* E4C94 80184254 004D7021 */  addu       $t6, $v0, $t5
/* E4C98 80184258 E5CA0000 */  swc1       $f10, 0x0($t6)
/* E4C9C 8018425C 8CE30000 */  lw         $v1, 0x0($a3)
/* E4CA0 80184260 2404013E */  addiu      $a0, $zero, 0x13E
/* E4CA4 80184264 00031880 */  sll        $v1, $v1, 2
/* E4CA8 80184268 00437821 */  addu       $t7, $v0, $v1
/* E4CAC 8018426C C5F00000 */  lwc1       $f16, 0x0($t7)
/* E4CB0 80184270 00230821 */  addu       $at, $at, $v1
/* E4CB4 80184274 E43064D0 */  swc1       $f16, %lo(D_800E64D0)($at)
/* E4CB8 80184278 8CF80000 */  lw         $t8, 0x0($a3)
/* E4CBC 8018427C 3C018019 */  lui        $at, %hi(D_801977B8_ovl3)
/* E4CC0 80184280 C43277B8 */  lwc1       $f18, %lo(D_801977B8_ovl3)($at)
/* E4CC4 80184284 3C01800E */  lui        $at, %hi(D_800E6850)
/* E4CC8 80184288 0018C880 */  sll        $t9, $t8, 2
/* E4CCC 8018428C 00390821 */  addu       $at, $at, $t9
/* E4CD0 80184290 0C029D9E */  jal        play_sound
/* E4CD4 80184294 E4326850 */   swc1      $f18, %lo(D_800E6850)($at)
/* E4CD8 80184298 3C098013 */  lui        $t1, %hi(gKirbyState)
/* E4CDC 8018429C 2529E7C0 */  addiu      $t1, $t1, %lo(gKirbyState)
/* E4CE0 801842A0 8D2B0034 */  lw         $t3, 0x34($t1)
/* E4CE4 801842A4 356C4000 */  ori        $t4, $t3, 0x4000
/* E4CE8 801842A8 AD2C0034 */  sw         $t4, 0x34($t1)
.L801842AC_ovl3:
/* E4CEC 801842AC 8D2D0030 */  lw         $t5, 0x30($t1)
.L801842B0_ovl3:
/* E4CF0 801842B0 11A0000C */  beqz       $t5, .L801842E4_ovl3
/* E4CF4 801842B4 00000000 */   nop
/* E4CF8 801842B8 0C047717 */  jal        func_8011DC5C
/* E4CFC 801842BC 00000000 */   nop
/* E4D00 801842C0 0C04759F */  jal        func_8011D67C
/* E4D04 801842C4 00000000 */   nop
/* E4D08 801842C8 3C098013 */  lui        $t1, %hi(gKirbyState)
/* E4D0C 801842CC 2529E7C0 */  addiu      $t1, $t1, %lo(gKirbyState)
/* E4D10 801842D0 8D2E0034 */  lw         $t6, 0x34($t1)
/* E4D14 801842D4 2401BFFF */  addiu      $at, $zero, -0x4001
/* E4D18 801842D8 01C17824 */  and        $t7, $t6, $at
/* E4D1C 801842DC 10000092 */  b          .L80184528_ovl5
/* E4D20 801842E0 AD2F0034 */   sw        $t7, 0x34($t1)
.L801842E4_ovl3:
/* E4D24 801842E4 3C018019 */  lui        $at, %hi(D_801977BC_ovl3)
/* E4D28 801842E8 C42C77BC */  lwc1       $f12, %lo(D_801977BC_ovl3)($at)
/* E4D2C 801842EC 3C018019 */  lui        $at, %hi(D_801977C0_ovl3)
/* E4D30 801842F0 0C048333 */  jal        func_80120CCC
/* E4D34 801842F4 C42E77C0 */   lwc1      $f14, %lo(D_801977C0_ovl3)($at)
/* E4D38 801842F8 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* E4D3C 801842FC 8CE7A7C4 */  lw         $a3, %lo(D_8004A7C4)($a3)
/* E4D40 80184300 3C18800F */  lui        $t8, %hi(D_800E8920)
/* E4D44 80184304 3C098013 */  lui        $t1, %hi(gKirbyState)
/* E4D48 80184308 8CE30000 */  lw         $v1, 0x0($a3)
/* E4D4C 8018430C 3C048019 */  lui        $a0, %hi(D_80194910_ovl3)
/* E4D50 80184310 3C058013 */  lui        $a1, %hi(D_8012E9B8 + 0x10)
/* E4D54 80184314 00031880 */  sll        $v1, $v1, 2
.L80184318_ovl5:
/* E4D58 80184318 0303C021 */  addu       $t8, $t8, $v1
/* E4D5C 8018431C 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
/* E4D60 80184320 2529E7C0 */  addiu      $t1, $t1, %lo(gKirbyState)
/* E4D64 80184324 24A5E9C8 */  addiu      $a1, $a1, %lo(D_8012E9B8 + 0x10)
/* E4D68 80184328 17000063 */  bnez       $t8, .L801844B8_ovl3
/* E4D6C 8018432C 24844910 */   addiu     $a0, $a0, %lo(D_80194910_ovl3)
/* E4D70 80184330 8D39003C */  lw         $t9, 0x3C($t1)
/* E4D74 80184334 3C01800E */  lui        $at, %hi(D_800E64D0)
/* E4D78 80184338 00230821 */  addu       $at, $at, $v1
/* E4D7C 8018433C 1720005E */  bnez       $t9, .L801844B8_ovl3
/* E4D80 80184340 3C0C800F */   lui       $t4, %hi(D_800E8AE0)
/* E4D84 80184344 C42464D0 */  lwc1       $f4, %lo(D_800E64D0)($at)
/* E4D88 80184348 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
/* E4D8C 8018434C 44813000 */  mtc1       $at, $f6
/* E4D90 80184350 44804000 */  mtc1       $zero, $f8
/* E4D94 80184354 3C0E800F */  lui        $t6, %hi(D_800E98E0)
/* E4D98 80184358 46062002 */  mul.s      $f0, $f4, $f6
/* E4D9C 8018435C 3C014000 */  lui        $at, (0x40000000 >> 16)
/* E4DA0 80184360 01836021 */  addu       $t4, $t4, $v1
/* E4DA4 80184364 01C37021 */  addu       $t6, $t6, $v1
/* E4DA8 80184368 4608003C */  c.lt.s     $f0, $f8
/* E4DAC 8018436C 00000000 */  nop
/* E4DB0 80184370 45020004 */  bc1fl      .L80184384_ovl3
/* E4DB4 80184374 46000086 */   mov.s     $f2, $f0
/* E4DB8 80184378 10000002 */  b          .L80184384_ovl3
/* E4DBC 8018437C 46000087 */   neg.s     $f2, $f0
/* E4DC0 80184380 46000086 */  mov.s      $f2, $f0
.L80184384_ovl3:
/* E4DC4 80184384 912B0007 */  lbu        $t3, 0x7($t1)
/* E4DC8 80184388 51600005 */  beql       $t3, $zero, func_801843A0_ovl5
.L8018438C_ovl5:
/* E4DCC 8018438C 44815000 */   mtc1      $at, $f10
.L80184390_ovl5:
/* E4DD0 80184390 3C018019 */  lui        $at, %hi(D_801977C4_ovl3)
/* E4DD4 80184394 10000011 */  b          .L801843DC_ovl3
/* E4DD8 80184398 C42077C4 */   lwc1      $f0, %lo(D_801977C4_ovl3)($at)
/* E4DDC 8018439C 44815000 */  mtc1       $at, $f10
glabel func_801843A0_ovl5
/* E4DE0 801843A0 3C014040 */  lui        $at, (0x40400000 >> 16)
/* E4DE4 801843A4 460A103C */  c.lt.s     $f2, $f10
/* E4DE8 801843A8 00000000 */  nop
/* E4DEC 801843AC 45020005 */  bc1fl      .L801843C4_ovl3
/* E4DF0 801843B0 46001306 */   mov.s     $f12, $f2
/* E4DF4 801843B4 44816000 */  mtc1       $at, $f12
/* E4DF8 801843B8 10000002 */  b          .L801843C4_ovl3
/* E4DFC 801843BC 00000000 */   nop
/* E4E00 801843C0 46001306 */  mov.s      $f12, $f2
.L801843C4_ovl3:
/* E4E04 801843C4 3C018019 */  lui        $at, %hi(D_801977C8_ovl3)
/* E4E08 801843C8 C43077C8 */  lwc1       $f16, %lo(D_801977C8_ovl3)($at)
/* E4E0C 801843CC 3C014334 */  lui        $at, (0x43340000 >> 16)
/* E4E10 801843D0 44812000 */  mtc1       $at, $f4
/* E4E14 801843D4 46106482 */  mul.s      $f18, $f12, $f16
/* E4E18 801843D8 46049003 */  div.s      $f0, $f18, $f4
.L801843DC_ovl3:
/* E4E1C 801843DC 8D8C8AE0 */  lw         $t4, %lo(D_800E8AE0)($t4)
/* E4E20 801843E0 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* E4E24 801843E4 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
/* E4E28 801843E8 318D0006 */  andi       $t5, $t4, 0x6
/* E4E2C 801843EC 51A00015 */  beql       $t5, $zero, .L80184444_ovl3
/* E4E30 801843F0 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
/* E4E34 801843F4 44813000 */  mtc1       $at, $f6
/* E4E38 801843F8 8DCE98E0 */  lw         $t6, %lo(D_800E98E0)($t6)
/* E4E3C 801843FC 3C018019 */  lui        $at, %hi(D_801977CC_ovl3)
/* E4E40 80184400 46060002 */  mul.s      $f0, $f0, $f6
/* E4E44 80184404 31CF0006 */  andi       $t7, $t6, 0x6
/* E4E48 80184408 51E0000E */  beql       $t7, $zero, .L80184444_ovl3
/* E4E4C 8018440C 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
/* E4E50 80184410 C42877CC */  lwc1       $f8, %lo(D_801977CC_ovl3)($at)
/* E4E54 80184414 3C01800E */  lui        $at, %hi(D_800E6690)
/* E4E58 80184418 00230821 */  addu       $at, $at, $v1
/* E4E5C 8018441C E4286690 */  swc1       $f8, %lo(D_800E6690)($at)
/* E4E60 80184420 8CF80000 */  lw         $t8, 0x0($a3)
/* E4E64 80184424 44805000 */  mtc1       $zero, $f10
/* E4E68 80184428 3C01800E */  lui        $at, %hi(D_800E6850)
/* E4E6C 8018442C 0018C880 */  sll        $t9, $t8, 2
/* E4E70 80184430 00390821 */  addu       $at, $at, $t9
/* E4E74 80184434 E42A6850 */  swc1       $f10, %lo(D_800E6850)($at)
/* E4E78 80184438 8CE30000 */  lw         $v1, 0x0($a3)
/* E4E7C 8018443C 00031880 */  sll        $v1, $v1, 2
/* E4E80 80184440 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
.L80184444_ovl3:
/* E4E84 80184444 44818000 */  mtc1       $at, $f16
/* E4E88 80184448 3C01800E */  lui        $at, %hi(D_800E6A10)
/* E4E8C 8018444C 00230821 */  addu       $at, $at, $v1
/* E4E90 80184450 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
/* E4E94 80184454 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
/* E4E98 80184458 01635821 */  addu       $t3, $t3, $v1
/* E4E9C 8018445C 46128032 */  c.eq.s     $f16, $f18
/* E4EA0 80184460 01A36821 */  addu       $t5, $t5, $v1
/* E4EA4 80184464 4500000B */  bc1f       .L80184494_ovl3
/* E4EA8 80184468 00000000 */   nop
/* E4EAC 8018446C 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
/* E4EB0 80184470 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* E4EB4 80184474 8D620004 */  lw         $v0, 0x4($t3)
/* E4EB8 80184478 C4440038 */  lwc1       $f4, 0x38($v0)
/* E4EBC 8018447C 46002180 */  add.s      $f6, $f4, $f0
/* E4EC0 80184480 E4460038 */  swc1       $f6, 0x38($v0)
/* E4EC4 80184484 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* E4EC8 80184488 8D830000 */  lw         $v1, 0x0($t4)
/* E4ECC 8018448C 1000000A */  b          .L801844B8_ovl3
/* E4ED0 80184490 00031880 */   sll       $v1, $v1, 2
.L80184494_ovl3:
/* E4ED4 80184494 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
/* E4ED8 80184498 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* E4EDC 8018449C 8DA20004 */  lw         $v0, 0x4($t5)
/* E4EE0 801844A0 C4480038 */  lwc1       $f8, 0x38($v0)
/* E4EE4 801844A4 46004281 */  sub.s      $f10, $f8, $f0
/* E4EE8 801844A8 E44A0038 */  swc1       $f10, 0x38($v0)
/* E4EEC 801844AC 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
.L801844B0_ovl5:
/* E4EF0 801844B0 8DC30000 */  lw         $v1, 0x0($t6)
/* E4EF4 801844B4 00031880 */  sll        $v1, $v1, 2
.L801844B8_ovl3:
/* E4EF8 801844B8 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* E4EFC 801844BC 01E37821 */  addu       $t7, $t7, $v1
/* E4F00 801844C0 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
/* E4F04 801844C4 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
/* E4F08 801844C8 44818000 */  mtc1       $at, $f16
.L801844CC_ovl5:
/* E4F0C 801844CC 8DF80028 */  lw         $t8, 0x28($t7)
/* E4F10 801844D0 44809000 */  mtc1       $zero, $f18
/* E4F14 801844D4 3C068019 */  lui        $a2, %hi(D_80194A10_ovl3)
/* E4F18 801844D8 C7000044 */  lwc1       $f0, 0x44($t8)
/* E4F1C 801844DC 90C64A10 */  lbu        $a2, %lo(D_80194A10_ovl3)($a2)
/* E4F20 801844E0 E7B00010 */  swc1       $f16, 0x10($sp)
/* E4F24 801844E4 44070000 */  mfc1       $a3, $f0
/* E4F28 801844E8 E7B20014 */  swc1       $f18, 0x14($sp)
/* E4F2C 801844EC 0C054849 */  jal        func_80152124_ovl4
/* E4F30 801844F0 E7A00048 */   swc1      $f0, 0x48($sp)
.L801844F4_ovl5:
/* E4F34 801844F4 C7A00048 */  lwc1       $f0, 0x48($sp)
/* E4F38 801844F8 3C048019 */  lui        $a0, %hi(D_80191994_ovl3)
/* E4F3C 801844FC 24841994 */  addiu      $a0, $a0, %lo(D_80191994_ovl3)
/* E4F40 80184500 44060000 */  mfc1       $a2, $f0
/* E4F44 80184504 0C05A102 */  jal        func_80168408_ovl3
/* E4F48 80184508 00002825 */   or        $a1, $zero, $zero
/* E4F4C 8018450C 3C048019 */  lui        $a0, %hi(D_80194A10_ovl3)
.L80184510_ovl5:
/* E4F50 80184510 AFA20044 */  sw         $v0, 0x44($sp)
/* E4F54 80184514 24844A10 */  addiu      $a0, $a0, %lo(D_80194A10_ovl3)
/* E4F58 80184518 0C055127 */  jal        func_8015449C_ovl3
/* E4F5C 8018451C 00002825 */   or        $a1, $zero, $zero
/* E4F60 80184520 0C044713 */  jal        func_80111C4C
/* E4F64 80184524 8FA40044 */   lw        $a0, 0x44($sp)
.L80184528_ovl5:
/* E4F68 80184528 8FBF001C */  lw         $ra, 0x1C($sp)
/* E4F6C 8018452C 27BD0050 */  addiu      $sp, $sp, 0x50
/* E4F70 80184530 03E00008 */  jr         $ra
/* E4F74 80184534 00000000 */   nop
