glabel func_801E100C_ovl10
/* 1D1D7C 801E100C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 1D1D80 801E1010 AFB00028 */  sw    $s0, 0x28($sp)
/* 1D1D84 801E1014 3C10800D */  lui   $s0, %hi(D_800D6B10) # $s0, 0x800d
/* 1D1D88 801E1018 26106B10 */  addiu $s0, %lo(D_800D6B10) # addiu $s0, $s0, 0x6b10
/* 1D1D8C 801E101C AFBF0044 */  sw    $ra, 0x44($sp)
/* 1D1D90 801E1020 AFB1002C */  sw    $s1, 0x2c($sp)
/* 1D1D94 801E1024 00808825 */  move  $s1, $a0
/* 1D1D98 801E1028 AFB60040 */  sw    $s6, 0x40($sp)
/* 1D1D9C 801E102C AFB5003C */  sw    $s5, 0x3c($sp)
/* 1D1DA0 801E1030 AFB40038 */  sw    $s4, 0x38($sp)
/* 1D1DA4 801E1034 AFB30034 */  sw    $s3, 0x34($sp)
/* 1D1DA8 801E1038 AFB20030 */  sw    $s2, 0x30($sp)
/* 1D1DAC 801E103C F7B60020 */  sdc1  $f22, 0x20($sp)
/* 1D1DB0 801E1040 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1D1DB4 801E1044 0C02BB30 */  jal   func_800AECC0
/* 1D1DB8 801E1048 C60C0000 */   lwc1  $f12, ($s0)
/* 1D1DBC 801E104C 0C02BB48 */  jal   func_800AED20
/* 1D1DC0 801E1050 C60C0000 */   lwc1  $f12, ($s0)
/* 1D1DC4 801E1054 3C168005 */  lui   $s6, %hi(D_8004A7C4) # $s6, 0x8005
/* 1D1DC8 801E1058 26D6A7C4 */  addiu $s6, %lo(D_8004A7C4) # addiu $s6, $s6, -0x583c
/* 1D1DCC 801E105C 8EC20000 */  lw    $v0, ($s6)
/* 1D1DD0 801E1060 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1D1DD4 801E1064 240E000D */  li    $t6, 13
/* 1D1DD8 801E1068 8C4F0000 */  lw    $t7, ($v0)
/* 1D1DDC 801E106C 3C03800E */  lui   $v1, %hi(D_800E1B50) # $v1, 0x800e
/* 1D1DE0 801E1070 24631B50 */  addiu $v1, %lo(D_800E1B50) # addiu $v1, $v1, 0x1b50
/* 1D1DE4 801E1074 000FC080 */  sll   $t8, $t7, 2
/* 1D1DE8 801E1078 00380821 */  addu  $at, $at, $t8
/* 1D1DEC 801E107C AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 1D1DF0 801E1080 8C480000 */  lw    $t0, ($v0)
/* 1D1DF4 801E1084 3C19801F */  lui   $t9, %hi(D_801F3AA8_ovl10) # $t9, 0x801f
/* 1D1DF8 801E1088 27393AA8 */  addiu $t9, %lo(D_801F3AA8_ovl10) # addiu $t9, $t9, 0x3aa8
/* 1D1DFC 801E108C 00084880 */  sll   $t1, $t0, 2
/* 1D1E00 801E1090 00695021 */  addu  $t2, $v1, $t1
/* 1D1E04 801E1094 8D4B0000 */  lw    $t3, ($t2)
/* 1D1E08 801E1098 3C0C801F */  lui   $t4, %hi(D_801F40DC_ovl10) # $t4, 0x801f
/* 1D1E0C 801E109C 258C40DC */  addiu $t4, %lo(D_801F40DC_ovl10) # addiu $t4, $t4, 0x40dc
/* 1D1E10 801E10A0 AD79008C */  sw    $t9, 0x8c($t3)
/* 1D1E14 801E10A4 8ECD0000 */  lw    $t5, ($s6)
/* 1D1E18 801E10A8 8DAF0000 */  lw    $t7, ($t5)
/* 1D1E1C 801E10AC 000F7080 */  sll   $t6, $t7, 2
/* 1D1E20 801E10B0 006EC021 */  addu  $t8, $v1, $t6
/* 1D1E24 801E10B4 8F080000 */  lw    $t0, ($t8)
/* 1D1E28 801E10B8 0C02CCFD */  jal   func_800B33F4
/* 1D1E2C 801E10BC AD0C0098 */   sw    $t4, 0x98($t0)
/* 1D1E30 801E10C0 8EC90000 */  lw    $t1, ($s6)
/* 1D1E34 801E10C4 3C12800F */  lui   $s2, %hi(D_800EA520) # $s2, 0x800f
/* 1D1E38 801E10C8 2652A520 */  addiu $s2, %lo(D_800EA520) # addiu $s2, $s2, -0x5ae0
/* 1D1E3C 801E10CC 8D2A0000 */  lw    $t2, ($t1)
/* 1D1E40 801E10D0 3C040001 */  lui   $a0, (0x000102EB >> 16) # lui $a0, 1
/* 1D1E44 801E10D4 348402EB */  ori   $a0, (0x000102EB & 0xFFFF) # ori $a0, $a0, 0x2eb
/* 1D1E48 801E10D8 000AC880 */  sll   $t9, $t2, 2
/* 1D1E4C 801E10DC 02595821 */  addu  $t3, $s2, $t9
/* 1D1E50 801E10E0 0C02A806 */  jal   func_800AA018
/* 1D1E54 801E10E4 AD600000 */   sw    $zero, ($t3)
/* 1D1E58 801E10E8 3C040001 */  lui   $a0, (0x000102EA >> 16) # lui $a0, 1
/* 1D1E5C 801E10EC 0C02A855 */  jal   func_800AA154
/* 1D1E60 801E10F0 348402EA */   ori   $a0, (0x000102EA & 0xFFFF) # ori $a0, $a0, 0x2ea
/* 1D1E64 801E10F4 3C040001 */  lui   $a0, (0x000102ED >> 16) # lui $a0, 1
/* 1D1E68 801E10F8 0C02A806 */  jal   func_800AA018
/* 1D1E6C 801E10FC 348402ED */   ori   $a0, (0x000102ED & 0xFFFF) # ori $a0, $a0, 0x2ed
/* 1D1E70 801E1100 3C040001 */  lui   $a0, (0x000102EC >> 16) # lui $a0, 1
/* 1D1E74 801E1104 0C02A855 */  jal   func_800AA154
/* 1D1E78 801E1108 348402EC */   ori   $a0, (0x000102EC & 0xFFFF) # ori $a0, $a0, 0x2ec
/* 1D1E7C 801E110C 8ECD0000 */  lw    $t5, ($s6)
/* 1D1E80 801E1110 3C02800E */  lui   $v0, %hi(gEntitiesNextPosYArray) # $v0, 0x800e
/* 1D1E84 801E1114 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1D1E88 801E1118 8DA40000 */  lw    $a0, ($t5)
/* 1D1E8C 801E111C 44813000 */  mtc1  $at, $f6
/* 1D1E90 801E1120 24422790 */  addiu $v0, %lo(gEntitiesNextPosYArray) # addiu $v0, $v0, 0x2790
/* 1D1E94 801E1124 00042080 */  sll   $a0, $a0, 2
/* 1D1E98 801E1128 00447821 */  addu  $t7, $v0, $a0
/* 1D1E9C 801E112C 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1D1EA0 801E1130 44818000 */  mtc1  $at, $f16
/* 1D1EA4 801E1134 C5E40000 */  lwc1  $f4, ($t7)
/* 1D1EA8 801E1138 C44A0000 */  lwc1  $f10, ($v0)
/* 1D1EAC 801E113C 46062200 */  add.s $f8, $f4, $f6
/* 1D1EB0 801E1140 46105480 */  add.s $f18, $f10, $f16
/* 1D1EB4 801E1144 4612403C */  c.lt.s $f8, $f18
/* 1D1EB8 801E1148 00000000 */  nop   
/* 1D1EBC 801E114C 45000005 */  bc1f  .L801E1164_ovl10
/* 1D1EC0 801E1150 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D1EC4 801E1154 00240821 */  addu  $at, $at, $a0
/* 1D1EC8 801E1158 240E0001 */  li    $t6, 1
/* 1D1ECC 801E115C 10000004 */  b     .L801E1170_ovl10
/* 1D1ED0 801E1160 AC2E9E20 */ sw $t6, %lo(D_800E9E20)($at)
.L801E1164_ovl10:
/* 1D1ED4 801E1164 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D1ED8 801E1168 00240821 */  addu  $at, $at, $a0
/* 1D1EDC 801E116C AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
.L801E1170_ovl10:
/* 1D1EE0 801E1170 0C0784E8 */  jal   func_801E13A0_ovl10
/* 1D1EE4 801E1174 02202025 */   move  $a0, $s1
/* 1D1EE8 801E1178 44802000 */  mtc1  $zero, $f4
/* 1D1EEC 801E117C 46000506 */  mov.s $f20, $f0
/* 1D1EF0 801E1180 4604003C */  c.lt.s $f0, $f4
/* 1D1EF4 801E1184 00000000 */  nop   
/* 1D1EF8 801E1188 45020004 */  bc1fl .L801E119C_ovl10
/* 1D1EFC 801E118C 46000306 */   mov.s $f12, $f0
/* 1D1F00 801E1190 10000002 */  b     .L801E119C_ovl10
/* 1D1F04 801E1194 46000307 */   neg.s $f12, $f0
/* 1D1F08 801E1198 46000306 */  mov.s $f12, $f0
.L801E119C_ovl10:
/* 1D1F0C 801E119C 0C00B5B8 */  jal   sinf
/* 1D1F10 801E11A0 00000000 */   nop   
/* 1D1F14 801E11A4 8ED80000 */  lw    $t8, ($s6)
/* 1D1F18 801E11A8 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1D1F1C 801E11AC 4481B000 */  mtc1  $at, $f22
/* 1D1F20 801E11B0 8F040000 */  lw    $a0, ($t8)
/* 1D1F24 801E11B4 3C15800E */  lui   $s5, %hi(D_800E6A10) # $s5, 0x800e
/* 1D1F28 801E11B8 46160182 */  mul.s $f6, $f0, $f22
/* 1D1F2C 801E11BC 26B56A10 */  addiu $s5, %lo(D_800E6A10) # addiu $s5, $s5, 0x6a10
/* 1D1F30 801E11C0 00042080 */  sll   $a0, $a0, 2
/* 1D1F34 801E11C4 02A46021 */  addu  $t4, $s5, $a0
/* 1D1F38 801E11C8 C58A0000 */  lwc1  $f10, ($t4)
/* 1D1F3C 801E11CC 44804000 */  mtc1  $zero, $f8
/* 1D1F40 801E11D0 3C14800E */  lui   $s4, %hi(D_800E64D0) # $s4, 0x800e
/* 1D1F44 801E11D4 460A3402 */  mul.s $f16, $f6, $f10
/* 1D1F48 801E11D8 4608A03C */  c.lt.s $f20, $f8
/* 1D1F4C 801E11DC 269464D0 */  addiu $s4, %lo(D_800E64D0) # addiu $s4, $s4, 0x64d0
/* 1D1F50 801E11E0 02844021 */  addu  $t0, $s4, $a0
/* 1D1F54 801E11E4 45000003 */  bc1f  .L801E11F4_ovl10
/* 1D1F58 801E11E8 E5100000 */   swc1  $f16, ($t0)
/* 1D1F5C 801E11EC 10000002 */  b     .L801E11F8_ovl10
/* 1D1F60 801E11F0 4600A307 */   neg.s $f12, $f20
.L801E11F4_ovl10:
/* 1D1F64 801E11F4 4600A306 */  mov.s $f12, $f20
.L801E11F8_ovl10:
/* 1D1F68 801E11F8 0C00D604 */  jal   cosf
/* 1D1F6C 801E11FC 00000000 */   nop   
/* 1D1F70 801E1200 8EC90000 */  lw    $t1, ($s6)
/* 1D1F74 801E1204 46160482 */  mul.s $f18, $f0, $f22
/* 1D1F78 801E1208 3C13800E */  lui   $s3, %hi(D_800E3210) # $s3, 0x800e
/* 1D1F7C 801E120C 8D2A0000 */  lw    $t2, ($t1)
/* 1D1F80 801E1210 26733210 */  addiu $s3, %lo(D_800E3210) # addiu $s3, $s3, 0x3210
/* 1D1F84 801E1214 3C040001 */  lui   $a0, (0x000102EF >> 16) # lui $a0, 1
/* 1D1F88 801E1218 000AC880 */  sll   $t9, $t2, 2
/* 1D1F8C 801E121C 02795821 */  addu  $t3, $s3, $t9
/* 1D1F90 801E1220 E5720000 */  swc1  $f18, ($t3)
/* 1D1F94 801E1224 0C02A806 */  jal   func_800AA018
/* 1D1F98 801E1228 348402EF */   ori   $a0, (0x000102EF & 0xFFFF) # ori $a0, $a0, 0x2ef
/* 1D1F9C 801E122C 3C040001 */  lui   $a0, (0x000102EE >> 16) # lui $a0, 1
/* 1D1FA0 801E1230 0C02A806 */  jal   func_800AA018
/* 1D1FA4 801E1234 348402EE */   ori   $a0, (0x000102EE & 0xFFFF) # ori $a0, $a0, 0x2ee
/* 1D1FA8 801E1238 8EC20000 */  lw    $v0, ($s6)
/* 1D1FAC 801E123C 240D0064 */  li    $t5, 100
/* 1D1FB0 801E1240 3C11800E */  lui   $s1, %hi(D_800E3C90) # $s1, 0x800e
/* 1D1FB4 801E1244 8C4F0000 */  lw    $t7, ($v0)
/* 1D1FB8 801E1248 26313C90 */  addiu $s1, %lo(D_800E3C90) # addiu $s1, $s1, 0x3c90
/* 1D1FBC 801E124C 3C10800E */  lui   $s0, %hi(D_800E3750) # $s0, 0x800e
/* 1D1FC0 801E1250 000F7080 */  sll   $t6, $t7, 2
/* 1D1FC4 801E1254 024EC021 */  addu  $t8, $s2, $t6
/* 1D1FC8 801E1258 AF0D0000 */  sw    $t5, ($t8)
/* 1D1FCC 801E125C 8C4C0000 */  lw    $t4, ($v0)
/* 1D1FD0 801E1260 000C4080 */  sll   $t0, $t4, 2
/* 1D1FD4 801E1264 02481821 */  addu  $v1, $s2, $t0
/* 1D1FD8 801E1268 8C690000 */  lw    $t1, ($v1)
/* 1D1FDC 801E126C 29210078 */  slti  $at, $t1, 0x78
/* 1D1FE0 801E1270 50200030 */  beql  $at, $zero, .L801E1334_ovl10
/* 1D1FE4 801E1274 240D03E8 */   li    $t5, 1000
/* 1D1FE8 801E1278 4480A000 */  mtc1  $zero, $f20
/* 1D1FEC 801E127C 26103750 */  addiu $s0, %lo(D_800E3750) # addiu $s0, $s0, 0x3750
.L801E1280_ovl10:
/* 1D1FF0 801E1280 0C002DAF */  jal   finish_current_thread
/* 1D1FF4 801E1284 24040005 */   li    $a0, 5
/* 1D1FF8 801E1288 0C029D9E */  jal   play_sound
/* 1D1FFC 801E128C 240401DC */   li    $a0, 476
/* 1D2000 801E1290 0C02BC9F */  jal   func_800AF27C
/* 1D2004 801E1294 00000000 */   nop   
/* 1D2008 801E1298 8EC20000 */  lw    $v0, ($s6)
/* 1D200C 801E129C 8C440000 */  lw    $a0, ($v0)
/* 1D2010 801E12A0 00042080 */  sll   $a0, $a0, 2
/* 1D2014 801E12A4 02441821 */  addu  $v1, $s2, $a0
/* 1D2018 801E12A8 8C650000 */  lw    $a1, ($v1)
/* 1D201C 801E12AC 02645021 */  addu  $t2, $s3, $a0
/* 1D2020 801E12B0 28A10068 */  slti  $at, $a1, 0x68
/* 1D2024 801E12B4 54200016 */  bnezl $at, .L801E1310_ovl10
/* 1D2028 801E12B8 24B90001 */   addiu $t9, $a1, 1
/* 1D202C 801E12BC E5540000 */  swc1  $f20, ($t2)
/* 1D2030 801E12C0 8C590000 */  lw    $t9, ($v0)
/* 1D2034 801E12C4 00195880 */  sll   $t3, $t9, 2
/* 1D2038 801E12C8 020B7821 */  addu  $t7, $s0, $t3
/* 1D203C 801E12CC E5F40000 */  swc1  $f20, ($t7)
/* 1D2040 801E12D0 8C4E0000 */  lw    $t6, ($v0)
/* 1D2044 801E12D4 000E6880 */  sll   $t5, $t6, 2
/* 1D2048 801E12D8 022DC021 */  addu  $t8, $s1, $t5
/* 1D204C 801E12DC E7140000 */  swc1  $f20, ($t8)
/* 1D2050 801E12E0 8C440000 */  lw    $a0, ($v0)
/* 1D2054 801E12E4 00042080 */  sll   $a0, $a0, 2
/* 1D2058 801E12E8 02A46021 */  addu  $t4, $s5, $a0
/* 1D205C 801E12EC C5840000 */  lwc1  $f4, ($t4)
/* 1D2060 801E12F0 02844021 */  addu  $t0, $s4, $a0
/* 1D2064 801E12F4 46162182 */  mul.s $f6, $f4, $f22
/* 1D2068 801E12F8 E5060000 */  swc1  $f6, ($t0)
/* 1D206C 801E12FC 8C490000 */  lw    $t1, ($v0)
/* 1D2070 801E1300 00095080 */  sll   $t2, $t1, 2
/* 1D2074 801E1304 024A1821 */  addu  $v1, $s2, $t2
/* 1D2078 801E1308 8C650000 */  lw    $a1, ($v1)
/* 1D207C 801E130C 24B90001 */  addiu $t9, $a1, 1
.L801E1310_ovl10:
/* 1D2080 801E1310 AC790000 */  sw    $t9, ($v1)
/* 1D2084 801E1314 8C4B0000 */  lw    $t3, ($v0)
/* 1D2088 801E1318 000B7880 */  sll   $t7, $t3, 2
/* 1D208C 801E131C 024F1821 */  addu  $v1, $s2, $t7
/* 1D2090 801E1320 8C6E0000 */  lw    $t6, ($v1)
/* 1D2094 801E1324 29C10078 */  slti  $at, $t6, 0x78
/* 1D2098 801E1328 1420FFD5 */  bnez  $at, .L801E1280_ovl10
/* 1D209C 801E132C 00000000 */   nop   
/* 1D20A0 801E1330 240D03E8 */  li    $t5, 1000
.L801E1334_ovl10:
/* 1D20A4 801E1334 0C02CCFD */  jal   func_800B33F4
/* 1D20A8 801E1338 AC6D0000 */   sw    $t5, ($v1)
/* 1D20AC 801E133C 3C040001 */  lui   $a0, (0x000102F7 >> 16) # lui $a0, 1
/* 1D20B0 801E1340 0C02A806 */  jal   func_800AA018
/* 1D20B4 801E1344 348402F7 */   ori   $a0, (0x000102F7 & 0xFFFF) # ori $a0, $a0, 0x2f7
/* 1D20B8 801E1348 3C040001 */  lui   $a0, (0x000102F6 >> 16) # lui $a0, 1
/* 1D20BC 801E134C 0C02A855 */  jal   func_800AA154
/* 1D20C0 801E1350 348402F6 */   ori   $a0, (0x000102F6 & 0xFFFF) # ori $a0, $a0, 0x2f6
/* 1D20C4 801E1354 8ECC0000 */  lw    $t4, ($s6)
/* 1D20C8 801E1358 8FBF0044 */  lw    $ra, 0x44($sp)
/* 1D20CC 801E135C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D20D0 801E1360 8D880000 */  lw    $t0, ($t4)
/* 1D20D4 801E1364 2418000B */  li    $t8, 11
/* 1D20D8 801E1368 8FB60040 */  lw    $s6, 0x40($sp)
/* 1D20DC 801E136C 00084880 */  sll   $t1, $t0, 2
/* 1D20E0 801E1370 00290821 */  addu  $at, $at, $t1
/* 1D20E4 801E1374 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1D20E8 801E1378 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 1D20EC 801E137C 8FB00028 */  lw    $s0, 0x28($sp)
/* 1D20F0 801E1380 8FB1002C */  lw    $s1, 0x2c($sp)
/* 1D20F4 801E1384 8FB20030 */  lw    $s2, 0x30($sp)
/* 1D20F8 801E1388 8FB30034 */  lw    $s3, 0x34($sp)
/* 1D20FC 801E138C 8FB40038 */  lw    $s4, 0x38($sp)
/* 1D2100 801E1390 8FB5003C */  lw    $s5, 0x3c($sp)
/* 1D2104 801E1394 AC38DC50 */ sw $t8, %lo(gEntityVtableIndexArray)($at)
/* 1D2108 801E1398 03E00008 */  jr    $ra
/* 1D210C 801E139C 27BD0048 */   addiu $sp, $sp, 0x48
.type func_801E100C_ovl10, @function
.size func_801E100C_ovl10, . - func_801E100C_ovl10
