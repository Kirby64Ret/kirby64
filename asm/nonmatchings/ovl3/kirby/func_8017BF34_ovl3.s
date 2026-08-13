nonmatching func_8017BF34_ovl3, 0x2C8

glabel func_8017BF34_ovl3
    /* DC974 8017BF34 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* DC978 8017BF38 AFB00018 */  sw         $s0, 0x18($sp)
    /* DC97C 8017BF3C 3C108013 */  lui        $s0, %hi(gKirbyState)
    /* DC980 8017BF40 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
    /* DC984 8017BF44 8E0E00A0 */  lw         $t6, 0xA0($s0)
    /* DC988 8017BF48 AFBF001C */  sw         $ra, 0x1C($sp)
    /* DC98C 8017BF4C AFA40020 */  sw         $a0, 0x20($sp)
    /* DC990 8017BF50 55C00052 */  bnel       $t6, $zero, .L8017C09C_ovl3
    /* DC994 8017BF54 8E020044 */   lw        $v0, 0x44($s0)
    /* DC998 8017BF58 44802000 */  mtc1       $zero, $f4
    /* DC99C 8017BF5C AE000030 */  sw         $zero, 0x30($s0)
    /* DC9A0 8017BF60 A2000007 */  sb         $zero, 0x7($s0)
    /* DC9A4 8017BF64 E604007C */  swc1       $f4, 0x7C($s0)
    /* DC9A8 8017BF68 C606007C */  lwc1       $f6, 0x7C($s0)
    /* DC9AC 8017BF6C A200000A */  sb         $zero, 0xA($s0)
    /* DC9B0 8017BF70 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* DC9B4 8017BF74 E6060080 */  swc1       $f6, 0x80($s0)
    /* DC9B8 8017BF78 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* DC9BC 8017BF7C 3C08800F */  lui        $t0, %hi(D_800E8AE0)
    /* DC9C0 8017BF80 240A0014 */  addiu      $t2, $zero, 0x14
    /* DC9C4 8017BF84 8DF80000 */  lw         $t8, 0x0($t7)
    /* DC9C8 8017BF88 240B000A */  addiu      $t3, $zero, 0xA
    /* DC9CC 8017BF8C 0018C880 */  sll        $t9, $t8, 2
    /* DC9D0 8017BF90 01194021 */  addu       $t0, $t0, $t9
    /* DC9D4 8017BF94 8D088AE0 */  lw         $t0, %lo(D_800E8AE0)($t0)
    /* DC9D8 8017BF98 31090006 */  andi       $t1, $t0, 0x6
    /* DC9DC 8017BF9C 51200004 */  beql       $t1, $zero, .L8017BFB0_ovl3
    /* DC9E0 8017BFA0 A20B0016 */   sb        $t3, 0x16($s0)
    /* DC9E4 8017BFA4 10000002 */  b          .L8017BFB0_ovl3
    /* DC9E8 8017BFA8 A20A0016 */   sb        $t2, 0x16($s0)
    /* DC9EC 8017BFAC A20B0016 */  sb         $t3, 0x16($s0)
  .L8017BFB0_ovl3:
    /* DC9F0 8017BFB0 0C0473D6 */  jal        func_8011CF58
    /* DC9F4 8017BFB4 00000000 */   nop
    /* DC9F8 8017BFB8 8E0C0090 */  lw         $t4, 0x90($s0)
    /* DC9FC 8017BFBC 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* DCA00 8017BFC0 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* DCA04 8017BFC4 AE0C00A0 */  sw         $t4, 0xA0($s0)
    /* DCA08 8017BFC8 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* DCA0C 8017BFCC 240D0026 */  addiu      $t5, $zero, 0x26
    /* DCA10 8017BFD0 3C188019 */  lui        $t8, %hi(D_801926E8_ovl3)
    /* DCA14 8017BFD4 8C4E0000 */  lw         $t6, 0x0($v0)
    /* DCA18 8017BFD8 271826E8 */  addiu      $t8, $t8, %lo(D_801926E8_ovl3)
    /* DCA1C 8017BFDC 3C098019 */  lui        $t1, %hi(D_80190358_ovl3)
    /* DCA20 8017BFE0 000E7880 */  sll        $t7, $t6, 2
    /* DCA24 8017BFE4 002F0821 */  addu       $at, $at, $t7
    /* DCA28 8017BFE8 AC2DDFD0 */  sw         $t5, %lo(D_800DDFD0)($at)
    /* DCA2C 8017BFEC 8C590000 */  lw         $t9, 0x0($v0)
    /* DCA30 8017BFF0 3C01800E */  lui        $at, %hi(D_800E0490)
    /* DCA34 8017BFF4 25290358 */  addiu      $t1, $t1, %lo(D_80190358_ovl3)
    /* DCA38 8017BFF8 00194080 */  sll        $t0, $t9, 2
    /* DCA3C 8017BFFC 00280821 */  addu       $at, $at, $t0
    /* DCA40 8017C000 AC380490 */  sw         $t8, %lo(D_800E0490)($at)
    /* DCA44 8017C004 240A0002 */  addiu      $t2, $zero, 0x2
    /* DCA48 8017C008 AE09015C */  sw         $t1, 0x15C($s0)
    /* DCA4C 8017C00C 0C04828A */  jal        func_80120A28
    /* DCA50 8017C010 AE0A0154 */   sw        $t2, 0x154($s0)
    /* DCA54 8017C014 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* DCA58 8017C018 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* DCA5C 8017C01C 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* DCA60 8017C020 24040006 */  addiu      $a0, $zero, 0x6
    /* DCA64 8017C024 8D6C0000 */  lw         $t4, 0x0($t3)
    /* DCA68 8017C028 000C7080 */  sll        $t6, $t4, 2
    /* DCA6C 8017C02C 002E0821 */  addu       $at, $at, $t6
    /* DCA70 8017C030 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
    /* DCA74 8017C034 46004287 */  neg.s      $f10, $f8
    /* DCA78 8017C038 0C05A4F1 */  jal        func_801693C4_ovl3
    /* DCA7C 8017C03C E60A0078 */   swc1      $f10, 0x78($s0)
    /* DCA80 8017C040 0C047701 */  jal        func_8011DC04
    /* DCA84 8017C044 24040056 */   addiu     $a0, $zero, 0x56
    /* DCA88 8017C048 3C040002 */  lui        $a0, (0x20077 >> 16)
    /* DCA8C 8017C04C 3C050002 */  lui        $a1, (0x20078 >> 16)
    /* DCA90 8017C050 AE00003C */  sw         $zero, 0x3C($s0)
    /* DCA94 8017C054 AE000044 */  sw         $zero, 0x44($s0)
    /* DCA98 8017C058 34A50078 */  ori        $a1, $a1, (0x20078 & 0xFFFF)
    /* DCA9C 8017C05C 34840077 */  ori        $a0, $a0, (0x20077 & 0xFFFF)
    /* DCAA0 8017C060 0C048C3A */  jal        func_801230E8
    /* DCAA4 8017C064 24060001 */   addiu     $a2, $zero, 0x1
    /* DCAA8 8017C068 3C0F800D */  lui        $t7, %hi(gKirbyController)
    /* DCAAC 8017C06C 95EF6FE8 */  lhu        $t7, %lo(gKirbyController)($t7)
    /* DCAB0 8017C070 24180002 */  addiu      $t8, $zero, 0x2
    /* DCAB4 8017C074 24090001 */  addiu      $t1, $zero, 0x1
    /* DCAB8 8017C078 31F90300 */  andi       $t9, $t7, 0x300
    /* DCABC 8017C07C 53200005 */  beql       $t9, $zero, .L8017C094_ovl3
    /* DCAC0 8017C080 AE09003C */   sw        $t1, 0x3C($s0)
    /* DCAC4 8017C084 AE18003C */  sw         $t8, 0x3C($s0)
    /* DCAC8 8017C088 10000003 */  b          .L8017C098_ovl3
    /* DCACC 8017C08C AE180044 */   sw        $t8, 0x44($s0)
    /* DCAD0 8017C090 AE09003C */  sw         $t1, 0x3C($s0)
  .L8017C094_ovl3:
    /* DCAD4 8017C094 AE090044 */  sw         $t1, 0x44($s0)
  .L8017C098_ovl3:
    /* DCAD8 8017C098 8E020044 */  lw         $v0, 0x44($s0)
  .L8017C09C_ovl3:
    /* DCADC 8017C09C 24010001 */  addiu      $at, $zero, 0x1
    /* DCAE0 8017C0A0 3C040002 */  lui        $a0, (0x20079 >> 16)
    /* DCAE4 8017C0A4 10410008 */  beq        $v0, $at, .L8017C0C8_ovl3
    /* DCAE8 8017C0A8 34840079 */   ori       $a0, $a0, (0x20079 & 0xFFFF)
    /* DCAEC 8017C0AC 24010002 */  addiu      $at, $zero, 0x2
    /* DCAF0 8017C0B0 1041000B */  beq        $v0, $at, .L8017C0E0_ovl3
    /* DCAF4 8017C0B4 24010003 */   addiu     $at, $zero, 0x3
    /* DCAF8 8017C0B8 10410036 */  beq        $v0, $at, .L8017C194_ovl3
    /* DCAFC 8017C0BC 00000000 */   nop
    /* DCB00 8017C0C0 10000034 */  b          .L8017C194_ovl3
    /* DCB04 8017C0C4 00000000 */   nop
  .L8017C0C8_ovl3:
    /* DCB08 8017C0C8 3C050002 */  lui        $a1, (0x2007A >> 16)
    /* DCB0C 8017C0CC 34A5007A */  ori        $a1, $a1, (0x2007A & 0xFFFF)
    /* DCB10 8017C0D0 0C048C3A */  jal        func_801230E8
    /* DCB14 8017C0D4 24060001 */   addiu     $a2, $zero, 0x1
    /* DCB18 8017C0D8 0C02BE85 */  jal        curObjSleepForever
    /* DCB1C 8017C0DC 00000000 */   nop
  .L8017C0E0_ovl3:
    /* DCB20 8017C0E0 0C04842D */  jal        func_801210B4
    /* DCB24 8017C0E4 00000000 */   nop
    /* DCB28 8017C0E8 24010001 */  addiu      $at, $zero, 0x1
    /* DCB2C 8017C0EC 14410012 */  bne        $v0, $at, .L8017C138_ovl3
    /* DCB30 8017C0F0 3C040002 */   lui       $a0, (0x20085 >> 16)
    /* DCB34 8017C0F4 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* DCB38 8017C0F8 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* DCB3C 8017C0FC 3C013E80 */  lui        $at, (0x3E800000 >> 16)
    /* DCB40 8017C100 44818000 */  mtc1       $at, $f16
    /* DCB44 8017C104 8C4B0000 */  lw         $t3, 0x0($v0)
    /* DCB48 8017C108 3C01800E */  lui        $at, %hi(D_800E6690)
    /* DCB4C 8017C10C 000B6080 */  sll        $t4, $t3, 2
    /* DCB50 8017C110 002C0821 */  addu       $at, $at, $t4
    /* DCB54 8017C114 E4306690 */  swc1       $f16, %lo(D_800E6690)($at)
    /* DCB58 8017C118 8C4E0000 */  lw         $t6, 0x0($v0)
    /* DCB5C 8017C11C 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* DCB60 8017C120 44819000 */  mtc1       $at, $f18
    /* DCB64 8017C124 3C01800E */  lui        $at, %hi(D_800E6850)
    /* DCB68 8017C128 000E6880 */  sll        $t5, $t6, 2
    /* DCB6C 8017C12C 002D0821 */  addu       $at, $at, $t5
    /* DCB70 8017C130 10000011 */  b          .L8017C178_ovl3
    /* DCB74 8017C134 E4326850 */   swc1      $f18, %lo(D_800E6850)($at)
  .L8017C138_ovl3:
    /* DCB78 8017C138 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* DCB7C 8017C13C 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* DCB80 8017C140 3C01BE80 */  lui        $at, (0xBE800000 >> 16)
    /* DCB84 8017C144 44812000 */  mtc1       $at, $f4
    /* DCB88 8017C148 8C4F0000 */  lw         $t7, 0x0($v0)
    /* DCB8C 8017C14C 3C01800E */  lui        $at, %hi(D_800E6690)
    /* DCB90 8017C150 000FC880 */  sll        $t9, $t7, 2
    /* DCB94 8017C154 00390821 */  addu       $at, $at, $t9
    /* DCB98 8017C158 E4246690 */  swc1       $f4, %lo(D_800E6690)($at)
    /* DCB9C 8017C15C 8C580000 */  lw         $t8, 0x0($v0)
    /* DCBA0 8017C160 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* DCBA4 8017C164 44813000 */  mtc1       $at, $f6
    /* DCBA8 8017C168 3C01800E */  lui        $at, %hi(D_800E6850)
    /* DCBAC 8017C16C 00184080 */  sll        $t0, $t8, 2
    /* DCBB0 8017C170 00280821 */  addu       $at, $at, $t0
    /* DCBB4 8017C174 E4266850 */  swc1       $f6, %lo(D_800E6850)($at)
  .L8017C178_ovl3:
    /* DCBB8 8017C178 3C050002 */  lui        $a1, (0x20086 >> 16)
    /* DCBBC 8017C17C 34A50086 */  ori        $a1, $a1, (0x20086 & 0xFFFF)
    /* DCBC0 8017C180 34840085 */  ori        $a0, $a0, (0x20085 & 0xFFFF)
    /* DCBC4 8017C184 0C048C3A */  jal        func_801230E8
    /* DCBC8 8017C188 00003025 */   or        $a2, $zero, $zero
    /* DCBCC 8017C18C 0C02BE85 */  jal        curObjSleepForever
    /* DCBD0 8017C190 00000000 */   nop
  .L8017C194_ovl3:
    /* DCBD4 8017C194 0C047717 */  jal        func_8011DC5C
    /* DCBD8 8017C198 00000000 */   nop
    /* DCBDC 8017C19C AE0000A0 */  sw         $zero, 0xA0($s0)
    /* DCBE0 8017C1A0 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* DCBE4 8017C1A4 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* DCBE8 8017C1A8 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* DCBEC 8017C1AC 3C040002 */  lui        $a0, (0x2007B >> 16)
    /* DCBF0 8017C1B0 8D2A0000 */  lw         $t2, 0x0($t1)
    /* DCBF4 8017C1B4 3C050002 */  lui        $a1, (0x2007C >> 16)
    /* DCBF8 8017C1B8 34A5007C */  ori        $a1, $a1, (0x2007C & 0xFFFF)
    /* DCBFC 8017C1BC 000A5880 */  sll        $t3, $t2, 2
    /* DCC00 8017C1C0 002B0821 */  addu       $at, $at, $t3
    /* DCC04 8017C1C4 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
    /* DCC08 8017C1C8 3484007B */  ori        $a0, $a0, (0x2007B & 0xFFFF)
    /* DCC0C 8017C1CC 24060001 */  addiu      $a2, $zero, 0x1
    /* DCC10 8017C1D0 0C048C3A */  jal        func_801230E8
    /* DCC14 8017C1D4 E6080078 */   swc1      $f8, 0x78($s0)
    /* DCC18 8017C1D8 8E0C0030 */  lw         $t4, 0x30($s0)
    /* DCC1C 8017C1DC 258E0001 */  addiu      $t6, $t4, 0x1
    /* DCC20 8017C1E0 0C02BE85 */  jal        curObjSleepForever
    /* DCC24 8017C1E4 AE0E0030 */   sw        $t6, 0x30($s0)
    /* DCC28 8017C1E8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* DCC2C 8017C1EC 8FB00018 */  lw         $s0, 0x18($sp)
    /* DCC30 8017C1F0 27BD0020 */  addiu      $sp, $sp, 0x20
    /* DCC34 8017C1F4 03E00008 */  jr         $ra
    /* DCC38 8017C1F8 00000000 */   nop
endlabel func_8017BF34_ovl3
.size func_8017BF34_ovl3, . - func_8017BF34_ovl3
