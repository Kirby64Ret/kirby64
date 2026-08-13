nonmatching func_801E1198_ovl14, 0x228

glabel func_801E1198_ovl14
    /* 203D88 801E1198 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 203D8C 801E119C 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 203D90 801E11A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 203D94 801E11A4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 203D98 801E11A8 8CC20000 */  lw         $v0, 0x0($a2)
    /* 203D9C 801E11AC 3C05800E */  lui        $a1, %hi(gEntityFuncListIDArray)
    /* 203DA0 801E11B0 24A5DC50 */  addiu      $a1, $a1, %lo(gEntityFuncListIDArray)
    /* 203DA4 801E11B4 00021080 */  sll        $v0, $v0, 2
    /* 203DA8 801E11B8 00A21821 */  addu       $v1, $a1, $v0
    /* 203DAC 801E11BC 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 203DB0 801E11C0 3C0F800F */  lui        $t7, %hi(D_800E9AA0)
    /* 203DB4 801E11C4 00803825 */  or         $a3, $a0, $zero
    /* 203DB8 801E11C8 11C00079 */  beqz       $t6, .L801E13B0_ovl14
    /* 203DBC 801E11CC 01E27821 */   addu      $t7, $t7, $v0
    /* 203DC0 801E11D0 8DEF9AA0 */  lw         $t7, %lo(D_800E9AA0)($t7)
    /* 203DC4 801E11D4 3C18800E */  lui        $t8, %hi(D_800E0D50)
    /* 203DC8 801E11D8 0302C021 */  addu       $t8, $t8, $v0
    /* 203DCC 801E11DC 15E00013 */  bnez       $t7, .L801E122C_ovl14
    /* 203DD0 801E11E0 3C0C800E */   lui       $t4, %hi(D_800E0D50)
    /* 203DD4 801E11E4 8F180D50 */  lw         $t8, %lo(D_800E0D50)($t8)
    /* 203DD8 801E11E8 24010006 */  addiu      $at, $zero, 0x6
    /* 203DDC 801E11EC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 203DE0 801E11F0 0018C880 */  sll        $t9, $t8, 2
    /* 203DE4 801E11F4 00B94021 */  addu       $t0, $a1, $t9
    /* 203DE8 801E11F8 8D090000 */  lw         $t1, 0x0($t0)
    /* 203DEC 801E11FC 5521000C */  bnel       $t1, $at, .L801E1230_ovl14
    /* 203DF0 801E1200 01826021 */   addu      $t4, $t4, $v0
    /* 203DF4 801E1204 AC600000 */  sw         $zero, 0x0($v1)
    /* 203DF8 801E1208 8CCA0000 */  lw         $t2, 0x0($a2)
    /* 203DFC 801E120C 3C05801E */  lui        $a1, %hi(func_801E1118_ovl14)
    /* 203E00 801E1210 24A51118 */  addiu      $a1, $a1, %lo(func_801E1118_ovl14)
    /* 203E04 801E1214 000A5880 */  sll        $t3, $t2, 2
    /* 203E08 801E1218 008B2021 */  addu       $a0, $a0, $t3
    /* 203E0C 801E121C 0C02C7B2 */  jal        assign_new_process_entry
    /* 203E10 801E1220 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 203E14 801E1224 10000063 */  b          .L801E13B4_ovl14
    /* 203E18 801E1228 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801E122C_ovl14:
    /* 203E1C 801E122C 01826021 */  addu       $t4, $t4, $v0
  .L801E1230_ovl14:
    /* 203E20 801E1230 8D8C0D50 */  lw         $t4, %lo(D_800E0D50)($t4)
    /* 203E24 801E1234 3C04800E */  lui        $a0, %hi(D_800E7CE0)
    /* 203E28 801E1238 24847CE0 */  addiu      $a0, $a0, %lo(D_800E7CE0)
    /* 203E2C 801E123C 000C6880 */  sll        $t5, $t4, 2
    /* 203E30 801E1240 008D7021 */  addu       $t6, $a0, $t5
    /* 203E34 801E1244 8DC30000 */  lw         $v1, 0x0($t6)
    /* 203E38 801E1248 00827821 */  addu       $t7, $a0, $v0
    /* 203E3C 801E124C 1060002C */  beqz       $v1, .L801E1300_ovl14
    /* 203E40 801E1250 00000000 */   nop
    /* 203E44 801E1254 ADE30000 */  sw         $v1, 0x0($t7)
    /* 203E48 801E1258 8CC20000 */  lw         $v0, 0x0($a2)
    /* 203E4C 801E125C 3C09800E */  lui        $t1, %hi(D_800E0D50)
    /* 203E50 801E1260 24050000 */  addiu      $a1, $zero, 0x0
    /* 203E54 801E1264 00021080 */  sll        $v0, $v0, 2
    /* 203E58 801E1268 0082C021 */  addu       $t8, $a0, $v0
    /* 203E5C 801E126C 8F190000 */  lw         $t9, 0x0($t8)
    /* 203E60 801E1270 01224821 */  addu       $t1, $t1, $v0
    /* 203E64 801E1274 07210004 */  bgez       $t9, .L801E1288_ovl14
    /* 203E68 801E1278 33280003 */   andi      $t0, $t9, 0x3
    /* 203E6C 801E127C 11000002 */  beqz       $t0, .L801E1288_ovl14
    /* 203E70 801E1280 00000000 */   nop
    /* 203E74 801E1284 2508FFFC */  addiu      $t0, $t0, -0x4
  .L801E1288_ovl14:
    /* 203E78 801E1288 29010002 */  slti       $at, $t0, 0x2
    /* 203E7C 801E128C 1420000F */  bnez       $at, .L801E12CC_ovl14
    /* 203E80 801E1290 00000000 */   nop
    /* 203E84 801E1294 8D290D50 */  lw         $t1, %lo(D_800E0D50)($t1)
    /* 203E88 801E1298 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 203E8C 801E129C 44812000 */  mtc1       $at, $f4
    /* 203E90 801E12A0 00095080 */  sll        $t2, $t1, 2
    /* 203E94 801E12A4 008A5821 */  addu       $t3, $a0, $t2
    /* 203E98 801E12A8 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 203E9C 801E12AC 00E02025 */  or         $a0, $a3, $zero
    /* 203EA0 801E12B0 448C3000 */  mtc1       $t4, $f6
    /* 203EA4 801E12B4 00000000 */  nop
    /* 203EA8 801E12B8 46803220 */  cvt.s.w    $f8, $f6
    /* 203EAC 801E12BC 4604403E */  c.le.s     $f8, $f4
    /* 203EB0 801E12C0 00000000 */  nop
    /* 203EB4 801E12C4 45000008 */  bc1f       .L801E12E8_ovl14
    /* 203EB8 801E12C8 00000000 */   nop
  .L801E12CC_ovl14:
    /* 203EBC 801E12CC 0C077952 */  jal        func_801DE548_ovl14
    /* 203EC0 801E12D0 00E02025 */   or        $a0, $a3, $zero
    /* 203EC4 801E12D4 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 203EC8 801E12D8 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 203ECC 801E12DC 8DA20000 */  lw         $v0, 0x0($t5)
    /* 203ED0 801E12E0 10000007 */  b          .L801E1300_ovl14
    /* 203ED4 801E12E4 00021080 */   sll       $v0, $v0, 2
  .L801E12E8_ovl14:
    /* 203ED8 801E12E8 0C077952 */  jal        func_801DE548_ovl14
    /* 203EDC 801E12EC 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
    /* 203EE0 801E12F0 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 203EE4 801E12F4 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 203EE8 801E12F8 8DC20000 */  lw         $v0, 0x0($t6)
    /* 203EEC 801E12FC 00021080 */  sll        $v0, $v0, 2
  .L801E1300_ovl14:
    /* 203EF0 801E1300 3C04800E */  lui        $a0, %hi(D_800DDFD0)
    /* 203EF4 801E1304 00822021 */  addu       $a0, $a0, $v0
    /* 203EF8 801E1308 3C06801E */  lui        $a2, %hi(D_801E2F78_ovl14)
    /* 203EFC 801E130C 24C62F78 */  addiu      $a2, $a2, %lo(D_801E2F78_ovl14)
    /* 203F00 801E1310 8C84DFD0 */  lw         $a0, %lo(D_800DDFD0)($a0)
    /* 203F04 801E1314 0C02911F */  jal        utilFuncTableJump
    /* 203F08 801E1318 24050003 */   addiu     $a1, $zero, 0x3
    /* 203F0C 801E131C 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* 203F10 801E1320 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 203F14 801E1324 3C08800F */  lui        $t0, %hi(D_800E98E0)
    /* 203F18 801E1328 8DF80000 */  lw         $t8, 0x0($t7)
    /* 203F1C 801E132C 0018C880 */  sll        $t9, $t8, 2
    /* 203F20 801E1330 01194021 */  addu       $t0, $t0, $t9
    /* 203F24 801E1334 8D0898E0 */  lw         $t0, %lo(D_800E98E0)($t0)
    /* 203F28 801E1338 5100001E */  beql       $t0, $zero, .L801E13B4_ovl14
    /* 203F2C 801E133C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 203F30 801E1340 0C07873A */  jal        func_801E1CE8_ovl14
    /* 203F34 801E1344 00000000 */   nop
    /* 203F38 801E1348 10400019 */  beqz       $v0, .L801E13B0_ovl14
    /* 203F3C 801E134C 3C04800E */   lui       $a0, %hi(D_800E7B20)
    /* 203F40 801E1350 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 203F44 801E1354 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 203F48 801E1358 3C09800E */  lui        $t1, %hi(D_800E0D50)
    /* 203F4C 801E135C 24847B20 */  addiu      $a0, $a0, %lo(D_800E7B20)
    /* 203F50 801E1360 8CC20000 */  lw         $v0, 0x0($a2)
    /* 203F54 801E1364 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* 203F58 801E1368 44810000 */  mtc1       $at, $f0
    /* 203F5C 801E136C 00021080 */  sll        $v0, $v0, 2
    /* 203F60 801E1370 01224821 */  addu       $t1, $t1, $v0
    /* 203F64 801E1374 8D290D50 */  lw         $t1, %lo(D_800E0D50)($t1)
    /* 203F68 801E1378 00826021 */  addu       $t4, $a0, $v0
    /* 203F6C 801E137C C5900000 */  lwc1       $f16, 0x0($t4)
    /* 203F70 801E1380 3C0B800F */  lui        $t3, %hi(D_800EC660)
    /* 203F74 801E1384 256BC660 */  addiu      $t3, $t3, %lo(D_800EC660)
    /* 203F78 801E1388 00095080 */  sll        $t2, $t1, 2
    /* 203F7C 801E138C 46100481 */  sub.s      $f18, $f0, $f16
    /* 203F80 801E1390 014B1821 */  addu       $v1, $t2, $t3
    /* 203F84 801E1394 C46A0000 */  lwc1       $f10, 0x0($v1)
    /* 203F88 801E1398 46125180 */  add.s      $f6, $f10, $f18
    /* 203F8C 801E139C E4660000 */  swc1       $f6, 0x0($v1)
    /* 203F90 801E13A0 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 203F94 801E13A4 000D7080 */  sll        $t6, $t5, 2
    /* 203F98 801E13A8 008E7821 */  addu       $t7, $a0, $t6
    /* 203F9C 801E13AC E5E00000 */  swc1       $f0, 0x0($t7)
  .L801E13B0_ovl14:
    /* 203FA0 801E13B0 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801E13B4_ovl14:
    /* 203FA4 801E13B4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 203FA8 801E13B8 03E00008 */  jr         $ra
    /* 203FAC 801E13BC 00000000 */   nop
endlabel func_801E1198_ovl14
.size func_801E1198_ovl14, . - func_801E1198_ovl14
