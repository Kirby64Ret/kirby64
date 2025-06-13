glabel func_801EE410_ovl10
/* 1DF180 801EE410 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DF184 801EE414 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DF188 801EE418 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DF18C 801EE41C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DF190 801EE420 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DF194 801EE424 8C620000 */  lw    $v0, ($v1)
/* 1DF198 801EE428 3C0E800B */  lui   $t6, %hi(D_800B79F4) # $t6, 0x800b
/* 1DF19C 801EE42C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DF1A0 801EE430 00021080 */  sll   $v0, $v0, 2
/* 1DF1A4 801EE434 00220821 */  addu  $at, $at, $v0
/* 1DF1A8 801EE438 25CE79F4 */  addiu $t6, %lo(D_800B79F4) # addiu $t6, $t6, 0x79f4
/* 1DF1AC 801EE43C AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1DF1B0 801EE440 8C780000 */  lw    $t8, ($v1)
/* 1DF1B4 801EE444 3C05800E */ lui $a1, %hi(D_800E1B50)
/* 1DF1B8 801EE448 00A22821 */  addu  $a1, $a1, $v0
/* 1DF1BC 801EE44C 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DF1C0 801EE450 0018C880 */  sll   $t9, $t8, 2
/* 1DF1C4 801EE454 8CA51B50 */ lw $a1, %lo(D_800E1B50)($a1)
/* 1DF1C8 801EE458 00390821 */  addu  $at, $at, $t9
/* 1DF1CC 801EE45C 240F000D */  li    $t7, 13
/* 1DF1D0 801EE460 3C08801F */  lui   $t0, %hi(D_801F4148_ovl10) # $t0, 0x801f
/* 1DF1D4 801EE464 AC2FDFD0 */ sw $t7, %lo(D_800DDFD0)($at)
/* 1DF1D8 801EE468 25084148 */  addiu $t0, %lo(D_801F4148_ovl10) # addiu $t0, $t0, 0x4148
/* 1DF1DC 801EE46C 3C040001 */  lui   $a0, (0x00010274 >> 16) # lui $a0, 1
/* 1DF1E0 801EE470 34840274 */  ori   $a0, (0x00010274 & 0xFFFF) # ori $a0, $a0, 0x274
/* 1DF1E4 801EE474 0C02A806 */  jal   func_800AA018
/* 1DF1E8 801EE478 ACA80098 */   sw    $t0, 0x98($a1)
/* 1DF1EC 801EE47C 3C040001 */  lui   $a0, (0x00010275 >> 16) # lui $a0, 1
/* 1DF1F0 801EE480 0C02A806 */  jal   func_800AA018
/* 1DF1F4 801EE484 34840275 */   ori   $a0, (0x00010275 & 0xFFFF) # ori $a0, $a0, 0x275
/* 1DF1F8 801EE488 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DF1FC 801EE48C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DF200 801EE490 3C05800E */  lui   $a1, %hi(D_800E6A10) # $a1, 0x800e
/* 1DF204 801EE494 24A56A10 */  addiu $a1, %lo(D_800E6A10) # addiu $a1, $a1, 0x6a10
/* 1DF208 801EE498 8C620000 */  lw    $v0, ($v1)
/* 1DF20C 801EE49C 3C01801F */  lui   $at, %hi(D_801F4BE0_ovl10) # $at, 0x801f
/* 1DF210 801EE4A0 C4264BE0 */  lwc1  $f6, %lo(D_801F4BE0_ovl10)($at)
/* 1DF214 801EE4A4 00021080 */  sll   $v0, $v0, 2
/* 1DF218 801EE4A8 00A24821 */  addu  $t1, $a1, $v0
/* 1DF21C 801EE4AC C5240000 */  lwc1  $f4, ($t1)
/* 1DF220 801EE4B0 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1DF224 801EE4B4 00220821 */  addu  $at, $at, $v0
/* 1DF228 801EE4B8 46062202 */  mul.s $f8, $f4, $f6
/* 1DF22C 801EE4BC 44802000 */  mtc1  $zero, $f4
/* 1DF230 801EE4C0 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 1DF234 801EE4C4 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 1DF238 801EE4C8 240401EB */  li    $a0, 491
/* 1DF23C 801EE4CC E42864D0 */ swc1 $f8, %lo(D_800E64D0)($at)
/* 1DF240 801EE4D0 8C620000 */  lw    $v0, ($v1)
/* 1DF244 801EE4D4 3C01801F */  lui   $at, %hi(D_801F4BE4_ovl10) # $at, 0x801f
/* 1DF248 801EE4D8 C4304BE4 */  lwc1  $f16, %lo(D_801F4BE4_ovl10)($at)
/* 1DF24C 801EE4DC 00021080 */  sll   $v0, $v0, 2
/* 1DF250 801EE4E0 00A25021 */  addu  $t2, $a1, $v0
/* 1DF254 801EE4E4 C54A0000 */  lwc1  $f10, ($t2)
/* 1DF258 801EE4E8 3C01800E */ lui $at, %hi(D_800E6690)
/* 1DF25C 801EE4EC 00220821 */  addu  $at, $at, $v0
/* 1DF260 801EE4F0 46105482 */  mul.s $f18, $f10, $f16
/* 1DF264 801EE4F4 E4326690 */ swc1 $f18, %lo(D_800E6690)($at)
/* 1DF268 801EE4F8 8C6B0000 */  lw    $t3, ($v1)
/* 1DF26C 801EE4FC 3C01800E */ lui $at, %hi(D_800E3210)
/* 1DF270 801EE500 000B6080 */  sll   $t4, $t3, 2
/* 1DF274 801EE504 00CC6821 */  addu  $t5, $a2, $t4
/* 1DF278 801EE508 E5A40000 */  swc1  $f4, ($t5)
/* 1DF27C 801EE50C 8C620000 */  lw    $v0, ($v1)
/* 1DF280 801EE510 00021080 */  sll   $v0, $v0, 2
/* 1DF284 801EE514 00C27021 */  addu  $t6, $a2, $v0
/* 1DF288 801EE518 C5C60000 */  lwc1  $f6, ($t6)
/* 1DF28C 801EE51C 00220821 */  addu  $at, $at, $v0
/* 1DF290 801EE520 E4263210 */ swc1 $f6, %lo(D_800E3210)($at)
/* 1DF294 801EE524 8C780000 */  lw    $t8, ($v1)
/* 1DF298 801EE528 3C01801F */  lui   $at, %hi(D_801F4BE8_ovl10) # $at, 0x801f
/* 1DF29C 801EE52C C4284BE8 */  lwc1  $f8, %lo(D_801F4BE8_ovl10)($at)
/* 1DF2A0 801EE530 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1DF2A4 801EE534 00187880 */  sll   $t7, $t8, 2
/* 1DF2A8 801EE538 002F0821 */  addu  $at, $at, $t7
/* 1DF2AC 801EE53C 0C029D9E */  jal   play_sound
/* 1DF2B0 801EE540 E4283C90 */ swc1 $f8, %lo(D_800E3C90)($at)
/* 1DF2B4 801EE544 0C03EE45 */  jal   func_800FB914
/* 1DF2B8 801EE548 24040001 */   li    $a0, 1
/* 1DF2BC 801EE54C 0C07BC57 */  jal   func_801EF15C_ovl10
/* 1DF2C0 801EE550 24040003 */   li    $a0, 3
/* 1DF2C4 801EE554 0C07BC86 */  jal   func_801EF218_ovl10
/* 1DF2C8 801EE558 24040003 */   li    $a0, 3
/* 1DF2CC 801EE55C 0C07B5F4 */  jal   func_801ED7D0_ovl10
/* 1DF2D0 801EE560 8FA40018 */   lw    $a0, 0x18($sp)
/* 1DF2D4 801EE564 0C002DAF */  jal   finish_current_thread
/* 1DF2D8 801EE568 2404004C */   li    $a0, 76
/* 1DF2DC 801EE56C 0C02CD48 */  jal   func_800B3520
/* 1DF2E0 801EE570 00000000 */   nop   
/* 1DF2E4 801EE574 0C02BC9F */  jal   func_800AF27C
/* 1DF2E8 801EE578 00000000 */   nop   
/* 1DF2EC 801EE57C 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1DF2F0 801EE580 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 1DF2F4 801EE584 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DF2F8 801EE588 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DF2FC 801EE58C 8D090000 */  lw    $t1, ($t0)
/* 1DF300 801EE590 24190001 */  li    $t9, 1
/* 1DF304 801EE594 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DF308 801EE598 00095080 */  sll   $t2, $t1, 2
/* 1DF30C 801EE59C 002A0821 */  addu  $at, $at, $t2
/* 1DF310 801EE5A0 03E00008 */  jr    $ra
/* 1DF314 801EE5A4 AC39DC50 */ sw $t9, %lo(gEntityVtableIndexArray)($at)
.type func_801EE410_ovl10, @function
.size func_801EE410_ovl10, . - func_801EE410_ovl10
