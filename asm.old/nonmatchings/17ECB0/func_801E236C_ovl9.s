glabel func_801E236C_ovl9
/* 1903BC 801E236C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1903C0 801E2370 AFB30030 */  sw         $s3, 0x30($sp)
/* 1903C4 801E2374 3C138005 */  lui        $s3, %hi(D_8004A7C4)
glabel func_801E2378_ovl14
/* 1903C8 801E2378 2673A7C4 */  addiu      $s3, $s3, %lo(D_8004A7C4)
/* 1903CC 801E237C 8E620000 */  lw         $v0, 0x0($s3)
/* 1903D0 801E2380 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1903D4 801E2384 AFB2002C */  sw         $s2, 0x2C($sp)
/* 1903D8 801E2388 AFB10028 */  sw         $s1, 0x28($sp)
/* 1903DC 801E238C AFB00024 */  sw         $s0, 0x24($sp)
.L801E2390_ovl17:
/* 1903E0 801E2390 F7B60018 */  sdc1       $f22, 0x18($sp)
.L801E2394_ovl12:
/* 1903E4 801E2394 F7B40010 */  sdc1       $f20, 0x10($sp)
.L801E2398_ovl16:
/* 1903E8 801E2398 AFA40038 */  sw         $a0, 0x38($sp)
.L801E239C_ovl15:
/* 1903EC 801E239C 8C4F0000 */  lw         $t7, 0x0($v0)
glabel func_801E23A0_ovl12
/* 1903F0 801E23A0 3C01800E */  lui        $at, %hi(D_800DDFD0)
.L801E23A4_ovl10:
/* 1903F4 801E23A4 240E0003 */  addiu      $t6, $zero, 0x3
/* 1903F8 801E23A8 000FC080 */  sll        $t8, $t7, 2
/* 1903FC 801E23AC 00380821 */  addu       $at, $at, $t8
/* 190400 801E23B0 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 190404 801E23B4 8C480000 */  lw         $t0, 0x0($v0)
.L801E23B8_ovl13:
/* 190408 801E23B8 3C0A800E */  lui        $t2, %hi(D_800E1B50)
/* 19040C 801E23BC 3C19801D */  lui        $t9, %hi(D_801CBA10)
/* 190410 801E23C0 00084880 */  sll        $t1, $t0, 2
/* 190414 801E23C4 01495021 */  addu       $t2, $t2, $t1
/* 190418 801E23C8 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
/* 19041C 801E23CC 2739BA10 */  addiu      $t9, $t9, %lo(D_801CBA10)
/* 190420 801E23D0 3C040001 */  lui        $a0, (0x101AF >> 16)
/* 190424 801E23D4 348401AF */  ori        $a0, $a0, (0x101AF & 0xFFFF)
/* 190428 801E23D8 0C02A7A9 */  jal        func_800A9EA4
/* 19042C 801E23DC AD590098 */   sw        $t9, 0x98($t2)
glabel func_801E23E0_ovl17
/* 190430 801E23E0 8E620000 */  lw         $v0, 0x0($s3)
/* 190434 801E23E4 44802000 */  mtc1       $zero, $f4
/* 190438 801E23E8 3C04800E */  lui        $a0, %hi(D_800E6690)
/* 19043C 801E23EC 8C4B0000 */  lw         $t3, 0x0($v0)
/* 190440 801E23F0 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
.L801E23F4_ovl15:
/* 190444 801E23F4 3C014170 */  lui        $at, (0x41700000 >> 16)
glabel func_801E23F8_ovl14
/* 190448 801E23F8 000B6080 */  sll        $t4, $t3, 2
.L801E23FC_ovl10:
/* 19044C 801E23FC 008C6821 */  addu       $t5, $a0, $t4
.L801E2400_ovl13:
/* 190450 801E2400 E5A40000 */  swc1       $f4, 0x0($t5)
.L801E2404_ovl14:
/* 190454 801E2404 8C430000 */  lw         $v1, 0x0($v0)
/* 190458 801E2408 44811000 */  mtc1       $at, $f2
/* 19045C 801E240C 3C01800E */  lui        $at, %hi(D_800E3910)
glabel func_801E2410_ovl14
/* 190460 801E2410 00031880 */  sll        $v1, $v1, 2
/* 190464 801E2414 00837821 */  addu       $t7, $a0, $v1
/* 190468 801E2418 C5E00000 */  lwc1       $f0, 0x0($t7)
/* 19046C 801E241C 00230821 */  addu       $at, $at, $v1
/* 190470 801E2420 3C11800E */  lui        $s1, %hi(D_800E64D0)
/* 190474 801E2424 E4203910 */  swc1       $f0, %lo(D_800E3910)($at)
.L801E2428_ovl10:
/* 190478 801E2428 8C4E0000 */  lw         $t6, 0x0($v0)
/* 19047C 801E242C 3C01800E */  lui        $at, %hi(D_800E3750)
/* 190480 801E2430 3C12800E */  lui        $s2, %hi(D_800E3210)
/* 190484 801E2434 000EC080 */  sll        $t8, $t6, 2
/* 190488 801E2438 00380821 */  addu       $at, $at, $t8
/* 19048C 801E243C E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
/* 190490 801E2440 8C480000 */  lw         $t0, 0x0($v0)
/* 190494 801E2444 3C01800E */  lui        $at, %hi(D_800E3590)
.L801E2448_ovl15:
/* 190498 801E2448 26523210 */  addiu      $s2, $s2, %lo(D_800E3210)
.L801E244C_ovl15:
/* 19049C 801E244C 00084880 */  sll        $t1, $t0, 2
/* 1904A0 801E2450 00290821 */  addu       $at, $at, $t1
/* 1904A4 801E2454 E4203590 */  swc1       $f0, %lo(D_800E3590)($at)
/* 1904A8 801E2458 8C430000 */  lw         $v1, 0x0($v0)
/* 1904AC 801E245C 263164D0 */  addiu      $s1, $s1, %lo(D_800E64D0)
/* 1904B0 801E2460 2410000E */  addiu      $s0, $zero, 0xE
/* 1904B4 801E2464 00031880 */  sll        $v1, $v1, 2
.L801E2468_ovl16:
/* 1904B8 801E2468 0223C821 */  addu       $t9, $s1, $v1
.L801E246C_ovl15:
/* 1904BC 801E246C 02435021 */  addu       $t2, $s2, $v1
/* 1904C0 801E2470 C7260000 */  lwc1       $f6, 0x0($t9)
/* 1904C4 801E2474 C5480000 */  lwc1       $f8, 0x0($t2)
/* 1904C8 801E2478 46023503 */  div.s      $f20, $f6, $f2
/* 1904CC 801E247C 46024583 */  div.s      $f22, $f8, $f2
.L801E2480_ovl9:
/* 1904D0 801E2480 44905000 */  mtc1       $s0, $f10
/* 1904D4 801E2484 8E620000 */  lw         $v0, 0x0($s3)
.L801E2488_ovl12:
/* 1904D8 801E2488 24040001 */  addiu      $a0, $zero, 0x1
/* 1904DC 801E248C 46805020 */  cvt.s.w    $f0, $f10
/* 1904E0 801E2490 8C4B0000 */  lw         $t3, 0x0($v0)
glabel func_801E2494_ovl12
/* 1904E4 801E2494 000B6080 */  sll        $t4, $t3, 2
/* 1904E8 801E2498 022C6821 */  addu       $t5, $s1, $t4
/* 1904EC 801E249C 46140402 */  mul.s      $f16, $f0, $f20
/* 1904F0 801E24A0 E5B00000 */  swc1       $f16, 0x0($t5)
/* 1904F4 801E24A4 46160482 */  mul.s      $f18, $f0, $f22
/* 1904F8 801E24A8 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1904FC 801E24AC 000F7080 */  sll        $t6, $t7, 2
/* 190500 801E24B0 024EC021 */  addu       $t8, $s2, $t6
/* 190504 801E24B4 0C002DAF */  jal        finish_current_thread
/* 190508 801E24B8 E7120000 */   swc1      $f18, 0x0($t8)
/* 19050C 801E24BC 02001025 */  or         $v0, $s0, $zero
/* 190510 801E24C0 1600FFEF */  bnez       $s0, .L801E2480_ovl9
/* 190514 801E24C4 2610FFFF */   addiu     $s0, $s0, -0x1
/* 190518 801E24C8 0C02CCFD */  jal        func_800B33F4
/* 19051C 801E24CC 00000000 */   nop
/* 190520 801E24D0 8E680000 */  lw         $t0, 0x0($s3)
.L801E24D4_ovl10:
/* 190524 801E24D4 3C02800E */  lui        $v0, %hi(D_800E7880)
.L801E24D8_ovl12:
/* 190528 801E24D8 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
.L801E24DC_ovl10:
/* 19052C 801E24DC 8D030000 */  lw         $v1, 0x0($t0)
/* 190530 801E24E0 00431021 */  addu       $v0, $v0, $v1
/* 190534 801E24E4 90427880 */  lbu        $v0, %lo(D_800E7880)($v0)
/* 190538 801E24E8 00034880 */  sll        $t1, $v1, 2
/* 19053C 801E24EC 00290821 */  addu       $at, $at, $t1
/* 190540 801E24F0 10400006 */  beqz       $v0, .L801E250C_ovl9
/* 190544 801E24F4 00000000 */   nop
.L801E24F8_ovl12:
/* 190548 801E24F8 24010001 */  addiu      $at, $zero, 0x1
/* 19054C 801E24FC 10410005 */  beq        $v0, $at, .L801E2514_ovl14
/* 190550 801E2500 24190003 */   addiu     $t9, $zero, 0x3
/* 190554 801E2504 10000008 */  b          func_801E2528_ovl12
/* 190558 801E2508 8FBF0034 */   lw        $ra, 0x34($sp)
.L801E250C_ovl9:
/* 19055C 801E250C 10000005 */  b          .L801E2524_ovl16
/* 190560 801E2510 AC20DC50 */   sw        $zero, %lo(gEntityVtableIndexArray)($at)
.L801E2514_ovl14:
/* 190564 801E2514 00035080 */  sll        $t2, $v1, 2
/* 190568 801E2518 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 19056C 801E251C 002A0821 */  addu       $at, $at, $t2
.L801E2520_ovl13:
/* 190570 801E2520 AC39DC50 */  sw         $t9, %lo(gEntityVtableIndexArray)($at)
.L801E2524_ovl16:
/* 190574 801E2524 8FBF0034 */  lw         $ra, 0x34($sp)
glabel func_801E2528_ovl12
/* 190578 801E2528 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 19057C 801E252C D7B60018 */  ldc1       $f22, 0x18($sp)
glabel func_801E2530_ovl12
/* 190580 801E2530 8FB00024 */  lw         $s0, 0x24($sp)
/* 190584 801E2534 8FB10028 */  lw         $s1, 0x28($sp)
/* 190588 801E2538 8FB2002C */  lw         $s2, 0x2C($sp)
.L801E253C_ovl10:
/* 19058C 801E253C 8FB30030 */  lw         $s3, 0x30($sp)
/* 190590 801E2540 03E00008 */  jr         $ra
/* 190594 801E2544 27BD0038 */   addiu     $sp, $sp, 0x38
