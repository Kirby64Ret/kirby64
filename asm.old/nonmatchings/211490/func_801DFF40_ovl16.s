glabel func_801DFF40_ovl16
/* 2161F0 801DFF40 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 2161F4 801DFF44 AFB10034 */  sw         $s1, 0x34($sp)
/* 2161F8 801DFF48 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 2161FC 801DFF4C 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 216200 801DFF50 8E2E0000 */  lw         $t6, 0x0($s1)
/* 216204 801DFF54 AFBF0054 */  sw         $ra, 0x54($sp)
/* 216208 801DFF58 AFBE0050 */  sw         $fp, 0x50($sp)
/* 21620C 801DFF5C AFB7004C */  sw         $s7, 0x4C($sp)
/* 216210 801DFF60 AFB60048 */  sw         $s6, 0x48($sp)
.L801DFF64_ovl12:
/* 216214 801DFF64 AFB50044 */  sw         $s5, 0x44($sp)
/* 216218 801DFF68 AFB40040 */  sw         $s4, 0x40($sp)
/* 21621C 801DFF6C AFB3003C */  sw         $s3, 0x3C($sp)
/* 216220 801DFF70 AFB20038 */  sw         $s2, 0x38($sp)
.L801DFF74_ovl17:
/* 216224 801DFF74 AFB00030 */  sw         $s0, 0x30($sp)
/* 216228 801DFF78 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 21622C 801DFF7C F7B60020 */  sdc1       $f22, 0x20($sp)
/* 216230 801DFF80 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 216234 801DFF84 AFA40078 */  sw         $a0, 0x78($sp)
glabel func_801DFF88_ovl10
/* 216238 801DFF88 8DCF0000 */  lw         $t7, 0x0($t6)
/* 21623C 801DFF8C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 216240 801DFF90 241E0003 */  addiu      $fp, $zero, 0x3
/* 216244 801DFF94 000FC080 */  sll        $t8, $t7, 2
/* 216248 801DFF98 00380821 */  addu       $at, $at, $t8
/* 21624C 801DFF9C AC3EDFD0 */  sw         $fp, %lo(D_800DDFD0)($at)
/* 216250 801DFFA0 0C006291 */  jal        random_soft_s32_range
/* 216254 801DFFA4 24040006 */   addiu     $a0, $zero, 0x6
glabel func_801DFFA8_ovl12
/* 216258 801DFFA8 3C01C0A0 */  lui        $at, (0xC0A00000 >> 16)
/* 21625C 801DFFAC 4481B000 */  mtc1       $at, $f22
/* 216260 801DFFB0 0002C880 */  sll        $t9, $v0, 2
/* 216264 801DFFB4 0322C823 */  subu       $t9, $t9, $v0
/* 216268 801DFFB8 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 21626C 801DFFBC 3C08801F */  lui        $t0, %hi(.L801EF87C_ovl16)
/* 216270 801DFFC0 2508F87C */  addiu      $t0, $t0, %lo(.L801EF87C_ovl16)
/* 216274 801DFFC4 0019C880 */  sll        $t9, $t9, 2
/* 216278 801DFFC8 3C17800E */  lui        $s7, %hi(D_800E3050)
.L801DFFCC_ovl9:
/* 21627C 801DFFCC 3C16801F */  lui        $s6, %hi(D_801EF870_ovl16)
/* 216280 801DFFD0 3C15800E */  lui        $s5, %hi(gEntitiesNextPosXArray)
/* 216284 801DFFD4 3C13800F */  lui        $s3, %hi(D_800E9E20)
glabel func_801DFFD8_ovl14
/* 216288 801DFFD8 4481A000 */  mtc1       $at, $f20
/* 21628C 801DFFDC 4480C000 */  mtc1       $zero, $f24
/* 216290 801DFFE0 26739E20 */  addiu      $s3, $s3, %lo(D_800E9E20)
/* 216294 801DFFE4 26B525D0 */  addiu      $s5, $s5, %lo(gEntitiesNextPosXArray)
/* 216298 801DFFE8 26D6F870 */  addiu      $s6, $s6, %lo(D_801EF870_ovl16)
/* 21629C 801DFFEC 26F73050 */  addiu      $s7, $s7, %lo(D_800E3050)
glabel func_801DFFF0_ovl12
/* 2162A0 801DFFF0 0328A021 */  addu       $s4, $t9, $t0
.L801DFFF4_ovl15:
/* 2162A4 801DFFF4 AFA00058 */  sw         $zero, 0x58($sp)
.L801DFFF8_ovl16:
/* 2162A8 801DFFF8 8E230000 */  lw         $v1, 0x0($s1)
/* 2162AC 801DFFFC 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 2162B0 801E0000 8C690000 */  lw         $t1, 0x0($v1)
/* 2162B4 801E0004 00095080 */  sll        $t2, $t1, 2
/* 2162B8 801E0008 002A0821 */  addu       $at, $at, $t2
.L801E000C_ovl14:
/* 2162BC 801E000C E438A6E0 */  swc1       $f24, %lo(D_800EA6E0)($at)
/* 2162C0 801E0010 8E8C0000 */  lw         $t4, 0x0($s4)
/* 2162C4 801E0014 8C700000 */  lw         $s0, 0x0($v1)
/* 2162C8 801E0018 000C6880 */  sll        $t5, $t4, 2
/* 2162CC 801E001C 00108080 */  sll        $s0, $s0, 2
/* 2162D0 801E0020 02B05821 */  addu       $t3, $s5, $s0
/* 2162D4 801E0024 02CD7021 */  addu       $t6, $s6, $t5
/* 2162D8 801E0028 C5C20000 */  lwc1       $f2, 0x0($t6)
/* 2162DC 801E002C C5600000 */  lwc1       $f0, 0x0($t3)
.L801E0030_ovl15:
/* 2162E0 801E0030 4602003C */  c.lt.s     $f0, $f2
/* 2162E4 801E0034 00000000 */  nop
/* 2162E8 801E0038 45020005 */  bc1fl      .L801E0050_ovl16
.L801E003C_ovl15:
/* 2162EC 801E003C 46020301 */   sub.s     $f12, $f0, $f2
/* 2162F0 801E0040 46020301 */  sub.s      $f12, $f0, $f2
/* 2162F4 801E0044 10000002 */  b          .L801E0050_ovl16
/* 2162F8 801E0048 46006307 */   neg.s     $f12, $f12
/* 2162FC 801E004C 46020301 */  sub.s      $f12, $f0, $f2
.L801E0050_ovl16:
/* 216300 801E0050 460CA03C */  c.lt.s     $f20, $f12
/* 216304 801E0054 00000000 */  nop
glabel func_801E0058_ovl14
/* 216308 801E0058 4500002F */  bc1f       .L801E0118_ovl16
/* 21630C 801E005C 3C040001 */   lui       $a0, (0x10489 >> 16)
.L801E0060_ovl16:
/* 216310 801E0060 0C02A7A9 */  jal        func_800A9EA4
/* 216314 801E0064 34840489 */   ori       $a0, $a0, (0x10489 & 0xFFFF)
.L801E0068_ovl9:
/* 216318 801E0068 3C040001 */  lui        $a0, (0x10488 >> 16)
/* 21631C 801E006C 0C02A7A9 */  jal        func_800A9EA4
/* 216320 801E0070 34840488 */   ori       $a0, $a0, (0x10488 & 0xFFFF)
/* 216324 801E0074 8E2F0000 */  lw         $t7, 0x0($s1)
.L801E0078_ovl11:
/* 216328 801E0078 8E980000 */  lw         $t8, 0x0($s4)
/* 21632C 801E007C 8DF00000 */  lw         $s0, 0x0($t7)
/* 216330 801E0080 0018C880 */  sll        $t9, $t8, 2
/* 216334 801E0084 02D94021 */  addu       $t0, $s6, $t9
.L801E0088_ovl9:
/* 216338 801E0088 00108080 */  sll        $s0, $s0, 2
/* 21633C 801E008C 02B04821 */  addu       $t1, $s5, $s0
/* 216340 801E0090 C5260000 */  lwc1       $f6, 0x0($t1)
/* 216344 801E0094 C5040000 */  lwc1       $f4, 0x0($t0)
/* 216348 801E0098 02F05821 */  addu       $t3, $s7, $s0
/* 21634C 801E009C 02F05021 */  addu       $t2, $s7, $s0
/* 216350 801E00A0 4606203C */  c.lt.s     $f4, $f6
.L801E00A4_ovl11:
/* 216354 801E00A4 00000000 */  nop
.L801E00A8_ovl15:
/* 216358 801E00A8 45020004 */  bc1fl      .L801E00BC_ovl16
.L801E00AC_ovl11:
/* 21635C 801E00AC E5740000 */   swc1      $f20, 0x0($t3)
.L801E00B0_ovl9:
/* 216360 801E00B0 10000002 */  b          .L801E00BC_ovl16
/* 216364 801E00B4 E5560000 */   swc1      $f22, 0x0($t2)
glabel func_801E00B8_ovl11
/* 216368 801E00B8 E5740000 */  swc1       $f20, 0x0($t3)
.L801E00BC_ovl16:
/* 21636C 801E00BC 0C002DAF */  jal        finish_current_thread
/* 216370 801E00C0 24040001 */   addiu     $a0, $zero, 0x1
glabel func_801E00C4_ovl15
/* 216374 801E00C4 8E230000 */  lw         $v1, 0x0($s1)
/* 216378 801E00C8 8E8D0000 */  lw         $t5, 0x0($s4)
/* 21637C 801E00CC 8C700000 */  lw         $s0, 0x0($v1)
/* 216380 801E00D0 000D7080 */  sll        $t6, $t5, 2
/* 216384 801E00D4 02CE7821 */  addu       $t7, $s6, $t6
glabel func_801E00D8_ovl12
/* 216388 801E00D8 00108080 */  sll        $s0, $s0, 2
/* 21638C 801E00DC 02B06021 */  addu       $t4, $s5, $s0
glabel func_801E00E0_ovl14
/* 216390 801E00E0 C5800000 */  lwc1       $f0, 0x0($t4)
.L801E00E4_ovl10:
/* 216394 801E00E4 C5E20000 */  lwc1       $f2, 0x0($t7)
/* 216398 801E00E8 4602003C */  c.lt.s     $f0, $f2
.L801E00EC_ovl17:
/* 21639C 801E00EC 00000000 */  nop
/* 2163A0 801E00F0 45020005 */  bc1fl      .L801E0108_ovl16
/* 2163A4 801E00F4 46020301 */   sub.s     $f12, $f0, $f2
/* 2163A8 801E00F8 46020301 */  sub.s      $f12, $f0, $f2
/* 2163AC 801E00FC 10000002 */  b          .L801E0108_ovl16
/* 2163B0 801E0100 46006307 */   neg.s     $f12, $f12
/* 2163B4 801E0104 46020301 */  sub.s      $f12, $f0, $f2
.L801E0108_ovl16:
/* 2163B8 801E0108 460CA03C */  c.lt.s     $f20, $f12
/* 2163BC 801E010C 00000000 */  nop
/* 2163C0 801E0110 4503FFD3 */  bc1tl      .L801E0060_ovl16
/* 2163C4 801E0114 3C040001 */   lui       $a0, (0x10489 >> 16)
.L801E0118_ovl16:
/* 2163C8 801E0118 3C02800E */  lui        $v0, %hi(D_800E3590)
/* 2163CC 801E011C 24423590 */  addiu      $v0, $v0, %lo(D_800E3590)
/* 2163D0 801E0120 0050C021 */  addu       $t8, $v0, $s0
.L801E0124_ovl14:
/* 2163D4 801E0124 E7180000 */  swc1       $f24, 0x0($t8)
/* 2163D8 801E0128 8C700000 */  lw         $s0, 0x0($v1)
/* 2163DC 801E012C 3C01801F */  lui        $at, %hi(D_801EFEFC_ovl16)
/* 2163E0 801E0130 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
.L801E0134_ovl13:
/* 2163E4 801E0134 00108080 */  sll        $s0, $s0, 2
/* 2163E8 801E0138 0050C821 */  addu       $t9, $v0, $s0
/* 2163EC 801E013C C7280000 */  lwc1       $f8, 0x0($t9)
/* 2163F0 801E0140 02F04021 */  addu       $t0, $s7, $s0
/* 2163F4 801E0144 24040006 */  addiu      $a0, $zero, 0x6
.L801E0148_ovl10:
/* 2163F8 801E0148 E5080000 */  swc1       $f8, 0x0($t0)
/* 2163FC 801E014C 8C690000 */  lw         $t1, 0x0($v1)
/* 216400 801E0150 C42AFEFC */  lwc1       $f10, %lo(D_801EFEFC_ovl16)($at)
.L801E0154_ovl12:
/* 216404 801E0154 3C01800E */  lui        $at, %hi(D_800E3AD0)
/* 216408 801E0158 00095080 */  sll        $t2, $t1, 2
/* 21640C 801E015C 002A0821 */  addu       $at, $at, $t2
.L801E0160_ovl12:
/* 216410 801E0160 E42A3AD0 */  swc1       $f10, %lo(D_800E3AD0)($at)
/* 216414 801E0164 8C6B0000 */  lw         $t3, 0x0($v1)
glabel func_801E0168_ovl14
/* 216418 801E0168 24050002 */  addiu      $a1, $zero, 0x2
glabel func_801E016C_ovl12
/* 21641C 801E016C 24060006 */  addiu      $a2, $zero, 0x6
/* 216420 801E0170 000B6080 */  sll        $t4, $t3, 2
/* 216424 801E0174 01AC6821 */  addu       $t5, $t5, $t4
/* 216428 801E0178 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
/* 21642C 801E017C 0C02A040 */  jal        func_800A8100
.L801E0180_ovl13:
/* 216430 801E0180 8DA70028 */   lw        $a3, 0x28($t5)
.L801E0184_ovl14:
/* 216434 801E0184 0C002DAF */  jal        finish_current_thread
/* 216438 801E0188 2404000D */   addiu     $a0, $zero, 0xD
/* 21643C 801E018C 8E230000 */  lw         $v1, 0x0($s1)
/* 216440 801E0190 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 216444 801E0194 44818000 */  mtc1       $at, $f16
/* 216448 801E0198 8C6E0000 */  lw         $t6, 0x0($v1)
.L801E019C_ovl14:
/* 21644C 801E019C 3C01800F */  lui        $at, %hi(D_800EA6E0)
.L801E01A0_ovl10:
/* 216450 801E01A0 240401AB */  addiu      $a0, $zero, 0x1AB
/* 216454 801E01A4 000E7880 */  sll        $t7, $t6, 2
/* 216458 801E01A8 026FC021 */  addu       $t8, $s3, $t7
.L801E01AC_ovl13:
/* 21645C 801E01AC AF000000 */  sw         $zero, 0x0($t8)
.L801E01B0_ovl13:
/* 216460 801E01B0 8C790000 */  lw         $t9, 0x0($v1)
/* 216464 801E01B4 00194080 */  sll        $t0, $t9, 2
/* 216468 801E01B8 00280821 */  addu       $at, $at, $t0
/* 21646C 801E01BC 0C029D9E */  jal        play_sound
/* 216470 801E01C0 E430A6E0 */   swc1      $f16, %lo(D_800EA6E0)($at)
/* 216474 801E01C4 3C040001 */  lui        $a0, (0x10479 >> 16)
.L801E01C8_ovl11:
/* 216478 801E01C8 0C02A806 */  jal        func_800AA018
/* 21647C 801E01CC 34840479 */   ori       $a0, $a0, (0x10479 & 0xFFFF)
.L801E01D0_ovl10:
/* 216480 801E01D0 3C040001 */  lui        $a0, (0x10478 >> 16)
/* 216484 801E01D4 0C02A855 */  jal        func_800AA154
/* 216488 801E01D8 34840478 */   ori       $a0, $a0, (0x10478 & 0xFFFF)
.L801E01DC_ovl13:
/* 21648C 801E01DC 3C040001 */  lui        $a0, (0x1047B >> 16)
/* 216490 801E01E0 0C02A806 */  jal        func_800AA018
/* 216494 801E01E4 3484047B */   ori       $a0, $a0, (0x1047B & 0xFFFF)
/* 216498 801E01E8 3C040001 */  lui        $a0, (0x1047A >> 16)
/* 21649C 801E01EC 0C02A806 */  jal        func_800AA018
/* 2164A0 801E01F0 3484047A */   ori       $a0, $a0, (0x1047A & 0xFFFF)
/* 2164A4 801E01F4 8E290000 */  lw         $t1, 0x0($s1)
.L801E01F8_ovl13:
/* 2164A8 801E01F8 8D2A0000 */  lw         $t2, 0x0($t1)
/* 2164AC 801E01FC 000A5880 */  sll        $t3, $t2, 2
/* 2164B0 801E0200 026B6021 */  addu       $t4, $s3, $t3
.L801E0204_ovl10:
/* 2164B4 801E0204 8D8D0000 */  lw         $t5, 0x0($t4)
/* 2164B8 801E0208 13CD000A */  beq        $fp, $t5, .L801E0234_ovl16
/* 2164BC 801E020C 00000000 */   nop
.L801E0210_ovl16:
/* 2164C0 801E0210 0C002DAF */  jal        finish_current_thread
/* 2164C4 801E0214 24040001 */   addiu     $a0, $zero, 0x1
.L801E0218_ovl13:
/* 2164C8 801E0218 8E2E0000 */  lw         $t6, 0x0($s1)
/* 2164CC 801E021C 8DCF0000 */  lw         $t7, 0x0($t6)
.L801E0220_ovl11:
/* 2164D0 801E0220 000FC080 */  sll        $t8, $t7, 2
.L801E0224_ovl11:
/* 2164D4 801E0224 0278C821 */  addu       $t9, $s3, $t8
glabel func_801E0228_ovl9
/* 2164D8 801E0228 8F280000 */  lw         $t0, 0x0($t9)
.L801E022C_ovl11:
/* 2164DC 801E022C 17C8FFF8 */  bne        $fp, $t0, .L801E0210_ovl16
.L801E0230_ovl13:
/* 2164E0 801E0230 00000000 */   nop
.L801E0234_ovl16:
/* 2164E4 801E0234 0C002DAF */  jal        finish_current_thread
/* 2164E8 801E0238 2404001E */   addiu     $a0, $zero, 0x1E
/* 2164EC 801E023C 0C029D9E */  jal        play_sound
/* 2164F0 801E0240 240401AA */   addiu     $a0, $zero, 0x1AA
/* 2164F4 801E0244 24040030 */  addiu      $a0, $zero, 0x30
.L801E0248_ovl17:
/* 2164F8 801E0248 0C06B30D */  jal        func_801ACC34_ovl7
glabel func_801E024C_ovl14
/* 2164FC 801E024C 00002825 */   or        $a1, $zero, $zero
.L801E0250_ovl14:
/* 216500 801E0250 00029080 */  sll        $s2, $v0, 2
/* 216504 801E0254 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 216508 801E0258 00320821 */  addu       $at, $at, $s2
glabel func_801E025C_ovl14
/* 21650C 801E025C 24090001 */  addiu      $t1, $zero, 0x1
.L801E0260_ovl13:
/* 216510 801E0260 AC298E60 */  sw         $t1, %lo(D_800E8E60)($at)
/* 216514 801E0264 8E2A0000 */  lw         $t2, 0x0($s1)
/* 216518 801E0268 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
/* 21651C 801E026C 3C03800E */  lui        $v1, %hi(gEntitiesNextPosYArray)
/* 216520 801E0270 8D500000 */  lw         $s0, 0x0($t2)
/* 216524 801E0274 24632790 */  addiu      $v1, $v1, %lo(gEntitiesNextPosYArray)
/* 216528 801E0278 00727021 */  addu       $t6, $v1, $s2
/* 21652C 801E027C 00108080 */  sll        $s0, $s0, 2
/* 216530 801E0280 01705821 */  addu       $t3, $t3, $s0
/* 216534 801E0284 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
/* 216538 801E0288 00706821 */  addu       $t5, $v1, $s0
glabel func_801E028C_ovl11
/* 21653C 801E028C C5A40000 */  lwc1       $f4, 0x0($t5)
.L801E0290_ovl10:
/* 216540 801E0290 8D6C0014 */  lw         $t4, 0x14($t3)
/* 216544 801E0294 24040030 */  addiu      $a0, $zero, 0x30
glabel func_801E0298_ovl12
/* 216548 801E0298 24050002 */  addiu      $a1, $zero, 0x2
.L801E029C_ovl15:
/* 21654C 801E029C C5920020 */  lwc1       $f18, 0x20($t4)
/* 216550 801E02A0 46049180 */  add.s      $f6, $f18, $f4
/* 216554 801E02A4 0C06B30D */  jal        func_801ACC34_ovl7
.L801E02A8_ovl10:
/* 216558 801E02A8 E5C60000 */   swc1      $f6, 0x0($t6)
/* 21655C 801E02AC 00029080 */  sll        $s2, $v0, 2
/* 216560 801E02B0 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 216564 801E02B4 00320821 */  addu       $at, $at, $s2
/* 216568 801E02B8 240F0001 */  addiu      $t7, $zero, 0x1
/* 21656C 801E02BC AC2F8E60 */  sw         $t7, %lo(D_800E8E60)($at)
/* 216570 801E02C0 8E230000 */  lw         $v1, 0x0($s1)
/* 216574 801E02C4 3C18800E */  lui        $t8, %hi(D_800DFBD0)
/* 216578 801E02C8 3C08800E */  lui        $t0, %hi(gEntitiesNextPosYArray)
.L801E02CC_ovl15:
/* 21657C 801E02CC 8C700000 */  lw         $s0, 0x0($v1)
/* 216580 801E02D0 25082790 */  addiu      $t0, $t0, %lo(gEntitiesNextPosYArray)
.L801E02D4_ovl10:
/* 216584 801E02D4 02485021 */  addu       $t2, $s2, $t0
/* 216588 801E02D8 00108080 */  sll        $s0, $s0, 2
/* 21658C 801E02DC 0310C021 */  addu       $t8, $t8, $s0
/* 216590 801E02E0 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
/* 216594 801E02E4 02084821 */  addu       $t1, $s0, $t0
.L801E02E8_ovl10:
/* 216598 801E02E8 C52A0000 */  lwc1       $f10, 0x0($t1)
/* 21659C 801E02EC 8F190024 */  lw         $t9, 0x24($t8)
/* 2165A0 801E02F0 3C01C120 */  lui        $at, (0xC1200000 >> 16)
.L801E02F4_ovl13:
/* 2165A4 801E02F4 44819000 */  mtc1       $at, $f18
/* 2165A8 801E02F8 C7280020 */  lwc1       $f8, 0x20($t9)
/* 2165AC 801E02FC 3C01800F */  lui        $at, %hi(D_800EA6E0)
.L801E0300_ovl10:
/* 2165B0 801E0300 460A4400 */  add.s      $f16, $f8, $f10
/* 2165B4 801E0304 E5500000 */  swc1       $f16, 0x0($t2)
/* 2165B8 801E0308 8C6B0000 */  lw         $t3, 0x0($v1)
/* 2165BC 801E030C 000B6080 */  sll        $t4, $t3, 2
/* 2165C0 801E0310 002C0821 */  addu       $at, $at, $t4
/* 2165C4 801E0314 E432A6E0 */  swc1       $f18, %lo(D_800EA6E0)($at)
/* 2165C8 801E0318 8C700000 */  lw         $s0, 0x0($v1)
/* 2165CC 801E031C 00108080 */  sll        $s0, $s0, 2
/* 2165D0 801E0320 02706821 */  addu       $t5, $s3, $s0
/* 2165D4 801E0324 8DAE0000 */  lw         $t6, 0x0($t5)
.L801E0328_ovl13:
/* 2165D8 801E0328 11C0000A */  beqz       $t6, .L801E0354_ovl16
.L801E032C_ovl10:
/* 2165DC 801E032C 00000000 */   nop
.L801E0330_ovl16:
/* 2165E0 801E0330 0C002DAF */  jal        finish_current_thread
/* 2165E4 801E0334 24040001 */   addiu     $a0, $zero, 0x1
/* 2165E8 801E0338 8E2F0000 */  lw         $t7, 0x0($s1)
/* 2165EC 801E033C 8DF00000 */  lw         $s0, 0x0($t7)
.L801E0340_ovl10:
/* 2165F0 801E0340 00108080 */  sll        $s0, $s0, 2
/* 2165F4 801E0344 0270C021 */  addu       $t8, $s3, $s0
/* 2165F8 801E0348 8F190000 */  lw         $t9, 0x0($t8)
/* 2165FC 801E034C 1720FFF8 */  bnez       $t9, .L801E0330_ovl16
/* 216600 801E0350 00000000 */   nop
.L801E0354_ovl16:
/* 216604 801E0354 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 216608 801E0358 00300821 */  addu       $at, $at, $s0
.L801E035C_ovl10:
/* 21660C 801E035C 0C02BC9F */  jal        func_800AF27C
/* 216610 801E0360 E438A6E0 */   swc1      $f24, %lo(D_800EA6E0)($at)
/* 216614 801E0364 3C040001 */  lui        $a0, (0x1047D >> 16)
/* 216618 801E0368 0C02A806 */  jal        func_800AA018
/* 21661C 801E036C 3484047D */   ori       $a0, $a0, (0x1047D & 0xFFFF)
.L801E0370_ovl10:
/* 216620 801E0370 3C040001 */  lui        $a0, (0x1047C >> 16)
/* 216624 801E0374 0C02A855 */  jal        func_800AA154
.L801E0378_ovl11:
/* 216628 801E0378 3484047C */   ori       $a0, $a0, (0x1047C & 0xFFFF)
/* 21662C 801E037C 8FA90058 */  lw         $t1, 0x58($sp)
glabel func_801E0380_ovl15
/* 216630 801E0380 2401000C */  addiu      $at, $zero, 0xC
/* 216634 801E0384 26940004 */  addiu      $s4, $s4, 0x4
/* 216638 801E0388 25280004 */  addiu      $t0, $t1, 0x4
.L801E038C_ovl10:
/* 21663C 801E038C 1501FF1A */  bne        $t0, $at, .L801DFFF8_ovl16
/* 216640 801E0390 AFA80058 */   sw        $t0, 0x58($sp)
/* 216644 801E0394 8E2B0000 */  lw         $t3, 0x0($s1)
.L801E0398_ovl10:
/* 216648 801E0398 8FBF0054 */  lw         $ra, 0x54($sp)
/* 21664C 801E039C 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
.L801E03A0_ovl9:
/* 216650 801E03A0 8D6C0000 */  lw         $t4, 0x0($t3)
glabel func_801E03A4_ovl12
/* 216654 801E03A4 240A0007 */  addiu      $t2, $zero, 0x7
/* 216658 801E03A8 8FB10034 */  lw         $s1, 0x34($sp)
/* 21665C 801E03AC 000C6880 */  sll        $t5, $t4, 2
glabel func_801E03B0_ovl12
/* 216660 801E03B0 002D0821 */  addu       $at, $at, $t5
/* 216664 801E03B4 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 216668 801E03B8 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 21666C 801E03BC D7B80028 */  ldc1       $f24, 0x28($sp)
/* 216670 801E03C0 8FB00030 */  lw         $s0, 0x30($sp)
/* 216674 801E03C4 8FB20038 */  lw         $s2, 0x38($sp)
.L801E03C8_ovl17:
/* 216678 801E03C8 8FB3003C */  lw         $s3, 0x3C($sp)
glabel func_801E03CC_ovl17
/* 21667C 801E03CC 8FB40040 */  lw         $s4, 0x40($sp)
/* 216680 801E03D0 8FB50044 */  lw         $s5, 0x44($sp)
/* 216684 801E03D4 8FB60048 */  lw         $s6, 0x48($sp)
/* 216688 801E03D8 8FB7004C */  lw         $s7, 0x4C($sp)
/* 21668C 801E03DC 8FBE0050 */  lw         $fp, 0x50($sp)
glabel func_801E03E0_ovl14
/* 216690 801E03E0 AC2ADC50 */  sw         $t2, %lo(gEntityVtableIndexArray)($at)
glabel func_801E03E4_ovl9
/* 216694 801E03E4 03E00008 */  jr         $ra
glabel func_801E03E8_ovl14
/* 216698 801E03E8 27BD0078 */   addiu     $sp, $sp, 0x78
