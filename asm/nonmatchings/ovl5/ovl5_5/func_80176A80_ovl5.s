nonmatching func_80176A80_ovl5, 0x448

glabel func_80176A80_ovl5
    /* 11DEF0 80176A80 27BDFF40 */  addiu      $sp, $sp, -0xC0
    /* 11DEF4 80176A84 3C0F8018 */  lui        $t7, %hi(D_801873C8_ovl5)
    /* 11DEF8 80176A88 AFBF0054 */  sw         $ra, 0x54($sp)
    /* 11DEFC 80176A8C AFB20050 */  sw         $s2, 0x50($sp)
    /* 11DF00 80176A90 AFB1004C */  sw         $s1, 0x4C($sp)
    /* 11DF04 80176A94 AFB00048 */  sw         $s0, 0x48($sp)
    /* 11DF08 80176A98 F7BC0040 */  sdc1       $f28, 0x40($sp)
    /* 11DF0C 80176A9C F7BA0038 */  sdc1       $f26, 0x38($sp)
    /* 11DF10 80176AA0 F7B80030 */  sdc1       $f24, 0x30($sp)
    /* 11DF14 80176AA4 F7B60028 */  sdc1       $f22, 0x28($sp)
    /* 11DF18 80176AA8 F7B40020 */  sdc1       $f20, 0x20($sp)
    /* 11DF1C 80176AAC 25EF73C8 */  addiu      $t7, $t7, %lo(D_801873C8_ovl5)
    /* 11DF20 80176AB0 8DF90000 */  lw         $t9, 0x0($t7)
    /* 11DF24 80176AB4 27AE00A4 */  addiu      $t6, $sp, 0xA4
    /* 11DF28 80176AB8 8DF80004 */  lw         $t8, 0x4($t7)
    /* 11DF2C 80176ABC ADD90000 */  sw         $t9, 0x0($t6)
    /* 11DF30 80176AC0 8DF90008 */  lw         $t9, 0x8($t7)
    /* 11DF34 80176AC4 3C098018 */  lui        $t1, %hi(D_801873D4_ovl5)
    /* 11DF38 80176AC8 252973D4 */  addiu      $t1, $t1, %lo(D_801873D4_ovl5)
    /* 11DF3C 80176ACC ADD80004 */  sw         $t8, 0x4($t6)
    /* 11DF40 80176AD0 ADD90008 */  sw         $t9, 0x8($t6)
    /* 11DF44 80176AD4 8D2B0000 */  lw         $t3, 0x0($t1)
    /* 11DF48 80176AD8 27A80098 */  addiu      $t0, $sp, 0x98
    /* 11DF4C 80176ADC 8D2A0004 */  lw         $t2, 0x4($t1)
    /* 11DF50 80176AE0 AD0B0000 */  sw         $t3, 0x0($t0)
    /* 11DF54 80176AE4 8D2B0008 */  lw         $t3, 0x8($t1)
    /* 11DF58 80176AE8 3C0D8018 */  lui        $t5, %hi(D_801873E0_ovl5)
    /* 11DF5C 80176AEC 25AD73E0 */  addiu      $t5, $t5, %lo(D_801873E0_ovl5)
    /* 11DF60 80176AF0 AD0A0004 */  sw         $t2, 0x4($t0)
    /* 11DF64 80176AF4 AD0B0008 */  sw         $t3, 0x8($t0)
    /* 11DF68 80176AF8 8DAF0000 */  lw         $t7, 0x0($t5)
    /* 11DF6C 80176AFC 27AC008C */  addiu      $t4, $sp, 0x8C
    /* 11DF70 80176B00 8DAE0004 */  lw         $t6, 0x4($t5)
    /* 11DF74 80176B04 AD8F0000 */  sw         $t7, 0x0($t4)
    /* 11DF78 80176B08 8DAF0008 */  lw         $t7, 0x8($t5)
    /* 11DF7C 80176B0C 3C198018 */  lui        $t9, %hi(D_801873EC_ovl5)
    /* 11DF80 80176B10 273973EC */  addiu      $t9, $t9, %lo(D_801873EC_ovl5)
    /* 11DF84 80176B14 AD8E0004 */  sw         $t6, 0x4($t4)
    /* 11DF88 80176B18 AD8F0008 */  sw         $t7, 0x8($t4)
    /* 11DF8C 80176B1C 8F290000 */  lw         $t1, 0x0($t9)
    /* 11DF90 80176B20 27B80080 */  addiu      $t8, $sp, 0x80
    /* 11DF94 80176B24 8F280004 */  lw         $t0, 0x4($t9)
    /* 11DF98 80176B28 AF090000 */  sw         $t1, 0x0($t8)
    /* 11DF9C 80176B2C 8F290008 */  lw         $t1, 0x8($t9)
    /* 11DFA0 80176B30 3C0B8018 */  lui        $t3, %hi(D_801873F8_ovl5)
    /* 11DFA4 80176B34 256B73F8 */  addiu      $t3, $t3, %lo(D_801873F8_ovl5)
    /* 11DFA8 80176B38 AF080004 */  sw         $t0, 0x4($t8)
    /* 11DFAC 80176B3C AF090008 */  sw         $t1, 0x8($t8)
    /* 11DFB0 80176B40 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 11DFB4 80176B44 27AA0074 */  addiu      $t2, $sp, 0x74
    /* 11DFB8 80176B48 8D6C0004 */  lw         $t4, 0x4($t3)
    /* 11DFBC 80176B4C AD4D0000 */  sw         $t5, 0x0($t2)
    /* 11DFC0 80176B50 8D6D0008 */  lw         $t5, 0x8($t3)
    /* 11DFC4 80176B54 3C0F8018 */  lui        $t7, %hi(D_80187404_ovl5)
    /* 11DFC8 80176B58 25EF7404 */  addiu      $t7, $t7, %lo(D_80187404_ovl5)
    /* 11DFCC 80176B5C AD4C0004 */  sw         $t4, 0x4($t2)
    /* 11DFD0 80176B60 AD4D0008 */  sw         $t5, 0x8($t2)
    /* 11DFD4 80176B64 8DF90000 */  lw         $t9, 0x0($t7)
    /* 11DFD8 80176B68 27AE0068 */  addiu      $t6, $sp, 0x68
    /* 11DFDC 80176B6C 8DF80004 */  lw         $t8, 0x4($t7)
    /* 11DFE0 80176B70 ADD90000 */  sw         $t9, 0x0($t6)
    /* 11DFE4 80176B74 8DF90008 */  lw         $t9, 0x8($t7)
    /* 11DFE8 80176B78 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 11DFEC 80176B7C ADD80004 */  sw         $t8, 0x4($t6)
    /* 11DFF0 80176B80 ADD90008 */  sw         $t9, 0x8($t6)
    /* 11DFF4 80176B84 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 11DFF8 80176B88 00809025 */  or         $s2, $a0, $zero
    /* 11DFFC 80176B8C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 11E000 80176B90 8D090000 */  lw         $t1, 0x0($t0)
    /* 11E004 80176B94 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 11E008 80176B98 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* 11E00C 80176B9C 00095080 */  sll        $t2, $t1, 2
    /* 11E010 80176BA0 008A2021 */  addu       $a0, $a0, $t2
    /* 11E014 80176BA4 0C02C7DA */  jal        setProcessMain
    /* 11E018 80176BA8 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 11E01C 80176BAC 3C05800B */  lui        $a1, %hi(func_800AD1A0)
    /* 11E020 80176BB0 240B000A */  addiu      $t3, $zero, 0xA
    /* 11E024 80176BB4 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 11E028 80176BB8 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
    /* 11E02C 80176BBC 02402025 */  or         $a0, $s2, $zero
    /* 11E030 80176BC0 2406000A */  addiu      $a2, $zero, 0xA
    /* 11E034 80176BC4 0C00297F */  jal        omLinkGObjDL
    /* 11E038 80176BC8 3C078000 */   lui       $a3, (0x80000000 >> 16)
    /* 11E03C 80176BCC 3C058018 */  lui        $a1, %hi(D_80187B8C_ovl5)
    /* 11E040 80176BD0 24A57B8C */  addiu      $a1, $a1, %lo(D_80187B8C_ovl5)
    /* 11E044 80176BD4 0C0571D0 */  jal        func_8015C740_ovl5
    /* 11E048 80176BD8 02402025 */   or        $a0, $s2, $zero
    /* 11E04C 80176BDC 3C058018 */  lui        $a1, %hi(D_80187BAC_ovl5)
    /* 11E050 80176BE0 24A57BAC */  addiu      $a1, $a1, %lo(D_80187BAC_ovl5)
    /* 11E054 80176BE4 0C0571D0 */  jal        func_8015C740_ovl5
    /* 11E058 80176BE8 02402025 */   or        $a0, $s2, $zero
    /* 11E05C 80176BEC 0C05DA76 */  jal        func_801769D8_ovl5
    /* 11E060 80176BF0 2404001D */   addiu     $a0, $zero, 0x1D
    /* 11E064 80176BF4 3C038018 */  lui        $v1, %hi(D_80187BCC_ovl5)
    /* 11E068 80176BF8 24637BCC */  addiu      $v1, $v1, %lo(D_80187BCC_ovl5)
    /* 11E06C 80176BFC 8C660000 */  lw         $a2, 0x0($v1)
    /* 11E070 80176C00 8C670004 */  lw         $a3, 0x4($v1)
    /* 11E074 80176C04 02402025 */  or         $a0, $s2, $zero
    /* 11E078 80176C08 0C05DA17 */  jal        func_8017685C_ovl5
    /* 11E07C 80176C0C 00402825 */   or        $a1, $v0, $zero
    /* 11E080 80176C10 0C002DAF */  jal        ohSleep
    /* 11E084 80176C14 2404000F */   addiu     $a0, $zero, 0xF
    /* 11E088 80176C18 3C013E80 */  lui        $at, (0x3E800000 >> 16)
    /* 11E08C 80176C1C 4481E000 */  mtc1       $at, $f28
    /* 11E090 80176C20 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
    /* 11E094 80176C24 4481D000 */  mtc1       $at, $f26
    /* 11E098 80176C28 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 11E09C 80176C2C 4481C000 */  mtc1       $at, $f24
    /* 11E0A0 80176C30 27B10070 */  addiu      $s1, $sp, 0x70
    /* 11E0A4 80176C34 02402025 */  or         $a0, $s2, $zero
  .L80176C38_ovl5:
    /* 11E0A8 80176C38 8E250000 */  lw         $a1, 0x0($s1)
    /* 11E0AC 80176C3C 0C0571D0 */  jal        func_8015C740_ovl5
    /* 11E0B0 80176C40 4600C506 */   mov.s     $f20, $f24
    /* 11E0B4 80176C44 00408025 */  or         $s0, $v0, $zero
    /* 11E0B8 80176C48 0C029D9E */  jal        play_sound
    /* 11E0BC 80176C4C 24040111 */   addiu     $a0, $zero, 0x111
    /* 11E0C0 80176C50 461AC03C */  c.lt.s     $f24, $f26
    /* 11E0C4 80176C54 00000000 */  nop
    /* 11E0C8 80176C58 45020024 */  bc1fl      .L80176CEC_ovl5
    /* 11E0CC 80176C5C 4614C03C */   c.lt.s    $f24, $f20
    /* 11E0D0 80176C60 960C001C */  lhu        $t4, 0x1C($s0)
  .L80176C64_ovl5:
    /* 11E0D4 80176C64 960E001E */  lhu        $t6, 0x1E($s0)
    /* 11E0D8 80176C68 E614002C */  swc1       $f20, 0x2C($s0)
    /* 11E0DC 80176C6C E6140028 */  swc1       $f20, 0x28($s0)
    /* 11E0E0 80176C70 8E220000 */  lw         $v0, 0x0($s1)
    /* 11E0E4 80176C74 02002025 */  or         $a0, $s0, $zero
    /* 11E0E8 80176C78 C4440008 */  lwc1       $f4, 0x8($v0)
    /* 11E0EC 80176C7C 05810003 */  bgez       $t4, .L80176C8C_ovl5
    /* 11E0F0 80176C80 000C6843 */   sra       $t5, $t4, 1
    /* 11E0F4 80176C84 25810001 */  addiu      $at, $t4, 0x1
    /* 11E0F8 80176C88 00016843 */  sra        $t5, $at, 1
  .L80176C8C_ovl5:
    /* 11E0FC 80176C8C 448D3000 */  mtc1       $t5, $f6
    /* 11E100 80176C90 C450000C */  lwc1       $f16, 0xC($v0)
    /* 11E104 80176C94 46803220 */  cvt.s.w    $f8, $f6
    /* 11E108 80176C98 46082280 */  add.s      $f10, $f4, $f8
    /* 11E10C 80176C9C 44055000 */  mfc1       $a1, $f10
    /* 11E110 80176CA0 05C10003 */  bgez       $t6, .L80176CB0_ovl5
    /* 11E114 80176CA4 000E7843 */   sra       $t7, $t6, 1
    /* 11E118 80176CA8 25C10001 */  addiu      $at, $t6, 0x1
    /* 11E11C 80176CAC 00017843 */  sra        $t7, $at, 1
  .L80176CB0_ovl5:
    /* 11E120 80176CB0 448F9000 */  mtc1       $t7, $f18
    /* 11E124 80176CB4 00000000 */  nop
    /* 11E128 80176CB8 468091A0 */  cvt.s.w    $f6, $f18
    /* 11E12C 80176CBC 46068100 */  add.s      $f4, $f16, $f6
    /* 11E130 80176CC0 44062000 */  mfc1       $a2, $f4
    /* 11E134 80176CC4 0C057201 */  jal        func_8015C804_ovl5
    /* 11E138 80176CC8 00000000 */   nop
    /* 11E13C 80176CCC 0C002DAF */  jal        ohSleep
    /* 11E140 80176CD0 24040001 */   addiu     $a0, $zero, 0x1
    /* 11E144 80176CD4 461CA500 */  add.s      $f20, $f20, $f28
    /* 11E148 80176CD8 461AA03C */  c.lt.s     $f20, $f26
    /* 11E14C 80176CDC 00000000 */  nop
    /* 11E150 80176CE0 4503FFE0 */  bc1tl      .L80176C64_ovl5
    /* 11E154 80176CE4 960C001C */   lhu       $t4, 0x1C($s0)
    /* 11E158 80176CE8 4614C03C */  c.lt.s     $f24, $f20
  .L80176CEC_ovl5:
    /* 11E15C 80176CEC C6000028 */  lwc1       $f0, 0x28($s0)
    /* 11E160 80176CF0 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* 11E164 80176CF4 45020029 */  bc1fl      .L80176D9C_ovl5
    /* 11E168 80176CF8 E618002C */   swc1      $f24, 0x2C($s0)
    /* 11E16C 80176CFC 46180201 */  sub.s      $f8, $f0, $f24
    /* 11E170 80176D00 44815000 */  mtc1       $at, $f10
    /* 11E174 80176D04 00000000 */  nop
    /* 11E178 80176D08 460A4582 */  mul.s      $f22, $f8, $f10
    /* 11E17C 80176D0C 00000000 */  nop
    /* 11E180 80176D10 9618001C */  lhu        $t8, 0x1C($s0)
  .L80176D14_ovl5:
    /* 11E184 80176D14 9608001E */  lhu        $t0, 0x1E($s0)
    /* 11E188 80176D18 E614002C */  swc1       $f20, 0x2C($s0)
    /* 11E18C 80176D1C E6140028 */  swc1       $f20, 0x28($s0)
    /* 11E190 80176D20 8E220000 */  lw         $v0, 0x0($s1)
    /* 11E194 80176D24 02002025 */  or         $a0, $s0, $zero
    /* 11E198 80176D28 C4520008 */  lwc1       $f18, 0x8($v0)
    /* 11E19C 80176D2C 07010003 */  bgez       $t8, .L80176D3C_ovl5
    /* 11E1A0 80176D30 0018C843 */   sra       $t9, $t8, 1
    /* 11E1A4 80176D34 27010001 */  addiu      $at, $t8, 0x1
    /* 11E1A8 80176D38 0001C843 */  sra        $t9, $at, 1
  .L80176D3C_ovl5:
    /* 11E1AC 80176D3C 44998000 */  mtc1       $t9, $f16
    /* 11E1B0 80176D40 C448000C */  lwc1       $f8, 0xC($v0)
    /* 11E1B4 80176D44 468081A0 */  cvt.s.w    $f6, $f16
    /* 11E1B8 80176D48 46069100 */  add.s      $f4, $f18, $f6
    /* 11E1BC 80176D4C 44052000 */  mfc1       $a1, $f4
    /* 11E1C0 80176D50 05010003 */  bgez       $t0, .L80176D60_ovl5
    /* 11E1C4 80176D54 00084843 */   sra       $t1, $t0, 1
    /* 11E1C8 80176D58 25010001 */  addiu      $at, $t0, 0x1
    /* 11E1CC 80176D5C 00014843 */  sra        $t1, $at, 1
  .L80176D60_ovl5:
    /* 11E1D0 80176D60 44895000 */  mtc1       $t1, $f10
    /* 11E1D4 80176D64 00000000 */  nop
    /* 11E1D8 80176D68 46805420 */  cvt.s.w    $f16, $f10
    /* 11E1DC 80176D6C 46104480 */  add.s      $f18, $f8, $f16
    /* 11E1E0 80176D70 44069000 */  mfc1       $a2, $f18
    /* 11E1E4 80176D74 0C057201 */  jal        func_8015C804_ovl5
    /* 11E1E8 80176D78 00000000 */   nop
    /* 11E1EC 80176D7C 0C002DAF */  jal        ohSleep
    /* 11E1F0 80176D80 24040001 */   addiu     $a0, $zero, 0x1
    /* 11E1F4 80176D84 4616A501 */  sub.s      $f20, $f20, $f22
    /* 11E1F8 80176D88 4614C03C */  c.lt.s     $f24, $f20
    /* 11E1FC 80176D8C 00000000 */  nop
    /* 11E200 80176D90 4503FFE0 */  bc1tl      .L80176D14_ovl5
    /* 11E204 80176D94 9618001C */   lhu       $t8, 0x1C($s0)
    /* 11E208 80176D98 E618002C */  swc1       $f24, 0x2C($s0)
  .L80176D9C_ovl5:
    /* 11E20C 80176D9C E6180028 */  swc1       $f24, 0x28($s0)
    /* 11E210 80176DA0 8E2A0000 */  lw         $t2, 0x0($s1)
    /* 11E214 80176DA4 24040010 */  addiu      $a0, $zero, 0x10
    /* 11E218 80176DA8 C5460008 */  lwc1       $f6, 0x8($t2)
    /* 11E21C 80176DAC E6060020 */  swc1       $f6, 0x20($s0)
    /* 11E220 80176DB0 8E2B0000 */  lw         $t3, 0x0($s1)
    /* 11E224 80176DB4 C564000C */  lwc1       $f4, 0xC($t3)
    /* 11E228 80176DB8 0C002DAF */  jal        ohSleep
    /* 11E22C 80176DBC E6040024 */   swc1      $f4, 0x24($s0)
    /* 11E230 80176DC0 920C0013 */  lbu        $t4, 0x13($s0)
    /* 11E234 80176DC4 2404000A */  addiu      $a0, $zero, 0xA
    /* 11E238 80176DC8 358D0008 */  ori        $t5, $t4, 0x8
    /* 11E23C 80176DCC 0C002DAF */  jal        ohSleep
    /* 11E240 80176DD0 A20D0013 */   sb        $t5, 0x13($s0)
    /* 11E244 80176DD4 920E0013 */  lbu        $t6, 0x13($s0)
    /* 11E248 80176DD8 02002025 */  or         $a0, $s0, $zero
    /* 11E24C 80176DDC 31CFFFF7 */  andi       $t7, $t6, 0xFFF7
    /* 11E250 80176DE0 0C02B2DF */  jal        func_800ACB7C
    /* 11E254 80176DE4 A20F0013 */   sb        $t7, 0x13($s0)
    /* 11E258 80176DE8 2631FFFC */  addiu      $s1, $s1, -0x4
    /* 11E25C 80176DEC 27B80068 */  addiu      $t8, $sp, 0x68
    /* 11E260 80176DF0 0238082B */  sltu       $at, $s1, $t8
    /* 11E264 80176DF4 5020FF90 */  beql       $at, $zero, .L80176C38_ovl5
    /* 11E268 80176DF8 02402025 */   or        $a0, $s2, $zero
    /* 11E26C 80176DFC 3C058018 */  lui        $a1, %hi(D_80187798_ovl5)
    /* 11E270 80176E00 24A57798 */  addiu      $a1, $a1, %lo(D_80187798_ovl5)
    /* 11E274 80176E04 0C0571D0 */  jal        func_8015C740_ovl5
    /* 11E278 80176E08 02402025 */   or        $a0, $s2, $zero
    /* 11E27C 80176E0C 00408025 */  or         $s0, $v0, $zero
    /* 11E280 80176E10 0C029D9E */  jal        play_sound
    /* 11E284 80176E14 240400B9 */   addiu     $a0, $zero, 0xB9
    /* 11E288 80176E18 0C05BF55 */  jal        func_8016FD54_ovl5
    /* 11E28C 80176E1C 00000000 */   nop
    /* 11E290 80176E20 3C018019 */  lui        $at, %hi(D_8018ECA0_ovl5)
    /* 11E294 80176E24 AC20ECA0 */  sw         $zero, %lo(D_8018ECA0_ovl5)($at)
    /* 11E298 80176E28 02002025 */  or         $a0, $s0, $zero
    /* 11E29C 80176E2C 0C05DBB2 */  jal        func_80176EC8_ovl5
    /* 11E2A0 80176E30 27A500A4 */   addiu     $a1, $sp, 0xA4
    /* 11E2A4 80176E34 0C002DAF */  jal        ohSleep
    /* 11E2A8 80176E38 24040002 */   addiu     $a0, $zero, 0x2
    /* 11E2AC 80176E3C 02002025 */  or         $a0, $s0, $zero
    /* 11E2B0 80176E40 0C05DBB2 */  jal        func_80176EC8_ovl5
    /* 11E2B4 80176E44 27A50098 */   addiu     $a1, $sp, 0x98
    /* 11E2B8 80176E48 0C002DAF */  jal        ohSleep
    /* 11E2BC 80176E4C 24040002 */   addiu     $a0, $zero, 0x2
    /* 11E2C0 80176E50 02002025 */  or         $a0, $s0, $zero
    /* 11E2C4 80176E54 0C05DBB2 */  jal        func_80176EC8_ovl5
    /* 11E2C8 80176E58 27A5008C */   addiu     $a1, $sp, 0x8C
    /* 11E2CC 80176E5C 0C002DAF */  jal        ohSleep
    /* 11E2D0 80176E60 24040002 */   addiu     $a0, $zero, 0x2
    /* 11E2D4 80176E64 02002025 */  or         $a0, $s0, $zero
    /* 11E2D8 80176E68 0C05DBB2 */  jal        func_80176EC8_ovl5
    /* 11E2DC 80176E6C 27A50080 */   addiu     $a1, $sp, 0x80
    /* 11E2E0 80176E70 0C002DAF */  jal        ohSleep
    /* 11E2E4 80176E74 24040002 */   addiu     $a0, $zero, 0x2
    /* 11E2E8 80176E78 02002025 */  or         $a0, $s0, $zero
    /* 11E2EC 80176E7C 0C05DBB2 */  jal        func_80176EC8_ovl5
    /* 11E2F0 80176E80 27A50074 */   addiu     $a1, $sp, 0x74
    /* 11E2F4 80176E84 0C02B2F7 */  jal        func_800ACBDC
    /* 11E2F8 80176E88 02402025 */   or        $a0, $s2, $zero
    /* 11E2FC 80176E8C 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 11E300 80176E90 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 11E304 80176E94 0C02C640 */  jal        func_800B1900
    /* 11E308 80176E98 97240002 */   lhu       $a0, 0x2($t9)
    /* 11E30C 80176E9C 8FBF0054 */  lw         $ra, 0x54($sp)
    /* 11E310 80176EA0 D7B40020 */  ldc1       $f20, 0x20($sp)
    /* 11E314 80176EA4 D7B60028 */  ldc1       $f22, 0x28($sp)
    /* 11E318 80176EA8 D7B80030 */  ldc1       $f24, 0x30($sp)
    /* 11E31C 80176EAC D7BA0038 */  ldc1       $f26, 0x38($sp)
    /* 11E320 80176EB0 D7BC0040 */  ldc1       $f28, 0x40($sp)
    /* 11E324 80176EB4 8FB00048 */  lw         $s0, 0x48($sp)
    /* 11E328 80176EB8 8FB1004C */  lw         $s1, 0x4C($sp)
    /* 11E32C 80176EBC 8FB20050 */  lw         $s2, 0x50($sp)
    /* 11E330 80176EC0 03E00008 */  jr         $ra
    /* 11E334 80176EC4 27BD00C0 */   addiu     $sp, $sp, 0xC0
endlabel func_80176A80_ovl5
.size func_80176A80_ovl5, . - func_80176A80_ovl5
