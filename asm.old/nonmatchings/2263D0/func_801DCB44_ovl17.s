glabel func_801DCB44_ovl17
/* 227D34 801DCB44 3C028005 */  lui        $v0, %hi(gPlayerControllers)
glabel func_801DCB48_ovl14
/* 227D38 801DCB48 94428F20 */  lhu        $v0, %lo(gPlayerControllers)($v0)
/* 227D3C 801DCB4C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 227D40 801DCB50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 227D44 801DCB54 30450300 */  andi       $a1, $v0, 0x300
/* 227D48 801DCB58 10A0001B */  beqz       $a1, .L801DCBC8_ovl17
glabel func_801DCB5C_ovl9
/* 227D4C 801DCB5C AFA40048 */   sw        $a0, 0x48($sp)
/* 227D50 801DCB60 3C014100 */  lui        $at, (0x41000000 >> 16)
glabel func_801DCB64_ovl15
/* 227D54 801DCB64 44812000 */  mtc1       $at, $f4
/* 227D58 801DCB68 3C04801E */  lui        $a0, %hi(D_801E56E8_ovl17)
/* 227D5C 801DCB6C 248456E8 */  addiu      $a0, $a0, %lo(D_801E56E8_ovl17)
/* 227D60 801DCB70 304E0100 */  andi       $t6, $v0, 0x100
/* 227D64 801DCB74 11C00007 */  beqz       $t6, .L801DCB94_ovl17
/* 227D68 801DCB78 E4840000 */   swc1      $f4, 0x0($a0)
/* 227D6C 801DCB7C 3C014352 */  lui        $at, (0x43520000 >> 16)
/* 227D70 801DCB80 44813000 */  mtc1       $at, $f6
glabel func_801DCB84_ovl14
/* 227D74 801DCB84 3C04801E */  lui        $a0, %hi(D_801E56D0_ovl17 + 0x8)
/* 227D78 801DCB88 248456D8 */  addiu      $a0, $a0, %lo(D_801E56D0_ovl17 + 0x8)
/* 227D7C 801DCB8C 10000006 */  b          .L801DCBA8_ovl17
/* 227D80 801DCB90 E4860000 */   swc1      $f6, 0x0($a0)
.L801DCB94_ovl17:
/* 227D84 801DCB94 3C01C352 */  lui        $at, (0xC3520000 >> 16)
/* 227D88 801DCB98 44814000 */  mtc1       $at, $f8
/* 227D8C 801DCB9C 3C04801E */  lui        $a0, %hi(D_801E56D0_ovl17 + 0x8)
/* 227D90 801DCBA0 248456D8 */  addiu      $a0, $a0, %lo(D_801E56D0_ovl17 + 0x8)
/* 227D94 801DCBA4 E4880000 */  swc1       $f8, 0x0($a0)
.L801DCBA8_ovl17:
/* 227D98 801DCBA8 30430C00 */  andi       $v1, $v0, 0xC00
glabel func_801DCBAC_ovl9
/* 227D9C 801DCBAC 1060001B */  beqz       $v1, .L801DCC1C_ovl17
/* 227DA0 801DCBB0 3C01801E */   lui       $at, %hi(func_801E552C_ovl17 + 0x30)
/* 227DA4 801DCBB4 C48A0000 */  lwc1       $f10, 0x0($a0)
/* 227DA8 801DCBB8 C424555C */  lwc1       $f4, %lo(func_801E552C_ovl17 + 0x30)($at)
.L801DCBBC_ovl12:
/* 227DAC 801DCBBC 46045183 */  div.s      $f6, $f10, $f4
.L801DCBC0_ovl14:
/* 227DB0 801DCBC0 10000016 */  b          .L801DCC1C_ovl17
glabel func_801DCBC4_ovl12
/* 227DB4 801DCBC4 E4860000 */   swc1      $f6, 0x0($a0)
.L801DCBC8_ovl17:
/* 227DB8 801DCBC8 3C04801E */  lui        $a0, %hi(D_801E56E8_ovl17)
glabel func_801DCBCC_ovl14
/* 227DBC 801DCBCC 248456E8 */  addiu      $a0, $a0, %lo(D_801E56E8_ovl17)
/* 227DC0 801DCBD0 C4800000 */  lwc1       $f0, 0x0($a0)
/* 227DC4 801DCBD4 44804000 */  mtc1       $zero, $f8
/* 227DC8 801DCBD8 00000000 */  nop
/* 227DCC 801DCBDC 4600403C */  c.lt.s     $f8, $f0
glabel func_801DCBE0_ovl16
/* 227DD0 801DCBE0 00000000 */  nop
/* 227DD4 801DCBE4 45000008 */  bc1f       .L801DCC08_ovl17
/* 227DD8 801DCBE8 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 227DDC 801DCBEC 44815000 */  mtc1       $at, $f10
/* 227DE0 801DCBF0 30430C00 */  andi       $v1, $v0, 0xC00
.L801DCBF4_ovl12:
/* 227DE4 801DCBF4 460A0101 */  sub.s      $f4, $f0, $f10
glabel func_801DCBF8_ovl16
/* 227DE8 801DCBF8 E4840000 */  swc1       $f4, 0x0($a0)
/* 227DEC 801DCBFC 3C04801E */  lui        $a0, %hi(D_801E56D0_ovl17 + 0x8)
/* 227DF0 801DCC00 10000006 */  b          .L801DCC1C_ovl17
/* 227DF4 801DCC04 248456D8 */   addiu     $a0, $a0, %lo(D_801E56D0_ovl17 + 0x8)
.L801DCC08_ovl17:
/* 227DF8 801DCC08 44803000 */  mtc1       $zero, $f6
/* 227DFC 801DCC0C 3C04801E */  lui        $a0, %hi(D_801E56D0_ovl17 + 0x8)
/* 227E00 801DCC10 248456D8 */  addiu      $a0, $a0, %lo(D_801E56D0_ovl17 + 0x8)
/* 227E04 801DCC14 30430C00 */  andi       $v1, $v0, 0xC00
/* 227E08 801DCC18 E4860000 */  swc1       $f6, 0x0($a0)
.L801DCC1C_ovl17:
/* 227E0C 801DCC1C 10600020 */  beqz       $v1, .L801DCCA0_ovl17
/* 227E10 801DCC20 3C014100 */   lui       $at, (0x41000000 >> 16)
/* 227E14 801DCC24 44814000 */  mtc1       $at, $f8
/* 227E18 801DCC28 3C03801E */  lui        $v1, %hi(.L801E56EC_ovl17)
/* 227E1C 801DCC2C 246356EC */  addiu      $v1, $v1, %lo(.L801E56EC_ovl17)
/* 227E20 801DCC30 304F0800 */  andi       $t7, $v0, 0x800
/* 227E24 801DCC34 11E0000A */  beqz       $t7, func_801DCC60_ovl17
/* 227E28 801DCC38 E4680000 */   swc1      $f8, 0x0($v1)
.L801DCC3C_ovl11:
/* 227E2C 801DCC3C 3C01C348 */  lui        $at, (0xC3480000 >> 16)
/* 227E30 801DCC40 44815000 */  mtc1       $at, $f10
/* 227E34 801DCC44 3C01800D */  lui        $at, %hi(D_800D7158 + 0xC)
glabel func_801DCC48_ovl12
/* 227E38 801DCC48 C4247164 */  lwc1       $f4, %lo(D_800D7158 + 0xC)($at)
glabel func_801DCC4C_ovl11
/* 227E3C 801DCC4C 3C02801E */  lui        $v0, %hi(.L801E56DC_ovl17)
.L801DCC50_ovl9:
/* 227E40 801DCC50 244256DC */  addiu      $v0, $v0, %lo(.L801E56DC_ovl17)
.L801DCC54_ovl9:
/* 227E44 801DCC54 46045180 */  add.s      $f6, $f10, $f4
/* 227E48 801DCC58 1000000A */  b          .L801DCC84_ovl17
/* 227E4C 801DCC5C E4460000 */   swc1      $f6, 0x0($v0)
glabel func_801DCC60_ovl17
/* 227E50 801DCC60 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
/* 227E54 801DCC64 44814000 */  mtc1       $at, $f8
/* 227E58 801DCC68 3C01800D */  lui        $at, %hi(D_800D7158 + 0xC)
/* 227E5C 801DCC6C C42A7164 */  lwc1       $f10, %lo(D_800D7158 + 0xC)($at)
/* 227E60 801DCC70 3C01801E */  lui        $at, %hi(.L801E56DC_ovl17)
/* 227E64 801DCC74 3C02801E */  lui        $v0, %hi(.L801E56DC_ovl17)
/* 227E68 801DCC78 460A4100 */  add.s      $f4, $f8, $f10
glabel func_801DCC7C_ovl13
/* 227E6C 801DCC7C 244256DC */  addiu      $v0, $v0, %lo(.L801E56DC_ovl17)
/* 227E70 801DCC80 E42456DC */  swc1       $f4, %lo(.L801E56DC_ovl17)($at)
.L801DCC84_ovl17:
/* 227E74 801DCC84 10A0001B */  beqz       $a1, .L801DCCF4_ovl17
/* 227E78 801DCC88 3C01801E */   lui       $at, %hi(func_801E552C_ovl17 + 0x34)
/* 227E7C 801DCC8C C4460000 */  lwc1       $f6, 0x0($v0)
/* 227E80 801DCC90 C4285560 */  lwc1       $f8, %lo(func_801E552C_ovl17 + 0x34)($at)
/* 227E84 801DCC94 46083283 */  div.s      $f10, $f6, $f8
/* 227E88 801DCC98 10000016 */  b          .L801DCCF4_ovl17
/* 227E8C 801DCC9C E44A0000 */   swc1      $f10, 0x0($v0)
.L801DCCA0_ovl17:
/* 227E90 801DCCA0 3C03801E */  lui        $v1, %hi(.L801E56EC_ovl17)
/* 227E94 801DCCA4 246356EC */  addiu      $v1, $v1, %lo(.L801E56EC_ovl17)
/* 227E98 801DCCA8 C4600000 */  lwc1       $f0, 0x0($v1)
/* 227E9C 801DCCAC 44802000 */  mtc1       $zero, $f4
/* 227EA0 801DCCB0 00000000 */  nop
.L801DCCB4_ovl12:
/* 227EA4 801DCCB4 4600203C */  c.lt.s     $f4, $f0
glabel func_801DCCB8_ovl10
/* 227EA8 801DCCB8 00000000 */  nop
/* 227EAC 801DCCBC 45000007 */  bc1f       .L801DCCDC_ovl17
/* 227EB0 801DCCC0 3C013F80 */   lui       $at, (0x3F800000 >> 16)
glabel func_801DCCC4_ovl12
/* 227EB4 801DCCC4 44813000 */  mtc1       $at, $f6
/* 227EB8 801DCCC8 3C02801E */  lui        $v0, %hi(.L801E56DC_ovl17)
.L801DCCCC_ovl15:
/* 227EBC 801DCCCC 244256DC */  addiu      $v0, $v0, %lo(.L801E56DC_ovl17)
glabel func_801DCCD0_ovl11
/* 227EC0 801DCCD0 46060201 */  sub.s      $f8, $f0, $f6
/* 227EC4 801DCCD4 10000007 */  b          .L801DCCF4_ovl17
glabel func_801DCCD8_ovl11
/* 227EC8 801DCCD8 E4680000 */   swc1      $f8, 0x0($v1)
.L801DCCDC_ovl17:
/* 227ECC 801DCCDC 3C01800D */  lui        $at, %hi(D_800D7158 + 0xC)
/* 227ED0 801DCCE0 C42A7164 */  lwc1       $f10, %lo(D_800D7158 + 0xC)($at)
/* 227ED4 801DCCE4 3C01801E */  lui        $at, %hi(.L801E56DC_ovl17)
/* 227ED8 801DCCE8 3C02801E */  lui        $v0, %hi(.L801E56DC_ovl17)
.L801DCCEC_ovl15:
/* 227EDC 801DCCEC 244256DC */  addiu      $v0, $v0, %lo(.L801E56DC_ovl17)
.L801DCCF0_ovl15:
/* 227EE0 801DCCF0 E42A56DC */  swc1       $f10, %lo(.L801E56DC_ovl17)($at)
.L801DCCF4_ovl17:
/* 227EE4 801DCCF4 3C18800D */  lui        $t8, %hi(D_800D6B54)
/* 227EE8 801DCCF8 8F186B54 */  lw         $t8, %lo(D_800D6B54)($t8)
.L801DCCFC_ovl15:
/* 227EEC 801DCCFC 24010001 */  addiu      $at, $zero, 0x1
/* 227EF0 801DCD00 17010006 */  bne        $t8, $at, .L801DCD1C_ovl17
/* 227EF4 801DCD04 00000000 */   nop
/* 227EF8 801DCD08 44802000 */  mtc1       $zero, $f4
/* 227EFC 801DCD0C 3C01800D */  lui        $at, %hi(D_800D7158 + 0xC)
.L801DCD10_ovl12:
/* 227F00 801DCD10 E4840000 */  swc1       $f4, 0x0($a0)
/* 227F04 801DCD14 C4267164 */  lwc1       $f6, %lo(D_800D7158 + 0xC)($at)
/* 227F08 801DCD18 E4460000 */  swc1       $f6, 0x0($v0)
.L801DCD1C_ovl17:
/* 227F0C 801DCD1C 3C01801E */  lui        $at, %hi(.L801E5564_ovl17)
/* 227F10 801DCD20 C4205564 */  lwc1       $f0, %lo(.L801E5564_ovl17)($at)
/* 227F14 801DCD24 3C01801E */  lui        $at, %hi(D_801E56D0_ovl17)
/* 227F18 801DCD28 C42A56D0 */  lwc1       $f10, %lo(D_801E56D0_ovl17)($at)
/* 227F1C 801DCD2C C4880000 */  lwc1       $f8, 0x0($a0)
.L801DCD30_ovl14:
/* 227F20 801DCD30 3C01801E */  lui        $at, %hi(D_801E56D0_ovl17 + 0x4)
.L801DCD34_ovl16:
/* 227F24 801DCD34 C42656D4 */  lwc1       $f6, %lo(D_801E56D0_ovl17 + 0x4)($at)
/* 227F28 801DCD38 460A4081 */  sub.s      $f2, $f8, $f10
.L801DCD3C_ovl15:
/* 227F2C 801DCD3C C4440000 */  lwc1       $f4, 0x0($v0)
.L801DCD40_ovl9:
/* 227F30 801DCD40 46001082 */  mul.s      $f2, $f2, $f0
/* 227F34 801DCD44 46062481 */  sub.s      $f18, $f4, $f6
/* 227F38 801DCD48 46009482 */  mul.s      $f18, $f18, $f0
.L801DCD4C_ovl16:
/* 227F3C 801DCD4C E7A20044 */  swc1       $f2, 0x44($sp)
.L801DCD50_ovl12:
/* 227F40 801DCD50 46021202 */  mul.s      $f8, $f2, $f2
/* 227F44 801DCD54 00000000 */  nop
/* 227F48 801DCD58 46129282 */  mul.s      $f10, $f18, $f18
/* 227F4C 801DCD5C E7B20040 */  swc1       $f18, 0x40($sp)
/* 227F50 801DCD60 460A4300 */  add.s      $f12, $f8, $f10
.L801DCD64_ovl16:
/* 227F54 801DCD64 0C00CAC8 */  jal        sqrtf
.L801DCD68_ovl16:
/* 227F58 801DCD68 E7AC0028 */   swc1      $f12, 0x28($sp)
/* 227F5C 801DCD6C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
glabel func_801DCD70_ovl12
/* 227F60 801DCD70 C7A20044 */  lwc1       $f2, 0x44($sp)
/* 227F64 801DCD74 44812000 */  mtc1       $at, $f4
/* 227F68 801DCD78 44813000 */  mtc1       $at, $f6
.L801DCD7C_ovl15:
/* 227F6C 801DCD7C 46041382 */  mul.s      $f14, $f2, $f4
.L801DCD80_ovl16:
/* 227F70 801DCD80 00000000 */  nop
glabel func_801DCD84_ovl16
/* 227F74 801DCD84 46060402 */  mul.s      $f16, $f0, $f6
/* 227F78 801DCD88 00000000 */  nop
glabel func_801DCD8C_ovl11
/* 227F7C 801DCD8C 460E7202 */  mul.s      $f8, $f14, $f14
/* 227F80 801DCD90 00000000 */  nop
/* 227F84 801DCD94 46108282 */  mul.s      $f10, $f16, $f16
/* 227F88 801DCD98 0C00CAC8 */  jal        sqrtf
.L801DCD9C_ovl16:
/* 227F8C 801DCD9C 460A4300 */   add.s     $f12, $f8, $f10
.L801DCDA0_ovl16:
/* 227F90 801DCDA0 C7A20044 */  lwc1       $f2, 0x44($sp)
.L801DCDA4_ovl9:
/* 227F94 801DCDA4 44802000 */  mtc1       $zero, $f4
glabel func_801DCDA8_ovl15
/* 227F98 801DCDA8 3C04801E */  lui        $a0, %hi(D_801E56D0_ovl17 + 0x8)
/* 227F9C 801DCDAC 248456D8 */  addiu      $a0, $a0, %lo(D_801E56D0_ovl17 + 0x8)
/* 227FA0 801DCDB0 4604103C */  c.lt.s     $f2, $f4
/* 227FA4 801DCDB4 C7B20040 */  lwc1       $f18, 0x40($sp)
/* 227FA8 801DCDB8 3C01801E */  lui        $at, %hi(D_801E5568_ovl17)
/* 227FAC 801DCDBC 45020004 */  bc1fl      .L801DCDD0_ovl17
/* 227FB0 801DCDC0 46001306 */   mov.s     $f12, $f2
/* 227FB4 801DCDC4 10000002 */  b          .L801DCDD0_ovl17
glabel func_801DCDC8_ovl16
/* 227FB8 801DCDC8 46001307 */   neg.s     $f12, $f2
/* 227FBC 801DCDCC 46001306 */  mov.s      $f12, $f2
.L801DCDD0_ovl17:
/* 227FC0 801DCDD0 C4265568 */  lwc1       $f6, %lo(D_801E5568_ovl17)($at)
glabel func_801DCDD4_ovl10
/* 227FC4 801DCDD4 460C303C */  c.lt.s     $f6, $f12
/* 227FC8 801DCDD8 00000000 */  nop
/* 227FCC 801DCDDC 4500001E */  bc1f       .L801DCE58_ovl17
/* 227FD0 801DCDE0 3C01801E */   lui       $at, %hi(D_801E556C_ovl17)
/* 227FD4 801DCDE4 C42A556C */  lwc1       $f10, %lo(D_801E556C_ovl17)($at)
/* 227FD8 801DCDE8 3C02801E */  lui        $v0, %hi(D_801E56E0_ovl17)
.L801DCDEC_ovl14:
/* 227FDC 801DCDEC 244256E0 */  addiu      $v0, $v0, %lo(D_801E56E0_ovl17)
/* 227FE0 801DCDF0 460A1102 */  mul.s      $f4, $f2, $f10
.L801DCDF4_ovl12:
/* 227FE4 801DCDF4 C4480000 */  lwc1       $f8, 0x0($v0)
/* 227FE8 801DCDF8 3C01801E */  lui        $at, %hi(D_801E56E0_ovl17)
glabel func_801DCDFC_ovl12
/* 227FEC 801DCDFC 46044180 */  add.s      $f6, $f8, $f4
/* 227FF0 801DCE00 E4460000 */  swc1       $f6, 0x0($v0)
glabel func_801DCE04_ovl11
/* 227FF4 801DCE04 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 227FF8 801DCE08 460C003C */  c.lt.s     $f0, $f12
.L801DCE0C_ovl9:
/* 227FFC 801DCE0C 00000000 */  nop
/* 228000 801DCE10 45020005 */  bc1fl      .L801DCE28_ovl17
/* 228004 801DCE14 46000387 */   neg.s     $f14, $f0
/* 228008 801DCE18 E42056E0 */  swc1       $f0, %lo(D_801E56E0_ovl17)($at)
glabel func_801DCE1C_ovl14
/* 22800C 801DCE1C 10000009 */  b          func_801DCE44_ovl17
/* 228010 801DCE20 C42C56E0 */   lwc1      $f12, %lo(D_801E56E0_ovl17)($at)
/* 228014 801DCE24 46000387 */  neg.s      $f14, $f0
.L801DCE28_ovl17:
/* 228018 801DCE28 3C01801E */  lui        $at, %hi(D_801E56E0_ovl17)
/* 22801C 801DCE2C 460E603C */  c.lt.s     $f12, $f14
/* 228020 801DCE30 00000000 */  nop
.L801DCE34_ovl9:
/* 228024 801DCE34 45000003 */  bc1f       func_801DCE44_ovl17
.L801DCE38_ovl11:
/* 228028 801DCE38 00000000 */   nop
.L801DCE3C_ovl11:
/* 22802C 801DCE3C E42E56E0 */  swc1       $f14, %lo(D_801E56E0_ovl17)($at)
/* 228030 801DCE40 C42C56E0 */  lwc1       $f12, %lo(D_801E56E0_ovl17)($at)
glabel func_801DCE44_ovl17
/* 228034 801DCE44 3C01801E */  lui        $at, %hi(D_801E56D0_ovl17)
glabel func_801DCE48_ovl12
/* 228038 801DCE48 C42A56D0 */  lwc1       $f10, %lo(D_801E56D0_ovl17)($at)
/* 22803C 801DCE4C 460C5200 */  add.s      $f8, $f10, $f12
/* 228040 801DCE50 10000008 */  b          .L801DCE74_ovl17
/* 228044 801DCE54 E42856D0 */   swc1      $f8, %lo(D_801E56D0_ovl17)($at)
.L801DCE58_ovl17:
/* 228048 801DCE58 44802000 */  mtc1       $zero, $f4
.L801DCE5C_ovl15:
/* 22804C 801DCE5C C4860000 */  lwc1       $f6, 0x0($a0)
/* 228050 801DCE60 3C02801E */  lui        $v0, %hi(D_801E56E0_ovl17)
.L801DCE64_ovl12:
/* 228054 801DCE64 244256E0 */  addiu      $v0, $v0, %lo(D_801E56E0_ovl17)
.L801DCE68_ovl14:
/* 228058 801DCE68 3C01801E */  lui        $at, %hi(D_801E56D0_ovl17)
glabel func_801DCE6C_ovl12
/* 22805C 801DCE6C E4440000 */  swc1       $f4, 0x0($v0)
/* 228060 801DCE70 E42656D0 */  swc1       $f6, %lo(D_801E56D0_ovl17)($at)
.L801DCE74_ovl17:
/* 228064 801DCE74 C7AC0028 */  lwc1       $f12, 0x28($sp)
/* 228068 801DCE78 0C00CAC8 */  jal        sqrtf
/* 22806C 801DCE7C E7B20040 */   swc1      $f18, 0x40($sp)
/* 228070 801DCE80 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 228074 801DCE84 44817000 */  mtc1       $at, $f14
/* 228078 801DCE88 C7B20040 */  lwc1       $f18, 0x40($sp)
/* 22807C 801DCE8C 460E9082 */  mul.s      $f2, $f18, $f14
/* 228080 801DCE90 00000000 */  nop
/* 228084 801DCE94 460E0402 */  mul.s      $f16, $f0, $f14
/* 228088 801DCE98 00000000 */  nop
glabel func_801DCE9C_ovl13
/* 22808C 801DCE9C 46021282 */  mul.s      $f10, $f2, $f2
/* 228090 801DCEA0 00000000 */  nop
/* 228094 801DCEA4 46108202 */  mul.s      $f8, $f16, $f16
/* 228098 801DCEA8 0C00CAC8 */  jal        sqrtf
/* 22809C 801DCEAC 46085300 */   add.s     $f12, $f10, $f8
/* 2280A0 801DCEB0 C7B20040 */  lwc1       $f18, 0x40($sp)
/* 2280A4 801DCEB4 44802000 */  mtc1       $zero, $f4
/* 2280A8 801DCEB8 3C01801E */  lui        $at, %hi(D_801E5570_ovl17)
/* 2280AC 801DCEBC 4604903C */  c.lt.s     $f18, $f4
glabel func_801DCEC0_ovl14
/* 2280B0 801DCEC0 00000000 */  nop
/* 2280B4 801DCEC4 45020004 */  bc1fl      .L801DCED8_ovl17
/* 2280B8 801DCEC8 46009306 */   mov.s     $f12, $f18
/* 2280BC 801DCECC 10000002 */  b          .L801DCED8_ovl17
/* 2280C0 801DCED0 46009307 */   neg.s     $f12, $f18
/* 2280C4 801DCED4 46009306 */  mov.s      $f12, $f18
.L801DCED8_ovl17:
/* 2280C8 801DCED8 C4265570 */  lwc1       $f6, %lo(D_801E5570_ovl17)($at)
/* 2280CC 801DCEDC 460C303C */  c.lt.s     $f6, $f12
/* 2280D0 801DCEE0 00000000 */  nop
/* 2280D4 801DCEE4 4500001F */  bc1f       .L801DCF64_ovl17
/* 2280D8 801DCEE8 3C01801E */   lui       $at, %hi(.L801E5574_ovl17)
.L801DCEEC_ovl16:
/* 2280DC 801DCEEC C4285574 */  lwc1       $f8, %lo(.L801E5574_ovl17)($at)
.L801DCEF0_ovl16:
/* 2280E0 801DCEF0 3C02801E */  lui        $v0, %hi(D_801E56E4_ovl17)
/* 2280E4 801DCEF4 244256E4 */  addiu      $v0, $v0, %lo(D_801E56E4_ovl17)
/* 2280E8 801DCEF8 46089102 */  mul.s      $f4, $f18, $f8
/* 2280EC 801DCEFC C44A0000 */  lwc1       $f10, 0x0($v0)
/* 2280F0 801DCF00 3C01801E */  lui        $at, %hi(D_801E56E4_ovl17)
/* 2280F4 801DCF04 46045180 */  add.s      $f6, $f10, $f4
/* 2280F8 801DCF08 E4460000 */  swc1       $f6, 0x0($v0)
/* 2280FC 801DCF0C C4420000 */  lwc1       $f2, 0x0($v0)
/* 228100 801DCF10 3C02801E */  lui        $v0, %hi(D_801E56D0_ovl17 + 0x4)
/* 228104 801DCF14 244256D4 */  addiu      $v0, $v0, %lo(D_801E56D0_ovl17 + 0x4)
/* 228108 801DCF18 4602003C */  c.lt.s     $f0, $f2
/* 22810C 801DCF1C 00000000 */  nop
/* 228110 801DCF20 45020005 */  bc1fl      .L801DCF38_ovl17
/* 228114 801DCF24 46000387 */   neg.s     $f14, $f0
/* 228118 801DCF28 E42056E4 */  swc1       $f0, %lo(D_801E56E4_ovl17)($at)
.L801DCF2C_ovl14:
/* 22811C 801DCF2C 10000009 */  b          .L801DCF54_ovl17
/* 228120 801DCF30 C42256E4 */   lwc1      $f2, %lo(D_801E56E4_ovl17)($at)
/* 228124 801DCF34 46000387 */  neg.s      $f14, $f0
.L801DCF38_ovl17:
/* 228128 801DCF38 3C01801E */  lui        $at, %hi(D_801E56E4_ovl17)
/* 22812C 801DCF3C 460E103C */  c.lt.s     $f2, $f14
/* 228130 801DCF40 00000000 */  nop
/* 228134 801DCF44 45020004 */  bc1fl      .L801DCF58_ovl17
glabel func_801DCF48_ovl10
/* 228138 801DCF48 C4480000 */   lwc1      $f8, 0x0($v0)
/* 22813C 801DCF4C E42E56E4 */  swc1       $f14, %lo(D_801E56E4_ovl17)($at)
.L801DCF50_ovl9:
/* 228140 801DCF50 C42256E4 */  lwc1       $f2, %lo(D_801E56E4_ovl17)($at)
.L801DCF54_ovl17:
/* 228144 801DCF54 C4480000 */  lwc1       $f8, 0x0($v0)
.L801DCF58_ovl17:
/* 228148 801DCF58 46024280 */  add.s      $f10, $f8, $f2
/* 22814C 801DCF5C 1000000B */  b          .L801DCF8C_ovl17
/* 228150 801DCF60 E44A0000 */   swc1      $f10, 0x0($v0)
.L801DCF64_ovl17:
/* 228154 801DCF64 44802000 */  mtc1       $zero, $f4
/* 228158 801DCF68 3C02801E */  lui        $v0, %hi(D_801E56E4_ovl17)
/* 22815C 801DCF6C 244256E4 */  addiu      $v0, $v0, %lo(D_801E56E4_ovl17)
glabel func_801DCF70_ovl11
/* 228160 801DCF70 3C01801E */  lui        $at, %hi(.L801E56DC_ovl17)
/* 228164 801DCF74 E4440000 */  swc1       $f4, 0x0($v0)
/* 228168 801DCF78 C42656DC */  lwc1       $f6, %lo(.L801E56DC_ovl17)($at)
/* 22816C 801DCF7C 3C01801E */  lui        $at, %hi(D_801E56D0_ovl17 + 0x4)
/* 228170 801DCF80 3C02801E */  lui        $v0, %hi(D_801E56D0_ovl17 + 0x4)
.L801DCF84_ovl14:
/* 228174 801DCF84 244256D4 */  addiu      $v0, $v0, %lo(D_801E56D0_ovl17 + 0x4)
/* 228178 801DCF88 E42656D4 */  swc1       $f6, %lo(D_801E56D0_ovl17 + 0x4)($at)
.L801DCF8C_ovl17:
/* 22817C 801DCF8C 3C01801E */  lui        $at, %hi(D_801E56D0_ovl17)
/* 228180 801DCF90 C42856D0 */  lwc1       $f8, %lo(D_801E56D0_ovl17)($at)
/* 228184 801DCF94 3C01800D */  lui        $at, %hi(D_800D7158 + 0x14)
.L801DCF98_ovl9:
/* 228188 801DCF98 C424716C */  lwc1       $f4, %lo(D_800D7158 + 0x14)($at)
/* 22818C 801DCF9C 3C01800D */  lui        $at, %hi(D_800D7158 + 0x10)
.L801DCFA0_ovl14:
/* 228190 801DCFA0 C4267168 */  lwc1       $f6, %lo(D_800D7158 + 0x10)($at)
/* 228194 801DCFA4 E7A80030 */  swc1       $f8, 0x30($sp)
/* 228198 801DCFA8 C44A0000 */  lwc1       $f10, 0x0($v0)
/* 22819C 801DCFAC 46062201 */  sub.s      $f8, $f4, $f6
.L801DCFB0_ovl15:
/* 2281A0 801DCFB0 27A40030 */  addiu      $a0, $sp, 0x30
.L801DCFB4_ovl10:
/* 2281A4 801DCFB4 8FA50048 */  lw         $a1, 0x48($sp)
.L801DCFB8_ovl14:
/* 2281A8 801DCFB8 E7AA0034 */  swc1       $f10, 0x34($sp)
/* 2281AC 801DCFBC 0C077427 */  jal        func_801DD09C_ovl17
/* 2281B0 801DCFC0 E7A80038 */   swc1      $f8, 0x38($sp)
glabel func_801DCFC4_ovl10
/* 2281B4 801DCFC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2281B8 801DCFC8 27BD0048 */  addiu      $sp, $sp, 0x48
/* 2281BC 801DCFCC 03E00008 */  jr         $ra
/* 2281C0 801DCFD0 00000000 */   nop
