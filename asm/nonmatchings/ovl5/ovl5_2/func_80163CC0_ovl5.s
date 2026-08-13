nonmatching func_80163CC0_ovl5, 0x4B4

glabel func_80163CC0_ovl5
    /* 10B130 80163CC0 27BDFF40 */  addiu      $sp, $sp, -0xC0
    /* 10B134 80163CC4 3C0E8018 */  lui        $t6, %hi(D_80185FC0_ovl5)
    /* 10B138 80163CC8 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 10B13C 80163CCC AFBE0048 */  sw         $fp, 0x48($sp)
    /* 10B140 80163CD0 AFB70044 */  sw         $s7, 0x44($sp)
    /* 10B144 80163CD4 AFB60040 */  sw         $s6, 0x40($sp)
    /* 10B148 80163CD8 AFB5003C */  sw         $s5, 0x3C($sp)
    /* 10B14C 80163CDC AFB40038 */  sw         $s4, 0x38($sp)
    /* 10B150 80163CE0 AFB30034 */  sw         $s3, 0x34($sp)
    /* 10B154 80163CE4 AFB20030 */  sw         $s2, 0x30($sp)
    /* 10B158 80163CE8 AFB1002C */  sw         $s1, 0x2C($sp)
    /* 10B15C 80163CEC AFB00028 */  sw         $s0, 0x28($sp)
    /* 10B160 80163CF0 F7B40020 */  sdc1       $f20, 0x20($sp)
    /* 10B164 80163CF4 25CE5FC0 */  addiu      $t6, $t6, %lo(D_80185FC0_ovl5)
    /* 10B168 80163CF8 8DD80000 */  lw         $t8, 0x0($t6)
    /* 10B16C 80163CFC 27BE008C */  addiu      $fp, $sp, 0x8C
    /* 10B170 80163D00 3C088018 */  lui        $t0, %hi(D_80185FD0_ovl5)
    /* 10B174 80163D04 AFD80000 */  sw         $t8, 0x0($fp)
    /* 10B178 80163D08 8DCF0004 */  lw         $t7, 0x4($t6)
    /* 10B17C 80163D0C 25085FD0 */  addiu      $t0, $t0, %lo(D_80185FD0_ovl5)
    /* 10B180 80163D10 0080B825 */  or         $s7, $a0, $zero
    /* 10B184 80163D14 AFCF0004 */  sw         $t7, 0x4($fp)
    /* 10B188 80163D18 8DD80008 */  lw         $t8, 0x8($t6)
    /* 10B18C 80163D1C 00A03025 */  or         $a2, $a1, $zero
    /* 10B190 80163D20 250B0024 */  addiu      $t3, $t0, 0x24
    /* 10B194 80163D24 AFD80008 */  sw         $t8, 0x8($fp)
    /* 10B198 80163D28 8DCF000C */  lw         $t7, 0xC($t6)
    /* 10B19C 80163D2C 27B90064 */  addiu      $t9, $sp, 0x64
    /* 10B1A0 80163D30 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 10B1A4 80163D34 AFCF000C */  sw         $t7, 0xC($fp)
  .L80163D38_ovl5:
    /* 10B1A8 80163D38 8D0A0000 */  lw         $t2, 0x0($t0)
    /* 10B1AC 80163D3C 2508000C */  addiu      $t0, $t0, 0xC
    /* 10B1B0 80163D40 2739000C */  addiu      $t9, $t9, 0xC
    /* 10B1B4 80163D44 AF2AFFF4 */  sw         $t2, -0xC($t9)
    /* 10B1B8 80163D48 8D09FFF8 */  lw         $t1, -0x8($t0)
    /* 10B1BC 80163D4C AF29FFF8 */  sw         $t1, -0x8($t9)
    /* 10B1C0 80163D50 8D0AFFFC */  lw         $t2, -0x4($t0)
    /* 10B1C4 80163D54 150BFFF8 */  bne        $t0, $t3, .L80163D38_ovl5
    /* 10B1C8 80163D58 AF2AFFFC */   sw        $t2, -0x4($t9)
    /* 10B1CC 80163D5C 8D0A0000 */  lw         $t2, 0x0($t0)
    /* 10B1D0 80163D60 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 10B1D4 80163D64 3C0E8019 */  lui        $t6, %hi(D_8018E1E0_ovl5)
    /* 10B1D8 80163D68 AF2A0000 */  sw         $t2, 0x0($t9)
    /* 10B1DC 80163D6C 8E10A7C4 */  lw         $s0, %lo(omCurrentObj)($s0)
    /* 10B1E0 80163D70 3C0F8019 */  lui        $t7, %hi(D_8018E030_ovl5)
    /* 10B1E4 80163D74 25CEE1E0 */  addiu      $t6, $t6, %lo(D_8018E1E0_ovl5)
    /* 10B1E8 80163D78 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 10B1EC 80163D7C 25EFE030 */  addiu      $t7, $t7, %lo(D_8018E030_ovl5)
    /* 10B1F0 80163D80 00068880 */  sll        $s1, $a2, 2
    /* 10B1F4 80163D84 000C6880 */  sll        $t5, $t4, 2
    /* 10B1F8 80163D88 002D0821 */  addu       $at, $at, $t5
    /* 10B1FC 80163D8C AC2698E0 */  sw         $a2, %lo(D_800E98E0)($at)
    /* 10B200 80163D90 8E080000 */  lw         $t0, 0x0($s0)
    /* 10B204 80163D94 00CEA021 */  addu       $s4, $a2, $t6
    /* 10B208 80163D98 022F1021 */  addu       $v0, $s1, $t7
    /* 10B20C 80163D9C 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 10B210 80163DA0 0008C880 */  sll        $t9, $t0, 2
    /* 10B214 80163DA4 92830000 */  lbu        $v1, 0x0($s4)
    /* 10B218 80163DA8 8C580000 */  lw         $t8, 0x0($v0)
    /* 10B21C 80163DAC 00390821 */  addu       $at, $at, $t9
    /* 10B220 80163DB0 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
    /* 10B224 80163DB4 8E090000 */  lw         $t1, 0x0($s0)
    /* 10B228 80163DB8 3C16800F */  lui        $s6, %hi(D_800EA520)
    /* 10B22C 80163DBC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 10B230 80163DC0 00185880 */  sll        $t3, $t8, 2
    /* 10B234 80163DC4 00095080 */  sll        $t2, $t1, 2
    /* 10B238 80163DC8 02CBB021 */  addu       $s6, $s6, $t3
    /* 10B23C 80163DCC 008A2021 */  addu       $a0, $a0, $t2
    /* 10B240 80163DD0 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 10B244 80163DD4 8ED6A520 */  lw         $s6, %lo(D_800EA520)($s6)
    /* 10B248 80163DD8 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* 10B24C 80163DDC 8C84EC10 */  lw         $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 10B250 80163DE0 AFA20058 */  sw         $v0, 0x58($sp)
    /* 10B254 80163DE4 0C02C7DA */  jal        setProcessMain
    /* 10B258 80163DE8 A3A3009F */   sb        $v1, 0x9F($sp)
    /* 10B25C 80163DEC 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 10B260 80163DF0 8E10A7C4 */  lw         $s0, %lo(omCurrentObj)($s0)
    /* 10B264 80163DF4 3C0C8016 */  lui        $t4, %hi(func_80164174_ovl5)
    /* 10B268 80163DF8 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 10B26C 80163DFC 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 10B270 80163E00 258C4174 */  addiu      $t4, $t4, %lo(func_80164174_ovl5)
    /* 10B274 80163E04 240F0026 */  addiu      $t7, $zero, 0x26
    /* 10B278 80163E08 000D7080 */  sll        $t6, $t5, 2
    /* 10B27C 80163E0C 002E0821 */  addu       $at, $at, $t6
    /* 10B280 80163E10 AC2CF150 */  sw         $t4, %lo(D_800DF150)($at)
    /* 10B284 80163E14 8E180000 */  lw         $t8, 0x0($s0)
    /* 10B288 80163E18 3C01800E */  lui        $at, %hi(D_800DDA90)
    /* 10B28C 80163E1C 3C05800B */  lui        $a1, %hi(func_800AD1A0)
    /* 10B290 80163E20 00185880 */  sll        $t3, $t8, 2
    /* 10B294 80163E24 002B0821 */  addu       $at, $at, $t3
    /* 10B298 80163E28 24080012 */  addiu      $t0, $zero, 0x12
    /* 10B29C 80163E2C AC2FDA90 */  sw         $t7, %lo(D_800DDA90)($at)
    /* 10B2A0 80163E30 AFA80010 */  sw         $t0, 0x10($sp)
    /* 10B2A4 80163E34 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
    /* 10B2A8 80163E38 02E02025 */  or         $a0, $s7, $zero
    /* 10B2AC 80163E3C 24060012 */  addiu      $a2, $zero, 0x12
    /* 10B2B0 80163E40 0C00297F */  jal        omLinkGObjDL
    /* 10B2B4 80163E44 3C078000 */   lui       $a3, (0x80000000 >> 16)
    /* 10B2B8 80163E48 3C040003 */  lui        $a0, (0x3000F >> 16)
    /* 10B2BC 80163E4C 3484000F */  ori        $a0, $a0, (0x3000F & 0xFFFF)
    /* 10B2C0 80163E50 0C02A6AA */  jal        func_800A9AA8
    /* 10B2C4 80163E54 24050003 */   addiu     $a1, $zero, 0x3
    /* 10B2C8 80163E58 3C040003 */  lui        $a0, (0x30010 >> 16)
    /* 10B2CC 80163E5C 0040A825 */  or         $s5, $v0, $zero
    /* 10B2D0 80163E60 34840010 */  ori        $a0, $a0, (0x30010 & 0xFFFF)
    /* 10B2D4 80163E64 0C02A6AA */  jal        func_800A9AA8
    /* 10B2D8 80163E68 24050003 */   addiu     $a1, $zero, 0x3
    /* 10B2DC 80163E6C 3C040003 */  lui        $a0, (0x30011 >> 16)
    /* 10B2E0 80163E70 00409025 */  or         $s2, $v0, $zero
    /* 10B2E4 80163E74 34840011 */  ori        $a0, $a0, (0x30011 & 0xFFFF)
    /* 10B2E8 80163E78 0C02A6AA */  jal        func_800A9AA8
    /* 10B2EC 80163E7C 24050003 */   addiu     $a1, $zero, 0x3
    /* 10B2F0 80163E80 03D1C821 */  addu       $t9, $fp, $s1
    /* 10B2F4 80163E84 00409825 */  or         $s3, $v0, $zero
    /* 10B2F8 80163E88 8F250000 */  lw         $a1, 0x0($t9)
    /* 10B2FC 80163E8C 0C0571D0 */  jal        func_8015C740_ovl5
    /* 10B300 80163E90 02E02025 */   or        $a0, $s7, $zero
    /* 10B304 80163E94 93A3009F */  lbu        $v1, 0x9F($sp)
    /* 10B308 80163E98 241E000A */  addiu      $fp, $zero, 0xA
    /* 10B30C 80163E9C 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 10B310 80163EA0 007E001A */  div        $zero, $v1, $fp
    /* 10B314 80163EA4 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 10B318 80163EA8 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 10B31C 80163EAC 00608025 */  or         $s0, $v1, $zero
    /* 10B320 80163EB0 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 10B324 80163EB4 00006012 */  mflo       $t4
    /* 10B328 80163EB8 000C7080 */  sll        $t6, $t4, 2
    /* 10B32C 80163EBC 000A6880 */  sll        $t5, $t2, 2
    /* 10B330 80163EC0 002D0821 */  addu       $at, $at, $t5
    /* 10B334 80163EC4 AC229AA0 */  sw         $v0, %lo(D_800E9AA0)($at)
    /* 10B338 80163EC8 3C01434D */  lui        $at, (0x434D0000 >> 16)
    /* 10B33C 80163ECC 44812000 */  mtc1       $at, $f4
    /* 10B340 80163ED0 03AE2821 */  addu       $a1, $sp, $t6
    /* 10B344 80163ED4 00408825 */  or         $s1, $v0, $zero
    /* 10B348 80163ED8 E4440024 */  swc1       $f4, 0x24($v0)
    /* 10B34C 80163EDC 8CA50064 */  lw         $a1, 0x64($a1)
    /* 10B350 80163EE0 02E02025 */  or         $a0, $s7, $zero
    /* 10B354 80163EE4 17C00002 */  bnez       $fp, .L80163EF0_ovl5
    /* 10B358 80163EE8 00000000 */   nop
    /* 10B35C 80163EEC 0007000D */  break      7
  .L80163EF0_ovl5:
    /* 10B360 80163EF0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 10B364 80163EF4 17C10004 */  bne        $fp, $at, .L80163F08_ovl5
    /* 10B368 80163EF8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 10B36C 80163EFC 16010002 */  bne        $s0, $at, .L80163F08_ovl5
    /* 10B370 80163F00 00000000 */   nop
    /* 10B374 80163F04 0006000D */  break      6
  .L80163F08_ovl5:
    /* 10B378 80163F08 0C0571D0 */  jal        func_8015C740_ovl5
    /* 10B37C 80163F0C 00000000 */   nop
    /* 10B380 80163F10 021E001A */  div        $zero, $s0, $fp
    /* 10B384 80163F14 3C014350 */  lui        $at, (0x43500000 >> 16)
    /* 10B388 80163F18 4481A000 */  mtc1       $at, $f20
    /* 10B38C 80163F1C 0000C010 */  mfhi       $t8
    /* 10B390 80163F20 00187880 */  sll        $t7, $t8, 2
    /* 10B394 80163F24 03AF2821 */  addu       $a1, $sp, $t7
    /* 10B398 80163F28 E4540024 */  swc1       $f20, 0x24($v0)
    /* 10B39C 80163F2C 8CA50064 */  lw         $a1, 0x64($a1)
    /* 10B3A0 80163F30 02E02025 */  or         $a0, $s7, $zero
    /* 10B3A4 80163F34 17C00002 */  bnez       $fp, .L80163F40_ovl5
    /* 10B3A8 80163F38 00000000 */   nop
    /* 10B3AC 80163F3C 0007000D */  break      7
  .L80163F40_ovl5:
    /* 10B3B0 80163F40 2401FFFF */  addiu      $at, $zero, -0x1
    /* 10B3B4 80163F44 17C10004 */  bne        $fp, $at, .L80163F58_ovl5
    /* 10B3B8 80163F48 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 10B3BC 80163F4C 16010002 */  bne        $s0, $at, .L80163F58_ovl5
    /* 10B3C0 80163F50 00000000 */   nop
    /* 10B3C4 80163F54 0006000D */  break      6
  .L80163F58_ovl5:
    /* 10B3C8 80163F58 0C0571D0 */  jal        func_8015C740_ovl5
    /* 10B3CC 80163F5C 00000000 */   nop
    /* 10B3D0 80163F60 E4540024 */  swc1       $f20, 0x24($v0)
    /* 10B3D4 80163F64 92860000 */  lbu        $a2, 0x0($s4)
    /* 10B3D8 80163F68 00C01825 */  or         $v1, $a2, $zero
  .L80163F6C_ovl5:
    /* 10B3DC 80163F6C 5603000D */  bnel       $s0, $v1, .L80163FA4_ovl5
    /* 10B3E0 80163F70 8E300008 */   lw        $s0, 0x8($s1)
    /* 10B3E4 80163F74 8FAB0058 */  lw         $t3, 0x58($sp)
    /* 10B3E8 80163F78 3C02800F */  lui        $v0, %hi(D_800EA520)
    /* 10B3EC 80163F7C 2401000B */  addiu      $at, $zero, 0xB
    /* 10B3F0 80163F80 8D680000 */  lw         $t0, 0x0($t3)
    /* 10B3F4 80163F84 0008C880 */  sll        $t9, $t0, 2
    /* 10B3F8 80163F88 00591021 */  addu       $v0, $v0, $t9
    /* 10B3FC 80163F8C 8C42A520 */  lw         $v0, %lo(D_800EA520)($v0)
    /* 10B400 80163F90 52C20062 */  beql       $s6, $v0, .L8016411C_ovl5
    /* 10B404 80163F94 0040B025 */   or        $s6, $v0, $zero
    /* 10B408 80163F98 54410060 */  bnel       $v0, $at, .L8016411C_ovl5
    /* 10B40C 80163F9C 0040B025 */   or        $s6, $v0, $zero
    /* 10B410 80163FA0 8E300008 */  lw         $s0, 0x8($s1)
  .L80163FA4_ovl5:
    /* 10B414 80163FA4 52000008 */  beql       $s0, $zero, .L80163FC8_ovl5
    /* 10B418 80163FA8 30C300FF */   andi      $v1, $a2, 0xFF
  .L80163FAC_ovl5:
    /* 10B41C 80163FAC 0C02B2DF */  jal        func_800ACB7C
    /* 10B420 80163FB0 02002025 */   or        $a0, $s0, $zero
    /* 10B424 80163FB4 8E100008 */  lw         $s0, 0x8($s0)
    /* 10B428 80163FB8 1600FFFC */  bnez       $s0, .L80163FAC_ovl5
    /* 10B42C 80163FBC 00000000 */   nop
    /* 10B430 80163FC0 92860000 */  lbu        $a2, 0x0($s4)
    /* 10B434 80163FC4 30C300FF */  andi       $v1, $a2, 0xFF
  .L80163FC8_ovl5:
    /* 10B438 80163FC8 007E001A */  div        $zero, $v1, $fp
    /* 10B43C 80163FCC 00608025 */  or         $s0, $v1, $zero
    /* 10B440 80163FD0 00004812 */  mflo       $t1
    /* 10B444 80163FD4 00095080 */  sll        $t2, $t1, 2
    /* 10B448 80163FD8 03AA2821 */  addu       $a1, $sp, $t2
    /* 10B44C 80163FDC 8CA50064 */  lw         $a1, 0x64($a1)
    /* 10B450 80163FE0 02E02025 */  or         $a0, $s7, $zero
    /* 10B454 80163FE4 17C00002 */  bnez       $fp, .L80163FF0_ovl5
    /* 10B458 80163FE8 00000000 */   nop
    /* 10B45C 80163FEC 0007000D */  break      7
  .L80163FF0_ovl5:
    /* 10B460 80163FF0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 10B464 80163FF4 17C10004 */  bne        $fp, $at, .L80164008_ovl5
    /* 10B468 80163FF8 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 10B46C 80163FFC 16010002 */  bne        $s0, $at, .L80164008_ovl5
    /* 10B470 80164000 00000000 */   nop
    /* 10B474 80164004 0006000D */  break      6
  .L80164008_ovl5:
    /* 10B478 80164008 0C0571D0 */  jal        func_8015C740_ovl5
    /* 10B47C 8016400C 00000000 */   nop
    /* 10B480 80164010 021E001A */  div        $zero, $s0, $fp
    /* 10B484 80164014 00006810 */  mfhi       $t5
    /* 10B488 80164018 000D6080 */  sll        $t4, $t5, 2
    /* 10B48C 8016401C E4540024 */  swc1       $f20, 0x24($v0)
    /* 10B490 80164020 03AC2821 */  addu       $a1, $sp, $t4
    /* 10B494 80164024 8CA50064 */  lw         $a1, 0x64($a1)
    /* 10B498 80164028 02E02025 */  or         $a0, $s7, $zero
    /* 10B49C 8016402C 17C00002 */  bnez       $fp, .L80164038_ovl5
    /* 10B4A0 80164030 00000000 */   nop
    /* 10B4A4 80164034 0007000D */  break      7
  .L80164038_ovl5:
    /* 10B4A8 80164038 2401FFFF */  addiu      $at, $zero, -0x1
    /* 10B4AC 8016403C 17C10004 */  bne        $fp, $at, .L80164050_ovl5
    /* 10B4B0 80164040 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 10B4B4 80164044 16010002 */  bne        $s0, $at, .L80164050_ovl5
    /* 10B4B8 80164048 00000000 */   nop
    /* 10B4BC 8016404C 0006000D */  break      6
  .L80164050_ovl5:
    /* 10B4C0 80164050 0C0571D0 */  jal        func_8015C740_ovl5
    /* 10B4C4 80164054 00000000 */   nop
    /* 10B4C8 80164058 E4540024 */  swc1       $f20, 0x24($v0)
    /* 10B4CC 8016405C AE32006C */  sw         $s2, 0x6C($s1)
    /* 10B4D0 80164060 AE320078 */  sw         $s2, 0x78($s1)
    /* 10B4D4 80164064 AE3200CC */  sw         $s2, 0xCC($s1)
    /* 10B4D8 80164068 AE3200D8 */  sw         $s2, 0xD8($s1)
    /* 10B4DC 8016406C 0C002DAF */  jal        ohSleep
    /* 10B4E0 80164070 24040003 */   addiu     $a0, $zero, 0x3
    /* 10B4E4 80164074 92860000 */  lbu        $a2, 0x0($s4)
    /* 10B4E8 80164078 1606FFBC */  bne        $s0, $a2, .L80163F6C_ovl5
    /* 10B4EC 8016407C 00C01825 */   or        $v1, $a2, $zero
    /* 10B4F0 80164080 AE33006C */  sw         $s3, 0x6C($s1)
    /* 10B4F4 80164084 AE330078 */  sw         $s3, 0x78($s1)
    /* 10B4F8 80164088 AE3300CC */  sw         $s3, 0xCC($s1)
    /* 10B4FC 8016408C AE3300D8 */  sw         $s3, 0xD8($s1)
    /* 10B500 80164090 0C002DAF */  jal        ohSleep
    /* 10B504 80164094 24040003 */   addiu     $a0, $zero, 0x3
    /* 10B508 80164098 92860000 */  lbu        $a2, 0x0($s4)
    /* 10B50C 8016409C 1606FFB3 */  bne        $s0, $a2, .L80163F6C_ovl5
    /* 10B510 801640A0 00C01825 */   or        $v1, $a2, $zero
    /* 10B514 801640A4 AE32006C */  sw         $s2, 0x6C($s1)
    /* 10B518 801640A8 AE320078 */  sw         $s2, 0x78($s1)
    /* 10B51C 801640AC AE3200CC */  sw         $s2, 0xCC($s1)
    /* 10B520 801640B0 AE3200D8 */  sw         $s2, 0xD8($s1)
    /* 10B524 801640B4 0C002DAF */  jal        ohSleep
    /* 10B528 801640B8 24040003 */   addiu     $a0, $zero, 0x3
    /* 10B52C 801640BC 92860000 */  lbu        $a2, 0x0($s4)
    /* 10B530 801640C0 1606FFAA */  bne        $s0, $a2, .L80163F6C_ovl5
    /* 10B534 801640C4 00C01825 */   or        $v1, $a2, $zero
    /* 10B538 801640C8 AE33006C */  sw         $s3, 0x6C($s1)
    /* 10B53C 801640CC AE330078 */  sw         $s3, 0x78($s1)
    /* 10B540 801640D0 AE3300CC */  sw         $s3, 0xCC($s1)
    /* 10B544 801640D4 AE3300D8 */  sw         $s3, 0xD8($s1)
    /* 10B548 801640D8 0C002DAF */  jal        ohSleep
    /* 10B54C 801640DC 24040003 */   addiu     $a0, $zero, 0x3
    /* 10B550 801640E0 92860000 */  lbu        $a2, 0x0($s4)
    /* 10B554 801640E4 1606FFA1 */  bne        $s0, $a2, .L80163F6C_ovl5
    /* 10B558 801640E8 00C01825 */   or        $v1, $a2, $zero
    /* 10B55C 801640EC AE35006C */  sw         $s5, 0x6C($s1)
    /* 10B560 801640F0 AE350078 */  sw         $s5, 0x78($s1)
    /* 10B564 801640F4 AE3500CC */  sw         $s5, 0xCC($s1)
    /* 10B568 801640F8 AE3500D8 */  sw         $s5, 0xD8($s1)
    /* 10B56C 801640FC 8FAE0058 */  lw         $t6, 0x58($sp)
    /* 10B570 80164100 3C16800F */  lui        $s6, %hi(D_800EA520)
    /* 10B574 80164104 8DD80000 */  lw         $t8, 0x0($t6)
    /* 10B578 80164108 00187880 */  sll        $t7, $t8, 2
    /* 10B57C 8016410C 02CFB021 */  addu       $s6, $s6, $t7
    /* 10B580 80164110 10000004 */  b          .L80164124_ovl5
    /* 10B584 80164114 8ED6A520 */   lw        $s6, %lo(D_800EA520)($s6)
    /* 10B588 80164118 0040B025 */  or         $s6, $v0, $zero
  .L8016411C_ovl5:
    /* 10B58C 8016411C 0C002DAF */  jal        ohSleep
    /* 10B590 80164120 24040001 */   addiu     $a0, $zero, 0x1
  .L80164124_ovl5:
    /* 10B594 80164124 92860000 */  lbu        $a2, 0x0($s4)
    /* 10B598 80164128 1000FF90 */  b          .L80163F6C_ovl5
    /* 10B59C 8016412C 00C01825 */   or        $v1, $a2, $zero
    /* 10B5A0 80164130 00000000 */  nop
    /* 10B5A4 80164134 00000000 */  nop
    /* 10B5A8 80164138 00000000 */  nop
    /* 10B5AC 8016413C 00000000 */  nop
    /* 10B5B0 80164140 8FBF004C */  lw         $ra, 0x4C($sp)
    /* 10B5B4 80164144 D7B40020 */  ldc1       $f20, 0x20($sp)
    /* 10B5B8 80164148 8FB00028 */  lw         $s0, 0x28($sp)
    /* 10B5BC 8016414C 8FB1002C */  lw         $s1, 0x2C($sp)
    /* 10B5C0 80164150 8FB20030 */  lw         $s2, 0x30($sp)
    /* 10B5C4 80164154 8FB30034 */  lw         $s3, 0x34($sp)
    /* 10B5C8 80164158 8FB40038 */  lw         $s4, 0x38($sp)
    /* 10B5CC 8016415C 8FB5003C */  lw         $s5, 0x3C($sp)
    /* 10B5D0 80164160 8FB60040 */  lw         $s6, 0x40($sp)
    /* 10B5D4 80164164 8FB70044 */  lw         $s7, 0x44($sp)
    /* 10B5D8 80164168 8FBE0048 */  lw         $fp, 0x48($sp)
    /* 10B5DC 8016416C 03E00008 */  jr         $ra
    /* 10B5E0 80164170 27BD00C0 */   addiu     $sp, $sp, 0xC0
endlabel func_80163CC0_ovl5
.size func_80163CC0_ovl5, . - func_80163CC0_ovl5
