glabel func_801DDE90_ovl15
/* 2089F0 801DDE90 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 2089F4 801DDE94 AFBE0058 */  sw         $fp, 0x58($sp)
/* 2089F8 801DDE98 3C1E8005 */  lui        $fp, %hi(D_8004A7C4)
/* 2089FC 801DDE9C 27DEA7C4 */  addiu      $fp, $fp, %lo(D_8004A7C4)
/* 208A00 801DDEA0 8FC60000 */  lw         $a2, 0x0($fp)
/* 208A04 801DDEA4 AFBF005C */  sw         $ra, 0x5C($sp)
/* 208A08 801DDEA8 AFB70054 */  sw         $s7, 0x54($sp)
/* 208A0C 801DDEAC AFB60050 */  sw         $s6, 0x50($sp)
glabel func_801DDEB0_ovl16
/* 208A10 801DDEB0 AFB5004C */  sw         $s5, 0x4C($sp)
/* 208A14 801DDEB4 AFB40048 */  sw         $s4, 0x48($sp)
glabel func_801DDEB8_ovl10
/* 208A18 801DDEB8 AFB30044 */  sw         $s3, 0x44($sp)
/* 208A1C 801DDEBC AFB20040 */  sw         $s2, 0x40($sp)
glabel func_801DDEC0_ovl11
/* 208A20 801DDEC0 AFB1003C */  sw         $s1, 0x3C($sp)
/* 208A24 801DDEC4 AFB00038 */  sw         $s0, 0x38($sp)
/* 208A28 801DDEC8 F7BA0030 */  sdc1       $f26, 0x30($sp)
.L801DDECC_ovl12:
/* 208A2C 801DDECC F7B80028 */  sdc1       $f24, 0x28($sp)
/* 208A30 801DDED0 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 208A34 801DDED4 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 208A38 801DDED8 AFA40060 */  sw         $a0, 0x60($sp)
/* 208A3C 801DDEDC 8CCF0000 */  lw         $t7, 0x0($a2)
/* 208A40 801DDEE0 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 208A44 801DDEE4 240E0002 */  addiu      $t6, $zero, 0x2
/* 208A48 801DDEE8 000FC080 */  sll        $t8, $t7, 2
.L801DDEEC_ovl12:
/* 208A4C 801DDEEC 00380821 */  addu       $at, $at, $t8
/* 208A50 801DDEF0 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 208A54 801DDEF4 8CC80000 */  lw         $t0, 0x0($a2)
/* 208A58 801DDEF8 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 208A5C 801DDEFC 24190001 */  addiu      $t9, $zero, 0x1
/* 208A60 801DDF00 00084880 */  sll        $t1, $t0, 2
.L801DDF04_ovl9:
/* 208A64 801DDF04 00290821 */  addu       $at, $at, $t1
glabel func_801DDF08_ovl11
/* 208A68 801DDF08 AC39DC50 */  sw         $t9, %lo(gEntityVtableIndexArray)($at)
/* 208A6C 801DDF0C 8CCB0000 */  lw         $t3, 0x0($a2)
/* 208A70 801DDF10 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 208A74 801DDF14 240AFFFF */  addiu      $t2, $zero, -0x1
/* 208A78 801DDF18 000B6080 */  sll        $t4, $t3, 2
/* 208A7C 801DDF1C 002C0821 */  addu       $at, $at, $t4
/* 208A80 801DDF20 AC2A9FE0 */  sw         $t2, %lo(D_800E9FE0)($at)
glabel func_801DDF24_ovl17
/* 208A84 801DDF24 8CCD0000 */  lw         $t5, 0x0($a2)
/* 208A88 801DDF28 4480C000 */  mtc1       $zero, $f24
.L801DDF2C_ovl12:
/* 208A8C 801DDF2C 3C11800F */  lui        $s1, %hi(D_800EAC20)
/* 208A90 801DDF30 2631AC20 */  addiu      $s1, $s1, %lo(D_800EAC20)
/* 208A94 801DDF34 000D7880 */  sll        $t7, $t5, 2
glabel func_801DDF38_ovl12
/* 208A98 801DDF38 022F7021 */  addu       $t6, $s1, $t7
/* 208A9C 801DDF3C E5D80000 */  swc1       $f24, 0x0($t6)
/* 208AA0 801DDF40 8CD80000 */  lw         $t8, 0x0($a2)
/* 208AA4 801DDF44 3C10800F */  lui        $s0, %hi(D_800E9E20)
/* 208AA8 801DDF48 26109E20 */  addiu      $s0, $s0, %lo(D_800E9E20)
/* 208AAC 801DDF4C 00184080 */  sll        $t0, $t8, 2
/* 208AB0 801DDF50 0208C821 */  addu       $t9, $s0, $t0
/* 208AB4 801DDF54 AF200000 */  sw         $zero, 0x0($t9)
/* 208AB8 801DDF58 24040004 */  addiu      $a0, $zero, 0x4
.L801DDF5C_ovl9:
/* 208ABC 801DDF5C 0C067829 */  jal        func_8019E0A4_ovl7
/* 208AC0 801DDF60 24050007 */   addiu     $a1, $zero, 0x7
.L801DDF64_ovl17:
/* 208AC4 801DDF64 24040004 */  addiu      $a0, $zero, 0x4
.L801DDF68_ovl13:
/* 208AC8 801DDF68 0C067829 */  jal        func_8019E0A4_ovl7
glabel func_801DDF6C_ovl17
/* 208ACC 801DDF6C 24050008 */   addiu     $a1, $zero, 0x8
/* 208AD0 801DDF70 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 208AD4 801DDF74 C4246B10 */  lwc1       $f4, %lo(D_800D6B10)($at)
/* 208AD8 801DDF78 3C01801E */  lui        $at, %hi(D_801E6838_ovl15)
/* 208ADC 801DDF7C C4266838 */  lwc1       $f6, %lo(D_801E6838_ovl15)($at)
.L801DDF80_ovl16:
/* 208AE0 801DDF80 46062302 */  mul.s      $f12, $f4, $f6
/* 208AE4 801DDF84 0C02BB30 */  jal        func_800AECC0
/* 208AE8 801DDF88 00000000 */   nop
/* 208AEC 801DDF8C 3C040001 */  lui        $a0, (0x103C1 >> 16)
/* 208AF0 801DDF90 0C02A806 */  jal        func_800AA018
/* 208AF4 801DDF94 348403C1 */   ori       $a0, $a0, (0x103C1 & 0xFFFF)
.L801DDF98_ovl13:
/* 208AF8 801DDF98 8FC90000 */  lw         $t1, 0x0($fp)
glabel func_801DDF9C_ovl9
/* 208AFC 801DDF9C 3C01437E */  lui        $at, (0x437E0000 >> 16)
/* 208B00 801DDFA0 4481D000 */  mtc1       $at, $f26
/* 208B04 801DDFA4 8D220000 */  lw         $v0, 0x0($t1)
.L801DDFA8_ovl10:
/* 208B08 801DDFA8 3C0142F8 */  lui        $at, (0x42F80000 >> 16)
/* 208B0C 801DDFAC 00021080 */  sll        $v0, $v0, 2
.L801DDFB0_ovl13:
/* 208B10 801DDFB0 02225821 */  addu       $t3, $s1, $v0
glabel func_801DDFB4_ovl12
/* 208B14 801DDFB4 C5600000 */  lwc1       $f0, 0x0($t3)
.L801DDFB8_ovl16:
/* 208B18 801DDFB8 461A003E */  c.le.s     $f0, $f26
/* 208B1C 801DDFBC 00000000 */  nop
/* 208B20 801DDFC0 4502002B */  bc1fl      .L801DE070_ovl15
/* 208B24 801DDFC4 240C0002 */   addiu     $t4, $zero, 0x2
.L801DDFC8_ovl13:
/* 208B28 801DDFC8 4481B000 */  mtc1       $at, $f22
/* 208B2C 801DDFCC 3C01428C */  lui        $at, (0x428C0000 >> 16)
.L801DDFD0_ovl16:
/* 208B30 801DDFD0 4481A000 */  mtc1       $at, $f20
/* 208B34 801DDFD4 00000000 */  nop
/* 208B38 801DDFD8 02025021 */  addu       $t2, $s0, $v0
.L801DDFDC_ovl15:
/* 208B3C 801DDFDC 8D4C0000 */  lw         $t4, 0x0($t2)
/* 208B40 801DDFE0 55800012 */  bnel       $t4, $zero, .L801DE02C_ovl15
.L801DDFE4_ovl13:
/* 208B44 801DDFE4 4600B03C */   c.lt.s    $f22, $f0
.L801DDFE8_ovl16:
/* 208B48 801DDFE8 4600A03C */  c.lt.s     $f20, $f0
/* 208B4C 801DDFEC 00000000 */  nop
/* 208B50 801DDFF0 4502000E */  bc1fl      .L801DE02C_ovl15
/* 208B54 801DDFF4 4600B03C */   c.lt.s    $f22, $f0
/* 208B58 801DDFF8 0C029D9E */  jal        play_sound
/* 208B5C 801DDFFC 240401A4 */   addiu     $a0, $zero, 0x1A4
/* 208B60 801DE000 8FC60000 */  lw         $a2, 0x0($fp)
/* 208B64 801DE004 240D0001 */  addiu      $t5, $zero, 0x1
.L801DE008_ovl16:
/* 208B68 801DE008 8CCF0000 */  lw         $t7, 0x0($a2)
/* 208B6C 801DE00C 000F7080 */  sll        $t6, $t7, 2
/* 208B70 801DE010 020EC021 */  addu       $t8, $s0, $t6
.L801DE014_ovl13:
/* 208B74 801DE014 AF0D0000 */  sw         $t5, 0x0($t8)
/* 208B78 801DE018 8CC80000 */  lw         $t0, 0x0($a2)
.L801DE01C_ovl17:
/* 208B7C 801DE01C 0008C880 */  sll        $t9, $t0, 2
/* 208B80 801DE020 02394821 */  addu       $t1, $s1, $t9
/* 208B84 801DE024 C5200000 */  lwc1       $f0, 0x0($t1)
.L801DE028_ovl13:
/* 208B88 801DE028 4600B03C */  c.lt.s     $f22, $f0
.L801DE02C_ovl15:
/* 208B8C 801DE02C 3C01800D */  lui        $at, %hi(D_800D6B10)
glabel func_801DE030_ovl16
/* 208B90 801DE030 45000003 */  bc1f       .L801DE040_ovl15
/* 208B94 801DE034 00000000 */   nop
glabel func_801DE038_ovl11
/* 208B98 801DE038 0C02BB30 */  jal        func_800AECC0
/* 208B9C 801DE03C C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
.L801DE040_ovl15:
/* 208BA0 801DE040 0C002DAF */  jal        finish_current_thread
.L801DE044_ovl13:
/* 208BA4 801DE044 24040001 */   addiu     $a0, $zero, 0x1
/* 208BA8 801DE048 8FCB0000 */  lw         $t3, 0x0($fp)
/* 208BAC 801DE04C 8D620000 */  lw         $v0, 0x0($t3)
/* 208BB0 801DE050 00021080 */  sll        $v0, $v0, 2
/* 208BB4 801DE054 02225021 */  addu       $t2, $s1, $v0
.L801DE058_ovl13:
/* 208BB8 801DE058 C5400000 */  lwc1       $f0, 0x0($t2)
.L801DE05C_ovl13:
/* 208BBC 801DE05C 461A003E */  c.le.s     $f0, $f26
/* 208BC0 801DE060 00000000 */  nop
.L801DE064_ovl17:
/* 208BC4 801DE064 4503FFDD */  bc1tl      .L801DDFDC_ovl15
/* 208BC8 801DE068 02025021 */   addu      $t2, $s0, $v0
/* 208BCC 801DE06C 240C0002 */  addiu      $t4, $zero, 0x2
.L801DE070_ovl15:
/* 208BD0 801DE070 02027821 */  addu       $t7, $s0, $v0
/* 208BD4 801DE074 ADEC0000 */  sw         $t4, 0x0($t7)
/* 208BD8 801DE078 0C029D9E */  jal        play_sound
.L801DE07C_ovl11:
/* 208BDC 801DE07C 240401A0 */   addiu     $a0, $zero, 0x1A0
/* 208BE0 801DE080 00002025 */  or         $a0, $zero, $zero
glabel func_801DE084_ovl13
/* 208BE4 801DE084 0C02ED1A */  jal        func_800BB468
/* 208BE8 801DE088 00002825 */   or        $a1, $zero, $zero
/* 208BEC 801DE08C 24040004 */  addiu      $a0, $zero, 0x4
/* 208BF0 801DE090 0C067829 */  jal        func_8019E0A4_ovl7
.L801DE094_ovl9:
/* 208BF4 801DE094 24050006 */   addiu     $a1, $zero, 0x6
/* 208BF8 801DE098 0C03EE45 */  jal        func_800FB914
/* 208BFC 801DE09C 24040002 */   addiu     $a0, $zero, 0x2
/* 208C00 801DE0A0 0C002DAF */  jal        finish_current_thread
/* 208C04 801DE0A4 24040001 */   addiu     $a0, $zero, 0x1
/* 208C08 801DE0A8 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
.L801DE0AC_ovl9:
/* 208C0C 801DE0AC 3C17800F */  lui        $s7, %hi(D_800E8E60)
/* 208C10 801DE0B0 3C16800E */  lui        $s6, %hi(gEntitiesNextPosZArray)
/* 208C14 801DE0B4 3C15800E */  lui        $s5, %hi(gEntitiesNextPosYArray)
/* 208C18 801DE0B8 3C14800E */  lui        $s4, %hi(gEntitiesNextPosXArray)
/* 208C1C 801DE0BC 3C13800E */  lui        $s3, %hi(D_800E6BD0)
.L801DE0C0_ovl17:
/* 208C20 801DE0C0 3C12800E */  lui        $s2, %hi(D_800E5F90)
.L801DE0C4_ovl17:
/* 208C24 801DE0C4 3C10800E */  lui        $s0, %hi(D_800E0D50)
/* 208C28 801DE0C8 4481A000 */  mtc1       $at, $f20
/* 208C2C 801DE0CC 26100D50 */  addiu      $s0, $s0, %lo(D_800E0D50)
.L801DE0D0_ovl14:
/* 208C30 801DE0D0 26525F90 */  addiu      $s2, $s2, %lo(D_800E5F90)
/* 208C34 801DE0D4 26736BD0 */  addiu      $s3, $s3, %lo(D_800E6BD0)
/* 208C38 801DE0D8 269425D0 */  addiu      $s4, $s4, %lo(gEntitiesNextPosXArray)
.L801DE0DC_ovl10:
/* 208C3C 801DE0DC 26B52790 */  addiu      $s5, $s5, %lo(gEntitiesNextPosYArray)
.L801DE0E0_ovl11:
/* 208C40 801DE0E0 26D62950 */  addiu      $s6, $s6, %lo(gEntitiesNextPosZArray)
glabel func_801DE0E4_ovl12
/* 208C44 801DE0E4 26F78E60 */  addiu      $s7, $s7, %lo(D_800E8E60)
.L801DE0E8_ovl9:
/* 208C48 801DE0E8 00008825 */  or         $s1, $zero, $zero
.L801DE0EC_ovl11:
/* 208C4C 801DE0EC 4406C000 */  mfc1       $a2, $f24
.L801DE0F0_ovl15:
/* 208C50 801DE0F0 4407C000 */  mfc1       $a3, $f24
/* 208C54 801DE0F4 24040010 */  addiu      $a0, $zero, 0x10
glabel func_801DE0F8_ovl11
/* 208C58 801DE0F8 0C06B328 */  jal        func_801ACCA0
/* 208C5C 801DE0FC 02202825 */   or        $a1, $s1, $zero
/* 208C60 801DE100 10400034 */  beqz       $v0, .L801DE1D4_ovl15
glabel func_801DE104_ovl17
/* 208C64 801DE104 26310001 */   addiu     $s1, $s1, 0x1
/* 208C68 801DE108 00021880 */  sll        $v1, $v0, 2
/* 208C6C 801DE10C 02E36821 */  addu       $t5, $s7, $v1
.L801DE110_ovl10:
/* 208C70 801DE110 240E0001 */  addiu      $t6, $zero, 0x1
/* 208C74 801DE114 ADAE0000 */  sw         $t6, 0x0($t5)
/* 208C78 801DE118 8FC60000 */  lw         $a2, 0x0($fp)
/* 208C7C 801DE11C 02437821 */  addu       $t7, $s2, $v1
/* 208C80 801DE120 8CD80000 */  lw         $t8, 0x0($a2)
glabel func_801DE124_ovl10
/* 208C84 801DE124 00184080 */  sll        $t0, $t8, 2
/* 208C88 801DE128 0208C821 */  addu       $t9, $s0, $t0
/* 208C8C 801DE12C 8F290000 */  lw         $t1, 0x0($t9)
.L801DE130_ovl13:
/* 208C90 801DE130 00095880 */  sll        $t3, $t1, 2
.L801DE134_ovl9:
/* 208C94 801DE134 024B5021 */  addu       $t2, $s2, $t3
/* 208C98 801DE138 8D4C0000 */  lw         $t4, 0x0($t2)
/* 208C9C 801DE13C 02635821 */  addu       $t3, $s3, $v1
/* 208CA0 801DE140 ADEC0000 */  sw         $t4, 0x0($t7)
/* 208CA4 801DE144 8CCE0000 */  lw         $t6, 0x0($a2)
glabel func_801DE148_ovl13
/* 208CA8 801DE148 000E6880 */  sll        $t5, $t6, 2
.L801DE14C_ovl12:
/* 208CAC 801DE14C 020DC021 */  addu       $t8, $s0, $t5
/* 208CB0 801DE150 8F080000 */  lw         $t0, 0x0($t8)
/* 208CB4 801DE154 0008C880 */  sll        $t9, $t0, 2
/* 208CB8 801DE158 02794821 */  addu       $t1, $s3, $t9
/* 208CBC 801DE15C C5280000 */  lwc1       $f8, 0x0($t1)
.L801DE160_ovl12:
/* 208CC0 801DE160 02834021 */  addu       $t0, $s4, $v1
/* 208CC4 801DE164 E5680000 */  swc1       $f8, 0x0($t3)
/* 208CC8 801DE168 8CCA0000 */  lw         $t2, 0x0($a2)
glabel func_801DE16C_ovl12
/* 208CCC 801DE16C 000A6080 */  sll        $t4, $t2, 2
/* 208CD0 801DE170 020C7821 */  addu       $t7, $s0, $t4
/* 208CD4 801DE174 8DEE0000 */  lw         $t6, 0x0($t7)
/* 208CD8 801DE178 000E6880 */  sll        $t5, $t6, 2
/* 208CDC 801DE17C 028DC021 */  addu       $t8, $s4, $t5
/* 208CE0 801DE180 C70A0000 */  lwc1       $f10, 0x0($t8)
.L801DE184_ovl17:
/* 208CE4 801DE184 02A37021 */  addu       $t6, $s5, $v1
/* 208CE8 801DE188 E50A0000 */  swc1       $f10, 0x0($t0)
/* 208CEC 801DE18C 8CD90000 */  lw         $t9, 0x0($a2)
/* 208CF0 801DE190 00194880 */  sll        $t1, $t9, 2
/* 208CF4 801DE194 02095821 */  addu       $t3, $s0, $t1
/* 208CF8 801DE198 8D6A0000 */  lw         $t2, 0x0($t3)
/* 208CFC 801DE19C 000A6080 */  sll        $t4, $t2, 2
/* 208D00 801DE1A0 02AC7821 */  addu       $t7, $s5, $t4
.L801DE1A4_ovl17:
/* 208D04 801DE1A4 C5F00000 */  lwc1       $f16, 0x0($t7)
/* 208D08 801DE1A8 02C35021 */  addu       $t2, $s6, $v1
/* 208D0C 801DE1AC 46148480 */  add.s      $f18, $f16, $f20
/* 208D10 801DE1B0 E5D20000 */  swc1       $f18, 0x0($t6)
.L801DE1B4_ovl17:
/* 208D14 801DE1B4 8CCD0000 */  lw         $t5, 0x0($a2)
/* 208D18 801DE1B8 000DC080 */  sll        $t8, $t5, 2
/* 208D1C 801DE1BC 02184021 */  addu       $t0, $s0, $t8
/* 208D20 801DE1C0 8D190000 */  lw         $t9, 0x0($t0)
.L801DE1C4_ovl17:
/* 208D24 801DE1C4 00194880 */  sll        $t1, $t9, 2
/* 208D28 801DE1C8 02C95821 */  addu       $t3, $s6, $t1
/* 208D2C 801DE1CC C5640000 */  lwc1       $f4, 0x0($t3)
/* 208D30 801DE1D0 E5440000 */  swc1       $f4, 0x0($t2)
.L801DE1D4_ovl15:
/* 208D34 801DE1D4 24010002 */  addiu      $at, $zero, 0x2
/* 208D38 801DE1D8 5621FFC5 */  bnel       $s1, $at, .L801DE0F0_ovl15
/* 208D3C 801DE1DC 4406C000 */   mfc1      $a2, $f24
.L801DE1E0_ovl17:
/* 208D40 801DE1E0 0C02BC9F */  jal        func_800AF27C
/* 208D44 801DE1E4 00000000 */   nop
/* 208D48 801DE1E8 3C01800D */  lui        $at, %hi(D_800D6B10)
glabel func_801DE1EC_ovl11
/* 208D4C 801DE1EC 0C02BB30 */  jal        func_800AECC0
/* 208D50 801DE1F0 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 208D54 801DE1F4 8FBF005C */  lw         $ra, 0x5C($sp)
/* 208D58 801DE1F8 D7B40018 */  ldc1       $f20, 0x18($sp)
glabel func_801DE1FC_ovl12
/* 208D5C 801DE1FC D7B60020 */  ldc1       $f22, 0x20($sp)
/* 208D60 801DE200 D7B80028 */  ldc1       $f24, 0x28($sp)
.L801DE204_ovl17:
/* 208D64 801DE204 D7BA0030 */  ldc1       $f26, 0x30($sp)
.L801DE208_ovl17:
/* 208D68 801DE208 8FB00038 */  lw         $s0, 0x38($sp)
/* 208D6C 801DE20C 8FB1003C */  lw         $s1, 0x3C($sp)
glabel func_801DE210_ovl14
/* 208D70 801DE210 8FB20040 */  lw         $s2, 0x40($sp)
glabel func_801DE214_ovl17
/* 208D74 801DE214 8FB30044 */  lw         $s3, 0x44($sp)
glabel func_801DE218_ovl14
/* 208D78 801DE218 8FB40048 */  lw         $s4, 0x48($sp)
/* 208D7C 801DE21C 8FB5004C */  lw         $s5, 0x4C($sp)
/* 208D80 801DE220 8FB60050 */  lw         $s6, 0x50($sp)
/* 208D84 801DE224 8FB70054 */  lw         $s7, 0x54($sp)
/* 208D88 801DE228 8FBE0058 */  lw         $fp, 0x58($sp)
/* 208D8C 801DE22C 03E00008 */  jr         $ra
/* 208D90 801DE230 27BD0060 */   addiu     $sp, $sp, 0x60
