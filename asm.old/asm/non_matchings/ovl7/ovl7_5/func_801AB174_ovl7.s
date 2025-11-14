glabel func_801AB174_ovl7
/* 1511E4 801AB174 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1511E8 801AB178 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1511EC 801AB17C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1511F0 801AB180 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1511F4 801AB184 AFA40028 */  sw    $a0, 0x28($sp)
/* 1511F8 801AB188 8C450000 */  lw    $a1, ($v0)
/* 1511FC 801AB18C 3C03800E */ lui $v1, %hi(D_800E1B50)
/* 151200 801AB190 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 151204 801AB194 00052880 */  sll   $a1, $a1, 2
/* 151208 801AB198 00651821 */  addu  $v1, $v1, $a1
/* 15120C 801AB19C 8C631B50 */ lw $v1, %lo(D_800E1B50)($v1)
/* 151210 801AB1A0 44812000 */  mtc1  $at, $f4
/* 151214 801AB1A4 3C01800F */ lui $at, %hi(D_800EC660)
/* 151218 801AB1A8 8C6E0088 */  lw    $t6, 0x88($v1)
/* 15121C 801AB1AC 00250821 */  addu  $at, $at, $a1
/* 151220 801AB1B0 44803000 */  mtc1  $zero, $f6
/* 151224 801AB1B4 8DC7000C */  lw    $a3, 0xc($t6)
/* 151228 801AB1B8 8CE60004 */  lw    $a2, 4($a3)
/* 15122C 801AB1BC E424C660 */ swc1 $f4, %lo(D_800EC660)($at)
/* 151230 801AB1C0 8C4F0000 */  lw    $t7, ($v0)
/* 151234 801AB1C4 3C01800F */ lui $at, %hi(D_800EC820)
/* 151238 801AB1C8 AFA30024 */  sw    $v1, 0x24($sp)
/* 15123C 801AB1CC 000FC080 */  sll   $t8, $t7, 2
/* 151240 801AB1D0 00380821 */  addu  $at, $at, $t8
/* 151244 801AB1D4 E426C820 */ swc1 $f6, %lo(D_800EC820)($at)
/* 151248 801AB1D8 0C06AEE8 */  jal   func_801ABBA0_ovl7
/* 15124C 801AB1DC AFA6001C */   sw    $a2, 0x1c($sp)
/* 151250 801AB1E0 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 151254 801AB1E4 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 151258 801AB1E8 8CE80000 */  lw    $t0, ($a3)
/* 15125C 801AB1EC 8FA30024 */  lw    $v1, 0x24($sp)
/* 151260 801AB1F0 3C19801B */  lui   $t9, %hi(D_801AB2F4) # $t9, 0x801b
/* 151264 801AB1F4 8D090000 */  lw    $t1, ($t0)
/* 151268 801AB1F8 3C01800E */ lui $at, %hi(D_800DF150)
/* 15126C 801AB1FC 2739B2F4 */  addiu $t9, %lo(D_801AB2F4) # addiu $t9, $t9, -0x4d0c
/* 151270 801AB200 00095080 */  sll   $t2, $t1, 2
/* 151274 801AB204 002A0821 */  addu  $at, $at, $t2
/* 151278 801AB208 8FA4001C */  lw    $a0, 0x1c($sp)
/* 15127C 801AB20C AC39F150 */ sw $t9, %lo(D_800DF150)($at)
/* 151280 801AB210 2405FFFF */  li    $a1, -1
/* 151284 801AB214 3C0B801D */  lui   $t3, %hi(D_801CB500) # $t3, 0x801d
/* 151288 801AB218 256BB500 */  addiu $t3, %lo(D_801CB500) # addiu $t3, $t3, -0x4b00
/* 15128C 801AB21C 240C0001 */  li    $t4, 1
/* 151290 801AB220 AC600048 */  sw    $zero, 0x48($v1)
/* 151294 801AB224 AC6B0098 */  sw    $t3, 0x98($v1)
/* 151298 801AB228 A06C0042 */  sb    $t4, 0x42($v1)
/* 15129C 801AB22C A0650038 */  sb    $a1, 0x38($v1)
/* 1512A0 801AB230 A0650039 */  sb    $a1, 0x39($v1)
/* 1512A4 801AB234 8CE20000 */  lw    $v0, ($a3)
/* 1512A8 801AB238 3C01800F */ lui $at, %hi(D_800E8920)
/* 1512AC 801AB23C 44805000 */  mtc1  $zero, $f10
/* 1512B0 801AB240 8C4D0000 */  lw    $t5, ($v0)
/* 1512B4 801AB244 000D7080 */  sll   $t6, $t5, 2
/* 1512B8 801AB248 002E0821 */  addu  $at, $at, $t6
/* 1512BC 801AB24C AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1512C0 801AB250 8C4F0000 */  lw    $t7, ($v0)
/* 1512C4 801AB254 3C01801D */  lui   $at, %hi(D_801CE14C) # $at, 0x801d
/* 1512C8 801AB258 C428E14C */  lwc1  $f8, %lo(D_801CE14C)($at)
/* 1512CC 801AB25C 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 1512D0 801AB260 000FC080 */  sll   $t8, $t7, 2
/* 1512D4 801AB264 00380821 */  addu  $at, $at, $t8
/* 1512D8 801AB268 E428A6E0 */ swc1 $f8, %lo(D_800EA6E0)($at)
/* 1512DC 801AB26C 8C480000 */  lw    $t0, ($v0)
/* 1512E0 801AB270 3C01800E */ lui $at, %hi(D_800E4C50)
/* 1512E4 801AB274 00084880 */  sll   $t1, $t0, 2
/* 1512E8 801AB278 00290821 */  addu  $at, $at, $t1
/* 1512EC 801AB27C 0C06B1B4 */  jal   func_801AC6D0_ovl7
/* 1512F0 801AB280 E42A4C50 */ swc1 $f10, %lo(D_800E4C50)($at)
/* 1512F4 801AB284 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1512F8 801AB288 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1512FC 801AB28C 8FA6001C */  lw    $a2, 0x1c($sp)
/* 151300 801AB290 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 151304 801AB294 8C590000 */  lw    $t9, ($v0)
/* 151308 801AB298 C4D00010 */  lwc1  $f16, 0x10($a2)
/* 15130C 801AB29C 00195080 */  sll   $t2, $t9, 2
/* 151310 801AB2A0 002A0821 */  addu  $at, $at, $t2
/* 151314 801AB2A4 E4304550 */ swc1 $f16, %lo(gEntitiesScaleXArray)($at)
/* 151318 801AB2A8 8C4B0000 */  lw    $t3, ($v0)
/* 15131C 801AB2AC C4D20010 */  lwc1  $f18, 0x10($a2)
/* 151320 801AB2B0 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 151324 801AB2B4 000B6080 */  sll   $t4, $t3, 2
/* 151328 801AB2B8 002C0821 */  addu  $at, $at, $t4
/* 15132C 801AB2BC E4324710 */ swc1 $f18, %lo(gEntitiesScaleYArray)($at)
/* 151330 801AB2C0 8C4D0000 */  lw    $t5, ($v0)
/* 151334 801AB2C4 C4C40010 */  lwc1  $f4, 0x10($a2)
/* 151338 801AB2C8 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 15133C 801AB2CC 000D7080 */  sll   $t6, $t5, 2
/* 151340 801AB2D0 002E0821 */  addu  $at, $at, $t6
/* 151344 801AB2D4 0C06AB98 */  jal   func_801AAE60_ovl7
/* 151348 801AB2D8 E42448D0 */ swc1 $f4, %lo(gEntitiesScaleZArray)($at)
/* 15134C 801AB2DC 0C06B047 */  jal   func_801AC11C_ovl7
/* 151350 801AB2E0 8FA40028 */   lw    $a0, 0x28($sp)
/* 151354 801AB2E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 151358 801AB2E8 27BD0028 */  addiu $sp, $sp, 0x28
/* 15135C 801AB2EC 03E00008 */  jr    $ra
/* 151360 801AB2F0 00000000 */   nop   
.type func_801AB174_ovl7, @function
.size func_801AB174_ovl7, . - func_801AB174_ovl7
