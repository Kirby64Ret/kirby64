glabel func_8019ADB4_ovl7
/* 140E24 8019ADB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 140E28 8019ADB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 140E2C 8019ADBC E7AC0018 */  swc1       $f12, 0x18($sp)
/* 140E30 8019ADC0 0C066A40 */  jal        func_8019A900_ovl7
/* 140E34 8019ADC4 00A02025 */   or        $a0, $a1, $zero
/* 140E38 8019ADC8 14400003 */  bnez       $v0, .L8019ADD8_ovl7
/* 140E3C 8019ADCC 3C0E8005 */   lui       $t6, %hi(D_8004A7C4)
/* 140E40 8019ADD0 10000047 */  b          .L8019AEF0_ovl7
/* 140E44 8019ADD4 00001025 */   or        $v0, $zero, $zero
.L8019ADD8_ovl7:
/* 140E48 8019ADD8 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 140E4C 8019ADDC 44807000 */  mtc1       $zero, $f14
/* 140E50 8019ADE0 3C04800F */  lui        $a0, %hi(D_800EB320)
/* 140E54 8019ADE4 8DCF0000 */  lw         $t7, 0x0($t6)
/* 140E58 8019ADE8 2484B320 */  addiu      $a0, $a0, %lo(D_800EB320)
/* 140E5C 8019ADEC 44067000 */  mfc1       $a2, $f14
/* 140E60 8019ADF0 000FC080 */  sll        $t8, $t7, 2
/* 140E64 8019ADF4 0098C821 */  addu       $t9, $a0, $t8
/* 140E68 8019ADF8 0C066AB4 */  jal        func_8019AAD0_ovl7
/* 140E6C 8019ADFC C72C0000 */   lwc1      $f12, 0x0($t9)
/* 140E70 8019AE00 44807000 */  mtc1       $zero, $f14
/* 140E74 8019AE04 3C04800F */  lui        $a0, %hi(D_800EB320)
/* 140E78 8019AE08 2484B320 */  addiu      $a0, $a0, %lo(D_800EB320)
/* 140E7C 8019AE0C 460E0032 */  c.eq.s     $f0, $f14
/* 140E80 8019AE10 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 140E84 8019AE14 45020004 */  bc1fl      .L8019AE28_ovl7
/* 140E88 8019AE18 44802000 */   mtc1      $zero, $f4
/* 140E8C 8019AE1C 10000034 */  b          .L8019AEF0_ovl7
/* 140E90 8019AE20 00001025 */   or        $v0, $zero, $zero
/* 140E94 8019AE24 44802000 */  mtc1       $zero, $f4
.L8019AE28_ovl7:
/* 140E98 8019AE28 C7AC0018 */  lwc1       $f12, 0x18($sp)
/* 140E9C 8019AE2C 4600203C */  c.lt.s     $f4, $f0
/* 140EA0 8019AE30 00000000 */  nop
/* 140EA4 8019AE34 45020004 */  bc1fl      .L8019AE48_ovl7
/* 140EA8 8019AE38 46006307 */   neg.s     $f12, $f12
/* 140EAC 8019AE3C 10000002 */  b          .L8019AE48_ovl7
/* 140EB0 8019AE40 C7AC0018 */   lwc1      $f12, 0x18($sp)
/* 140EB4 8019AE44 46006307 */  neg.s      $f12, $f12
.L8019AE48_ovl7:
/* 140EB8 8019AE48 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 140EBC 8019AE4C 3C01801D */  lui        $at, %hi(D_801CDC00_ovl7)
/* 140EC0 8019AE50 C422DC00 */  lwc1       $f2, %lo(D_801CDC00_ovl7)($at)
/* 140EC4 8019AE54 8C680000 */  lw         $t0, 0x0($v1)
/* 140EC8 8019AE58 00084880 */  sll        $t1, $t0, 2
/* 140ECC 8019AE5C 00891021 */  addu       $v0, $a0, $t1
/* 140ED0 8019AE60 C4460000 */  lwc1       $f6, 0x0($v0)
/* 140ED4 8019AE64 460C3200 */  add.s      $f8, $f6, $f12
/* 140ED8 8019AE68 E4480000 */  swc1       $f8, 0x0($v0)
/* 140EDC 8019AE6C 8C6A0000 */  lw         $t2, 0x0($v1)
/* 140EE0 8019AE70 000A5880 */  sll        $t3, $t2, 2
/* 140EE4 8019AE74 008B1021 */  addu       $v0, $a0, $t3
/* 140EE8 8019AE78 C4400000 */  lwc1       $f0, 0x0($v0)
/* 140EEC 8019AE7C 4600103C */  c.lt.s     $f2, $f0
/* 140EF0 8019AE80 00000000 */  nop
/* 140EF4 8019AE84 4502000C */  bc1fl      .L8019AEB8_ovl7
/* 140EF8 8019AE88 460E003C */   c.lt.s    $f0, $f14
/* 140EFC 8019AE8C 46020281 */  sub.s      $f10, $f0, $f2
.L8019AE90_ovl7:
/* 140F00 8019AE90 E44A0000 */  swc1       $f10, 0x0($v0)
/* 140F04 8019AE94 8C6C0000 */  lw         $t4, 0x0($v1)
/* 140F08 8019AE98 000C6880 */  sll        $t5, $t4, 2
/* 140F0C 8019AE9C 008D1021 */  addu       $v0, $a0, $t5
/* 140F10 8019AEA0 C4400000 */  lwc1       $f0, 0x0($v0)
/* 140F14 8019AEA4 4600103C */  c.lt.s     $f2, $f0
/* 140F18 8019AEA8 00000000 */  nop
/* 140F1C 8019AEAC 4503FFF8 */  bc1tl      .L8019AE90_ovl7
/* 140F20 8019AEB0 46020281 */   sub.s     $f10, $f0, $f2
/* 140F24 8019AEB4 460E003C */  c.lt.s     $f0, $f14
.L8019AEB8_ovl7:
/* 140F28 8019AEB8 00000000 */  nop
/* 140F2C 8019AEBC 4502000C */  bc1fl      .L8019AEF0_ovl7
/* 140F30 8019AEC0 24020001 */   addiu     $v0, $zero, 0x1
/* 140F34 8019AEC4 46020400 */  add.s      $f16, $f0, $f2
.L8019AEC8_ovl7:
/* 140F38 8019AEC8 E4500000 */  swc1       $f16, 0x0($v0)
/* 140F3C 8019AECC 8C6E0000 */  lw         $t6, 0x0($v1)
/* 140F40 8019AED0 000E7880 */  sll        $t7, $t6, 2
/* 140F44 8019AED4 008F1021 */  addu       $v0, $a0, $t7
/* 140F48 8019AED8 C4400000 */  lwc1       $f0, 0x0($v0)
/* 140F4C 8019AEDC 460E003C */  c.lt.s     $f0, $f14
/* 140F50 8019AEE0 00000000 */  nop
/* 140F54 8019AEE4 4503FFF8 */  bc1tl      .L8019AEC8_ovl7
/* 140F58 8019AEE8 46020400 */   add.s     $f16, $f0, $f2
/* 140F5C 8019AEEC 24020001 */  addiu      $v0, $zero, 0x1
.L8019AEF0_ovl7:
/* 140F60 8019AEF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 140F64 8019AEF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 140F68 8019AEF8 03E00008 */  jr         $ra
/* 140F6C 8019AEFC 00000000 */   nop
