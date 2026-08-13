nonmatching func_8015C00C_ovl3, 0x7E8

glabel func_8015C00C_ovl3
    /* BCA4C 8015C00C 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* BCA50 8015C010 AFB00020 */  sw         $s0, 0x20($sp)
    /* BCA54 8015C014 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* BCA58 8015C018 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* BCA5C 8015C01C 8E080000 */  lw         $t0, 0x0($s0)
    /* BCA60 8015C020 AFBF0024 */  sw         $ra, 0x24($sp)
    /* BCA64 8015C024 AFA40068 */  sw         $a0, 0x68($sp)
    /* BCA68 8015C028 8D030000 */  lw         $v1, 0x0($t0)
    /* BCA6C 8015C02C 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* BCA70 8015C030 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* BCA74 8015C034 00031880 */  sll        $v1, $v1, 2
    /* BCA78 8015C038 00230821 */  addu       $at, $at, $v1
    /* BCA7C 8015C03C C42417D0 */  lwc1       $f4, %lo(D_800E17D0)($at)
    /* BCA80 8015C040 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* BCA84 8015C044 00230821 */  addu       $at, $at, $v1
    /* BCA88 8015C048 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* BCA8C 8015C04C 3C0E800F */  lui        $t6, %hi(D_800EA360)
    /* BCA90 8015C050 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
    /* BCA94 8015C054 8C4F00A0 */  lw         $t7, 0xA0($v0)
    /* BCA98 8015C058 01C37021 */  addu       $t6, $t6, $v1
    /* BCA9C 8015C05C 8DCEA360 */  lw         $t6, %lo(D_800EA360)($t6)
    /* BCAA0 8015C060 15E00033 */  bnez       $t7, .L8015C130_ovl3
    /* BCAA4 8015C064 AFAE0064 */   sw        $t6, 0x64($sp)
    /* BCAA8 8015C068 0C029D9E */  jal        play_sound
    /* BCAAC 8015C06C 24040159 */   addiu     $a0, $zero, 0x159
    /* BCAB0 8015C070 8E180000 */  lw         $t8, 0x0($s0)
    /* BCAB4 8015C074 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* BCAB8 8015C078 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
    /* BCABC 8015C07C 8F030000 */  lw         $v1, 0x0($t8)
    /* BCAC0 8015C080 24040002 */  addiu      $a0, $zero, 0x2
    /* BCAC4 8015C084 24050001 */  addiu      $a1, $zero, 0x1
    /* BCAC8 8015C088 00031880 */  sll        $v1, $v1, 2
    /* BCACC 8015C08C 00230821 */  addu       $at, $at, $v1
    /* BCAD0 8015C090 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* BCAD4 8015C094 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* BCAD8 8015C098 00230821 */  addu       $at, $at, $v1
    /* BCADC 8015C09C C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* BCAE0 8015C0A0 00E33821 */  addu       $a3, $a3, $v1
    /* BCAE4 8015C0A4 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
    /* BCAE8 8015C0A8 24060010 */  addiu      $a2, $zero, 0x10
    /* BCAEC 8015C0AC E7A60010 */  swc1       $f6, 0x10($sp)
    /* BCAF0 8015C0B0 0C029FDD */  jal        func_800A7F74
    /* BCAF4 8015C0B4 E7A80014 */   swc1      $f8, 0x14($sp)
    /* BCAF8 8015C0B8 8FA40064 */  lw         $a0, 0x64($sp)
    /* BCAFC 8015C0BC 8C990000 */  lw         $t9, 0x0($a0)
    /* BCB00 8015C0C0 53200004 */  beql       $t9, $zero, .L8015C0D4_ovl3
    /* BCB04 8015C0C4 8E090000 */   lw        $t1, 0x0($s0)
    /* BCB08 8015C0C8 0C029E1C */  jal        func_800A7870
    /* BCB0C 8015C0CC 24850004 */   addiu     $a1, $a0, 0x4
    /* BCB10 8015C0D0 8E090000 */  lw         $t1, 0x0($s0)
  .L8015C0D4_ovl3:
    /* BCB14 8015C0D4 3C04800F */  lui        $a0, %hi(D_800EA520)
    /* BCB18 8015C0D8 8D220000 */  lw         $v0, 0x0($t1)
    /* BCB1C 8015C0DC 00025080 */  sll        $t2, $v0, 2
    /* BCB20 8015C0E0 008A2021 */  addu       $a0, $a0, $t2
    /* BCB24 8015C0E4 8C84A520 */  lw         $a0, %lo(D_800EA520)($a0)
    /* BCB28 8015C0E8 1080000D */  beqz       $a0, .L8015C120_ovl3
    /* BCB2C 8015C0EC 00000000 */   nop
    /* BCB30 8015C0F0 0C0288B5 */  jal        func_800A22D4
    /* BCB34 8015C0F4 00000000 */   nop
    /* BCB38 8015C0F8 8E0B0000 */  lw         $t3, 0x0($s0)
    /* BCB3C 8015C0FC 3C04800F */  lui        $a0, %hi(D_800EB4E0)
    /* BCB40 8015C100 8D6C0000 */  lw         $t4, 0x0($t3)
    /* BCB44 8015C104 000C6880 */  sll        $t5, $t4, 2
    /* BCB48 8015C108 008D2021 */  addu       $a0, $a0, $t5
    /* BCB4C 8015C10C 0C0288B5 */  jal        func_800A22D4
    /* BCB50 8015C110 8C84B4E0 */   lw        $a0, %lo(D_800EB4E0)($a0)
    /* BCB54 8015C114 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* BCB58 8015C118 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* BCB5C 8015C11C 8DC20000 */  lw         $v0, 0x0($t6)
  .L8015C120_ovl3:
    /* BCB60 8015C120 0C02C640 */  jal        func_800B1900
    /* BCB64 8015C124 3044FFFF */   andi      $a0, $v0, 0xFFFF
    /* BCB68 8015C128 100001AE */  b          .L8015C7E4_ovl3
    /* BCB6C 8015C12C 8FBF0024 */   lw        $ra, 0x24($sp)
  .L8015C130_ovl3:
    /* BCB70 8015C130 8C4F0044 */  lw         $t7, 0x44($v0)
    /* BCB74 8015C134 24010001 */  addiu      $at, $zero, 0x1
    /* BCB78 8015C138 3C19801A */  lui        $t9, %hi(D_801982F8_ovl3)
    /* BCB7C 8015C13C 15E10020 */  bne        $t7, $at, .L8015C1C0_ovl3
    /* BCB80 8015C140 273982F8 */   addiu     $t9, $t9, %lo(D_801982F8_ovl3)
    /* BCB84 8015C144 8FB80064 */  lw         $t8, 0x64($sp)
    /* BCB88 8015C148 8F190000 */  lw         $t9, 0x0($t8)
    /* BCB8C 8015C14C 03002025 */  or         $a0, $t8, $zero
    /* BCB90 8015C150 53200005 */  beql       $t9, $zero, .L8015C168_ovl3
    /* BCB94 8015C154 8D020000 */   lw        $v0, 0x0($t0)
    /* BCB98 8015C158 0C029E1C */  jal        func_800A7870
    /* BCB9C 8015C15C 27050004 */   addiu     $a1, $t8, 0x4
    /* BCBA0 8015C160 8E080000 */  lw         $t0, 0x0($s0)
    /* BCBA4 8015C164 8D020000 */  lw         $v0, 0x0($t0)
  .L8015C168_ovl3:
    /* BCBA8 8015C168 3C04800F */  lui        $a0, %hi(D_800EA520)
    /* BCBAC 8015C16C 00024880 */  sll        $t1, $v0, 2
    /* BCBB0 8015C170 00892021 */  addu       $a0, $a0, $t1
    /* BCBB4 8015C174 8C84A520 */  lw         $a0, %lo(D_800EA520)($a0)
    /* BCBB8 8015C178 1080000D */  beqz       $a0, .L8015C1B0_ovl3
    /* BCBBC 8015C17C 00000000 */   nop
    /* BCBC0 8015C180 0C0287CC */  jal        func_800A1F30
    /* BCBC4 8015C184 00000000 */   nop
    /* BCBC8 8015C188 8E0A0000 */  lw         $t2, 0x0($s0)
    /* BCBCC 8015C18C 3C04800F */  lui        $a0, %hi(D_800EB4E0)
    /* BCBD0 8015C190 8D4B0000 */  lw         $t3, 0x0($t2)
    /* BCBD4 8015C194 000B6080 */  sll        $t4, $t3, 2
    /* BCBD8 8015C198 008C2021 */  addu       $a0, $a0, $t4
    /* BCBDC 8015C19C 0C0287CC */  jal        func_800A1F30
    /* BCBE0 8015C1A0 8C84B4E0 */   lw        $a0, %lo(D_800EB4E0)($a0)
    /* BCBE4 8015C1A4 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* BCBE8 8015C1A8 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* BCBEC 8015C1AC 8DA20000 */  lw         $v0, 0x0($t5)
  .L8015C1B0_ovl3:
    /* BCBF0 8015C1B0 0C02C640 */  jal        func_800B1900
    /* BCBF4 8015C1B4 3044FFFF */   andi      $a0, $v0, 0xFFFF
    /* BCBF8 8015C1B8 1000018A */  b          .L8015C7E4_ovl3
    /* BCBFC 8015C1BC 8FBF0024 */   lw        $ra, 0x24($sp)
  .L8015C1C0_ovl3:
    /* BCC00 8015C1C0 8D020000 */  lw         $v0, 0x0($t0)
    /* BCC04 8015C1C4 3C058019 */  lui        $a1, %hi(D_8019356C_ovl3)
    /* BCC08 8015C1C8 24A5356C */  addiu      $a1, $a1, %lo(D_8019356C_ovl3)
    /* BCC0C 8015C1CC 00027140 */  sll        $t6, $v0, 5
    /* BCC10 8015C1D0 25CFFF80 */  addiu      $t7, $t6, -0x80
    /* BCC14 8015C1D4 01F92021 */  addu       $a0, $t7, $t9
    /* BCC18 8015C1D8 00003025 */  or         $a2, $zero, $zero
    /* BCC1C 8015C1DC 0C055754 */  jal        func_80155D50_ovl3
    /* BCC20 8015C1E0 00403825 */   or        $a3, $v0, $zero
    /* BCC24 8015C1E4 8E180000 */  lw         $t8, 0x0($s0)
    /* BCC28 8015C1E8 3C0C8019 */  lui        $t4, %hi(D_80197F60_ovl3)
    /* BCC2C 8015C1EC 258C7F60 */  addiu      $t4, $t4, %lo(D_80197F60_ovl3)
    /* BCC30 8015C1F0 8F090000 */  lw         $t1, 0x0($t8)
    /* BCC34 8015C1F4 00095080 */  sll        $t2, $t1, 2
    /* BCC38 8015C1F8 01495023 */  subu       $t2, $t2, $t1
    /* BCC3C 8015C1FC 000A50C0 */  sll        $t2, $t2, 3
    /* BCC40 8015C200 01495023 */  subu       $t2, $t2, $t1
    /* BCC44 8015C204 000A5080 */  sll        $t2, $t2, 2
    /* BCC48 8015C208 254BFE90 */  addiu      $t3, $t2, -0x170
    /* BCC4C 8015C20C 0C055599 */  jal        func_80155664_ovl3
    /* BCC50 8015C210 016C2021 */   addu      $a0, $t3, $t4
    /* BCC54 8015C214 8E080000 */  lw         $t0, 0x0($s0)
    /* BCC58 8015C218 3C01800F */  lui        $at, %hi(D_800E8920)
    /* BCC5C 8015C21C 27A40058 */  addiu      $a0, $sp, 0x58
    /* BCC60 8015C220 8D0D0000 */  lw         $t5, 0x0($t0)
    /* BCC64 8015C224 3C0541A0 */  lui        $a1, (0x41A00000 >> 16)
    /* BCC68 8015C228 24060006 */  addiu      $a2, $zero, 0x6
    /* BCC6C 8015C22C 000D7080 */  sll        $t6, $t5, 2
    /* BCC70 8015C230 002E0821 */  addu       $at, $at, $t6
    /* BCC74 8015C234 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* BCC78 8015C238 8D0F0000 */  lw         $t7, 0x0($t0)
    /* BCC7C 8015C23C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* BCC80 8015C240 000FC880 */  sll        $t9, $t7, 2
    /* BCC84 8015C244 00390821 */  addu       $at, $at, $t9
    /* BCC88 8015C248 C42A25D0 */  lwc1       $f10, %lo(gEntitiesNextPosXArray)($at)
    /* BCC8C 8015C24C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* BCC90 8015C250 E7AA0058 */  swc1       $f10, 0x58($sp)
    /* BCC94 8015C254 8D180000 */  lw         $t8, 0x0($t0)
    /* BCC98 8015C258 00184880 */  sll        $t1, $t8, 2
    /* BCC9C 8015C25C 00290821 */  addu       $at, $at, $t1
    /* BCCA0 8015C260 C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
    /* BCCA4 8015C264 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* BCCA8 8015C268 E7B0005C */  swc1       $f16, 0x5C($sp)
    /* BCCAC 8015C26C 8D0A0000 */  lw         $t2, 0x0($t0)
    /* BCCB0 8015C270 000A5880 */  sll        $t3, $t2, 2
    /* BCCB4 8015C274 002B0821 */  addu       $at, $at, $t3
    /* BCCB8 8015C278 C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
    /* BCCBC 8015C27C 0C05560E */  jal        func_80155838_ovl3
    /* BCCC0 8015C280 E7B20060 */   swc1      $f18, 0x60($sp)
    /* BCCC4 8015C284 8E0C0000 */  lw         $t4, 0x0($s0)
    /* BCCC8 8015C288 AFA20054 */  sw         $v0, 0x54($sp)
    /* BCCCC 8015C28C 3C0F800F */  lui        $t7, %hi(D_800E8AE0)
    /* BCCD0 8015C290 8D8D0000 */  lw         $t5, 0x0($t4)
    /* BCCD4 8015C294 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* BCCD8 8015C298 000D7080 */  sll        $t6, $t5, 2
    /* BCCDC 8015C29C 01EE7821 */  addu       $t7, $t7, $t6
    /* BCCE0 8015C2A0 8DEF8AE0 */  lw         $t7, %lo(D_800E8AE0)($t7)
    /* BCCE4 8015C2A4 31F90004 */  andi       $t9, $t7, 0x4
    /* BCCE8 8015C2A8 5320000E */  beql       $t9, $zero, .L8015C2E4_ovl3
    /* BCCEC 8015C2AC 44816000 */   mtc1      $at, $f12
    /* BCCF0 8015C2B0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* BCCF4 8015C2B4 44816000 */  mtc1       $at, $f12
    /* BCCF8 8015C2B8 0C02BB30 */  jal        func_800AECC0
    /* BCCFC 8015C2BC 00000000 */   nop
    /* BCD00 8015C2C0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* BCD04 8015C2C4 44816000 */  mtc1       $at, $f12
    /* BCD08 8015C2C8 0C02BB48 */  jal        func_800AED20
    /* BCD0C 8015C2CC 00000000 */   nop
    /* BCD10 8015C2D0 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* BCD14 8015C2D4 44811000 */  mtc1       $at, $f2
    /* BCD18 8015C2D8 1000000C */  b          .L8015C30C_ovl3
    /* BCD1C 8015C2DC 8E080000 */   lw        $t0, 0x0($s0)
    /* BCD20 8015C2E0 44816000 */  mtc1       $at, $f12
  .L8015C2E4_ovl3:
    /* BCD24 8015C2E4 0C02BB30 */  jal        func_800AECC0
    /* BCD28 8015C2E8 00000000 */   nop
    /* BCD2C 8015C2EC 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* BCD30 8015C2F0 44816000 */  mtc1       $at, $f12
    /* BCD34 8015C2F4 0C02BB48 */  jal        func_800AED20
    /* BCD38 8015C2F8 00000000 */   nop
    /* BCD3C 8015C2FC 3C014120 */  lui        $at, (0x41200000 >> 16)
    /* BCD40 8015C300 44811000 */  mtc1       $at, $f2
    /* BCD44 8015C304 00000000 */  nop
    /* BCD48 8015C308 8E080000 */  lw         $t0, 0x0($s0)
  .L8015C30C_ovl3:
    /* BCD4C 8015C30C 3C04800F */  lui        $a0, %hi(D_800E98E0)
    /* BCD50 8015C310 248498E0 */  addiu      $a0, $a0, %lo(D_800E98E0)
    /* BCD54 8015C314 8D020000 */  lw         $v0, 0x0($t0)
    /* BCD58 8015C318 3C05800E */  lui        $a1, %hi(D_800E0D50)
    /* BCD5C 8015C31C 00021880 */  sll        $v1, $v0, 2
    /* BCD60 8015C320 0083C021 */  addu       $t8, $a0, $v1
    /* BCD64 8015C324 8F090000 */  lw         $t1, 0x0($t8)
    /* BCD68 8015C328 00A32821 */  addu       $a1, $a1, $v1
    /* BCD6C 8015C32C 5120005B */  beql       $t1, $zero, .L8015C49C_ovl3
    /* BCD70 8015C330 44802000 */   mtc1      $zero, $f4
    /* BCD74 8015C334 00402025 */  or         $a0, $v0, $zero
    /* BCD78 8015C338 8CA50D50 */  lw         $a1, %lo(D_800E0D50)($a1)
    /* BCD7C 8015C33C 0C03E60A */  jal        func_800F9828
    /* BCD80 8015C340 E7A20050 */   swc1      $f2, 0x50($sp)
    /* BCD84 8015C344 8E0A0000 */  lw         $t2, 0x0($s0)
    /* BCD88 8015C348 3C0B800E */  lui        $t3, %hi(D_800E0D50)
    /* BCD8C 8015C34C 3C02800E */  lui        $v0, %hi(gEntitiesNextPosYArray)
    /* BCD90 8015C350 8D430000 */  lw         $v1, 0x0($t2)
    /* BCD94 8015C354 24422790 */  addiu      $v0, $v0, %lo(gEntitiesNextPosYArray)
    /* BCD98 8015C358 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* BCD9C 8015C35C 00031880 */  sll        $v1, $v1, 2
    /* BCDA0 8015C360 01635821 */  addu       $t3, $t3, $v1
    /* BCDA4 8015C364 8D6B0D50 */  lw         $t3, %lo(D_800E0D50)($t3)
    /* BCDA8 8015C368 00437021 */  addu       $t6, $v0, $v1
    /* BCDAC 8015C36C C5C60000 */  lwc1       $f6, 0x0($t6)
    /* BCDB0 8015C370 000B6080 */  sll        $t4, $t3, 2
    /* BCDB4 8015C374 004C6821 */  addu       $t5, $v0, $t4
    /* BCDB8 8015C378 C5A40000 */  lwc1       $f4, 0x0($t5)
    /* BCDBC 8015C37C 44815000 */  mtc1       $at, $f10
    /* BCDC0 8015C380 46000386 */  mov.s      $f14, $f0
    /* BCDC4 8015C384 46062201 */  sub.s      $f8, $f4, $f6
    /* BCDC8 8015C388 0C0061C3 */  jal        atan2f
    /* BCDCC 8015C38C 460A4300 */   add.s     $f12, $f8, $f10
    /* BCDD0 8015C390 E7A00044 */  swc1       $f0, 0x44($sp)
    /* BCDD4 8015C394 0C00B5B8 */  jal        sinf
    /* BCDD8 8015C398 46000306 */   mov.s     $f12, $f0
    /* BCDDC 8015C39C C7A20050 */  lwc1       $f2, 0x50($sp)
    /* BCDE0 8015C3A0 8E080000 */  lw         $t0, 0x0($s0)
    /* BCDE4 8015C3A4 3C01800E */  lui        $at, %hi(D_800E3210)
    /* BCDE8 8015C3A8 46020402 */  mul.s      $f16, $f0, $f2
    /* BCDEC 8015C3AC 8D0F0000 */  lw         $t7, 0x0($t0)
    /* BCDF0 8015C3B0 44802000 */  mtc1       $zero, $f4
    /* BCDF4 8015C3B4 44809000 */  mtc1       $zero, $f18
    /* BCDF8 8015C3B8 000FC880 */  sll        $t9, $t7, 2
    /* BCDFC 8015C3BC 00390821 */  addu       $at, $at, $t9
    /* BCE00 8015C3C0 4604103C */  c.lt.s     $f2, $f4
    /* BCE04 8015C3C4 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
    /* BCE08 8015C3C8 8D180000 */  lw         $t8, 0x0($t0)
    /* BCE0C 8015C3CC 3C01800E */  lui        $at, %hi(D_800E3750)
    /* BCE10 8015C3D0 00184880 */  sll        $t1, $t8, 2
    /* BCE14 8015C3D4 00290821 */  addu       $at, $at, $t1
    /* BCE18 8015C3D8 45000008 */  bc1f       .L8015C3FC_ovl3
    /* BCE1C 8015C3DC E4323750 */   swc1      $f18, %lo(D_800E3750)($at)
    /* BCE20 8015C3E0 8D0A0000 */  lw         $t2, 0x0($t0)
    /* BCE24 8015C3E4 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* BCE28 8015C3E8 46001187 */  neg.s      $f6, $f2
    /* BCE2C 8015C3EC 000A5880 */  sll        $t3, $t2, 2
    /* BCE30 8015C3F0 002B0821 */  addu       $at, $at, $t3
    /* BCE34 8015C3F4 10000006 */  b          .L8015C410_ovl3
    /* BCE38 8015C3F8 E4263C90 */   swc1      $f6, %lo(D_800E3C90)($at)
  .L8015C3FC_ovl3:
    /* BCE3C 8015C3FC 8D0C0000 */  lw         $t4, 0x0($t0)
    /* BCE40 8015C400 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* BCE44 8015C404 000C6880 */  sll        $t5, $t4, 2
    /* BCE48 8015C408 002D0821 */  addu       $at, $at, $t5
    /* BCE4C 8015C40C E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
  .L8015C410_ovl3:
    /* BCE50 8015C410 C7AC0044 */  lwc1       $f12, 0x44($sp)
    /* BCE54 8015C414 0C00D604 */  jal        cosf
    /* BCE58 8015C418 E7A20050 */   swc1      $f2, 0x50($sp)
    /* BCE5C 8015C41C C7A20050 */  lwc1       $f2, 0x50($sp)
    /* BCE60 8015C420 8E080000 */  lw         $t0, 0x0($s0)
    /* BCE64 8015C424 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* BCE68 8015C428 46020202 */  mul.s      $f8, $f0, $f2
    /* BCE6C 8015C42C 8D0E0000 */  lw         $t6, 0x0($t0)
    /* BCE70 8015C430 44808000 */  mtc1       $zero, $f16
    /* BCE74 8015C434 44805000 */  mtc1       $zero, $f10
    /* BCE78 8015C438 000E7880 */  sll        $t7, $t6, 2
    /* BCE7C 8015C43C 002F0821 */  addu       $at, $at, $t7
    /* BCE80 8015C440 4610103C */  c.lt.s     $f2, $f16
    /* BCE84 8015C444 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
    /* BCE88 8015C448 8D190000 */  lw         $t9, 0x0($t0)
    /* BCE8C 8015C44C 3C01800E */  lui        $at, %hi(D_800E6690)
    /* BCE90 8015C450 0019C080 */  sll        $t8, $t9, 2
    /* BCE94 8015C454 00380821 */  addu       $at, $at, $t8
    /* BCE98 8015C458 45000008 */  bc1f       .L8015C47C_ovl3
    /* BCE9C 8015C45C E42A6690 */   swc1      $f10, %lo(D_800E6690)($at)
    /* BCEA0 8015C460 8D090000 */  lw         $t1, 0x0($t0)
    /* BCEA4 8015C464 3C01800E */  lui        $at, %hi(D_800E6850)
    /* BCEA8 8015C468 46001487 */  neg.s      $f18, $f2
    /* BCEAC 8015C46C 00095080 */  sll        $t2, $t1, 2
    /* BCEB0 8015C470 002A0821 */  addu       $at, $at, $t2
    /* BCEB4 8015C474 10000006 */  b          .L8015C490_ovl3
    /* BCEB8 8015C478 E4326850 */   swc1      $f18, %lo(D_800E6850)($at)
  .L8015C47C_ovl3:
    /* BCEBC 8015C47C 8D0B0000 */  lw         $t3, 0x0($t0)
    /* BCEC0 8015C480 3C01800E */  lui        $at, %hi(D_800E6850)
    /* BCEC4 8015C484 000B6080 */  sll        $t4, $t3, 2
    /* BCEC8 8015C488 002C0821 */  addu       $at, $at, $t4
    /* BCECC 8015C48C E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
  .L8015C490_ovl3:
    /* BCED0 8015C490 10000032 */  b          .L8015C55C_ovl3
    /* BCED4 8015C494 8D020000 */   lw        $v0, 0x0($t0)
    /* BCED8 8015C498 44802000 */  mtc1       $zero, $f4
  .L8015C49C_ovl3:
    /* BCEDC 8015C49C 3C01800E */  lui        $at, %hi(D_800E6850)
    /* BCEE0 8015C4A0 00230821 */  addu       $at, $at, $v1
    /* BCEE4 8015C4A4 4604103C */  c.lt.s     $f2, $f4
    /* BCEE8 8015C4A8 00000000 */  nop
    /* BCEEC 8015C4AC 45000006 */  bc1f       .L8015C4C8_ovl3
    /* BCEF0 8015C4B0 00000000 */   nop
    /* BCEF4 8015C4B4 3C01800E */  lui        $at, %hi(D_800E6850)
    /* BCEF8 8015C4B8 46001187 */  neg.s      $f6, $f2
    /* BCEFC 8015C4BC 00230821 */  addu       $at, $at, $v1
    /* BCF00 8015C4C0 10000002 */  b          .L8015C4CC_ovl3
    /* BCF04 8015C4C4 E4266850 */   swc1      $f6, %lo(D_800E6850)($at)
  .L8015C4C8_ovl3:
    /* BCF08 8015C4C8 E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
  .L8015C4CC_ovl3:
    /* BCF0C 8015C4CC 8D020000 */  lw         $v0, 0x0($t0)
    /* BCF10 8015C4D0 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* BCF14 8015C4D4 00021880 */  sll        $v1, $v0, 2
    /* BCF18 8015C4D8 00230821 */  addu       $at, $at, $v1
    /* BCF1C 8015C4DC C4206A10 */  lwc1       $f0, %lo(D_800E6A10)($at)
    /* BCF20 8015C4E0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* BCF24 8015C4E4 44814000 */  mtc1       $at, $f8
    /* BCF28 8015C4E8 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* BCF2C 8015C4EC 00230821 */  addu       $at, $at, $v1
    /* BCF30 8015C4F0 46004032 */  c.eq.s     $f8, $f0
    /* BCF34 8015C4F4 00000000 */  nop
    /* BCF38 8015C4F8 45020008 */  bc1fl      .L8015C51C_ovl3
    /* BCF3C 8015C4FC 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
    /* BCF40 8015C500 C42A64D0 */  lwc1       $f10, %lo(D_800E64D0)($at)
    /* BCF44 8015C504 44808000 */  mtc1       $zero, $f16
    /* BCF48 8015C508 00000000 */  nop
    /* BCF4C 8015C50C 4610503C */  c.lt.s     $f10, $f16
    /* BCF50 8015C510 00000000 */  nop
    /* BCF54 8015C514 4501000D */  bc1t       .L8015C54C_ovl3
    /* BCF58 8015C518 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
  .L8015C51C_ovl3:
    /* BCF5C 8015C51C 44819000 */  mtc1       $at, $f18
    /* BCF60 8015C520 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* BCF64 8015C524 00230821 */  addu       $at, $at, $v1
    /* BCF68 8015C528 46009032 */  c.eq.s     $f18, $f0
    /* BCF6C 8015C52C 00000000 */  nop
    /* BCF70 8015C530 4500000A */  bc1f       .L8015C55C_ovl3
    /* BCF74 8015C534 00000000 */   nop
    /* BCF78 8015C538 44802000 */  mtc1       $zero, $f4
    /* BCF7C 8015C53C C42664D0 */  lwc1       $f6, %lo(D_800E64D0)($at)
    /* BCF80 8015C540 4606203C */  c.lt.s     $f4, $f6
    /* BCF84 8015C544 00000000 */  nop
    /* BCF88 8015C548 45000004 */  bc1f       .L8015C55C_ovl3
  .L8015C54C_ovl3:
    /* BCF8C 8015C54C 240D0001 */   addiu     $t5, $zero, 0x1
    /* BCF90 8015C550 00837021 */  addu       $t6, $a0, $v1
    /* BCF94 8015C554 ADCD0000 */  sw         $t5, 0x0($t6)
    /* BCF98 8015C558 8D020000 */  lw         $v0, 0x0($t0)
  .L8015C55C_ovl3:
    /* BCF9C 8015C55C 3C05801A */  lui        $a1, %hi(D_80198830_ovl3)
    /* BCFA0 8015C560 24A58830 */  addiu      $a1, $a1, %lo(D_80198830_ovl3)
    /* BCFA4 8015C564 8CAF0004 */  lw         $t7, 0x4($a1)
    /* BCFA8 8015C568 3C04800F */  lui        $a0, %hi(D_800E9560)
    /* BCFAC 8015C56C 24849560 */  addiu      $a0, $a0, %lo(D_800E9560)
    /* BCFB0 8015C570 15E0000E */  bnez       $t7, .L8015C5AC_ovl3
    /* BCFB4 8015C574 0002C880 */   sll       $t9, $v0, 2
    /* BCFB8 8015C578 00991821 */  addu       $v1, $a0, $t9
    /* BCFBC 8015C57C 8C780000 */  lw         $t8, 0x0($v1)
    /* BCFC0 8015C580 240D0001 */  addiu      $t5, $zero, 0x1
    /* BCFC4 8015C584 2709FFFF */  addiu      $t1, $t8, -0x1
    /* BCFC8 8015C588 AC690000 */  sw         $t1, 0x0($v1)
    /* BCFCC 8015C58C 8D020000 */  lw         $v0, 0x0($t0)
    /* BCFD0 8015C590 00025080 */  sll        $t2, $v0, 2
    /* BCFD4 8015C594 008A5821 */  addu       $t3, $a0, $t2
    /* BCFD8 8015C598 8D6C0000 */  lw         $t4, 0x0($t3)
    /* BCFDC 8015C59C 15800003 */  bnez       $t4, .L8015C5AC_ovl3
    /* BCFE0 8015C5A0 00000000 */   nop
    /* BCFE4 8015C5A4 ACAD0004 */  sw         $t5, 0x4($a1)
    /* BCFE8 8015C5A8 8D020000 */  lw         $v0, 0x0($t0)
  .L8015C5AC_ovl3:
    /* BCFEC 8015C5AC 3C048019 */  lui        $a0, %hi(D_80190BB0_ovl3)
    /* BCFF0 8015C5B0 24840BB0 */  addiu      $a0, $a0, %lo(D_80190BB0_ovl3)
    /* BCFF4 8015C5B4 0C0445EF */  jal        func_801117BC
    /* BCFF8 8015C5B8 00402825 */   or        $a1, $v0, $zero
    /* BCFFC 8015C5BC 0C044713 */  jal        func_80111C4C
    /* BD000 8015C5C0 00402025 */   or        $a0, $v0, $zero
    /* BD004 8015C5C4 8FAE0054 */  lw         $t6, 0x54($sp)
    /* BD008 8015C5C8 8FA40064 */  lw         $a0, 0x64($sp)
    /* BD00C 8015C5CC 8FA50064 */  lw         $a1, 0x64($sp)
    /* BD010 8015C5D0 55C0002C */  bnel       $t6, $zero, .L8015C684_ovl3
    /* BD014 8015C5D4 8CAE0000 */   lw        $t6, 0x0($a1)
    /* BD018 8015C5D8 8C8F0000 */  lw         $t7, 0x0($a0)
    /* BD01C 8015C5DC 51E00004 */  beql       $t7, $zero, .L8015C5F0_ovl3
    /* BD020 8015C5E0 8E190000 */   lw        $t9, 0x0($s0)
    /* BD024 8015C5E4 0C029E1C */  jal        func_800A7870
    /* BD028 8015C5E8 24850004 */   addiu     $a1, $a0, 0x4
    /* BD02C 8015C5EC 8E190000 */  lw         $t9, 0x0($s0)
  .L8015C5F0_ovl3:
    /* BD030 8015C5F0 3C04800F */  lui        $a0, %hi(D_800EA520)
    /* BD034 8015C5F4 8F230000 */  lw         $v1, 0x0($t9)
    /* BD038 8015C5F8 00031880 */  sll        $v1, $v1, 2
    /* BD03C 8015C5FC 00832021 */  addu       $a0, $a0, $v1
    /* BD040 8015C600 8C84A520 */  lw         $a0, %lo(D_800EA520)($a0)
    /* BD044 8015C604 10800045 */  beqz       $a0, .L8015C71C_ovl3
    /* BD048 8015C608 00000000 */   nop
    /* BD04C 8015C60C 0C0287CC */  jal        func_800A1F30
    /* BD050 8015C610 00000000 */   nop
    /* BD054 8015C614 8E180000 */  lw         $t8, 0x0($s0)
    /* BD058 8015C618 3C04800F */  lui        $a0, %hi(D_800EB4E0)
    /* BD05C 8015C61C 8F090000 */  lw         $t1, 0x0($t8)
    /* BD060 8015C620 00095080 */  sll        $t2, $t1, 2
    /* BD064 8015C624 008A2021 */  addu       $a0, $a0, $t2
    /* BD068 8015C628 0C0287CC */  jal        func_800A1F30
    /* BD06C 8015C62C 8C84B4E0 */   lw        $a0, %lo(D_800EB4E0)($a0)
    /* BD070 8015C630 8E080000 */  lw         $t0, 0x0($s0)
    /* BD074 8015C634 3C01800F */  lui        $at, %hi(D_800EB4E0)
    /* BD078 8015C638 3C0D800F */  lui        $t5, %hi(D_800EB4E0)
    /* BD07C 8015C63C 8D0B0000 */  lw         $t3, 0x0($t0)
    /* BD080 8015C640 3C04800F */  lui        $a0, %hi(D_800EA520)
    /* BD084 8015C644 000B6080 */  sll        $t4, $t3, 2
    /* BD088 8015C648 002C0821 */  addu       $at, $at, $t4
    /* BD08C 8015C64C AC20B4E0 */  sw         $zero, %lo(D_800EB4E0)($at)
    /* BD090 8015C650 8D030000 */  lw         $v1, 0x0($t0)
    /* BD094 8015C654 3C01800F */  lui        $at, %hi(D_800EA520)
    /* BD098 8015C658 00031880 */  sll        $v1, $v1, 2
    /* BD09C 8015C65C 01A36821 */  addu       $t5, $t5, $v1
    /* BD0A0 8015C660 8DADB4E0 */  lw         $t5, %lo(D_800EB4E0)($t5)
    /* BD0A4 8015C664 00230821 */  addu       $at, $at, $v1
    /* BD0A8 8015C668 AC2DA520 */  sw         $t5, %lo(D_800EA520)($at)
    /* BD0AC 8015C66C 8D030000 */  lw         $v1, 0x0($t0)
    /* BD0B0 8015C670 00031880 */  sll        $v1, $v1, 2
    /* BD0B4 8015C674 00832021 */  addu       $a0, $a0, $v1
    /* BD0B8 8015C678 10000028 */  b          .L8015C71C_ovl3
    /* BD0BC 8015C67C 8C84A520 */   lw        $a0, %lo(D_800EA520)($a0)
    /* BD0C0 8015C680 8CAE0000 */  lw         $t6, 0x0($a1)
  .L8015C684_ovl3:
    /* BD0C4 8015C684 2404022D */  addiu      $a0, $zero, 0x22D
    /* BD0C8 8015C688 55C00004 */  bnel       $t6, $zero, .L8015C69C_ovl3
    /* BD0CC 8015C68C 8E0F0000 */   lw        $t7, 0x0($s0)
    /* BD0D0 8015C690 0C029DFA */  jal        func_800A77E8
    /* BD0D4 8015C694 24A60004 */   addiu     $a2, $a1, 0x4
    /* BD0D8 8015C698 8E0F0000 */  lw         $t7, 0x0($s0)
  .L8015C69C_ovl3:
    /* BD0DC 8015C69C 3C04800F */  lui        $a0, %hi(D_800EA520)
    /* BD0E0 8015C6A0 24050001 */  addiu      $a1, $zero, 0x1
    /* BD0E4 8015C6A4 8DE30000 */  lw         $v1, 0x0($t7)
    /* BD0E8 8015C6A8 24060050 */  addiu      $a2, $zero, 0x50
    /* BD0EC 8015C6AC 00031880 */  sll        $v1, $v1, 2
    /* BD0F0 8015C6B0 00832021 */  addu       $a0, $a0, $v1
    /* BD0F4 8015C6B4 8C84A520 */  lw         $a0, %lo(D_800EA520)($a0)
    /* BD0F8 8015C6B8 14800018 */  bnez       $a0, .L8015C71C_ovl3
    /* BD0FC 8015C6BC 00000000 */   nop
    /* BD100 8015C6C0 0C02A08D */  jal        func_800A8234
    /* BD104 8015C6C4 24040002 */   addiu     $a0, $zero, 0x2
    /* BD108 8015C6C8 8E190000 */  lw         $t9, 0x0($s0)
    /* BD10C 8015C6CC 3C01800F */  lui        $at, %hi(D_800EA520)
    /* BD110 8015C6D0 24040001 */  addiu      $a0, $zero, 0x1
    /* BD114 8015C6D4 8F380000 */  lw         $t8, 0x0($t9)
    /* BD118 8015C6D8 24050001 */  addiu      $a1, $zero, 0x1
    /* BD11C 8015C6DC 24060051 */  addiu      $a2, $zero, 0x51
    /* BD120 8015C6E0 00184880 */  sll        $t1, $t8, 2
    /* BD124 8015C6E4 00290821 */  addu       $at, $at, $t1
    /* BD128 8015C6E8 0C02A08D */  jal        func_800A8234
    /* BD12C 8015C6EC AC22A520 */   sw        $v0, %lo(D_800EA520)($at)
    /* BD130 8015C6F0 8E080000 */  lw         $t0, 0x0($s0)
    /* BD134 8015C6F4 3C01800F */  lui        $at, %hi(D_800EB4E0)
    /* BD138 8015C6F8 3C04800F */  lui        $a0, %hi(D_800EA520)
    /* BD13C 8015C6FC 8D0A0000 */  lw         $t2, 0x0($t0)
    /* BD140 8015C700 000A5880 */  sll        $t3, $t2, 2
    /* BD144 8015C704 002B0821 */  addu       $at, $at, $t3
    /* BD148 8015C708 AC22B4E0 */  sw         $v0, %lo(D_800EB4E0)($at)
    /* BD14C 8015C70C 8D030000 */  lw         $v1, 0x0($t0)
    /* BD150 8015C710 00031880 */  sll        $v1, $v1, 2
    /* BD154 8015C714 00832021 */  addu       $a0, $a0, $v1
    /* BD158 8015C718 8C84A520 */  lw         $a0, %lo(D_800EA520)($a0)
  .L8015C71C_ovl3:
    /* BD15C 8015C71C 10800030 */  beqz       $a0, .L8015C7E0_ovl3
    /* BD160 8015C720 3C05800E */   lui       $a1, %hi(gEntitiesNextPosXArray)
    /* BD164 8015C724 24A525D0 */  addiu      $a1, $a1, %lo(gEntitiesNextPosXArray)
    /* BD168 8015C728 00A36021 */  addu       $t4, $a1, $v1
    /* BD16C 8015C72C C5880000 */  lwc1       $f8, 0x0($t4)
    /* BD170 8015C730 8C8D004C */  lw         $t5, 0x4C($a0)
    /* BD174 8015C734 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* BD178 8015C738 3C06800E */  lui        $a2, %hi(gEntitiesNextPosZArray)
    /* BD17C 8015C73C E5A80004 */  swc1       $f8, 0x4($t5)
    /* BD180 8015C740 8E0E0000 */  lw         $t6, 0x0($s0)
    /* BD184 8015C744 8C98004C */  lw         $t8, 0x4C($a0)
    /* BD188 8015C748 24C62950 */  addiu      $a2, $a2, %lo(gEntitiesNextPosZArray)
    /* BD18C 8015C74C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* BD190 8015C750 3C02800F */  lui        $v0, %hi(D_800EB4E0)
    /* BD194 8015C754 000FC880 */  sll        $t9, $t7, 2
    /* BD198 8015C758 00390821 */  addu       $at, $at, $t9
    /* BD19C 8015C75C C42A2790 */  lwc1       $f10, %lo(gEntitiesNextPosYArray)($at)
    /* BD1A0 8015C760 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* BD1A4 8015C764 E70A0008 */  swc1       $f10, 0x8($t8)
    /* BD1A8 8015C768 8E090000 */  lw         $t1, 0x0($s0)
    /* BD1AC 8015C76C 8C8D004C */  lw         $t5, 0x4C($a0)
    /* BD1B0 8015C770 8D2A0000 */  lw         $t2, 0x0($t1)
    /* BD1B4 8015C774 000A5880 */  sll        $t3, $t2, 2
    /* BD1B8 8015C778 00CB6021 */  addu       $t4, $a2, $t3
    /* BD1BC 8015C77C C5900000 */  lwc1       $f16, 0x0($t4)
    /* BD1C0 8015C780 E5B0000C */  swc1       $f16, 0xC($t5)
    /* BD1C4 8015C784 8E0E0000 */  lw         $t6, 0x0($s0)
    /* BD1C8 8015C788 8DC30000 */  lw         $v1, 0x0($t6)
    /* BD1CC 8015C78C 00031880 */  sll        $v1, $v1, 2
    /* BD1D0 8015C790 00431021 */  addu       $v0, $v0, $v1
    /* BD1D4 8015C794 8C42B4E0 */  lw         $v0, %lo(D_800EB4E0)($v0)
    /* BD1D8 8015C798 00A37821 */  addu       $t7, $a1, $v1
    /* BD1DC 8015C79C C5F20000 */  lwc1       $f18, 0x0($t7)
    /* BD1E0 8015C7A0 8C59004C */  lw         $t9, 0x4C($v0)
    /* BD1E4 8015C7A4 E7320004 */  swc1       $f18, 0x4($t9)
    /* BD1E8 8015C7A8 8E180000 */  lw         $t8, 0x0($s0)
    /* BD1EC 8015C7AC 8C4B004C */  lw         $t3, 0x4C($v0)
    /* BD1F0 8015C7B0 8F090000 */  lw         $t1, 0x0($t8)
    /* BD1F4 8015C7B4 00095080 */  sll        $t2, $t1, 2
    /* BD1F8 8015C7B8 002A0821 */  addu       $at, $at, $t2
    /* BD1FC 8015C7BC C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* BD200 8015C7C0 E5640008 */  swc1       $f4, 0x8($t3)
    /* BD204 8015C7C4 8E0C0000 */  lw         $t4, 0x0($s0)
    /* BD208 8015C7C8 8C59004C */  lw         $t9, 0x4C($v0)
    /* BD20C 8015C7CC 8D8D0000 */  lw         $t5, 0x0($t4)
    /* BD210 8015C7D0 000D7080 */  sll        $t6, $t5, 2
    /* BD214 8015C7D4 00CE7821 */  addu       $t7, $a2, $t6
    /* BD218 8015C7D8 C5E60000 */  lwc1       $f6, 0x0($t7)
    /* BD21C 8015C7DC E726000C */  swc1       $f6, 0xC($t9)
  .L8015C7E0_ovl3:
    /* BD220 8015C7E0 8FBF0024 */  lw         $ra, 0x24($sp)
  .L8015C7E4_ovl3:
    /* BD224 8015C7E4 8FB00020 */  lw         $s0, 0x20($sp)
    /* BD228 8015C7E8 27BD0068 */  addiu      $sp, $sp, 0x68
    /* BD22C 8015C7EC 03E00008 */  jr         $ra
    /* BD230 8015C7F0 00000000 */   nop
endlabel func_8015C00C_ovl3
.size func_8015C00C_ovl3, . - func_8015C00C_ovl3
