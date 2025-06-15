glabel func_80151288_ovl3
/* 0B1CC8 80151288 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0B1CCC 8015128C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0B1CD0 80151290 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B1CD4 80151294 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B1CD8 80151298 8DC20000 */  lw    $v0, ($t6)
/* 0B1CDC 8015129C 3C0F800F */ lui $t7, %hi(D_800E8AE0)
/* 0B1CE0 801512A0 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0B1CE4 801512A4 00021080 */  sll   $v0, $v0, 2
/* 0B1CE8 801512A8 01E27821 */  addu  $t7, $t7, $v0
/* 0B1CEC 801512AC 8DEF8AE0 */ lw $t7, %lo(D_800E8AE0)($t7)
/* 0B1CF0 801512B0 3C19800D */  lui   $t9, %hi(D_800D6FAC) # $t9, 0x800d
/* 0B1CF4 801512B4 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0B1CF8 801512B8 31F80006 */  andi  $t8, $t7, 6
/* 0B1CFC 801512BC 5300003E */  beql  $t8, $zero, .L801513B8_ovl3
/* 0B1D00 801512C0 8CCA00A0 */   lw    $t2, 0xa0($a2)
/* 0B1D04 801512C4 8F396FAC */  lw    $t9, %lo(D_800D6FAC)($t9)
/* 0B1D08 801512C8 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0B1D0C 801512CC 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0B1D10 801512D0 57200059 */  bnezl $t9, .L80151438_ovl3
/* 0B1D14 801512D4 00001025 */   move  $v0, $zero
/* 0B1D18 801512D8 90C80004 */  lbu   $t0, 4($a2)
/* 0B1D1C 801512DC 24010002 */  li    $at, 2
/* 0B1D20 801512E0 00001825 */  move  $v1, $zero
/* 0B1D24 801512E4 1501000D */  bne   $t0, $at, .L8015131C_ovl3
/* 0B1D28 801512E8 3C07800D */   lui   $a3, %hi(gKirbyController)
/* 0B1D2C 801512EC 3C07800D */  lui   $a3, %hi(gKirbyController) # $a3, 0x800d
/* 0B1D30 801512F0 24E76FE8 */  addiu $a3, %lo(gKirbyController) # addiu $a3, $a3, 0x6fe8
/* 0B1D34 801512F4 94E90002 */  lhu   $t1, 2($a3)
/* 0B1D38 801512F8 312A8000 */  andi  $t2, $t1, 0x8000
/* 0B1D3C 801512FC 15400005 */  bnez  $t2, .L80151314_ovl3
/* 0B1D40 80151300 00000000 */   nop   
/* 0B1D44 80151304 94EB0000 */  lhu   $t3, ($a3)
/* 0B1D48 80151308 316C0300 */  andi  $t4, $t3, 0x300
/* 0B1D4C 8015130C 11800011 */  beqz  $t4, .L80151354_ovl3
/* 0B1D50 80151310 00000000 */   nop   
.L80151314_ovl3:
/* 0B1D54 80151314 1000000F */  b     .L80151354_ovl3
/* 0B1D58 80151318 24030001 */   li    $v1, 1
.L8015131C_ovl3:
/* 0B1D5C 8015131C 24E76FE8 */  addiu $a3, $a3, %lo(gKirbyController)
/* 0B1D60 80151320 94ED0002 */  lhu   $t5, 2($a3)
/* 0B1D64 80151324 31AE8000 */  andi  $t6, $t5, 0x8000
/* 0B1D68 80151328 51C00004 */  beql  $t6, $zero, .L8015133C_ovl3
/* 0B1D6C 8015132C 94E20000 */   lhu   $v0, ($a3)
/* 0B1D70 80151330 10000008 */  b     .L80151354_ovl3
/* 0B1D74 80151334 24030001 */   li    $v1, 1
/* 0B1D78 80151338 94E20000 */  lhu   $v0, ($a3)
.L8015133C_ovl3:
/* 0B1D7C 8015133C 304F003F */  andi  $t7, $v0, 0x3f
/* 0B1D80 80151340 15E00004 */  bnez  $t7, .L80151354_ovl3
/* 0B1D84 80151344 30580F00 */   andi  $t8, $v0, 0xf00
/* 0B1D88 80151348 13000002 */  beqz  $t8, .L80151354_ovl3
/* 0B1D8C 8015134C 00000000 */   nop   
/* 0B1D90 80151350 24030001 */  li    $v1, 1
.L80151354_ovl3:
/* 0B1D94 80151354 50600038 */  beql  $v1, $zero, .L80151438_ovl3
/* 0B1D98 80151358 00001025 */   move  $v0, $zero
/* 0B1D9C 8015135C 0C05E44C */  jal   func_80179130_ovl3
/* 0B1DA0 80151360 00000000 */   nop   
/* 0B1DA4 80151364 10400003 */  beqz  $v0, .L80151374_ovl3
/* 0B1DA8 80151368 24040017 */   li    $a0, 23
/* 0B1DAC 8015136C 10000032 */  b     .L80151438_ovl3
/* 0B1DB0 80151370 2402000A */   li    $v0, 10
.L80151374_ovl3:
/* 0B1DB4 80151374 0C048BDB */  jal   set_kirby_action_1
/* 0B1DB8 80151378 2405001B */   li    $a1, 27
/* 0B1DBC 8015137C 3C07800D */  lui   $a3, %hi(gKirbyController) # $a3, 0x800d
/* 0B1DC0 80151380 24E76FE8 */  addiu $a3, %lo(gKirbyController) # addiu $a3, $a3, 0x6fe8
/* 0B1DC4 80151384 94F90002 */  lhu   $t9, 2($a3)
/* 0B1DC8 80151388 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0B1DCC 8015138C 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0B1DD0 80151390 33288000 */  andi  $t0, $t9, 0x8000
/* 0B1DD4 80151394 11000004 */  beqz  $t0, .L801513A8_ovl3
/* 0B1DD8 80151398 24090001 */   li    $t1, 1
/* 0B1DDC 8015139C ACC90044 */  sw    $t1, 0x44($a2)
/* 0B1DE0 801513A0 10000025 */  b     .L80151438_ovl3
/* 0B1DE4 801513A4 2402000A */   li    $v0, 10
.L801513A8_ovl3:
/* 0B1DE8 801513A8 ACC00044 */  sw    $zero, 0x44($a2)
/* 0B1DEC 801513AC 10000022 */  b     .L80151438_ovl3
/* 0B1DF0 801513B0 2402000A */   li    $v0, 10
/* 0B1DF4 801513B4 8CCA00A0 */  lw    $t2, 0xa0($a2)
.L801513B8_ovl3:
/* 0B1DF8 801513B8 24010013 */  li    $at, 19
/* 0B1DFC 801513BC 3C0B800D */  lui   $t3, %hi(D_800D6FAC) # $t3, 0x800d
/* 0B1E00 801513C0 5141001D */  beql  $t2, $at, .L80151438_ovl3
/* 0B1E04 801513C4 00001025 */   move  $v0, $zero
/* 0B1E08 801513C8 8D6B6FAC */  lw    $t3, %lo(D_800D6FAC)($t3)
/* 0B1E0C 801513CC 3C07800D */  lui   $a3, %hi(gKirbyController) # $a3, 0x800d
/* 0B1E10 801513D0 24E76FE8 */  addiu $a3, %lo(gKirbyController) # addiu $a3, $a3, 0x6fe8
/* 0B1E14 801513D4 55600018 */  bnezl $t3, .L80151438_ovl3
/* 0B1E18 801513D8 00001025 */   move  $v0, $zero
/* 0B1E1C 801513DC 94EC0002 */  lhu   $t4, 2($a3)
/* 0B1E20 801513E0 318D8000 */  andi  $t5, $t4, 0x8000
/* 0B1E24 801513E4 51A00014 */  beql  $t5, $zero, .L80151438_ovl3
/* 0B1E28 801513E8 00001025 */   move  $v0, $zero
/* 0B1E2C 801513EC 8CCE001C */  lw    $t6, 0x1c($a2)
/* 0B1E30 801513F0 51C00011 */  beql  $t6, $zero, .L80151438_ovl3
/* 0B1E34 801513F4 00001025 */   move  $v0, $zero
/* 0B1E38 801513F8 90CF0004 */  lbu   $t7, 4($a2)
/* 0B1E3C 801513FC 3C18800F */ lui $t8, %hi(D_800E8920)
/* 0B1E40 80151400 0302C021 */  addu  $t8, $t8, $v0
/* 0B1E44 80151404 55E0000C */  bnezl $t7, .L80151438_ovl3
/* 0B1E48 80151408 00001025 */   move  $v0, $zero
/* 0B1E4C 8015140C 8F188920 */ lw $t8, %lo(D_800E8920)($t8)
/* 0B1E50 80151410 2404000C */  li    $a0, 12
/* 0B1E54 80151414 24050009 */  li    $a1, 9
/* 0B1E58 80151418 57000007 */  bnezl $t8, .L80151438_ovl3
/* 0B1E5C 8015141C 00001025 */   move  $v0, $zero
/* 0B1E60 80151420 A0C00007 */  sb    $zero, 7($a2)
/* 0B1E64 80151424 0C048BDB */  jal   set_kirby_action_1
/* 0B1E68 80151428 ACC00044 */   sw    $zero, 0x44($a2)
/* 0B1E6C 8015142C 10000002 */  b     .L80151438_ovl3
/* 0B1E70 80151430 24020005 */   li    $v0, 5
/* 0B1E74 80151434 00001025 */  move  $v0, $zero
.L80151438_ovl3:
/* 0B1E78 80151438 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B1E7C 8015143C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B1E80 80151440 03E00008 */  jr    $ra
/* 0B1E84 80151444 00000000 */   nop   
.type func_80151288_ovl3, @function
.size func_80151288_ovl3, . - func_80151288_ovl3
