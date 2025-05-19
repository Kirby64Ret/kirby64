.text
glabel func_801DEDE8_ovl14 # 47
/* 2019D8 801DEDE8 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 2019DC 801DEDEC AFBF001C */  sw          $ra, 0x1C($sp)
/* 2019E0 801DEDF0 AFB00018 */  sw          $s0, 0x18($sp)
/* 2019E4 801DEDF4 24040017 */  addiu       $a0, $zero, 0x17
/* 2019E8 801DEDF8 2405001E */  addiu       $a1, $zero, 0x1E
/* 2019EC 801DEDFC 0C02BB02 */  jal         request_track_general
/* 2019F0 801DEE00 24060050 */   addiu      $a2, $zero, 0x50
/* 2019F4 801DEE04 2841003C */  slti        $at, $v0, 0x3C
/* 2019F8 801DEE08 10200004 */  beqz        $at, .L801DEE1C
/* 2019FC 801DEE0C 00408025 */   move       $s0, $v0
/* 201A00 801DEE10 2401FFFF */  addiu       $at, $zero, -0x1
/* 201A04 801DEE14 14410009 */  bne         $v0, $at, .L801DEE3C
/* 201A08 801DEE18 3C05800E */   lui        $a1, %hi(gEntitiesNextPosXArray)
.L801DEE1C:
/* 201A0C 801DEE1C 3C04801E */  lui         $a0, %hi(D_801E300C_ovl14)
/* 201A10 801DEE20 2484300C */  addiu       $a0, $a0, %lo(D_801E300C_ovl14)
/* 201A14 801DEE24 0C02909C */  jal         print_error_stub
/* 201A18 801DEE28 02002825 */   move       $a1, $s0
/* 201A1C 801DEE2C 0C02C640 */  jal         func_800B1900
/* 201A20 801DEE30 3204FFFF */   andi       $a0, $s0, 0xFFFF
/* 201A24 801DEE34 10000074 */  b           .L801DF008
/* 201A28 801DEE38 2402FFFF */   addiu      $v0, $zero, -0x1
.L801DEE3C:
/* 201A2C 801DEE3C 3C01800E */  lui         $at, %hi(D_800E76C0)
/* 201A30 801DEE40 00300821 */  addu        $at, $at, $s0
/* 201A34 801DEE44 240E00FF */  addiu       $t6, $zero, 0xFF
/* 201A38 801DEE48 A02E76C0 */  sb          $t6, %lo(D_800E76C0)($at)
/* 201A3C 801DEE4C 3C01800E */  lui         $at, %hi(D_800E7730)
/* 201A40 801DEE50 00300821 */  addu        $at, $at, $s0
/* 201A44 801DEE54 A0207730 */  sb          $zero, %lo(D_800E7730)($at)
/* 201A48 801DEE58 3C01800E */  lui         $at, %hi(D_800E77A0)
/* 201A4C 801DEE5C 0010C040 */  sll         $t8, $s0, 1
/* 201A50 801DEE60 00380821 */  addu        $at, $at, $t8
/* 201A54 801DEE64 240F002C */  addiu       $t7, $zero, 0x2C
/* 201A58 801DEE68 A42F77A0 */  sh          $t7, %lo(D_800E77A0)($at)
/* 201A5C 801DEE6C 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 201A60 801DEE70 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 201A64 801DEE74 3C01800E */  lui         $at, %hi(D_800E7880)
/* 201A68 801DEE78 00300821 */  addu        $at, $at, $s0
/* 201A6C 801DEE7C 24190004 */  addiu       $t9, $zero, 0x4
/* 201A70 801DEE80 A0397880 */  sb          $t9, %lo(D_800E7880)($at)
/* 201A74 801DEE84 8C480000 */  lw          $t0, 0x0($v0)
/* 201A78 801DEE88 24A525D0 */  addiu       $a1, $a1, %lo(gEntitiesNextPosXArray)
/* 201A7C 801DEE8C 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 201A80 801DEE90 00084880 */  sll         $t1, $t0, 2
/* 201A84 801DEE94 00A95021 */  addu        $t2, $a1, $t1
/* 201A88 801DEE98 C5400000 */  lwc1        $f0, 0x0($t2)
/* 201A8C 801DEE9C 00101880 */  sll         $v1, $s0, 2
/* 201A90 801DEEA0 00230821 */  addu        $at, $at, $v1
/* 201A94 801DEEA4 00A35821 */  addu        $t3, $a1, $v1
/* 201A98 801DEEA8 E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 201A9C 801DEEAC E5600000 */  swc1        $f0, 0x0($t3)
/* 201AA0 801DEEB0 8C4C0000 */  lw          $t4, 0x0($v0)
/* 201AA4 801DEEB4 3C06800E */  lui         $a2, %hi(gEntitiesNextPosYArray)
/* 201AA8 801DEEB8 24C62790 */  addiu       $a2, $a2, %lo(gEntitiesNextPosYArray)
/* 201AAC 801DEEBC 000C6880 */  sll         $t5, $t4, 2
/* 201AB0 801DEEC0 00CD7021 */  addu        $t6, $a2, $t5
/* 201AB4 801DEEC4 C5C00000 */  lwc1        $f0, 0x0($t6)
/* 201AB8 801DEEC8 3C01800E */  lui         $at, %hi(gEntitiesPosYArray)
/* 201ABC 801DEECC 00230821 */  addu        $at, $at, $v1
/* 201AC0 801DEED0 00C37821 */  addu        $t7, $a2, $v1
/* 201AC4 801DEED4 E4202CD0 */  swc1        $f0, %lo(gEntitiesPosYArray)($at)
/* 201AC8 801DEED8 E5E00000 */  swc1        $f0, 0x0($t7)
/* 201ACC 801DEEDC 8C580000 */  lw          $t8, 0x0($v0)
/* 201AD0 801DEEE0 3C07800E */  lui         $a3, %hi(gEntitiesNextPosZArray)
/* 201AD4 801DEEE4 24E72950 */  addiu       $a3, $a3, %lo(gEntitiesNextPosZArray)
/* 201AD8 801DEEE8 0018C880 */  sll         $t9, $t8, 2
/* 201ADC 801DEEEC 00F94021 */  addu        $t0, $a3, $t9
/* 201AE0 801DEEF0 C5000000 */  lwc1        $f0, 0x0($t0)
/* 201AE4 801DEEF4 3C01800E */  lui         $at, %hi(gEntitiesPosZArray)
/* 201AE8 801DEEF8 00230821 */  addu        $at, $at, $v1
/* 201AEC 801DEEFC E4202E90 */  swc1        $f0, %lo(gEntitiesPosZArray)($at)
/* 201AF0 801DEF00 00E34821 */  addu        $t1, $a3, $v1
/* 201AF4 801DEF04 3C01800F */  lui         $at, %hi(D_800E8E60)
/* 201AF8 801DEF08 00230821 */  addu        $at, $at, $v1
/* 201AFC 801DEF0C E5200000 */  swc1        $f0, 0x0($t1)
/* 201B00 801DEF10 AC208E60 */  sw          $zero, %lo(D_800E8E60)($at)
/* 201B04 801DEF14 8C4A0000 */  lw          $t2, 0x0($v0)
/* 201B08 801DEF18 3C0C800E */  lui         $t4, %hi(D_800E5F90)
/* 201B0C 801DEF1C 3C01800E */  lui         $at, %hi(D_800E6BD0)
/* 201B10 801DEF20 000A5880 */  sll         $t3, $t2, 2
/* 201B14 801DEF24 018B6021 */  addu        $t4, $t4, $t3
/* 201B18 801DEF28 8D8C5F90 */  lw          $t4, %lo(D_800E5F90)($t4)
/* 201B1C 801DEF2C 24040003 */  addiu       $a0, $zero, 0x3
/* 201B20 801DEF30 AFAC0030 */  sw          $t4, 0x30($sp)
/* 201B24 801DEF34 8C4D0000 */  lw          $t5, 0x0($v0)
/* 201B28 801DEF38 AFA30028 */  sw          $v1, 0x28($sp)
/* 201B2C 801DEF3C 000D7080 */  sll         $t6, $t5, 2
/* 201B30 801DEF40 002E0821 */  addu        $at, $at, $t6
/* 201B34 801DEF44 C4246BD0 */  lwc1        $f4, %lo(D_800E6BD0)($at)
/* 201B38 801DEF48 0C006291 */  jal         random_soft_s32_range
/* 201B3C 801DEF4C E7A40034 */   swc1       $f4, 0x34($sp)
/* 201B40 801DEF50 244FFFFF */  addiu       $t7, $v0, -0x1
/* 201B44 801DEF54 448F3000 */  mtc1        $t7, $f6
/* 201B48 801DEF58 3C014220 */  lui         $at, (0x42200000 >> 16)
/* 201B4C 801DEF5C 44815000 */  mtc1        $at, $f10
/* 201B50 801DEF60 46803220 */  cvt.s.w     $f8, $f6
/* 201B54 801DEF64 27A40030 */  addiu       $a0, $sp, 0x30
/* 201B58 801DEF68 460A4402 */  mul.s       $f16, $f8, $f10
/* 201B5C 801DEF6C 44058000 */  mfc1        $a1, $f16
/* 201B60 801DEF70 0C03E622 */  jal         func_800F9888
/* 201B64 801DEF74 00000000 */   nop
/* 201B68 801DEF78 14400010 */  bnez        $v0, .L801DEFBC
/* 201B6C 801DEF7C 8FA30028 */   lw         $v1, 0x28($sp)
/* 201B70 801DEF80 8FA20030 */  lw          $v0, 0x30($sp)
/* 201B74 801DEF84 3C01800E */  lui         $at, %hi(D_800E6150)
/* 201B78 801DEF88 00230821 */  addu        $at, $at, $v1
/* 201B7C 801DEF8C AC226150 */  sw          $v0, %lo(D_800E6150)($at)
/* 201B80 801DEF90 3C01800E */  lui         $at, %hi(D_800E5F90)
/* 201B84 801DEF94 00230821 */  addu        $at, $at, $v1
/* 201B88 801DEF98 C7A00034 */  lwc1        $f0, 0x34($sp)
/* 201B8C 801DEF9C AC225F90 */  sw          $v0, %lo(D_800E5F90)($at)
/* 201B90 801DEFA0 3C01800E */  lui         $at, %hi(D_800E6D90)
/* 201B94 801DEFA4 00230821 */  addu        $at, $at, $v1
/* 201B98 801DEFA8 E4206D90 */  swc1        $f0, %lo(D_800E6D90)($at)
/* 201B9C 801DEFAC 3C01800E */  lui         $at, %hi(D_800E6BD0)
/* 201BA0 801DEFB0 00230821 */  addu        $at, $at, $v1
/* 201BA4 801DEFB4 10000013 */  b           .L801DF004
/* 201BA8 801DEFB8 E4206BD0 */   swc1       $f0, %lo(D_800E6BD0)($at)
.L801DEFBC:
/* 201BAC 801DEFBC 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 201BB0 801DEFC0 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 201BB4 801DEFC4 3C04800E */  lui         $a0, %hi(D_800E5F90)
/* 201BB8 801DEFC8 24845F90 */  addiu       $a0, $a0, %lo(D_800E5F90)
/* 201BBC 801DEFCC 8C580000 */  lw          $t8, 0x0($v0)
/* 201BC0 801DEFD0 00835021 */  addu        $t2, $a0, $v1
/* 201BC4 801DEFD4 3C05800E */  lui         $a1, %hi(D_800E6BD0)
/* 201BC8 801DEFD8 0018C880 */  sll         $t9, $t8, 2
/* 201BCC 801DEFDC 00994021 */  addu        $t0, $a0, $t9
/* 201BD0 801DEFE0 8D090000 */  lw          $t1, 0x0($t0)
/* 201BD4 801DEFE4 24A56BD0 */  addiu       $a1, $a1, %lo(D_800E6BD0)
/* 201BD8 801DEFE8 00A37021 */  addu        $t6, $a1, $v1
/* 201BDC 801DEFEC AD490000 */  sw          $t1, 0x0($t2)
/* 201BE0 801DEFF0 8C4B0000 */  lw          $t3, 0x0($v0)
/* 201BE4 801DEFF4 000B6080 */  sll         $t4, $t3, 2
/* 201BE8 801DEFF8 00AC6821 */  addu        $t5, $a1, $t4
/* 201BEC 801DEFFC C5B20000 */  lwc1        $f18, 0x0($t5)
/* 201BF0 801DF000 E5D20000 */  swc1        $f18, 0x0($t6)
.L801DF004:
/* 201BF4 801DF004 02001025 */  move        $v0, $s0
.L801DF008:
/* 201BF8 801DF008 8FBF001C */  lw          $ra, 0x1C($sp)
/* 201BFC 801DF00C 8FB00018 */  lw          $s0, 0x18($sp)
/* 201C00 801DF010 27BD0040 */  addiu       $sp, $sp, 0x40
/* 201C04 801DF014 03E00008 */  jr          $ra
/* 201C08 801DF018 00000000 */   nop
.type func_801DEDE8_ovl14, @function
.size func_801DEDE8_ovl14, . - func_801DEDE8_ovl14
