glabel func_8019AC60_ovl7
/* 140CD0 8019AC60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 140CD4 8019AC64 AFBF0014 */  sw         $ra, 0x14($sp)
/* 140CD8 8019AC68 E7AC0018 */  swc1       $f12, 0x18($sp)
/* 140CDC 8019AC6C E7AE001C */  swc1       $f14, 0x1C($sp)
/* 140CE0 8019AC70 AFA60020 */  sw         $a2, 0x20($sp)
/* 140CE4 8019AC74 0C066A40 */  jal        func_8019A900_ovl7
/* 140CE8 8019AC78 00E02025 */   or        $a0, $a3, $zero
/* 140CEC 8019AC7C 14400003 */  bnez       $v0, .L8019AC8C_ovl7
/* 140CF0 8019AC80 3C0E8005 */   lui       $t6, %hi(D_8004A7C4)
/* 140CF4 8019AC84 10000047 */  b          .L8019ADA4_ovl7
/* 140CF8 8019AC88 00001025 */   or        $v0, $zero, $zero
.L8019AC8C_ovl7:
/* 140CFC 8019AC8C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 140D00 8019AC90 3C04800F */  lui        $a0, %hi(D_800EB320)
/* 140D04 8019AC94 2484B320 */  addiu      $a0, $a0, %lo(D_800EB320)
/* 140D08 8019AC98 8DCF0000 */  lw         $t7, 0x0($t6)
/* 140D0C 8019AC9C C7AE001C */  lwc1       $f14, 0x1C($sp)
/* 140D10 8019ACA0 8FA60020 */  lw         $a2, 0x20($sp)
/* 140D14 8019ACA4 000FC080 */  sll        $t8, $t7, 2
/* 140D18 8019ACA8 0098C821 */  addu       $t9, $a0, $t8
/* 140D1C 8019ACAC 0C066AB4 */  jal        func_8019AAD0_ovl7
/* 140D20 8019ACB0 C72C0000 */   lwc1      $f12, 0x0($t9)
/* 140D24 8019ACB4 44806000 */  mtc1       $zero, $f12
/* 140D28 8019ACB8 3C04800F */  lui        $a0, %hi(D_800EB320)
/* 140D2C 8019ACBC 2484B320 */  addiu      $a0, $a0, %lo(D_800EB320)
/* 140D30 8019ACC0 460C0032 */  c.eq.s     $f0, $f12
/* 140D34 8019ACC4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 140D38 8019ACC8 45020004 */  bc1fl      .L8019ACDC_ovl7
/* 140D3C 8019ACCC 44802000 */   mtc1      $zero, $f4
/* 140D40 8019ACD0 10000034 */  b          .L8019ADA4_ovl7
/* 140D44 8019ACD4 00001025 */   or        $v0, $zero, $zero
/* 140D48 8019ACD8 44802000 */  mtc1       $zero, $f4
.L8019ACDC_ovl7:
/* 140D4C 8019ACDC C7AE0018 */  lwc1       $f14, 0x18($sp)
/* 140D50 8019ACE0 4600203C */  c.lt.s     $f4, $f0
/* 140D54 8019ACE4 00000000 */  nop
/* 140D58 8019ACE8 45020004 */  bc1fl      .L8019ACFC_ovl7
/* 140D5C 8019ACEC 46007387 */   neg.s     $f14, $f14
/* 140D60 8019ACF0 10000002 */  b          .L8019ACFC_ovl7
/* 140D64 8019ACF4 C7AE0018 */   lwc1      $f14, 0x18($sp)
/* 140D68 8019ACF8 46007387 */  neg.s      $f14, $f14
.L8019ACFC_ovl7:
/* 140D6C 8019ACFC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 140D70 8019AD00 3C01801D */  lui        $at, %hi(D_801CDBFC_ovl7)
/* 140D74 8019AD04 C422DBFC */  lwc1       $f2, %lo(D_801CDBFC_ovl7)($at)
/* 140D78 8019AD08 8C680000 */  lw         $t0, 0x0($v1)
/* 140D7C 8019AD0C 00084880 */  sll        $t1, $t0, 2
/* 140D80 8019AD10 00891021 */  addu       $v0, $a0, $t1
/* 140D84 8019AD14 C4460000 */  lwc1       $f6, 0x0($v0)
/* 140D88 8019AD18 460E3200 */  add.s      $f8, $f6, $f14
/* 140D8C 8019AD1C E4480000 */  swc1       $f8, 0x0($v0)
/* 140D90 8019AD20 8C6A0000 */  lw         $t2, 0x0($v1)
/* 140D94 8019AD24 000A5880 */  sll        $t3, $t2, 2
/* 140D98 8019AD28 008B1021 */  addu       $v0, $a0, $t3
/* 140D9C 8019AD2C C4400000 */  lwc1       $f0, 0x0($v0)
/* 140DA0 8019AD30 4600103C */  c.lt.s     $f2, $f0
/* 140DA4 8019AD34 00000000 */  nop
/* 140DA8 8019AD38 4502000C */  bc1fl      .L8019AD6C_ovl7
/* 140DAC 8019AD3C 460C003C */   c.lt.s    $f0, $f12
/* 140DB0 8019AD40 46020281 */  sub.s      $f10, $f0, $f2
.L8019AD44_ovl7:
/* 140DB4 8019AD44 E44A0000 */  swc1       $f10, 0x0($v0)
/* 140DB8 8019AD48 8C6C0000 */  lw         $t4, 0x0($v1)
/* 140DBC 8019AD4C 000C6880 */  sll        $t5, $t4, 2
/* 140DC0 8019AD50 008D1021 */  addu       $v0, $a0, $t5
/* 140DC4 8019AD54 C4400000 */  lwc1       $f0, 0x0($v0)
/* 140DC8 8019AD58 4600103C */  c.lt.s     $f2, $f0
/* 140DCC 8019AD5C 00000000 */  nop
/* 140DD0 8019AD60 4503FFF8 */  bc1tl      .L8019AD44_ovl7
/* 140DD4 8019AD64 46020281 */   sub.s     $f10, $f0, $f2
/* 140DD8 8019AD68 460C003C */  c.lt.s     $f0, $f12
.L8019AD6C_ovl7:
/* 140DDC 8019AD6C 00000000 */  nop
/* 140DE0 8019AD70 4502000C */  bc1fl      .L8019ADA4_ovl7
/* 140DE4 8019AD74 24020001 */   addiu     $v0, $zero, 0x1
/* 140DE8 8019AD78 46020400 */  add.s      $f16, $f0, $f2
.L8019AD7C_ovl7:
/* 140DEC 8019AD7C E4500000 */  swc1       $f16, 0x0($v0)
/* 140DF0 8019AD80 8C6E0000 */  lw         $t6, 0x0($v1)
/* 140DF4 8019AD84 000E7880 */  sll        $t7, $t6, 2
/* 140DF8 8019AD88 008F1021 */  addu       $v0, $a0, $t7
/* 140DFC 8019AD8C C4400000 */  lwc1       $f0, 0x0($v0)
/* 140E00 8019AD90 460C003C */  c.lt.s     $f0, $f12
/* 140E04 8019AD94 00000000 */  nop
/* 140E08 8019AD98 4503FFF8 */  bc1tl      .L8019AD7C_ovl7
/* 140E0C 8019AD9C 46020400 */   add.s     $f16, $f0, $f2
/* 140E10 8019ADA0 24020001 */  addiu      $v0, $zero, 0x1
.L8019ADA4_ovl7:
/* 140E14 8019ADA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 140E18 8019ADA8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 140E1C 8019ADAC 03E00008 */  jr         $ra
/* 140E20 8019ADB0 00000000 */   nop
