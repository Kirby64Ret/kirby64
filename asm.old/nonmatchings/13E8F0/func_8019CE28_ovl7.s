glabel func_8019CE28_ovl7
/* 142E98 8019CE28 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 142E9C 8019CE2C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 142EA0 8019CE30 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 142EA4 8019CE34 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 142EA8 8019CE38 8DC30000 */  lw         $v1, 0x0($t6)
/* 142EAC 8019CE3C 00002025 */  or         $a0, $zero, $zero
/* 142EB0 8019CE40 00031880 */  sll        $v1, $v1, 2
/* 142EB4 8019CE44 00230821 */  addu       $at, $at, $v1
/* 142EB8 8019CE48 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 142EBC 8019CE4C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 142EC0 8019CE50 00230821 */  addu       $at, $at, $v1
/* 142EC4 8019CE54 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 142EC8 8019CE58 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 142ECC 8019CE5C 44818000 */  mtc1       $at, $f16
/* 142ED0 8019CE60 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 142ED4 8019CE64 00230821 */  addu       $at, $at, $v1
/* 142ED8 8019CE68 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
/* 142EDC 8019CE6C 00431021 */  addu       $v0, $v0, $v1
/* 142EE0 8019CE70 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 142EE4 8019CE74 46128032 */  c.eq.s     $f16, $f18
/* 142EE8 8019CE78 C446000C */  lwc1       $f6, 0xC($v0)
/* 142EEC 8019CE7C C44A0014 */  lwc1       $f10, 0x14($v0)
/* 142EF0 8019CE80 46062001 */  sub.s      $f0, $f4, $f6
/* 142EF4 8019CE84 45000029 */  bc1f       .L8019CF2C_ovl7
/* 142EF8 8019CE88 460A4081 */   sub.s     $f2, $f8, $f10
/* 142EFC 8019CE8C 44807000 */  mtc1       $zero, $f14
/* 142F00 8019CE90 3C01801D */  lui        $at, %hi(D_801CDC80_ovl7)
/* 142F04 8019CE94 4600703E */  c.le.s     $f14, $f0
/* 142F08 8019CE98 00000000 */  nop
/* 142F0C 8019CE9C 45030010 */  bc1tl      .L8019CEE0_ovl7
/* 142F10 8019CEA0 4602703E */   c.le.s    $f14, $f2
/* 142F14 8019CEA4 44802000 */  mtc1       $zero, $f4
/* 142F18 8019CEA8 00000000 */  nop
/* 142F1C 8019CEAC 4604003C */  c.lt.s     $f0, $f4
/* 142F20 8019CEB0 00000000 */  nop
/* 142F24 8019CEB4 45020004 */  bc1fl      .L8019CEC8_ovl7
/* 142F28 8019CEB8 46000306 */   mov.s     $f12, $f0
/* 142F2C 8019CEBC 10000002 */  b          .L8019CEC8_ovl7
/* 142F30 8019CEC0 46000307 */   neg.s     $f12, $f0
/* 142F34 8019CEC4 46000306 */  mov.s      $f12, $f0
.L8019CEC8_ovl7:
/* 142F38 8019CEC8 C426DC80 */  lwc1       $f6, %lo(D_801CDC80_ovl7)($at)
/* 142F3C 8019CECC 4606603E */  c.le.s     $f12, $f6
/* 142F40 8019CED0 00000000 */  nop
/* 142F44 8019CED4 4500003C */  bc1f       .L8019CFC8_ovl7
/* 142F48 8019CED8 00000000 */   nop
/* 142F4C 8019CEDC 4602703E */  c.le.s     $f14, $f2
.L8019CEE0_ovl7:
/* 142F50 8019CEE0 3C01801D */  lui        $at, %hi(D_801CDC84_ovl7)
/* 142F54 8019CEE4 4501000F */  bc1t       .L8019CF24_ovl7
/* 142F58 8019CEE8 00000000 */   nop
/* 142F5C 8019CEEC 44804000 */  mtc1       $zero, $f8
/* 142F60 8019CEF0 00000000 */  nop
/* 142F64 8019CEF4 4608103C */  c.lt.s     $f2, $f8
/* 142F68 8019CEF8 00000000 */  nop
/* 142F6C 8019CEFC 45020004 */  bc1fl      .L8019CF10_ovl7
/* 142F70 8019CF00 46001006 */   mov.s     $f0, $f2
/* 142F74 8019CF04 10000002 */  b          .L8019CF10_ovl7
/* 142F78 8019CF08 46001007 */   neg.s     $f0, $f2
/* 142F7C 8019CF0C 46001006 */  mov.s      $f0, $f2
.L8019CF10_ovl7:
/* 142F80 8019CF10 C42ADC84 */  lwc1       $f10, %lo(D_801CDC84_ovl7)($at)
/* 142F84 8019CF14 460A003E */  c.le.s     $f0, $f10
/* 142F88 8019CF18 00000000 */  nop
/* 142F8C 8019CF1C 4500002A */  bc1f       .L8019CFC8_ovl7
/* 142F90 8019CF20 00000000 */   nop
.L8019CF24_ovl7:
/* 142F94 8019CF24 03E00008 */  jr         $ra
/* 142F98 8019CF28 24020001 */   addiu     $v0, $zero, 0x1
.L8019CF2C_ovl7:
/* 142F9C 8019CF2C 44807000 */  mtc1       $zero, $f14
/* 142FA0 8019CF30 3C01801D */  lui        $at, %hi(D_801CDC88_ovl7)
/* 142FA4 8019CF34 460E003E */  c.le.s     $f0, $f14
/* 142FA8 8019CF38 00000000 */  nop
/* 142FAC 8019CF3C 45030010 */  bc1tl      .L8019CF80_ovl7
/* 142FB0 8019CF40 460E103E */   c.le.s    $f2, $f14
/* 142FB4 8019CF44 44808000 */  mtc1       $zero, $f16
/* 142FB8 8019CF48 00000000 */  nop
/* 142FBC 8019CF4C 4610003C */  c.lt.s     $f0, $f16
/* 142FC0 8019CF50 00000000 */  nop
/* 142FC4 8019CF54 45020004 */  bc1fl      .L8019CF68_ovl7
/* 142FC8 8019CF58 46000306 */   mov.s     $f12, $f0
/* 142FCC 8019CF5C 10000002 */  b          .L8019CF68_ovl7
/* 142FD0 8019CF60 46000307 */   neg.s     $f12, $f0
/* 142FD4 8019CF64 46000306 */  mov.s      $f12, $f0
.L8019CF68_ovl7:
/* 142FD8 8019CF68 C432DC88 */  lwc1       $f18, %lo(D_801CDC88_ovl7)($at)
/* 142FDC 8019CF6C 4612603E */  c.le.s     $f12, $f18
/* 142FE0 8019CF70 00000000 */  nop
/* 142FE4 8019CF74 45000014 */  bc1f       .L8019CFC8_ovl7
/* 142FE8 8019CF78 00000000 */   nop
/* 142FEC 8019CF7C 460E103E */  c.le.s     $f2, $f14
.L8019CF80_ovl7:
/* 142FF0 8019CF80 3C01801D */  lui        $at, %hi(D_801CDC8C_ovl7)
/* 142FF4 8019CF84 45030010 */  bc1tl      .L8019CFC8_ovl7
/* 142FF8 8019CF88 24040001 */   addiu     $a0, $zero, 0x1
/* 142FFC 8019CF8C 44802000 */  mtc1       $zero, $f4
/* 143000 8019CF90 00000000 */  nop
/* 143004 8019CF94 4604103C */  c.lt.s     $f2, $f4
/* 143008 8019CF98 00000000 */  nop
/* 14300C 8019CF9C 45020004 */  bc1fl      .L8019CFB0_ovl7
/* 143010 8019CFA0 46001006 */   mov.s     $f0, $f2
/* 143014 8019CFA4 10000002 */  b          .L8019CFB0_ovl7
/* 143018 8019CFA8 46001007 */   neg.s     $f0, $f2
/* 14301C 8019CFAC 46001006 */  mov.s      $f0, $f2
.L8019CFB0_ovl7:
/* 143020 8019CFB0 C426DC8C */  lwc1       $f6, %lo(D_801CDC8C_ovl7)($at)
/* 143024 8019CFB4 4606003E */  c.le.s     $f0, $f6
/* 143028 8019CFB8 00000000 */  nop
/* 14302C 8019CFBC 45000002 */  bc1f       .L8019CFC8_ovl7
/* 143030 8019CFC0 00000000 */   nop
/* 143034 8019CFC4 24040001 */  addiu      $a0, $zero, 0x1
.L8019CFC8_ovl7:
/* 143038 8019CFC8 03E00008 */  jr         $ra
/* 14303C 8019CFCC 00801025 */   or        $v0, $a0, $zero
