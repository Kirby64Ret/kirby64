glabel func_801548BC_ovl4
/* FBDEC 801548BC 27BDFF78 */  addiu      $sp, $sp, -0x88
/* FBDF0 801548C0 AFB30044 */  sw         $s3, 0x44($sp)
/* FBDF4 801548C4 3C138005 */  lui        $s3, %hi(D_8004A7C4)
/* FBDF8 801548C8 2673A7C4 */  addiu      $s3, $s3, %lo(D_8004A7C4)
/* FBDFC 801548CC 8E6F0000 */  lw         $t7, 0x0($s3)
/* FBE00 801548D0 AFBF005C */  sw         $ra, 0x5C($sp)
/* FBE04 801548D4 AFBE0058 */  sw         $fp, 0x58($sp)
/* FBE08 801548D8 AFB70054 */  sw         $s7, 0x54($sp)
glabel func_801548DC_ovl6
/* FBE0C 801548DC AFB60050 */  sw         $s6, 0x50($sp)
/* FBE10 801548E0 AFB5004C */  sw         $s5, 0x4C($sp)
/* FBE14 801548E4 AFB40048 */  sw         $s4, 0x48($sp)
.L801548E8_ovl6:
/* FBE18 801548E8 AFB20040 */  sw         $s2, 0x40($sp)
.L801548EC_ovl6:
/* FBE1C 801548EC AFB1003C */  sw         $s1, 0x3C($sp)
/* FBE20 801548F0 AFB00038 */  sw         $s0, 0x38($sp)
/* FBE24 801548F4 F7BA0030 */  sdc1       $f26, 0x30($sp)
glabel func_801548F8_ovl6
/* FBE28 801548F8 F7B80028 */  sdc1       $f24, 0x28($sp)
/* FBE2C 801548FC F7B60020 */  sdc1       $f22, 0x20($sp)
/* FBE30 80154900 F7B40018 */  sdc1       $f20, 0x18($sp)
/* FBE34 80154904 8DF80000 */  lw         $t8, 0x0($t7)
/* FBE38 80154908 4480A000 */  mtc1       $zero, $f20
/* FBE3C 8015490C 3C0E8015 */  lui        $t6, %hi(func_80154DA0_ovl4)
/* FBE40 80154910 3C01800E */  lui        $at, %hi(D_800DF150)
/* FBE44 80154914 0018C880 */  sll        $t9, $t8, 2
/* FBE48 80154918 00390821 */  addu       $at, $at, $t9
/* FBE4C 8015491C 25CE4DA0 */  addiu      $t6, $t6, %lo(func_80154DA0_ovl4)
.L80154920_ovl6:
/* FBE50 80154920 241E0001 */  addiu      $fp, $zero, 0x1
/* FBE54 80154924 AC2EF150 */  sw         $t6, %lo(D_800DF150)($at)
/* FBE58 80154928 0C02BB30 */  jal        func_800AECC0
/* FBE5C 8015492C 4600A306 */   mov.s     $f12, $f20
/* FBE60 80154930 0C02BB48 */  jal        func_800AED20
/* FBE64 80154934 4600A306 */   mov.s     $f12, $f20
glabel func_80154938_ovl6
/* FBE68 80154938 3C048016 */  lui        $a0, %hi(func_8015A92C_ovl3 + 0x1C)
/* FBE6C 8015493C 3C050001 */  lui        $a1, (0x1869F >> 16)
/* FBE70 80154940 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* FBE74 80154944 8C84A948 */  lw         $a0, %lo(func_8015A92C_ovl3 + 0x1C)($a0)
/* FBE78 80154948 0C02A619 */  jal        func_800A9864
/* FBE7C 8015494C 24060010 */   addiu     $a2, $zero, 0x10
/* FBE80 80154950 3C088016 */  lui        $t0, %hi(D_8015C698_ovl4)
/* FBE84 80154954 8D08C698 */  lw         $t0, %lo(D_8015C698_ovl4)($t0)
/* FBE88 80154958 8E650000 */  lw         $a1, 0x0($s3)
/* FBE8C 8015495C 3C06800F */  lui        $a2, %hi(D_800E9FE0)
/* FBE90 80154960 00084880 */  sll        $t1, $t0, 2
/* FBE94 80154964 8CAB0000 */  lw         $t3, 0x0($a1)
/* FBE98 80154968 00C93021 */  addu       $a2, $a2, $t1
/* FBE9C 8015496C 8CC69FE0 */  lw         $a2, %lo(D_800E9FE0)($a2)
/* FBEA0 80154970 3C14800F */  lui        $s4, %hi(D_800E98E0)
/* FBEA4 80154974 269498E0 */  addiu      $s4, $s4, %lo(D_800E98E0)
/* FBEA8 80154978 000B6080 */  sll        $t4, $t3, 2
/* FBEAC 8015497C 028C6821 */  addu       $t5, $s4, $t4
/* FBEB0 80154980 24CA0001 */  addiu      $t2, $a2, 0x1
/* FBEB4 80154984 ADAA0000 */  sw         $t2, 0x0($t5)
/* FBEB8 80154988 3C018016 */  lui        $at, %hi(D_8015C518_ovl4)
/* FBEBC 8015498C C43AC518 */  lwc1       $f26, %lo(D_8015C518_ovl4)($at)
/* FBEC0 80154990 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* FBEC4 80154994 4481C000 */  mtc1       $at, $f24
/* FBEC8 80154998 3C018016 */  lui        $at, %hi(.L8015C51C_ovl4)
/* FBECC 8015499C 3C178016 */  lui        $s7, %hi(func_8015A92C_ovl3 + 0x20)
/* FBED0 801549A0 3C16800D */  lui        $s6, %hi(D_800D6B98)
/* FBED4 801549A4 3C12800E */  lui        $s2, %hi(gEntitiesScaleZArray)
/* FBED8 801549A8 3C11800E */  lui        $s1, %hi(gEntitiesScaleYArray)
/* FBEDC 801549AC 3C10800E */  lui        $s0, %hi(gEntitiesScaleXArray)
/* FBEE0 801549B0 26104550 */  addiu      $s0, $s0, %lo(gEntitiesScaleXArray)
/* FBEE4 801549B4 26314710 */  addiu      $s1, $s1, %lo(gEntitiesScaleYArray)
/* FBEE8 801549B8 265248D0 */  addiu      $s2, $s2, %lo(gEntitiesScaleZArray)
/* FBEEC 801549BC 26D66B98 */  addiu      $s6, $s6, %lo(D_800D6B98)
/* FBEF0 801549C0 26F7A94C */  addiu      $s7, $s7, %lo(func_8015A92C_ovl3 + 0x20)
/* FBEF4 801549C4 C436C51C */  lwc1       $f22, %lo(.L8015C51C_ovl4)($at)
.L801549C8_ovl3:
/* FBEF8 801549C8 2415029A */  addiu      $s5, $zero, 0x29A
.L801549CC_ovl4:
/* FBEFC 801549CC 8CA30000 */  lw         $v1, 0x0($a1)
.L801549D0_ovl6:
/* FBF00 801549D0 00031880 */  sll        $v1, $v1, 2
.L801549D4_ovl3:
/* FBF04 801549D4 02831021 */  addu       $v0, $s4, $v1
.L801549D8_ovl6:
/* FBF08 801549D8 8C440000 */  lw         $a0, 0x0($v0)
/* FBF0C 801549DC 108600AE */  beq        $a0, $a2, .L80154C98_ovl4
/* FBF10 801549E0 00000000 */   nop
/* FBF14 801549E4 AC460000 */  sw         $a2, 0x0($v0)
/* FBF18 801549E8 8CA30000 */  lw         $v1, 0x0($a1)
/* FBF1C 801549EC 00031880 */  sll        $v1, $v1, 2
/* FBF20 801549F0 02837821 */  addu       $t7, $s4, $v1
/* FBF24 801549F4 8DE40000 */  lw         $a0, 0x0($t7)
/* FBF28 801549F8 02031021 */  addu       $v0, $s0, $v1
/* FBF2C 801549FC 52A40004 */  beql       $s5, $a0, .L80154A10_ovl4
/* FBF30 80154A00 C4400000 */   lwc1      $f0, 0x0($v0)
/* FBF34 80154A04 14800033 */  bnez       $a0, .L80154AD4_ovl4
/* FBF38 80154A08 00000000 */   nop
/* FBF3C 80154A0C C4400000 */  lwc1       $f0, 0x0($v0)
.L80154A10_ovl4:
/* FBF40 80154A10 4600A03C */  c.lt.s     $f20, $f0
/* FBF44 80154A14 00000000 */  nop
/* FBF48 80154A18 4500009F */  bc1f       .L80154C98_ovl4
/* FBF4C 80154A1C 00000000 */   nop
/* FBF50 80154A20 46160100 */  add.s      $f4, $f0, $f22
.L80154A24_ovl4:
/* FBF54 80154A24 E4440000 */  swc1       $f4, 0x0($v0)
/* FBF58 80154A28 8CB80000 */  lw         $t8, 0x0($a1)
.L80154A2C_ovl3:
/* FBF5C 80154A2C 00187080 */  sll        $t6, $t8, 2
/* FBF60 80154A30 022E1821 */  addu       $v1, $s1, $t6
/* FBF64 80154A34 C4660000 */  lwc1       $f6, 0x0($v1)
/* FBF68 80154A38 46163200 */  add.s      $f8, $f6, $f22
.L80154A3C_ovl3:
/* FBF6C 80154A3C E4680000 */  swc1       $f8, 0x0($v1)
glabel func_80154A40_ovl6
/* FBF70 80154A40 8CB90000 */  lw         $t9, 0x0($a1)
/* FBF74 80154A44 00194080 */  sll        $t0, $t9, 2
/* FBF78 80154A48 02482021 */  addu       $a0, $s2, $t0
/* FBF7C 80154A4C C48A0000 */  lwc1       $f10, 0x0($a0)
/* FBF80 80154A50 46165400 */  add.s      $f16, $f10, $f22
/* FBF84 80154A54 E4900000 */  swc1       $f16, 0x0($a0)
/* FBF88 80154A58 8CA90000 */  lw         $t1, 0x0($a1)
/* FBF8C 80154A5C 00095880 */  sll        $t3, $t1, 2
/* FBF90 80154A60 020B1021 */  addu       $v0, $s0, $t3
/* FBF94 80154A64 C4520000 */  lwc1       $f18, 0x0($v0)
/* FBF98 80154A68 4614903C */  c.lt.s     $f18, $f20
/* FBF9C 80154A6C 00000000 */  nop
/* FBFA0 80154A70 4500000A */  bc1f       .L80154A9C_ovl4
.L80154A74_ovl6:
/* FBFA4 80154A74 00000000 */   nop
/* FBFA8 80154A78 E4540000 */  swc1       $f20, 0x0($v0)
/* FBFAC 80154A7C 8CAC0000 */  lw         $t4, 0x0($a1)
/* FBFB0 80154A80 000C5080 */  sll        $t2, $t4, 2
/* FBFB4 80154A84 022A6821 */  addu       $t5, $s1, $t2
/* FBFB8 80154A88 E5B40000 */  swc1       $f20, 0x0($t5)
/* FBFBC 80154A8C 8CAF0000 */  lw         $t7, 0x0($a1)
.L80154A90_ovl6:
/* FBFC0 80154A90 000FC080 */  sll        $t8, $t7, 2
/* FBFC4 80154A94 02587021 */  addu       $t6, $s2, $t8
/* FBFC8 80154A98 E5D40000 */  swc1       $f20, 0x0($t6)
.L80154A9C_ovl4:
/* FBFCC 80154A9C 0C002DAF */  jal        finish_current_thread
/* FBFD0 80154AA0 24040001 */   addiu     $a0, $zero, 0x1
/* FBFD4 80154AA4 8E650000 */  lw         $a1, 0x0($s3)
.L80154AA8_ovl6:
/* FBFD8 80154AA8 8CA30000 */  lw         $v1, 0x0($a1)
/* FBFDC 80154AAC 00031880 */  sll        $v1, $v1, 2
/* FBFE0 80154AB0 02031021 */  addu       $v0, $s0, $v1
/* FBFE4 80154AB4 C4400000 */  lwc1       $f0, 0x0($v0)
/* FBFE8 80154AB8 4600A03C */  c.lt.s     $f20, $f0
/* FBFEC 80154ABC 00000000 */  nop
/* FBFF0 80154AC0 4503FFD8 */  bc1tl      .L80154A24_ovl4
/* FBFF4 80154AC4 46160100 */   add.s     $f4, $f0, $f22
/* FBFF8 80154AC8 0283C821 */  addu       $t9, $s4, $v1
/* FBFFC 80154ACC 10000072 */  b          .L80154C98_ovl4
.L80154AD0_ovl6:
/* FC000 80154AD0 8F240000 */   lw        $a0, 0x0($t9)
.L80154AD4_ovl4:
/* FC004 80154AD4 13C00003 */  beqz       $fp, .L80154AE4_ovl6
/* FC008 80154AD8 00000000 */   nop
.L80154ADC_ovl6:
/* FC00C 80154ADC 10000036 */  b          .L80154BB8_ovl4
/* FC010 80154AE0 0000F025 */   or        $fp, $zero, $zero
.L80154AE4_ovl6:
/* FC014 80154AE4 0C029D9E */  jal        play_sound
.L80154AE8_ovl6:
/* FC018 80154AE8 24040277 */   addiu     $a0, $zero, 0x277
/* FC01C 80154AEC 8E650000 */  lw         $a1, 0x0($s3)
/* FC020 80154AF0 8CA30000 */  lw         $v1, 0x0($a1)
/* FC024 80154AF4 00031880 */  sll        $v1, $v1, 2
/* FC028 80154AF8 02031021 */  addu       $v0, $s0, $v1
/* FC02C 80154AFC C4400000 */  lwc1       $f0, 0x0($v0)
/* FC030 80154B00 4600A03C */  c.lt.s     $f20, $f0
/* FC034 80154B04 00000000 */  nop
/* FC038 80154B08 4502002C */  bc1fl      .L80154BBC_ovl4
.L80154B0C_ovl6:
/* FC03C 80154B0C 02835821 */   addu      $t3, $s4, $v1
/* FC040 80154B10 46160100 */  add.s      $f4, $f0, $f22
glabel func_80154B14_ovl6
/* FC044 80154B14 E4440000 */  swc1       $f4, 0x0($v0)
/* FC048 80154B18 8CA80000 */  lw         $t0, 0x0($a1)
/* FC04C 80154B1C 00084880 */  sll        $t1, $t0, 2
/* FC050 80154B20 02291821 */  addu       $v1, $s1, $t1
/* FC054 80154B24 C4660000 */  lwc1       $f6, 0x0($v1)
.L80154B28_ovl3:
/* FC058 80154B28 46163200 */  add.s      $f8, $f6, $f22
/* FC05C 80154B2C E4680000 */  swc1       $f8, 0x0($v1)
/* FC060 80154B30 8CAB0000 */  lw         $t3, 0x0($a1)
/* FC064 80154B34 000B6080 */  sll        $t4, $t3, 2
/* FC068 80154B38 024C2021 */  addu       $a0, $s2, $t4
/* FC06C 80154B3C C48A0000 */  lwc1       $f10, 0x0($a0)
/* FC070 80154B40 46165400 */  add.s      $f16, $f10, $f22
/* FC074 80154B44 E4900000 */  swc1       $f16, 0x0($a0)
/* FC078 80154B48 8CAA0000 */  lw         $t2, 0x0($a1)
/* FC07C 80154B4C 000A6880 */  sll        $t5, $t2, 2
/* FC080 80154B50 020D1021 */  addu       $v0, $s0, $t5
/* FC084 80154B54 C4520000 */  lwc1       $f18, 0x0($v0)
/* FC088 80154B58 4614903C */  c.lt.s     $f18, $f20
/* FC08C 80154B5C 00000000 */  nop
/* FC090 80154B60 4500000A */  bc1f       .L80154B8C_ovl4
/* FC094 80154B64 00000000 */   nop
/* FC098 80154B68 E4540000 */  swc1       $f20, 0x0($v0)
/* FC09C 80154B6C 8CAF0000 */  lw         $t7, 0x0($a1)
/* FC0A0 80154B70 000FC080 */  sll        $t8, $t7, 2
/* FC0A4 80154B74 02387021 */  addu       $t6, $s1, $t8
/* FC0A8 80154B78 E5D40000 */  swc1       $f20, 0x0($t6)
/* FC0AC 80154B7C 8CB90000 */  lw         $t9, 0x0($a1)
/* FC0B0 80154B80 00194080 */  sll        $t0, $t9, 2
/* FC0B4 80154B84 02484821 */  addu       $t1, $s2, $t0
/* FC0B8 80154B88 E5340000 */  swc1       $f20, 0x0($t1)
.L80154B8C_ovl4:
/* FC0BC 80154B8C 0C002DAF */  jal        finish_current_thread
/* FC0C0 80154B90 24040001 */   addiu     $a0, $zero, 0x1
/* FC0C4 80154B94 8E650000 */  lw         $a1, 0x0($s3)
/* FC0C8 80154B98 8CA30000 */  lw         $v1, 0x0($a1)
/* FC0CC 80154B9C 00031880 */  sll        $v1, $v1, 2
glabel func_80154BA0_ovl6
/* FC0D0 80154BA0 02031021 */  addu       $v0, $s0, $v1
/* FC0D4 80154BA4 C4400000 */  lwc1       $f0, 0x0($v0)
/* FC0D8 80154BA8 4600A03C */  c.lt.s     $f20, $f0
/* FC0DC 80154BAC 00000000 */  nop
/* FC0E0 80154BB0 4503FFD8 */  bc1tl      func_80154B14_ovl6
/* FC0E4 80154BB4 46160100 */   add.s     $f4, $f0, $f22
.L80154BB8_ovl4:
/* FC0E8 80154BB8 02835821 */  addu       $t3, $s4, $v1
.L80154BBC_ovl4:
/* FC0EC 80154BBC 8D650000 */  lw         $a1, 0x0($t3)
/* FC0F0 80154BC0 8EC40000 */  lw         $a0, 0x0($s6)
/* FC0F4 80154BC4 0C054CB3 */  jal        func_801532CC_ovl6
/* FC0F8 80154BC8 24A5FFFF */   addiu     $a1, $a1, -0x1
/* FC0FC 80154BCC 50400007 */  beql       $v0, $zero, .L80154BEC_ovl4
/* FC100 80154BD0 8E6C0000 */   lw        $t4, 0x0($s3)
/* FC104 80154BD4 4405A000 */  mfc1       $a1, $f20
/* FC108 80154BD8 0C02A7E6 */  jal        func_800A9F98
/* FC10C 80154BDC 8EE40004 */   lw        $a0, 0x4($s7)
/* FC110 80154BE0 1000000E */  b          .L80154C1C_ovl4
/* FC114 80154BE4 8E6E0000 */   lw        $t6, 0x0($s3)
.L80154BE8_ovl3:
/* FC118 80154BE8 8E6C0000 */  lw         $t4, 0x0($s3)
.L80154BEC_ovl4:
/* FC11C 80154BEC 8EE40004 */  lw         $a0, 0x4($s7)
/* FC120 80154BF0 8D8A0000 */  lw         $t2, 0x0($t4)
/* FC124 80154BF4 000A6880 */  sll        $t5, $t2, 2
/* FC128 80154BF8 028D7821 */  addu       $t7, $s4, $t5
.L80154BFC_ovl6:
/* FC12C 80154BFC 8DF80000 */  lw         $t8, 0x0($t7)
/* FC130 80154C00 44982000 */  mtc1       $t8, $f4
/* FC134 80154C04 00000000 */  nop
glabel func_80154C08_ovl6
/* FC138 80154C08 46802120 */  cvt.s.w    $f4, $f4
/* FC13C 80154C0C 44052000 */  mfc1       $a1, $f4
/* FC140 80154C10 0C02A7E6 */  jal        func_800A9F98
.L80154C14_ovl3:
/* FC144 80154C14 00000000 */   nop
/* FC148 80154C18 8E6E0000 */  lw         $t6, 0x0($s3)
.L80154C1C_ovl4:
/* FC14C 80154C1C 27A4007C */  addiu      $a0, $sp, 0x7C
.L80154C20_ovl3:
/* FC150 80154C20 8EC50000 */  lw         $a1, 0x0($s6)
/* FC154 80154C24 8DD90000 */  lw         $t9, 0x0($t6)
/* FC158 80154C28 00194080 */  sll        $t0, $t9, 2
/* FC15C 80154C2C 02884821 */  addu       $t1, $s4, $t0
/* FC160 80154C30 8D260000 */  lw         $a2, 0x0($t1)
/* FC164 80154C34 0C054911 */  jal        func_80152444_ovl4
glabel func_80154C38_ovl6
/* FC168 80154C38 24C6FFFF */   addiu     $a2, $a2, -0x1
/* FC16C 80154C3C 8E650000 */  lw         $a1, 0x0($s3)
.L80154C40_ovl3:
/* FC170 80154C40 C7A6007C */  lwc1       $f6, 0x7C($sp)
/* FC174 80154C44 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* FC178 80154C48 8CAB0000 */  lw         $t3, 0x0($a1)
/* FC17C 80154C4C C7A80080 */  lwc1       $f8, 0x80($sp)
/* FC180 80154C50 C7AA0084 */  lwc1       $f10, 0x84($sp)
/* FC184 80154C54 000B6080 */  sll        $t4, $t3, 2
/* FC188 80154C58 002C0821 */  addu       $at, $at, $t4
/* FC18C 80154C5C E42625D0 */  swc1       $f6, %lo(gEntitiesNextPosXArray)($at)
/* FC190 80154C60 8CAA0000 */  lw         $t2, 0x0($a1)
glabel func_80154C64_ovl6
/* FC194 80154C64 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
.L80154C68_ovl3:
/* FC198 80154C68 000A6880 */  sll        $t5, $t2, 2
/* FC19C 80154C6C 002D0821 */  addu       $at, $at, $t5
/* FC1A0 80154C70 E4282790 */  swc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* FC1A4 80154C74 8CAF0000 */  lw         $t7, 0x0($a1)
/* FC1A8 80154C78 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* FC1AC 80154C7C 000FC080 */  sll        $t8, $t7, 2
/* FC1B0 80154C80 00380821 */  addu       $at, $at, $t8
/* FC1B4 80154C84 E42A2950 */  swc1       $f10, %lo(gEntitiesNextPosZArray)($at)
/* FC1B8 80154C88 8CA30000 */  lw         $v1, 0x0($a1)
/* FC1BC 80154C8C 00031880 */  sll        $v1, $v1, 2
.L80154C90_ovl3:
/* FC1C0 80154C90 02837021 */  addu       $t6, $s4, $v1
/* FC1C4 80154C94 8DC40000 */  lw         $a0, 0x0($t6)
.L80154C98_ovl4:
/* FC1C8 80154C98 12A40027 */  beq        $s5, $a0, .L80154D38_ovl4
/* FC1CC 80154C9C 00000000 */   nop
/* FC1D0 80154CA0 10800025 */  beqz       $a0, .L80154D38_ovl4
/* FC1D4 80154CA4 02031021 */   addu      $v0, $s0, $v1
/* FC1D8 80154CA8 C4400000 */  lwc1       $f0, 0x0($v0)
/* FC1DC 80154CAC 4618003C */  c.lt.s     $f0, $f24
/* FC1E0 80154CB0 00000000 */  nop
/* FC1E4 80154CB4 45000020 */  bc1f       .L80154D38_ovl4
.L80154CB8_ovl3:
/* FC1E8 80154CB8 00000000 */   nop
/* FC1EC 80154CBC 461A0400 */  add.s      $f16, $f0, $f26
/* FC1F0 80154CC0 E4500000 */  swc1       $f16, 0x0($v0)
/* FC1F4 80154CC4 8CB90000 */  lw         $t9, 0x0($a1)
/* FC1F8 80154CC8 00194080 */  sll        $t0, $t9, 2
/* FC1FC 80154CCC 02281821 */  addu       $v1, $s1, $t0
/* FC200 80154CD0 C4720000 */  lwc1       $f18, 0x0($v1)
/* FC204 80154CD4 461A9100 */  add.s      $f4, $f18, $f26
/* FC208 80154CD8 E4640000 */  swc1       $f4, 0x0($v1)
/* FC20C 80154CDC 8CA90000 */  lw         $t1, 0x0($a1)
.L80154CE0_ovl3:
/* FC210 80154CE0 00095880 */  sll        $t3, $t1, 2
/* FC214 80154CE4 024B2021 */  addu       $a0, $s2, $t3
.L80154CE8_ovl3:
/* FC218 80154CE8 C4860000 */  lwc1       $f6, 0x0($a0)
/* FC21C 80154CEC 461A3200 */  add.s      $f8, $f6, $f26
/* FC220 80154CF0 E4880000 */  swc1       $f8, 0x0($a0)
/* FC224 80154CF4 8CAC0000 */  lw         $t4, 0x0($a1)
/* FC228 80154CF8 000C5080 */  sll        $t2, $t4, 2
glabel func_80154CFC_ovl3
/* FC22C 80154CFC 020A1021 */  addu       $v0, $s0, $t2
/* FC230 80154D00 C44A0000 */  lwc1       $f10, 0x0($v0)
/* FC234 80154D04 460AC03C */  c.lt.s     $f24, $f10
/* FC238 80154D08 00000000 */  nop
.L80154D0C_ovl6:
/* FC23C 80154D0C 4500000A */  bc1f       .L80154D38_ovl4
/* FC240 80154D10 00000000 */   nop
/* FC244 80154D14 E4580000 */  swc1       $f24, 0x0($v0)
/* FC248 80154D18 8CAD0000 */  lw         $t5, 0x0($a1)
/* FC24C 80154D1C 000D7880 */  sll        $t7, $t5, 2
/* FC250 80154D20 022FC021 */  addu       $t8, $s1, $t7
.L80154D24_ovl6:
/* FC254 80154D24 E7180000 */  swc1       $f24, 0x0($t8)
/* FC258 80154D28 8CAE0000 */  lw         $t6, 0x0($a1)
/* FC25C 80154D2C 000EC880 */  sll        $t9, $t6, 2
/* FC260 80154D30 02594021 */  addu       $t0, $s2, $t9
/* FC264 80154D34 E5180000 */  swc1       $f24, 0x0($t0)
.L80154D38_ovl4:
/* FC268 80154D38 0C002DAF */  jal        finish_current_thread
/* FC26C 80154D3C 24040001 */   addiu     $a0, $zero, 0x1
.L80154D40_ovl6:
/* FC270 80154D40 3C098016 */  lui        $t1, %hi(D_8015C698_ovl4)
/* FC274 80154D44 8D29C698 */  lw         $t1, %lo(D_8015C698_ovl4)($t1)
/* FC278 80154D48 3C06800F */  lui        $a2, %hi(D_800E9FE0)
/* FC27C 80154D4C 8E650000 */  lw         $a1, 0x0($s3)
.L80154D50_ovl6:
/* FC280 80154D50 00095880 */  sll        $t3, $t1, 2
.L80154D54_ovl6:
/* FC284 80154D54 00CB3021 */  addu       $a2, $a2, $t3
/* FC288 80154D58 1000FF1C */  b          .L801549CC_ovl4
/* FC28C 80154D5C 8CC69FE0 */   lw        $a2, %lo(D_800E9FE0)($a2)
glabel func_80154D60_ovl6
/* FC290 80154D60 8FBF005C */  lw         $ra, 0x5C($sp)
/* FC294 80154D64 D7B40018 */  ldc1       $f20, 0x18($sp)
/* FC298 80154D68 D7B60020 */  ldc1       $f22, 0x20($sp)
/* FC29C 80154D6C D7B80028 */  ldc1       $f24, 0x28($sp)
/* FC2A0 80154D70 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* FC2A4 80154D74 8FB00038 */  lw         $s0, 0x38($sp)
/* FC2A8 80154D78 8FB1003C */  lw         $s1, 0x3C($sp)
/* FC2AC 80154D7C 8FB20040 */  lw         $s2, 0x40($sp)
/* FC2B0 80154D80 8FB30044 */  lw         $s3, 0x44($sp)
/* FC2B4 80154D84 8FB40048 */  lw         $s4, 0x48($sp)
/* FC2B8 80154D88 8FB5004C */  lw         $s5, 0x4C($sp)
/* FC2BC 80154D8C 8FB60050 */  lw         $s6, 0x50($sp)
/* FC2C0 80154D90 8FB70054 */  lw         $s7, 0x54($sp)
/* FC2C4 80154D94 8FBE0058 */  lw         $fp, 0x58($sp)
/* FC2C8 80154D98 03E00008 */  jr         $ra
/* FC2CC 80154D9C 27BD0088 */   addiu     $sp, $sp, 0x88
