glabel func_801F11A8_ovl10
/* 1E1F18 801F11A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1E1F1C 801F11AC AFB00014 */  sw         $s0, 0x14($sp)
/* 1E1F20 801F11B0 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 1E1F24 801F11B4 8E10A7C4 */  lw         $s0, %lo(D_8004A7C4)($s0)
/* 1E1F28 801F11B8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1E1F2C 801F11BC AFB10018 */  sw         $s1, 0x18($sp)
/* 1E1F30 801F11C0 AFA40020 */  sw         $a0, 0x20($sp)
/* 1E1F34 801F11C4 8E020000 */  lw         $v0, 0x0($s0)
/* 1E1F38 801F11C8 3C01801F */  lui        $at, %hi(D_801F4D60_ovl10)
/* 1E1F3C 801F11CC 3C0F801F */  lui        $t7, %hi(func_801F1454_ovl10)
/* 1E1F40 801F11D0 AC224D60 */  sw         $v0, %lo(D_801F4D60_ovl10)($at)
/* 1E1F44 801F11D4 8E180000 */  lw         $t8, 0x0($s0)
/* 1E1F48 801F11D8 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1E1F4C 801F11DC 25EF1454 */  addiu      $t7, $t7, %lo(func_801F1454_ovl10)
/* 1E1F50 801F11E0 0018C880 */  sll        $t9, $t8, 2
/* 1E1F54 801F11E4 00390821 */  addu       $at, $at, $t9
/* 1E1F58 801F11E8 AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
/* 1E1F5C 801F11EC 8E090000 */  lw         $t1, 0x0($s0)
/* 1E1F60 801F11F0 3C11800E */  lui        $s1, %hi(D_800E1B50)
/* 1E1F64 801F11F4 00027080 */  sll        $t6, $v0, 2
/* 1E1F68 801F11F8 022E8821 */  addu       $s1, $s1, $t6
/* 1E1F6C 801F11FC 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1E1F70 801F1200 3C08800B */  lui        $t0, %hi(func_800B4954)
/* 1E1F74 801F1204 00095080 */  sll        $t2, $t1, 2
/* 1E1F78 801F1208 8E311B50 */  lw         $s1, %lo(D_800E1B50)($s1)
/* 1E1F7C 801F120C 002A0821 */  addu       $at, $at, $t2
/* 1E1F80 801F1210 25084954 */  addiu      $t0, $t0, %lo(func_800B4954)
/* 1E1F84 801F1214 AC28EF90 */  sw         $t0, %lo(D_800DEF90)($at)
/* 1E1F88 801F1218 0C03FC73 */  jal        func_800FF1CC
/* 1E1F8C 801F121C 8E240080 */   lw        $a0, 0x80($s1)
/* 1E1F90 801F1220 3C01801F */  lui        $at, %hi(D_801F4C94_ovl10)
/* 1E1F94 801F1224 C4204C94 */  lwc1       $f0, %lo(D_801F4C94_ovl10)($at)
.L801F1228_ovl9:
/* 1E1F98 801F1228 AE200080 */  sw         $zero, 0x80($s1)
/* 1E1F9C 801F122C 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 1E1FA0 801F1230 8E10A7C4 */  lw         $s0, %lo(D_8004A7C4)($s0)
/* 1E1FA4 801F1234 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 1E1FA8 801F1238 44803000 */  mtc1       $zero, $f6
/* 1E1FAC 801F123C 8E0B0000 */  lw         $t3, 0x0($s0)
/* 1E1FB0 801F1240 2404002C */  addiu      $a0, $zero, 0x2C
/* 1E1FB4 801F1244 000B6080 */  sll        $t4, $t3, 2
/* 1E1FB8 801F1248 002C0821 */  addu       $at, $at, $t4
/* 1E1FBC 801F124C E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 1E1FC0 801F1250 8E0D0000 */  lw         $t5, 0x0($s0)
/* 1E1FC4 801F1254 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1E1FC8 801F1258 44812000 */  mtc1       $at, $f4
/* 1E1FCC 801F125C 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 1E1FD0 801F1260 000D7080 */  sll        $t6, $t5, 2
/* 1E1FD4 801F1264 002E0821 */  addu       $at, $at, $t6
/* 1E1FD8 801F1268 E4244710 */  swc1       $f4, %lo(gEntitiesScaleYArray)($at)
/* 1E1FDC 801F126C 8E180000 */  lw         $t8, 0x0($s0)
/* 1E1FE0 801F1270 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 1E1FE4 801F1274 00187880 */  sll        $t7, $t8, 2
/* 1E1FE8 801F1278 002F0821 */  addu       $at, $at, $t7
.L801F127C_ovl9:
/* 1E1FEC 801F127C E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
/* 1E1FF0 801F1280 8E190000 */  lw         $t9, 0x0($s0)
/* 1E1FF4 801F1284 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
.L801F1288_ovl9:
/* 1E1FF8 801F1288 00194880 */  sll        $t1, $t9, 2
/* 1E1FFC 801F128C 00290821 */  addu       $at, $at, $t1
/* 1E2000 801F1290 0C02BDE8 */  jal        func_800AF7A0
/* 1E2004 801F1294 E4262790 */   swc1      $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1E2008 801F1298 3C11800F */  lui        $s1, %hi(D_800E98E0)
/* 1E200C 801F129C 263198E0 */  addiu      $s1, $s1, %lo(D_800E98E0)
/* 1E2010 801F12A0 00008025 */  or         $s0, $zero, $zero
.L801F12A4_ovl10:
/* 1E2014 801F12A4 24040029 */  addiu      $a0, $zero, 0x29
/* 1E2018 801F12A8 2405001E */  addiu      $a1, $zero, 0x1E
/* 1E201C 801F12AC 0C02BB02 */  jal        request_track_general
/* 1E2020 801F12B0 24060050 */   addiu     $a2, $zero, 0x50
/* 1E2024 801F12B4 00021880 */  sll        $v1, $v0, 2
/* 1E2028 801F12B8 02234021 */  addu       $t0, $s1, $v1
/* 1E202C 801F12BC 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 1E2030 801F12C0 AD100000 */  sw         $s0, 0x0($t0)
/* 1E2034 801F12C4 00230821 */  addu       $at, $at, $v1
/* 1E2038 801F12C8 26040001 */  addiu      $a0, $s0, 0x1
/* 1E203C 801F12CC AC249AA0 */  sw         $a0, %lo(D_800E9AA0)($at)
/* 1E2040 801F12D0 28810003 */  slti       $at, $a0, 0x3
/* 1E2044 801F12D4 1420FFF3 */  bnez       $at, .L801F12A4_ovl10
/* 1E2048 801F12D8 00808025 */   or        $s0, $a0, $zero
/* 1E204C 801F12DC 8FA40020 */  lw         $a0, 0x20($sp)
/* 1E2050 801F12E0 24060014 */  addiu      $a2, $zero, 0x14
/* 1E2054 801F12E4 0C002A22 */  jal        omGMoveObjDL
/* 1E2058 801F12E8 9085000D */   lbu       $a1, 0xD($a0)
/* 1E205C 801F12EC 0C03E905 */  jal        func_800FA414
/* 1E2060 801F12F0 24040001 */   addiu     $a0, $zero, 0x1
/* 1E2064 801F12F4 3C05801F */  lui        $a1, %hi(func_801F4588_ovl10 + 0xE8)
/* 1E2068 801F12F8 24A54670 */  addiu      $a1, $a1, %lo(func_801F4588_ovl10 + 0xE8)
/* 1E206C 801F12FC 24040010 */  addiu      $a0, $zero, 0x10
/* 1E2070 801F1300 0C02CBD5 */  jal        func_800B2F54
/* 1E2074 801F1304 3C0642C8 */   lui       $a2, (0x42C80000 >> 16)
/* 1E2078 801F1308 0C029C68 */  jal        func_800A71A0
/* 1E207C 801F130C 24040010 */   addiu     $a0, $zero, 0x10
/* 1E2080 801F1310 0C029BD0 */  jal        func_800A6F40
/* 1E2084 801F1314 24040010 */   addiu     $a0, $zero, 0x10
/* 1E2088 801F1318 C448003C */  lwc1       $f8, 0x3C($v0)
/* 1E208C 801F131C 3C10801F */  lui        $s0, %hi(func_801F4D7C_ovl10 + 0xC)
/* 1E2090 801F1320 26104D88 */  addiu      $s0, $s0, %lo(func_801F4D7C_ovl10 + 0xC)
/* 1E2094 801F1324 24040010 */  addiu      $a0, $zero, 0x10
.L801F1328_ovl9:
/* 1E2098 801F1328 0C029BD0 */  jal        func_800A6F40
/* 1E209C 801F132C E6080000 */   swc1      $f8, 0x0($s0)
/* 1E20A0 801F1330 C44A0040 */  lwc1       $f10, 0x40($v0)
/* 1E20A4 801F1334 24040010 */  addiu      $a0, $zero, 0x10
/* 1E20A8 801F1338 0C029BD0 */  jal        func_800A6F40
/* 1E20AC 801F133C E60A0004 */   swc1      $f10, 0x4($s0)
/* 1E20B0 801F1340 C4500044 */  lwc1       $f16, 0x44($v0)
/* 1E20B4 801F1344 3C05801F */  lui        $a1, %hi(func_801F4588_ovl10 + 0xE8)
/* 1E20B8 801F1348 24A54670 */  addiu      $a1, $a1, %lo(func_801F4588_ovl10 + 0xE8)
/* 1E20BC 801F134C 24040010 */  addiu      $a0, $zero, 0x10
/* 1E20C0 801F1350 24060000 */  addiu      $a2, $zero, 0x0
/* 1E20C4 801F1354 0C02CBD5 */  jal        func_800B2F54
/* 1E20C8 801F1358 E6100008 */   swc1      $f16, 0x8($s0)
/* 1E20CC 801F135C 24040010 */  addiu      $a0, $zero, 0x10
/* 1E20D0 801F1360 0C02CC1C */  jal        func_800B3070
/* 1E20D4 801F1364 3C054000 */   lui       $a1, (0x40000000 >> 16)
/* 1E20D8 801F1368 0C029C68 */  jal        func_800A71A0
/* 1E20DC 801F136C 24040010 */   addiu     $a0, $zero, 0x10
/* 1E20E0 801F1370 0C002DAF */  jal        finish_current_thread
/* 1E20E4 801F1374 24040001 */   addiu     $a0, $zero, 0x1
/* 1E20E8 801F1378 24100006 */  addiu      $s0, $zero, 0x6
.L801F137C_ovl9:
/* 1E20EC 801F137C 2401000C */  addiu      $at, $zero, 0xC
.L801F1380_ovl10:
/* 1E20F0 801F1380 56010005 */  bnel       $s0, $at, .L801F1398_ovl10
/* 1E20F4 801F1384 24040029 */   addiu     $a0, $zero, 0x29
.L801F1388_ovl9:
/* 1E20F8 801F1388 0C07C447 */  jal        func_801F111C_ovl10
/* 1E20FC 801F138C 00000000 */   nop
/* 1E2100 801F1390 14400007 */  bnez       $v0, .L801F13B0_ovl10
/* 1E2104 801F1394 24040029 */   addiu     $a0, $zero, 0x29
.L801F1398_ovl10:
/* 1E2108 801F1398 2405001E */  addiu      $a1, $zero, 0x1E
/* 1E210C 801F139C 0C02BB02 */  jal        request_track_general
/* 1E2110 801F13A0 24060050 */   addiu     $a2, $zero, 0x50
/* 1E2114 801F13A4 00025080 */  sll        $t2, $v0, 2
/* 1E2118 801F13A8 022A5821 */  addu       $t3, $s1, $t2
/* 1E211C 801F13AC AD700000 */  sw         $s0, 0x0($t3)
.L801F13B0_ovl10:
/* 1E2120 801F13B0 26100001 */  addiu      $s0, $s0, 0x1
glabel func_801F13B4_ovl9
/* 1E2124 801F13B4 2A01000D */  slti       $at, $s0, 0xD
/* 1E2128 801F13B8 5420FFF1 */  bnel       $at, $zero, .L801F1380_ovl10
/* 1E212C 801F13BC 2401000C */   addiu     $at, $zero, 0xC
/* 1E2130 801F13C0 00008025 */  or         $s0, $zero, $zero
.L801F13C4_ovl10:
/* 1E2134 801F13C4 0C029C68 */  jal        func_800A71A0
/* 1E2138 801F13C8 24040010 */   addiu     $a0, $zero, 0x10
/* 1E213C 801F13CC 0C002DAF */  jal        finish_current_thread
/* 1E2140 801F13D0 24040001 */   addiu     $a0, $zero, 0x1
/* 1E2144 801F13D4 26100001 */  addiu      $s0, $s0, 0x1
/* 1E2148 801F13D8 24010023 */  addiu      $at, $zero, 0x23
/* 1E214C 801F13DC 1601FFF9 */  bne        $s0, $at, .L801F13C4_ovl10
/* 1E2150 801F13E0 00000000 */   nop
/* 1E2154 801F13E4 3C0C800F */  lui        $t4, %hi(D_800E9C60)
/* 1E2158 801F13E8 8D8C9C60 */  lw         $t4, %lo(D_800E9C60)($t4)
/* 1E215C 801F13EC 24100005 */  addiu      $s0, $zero, 0x5
/* 1E2160 801F13F0 120C0007 */  beq        $s0, $t4, .L801F1410_ovl10
/* 1E2164 801F13F4 00000000 */   nop
.L801F13F8_ovl10:
/* 1E2168 801F13F8 0C002DAF */  jal        finish_current_thread
/* 1E216C 801F13FC 24040001 */   addiu     $a0, $zero, 0x1
/* 1E2170 801F1400 3C0D800F */  lui        $t5, %hi(D_800E9C60)
/* 1E2174 801F1404 8DAD9C60 */  lw         $t5, %lo(D_800E9C60)($t5)
/* 1E2178 801F1408 160DFFFB */  bne        $s0, $t5, .L801F13F8_ovl10
/* 1E217C 801F140C 00000000 */   nop
.L801F1410_ovl10:
/* 1E2180 801F1410 0C029C68 */  jal        func_800A71A0
/* 1E2184 801F1414 24040010 */   addiu     $a0, $zero, 0x10
/* 1E2188 801F1418 0C002DAF */  jal        finish_current_thread
/* 1E218C 801F141C 24040001 */   addiu     $a0, $zero, 0x1
/* 1E2190 801F1420 1000FFFB */  b          .L801F1410_ovl10
/* 1E2194 801F1424 00000000 */   nop
/* 1E2198 801F1428 00000000 */  nop
/* 1E219C 801F142C 00000000 */  nop
/* 1E21A0 801F1430 00000000 */  nop
/* 1E21A4 801F1434 00000000 */  nop
/* 1E21A8 801F1438 00000000 */  nop
/* 1E21AC 801F143C 00000000 */  nop
glabel func_801F1440_ovl9
/* 1E21B0 801F1440 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1E21B4 801F1444 8FB00014 */  lw         $s0, 0x14($sp)
/* 1E21B8 801F1448 8FB10018 */  lw         $s1, 0x18($sp)
/* 1E21BC 801F144C 03E00008 */  jr         $ra
/* 1E21C0 801F1450 27BD0020 */   addiu     $sp, $sp, 0x20
