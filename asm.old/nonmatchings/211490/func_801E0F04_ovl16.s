glabel func_801E0F04_ovl16
/* 2171B4 801E0F04 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2171B8 801E0F08 AFB20020 */  sw         $s2, 0x20($sp)
/* 2171BC 801E0F0C 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 2171C0 801E0F10 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 2171C4 801E0F14 8E4F0000 */  lw         $t7, 0x0($s2)
/* 2171C8 801E0F18 AFBF0024 */  sw         $ra, 0x24($sp)
/* 2171CC 801E0F1C AFB1001C */  sw         $s1, 0x1C($sp)
/* 2171D0 801E0F20 AFB00018 */  sw         $s0, 0x18($sp)
/* 2171D4 801E0F24 AFA40028 */  sw         $a0, 0x28($sp)
.L801E0F28_ovl10:
/* 2171D8 801E0F28 8DF80000 */  lw         $t8, 0x0($t7)
/* 2171DC 801E0F2C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 2171E0 801E0F30 240E0005 */  addiu      $t6, $zero, 0x5
/* 2171E4 801E0F34 0018C880 */  sll        $t9, $t8, 2
/* 2171E8 801E0F38 00390821 */  addu       $at, $at, $t9
/* 2171EC 801E0F3C AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
.L801E0F40_ovl10:
/* 2171F0 801E0F40 0C006291 */  jal        random_soft_s32_range
glabel func_801E0F44_ovl15
/* 2171F4 801E0F44 24040023 */   addiu     $a0, $zero, 0x23
/* 2171F8 801E0F48 3C11800D */  lui        $s1, %hi(D_800D7098)
/* 2171FC 801E0F4C 26317098 */  addiu      $s1, $s1, %lo(D_800D7098)
/* 217200 801E0F50 8E2A0020 */  lw         $t2, 0x20($s1)
/* 217204 801E0F54 00408025 */  or         $s0, $v0, $zero
.L801E0F58_ovl10:
/* 217208 801E0F58 544A0008 */  bnel       $v0, $t2, .L801E0F7C_ovl17
/* 21720C 801E0F5C 8E4C0000 */   lw        $t4, 0x0($s2)
.L801E0F60_ovl16:
/* 217210 801E0F60 0C006291 */  jal        random_soft_s32_range
/* 217214 801E0F64 24040023 */   addiu     $a0, $zero, 0x23
.L801E0F68_ovl17:
/* 217218 801E0F68 8E2B0020 */  lw         $t3, 0x20($s1)
/* 21721C 801E0F6C 00408025 */  or         $s0, $v0, $zero
/* 217220 801E0F70 104BFFFB */  beq        $v0, $t3, .L801E0F60_ovl16
/* 217224 801E0F74 00000000 */   nop
/* 217228 801E0F78 8E4C0000 */  lw         $t4, 0x0($s2)
.L801E0F7C_ovl17:
/* 21722C 801E0F7C AE300020 */  sw         $s0, 0x20($s1)
/* 217230 801E0F80 44802000 */  mtc1       $zero, $f4
/* 217234 801E0F84 8D8D0000 */  lw         $t5, 0x0($t4)
/* 217238 801E0F88 3C01800F */  lui        $at, %hi(D_800EA6E0)
.L801E0F8C_ovl10:
/* 21723C 801E0F8C 3C040001 */  lui        $a0, (0x10489 >> 16)
/* 217240 801E0F90 000D7880 */  sll        $t7, $t5, 2
/* 217244 801E0F94 002F0821 */  addu       $at, $at, $t7
.L801E0F98_ovl12:
/* 217248 801E0F98 34840489 */  ori        $a0, $a0, (0x10489 & 0xFFFF)
/* 21724C 801E0F9C 0C02A7A9 */  jal        func_800A9EA4
/* 217250 801E0FA0 E424A6E0 */   swc1      $f4, %lo(D_800EA6E0)($at)
.L801E0FA4_ovl10:
/* 217254 801E0FA4 3C040001 */  lui        $a0, (0x10488 >> 16)
glabel func_801E0FA8_ovl14
/* 217258 801E0FA8 0C02A7A9 */  jal        func_800A9EA4
/* 21725C 801E0FAC 34840488 */   ori       $a0, $a0, (0x10488 & 0xFFFF)
glabel func_801E0FB0_ovl14
/* 217260 801E0FB0 24020007 */  addiu      $v0, $zero, 0x7
/* 217264 801E0FB4 0202001A */  div        $zero, $s0, $v0
/* 217268 801E0FB8 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 21726C 801E0FBC 44810000 */  mtc1       $at, $f0
.L801E0FC0_ovl10:
/* 217270 801E0FC0 8E480000 */  lw         $t0, 0x0($s2)
/* 217274 801E0FC4 0000C010 */  mfhi       $t8
glabel func_801E0FC8_ovl12
/* 217278 801E0FC8 00187080 */  sll        $t6, $t8, 2
/* 21727C 801E0FCC 8D030000 */  lw         $v1, 0x0($t0)
/* 217280 801E0FD0 3C11800E */  lui        $s1, %hi(D_800E3050)
.L801E0FD4_ovl10:
/* 217284 801E0FD4 26313050 */  addiu      $s1, $s1, %lo(D_800E3050)
.L801E0FD8_ovl15:
/* 217288 801E0FD8 00031880 */  sll        $v1, $v1, 2
.L801E0FDC_ovl17:
/* 21728C 801E0FDC 14400002 */  bnez       $v0, .L801E0FE8_ovl16
/* 217290 801E0FE0 00000000 */   nop
/* 217294 801E0FE4 0007000D */  break      7
.L801E0FE8_ovl16:
/* 217298 801E0FE8 2401FFFF */  addiu      $at, $zero, -0x1
/* 21729C 801E0FEC 14410004 */  bne        $v0, $at, .L801E1000_ovl16
.L801E0FF0_ovl17:
/* 2172A0 801E0FF0 3C018000 */   lui       $at, (0x80000000 >> 16)
.L801E0FF4_ovl15:
/* 2172A4 801E0FF4 16010002 */  bne        $s0, $at, .L801E1000_ovl16
/* 2172A8 801E0FF8 00000000 */   nop
.L801E0FFC_ovl10:
/* 2172AC 801E0FFC 0006000D */  break      6
.L801E1000_ovl16:
/* 2172B0 801E1000 3C01801F */  lui        $at, %hi(D_801EF8DC_ovl16)
/* 2172B4 801E1004 002E0821 */  addu       $at, $at, $t6
/* 2172B8 801E1008 C426F8DC */  lwc1       $f6, %lo(D_801EF8DC_ovl16)($at)
glabel func_801E100C_ovl10
/* 2172BC 801E100C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 2172C0 801E1010 00230821 */  addu       $at, $at, $v1
/* 2172C4 801E1014 C42825D0 */  lwc1       $f8, %lo(gEntitiesNextPosXArray)($at)
/* 2172C8 801E1018 0223C821 */  addu       $t9, $s1, $v1
.L801E101C_ovl9:
/* 2172CC 801E101C 00005012 */  mflo       $t2
/* 2172D0 801E1020 46083281 */  sub.s      $f10, $f6, $f8
/* 2172D4 801E1024 000A5880 */  sll        $t3, $t2, 2
.L801E1028_ovl13:
/* 2172D8 801E1028 3C01801F */  lui        $at, %hi(D_801EF8FC_ovl16)
/* 2172DC 801E102C 002B0821 */  addu       $at, $at, $t3
.L801E1030_ovl15:
/* 2172E0 801E1030 46005403 */  div.s      $f16, $f10, $f0
/* 2172E4 801E1034 2404001E */  addiu      $a0, $zero, 0x1E
/* 2172E8 801E1038 E7300000 */  swc1       $f16, 0x0($t9)
/* 2172EC 801E103C 8D030000 */  lw         $v1, 0x0($t0)
/* 2172F0 801E1040 C432F8FC */  lwc1       $f18, %lo(D_801EF8FC_ovl16)($at)
/* 2172F4 801E1044 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
.L801E1048_ovl15:
/* 2172F8 801E1048 00031880 */  sll        $v1, $v1, 2
/* 2172FC 801E104C 00230821 */  addu       $at, $at, $v1
.L801E1050_ovl17:
/* 217300 801E1050 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
/* 217304 801E1054 3C01800E */  lui        $at, %hi(D_800E3210)
.L801E1058_ovl13:
/* 217308 801E1058 00230821 */  addu       $at, $at, $v1
.L801E105C_ovl9:
/* 21730C 801E105C 46049181 */  sub.s      $f6, $f18, $f4
/* 217310 801E1060 46003203 */  div.s      $f8, $f6, $f0
.L801E1064_ovl17:
/* 217314 801E1064 0C002DAF */  jal        finish_current_thread
/* 217318 801E1068 E4283210 */   swc1      $f8, %lo(D_800E3210)($at)
/* 21731C 801E106C 8E480000 */  lw         $t0, 0x0($s2)
/* 217320 801E1070 44805000 */  mtc1       $zero, $f10
/* 217324 801E1074 3C02800E */  lui        $v0, %hi(D_800E3750)
/* 217328 801E1078 8D0C0000 */  lw         $t4, 0x0($t0)
/* 21732C 801E107C 24423750 */  addiu      $v0, $v0, %lo(D_800E3750)
/* 217330 801E1080 3C01800E */  lui        $at, %hi(D_800E3590)
/* 217334 801E1084 000C6880 */  sll        $t5, $t4, 2
/* 217338 801E1088 004D7821 */  addu       $t7, $v0, $t5
.L801E108C_ovl12:
/* 21733C 801E108C E5EA0000 */  swc1       $f10, 0x0($t7)
.L801E1090_ovl9:
/* 217340 801E1090 8D030000 */  lw         $v1, 0x0($t0)
.L801E1094_ovl12:
/* 217344 801E1094 3C09800E */  lui        $t1, %hi(D_800E3C90)
/* 217348 801E1098 25293C90 */  addiu      $t1, $t1, %lo(D_800E3C90)
glabel func_801E109C_ovl17
/* 21734C 801E109C 00031880 */  sll        $v1, $v1, 2
/* 217350 801E10A0 0043C021 */  addu       $t8, $v0, $v1
.L801E10A4_ovl12:
/* 217354 801E10A4 C7000000 */  lwc1       $f0, 0x0($t8)
/* 217358 801E10A8 00230821 */  addu       $at, $at, $v1
/* 21735C 801E10AC 24040006 */  addiu      $a0, $zero, 0x6
.L801E10B0_ovl9:
/* 217360 801E10B0 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 217364 801E10B4 8D0E0000 */  lw         $t6, 0x0($t0)
.L801E10B8_ovl12:
/* 217368 801E10B8 3C01800E */  lui        $at, %hi(D_800E3210)
/* 21736C 801E10BC 24050002 */  addiu      $a1, $zero, 0x2
/* 217370 801E10C0 000EC880 */  sll        $t9, $t6, 2
glabel func_801E10C4_ovl12
/* 217374 801E10C4 00390821 */  addu       $at, $at, $t9
/* 217378 801E10C8 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 21737C 801E10CC 8D0A0000 */  lw         $t2, 0x0($t0)
/* 217380 801E10D0 3C01801F */  lui        $at, %hi(D_801EFF04_ovl16)
/* 217384 801E10D4 24060006 */  addiu      $a2, $zero, 0x6
/* 217388 801E10D8 000A5880 */  sll        $t3, $t2, 2
.L801E10DC_ovl9:
/* 21738C 801E10DC 022B6021 */  addu       $t4, $s1, $t3
/* 217390 801E10E0 E5800000 */  swc1       $f0, 0x0($t4)
/* 217394 801E10E4 8D0D0000 */  lw         $t5, 0x0($t0)
/* 217398 801E10E8 C430FF04 */  lwc1       $f16, %lo(D_801EFF04_ovl16)($at)
/* 21739C 801E10EC 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 2173A0 801E10F0 000D7880 */  sll        $t7, $t5, 2
/* 2173A4 801E10F4 012FC021 */  addu       $t8, $t1, $t7
/* 2173A8 801E10F8 E7100000 */  swc1       $f16, 0x0($t8)
/* 2173AC 801E10FC 8D030000 */  lw         $v1, 0x0($t0)
/* 2173B0 801E1100 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
/* 2173B4 801E1104 00031880 */  sll        $v1, $v1, 2
/* 2173B8 801E1108 01237021 */  addu       $t6, $t1, $v1
/* 2173BC 801E110C C5D20000 */  lwc1       $f18, 0x0($t6)
/* 2173C0 801E1110 00230821 */  addu       $at, $at, $v1
/* 2173C4 801E1114 E4323AD0 */  swc1       $f18, %lo(D_800E3AD0)($at)
glabel func_801E1118_ovl14
/* 2173C8 801E1118 8D190000 */  lw         $t9, 0x0($t0)
.L801E111C_ovl15:
/* 2173CC 801E111C 00195080 */  sll        $t2, $t9, 2
/* 2173D0 801E1120 016A5821 */  addu       $t3, $t3, $t2
glabel func_801E1124_ovl12
/* 2173D4 801E1124 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
/* 2173D8 801E1128 0C02A040 */  jal        func_800A8100
/* 2173DC 801E112C 8D670028 */   lw        $a3, 0x28($t3)
/* 2173E0 801E1130 0C002DAF */  jal        finish_current_thread
/* 2173E4 801E1134 2404000D */   addiu     $a0, $zero, 0xD
/* 2173E8 801E1138 8E480000 */  lw         $t0, 0x0($s2)
/* 2173EC 801E113C 3C11800F */  lui        $s1, %hi(D_800E9E20)
/* 2173F0 801E1140 26319E20 */  addiu      $s1, $s1, %lo(D_800E9E20)
/* 2173F4 801E1144 8D0C0000 */  lw         $t4, 0x0($t0)
/* 2173F8 801E1148 3C014120 */  lui        $at, (0x41200000 >> 16)
.L801E114C_ovl14:
/* 2173FC 801E114C 44812000 */  mtc1       $at, $f4
/* 217400 801E1150 000C6880 */  sll        $t5, $t4, 2
/* 217404 801E1154 022D7821 */  addu       $t7, $s1, $t5
/* 217408 801E1158 ADE00000 */  sw         $zero, 0x0($t7)
/* 21740C 801E115C 8D180000 */  lw         $t8, 0x0($t0)
/* 217410 801E1160 3C01800F */  lui        $at, %hi(D_800EA6E0)
.L801E1164_ovl17:
/* 217414 801E1164 240401AB */  addiu      $a0, $zero, 0x1AB
.L801E1168_ovl9:
/* 217418 801E1168 00187080 */  sll        $t6, $t8, 2
/* 21741C 801E116C 002E0821 */  addu       $at, $at, $t6
glabel func_801E1170_ovl17
/* 217420 801E1170 0C029D9E */  jal        play_sound
/* 217424 801E1174 E424A6E0 */   swc1      $f4, %lo(D_800EA6E0)($at)
/* 217428 801E1178 3C040001 */  lui        $a0, (0x1047F >> 16)
.L801E117C_ovl12:
/* 21742C 801E117C 0C02A806 */  jal        func_800AA018
/* 217430 801E1180 3484047F */   ori       $a0, $a0, (0x1047F & 0xFFFF)
/* 217434 801E1184 3C040001 */  lui        $a0, (0x1047E >> 16)
/* 217438 801E1188 0C02A855 */  jal        func_800AA154
/* 21743C 801E118C 3484047E */   ori       $a0, $a0, (0x1047E & 0xFFFF)
/* 217440 801E1190 3C040001 */  lui        $a0, (0x10481 >> 16)
.L801E1194_ovl9:
/* 217444 801E1194 0C02A806 */  jal        func_800AA018
glabel func_801E1198_ovl14
/* 217448 801E1198 34840481 */   ori       $a0, $a0, (0x10481 & 0xFFFF)
.L801E119C_ovl10:
/* 21744C 801E119C 3C040001 */  lui        $a0, (0x10480 >> 16)
.L801E11A0_ovl13:
/* 217450 801E11A0 0C02A806 */  jal        func_800AA018
/* 217454 801E11A4 34840480 */   ori       $a0, $a0, (0x10480 & 0xFFFF)
/* 217458 801E11A8 8E590000 */  lw         $t9, 0x0($s2)
/* 21745C 801E11AC 2410000F */  addiu      $s0, $zero, 0xF
/* 217460 801E11B0 8F2A0000 */  lw         $t2, 0x0($t9)
.L801E11B4_ovl12:
/* 217464 801E11B4 000A5880 */  sll        $t3, $t2, 2
/* 217468 801E11B8 022B6021 */  addu       $t4, $s1, $t3
/* 21746C 801E11BC 8D8D0000 */  lw         $t5, 0x0($t4)
/* 217470 801E11C0 120D000A */  beq        $s0, $t5, .L801E11EC_ovl16
/* 217474 801E11C4 00000000 */   nop
.L801E11C8_ovl16:
/* 217478 801E11C8 0C002DAF */  jal        finish_current_thread
glabel func_801E11CC_ovl12
/* 21747C 801E11CC 24040001 */   addiu     $a0, $zero, 0x1
glabel func_801E11D0_ovl13
/* 217480 801E11D0 8E4F0000 */  lw         $t7, 0x0($s2)
/* 217484 801E11D4 8DF80000 */  lw         $t8, 0x0($t7)
.L801E11D8_ovl15:
/* 217488 801E11D8 00187080 */  sll        $t6, $t8, 2
/* 21748C 801E11DC 022EC821 */  addu       $t9, $s1, $t6
/* 217490 801E11E0 8F2A0000 */  lw         $t2, 0x0($t9)
/* 217494 801E11E4 160AFFF8 */  bne        $s0, $t2, .L801E11C8_ovl16
/* 217498 801E11E8 00000000 */   nop
.L801E11EC_ovl16:
/* 21749C 801E11EC 0C002DAF */  jal        finish_current_thread
/* 2174A0 801E11F0 2404001E */   addiu     $a0, $zero, 0x1E
.L801E11F4_ovl10:
/* 2174A4 801E11F4 0C029D9E */  jal        play_sound
.L801E11F8_ovl10:
/* 2174A8 801E11F8 240401AA */   addiu     $a0, $zero, 0x1AA
.L801E11FC_ovl9:
/* 2174AC 801E11FC 24040030 */  addiu      $a0, $zero, 0x30
/* 2174B0 801E1200 0C06B30D */  jal        func_801ACC34_ovl7
/* 2174B4 801E1204 00002825 */   or        $a1, $zero, $zero
/* 2174B8 801E1208 3C10800F */  lui        $s0, %hi(D_800E8E60)
/* 2174BC 801E120C 26108E60 */  addiu      $s0, $s0, %lo(D_800E8E60)
/* 2174C0 801E1210 00023080 */  sll        $a2, $v0, 2
glabel func_801E1214_ovl15
/* 2174C4 801E1214 02066021 */  addu       $t4, $s0, $a2
.L801E1218_ovl15:
/* 2174C8 801E1218 240B0001 */  addiu      $t3, $zero, 0x1
/* 2174CC 801E121C AD8B0000 */  sw         $t3, 0x0($t4)
/* 2174D0 801E1220 8E4D0000 */  lw         $t5, 0x0($s2)
/* 2174D4 801E1224 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* 2174D8 801E1228 3C07800E */  lui        $a3, %hi(gEntitiesNextPosYArray)
.L801E122C_ovl14:
/* 2174DC 801E122C 8DA30000 */  lw         $v1, 0x0($t5)
glabel func_801E1230_ovl15
/* 2174E0 801E1230 24E72790 */  addiu      $a3, $a3, %lo(gEntitiesNextPosYArray)
/* 2174E4 801E1234 00E6C821 */  addu       $t9, $a3, $a2
/* 2174E8 801E1238 00031880 */  sll        $v1, $v1, 2
glabel func_801E123C_ovl12
/* 2174EC 801E123C 01E37821 */  addu       $t7, $t7, $v1
/* 2174F0 801E1240 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
/* 2174F4 801E1244 00E37021 */  addu       $t6, $a3, $v1
/* 2174F8 801E1248 C5C80000 */  lwc1       $f8, 0x0($t6)
/* 2174FC 801E124C 8DF80014 */  lw         $t8, 0x14($t7)
/* 217500 801E1250 24040030 */  addiu      $a0, $zero, 0x30
/* 217504 801E1254 24050001 */  addiu      $a1, $zero, 0x1
/* 217508 801E1258 C7060020 */  lwc1       $f6, 0x20($t8)
/* 21750C 801E125C 46083280 */  add.s      $f10, $f6, $f8
/* 217510 801E1260 0C06B30D */  jal        func_801ACC34_ovl7
/* 217514 801E1264 E72A0000 */   swc1      $f10, 0x0($t9)
/* 217518 801E1268 00023080 */  sll        $a2, $v0, 2
/* 21751C 801E126C 02065821 */  addu       $t3, $s0, $a2
/* 217520 801E1270 240A0001 */  addiu      $t2, $zero, 0x1
/* 217524 801E1274 AD6A0000 */  sw         $t2, 0x0($t3)
/* 217528 801E1278 8E4C0000 */  lw         $t4, 0x0($s2)
/* 21752C 801E127C 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
.L801E1280_ovl10:
/* 217530 801E1280 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* 217534 801E1284 8D830000 */  lw         $v1, 0x0($t4)
.L801E1288_ovl14:
/* 217538 801E1288 24E725D0 */  addiu      $a3, $a3, %lo(gEntitiesNextPosXArray)
/* 21753C 801E128C 00E67021 */  addu       $t6, $a3, $a2
/* 217540 801E1290 00031880 */  sll        $v1, $v1, 2
/* 217544 801E1294 01A36821 */  addu       $t5, $t5, $v1
/* 217548 801E1298 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
/* 21754C 801E129C 00E3C021 */  addu       $t8, $a3, $v1
/* 217550 801E12A0 C7120000 */  lwc1       $f18, 0x0($t8)
/* 217554 801E12A4 8DAF001C */  lw         $t7, 0x1C($t5)
/* 217558 801E12A8 24040030 */  addiu      $a0, $zero, 0x30
/* 21755C 801E12AC 24050002 */  addiu      $a1, $zero, 0x2
/* 217560 801E12B0 C5F0001C */  lwc1       $f16, 0x1C($t7)
/* 217564 801E12B4 46128100 */  add.s      $f4, $f16, $f18
.L801E12B8_ovl12:
/* 217568 801E12B8 0C06B30D */  jal        func_801ACC34_ovl7
/* 21756C 801E12BC E5C40000 */   swc1      $f4, 0x0($t6)
/* 217570 801E12C0 00023080 */  sll        $a2, $v0, 2
.L801E12C4_ovl17:
/* 217574 801E12C4 02065021 */  addu       $t2, $s0, $a2
/* 217578 801E12C8 24190001 */  addiu      $t9, $zero, 0x1
.L801E12CC_ovl14:
/* 21757C 801E12CC AD590000 */  sw         $t9, 0x0($t2)
glabel func_801E12D0_ovl12
/* 217580 801E12D0 8E4B0000 */  lw         $t3, 0x0($s2)
.L801E12D4_ovl15:
/* 217584 801E12D4 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
/* 217588 801E12D8 3C0F800E */  lui        $t7, %hi(gEntitiesNextPosYArray)
/* 21758C 801E12DC 8D630000 */  lw         $v1, 0x0($t3)
/* 217590 801E12E0 25EF2790 */  addiu      $t7, $t7, %lo(gEntitiesNextPosYArray)
/* 217594 801E12E4 00CF7021 */  addu       $t6, $a2, $t7
.L801E12E8_ovl17:
/* 217598 801E12E8 00031880 */  sll        $v1, $v1, 2
/* 21759C 801E12EC 01836021 */  addu       $t4, $t4, $v1
.L801E12F0_ovl13:
/* 2175A0 801E12F0 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
/* 2175A4 801E12F4 006FC021 */  addu       $t8, $v1, $t7
/* 2175A8 801E12F8 C7080000 */  lwc1       $f8, 0x0($t8)
/* 2175AC 801E12FC 8D8D0024 */  lw         $t5, 0x24($t4)
.L801E1300_ovl14:
/* 2175B0 801E1300 24040030 */  addiu      $a0, $zero, 0x30
/* 2175B4 801E1304 24050003 */  addiu      $a1, $zero, 0x3
/* 2175B8 801E1308 C5A60020 */  lwc1       $f6, 0x20($t5)
/* 2175BC 801E130C 46083280 */  add.s      $f10, $f6, $f8
.L801E1310_ovl10:
/* 2175C0 801E1310 0C06B30D */  jal        func_801ACC34_ovl7
/* 2175C4 801E1314 E5CA0000 */   swc1      $f10, 0x0($t6)
/* 2175C8 801E1318 00023080 */  sll        $a2, $v0, 2
/* 2175CC 801E131C 02065021 */  addu       $t2, $s0, $a2
/* 2175D0 801E1320 24190001 */  addiu      $t9, $zero, 0x1
/* 2175D4 801E1324 AD590000 */  sw         $t9, 0x0($t2)
/* 2175D8 801E1328 8E480000 */  lw         $t0, 0x0($s2)
/* 2175DC 801E132C 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
/* 2175E0 801E1330 3C0D800E */  lui        $t5, %hi(gEntitiesNextPosXArray)
.L801E1334_ovl10:
/* 2175E4 801E1334 8D030000 */  lw         $v1, 0x0($t0)
/* 2175E8 801E1338 25AD25D0 */  addiu      $t5, $t5, %lo(gEntitiesNextPosXArray)
/* 2175EC 801E133C 00CD7821 */  addu       $t7, $a2, $t5
/* 2175F0 801E1340 00031880 */  sll        $v1, $v1, 2
/* 2175F4 801E1344 01635821 */  addu       $t3, $t3, $v1
/* 2175F8 801E1348 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
/* 2175FC 801E134C 006DC021 */  addu       $t8, $v1, $t5
.L801E1350_ovl13:
/* 217600 801E1350 C7120000 */  lwc1       $f18, 0x0($t8)
.L801E1354_ovl12:
/* 217604 801E1354 8D6C000C */  lw         $t4, 0xC($t3)
/* 217608 801E1358 3C01C120 */  lui        $at, (0xC1200000 >> 16)
glabel func_801E135C_ovl13
/* 21760C 801E135C 44813000 */  mtc1       $at, $f6
/* 217610 801E1360 C590001C */  lwc1       $f16, 0x1C($t4)
/* 217614 801E1364 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 217618 801E1368 46128100 */  add.s      $f4, $f16, $f18
/* 21761C 801E136C E5E40000 */  swc1       $f4, 0x0($t7)
/* 217620 801E1370 8D0E0000 */  lw         $t6, 0x0($t0)
/* 217624 801E1374 000EC880 */  sll        $t9, $t6, 2
/* 217628 801E1378 00390821 */  addu       $at, $at, $t9
/* 21762C 801E137C E426A6E0 */  swc1       $f6, %lo(D_800EA6E0)($at)
.L801E1380_ovl12:
/* 217630 801E1380 8D030000 */  lw         $v1, 0x0($t0)
/* 217634 801E1384 00031880 */  sll        $v1, $v1, 2
/* 217638 801E1388 02235021 */  addu       $t2, $s1, $v1
.L801E138C_ovl15:
/* 21763C 801E138C 8D4B0000 */  lw         $t3, 0x0($t2)
/* 217640 801E1390 5160000B */  beql       $t3, $zero, func_801E13C0_ovl16
/* 217644 801E1394 44804000 */   mtc1      $zero, $f8
.L801E1398_ovl16:
/* 217648 801E1398 0C002DAF */  jal        finish_current_thread
/* 21764C 801E139C 24040001 */   addiu     $a0, $zero, 0x1
glabel func_801E13A0_ovl10
/* 217650 801E13A0 8E4C0000 */  lw         $t4, 0x0($s2)
/* 217654 801E13A4 8D830000 */  lw         $v1, 0x0($t4)
/* 217658 801E13A8 00031880 */  sll        $v1, $v1, 2
/* 21765C 801E13AC 0223C021 */  addu       $t8, $s1, $v1
.L801E13B0_ovl14:
/* 217660 801E13B0 8F0D0000 */  lw         $t5, 0x0($t8)
.L801E13B4_ovl14:
/* 217664 801E13B4 15A0FFF8 */  bnez       $t5, .L801E1398_ovl16
.L801E13B8_ovl17:
/* 217668 801E13B8 00000000 */   nop
/* 21766C 801E13BC 44804000 */  mtc1       $zero, $f8
glabel func_801E13C0_ovl16
/* 217670 801E13C0 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 217674 801E13C4 00230821 */  addu       $at, $at, $v1
/* 217678 801E13C8 0C02BC9F */  jal        func_800AF27C
/* 21767C 801E13CC E428A6E0 */   swc1      $f8, %lo(D_800EA6E0)($at)
/* 217680 801E13D0 3C040001 */  lui        $a0, (0x10483 >> 16)
.L801E13D4_ovl15:
/* 217684 801E13D4 0C02A806 */  jal        func_800AA018
.L801E13D8_ovl10:
/* 217688 801E13D8 34840483 */   ori       $a0, $a0, (0x10483 & 0xFFFF)
/* 21768C 801E13DC 3C040001 */  lui        $a0, (0x10482 >> 16)
/* 217690 801E13E0 0C02A855 */  jal        func_800AA154
.L801E13E4_ovl10:
/* 217694 801E13E4 34840482 */   ori       $a0, $a0, (0x10482 & 0xFFFF)
/* 217698 801E13E8 8E4E0000 */  lw         $t6, 0x0($s2)
/* 21769C 801E13EC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 2176A0 801E13F0 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
.L801E13F4_ovl9:
/* 2176A4 801E13F4 8DD90000 */  lw         $t9, 0x0($t6)
.L801E13F8_ovl17:
/* 2176A8 801E13F8 240F0007 */  addiu      $t7, $zero, 0x7
/* 2176AC 801E13FC 8FB20020 */  lw         $s2, 0x20($sp)
/* 2176B0 801E1400 00195080 */  sll        $t2, $t9, 2
/* 2176B4 801E1404 002A0821 */  addu       $at, $at, $t2
/* 2176B8 801E1408 8FB00018 */  lw         $s0, 0x18($sp)
/* 2176BC 801E140C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 2176C0 801E1410 AC2FDC50 */  sw         $t7, %lo(gEntityVtableIndexArray)($at)
/* 2176C4 801E1414 03E00008 */  jr         $ra
/* 2176C8 801E1418 27BD0028 */   addiu     $sp, $sp, 0x28
