nonmatching func_80183C54_ovl5, 0x34C

glabel func_80183C54_ovl5
    /* 12B0C4 80183C54 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 12B0C8 80183C58 AFB00020 */  sw         $s0, 0x20($sp)
    /* 12B0CC 80183C5C 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 12B0D0 80183C60 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* 12B0D4 80183C64 8E020000 */  lw         $v0, 0x0($s0)
    /* 12B0D8 80183C68 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 12B0DC 80183C6C AFB40030 */  sw         $s4, 0x30($sp)
    /* 12B0E0 80183C70 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 12B0E4 80183C74 AFB20028 */  sw         $s2, 0x28($sp)
    /* 12B0E8 80183C78 AFB10024 */  sw         $s1, 0x24($sp)
    /* 12B0EC 80183C7C AFA60058 */  sw         $a2, 0x58($sp)
    /* 12B0F0 80183C80 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 12B0F4 80183C84 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 12B0F8 80183C88 0080A025 */  or         $s4, $a0, $zero
    /* 12B0FC 80183C8C 000E7880 */  sll        $t7, $t6, 2
    /* 12B100 80183C90 002F0821 */  addu       $at, $at, $t7
    /* 12B104 80183C94 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
    /* 12B108 80183C98 8C580000 */  lw         $t8, 0x0($v0)
    /* 12B10C 80183C9C 00A09825 */  or         $s3, $a1, $zero
    /* 12B110 80183CA0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 12B114 80183CA4 0018C880 */  sll        $t9, $t8, 2
    /* 12B118 80183CA8 00992021 */  addu       $a0, $a0, $t9
    /* 12B11C 80183CAC 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 12B120 80183CB0 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* 12B124 80183CB4 0C02C7DA */  jal        setProcessMain
    /* 12B128 80183CB8 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 12B12C 80183CBC 8E080000 */  lw         $t0, 0x0($s0)
    /* 12B130 80183CC0 00135080 */  sll        $t2, $s3, 2
    /* 12B134 80183CC4 3C018019 */  lui        $at, %hi(D_8018EE20_ovl5)
    /* 12B138 80183CC8 8D090000 */  lw         $t1, 0x0($t0)
    /* 12B13C 80183CCC 002A0821 */  addu       $at, $at, $t2
    /* 12B140 80183CD0 3C05800B */  lui        $a1, %hi(func_800AD1A0)
    /* 12B144 80183CD4 240B0012 */  addiu      $t3, $zero, 0x12
    /* 12B148 80183CD8 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 12B14C 80183CDC 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
    /* 12B150 80183CE0 02802025 */  or         $a0, $s4, $zero
    /* 12B154 80183CE4 24060012 */  addiu      $a2, $zero, 0x12
    /* 12B158 80183CE8 3C078000 */  lui        $a3, (0x80000000 >> 16)
    /* 12B15C 80183CEC 0C00297F */  jal        omLinkGObjDL
    /* 12B160 80183CF0 AC29EE20 */   sw        $t1, %lo(D_8018EE20_ovl5)($at)
    /* 12B164 80183CF4 0C060F0B */  jal        func_80183C2C_ovl5
    /* 12B168 80183CF8 8FA40058 */   lw        $a0, 0x58($sp)
    /* 12B16C 80183CFC 1440000D */  bnez       $v0, .L80183D34_ovl5
    /* 12B170 80183D00 02802025 */   or        $a0, $s4, $zero
    /* 12B174 80183D04 3C058019 */  lui        $a1, %hi(D_8018A6F0_ovl5)
    /* 12B178 80183D08 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12B17C 80183D0C 24A5A6F0 */   addiu     $a1, $a1, %lo(D_8018A6F0_ovl5)
    /* 12B180 80183D10 3C0D8019 */  lui        $t5, %hi(D_8018A71C_ovl5)
    /* 12B184 80183D14 25ADA71C */  addiu      $t5, $t5, %lo(D_8018A71C_ovl5)
    /* 12B188 80183D18 001360C0 */  sll        $t4, $s3, 3
    /* 12B18C 80183D1C 018D1821 */  addu       $v1, $t4, $t5
    /* 12B190 80183D20 C4640000 */  lwc1       $f4, 0x0($v1)
    /* 12B194 80183D24 E4440020 */  swc1       $f4, 0x20($v0)
    /* 12B198 80183D28 C4660004 */  lwc1       $f6, 0x4($v1)
    /* 12B19C 80183D2C 0C02BE85 */  jal        curObjSleepForever
    /* 12B1A0 80183D30 E4460024 */   swc1      $f6, 0x24($v0)
  .L80183D34_ovl5:
    /* 12B1A4 80183D34 3C058019 */  lui        $a1, %hi(D_8018A6D0_ovl5)
    /* 12B1A8 80183D38 24A5A6D0 */  addiu      $a1, $a1, %lo(D_8018A6D0_ovl5)
    /* 12B1AC 80183D3C 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12B1B0 80183D40 02802025 */   or        $a0, $s4, $zero
    /* 12B1B4 80183D44 3C128019 */  lui        $s2, %hi(D_8018EE50_ovl5)
    /* 12B1B8 80183D48 00408025 */  or         $s0, $v0, $zero
    /* 12B1BC 80183D4C 8E52EE50 */  lw         $s2, %lo(D_8018EE50_ovl5)($s2)
    /* 12B1C0 80183D50 0C060F00 */  jal        func_80183C00_ovl5
    /* 12B1C4 80183D54 8FA40058 */   lw        $a0, 0x58($sp)
    /* 12B1C8 80183D58 10400004 */  beqz       $v0, .L80183D6C_ovl5
    /* 12B1CC 80183D5C 001370C0 */   sll       $t6, $s3, 3
    /* 12B1D0 80183D60 3C118019 */  lui        $s1, %hi(D_8018EE54_ovl5)
    /* 12B1D4 80183D64 8E31EE54 */  lw         $s1, %lo(D_8018EE54_ovl5)($s1)
    /* 12B1D8 80183D68 AFB10040 */  sw         $s1, 0x40($sp)
  .L80183D6C_ovl5:
    /* 12B1DC 80183D6C 8FB10040 */  lw         $s1, 0x40($sp)
    /* 12B1E0 80183D70 3C0F8019 */  lui        $t7, %hi(D_8018A71C_ovl5)
    /* 12B1E4 80183D74 25EFA71C */  addiu      $t7, $t7, %lo(D_8018A71C_ovl5)
    /* 12B1E8 80183D78 AE12006C */  sw         $s2, 0x6C($s0)
    /* 12B1EC 80183D7C AE120078 */  sw         $s2, 0x78($s0)
    /* 12B1F0 80183D80 AE1200CC */  sw         $s2, 0xCC($s0)
    /* 12B1F4 80183D84 AE1200D8 */  sw         $s2, 0xD8($s0)
    /* 12B1F8 80183D88 01CF1821 */  addu       $v1, $t6, $t7
    /* 12B1FC 80183D8C C4680000 */  lwc1       $f8, 0x0($v1)
    /* 12B200 80183D90 3C088019 */  lui        $t0, %hi(D_8018C30C_ovl5)
    /* 12B204 80183D94 2508C30C */  addiu      $t0, $t0, %lo(D_8018C30C_ovl5)
    /* 12B208 80183D98 E6080020 */  swc1       $f8, 0x20($s0)
    /* 12B20C 80183D9C C46A0004 */  lwc1       $f10, 0x4($v1)
    /* 12B210 80183DA0 02802025 */  or         $a0, $s4, $zero
    /* 12B214 80183DA4 E60A0024 */  swc1       $f10, 0x24($s0)
    /* 12B218 80183DA8 8FB80058 */  lw         $t8, 0x58($sp)
    /* 12B21C 80183DAC AFA3003C */  sw         $v1, 0x3C($sp)
    /* 12B220 80183DB0 0018C880 */  sll        $t9, $t8, 2
    /* 12B224 80183DB4 0338C823 */  subu       $t9, $t9, $t8
    /* 12B228 80183DB8 0019C880 */  sll        $t9, $t9, 2
    /* 12B22C 80183DBC 0338C821 */  addu       $t9, $t9, $t8
    /* 12B230 80183DC0 0019C880 */  sll        $t9, $t9, 2
    /* 12B234 80183DC4 03281021 */  addu       $v0, $t9, $t0
    /* 12B238 80183DC8 8C450014 */  lw         $a1, 0x14($v0)
    /* 12B23C 80183DCC 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12B240 80183DD0 AFA20038 */   sw        $v0, 0x38($sp)
    /* 12B244 80183DD4 8FA3003C */  lw         $v1, 0x3C($sp)
    /* 12B248 80183DD8 3C068019 */  lui        $a2, %hi(D_8018C008_ovl5)
    /* 12B24C 80183DDC 24C6C008 */  addiu      $a2, $a2, %lo(D_8018C008_ovl5)
    /* 12B250 80183DE0 C4D00000 */  lwc1       $f16, 0x0($a2)
    /* 12B254 80183DE4 C4720000 */  lwc1       $f18, 0x0($v1)
    /* 12B258 80183DE8 2401000A */  addiu      $at, $zero, 0xA
    /* 12B25C 80183DEC 3C058019 */  lui        $a1, %hi(D_8018C160_ovl5)
    /* 12B260 80183DF0 46128100 */  add.s      $f4, $f16, $f18
    /* 12B264 80183DF4 02802025 */  or         $a0, $s4, $zero
    /* 12B268 80183DF8 E4440020 */  swc1       $f4, 0x20($v0)
    /* 12B26C 80183DFC C4C60004 */  lwc1       $f6, 0x4($a2)
    /* 12B270 80183E00 C4680004 */  lwc1       $f8, 0x4($v1)
    /* 12B274 80183E04 46083280 */  add.s      $f10, $f6, $f8
    /* 12B278 80183E08 E44A0024 */  swc1       $f10, 0x24($v0)
    /* 12B27C 80183E0C 8FB30058 */  lw         $s3, 0x58($sp)
    /* 12B280 80183E10 26730001 */  addiu      $s3, $s3, 0x1
    /* 12B284 80183E14 0261001A */  div        $zero, $s3, $at
    /* 12B288 80183E18 00004810 */  mfhi       $t1
    /* 12B28C 80183E1C 00095080 */  sll        $t2, $t1, 2
    /* 12B290 80183E20 00AA2821 */  addu       $a1, $a1, $t2
    /* 12B294 80183E24 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12B298 80183E28 8CA5C160 */   lw        $a1, %lo(D_8018C160_ovl5)($a1)
    /* 12B29C 80183E2C 8FA3003C */  lw         $v1, 0x3C($sp)
    /* 12B2A0 80183E30 3C048019 */  lui        $a0, %hi(D_8018C150_ovl5)
    /* 12B2A4 80183E34 2484C150 */  addiu      $a0, $a0, %lo(D_8018C150_ovl5)
    /* 12B2A8 80183E38 C4900000 */  lwc1       $f16, 0x0($a0)
    /* 12B2AC 80183E3C C4720000 */  lwc1       $f18, 0x0($v1)
    /* 12B2B0 80183E40 2A61000A */  slti       $at, $s3, 0xA
    /* 12B2B4 80183E44 3C058019 */  lui        $a1, %hi(D_8018C160_ovl5)
    /* 12B2B8 80183E48 46128100 */  add.s      $f4, $f16, $f18
    /* 12B2BC 80183E4C E4440020 */  swc1       $f4, 0x20($v0)
    /* 12B2C0 80183E50 C4860004 */  lwc1       $f6, 0x4($a0)
    /* 12B2C4 80183E54 C4680004 */  lwc1       $f8, 0x4($v1)
    /* 12B2C8 80183E58 02802025 */  or         $a0, $s4, $zero
    /* 12B2CC 80183E5C 46083280 */  add.s      $f10, $f6, $f8
    /* 12B2D0 80183E60 14200014 */  bnez       $at, .L80183EB4_ovl5
    /* 12B2D4 80183E64 E44A0024 */   swc1      $f10, 0x24($v0)
    /* 12B2D8 80183E68 2401000A */  addiu      $at, $zero, 0xA
    /* 12B2DC 80183E6C 0261001A */  div        $zero, $s3, $at
    /* 12B2E0 80183E70 00005812 */  mflo       $t3
    /* 12B2E4 80183E74 000B6080 */  sll        $t4, $t3, 2
    /* 12B2E8 80183E78 00AC2821 */  addu       $a1, $a1, $t4
    /* 12B2EC 80183E7C 8CA5C160 */  lw         $a1, %lo(D_8018C160_ovl5)($a1)
    /* 12B2F0 80183E80 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12B2F4 80183E84 AFA3003C */   sw        $v1, 0x3C($sp)
    /* 12B2F8 80183E88 8FA3003C */  lw         $v1, 0x3C($sp)
    /* 12B2FC 80183E8C 3C048019 */  lui        $a0, %hi(D_8018C158_ovl5)
    /* 12B300 80183E90 2484C158 */  addiu      $a0, $a0, %lo(D_8018C158_ovl5)
    /* 12B304 80183E94 C4900000 */  lwc1       $f16, 0x0($a0)
    /* 12B308 80183E98 C4720000 */  lwc1       $f18, 0x0($v1)
    /* 12B30C 80183E9C 46128100 */  add.s      $f4, $f16, $f18
    /* 12B310 80183EA0 E4440020 */  swc1       $f4, 0x20($v0)
    /* 12B314 80183EA4 C4860004 */  lwc1       $f6, 0x4($a0)
    /* 12B318 80183EA8 C4680004 */  lwc1       $f8, 0x4($v1)
    /* 12B31C 80183EAC 46083280 */  add.s      $f10, $f6, $f8
    /* 12B320 80183EB0 E44A0024 */  swc1       $f10, 0x24($v0)
  .L80183EB4_ovl5:
    /* 12B324 80183EB4 8FAD0038 */  lw         $t5, 0x38($sp)
    /* 12B328 80183EB8 02802025 */  or         $a0, $s4, $zero
    /* 12B32C 80183EBC 3C058019 */  lui        $a1, %hi(D_8018A844_ovl5)
    /* 12B330 80183EC0 91A20010 */  lbu        $v0, 0x10($t5)
    /* 12B334 80183EC4 10400010 */  beqz       $v0, .L80183F08_ovl5
    /* 12B338 80183EC8 00027080 */   sll       $t6, $v0, 2
    /* 12B33C 80183ECC 00AE2821 */  addu       $a1, $a1, $t6
    /* 12B340 80183ED0 8CA5A844 */  lw         $a1, %lo(D_8018A844_ovl5)($a1)
    /* 12B344 80183ED4 0C0571D0 */  jal        func_8015C740_ovl5
    /* 12B348 80183ED8 AFA3003C */   sw        $v1, 0x3C($sp)
    /* 12B34C 80183EDC 8FA3003C */  lw         $v1, 0x3C($sp)
    /* 12B350 80183EE0 3C048019 */  lui        $a0, %hi(D_8018A864_ovl5)
    /* 12B354 80183EE4 2484A864 */  addiu      $a0, $a0, %lo(D_8018A864_ovl5)
    /* 12B358 80183EE8 C4900000 */  lwc1       $f16, 0x0($a0)
    /* 12B35C 80183EEC C4720000 */  lwc1       $f18, 0x0($v1)
    /* 12B360 80183EF0 46128100 */  add.s      $f4, $f16, $f18
    /* 12B364 80183EF4 E4440020 */  swc1       $f4, 0x20($v0)
    /* 12B368 80183EF8 C4860004 */  lwc1       $f6, 0x4($a0)
    /* 12B36C 80183EFC C4680004 */  lwc1       $f8, 0x4($v1)
    /* 12B370 80183F00 46083280 */  add.s      $f10, $f6, $f8
    /* 12B374 80183F04 E44A0024 */  swc1       $f10, 0x24($v0)
  .L80183F08_ovl5:
    /* 12B378 80183F08 8FAF0058 */  lw         $t7, 0x58($sp)
    /* 12B37C 80183F0C 3C18800D */  lui        $t8, %hi(D_800D6C10)
    /* 12B380 80183F10 27186C10 */  addiu      $t8, $t8, %lo(D_800D6C10)
    /* 12B384 80183F14 24140001 */  addiu      $s4, $zero, 0x1
    /* 12B388 80183F18 01F89821 */  addu       $s3, $t7, $t8
  .L80183F1C_ovl5:
    /* 12B38C 80183F1C 92790000 */  lbu        $t9, 0x0($s3)
  .L80183F20_ovl5:
    /* 12B390 80183F20 1699000E */  bne        $s4, $t9, .L80183F5C_ovl5
    /* 12B394 80183F24 00000000 */   nop
    /* 12B398 80183F28 0C002DAF */  jal        ohSleep
    /* 12B39C 80183F2C 24040006 */   addiu     $a0, $zero, 0x6
    /* 12B3A0 80183F30 AE11006C */  sw         $s1, 0x6C($s0)
    /* 12B3A4 80183F34 AE110078 */  sw         $s1, 0x78($s0)
    /* 12B3A8 80183F38 AE1100CC */  sw         $s1, 0xCC($s0)
    /* 12B3AC 80183F3C AE1100D8 */  sw         $s1, 0xD8($s0)
    /* 12B3B0 80183F40 0C002DAF */  jal        ohSleep
    /* 12B3B4 80183F44 24040006 */   addiu     $a0, $zero, 0x6
    /* 12B3B8 80183F48 AE12006C */  sw         $s2, 0x6C($s0)
    /* 12B3BC 80183F4C AE120078 */  sw         $s2, 0x78($s0)
    /* 12B3C0 80183F50 AE1200CC */  sw         $s2, 0xCC($s0)
    /* 12B3C4 80183F54 1000FFF1 */  b          .L80183F1C_ovl5
    /* 12B3C8 80183F58 AE1200D8 */   sw        $s2, 0xD8($s0)
  .L80183F5C_ovl5:
    /* 12B3CC 80183F5C 0C002DAF */  jal        ohSleep
    /* 12B3D0 80183F60 02802025 */   or        $a0, $s4, $zero
    /* 12B3D4 80183F64 1000FFEE */  b          .L80183F20_ovl5
    /* 12B3D8 80183F68 92790000 */   lbu       $t9, 0x0($s3)
    /* 12B3DC 80183F6C 00000000 */  nop
    /* 12B3E0 80183F70 00000000 */  nop
    /* 12B3E4 80183F74 00000000 */  nop
    /* 12B3E8 80183F78 00000000 */  nop
    /* 12B3EC 80183F7C 00000000 */  nop
    /* 12B3F0 80183F80 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 12B3F4 80183F84 8FB00020 */  lw         $s0, 0x20($sp)
    /* 12B3F8 80183F88 8FB10024 */  lw         $s1, 0x24($sp)
    /* 12B3FC 80183F8C 8FB20028 */  lw         $s2, 0x28($sp)
    /* 12B400 80183F90 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 12B404 80183F94 8FB40030 */  lw         $s4, 0x30($sp)
    /* 12B408 80183F98 03E00008 */  jr         $ra
    /* 12B40C 80183F9C 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_80183C54_ovl5
.size func_80183C54_ovl5, . - func_80183C54_ovl5
