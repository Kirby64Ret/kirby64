glabel func_801DEA1C_ovl11
/* 1E92DC 801DEA1C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1E92E0 801DEA20 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1E92E4 801DEA24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E92E8 801DEA28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E92EC 801DEA2C AFA40018 */  sw         $a0, 0x18($sp)
.L801DEA30_ovl12:
/* 1E92F0 801DEA30 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1E92F4 801DEA34 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1E92F8 801DEA38 240E0001 */  addiu      $t6, $zero, 0x1
/* 1E92FC 801DEA3C 000FC080 */  sll        $t8, $t7, 2
.L801DEA40_ovl10:
/* 1E9300 801DEA40 00380821 */  addu       $at, $at, $t8
/* 1E9304 801DEA44 AC2E9C60 */  sw         $t6, %lo(D_800E9C60)($at)
/* 1E9308 801DEA48 8C590000 */  lw         $t9, 0x0($v0)
/* 1E930C 801DEA4C 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1E9310 801DEA50 24090004 */  addiu      $t1, $zero, 0x4
/* 1E9314 801DEA54 00194080 */  sll        $t0, $t9, 2
.L801DEA58_ovl14:
/* 1E9318 801DEA58 00280821 */  addu       $at, $at, $t0
glabel func_801DEA5C_ovl17
/* 1E931C 801DEA5C AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1E9320 801DEA60 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1E9324 801DEA64 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1E9328 801DEA68 3C040001 */  lui        $a0, (0x10407 >> 16)
/* 1E932C 801DEA6C 000A5880 */  sll        $t3, $t2, 2
/* 1E9330 801DEA70 002B0821 */  addu       $at, $at, $t3
/* 1E9334 801DEA74 AC29DFD0 */  sw         $t1, %lo(D_800DDFD0)($at)
/* 1E9338 801DEA78 0C02A806 */  jal        func_800AA018
/* 1E933C 801DEA7C 34840407 */   ori       $a0, $a0, (0x10407 & 0xFFFF)
/* 1E9340 801DEA80 3C040001 */  lui        $a0, (0x10406 >> 16)
/* 1E9344 801DEA84 0C02A806 */  jal        func_800AA018
/* 1E9348 801DEA88 34840406 */   ori       $a0, $a0, (0x10406 & 0xFFFF)
/* 1E934C 801DEA8C 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 1E9350 801DEA90 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
glabel func_801DEA94_ovl16
/* 1E9354 801DEA94 3C0C801E */  lui        $t4, %hi(func_801DE9C8_ovl11)
glabel func_801DEA98_ovl15
/* 1E9358 801DEA98 3C01800E */  lui        $at, %hi(D_800DF310)
/* 1E935C 801DEA9C 8DAF0000 */  lw         $t7, 0x0($t5)
/* 1E9360 801DEAA0 258CE9C8 */  addiu      $t4, $t4, %lo(func_801DE9C8_ovl11)
/* 1E9364 801DEAA4 000F7080 */  sll        $t6, $t7, 2
/* 1E9368 801DEAA8 002E0821 */  addu       $at, $at, $t6
/* 1E936C 801DEAAC 0C02BC9F */  jal        func_800AF27C
/* 1E9370 801DEAB0 AC2CF310 */   sw        $t4, %lo(D_800DF310)($at)
/* 1E9374 801DEAB4 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1E9378 801DEAB8 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1E937C 801DEABC 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1E9380 801DEAC0 24180001 */  addiu      $t8, $zero, 0x1
/* 1E9384 801DEAC4 8F280000 */  lw         $t0, 0x0($t9)
/* 1E9388 801DEAC8 00085080 */  sll        $t2, $t0, 2
/* 1E938C 801DEACC 002A0821 */  addu       $at, $at, $t2
/* 1E9390 801DEAD0 0C02BE85 */  jal        func_800AFA14
.L801DEAD4_ovl14:
/* 1E9394 801DEAD4 AC389E20 */   sw        $t8, %lo(D_800E9E20)($at)
/* 1E9398 801DEAD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E939C 801DEADC 27BD0018 */  addiu      $sp, $sp, 0x18
glabel func_801DEAE0_ovl16
/* 1E93A0 801DEAE0 03E00008 */  jr         $ra
/* 1E93A4 801DEAE4 00000000 */   nop
