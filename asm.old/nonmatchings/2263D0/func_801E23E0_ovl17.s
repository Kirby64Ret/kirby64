glabel func_801E23E0_ovl17
/* 22D5D0 801E23E0 27BDFEE0 */  addiu      $sp, $sp, -0x120
/* 22D5D4 801E23E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 22D5D8 801E23E8 0C00C304 */  jal        guMtxIdentF
/* 22D5DC 801E23EC 27A400D0 */   addiu     $a0, $sp, 0xD0
/* 22D5E0 801E23F0 44800000 */  mtc1       $zero, $f0
.L801E23F4_ovl15:
/* 22D5E4 801E23F4 3C064049 */  lui        $a2, (0x40490FDB >> 16)
glabel func_801E23F8_ovl14
/* 22D5E8 801E23F8 34C60FDB */  ori        $a2, $a2, (0x40490FDB & 0xFFFF)
.L801E23FC_ovl10:
/* 22D5EC 801E23FC 44050000 */  mfc1       $a1, $f0
.L801E2400_ovl13:
/* 22D5F0 801E2400 44070000 */  mfc1       $a3, $f0
.L801E2404_ovl14:
/* 22D5F4 801E2404 0C006EEB */  jal        HS64_MkRotationMtxF
/* 22D5F8 801E2408 27A40090 */   addiu     $a0, $sp, 0x90
/* 22D5FC 801E240C 27A400D0 */  addiu      $a0, $sp, 0xD0
glabel func_801E2410_ovl14
/* 22D600 801E2410 00803025 */  or         $a2, $a0, $zero
/* 22D604 801E2414 0C00D034 */  jal        guMtxCatF
/* 22D608 801E2418 27A50090 */   addiu     $a1, $sp, 0x90
/* 22D60C 801E241C 3C05800F */  lui        $a1, %hi(D_800EA6E0)
/* 22D610 801E2420 3C06800F */  lui        $a2, %hi(D_800EA8A0)
/* 22D614 801E2424 3C07800F */  lui        $a3, %hi(D_800EAA60)
.L801E2428_ovl10:
/* 22D618 801E2428 8CE7AA60 */  lw         $a3, %lo(D_800EAA60)($a3)
/* 22D61C 801E242C 8CC6A8A0 */  lw         $a2, %lo(D_800EA8A0)($a2)
/* 22D620 801E2430 8CA5A6E0 */  lw         $a1, %lo(D_800EA6E0)($a1)
/* 22D624 801E2434 0C006EEB */  jal        HS64_MkRotationMtxF
/* 22D628 801E2438 27A40090 */   addiu     $a0, $sp, 0x90
/* 22D62C 801E243C 27A400D0 */  addiu      $a0, $sp, 0xD0
/* 22D630 801E2440 27A50090 */  addiu      $a1, $sp, 0x90
/* 22D634 801E2444 0C00D034 */  jal        guMtxCatF
.L801E2448_ovl15:
/* 22D638 801E2448 27A60050 */   addiu     $a2, $sp, 0x50
.L801E244C_ovl15:
/* 22D63C 801E244C 0C00C304 */  jal        guMtxIdentF
/* 22D640 801E2450 27A400D0 */   addiu     $a0, $sp, 0xD0
/* 22D644 801E2454 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 22D648 801E2458 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 22D64C 801E245C 3C05800F */  lui        $a1, %hi(D_800EA6E0)
/* 22D650 801E2460 3C06800F */  lui        $a2, %hi(D_800EA8A0)
/* 22D654 801E2464 8DC30000 */  lw         $v1, 0x0($t6)
.L801E2468_ovl16:
/* 22D658 801E2468 3C07800F */  lui        $a3, %hi(D_800EAA60)
.L801E246C_ovl15:
/* 22D65C 801E246C 27A40090 */  addiu      $a0, $sp, 0x90
/* 22D660 801E2470 00031880 */  sll        $v1, $v1, 2
/* 22D664 801E2474 00A32821 */  addu       $a1, $a1, $v1
/* 22D668 801E2478 00C33021 */  addu       $a2, $a2, $v1
/* 22D66C 801E247C 00E33821 */  addu       $a3, $a3, $v1
.L801E2480_ovl9:
/* 22D670 801E2480 8CE7AA60 */  lw         $a3, %lo(D_800EAA60)($a3)
/* 22D674 801E2484 8CC6A8A0 */  lw         $a2, %lo(D_800EA8A0)($a2)
.L801E2488_ovl12:
/* 22D678 801E2488 0C006EEB */  jal        HS64_MkRotationMtxF
/* 22D67C 801E248C 8CA5A6E0 */   lw        $a1, %lo(D_800EA6E0)($a1)
/* 22D680 801E2490 27A600D0 */  addiu      $a2, $sp, 0xD0
glabel func_801E2494_ovl12
/* 22D684 801E2494 00C02025 */  or         $a0, $a2, $zero
/* 22D688 801E2498 0C00D034 */  jal        guMtxCatF
/* 22D68C 801E249C 27A50090 */   addiu     $a1, $sp, 0x90
/* 22D690 801E24A0 C7A000D8 */  lwc1       $f0, 0xD8($sp)
/* 22D694 801E24A4 C7AC00D4 */  lwc1       $f12, 0xD4($sp)
/* 22D698 801E24A8 C7AE00D0 */  lwc1       $f14, 0xD0($sp)
/* 22D69C 801E24AC C7A400F0 */  lwc1       $f4, 0xF0($sp)
/* 22D6A0 801E24B0 C7A600F4 */  lwc1       $f6, 0xF4($sp)
/* 22D6A4 801E24B4 C7A800F8 */  lwc1       $f8, 0xF8($sp)
/* 22D6A8 801E24B8 3C063FC9 */  lui        $a2, (0x3FC90FDB >> 16)
/* 22D6AC 801E24BC 34C60FDB */  ori        $a2, $a2, (0x3FC90FDB & 0xFFFF)
/* 22D6B0 801E24C0 27A40044 */  addiu      $a0, $sp, 0x44
/* 22D6B4 801E24C4 27A50038 */  addiu      $a1, $sp, 0x38
/* 22D6B8 801E24C8 E7A00040 */  swc1       $f0, 0x40($sp)
/* 22D6BC 801E24CC E7AC003C */  swc1       $f12, 0x3C($sp)
/* 22D6C0 801E24D0 E7AE0038 */  swc1       $f14, 0x38($sp)
.L801E24D4_ovl10:
/* 22D6C4 801E24D4 E7A40044 */  swc1       $f4, 0x44($sp)
.L801E24D8_ovl12:
/* 22D6C8 801E24D8 E7A60048 */  swc1       $f6, 0x48($sp)
.L801E24DC_ovl10:
/* 22D6CC 801E24DC 0C00647E */  jal        func_800191F8
/* 22D6D0 801E24E0 E7A8004C */   swc1      $f8, 0x4C($sp)
/* 22D6D4 801E24E4 C7A20044 */  lwc1       $f2, 0x44($sp)
/* 22D6D8 801E24E8 C7B00048 */  lwc1       $f16, 0x48($sp)
/* 22D6DC 801E24EC C7B2004C */  lwc1       $f18, 0x4C($sp)
/* 22D6E0 801E24F0 C7A000D8 */  lwc1       $f0, 0xD8($sp)
/* 22D6E4 801E24F4 C7AC00D4 */  lwc1       $f12, 0xD4($sp)
.L801E24F8_ovl12:
/* 22D6E8 801E24F8 C7AE00D0 */  lwc1       $f14, 0xD0($sp)
/* 22D6EC 801E24FC 27A40044 */  addiu      $a0, $sp, 0x44
/* 22D6F0 801E2500 27A50038 */  addiu      $a1, $sp, 0x38
/* 22D6F4 801E2504 27A60020 */  addiu      $a2, $sp, 0x20
/* 22D6F8 801E2508 E7A20044 */  swc1       $f2, 0x44($sp)
.L801E250C_ovl9:
/* 22D6FC 801E250C E7A200F0 */  swc1       $f2, 0xF0($sp)
/* 22D700 801E2510 E7B00048 */  swc1       $f16, 0x48($sp)
.L801E2514_ovl14:
/* 22D704 801E2514 E7B000F4 */  swc1       $f16, 0xF4($sp)
/* 22D708 801E2518 E7B2004C */  swc1       $f18, 0x4C($sp)
/* 22D70C 801E251C E7B200F8 */  swc1       $f18, 0xF8($sp)
.L801E2520_ovl13:
/* 22D710 801E2520 E7A00040 */  swc1       $f0, 0x40($sp)
.L801E2524_ovl16:
/* 22D714 801E2524 E7AC003C */  swc1       $f12, 0x3C($sp)
glabel func_801E2528_ovl12
/* 22D718 801E2528 0C0065D0 */  jal        vec3_normalized_cross_product
/* 22D71C 801E252C E7AE0038 */   swc1      $f14, 0x38($sp)
glabel func_801E2530_ovl12
/* 22D720 801E2530 C7AA00F0 */  lwc1       $f10, 0xF0($sp)
/* 22D724 801E2534 C7A400F4 */  lwc1       $f4, 0xF4($sp)
/* 22D728 801E2538 44801000 */  mtc1       $zero, $f2
.L801E253C_ovl10:
/* 22D72C 801E253C C7AC0020 */  lwc1       $f12, 0x20($sp)
/* 22D730 801E2540 C7AE0024 */  lwc1       $f14, 0x24($sp)
/* 22D734 801E2544 C7A00028 */  lwc1       $f0, 0x28($sp)
glabel func_801E2548_ovl9
/* 22D738 801E2548 E7AA0044 */  swc1       $f10, 0x44($sp)
/* 22D73C 801E254C E7A40048 */  swc1       $f4, 0x48($sp)
.L801E2550_ovl10:
/* 22D740 801E2550 C7A600F8 */  lwc1       $f6, 0xF8($sp)
/* 22D744 801E2554 C7A80070 */  lwc1       $f8, 0x70($sp)
/* 22D748 801E2558 C7AA0074 */  lwc1       $f10, 0x74($sp)
.L801E255C_ovl14:
/* 22D74C 801E255C C7A40078 */  lwc1       $f4, 0x78($sp)
/* 22D750 801E2560 27A40044 */  addiu      $a0, $sp, 0x44
.L801E2564_ovl13:
/* 22D754 801E2564 27A5002C */  addiu      $a1, $sp, 0x2C
/* 22D758 801E2568 E7A20028 */  swc1       $f2, 0x28($sp)
/* 22D75C 801E256C E7A20024 */  swc1       $f2, 0x24($sp)
/* 22D760 801E2570 E7A20020 */  swc1       $f2, 0x20($sp)
/* 22D764 801E2574 E7AC0038 */  swc1       $f12, 0x38($sp)
/* 22D768 801E2578 E7AC00E0 */  swc1       $f12, 0xE0($sp)
.L801E257C_ovl15:
/* 22D76C 801E257C E7AE003C */  swc1       $f14, 0x3C($sp)
/* 22D770 801E2580 E7AE00E4 */  swc1       $f14, 0xE4($sp)
/* 22D774 801E2584 E7A00040 */  swc1       $f0, 0x40($sp)
glabel func_801E2588_ovl9
/* 22D778 801E2588 E7A000E8 */  swc1       $f0, 0xE8($sp)
/* 22D77C 801E258C E7A6004C */  swc1       $f6, 0x4C($sp)
/* 22D780 801E2590 E7A8002C */  swc1       $f8, 0x2C($sp)
/* 22D784 801E2594 E7AA0030 */  swc1       $f10, 0x30($sp)
/* 22D788 801E2598 0C0063EF */  jal        lbvector_Angle
/* 22D78C 801E259C E7A40034 */   swc1      $f4, 0x34($sp)
/* 22D790 801E25A0 3C01801E */  lui        $at, %hi(D_801E569C_ovl17)
/* 22D794 801E25A4 C426569C */  lwc1       $f6, %lo(D_801E569C_ovl17)($at)
/* 22D798 801E25A8 46000086 */  mov.s      $f2, $f0
.L801E25AC_ovl14:
/* 22D79C 801E25AC 4600303C */  c.lt.s     $f6, $f0
/* 22D7A0 801E25B0 00000000 */  nop
.L801E25B4_ovl10:
/* 22D7A4 801E25B4 45000002 */  bc1f       .L801E25C0_ovl17
/* 22D7A8 801E25B8 3C01801E */   lui       $at, %hi(D_801E56A0_ovl17)
/* 22D7AC 801E25BC C42256A0 */  lwc1       $f2, %lo(D_801E56A0_ovl17)($at)
.L801E25C0_ovl17:
/* 22D7B0 801E25C0 3C01801E */  lui        $at, %hi(.L801E56A4_ovl17)
/* 22D7B4 801E25C4 C42856A4 */  lwc1       $f8, %lo(.L801E56A4_ovl17)($at)
/* 22D7B8 801E25C8 27A40044 */  addiu      $a0, $sp, 0x44
/* 22D7BC 801E25CC 27A5002C */  addiu      $a1, $sp, 0x2C
.L801E25D0_ovl15:
/* 22D7C0 801E25D0 4602403C */  c.lt.s     $f8, $f2
.L801E25D4_ovl15:
/* 22D7C4 801E25D4 27A60020 */  addiu      $a2, $sp, 0x20
/* 22D7C8 801E25D8 4502002C */  bc1fl      .L801E268C_ovl17
/* 22D7CC 801E25DC C7AA00E0 */   lwc1      $f10, 0xE0($sp)
.L801E25E0_ovl10:
/* 22D7D0 801E25E0 0C0065D0 */  jal        vec3_normalized_cross_product
/* 22D7D4 801E25E4 E7A2011C */   swc1      $f2, 0x11C($sp)
/* 22D7D8 801E25E8 44800000 */  mtc1       $zero, $f0
/* 22D7DC 801E25EC C7AA0020 */  lwc1       $f10, 0x20($sp)
.L801E25F0_ovl14:
/* 22D7E0 801E25F0 C7A2011C */  lwc1       $f2, 0x11C($sp)
.L801E25F4_ovl16:
/* 22D7E4 801E25F4 C7A40024 */  lwc1       $f4, 0x24($sp)
/* 22D7E8 801E25F8 46005032 */  c.eq.s     $f10, $f0
/* 22D7EC 801E25FC 27A40038 */  addiu      $a0, $sp, 0x38
/* 22D7F0 801E2600 27A50020 */  addiu      $a1, $sp, 0x20
/* 22D7F4 801E2604 45000009 */  bc1f       .L801E262C_ovl17
/* 22D7F8 801E2608 00000000 */   nop
/* 22D7FC 801E260C 46002032 */  c.eq.s     $f4, $f0
glabel func_801E2610_ovl14
/* 22D800 801E2610 C7A60028 */  lwc1       $f6, 0x28($sp)
/* 22D804 801E2614 45000005 */  bc1f       .L801E262C_ovl17
/* 22D808 801E2618 00000000 */   nop
/* 22D80C 801E261C 46003032 */  c.eq.s     $f6, $f0
/* 22D810 801E2620 00000000 */  nop
/* 22D814 801E2624 45030019 */  bc1tl      .L801E268C_ovl17
/* 22D818 801E2628 C7AA00E0 */   lwc1      $f10, 0xE0($sp)
.L801E262C_ovl17:
/* 22D81C 801E262C 0C0063EF */  jal        lbvector_Angle
glabel func_801E2630_ovl13
/* 22D820 801E2630 E7A2011C */   swc1      $f2, 0x11C($sp)
/* 22D824 801E2634 3C01801E */  lui        $at, %hi(D_801E56A8_ovl17)
/* 22D828 801E2638 C42856A8 */  lwc1       $f8, %lo(D_801E56A8_ovl17)($at)
/* 22D82C 801E263C C7A2011C */  lwc1       $f2, 0x11C($sp)
/* 22D830 801E2640 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 22D834 801E2644 4600403C */  c.lt.s     $f8, $f0
/* 22D838 801E2648 27A40044 */  addiu      $a0, $sp, 0x44
/* 22D83C 801E264C 45020006 */  bc1fl      .L801E2668_ovl17
/* 22D840 801E2650 44061000 */   mfc1      $a2, $f2
/* 22D844 801E2654 44815000 */  mtc1       $at, $f10
/* 22D848 801E2658 00000000 */  nop
/* 22D84C 801E265C 460A1082 */  mul.s      $f2, $f2, $f10
.L801E2660_ovl10:
/* 22D850 801E2660 00000000 */  nop
/* 22D854 801E2664 44061000 */  mfc1       $a2, $f2
.L801E2668_ovl17:
/* 22D858 801E2668 0C00647E */  jal        func_800191F8
/* 22D85C 801E266C 27A50038 */   addiu     $a1, $sp, 0x38
/* 22D860 801E2670 C7A40044 */  lwc1       $f4, 0x44($sp)
/* 22D864 801E2674 C7A60048 */  lwc1       $f6, 0x48($sp)
/* 22D868 801E2678 C7A8004C */  lwc1       $f8, 0x4C($sp)
/* 22D86C 801E267C E7A400F0 */  swc1       $f4, 0xF0($sp)
/* 22D870 801E2680 E7A600F4 */  swc1       $f6, 0xF4($sp)
.L801E2684_ovl10:
/* 22D874 801E2684 E7A800F8 */  swc1       $f8, 0xF8($sp)
/* 22D878 801E2688 C7AA00E0 */  lwc1       $f10, 0xE0($sp)
.L801E268C_ovl17:
/* 22D87C 801E268C C7AE00E4 */  lwc1       $f14, 0xE4($sp)
/* 22D880 801E2690 C7A400E8 */  lwc1       $f4, 0xE8($sp)
/* 22D884 801E2694 E7AA0044 */  swc1       $f10, 0x44($sp)
glabel func_801E2698_ovl9
/* 22D888 801E2698 C7A600F0 */  lwc1       $f6, 0xF0($sp)
/* 22D88C 801E269C C7A800F4 */  lwc1       $f8, 0xF4($sp)
/* 22D890 801E26A0 C7AA00F8 */  lwc1       $f10, 0xF8($sp)
/* 22D894 801E26A4 27A40044 */  addiu      $a0, $sp, 0x44
glabel func_801E26A8_ovl12
/* 22D898 801E26A8 27A5002C */  addiu      $a1, $sp, 0x2C
.L801E26AC_ovl15:
/* 22D89C 801E26AC 27A60020 */  addiu      $a2, $sp, 0x20
.L801E26B0_ovl16:
/* 22D8A0 801E26B0 E7AE0048 */  swc1       $f14, 0x48($sp)
/* 22D8A4 801E26B4 E7A4004C */  swc1       $f4, 0x4C($sp)
/* 22D8A8 801E26B8 E7A6002C */  swc1       $f6, 0x2C($sp)
/* 22D8AC 801E26BC E7A80030 */  swc1       $f8, 0x30($sp)
/* 22D8B0 801E26C0 0C0065D0 */  jal        vec3_normalized_cross_product
/* 22D8B4 801E26C4 E7AA0034 */   swc1      $f10, 0x34($sp)
.L801E26C8_ovl13:
/* 22D8B8 801E26C8 C7A400F0 */  lwc1       $f4, 0xF0($sp)
/* 22D8BC 801E26CC C7A600F4 */  lwc1       $f6, 0xF4($sp)
.L801E26D0_ovl13:
/* 22D8C0 801E26D0 44801000 */  mtc1       $zero, $f2
/* 22D8C4 801E26D4 C7AE0020 */  lwc1       $f14, 0x20($sp)
/* 22D8C8 801E26D8 C7AC0024 */  lwc1       $f12, 0x24($sp)
/* 22D8CC 801E26DC C7A00028 */  lwc1       $f0, 0x28($sp)
/* 22D8D0 801E26E0 E7A40044 */  swc1       $f4, 0x44($sp)
/* 22D8D4 801E26E4 E7A60048 */  swc1       $f6, 0x48($sp)
.L801E26E8_ovl13:
/* 22D8D8 801E26E8 C7A800F8 */  lwc1       $f8, 0xF8($sp)
/* 22D8DC 801E26EC C7AA0070 */  lwc1       $f10, 0x70($sp)
/* 22D8E0 801E26F0 C7A40074 */  lwc1       $f4, 0x74($sp)
.L801E26F4_ovl13:
/* 22D8E4 801E26F4 C7A60078 */  lwc1       $f6, 0x78($sp)
/* 22D8E8 801E26F8 27A40044 */  addiu      $a0, $sp, 0x44
/* 22D8EC 801E26FC 27A5002C */  addiu      $a1, $sp, 0x2C
/* 22D8F0 801E2700 E7A20028 */  swc1       $f2, 0x28($sp)
.L801E2704_ovl15:
/* 22D8F4 801E2704 E7A20024 */  swc1       $f2, 0x24($sp)
/* 22D8F8 801E2708 E7A20020 */  swc1       $f2, 0x20($sp)
glabel func_801E270C_ovl9
/* 22D8FC 801E270C E7AE0038 */  swc1       $f14, 0x38($sp)
/* 22D900 801E2710 E7AE00D0 */  swc1       $f14, 0xD0($sp)
/* 22D904 801E2714 E7AC003C */  swc1       $f12, 0x3C($sp)
/* 22D908 801E2718 E7AC00D4 */  swc1       $f12, 0xD4($sp)
/* 22D90C 801E271C E7A00040 */  swc1       $f0, 0x40($sp)
/* 22D910 801E2720 E7A000D8 */  swc1       $f0, 0xD8($sp)
glabel func_801E2724_ovl10
/* 22D914 801E2724 E7A8004C */  swc1       $f8, 0x4C($sp)
/* 22D918 801E2728 E7AA002C */  swc1       $f10, 0x2C($sp)
/* 22D91C 801E272C E7A40030 */  swc1       $f4, 0x30($sp)
/* 22D920 801E2730 0C0063EF */  jal        lbvector_Angle
/* 22D924 801E2734 E7A60034 */   swc1      $f6, 0x34($sp)
/* 22D928 801E2738 3C01801E */  lui        $at, %hi(D_801E56AC_ovl17)
/* 22D92C 801E273C C42856AC */  lwc1       $f8, %lo(D_801E56AC_ovl17)($at)
/* 22D930 801E2740 46000086 */  mov.s      $f2, $f0
/* 22D934 801E2744 3C01801E */  lui        $at, %hi(D_801E56B0_ovl17)
/* 22D938 801E2748 4600403C */  c.lt.s     $f8, $f0
/* 22D93C 801E274C 27A40044 */  addiu      $a0, $sp, 0x44
/* 22D940 801E2750 27A5002C */  addiu      $a1, $sp, 0x2C
/* 22D944 801E2754 27A60020 */  addiu      $a2, $sp, 0x20
.L801E2758_ovl15:
/* 22D948 801E2758 45000002 */  bc1f       .L801E2764_ovl17
.L801E275C_ovl15:
/* 22D94C 801E275C 00000000 */   nop
/* 22D950 801E2760 C42256B0 */  lwc1       $f2, %lo(D_801E56B0_ovl17)($at)
.L801E2764_ovl17:
/* 22D954 801E2764 3C01801E */  lui        $at, %hi(D_801E56B4_ovl17)
/* 22D958 801E2768 C42A56B4 */  lwc1       $f10, %lo(D_801E56B4_ovl17)($at)
/* 22D95C 801E276C 4602503C */  c.lt.s     $f10, $f2
/* 22D960 801E2770 00000000 */  nop
/* 22D964 801E2774 4502002C */  bc1fl      .L801E2828_ovl17
.L801E2778_ovl13:
/* 22D968 801E2778 C7A400E0 */   lwc1      $f4, 0xE0($sp)
/* 22D96C 801E277C 0C0065D0 */  jal        vec3_normalized_cross_product
.L801E2780_ovl16:
/* 22D970 801E2780 E7A2011C */   swc1      $f2, 0x11C($sp)
/* 22D974 801E2784 44800000 */  mtc1       $zero, $f0
.L801E2788_ovl14:
/* 22D978 801E2788 C7A40020 */  lwc1       $f4, 0x20($sp)
/* 22D97C 801E278C C7A2011C */  lwc1       $f2, 0x11C($sp)
/* 22D980 801E2790 C7A60024 */  lwc1       $f6, 0x24($sp)
/* 22D984 801E2794 46002032 */  c.eq.s     $f4, $f0
/* 22D988 801E2798 27A40038 */  addiu      $a0, $sp, 0x38
.L801E279C_ovl12:
/* 22D98C 801E279C 27A50020 */  addiu      $a1, $sp, 0x20
/* 22D990 801E27A0 45000009 */  bc1f       .L801E27C8_ovl17
/* 22D994 801E27A4 00000000 */   nop
/* 22D998 801E27A8 46003032 */  c.eq.s     $f6, $f0
/* 22D99C 801E27AC C7A80028 */  lwc1       $f8, 0x28($sp)
/* 22D9A0 801E27B0 45000005 */  bc1f       .L801E27C8_ovl17
.L801E27B4_ovl13:
/* 22D9A4 801E27B4 00000000 */   nop
/* 22D9A8 801E27B8 46004032 */  c.eq.s     $f8, $f0
glabel func_801E27BC_ovl15
/* 22D9AC 801E27BC 00000000 */  nop
/* 22D9B0 801E27C0 45030019 */  bc1tl      .L801E2828_ovl17
/* 22D9B4 801E27C4 C7A400E0 */   lwc1      $f4, 0xE0($sp)
.L801E27C8_ovl17:
/* 22D9B8 801E27C8 0C0063EF */  jal        lbvector_Angle
/* 22D9BC 801E27CC E7A2011C */   swc1      $f2, 0x11C($sp)
/* 22D9C0 801E27D0 3C01801E */  lui        $at, %hi(D_801E56B8_ovl17)
/* 22D9C4 801E27D4 C42A56B8 */  lwc1       $f10, %lo(D_801E56B8_ovl17)($at)
/* 22D9C8 801E27D8 C7A2011C */  lwc1       $f2, 0x11C($sp)
/* 22D9CC 801E27DC 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 22D9D0 801E27E0 4600503C */  c.lt.s     $f10, $f0
/* 22D9D4 801E27E4 27A40044 */  addiu      $a0, $sp, 0x44
glabel func_801E27E8_ovl10
/* 22D9D8 801E27E8 45020006 */  bc1fl      .L801E2804_ovl17
.L801E27EC_ovl13:
/* 22D9DC 801E27EC 44061000 */   mfc1      $a2, $f2
.L801E27F0_ovl13:
/* 22D9E0 801E27F0 44812000 */  mtc1       $at, $f4
.L801E27F4_ovl9:
/* 22D9E4 801E27F4 00000000 */  nop
/* 22D9E8 801E27F8 46041082 */  mul.s      $f2, $f2, $f4
/* 22D9EC 801E27FC 00000000 */  nop
/* 22D9F0 801E2800 44061000 */  mfc1       $a2, $f2
.L801E2804_ovl17:
/* 22D9F4 801E2804 0C00647E */  jal        func_800191F8
/* 22D9F8 801E2808 27A50038 */   addiu     $a1, $sp, 0x38
/* 22D9FC 801E280C C7A60044 */  lwc1       $f6, 0x44($sp)
/* 22DA00 801E2810 C7A80048 */  lwc1       $f8, 0x48($sp)
/* 22DA04 801E2814 C7AA004C */  lwc1       $f10, 0x4C($sp)
.L801E2818_ovl15:
/* 22DA08 801E2818 E7A600F0 */  swc1       $f6, 0xF0($sp)
/* 22DA0C 801E281C E7A800F4 */  swc1       $f8, 0xF4($sp)
glabel func_801E2820_ovl16
/* 22DA10 801E2820 E7AA00F8 */  swc1       $f10, 0xF8($sp)
.L801E2824_ovl9:
/* 22DA14 801E2824 C7A400E0 */  lwc1       $f4, 0xE0($sp)
.L801E2828_ovl17:
/* 22DA18 801E2828 C7AE00E4 */  lwc1       $f14, 0xE4($sp)
/* 22DA1C 801E282C C7A600E8 */  lwc1       $f6, 0xE8($sp)
/* 22DA20 801E2830 E7A40044 */  swc1       $f4, 0x44($sp)
glabel func_801E2834_ovl14
/* 22DA24 801E2834 C7A800F0 */  lwc1       $f8, 0xF0($sp)
/* 22DA28 801E2838 C7AA00F4 */  lwc1       $f10, 0xF4($sp)
/* 22DA2C 801E283C C7A400F8 */  lwc1       $f4, 0xF8($sp)
/* 22DA30 801E2840 27A40044 */  addiu      $a0, $sp, 0x44
.L801E2844_ovl12:
/* 22DA34 801E2844 27A5002C */  addiu      $a1, $sp, 0x2C
/* 22DA38 801E2848 27A60020 */  addiu      $a2, $sp, 0x20
/* 22DA3C 801E284C E7AE0048 */  swc1       $f14, 0x48($sp)
/* 22DA40 801E2850 E7A6004C */  swc1       $f6, 0x4C($sp)
/* 22DA44 801E2854 E7A8002C */  swc1       $f8, 0x2C($sp)
/* 22DA48 801E2858 E7AA0030 */  swc1       $f10, 0x30($sp)
/* 22DA4C 801E285C 0C0065D0 */  jal        vec3_normalized_cross_product
/* 22DA50 801E2860 E7A40034 */   swc1      $f4, 0x34($sp)
/* 22DA54 801E2864 C7AE0020 */  lwc1       $f14, 0x20($sp)
/* 22DA58 801E2868 C7AC0024 */  lwc1       $f12, 0x24($sp)
/* 22DA5C 801E286C C7A00028 */  lwc1       $f0, 0x28($sp)
/* 22DA60 801E2870 C7A600F0 */  lwc1       $f6, 0xF0($sp)
/* 22DA64 801E2874 C7A800F4 */  lwc1       $f8, 0xF4($sp)
glabel func_801E2878_ovl9
/* 22DA68 801E2878 C7AA00F8 */  lwc1       $f10, 0xF8($sp)
/* 22DA6C 801E287C 27A40044 */  addiu      $a0, $sp, 0x44
.L801E2880_ovl14:
/* 22DA70 801E2880 27A5002C */  addiu      $a1, $sp, 0x2C
/* 22DA74 801E2884 27A60020 */  addiu      $a2, $sp, 0x20
/* 22DA78 801E2888 E7AE002C */  swc1       $f14, 0x2C($sp)
/* 22DA7C 801E288C E7AE00D0 */  swc1       $f14, 0xD0($sp)
.L801E2890_ovl13:
/* 22DA80 801E2890 E7AC0030 */  swc1       $f12, 0x30($sp)
/* 22DA84 801E2894 E7AC00D4 */  swc1       $f12, 0xD4($sp)
.L801E2898_ovl12:
/* 22DA88 801E2898 E7A00034 */  swc1       $f0, 0x34($sp)
/* 22DA8C 801E289C E7A000D8 */  swc1       $f0, 0xD8($sp)
glabel func_801E28A0_ovl10
/* 22DA90 801E28A0 E7A60044 */  swc1       $f6, 0x44($sp)
/* 22DA94 801E28A4 E7A80048 */  swc1       $f8, 0x48($sp)
glabel func_801E28A8_ovl13
/* 22DA98 801E28A8 0C0065D0 */  jal        vec3_normalized_cross_product
.L801E28AC_ovl9:
/* 22DA9C 801E28AC E7AA004C */   swc1      $f10, 0x4C($sp)
/* 22DAA0 801E28B0 C7A000D8 */  lwc1       $f0, 0xD8($sp)
/* 22DAA4 801E28B4 C7A40020 */  lwc1       $f4, 0x20($sp)
/* 22DAA8 801E28B8 C7AE0024 */  lwc1       $f14, 0x24($sp)
.L801E28BC_ovl14:
/* 22DAAC 801E28BC C7A60028 */  lwc1       $f6, 0x28($sp)
/* 22DAB0 801E28C0 46000307 */  neg.s      $f12, $f0
/* 22DAB4 801E28C4 E7A400E0 */  swc1       $f4, 0xE0($sp)
glabel func_801E28C8_ovl12
/* 22DAB8 801E28C8 E7AE00E4 */  swc1       $f14, 0xE4($sp)
/* 22DABC 801E28CC 0C006203 */  jal        asinf
/* 22DAC0 801E28D0 E7A600E8 */   swc1      $f6, 0xE8($sp)
/* 22DAC4 801E28D4 3C01801E */  lui        $at, %hi(D_801E56BC_ovl17)
/* 22DAC8 801E28D8 C42256BC */  lwc1       $f2, %lo(D_801E56BC_ovl17)($at)
/* 22DACC 801E28DC E7A00114 */  swc1       $f0, 0x114($sp)
/* 22DAD0 801E28E0 3C01801E */  lui        $at, %hi(.L801E56C0_ovl17)
/* 22DAD4 801E28E4 46020032 */  c.eq.s     $f0, $f2
/* 22DAD8 801E28E8 00000000 */  nop
.L801E28EC_ovl14:
/* 22DADC 801E28EC 45030008 */  bc1tl      .L801E2910_ovl17
glabel func_801E28F0_ovl12
/* 22DAE0 801E28F0 46020032 */   c.eq.s    $f0, $f2
/* 22DAE4 801E28F4 C42856C0 */  lwc1       $f8, %lo(.L801E56C0_ovl17)($at)
glabel func_801E28F8_ovl9
/* 22DAE8 801E28F8 C7AC00E8 */  lwc1       $f12, 0xE8($sp)
.L801E28FC_ovl16:
/* 22DAEC 801E28FC 46080032 */  c.eq.s     $f0, $f8
/* 22DAF0 801E2900 00000000 */  nop
/* 22DAF4 801E2904 45000011 */  bc1f       .L801E294C_ovl17
.L801E2908_ovl10:
/* 22DAF8 801E2908 00000000 */   nop
/* 22DAFC 801E290C 46020032 */  c.eq.s     $f0, $f2
.L801E2910_ovl17:
/* 22DB00 801E2910 C7AE00E4 */  lwc1       $f14, 0xE4($sp)
/* 22DB04 801E2914 C7AC00E0 */  lwc1       $f12, 0xE0($sp)
/* 22DB08 801E2918 45020006 */  bc1fl      .L801E2934_ovl17
.L801E291C_ovl16:
/* 22DB0C 801E291C C7AE00E4 */   lwc1      $f14, 0xE4($sp)
/* 22DB10 801E2920 0C0061C3 */  jal        atan2f
/* 22DB14 801E2924 C7AC00E0 */   lwc1      $f12, 0xE0($sp)
/* 22DB18 801E2928 10000005 */  b          .L801E2940_ovl17
/* 22DB1C 801E292C E7A00110 */   swc1      $f0, 0x110($sp)
.L801E2930_ovl12:
/* 22DB20 801E2930 C7AE00E4 */  lwc1       $f14, 0xE4($sp)
.L801E2934_ovl17:
/* 22DB24 801E2934 0C0061C3 */  jal        atan2f
.L801E2938_ovl16:
/* 22DB28 801E2938 46006307 */   neg.s     $f12, $f12
/* 22DB2C 801E293C E7A00110 */  swc1       $f0, 0x110($sp)
.L801E2940_ovl17:
/* 22DB30 801E2940 44805000 */  mtc1       $zero, $f10
/* 22DB34 801E2944 10000008 */  b          .L801E2968_ovl17
glabel func_801E2948_ovl16
/* 22DB38 801E2948 E7AA0118 */   swc1      $f10, 0x118($sp)
.L801E294C_ovl17:
/* 22DB3C 801E294C 0C0061C3 */  jal        atan2f
/* 22DB40 801E2950 C7AE00F8 */   lwc1      $f14, 0xF8($sp)
.L801E2954_ovl16:
/* 22DB44 801E2954 C7AC00D4 */  lwc1       $f12, 0xD4($sp)
/* 22DB48 801E2958 C7AE00D0 */  lwc1       $f14, 0xD0($sp)
.L801E295C_ovl12:
/* 22DB4C 801E295C 0C0061C3 */  jal        atan2f
glabel func_801E2960_ovl16
/* 22DB50 801E2960 E7A00110 */   swc1      $f0, 0x110($sp)
/* 22DB54 801E2964 E7A00118 */  swc1       $f0, 0x118($sp)
.L801E2968_ovl17:
/* 22DB58 801E2968 0C029166 */  jal        func_800A4598
.L801E296C_ovl15:
/* 22DB5C 801E296C 27A40110 */   addiu     $a0, $sp, 0x110
glabel func_801E2970_ovl14
/* 22DB60 801E2970 3C028005 */  lui        $v0, %hi(D_8004A7C4)
.L801E2974_ovl12:
/* 22DB64 801E2974 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 22DB68 801E2978 C7A40110 */  lwc1       $f4, 0x110($sp)
glabel func_801E297C_ovl12
/* 22DB6C 801E297C 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 22DB70 801E2980 8C580000 */  lw         $t8, 0x0($v0)
.L801E2984_ovl14:
/* 22DB74 801E2984 C7A60114 */  lwc1       $f6, 0x114($sp)
/* 22DB78 801E2988 C7A80118 */  lwc1       $f8, 0x118($sp)
/* 22DB7C 801E298C 0018C880 */  sll        $t9, $t8, 2
/* 22DB80 801E2990 00390821 */  addu       $at, $at, $t9
.L801E2994_ovl15:
/* 22DB84 801E2994 E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
/* 22DB88 801E2998 8C480000 */  lw         $t0, 0x0($v0)
/* 22DB8C 801E299C 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 22DB90 801E29A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 22DB94 801E29A4 00084880 */  sll        $t1, $t0, 2
.L801E29A8_ovl15:
/* 22DB98 801E29A8 00290821 */  addu       $at, $at, $t1
/* 22DB9C 801E29AC E426A8A0 */  swc1       $f6, %lo(D_800EA8A0)($at)
.L801E29B0_ovl14:
/* 22DBA0 801E29B0 8C4A0000 */  lw         $t2, 0x0($v0)
/* 22DBA4 801E29B4 3C01800F */  lui        $at, %hi(D_800EAA60)
glabel func_801E29B8_ovl9
/* 22DBA8 801E29B8 000A5880 */  sll        $t3, $t2, 2
.L801E29BC_ovl12:
/* 22DBAC 801E29BC 002B0821 */  addu       $at, $at, $t3
/* 22DBB0 801E29C0 E428AA60 */  swc1       $f8, %lo(D_800EAA60)($at)
.L801E29C4_ovl14:
/* 22DBB4 801E29C4 8C430000 */  lw         $v1, 0x0($v0)
/* 22DBB8 801E29C8 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 22DBBC 801E29CC 00031880 */  sll        $v1, $v1, 2
glabel func_801E29D0_ovl14
/* 22DBC0 801E29D0 00230821 */  addu       $at, $at, $v1
.L801E29D4_ovl10:
/* 22DBC4 801E29D4 C42AA6E0 */  lwc1       $f10, %lo(D_800EA6E0)($at)
.L801E29D8_ovl12:
/* 22DBC8 801E29D8 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 22DBCC 801E29DC 00230821 */  addu       $at, $at, $v1
glabel func_801E29E0_ovl13
/* 22DBD0 801E29E0 E42A4010 */  swc1       $f10, %lo(gEntitiesAngleXArray)($at)
.L801E29E4_ovl15:
/* 22DBD4 801E29E4 8C430000 */  lw         $v1, 0x0($v0)
.L801E29E8_ovl12:
/* 22DBD8 801E29E8 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 22DBDC 801E29EC 00031880 */  sll        $v1, $v1, 2
/* 22DBE0 801E29F0 00230821 */  addu       $at, $at, $v1
/* 22DBE4 801E29F4 C424A8A0 */  lwc1       $f4, %lo(D_800EA8A0)($at)
/* 22DBE8 801E29F8 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 22DBEC 801E29FC 00230821 */  addu       $at, $at, $v1
.L801E2A00_ovl12:
/* 22DBF0 801E2A00 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
/* 22DBF4 801E2A04 8C430000 */  lw         $v1, 0x0($v0)
glabel func_801E2A08_ovl12
/* 22DBF8 801E2A08 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 22DBFC 801E2A0C 00031880 */  sll        $v1, $v1, 2
/* 22DC00 801E2A10 00230821 */  addu       $at, $at, $v1
/* 22DC04 801E2A14 C426AA60 */  lwc1       $f6, %lo(D_800EAA60)($at)
.L801E2A18_ovl15:
/* 22DC08 801E2A18 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
.L801E2A1C_ovl10:
/* 22DC0C 801E2A1C 00230821 */  addu       $at, $at, $v1
/* 22DC10 801E2A20 27BD0120 */  addiu      $sp, $sp, 0x120
/* 22DC14 801E2A24 03E00008 */  jr         $ra
glabel func_801E2A28_ovl16
/* 22DC18 801E2A28 E4264390 */   swc1      $f6, %lo(gEntitiesAngleZArray)($at)
