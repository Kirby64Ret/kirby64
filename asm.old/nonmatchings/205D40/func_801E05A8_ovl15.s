glabel func_801E05A8_ovl15
/* 20B108 801E05A8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 20B10C 801E05AC AFB10020 */  sw         $s1, 0x20($sp)
/* 20B110 801E05B0 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 20B114 801E05B4 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 20B118 801E05B8 AFB50030 */  sw         $s5, 0x30($sp)
/* 20B11C 801E05BC 8E250000 */  lw         $a1, 0x0($s1)
/* 20B120 801E05C0 3C15800D */  lui        $s5, %hi(D_800D7098)
/* 20B124 801E05C4 26B57098 */  addiu      $s5, $s5, %lo(D_800D7098)
/* 20B128 801E05C8 AFBF0034 */  sw         $ra, 0x34($sp)
.L801E05CC_ovl13:
/* 20B12C 801E05CC AFB4002C */  sw         $s4, 0x2C($sp)
/* 20B130 801E05D0 AFB30028 */  sw         $s3, 0x28($sp)
/* 20B134 801E05D4 AFB20024 */  sw         $s2, 0x24($sp)
/* 20B138 801E05D8 AFB0001C */  sw         $s0, 0x1C($sp)
/* 20B13C 801E05DC F7B40010 */  sdc1       $f20, 0x10($sp)
/* 20B140 801E05E0 AFA40040 */  sw         $a0, 0x40($sp)
.L801E05E4_ovl13:
/* 20B144 801E05E4 AEA00014 */  sw         $zero, 0x14($s5)
glabel func_801E05E8_ovl12
/* 20B148 801E05E8 8CAF0000 */  lw         $t7, 0x0($a1)
/* 20B14C 801E05EC 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 20B150 801E05F0 240E000A */  addiu      $t6, $zero, 0xA
/* 20B154 801E05F4 000FC080 */  sll        $t8, $t7, 2
/* 20B158 801E05F8 00380821 */  addu       $at, $at, $t8
/* 20B15C 801E05FC AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
.L801E0600_ovl13:
/* 20B160 801E0600 8CA20000 */  lw         $v0, 0x0($a1)
/* 20B164 801E0604 3C12800E */  lui        $s2, %hi(gEntitiesNextPosXArray)
/* 20B168 801E0608 265225D0 */  addiu      $s2, $s2, %lo(gEntitiesNextPosXArray)
/* 20B16C 801E060C 00021080 */  sll        $v0, $v0, 2
glabel func_801E0610_ovl14
/* 20B170 801E0610 0242C821 */  addu       $t9, $s2, $v0
/* 20B174 801E0614 C7240000 */  lwc1       $f4, 0x0($t9)
glabel func_801E0618_ovl14
/* 20B178 801E0618 3C14800F */  lui        $s4, %hi(D_800EAC20)
.L801E061C_ovl16:
/* 20B17C 801E061C 2694AC20 */  addiu      $s4, $s4, %lo(D_800EAC20)
/* 20B180 801E0620 02824021 */  addu       $t0, $s4, $v0
/* 20B184 801E0624 E5040000 */  swc1       $f4, 0x0($t0)
glabel func_801E0628_ovl16
/* 20B188 801E0628 AEA00018 */  sw         $zero, 0x18($s5)
/* 20B18C 801E062C 8CA90000 */  lw         $t1, 0x0($a1)
/* 20B190 801E0630 3C018013 */  lui        $at, %hi(D_80129210 + 0x4)
/* 20B194 801E0634 C4269214 */  lwc1       $f6, %lo(D_80129210 + 0x4)($at)
/* 20B198 801E0638 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 20B19C 801E063C 00095080 */  sll        $t2, $t1, 2
/* 20B1A0 801E0640 002A0821 */  addu       $at, $at, $t2
/* 20B1A4 801E0644 E426AA60 */  swc1       $f6, %lo(D_800EAA60)($at)
/* 20B1A8 801E0648 8CAB0000 */  lw         $t3, 0x0($a1)
/* 20B1AC 801E064C 4480A000 */  mtc1       $zero, $f20
.L801E0650_ovl17:
/* 20B1B0 801E0650 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 20B1B4 801E0654 000B6080 */  sll        $t4, $t3, 2
/* 20B1B8 801E0658 002C0821 */  addu       $at, $at, $t4
.L801E065C_ovl13:
/* 20B1BC 801E065C E434A8A0 */  swc1       $f20, %lo(D_800EA8A0)($at)
/* 20B1C0 801E0660 8CAF0000 */  lw         $t7, 0x0($a1)
/* 20B1C4 801E0664 3C01800F */  lui        $at, %hi(D_800EA360)
.L801E0668_ovl12:
/* 20B1C8 801E0668 240D0001 */  addiu      $t5, $zero, 0x1
/* 20B1CC 801E066C 000F7080 */  sll        $t6, $t7, 2
/* 20B1D0 801E0670 002E0821 */  addu       $at, $at, $t6
.L801E0674_ovl13:
/* 20B1D4 801E0674 AC2DA360 */  sw         $t5, %lo(D_800EA360)($at)
/* 20B1D8 801E0678 8CB80000 */  lw         $t8, 0x0($a1)
/* 20B1DC 801E067C 3C13800E */  lui        $s3, %hi(D_800E3590)
/* 20B1E0 801E0680 3C01801E */  lui        $at, %hi(D_801E687C_ovl15)
/* 20B1E4 801E0684 C428687C */  lwc1       $f8, %lo(D_801E687C_ovl15)($at)
.L801E0688_ovl10:
/* 20B1E8 801E0688 26733590 */  addiu      $s3, $s3, %lo(D_800E3590)
.L801E068C_ovl17:
/* 20B1EC 801E068C 0018C880 */  sll        $t9, $t8, 2
.L801E0690_ovl16:
/* 20B1F0 801E0690 02794021 */  addu       $t0, $s3, $t9
.L801E0694_ovl13:
/* 20B1F4 801E0694 24040014 */  addiu      $a0, $zero, 0x14
/* 20B1F8 801E0698 0C002DAF */  jal        finish_current_thread
glabel func_801E069C_ovl17
/* 20B1FC 801E069C E5080000 */   swc1      $f8, 0x0($t0)
/* 20B200 801E06A0 8E250000 */  lw         $a1, 0x0($s1)
/* 20B204 801E06A4 3C01800E */  lui        $at, %hi(D_800E3050)
/* 20B208 801E06A8 2404019C */  addiu      $a0, $zero, 0x19C
glabel func_801E06AC_ovl16
/* 20B20C 801E06AC 8CA90000 */  lw         $t1, 0x0($a1)
/* 20B210 801E06B0 00095080 */  sll        $t2, $t1, 2
.L801E06B4_ovl10:
/* 20B214 801E06B4 026A5821 */  addu       $t3, $s3, $t2
.L801E06B8_ovl12:
/* 20B218 801E06B8 E5740000 */  swc1       $f20, 0x0($t3)
/* 20B21C 801E06BC 8CA20000 */  lw         $v0, 0x0($a1)
glabel func_801E06C0_ovl9
/* 20B220 801E06C0 00021080 */  sll        $v0, $v0, 2
/* 20B224 801E06C4 02626021 */  addu       $t4, $s3, $v0
/* 20B228 801E06C8 C58A0000 */  lwc1       $f10, 0x0($t4)
/* 20B22C 801E06CC 00220821 */  addu       $at, $at, $v0
/* 20B230 801E06D0 E42A3050 */  swc1       $f10, %lo(D_800E3050)($at)
/* 20B234 801E06D4 8CAF0000 */  lw         $t7, 0x0($a1)
/* 20B238 801E06D8 3C01801E */  lui        $at, %hi(D_801E6880_ovl15)
/* 20B23C 801E06DC C4306880 */  lwc1       $f16, %lo(D_801E6880_ovl15)($at)
/* 20B240 801E06E0 3C01800E */  lui        $at, %hi(D_800E3AD0)
.L801E06E4_ovl10:
/* 20B244 801E06E4 000F6880 */  sll        $t5, $t7, 2
.L801E06E8_ovl17:
/* 20B248 801E06E8 002D0821 */  addu       $at, $at, $t5
/* 20B24C 801E06EC E4303AD0 */  swc1       $f16, %lo(D_800E3AD0)($at)
/* 20B250 801E06F0 8CAE0000 */  lw         $t6, 0x0($a1)
/* 20B254 801E06F4 3C01800F */  lui        $at, %hi(D_800EA360)
/* 20B258 801E06F8 000EC080 */  sll        $t8, $t6, 2
.L801E06FC_ovl17:
/* 20B25C 801E06FC 00380821 */  addu       $at, $at, $t8
/* 20B260 801E0700 AC20A360 */  sw         $zero, %lo(D_800EA360)($at)
glabel func_801E0704_ovl17
/* 20B264 801E0704 8CB90000 */  lw         $t9, 0x0($a1)
.L801E0708_ovl16:
/* 20B268 801E0708 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
.L801E070C_ovl10:
/* 20B26C 801E070C 44819000 */  mtc1       $at, $f18
.L801E0710_ovl10:
/* 20B270 801E0710 3C01800F */  lui        $at, %hi(D_800EA8A0)
glabel func_801E0714_ovl12
/* 20B274 801E0714 00194080 */  sll        $t0, $t9, 2
/* 20B278 801E0718 00280821 */  addu       $at, $at, $t0
/* 20B27C 801E071C E432A8A0 */  swc1       $f18, %lo(D_800EA8A0)($at)
/* 20B280 801E0720 8CA90000 */  lw         $t1, 0x0($a1)
glabel func_801E0724_ovl16
/* 20B284 801E0724 3C01800F */  lui        $at, %hi(D_800E8920)
/* 20B288 801E0728 00095080 */  sll        $t2, $t1, 2
/* 20B28C 801E072C 002A0821 */  addu       $at, $at, $t2
/* 20B290 801E0730 0C029D9E */  jal        play_sound
.L801E0734_ovl17:
/* 20B294 801E0734 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 20B298 801E0738 0C029D9E */  jal        play_sound
glabel func_801E073C_ovl17
/* 20B29C 801E073C 240401A1 */   addiu     $a0, $zero, 0x1A1
/* 20B2A0 801E0740 3C040001 */  lui        $a0, (0x103E1 >> 16)
/* 20B2A4 801E0744 0C02A806 */  jal        func_800AA018
/* 20B2A8 801E0748 348403E1 */   ori       $a0, $a0, (0x103E1 & 0xFFFF)
/* 20B2AC 801E074C 8E2B0000 */  lw         $t3, 0x0($s1)
/* 20B2B0 801E0750 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 20B2B4 801E0754 44812000 */  mtc1       $at, $f4
/* 20B2B8 801E0758 8D6C0000 */  lw         $t4, 0x0($t3)
/* 20B2BC 801E075C 3C01800E */  lui        $at, %hi(D_800E3750)
/* 20B2C0 801E0760 24040019 */  addiu      $a0, $zero, 0x19
/* 20B2C4 801E0764 000C7880 */  sll        $t7, $t4, 2
.L801E0768_ovl9:
/* 20B2C8 801E0768 002F0821 */  addu       $at, $at, $t7
/* 20B2CC 801E076C 0C002DAF */  jal        finish_current_thread
/* 20B2D0 801E0770 E4243750 */   swc1      $f4, %lo(D_800E3750)($at)
/* 20B2D4 801E0774 8E2D0000 */  lw         $t5, 0x0($s1)
/* 20B2D8 801E0778 3C01C000 */  lui        $at, (0xC0000000 >> 16)
.L801E077C_ovl9:
/* 20B2DC 801E077C 44813000 */  mtc1       $at, $f6
.L801E0780_ovl17:
/* 20B2E0 801E0780 8DAE0000 */  lw         $t6, 0x0($t5)
/* 20B2E4 801E0784 3C01800E */  lui        $at, %hi(D_800E3750)
/* 20B2E8 801E0788 24040019 */  addiu      $a0, $zero, 0x19
glabel func_801E078C_ovl16
/* 20B2EC 801E078C 000EC080 */  sll        $t8, $t6, 2
/* 20B2F0 801E0790 00380821 */  addu       $at, $at, $t8
/* 20B2F4 801E0794 0C002DAF */  jal        finish_current_thread
.L801E0798_ovl17:
/* 20B2F8 801E0798 E4263750 */   swc1      $f6, %lo(D_800E3750)($at)
/* 20B2FC 801E079C 8E250000 */  lw         $a1, 0x0($s1)
.L801E07A0_ovl10:
/* 20B300 801E07A0 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 20B304 801E07A4 3C02800E */  lui        $v0, %hi(D_800E5F90)
glabel func_801E07A8_ovl16
/* 20B308 801E07A8 8CB90000 */  lw         $t9, 0x0($a1)
/* 20B30C 801E07AC 24425F90 */  addiu      $v0, $v0, %lo(D_800E5F90)
/* 20B310 801E07B0 3C03800E */  lui        $v1, %hi(D_800E6BD0)
/* 20B314 801E07B4 00194080 */  sll        $t0, $t9, 2
/* 20B318 801E07B8 00280821 */  addu       $at, $at, $t0
/* 20B31C 801E07BC E434A8A0 */  swc1       $f20, %lo(D_800EA8A0)($at)
/* 20B320 801E07C0 8CAA0000 */  lw         $t2, 0x0($a1)
/* 20B324 801E07C4 8C490000 */  lw         $t1, 0x0($v0)
/* 20B328 801E07C8 24636BD0 */  addiu      $v1, $v1, %lo(D_800E6BD0)
.L801E07CC_ovl9:
/* 20B32C 801E07CC 000A5880 */  sll        $t3, $t2, 2
.L801E07D0_ovl9:
/* 20B330 801E07D0 004B6021 */  addu       $t4, $v0, $t3
/* 20B334 801E07D4 AD890000 */  sw         $t1, 0x0($t4)
.L801E07D8_ovl10:
/* 20B338 801E07D8 8CAF0000 */  lw         $t7, 0x0($a1)
glabel func_801E07DC_ovl10
/* 20B33C 801E07DC C4680000 */  lwc1       $f8, 0x0($v1)
.L801E07E0_ovl11:
/* 20B340 801E07E0 3C06800E */  lui        $a2, %hi(gEntitiesNextPosZArray)
/* 20B344 801E07E4 000F6880 */  sll        $t5, $t7, 2
glabel func_801E07E8_ovl14
/* 20B348 801E07E8 006D7021 */  addu       $t6, $v1, $t5
/* 20B34C 801E07EC E5C80000 */  swc1       $f8, 0x0($t6)
glabel func_801E07F0_ovl14
/* 20B350 801E07F0 8CB80000 */  lw         $t8, 0x0($a1)
/* 20B354 801E07F4 C64A0000 */  lwc1       $f10, 0x0($s2)
/* 20B358 801E07F8 24C62950 */  addiu      $a2, $a2, %lo(gEntitiesNextPosZArray)
/* 20B35C 801E07FC 0018C880 */  sll        $t9, $t8, 2
/* 20B360 801E0800 02594021 */  addu       $t0, $s2, $t9
.L801E0804_ovl16:
/* 20B364 801E0804 E50A0000 */  swc1       $f10, 0x0($t0)
/* 20B368 801E0808 8CAA0000 */  lw         $t2, 0x0($a1)
.L801E080C_ovl11:
/* 20B36C 801E080C C4D00000 */  lwc1       $f16, 0x0($a2)
.L801E0810_ovl11:
/* 20B370 801E0810 3C040001 */  lui        $a0, (0x103D3 >> 16)
.L801E0814_ovl11:
/* 20B374 801E0814 000A5880 */  sll        $t3, $t2, 2
/* 20B378 801E0818 00CB4821 */  addu       $t1, $a2, $t3
.L801E081C_ovl17:
/* 20B37C 801E081C 348403D3 */  ori        $a0, $a0, (0x103D3 & 0xFFFF)
glabel func_801E0820_ovl16
/* 20B380 801E0820 0C02A806 */  jal        func_800AA018
glabel func_801E0824_ovl12
/* 20B384 801E0824 E5300000 */   swc1      $f16, 0x0($t1)
.L801E0828_ovl10:
/* 20B388 801E0828 8E250000 */  lw         $a1, 0x0($s1)
.L801E082C_ovl10:
/* 20B38C 801E082C 3C01C100 */  lui        $at, (0xC1000000 >> 16)
/* 20B390 801E0830 44819000 */  mtc1       $at, $f18
/* 20B394 801E0834 8CAC0000 */  lw         $t4, 0x0($a1)
/* 20B398 801E0838 3C01800E */  lui        $at, %hi(D_800E3210)
/* 20B39C 801E083C 3C10800E */  lui        $s0, %hi(gEntitiesNextPosYArray)
/* 20B3A0 801E0840 000C7880 */  sll        $t7, $t4, 2
/* 20B3A4 801E0844 002F0821 */  addu       $at, $at, $t7
/* 20B3A8 801E0848 E4323210 */  swc1       $f18, %lo(D_800E3210)($at)
/* 20B3AC 801E084C 8CAD0000 */  lw         $t5, 0x0($a1)
/* 20B3B0 801E0850 3C01800E */  lui        $at, %hi(D_800E3750)
/* 20B3B4 801E0854 26102790 */  addiu      $s0, $s0, %lo(gEntitiesNextPosYArray)
/* 20B3B8 801E0858 000D7080 */  sll        $t6, $t5, 2
/* 20B3BC 801E085C 002E0821 */  addu       $at, $at, $t6
/* 20B3C0 801E0860 E4343750 */  swc1       $f20, %lo(D_800E3750)($at)
/* 20B3C4 801E0864 8CB80000 */  lw         $t8, 0x0($a1)
/* 20B3C8 801E0868 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 20B3CC 801E086C 44812000 */  mtc1       $at, $f4
/* 20B3D0 801E0870 3C01800E */  lui        $at, %hi(D_800E3AD0)
.L801E0874_ovl9:
/* 20B3D4 801E0874 0018C880 */  sll        $t9, $t8, 2
/* 20B3D8 801E0878 00390821 */  addu       $at, $at, $t9
/* 20B3DC 801E087C E4243AD0 */  swc1       $f4, %lo(D_800E3AD0)($at)
/* 20B3E0 801E0880 8CA20000 */  lw         $v0, 0x0($a1)
/* 20B3E4 801E0884 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* 20B3E8 801E0888 44813000 */  mtc1       $at, $f6
/* 20B3EC 801E088C 00021080 */  sll        $v0, $v0, 2
/* 20B3F0 801E0890 02024021 */  addu       $t0, $s0, $v0
.L801E0894_ovl12:
/* 20B3F4 801E0894 C5080000 */  lwc1       $f8, 0x0($t0)
/* 20B3F8 801E0898 4608303C */  c.lt.s     $f6, $f8
/* 20B3FC 801E089C 00000000 */  nop
/* 20B400 801E08A0 4502002E */  bc1fl      .L801E095C_ovl15
/* 20B404 801E08A4 0262C021 */   addu      $t8, $s3, $v0
.L801E08A8_ovl11:
/* 20B408 801E08A8 8EAA0018 */  lw         $t2, 0x18($s5)
.L801E08AC_ovl15:
/* 20B40C 801E08AC 5540000A */  bnel       $t2, $zero, .L801E08D8_ovl17
/* 20B410 801E08B0 8E290000 */   lw        $t1, 0x0($s1)
.L801E08B4_ovl12:
/* 20B414 801E08B4 0C066E46 */  jal        func_8019B918_ovl7
/* 20B418 801E08B8 00000000 */   nop
.L801E08BC_ovl9:
/* 20B41C 801E08BC 54400006 */  bnel       $v0, $zero, .L801E08D8_ovl17
/* 20B420 801E08C0 8E290000 */   lw        $t1, 0x0($s1)
/* 20B424 801E08C4 0C029D9E */  jal        play_sound
/* 20B428 801E08C8 2404019F */   addiu     $a0, $zero, 0x19F
/* 20B42C 801E08CC 240B0001 */  addiu      $t3, $zero, 0x1
/* 20B430 801E08D0 AEAB0018 */  sw         $t3, 0x18($s5)
.L801E08D4_ovl16:
/* 20B434 801E08D4 8E290000 */  lw         $t1, 0x0($s1)
.L801E08D8_ovl17:
/* 20B438 801E08D8 C64A0000 */  lwc1       $f10, 0x0($s2)
.L801E08DC_ovl9:
/* 20B43C 801E08DC 3C01BE80 */  lui        $at, (0xBE800000 >> 16)
/* 20B440 801E08E0 8D220000 */  lw         $v0, 0x0($t1)
/* 20B444 801E08E4 00021080 */  sll        $v0, $v0, 2
/* 20B448 801E08E8 02426021 */  addu       $t4, $s2, $v0
.L801E08EC_ovl11:
/* 20B44C 801E08EC C5900000 */  lwc1       $f16, 0x0($t4)
/* 20B450 801E08F0 46105001 */  sub.s      $f0, $f10, $f16
.L801E08F4_ovl9:
/* 20B454 801E08F4 4600A03C */  c.lt.s     $f20, $f0
/* 20B458 801E08F8 00000000 */  nop
/* 20B45C 801E08FC 45020007 */  bc1fl      .L801E091C_ovl15
/* 20B460 801E0900 44812000 */   mtc1      $at, $f4
/* 20B464 801E0904 3C013E80 */  lui        $at, (0x3E800000 >> 16)
glabel func_801E0908_ovl9
/* 20B468 801E0908 44819000 */  mtc1       $at, $f18
/* 20B46C 801E090C 02627821 */  addu       $t7, $s3, $v0
/* 20B470 801E0910 10000004 */  b          .L801E0924_ovl15
/* 20B474 801E0914 E5F20000 */   swc1      $f18, 0x0($t7)
/* 20B478 801E0918 44812000 */  mtc1       $at, $f4
.L801E091C_ovl15:
/* 20B47C 801E091C 02626821 */  addu       $t5, $s3, $v0
.L801E0920_ovl17:
/* 20B480 801E0920 E5A40000 */  swc1       $f4, 0x0($t5)
.L801E0924_ovl15:
/* 20B484 801E0924 0C002DAF */  jal        finish_current_thread
glabel func_801E0928_ovl13
/* 20B488 801E0928 24040001 */   addiu     $a0, $zero, 0x1
.L801E092C_ovl16:
/* 20B48C 801E092C 8E250000 */  lw         $a1, 0x0($s1)
/* 20B490 801E0930 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* 20B494 801E0934 44813000 */  mtc1       $at, $f6
glabel func_801E0938_ovl12
/* 20B498 801E0938 8CA20000 */  lw         $v0, 0x0($a1)
.L801E093C_ovl16:
/* 20B49C 801E093C 00021080 */  sll        $v0, $v0, 2
.L801E0940_ovl17:
/* 20B4A0 801E0940 02027021 */  addu       $t6, $s0, $v0
/* 20B4A4 801E0944 C5C80000 */  lwc1       $f8, 0x0($t6)
/* 20B4A8 801E0948 4608303C */  c.lt.s     $f6, $f8
/* 20B4AC 801E094C 00000000 */  nop
.L801E0950_ovl11:
/* 20B4B0 801E0950 4503FFD6 */  bc1tl      .L801E08AC_ovl15
/* 20B4B4 801E0954 8EAA0018 */   lw        $t2, 0x18($s5)
glabel func_801E0958_ovl14
/* 20B4B8 801E0958 0262C021 */  addu       $t8, $s3, $v0
.L801E095C_ovl15:
/* 20B4BC 801E095C E7140000 */  swc1       $f20, 0x0($t8)
/* 20B4C0 801E0960 8CA20000 */  lw         $v0, 0x0($a1)
/* 20B4C4 801E0964 3C03800E */  lui        $v1, %hi(D_800E3050)
/* 20B4C8 801E0968 24633050 */  addiu      $v1, $v1, %lo(D_800E3050)
/* 20B4CC 801E096C 00021080 */  sll        $v0, $v0, 2
/* 20B4D0 801E0970 0262C821 */  addu       $t9, $s3, $v0
/* 20B4D4 801E0974 C72A0000 */  lwc1       $f10, 0x0($t9)
/* 20B4D8 801E0978 00624021 */  addu       $t0, $v1, $v0
.L801E097C_ovl17:
/* 20B4DC 801E097C 3C01801E */  lui        $at, %hi(.L801E6884_ovl16)
/* 20B4E0 801E0980 E50A0000 */  swc1       $f10, 0x0($t0)
.L801E0984_ovl11:
/* 20B4E4 801E0984 8CAA0000 */  lw         $t2, 0x0($a1)
/* 20B4E8 801E0988 C4306884 */  lwc1       $f16, %lo(.L801E6884_ovl16)($at)
glabel func_801E098C_ovl14
/* 20B4EC 801E098C 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 20B4F0 801E0990 000A5880 */  sll        $t3, $t2, 2
/* 20B4F4 801E0994 002B0821 */  addu       $at, $at, $t3
.L801E0998_ovl16:
/* 20B4F8 801E0998 E4303AD0 */  swc1       $f16, %lo(D_800E3AD0)($at)
.L801E099C_ovl10:
/* 20B4FC 801E099C 8CA20000 */  lw         $v0, 0x0($a1)
/* 20B500 801E09A0 3C01801E */  lui        $at, %hi(D_801E6888_ovl15)
/* 20B504 801E09A4 C4246888 */  lwc1       $f4, %lo(D_801E6888_ovl15)($at)
/* 20B508 801E09A8 00021080 */  sll        $v0, $v0, 2
/* 20B50C 801E09AC 00624821 */  addu       $t1, $v1, $v0
/* 20B510 801E09B0 C5320000 */  lwc1       $f18, 0x0($t1)
/* 20B514 801E09B4 02626021 */  addu       $t4, $s3, $v0
/* 20B518 801E09B8 2404000A */  addiu      $a0, $zero, 0xA
.L801E09BC_ovl10:
/* 20B51C 801E09BC 46049182 */  mul.s      $f6, $f18, $f4
/* 20B520 801E09C0 0C002DAF */  jal        finish_current_thread
glabel func_801E09C4_ovl11
/* 20B524 801E09C4 E5860000 */   swc1      $f6, 0x0($t4)
.L801E09C8_ovl17:
/* 20B528 801E09C8 8E250000 */  lw         $a1, 0x0($s1)
/* 20B52C 801E09CC 3C01800E */  lui        $at, %hi(D_800E3050)
/* 20B530 801E09D0 8CAF0000 */  lw         $t7, 0x0($a1)
/* 20B534 801E09D4 000F6880 */  sll        $t5, $t7, 2
glabel func_801E09D8_ovl14
/* 20B538 801E09D8 026D7021 */  addu       $t6, $s3, $t5
/* 20B53C 801E09DC E5D40000 */  swc1       $f20, 0x0($t6)
.L801E09E0_ovl12:
/* 20B540 801E09E0 8CA20000 */  lw         $v0, 0x0($a1)
.L801E09E4_ovl16:
/* 20B544 801E09E4 00021080 */  sll        $v0, $v0, 2
/* 20B548 801E09E8 0262C021 */  addu       $t8, $s3, $v0
/* 20B54C 801E09EC C7080000 */  lwc1       $f8, 0x0($t8)
.L801E09F0_ovl9:
/* 20B550 801E09F0 00220821 */  addu       $at, $at, $v0
.L801E09F4_ovl16:
/* 20B554 801E09F4 E4283050 */  swc1       $f8, %lo(D_800E3050)($at)
/* 20B558 801E09F8 8CB90000 */  lw         $t9, 0x0($a1)
/* 20B55C 801E09FC 3C01801E */  lui        $at, %hi(D_801E688C_ovl15)
/* 20B560 801E0A00 C42A688C */  lwc1       $f10, %lo(D_801E688C_ovl15)($at)
.L801E0A04_ovl17:
/* 20B564 801E0A04 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 20B568 801E0A08 00194080 */  sll        $t0, $t9, 2
.L801E0A0C_ovl17:
/* 20B56C 801E0A0C 00280821 */  addu       $at, $at, $t0
.L801E0A10_ovl10:
/* 20B570 801E0A10 E42A3AD0 */  swc1       $f10, %lo(D_800E3AD0)($at)
/* 20B574 801E0A14 8CAA0000 */  lw         $t2, 0x0($a1)
.L801E0A18_ovl12:
/* 20B578 801E0A18 000A5880 */  sll        $t3, $t2, 2
/* 20B57C 801E0A1C 020B1821 */  addu       $v1, $s0, $t3
/* 20B580 801E0A20 C4700000 */  lwc1       $f16, 0x0($v1)
/* 20B584 801E0A24 4610A03C */  c.lt.s     $f20, $f16
/* 20B588 801E0A28 00000000 */  nop
.L801E0A2C_ovl12:
/* 20B58C 801E0A2C 4500000C */  bc1f       .L801E0A60_ovl15
/* 20B590 801E0A30 00000000 */   nop
.L801E0A34_ovl15:
/* 20B594 801E0A34 0C002DAF */  jal        finish_current_thread
/* 20B598 801E0A38 24040001 */   addiu     $a0, $zero, 0x1
/* 20B59C 801E0A3C 8E290000 */  lw         $t1, 0x0($s1)
.L801E0A40_ovl12:
/* 20B5A0 801E0A40 8D2C0000 */  lw         $t4, 0x0($t1)
/* 20B5A4 801E0A44 000C7880 */  sll        $t7, $t4, 2
/* 20B5A8 801E0A48 020F1821 */  addu       $v1, $s0, $t7
/* 20B5AC 801E0A4C C4720000 */  lwc1       $f18, 0x0($v1)
glabel func_801E0A50_ovl9
/* 20B5B0 801E0A50 4612A03C */  c.lt.s     $f20, $f18
/* 20B5B4 801E0A54 00000000 */  nop
.L801E0A58_ovl17:
/* 20B5B8 801E0A58 4501FFF6 */  bc1t       .L801E0A34_ovl15
/* 20B5BC 801E0A5C 00000000 */   nop
.L801E0A60_ovl15:
/* 20B5C0 801E0A60 0C02CCFD */  jal        func_800B33F4
.L801E0A64_ovl17:
/* 20B5C4 801E0A64 E4740000 */   swc1      $f20, 0x0($v1)
/* 20B5C8 801E0A68 0C03EE45 */  jal        func_800FB914
/* 20B5CC 801E0A6C 24040003 */   addiu     $a0, $zero, 0x3
glabel func_801E0A70_ovl12
/* 20B5D0 801E0A70 0C029D9E */  jal        play_sound
glabel func_801E0A74_ovl17
/* 20B5D4 801E0A74 2404019D */   addiu     $a0, $zero, 0x19D
.L801E0A78_ovl13:
/* 20B5D8 801E0A78 0C02BC9F */  jal        func_800AF27C
.L801E0A7C_ovl10:
/* 20B5DC 801E0A7C 00000000 */   nop
/* 20B5E0 801E0A80 8E2D0000 */  lw         $t5, 0x0($s1)
/* 20B5E4 801E0A84 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 20B5E8 801E0A88 44812000 */  mtc1       $at, $f4
/* 20B5EC 801E0A8C 8DAE0000 */  lw         $t6, 0x0($t5)
glabel func_801E0A90_ovl13
/* 20B5F0 801E0A90 3C01800F */  lui        $at, %hi(D_800EA8A0)
.L801E0A94_ovl10:
/* 20B5F4 801E0A94 2404019C */  addiu      $a0, $zero, 0x19C
/* 20B5F8 801E0A98 000EC080 */  sll        $t8, $t6, 2
/* 20B5FC 801E0A9C 00380821 */  addu       $at, $at, $t8
glabel func_801E0AA0_ovl9
/* 20B600 801E0AA0 0C029D9E */  jal        play_sound
.L801E0AA4_ovl14:
/* 20B604 801E0AA4 E424A8A0 */   swc1      $f4, %lo(D_800EA8A0)($at)
/* 20B608 801E0AA8 3C040001 */  lui        $a0, (0x103DF >> 16)
/* 20B60C 801E0AAC 0C02A855 */  jal        func_800AA154
/* 20B610 801E0AB0 348403DF */   ori       $a0, $a0, (0x103DF & 0xFFFF)
/* 20B614 801E0AB4 8E250000 */  lw         $a1, 0x0($s1)
.L801E0AB8_ovl11:
/* 20B618 801E0AB8 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 20B61C 801E0ABC 3C040001 */  lui        $a0, (0x103D7 >> 16)
/* 20B620 801E0AC0 8CB90000 */  lw         $t9, 0x0($a1)
/* 20B624 801E0AC4 348403D7 */  ori        $a0, $a0, (0x103D7 & 0xFFFF)
/* 20B628 801E0AC8 00194080 */  sll        $t0, $t9, 2
/* 20B62C 801E0ACC 00280821 */  addu       $at, $at, $t0
/* 20B630 801E0AD0 E434A8A0 */  swc1       $f20, %lo(D_800EA8A0)($at)
.L801E0AD4_ovl12:
/* 20B634 801E0AD4 8CAA0000 */  lw         $t2, 0x0($a1)
/* 20B638 801E0AD8 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 20B63C 801E0ADC 000A5880 */  sll        $t3, $t2, 2
/* 20B640 801E0AE0 002B0821 */  addu       $at, $at, $t3
.L801E0AE4_ovl11:
/* 20B644 801E0AE4 C426AA60 */  lwc1       $f6, %lo(D_800EAA60)($at)
.L801E0AE8_ovl14:
/* 20B648 801E0AE8 3C018013 */  lui        $at, %hi(D_80129210 + 0x4)
.L801E0AEC_ovl16:
/* 20B64C 801E0AEC 0C02A806 */  jal        func_800AA018
/* 20B650 801E0AF0 E4269214 */   swc1      $f6, %lo(D_80129210 + 0x4)($at)
/* 20B654 801E0AF4 0C029D9E */  jal        play_sound
.L801E0AF8_ovl11:
/* 20B658 801E0AF8 24040194 */   addiu     $a0, $zero, 0x194
/* 20B65C 801E0AFC 8E250000 */  lw         $a1, 0x0($s1)
glabel D_801E0B00_ovl11
/* 20B660 801E0B00 44808000 */  mtc1       $zero, $f16
.L801E0B04_ovl14:
/* 20B664 801E0B04 3C0142DC */  lui        $at, (0x42DC0000 >> 16)
/* 20B668 801E0B08 8CA20000 */  lw         $v0, 0x0($a1)
/* 20B66C 801E0B0C 44819000 */  mtc1       $at, $f18
.L801E0B10_ovl16:
/* 20B670 801E0B10 2404000A */  addiu      $a0, $zero, 0xA
.L801E0B14_ovl11:
/* 20B674 801E0B14 00021080 */  sll        $v0, $v0, 2
glabel D_801E0B18_ovl11
/* 20B678 801E0B18 02824821 */  addu       $t1, $s4, $v0
.L801E0B1C_ovl14:
/* 20B67C 801E0B1C 02426021 */  addu       $t4, $s2, $v0
glabel D_801E0B20_ovl11
/* 20B680 801E0B20 C58A0000 */  lwc1       $f10, 0x0($t4)
glabel D_801E0B24_ovl11
/* 20B684 801E0B24 C5280000 */  lwc1       $f8, 0x0($t1)
/* 20B688 801E0B28 460A4001 */  sub.s      $f0, $f8, $f10
/* 20B68C 801E0B2C 4610003C */  c.lt.s     $f0, $f16
/* 20B690 801E0B30 00000000 */  nop
/* 20B694 801E0B34 45020004 */  bc1fl      .L801E0B48_ovl15
glabel func_801E0B38_ovl17
/* 20B698 801E0B38 46000306 */   mov.s     $f12, $f0
/* 20B69C 801E0B3C 10000002 */  b          .L801E0B48_ovl15
/* 20B6A0 801E0B40 46000307 */   neg.s     $f12, $f0
.L801E0B44_ovl12:
/* 20B6A4 801E0B44 46000306 */  mov.s      $f12, $f0
.L801E0B48_ovl15:
/* 20B6A8 801E0B48 460C903C */  c.lt.s     $f18, $f12
.L801E0B4C_ovl12:
/* 20B6AC 801E0B4C 00000000 */  nop
/* 20B6B0 801E0B50 45020083 */  bc1fl      .L801E0D60_ovl15
/* 20B6B4 801E0B54 4600A03C */   c.lt.s    $f20, $f0
glabel func_801E0B58_ovl12
/* 20B6B8 801E0B58 4600A03C */  c.lt.s     $f20, $f0
/* 20B6BC 801E0B5C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 20B6C0 801E0B60 45020007 */  bc1fl      .L801E0B80_ovl15
/* 20B6C4 801E0B64 44813000 */   mtc1      $at, $f6
/* 20B6C8 801E0B68 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 20B6CC 801E0B6C 44812000 */  mtc1       $at, $f4
glabel D_801E0B70_ovl11
/* 20B6D0 801E0B70 02627821 */  addu       $t7, $s3, $v0
/* 20B6D4 801E0B74 10000004 */  b          .L801E0B88_ovl15
/* 20B6D8 801E0B78 E5E40000 */   swc1      $f4, 0x0($t7)
.L801E0B7C_ovl17:
/* 20B6DC 801E0B7C 44813000 */  mtc1       $at, $f6
.L801E0B80_ovl15:
/* 20B6E0 801E0B80 02626821 */  addu       $t5, $s3, $v0
/* 20B6E4 801E0B84 E5A60000 */  swc1       $f6, 0x0($t5)
.L801E0B88_ovl15:
/* 20B6E8 801E0B88 0C002DAF */  jal        finish_current_thread
/* 20B6EC 801E0B8C E7A00038 */   swc1      $f0, 0x38($sp)
/* 20B6F0 801E0B90 C7A00038 */  lwc1       $f0, 0x38($sp)
glabel func_801E0B94_ovl11
/* 20B6F4 801E0B94 4600A03C */  c.lt.s     $f20, $f0
/* 20B6F8 801E0B98 00000000 */  nop
/* 20B6FC 801E0B9C 4502000B */  bc1fl      .L801E0BCC_ovl15
/* 20B700 801E0BA0 8E250000 */   lw        $a1, 0x0($s1)
/* 20B704 801E0BA4 8E250000 */  lw         $a1, 0x0($s1)
.L801E0BA8_ovl9:
/* 20B708 801E0BA8 3C014120 */  lui        $at, (0x41200000 >> 16)
.L801E0BAC_ovl17:
/* 20B70C 801E0BAC 44814000 */  mtc1       $at, $f8
glabel D_801E0BB0_ovl11
/* 20B710 801E0BB0 8CAE0000 */  lw         $t6, 0x0($a1)
/* 20B714 801E0BB4 3C01800E */  lui        $at, %hi(D_800E3050)
/* 20B718 801E0BB8 000EC080 */  sll        $t8, $t6, 2
/* 20B71C 801E0BBC 00380821 */  addu       $at, $at, $t8
/* 20B720 801E0BC0 10000009 */  b          .L801E0BE8_ovl15
glabel D_801E0BC4_ovl11
/* 20B724 801E0BC4 E4283050 */   swc1      $f8, %lo(D_800E3050)($at)
/* 20B728 801E0BC8 8E250000 */  lw         $a1, 0x0($s1)
.L801E0BCC_ovl15:
/* 20B72C 801E0BCC 3C01C120 */  lui        $at, (0xC1200000 >> 16)
.L801E0BD0_ovl14:
/* 20B730 801E0BD0 44815000 */  mtc1       $at, $f10
/* 20B734 801E0BD4 8CB90000 */  lw         $t9, 0x0($a1)
/* 20B738 801E0BD8 3C01800E */  lui        $at, %hi(D_800E3050)
glabel func_801E0BDC_ovl14
/* 20B73C 801E0BDC 00194080 */  sll        $t0, $t9, 2
glabel D_801E0BE0_ovl11
/* 20B740 801E0BE0 00280821 */  addu       $at, $at, $t0
/* 20B744 801E0BE4 E42A3050 */  swc1       $f10, %lo(D_800E3050)($at)
.L801E0BE8_ovl15:
/* 20B748 801E0BE8 8CAA0000 */  lw         $t2, 0x0($a1)
/* 20B74C 801E0BEC 44802000 */  mtc1       $zero, $f4
/* 20B750 801E0BF0 3C01425C */  lui        $at, (0x425C0000 >> 16)
.L801E0BF4_ovl12:
/* 20B754 801E0BF4 000A5880 */  sll        $t3, $t2, 2
glabel func_801E0BF8_ovl9
/* 20B758 801E0BF8 026B4821 */  addu       $t1, $s3, $t3
/* 20B75C 801E0BFC E5340000 */  swc1       $f20, 0x0($t1)
/* 20B760 801E0C00 8CA20000 */  lw         $v0, 0x0($a1)
/* 20B764 801E0C04 44813000 */  mtc1       $at, $f6
/* 20B768 801E0C08 00021080 */  sll        $v0, $v0, 2
.L801E0C0C_ovl16:
/* 20B76C 801E0C0C 02826021 */  addu       $t4, $s4, $v0
/* 20B770 801E0C10 02427821 */  addu       $t7, $s2, $v0
/* 20B774 801E0C14 C5F20000 */  lwc1       $f18, 0x0($t7)
/* 20B778 801E0C18 C5900000 */  lwc1       $f16, 0x0($t4)
/* 20B77C 801E0C1C 46128001 */  sub.s      $f0, $f16, $f18
.L801E0C20_ovl11:
/* 20B780 801E0C20 4604003C */  c.lt.s     $f0, $f4
glabel D_801E0C24_ovl11
/* 20B784 801E0C24 00000000 */  nop
glabel D_801E0C28_ovl11
/* 20B788 801E0C28 45020004 */  bc1fl      .L801E0C3C_ovl15
.L801E0C2C_ovl11:
/* 20B78C 801E0C2C 46000306 */   mov.s     $f12, $f0
.L801E0C30_ovl16:
/* 20B790 801E0C30 10000002 */  b          .L801E0C3C_ovl15
.L801E0C34_ovl11:
/* 20B794 801E0C34 46000307 */   neg.s     $f12, $f0
/* 20B798 801E0C38 46000306 */  mov.s      $f12, $f0
.L801E0C3C_ovl15:
/* 20B79C 801E0C3C 460C303C */  c.lt.s     $f6, $f12
glabel D_801E0C40_ovl11
/* 20B7A0 801E0C40 00000000 */  nop
glabel D_801E0C44_ovl11
/* 20B7A4 801E0C44 4502001A */  bc1fl      .L801E0CB0_ovl15
glabel D_801E0C48_ovl11
/* 20B7A8 801E0C48 4600A03C */   c.lt.s    $f20, $f0
.L801E0C4C_ovl15:
/* 20B7AC 801E0C4C 0C002DAF */  jal        finish_current_thread
glabel D_801E0C50_ovl11
/* 20B7B0 801E0C50 24040001 */   addiu     $a0, $zero, 0x1
glabel func_801E0C54_ovl12
/* 20B7B4 801E0C54 8E2D0000 */  lw         $t5, 0x0($s1)
/* 20B7B8 801E0C58 44808000 */  mtc1       $zero, $f16
/* 20B7BC 801E0C5C 3C01425C */  lui        $at, (0x425C0000 >> 16)
glabel D_801E0C60_ovl11
/* 20B7C0 801E0C60 8DA20000 */  lw         $v0, 0x0($t5)
/* 20B7C4 801E0C64 44819000 */  mtc1       $at, $f18
/* 20B7C8 801E0C68 00021080 */  sll        $v0, $v0, 2
/* 20B7CC 801E0C6C 02827021 */  addu       $t6, $s4, $v0
/* 20B7D0 801E0C70 0242C021 */  addu       $t8, $s2, $v0
/* 20B7D4 801E0C74 C70A0000 */  lwc1       $f10, 0x0($t8)
glabel func_801E0C78_ovl11
/* 20B7D8 801E0C78 C5C80000 */  lwc1       $f8, 0x0($t6)
/* 20B7DC 801E0C7C 460A4001 */  sub.s      $f0, $f8, $f10
/* 20B7E0 801E0C80 4610003C */  c.lt.s     $f0, $f16
/* 20B7E4 801E0C84 00000000 */  nop
/* 20B7E8 801E0C88 45020004 */  bc1fl      func_801E0C9C_ovl15
/* 20B7EC 801E0C8C 46000306 */   mov.s     $f12, $f0
/* 20B7F0 801E0C90 10000002 */  b          func_801E0C9C_ovl15
/* 20B7F4 801E0C94 46000307 */   neg.s     $f12, $f0
/* 20B7F8 801E0C98 46000306 */  mov.s      $f12, $f0
glabel func_801E0C9C_ovl15
/* 20B7FC 801E0C9C 460C903C */  c.lt.s     $f18, $f12
/* 20B800 801E0CA0 00000000 */  nop
/* 20B804 801E0CA4 4501FFE9 */  bc1t       .L801E0C4C_ovl15
/* 20B808 801E0CA8 00000000 */   nop
/* 20B80C 801E0CAC 4600A03C */  c.lt.s     $f20, $f0
.L801E0CB0_ovl15:
/* 20B810 801E0CB0 2404000A */  addiu      $a0, $zero, 0xA
.L801E0CB4_ovl12:
/* 20B814 801E0CB4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 20B818 801E0CB8 45020007 */  bc1fl      .L801E0CD8_ovl17
/* 20B81C 801E0CBC 44813000 */   mtc1      $at, $f6
/* 20B820 801E0CC0 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
glabel func_801E0CC4_ovl9
/* 20B824 801E0CC4 44812000 */  mtc1       $at, $f4
glabel func_801E0CC8_ovl16
/* 20B828 801E0CC8 0262C821 */  addu       $t9, $s3, $v0
/* 20B82C 801E0CCC 10000004 */  b          .L801E0CE0_ovl15
/* 20B830 801E0CD0 E7240000 */   swc1      $f4, 0x0($t9)
/* 20B834 801E0CD4 44813000 */  mtc1       $at, $f6
.L801E0CD8_ovl17:
/* 20B838 801E0CD8 02624021 */  addu       $t0, $s3, $v0
/* 20B83C 801E0CDC E5060000 */  swc1       $f6, 0x0($t0)
.L801E0CE0_ovl15:
/* 20B840 801E0CE0 0C002DAF */  jal        finish_current_thread
/* 20B844 801E0CE4 E7A00038 */   swc1      $f0, 0x38($sp)
/* 20B848 801E0CE8 C7A00038 */  lwc1       $f0, 0x38($sp)
/* 20B84C 801E0CEC 4600A03C */  c.lt.s     $f20, $f0
/* 20B850 801E0CF0 00000000 */  nop
/* 20B854 801E0CF4 4502000B */  bc1fl      func_801E0D24_ovl15
/* 20B858 801E0CF8 8E250000 */   lw        $a1, 0x0($s1)
/* 20B85C 801E0CFC 8E250000 */  lw         $a1, 0x0($s1)
glabel func_801E0D00_ovl17
/* 20B860 801E0D00 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 20B864 801E0D04 44814000 */  mtc1       $at, $f8
.L801E0D08_ovl12:
/* 20B868 801E0D08 8CAA0000 */  lw         $t2, 0x0($a1)
glabel func_801E0D0C_ovl12
/* 20B86C 801E0D0C 3C01800E */  lui        $at, %hi(D_800E3050)
/* 20B870 801E0D10 000A5880 */  sll        $t3, $t2, 2
.L801E0D14_ovl10:
/* 20B874 801E0D14 002B0821 */  addu       $at, $at, $t3
/* 20B878 801E0D18 10000009 */  b          .L801E0D40_ovl15
/* 20B87C 801E0D1C E4283050 */   swc1      $f8, %lo(D_800E3050)($at)
/* 20B880 801E0D20 8E250000 */  lw         $a1, 0x0($s1)
glabel func_801E0D24_ovl15
/* 20B884 801E0D24 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 20B888 801E0D28 44815000 */  mtc1       $at, $f10
/* 20B88C 801E0D2C 8CA90000 */  lw         $t1, 0x0($a1)
/* 20B890 801E0D30 3C01800E */  lui        $at, %hi(D_800E3050)
/* 20B894 801E0D34 00096080 */  sll        $t4, $t1, 2
.L801E0D38_ovl16:
/* 20B898 801E0D38 002C0821 */  addu       $at, $at, $t4
/* 20B89C 801E0D3C E42A3050 */  swc1       $f10, %lo(D_800E3050)($at)
.L801E0D40_ovl15:
/* 20B8A0 801E0D40 8CAF0000 */  lw         $t7, 0x0($a1)
.L801E0D44_ovl17:
/* 20B8A4 801E0D44 000F6880 */  sll        $t5, $t7, 2
/* 20B8A8 801E0D48 026D7021 */  addu       $t6, $s3, $t5
/* 20B8AC 801E0D4C E5D40000 */  swc1       $f20, 0x0($t6)
/* 20B8B0 801E0D50 8CA20000 */  lw         $v0, 0x0($a1)
/* 20B8B4 801E0D54 1000003A */  b          .L801E0E40_ovl15
.L801E0D58_ovl16:
/* 20B8B8 801E0D58 00021080 */   sll       $v0, $v0, 2
/* 20B8BC 801E0D5C 4600A03C */  c.lt.s     $f20, $f0
.L801E0D60_ovl15:
/* 20B8C0 801E0D60 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
glabel func_801E0D64_ovl12
/* 20B8C4 801E0D64 45020008 */  bc1fl      .L801E0D88_ovl15
/* 20B8C8 801E0D68 44819000 */   mtc1      $at, $f18
/* 20B8CC 801E0D6C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
glabel func_801E0D70_ovl14
/* 20B8D0 801E0D70 44818000 */  mtc1       $at, $f16
/* 20B8D4 801E0D74 3C01800E */  lui        $at, %hi(D_800E3050)
glabel func_801E0D78_ovl14
/* 20B8D8 801E0D78 00220821 */  addu       $at, $at, $v0
/* 20B8DC 801E0D7C 10000005 */  b          .L801E0D94_ovl15
.L801E0D80_ovl10:
/* 20B8E0 801E0D80 E4303050 */   swc1      $f16, %lo(D_800E3050)($at)
/* 20B8E4 801E0D84 44819000 */  mtc1       $at, $f18
.L801E0D88_ovl15:
/* 20B8E8 801E0D88 3C01800E */  lui        $at, %hi(D_800E3050)
/* 20B8EC 801E0D8C 00220821 */  addu       $at, $at, $v0
/* 20B8F0 801E0D90 E4323050 */  swc1       $f18, %lo(D_800E3050)($at)
.L801E0D94_ovl15:
/* 20B8F4 801E0D94 8CA20000 */  lw         $v0, 0x0($a1)
/* 20B8F8 801E0D98 3C01425C */  lui        $at, (0x425C0000 >> 16)
/* 20B8FC 801E0D9C 44812000 */  mtc1       $at, $f4
/* 20B900 801E0DA0 00021080 */  sll        $v0, $v0, 2
/* 20B904 801E0DA4 0282C021 */  addu       $t8, $s4, $v0
/* 20B908 801E0DA8 0242C821 */  addu       $t9, $s2, $v0
.L801E0DAC_ovl16:
/* 20B90C 801E0DAC C7200000 */  lwc1       $f0, 0x0($t9)
/* 20B910 801E0DB0 C7020000 */  lwc1       $f2, 0x0($t8)
.L801E0DB4_ovl17:
/* 20B914 801E0DB4 4600103C */  c.lt.s     $f2, $f0
/* 20B918 801E0DB8 00000000 */  nop
/* 20B91C 801E0DBC 45020005 */  bc1fl      .L801E0DD4_ovl15
.L801E0DC0_ovl17:
/* 20B920 801E0DC0 46001301 */   sub.s     $f12, $f2, $f0
/* 20B924 801E0DC4 46001301 */  sub.s      $f12, $f2, $f0
/* 20B928 801E0DC8 10000002 */  b          .L801E0DD4_ovl15
/* 20B92C 801E0DCC 46006307 */   neg.s     $f12, $f12
.L801E0DD0_ovl16:
/* 20B930 801E0DD0 46001301 */  sub.s      $f12, $f2, $f0
.L801E0DD4_ovl15:
/* 20B934 801E0DD4 460C203C */  c.lt.s     $f4, $f12
/* 20B938 801E0DD8 00000000 */  nop
/* 20B93C 801E0DDC 45020019 */  bc1fl      .L801E0E44_ovl15
.L801E0DE0_ovl12:
/* 20B940 801E0DE0 02625821 */   addu      $t3, $s3, $v0
.L801E0DE4_ovl15:
/* 20B944 801E0DE4 0C002DAF */  jal        finish_current_thread
/* 20B948 801E0DE8 24040001 */   addiu     $a0, $zero, 0x1
/* 20B94C 801E0DEC 8E250000 */  lw         $a1, 0x0($s1)
.L801E0DF0_ovl16:
/* 20B950 801E0DF0 3C01425C */  lui        $at, (0x425C0000 >> 16)
/* 20B954 801E0DF4 44813000 */  mtc1       $at, $f6
glabel func_801E0DF8_ovl12
/* 20B958 801E0DF8 8CA20000 */  lw         $v0, 0x0($a1)
.L801E0DFC_ovl9:
/* 20B95C 801E0DFC 00021080 */  sll        $v0, $v0, 2
.L801E0E00_ovl16:
/* 20B960 801E0E00 02824021 */  addu       $t0, $s4, $v0
/* 20B964 801E0E04 02425021 */  addu       $t2, $s2, $v0
.L801E0E08_ovl16:
/* 20B968 801E0E08 C5400000 */  lwc1       $f0, 0x0($t2)
/* 20B96C 801E0E0C C5020000 */  lwc1       $f2, 0x0($t0)
/* 20B970 801E0E10 4600103C */  c.lt.s     $f2, $f0
/* 20B974 801E0E14 00000000 */  nop
/* 20B978 801E0E18 45020005 */  bc1fl      .L801E0E30_ovl15
/* 20B97C 801E0E1C 46001301 */   sub.s     $f12, $f2, $f0
/* 20B980 801E0E20 46001301 */  sub.s      $f12, $f2, $f0
glabel func_801E0E24_ovl9
/* 20B984 801E0E24 10000002 */  b          .L801E0E30_ovl15
/* 20B988 801E0E28 46006307 */   neg.s     $f12, $f12
/* 20B98C 801E0E2C 46001301 */  sub.s      $f12, $f2, $f0
.L801E0E30_ovl15:
/* 20B990 801E0E30 460C303C */  c.lt.s     $f6, $f12
/* 20B994 801E0E34 00000000 */  nop
/* 20B998 801E0E38 4501FFEA */  bc1t       .L801E0DE4_ovl15
.L801E0E3C_ovl17:
/* 20B99C 801E0E3C 00000000 */   nop
.L801E0E40_ovl15:
/* 20B9A0 801E0E40 02625821 */  addu       $t3, $s3, $v0
.L801E0E44_ovl15:
/* 20B9A4 801E0E44 E5740000 */  swc1       $f20, 0x0($t3)
/* 20B9A8 801E0E48 8CA20000 */  lw         $v0, 0x0($a1)
/* 20B9AC 801E0E4C 3C01800E */  lui        $at, %hi(D_800E3050)
/* 20B9B0 801E0E50 240D0001 */  addiu      $t5, $zero, 0x1
/* 20B9B4 801E0E54 00021080 */  sll        $v0, $v0, 2
/* 20B9B8 801E0E58 02624821 */  addu       $t1, $s3, $v0
/* 20B9BC 801E0E5C C5280000 */  lwc1       $f8, 0x0($t1)
/* 20B9C0 801E0E60 00220821 */  addu       $at, $at, $v0
/* 20B9C4 801E0E64 240E0001 */  addiu      $t6, $zero, 0x1
.L801E0E68_ovl10:
/* 20B9C8 801E0E68 E4283050 */  swc1       $f8, %lo(D_800E3050)($at)
/* 20B9CC 801E0E6C 8CAC0000 */  lw         $t4, 0x0($a1)
/* 20B9D0 801E0E70 3C01801E */  lui        $at, %hi(D_801E6890_ovl15)
.L801E0E74_ovl16:
/* 20B9D4 801E0E74 C42A6890 */  lwc1       $f10, %lo(D_801E6890_ovl15)($at)
glabel func_801E0E78_ovl10
/* 20B9D8 801E0E78 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 20B9DC 801E0E7C 000C7880 */  sll        $t7, $t4, 2
.L801E0E80_ovl13:
/* 20B9E0 801E0E80 002F0821 */  addu       $at, $at, $t7
/* 20B9E4 801E0E84 E42A3AD0 */  swc1       $f10, %lo(D_800E3AD0)($at)
/* 20B9E8 801E0E88 AEAD0014 */  sw         $t5, 0x14($s5)
/* 20B9EC 801E0E8C 8CB80000 */  lw         $t8, 0x0($a1)
/* 20B9F0 801E0E90 3C01800F */  lui        $at, %hi(D_800EA360)
/* 20B9F4 801E0E94 24040014 */  addiu      $a0, $zero, 0x14
/* 20B9F8 801E0E98 0018C880 */  sll        $t9, $t8, 2
/* 20B9FC 801E0E9C 00390821 */  addu       $at, $at, $t9
/* 20BA00 801E0EA0 AC2EA360 */  sw         $t6, %lo(D_800EA360)($at)
/* 20BA04 801E0EA4 8CA80000 */  lw         $t0, 0x0($a1)
/* 20BA08 801E0EA8 3C01801E */  lui        $at, %hi(D_801E6894_ovl15)
/* 20BA0C 801E0EAC C4306894 */  lwc1       $f16, %lo(D_801E6894_ovl15)($at)
/* 20BA10 801E0EB0 00085080 */  sll        $t2, $t0, 2
/* 20BA14 801E0EB4 026A5821 */  addu       $t3, $s3, $t2
/* 20BA18 801E0EB8 0C002DAF */  jal        finish_current_thread
.L801E0EBC_ovl12:
/* 20BA1C 801E0EBC E5700000 */   swc1      $f16, 0x0($t3)
/* 20BA20 801E0EC0 8E250000 */  lw         $a1, 0x0($s1)
/* 20BA24 801E0EC4 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* 20BA28 801E0EC8 44819000 */  mtc1       $at, $f18
/* 20BA2C 801E0ECC 8CA90000 */  lw         $t1, 0x0($a1)
/* 20BA30 801E0ED0 3C01800E */  lui        $at, %hi(D_800E3050)
/* 20BA34 801E0ED4 24080009 */  addiu      $t0, $zero, 0x9
/* 20BA38 801E0ED8 00096080 */  sll        $t4, $t1, 2
.L801E0EDC_ovl10:
/* 20BA3C 801E0EDC 002C0821 */  addu       $at, $at, $t4
/* 20BA40 801E0EE0 E4323050 */  swc1       $f18, %lo(D_800E3050)($at)
/* 20BA44 801E0EE4 8CAF0000 */  lw         $t7, 0x0($a1)
/* 20BA48 801E0EE8 3C01800F */  lui        $at, %hi(D_800EA1A0)
/* 20BA4C 801E0EEC 000F6880 */  sll        $t5, $t7, 2
.L801E0EF0_ovl12:
/* 20BA50 801E0EF0 026DC021 */  addu       $t8, $s3, $t5
.L801E0EF4_ovl10:
/* 20BA54 801E0EF4 E7140000 */  swc1       $f20, 0x0($t8)
.L801E0EF8_ovl16:
/* 20BA58 801E0EF8 8CAE0000 */  lw         $t6, 0x0($a1)
/* 20BA5C 801E0EFC 8FBF0034 */  lw         $ra, 0x34($sp)
/* 20BA60 801E0F00 8FB50030 */  lw         $s5, 0x30($sp)
glabel func_801E0F04_ovl16
/* 20BA64 801E0F04 000EC880 */  sll        $t9, $t6, 2
/* 20BA68 801E0F08 00390821 */  addu       $at, $at, $t9
/* 20BA6C 801E0F0C AC20A1A0 */  sw         $zero, %lo(D_800EA1A0)($at)
/* 20BA70 801E0F10 8CAA0000 */  lw         $t2, 0x0($a1)
/* 20BA74 801E0F14 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 20BA78 801E0F18 8FB4002C */  lw         $s4, 0x2C($sp)
/* 20BA7C 801E0F1C 000A5880 */  sll        $t3, $t2, 2
/* 20BA80 801E0F20 002B0821 */  addu       $at, $at, $t3
/* 20BA84 801E0F24 8FB30028 */  lw         $s3, 0x28($sp)
.L801E0F28_ovl10:
/* 20BA88 801E0F28 8FB20024 */  lw         $s2, 0x24($sp)
/* 20BA8C 801E0F2C 8FB10020 */  lw         $s1, 0x20($sp)
/* 20BA90 801E0F30 8FB0001C */  lw         $s0, 0x1C($sp)
/* 20BA94 801E0F34 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 20BA98 801E0F38 AC28DC50 */  sw         $t0, %lo(gEntityVtableIndexArray)($at)
/* 20BA9C 801E0F3C 03E00008 */  jr         $ra
.L801E0F40_ovl10:
/* 20BAA0 801E0F40 27BD0040 */   addiu     $sp, $sp, 0x40
