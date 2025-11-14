glabel func_800BE098
/* 0662E8 800BE098 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0662EC 800BE09C 240E0002 */  li    $t6, 2
/* 0662F0 800BE0A0 3C01800F */  lui   $at, %hi(D_800F4D18) # $at, 0x800f
/* 0662F4 800BE0A4 3C08800F */  lui   $t0, %hi(D_800F6170) # $t0, 0x800f
/* 0662F8 800BE0A8 3C09800F */  lui   $t1, %hi(D_800F4D48) # $t1, 0x800f
/* 0662FC 800BE0AC 3C0A800F */  lui   $t2, %hi(D_800F4D20) # $t2, 0x800f
/* 066300 800BE0B0 3C0B800F */  lui   $t3, %hi(D_800F5770) # $t3, 0x800f
/* 066304 800BE0B4 3C07800F */  lui   $a3, %hi(D_800F4D70) # $a3, 0x800f
/* 066308 800BE0B8 3C0C800F */  lui   $t4, %hi(D_800F5770) # $t4, 0x800f
/* 06630C 800BE0BC 3C04FFFE */  lui   $a0, (0xFFFE7961 >> 16) # lui $a0, 0xfffe
/* 066310 800BE0C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 066314 800BE0C4 AC2E4D18 */  sw    $t6, %lo(D_800F4D18)($at)
/* 066318 800BE0C8 34847961 */  ori   $a0, (0xFFFE7961 & 0xFFFF) # ori $a0, $a0, 0x7961
/* 06631C 800BE0CC 258C5770 */  addiu $t4, %lo(D_800F5770) # addiu $t4, $t4, 0x5770
/* 066320 800BE0D0 24E74D70 */  addiu $a3, %lo(D_800F4D70) # addiu $a3, $a3, 0x4d70
/* 066324 800BE0D4 256B5770 */  addiu $t3, %lo(D_800F5770) # addiu $t3, $t3, 0x5770
/* 066328 800BE0D8 254A4D20 */  addiu $t2, %lo(D_800F4D20) # addiu $t2, $t2, 0x4d20
/* 06632C 800BE0DC 25294D48 */  addiu $t1, %lo(D_800F4D48) # addiu $t1, $t1, 0x4d48
/* 066330 800BE0E0 25086170 */  addiu $t0, %lo(D_800F6170) # addiu $t0, $t0, 0x6170
/* 066334 800BE0E4 24060040 */  li    $a2, 64
.L800BE0E8_ovl1:
/* 066338 800BE0E8 AD000000 */  sw    $zero, ($t0)
/* 06633C 800BE0EC AD200000 */  sw    $zero, ($t1)
/* 066340 800BE0F0 AD400000 */  sw    $zero, ($t2)
/* 066344 800BE0F4 00002825 */  move  $a1, $zero
/* 066348 800BE0F8 01601025 */  move  $v0, $t3
/* 06634C 800BE0FC 00E01825 */  move  $v1, $a3
.L800BE100_ovl1:
/* 066350 800BE100 24A50004 */  addiu $a1, $a1, 4
/* 066354 800BE104 AC440000 */  sw    $a0, ($v0)
/* 066358 800BE108 AC600000 */  sw    $zero, ($v1)
/* 06635C 800BE10C AC440004 */  sw    $a0, 4($v0)
/* 066360 800BE110 AC600004 */  sw    $zero, 4($v1)
/* 066364 800BE114 AC440008 */  sw    $a0, 8($v0)
/* 066368 800BE118 AC600008 */  sw    $zero, 8($v1)
/* 06636C 800BE11C AC44000C */  sw    $a0, 0xc($v0)
/* 066370 800BE120 AC60000C */  sw    $zero, 0xc($v1)
/* 066374 800BE124 24420010 */  addiu $v0, $v0, 0x10
/* 066378 800BE128 14A6FFF5 */  bne   $a1, $a2, .L800BE100_ovl1
/* 06637C 800BE12C 24630010 */   addiu $v1, $v1, 0x10
/* 066380 800BE130 24E70100 */  addiu $a3, $a3, 0x100
/* 066384 800BE134 25080004 */  addiu $t0, $t0, 4
/* 066388 800BE138 25290004 */  addiu $t1, $t1, 4
/* 06638C 800BE13C 254A0004 */  addiu $t2, $t2, 4
/* 066390 800BE140 14ECFFE9 */  bne   $a3, $t4, .L800BE0E8_ovl1
/* 066394 800BE144 256B0100 */   addiu $t3, $t3, 0x100
/* 066398 800BE148 24040026 */  li    $a0, 38
/* 06639C 800BE14C 2405004A */  li    $a1, 74
/* 0663A0 800BE150 0C02BB1C */  jal   func_800AEC70
/* 0663A4 800BE154 24060050 */   li    $a2, 80
/* 0663A8 800BE158 0C03E158 */  jal   func_800F8560
/* 0663AC 800BE15C AFA20018 */   sw    $v0, 0x18($sp)
/* 0663B0 800BE160 24010009 */  li    $at, 9
/* 0663B4 800BE164 1041000D */  beq   $v0, $at, .L800BE19C_ovl1
/* 0663B8 800BE168 3C04800D */   lui   $a0, %hi(D_800D5310)
/* 0663BC 800BE16C 3C05800D */  lui   $a1, %hi(gHudDisplayMode) # $a1, 0x800d
/* 0663C0 800BE170 8CA56BB0 */  lw    $a1, %lo(gHudDisplayMode)($a1)
/* 0663C4 800BE174 3C04800D */  lui   $a0, %hi(D_800D5310) # $a0, 0x800d
/* 0663C8 800BE178 24845310 */  addiu $a0, %lo(D_800D5310) # addiu $a0, $a0, 0x5310
/* 0663CC 800BE17C 00A00821 */  addu  $at, $a1, $zero
/* 0663D0 800BE180 00052880 */  sll   $a1, $a1, 2
/* 0663D4 800BE184 00A12821 */  addu  $a1, $a1, $at
/* 0663D8 800BE188 00052840 */  sll   $a1, $a1, 1
/* 0663DC 800BE18C 0C02F7EE */  jal   func_800BDFB8
/* 0663E0 800BE190 24060008 */   li    $a2, 8
/* 0663E4 800BE194 1000000F */  b     .L800BE1D4_ovl1
/* 0663E8 800BE198 00000000 */   nop   
.L800BE19C_ovl1:
/* 0663EC 800BE19C 3C02800D */  lui   $v0, %hi(D_800D6E54) # $v0, 0x800d
/* 0663F0 800BE1A0 24426E54 */  addiu $v0, %lo(D_800D6E54) # addiu $v0, $v0, 0x6e54
/* 0663F4 800BE1A4 AC400000 */  sw    $zero, ($v0)
/* 0663F8 800BE1A8 3C05800D */  lui   $a1, %hi(gHudDisplayMode) # $a1, 0x800d
/* 0663FC 800BE1AC 8CA56BB0 */  lw    $a1, %lo(gHudDisplayMode)($a1)
/* 066400 800BE1B0 3C01800D */  lui   $at, %hi(D_800D6E90) # $at, 0x800d
/* 066404 800BE1B4 AC206E90 */  sw    $zero, %lo(D_800D6E90)($at)
/* 066408 800BE1B8 00A00821 */  addu  $at, $a1, $zero
/* 06640C 800BE1BC 00052880 */  sll   $a1, $a1, 2
/* 066410 800BE1C0 00A12821 */  addu  $a1, $a1, $at
/* 066414 800BE1C4 00052840 */  sll   $a1, $a1, 1
/* 066418 800BE1C8 24845310 */  addiu $a0, $a0, 0x5310
/* 06641C 800BE1CC 0C02F7EE */  jal   func_800BDFB8
/* 066420 800BE1D0 2406000A */   li    $a2, 10
.L800BE1D4_ovl1:
/* 066424 800BE1D4 3C05800D */  lui   $a1, %hi(gHudDisplayMode) # $a1, 0x800d
/* 066428 800BE1D8 8CA56BB0 */  lw    $a1, %lo(gHudDisplayMode)($a1)
/* 06642C 800BE1DC 3C04800D */  lui   $a0, %hi(D_800D53DC) # $a0, 0x800d
/* 066430 800BE1E0 248453DC */  addiu $a0, %lo(D_800D53DC) # addiu $a0, $a0, 0x53dc
/* 066434 800BE1E4 24060002 */  li    $a2, 2
/* 066438 800BE1E8 0C02F7EE */  jal   func_800BDFB8
/* 06643C 800BE1EC 00052840 */   sll   $a1, $a1, 1
/* 066440 800BE1F0 3C05800D */  lui   $a1, %hi(gHudDisplayMode) # $a1, 0x800d
/* 066444 800BE1F4 8CA56BB0 */  lw    $a1, %lo(gHudDisplayMode)($a1)
/* 066448 800BE1F8 3C04800D */  lui   $a0, %hi(D_800D5408) # $a0, 0x800d
/* 06644C 800BE1FC 24845408 */  addiu $a0, %lo(D_800D5408) # addiu $a0, $a0, 0x5408
/* 066450 800BE200 24060002 */  li    $a2, 2
/* 066454 800BE204 0C02F7EE */  jal   func_800BDFB8
/* 066458 800BE208 00052840 */   sll   $a1, $a1, 1
/* 06645C 800BE20C 3C05800D */  lui   $a1, %hi(gHudDisplayMode) # $a1, 0x800d
/* 066460 800BE210 8CA56BB0 */  lw    $a1, %lo(gHudDisplayMode)($a1)
/* 066464 800BE214 3C04800D */  lui   $a0, %hi(D_800D5434) # $a0, 0x800d
/* 066468 800BE218 24845434 */  addiu $a0, %lo(D_800D5434) # addiu $a0, $a0, 0x5434
/* 06646C 800BE21C 24060002 */  li    $a2, 2
/* 066470 800BE220 0C02F7EE */  jal   func_800BDFB8
/* 066474 800BE224 00052840 */   sll   $a1, $a1, 1
/* 066478 800BE228 3C05800D */  lui   $a1, %hi(gHudDisplayMode) # $a1, 0x800d
/* 06647C 800BE22C 8CA56BB0 */  lw    $a1, %lo(gHudDisplayMode)($a1)
/* 066480 800BE230 3C04800D */  lui   $a0, %hi(D_800D5460) # $a0, 0x800d
/* 066484 800BE234 24845460 */  addiu $a0, %lo(D_800D5460) # addiu $a0, $a0, 0x5460
/* 066488 800BE238 00A00821 */  addu  $at, $a1, $zero
/* 06648C 800BE23C 00052880 */  sll   $a1, $a1, 2
/* 066490 800BE240 00A12821 */  addu  $a1, $a1, $at
/* 066494 800BE244 00052840 */  sll   $a1, $a1, 1
/* 066498 800BE248 0C02F7EE */  jal   func_800BDFB8
/* 06649C 800BE24C 2406000A */   li    $a2, 10
/* 0664A0 800BE250 3C07800F */  lui   $a3, %hi(D_800ED500) # $a3, 0x800f
/* 0664A4 800BE254 3C040005 */  lui   $a0, (0x00050001 >> 16) # lui $a0, 5
/* 0664A8 800BE258 24E7D500 */  addiu $a3, %lo(D_800ED500) # addiu $a3, $a3, -0x2b00
/* 0664AC 800BE25C 34840001 */  ori   $a0, (0x00050001 & 0xFFFF) # ori $a0, $a0, 1
/* 0664B0 800BE260 00002825 */  move  $a1, $zero
/* 0664B4 800BE264 0C02A24D */  jal   func_800A8934
/* 0664B8 800BE268 24060010 */   li    $a2, 16
/* 0664BC 800BE26C 3C07800F */  lui   $a3, %hi(D_800ED500) # $a3, 0x800f
/* 0664C0 800BE270 24E7D500 */  addiu $a3, %lo(D_800ED500) # addiu $a3, $a3, -0x2b00
/* 0664C4 800BE274 8CF80008 */  lw    $t8, 8($a3)
/* 0664C8 800BE278 8CED000C */  lw    $t5, 0xc($a3)
/* 0664CC 800BE27C 3C03800F */  lui   $v1, %hi(D_800ED510) # $v1, 0x800f
/* 0664D0 800BE280 2463D510 */  addiu $v1, %lo(D_800ED510) # addiu $v1, $v1, -0x2af0
/* 0664D4 800BE284 3C08800F */  lui   $t0, %hi(D_800F6198) # $t0, 0x800f
/* 0664D8 800BE288 25086198 */  addiu $t0, %lo(D_800F6198) # addiu $t0, $t0, 0x6198
/* 0664DC 800BE28C 0303C821 */  addu  $t9, $t8, $v1
/* 0664E0 800BE290 01A37021 */  addu  $t6, $t5, $v1
/* 0664E4 800BE294 ACF90008 */  sw    $t9, 8($a3)
/* 0664E8 800BE298 ACEE000C */  sw    $t6, 0xc($a3)
/* 0664EC 800BE29C AD000000 */  sw    $zero, ($t0)
/* 0664F0 800BE2A0 3C04800D */  lui   $a0, %hi(D_800D6F3C) # $a0, 0x800d
/* 0664F4 800BE2A4 8C846F3C */  lw    $a0, %lo(D_800D6F3C)($a0)
/* 0664F8 800BE2A8 3C01800D */  lui   $at, %hi(D_800D6EC4) # $at, 0x800d
/* 0664FC 800BE2AC AC206EC4 */  sw    $zero, %lo(D_800D6EC4)($at)
/* 066500 800BE2B0 24010004 */  li    $at, 4
/* 066504 800BE2B4 10810004 */  beq   $a0, $at, .L800BE2C8_ovl1
/* 066508 800BE2B8 240F0001 */   li    $t7, 1
/* 06650C 800BE2BC 24010003 */  li    $at, 3
/* 066510 800BE2C0 1481000B */  bne   $a0, $at, .L800BE2F0_ovl1
/* 066514 800BE2C4 00000000 */   nop   
.L800BE2C8_ovl1:
/* 066518 800BE2C8 AD0F0000 */  sw    $t7, ($t0)
/* 06651C 800BE2CC 2404002D */  li    $a0, 45
/* 066520 800BE2D0 2405004A */  li    $a1, 74
/* 066524 800BE2D4 0C02BA99 */  jal   func_800AEA64
/* 066528 800BE2D8 24060050 */   li    $a2, 80
/* 06652C 800BE2DC 0002C080 */  sll   $t8, $v0, 2
/* 066530 800BE2E0 3C01800F */ lui $at, %hi(D_800E98E0)
/* 066534 800BE2E4 00380821 */  addu  $at, $at, $t8
/* 066538 800BE2E8 AFA20018 */  sw    $v0, 0x18($sp)
/* 06653C 800BE2EC AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
.L800BE2F0_ovl1:
/* 066540 800BE2F0 0C02F7CB */  jal   func_800BDF2C
/* 066544 800BE2F4 00000000 */   nop   
/* 066548 800BE2F8 0C02F783 */  jal   func_800BDE0C
/* 06654C 800BE2FC 00002025 */   move  $a0, $zero
/* 066550 800BE300 3C04800C */  lui   $a0, %hi(func_800BDE0C) # $a0, 0x800c
/* 066554 800BE304 0C000ADF */  jal   func_80002B7C_ovl1
/* 066558 800BE308 2484DE0C */   addiu $a0, %lo(func_800BDE0C) # addiu $a0, $a0, -0x21f4
/* 06655C 800BE30C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 066560 800BE310 8FA20018 */  lw    $v0, 0x18($sp)
/* 066564 800BE314 27BD0028 */  addiu $sp, $sp, 0x28
/* 066568 800BE318 03E00008 */  jr    $ra
/* 06656C 800BE31C 00000000 */   nop   
.type func_800BE098, @function
.size func_800BE098, . - func_800BE098
