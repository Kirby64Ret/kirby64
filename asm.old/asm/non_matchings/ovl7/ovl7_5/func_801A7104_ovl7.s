glabel func_801A7104_ovl7
/* 14D174 801A7104 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 14D178 801A7108 AFB10018 */  sw    $s1, 0x18($sp)
/* 14D17C 801A710C 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 14D180 801A7110 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 14D184 801A7114 8E2E0000 */  lw    $t6, ($s1)
/* 14D188 801A7118 AFBF001C */  sw    $ra, 0x1c($sp)
/* 14D18C 801A711C AFB00014 */  sw    $s0, 0x14($sp)
/* 14D190 801A7120 AFA40040 */  sw    $a0, 0x40($sp)
/* 14D194 801A7124 8DC50000 */  lw    $a1, ($t6)
/* 14D198 801A7128 3C0F800E */ lui $t7, %hi(D_800D9E20)
/* 14D19C 801A712C 3C10800E */ lui $s0, %hi(D_800E1B50)
/* 14D1A0 801A7130 00051080 */  sll   $v0, $a1, 2
/* 14D1A4 801A7134 01E27821 */  addu  $t7, $t7, $v0
/* 14D1A8 801A7138 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 14D1AC 801A713C 02028021 */  addu  $s0, $s0, $v0
/* 14D1B0 801A7140 8E101B50 */ lw $s0, %lo(D_800E1B50)($s0)
/* 14D1B4 801A7144 AFAF003C */  sw    $t7, 0x3c($sp)
/* 14D1B8 801A7148 24040030 */  li    $a0, 48
/* 14D1BC 801A714C 8E180088 */  lw    $t8, 0x88($s0)
/* 14D1C0 801A7150 8F19000C */  lw    $t9, 0xc($t8)
/* 14D1C4 801A7154 0C02C67D */  jal   func_800B19F4
/* 14D1C8 801A7158 AFB90034 */   sw    $t9, 0x34($sp)
/* 14D1CC 801A715C 8E230000 */  lw    $v1, ($s1)
/* 14D1D0 801A7160 3C0B800B */  lui   $t3, %hi(D_800B4EBC) # $t3, 0x800b
/* 14D1D4 801A7164 3C01800E */ lui $at, %hi(D_800DEF90)
/* 14D1D8 801A7168 8C6C0000 */  lw    $t4, ($v1)
/* 14D1DC 801A716C 256B4EBC */  addiu $t3, %lo(D_800B4EBC) # addiu $t3, $t3, 0x4ebc
/* 14D1E0 801A7170 3C0E801A */  lui   $t6, %hi(D_801A7524) # $t6, 0x801a
/* 14D1E4 801A7174 000C6880 */  sll   $t5, $t4, 2
/* 14D1E8 801A7178 002D0821 */  addu  $at, $at, $t5
/* 14D1EC 801A717C AC2BEF90 */ sw $t3, %lo(D_800DEF90)($at)
/* 14D1F0 801A7180 8C6F0000 */  lw    $t7, ($v1)
/* 14D1F4 801A7184 3C01800E */ lui $at, %hi(D_800DF150)
/* 14D1F8 801A7188 25CE7524 */  addiu $t6, %lo(D_801A7524) # addiu $t6, $t6, 0x7524
/* 14D1FC 801A718C 000FC080 */  sll   $t8, $t7, 2
/* 14D200 801A7190 00380821 */  addu  $at, $at, $t8
/* 14D204 801A7194 AC2EF150 */ sw $t6, %lo(D_800DF150)($at)
/* 14D208 801A7198 2408FFFF */  li    $t0, -1
/* 14D20C 801A719C 3C19801D */  lui   $t9, %hi(D_801CB590) # $t9, 0x801d
/* 14D210 801A71A0 2739B590 */  addiu $t9, %lo(D_801CB590) # addiu $t9, $t9, -0x4a70
/* 14D214 801A71A4 240C0001 */  li    $t4, 1
/* 14D218 801A71A8 AE000048 */  sw    $zero, 0x48($s0)
/* 14D21C 801A71AC AE190098 */  sw    $t9, 0x98($s0)
/* 14D220 801A71B0 A20C0042 */  sb    $t4, 0x42($s0)
/* 14D224 801A71B4 A2080038 */  sb    $t0, 0x38($s0)
/* 14D228 801A71B8 A2080039 */  sb    $t0, 0x39($s0)
/* 14D22C 801A71BC 8E230000 */  lw    $v1, ($s1)
/* 14D230 801A71C0 3C01800F */ lui $at, %hi(D_800E8920)
/* 14D234 801A71C4 8FAA003C */  lw    $t2, 0x3c($sp)
/* 14D238 801A71C8 8C6B0000 */  lw    $t3, ($v1)
/* 14D23C 801A71CC 3C04800E */  lui   $a0, %hi(gEntitiesNextPosXArray) # $a0, 0x800e
/* 14D240 801A71D0 248425D0 */  addiu $a0, %lo(gEntitiesNextPosXArray) # addiu $a0, $a0, 0x25d0
/* 14D244 801A71D4 000B6880 */  sll   $t5, $t3, 2
/* 14D248 801A71D8 002D0821 */  addu  $at, $at, $t5
/* 14D24C 801A71DC AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 14D250 801A71E0 8C620000 */  lw    $v0, ($v1)
/* 14D254 801A71E4 000A5080 */  sll   $t2, $t2, 2
/* 14D258 801A71E8 008A7021 */  addu  $t6, $a0, $t2
/* 14D25C 801A71EC 00021080 */  sll   $v0, $v0, 2
/* 14D260 801A71F0 0082C021 */  addu  $t8, $a0, $v0
/* 14D264 801A71F4 C7040000 */  lwc1  $f4, ($t8)
/* 14D268 801A71F8 C5C00000 */  lwc1  $f0, ($t6)
/* 14D26C 801A71FC 8FAF0034 */  lw    $t7, 0x34($sp)
/* 14D270 801A7200 3C01800E */ lui $at, %hi(D_800E2090)
/* 14D274 801A7204 46002181 */  sub.s $f6, $f4, $f0
/* 14D278 801A7208 8DE70000 */  lw    $a3, ($t7)
/* 14D27C 801A720C 00220821 */  addu  $at, $at, $v0
/* 14D280 801A7210 3C05800E */  lui   $a1, %hi(gEntitiesNextPosYArray) # $a1, 0x800e
/* 14D284 801A7214 E4262090 */ swc1 $f6, %lo(D_800E2090)($at)
/* 14D288 801A7218 8C620000 */  lw    $v0, ($v1)
/* 14D28C 801A721C 24A52790 */  addiu $a1, %lo(gEntitiesNextPosYArray) # addiu $a1, $a1, 0x2790
/* 14D290 801A7220 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 14D294 801A7224 44815000 */  mtc1  $at, $f10
/* 14D298 801A7228 C4A80000 */  lwc1  $f8, ($a1)
/* 14D29C 801A722C 00021080 */  sll   $v0, $v0, 2
/* 14D2A0 801A7230 00A2C821 */  addu  $t9, $a1, $v0
/* 14D2A4 801A7234 460A4380 */  add.s $f14, $f8, $f10
/* 14D2A8 801A7238 C7240000 */  lwc1  $f4, ($t9)
/* 14D2AC 801A723C 3C01800E */ lui $at, %hi(D_800E2250)
/* 14D2B0 801A7240 00220821 */  addu  $at, $at, $v0
/* 14D2B4 801A7244 460E2181 */  sub.s $f6, $f4, $f14
/* 14D2B8 801A7248 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 14D2BC 801A724C 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 14D2C0 801A7250 00CA6021 */  addu  $t4, $a2, $t2
/* 14D2C4 801A7254 E4262250 */ swc1 $f6, %lo(D_800E2250)($at)
/* 14D2C8 801A7258 8C620000 */  lw    $v0, ($v1)
/* 14D2CC 801A725C C5920000 */  lwc1  $f18, ($t4)
/* 14D2D0 801A7260 3C01800E */ lui $at, %hi(D_800E2410)
/* 14D2D4 801A7264 00021080 */  sll   $v0, $v0, 2
/* 14D2D8 801A7268 00C25821 */  addu  $t3, $a2, $v0
/* 14D2DC 801A726C C5680000 */  lwc1  $f8, ($t3)
/* 14D2E0 801A7270 00220821 */  addu  $at, $at, $v0
/* 14D2E4 801A7274 3C09800E */  lui   $t1, %hi(D_800E33D0) # $t1, 0x800e
/* 14D2E8 801A7278 46124281 */  sub.s $f10, $f8, $f18
/* 14D2EC 801A727C 44804000 */  mtc1  $zero, $f8
/* 14D2F0 801A7280 252933D0 */  addiu $t1, %lo(D_800E33D0) # addiu $t1, $t1, 0x33d0
/* 14D2F4 801A7284 240B002D */  li    $t3, 45
/* 14D2F8 801A7288 E42A2410 */ swc1 $f10, %lo(D_800E2410)($at)
/* 14D2FC 801A728C 8C620000 */  lw    $v0, ($v1)
/* 14D300 801A7290 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 14D304 801A7294 00021080 */  sll   $v0, $v0, 2
/* 14D308 801A7298 00220821 */  addu  $at, $at, $v0
/* 14D30C 801A729C C42441D0 */ lwc1 $f4, %lo(gEntitiesAngleYArray)($at)
/* 14D310 801A72A0 3C01800E */ lui $at, %hi(D_800E4C50)
/* 14D314 801A72A4 00220821 */  addu  $at, $at, $v0
/* 14D318 801A72A8 E4244C50 */ swc1 $f4, %lo(D_800E4C50)($at)
/* 14D31C 801A72AC 8C620000 */  lw    $v0, ($v1)
/* 14D320 801A72B0 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 14D324 801A72B4 00021080 */  sll   $v0, $v0, 2
/* 14D328 801A72B8 00220821 */  addu  $at, $at, $v0
/* 14D32C 801A72BC C4264390 */ lwc1 $f6, %lo(gEntitiesAngleZArray)($at)
/* 14D330 801A72C0 3C01800E */ lui $at, %hi(D_800E4E10)
/* 14D334 801A72C4 00220821 */  addu  $at, $at, $v0
/* 14D338 801A72C8 E4264E10 */ swc1 $f6, %lo(D_800E4E10)($at)
/* 14D33C 801A72CC 8C6D0000 */  lw    $t5, ($v1)
/* 14D340 801A72D0 3C01800E */ lui $at, %hi(D_800E3210)
/* 14D344 801A72D4 000D7880 */  sll   $t7, $t5, 2
/* 14D348 801A72D8 012F7021 */  addu  $t6, $t1, $t7
/* 14D34C 801A72DC E5C80000 */  swc1  $f8, ($t6)
/* 14D350 801A72E0 8C620000 */  lw    $v0, ($v1)
/* 14D354 801A72E4 00021080 */  sll   $v0, $v0, 2
/* 14D358 801A72E8 0122C021 */  addu  $t8, $t1, $v0
/* 14D35C 801A72EC C70A0000 */  lwc1  $f10, ($t8)
/* 14D360 801A72F0 00220821 */  addu  $at, $at, $v0
/* 14D364 801A72F4 E7AA002C */  swc1  $f10, 0x2c($sp)
/* 14D368 801A72F8 C7A4002C */  lwc1  $f4, 0x2c($sp)
/* 14D36C 801A72FC C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 14D370 801A7300 44805000 */  mtc1  $zero, $f10
/* 14D374 801A7304 E4243210 */ swc1 $f4, %lo(D_800E3210)($at)
/* 14D378 801A7308 8C790000 */  lw    $t9, ($v1)
/* 14D37C 801A730C 3C01800E */ lui $at, %hi(D_800E3050)
/* 14D380 801A7310 00196080 */  sll   $t4, $t9, 2
/* 14D384 801A7314 002C0821 */  addu  $at, $at, $t4
/* 14D388 801A7318 E4263050 */ swc1 $f6, %lo(D_800E3050)($at)
/* 14D38C 801A731C 8C6D0000 */  lw    $t5, ($v1)
/* 14D390 801A7320 3C01800F */ lui $at, %hi(D_800EB6A0)
/* 14D394 801A7324 000D7880 */  sll   $t7, $t5, 2
/* 14D398 801A7328 002F0821 */  addu  $at, $at, $t7
/* 14D39C 801A732C AC2BB6A0 */ sw $t3, %lo(D_800EB6A0)($at)
/* 14D3A0 801A7330 8C6E0000 */  lw    $t6, ($v1)
/* 14D3A4 801A7334 3C01800F */ lui $at, %hi(D_800E9C60)
/* 14D3A8 801A7338 000EC080 */  sll   $t8, $t6, 2
/* 14D3AC 801A733C 00380821 */  addu  $at, $at, $t8
/* 14D3B0 801A7340 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 14D3B4 801A7344 8C790000 */  lw    $t9, ($v1)
/* 14D3B8 801A7348 3C01800F */ lui $at, %hi(D_800E9E20)
/* 14D3BC 801A734C 00196080 */  sll   $t4, $t9, 2
/* 14D3C0 801A7350 002C0821 */  addu  $at, $at, $t4
/* 14D3C4 801A7354 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 14D3C8 801A7358 8C6D0000 */  lw    $t5, ($v1)
/* 14D3CC 801A735C C4E80010 */  lwc1  $f8, 0x10($a3)
/* 14D3D0 801A7360 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 14D3D4 801A7364 000D5880 */  sll   $t3, $t5, 2
/* 14D3D8 801A7368 002B0821 */  addu  $at, $at, $t3
/* 14D3DC 801A736C E428A6E0 */ swc1 $f8, %lo(D_800EA6E0)($at)
/* 14D3E0 801A7370 8C6F0000 */  lw    $t7, ($v1)
/* 14D3E4 801A7374 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 14D3E8 801A7378 000F7080 */  sll   $t6, $t7, 2
/* 14D3EC 801A737C 002E0821 */  addu  $at, $at, $t6
/* 14D3F0 801A7380 E42AA8A0 */ swc1 $f10, %lo(D_800EA8A0)($at)
/* 14D3F4 801A7384 8C620000 */  lw    $v0, ($v1)
/* 14D3F8 801A7388 00021080 */  sll   $v0, $v0, 2
/* 14D3FC 801A738C 00C2C021 */  addu  $t8, $a2, $v0
/* 14D400 801A7390 C7040000 */  lwc1  $f4, ($t8)
/* 14D404 801A7394 0082C821 */  addu  $t9, $a0, $v0
/* 14D408 801A7398 C7280000 */  lwc1  $f8, ($t9)
/* 14D40C 801A739C 46122181 */  sub.s $f6, $f4, $f18
/* 14D410 801A73A0 00A26021 */  addu  $t4, $a1, $v0
/* 14D414 801A73A4 C58A0000 */  lwc1  $f10, ($t4)
/* 14D418 801A73A8 46004081 */  sub.s $f2, $f8, $f0
/* 14D41C 801A73AC E7A60020 */  swc1  $f6, 0x20($sp)
/* 14D420 801A73B0 C7A40020 */  lwc1  $f4, 0x20($sp)
/* 14D424 801A73B4 460E5401 */  sub.s $f16, $f10, $f14
/* 14D428 801A73B8 AFAA0028 */  sw    $t2, 0x28($sp)
/* 14D42C 801A73BC 46042182 */  mul.s $f6, $f4, $f4
/* 14D430 801A73C0 AFA70030 */  sw    $a3, 0x30($sp)
/* 14D434 801A73C4 46021202 */  mul.s $f8, $f2, $f2
/* 14D438 801A73C8 00000000 */  nop   
/* 14D43C 801A73CC 46108282 */  mul.s $f10, $f16, $f16
/* 14D440 801A73D0 460A4100 */  add.s $f4, $f8, $f10
/* 14D444 801A73D4 0C00CAC8 */  jal   sqrtf
/* 14D448 801A73D8 46043300 */   add.s $f12, $f6, $f4
/* 14D44C 801A73DC 8E230000 */  lw    $v1, ($s1)
/* 14D450 801A73E0 3C01800F */ lui $at, %hi(D_800EAA60)
/* 14D454 801A73E4 44804000 */  mtc1  $zero, $f8
/* 14D458 801A73E8 8C6D0000 */  lw    $t5, ($v1)
/* 14D45C 801A73EC 24180001 */  li    $t8, 1
/* 14D460 801A73F0 8FA40030 */  lw    $a0, 0x30($sp)
/* 14D464 801A73F4 000D5880 */  sll   $t3, $t5, 2
/* 14D468 801A73F8 002B0821 */  addu  $at, $at, $t3
/* 14D46C 801A73FC E420AA60 */ swc1 $f0, %lo(D_800EAA60)($at)
/* 14D470 801A7400 8C6F0000 */  lw    $t7, ($v1)
/* 14D474 801A7404 3C01800F */ lui $at, %hi(D_800EAC20)
/* 14D478 801A7408 000F7080 */  sll   $t6, $t7, 2
/* 14D47C 801A740C 002E0821 */  addu  $at, $at, $t6
/* 14D480 801A7410 E428AC20 */ swc1 $f8, %lo(D_800EAC20)($at)
/* 14D484 801A7414 8C790000 */  lw    $t9, ($v1)
/* 14D488 801A7418 3C01800F */ lui $at, %hi(D_800E8E60)
/* 14D48C 801A741C 00196080 */  sll   $t4, $t9, 2
/* 14D490 801A7420 002C0821 */  addu  $at, $at, $t4
/* 14D494 801A7424 0C06B1B4 */  jal   func_801AC6D0_ovl7
/* 14D498 801A7428 AC388E60 */ sw $t8, %lo(D_800E8E60)($at)
/* 14D49C 801A742C 8E230000 */  lw    $v1, ($s1)
/* 14D4A0 801A7430 3C01800F */ lui $at, %hi(D_800EB4E0)
/* 14D4A4 801A7434 8C6D0000 */  lw    $t5, ($v1)
/* 14D4A8 801A7438 000D5880 */  sll   $t3, $t5, 2
/* 14D4AC 801A743C 002B0821 */  addu  $at, $at, $t3
/* 14D4B0 801A7440 AC22B4E0 */ sw $v0, %lo(D_800EB4E0)($at)
/* 14D4B4 801A7444 8C6F0000 */  lw    $t7, ($v1)
/* 14D4B8 801A7448 3C01800E */ lui $at, %hi(D_800DF310)
/* 14D4BC 801A744C 000F7080 */  sll   $t6, $t7, 2
/* 14D4C0 801A7450 002E0821 */  addu  $at, $at, $t6
/* 14D4C4 801A7454 AC20F310 */ sw $zero, %lo(D_800DF310)($at)
/* 14D4C8 801A7458 8E050034 */  lw    $a1, 0x34($s0)
/* 14D4CC 801A745C 10A00003 */  beqz  $a1, .L801A746C_ovl7
/* 14D4D0 801A7460 00000000 */   nop   
/* 14D4D4 801A7464 0C0288B5 */  jal   func_800A22D4
/* 14D4D8 801A7468 00A02025 */   move  $a0, $a1
.L801A746C_ovl7:
/* 14D4DC 801A746C 0C0288C0 */  jal   func_800A2300
/* 14D4E0 801A7470 8FA40040 */   lw    $a0, 0x40($sp)
/* 14D4E4 801A7474 AE000034 */  sw    $zero, 0x34($s0)
/* 14D4E8 801A7478 8E390000 */  lw    $t9, ($s1)
/* 14D4EC 801A747C 44805000 */  mtc1  $zero, $f10
/* 14D4F0 801A7480 3C01800E */ lui $at, %hi(D_800E7B20)
/* 14D4F4 801A7484 8F380000 */  lw    $t8, ($t9)
/* 14D4F8 801A7488 8FA40040 */  lw    $a0, 0x40($sp)
/* 14D4FC 801A748C 00186080 */  sll   $t4, $t8, 2
/* 14D500 801A7490 002C0821 */  addu  $at, $at, $t4
/* 14D504 801A7494 0C066DF6 */  jal   func_8019B7D8_ovl7
/* 14D508 801A7498 E42A7B20 */ swc1 $f10, %lo(D_800E7B20)($at)
/* 14D50C 801A749C 8E2D0000 */  lw    $t5, ($s1)
/* 14D510 801A74A0 3C01800F */ lui $at, %hi(D_800E83E0)
/* 14D514 801A74A4 8DAB0000 */  lw    $t3, ($t5)
/* 14D518 801A74A8 000B7880 */  sll   $t7, $t3, 2
/* 14D51C 801A74AC 002F0821 */  addu  $at, $at, $t7
/* 14D520 801A74B0 AC2083E0 */ sw $zero, %lo(D_800E83E0)($at)
.L801A74B4_ovl7:
/* 14D524 801A74B4 0C06A2EB */  jal   func_801A8BAC_ovl7
/* 14D528 801A74B8 00000000 */   nop   
/* 14D52C 801A74BC 54400006 */  bnezl $v0, .L801A74D8_ovl7
/* 14D530 801A74C0 8FAE0028 */   lw    $t6, 0x28($sp)
/* 14D534 801A74C4 0C002DAF */  jal   finish_current_thread
/* 14D538 801A74C8 24040001 */   li    $a0, 1
/* 14D53C 801A74CC 1000FFF9 */  b     .L801A74B4_ovl7
/* 14D540 801A74D0 00000000 */   nop   
/* 14D544 801A74D4 8FAE0028 */  lw    $t6, 0x28($sp)
.L801A74D8_ovl7:
/* 14D548 801A74D8 3C19800F */ lui $t9, %hi(D_800E8060)
/* 14D54C 801A74DC 2401FFFF */  li    $at, -1
/* 14D550 801A74E0 032EC821 */  addu  $t9, $t9, $t6
/* 14D554 801A74E4 8F398060 */ lw $t9, %lo(D_800E8060)($t9)
/* 14D558 801A74E8 17210003 */  bne   $t9, $at, .L801A74F8_ovl7
/* 14D55C 801A74EC 00000000 */   nop   
/* 14D560 801A74F0 0C002DAF */  jal   finish_current_thread
/* 14D564 801A74F4 24040001 */   li    $a0, 1
.L801A74F8_ovl7:
/* 14D568 801A74F8 0C06A49A */  jal   func_801A9268_ovl7
/* 14D56C 801A74FC 00000000 */   nop   
/* 14D570 801A7500 3C018013 */  lui   $at, %hi(D_8012E87A) # $at, 0x8013
/* 14D574 801A7504 A420E87A */  sh    $zero, %lo(D_8012E87A)($at)
/* 14D578 801A7508 0C06A337 */  jal   func_801A8CDC_ovl7
/* 14D57C 801A750C 8FA40040 */   lw    $a0, 0x40($sp)
/* 14D580 801A7510 8FBF001C */  lw    $ra, 0x1c($sp)
/* 14D584 801A7514 8FB00014 */  lw    $s0, 0x14($sp)
/* 14D588 801A7518 8FB10018 */  lw    $s1, 0x18($sp)
/* 14D58C 801A751C 03E00008 */  jr    $ra
/* 14D590 801A7520 27BD0040 */   addiu $sp, $sp, 0x40
.type func_801A7104_ovl7, @function
.size func_801A7104_ovl7, . - func_801A7104_ovl7
