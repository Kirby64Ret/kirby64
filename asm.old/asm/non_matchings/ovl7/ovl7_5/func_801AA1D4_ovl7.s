glabel func_801AA1D4_ovl7
/* 150244 801AA1D4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 150248 801AA1D8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15024C 801AA1DC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 150250 801AA1E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 150254 801AA1E4 AFA40030 */  sw    $a0, 0x30($sp)
/* 150258 801AA1E8 8DC20000 */  lw    $v0, ($t6)
/* 15025C 801AA1EC 3C07800E */ lui $a3, %hi(D_800E1B50)
/* 150260 801AA1F0 3C09801B */  lui   $t1, %hi(D_801AA33C) # $t1, 0x801b
/* 150264 801AA1F4 00021080 */  sll   $v0, $v0, 2
/* 150268 801AA1F8 00E23821 */  addu  $a3, $a3, $v0
/* 15026C 801AA1FC 8CE71B50 */ lw $a3, %lo(D_800E1B50)($a3)
/* 150270 801AA200 3C01800E */ lui $at, %hi(D_800DF150)
/* 150274 801AA204 00220821 */  addu  $at, $at, $v0
/* 150278 801AA208 8CEF0088 */  lw    $t7, 0x88($a3)
/* 15027C 801AA20C 2529A33C */  addiu $t1, %lo(D_801AA33C) # addiu $t1, $t1, -0x5cc4
/* 150280 801AA210 8DE3000C */  lw    $v1, 0xc($t7)
/* 150284 801AA214 8C780004 */  lw    $t8, 4($v1)
/* 150288 801AA218 AFB80024 */  sw    $t8, 0x24($sp)
/* 15028C 801AA21C 8C790004 */  lw    $t9, 4($v1)
/* 150290 801AA220 8F26001C */  lw    $a2, 0x1c($t9)
/* 150294 801AA224 8CC80014 */  lw    $t0, 0x14($a2)
/* 150298 801AA228 AC29F150 */ sw $t1, %lo(D_800DF150)($at)
/* 15029C 801AA22C AFA7002C */  sw    $a3, 0x2c($sp)
/* 1502A0 801AA230 0C02BD02 */  jal   func_800AF408
/* 1502A4 801AA234 AFA8001C */   sw    $t0, 0x1c($sp)
/* 1502A8 801AA238 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 1502AC 801AA23C 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 1502B0 801AA240 8FAD002C */  lw    $t5, 0x2c($sp)
/* 1502B4 801AA244 3C01800E */ lui $at, %hi(D_800DF310)
/* 1502B8 801AA248 8D4B0000 */  lw    $t3, ($t2)
/* 1502BC 801AA24C 000B6080 */  sll   $t4, $t3, 2
/* 1502C0 801AA250 002C0821 */  addu  $at, $at, $t4
/* 1502C4 801AA254 AC20F310 */ sw $zero, %lo(D_800DF310)($at)
/* 1502C8 801AA258 8DA20034 */  lw    $v0, 0x34($t5)
/* 1502CC 801AA25C 10400003 */  beqz  $v0, .L801AA26C_ovl7
/* 1502D0 801AA260 00000000 */   nop   
/* 1502D4 801AA264 0C0288B5 */  jal   func_800A22D4
/* 1502D8 801AA268 00402025 */   move  $a0, $v0
.L801AA26C_ovl7:
/* 1502DC 801AA26C 0C0288C0 */  jal   func_800A2300
/* 1502E0 801AA270 8FA40030 */   lw    $a0, 0x30($sp)
/* 1502E4 801AA274 3C03801D */  lui   $v1, %hi(D_801D0AA0) # $v1, 0x801d
/* 1502E8 801AA278 3C04801D */  lui   $a0, %hi(D_801D0A9C) # $a0, 0x801d
/* 1502EC 801AA27C 24840A9C */  addiu $a0, %lo(D_801D0A9C) # addiu $a0, $a0, 0xa9c
/* 1502F0 801AA280 24630AA0 */  addiu $v1, %lo(D_801D0AA0) # addiu $v1, $v1, 0xaa0
/* 1502F4 801AA284 AC600000 */  sw    $zero, ($v1)
/* 1502F8 801AA288 AC800000 */  sw    $zero, ($a0)
/* 1502FC 801AA28C 3C01801D */  lui   $at, %hi(D_801D0A98) # $at, 0x801d
/* 150300 801AA290 8FB8002C */  lw    $t8, 0x2c($sp)
/* 150304 801AA294 AC200A98 */  sw    $zero, %lo(D_801D0A98)($at)
/* 150308 801AA298 3C01801D */  lui   $at, %hi(D_801D0AA8) # $at, 0x801d
/* 15030C 801AA29C 8FA50024 */  lw    $a1, 0x24($sp)
/* 150310 801AA2A0 8FA6001C */  lw    $a2, 0x1c($sp)
/* 150314 801AA2A4 AC200AA8 */  sw    $zero, %lo(D_801D0AA8)($at)
/* 150318 801AA2A8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15031C 801AA2AC AF000034 */  sw    $zero, 0x34($t8)
/* 150320 801AA2B0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 150324 801AA2B4 3C018013 */  lui   $at, %hi(D_8012E878) # $at, 0x8013
/* 150328 801AA2B8 A020E878 */  sb    $zero, %lo(D_8012E878)($at)
/* 15032C 801AA2BC 8C590000 */  lw    $t9, ($v0)
/* 150330 801AA2C0 C4A40010 */  lwc1  $f4, 0x10($a1)
/* 150334 801AA2C4 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 150338 801AA2C8 00194080 */  sll   $t0, $t9, 2
/* 15033C 801AA2CC 00280821 */  addu  $at, $at, $t0
/* 150340 801AA2D0 E4244550 */ swc1 $f4, %lo(gEntitiesScaleXArray)($at)
/* 150344 801AA2D4 8C490000 */  lw    $t1, ($v0)
/* 150348 801AA2D8 C4A60010 */  lwc1  $f6, 0x10($a1)
/* 15034C 801AA2DC 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 150350 801AA2E0 00095080 */  sll   $t2, $t1, 2
/* 150354 801AA2E4 002A0821 */  addu  $at, $at, $t2
/* 150358 801AA2E8 E4264710 */ swc1 $f6, %lo(gEntitiesScaleYArray)($at)
/* 15035C 801AA2EC 8C4B0000 */  lw    $t3, ($v0)
/* 150360 801AA2F0 C4A80010 */  lwc1  $f8, 0x10($a1)
/* 150364 801AA2F4 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 150368 801AA2F8 000B6080 */  sll   $t4, $t3, 2
/* 15036C 801AA2FC 002C0821 */  addu  $at, $at, $t4
/* 150370 801AA300 10C00008 */  beqz  $a2, .L801AA324_ovl7
/* 150374 801AA304 E42848D0 */ swc1 $f8, %lo(gEntitiesScaleZArray)($at)
/* 150378 801AA308 8CC20040 */  lw    $v0, 0x40($a2)
/* 15037C 801AA30C 10400005 */  beqz  $v0, .L801AA324_ovl7
/* 150380 801AA310 00000000 */   nop   
/* 150384 801AA314 0040F809 */  jalr  $v0
/* 150388 801AA318 8FA40030 */  lw    $a0, 0x30($sp)
/* 15038C 801AA31C 10000004 */  b     .L801AA330_ovl7
/* 150390 801AA320 8FBF0014 */   lw    $ra, 0x14($sp)
.L801AA324_ovl7:
/* 150394 801AA324 0C06AC5D */  jal   func_801AB174_ovl7
/* 150398 801AA328 8FA40030 */   lw    $a0, 0x30($sp)
/* 15039C 801AA32C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801AA330_ovl7:
/* 1503A0 801AA330 27BD0030 */  addiu $sp, $sp, 0x30
/* 1503A4 801AA334 03E00008 */  jr    $ra
/* 1503A8 801AA338 00000000 */   nop   
.type func_801AA1D4_ovl7, @function
.size func_801AA1D4_ovl7, . - func_801AA1D4_ovl7
