glabel func_801DEA5C_ovl17
/* 229C4C 801DEA5C 27BDFEC8 */  addiu      $sp, $sp, -0x138
/* 229C50 801DEA60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 229C54 801DEA64 0C00C304 */  jal        guMtxIdentF
/* 229C58 801DEA68 27A400E0 */   addiu     $a0, $sp, 0xE0
/* 229C5C 801DEA6C 44808000 */  mtc1       $zero, $f16
/* 229C60 801DEA70 3C064049 */  lui        $a2, (0x40490FDB >> 16)
/* 229C64 801DEA74 34C60FDB */  ori        $a2, $a2, (0x40490FDB & 0xFFFF)
/* 229C68 801DEA78 44058000 */  mfc1       $a1, $f16
/* 229C6C 801DEA7C 44078000 */  mfc1       $a3, $f16
/* 229C70 801DEA80 0C006EEB */  jal        HS64_MkRotationMtxF
/* 229C74 801DEA84 27A400A0 */   addiu     $a0, $sp, 0xA0
/* 229C78 801DEA88 27A400E0 */  addiu      $a0, $sp, 0xE0
/* 229C7C 801DEA8C 00803025 */  or         $a2, $a0, $zero
/* 229C80 801DEA90 0C00D034 */  jal        guMtxCatF
glabel func_801DEA94_ovl16
/* 229C84 801DEA94 27A500A0 */   addiu     $a1, $sp, 0xA0
glabel func_801DEA98_ovl15
/* 229C88 801DEA98 3C05800F */  lui        $a1, %hi(D_800EA6E0)
/* 229C8C 801DEA9C 3C06800F */  lui        $a2, %hi(D_800EA8A0)
/* 229C90 801DEAA0 3C07800F */  lui        $a3, %hi(D_800EAA60)
/* 229C94 801DEAA4 8CE7AA60 */  lw         $a3, %lo(D_800EAA60)($a3)
/* 229C98 801DEAA8 8CC6A8A0 */  lw         $a2, %lo(D_800EA8A0)($a2)
/* 229C9C 801DEAAC 8CA5A6E0 */  lw         $a1, %lo(D_800EA6E0)($a1)
/* 229CA0 801DEAB0 0C006EEB */  jal        HS64_MkRotationMtxF
/* 229CA4 801DEAB4 27A400A0 */   addiu     $a0, $sp, 0xA0
/* 229CA8 801DEAB8 27A400E0 */  addiu      $a0, $sp, 0xE0
/* 229CAC 801DEABC 27A500A0 */  addiu      $a1, $sp, 0xA0
/* 229CB0 801DEAC0 0C00D034 */  jal        guMtxCatF
/* 229CB4 801DEAC4 27A60060 */   addiu     $a2, $sp, 0x60
/* 229CB8 801DEAC8 0C00C304 */  jal        guMtxIdentF
/* 229CBC 801DEACC 27A400E0 */   addiu     $a0, $sp, 0xE0
/* 229CC0 801DEAD0 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
.L801DEAD4_ovl14:
/* 229CC4 801DEAD4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 229CC8 801DEAD8 3C05800F */  lui        $a1, %hi(D_800EA6E0)
/* 229CCC 801DEADC 3C06800F */  lui        $a2, %hi(D_800EA8A0)
glabel func_801DEAE0_ovl16
/* 229CD0 801DEAE0 8DC20000 */  lw         $v0, 0x0($t6)
/* 229CD4 801DEAE4 3C07800F */  lui        $a3, %hi(D_800EAA60)
glabel func_801DEAE8_ovl11
/* 229CD8 801DEAE8 27A400A0 */  addiu      $a0, $sp, 0xA0
/* 229CDC 801DEAEC 00021080 */  sll        $v0, $v0, 2
.L801DEAF0_ovl14:
/* 229CE0 801DEAF0 00A22821 */  addu       $a1, $a1, $v0
glabel func_801DEAF4_ovl12
/* 229CE4 801DEAF4 00C23021 */  addu       $a2, $a2, $v0
/* 229CE8 801DEAF8 00E23821 */  addu       $a3, $a3, $v0
/* 229CEC 801DEAFC 8CE7AA60 */  lw         $a3, %lo(D_800EAA60)($a3)
/* 229CF0 801DEB00 8CC6A8A0 */  lw         $a2, %lo(D_800EA8A0)($a2)
.L801DEB04_ovl9:
/* 229CF4 801DEB04 0C006EEB */  jal        HS64_MkRotationMtxF
/* 229CF8 801DEB08 8CA5A6E0 */   lw        $a1, %lo(D_800EA6E0)($a1)
.L801DEB0C_ovl9:
/* 229CFC 801DEB0C 27A600E0 */  addiu      $a2, $sp, 0xE0
/* 229D00 801DEB10 00C02025 */  or         $a0, $a2, $zero
/* 229D04 801DEB14 0C00D034 */  jal        guMtxCatF
/* 229D08 801DEB18 27A500A0 */   addiu     $a1, $sp, 0xA0
glabel func_801DEB1C_ovl12
/* 229D0C 801DEB1C C7A40100 */  lwc1       $f4, 0x100($sp)
/* 229D10 801DEB20 C7A60104 */  lwc1       $f6, 0x104($sp)
/* 229D14 801DEB24 C7A80108 */  lwc1       $f8, 0x108($sp)
/* 229D18 801DEB28 E7A40054 */  swc1       $f4, 0x54($sp)
/* 229D1C 801DEB2C C7AA0080 */  lwc1       $f10, 0x80($sp)
.L801DEB30_ovl14:
/* 229D20 801DEB30 C7A40084 */  lwc1       $f4, 0x84($sp)
/* 229D24 801DEB34 44808000 */  mtc1       $zero, $f16
/* 229D28 801DEB38 E7A60058 */  swc1       $f6, 0x58($sp)
/* 229D2C 801DEB3C E7A8005C */  swc1       $f8, 0x5C($sp)
/* 229D30 801DEB40 E7AA003C */  swc1       $f10, 0x3C($sp)
.L801DEB44_ovl10:
/* 229D34 801DEB44 E7A40040 */  swc1       $f4, 0x40($sp)
/* 229D38 801DEB48 C7A60088 */  lwc1       $f6, 0x88($sp)
/* 229D3C 801DEB4C C7A800F0 */  lwc1       $f8, 0xF0($sp)
/* 229D40 801DEB50 C7AA00F4 */  lwc1       $f10, 0xF4($sp)
/* 229D44 801DEB54 C7A400F8 */  lwc1       $f4, 0xF8($sp)
/* 229D48 801DEB58 27A40054 */  addiu      $a0, $sp, 0x54
/* 229D4C 801DEB5C 27A5003C */  addiu      $a1, $sp, 0x3C
.L801DEB60_ovl14:
/* 229D50 801DEB60 E7B00038 */  swc1       $f16, 0x38($sp)
/* 229D54 801DEB64 E7B00034 */  swc1       $f16, 0x34($sp)
.L801DEB68_ovl11:
/* 229D58 801DEB68 E7B00030 */  swc1       $f16, 0x30($sp)
/* 229D5C 801DEB6C E7A60044 */  swc1       $f6, 0x44($sp)
/* 229D60 801DEB70 E7A80048 */  swc1       $f8, 0x48($sp)
.L801DEB74_ovl9:
/* 229D64 801DEB74 E7AA004C */  swc1       $f10, 0x4C($sp)
glabel func_801DEB78_ovl11
/* 229D68 801DEB78 0C0063EF */  jal        lbvector_Angle
/* 229D6C 801DEB7C E7A40050 */   swc1      $f4, 0x50($sp)
.L801DEB80_ovl13:
/* 229D70 801DEB80 3C01801E */  lui        $at, %hi(.L801E55FC_ovl17)
.L801DEB84_ovl9:
/* 229D74 801DEB84 C42655FC */  lwc1       $f6, %lo(.L801E55FC_ovl17)($at)
/* 229D78 801DEB88 44808000 */  mtc1       $zero, $f16
/* 229D7C 801DEB8C E7A00134 */  swc1       $f0, 0x134($sp)
/* 229D80 801DEB90 4600303C */  c.lt.s     $f6, $f0
glabel func_801DEB94_ovl10
/* 229D84 801DEB94 46008386 */  mov.s      $f14, $f16
.L801DEB98_ovl14:
/* 229D88 801DEB98 45000030 */  bc1f       .L801DEC5C_ovl17
/* 229D8C 801DEB9C 27A40054 */   addiu     $a0, $sp, 0x54
/* 229D90 801DEBA0 27A5003C */  addiu      $a1, $sp, 0x3C
/* 229D94 801DEBA4 27A60030 */  addiu      $a2, $sp, 0x30
.L801DEBA8_ovl14:
/* 229D98 801DEBA8 0C0065D0 */  jal        vec3_normalized_cross_product
/* 229D9C 801DEBAC E7AE0130 */   swc1      $f14, 0x130($sp)
/* 229DA0 801DEBB0 44809000 */  mtc1       $zero, $f18
/* 229DA4 801DEBB4 C7A80030 */  lwc1       $f8, 0x30($sp)
.L801DEBB8_ovl14:
/* 229DA8 801DEBB8 44808000 */  mtc1       $zero, $f16
.L801DEBBC_ovl13:
/* 229DAC 801DEBBC C7AE0130 */  lwc1       $f14, 0x130($sp)
/* 229DB0 801DEBC0 46124032 */  c.eq.s     $f8, $f18
glabel func_801DEBC4_ovl9
/* 229DB4 801DEBC4 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* 229DB8 801DEBC8 27A40048 */  addiu      $a0, $sp, 0x48
.L801DEBCC_ovl11:
/* 229DBC 801DEBCC 45000009 */  bc1f       func_801DEBF4_ovl17
/* 229DC0 801DEBD0 00000000 */   nop
/* 229DC4 801DEBD4 46125032 */  c.eq.s     $f10, $f18
/* 229DC8 801DEBD8 C7A40038 */  lwc1       $f4, 0x38($sp)
/* 229DCC 801DEBDC 45000005 */  bc1f       func_801DEBF4_ovl17
/* 229DD0 801DEBE0 00000000 */   nop
/* 229DD4 801DEBE4 46122032 */  c.eq.s     $f4, $f18
/* 229DD8 801DEBE8 00000000 */  nop
/* 229DDC 801DEBEC 45010010 */  bc1t       .L801DEC30_ovl17
/* 229DE0 801DEBF0 00000000 */   nop
glabel func_801DEBF4_ovl17
/* 229DE4 801DEBF4 0C0063EF */  jal        lbvector_Angle
/* 229DE8 801DEBF8 27A50030 */   addiu     $a1, $sp, 0x30
/* 229DEC 801DEBFC 3C01801E */  lui        $at, %hi(D_801E5600_ovl17)
/* 229DF0 801DEC00 C4265600 */  lwc1       $f6, %lo(D_801E5600_ovl17)($at)
/* 229DF4 801DEC04 44808000 */  mtc1       $zero, $f16
glabel func_801DEC08_ovl11
/* 229DF8 801DEC08 44809000 */  mtc1       $zero, $f18
/* 229DFC 801DEC0C 4606003C */  c.lt.s     $f0, $f6
/* 229E00 801DEC10 3C01801E */  lui        $at, %hi(.L801E5700_ovl17)
/* 229E04 801DEC14 45000004 */  bc1f       .L801DEC28_ovl17
/* 229E08 801DEC18 00000000 */   nop
.L801DEC1C_ovl14:
/* 229E0C 801DEC1C 3C01801E */  lui        $at, %hi(.L801E5700_ovl17)
.L801DEC20_ovl14:
/* 229E10 801DEC20 10000003 */  b          .L801DEC30_ovl17
/* 229E14 801DEC24 C42E5700 */   lwc1      $f14, %lo(.L801E5700_ovl17)($at)
.L801DEC28_ovl17:
/* 229E18 801DEC28 C42E5700 */  lwc1       $f14, %lo(.L801E5700_ovl17)($at)
/* 229E1C 801DEC2C 46007387 */  neg.s      $f14, $f14
.L801DEC30_ovl17:
/* 229E20 801DEC30 3C048005 */  lui        $a0, %hi(D_8004A7C4)
glabel func_801DEC34_ovl14
/* 229E24 801DEC34 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 229E28 801DEC38 3C08800F */  lui        $t0, %hi(D_800EAC20)
/* 229E2C 801DEC3C 2508AC20 */  addiu      $t0, $t0, %lo(D_800EAC20)
/* 229E30 801DEC40 8C980000 */  lw         $t8, 0x0($a0)
/* 229E34 801DEC44 3C01801E */  lui        $at, %hi(.L801E5704_ovl17)
/* 229E38 801DEC48 C4225704 */  lwc1       $f2, %lo(.L801E5704_ovl17)($at)
/* 229E3C 801DEC4C 0018C880 */  sll        $t9, $t8, 2
/* 229E40 801DEC50 03281821 */  addu       $v1, $t9, $t0
/* 229E44 801DEC54 1000001E */  b          .L801DECD0_ovl17
/* 229E48 801DEC58 C46C0000 */   lwc1      $f12, 0x0($v1)
.L801DEC5C_ovl17:
/* 229E4C 801DEC5C 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 229E50 801DEC60 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 229E54 801DEC64 3C0B800F */  lui        $t3, %hi(D_800EAC20)
.L801DEC68_ovl11:
/* 229E58 801DEC68 256BAC20 */  addiu      $t3, $t3, %lo(D_800EAC20)
/* 229E5C 801DEC6C 8C890000 */  lw         $t1, 0x0($a0)
/* 229E60 801DEC70 44809000 */  mtc1       $zero, $f18
/* 229E64 801DEC74 3C01801E */  lui        $at, %hi(.L801E5704_ovl17)
/* 229E68 801DEC78 00095080 */  sll        $t2, $t1, 2
/* 229E6C 801DEC7C 014B1821 */  addu       $v1, $t2, $t3
.L801DEC80_ovl13:
/* 229E70 801DEC80 C46C0000 */  lwc1       $f12, 0x0($v1)
/* 229E74 801DEC84 4612603C */  c.lt.s     $f12, $f18
.L801DEC88_ovl16:
/* 229E78 801DEC88 00000000 */  nop
/* 229E7C 801DEC8C 45020004 */  bc1fl      .L801DECA0_ovl17
/* 229E80 801DEC90 46006006 */   mov.s     $f0, $f12
/* 229E84 801DEC94 10000002 */  b          .L801DECA0_ovl17
.L801DEC98_ovl14:
/* 229E88 801DEC98 46006007 */   neg.s     $f0, $f12
.L801DEC9C_ovl14:
/* 229E8C 801DEC9C 46006006 */  mov.s      $f0, $f12
.L801DECA0_ovl17:
/* 229E90 801DECA0 C4225704 */  lwc1       $f2, %lo(.L801E5704_ovl17)($at)
/* 229E94 801DECA4 4602003C */  c.lt.s     $f0, $f2
.L801DECA8_ovl13:
/* 229E98 801DECA8 00000000 */  nop
glabel func_801DECAC_ovl14
/* 229E9C 801DECAC 45020009 */  bc1fl      func_801DECD4_ovl17
/* 229EA0 801DECB0 460C803C */   c.lt.s    $f16, $f12
/* 229EA4 801DECB4 E4700000 */  swc1       $f16, 0x0($v1)
.L801DECB8_ovl16:
/* 229EA8 801DECB8 8C8C0000 */  lw         $t4, 0x0($a0)
/* 229EAC 801DECBC 3C0E800F */  lui        $t6, %hi(D_800EAC20)
/* 229EB0 801DECC0 25CEAC20 */  addiu      $t6, $t6, %lo(D_800EAC20)
.L801DECC4_ovl10:
/* 229EB4 801DECC4 000C6880 */  sll        $t5, $t4, 2
/* 229EB8 801DECC8 01AE1821 */  addu       $v1, $t5, $t6
/* 229EBC 801DECCC C46C0000 */  lwc1       $f12, 0x0($v1)
.L801DECD0_ovl17:
/* 229EC0 801DECD0 460C803C */  c.lt.s     $f16, $f12
glabel func_801DECD4_ovl17
/* 229EC4 801DECD4 00000000 */  nop
/* 229EC8 801DECD8 45020006 */  bc1fl      func_801DECF4_ovl17
/* 229ECC 801DECDC 4610603C */   c.lt.s    $f12, $f16
/* 229ED0 801DECE0 4610703C */  c.lt.s     $f14, $f16
.L801DECE4_ovl16:
/* 229ED4 801DECE4 00000000 */  nop
/* 229ED8 801DECE8 45010008 */  bc1t       .L801DED0C_ovl17
/* 229EDC 801DECEC 00000000 */   nop
.L801DECF0_ovl11:
/* 229EE0 801DECF0 4610603C */  c.lt.s     $f12, $f16
glabel func_801DECF4_ovl17
/* 229EE4 801DECF4 00000000 */  nop
.L801DECF8_ovl10:
/* 229EE8 801DECF8 45020009 */  bc1fl      .L801DED20_ovl17
/* 229EEC 801DECFC 460E6280 */   add.s     $f10, $f12, $f14
/* 229EF0 801DED00 460E803C */  c.lt.s     $f16, $f14
/* 229EF4 801DED04 00000000 */  nop
/* 229EF8 801DED08 45000004 */  bc1f       .L801DED1C_ovl17
.L801DED0C_ovl17:
/* 229EFC 801DED0C 3C01801E */   lui       $at, %hi(.L801E5604_ovl17)
.L801DED10_ovl14:
/* 229F00 801DED10 C4285604 */  lwc1       $f8, %lo(.L801E5604_ovl17)($at)
.L801DED14_ovl14:
/* 229F04 801DED14 46087382 */  mul.s      $f14, $f14, $f8
/* 229F08 801DED18 00000000 */  nop
.L801DED1C_ovl17:
/* 229F0C 801DED1C 460E6280 */  add.s      $f10, $f12, $f14
.L801DED20_ovl17:
/* 229F10 801DED20 3C19800F */  lui        $t9, %hi(D_800EAC20)
glabel func_801DED24_ovl14
/* 229F14 801DED24 2739AC20 */  addiu      $t9, $t9, %lo(D_800EAC20)
/* 229F18 801DED28 E46A0000 */  swc1       $f10, 0x0($v1)
.L801DED2C_ovl11:
/* 229F1C 801DED2C 8C8F0000 */  lw         $t7, 0x0($a0)
.L801DED30_ovl12:
/* 229F20 801DED30 C7A40134 */  lwc1       $f4, 0x134($sp)
/* 229F24 801DED34 000FC080 */  sll        $t8, $t7, 2
glabel func_801DED38_ovl12
/* 229F28 801DED38 03191821 */  addu       $v1, $t8, $t9
/* 229F2C 801DED3C C46C0000 */  lwc1       $f12, 0x0($v1)
glabel func_801DED40_ovl16
/* 229F30 801DED40 4612603C */  c.lt.s     $f12, $f18
.L801DED44_ovl14:
/* 229F34 801DED44 00000000 */  nop
/* 229F38 801DED48 45020004 */  bc1fl      .L801DED5C_ovl17
/* 229F3C 801DED4C 46006006 */   mov.s     $f0, $f12
/* 229F40 801DED50 10000002 */  b          .L801DED5C_ovl17
/* 229F44 801DED54 46006007 */   neg.s     $f0, $f12
/* 229F48 801DED58 46006006 */  mov.s      $f0, $f12
.L801DED5C_ovl17:
/* 229F4C 801DED5C 46002181 */  sub.s      $f6, $f4, $f0
/* 229F50 801DED60 4606103C */  c.lt.s     $f2, $f6
/* 229F54 801DED64 00000000 */  nop
/* 229F58 801DED68 45000003 */  bc1f       .L801DED78_ovl17
.L801DED6C_ovl13:
/* 229F5C 801DED6C 00000000 */   nop
/* 229F60 801DED70 10000015 */  b          .L801DEDC8_ovl17
/* 229F64 801DED74 46001006 */   mov.s     $f0, $f2
.L801DED78_ovl17:
/* 229F68 801DED78 3C02800D */  lui        $v0, %hi(gKirbyController)
/* 229F6C 801DED7C 94426FE8 */  lhu        $v0, %lo(gKirbyController)($v0)
/* 229F70 801DED80 3C01800D */  lui        $at, %hi(D_800D7158 + 0x18)
/* 229F74 801DED84 30480C00 */  andi       $t0, $v0, 0xC00
.L801DED88_ovl11:
/* 229F78 801DED88 11000009 */  beqz       $t0, .L801DEDB0_ovl17
/* 229F7C 801DED8C 30490300 */   andi      $t1, $v0, 0x300
/* 229F80 801DED90 11200007 */  beqz       $t1, .L801DEDB0_ovl17
.L801DED94_ovl12:
/* 229F84 801DED94 00000000 */   nop
.L801DED98_ovl10:
/* 229F88 801DED98 3C01800D */  lui        $at, %hi(D_800D7158 + 0x18)
glabel func_801DED9C_ovl12
/* 229F8C 801DED9C C4287170 */  lwc1       $f8, %lo(D_800D7158 + 0x18)($at)
/* 229F90 801DEDA0 3C01801E */  lui        $at, %hi(D_801E5608_ovl17)
/* 229F94 801DEDA4 C42A5608 */  lwc1       $f10, %lo(D_801E5608_ovl17)($at)
/* 229F98 801DEDA8 10000002 */  b          .L801DEDB4_ovl17
/* 229F9C 801DEDAC 460A4003 */   div.s     $f0, $f8, $f10
.L801DEDB0_ovl17:
/* 229FA0 801DEDB0 C4207170 */  lwc1       $f0, %lo(D_800D7158 + 0x18)($at)
.L801DEDB4_ovl17:
/* 229FA4 801DEDB4 4600103C */  c.lt.s     $f2, $f0
.L801DEDB8_ovl14:
/* 229FA8 801DEDB8 00000000 */  nop
/* 229FAC 801DEDBC 45020003 */  bc1fl      .L801DEDCC_ovl17
/* 229FB0 801DEDC0 460C003C */   c.lt.s    $f0, $f12
/* 229FB4 801DEDC4 46001006 */  mov.s      $f0, $f2
.L801DEDC8_ovl17:
/* 229FB8 801DEDC8 460C003C */  c.lt.s     $f0, $f12
.L801DEDCC_ovl17:
/* 229FBC 801DEDCC 3C01801E */  lui        $at, %hi(D_801E560C_ovl17)
/* 229FC0 801DEDD0 4502000A */  bc1fl      .L801DEDFC_ovl17
.L801DEDD4_ovl14:
/* 229FC4 801DEDD4 46000087 */   neg.s     $f2, $f0
.L801DEDD8_ovl14:
/* 229FC8 801DEDD8 E4600000 */  swc1       $f0, 0x0($v1)
/* 229FCC 801DEDDC 8C8A0000 */  lw         $t2, 0x0($a0)
/* 229FD0 801DEDE0 3C0C800F */  lui        $t4, %hi(D_800EAC20)
/* 229FD4 801DEDE4 258CAC20 */  addiu      $t4, $t4, %lo(D_800EAC20)
glabel func_801DEDE8_ovl16
/* 229FD8 801DEDE8 000A5880 */  sll        $t3, $t2, 2
/* 229FDC 801DEDEC 016C1821 */  addu       $v1, $t3, $t4
/* 229FE0 801DEDF0 1000000D */  b          .L801DEE28_ovl17
/* 229FE4 801DEDF4 C46C0000 */   lwc1      $f12, 0x0($v1)
/* 229FE8 801DEDF8 46000087 */  neg.s      $f2, $f0
.L801DEDFC_ovl17:
/* 229FEC 801DEDFC 4602603C */  c.lt.s     $f12, $f2
/* 229FF0 801DEE00 00000000 */  nop
/* 229FF4 801DEE04 45000008 */  bc1f       .L801DEE28_ovl17
.L801DEE08_ovl12:
/* 229FF8 801DEE08 00000000 */   nop
/* 229FFC 801DEE0C E4620000 */  swc1       $f2, 0x0($v1)
/* 22A000 801DEE10 8C8D0000 */  lw         $t5, 0x0($a0)
/* 22A004 801DEE14 3C0F800F */  lui        $t7, %hi(D_800EAC20)
/* 22A008 801DEE18 25EFAC20 */  addiu      $t7, $t7, %lo(D_800EAC20)
.L801DEE1C_ovl14:
/* 22A00C 801DEE1C 000D7080 */  sll        $t6, $t5, 2
.L801DEE20_ovl16:
/* 22A010 801DEE20 01CF1821 */  addu       $v1, $t6, $t7
.L801DEE24_ovl15:
/* 22A014 801DEE24 C46C0000 */  lwc1       $f12, 0x0($v1)
.L801DEE28_ovl17:
/* 22A018 801DEE28 C424560C */  lwc1       $f4, %lo(D_801E560C_ovl17)($at)
/* 22A01C 801DEE2C 460C203C */  c.lt.s     $f4, $f12
/* 22A020 801DEE30 00000000 */  nop
/* 22A024 801DEE34 45010006 */  bc1t       func_801DEE50_ovl17
.L801DEE38_ovl12:
/* 22A028 801DEE38 3C01801E */   lui       $at, %hi(D_801E5610_ovl17)
.L801DEE3C_ovl14:
/* 22A02C 801DEE3C C4265610 */  lwc1       $f6, %lo(D_801E5610_ovl17)($at)
.L801DEE40_ovl10:
/* 22A030 801DEE40 4606603C */  c.lt.s     $f12, $f6
/* 22A034 801DEE44 00000000 */  nop
.L801DEE48_ovl16:
/* 22A038 801DEE48 4502000F */  bc1fl      .L801DEE88_ovl17
.L801DEE4C_ovl15:
/* 22A03C 801DEE4C 46109032 */   c.eq.s    $f18, $f16
glabel func_801DEE50_ovl17
/* 22A040 801DEE50 44066000 */  mfc1       $a2, $f12
/* 22A044 801DEE54 27A40054 */  addiu      $a0, $sp, 0x54
.L801DEE58_ovl10:
/* 22A048 801DEE58 27A50048 */  addiu      $a1, $sp, 0x48
.L801DEE5C_ovl10:
/* 22A04C 801DEE5C 0C00647E */  jal        func_800191F8
/* 22A050 801DEE60 E7AE0130 */   swc1      $f14, 0x130($sp)
.L801DEE64_ovl12:
/* 22A054 801DEE64 C7A80054 */  lwc1       $f8, 0x54($sp)
.L801DEE68_ovl16:
/* 22A058 801DEE68 C7AA0058 */  lwc1       $f10, 0x58($sp)
.L801DEE6C_ovl9:
/* 22A05C 801DEE6C C7A4005C */  lwc1       $f4, 0x5C($sp)
.L801DEE70_ovl16:
/* 22A060 801DEE70 C7AE0130 */  lwc1       $f14, 0x130($sp)
/* 22A064 801DEE74 E7A80100 */  swc1       $f8, 0x100($sp)
/* 22A068 801DEE78 E7AA0104 */  swc1       $f10, 0x104($sp)
/* 22A06C 801DEE7C 10000006 */  b          .L801DEE98_ovl17
/* 22A070 801DEE80 E7A40108 */   swc1      $f4, 0x108($sp)
.L801DEE84_ovl12:
/* 22A074 801DEE84 46109032 */  c.eq.s     $f18, $f16
.L801DEE88_ovl17:
/* 22A078 801DEE88 46008386 */  mov.s      $f14, $f16
/* 22A07C 801DEE8C 45030003 */  bc1tl      .L801DEE9C_ovl17
/* 22A080 801DEE90 C7A600F0 */   lwc1      $f6, 0xF0($sp)
/* 22A084 801DEE94 E4700000 */  swc1       $f16, 0x0($v1)
.L801DEE98_ovl17:
/* 22A088 801DEE98 C7A600F0 */  lwc1       $f6, 0xF0($sp)
.L801DEE9C_ovl17:
/* 22A08C 801DEE9C C7A800F4 */  lwc1       $f8, 0xF4($sp)
.L801DEEA0_ovl12:
/* 22A090 801DEEA0 C7AA00F8 */  lwc1       $f10, 0xF8($sp)
.L801DEEA4_ovl9:
/* 22A094 801DEEA4 E7A60054 */  swc1       $f6, 0x54($sp)
/* 22A098 801DEEA8 E7A80058 */  swc1       $f8, 0x58($sp)
/* 22A09C 801DEEAC C7A40100 */  lwc1       $f4, 0x100($sp)
.L801DEEB0_ovl12:
/* 22A0A0 801DEEB0 C7A60104 */  lwc1       $f6, 0x104($sp)
/* 22A0A4 801DEEB4 C7A80108 */  lwc1       $f8, 0x108($sp)
/* 22A0A8 801DEEB8 27A40054 */  addiu      $a0, $sp, 0x54
/* 22A0AC 801DEEBC 27A5003C */  addiu      $a1, $sp, 0x3C
/* 22A0B0 801DEEC0 27A60030 */  addiu      $a2, $sp, 0x30
/* 22A0B4 801DEEC4 E7AE0130 */  swc1       $f14, 0x130($sp)
/* 22A0B8 801DEEC8 E7AA005C */  swc1       $f10, 0x5C($sp)
.L801DEECC_ovl12:
/* 22A0BC 801DEECC E7A4003C */  swc1       $f4, 0x3C($sp)
glabel func_801DEED0_ovl15
/* 22A0C0 801DEED0 E7A60040 */  swc1       $f6, 0x40($sp)
/* 22A0C4 801DEED4 0C0065D0 */  jal        vec3_normalized_cross_product
.L801DEED8_ovl9:
/* 22A0C8 801DEED8 E7A80044 */   swc1      $f8, 0x44($sp)
/* 22A0CC 801DEEDC C7AA0100 */  lwc1       $f10, 0x100($sp)
.L801DEEE0_ovl12:
/* 22A0D0 801DEEE0 C7A40104 */  lwc1       $f4, 0x104($sp)
/* 22A0D4 801DEEE4 44808000 */  mtc1       $zero, $f16
.L801DEEE8_ovl15:
/* 22A0D8 801DEEE8 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 22A0DC 801DEEEC C7AC0034 */  lwc1       $f12, 0x34($sp)
/* 22A0E0 801DEEF0 C7A20038 */  lwc1       $f2, 0x38($sp)
/* 22A0E4 801DEEF4 E7AA0054 */  swc1       $f10, 0x54($sp)
/* 22A0E8 801DEEF8 E7A40058 */  swc1       $f4, 0x58($sp)
.L801DEEFC_ovl12:
/* 22A0EC 801DEEFC C7A60108 */  lwc1       $f6, 0x108($sp)
/* 22A0F0 801DEF00 C7A80080 */  lwc1       $f8, 0x80($sp)
/* 22A0F4 801DEF04 C7AA0084 */  lwc1       $f10, 0x84($sp)
/* 22A0F8 801DEF08 C7A40088 */  lwc1       $f4, 0x88($sp)
.L801DEF0C_ovl12:
/* 22A0FC 801DEF0C 27A40054 */  addiu      $a0, $sp, 0x54
/* 22A100 801DEF10 27A5003C */  addiu      $a1, $sp, 0x3C
/* 22A104 801DEF14 E7B00038 */  swc1       $f16, 0x38($sp)
.L801DEF18_ovl10:
/* 22A108 801DEF18 E7B00034 */  swc1       $f16, 0x34($sp)
/* 22A10C 801DEF1C E7B00030 */  swc1       $f16, 0x30($sp)
/* 22A110 801DEF20 E7A00048 */  swc1       $f0, 0x48($sp)
/* 22A114 801DEF24 E7A000E0 */  swc1       $f0, 0xE0($sp)
.L801DEF28_ovl12:
/* 22A118 801DEF28 E7AC004C */  swc1       $f12, 0x4C($sp)
/* 22A11C 801DEF2C E7AC00E4 */  swc1       $f12, 0xE4($sp)
/* 22A120 801DEF30 E7A20050 */  swc1       $f2, 0x50($sp)
/* 22A124 801DEF34 E7A200E8 */  swc1       $f2, 0xE8($sp)
/* 22A128 801DEF38 E7A6005C */  swc1       $f6, 0x5C($sp)
.L801DEF3C_ovl16:
/* 22A12C 801DEF3C E7A8003C */  swc1       $f8, 0x3C($sp)
.L801DEF40_ovl11:
/* 22A130 801DEF40 E7AA0040 */  swc1       $f10, 0x40($sp)
/* 22A134 801DEF44 0C0063EF */  jal        lbvector_Angle
.L801DEF48_ovl9:
/* 22A138 801DEF48 E7A40044 */   swc1      $f4, 0x44($sp)
.L801DEF4C_ovl16:
/* 22A13C 801DEF4C 3C01801E */  lui        $at, %hi(.L801E5614_ovl17)
/* 22A140 801DEF50 C4265614 */  lwc1       $f6, %lo(.L801E5614_ovl17)($at)
.L801DEF54_ovl11:
/* 22A144 801DEF54 44808000 */  mtc1       $zero, $f16
.L801DEF58_ovl12:
/* 22A148 801DEF58 44809000 */  mtc1       $zero, $f18
/* 22A14C 801DEF5C 4600303C */  c.lt.s     $f6, $f0
/* 22A150 801DEF60 C7AE0130 */  lwc1       $f14, 0x130($sp)
/* 22A154 801DEF64 E7A00134 */  swc1       $f0, 0x134($sp)
.L801DEF68_ovl12:
/* 22A158 801DEF68 4500002A */  bc1f       .L801DF014_ovl17
/* 22A15C 801DEF6C 27A40054 */   addiu     $a0, $sp, 0x54
/* 22A160 801DEF70 27A5003C */  addiu      $a1, $sp, 0x3C
.L801DEF74_ovl9:
/* 22A164 801DEF74 27A60030 */  addiu      $a2, $sp, 0x30
/* 22A168 801DEF78 0C0065D0 */  jal        vec3_normalized_cross_product
.L801DEF7C_ovl13:
/* 22A16C 801DEF7C E7AE0130 */   swc1      $f14, 0x130($sp)
.L801DEF80_ovl12:
/* 22A170 801DEF80 44809000 */  mtc1       $zero, $f18
/* 22A174 801DEF84 C7A80030 */  lwc1       $f8, 0x30($sp)
glabel func_801DEF88_ovl12
/* 22A178 801DEF88 44808000 */  mtc1       $zero, $f16
.L801DEF8C_ovl11:
/* 22A17C 801DEF8C C7AE0130 */  lwc1       $f14, 0x130($sp)
/* 22A180 801DEF90 46124032 */  c.eq.s     $f8, $f18
.L801DEF94_ovl16:
/* 22A184 801DEF94 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* 22A188 801DEF98 27A40048 */  addiu      $a0, $sp, 0x48
glabel func_801DEF9C_ovl11
/* 22A18C 801DEF9C 45000009 */  bc1f       .L801DEFC4_ovl17
/* 22A190 801DEFA0 00000000 */   nop
/* 22A194 801DEFA4 46125032 */  c.eq.s     $f10, $f18
/* 22A198 801DEFA8 C7A40038 */  lwc1       $f4, 0x38($sp)
/* 22A19C 801DEFAC 45000005 */  bc1f       .L801DEFC4_ovl17
glabel func_801DEFB0_ovl15
/* 22A1A0 801DEFB0 00000000 */   nop
/* 22A1A4 801DEFB4 46122032 */  c.eq.s     $f4, $f18
.L801DEFB8_ovl16:
/* 22A1A8 801DEFB8 00000000 */  nop
.L801DEFBC_ovl14:
/* 22A1AC 801DEFBC 45010010 */  bc1t       .L801DF000_ovl17
/* 22A1B0 801DEFC0 00000000 */   nop
.L801DEFC4_ovl17:
/* 22A1B4 801DEFC4 0C0063EF */  jal        lbvector_Angle
/* 22A1B8 801DEFC8 27A50030 */   addiu     $a1, $sp, 0x30
/* 22A1BC 801DEFCC 3C01801E */  lui        $at, %hi(func_801E5618_ovl17)
/* 22A1C0 801DEFD0 C4265618 */  lwc1       $f6, %lo(func_801E5618_ovl17)($at)
/* 22A1C4 801DEFD4 44808000 */  mtc1       $zero, $f16
/* 22A1C8 801DEFD8 44809000 */  mtc1       $zero, $f18
.L801DEFDC_ovl9:
/* 22A1CC 801DEFDC 4606003C */  c.lt.s     $f0, $f6
/* 22A1D0 801DEFE0 3C01801E */  lui        $at, %hi(.L801E5700_ovl17)
glabel func_801DEFE4_ovl11
/* 22A1D4 801DEFE4 45000004 */  bc1f       .L801DEFF8_ovl17
.L801DEFE8_ovl12:
/* 22A1D8 801DEFE8 00000000 */   nop
/* 22A1DC 801DEFEC 3C01801E */  lui        $at, %hi(.L801E5700_ovl17)
/* 22A1E0 801DEFF0 10000003 */  b          .L801DF000_ovl17
.L801DEFF4_ovl9:
/* 22A1E4 801DEFF4 C42E5700 */   lwc1      $f14, %lo(.L801E5700_ovl17)($at)
.L801DEFF8_ovl17:
/* 22A1E8 801DEFF8 C42E5700 */  lwc1       $f14, %lo(.L801E5700_ovl17)($at)
/* 22A1EC 801DEFFC 46007387 */  neg.s      $f14, $f14
.L801DF000_ovl17:
/* 22A1F0 801DF000 3C048005 */  lui        $a0, %hi(D_8004A7C4)
.L801DF004_ovl14:
/* 22A1F4 801DF004 3C02800F */  lui        $v0, %hi(D_800EADE0)
.L801DF008_ovl16:
/* 22A1F8 801DF008 2442ADE0 */  addiu      $v0, $v0, %lo(D_800EADE0)
.L801DF00C_ovl13:
/* 22A1FC 801DF00C 1000000A */  b          .L801DF038_ovl17
/* 22A200 801DF010 8C84A7C4 */   lw        $a0, %lo(D_8004A7C4)($a0)
.L801DF014_ovl17:
/* 22A204 801DF014 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 22A208 801DF018 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
glabel func_801DF01C_ovl14
/* 22A20C 801DF01C 3C02800F */  lui        $v0, %hi(D_800EADE0)
/* 22A210 801DF020 2442ADE0 */  addiu      $v0, $v0, %lo(D_800EADE0)
.L801DF024_ovl13:
/* 22A214 801DF024 8C980000 */  lw         $t8, 0x0($a0)
/* 22A218 801DF028 46008386 */  mov.s      $f14, $f16
/* 22A21C 801DF02C 0018C880 */  sll        $t9, $t8, 2
/* 22A220 801DF030 00594021 */  addu       $t0, $v0, $t9
/* 22A224 801DF034 E5100000 */  swc1       $f16, 0x0($t0)
.L801DF038_ovl17:
/* 22A228 801DF038 8C890000 */  lw         $t1, 0x0($a0)
/* 22A22C 801DF03C 00095080 */  sll        $t2, $t1, 2
/* 22A230 801DF040 004A1821 */  addu       $v1, $v0, $t2
.L801DF044_ovl13:
/* 22A234 801DF044 C46C0000 */  lwc1       $f12, 0x0($v1)
/* 22A238 801DF048 460C803C */  c.lt.s     $f16, $f12
/* 22A23C 801DF04C 00000000 */  nop
/* 22A240 801DF050 45020006 */  bc1fl      .L801DF06C_ovl17
.L801DF054_ovl14:
/* 22A244 801DF054 4610603C */   c.lt.s    $f12, $f16
/* 22A248 801DF058 4610703C */  c.lt.s     $f14, $f16
.L801DF05C_ovl12:
/* 22A24C 801DF05C 00000000 */  nop
/* 22A250 801DF060 45010008 */  bc1t       .L801DF084_ovl17
glabel func_801DF064_ovl15
/* 22A254 801DF064 00000000 */   nop
/* 22A258 801DF068 4610603C */  c.lt.s     $f12, $f16
.L801DF06C_ovl17:
/* 22A25C 801DF06C 00000000 */  nop
/* 22A260 801DF070 45020009 */  bc1fl      .L801DF098_ovl17
.L801DF074_ovl14:
/* 22A264 801DF074 460E6280 */   add.s     $f10, $f12, $f14
/* 22A268 801DF078 460E803C */  c.lt.s     $f16, $f14
/* 22A26C 801DF07C 00000000 */  nop
/* 22A270 801DF080 45000004 */  bc1f       .L801DF094_ovl17
.L801DF084_ovl17:
/* 22A274 801DF084 3C01801E */   lui       $at, %hi(.L801E561C_ovl17)
/* 22A278 801DF088 C428561C */  lwc1       $f8, %lo(.L801E561C_ovl17)($at)
/* 22A27C 801DF08C 46087382 */  mul.s      $f14, $f14, $f8
/* 22A280 801DF090 00000000 */  nop
.L801DF094_ovl17:
/* 22A284 801DF094 460E6280 */  add.s      $f10, $f12, $f14
.L801DF098_ovl17:
/* 22A288 801DF098 E46A0000 */  swc1       $f10, 0x0($v1)
/* 22A28C 801DF09C 8C8B0000 */  lw         $t3, 0x0($a0)
/* 22A290 801DF0A0 C7A40134 */  lwc1       $f4, 0x134($sp)
/* 22A294 801DF0A4 000B6080 */  sll        $t4, $t3, 2
/* 22A298 801DF0A8 004C1821 */  addu       $v1, $v0, $t4
/* 22A29C 801DF0AC C46C0000 */  lwc1       $f12, 0x0($v1)
.L801DF0B0_ovl12:
/* 22A2A0 801DF0B0 4612603C */  c.lt.s     $f12, $f18
glabel func_801DF0B4_ovl11
/* 22A2A4 801DF0B4 00000000 */  nop
/* 22A2A8 801DF0B8 45020004 */  bc1fl      .L801DF0CC_ovl17
/* 22A2AC 801DF0BC 46006006 */   mov.s     $f0, $f12
/* 22A2B0 801DF0C0 10000002 */  b          .L801DF0CC_ovl17
/* 22A2B4 801DF0C4 46006007 */   neg.s     $f0, $f12
/* 22A2B8 801DF0C8 46006006 */  mov.s      $f0, $f12
.L801DF0CC_ovl17:
/* 22A2BC 801DF0CC 46002181 */  sub.s      $f6, $f4, $f0
.L801DF0D0_ovl12:
/* 22A2C0 801DF0D0 3C01801E */  lui        $at, %hi(.L801E5704_ovl17)
/* 22A2C4 801DF0D4 C4225704 */  lwc1       $f2, %lo(.L801E5704_ovl17)($at)
glabel func_801DF0D8_ovl12
/* 22A2C8 801DF0D8 4606103C */  c.lt.s     $f2, $f6
/* 22A2CC 801DF0DC 00000000 */  nop
/* 22A2D0 801DF0E0 45000003 */  bc1f       .L801DF0F0_ovl17
/* 22A2D4 801DF0E4 00000000 */   nop
/* 22A2D8 801DF0E8 10000015 */  b          .L801DF140_ovl17
/* 22A2DC 801DF0EC 46001006 */   mov.s     $f0, $f2
.L801DF0F0_ovl17:
/* 22A2E0 801DF0F0 3C02800D */  lui        $v0, %hi(gKirbyController)
/* 22A2E4 801DF0F4 94426FE8 */  lhu        $v0, %lo(gKirbyController)($v0)
/* 22A2E8 801DF0F8 3C01800D */  lui        $at, %hi(D_800D7158 + 0x18)
/* 22A2EC 801DF0FC 304D0C00 */  andi       $t5, $v0, 0xC00
/* 22A2F0 801DF100 11A00009 */  beqz       $t5, .L801DF128_ovl17
/* 22A2F4 801DF104 304E0300 */   andi      $t6, $v0, 0x300
/* 22A2F8 801DF108 11C00007 */  beqz       $t6, .L801DF128_ovl17
/* 22A2FC 801DF10C 00000000 */   nop
.L801DF110_ovl16:
/* 22A300 801DF110 3C01800D */  lui        $at, %hi(D_800D7158 + 0x18)
/* 22A304 801DF114 C4287170 */  lwc1       $f8, %lo(D_800D7158 + 0x18)($at)
/* 22A308 801DF118 3C01801E */  lui        $at, %hi(D_801E5620_ovl17)
/* 22A30C 801DF11C C42A5620 */  lwc1       $f10, %lo(D_801E5620_ovl17)($at)
/* 22A310 801DF120 10000002 */  b          .L801DF12C_ovl17
.L801DF124_ovl15:
/* 22A314 801DF124 460A4003 */   div.s     $f0, $f8, $f10
.L801DF128_ovl17:
/* 22A318 801DF128 C4207170 */  lwc1       $f0, %lo(D_800D7158 + 0x18)($at)
.L801DF12C_ovl17:
/* 22A31C 801DF12C 4600103C */  c.lt.s     $f2, $f0
/* 22A320 801DF130 00000000 */  nop
.L801DF134_ovl12:
/* 22A324 801DF134 45020003 */  bc1fl      .L801DF144_ovl17
/* 22A328 801DF138 460C003C */   c.lt.s    $f0, $f12
/* 22A32C 801DF13C 46001006 */  mov.s      $f0, $f2
.L801DF140_ovl17:
/* 22A330 801DF140 460C003C */  c.lt.s     $f0, $f12
.L801DF144_ovl17:
/* 22A334 801DF144 3C01801E */  lui        $at, %hi(.L801E5624_ovl17)
glabel func_801DF148_ovl15
/* 22A338 801DF148 4502000A */  bc1fl      .L801DF174_ovl17
/* 22A33C 801DF14C 46000087 */   neg.s     $f2, $f0
/* 22A340 801DF150 E4600000 */  swc1       $f0, 0x0($v1)
glabel func_801DF154_ovl9
/* 22A344 801DF154 8C8F0000 */  lw         $t7, 0x0($a0)
/* 22A348 801DF158 3C19800F */  lui        $t9, %hi(D_800EADE0)
/* 22A34C 801DF15C 2739ADE0 */  addiu      $t9, $t9, %lo(D_800EADE0)
/* 22A350 801DF160 000FC080 */  sll        $t8, $t7, 2
/* 22A354 801DF164 03191821 */  addu       $v1, $t8, $t9
/* 22A358 801DF168 1000000D */  b          .L801DF1A0_ovl17
.L801DF16C_ovl11:
/* 22A35C 801DF16C C46C0000 */   lwc1      $f12, 0x0($v1)
/* 22A360 801DF170 46000087 */  neg.s      $f2, $f0
.L801DF174_ovl17:
/* 22A364 801DF174 4602603C */  c.lt.s     $f12, $f2
/* 22A368 801DF178 00000000 */  nop
.L801DF17C_ovl16:
/* 22A36C 801DF17C 45000008 */  bc1f       .L801DF1A0_ovl17
.L801DF180_ovl12:
/* 22A370 801DF180 00000000 */   nop
/* 22A374 801DF184 E4620000 */  swc1       $f2, 0x0($v1)
/* 22A378 801DF188 8C880000 */  lw         $t0, 0x0($a0)
glabel func_801DF18C_ovl12
/* 22A37C 801DF18C 3C0A800F */  lui        $t2, %hi(D_800EADE0)
/* 22A380 801DF190 254AADE0 */  addiu      $t2, $t2, %lo(D_800EADE0)
/* 22A384 801DF194 00084880 */  sll        $t1, $t0, 2
glabel func_801DF198_ovl11
/* 22A388 801DF198 012A1821 */  addu       $v1, $t1, $t2
/* 22A38C 801DF19C C46C0000 */  lwc1       $f12, 0x0($v1)
.L801DF1A0_ovl17:
/* 22A390 801DF1A0 C4245624 */  lwc1       $f4, %lo(.L801E5624_ovl17)($at)
/* 22A394 801DF1A4 460C203C */  c.lt.s     $f4, $f12
/* 22A398 801DF1A8 00000000 */  nop
/* 22A39C 801DF1AC 45010006 */  bc1t       .L801DF1C8_ovl17
glabel func_801DF1B0_ovl9
/* 22A3A0 801DF1B0 3C01801E */   lui       $at, %hi(D_801E5628_ovl17)
/* 22A3A4 801DF1B4 C4265628 */  lwc1       $f6, %lo(D_801E5628_ovl17)($at)
.L801DF1B8_ovl16:
/* 22A3A8 801DF1B8 4606603C */  c.lt.s     $f12, $f6
/* 22A3AC 801DF1BC 00000000 */  nop
/* 22A3B0 801DF1C0 45020010 */  bc1fl      func_801DF204_ovl17
/* 22A3B4 801DF1C4 46109032 */   c.eq.s    $f18, $f16
.L801DF1C8_ovl17:
/* 22A3B8 801DF1C8 44066000 */  mfc1       $a2, $f12
/* 22A3BC 801DF1CC 27A40054 */  addiu      $a0, $sp, 0x54
/* 22A3C0 801DF1D0 27A50048 */  addiu      $a1, $sp, 0x48
/* 22A3C4 801DF1D4 0C00647E */  jal        func_800191F8
.L801DF1D8_ovl16:
/* 22A3C8 801DF1D8 E7AE0130 */   swc1      $f14, 0x130($sp)
/* 22A3CC 801DF1DC C7A80054 */  lwc1       $f8, 0x54($sp)
/* 22A3D0 801DF1E0 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* 22A3D4 801DF1E4 C7A4005C */  lwc1       $f4, 0x5C($sp)
.L801DF1E8_ovl10:
/* 22A3D8 801DF1E8 44808000 */  mtc1       $zero, $f16
/* 22A3DC 801DF1EC C7AE0130 */  lwc1       $f14, 0x130($sp)
/* 22A3E0 801DF1F0 E7A80100 */  swc1       $f8, 0x100($sp)
.L801DF1F4_ovl11:
/* 22A3E4 801DF1F4 E7AA0104 */  swc1       $f10, 0x104($sp)
.L801DF1F8_ovl11:
/* 22A3E8 801DF1F8 10000006 */  b          .L801DF214_ovl17
/* 22A3EC 801DF1FC E7A40108 */   swc1      $f4, 0x108($sp)
/* 22A3F0 801DF200 46109032 */  c.eq.s     $f18, $f16
glabel func_801DF204_ovl17
/* 22A3F4 801DF204 46008386 */  mov.s      $f14, $f16
.L801DF208_ovl12:
/* 22A3F8 801DF208 45030003 */  bc1tl      .L801DF218_ovl17
.L801DF20C_ovl9:
/* 22A3FC 801DF20C C7A600F0 */   lwc1      $f6, 0xF0($sp)
.L801DF210_ovl9:
/* 22A400 801DF210 E4700000 */  swc1       $f16, 0x0($v1)
.L801DF214_ovl17:
/* 22A404 801DF214 C7A600F0 */  lwc1       $f6, 0xF0($sp)
.L801DF218_ovl17:
/* 22A408 801DF218 C7A800F4 */  lwc1       $f8, 0xF4($sp)
/* 22A40C 801DF21C C7AA00F8 */  lwc1       $f10, 0xF8($sp)
glabel func_801DF220_ovl9
/* 22A410 801DF220 E7A60054 */  swc1       $f6, 0x54($sp)
/* 22A414 801DF224 C7A40070 */  lwc1       $f4, 0x70($sp)
/* 22A418 801DF228 C7A60074 */  lwc1       $f6, 0x74($sp)
/* 22A41C 801DF22C E7A80058 */  swc1       $f8, 0x58($sp)
/* 22A420 801DF230 E7AA005C */  swc1       $f10, 0x5C($sp)
glabel func_801DF234_ovl10
/* 22A424 801DF234 E7A4003C */  swc1       $f4, 0x3C($sp)
/* 22A428 801DF238 E7A60040 */  swc1       $f6, 0x40($sp)
/* 22A42C 801DF23C C7A80078 */  lwc1       $f8, 0x78($sp)
.L801DF240_ovl12:
/* 22A430 801DF240 C7AA0100 */  lwc1       $f10, 0x100($sp)
/* 22A434 801DF244 C7A40104 */  lwc1       $f4, 0x104($sp)
.L801DF248_ovl16:
/* 22A438 801DF248 C7A60108 */  lwc1       $f6, 0x108($sp)
.L801DF24C_ovl16:
/* 22A43C 801DF24C E7B00038 */  swc1       $f16, 0x38($sp)
/* 22A440 801DF250 E7B00034 */  swc1       $f16, 0x34($sp)
.L801DF254_ovl16:
/* 22A444 801DF254 E7B00030 */  swc1       $f16, 0x30($sp)
/* 22A448 801DF258 27A40054 */  addiu      $a0, $sp, 0x54
/* 22A44C 801DF25C 27A5003C */  addiu      $a1, $sp, 0x3C
glabel func_801DF260_ovl15
/* 22A450 801DF260 E7AE0130 */  swc1       $f14, 0x130($sp)
/* 22A454 801DF264 E7A80044 */  swc1       $f8, 0x44($sp)
/* 22A458 801DF268 E7AA0048 */  swc1       $f10, 0x48($sp)
/* 22A45C 801DF26C E7A4004C */  swc1       $f4, 0x4C($sp)
/* 22A460 801DF270 0C0063EF */  jal        lbvector_Angle
/* 22A464 801DF274 E7A60050 */   swc1      $f6, 0x50($sp)
.L801DF278_ovl12:
/* 22A468 801DF278 3C01801E */  lui        $at, %hi(D_801E562C_ovl17)
.L801DF27C_ovl14:
/* 22A46C 801DF27C C428562C */  lwc1       $f8, %lo(D_801E562C_ovl17)($at)
/* 22A470 801DF280 44808000 */  mtc1       $zero, $f16
/* 22A474 801DF284 44809000 */  mtc1       $zero, $f18
/* 22A478 801DF288 4600403C */  c.lt.s     $f8, $f0
/* 22A47C 801DF28C C7AE0130 */  lwc1       $f14, 0x130($sp)
glabel func_801DF290_ovl14
/* 22A480 801DF290 E7A00134 */  swc1       $f0, 0x134($sp)
glabel func_801DF294_ovl13
/* 22A484 801DF294 45000033 */  bc1f       .L801DF364_ovl17
/* 22A488 801DF298 27A40054 */   addiu     $a0, $sp, 0x54
glabel func_801DF29C_ovl9
/* 22A48C 801DF29C 27A5003C */  addiu      $a1, $sp, 0x3C
/* 22A490 801DF2A0 27A60030 */  addiu      $a2, $sp, 0x30
/* 22A494 801DF2A4 0C0065D0 */  jal        vec3_normalized_cross_product
/* 22A498 801DF2A8 E7AE0130 */   swc1      $f14, 0x130($sp)
/* 22A49C 801DF2AC 44809000 */  mtc1       $zero, $f18
/* 22A4A0 801DF2B0 C7AA0030 */  lwc1       $f10, 0x30($sp)
/* 22A4A4 801DF2B4 44808000 */  mtc1       $zero, $f16
/* 22A4A8 801DF2B8 C7AE0130 */  lwc1       $f14, 0x130($sp)
/* 22A4AC 801DF2BC 46125032 */  c.eq.s     $f10, $f18
/* 22A4B0 801DF2C0 C7A40034 */  lwc1       $f4, 0x34($sp)
.L801DF2C4_ovl14:
/* 22A4B4 801DF2C4 27A40048 */  addiu      $a0, $sp, 0x48
.L801DF2C8_ovl12:
/* 22A4B8 801DF2C8 45000009 */  bc1f       .L801DF2F0_ovl17
/* 22A4BC 801DF2CC 00000000 */   nop
/* 22A4C0 801DF2D0 46122032 */  c.eq.s     $f4, $f18
/* 22A4C4 801DF2D4 C7A60038 */  lwc1       $f6, 0x38($sp)
.L801DF2D8_ovl12:
/* 22A4C8 801DF2D8 45000005 */  bc1f       .L801DF2F0_ovl17
/* 22A4CC 801DF2DC 00000000 */   nop
/* 22A4D0 801DF2E0 46123032 */  c.eq.s     $f6, $f18
.L801DF2E4_ovl14:
/* 22A4D4 801DF2E4 00000000 */  nop
/* 22A4D8 801DF2E8 45010019 */  bc1t       .L801DF350_ovl17
/* 22A4DC 801DF2EC 00000000 */   nop
.L801DF2F0_ovl17:
/* 22A4E0 801DF2F0 0C0063EF */  jal        lbvector_Angle
/* 22A4E4 801DF2F4 27A50030 */   addiu     $a1, $sp, 0x30
/* 22A4E8 801DF2F8 3C01801E */  lui        $at, %hi(D_801E5630_ovl17)
.L801DF2FC_ovl10:
/* 22A4EC 801DF2FC C4285630 */  lwc1       $f8, %lo(D_801E5630_ovl17)($at)
/* 22A4F0 801DF300 44808000 */  mtc1       $zero, $f16
/* 22A4F4 801DF304 44809000 */  mtc1       $zero, $f18
/* 22A4F8 801DF308 4608003C */  c.lt.s     $f0, $f8
/* 22A4FC 801DF30C 3C01801E */  lui        $at, %hi(.L801E5700_ovl17)
glabel func_801DF310_ovl10
/* 22A500 801DF310 45000009 */  bc1f       .L801DF338_ovl17
glabel func_801DF314_ovl16
/* 22A504 801DF314 00000000 */   nop
glabel func_801DF318_ovl11
/* 22A508 801DF318 3C01801E */  lui        $at, %hi(.L801E5700_ovl17)
/* 22A50C 801DF31C C42A5700 */  lwc1       $f10, %lo(.L801E5700_ovl17)($at)
/* 22A510 801DF320 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 22A514 801DF324 44812000 */  mtc1       $at, $f4
/* 22A518 801DF328 00000000 */  nop
/* 22A51C 801DF32C 46045382 */  mul.s      $f14, $f10, $f4
/* 22A520 801DF330 10000007 */  b          .L801DF350_ovl17
/* 22A524 801DF334 00000000 */   nop
.L801DF338_ovl17:
/* 22A528 801DF338 C4265700 */  lwc1       $f6, %lo(.L801E5700_ovl17)($at)
/* 22A52C 801DF33C 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
.L801DF340_ovl15:
/* 22A530 801DF340 44815000 */  mtc1       $at, $f10
/* 22A534 801DF344 46003207 */  neg.s      $f8, $f6
/* 22A538 801DF348 460A4382 */  mul.s      $f14, $f8, $f10
.L801DF34C_ovl12:
/* 22A53C 801DF34C 00000000 */  nop
.L801DF350_ovl17:
/* 22A540 801DF350 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 22A544 801DF354 3C02800F */  lui        $v0, %hi(D_800EAFA0)
/* 22A548 801DF358 2442AFA0 */  addiu      $v0, $v0, %lo(D_800EAFA0)
.L801DF35C_ovl9:
/* 22A54C 801DF35C 1000000A */  b          .L801DF388_ovl17
/* 22A550 801DF360 8C84A7C4 */   lw        $a0, %lo(D_8004A7C4)($a0)
.L801DF364_ovl17:
/* 22A554 801DF364 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 22A558 801DF368 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 22A55C 801DF36C 3C02800F */  lui        $v0, %hi(D_800EAFA0)
/* 22A560 801DF370 2442AFA0 */  addiu      $v0, $v0, %lo(D_800EAFA0)
.L801DF374_ovl11:
/* 22A564 801DF374 8C8B0000 */  lw         $t3, 0x0($a0)
/* 22A568 801DF378 46008386 */  mov.s      $f14, $f16
.L801DF37C_ovl15:
/* 22A56C 801DF37C 000B6080 */  sll        $t4, $t3, 2
/* 22A570 801DF380 004C6821 */  addu       $t5, $v0, $t4
glabel func_801DF384_ovl12
/* 22A574 801DF384 E5B00000 */  swc1       $f16, 0x0($t5)
.L801DF388_ovl17:
/* 22A578 801DF388 8C8E0000 */  lw         $t6, 0x0($a0)
.L801DF38C_ovl16:
/* 22A57C 801DF38C 000E7880 */  sll        $t7, $t6, 2
/* 22A580 801DF390 004F1821 */  addu       $v1, $v0, $t7
glabel func_801DF394_ovl12
/* 22A584 801DF394 C46C0000 */  lwc1       $f12, 0x0($v1)
/* 22A588 801DF398 460C803C */  c.lt.s     $f16, $f12
/* 22A58C 801DF39C 00000000 */  nop
/* 22A590 801DF3A0 45020006 */  bc1fl      .L801DF3BC_ovl17
/* 22A594 801DF3A4 4610603C */   c.lt.s    $f12, $f16
/* 22A598 801DF3A8 4610703C */  c.lt.s     $f14, $f16
/* 22A59C 801DF3AC 00000000 */  nop
/* 22A5A0 801DF3B0 45010008 */  bc1t       .L801DF3D4_ovl17
/* 22A5A4 801DF3B4 00000000 */   nop
/* 22A5A8 801DF3B8 4610603C */  c.lt.s     $f12, $f16
.L801DF3BC_ovl17:
/* 22A5AC 801DF3BC 00000000 */  nop
/* 22A5B0 801DF3C0 45020009 */  bc1fl      .L801DF3E8_ovl17
/* 22A5B4 801DF3C4 460E6180 */   add.s     $f6, $f12, $f14
.L801DF3C8_ovl9:
/* 22A5B8 801DF3C8 460E803C */  c.lt.s     $f16, $f14
/* 22A5BC 801DF3CC 00000000 */  nop
/* 22A5C0 801DF3D0 45000004 */  bc1f       .L801DF3E4_ovl17
.L801DF3D4_ovl17:
/* 22A5C4 801DF3D4 3C01801E */   lui       $at, %hi(D_801E5634_ovl17)
.L801DF3D8_ovl16:
/* 22A5C8 801DF3D8 C4245634 */  lwc1       $f4, %lo(D_801E5634_ovl17)($at)
glabel func_801DF3DC_ovl11
/* 22A5CC 801DF3DC 46047382 */  mul.s      $f14, $f14, $f4
/* 22A5D0 801DF3E0 00000000 */  nop
.L801DF3E4_ovl17:
/* 22A5D4 801DF3E4 460E6180 */  add.s      $f6, $f12, $f14
.L801DF3E8_ovl17:
/* 22A5D8 801DF3E8 E4660000 */  swc1       $f6, 0x0($v1)
/* 22A5DC 801DF3EC 8C980000 */  lw         $t8, 0x0($a0)
glabel func_801DF3F0_ovl12
/* 22A5E0 801DF3F0 C7A80134 */  lwc1       $f8, 0x134($sp)
.L801DF3F4_ovl15:
/* 22A5E4 801DF3F4 0018C880 */  sll        $t9, $t8, 2
/* 22A5E8 801DF3F8 00591821 */  addu       $v1, $v0, $t9
/* 22A5EC 801DF3FC C46C0000 */  lwc1       $f12, 0x0($v1)
/* 22A5F0 801DF400 4612603C */  c.lt.s     $f12, $f18
.L801DF404_ovl13:
/* 22A5F4 801DF404 00000000 */  nop
.L801DF408_ovl16:
/* 22A5F8 801DF408 45020004 */  bc1fl      .L801DF41C_ovl17
.L801DF40C_ovl9:
/* 22A5FC 801DF40C 46006006 */   mov.s     $f0, $f12
glabel func_801DF410_ovl15
/* 22A600 801DF410 10000002 */  b          .L801DF41C_ovl17
/* 22A604 801DF414 46006007 */   neg.s     $f0, $f12
glabel func_801DF418_ovl9
/* 22A608 801DF418 46006006 */  mov.s      $f0, $f12
.L801DF41C_ovl17:
/* 22A60C 801DF41C 46004281 */  sub.s      $f10, $f8, $f0
/* 22A610 801DF420 3C01801E */  lui        $at, %hi(.L801E5704_ovl17)
/* 22A614 801DF424 C4225704 */  lwc1       $f2, %lo(.L801E5704_ovl17)($at)
/* 22A618 801DF428 3C02800D */  lui        $v0, %hi(gKirbyController)
/* 22A61C 801DF42C 460A103C */  c.lt.s     $f2, $f10
/* 22A620 801DF430 00000000 */  nop
/* 22A624 801DF434 45000003 */  bc1f       .L801DF444_ovl17
/* 22A628 801DF438 00000000 */   nop
/* 22A62C 801DF43C 10000014 */  b          .L801DF490_ovl17
.L801DF440_ovl13:
/* 22A630 801DF440 46001006 */   mov.s     $f0, $f2
.L801DF444_ovl17:
/* 22A634 801DF444 94426FE8 */  lhu        $v0, %lo(gKirbyController)($v0)
.L801DF448_ovl16:
/* 22A638 801DF448 3C01800D */  lui        $at, %hi(D_800D7158 + 0x18)
.L801DF44C_ovl11:
/* 22A63C 801DF44C 30480C00 */  andi       $t0, $v0, 0xC00
.L801DF450_ovl12:
/* 22A640 801DF450 11000009 */  beqz       $t0, .L801DF478_ovl17
glabel func_801DF454_ovl9
/* 22A644 801DF454 30490300 */   andi      $t1, $v0, 0x300
/* 22A648 801DF458 11200007 */  beqz       $t1, .L801DF478_ovl17
/* 22A64C 801DF45C 00000000 */   nop
/* 22A650 801DF460 3C01800D */  lui        $at, %hi(D_800D7158 + 0x18)
/* 22A654 801DF464 C4247170 */  lwc1       $f4, %lo(D_800D7158 + 0x18)($at)
/* 22A658 801DF468 3C01801E */  lui        $at, %hi(D_801E5638_ovl17)
/* 22A65C 801DF46C C4265638 */  lwc1       $f6, %lo(D_801E5638_ovl17)($at)
/* 22A660 801DF470 10000002 */  b          .L801DF47C_ovl17
/* 22A664 801DF474 46062003 */   div.s     $f0, $f4, $f6
.L801DF478_ovl17:
/* 22A668 801DF478 C4207170 */  lwc1       $f0, %lo(D_800D7158 + 0x18)($at)
.L801DF47C_ovl17:
/* 22A66C 801DF47C 4600103C */  c.lt.s     $f2, $f0
/* 22A670 801DF480 00000000 */  nop
/* 22A674 801DF484 45020003 */  bc1fl      .L801DF494_ovl17
/* 22A678 801DF488 460C003C */   c.lt.s    $f0, $f12
.L801DF48C_ovl16:
/* 22A67C 801DF48C 46001006 */  mov.s      $f0, $f2
.L801DF490_ovl17:
/* 22A680 801DF490 460C003C */  c.lt.s     $f0, $f12
.L801DF494_ovl17:
/* 22A684 801DF494 3C01801E */  lui        $at, %hi(D_801E563C_ovl17)
.L801DF498_ovl14:
/* 22A688 801DF498 27A50048 */  addiu      $a1, $sp, 0x48
/* 22A68C 801DF49C 4502000A */  bc1fl      .L801DF4C8_ovl17
/* 22A690 801DF4A0 46000087 */   neg.s     $f2, $f0
.L801DF4A4_ovl11:
/* 22A694 801DF4A4 E4600000 */  swc1       $f0, 0x0($v1)
/* 22A698 801DF4A8 8C8A0000 */  lw         $t2, 0x0($a0)
/* 22A69C 801DF4AC 3C0C800F */  lui        $t4, %hi(D_800EAFA0)
glabel func_801DF4B0_ovl11
/* 22A6A0 801DF4B0 258CAFA0 */  addiu      $t4, $t4, %lo(D_800EAFA0)
.L801DF4B4_ovl12:
/* 22A6A4 801DF4B4 000A5880 */  sll        $t3, $t2, 2
/* 22A6A8 801DF4B8 016C1821 */  addu       $v1, $t3, $t4
/* 22A6AC 801DF4BC 1000000D */  b          .L801DF4F4_ovl17
.L801DF4C0_ovl16:
/* 22A6B0 801DF4C0 C46C0000 */   lwc1      $f12, 0x0($v1)
/* 22A6B4 801DF4C4 46000087 */  neg.s      $f2, $f0
.L801DF4C8_ovl17:
/* 22A6B8 801DF4C8 4602603C */  c.lt.s     $f12, $f2
glabel func_801DF4CC_ovl10
/* 22A6BC 801DF4CC 00000000 */  nop
/* 22A6C0 801DF4D0 45000008 */  bc1f       .L801DF4F4_ovl17
/* 22A6C4 801DF4D4 00000000 */   nop
/* 22A6C8 801DF4D8 E4620000 */  swc1       $f2, 0x0($v1)
/* 22A6CC 801DF4DC 8C8D0000 */  lw         $t5, 0x0($a0)
.L801DF4E0_ovl14:
/* 22A6D0 801DF4E0 3C0F800F */  lui        $t7, %hi(D_800EAFA0)
.L801DF4E4_ovl9:
/* 22A6D4 801DF4E4 25EFAFA0 */  addiu      $t7, $t7, %lo(D_800EAFA0)
/* 22A6D8 801DF4E8 000D7080 */  sll        $t6, $t5, 2
/* 22A6DC 801DF4EC 01CF1821 */  addu       $v1, $t6, $t7
/* 22A6E0 801DF4F0 C46C0000 */  lwc1       $f12, 0x0($v1)
.L801DF4F4_ovl17:
/* 22A6E4 801DF4F4 C428563C */  lwc1       $f8, %lo(D_801E563C_ovl17)($at)
/* 22A6E8 801DF4F8 3C01801E */  lui        $at, %hi(.L801E5640_ovl17)
.L801DF4FC_ovl16:
/* 22A6EC 801DF4FC 460C403C */  c.lt.s     $f8, $f12
.L801DF500_ovl14:
/* 22A6F0 801DF500 00000000 */  nop
/* 22A6F4 801DF504 45030007 */  bc1tl      .L801DF524_ovl17
/* 22A6F8 801DF508 44066000 */   mfc1      $a2, $f12
glabel func_801DF50C_ovl10
/* 22A6FC 801DF50C C42A5640 */  lwc1       $f10, %lo(.L801E5640_ovl17)($at)
/* 22A700 801DF510 460A603C */  c.lt.s     $f12, $f10
glabel func_801DF514_ovl14
/* 22A704 801DF514 00000000 */  nop
/* 22A708 801DF518 4502000C */  bc1fl      .L801DF54C_ovl17
.L801DF51C_ovl9:
/* 22A70C 801DF51C 46109032 */   c.eq.s    $f18, $f16
/* 22A710 801DF520 44066000 */  mfc1       $a2, $f12
.L801DF524_ovl17:
/* 22A714 801DF524 0C00647E */  jal        func_800191F8
/* 22A718 801DF528 27A40054 */   addiu     $a0, $sp, 0x54
glabel func_801DF52C_ovl15
/* 22A71C 801DF52C C7A40054 */  lwc1       $f4, 0x54($sp)
.L801DF530_ovl16:
/* 22A720 801DF530 C7A60058 */  lwc1       $f6, 0x58($sp)
/* 22A724 801DF534 C7A8005C */  lwc1       $f8, 0x5C($sp)
/* 22A728 801DF538 E7A400F0 */  swc1       $f4, 0xF0($sp)
/* 22A72C 801DF53C E7A600F4 */  swc1       $f6, 0xF4($sp)
.L801DF540_ovl16:
/* 22A730 801DF540 10000006 */  b          .L801DF55C_ovl17
.L801DF544_ovl13:
/* 22A734 801DF544 E7A800F8 */   swc1      $f8, 0xF8($sp)
glabel func_801DF548_ovl11
/* 22A738 801DF548 46109032 */  c.eq.s     $f18, $f16
.L801DF54C_ovl17:
/* 22A73C 801DF54C 00000000 */  nop
.L801DF550_ovl14:
/* 22A740 801DF550 45030003 */  bc1tl      .L801DF560_ovl17
.L801DF554_ovl12:
/* 22A744 801DF554 C7AA00F0 */   lwc1      $f10, 0xF0($sp)
/* 22A748 801DF558 E4700000 */  swc1       $f16, 0x0($v1)
.L801DF55C_ovl17:
/* 22A74C 801DF55C C7AA00F0 */  lwc1       $f10, 0xF0($sp)
.L801DF560_ovl17:
/* 22A750 801DF560 C7A400F4 */  lwc1       $f4, 0xF4($sp)
/* 22A754 801DF564 C7A600F8 */  lwc1       $f6, 0xF8($sp)
/* 22A758 801DF568 E7AA0054 */  swc1       $f10, 0x54($sp)
/* 22A75C 801DF56C E7A40058 */  swc1       $f4, 0x58($sp)
.L801DF570_ovl13:
/* 22A760 801DF570 C7A80100 */  lwc1       $f8, 0x100($sp)
.L801DF574_ovl16:
/* 22A764 801DF574 C7AA0104 */  lwc1       $f10, 0x104($sp)
/* 22A768 801DF578 C7A40108 */  lwc1       $f4, 0x108($sp)
/* 22A76C 801DF57C 27A40054 */  addiu      $a0, $sp, 0x54
glabel func_801DF580_ovl14
/* 22A770 801DF580 27A5003C */  addiu      $a1, $sp, 0x3C
/* 22A774 801DF584 27A60030 */  addiu      $a2, $sp, 0x30
glabel func_801DF588_ovl13
/* 22A778 801DF588 E7A6005C */  swc1       $f6, 0x5C($sp)
/* 22A77C 801DF58C E7A8003C */  swc1       $f8, 0x3C($sp)
/* 22A780 801DF590 E7AA0040 */  swc1       $f10, 0x40($sp)
/* 22A784 801DF594 0C0065D0 */  jal        vec3_normalized_cross_product
/* 22A788 801DF598 E7A40044 */   swc1      $f4, 0x44($sp)
/* 22A78C 801DF59C C7AE0030 */  lwc1       $f14, 0x30($sp)
/* 22A790 801DF5A0 C7AC0034 */  lwc1       $f12, 0x34($sp)
/* 22A794 801DF5A4 C7A20038 */  lwc1       $f2, 0x38($sp)
.L801DF5A8_ovl12:
/* 22A798 801DF5A8 C7A60100 */  lwc1       $f6, 0x100($sp)
.L801DF5AC_ovl11:
/* 22A79C 801DF5AC C7A80104 */  lwc1       $f8, 0x104($sp)
.L801DF5B0_ovl16:
/* 22A7A0 801DF5B0 C7AA0108 */  lwc1       $f10, 0x108($sp)
/* 22A7A4 801DF5B4 27A40054 */  addiu      $a0, $sp, 0x54
glabel func_801DF5B8_ovl11
/* 22A7A8 801DF5B8 27A5003C */  addiu      $a1, $sp, 0x3C
/* 22A7AC 801DF5BC 27A60030 */  addiu      $a2, $sp, 0x30
/* 22A7B0 801DF5C0 E7AE003C */  swc1       $f14, 0x3C($sp)
/* 22A7B4 801DF5C4 E7AE00E0 */  swc1       $f14, 0xE0($sp)
.L801DF5C8_ovl13:
/* 22A7B8 801DF5C8 E7AC0040 */  swc1       $f12, 0x40($sp)
.L801DF5CC_ovl15:
/* 22A7BC 801DF5CC E7AC00E4 */  swc1       $f12, 0xE4($sp)
glabel func_801DF5D0_ovl13
/* 22A7C0 801DF5D0 E7A20044 */  swc1       $f2, 0x44($sp)
/* 22A7C4 801DF5D4 E7A200E8 */  swc1       $f2, 0xE8($sp)
/* 22A7C8 801DF5D8 E7A60054 */  swc1       $f6, 0x54($sp)
/* 22A7CC 801DF5DC E7A80058 */  swc1       $f8, 0x58($sp)
/* 22A7D0 801DF5E0 0C0065D0 */  jal        vec3_normalized_cross_product
.L801DF5E4_ovl16:
/* 22A7D4 801DF5E4 E7AA005C */   swc1      $f10, 0x5C($sp)
/* 22A7D8 801DF5E8 C7A200E8 */  lwc1       $f2, 0xE8($sp)
/* 22A7DC 801DF5EC C7A40030 */  lwc1       $f4, 0x30($sp)
glabel func_801DF5F0_ovl12
/* 22A7E0 801DF5F0 C7A60034 */  lwc1       $f6, 0x34($sp)
.L801DF5F4_ovl16:
/* 22A7E4 801DF5F4 C7A80038 */  lwc1       $f8, 0x38($sp)
/* 22A7E8 801DF5F8 46001307 */  neg.s      $f12, $f2
/* 22A7EC 801DF5FC E7A400F0 */  swc1       $f4, 0xF0($sp)
.L801DF600_ovl14:
/* 22A7F0 801DF600 E7A600F4 */  swc1       $f6, 0xF4($sp)
/* 22A7F4 801DF604 0C006203 */  jal        asinf
.L801DF608_ovl9:
/* 22A7F8 801DF608 E7A800F8 */   swc1      $f8, 0xF8($sp)
.L801DF60C_ovl11:
/* 22A7FC 801DF60C 3C01801E */  lui        $at, %hi(D_801E5644_ovl17)
.L801DF610_ovl9:
/* 22A800 801DF610 C4225644 */  lwc1       $f2, %lo(D_801E5644_ovl17)($at)
/* 22A804 801DF614 E7A00124 */  swc1       $f0, 0x124($sp)
.L801DF618_ovl9:
/* 22A808 801DF618 3C01801E */  lui        $at, %hi(.L801E5648_ovl17)
/* 22A80C 801DF61C 46020032 */  c.eq.s     $f0, $f2
/* 22A810 801DF620 00000000 */  nop
.L801DF624_ovl16:
/* 22A814 801DF624 45030008 */  bc1tl      func_801DF648_ovl17
glabel func_801DF628_ovl9
/* 22A818 801DF628 46020032 */   c.eq.s    $f0, $f2
glabel func_801DF62C_ovl16
/* 22A81C 801DF62C C42A5648 */  lwc1       $f10, %lo(.L801E5648_ovl17)($at)
/* 22A820 801DF630 C7AC00F8 */  lwc1       $f12, 0xF8($sp)
/* 22A824 801DF634 460A0032 */  c.eq.s     $f0, $f10
/* 22A828 801DF638 00000000 */  nop
.L801DF63C_ovl14:
/* 22A82C 801DF63C 45000012 */  bc1f       .L801DF688_ovl17
/* 22A830 801DF640 00000000 */   nop
/* 22A834 801DF644 46020032 */  c.eq.s     $f0, $f2
glabel func_801DF648_ovl17
/* 22A838 801DF648 C7AC00F0 */  lwc1       $f12, 0xF0($sp)
glabel func_801DF64C_ovl15
/* 22A83C 801DF64C C7AE00F4 */  lwc1       $f14, 0xF4($sp)
/* 22A840 801DF650 45000007 */  bc1f       .L801DF670_ovl17
.L801DF654_ovl10:
/* 22A844 801DF654 00000000 */   nop
/* 22A848 801DF658 C7AC00F0 */  lwc1       $f12, 0xF0($sp)
/* 22A84C 801DF65C 0C0061C3 */  jal        atan2f
/* 22A850 801DF660 C7AE00F4 */   lwc1      $f14, 0xF4($sp)
/* 22A854 801DF664 44808000 */  mtc1       $zero, $f16
/* 22A858 801DF668 10000005 */  b          .L801DF680_ovl17
/* 22A85C 801DF66C E7A00120 */   swc1      $f0, 0x120($sp)
.L801DF670_ovl17:
/* 22A860 801DF670 0C0061C3 */  jal        atan2f
/* 22A864 801DF674 46006307 */   neg.s     $f12, $f12
.L801DF678_ovl14:
/* 22A868 801DF678 44808000 */  mtc1       $zero, $f16
/* 22A86C 801DF67C E7A00120 */  swc1       $f0, 0x120($sp)
.L801DF680_ovl17:
/* 22A870 801DF680 10000008 */  b          .L801DF6A4_ovl17
.L801DF684_ovl9:
/* 22A874 801DF684 E7B00128 */   swc1      $f16, 0x128($sp)
.L801DF688_ovl17:
/* 22A878 801DF688 0C0061C3 */  jal        atan2f
/* 22A87C 801DF68C C7AE0108 */   lwc1      $f14, 0x108($sp)
/* 22A880 801DF690 C7AC00E4 */  lwc1       $f12, 0xE4($sp)
/* 22A884 801DF694 C7AE00E0 */  lwc1       $f14, 0xE0($sp)
/* 22A888 801DF698 0C0061C3 */  jal        atan2f
.L801DF69C_ovl10:
/* 22A88C 801DF69C E7A00120 */   swc1      $f0, 0x120($sp)
/* 22A890 801DF6A0 E7A00128 */  swc1       $f0, 0x128($sp)
.L801DF6A4_ovl17:
/* 22A894 801DF6A4 0C029166 */  jal        func_800A4598
.L801DF6A8_ovl10:
/* 22A898 801DF6A8 27A40120 */   addiu     $a0, $sp, 0x120
/* 22A89C 801DF6AC 3C048005 */  lui        $a0, %hi(D_8004A7C4)
.L801DF6B0_ovl12:
/* 22A8A0 801DF6B0 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
.L801DF6B4_ovl14:
/* 22A8A4 801DF6B4 C7A40120 */  lwc1       $f4, 0x120($sp)
/* 22A8A8 801DF6B8 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 22A8AC 801DF6BC 8C980000 */  lw         $t8, 0x0($a0)
/* 22A8B0 801DF6C0 C7A60124 */  lwc1       $f6, 0x124($sp)
/* 22A8B4 801DF6C4 C7A80128 */  lwc1       $f8, 0x128($sp)
/* 22A8B8 801DF6C8 0018C880 */  sll        $t9, $t8, 2
/* 22A8BC 801DF6CC 00390821 */  addu       $at, $at, $t9
/* 22A8C0 801DF6D0 E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
.L801DF6D4_ovl16:
/* 22A8C4 801DF6D4 8C880000 */  lw         $t0, 0x0($a0)
/* 22A8C8 801DF6D8 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 22A8CC 801DF6DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 22A8D0 801DF6E0 00084880 */  sll        $t1, $t0, 2
/* 22A8D4 801DF6E4 00290821 */  addu       $at, $at, $t1
.L801DF6E8_ovl15:
/* 22A8D8 801DF6E8 E426A8A0 */  swc1       $f6, %lo(D_800EA8A0)($at)
/* 22A8DC 801DF6EC 8C8A0000 */  lw         $t2, 0x0($a0)
.L801DF6F0_ovl16:
/* 22A8E0 801DF6F0 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 22A8E4 801DF6F4 000A5880 */  sll        $t3, $t2, 2
glabel func_801DF6F8_ovl12
/* 22A8E8 801DF6F8 002B0821 */  addu       $at, $at, $t3
/* 22A8EC 801DF6FC E428AA60 */  swc1       $f8, %lo(D_800EAA60)($at)
/* 22A8F0 801DF700 8C820000 */  lw         $v0, 0x0($a0)
/* 22A8F4 801DF704 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 22A8F8 801DF708 00021080 */  sll        $v0, $v0, 2
/* 22A8FC 801DF70C 00220821 */  addu       $at, $at, $v0
.L801DF710_ovl14:
/* 22A900 801DF710 C42AA6E0 */  lwc1       $f10, %lo(D_800EA6E0)($at)
/* 22A904 801DF714 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 22A908 801DF718 00220821 */  addu       $at, $at, $v0
/* 22A90C 801DF71C E42A4010 */  swc1       $f10, %lo(gEntitiesAngleXArray)($at)
glabel func_801DF720_ovl16
/* 22A910 801DF720 8C820000 */  lw         $v0, 0x0($a0)
.L801DF724_ovl13:
/* 22A914 801DF724 3C01800F */  lui        $at, %hi(D_800EA8A0)
glabel func_801DF728_ovl11
/* 22A918 801DF728 00021080 */  sll        $v0, $v0, 2
.L801DF72C_ovl9:
/* 22A91C 801DF72C 00220821 */  addu       $at, $at, $v0
/* 22A920 801DF730 C424A8A0 */  lwc1       $f4, %lo(D_800EA8A0)($at)
/* 22A924 801DF734 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* 22A928 801DF738 00220821 */  addu       $at, $at, $v0
/* 22A92C 801DF73C E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
.L801DF740_ovl12:
/* 22A930 801DF740 8C820000 */  lw         $v0, 0x0($a0)
/* 22A934 801DF744 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 22A938 801DF748 00021080 */  sll        $v0, $v0, 2
.L801DF74C_ovl12:
/* 22A93C 801DF74C 00220821 */  addu       $at, $at, $v0
/* 22A940 801DF750 C426AA60 */  lwc1       $f6, %lo(D_800EAA60)($at)
/* 22A944 801DF754 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
glabel func_801DF758_ovl13
/* 22A948 801DF758 00220821 */  addu       $at, $at, $v0
glabel func_801DF75C_ovl14
/* 22A94C 801DF75C 27BD0138 */  addiu      $sp, $sp, 0x138
.L801DF760_ovl16:
/* 22A950 801DF760 03E00008 */  jr         $ra
/* 22A954 801DF764 E4264390 */   swc1      $f6, %lo(gEntitiesAngleZArray)($at)
