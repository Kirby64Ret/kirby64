nonmatching func_8016EAFC_ovl5, 0x448

glabel func_8016EAFC_ovl5
    /* 115F6C 8016EAFC 27BDFF40 */  addiu      $sp, $sp, -0xC0
    /* 115F70 8016EB00 3C0F8018 */  lui        $t7, %hi(D_80186A34_ovl5)
    /* 115F74 8016EB04 AFBF0054 */  sw         $ra, 0x54($sp)
    /* 115F78 8016EB08 AFB20050 */  sw         $s2, 0x50($sp)
    /* 115F7C 8016EB0C AFB1004C */  sw         $s1, 0x4C($sp)
    /* 115F80 8016EB10 AFB00048 */  sw         $s0, 0x48($sp)
    /* 115F84 8016EB14 F7BC0040 */  sdc1       $f28, 0x40($sp)
    /* 115F88 8016EB18 F7BA0038 */  sdc1       $f26, 0x38($sp)
    /* 115F8C 8016EB1C F7B80030 */  sdc1       $f24, 0x30($sp)
    /* 115F90 8016EB20 F7B60028 */  sdc1       $f22, 0x28($sp)
    /* 115F94 8016EB24 F7B40020 */  sdc1       $f20, 0x20($sp)
    /* 115F98 8016EB28 25EF6A34 */  addiu      $t7, $t7, %lo(D_80186A34_ovl5)
    /* 115F9C 8016EB2C 8DF90000 */  lw         $t9, 0x0($t7)
    /* 115FA0 8016EB30 27AE00A4 */  addiu      $t6, $sp, 0xA4
    /* 115FA4 8016EB34 8DF80004 */  lw         $t8, 0x4($t7)
    /* 115FA8 8016EB38 ADD90000 */  sw         $t9, 0x0($t6)
    /* 115FAC 8016EB3C 8DF90008 */  lw         $t9, 0x8($t7)
    /* 115FB0 8016EB40 3C098018 */  lui        $t1, %hi(D_80186A40_ovl5)
    /* 115FB4 8016EB44 25296A40 */  addiu      $t1, $t1, %lo(D_80186A40_ovl5)
    /* 115FB8 8016EB48 ADD80004 */  sw         $t8, 0x4($t6)
    /* 115FBC 8016EB4C ADD90008 */  sw         $t9, 0x8($t6)
    /* 115FC0 8016EB50 8D2B0000 */  lw         $t3, 0x0($t1)
    /* 115FC4 8016EB54 27A80098 */  addiu      $t0, $sp, 0x98
    /* 115FC8 8016EB58 8D2A0004 */  lw         $t2, 0x4($t1)
    /* 115FCC 8016EB5C AD0B0000 */  sw         $t3, 0x0($t0)
    /* 115FD0 8016EB60 8D2B0008 */  lw         $t3, 0x8($t1)
    /* 115FD4 8016EB64 3C0D8018 */  lui        $t5, %hi(D_80186A4C_ovl5)
    /* 115FD8 8016EB68 25AD6A4C */  addiu      $t5, $t5, %lo(D_80186A4C_ovl5)
    /* 115FDC 8016EB6C AD0A0004 */  sw         $t2, 0x4($t0)
    /* 115FE0 8016EB70 AD0B0008 */  sw         $t3, 0x8($t0)
    /* 115FE4 8016EB74 8DAF0000 */  lw         $t7, 0x0($t5)
    /* 115FE8 8016EB78 27AC008C */  addiu      $t4, $sp, 0x8C
    /* 115FEC 8016EB7C 8DAE0004 */  lw         $t6, 0x4($t5)
    /* 115FF0 8016EB80 AD8F0000 */  sw         $t7, 0x0($t4)
    /* 115FF4 8016EB84 8DAF0008 */  lw         $t7, 0x8($t5)
    /* 115FF8 8016EB88 3C198018 */  lui        $t9, %hi(D_80186A58_ovl5)
    /* 115FFC 8016EB8C 27396A58 */  addiu      $t9, $t9, %lo(D_80186A58_ovl5)
    /* 116000 8016EB90 AD8E0004 */  sw         $t6, 0x4($t4)
    /* 116004 8016EB94 AD8F0008 */  sw         $t7, 0x8($t4)
    /* 116008 8016EB98 8F290000 */  lw         $t1, 0x0($t9)
    /* 11600C 8016EB9C 27B80080 */  addiu      $t8, $sp, 0x80
    /* 116010 8016EBA0 8F280004 */  lw         $t0, 0x4($t9)
    /* 116014 8016EBA4 AF090000 */  sw         $t1, 0x0($t8)
    /* 116018 8016EBA8 8F290008 */  lw         $t1, 0x8($t9)
    /* 11601C 8016EBAC 3C0B8018 */  lui        $t3, %hi(D_80186A64_ovl5)
    /* 116020 8016EBB0 256B6A64 */  addiu      $t3, $t3, %lo(D_80186A64_ovl5)
    /* 116024 8016EBB4 AF080004 */  sw         $t0, 0x4($t8)
    /* 116028 8016EBB8 AF090008 */  sw         $t1, 0x8($t8)
    /* 11602C 8016EBBC 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 116030 8016EBC0 27AA0074 */  addiu      $t2, $sp, 0x74
    /* 116034 8016EBC4 8D6C0004 */  lw         $t4, 0x4($t3)
    /* 116038 8016EBC8 AD4D0000 */  sw         $t5, 0x0($t2)
    /* 11603C 8016EBCC 8D6D0008 */  lw         $t5, 0x8($t3)
    /* 116040 8016EBD0 3C0F8018 */  lui        $t7, %hi(D_80186A70_ovl5)
    /* 116044 8016EBD4 25EF6A70 */  addiu      $t7, $t7, %lo(D_80186A70_ovl5)
    /* 116048 8016EBD8 AD4C0004 */  sw         $t4, 0x4($t2)
    /* 11604C 8016EBDC AD4D0008 */  sw         $t5, 0x8($t2)
    /* 116050 8016EBE0 8DF90000 */  lw         $t9, 0x0($t7)
    /* 116054 8016EBE4 27AE0068 */  addiu      $t6, $sp, 0x68
    /* 116058 8016EBE8 8DF80004 */  lw         $t8, 0x4($t7)
    /* 11605C 8016EBEC ADD90000 */  sw         $t9, 0x0($t6)
    /* 116060 8016EBF0 8DF90008 */  lw         $t9, 0x8($t7)
    /* 116064 8016EBF4 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 116068 8016EBF8 ADD80004 */  sw         $t8, 0x4($t6)
    /* 11606C 8016EBFC ADD90008 */  sw         $t9, 0x8($t6)
    /* 116070 8016EC00 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 116074 8016EC04 00809025 */  or         $s2, $a0, $zero
    /* 116078 8016EC08 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 11607C 8016EC0C 8D090000 */  lw         $t1, 0x0($t0)
    /* 116080 8016EC10 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 116084 8016EC14 24A51434 */  addiu      $a1, $a1, %lo(procMainStub)
    /* 116088 8016EC18 00095080 */  sll        $t2, $t1, 2
    /* 11608C 8016EC1C 008A2021 */  addu       $a0, $a0, $t2
    /* 116090 8016EC20 0C02C7DA */  jal        setProcessMain
    /* 116094 8016EC24 8C84EC10 */   lw        $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 116098 8016EC28 3C05800B */  lui        $a1, %hi(func_800AD1A0)
    /* 11609C 8016EC2C 240B000A */  addiu      $t3, $zero, 0xA
    /* 1160A0 8016EC30 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 1160A4 8016EC34 24A5D1A0 */  addiu      $a1, $a1, %lo(func_800AD1A0)
    /* 1160A8 8016EC38 02402025 */  or         $a0, $s2, $zero
    /* 1160AC 8016EC3C 2406000A */  addiu      $a2, $zero, 0xA
    /* 1160B0 8016EC40 0C00297F */  jal        omLinkGObjDL
    /* 1160B4 8016EC44 3C078000 */   lui       $a3, (0x80000000 >> 16)
    /* 1160B8 8016EC48 3C058018 */  lui        $a1, %hi(D_8018713C_ovl5)
    /* 1160BC 8016EC4C 24A5713C */  addiu      $a1, $a1, %lo(D_8018713C_ovl5)
    /* 1160C0 8016EC50 0C0571D0 */  jal        func_8015C740_ovl5
    /* 1160C4 8016EC54 02402025 */   or        $a0, $s2, $zero
    /* 1160C8 8016EC58 3C058018 */  lui        $a1, %hi(D_8018715C_ovl5)
    /* 1160CC 8016EC5C 24A5715C */  addiu      $a1, $a1, %lo(D_8018715C_ovl5)
    /* 1160D0 8016EC60 0C0571D0 */  jal        func_8015C740_ovl5
    /* 1160D4 8016EC64 02402025 */   or        $a0, $s2, $zero
    /* 1160D8 8016EC68 0C05BA95 */  jal        func_8016EA54_ovl5
    /* 1160DC 8016EC6C 2404001E */   addiu     $a0, $zero, 0x1E
    /* 1160E0 8016EC70 3C038018 */  lui        $v1, %hi(D_8018717C_ovl5)
    /* 1160E4 8016EC74 2463717C */  addiu      $v1, $v1, %lo(D_8018717C_ovl5)
    /* 1160E8 8016EC78 8C660000 */  lw         $a2, 0x0($v1)
    /* 1160EC 8016EC7C 8C670004 */  lw         $a3, 0x4($v1)
    /* 1160F0 8016EC80 02402025 */  or         $a0, $s2, $zero
    /* 1160F4 8016EC84 0C05BA34 */  jal        func_8016E8D0_ovl5
    /* 1160F8 8016EC88 00402825 */   or        $a1, $v0, $zero
    /* 1160FC 8016EC8C 0C002DAF */  jal        ohSleep
    /* 116100 8016EC90 2404000F */   addiu     $a0, $zero, 0xF
    /* 116104 8016EC94 3C013E80 */  lui        $at, (0x3E800000 >> 16)
    /* 116108 8016EC98 4481E000 */  mtc1       $at, $f28
    /* 11610C 8016EC9C 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
    /* 116110 8016ECA0 4481D000 */  mtc1       $at, $f26
    /* 116114 8016ECA4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 116118 8016ECA8 4481C000 */  mtc1       $at, $f24
    /* 11611C 8016ECAC 27B10070 */  addiu      $s1, $sp, 0x70
    /* 116120 8016ECB0 02402025 */  or         $a0, $s2, $zero
  .L8016ECB4_ovl5:
    /* 116124 8016ECB4 8E250000 */  lw         $a1, 0x0($s1)
    /* 116128 8016ECB8 0C0571D0 */  jal        func_8015C740_ovl5
    /* 11612C 8016ECBC 4600C506 */   mov.s     $f20, $f24
    /* 116130 8016ECC0 00408025 */  or         $s0, $v0, $zero
    /* 116134 8016ECC4 0C029D9E */  jal        play_sound
    /* 116138 8016ECC8 24040111 */   addiu     $a0, $zero, 0x111
    /* 11613C 8016ECCC 461AC03C */  c.lt.s     $f24, $f26
    /* 116140 8016ECD0 00000000 */  nop
    /* 116144 8016ECD4 45020024 */  bc1fl      .L8016ED68_ovl5
    /* 116148 8016ECD8 4614C03C */   c.lt.s    $f24, $f20
    /* 11614C 8016ECDC 960C001C */  lhu        $t4, 0x1C($s0)
  .L8016ECE0_ovl5:
    /* 116150 8016ECE0 960E001E */  lhu        $t6, 0x1E($s0)
    /* 116154 8016ECE4 E614002C */  swc1       $f20, 0x2C($s0)
    /* 116158 8016ECE8 E6140028 */  swc1       $f20, 0x28($s0)
    /* 11615C 8016ECEC 8E220000 */  lw         $v0, 0x0($s1)
    /* 116160 8016ECF0 02002025 */  or         $a0, $s0, $zero
    /* 116164 8016ECF4 C4440008 */  lwc1       $f4, 0x8($v0)
    /* 116168 8016ECF8 05810003 */  bgez       $t4, .L8016ED08_ovl5
    /* 11616C 8016ECFC 000C6843 */   sra       $t5, $t4, 1
    /* 116170 8016ED00 25810001 */  addiu      $at, $t4, 0x1
    /* 116174 8016ED04 00016843 */  sra        $t5, $at, 1
  .L8016ED08_ovl5:
    /* 116178 8016ED08 448D3000 */  mtc1       $t5, $f6
    /* 11617C 8016ED0C C450000C */  lwc1       $f16, 0xC($v0)
    /* 116180 8016ED10 46803220 */  cvt.s.w    $f8, $f6
    /* 116184 8016ED14 46082280 */  add.s      $f10, $f4, $f8
    /* 116188 8016ED18 44055000 */  mfc1       $a1, $f10
    /* 11618C 8016ED1C 05C10003 */  bgez       $t6, .L8016ED2C_ovl5
    /* 116190 8016ED20 000E7843 */   sra       $t7, $t6, 1
    /* 116194 8016ED24 25C10001 */  addiu      $at, $t6, 0x1
    /* 116198 8016ED28 00017843 */  sra        $t7, $at, 1
  .L8016ED2C_ovl5:
    /* 11619C 8016ED2C 448F9000 */  mtc1       $t7, $f18
    /* 1161A0 8016ED30 00000000 */  nop
    /* 1161A4 8016ED34 468091A0 */  cvt.s.w    $f6, $f18
    /* 1161A8 8016ED38 46068100 */  add.s      $f4, $f16, $f6
    /* 1161AC 8016ED3C 44062000 */  mfc1       $a2, $f4
    /* 1161B0 8016ED40 0C057201 */  jal        func_8015C804_ovl5
    /* 1161B4 8016ED44 00000000 */   nop
    /* 1161B8 8016ED48 0C002DAF */  jal        ohSleep
    /* 1161BC 8016ED4C 24040001 */   addiu     $a0, $zero, 0x1
    /* 1161C0 8016ED50 461CA500 */  add.s      $f20, $f20, $f28
    /* 1161C4 8016ED54 461AA03C */  c.lt.s     $f20, $f26
    /* 1161C8 8016ED58 00000000 */  nop
    /* 1161CC 8016ED5C 4503FFE0 */  bc1tl      .L8016ECE0_ovl5
    /* 1161D0 8016ED60 960C001C */   lhu       $t4, 0x1C($s0)
    /* 1161D4 8016ED64 4614C03C */  c.lt.s     $f24, $f20
  .L8016ED68_ovl5:
    /* 1161D8 8016ED68 C6000028 */  lwc1       $f0, 0x28($s0)
    /* 1161DC 8016ED6C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* 1161E0 8016ED70 45020029 */  bc1fl      .L8016EE18_ovl5
    /* 1161E4 8016ED74 E618002C */   swc1      $f24, 0x2C($s0)
    /* 1161E8 8016ED78 46180201 */  sub.s      $f8, $f0, $f24
    /* 1161EC 8016ED7C 44815000 */  mtc1       $at, $f10
    /* 1161F0 8016ED80 00000000 */  nop
    /* 1161F4 8016ED84 460A4582 */  mul.s      $f22, $f8, $f10
    /* 1161F8 8016ED88 00000000 */  nop
    /* 1161FC 8016ED8C 9618001C */  lhu        $t8, 0x1C($s0)
  .L8016ED90_ovl5:
    /* 116200 8016ED90 9608001E */  lhu        $t0, 0x1E($s0)
    /* 116204 8016ED94 E614002C */  swc1       $f20, 0x2C($s0)
    /* 116208 8016ED98 E6140028 */  swc1       $f20, 0x28($s0)
    /* 11620C 8016ED9C 8E220000 */  lw         $v0, 0x0($s1)
    /* 116210 8016EDA0 02002025 */  or         $a0, $s0, $zero
    /* 116214 8016EDA4 C4520008 */  lwc1       $f18, 0x8($v0)
    /* 116218 8016EDA8 07010003 */  bgez       $t8, .L8016EDB8_ovl5
    /* 11621C 8016EDAC 0018C843 */   sra       $t9, $t8, 1
    /* 116220 8016EDB0 27010001 */  addiu      $at, $t8, 0x1
    /* 116224 8016EDB4 0001C843 */  sra        $t9, $at, 1
  .L8016EDB8_ovl5:
    /* 116228 8016EDB8 44998000 */  mtc1       $t9, $f16
    /* 11622C 8016EDBC C448000C */  lwc1       $f8, 0xC($v0)
    /* 116230 8016EDC0 468081A0 */  cvt.s.w    $f6, $f16
    /* 116234 8016EDC4 46069100 */  add.s      $f4, $f18, $f6
    /* 116238 8016EDC8 44052000 */  mfc1       $a1, $f4
    /* 11623C 8016EDCC 05010003 */  bgez       $t0, .L8016EDDC_ovl5
    /* 116240 8016EDD0 00084843 */   sra       $t1, $t0, 1
    /* 116244 8016EDD4 25010001 */  addiu      $at, $t0, 0x1
    /* 116248 8016EDD8 00014843 */  sra        $t1, $at, 1
  .L8016EDDC_ovl5:
    /* 11624C 8016EDDC 44895000 */  mtc1       $t1, $f10
    /* 116250 8016EDE0 00000000 */  nop
    /* 116254 8016EDE4 46805420 */  cvt.s.w    $f16, $f10
    /* 116258 8016EDE8 46104480 */  add.s      $f18, $f8, $f16
    /* 11625C 8016EDEC 44069000 */  mfc1       $a2, $f18
    /* 116260 8016EDF0 0C057201 */  jal        func_8015C804_ovl5
    /* 116264 8016EDF4 00000000 */   nop
    /* 116268 8016EDF8 0C002DAF */  jal        ohSleep
    /* 11626C 8016EDFC 24040001 */   addiu     $a0, $zero, 0x1
    /* 116270 8016EE00 4616A501 */  sub.s      $f20, $f20, $f22
    /* 116274 8016EE04 4614C03C */  c.lt.s     $f24, $f20
    /* 116278 8016EE08 00000000 */  nop
    /* 11627C 8016EE0C 4503FFE0 */  bc1tl      .L8016ED90_ovl5
    /* 116280 8016EE10 9618001C */   lhu       $t8, 0x1C($s0)
    /* 116284 8016EE14 E618002C */  swc1       $f24, 0x2C($s0)
  .L8016EE18_ovl5:
    /* 116288 8016EE18 E6180028 */  swc1       $f24, 0x28($s0)
    /* 11628C 8016EE1C 8E2A0000 */  lw         $t2, 0x0($s1)
    /* 116290 8016EE20 24040010 */  addiu      $a0, $zero, 0x10
    /* 116294 8016EE24 C5460008 */  lwc1       $f6, 0x8($t2)
    /* 116298 8016EE28 E6060020 */  swc1       $f6, 0x20($s0)
    /* 11629C 8016EE2C 8E2B0000 */  lw         $t3, 0x0($s1)
    /* 1162A0 8016EE30 C564000C */  lwc1       $f4, 0xC($t3)
    /* 1162A4 8016EE34 0C002DAF */  jal        ohSleep
    /* 1162A8 8016EE38 E6040024 */   swc1      $f4, 0x24($s0)
    /* 1162AC 8016EE3C 920C0013 */  lbu        $t4, 0x13($s0)
    /* 1162B0 8016EE40 2404000A */  addiu      $a0, $zero, 0xA
    /* 1162B4 8016EE44 358D0008 */  ori        $t5, $t4, 0x8
    /* 1162B8 8016EE48 0C002DAF */  jal        ohSleep
    /* 1162BC 8016EE4C A20D0013 */   sb        $t5, 0x13($s0)
    /* 1162C0 8016EE50 920E0013 */  lbu        $t6, 0x13($s0)
    /* 1162C4 8016EE54 02002025 */  or         $a0, $s0, $zero
    /* 1162C8 8016EE58 31CFFFF7 */  andi       $t7, $t6, 0xFFF7
    /* 1162CC 8016EE5C 0C02B2DF */  jal        func_800ACB7C
    /* 1162D0 8016EE60 A20F0013 */   sb        $t7, 0x13($s0)
    /* 1162D4 8016EE64 2631FFFC */  addiu      $s1, $s1, -0x4
    /* 1162D8 8016EE68 27B80068 */  addiu      $t8, $sp, 0x68
    /* 1162DC 8016EE6C 0238082B */  sltu       $at, $s1, $t8
    /* 1162E0 8016EE70 5020FF90 */  beql       $at, $zero, .L8016ECB4_ovl5
    /* 1162E4 8016EE74 02402025 */   or        $a0, $s2, $zero
    /* 1162E8 8016EE78 3C058018 */  lui        $a1, %hi(D_80186BD8_ovl5)
    /* 1162EC 8016EE7C 24A56BD8 */  addiu      $a1, $a1, %lo(D_80186BD8_ovl5)
    /* 1162F0 8016EE80 0C0571D0 */  jal        func_8015C740_ovl5
    /* 1162F4 8016EE84 02402025 */   or        $a0, $s2, $zero
    /* 1162F8 8016EE88 00408025 */  or         $s0, $v0, $zero
    /* 1162FC 8016EE8C 0C029D9E */  jal        play_sound
    /* 116300 8016EE90 240400B9 */   addiu     $a0, $zero, 0xB9
    /* 116304 8016EE94 0C059584 */  jal        func_80165610_ovl5
    /* 116308 8016EE98 00000000 */   nop
    /* 11630C 8016EE9C 3C018019 */  lui        $at, %hi(D_8018E420_ovl5)
    /* 116310 8016EEA0 AC20E420 */  sw         $zero, %lo(D_8018E420_ovl5)($at)
    /* 116314 8016EEA4 02002025 */  or         $a0, $s0, $zero
    /* 116318 8016EEA8 0C05BBD1 */  jal        func_8016EF44_ovl5
    /* 11631C 8016EEAC 27A500A4 */   addiu     $a1, $sp, 0xA4
    /* 116320 8016EEB0 0C002DAF */  jal        ohSleep
    /* 116324 8016EEB4 24040002 */   addiu     $a0, $zero, 0x2
    /* 116328 8016EEB8 02002025 */  or         $a0, $s0, $zero
    /* 11632C 8016EEBC 0C05BBD1 */  jal        func_8016EF44_ovl5
    /* 116330 8016EEC0 27A50098 */   addiu     $a1, $sp, 0x98
    /* 116334 8016EEC4 0C002DAF */  jal        ohSleep
    /* 116338 8016EEC8 24040002 */   addiu     $a0, $zero, 0x2
    /* 11633C 8016EECC 02002025 */  or         $a0, $s0, $zero
    /* 116340 8016EED0 0C05BBD1 */  jal        func_8016EF44_ovl5
    /* 116344 8016EED4 27A5008C */   addiu     $a1, $sp, 0x8C
    /* 116348 8016EED8 0C002DAF */  jal        ohSleep
    /* 11634C 8016EEDC 24040002 */   addiu     $a0, $zero, 0x2
    /* 116350 8016EEE0 02002025 */  or         $a0, $s0, $zero
    /* 116354 8016EEE4 0C05BBD1 */  jal        func_8016EF44_ovl5
    /* 116358 8016EEE8 27A50080 */   addiu     $a1, $sp, 0x80
    /* 11635C 8016EEEC 0C002DAF */  jal        ohSleep
    /* 116360 8016EEF0 24040002 */   addiu     $a0, $zero, 0x2
    /* 116364 8016EEF4 02002025 */  or         $a0, $s0, $zero
    /* 116368 8016EEF8 0C05BBD1 */  jal        func_8016EF44_ovl5
    /* 11636C 8016EEFC 27A50074 */   addiu     $a1, $sp, 0x74
    /* 116370 8016EF00 0C02B2F7 */  jal        func_800ACBDC
    /* 116374 8016EF04 02402025 */   or        $a0, $s2, $zero
    /* 116378 8016EF08 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 11637C 8016EF0C 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 116380 8016EF10 0C02C640 */  jal        func_800B1900
    /* 116384 8016EF14 97240002 */   lhu       $a0, 0x2($t9)
    /* 116388 8016EF18 8FBF0054 */  lw         $ra, 0x54($sp)
    /* 11638C 8016EF1C D7B40020 */  ldc1       $f20, 0x20($sp)
    /* 116390 8016EF20 D7B60028 */  ldc1       $f22, 0x28($sp)
    /* 116394 8016EF24 D7B80030 */  ldc1       $f24, 0x30($sp)
    /* 116398 8016EF28 D7BA0038 */  ldc1       $f26, 0x38($sp)
    /* 11639C 8016EF2C D7BC0040 */  ldc1       $f28, 0x40($sp)
    /* 1163A0 8016EF30 8FB00048 */  lw         $s0, 0x48($sp)
    /* 1163A4 8016EF34 8FB1004C */  lw         $s1, 0x4C($sp)
    /* 1163A8 8016EF38 8FB20050 */  lw         $s2, 0x50($sp)
    /* 1163AC 8016EF3C 03E00008 */  jr         $ra
    /* 1163B0 8016EF40 27BD00C0 */   addiu     $sp, $sp, 0xC0
endlabel func_8016EAFC_ovl5
.size func_8016EAFC_ovl5, . - func_8016EAFC_ovl5
