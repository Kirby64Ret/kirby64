glabel func_80199A38_ovl7
/* 13FAA8 80199A38 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 13FAAC 80199A3C 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 13FAB0 80199A40 8D030000 */  lw         $v1, 0x0($t0)
/* 13FAB4 80199A44 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13FAB8 80199A48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13FABC 80199A4C AFA40028 */  sw         $a0, 0x28($sp)
/* 13FAC0 80199A50 8C660000 */  lw         $a2, 0x0($v1)
/* 13FAC4 80199A54 3C028013 */  lui        $v0, %hi(D_8012BCA0)
/* 13FAC8 80199A58 8C42BCA0 */  lw         $v0, %lo(D_8012BCA0)($v0)
/* 13FACC 80199A5C 00063080 */  sll        $a2, $a2, 2
/* 13FAD0 80199A60 3C07800E */  lui        $a3, %hi(D_800E1B50)
/* 13FAD4 80199A64 3C01800F */  lui        $at, %hi(D_800E8920)
/* 13FAD8 80199A68 000214C2 */  srl        $v0, $v0, 19
/* 13FADC 80199A6C 00E63821 */  addu       $a3, $a3, $a2
/* 13FAE0 80199A70 00260821 */  addu       $at, $at, $a2
/* 13FAE4 80199A74 304E0E3F */  andi       $t6, $v0, 0xE3F
/* 13FAE8 80199A78 8CE71B50 */  lw         $a3, %lo(D_800E1B50)($a3)
/* 13FAEC 80199A7C 11C00097 */  beqz       $t6, .L80199CDC_ovl7
/* 13FAF0 80199A80 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 13FAF4 80199A84 304F0E00 */  andi       $t7, $v0, 0xE00
/* 13FAF8 80199A88 11E00016 */  beqz       $t7, .L80199AE4_ovl7
/* 13FAFC 80199A8C 30490007 */   andi      $t1, $v0, 0x7
/* 13FB00 80199A90 8CE40078 */  lw         $a0, 0x78($a3)
/* 13FB04 80199A94 5080000F */  beql       $a0, $zero, .L80199AD4_ovl7
/* 13FB08 80199A98 44806000 */   mtc1      $zero, $f12
/* 13FB0C 80199A9C 8C780000 */  lw         $t8, 0x0($v1)
/* 13FB10 80199AA0 3C05800E */  lui        $a1, %hi(D_800E17D0)
/* 13FB14 80199AA4 AFA7001C */  sw         $a3, 0x1C($sp)
/* 13FB18 80199AA8 0018C880 */  sll        $t9, $t8, 2
/* 13FB1C 80199AAC 00B92821 */  addu       $a1, $a1, $t9
/* 13FB20 80199AB0 0C03E209 */  jal        func_800F8824
/* 13FB24 80199AB4 8CA517D0 */   lw        $a1, %lo(D_800E17D0)($a1)
/* 13FB28 80199AB8 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 13FB2C 80199ABC 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 13FB30 80199AC0 8D030000 */  lw         $v1, 0x0($t0)
/* 13FB34 80199AC4 8FA7001C */  lw         $a3, 0x1C($sp)
/* 13FB38 80199AC8 10000003 */  b          .L80199AD8_ovl7
/* 13FB3C 80199ACC 46000306 */   mov.s     $f12, $f0
/* 13FB40 80199AD0 44806000 */  mtc1       $zero, $f12
.L80199AD4_ovl7:
/* 13FB44 80199AD4 00000000 */  nop
.L80199AD8_ovl7:
/* 13FB48 80199AD8 3C01801D */  lui        $at, %hi(D_801CDBA4_ovl7)
/* 13FB4C 80199ADC 1000000A */  b          .L80199B08_ovl7
/* 13FB50 80199AE0 C42EDBA4 */   lwc1      $f14, %lo(D_801CDBA4_ovl7)($at)
.L80199AE4_ovl7:
/* 13FB54 80199AE4 11200005 */  beqz       $t1, .L80199AFC_ovl7
/* 13FB58 80199AE8 3C01801D */   lui       $at, %hi(D_801CDBAC_ovl7)
/* 13FB5C 80199AEC 3C01801D */  lui        $at, %hi(D_801CDBA8_ovl7)
/* 13FB60 80199AF0 C42EDBA8 */  lwc1       $f14, %lo(D_801CDBA8_ovl7)($at)
/* 13FB64 80199AF4 10000004 */  b          .L80199B08_ovl7
/* 13FB68 80199AF8 46007306 */   mov.s     $f12, $f14
.L80199AFC_ovl7:
/* 13FB6C 80199AFC C42CDBAC */  lwc1       $f12, %lo(D_801CDBAC_ovl7)($at)
/* 13FB70 80199B00 3C01801D */  lui        $at, %hi(D_801CDBB0_ovl7)
/* 13FB74 80199B04 C42EDBB0 */  lwc1       $f14, %lo(D_801CDBB0_ovl7)($at)
.L80199B08_ovl7:
/* 13FB78 80199B08 8C660000 */  lw         $a2, 0x0($v1)
/* 13FB7C 80199B0C 3C04800F */  lui        $a0, %hi(D_800EB320)
/* 13FB80 80199B10 2484B320 */  addiu      $a0, $a0, %lo(D_800EB320)
/* 13FB84 80199B14 00063080 */  sll        $a2, $a2, 2
/* 13FB88 80199B18 00865021 */  addu       $t2, $a0, $a2
/* 13FB8C 80199B1C C5440000 */  lwc1       $f4, 0x0($t2)
/* 13FB90 80199B20 3C01801D */  lui        $at, %hi(D_801CDBB4_ovl7)
/* 13FB94 80199B24 C422DBB4 */  lwc1       $f2, %lo(D_801CDBB4_ovl7)($at)
/* 13FB98 80199B28 460C2000 */  add.s      $f0, $f4, $f12
/* 13FB9C 80199B2C 44806000 */  mtc1       $zero, $f12
/* 13FBA0 80199B30 3C01801D */  lui        $at, %hi(D_801CDBB8_ovl7)
/* 13FBA4 80199B34 4600103C */  c.lt.s     $f2, $f0
/* 13FBA8 80199B38 00000000 */  nop
/* 13FBAC 80199B3C 45020007 */  bc1fl      .L80199B5C_ovl7
/* 13FBB0 80199B40 460C003C */   c.lt.s    $f0, $f12
/* 13FBB4 80199B44 46020001 */  sub.s      $f0, $f0, $f2
.L80199B48_ovl7:
/* 13FBB8 80199B48 4600103C */  c.lt.s     $f2, $f0
/* 13FBBC 80199B4C 00000000 */  nop
/* 13FBC0 80199B50 4503FFFD */  bc1tl      .L80199B48_ovl7
/* 13FBC4 80199B54 46020001 */   sub.s     $f0, $f0, $f2
/* 13FBC8 80199B58 460C003C */  c.lt.s     $f0, $f12
.L80199B5C_ovl7:
/* 13FBCC 80199B5C 00000000 */  nop
/* 13FBD0 80199B60 45000006 */  bc1f       .L80199B7C_ovl7
/* 13FBD4 80199B64 00000000 */   nop
/* 13FBD8 80199B68 46020000 */  add.s      $f0, $f0, $f2
.L80199B6C_ovl7:
/* 13FBDC 80199B6C 460C003C */  c.lt.s     $f0, $f12
/* 13FBE0 80199B70 00000000 */  nop
/* 13FBE4 80199B74 4503FFFD */  bc1tl      .L80199B6C_ovl7
/* 13FBE8 80199B78 46020000 */   add.s     $f0, $f0, $f2
.L80199B7C_ovl7:
/* 13FBEC 80199B7C C426DBB8 */  lwc1       $f6, %lo(D_801CDBB8_ovl7)($at)
/* 13FBF0 80199B80 3C01801D */  lui        $at, %hi(D_801CDBBC_ovl7)
/* 13FBF4 80199B84 4600303E */  c.le.s     $f6, $f0
/* 13FBF8 80199B88 00000000 */  nop
/* 13FBFC 80199B8C 4500001C */  bc1f       .L80199C00_ovl7
/* 13FC00 80199B90 00000000 */   nop
/* 13FC04 80199B94 C428DBBC */  lwc1       $f8, %lo(D_801CDBBC_ovl7)($at)
/* 13FC08 80199B98 3C01800F */  lui        $at, %hi(D_800E83E0)
/* 13FC0C 80199B9C 00260821 */  addu       $at, $at, $a2
/* 13FC10 80199BA0 4608003C */  c.lt.s     $f0, $f8
/* 13FC14 80199BA4 240B0001 */  addiu      $t3, $zero, 0x1
/* 13FC18 80199BA8 240C0001 */  addiu      $t4, $zero, 0x1
/* 13FC1C 80199BAC 45000014 */  bc1f       .L80199C00_ovl7
/* 13FC20 80199BB0 00000000 */   nop
/* 13FC24 80199BB4 AC2B83E0 */  sw         $t3, %lo(D_800E83E0)($at)
/* 13FC28 80199BB8 ACEC0044 */  sw         $t4, 0x44($a3)
/* 13FC2C 80199BBC 8D030000 */  lw         $v1, 0x0($t0)
/* 13FC30 80199BC0 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 13FC34 80199BC4 240DFFFF */  addiu      $t5, $zero, -0x1
/* 13FC38 80199BC8 8C6E0000 */  lw         $t6, 0x0($v1)
/* 13FC3C 80199BCC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 13FC40 80199BD0 3C05801A */  lui        $a1, %hi(func_801A6DF0_ovl7)
/* 13FC44 80199BD4 000E7880 */  sll        $t7, $t6, 2
/* 13FC48 80199BD8 002F0821 */  addu       $at, $at, $t7
/* 13FC4C 80199BDC AC2DDC50 */  sw         $t5, %lo(gEntityVtableIndexArray)($at)
/* 13FC50 80199BE0 8C780000 */  lw         $t8, 0x0($v1)
/* 13FC54 80199BE4 24A56DF0 */  addiu      $a1, $a1, %lo(func_801A6DF0_ovl7)
/* 13FC58 80199BE8 0018C880 */  sll        $t9, $t8, 2
/* 13FC5C 80199BEC 00992021 */  addu       $a0, $a0, $t9
/* 13FC60 80199BF0 0C02C7B2 */  jal        assign_new_process_entry
/* 13FC64 80199BF4 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 13FC68 80199BF8 10000052 */  b          .L80199D44_ovl7
/* 13FC6C 80199BFC 8FBF0014 */   lw        $ra, 0x14($sp)
.L80199C00_ovl7:
/* 13FC70 80199C00 3C01801D */  lui        $at, %hi(D_801CDBC0_ovl7)
/* 13FC74 80199C04 C42ADBC0 */  lwc1       $f10, %lo(D_801CDBC0_ovl7)($at)
/* 13FC78 80199C08 3C01801D */  lui        $at, %hi(D_801CDBC4_ovl7)
/* 13FC7C 80199C0C 4600503E */  c.le.s     $f10, $f0
/* 13FC80 80199C10 00000000 */  nop
/* 13FC84 80199C14 4502004B */  bc1fl      .L80199D44_ovl7
/* 13FC88 80199C18 8FBF0014 */   lw        $ra, 0x14($sp)
/* 13FC8C 80199C1C C430DBC4 */  lwc1       $f16, %lo(D_801CDBC4_ovl7)($at)
/* 13FC90 80199C20 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 13FC94 80199C24 00260821 */  addu       $at, $at, $a2
/* 13FC98 80199C28 4610003C */  c.lt.s     $f0, $f16
/* 13FC9C 80199C2C 2409000F */  addiu      $t1, $zero, 0xF
/* 13FCA0 80199C30 45020044 */  bc1fl      .L80199D44_ovl7
/* 13FCA4 80199C34 8FBF0014 */   lw        $ra, 0x14($sp)
/* 13FCA8 80199C38 AC299AA0 */  sw         $t1, %lo(D_800E9AA0)($at)
/* 13FCAC 80199C3C 3C01801D */  lui        $at, %hi(D_801CDBC8_ovl7)
/* 13FCB0 80199C40 C432DBC8 */  lwc1       $f18, %lo(D_801CDBC8_ovl7)($at)
/* 13FCB4 80199C44 4612003C */  c.lt.s     $f0, $f18
/* 13FCB8 80199C48 00000000 */  nop
/* 13FCBC 80199C4C 45000011 */  bc1f       .L80199C94_ovl7
/* 13FCC0 80199C50 00000000 */   nop
/* 13FCC4 80199C54 460E003C */  c.lt.s     $f0, $f14
/* 13FCC8 80199C58 00000000 */  nop
/* 13FCCC 80199C5C 45020005 */  bc1fl      .L80199C74_ovl7
/* 13FCD0 80199C60 460E0081 */   sub.s     $f2, $f0, $f14
/* 13FCD4 80199C64 460E0081 */  sub.s      $f2, $f0, $f14
/* 13FCD8 80199C68 10000002 */  b          .L80199C74_ovl7
/* 13FCDC 80199C6C 46001087 */   neg.s     $f2, $f2
/* 13FCE0 80199C70 460E0081 */  sub.s      $f2, $f0, $f14
.L80199C74_ovl7:
/* 13FCE4 80199C74 8C6A0000 */  lw         $t2, 0x0($v1)
/* 13FCE8 80199C78 46021180 */  add.s      $f6, $f2, $f2
/* 13FCEC 80199C7C 000A5880 */  sll        $t3, $t2, 2
/* 13FCF0 80199C80 008B1021 */  addu       $v0, $a0, $t3
/* 13FCF4 80199C84 C4440000 */  lwc1       $f4, 0x0($v0)
/* 13FCF8 80199C88 46062201 */  sub.s      $f8, $f4, $f6
/* 13FCFC 80199C8C 1000002C */  b          .L80199D40_ovl7
/* 13FD00 80199C90 E4480000 */   swc1      $f8, 0x0($v0)
.L80199C94_ovl7:
/* 13FD04 80199C94 3C01801D */  lui        $at, %hi(D_801CDBCC_ovl7)
/* 13FD08 80199C98 C42CDBCC */  lwc1       $f12, %lo(D_801CDBCC_ovl7)($at)
/* 13FD0C 80199C9C 4600603C */  c.lt.s     $f12, $f0
/* 13FD10 80199CA0 00000000 */  nop
/* 13FD14 80199CA4 45020005 */  bc1fl      .L80199CBC_ovl7
/* 13FD18 80199CA8 46006081 */   sub.s     $f2, $f12, $f0
/* 13FD1C 80199CAC 46006081 */  sub.s      $f2, $f12, $f0
/* 13FD20 80199CB0 10000002 */  b          .L80199CBC_ovl7
/* 13FD24 80199CB4 46001087 */   neg.s     $f2, $f2
/* 13FD28 80199CB8 46006081 */  sub.s      $f2, $f12, $f0
.L80199CBC_ovl7:
/* 13FD2C 80199CBC 8C6C0000 */  lw         $t4, 0x0($v1)
/* 13FD30 80199CC0 46021400 */  add.s      $f16, $f2, $f2
/* 13FD34 80199CC4 000C7080 */  sll        $t6, $t4, 2
/* 13FD38 80199CC8 008E1021 */  addu       $v0, $a0, $t6
/* 13FD3C 80199CCC C44A0000 */  lwc1       $f10, 0x0($v0)
/* 13FD40 80199CD0 46105480 */  add.s      $f18, $f10, $f16
/* 13FD44 80199CD4 1000001A */  b          .L80199D40_ovl7
/* 13FD48 80199CD8 E4520000 */   swc1      $f18, 0x0($v0)
.L80199CDC_ovl7:
/* 13FD4C 80199CDC 304D01C0 */  andi       $t5, $v0, 0x1C0
/* 13FD50 80199CE0 11A00017 */  beqz       $t5, .L80199D40_ovl7
/* 13FD54 80199CE4 240F0001 */   addiu     $t7, $zero, 0x1
/* 13FD58 80199CE8 8C780000 */  lw         $t8, 0x0($v1)
/* 13FD5C 80199CEC 3C01800F */  lui        $at, %hi(D_800E83E0)
/* 13FD60 80199CF0 24090001 */  addiu      $t1, $zero, 0x1
/* 13FD64 80199CF4 0018C880 */  sll        $t9, $t8, 2
/* 13FD68 80199CF8 00390821 */  addu       $at, $at, $t9
/* 13FD6C 80199CFC AC2F83E0 */  sw         $t7, %lo(D_800E83E0)($at)
/* 13FD70 80199D00 ACE90044 */  sw         $t1, 0x44($a3)
/* 13FD74 80199D04 8D030000 */  lw         $v1, 0x0($t0)
/* 13FD78 80199D08 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 13FD7C 80199D0C 240AFFFF */  addiu      $t2, $zero, -0x1
/* 13FD80 80199D10 8C6B0000 */  lw         $t3, 0x0($v1)
/* 13FD84 80199D14 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 13FD88 80199D18 3C05801A */  lui        $a1, %hi(func_801A6DF0_ovl7)
/* 13FD8C 80199D1C 000B6080 */  sll        $t4, $t3, 2
/* 13FD90 80199D20 002C0821 */  addu       $at, $at, $t4
/* 13FD94 80199D24 AC2ADC50 */  sw         $t2, %lo(gEntityVtableIndexArray)($at)
/* 13FD98 80199D28 8C6E0000 */  lw         $t6, 0x0($v1)
/* 13FD9C 80199D2C 24A56DF0 */  addiu      $a1, $a1, %lo(func_801A6DF0_ovl7)
/* 13FDA0 80199D30 000E6880 */  sll        $t5, $t6, 2
/* 13FDA4 80199D34 008D2021 */  addu       $a0, $a0, $t5
/* 13FDA8 80199D38 0C02C7B2 */  jal        assign_new_process_entry
/* 13FDAC 80199D3C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
.L80199D40_ovl7:
/* 13FDB0 80199D40 8FBF0014 */  lw         $ra, 0x14($sp)
.L80199D44_ovl7:
/* 13FDB4 80199D44 27BD0028 */  addiu      $sp, $sp, 0x28
/* 13FDB8 80199D48 03E00008 */  jr         $ra
/* 13FDBC 80199D4C 00000000 */   nop
