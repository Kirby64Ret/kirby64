nonmatching func_801E9858_ovl16, 0x3B8

glabel func_801E9858_ovl16
    /* 21FB08 801E9858 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 21FB0C 801E985C AFB20020 */  sw         $s2, 0x20($sp)
    /* 21FB10 801E9860 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* 21FB14 801E9864 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* 21FB18 801E9868 8E420000 */  lw         $v0, 0x0($s2)
    /* 21FB1C 801E986C AFBF003C */  sw         $ra, 0x3C($sp)
    /* 21FB20 801E9870 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 21FB24 801E9874 AFB70034 */  sw         $s7, 0x34($sp)
    /* 21FB28 801E9878 AFB60030 */  sw         $s6, 0x30($sp)
    /* 21FB2C 801E987C AFB5002C */  sw         $s5, 0x2C($sp)
    /* 21FB30 801E9880 AFB40028 */  sw         $s4, 0x28($sp)
    /* 21FB34 801E9884 AFB30024 */  sw         $s3, 0x24($sp)
    /* 21FB38 801E9888 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 21FB3C 801E988C AFB00018 */  sw         $s0, 0x18($sp)
    /* 21FB40 801E9890 AFA40040 */  sw         $a0, 0x40($sp)
    /* 21FB44 801E9894 8C500000 */  lw         $s0, 0x0($v0)
    /* 21FB48 801E9898 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* 21FB4C 801E989C 24840D50 */  addiu      $a0, $a0, %lo(D_800E0D50)
    /* 21FB50 801E98A0 00108080 */  sll        $s0, $s0, 2
    /* 21FB54 801E98A4 00907021 */  addu       $t6, $a0, $s0
    /* 21FB58 801E98A8 8DD10000 */  lw         $s1, 0x0($t6)
    /* 21FB5C 801E98AC 3C05800E */  lui        $a1, %hi(D_800E17D0)
    /* 21FB60 801E98B0 24A517D0 */  addiu      $a1, $a1, %lo(D_800E17D0)
    /* 21FB64 801E98B4 00117880 */  sll        $t7, $s1, 2
    /* 21FB68 801E98B8 00AFC021 */  addu       $t8, $a1, $t7
    /* 21FB6C 801E98BC C7040000 */  lwc1       $f4, 0x0($t8)
    /* 21FB70 801E98C0 00B0C821 */  addu       $t9, $a1, $s0
    /* 21FB74 801E98C4 3C06800F */  lui        $a2, %hi(D_800E9020)
    /* 21FB78 801E98C8 E7240000 */  swc1       $f4, 0x0($t9)
    /* 21FB7C 801E98CC 8C500000 */  lw         $s0, 0x0($v0)
    /* 21FB80 801E98D0 24C69020 */  addiu      $a2, $a2, %lo(D_800E9020)
    /* 21FB84 801E98D4 00108080 */  sll        $s0, $s0, 2
    /* 21FB88 801E98D8 00904021 */  addu       $t0, $a0, $s0
    /* 21FB8C 801E98DC 8D090000 */  lw         $t1, 0x0($t0)
    /* 21FB90 801E98E0 00D06021 */  addu       $t4, $a2, $s0
    /* 21FB94 801E98E4 00095080 */  sll        $t2, $t1, 2
    /* 21FB98 801E98E8 00CA5821 */  addu       $t3, $a2, $t2
    /* 21FB9C 801E98EC C5660000 */  lwc1       $f6, 0x0($t3)
    /* 21FBA0 801E98F0 0C066ED6 */  jal        func_8019BB58_ovl7
    /* 21FBA4 801E98F4 E5860000 */   swc1      $f6, 0x0($t4)
    /* 21FBA8 801E98F8 8E420000 */  lw         $v0, 0x0($s2)
    /* 21FBAC 801E98FC 3C0D800B */  lui        $t5, %hi(func_800B7560)
    /* 21FBB0 801E9900 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 21FBB4 801E9904 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 21FBB8 801E9908 25AD7560 */  addiu      $t5, $t5, %lo(func_800B7560)
    /* 21FBBC 801E990C 3C18801F */  lui        $t8, %hi(func_801E9C10_ovl16)
    /* 21FBC0 801E9910 000E7880 */  sll        $t7, $t6, 2
    /* 21FBC4 801E9914 002F0821 */  addu       $at, $at, $t7
    /* 21FBC8 801E9918 AC2DEF90 */  sw         $t5, %lo(D_800DEF90)($at)
    /* 21FBCC 801E991C 8C590000 */  lw         $t9, 0x0($v0)
    /* 21FBD0 801E9920 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 21FBD4 801E9924 27189C10 */  addiu      $t8, $t8, %lo(func_801E9C10_ovl16)
    /* 21FBD8 801E9928 00194080 */  sll        $t0, $t9, 2
    /* 21FBDC 801E992C 00280821 */  addu       $at, $at, $t0
    /* 21FBE0 801E9930 0C02CCFD */  jal        func_800B33F4
    /* 21FBE4 801E9934 AC38F150 */   sw        $t8, %lo(D_800DF150)($at)
    /* 21FBE8 801E9938 3C10800D */  lui        $s0, %hi(gameTicksPerDraw)
    /* 21FBEC 801E993C 26106B10 */  addiu      $s0, $s0, %lo(gameTicksPerDraw)
    /* 21FBF0 801E9940 0C02BB30 */  jal        func_800AECC0
    /* 21FBF4 801E9944 C60C0000 */   lwc1      $f12, 0x0($s0)
    /* 21FBF8 801E9948 0C02BB48 */  jal        func_800AED20
    /* 21FBFC 801E994C C60C0000 */   lwc1      $f12, 0x0($s0)
    /* 21FC00 801E9950 8E420000 */  lw         $v0, 0x0($s2)
    /* 21FC04 801E9954 3C04800E */  lui        $a0, %hi(gEntitiesNextPosXArray)
    /* 21FC08 801E9958 248425D0 */  addiu      $a0, $a0, %lo(gEntitiesNextPosXArray)
    /* 21FC0C 801E995C 8C500000 */  lw         $s0, 0x0($v0)
    /* 21FC10 801E9960 3C01800F */  lui        $at, %hi(D_800EB320)
    /* 21FC14 801E9964 3C05800E */  lui        $a1, %hi(gEntitiesNextPosYArray)
    /* 21FC18 801E9968 00108080 */  sll        $s0, $s0, 2
    /* 21FC1C 801E996C 00904821 */  addu       $t1, $a0, $s0
    /* 21FC20 801E9970 C5280000 */  lwc1       $f8, 0x0($t1)
    /* 21FC24 801E9974 00300821 */  addu       $at, $at, $s0
    /* 21FC28 801E9978 24A52790 */  addiu      $a1, $a1, %lo(gEntitiesNextPosYArray)
    /* 21FC2C 801E997C E428B320 */  swc1       $f8, %lo(D_800EB320)($at)
    /* 21FC30 801E9980 8C500000 */  lw         $s0, 0x0($v0)
    /* 21FC34 801E9984 3C01800F */  lui        $at, %hi(D_800EB160)
    /* 21FC38 801E9988 00111880 */  sll        $v1, $s1, 2
    /* 21FC3C 801E998C 00108080 */  sll        $s0, $s0, 2
    /* 21FC40 801E9990 00B05021 */  addu       $t2, $a1, $s0
    /* 21FC44 801E9994 C54A0000 */  lwc1       $f10, 0x0($t2)
    /* 21FC48 801E9998 00300821 */  addu       $at, $at, $s0
    /* 21FC4C 801E999C 00835821 */  addu       $t3, $a0, $v1
    /* 21FC50 801E99A0 E42AB160 */  swc1       $f10, %lo(D_800EB160)($at)
    /* 21FC54 801E99A4 C5720000 */  lwc1       $f18, 0x0($t3)
    /* 21FC58 801E99A8 C4900000 */  lwc1       $f16, 0x0($a0)
    /* 21FC5C 801E99AC 00A36021 */  addu       $t4, $a1, $v1
    /* 21FC60 801E99B0 C5860000 */  lwc1       $f6, 0x0($t4)
    /* 21FC64 801E99B4 46128301 */  sub.s      $f12, $f16, $f18
    /* 21FC68 801E99B8 C4A40000 */  lwc1       $f4, 0x0($a1)
    /* 21FC6C 801E99BC 46006307 */  neg.s      $f12, $f12
    /* 21FC70 801E99C0 0C0061C3 */  jal        atan2f
    /* 21FC74 801E99C4 46062381 */   sub.s     $f14, $f4, $f6
    /* 21FC78 801E99C8 8E420000 */  lw         $v0, 0x0($s2)
    /* 21FC7C 801E99CC 3C13800F */  lui        $s3, %hi(D_800EA6E0)
    /* 21FC80 801E99D0 2673A6E0 */  addiu      $s3, $s3, %lo(D_800EA6E0)
    /* 21FC84 801E99D4 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 21FC88 801E99D8 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* 21FC8C 801E99DC 44814000 */  mtc1       $at, $f8
    /* 21FC90 801E99E0 000E6880 */  sll        $t5, $t6, 2
    /* 21FC94 801E99E4 026D7821 */  addu       $t7, $s3, $t5
    /* 21FC98 801E99E8 E5E00000 */  swc1       $f0, 0x0($t7)
    /* 21FC9C 801E99EC 8C590000 */  lw         $t9, 0x0($v0)
    /* 21FCA0 801E99F0 3C14800F */  lui        $s4, %hi(D_800EA8A0)
    /* 21FCA4 801E99F4 2694A8A0 */  addiu      $s4, $s4, %lo(D_800EA8A0)
    /* 21FCA8 801E99F8 0019C080 */  sll        $t8, $t9, 2
    /* 21FCAC 801E99FC 02984021 */  addu       $t0, $s4, $t8
    /* 21FCB0 801E9A00 E5080000 */  swc1       $f8, 0x0($t0)
    /* 21FCB4 801E9A04 8C490000 */  lw         $t1, 0x0($v0)
    /* 21FCB8 801E9A08 44805000 */  mtc1       $zero, $f10
    /* 21FCBC 801E9A0C 3C17800F */  lui        $s7, %hi(D_800EAA60)
    /* 21FCC0 801E9A10 26F7AA60 */  addiu      $s7, $s7, %lo(D_800EAA60)
    /* 21FCC4 801E9A14 00095080 */  sll        $t2, $t1, 2
    /* 21FCC8 801E9A18 02EA5821 */  addu       $t3, $s7, $t2
    /* 21FCCC 801E9A1C E56A0000 */  swc1       $f10, 0x0($t3)
    /* 21FCD0 801E9A20 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 21FCD4 801E9A24 3C014320 */  lui        $at, (0x43200000 >> 16)
    /* 21FCD8 801E9A28 44818000 */  mtc1       $at, $f16
    /* 21FCDC 801E9A2C 3C1E800F */  lui        $fp, %hi(D_800EAC20)
    /* 21FCE0 801E9A30 27DEAC20 */  addiu      $fp, $fp, %lo(D_800EAC20)
    /* 21FCE4 801E9A34 000C7080 */  sll        $t6, $t4, 2
    /* 21FCE8 801E9A38 03CE6821 */  addu       $t5, $fp, $t6
    /* 21FCEC 801E9A3C E5B00000 */  swc1       $f16, 0x0($t5)
    /* 21FCF0 801E9A40 8C500000 */  lw         $s0, 0x0($v0)
    /* 21FCF4 801E9A44 3C0F800F */  lui        $t7, %hi(D_800EA1A0)
    /* 21FCF8 801E9A48 3C18800F */  lui        $t8, %hi(D_800E9E20)
    /* 21FCFC 801E9A4C 00108080 */  sll        $s0, $s0, 2
    /* 21FD00 801E9A50 01F07821 */  addu       $t7, $t7, $s0
    /* 21FD04 801E9A54 8DEFA1A0 */  lw         $t7, %lo(D_800EA1A0)($t7)
    /* 21FD08 801E9A58 0310C021 */  addu       $t8, $t8, $s0
    /* 21FD0C 801E9A5C 8F189E20 */  lw         $t8, %lo(D_800E9E20)($t8)
    /* 21FD10 801E9A60 000FC880 */  sll        $t9, $t7, 2
    /* 21FD14 801E9A64 032FC821 */  addu       $t9, $t9, $t7
    /* 21FD18 801E9A68 0019C880 */  sll        $t9, $t9, 2
    /* 21FD1C 801E9A6C 00184080 */  sll        $t0, $t8, 2
    /* 21FD20 801E9A70 03284821 */  addu       $t1, $t9, $t0
    /* 21FD24 801E9A74 3C01801F */  lui        $at, %hi(D_801EFC84_ovl16)
    /* 21FD28 801E9A78 00290821 */  addu       $at, $at, $t1
    /* 21FD2C 801E9A7C C432FC84 */  lwc1       $f18, %lo(D_801EFC84_ovl16)($at)
    /* 21FD30 801E9A80 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 21FD34 801E9A84 00300821 */  addu       $at, $at, $s0
    /* 21FD38 801E9A88 4600910D */  trunc.w.s  $f4, $f18
    /* 21FD3C 801E9A8C 24030001 */  addiu      $v1, $zero, 0x1
    /* 21FD40 801E9A90 3C040001 */  lui        $a0, (0x105B6 >> 16)
    /* 21FD44 801E9A94 348405B6 */  ori        $a0, $a0, (0x105B6 & 0xFFFF)
    /* 21FD48 801E9A98 440B2000 */  mfc1       $t3, $f4
    /* 21FD4C 801E9A9C 00000000 */  nop
    /* 21FD50 801E9AA0 AC2B98E0 */  sw         $t3, %lo(D_800E98E0)($at)
    /* 21FD54 801E9AA4 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 21FD58 801E9AA8 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 21FD5C 801E9AAC 000C7080 */  sll        $t6, $t4, 2
    /* 21FD60 801E9AB0 002E0821 */  addu       $at, $at, $t6
    /* 21FD64 801E9AB4 AC239AA0 */  sw         $v1, %lo(D_800E9AA0)($at)
    /* 21FD68 801E9AB8 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 21FD6C 801E9ABC 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 21FD70 801E9AC0 000D7880 */  sll        $t7, $t5, 2
    /* 21FD74 801E9AC4 002F0821 */  addu       $at, $at, $t7
    /* 21FD78 801E9AC8 0C02A806 */  jal        func_800AA018
    /* 21FD7C 801E9ACC AC239C60 */   sw        $v1, %lo(D_800E9C60)($at)
    /* 21FD80 801E9AD0 3C040001 */  lui        $a0, (0x105B5 >> 16)
    /* 21FD84 801E9AD4 0C02A806 */  jal        func_800AA018
    /* 21FD88 801E9AD8 348405B5 */   ori       $a0, $a0, (0x105B5 & 0xFFFF)
    /* 21FD8C 801E9ADC 8E420000 */  lw         $v0, 0x0($s2)
    /* 21FD90 801E9AE0 3C16800E */  lui        $s6, %hi(D_800E3210)
    /* 21FD94 801E9AE4 3C15800E */  lui        $s5, %hi(D_800E3050)
    /* 21FD98 801E9AE8 8C500000 */  lw         $s0, 0x0($v0)
    /* 21FD9C 801E9AEC 00008825 */  or         $s1, $zero, $zero
    /* 21FDA0 801E9AF0 26B53050 */  addiu      $s5, $s5, %lo(D_800E3050)
    /* 21FDA4 801E9AF4 00108080 */  sll        $s0, $s0, 2
    /* 21FDA8 801E9AF8 02F0C021 */  addu       $t8, $s7, $s0
    /* 21FDAC 801E9AFC 03D0C821 */  addu       $t9, $fp, $s0
    /* 21FDB0 801E9B00 C7280000 */  lwc1       $f8, 0x0($t9)
    /* 21FDB4 801E9B04 C7060000 */  lwc1       $f6, 0x0($t8)
    /* 21FDB8 801E9B08 26D63210 */  addiu      $s6, $s6, %lo(D_800E3210)
    /* 21FDBC 801E9B0C 4608303C */  c.lt.s     $f6, $f8
    /* 21FDC0 801E9B10 00000000 */  nop
    /* 21FDC4 801E9B14 4500002E */  bc1f       .L801E9BD0_ovl16
    /* 21FDC8 801E9B18 2A210006 */   slti      $at, $s1, 0x6
  .L801E9B1C_ovl16:
    /* 21FDCC 801E9B1C 14200005 */  bnez       $at, .L801E9B34_ovl16
    /* 21FDD0 801E9B20 3C01800F */   lui       $at, %hi(D_800E9C60)
    /* 21FDD4 801E9B24 00300821 */  addu       $at, $at, $s0
    /* 21FDD8 801E9B28 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
    /* 21FDDC 801E9B2C 8C500000 */  lw         $s0, 0x0($v0)
    /* 21FDE0 801E9B30 00108080 */  sll        $s0, $s0, 2
  .L801E9B34_ovl16:
    /* 21FDE4 801E9B34 02704021 */  addu       $t0, $s3, $s0
    /* 21FDE8 801E9B38 0C00B5B8 */  jal        sinf
    /* 21FDEC 801E9B3C C50C0000 */   lwc1      $f12, 0x0($t0)
    /* 21FDF0 801E9B40 8E420000 */  lw         $v0, 0x0($s2)
    /* 21FDF4 801E9B44 8C500000 */  lw         $s0, 0x0($v0)
    /* 21FDF8 801E9B48 00108080 */  sll        $s0, $s0, 2
    /* 21FDFC 801E9B4C 02904821 */  addu       $t1, $s4, $s0
    /* 21FE00 801E9B50 C52A0000 */  lwc1       $f10, 0x0($t1)
    /* 21FE04 801E9B54 02B05021 */  addu       $t2, $s5, $s0
    /* 21FE08 801E9B58 46005407 */  neg.s      $f16, $f10
    /* 21FE0C 801E9B5C 46008482 */  mul.s      $f18, $f16, $f0
    /* 21FE10 801E9B60 E5520000 */  swc1       $f18, 0x0($t2)
    /* 21FE14 801E9B64 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 21FE18 801E9B68 000B6080 */  sll        $t4, $t3, 2
    /* 21FE1C 801E9B6C 026C7021 */  addu       $t6, $s3, $t4
    /* 21FE20 801E9B70 0C00D604 */  jal        cosf
    /* 21FE24 801E9B74 C5CC0000 */   lwc1      $f12, 0x0($t6)
    /* 21FE28 801E9B78 8E4D0000 */  lw         $t5, 0x0($s2)
    /* 21FE2C 801E9B7C 24040001 */  addiu      $a0, $zero, 0x1
    /* 21FE30 801E9B80 8DB00000 */  lw         $s0, 0x0($t5)
    /* 21FE34 801E9B84 00108080 */  sll        $s0, $s0, 2
    /* 21FE38 801E9B88 02907821 */  addu       $t7, $s4, $s0
    /* 21FE3C 801E9B8C C5E40000 */  lwc1       $f4, 0x0($t7)
    /* 21FE40 801E9B90 02D0C021 */  addu       $t8, $s6, $s0
    /* 21FE44 801E9B94 46002182 */  mul.s      $f6, $f4, $f0
    /* 21FE48 801E9B98 0C002DAF */  jal        ohSleep
    /* 21FE4C 801E9B9C E7060000 */   swc1      $f6, 0x0($t8)
    /* 21FE50 801E9BA0 8E420000 */  lw         $v0, 0x0($s2)
    /* 21FE54 801E9BA4 26310001 */  addiu      $s1, $s1, 0x1
    /* 21FE58 801E9BA8 8C500000 */  lw         $s0, 0x0($v0)
    /* 21FE5C 801E9BAC 00108080 */  sll        $s0, $s0, 2
    /* 21FE60 801E9BB0 02F0C821 */  addu       $t9, $s7, $s0
    /* 21FE64 801E9BB4 03D04021 */  addu       $t0, $fp, $s0
    /* 21FE68 801E9BB8 C50A0000 */  lwc1       $f10, 0x0($t0)
    /* 21FE6C 801E9BBC C7280000 */  lwc1       $f8, 0x0($t9)
    /* 21FE70 801E9BC0 460A403C */  c.lt.s     $f8, $f10
    /* 21FE74 801E9BC4 00000000 */  nop
    /* 21FE78 801E9BC8 4503FFD4 */  bc1tl      .L801E9B1C_ovl16
    /* 21FE7C 801E9BCC 2A210006 */   slti      $at, $s1, 0x6
  .L801E9BD0_ovl16:
    /* 21FE80 801E9BD0 8FBF003C */  lw         $ra, 0x3C($sp)
    /* 21FE84 801E9BD4 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 21FE88 801E9BD8 00300821 */  addu       $at, $at, $s0
    /* 21FE8C 801E9BDC 24090001 */  addiu      $t1, $zero, 0x1
    /* 21FE90 801E9BE0 8FB00018 */  lw         $s0, 0x18($sp)
    /* 21FE94 801E9BE4 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 21FE98 801E9BE8 8FB20020 */  lw         $s2, 0x20($sp)
    /* 21FE9C 801E9BEC 8FB30024 */  lw         $s3, 0x24($sp)
    /* 21FEA0 801E9BF0 8FB40028 */  lw         $s4, 0x28($sp)
    /* 21FEA4 801E9BF4 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 21FEA8 801E9BF8 8FB60030 */  lw         $s6, 0x30($sp)
    /* 21FEAC 801E9BFC 8FB70034 */  lw         $s7, 0x34($sp)
    /* 21FEB0 801E9C00 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 21FEB4 801E9C04 AC29DC50 */  sw         $t1, %lo(gEntityFuncListIDArray)($at)
    /* 21FEB8 801E9C08 03E00008 */  jr         $ra
    /* 21FEBC 801E9C0C 27BD0040 */   addiu     $sp, $sp, 0x40
endlabel func_801E9858_ovl16
.size func_801E9858_ovl16, . - func_801E9858_ovl16
