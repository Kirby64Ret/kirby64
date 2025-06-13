glabel func_801E49B8_ovl17
/* 22FBA8 801E49B8 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 22FBAC 801E49BC AFB00018 */  sw    $s0, 0x18($sp)
/* 22FBB0 801E49C0 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 22FBB4 801E49C4 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 22FBB8 801E49C8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 22FBBC 801E49CC AFA40048 */  sw    $a0, 0x48($sp)
/* 22FBC0 801E49D0 8E020000 */  lw    $v0, ($s0)
/* 22FBC4 801E49D4 3C03800E */  lui   $v1, %hi(D_800E0D50) # $v1, 0x800e
/* 22FBC8 801E49D8 24630D50 */  addiu $v1, %lo(D_800E0D50) # addiu $v1, $v1, 0x0d50
/* 22FBCC 801E49DC 00021080 */  sll   $v0, $v0, 2
/* 22FBD0 801E49E0 00627021 */  addu  $t6, $v1, $v0
/* 22FBD4 801E49E4 8DCF0000 */  lw    $t7, ($t6)
/* 22FBD8 801E49E8 3C19800E */ lui $t9, %hi(D_800DFBD0)
/* 22FBDC 801E49EC 3C0B800B */  lui   $t3, %hi(D_800B4924) # $t3, 0x800b
/* 22FBE0 801E49F0 000FC080 */  sll   $t8, $t7, 2
/* 22FBE4 801E49F4 0338C821 */  addu  $t9, $t9, $t8
/* 22FBE8 801E49F8 8F39FBD0 */ lw $t9, %lo(D_800DFBD0)($t9)
/* 22FBEC 801E49FC 3C01800E */ lui $at, %hi(D_800DEF90)
/* 22FBF0 801E4A00 00220821 */  addu  $at, $at, $v0
/* 22FBF4 801E4A04 8F2A0064 */  lw    $t2, 0x64($t9)
/* 22FBF8 801E4A08 256B4924 */  addiu $t3, %lo(D_800B4924) # addiu $t3, $t3, 0x4924
/* 22FBFC 801E4A0C AC2BEF90 */ sw $t3, %lo(D_800DEF90)($at)
/* 22FC00 801E4A10 AFAA002C */  sw    $t2, 0x2c($sp)
/* 22FC04 801E4A14 8E0D0000 */  lw    $t5, ($s0)
/* 22FC08 801E4A18 3C01800E */ lui $at, %hi(D_800DF150)
/* 22FC0C 801E4A1C 3C0C801E */  lui   $t4, %hi(D_801E4DD4) # $t4, 0x801e
/* 22FC10 801E4A20 000D7080 */  sll   $t6, $t5, 2
/* 22FC14 801E4A24 002E0821 */  addu  $at, $at, $t6
/* 22FC18 801E4A28 258C4DD4 */  addiu $t4, %lo(D_801E4DD4) # addiu $t4, $t4, 0x4dd4
/* 22FC1C 801E4A2C AC2CF150 */ sw $t4, %lo(D_800DF150)($at)
/* 22FC20 801E4A30 8E0F0000 */  lw    $t7, ($s0)
/* 22FC24 801E4A34 3C01800F */ lui $at, %hi(D_800E8920)
/* 22FC28 801E4A38 3C040001 */  lui   $a0, (0x000100F2 >> 16) # lui $a0, 1
/* 22FC2C 801E4A3C 000FC080 */  sll   $t8, $t7, 2
/* 22FC30 801E4A40 00380821 */  addu  $at, $at, $t8
/* 22FC34 801E4A44 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 22FC38 801E4A48 348400F2 */  ori   $a0, (0x000100F2 & 0xFFFF) # ori $a0, $a0, 0xf2
/* 22FC3C 801E4A4C 24050023 */  li    $a1, 35
/* 22FC40 801E4A50 0C02A619 */  jal   func_800A9864
/* 22FC44 801E4A54 24060010 */   li    $a2, 16
/* 22FC48 801E4A58 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 22FC4C 801E4A5C 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 22FC50 801E4A60 3C01801E */  lui   $at, %hi(D_801E56C8) # $at, 0x801e
/* 22FC54 801E4A64 C42056C8 */  lwc1  $f0, %lo(D_801E56C8)($at)
/* 22FC58 801E4A68 8E0A0000 */  lw    $t2, ($s0)
/* 22FC5C 801E4A6C 3C01800E */ lui $at, %hi(D_800DDA90)
/* 22FC60 801E4A70 24190023 */  li    $t9, 35
/* 22FC64 801E4A74 000A5880 */  sll   $t3, $t2, 2
/* 22FC68 801E4A78 002B0821 */  addu  $at, $at, $t3
/* 22FC6C 801E4A7C AC39DA90 */ sw $t9, %lo(D_800DDA90)($at)
/* 22FC70 801E4A80 8E0D0000 */  lw    $t5, ($s0)
/* 22FC74 801E4A84 3C01800F */ lui $at, %hi(D_800E98E0)
/* 22FC78 801E4A88 3C03800E */  lui   $v1, %hi(D_800E0D50) # $v1, 0x800e
/* 22FC7C 801E4A8C 000D6080 */  sll   $t4, $t5, 2
/* 22FC80 801E4A90 002C0821 */  addu  $at, $at, $t4
/* 22FC84 801E4A94 AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 22FC88 801E4A98 8E0E0000 */  lw    $t6, ($s0)
/* 22FC8C 801E4A9C 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 22FC90 801E4AA0 24630D50 */  addiu $v1, %lo(D_800E0D50) # addiu $v1, $v1, 0x0d50
/* 22FC94 801E4AA4 000E7880 */  sll   $t7, $t6, 2
/* 22FC98 801E4AA8 002F0821 */  addu  $at, $at, $t7
/* 22FC9C 801E4AAC E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 22FCA0 801E4AB0 8E180000 */  lw    $t8, ($s0)
/* 22FCA4 801E4AB4 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 22FCA8 801E4AB8 3C07800E */  lui   $a3, %hi(gEntitiesAngleXArray) # $a3, 0x800e
/* 22FCAC 801E4ABC 00185080 */  sll   $t2, $t8, 2
/* 22FCB0 801E4AC0 002A0821 */  addu  $at, $at, $t2
/* 22FCB4 801E4AC4 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 22FCB8 801E4AC8 8E190000 */  lw    $t9, ($s0)
/* 22FCBC 801E4ACC 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 22FCC0 801E4AD0 24E74010 */  addiu $a3, %lo(gEntitiesAngleXArray) # addiu $a3, $a3, 0x4010
/* 22FCC4 801E4AD4 00195880 */  sll   $t3, $t9, 2
/* 22FCC8 801E4AD8 002B0821 */  addu  $at, $at, $t3
/* 22FCCC 801E4ADC E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 22FCD0 801E4AE0 8E020000 */  lw    $v0, ($s0)
/* 22FCD4 801E4AE4 3C08800E */  lui   $t0, %hi(gEntitiesAngleYArray) # $t0, 0x800e
/* 22FCD8 801E4AE8 250841D0 */  addiu $t0, %lo(gEntitiesAngleYArray) # addiu $t0, $t0, 0x41d0
/* 22FCDC 801E4AEC 00021080 */  sll   $v0, $v0, 2
/* 22FCE0 801E4AF0 00626821 */  addu  $t5, $v1, $v0
/* 22FCE4 801E4AF4 8DAC0000 */  lw    $t4, ($t5)
/* 22FCE8 801E4AF8 00E2C021 */  addu  $t8, $a3, $v0
/* 22FCEC 801E4AFC 3C09800E */  lui   $t1, %hi(gEntitiesAngleZArray) # $t1, 0x800e
/* 22FCF0 801E4B00 000C7080 */  sll   $t6, $t4, 2
/* 22FCF4 801E4B04 00EE7821 */  addu  $t7, $a3, $t6
/* 22FCF8 801E4B08 C5E40000 */  lwc1  $f4, ($t7)
/* 22FCFC 801E4B0C 25294390 */  addiu $t1, %lo(gEntitiesAngleZArray) # addiu $t1, $t1, 0x4390
/* 22FD00 801E4B10 27A4003C */  addiu $a0, $sp, 0x3c
/* 22FD04 801E4B14 E7040000 */  swc1  $f4, ($t8)
/* 22FD08 801E4B18 8E020000 */  lw    $v0, ($s0)
/* 22FD0C 801E4B1C 3406FFFF */  li    $a2, 65535
/* 22FD10 801E4B20 00021080 */  sll   $v0, $v0, 2
/* 22FD14 801E4B24 00625021 */  addu  $t2, $v1, $v0
/* 22FD18 801E4B28 8D590000 */  lw    $t9, ($t2)
/* 22FD1C 801E4B2C 01026021 */  addu  $t4, $t0, $v0
/* 22FD20 801E4B30 00195880 */  sll   $t3, $t9, 2
/* 22FD24 801E4B34 010B6821 */  addu  $t5, $t0, $t3
/* 22FD28 801E4B38 C5A60000 */  lwc1  $f6, ($t5)
/* 22FD2C 801E4B3C E5860000 */  swc1  $f6, ($t4)
/* 22FD30 801E4B40 8E020000 */  lw    $v0, ($s0)
/* 22FD34 801E4B44 00021080 */  sll   $v0, $v0, 2
/* 22FD38 801E4B48 00627021 */  addu  $t6, $v1, $v0
/* 22FD3C 801E4B4C 8DCF0000 */  lw    $t7, ($t6)
/* 22FD40 801E4B50 0122C821 */  addu  $t9, $t1, $v0
/* 22FD44 801E4B54 000FC080 */  sll   $t8, $t7, 2
/* 22FD48 801E4B58 01385021 */  addu  $t2, $t1, $t8
/* 22FD4C 801E4B5C C5480000 */  lwc1  $f8, ($t2)
/* 22FD50 801E4B60 E7280000 */  swc1  $f8, ($t9)
/* 22FD54 801E4B64 0C02C8D0 */  jal   func_800B2340
/* 22FD58 801E4B68 8FA5002C */   lw    $a1, 0x2c($sp)
/* 22FD5C 801E4B6C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 22FD60 801E4B70 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 22FD64 801E4B74 C7AA003C */  lwc1  $f10, 0x3c($sp)
/* 22FD68 801E4B78 3C02800E */  lui   $v0, %hi(gEntitiesNextPosXArray) # $v0, 0x800e
/* 22FD6C 801E4B7C 8E0B0000 */  lw    $t3, ($s0)
/* 22FD70 801E4B80 244225D0 */  addiu $v0, %lo(gEntitiesNextPosXArray) # addiu $v0, $v0, 0x25d0
/* 22FD74 801E4B84 3C03800E */  lui   $v1, %hi(gEntitiesNextPosYArray) # $v1, 0x800e
/* 22FD78 801E4B88 000B6880 */  sll   $t5, $t3, 2
/* 22FD7C 801E4B8C 004D6021 */  addu  $t4, $v0, $t5
/* 22FD80 801E4B90 E58A0000 */  swc1  $f10, ($t4)
/* 22FD84 801E4B94 8E0E0000 */  lw    $t6, ($s0)
/* 22FD88 801E4B98 C7B20040 */  lwc1  $f18, 0x40($sp)
/* 22FD8C 801E4B9C 24632790 */  addiu $v1, %lo(gEntitiesNextPosYArray) # addiu $v1, $v1, 0x2790
/* 22FD90 801E4BA0 000E7880 */  sll   $t7, $t6, 2
/* 22FD94 801E4BA4 006FC021 */  addu  $t8, $v1, $t7
/* 22FD98 801E4BA8 E7120000 */  swc1  $f18, ($t8)
/* 22FD9C 801E4BAC 8E0A0000 */  lw    $t2, ($s0)
/* 22FDA0 801E4BB0 C7A40044 */  lwc1  $f4, 0x44($sp)
/* 22FDA4 801E4BB4 3C05800E */  lui   $a1, %hi(gEntitiesNextPosZArray) # $a1, 0x800e
/* 22FDA8 801E4BB8 24A52950 */  addiu $a1, %lo(gEntitiesNextPosZArray) # addiu $a1, $a1, 0x2950
/* 22FDAC 801E4BBC 000AC880 */  sll   $t9, $t2, 2
/* 22FDB0 801E4BC0 00B95821 */  addu  $t3, $a1, $t9
/* 22FDB4 801E4BC4 E5640000 */  swc1  $f4, ($t3)
/* 22FDB8 801E4BC8 8E0D0000 */  lw    $t5, ($s0)
/* 22FDBC 801E4BCC 27A40030 */  addiu $a0, $sp, 0x30
/* 22FDC0 801E4BD0 000D6080 */  sll   $t4, $t5, 2
/* 22FDC4 801E4BD4 004C7021 */  addu  $t6, $v0, $t4
/* 22FDC8 801E4BD8 C5C60000 */  lwc1  $f6, ($t6)
/* 22FDCC 801E4BDC 46003207 */  neg.s $f8, $f6
/* 22FDD0 801E4BE0 E7A80030 */  swc1  $f8, 0x30($sp)
/* 22FDD4 801E4BE4 8E0F0000 */  lw    $t7, ($s0)
/* 22FDD8 801E4BE8 000FC080 */  sll   $t8, $t7, 2
/* 22FDDC 801E4BEC 00785021 */  addu  $t2, $v1, $t8
/* 22FDE0 801E4BF0 C54A0000 */  lwc1  $f10, ($t2)
/* 22FDE4 801E4BF4 46005487 */  neg.s $f18, $f10
/* 22FDE8 801E4BF8 E7B20034 */  swc1  $f18, 0x34($sp)
/* 22FDEC 801E4BFC 8E190000 */  lw    $t9, ($s0)
/* 22FDF0 801E4C00 00195880 */  sll   $t3, $t9, 2
/* 22FDF4 801E4C04 00AB6821 */  addu  $t5, $a1, $t3
/* 22FDF8 801E4C08 C5A40000 */  lwc1  $f4, ($t5)
/* 22FDFC 801E4C0C 46002187 */  neg.s $f6, $f4
/* 22FE00 801E4C10 0C006328 */  jal   lbvector_Normalize
/* 22FE04 801E4C14 E7A60038 */   swc1  $f6, 0x38($sp)
/* 22FE08 801E4C18 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 22FE0C 801E4C1C 44811000 */  mtc1  $at, $f2
/* 22FE10 801E4C20 C7A80030 */  lwc1  $f8, 0x30($sp)
/* 22FE14 801E4C24 3C01801E */  lui   $at, %hi(D_801E56CC) # $at, 0x801e
/* 22FE18 801E4C28 C42C56CC */  lwc1  $f12, %lo(D_801E56CC)($at)
/* 22FE1C 801E4C2C 46024282 */  mul.s $f10, $f8, $f2
/* 22FE20 801E4C30 C7B20030 */  lwc1  $f18, 0x30($sp)
/* 22FE24 801E4C34 3C0141C8 */  li    $at, 0x41C80000 # 25.000000
/* 22FE28 801E4C38 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 22FE2C 801E4C3C 460C9102 */  mul.s $f4, $f18, $f12
/* 22FE30 801E4C40 44817000 */  mtc1  $at, $f14
/* 22FE34 801E4C44 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 22FE38 801E4C48 C7A60030 */  lwc1  $f6, 0x30($sp)
/* 22FE3C 801E4C4C 3C01800E */ lui $at, %hi(D_800E3050)
/* 22FE40 801E4C50 8E0C0000 */  lw    $t4, ($s0)
/* 22FE44 801E4C54 460E3002 */  mul.s $f0, $f6, $f14
/* 22FE48 801E4C58 44808000 */  mtc1  $zero, $f16
/* 22FE4C 801E4C5C 000C7080 */  sll   $t6, $t4, 2
/* 22FE50 801E4C60 002E0821 */  addu  $at, $at, $t6
/* 22FE54 801E4C64 E42A3050 */ swc1 $f10, %lo(D_800E3050)($at)
/* 22FE58 801E4C68 8E0F0000 */  lw    $t7, ($s0)
/* 22FE5C 801E4C6C 3C01800E */ lui $at, %hi(D_800E3590)
/* 22FE60 801E4C70 4610003C */  c.lt.s $f0, $f16
/* 22FE64 801E4C74 000FC080 */  sll   $t8, $t7, 2
/* 22FE68 801E4C78 00380821 */  addu  $at, $at, $t8
/* 22FE6C 801E4C7C E4243590 */ swc1 $f4, %lo(D_800E3590)($at)
/* 22FE70 801E4C80 45020009 */  bc1fl .L801E4CA8_ovl17
/* 22FE74 801E4C84 8E0B0000 */   lw    $t3, ($s0)
/* 22FE78 801E4C88 8E0A0000 */  lw    $t2, ($s0)
/* 22FE7C 801E4C8C 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 22FE80 801E4C90 46000207 */  neg.s $f8, $f0
/* 22FE84 801E4C94 000AC880 */  sll   $t9, $t2, 2
/* 22FE88 801E4C98 00390821 */  addu  $at, $at, $t9
/* 22FE8C 801E4C9C 10000006 */  b     .L801E4CB8_ovl17
/* 22FE90 801E4CA0 E4283AD0 */ swc1 $f8, %lo(D_800E3AD0)($at)
/* 22FE94 801E4CA4 8E0B0000 */  lw    $t3, ($s0)
.L801E4CA8_ovl17:
/* 22FE98 801E4CA8 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 22FE9C 801E4CAC 000B6880 */  sll   $t5, $t3, 2
/* 22FEA0 801E4CB0 002D0821 */  addu  $at, $at, $t5
/* 22FEA4 801E4CB4 E4203AD0 */ swc1 $f0, %lo(D_800E3AD0)($at)
.L801E4CB8_ovl17:
/* 22FEA8 801E4CB8 C7AA0034 */  lwc1  $f10, 0x34($sp)
/* 22FEAC 801E4CBC C7A40034 */  lwc1  $f4, 0x34($sp)
/* 22FEB0 801E4CC0 C7A80034 */  lwc1  $f8, 0x34($sp)
/* 22FEB4 801E4CC4 46025482 */  mul.s $f18, $f10, $f2
/* 22FEB8 801E4CC8 8E0C0000 */  lw    $t4, ($s0)
/* 22FEBC 801E4CCC 3C01800E */ lui $at, %hi(D_800E3210)
/* 22FEC0 801E4CD0 460C2182 */  mul.s $f6, $f4, $f12
/* 22FEC4 801E4CD4 000C7080 */  sll   $t6, $t4, 2
/* 22FEC8 801E4CD8 002E0821 */  addu  $at, $at, $t6
/* 22FECC 801E4CDC 460E4002 */  mul.s $f0, $f8, $f14
/* 22FED0 801E4CE0 E4323210 */ swc1 $f18, %lo(D_800E3210)($at)
/* 22FED4 801E4CE4 8E0F0000 */  lw    $t7, ($s0)
/* 22FED8 801E4CE8 3C01800E */ lui $at, %hi(D_800E3750)
/* 22FEDC 801E4CEC 000FC080 */  sll   $t8, $t7, 2
/* 22FEE0 801E4CF0 00380821 */  addu  $at, $at, $t8
/* 22FEE4 801E4CF4 4610003C */  c.lt.s $f0, $f16
/* 22FEE8 801E4CF8 E4263750 */ swc1 $f6, %lo(D_800E3750)($at)
/* 22FEEC 801E4CFC 45020009 */  bc1fl .L801E4D24_ovl17
/* 22FEF0 801E4D00 8E0B0000 */   lw    $t3, ($s0)
/* 22FEF4 801E4D04 8E0A0000 */  lw    $t2, ($s0)
/* 22FEF8 801E4D08 3C01800E */ lui $at, %hi(D_800E3C90)
/* 22FEFC 801E4D0C 46000287 */  neg.s $f10, $f0
/* 22FF00 801E4D10 000AC880 */  sll   $t9, $t2, 2
/* 22FF04 801E4D14 00390821 */  addu  $at, $at, $t9
/* 22FF08 801E4D18 10000006 */  b     .L801E4D34_ovl17
/* 22FF0C 801E4D1C E42A3C90 */ swc1 $f10, %lo(D_800E3C90)($at)
/* 22FF10 801E4D20 8E0B0000 */  lw    $t3, ($s0)
.L801E4D24_ovl17:
/* 22FF14 801E4D24 3C01800E */ lui $at, %hi(D_800E3C90)
/* 22FF18 801E4D28 000B6880 */  sll   $t5, $t3, 2
/* 22FF1C 801E4D2C 002D0821 */  addu  $at, $at, $t5
/* 22FF20 801E4D30 E4203C90 */ swc1 $f0, %lo(D_800E3C90)($at)
.L801E4D34_ovl17:
/* 22FF24 801E4D34 C7B20038 */  lwc1  $f18, 0x38($sp)
/* 22FF28 801E4D38 C7A60038 */  lwc1  $f6, 0x38($sp)
/* 22FF2C 801E4D3C C7AA0038 */  lwc1  $f10, 0x38($sp)
/* 22FF30 801E4D40 46029102 */  mul.s $f4, $f18, $f2
/* 22FF34 801E4D44 8E0C0000 */  lw    $t4, ($s0)
/* 22FF38 801E4D48 3C01800E */ lui $at, %hi(D_800E33D0)
/* 22FF3C 801E4D4C 460C3202 */  mul.s $f8, $f6, $f12
/* 22FF40 801E4D50 000C7080 */  sll   $t6, $t4, 2
/* 22FF44 801E4D54 002E0821 */  addu  $at, $at, $t6
/* 22FF48 801E4D58 460E5002 */  mul.s $f0, $f10, $f14
/* 22FF4C 801E4D5C E42433D0 */ swc1 $f4, %lo(D_800E33D0)($at)
/* 22FF50 801E4D60 8E0F0000 */  lw    $t7, ($s0)
/* 22FF54 801E4D64 3C01800E */ lui $at, %hi(D_800E3910)
/* 22FF58 801E4D68 000FC080 */  sll   $t8, $t7, 2
/* 22FF5C 801E4D6C 00380821 */  addu  $at, $at, $t8
/* 22FF60 801E4D70 4610003C */  c.lt.s $f0, $f16
/* 22FF64 801E4D74 E4283910 */ swc1 $f8, %lo(D_800E3910)($at)
/* 22FF68 801E4D78 45020009 */  bc1fl .L801E4DA0_ovl17
/* 22FF6C 801E4D7C 8E0B0000 */   lw    $t3, ($s0)
/* 22FF70 801E4D80 8E0A0000 */  lw    $t2, ($s0)
/* 22FF74 801E4D84 3C01800E */ lui $at, %hi(D_800E3E50)
/* 22FF78 801E4D88 46000487 */  neg.s $f18, $f0
/* 22FF7C 801E4D8C 000AC880 */  sll   $t9, $t2, 2
/* 22FF80 801E4D90 00390821 */  addu  $at, $at, $t9
/* 22FF84 801E4D94 10000006 */  b     .L801E4DB0_ovl17
/* 22FF88 801E4D98 E4323E50 */ swc1 $f18, %lo(D_800E3E50)($at)
/* 22FF8C 801E4D9C 8E0B0000 */  lw    $t3, ($s0)
.L801E4DA0_ovl17:
/* 22FF90 801E4DA0 3C01800E */ lui $at, %hi(D_800E3E50)
/* 22FF94 801E4DA4 000B6880 */  sll   $t5, $t3, 2
/* 22FF98 801E4DA8 002D0821 */  addu  $at, $at, $t5
/* 22FF9C 801E4DAC E4203E50 */ swc1 $f0, %lo(D_800E3E50)($at)
.L801E4DB0_ovl17:
/* 22FFA0 801E4DB0 0C002DAF */  jal   finish_current_thread
/* 22FFA4 801E4DB4 2404003C */   li    $a0, 60
/* 22FFA8 801E4DB8 0C0788C8 */  jal   D_801E2320_ovl17
/* 22FFAC 801E4DBC 8FA40048 */   lw    $a0, 0x48($sp)
/* 22FFB0 801E4DC0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 22FFB4 801E4DC4 8FB00018 */  lw    $s0, 0x18($sp)
/* 22FFB8 801E4DC8 27BD0048 */  addiu $sp, $sp, 0x48
/* 22FFBC 801E4DCC 03E00008 */  jr    $ra
/* 22FFC0 801E4DD0 00000000 */   nop   
.type func_801E49B8_ovl17, @function
.size func_801E49B8_ovl17, . - func_801E49B8_ovl17
