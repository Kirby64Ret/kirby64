nonmatching func_801DCE6C_ovl9, 0x410

glabel func_801DCE6C_ovl9
    /* 18AEBC 801DCE6C 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 18AEC0 801DCE70 AFB20028 */  sw         $s2, 0x28($sp)
    /* 18AEC4 801DCE74 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* 18AEC8 801DCE78 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* 18AECC 801DCE7C 8E430000 */  lw         $v1, 0x0($s2)
    /* 18AED0 801DCE80 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 18AED4 801DCE84 AFB10024 */  sw         $s1, 0x24($sp)
    /* 18AED8 801DCE88 AFB00020 */  sw         $s0, 0x20($sp)
    /* 18AEDC 801DCE8C F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 18AEE0 801DCE90 AFA40050 */  sw         $a0, 0x50($sp)
    /* 18AEE4 801DCE94 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 18AEE8 801DCE98 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* 18AEEC 801DCE9C 24110001 */  addiu      $s1, $zero, 0x1
    /* 18AEF0 801DCEA0 000E7880 */  sll        $t7, $t6, 2
    /* 18AEF4 801DCEA4 002F0821 */  addu       $at, $at, $t7
    /* 18AEF8 801DCEA8 AC31DFD0 */  sw         $s1, %lo(D_800DDFD0)($at)
    /* 18AEFC 801DCEAC 8C790000 */  lw         $t9, 0x0($v1)
    /* 18AF00 801DCEB0 3C09800E */  lui        $t1, %hi(D_800E1B50)
    /* 18AF04 801DCEB4 3C18801D */  lui        $t8, %hi(D_801C8080_ovl7)
    /* 18AF08 801DCEB8 00194080 */  sll        $t0, $t9, 2
    /* 18AF0C 801DCEBC 01284821 */  addu       $t1, $t1, $t0
    /* 18AF10 801DCEC0 8D291B50 */  lw         $t1, %lo(D_800E1B50)($t1)
    /* 18AF14 801DCEC4 27188080 */  addiu      $t8, $t8, %lo(D_801C8080_ovl7)
    /* 18AF18 801DCEC8 0C02CCFD */  jal        func_800B33F4
    /* 18AF1C 801DCECC AD38008C */   sw        $t8, 0x8C($t1)
    /* 18AF20 801DCED0 4480A000 */  mtc1       $zero, $f20
    /* 18AF24 801DCED4 0C02BB30 */  jal        func_800AECC0
    /* 18AF28 801DCED8 4600A306 */   mov.s     $f12, $f20
    /* 18AF2C 801DCEDC 0C02BB48 */  jal        func_800AED20
    /* 18AF30 801DCEE0 4600A306 */   mov.s     $f12, $f20
    /* 18AF34 801DCEE4 3C040001 */  lui        $a0, (0x10049 >> 16)
    /* 18AF38 801DCEE8 0C02A806 */  jal        func_800AA018
    /* 18AF3C 801DCEEC 34840049 */   ori       $a0, $a0, (0x10049 & 0xFFFF)
    /* 18AF40 801DCEF0 8E430000 */  lw         $v1, 0x0($s2)
    /* 18AF44 801DCEF4 3C01800F */  lui        $at, %hi(D_800EB160)
    /* 18AF48 801DCEF8 3C02800E */  lui        $v0, %hi(D_800E7880)
    /* 18AF4C 801DCEFC 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 18AF50 801DCF00 000A5880 */  sll        $t3, $t2, 2
    /* 18AF54 801DCF04 002B0821 */  addu       $at, $at, $t3
    /* 18AF58 801DCF08 E434B160 */  swc1       $f20, %lo(D_800EB160)($at)
    /* 18AF5C 801DCF0C 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 18AF60 801DCF10 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 18AF64 801DCF14 000C6880 */  sll        $t5, $t4, 2
    /* 18AF68 801DCF18 002D0821 */  addu       $at, $at, $t5
    /* 18AF6C 801DCF1C AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
    /* 18AF70 801DCF20 8C640000 */  lw         $a0, 0x0($v1)
    /* 18AF74 801DCF24 24010001 */  addiu      $at, $zero, 0x1
    /* 18AF78 801DCF28 00441021 */  addu       $v0, $v0, $a0
    /* 18AF7C 801DCF2C 90427880 */  lbu        $v0, %lo(D_800E7880)($v0)
    /* 18AF80 801DCF30 10410007 */  beq        $v0, $at, .L801DCF50_ovl9
    /* 18AF84 801DCF34 24010002 */   addiu     $at, $zero, 0x2
    /* 18AF88 801DCF38 10410043 */  beq        $v0, $at, .L801DD048_ovl9
    /* 18AF8C 801DCF3C 24010003 */   addiu     $at, $zero, 0x3
    /* 18AF90 801DCF40 1041006F */  beq        $v0, $at, .L801DD100_ovl9
    /* 18AF94 801DCF44 00000000 */   nop
    /* 18AF98 801DCF48 1000006D */  b          .L801DD100_ovl9
    /* 18AF9C 801DCF4C 00000000 */   nop
  .L801DCF50_ovl9:
    /* 18AFA0 801DCF50 3C10800F */  lui        $s0, %hi(D_800EA520)
    /* 18AFA4 801DCF54 2610A520 */  addiu      $s0, $s0, %lo(D_800EA520)
    /* 18AFA8 801DCF58 00047080 */  sll        $t6, $a0, 2
    /* 18AFAC 801DCF5C 020E7821 */  addu       $t7, $s0, $t6
    /* 18AFB0 801DCF60 0C067694 */  jal        func_8019DA50_ovl7
    /* 18AFB4 801DCF64 ADE00000 */   sw        $zero, 0x0($t7)
    /* 18AFB8 801DCF68 8E430000 */  lw         $v1, 0x0($s2)
    /* 18AFBC 801DCF6C 3C04800F */  lui        $a0, %hi(D_800EB320)
    /* 18AFC0 801DCF70 2484B320 */  addiu      $a0, $a0, %lo(D_800EB320)
    /* 18AFC4 801DCF74 8C790000 */  lw         $t9, 0x0($v1)
    /* 18AFC8 801DCF78 00194080 */  sll        $t0, $t9, 2
    /* 18AFCC 801DCF7C 0088C021 */  addu       $t8, $a0, $t0
    /* 18AFD0 801DCF80 E7000000 */  swc1       $f0, 0x0($t8)
    /* 18AFD4 801DCF84 8C620000 */  lw         $v0, 0x0($v1)
    /* 18AFD8 801DCF88 00021080 */  sll        $v0, $v0, 2
    /* 18AFDC 801DCF8C 02024821 */  addu       $t1, $s0, $v0
    /* 18AFE0 801DCF90 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 18AFE4 801DCF94 15400028 */  bnez       $t2, .L801DD038_ovl9
  .L801DCF98_ovl9:
    /* 18AFE8 801DCF98 3C04800F */   lui       $a0, %hi(D_800EB320)
    /* 18AFEC 801DCF9C 2484B320 */  addiu      $a0, $a0, %lo(D_800EB320)
    /* 18AFF0 801DCFA0 00825821 */  addu       $t3, $a0, $v0
    /* 18AFF4 801DCFA4 C5640000 */  lwc1       $f4, 0x0($t3)
    /* 18AFF8 801DCFA8 4604A03C */  c.lt.s     $f20, $f4
    /* 18AFFC 801DCFAC 00000000 */  nop
    /* 18B000 801DCFB0 4500000D */  bc1f       .L801DCFE8_ovl9
    /* 18B004 801DCFB4 00000000 */   nop
    /* 18B008 801DCFB8 0C067694 */  jal        func_8019DA50_ovl7
    /* 18B00C 801DCFBC 00000000 */   nop
    /* 18B010 801DCFC0 4614003C */  c.lt.s     $f0, $f20
    /* 18B014 801DCFC4 00000000 */  nop
    /* 18B018 801DCFC8 45000012 */  bc1f       .L801DD014_ovl9
    /* 18B01C 801DCFCC 00000000 */   nop
    /* 18B020 801DCFD0 8E4C0000 */  lw         $t4, 0x0($s2)
    /* 18B024 801DCFD4 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 18B028 801DCFD8 000D7080 */  sll        $t6, $t5, 2
    /* 18B02C 801DCFDC 020E7821 */  addu       $t7, $s0, $t6
    /* 18B030 801DCFE0 1000000C */  b          .L801DD014_ovl9
    /* 18B034 801DCFE4 ADF10000 */   sw        $s1, 0x0($t7)
  .L801DCFE8_ovl9:
    /* 18B038 801DCFE8 0C067694 */  jal        func_8019DA50_ovl7
    /* 18B03C 801DCFEC 00000000 */   nop
    /* 18B040 801DCFF0 4600A03C */  c.lt.s     $f20, $f0
    /* 18B044 801DCFF4 00000000 */  nop
    /* 18B048 801DCFF8 45000006 */  bc1f       .L801DD014_ovl9
    /* 18B04C 801DCFFC 00000000 */   nop
    /* 18B050 801DD000 8E590000 */  lw         $t9, 0x0($s2)
    /* 18B054 801DD004 8F280000 */  lw         $t0, 0x0($t9)
    /* 18B058 801DD008 0008C080 */  sll        $t8, $t0, 2
    /* 18B05C 801DD00C 02184821 */  addu       $t1, $s0, $t8
    /* 18B060 801DD010 AD310000 */  sw         $s1, 0x0($t1)
  .L801DD014_ovl9:
    /* 18B064 801DD014 0C002DAF */  jal        ohSleep
    /* 18B068 801DD018 02202025 */   or        $a0, $s1, $zero
    /* 18B06C 801DD01C 8E4A0000 */  lw         $t2, 0x0($s2)
    /* 18B070 801DD020 8D420000 */  lw         $v0, 0x0($t2)
    /* 18B074 801DD024 00021080 */  sll        $v0, $v0, 2
    /* 18B078 801DD028 02025821 */  addu       $t3, $s0, $v0
    /* 18B07C 801DD02C 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 18B080 801DD030 1180FFD9 */  beqz       $t4, .L801DCF98_ovl9
    /* 18B084 801DD034 00000000 */   nop
  .L801DD038_ovl9:
    /* 18B088 801DD038 0C002DAF */  jal        ohSleep
    /* 18B08C 801DD03C 2404000F */   addiu     $a0, $zero, 0xF
    /* 18B090 801DD040 1000002F */  b          .L801DD100_ovl9
    /* 18B094 801DD044 00000000 */   nop
  .L801DD048_ovl9:
    /* 18B098 801DD048 0C067694 */  jal        func_8019DA50_ovl7
    /* 18B09C 801DD04C 00000000 */   nop
    /* 18B0A0 801DD050 44803000 */  mtc1       $zero, $f6
    /* 18B0A4 801DD054 00000000 */  nop
    /* 18B0A8 801DD058 4606003C */  c.lt.s     $f0, $f6
    /* 18B0AC 801DD05C 00000000 */  nop
    /* 18B0B0 801DD060 45000005 */  bc1f       .L801DD078_ovl9
    /* 18B0B4 801DD064 00000000 */   nop
    /* 18B0B8 801DD068 0C067694 */  jal        func_8019DA50_ovl7
    /* 18B0BC 801DD06C 00000000 */   nop
    /* 18B0C0 801DD070 10000004 */  b          .L801DD084_ovl9
    /* 18B0C4 801DD074 46000087 */   neg.s     $f2, $f0
  .L801DD078_ovl9:
    /* 18B0C8 801DD078 0C067694 */  jal        func_8019DA50_ovl7
    /* 18B0CC 801DD07C 00000000 */   nop
    /* 18B0D0 801DD080 46000086 */  mov.s      $f2, $f0
  .L801DD084_ovl9:
    /* 18B0D4 801DD084 3C014370 */  lui        $at, (0x43700000 >> 16)
    /* 18B0D8 801DD088 44814000 */  mtc1       $at, $f8
    /* 18B0DC 801DD08C 00000000 */  nop
    /* 18B0E0 801DD090 4602403C */  c.lt.s     $f8, $f2
    /* 18B0E4 801DD094 00000000 */  nop
    /* 18B0E8 801DD098 45000019 */  bc1f       .L801DD100_ovl9
    /* 18B0EC 801DD09C 00000000 */   nop
  .L801DD0A0_ovl9:
    /* 18B0F0 801DD0A0 0C002DAF */  jal        ohSleep
    /* 18B0F4 801DD0A4 24040001 */   addiu     $a0, $zero, 0x1
    /* 18B0F8 801DD0A8 0C067694 */  jal        func_8019DA50_ovl7
    /* 18B0FC 801DD0AC 00000000 */   nop
    /* 18B100 801DD0B0 44805000 */  mtc1       $zero, $f10
    /* 18B104 801DD0B4 00000000 */  nop
    /* 18B108 801DD0B8 460A003C */  c.lt.s     $f0, $f10
    /* 18B10C 801DD0BC 00000000 */  nop
    /* 18B110 801DD0C0 45000005 */  bc1f       .L801DD0D8_ovl9
    /* 18B114 801DD0C4 00000000 */   nop
    /* 18B118 801DD0C8 0C067694 */  jal        func_8019DA50_ovl7
    /* 18B11C 801DD0CC 00000000 */   nop
    /* 18B120 801DD0D0 10000004 */  b          .L801DD0E4_ovl9
    /* 18B124 801DD0D4 46000087 */   neg.s     $f2, $f0
  .L801DD0D8_ovl9:
    /* 18B128 801DD0D8 0C067694 */  jal        func_8019DA50_ovl7
    /* 18B12C 801DD0DC 00000000 */   nop
    /* 18B130 801DD0E0 46000086 */  mov.s      $f2, $f0
  .L801DD0E4_ovl9:
    /* 18B134 801DD0E4 3C014370 */  lui        $at, (0x43700000 >> 16)
    /* 18B138 801DD0E8 44818000 */  mtc1       $at, $f16
    /* 18B13C 801DD0EC 00000000 */  nop
    /* 18B140 801DD0F0 4602803C */  c.lt.s     $f16, $f2
    /* 18B144 801DD0F4 00000000 */  nop
    /* 18B148 801DD0F8 4501FFE9 */  bc1t       .L801DD0A0_ovl9
    /* 18B14C 801DD0FC 00000000 */   nop
  .L801DD100_ovl9:
    /* 18B150 801DD100 3C10800D */  lui        $s0, %hi(gameTicksPerDraw)
    /* 18B154 801DD104 26106B10 */  addiu      $s0, $s0, %lo(gameTicksPerDraw)
    /* 18B158 801DD108 0C02BB30 */  jal        func_800AECC0
    /* 18B15C 801DD10C C60C0000 */   lwc1      $f12, 0x0($s0)
    /* 18B160 801DD110 0C02BB48 */  jal        func_800AED20
    /* 18B164 801DD114 C60C0000 */   lwc1      $f12, 0x0($s0)
    /* 18B168 801DD118 0C02BC9F */  jal        func_800AF27C
    /* 18B16C 801DD11C 00000000 */   nop
    /* 18B170 801DD120 0C02BB30 */  jal        func_800AECC0
    /* 18B174 801DD124 4600A306 */   mov.s     $f12, $f20
    /* 18B178 801DD128 0C02BB48 */  jal        func_800AED20
    /* 18B17C 801DD12C 4600A306 */   mov.s     $f12, $f20
    /* 18B180 801DD130 8E4D0000 */  lw         $t5, 0x0($s2)
    /* 18B184 801DD134 3C10800F */  lui        $s0, %hi(D_800E8920)
    /* 18B188 801DD138 26108920 */  addiu      $s0, $s0, %lo(D_800E8920)
    /* 18B18C 801DD13C 8DA20000 */  lw         $v0, 0x0($t5)
    /* 18B190 801DD140 3C19800F */  lui        $t9, %hi(D_800E8AE0)
    /* 18B194 801DD144 3C01800F */  lui        $at, %hi(D_800EAC20)
    /* 18B198 801DD148 00021080 */  sll        $v0, $v0, 2
    /* 18B19C 801DD14C 02027021 */  addu       $t6, $s0, $v0
    /* 18B1A0 801DD150 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 18B1A4 801DD154 0322C821 */  addu       $t9, $t9, $v0
    /* 18B1A8 801DD158 00220821 */  addu       $at, $at, $v0
    /* 18B1AC 801DD15C 15E00003 */  bnez       $t7, .L801DD16C_ovl9
    /* 18B1B0 801DD160 00000000 */   nop
    /* 18B1B4 801DD164 1000000F */  b          .L801DD1A4_ovl9
    /* 18B1B8 801DD168 E434AC20 */   swc1      $f20, %lo(D_800EAC20)($at)
  .L801DD16C_ovl9:
    /* 18B1BC 801DD16C 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
    /* 18B1C0 801DD170 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 18B1C4 801DD174 33280001 */  andi       $t0, $t9, 0x1
    /* 18B1C8 801DD178 51000006 */  beql       $t0, $zero, .L801DD194_ovl9
    /* 18B1CC 801DD17C 44811000 */   mtc1      $at, $f2
    /* 18B1D0 801DD180 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* 18B1D4 801DD184 44811000 */  mtc1       $at, $f2
    /* 18B1D8 801DD188 10000003 */  b          .L801DD198_ovl9
    /* 18B1DC 801DD18C 00000000 */   nop
    /* 18B1E0 801DD190 44811000 */  mtc1       $at, $f2
  .L801DD194_ovl9:
    /* 18B1E4 801DD194 00000000 */  nop
  .L801DD198_ovl9:
    /* 18B1E8 801DD198 3C01800F */  lui        $at, %hi(D_800EAC20)
    /* 18B1EC 801DD19C 00220821 */  addu       $at, $at, $v0
    /* 18B1F0 801DD1A0 E422AC20 */  swc1       $f2, %lo(D_800EAC20)($at)
  .L801DD1A4_ovl9:
    /* 18B1F4 801DD1A4 0C066A40 */  jal        func_8019A900_ovl7
    /* 18B1F8 801DD1A8 27A40048 */   addiu     $a0, $sp, 0x48
    /* 18B1FC 801DD1AC 1040000A */  beqz       $v0, .L801DD1D8_ovl9
    /* 18B200 801DD1B0 8FB80048 */   lw        $t8, 0x48($sp)
    /* 18B204 801DD1B4 8E430000 */  lw         $v1, 0x0($s2)
    /* 18B208 801DD1B8 44989000 */  mtc1       $t8, $f18
    /* 18B20C 801DD1BC 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 18B210 801DD1C0 8C690000 */  lw         $t1, 0x0($v1)
    /* 18B214 801DD1C4 46809120 */  cvt.s.w    $f4, $f18
    /* 18B218 801DD1C8 00095080 */  sll        $t2, $t1, 2
    /* 18B21C 801DD1CC 002A0821 */  addu       $at, $at, $t2
    /* 18B220 801DD1D0 10000009 */  b          .L801DD1F8_ovl9
    /* 18B224 801DD1D4 E4246A10 */   swc1      $f4, %lo(D_800E6A10)($at)
  .L801DD1D8_ovl9:
    /* 18B228 801DD1D8 0C066D82 */  jal        func_8019B608_ovl7
    /* 18B22C 801DD1DC 00002025 */   or        $a0, $zero, $zero
    /* 18B230 801DD1E0 8E430000 */  lw         $v1, 0x0($s2)
    /* 18B234 801DD1E4 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 18B238 801DD1E8 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 18B23C 801DD1EC 000B6080 */  sll        $t4, $t3, 2
    /* 18B240 801DD1F0 002C0821 */  addu       $at, $at, $t4
    /* 18B244 801DD1F4 E4206A10 */  swc1       $f0, %lo(D_800E6A10)($at)
  .L801DD1F8_ovl9:
    /* 18B248 801DD1F8 8C620000 */  lw         $v0, 0x0($v1)
    /* 18B24C 801DD1FC 24010001 */  addiu      $at, $zero, 0x1
    /* 18B250 801DD200 00021080 */  sll        $v0, $v0, 2
    /* 18B254 801DD204 02026821 */  addu       $t5, $s0, $v0
    /* 18B258 801DD208 8DA40000 */  lw         $a0, 0x0($t5)
    /* 18B25C 801DD20C 1481000A */  bne        $a0, $at, .L801DD238_ovl9
    /* 18B260 801DD210 00000000 */   nop
    /* 18B264 801DD214 0C029D9E */  jal        play_sound
    /* 18B268 801DD218 240400A4 */   addiu     $a0, $zero, 0xA4
    /* 18B26C 801DD21C 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 18B270 801DD220 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 18B274 801DD224 3C04800F */  lui        $a0, %hi(D_800E8920)
    /* 18B278 801DD228 8DC20000 */  lw         $v0, 0x0($t6)
    /* 18B27C 801DD22C 00021080 */  sll        $v0, $v0, 2
    /* 18B280 801DD230 00822021 */  addu       $a0, $a0, $v0
    /* 18B284 801DD234 8C848920 */  lw         $a0, %lo(D_800E8920)($a0)
  .L801DD238_ovl9:
    /* 18B288 801DD238 14800006 */  bnez       $a0, .L801DD254_ovl9
    /* 18B28C 801DD23C 24190003 */   addiu     $t9, $zero, 0x3
    /* 18B290 801DD240 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 18B294 801DD244 00220821 */  addu       $at, $at, $v0
    /* 18B298 801DD248 240F0004 */  addiu      $t7, $zero, 0x4
    /* 18B29C 801DD24C 10000004 */  b          .L801DD260_ovl9
    /* 18B2A0 801DD250 AC2FDC50 */   sw        $t7, %lo(gEntityFuncListIDArray)($at)
  .L801DD254_ovl9:
    /* 18B2A4 801DD254 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 18B2A8 801DD258 00220821 */  addu       $at, $at, $v0
    /* 18B2AC 801DD25C AC39DC50 */  sw         $t9, %lo(gEntityFuncListIDArray)($at)
  .L801DD260_ovl9:
    /* 18B2B0 801DD260 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 18B2B4 801DD264 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 18B2B8 801DD268 8FB00020 */  lw         $s0, 0x20($sp)
    /* 18B2BC 801DD26C 8FB10024 */  lw         $s1, 0x24($sp)
    /* 18B2C0 801DD270 8FB20028 */  lw         $s2, 0x28($sp)
    /* 18B2C4 801DD274 03E00008 */  jr         $ra
    /* 18B2C8 801DD278 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_801DCE6C_ovl9
.size func_801DCE6C_ovl9, . - func_801DCE6C_ovl9
