glabel func_8022629C_ovl18
/* 238C3C 8022629C 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 238C40 802262A0 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 238C44 802262A4 8CCE0000 */  lw         $t6, 0x0($a2)
/* 238C48 802262A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 238C4C 802262AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 238C50 802262B0 AFA40018 */  sw         $a0, 0x18($sp)
/* 238C54 802262B4 8DC30000 */  lw         $v1, 0x0($t6)
/* 238C58 802262B8 3C018023 */  lui        $at, %hi(D_8022BC84_ovl18)
/* 238C5C 802262BC 3C05800E */  lui        $a1, %hi(D_800E1B50)
/* 238C60 802262C0 00031880 */  sll        $v1, $v1, 2
/* 238C64 802262C4 C422BC84 */  lwc1       $f2, %lo(D_8022BC84_ovl18)($at)
/* 238C68 802262C8 00A32821 */  addu       $a1, $a1, $v1
/* 238C6C 802262CC 8CA51B50 */  lw         $a1, %lo(D_800E1B50)($a1)
/* 238C70 802262D0 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 238C74 802262D4 00230821 */  addu       $at, $at, $v1
/* 238C78 802262D8 240F0001 */  addiu      $t7, $zero, 0x1
/* 238C7C 802262DC 3C188023 */  lui        $t8, %hi(D_8022AB38_ovl18)
/* 238C80 802262E0 AC2FDFD0 */  sw         $t7, %lo(D_800DDFD0)($at)
/* 238C84 802262E4 2718AB38 */  addiu      $t8, $t8, %lo(D_8022AB38_ovl18)
/* 238C88 802262E8 ACB80098 */  sw         $t8, 0x98($a1)
/* 238C8C 802262EC 8CC20000 */  lw         $v0, 0x0($a2)
/* 238C90 802262F0 3C01800F */  lui        $at, %hi(D_800E8920)
/* 238C94 802262F4 24190001 */  addiu      $t9, $zero, 0x1
/* 238C98 802262F8 8C490000 */  lw         $t1, 0x0($v0)
/* 238C9C 802262FC 44800000 */  mtc1       $zero, $f0
/* 238CA0 80226300 3C07800E */  lui        $a3, %hi(D_800E6690)
/* 238CA4 80226304 00095080 */  sll        $t2, $t1, 2
/* 238CA8 80226308 002A0821 */  addu       $at, $at, $t2
.L8022630C_ovl19:
/* 238CAC 8022630C AC398920 */  sw         $t9, %lo(D_800E8920)($at)
/* 238CB0 80226310 8C4B0000 */  lw         $t3, 0x0($v0)
/* 238CB4 80226314 24E76690 */  addiu      $a3, $a3, %lo(D_800E6690)
/* 238CB8 80226318 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 238CBC 8022631C 000B6080 */  sll        $t4, $t3, 2
/* 238CC0 80226320 00EC6821 */  addu       $t5, $a3, $t4
/* 238CC4 80226324 E5A00000 */  swc1       $f0, 0x0($t5)
/* 238CC8 80226328 8C430000 */  lw         $v1, 0x0($v0)
/* 238CCC 8022632C 3C08800E */  lui        $t0, %hi(D_800E3750)
/* 238CD0 80226330 25083750 */  addiu      $t0, $t0, %lo(D_800E3750)
/* 238CD4 80226334 00031880 */  sll        $v1, $v1, 2
/* 238CD8 80226338 00E37021 */  addu       $t6, $a3, $v1
/* 238CDC 8022633C C5C40000 */  lwc1       $f4, 0x0($t6)
/* 238CE0 80226340 00230821 */  addu       $at, $at, $v1
/* 238CE4 80226344 3C040001 */  lui        $a0, (0x1002F >> 16)
/* 238CE8 80226348 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* 238CEC 8022634C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 238CF0 80226350 3C01800E */  lui        $at, %hi(D_800E6850)
/* 238CF4 80226354 3484002F */  ori        $a0, $a0, (0x1002F & 0xFFFF)
/* 238CF8 80226358 000FC080 */  sll        $t8, $t7, 2
/* 238CFC 8022635C 00380821 */  addu       $at, $at, $t8
.L80226360_ovl19:
/* 238D00 80226360 E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
/* 238D04 80226364 8C490000 */  lw         $t1, 0x0($v0)
/* 238D08 80226368 3C01800E */  lui        $at, %hi(D_800E3210)
/* 238D0C 8022636C 0009C880 */  sll        $t9, $t1, 2
/* 238D10 80226370 01195021 */  addu       $t2, $t0, $t9
/* 238D14 80226374 E5400000 */  swc1       $f0, 0x0($t2)
/* 238D18 80226378 8C430000 */  lw         $v1, 0x0($v0)
/* 238D1C 8022637C 00031880 */  sll        $v1, $v1, 2
/* 238D20 80226380 01035821 */  addu       $t3, $t0, $v1
/* 238D24 80226384 C5660000 */  lwc1       $f6, 0x0($t3)
/* 238D28 80226388 00230821 */  addu       $at, $at, $v1
/* 238D2C 8022638C E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* 238D30 80226390 8C4C0000 */  lw         $t4, 0x0($v0)
/* 238D34 80226394 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 238D38 80226398 000C6880 */  sll        $t5, $t4, 2
/* 238D3C 8022639C 002D0821 */  addu       $at, $at, $t5
/* 238D40 802263A0 0C02A7A9 */  jal        func_800A9EA4
/* 238D44 802263A4 E4223C90 */   swc1      $f2, %lo(D_800E3C90)($at)
/* 238D48 802263A8 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 238D4C 802263AC 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 238D50 802263B0 3C0F800E */  lui        $t7, %hi(D_800DE350)
/* 238D54 802263B4 3C018023 */  lui        $at, %hi(D_8022BC88_ovl18)
/* 238D58 802263B8 8DC30000 */  lw         $v1, 0x0($t6)
/* 238D5C 802263BC C428BC88 */  lwc1       $f8, %lo(D_8022BC88_ovl18)($at)
/* 238D60 802263C0 00031880 */  sll        $v1, $v1, 2
/* 238D64 802263C4 01E37821 */  addu       $t7, $t7, $v1
/* 238D68 802263C8 8DEFE350 */  lw         $t7, %lo(D_800DE350)($t7)
/* 238D6C 802263CC 8DF8003C */  lw         $t8, 0x3C($t7)
/* 238D70 802263D0 C70A0074 */  lwc1       $f10, 0x74($t8)
/* 238D74 802263D4 460A4032 */  c.eq.s     $f8, $f10
/* 238D78 802263D8 00000000 */  nop
/* 238D7C 802263DC 45030008 */  bc1tl      .L80226400_ovl18
/* 238D80 802263E0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 238D84 802263E4 0C02BC9F */  jal        func_800AF27C
/* 238D88 802263E8 00000000 */   nop
/* 238D8C 802263EC 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 238D90 802263F0 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 238D94 802263F4 8D230000 */  lw         $v1, 0x0($t1)
/* 238D98 802263F8 00031880 */  sll        $v1, $v1, 2
/* 238D9C 802263FC 8FBF0014 */  lw         $ra, 0x14($sp)
.L80226400_ovl18:
/* 238DA0 80226400 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 238DA4 80226404 00230821 */  addu       $at, $at, $v1
/* 238DA8 80226408 AC20DC50 */  sw         $zero, %lo(gEntityVtableIndexArray)($at)
/* 238DAC 8022640C 03E00008 */  jr         $ra
/* 238DB0 80226410 27BD0018 */   addiu     $sp, $sp, 0x18
