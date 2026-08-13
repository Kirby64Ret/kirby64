nonmatching func_8017EDDC_ovl3, 0x3E4

glabel func_8017EDDC_ovl3
    /* DF81C 8017EDDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* DF820 8017EDE0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* DF824 8017EDE4 0C054E61 */  jal        func_80153984_ovl3
    /* DF828 8017EDE8 AFA40018 */   sw        $a0, 0x18($sp)
    /* DF82C 8017EDEC 0C0473D6 */  jal        func_8011CF58
    /* DF830 8017EDF0 00000000 */   nop
    /* DF834 8017EDF4 0C0485EE */  jal        func_801217B8
    /* DF838 8017EDF8 00000000 */   nop
    /* DF83C 8017EDFC 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* DF840 8017EE00 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
    /* DF844 8017EE04 8C6E0030 */  lw         $t6, 0x30($v1)
    /* DF848 8017EE08 15C0000F */  bnez       $t6, .L8017EE48_ovl3
    /* DF84C 8017EE0C 00000000 */   nop
    /* DF850 8017EE10 906F0017 */  lbu        $t7, 0x17($v1)
    /* DF854 8017EE14 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* DF858 8017EE18 15E0000B */  bnez       $t7, .L8017EE48_ovl3
    /* DF85C 8017EE1C 00000000 */   nop
    /* DF860 8017EE20 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* DF864 8017EE24 3C18800F */  lui        $t8, %hi(D_800E8920)
    /* DF868 8017EE28 3C05801A */  lui        $a1, %hi(D_80198830_ovl3)
    /* DF86C 8017EE2C 8C820000 */  lw         $v0, 0x0($a0)
    /* DF870 8017EE30 24A58830 */  addiu      $a1, $a1, %lo(D_80198830_ovl3)
    /* DF874 8017EE34 00021080 */  sll        $v0, $v0, 2
    /* DF878 8017EE38 0302C021 */  addu       $t8, $t8, $v0
    /* DF87C 8017EE3C 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
    /* DF880 8017EE40 53000014 */  beql       $t8, $zero, .L8017EE94_ovl3
    /* DF884 8017EE44 84A30008 */   lh        $v1, 0x8($a1)
  .L8017EE48_ovl3:
    /* DF888 8017EE48 0C04783A */  jal        func_8011E0E8
    /* DF88C 8017EE4C 00000000 */   nop
    /* DF890 8017EE50 3C038013 */  lui        $v1, %hi(gKirbyState)
    /* DF894 8017EE54 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
    /* DF898 8017EE58 AC6000A0 */  sw         $zero, 0xA0($v1)
    /* DF89C 8017EE5C 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* DF8A0 8017EE60 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* DF8A4 8017EE64 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* DF8A8 8017EE68 8F220000 */  lw         $v0, 0x0($t9)
    /* DF8AC 8017EE6C 00021080 */  sll        $v0, $v0, 2
    /* DF8B0 8017EE70 00220821 */  addu       $at, $at, $v0
    /* DF8B4 8017EE74 C424A6E0 */  lwc1       $f4, %lo(D_800EA6E0)($at)
    /* DF8B8 8017EE78 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* DF8BC 8017EE7C 00220821 */  addu       $at, $at, $v0
    /* DF8C0 8017EE80 0C04759F */  jal        func_8011D67C
    /* DF8C4 8017EE84 E4246A10 */   swc1      $f4, %lo(D_800E6A10)($at)
    /* DF8C8 8017EE88 100000CA */  b          .L8017F1B4_ovl3
    /* DF8CC 8017EE8C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* DF8D0 8017EE90 84A30008 */  lh         $v1, 0x8($a1)
  .L8017EE94_ovl3:
    /* DF8D4 8017EE94 3C08800F */  lui        $t0, %hi(D_800E9720)
    /* DF8D8 8017EE98 25089720 */  addiu      $t0, $t0, %lo(D_800E9720)
    /* DF8DC 8017EE9C 5060001B */  beql       $v1, $zero, .L8017EF0C_ovl3
    /* DF8E0 8017EEA0 84A3000A */   lh        $v1, 0xA($a1)
    /* DF8E4 8017EEA4 00482821 */  addu       $a1, $v0, $t0
    /* DF8E8 8017EEA8 8CA60000 */  lw         $a2, 0x0($a1)
    /* DF8EC 8017EEAC 14C00012 */  bnez       $a2, .L8017EEF8_ovl3
    /* DF8F0 8017EEB0 24CBFFFF */   addiu     $t3, $a2, -0x1
    /* DF8F4 8017EEB4 1060001A */  beqz       $v1, .L8017EF20_ovl3
    /* DF8F8 8017EEB8 3C09800D */   lui       $t1, %hi(gKirbyController + 0x2)
    /* DF8FC 8017EEBC 95296FEA */  lhu        $t1, %lo(gKirbyController + 0x2)($t1)
    /* DF900 8017EEC0 3C058017 */  lui        $a1, %hi(func_8016C510_ovl3)
    /* DF904 8017EEC4 24A5C510 */  addiu      $a1, $a1, %lo(func_8016C510_ovl3)
    /* DF908 8017EEC8 312A4000 */  andi       $t2, $t1, 0x4000
    /* DF90C 8017EECC 11400014 */  beqz       $t2, .L8017EF20_ovl3
    /* DF910 8017EED0 00000000 */   nop
    /* DF914 8017EED4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* DF918 8017EED8 00822021 */  addu       $a0, $a0, $v0
    /* DF91C 8017EEDC 0C02C7B2 */  jal        assign_new_process_entry
    /* DF920 8017EEE0 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* DF924 8017EEE4 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* DF928 8017EEE8 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* DF92C 8017EEEC 8C820000 */  lw         $v0, 0x0($a0)
    /* DF930 8017EEF0 1000000B */  b          .L8017EF20_ovl3
    /* DF934 8017EEF4 00021080 */   sll       $v0, $v0, 2
  .L8017EEF8_ovl3:
    /* DF938 8017EEF8 ACAB0000 */  sw         $t3, 0x0($a1)
    /* DF93C 8017EEFC 8C820000 */  lw         $v0, 0x0($a0)
    /* DF940 8017EF00 10000007 */  b          .L8017EF20_ovl3
    /* DF944 8017EF04 00021080 */   sll       $v0, $v0, 2
    /* DF948 8017EF08 84A3000A */  lh         $v1, 0xA($a1)
  .L8017EF0C_ovl3:
    /* DF94C 8017EF0C 10600004 */  beqz       $v1, .L8017EF20_ovl3
    /* DF950 8017EF10 246CFFFF */   addiu     $t4, $v1, -0x1
    /* DF954 8017EF14 A4AC000A */  sh         $t4, 0xA($a1)
    /* DF958 8017EF18 8C820000 */  lw         $v0, 0x0($a0)
    /* DF95C 8017EF1C 00021080 */  sll        $v0, $v0, 2
  .L8017EF20_ovl3:
    /* DF960 8017EF20 3C03800D */  lui        $v1, %hi(gKirbyController)
    /* DF964 8017EF24 94636FE8 */  lhu        $v1, %lo(gKirbyController)($v1)
    /* DF968 8017EF28 3C05800F */  lui        $a1, %hi(D_800E8AE0)
    /* DF96C 8017EF2C 24A58AE0 */  addiu      $a1, $a1, %lo(D_800E8AE0)
    /* DF970 8017EF30 306D0300 */  andi       $t5, $v1, 0x300
    /* DF974 8017EF34 11A00084 */  beqz       $t5, .L8017F148_ovl3
    /* DF978 8017EF38 306E0100 */   andi      $t6, $v1, 0x100
    /* DF97C 8017EF3C 11C00042 */  beqz       $t6, .L8017F048_ovl3
    /* DF980 8017EF40 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
    /* DF984 8017EF44 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* DF988 8017EF48 44813000 */  mtc1       $at, $f6
    /* DF98C 8017EF4C 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* DF990 8017EF50 00220821 */  addu       $at, $at, $v0
    /* DF994 8017EF54 E426A6E0 */  swc1       $f6, %lo(D_800EA6E0)($at)
    /* DF998 8017EF58 8C820000 */  lw         $v0, 0x0($a0)
    /* DF99C 8017EF5C 3C05800F */  lui        $a1, %hi(D_800E8AE0)
    /* DF9A0 8017EF60 24A58AE0 */  addiu      $a1, $a1, %lo(D_800E8AE0)
    /* DF9A4 8017EF64 00021080 */  sll        $v0, $v0, 2
    /* DF9A8 8017EF68 00A27821 */  addu       $t7, $a1, $v0
    /* DF9AC 8017EF6C 8DF80000 */  lw         $t8, 0x0($t7)
    /* DF9B0 8017EF70 44808000 */  mtc1       $zero, $f16
    /* DF9B4 8017EF74 3C013EA0 */  lui        $at, (0x3EA00000 >> 16)
    /* DF9B8 8017EF78 33190006 */  andi       $t9, $t8, 0x6
    /* DF9BC 8017EF7C 57200008 */  bnel       $t9, $zero, .L8017EFA0_ovl3
    /* DF9C0 8017EF80 44815000 */   mtc1      $at, $f10
    /* DF9C4 8017EF84 3C013F20 */  lui        $at, (0x3F200000 >> 16)
    /* DF9C8 8017EF88 44814000 */  mtc1       $at, $f8
    /* DF9CC 8017EF8C 3C01800E */  lui        $at, %hi(D_800E6690)
    /* DF9D0 8017EF90 00220821 */  addu       $at, $at, $v0
    /* DF9D4 8017EF94 10000005 */  b          .L8017EFAC_ovl3
    /* DF9D8 8017EF98 E4286690 */   swc1      $f8, %lo(D_800E6690)($at)
    /* DF9DC 8017EF9C 44815000 */  mtc1       $at, $f10
  .L8017EFA0_ovl3:
    /* DF9E0 8017EFA0 3C01800E */  lui        $at, %hi(D_800E6690)
    /* DF9E4 8017EFA4 00220821 */  addu       $at, $at, $v0
    /* DF9E8 8017EFA8 E42A6690 */  swc1       $f10, %lo(D_800E6690)($at)
  .L8017EFAC_ovl3:
    /* DF9EC 8017EFAC 8C820000 */  lw         $v0, 0x0($a0)
    /* DF9F0 8017EFB0 3C014020 */  lui        $at, (0x40200000 >> 16)
    /* DF9F4 8017EFB4 00021080 */  sll        $v0, $v0, 2
    /* DF9F8 8017EFB8 00A24021 */  addu       $t0, $a1, $v0
    /* DF9FC 8017EFBC 8D030000 */  lw         $v1, 0x0($t0)
    /* DFA00 8017EFC0 30630006 */  andi       $v1, $v1, 0x6
    /* DFA04 8017EFC4 54600008 */  bnel       $v1, $zero, .L8017EFE8_ovl3
    /* DFA08 8017EFC8 44816000 */   mtc1      $at, $f12
    /* DFA0C 8017EFCC 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
    /* DFA10 8017EFD0 44811000 */  mtc1       $at, $f2
    /* DFA14 8017EFD4 3C014020 */  lui        $at, (0x40200000 >> 16)
    /* DFA18 8017EFD8 44816000 */  mtc1       $at, $f12
    /* DFA1C 8017EFDC 10000005 */  b          .L8017EFF4_ovl3
    /* DFA20 8017EFE0 46001006 */   mov.s     $f0, $f2
    /* DFA24 8017EFE4 44816000 */  mtc1       $at, $f12
  .L8017EFE8_ovl3:
    /* DFA28 8017EFE8 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
    /* DFA2C 8017EFEC 44811000 */  mtc1       $at, $f2
    /* DFA30 8017EFF0 46006006 */  mov.s      $f0, $f12
  .L8017EFF4_ovl3:
    /* DFA34 8017EFF4 4610003C */  c.lt.s     $f0, $f16
    /* DFA38 8017EFF8 3C01800E */  lui        $at, %hi(D_800E6850)
    /* DFA3C 8017EFFC 00220821 */  addu       $at, $at, $v0
    /* DFA40 8017F000 4500000A */  bc1f       .L8017F02C_ovl3
    /* DFA44 8017F004 00000000 */   nop
    /* DFA48 8017F008 14600003 */  bnez       $v1, .L8017F018_ovl3
    /* DFA4C 8017F00C 3C01800E */   lui       $at, %hi(D_800E6850)
    /* DFA50 8017F010 10000002 */  b          .L8017F01C_ovl3
    /* DFA54 8017F014 46001006 */   mov.s     $f0, $f2
  .L8017F018_ovl3:
    /* DFA58 8017F018 46006006 */  mov.s      $f0, $f12
  .L8017F01C_ovl3:
    /* DFA5C 8017F01C 46000487 */  neg.s      $f18, $f0
    /* DFA60 8017F020 00220821 */  addu       $at, $at, $v0
    /* DFA64 8017F024 10000062 */  b          .L8017F1B0_ovl3
    /* DFA68 8017F028 E4326850 */   swc1      $f18, %lo(D_800E6850)($at)
  .L8017F02C_ovl3:
    /* DFA6C 8017F02C 54600004 */  bnel       $v1, $zero, .L8017F040_ovl3
    /* DFA70 8017F030 46006006 */   mov.s     $f0, $f12
    /* DFA74 8017F034 10000002 */  b          .L8017F040_ovl3
    /* DFA78 8017F038 46001006 */   mov.s     $f0, $f2
    /* DFA7C 8017F03C 46006006 */  mov.s      $f0, $f12
  .L8017F040_ovl3:
    /* DFA80 8017F040 1000005B */  b          .L8017F1B0_ovl3
    /* DFA84 8017F044 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
  .L8017F048_ovl3:
    /* DFA88 8017F048 44812000 */  mtc1       $at, $f4
    /* DFA8C 8017F04C 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* DFA90 8017F050 00220821 */  addu       $at, $at, $v0
    /* DFA94 8017F054 E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
    /* DFA98 8017F058 8C820000 */  lw         $v0, 0x0($a0)
    /* DFA9C 8017F05C 3C05800F */  lui        $a1, %hi(D_800E8AE0)
    /* DFAA0 8017F060 24A58AE0 */  addiu      $a1, $a1, %lo(D_800E8AE0)
    /* DFAA4 8017F064 00021080 */  sll        $v0, $v0, 2
    /* DFAA8 8017F068 00A24821 */  addu       $t1, $a1, $v0
    /* DFAAC 8017F06C 8D2A0000 */  lw         $t2, 0x0($t1)
    /* DFAB0 8017F070 44805000 */  mtc1       $zero, $f10
    /* DFAB4 8017F074 3C01BEA0 */  lui        $at, (0xBEA00000 >> 16)
    /* DFAB8 8017F078 314B0006 */  andi       $t3, $t2, 0x6
    /* DFABC 8017F07C 55600008 */  bnel       $t3, $zero, .L8017F0A0_ovl3
    /* DFAC0 8017F080 44814000 */   mtc1      $at, $f8
    /* DFAC4 8017F084 3C01BF20 */  lui        $at, (0xBF200000 >> 16)
    /* DFAC8 8017F088 44813000 */  mtc1       $at, $f6
    /* DFACC 8017F08C 3C01800E */  lui        $at, %hi(D_800E6690)
    /* DFAD0 8017F090 00220821 */  addu       $at, $at, $v0
    /* DFAD4 8017F094 10000005 */  b          .L8017F0AC_ovl3
    /* DFAD8 8017F098 E4266690 */   swc1      $f6, %lo(D_800E6690)($at)
    /* DFADC 8017F09C 44814000 */  mtc1       $at, $f8
  .L8017F0A0_ovl3:
    /* DFAE0 8017F0A0 3C01800E */  lui        $at, %hi(D_800E6690)
    /* DFAE4 8017F0A4 00220821 */  addu       $at, $at, $v0
    /* DFAE8 8017F0A8 E4286690 */  swc1       $f8, %lo(D_800E6690)($at)
  .L8017F0AC_ovl3:
    /* DFAEC 8017F0AC 8C820000 */  lw         $v0, 0x0($a0)
    /* DFAF0 8017F0B0 3C014020 */  lui        $at, (0x40200000 >> 16)
    /* DFAF4 8017F0B4 00021080 */  sll        $v0, $v0, 2
    /* DFAF8 8017F0B8 00A26021 */  addu       $t4, $a1, $v0
    /* DFAFC 8017F0BC 8D830000 */  lw         $v1, 0x0($t4)
    /* DFB00 8017F0C0 30630006 */  andi       $v1, $v1, 0x6
    /* DFB04 8017F0C4 54600008 */  bnel       $v1, $zero, .L8017F0E8_ovl3
    /* DFB08 8017F0C8 44816000 */   mtc1      $at, $f12
    /* DFB0C 8017F0CC 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
    /* DFB10 8017F0D0 44811000 */  mtc1       $at, $f2
    /* DFB14 8017F0D4 3C014020 */  lui        $at, (0x40200000 >> 16)
    /* DFB18 8017F0D8 44816000 */  mtc1       $at, $f12
    /* DFB1C 8017F0DC 10000005 */  b          .L8017F0F4_ovl3
    /* DFB20 8017F0E0 46001006 */   mov.s     $f0, $f2
    /* DFB24 8017F0E4 44816000 */  mtc1       $at, $f12
  .L8017F0E8_ovl3:
    /* DFB28 8017F0E8 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
    /* DFB2C 8017F0EC 44811000 */  mtc1       $at, $f2
    /* DFB30 8017F0F0 46006006 */  mov.s      $f0, $f12
  .L8017F0F4_ovl3:
    /* DFB34 8017F0F4 460A003C */  c.lt.s     $f0, $f10
    /* DFB38 8017F0F8 3C01800E */  lui        $at, %hi(D_800E6850)
    /* DFB3C 8017F0FC 00220821 */  addu       $at, $at, $v0
    /* DFB40 8017F100 4500000A */  bc1f       .L8017F12C_ovl3
    /* DFB44 8017F104 00000000 */   nop
    /* DFB48 8017F108 14600003 */  bnez       $v1, .L8017F118_ovl3
    /* DFB4C 8017F10C 3C01800E */   lui       $at, %hi(D_800E6850)
    /* DFB50 8017F110 10000002 */  b          .L8017F11C_ovl3
    /* DFB54 8017F114 46001006 */   mov.s     $f0, $f2
  .L8017F118_ovl3:
    /* DFB58 8017F118 46006006 */  mov.s      $f0, $f12
  .L8017F11C_ovl3:
    /* DFB5C 8017F11C 46000407 */  neg.s      $f16, $f0
    /* DFB60 8017F120 00220821 */  addu       $at, $at, $v0
    /* DFB64 8017F124 10000022 */  b          .L8017F1B0_ovl3
    /* DFB68 8017F128 E4306850 */   swc1      $f16, %lo(D_800E6850)($at)
  .L8017F12C_ovl3:
    /* DFB6C 8017F12C 54600004 */  bnel       $v1, $zero, .L8017F140_ovl3
    /* DFB70 8017F130 46006006 */   mov.s     $f0, $f12
    /* DFB74 8017F134 10000002 */  b          .L8017F140_ovl3
    /* DFB78 8017F138 46001006 */   mov.s     $f0, $f2
    /* DFB7C 8017F13C 46006006 */  mov.s      $f0, $f12
  .L8017F140_ovl3:
    /* DFB80 8017F140 1000001B */  b          .L8017F1B0_ovl3
    /* DFB84 8017F144 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
  .L8017F148_ovl3:
    /* DFB88 8017F148 00A26821 */  addu       $t5, $a1, $v0
    /* DFB8C 8017F14C 8DAE0000 */  lw         $t6, 0x0($t5)
    /* DFB90 8017F150 3C013EA0 */  lui        $at, (0x3EA00000 >> 16)
    /* DFB94 8017F154 31CF0006 */  andi       $t7, $t6, 0x6
    /* DFB98 8017F158 55E00006 */  bnel       $t7, $zero, .L8017F174_ovl3
    /* DFB9C 8017F15C 44810000 */   mtc1      $at, $f0
    /* DFBA0 8017F160 3C013F20 */  lui        $at, (0x3F200000 >> 16)
    /* DFBA4 8017F164 44810000 */  mtc1       $at, $f0
    /* DFBA8 8017F168 10000003 */  b          .L8017F178_ovl3
    /* DFBAC 8017F16C 00000000 */   nop
    /* DFBB0 8017F170 44810000 */  mtc1       $at, $f0
  .L8017F174_ovl3:
    /* DFBB4 8017F174 00000000 */  nop
  .L8017F178_ovl3:
    /* DFBB8 8017F178 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* DFBBC 8017F17C 00220821 */  addu       $at, $at, $v0
    /* DFBC0 8017F180 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
    /* DFBC4 8017F184 46000487 */  neg.s      $f18, $f0
    /* DFBC8 8017F188 3C01800E */  lui        $at, %hi(D_800E6690)
    /* DFBCC 8017F18C 46049182 */  mul.s      $f6, $f18, $f4
    /* DFBD0 8017F190 00220821 */  addu       $at, $at, $v0
    /* DFBD4 8017F194 44804000 */  mtc1       $zero, $f8
    /* DFBD8 8017F198 E4266690 */  swc1       $f6, %lo(D_800E6690)($at)
    /* DFBDC 8017F19C 8C980000 */  lw         $t8, 0x0($a0)
    /* DFBE0 8017F1A0 3C01800E */  lui        $at, %hi(D_800E6850)
    /* DFBE4 8017F1A4 0018C880 */  sll        $t9, $t8, 2
    /* DFBE8 8017F1A8 00390821 */  addu       $at, $at, $t9
    /* DFBEC 8017F1AC E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
  .L8017F1B0_ovl3:
    /* DFBF0 8017F1B0 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8017F1B4_ovl3:
    /* DFBF4 8017F1B4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* DFBF8 8017F1B8 03E00008 */  jr         $ra
    /* DFBFC 8017F1BC 00000000 */   nop
endlabel func_8017EDDC_ovl3
.size func_8017EDDC_ovl3, . - func_8017EDDC_ovl3
