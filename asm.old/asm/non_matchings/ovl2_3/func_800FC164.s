glabel func_800FC164
/* 084BD4 800FC164 3C0F8013 */  lui   $t7, %hi(D_8012940C) # $t7, 0x8013
/* 084BD8 800FC168 8DEF940C */  lw    $t7, %lo(D_8012940C)($t7)
/* 084BDC 800FC16C 3C188013 */  lui   $t8, %hi(D_80129408) # $t8, 0x8013
/* 084BE0 800FC170 8F189408 */  lw    $t8, %lo(D_80129408)($t8)
/* 084BE4 800FC174 448F2000 */  mtc1  $t7, $f4
/* 084BE8 800FC178 3C018013 */  lui   $at, %hi(D_80128848) # $at, 0x8013
/* 084BEC 800FC17C 44985000 */  mtc1  $t8, $f10
/* 084BF0 800FC180 468021A0 */  cvt.s.w $f6, $f4
/* 084BF4 800FC184 C4208848 */  lwc1  $f0, %lo(D_80128848)($at)
/* 084BF8 800FC188 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 084BFC 800FC18C 3C0E800D */  lui   $t6, %hi(D_800D799C) # $t6, 0x800d
/* 084C00 800FC190 8DCE799C */  lw    $t6, %lo(D_800D799C)($t6)
/* 084C04 800FC194 46805420 */  cvt.s.w $f16, $f10
/* 084C08 800FC198 46003202 */  mul.s $f8, $f6, $f0
/* 084C0C 800FC19C AFB20020 */  sw    $s2, 0x20($sp)
/* 084C10 800FC1A0 3C128013 */  lui   $s2, %hi(D_80129370) # $s2, 0x8013
/* 084C14 800FC1A4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 084C18 800FC1A8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 084C1C 800FC1AC 46008482 */  mul.s $f18, $f16, $f0
/* 084C20 800FC1B0 AFB00018 */  sw    $s0, 0x18($sp)
/* 084C24 800FC1B4 AFA40038 */  sw    $a0, 0x38($sp)
/* 084C28 800FC1B8 26529370 */  addiu $s2, %lo(D_80129370) # addiu $s2, $s2, -0x6c90
/* 084C2C 800FC1BC 3C058013 */  lui   $a1, %hi(D_801292C8) # $a1, 0x8013
/* 084C30 800FC1C0 3C068013 */  lui   $a2, %hi(D_801293DC) # $a2, 0x8013
/* 084C34 800FC1C4 8DD1003C */  lw    $s1, 0x3c($t6)
/* 084C38 800FC1C8 00008025 */  move  $s0, $zero
/* 084C3C 800FC1CC E7A80030 */  swc1  $f8, 0x30($sp)
/* 084C40 800FC1D0 E7B2002C */  swc1  $f18, 0x2c($sp)
/* 084C44 800FC1D4 24C693DC */  addiu $a2, %lo(D_801293DC) # addiu $a2, $a2, -0x6c24
/* 084C48 800FC1D8 24A592C8 */  addiu $a1, %lo(D_801292C8) # addiu $a1, $a1, -0x6d38
/* 084C4C 800FC1DC 0C03F00F */  jal   func_800FC03C
/* 084C50 800FC1E0 02402025 */   move  $a0, $s2
/* 084C54 800FC1E4 10400002 */  beqz  $v0, .L800FC1F0_ovl2
/* 084C58 800FC1E8 3C048013 */   lui   $a0, %hi(D_80129374) # $a0, 0x8013
/* 084C5C 800FC1EC 24100001 */  li    $s0, 1
.L800FC1F0_ovl2:
/* 084C60 800FC1F0 3C058013 */  lui   $a1, %hi(D_801292CC) # $a1, 0x8013
/* 084C64 800FC1F4 3C068013 */  lui   $a2, %hi(D_801293E0) # $a2, 0x8013
/* 084C68 800FC1F8 24C693E0 */  addiu $a2, %lo(D_801293E0) # addiu $a2, $a2, -0x6c20
/* 084C6C 800FC1FC 24A592CC */  addiu $a1, %lo(D_801292CC) # addiu $a1, $a1, -0x6d34
/* 084C70 800FC200 0C03F00F */  jal   func_800FC03C
/* 084C74 800FC204 24849374 */   addiu $a0, %lo(D_80129374) # addiu $a0, $a0, -0x6c8c
/* 084C78 800FC208 10400002 */  beqz  $v0, .L800FC214_ovl2
/* 084C7C 800FC20C 3C048013 */   lui   $a0, %hi(D_80129378) # $a0, 0x8013
/* 084C80 800FC210 26100001 */  addiu $s0, $s0, 1
.L800FC214_ovl2:
/* 084C84 800FC214 3C058013 */  lui   $a1, %hi(D_801292D0) # $a1, 0x8013
/* 084C88 800FC218 3C068013 */  lui   $a2, %hi(D_801293E4) # $a2, 0x8013
/* 084C8C 800FC21C 24C693E4 */  addiu $a2, %lo(D_801293E4) # addiu $a2, $a2, -0x6c1c
/* 084C90 800FC220 24A592D0 */  addiu $a1, %lo(D_801292D0) # addiu $a1, $a1, -0x6d30
/* 084C94 800FC224 0C03F00F */  jal   func_800FC03C
/* 084C98 800FC228 24849378 */   addiu $a0, %lo(D_80129378) # addiu $a0, $a0, -0x6c88
/* 084C9C 800FC22C 10400002 */  beqz  $v0, .L800FC238_ovl2
/* 084CA0 800FC230 3C048013 */   lui   $a0, %hi(D_8012937C) # $a0, 0x8013
/* 084CA4 800FC234 26100001 */  addiu $s0, $s0, 1
.L800FC238_ovl2:
/* 084CA8 800FC238 3C058013 */  lui   $a1, %hi(D_801292D4) # $a1, 0x8013
/* 084CAC 800FC23C 3C068013 */  lui   $a2, %hi(D_801293E8) # $a2, 0x8013
/* 084CB0 800FC240 24C693E8 */  addiu $a2, %lo(D_801293E8) # addiu $a2, $a2, -0x6c18
/* 084CB4 800FC244 24A592D4 */  addiu $a1, %lo(D_801292D4) # addiu $a1, $a1, -0x6d2c
/* 084CB8 800FC248 0C03F00F */  jal   func_800FC03C
/* 084CBC 800FC24C 2484937C */   addiu $a0, %lo(D_8012937C) # addiu $a0, $a0, -0x6c84
/* 084CC0 800FC250 10400002 */  beqz  $v0, .L800FC25C_ovl2
/* 084CC4 800FC254 3C048013 */   lui   $a0, %hi(D_80129380) # $a0, 0x8013
/* 084CC8 800FC258 26100001 */  addiu $s0, $s0, 1
.L800FC25C_ovl2:
/* 084CCC 800FC25C 3C058013 */  lui   $a1, %hi(D_801292D8) # $a1, 0x8013
/* 084CD0 800FC260 3C068013 */  lui   $a2, %hi(D_801293EC) # $a2, 0x8013
/* 084CD4 800FC264 24C693EC */  addiu $a2, %lo(D_801293EC) # addiu $a2, $a2, -0x6c14
/* 084CD8 800FC268 24A592D8 */  addiu $a1, %lo(D_801292D8) # addiu $a1, $a1, -0x6d28
/* 084CDC 800FC26C 0C03F00F */  jal   func_800FC03C
/* 084CE0 800FC270 24849380 */   addiu $a0, %lo(D_80129380) # addiu $a0, $a0, -0x6c80
/* 084CE4 800FC274 10400002 */  beqz  $v0, .L800FC280_ovl2
/* 084CE8 800FC278 3C048013 */   lui   $a0, %hi(D_80129384) # $a0, 0x8013
/* 084CEC 800FC27C 26100001 */  addiu $s0, $s0, 1
.L800FC280_ovl2:
/* 084CF0 800FC280 3C058013 */  lui   $a1, %hi(D_801292DC) # $a1, 0x8013
/* 084CF4 800FC284 3C068013 */  lui   $a2, %hi(D_801293F0) # $a2, 0x8013
/* 084CF8 800FC288 24C693F0 */  addiu $a2, %lo(D_801293F0) # addiu $a2, $a2, -0x6c10
/* 084CFC 800FC28C 24A592DC */  addiu $a1, %lo(D_801292DC) # addiu $a1, $a1, -0x6d24
/* 084D00 800FC290 0C03F00F */  jal   func_800FC03C
/* 084D04 800FC294 24849384 */   addiu $a0, %lo(D_80129384) # addiu $a0, $a0, -0x6c7c
/* 084D08 800FC298 10400002 */  beqz  $v0, .L800FC2A4_ovl2
/* 084D0C 800FC29C 8FA50038 */   lw    $a1, 0x38($sp)
/* 084D10 800FC2A0 26100001 */  addiu $s0, $s0, 1
.L800FC2A4_ovl2:
/* 084D14 800FC2A4 3C02800D */  lui   $v0, %hi(D_800D7B20) # $v0, 0x800d
/* 084D18 800FC2A8 24427B20 */  addiu $v0, %lo(D_800D7B20) # addiu $v0, $v0, 0x7b20
/* 084D1C 800FC2AC 8C490000 */  lw    $t1, ($v0)
/* 084D20 800FC2B0 3C19800D */  lui   $t9, %hi(D_800D7B38) # $t9, 0x800d
/* 084D24 800FC2B4 C7A00030 */  lwc1  $f0, 0x30($sp)
/* 084D28 800FC2B8 C7A2002C */  lwc1  $f2, 0x2c($sp)
/* 084D2C 800FC2BC 27397B38 */  addiu $t9, %lo(D_800D7B38) # addiu $t9, $t9, 0x7b38
/* 084D30 800FC2C0 AF290000 */  sw    $t1, ($t9)
/* 084D34 800FC2C4 8C480004 */  lw    $t0, 4($v0)
/* 084D38 800FC2C8 3C038013 */  lui   $v1, %hi(D_80129400) # $v1, 0x8013
/* 084D3C 800FC2CC 24639400 */  addiu $v1, %lo(D_80129400) # addiu $v1, $v1, -0x6c00
/* 084D40 800FC2D0 AF280004 */  sw    $t0, 4($t9)
/* 084D44 800FC2D4 8C490008 */  lw    $t1, 8($v0)
/* 084D48 800FC2D8 3C048013 */  lui   $a0, %hi(D_80129404) # $a0, 0x8013
/* 084D4C 800FC2DC 24849404 */  addiu $a0, %lo(D_80129404) # addiu $a0, $a0, -0x6bfc
/* 084D50 800FC2E0 AF290008 */  sw    $t1, 8($t9)
/* 084D54 800FC2E4 8C48000C */  lw    $t0, 0xc($v0)
/* 084D58 800FC2E8 3C0C800D */  lui   $t4, %hi(D_800D7B2C) # $t4, 0x800d
/* 084D5C 800FC2EC 258C7B2C */  addiu $t4, %lo(D_800D7B2C) # addiu $t4, $t4, 0x7b2c
/* 084D60 800FC2F0 AF28000C */  sw    $t0, 0xc($t9)
/* 084D64 800FC2F4 8C490010 */  lw    $t1, 0x10($v0)
/* 084D68 800FC2F8 24010006 */  li    $at, 6
/* 084D6C 800FC2FC AF290010 */  sw    $t1, 0x10($t9)
/* 084D70 800FC300 8C480014 */  lw    $t0, 0x14($v0)
/* 084D74 800FC304 AF280014 */  sw    $t0, 0x14($t9)
/* 084D78 800FC308 C4640000 */  lwc1  $f4, ($v1)
/* 084D7C 800FC30C C6480000 */  lwc1  $f8, ($s2)
/* 084D80 800FC310 46022182 */  mul.s $f6, $f4, $f2
/* 084D84 800FC314 46083280 */  add.s $f10, $f6, $f8
/* 084D88 800FC318 E62A0048 */  swc1  $f10, 0x48($s1)
/* 084D8C 800FC31C C4900000 */  lwc1  $f16, ($a0)
/* 084D90 800FC320 C6440004 */  lwc1  $f4, 4($s2)
/* 084D94 800FC324 8E2B0048 */  lw    $t3, 0x48($s1)
/* 084D98 800FC328 46028482 */  mul.s $f18, $f16, $f2
/* 084D9C 800FC32C 46049180 */  add.s $f6, $f18, $f4
/* 084DA0 800FC330 E626004C */  swc1  $f6, 0x4c($s1)
/* 084DA4 800FC334 C6480008 */  lwc1  $f8, 8($s2)
/* 084DA8 800FC338 E6280050 */  swc1  $f8, 0x50($s1)
/* 084DAC 800FC33C C46A0000 */  lwc1  $f10, ($v1)
/* 084DB0 800FC340 C652000C */  lwc1  $f18, 0xc($s2)
/* 084DB4 800FC344 46005402 */  mul.s $f16, $f10, $f0
/* 084DB8 800FC348 46128100 */  add.s $f4, $f16, $f18
/* 084DBC 800FC34C E624003C */  swc1  $f4, 0x3c($s1)
/* 084DC0 800FC350 C4860000 */  lwc1  $f6, ($a0)
/* 084DC4 800FC354 C64A0010 */  lwc1  $f10, 0x10($s2)
/* 084DC8 800FC358 46003202 */  mul.s $f8, $f6, $f0
/* 084DCC 800FC35C 460A4400 */  add.s $f16, $f8, $f10
/* 084DD0 800FC360 E6300040 */  swc1  $f16, 0x40($s1)
/* 084DD4 800FC364 C6520014 */  lwc1  $f18, 0x14($s2)
/* 084DD8 800FC368 E6320044 */  swc1  $f18, 0x44($s1)
/* 084DDC 800FC36C AC4B0000 */  sw    $t3, ($v0)
/* 084DE0 800FC370 8E2A004C */  lw    $t2, 0x4c($s1)
/* 084DE4 800FC374 AC4A0004 */  sw    $t2, 4($v0)
/* 084DE8 800FC378 8E2B0050 */  lw    $t3, 0x50($s1)
/* 084DEC 800FC37C AC4B0008 */  sw    $t3, 8($v0)
/* 084DF0 800FC380 8E2E003C */  lw    $t6, 0x3c($s1)
/* 084DF4 800FC384 00001025 */  move  $v0, $zero
/* 084DF8 800FC388 AD8E0000 */  sw    $t6, ($t4)
/* 084DFC 800FC38C 8E2D0040 */  lw    $t5, 0x40($s1)
/* 084E00 800FC390 AD8D0004 */  sw    $t5, 4($t4)
/* 084E04 800FC394 8E2E0044 */  lw    $t6, 0x44($s1)
/* 084E08 800FC398 AD8E0008 */  sw    $t6, 8($t4)
/* 084E0C 800FC39C C4A40010 */  lwc1  $f4, 0x10($a1)
/* 084E10 800FC3A0 E6240020 */  swc1  $f4, 0x20($s1)
/* 084E14 800FC3A4 C4A60054 */  lwc1  $f6, 0x54($a1)
/* 084E18 800FC3A8 E6260028 */  swc1  $f6, 0x28($s1)
/* 084E1C 800FC3AC C4A80058 */  lwc1  $f8, 0x58($a1)
/* 084E20 800FC3B0 16010003 */  bne   $s0, $at, .L800FC3C0_ovl2
/* 084E24 800FC3B4 E628002C */   swc1  $f8, 0x2c($s1)
/* 084E28 800FC3B8 10000001 */  b     .L800FC3C0_ovl2
/* 084E2C 800FC3BC 24020001 */   li    $v0, 1
.L800FC3C0_ovl2:
/* 084E30 800FC3C0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 084E34 800FC3C4 8FB00018 */  lw    $s0, 0x18($sp)
/* 084E38 800FC3C8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 084E3C 800FC3CC 8FB20020 */  lw    $s2, 0x20($sp)
/* 084E40 800FC3D0 03E00008 */  jr    $ra
/* 084E44 800FC3D4 27BD0038 */   addiu $sp, $sp, 0x38
.type func_800FC164, @function
.size func_800FC164, . - func_800FC164
