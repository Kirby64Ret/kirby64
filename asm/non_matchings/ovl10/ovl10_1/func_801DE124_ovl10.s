glabel func_801DE124_ovl10
/* 1CEE94 801DE124 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 1CEE98 801DE128 AFBF0044 */  sw    $ra, 0x44($sp)
/* 1CEE9C 801DE12C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1CEEA0 801DE130 AFB30040 */  sw    $s3, 0x40($sp)
/* 1CEEA4 801DE134 AFB2003C */  sw    $s2, 0x3c($sp)
/* 1CEEA8 801DE138 AFB10038 */  sw    $s1, 0x38($sp)
/* 1CEEAC 801DE13C AFB00034 */  sw    $s0, 0x34($sp)
/* 1CEEB0 801DE140 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 1CEEB4 801DE144 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 1CEEB8 801DE148 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1CEEBC 801DE14C AFA40048 */  sw    $a0, 0x48($sp)
/* 1CEEC0 801DE150 0C02BB30 */  jal   func_800AECC0_ovl10
/* 1CEEC4 801DE154 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1CEEC8 801DE158 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1CEECC 801DE15C 0C02BB48 */  jal   func_800AED20_ovl10
/* 1CEED0 801DE160 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1CEED4 801DE164 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 1CEED8 801DE168 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 1CEEDC 801DE16C 8E630000 */  lw    $v1, ($s3)
/* 1CEEE0 801DE170 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1CEEE4 801DE174 240E0006 */  li    $t6, 6
/* 1CEEE8 801DE178 8C6F0000 */  lw    $t7, ($v1)
/* 1CEEEC 801DE17C 3C02800E */  lui   $v0, %hi(D_800E1B50) # $v0, 0x800e
/* 1CEEF0 801DE180 24421B50 */  addiu $v0, %lo(D_800E1B50) # addiu $v0, $v0, 0x1b50
/* 1CEEF4 801DE184 000FC080 */  sll   $t8, $t7, 2
/* 1CEEF8 801DE188 00380821 */  addu  $at, $at, $t8
/* 1CEEFC 801DE18C AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 1CEF00 801DE190 8C680000 */  lw    $t0, ($v1)
/* 1CEF04 801DE194 3C19801F */  lui   $t9, %hi(D_801F39F4_ovl10) # $t9, 0x801f
/* 1CEF08 801DE198 273939F4 */  addiu $t9, %lo(D_801F39F4_ovl10) # addiu $t9, $t9, 0x39f4
/* 1CEF0C 801DE19C 00084880 */  sll   $t1, $t0, 2
/* 1CEF10 801DE1A0 00495021 */  addu  $t2, $v0, $t1
/* 1CEF14 801DE1A4 8D4B0000 */  lw    $t3, ($t2)
/* 1CEF18 801DE1A8 3C0C801F */  lui   $t4, %hi(D_801F4094_ovl10) # $t4, 0x801f
/* 1CEF1C 801DE1AC 258C4094 */  addiu $t4, %lo(D_801F4094_ovl10) # addiu $t4, $t4, 0x4094
/* 1CEF20 801DE1B0 AD79008C */  sw    $t9, 0x8c($t3)
/* 1CEF24 801DE1B4 8E6D0000 */  lw    $t5, ($s3)
/* 1CEF28 801DE1B8 8DAF0000 */  lw    $t7, ($t5)
/* 1CEF2C 801DE1BC 000F7080 */  sll   $t6, $t7, 2
/* 1CEF30 801DE1C0 004EC021 */  addu  $t8, $v0, $t6
/* 1CEF34 801DE1C4 8F080000 */  lw    $t0, ($t8)
/* 1CEF38 801DE1C8 0C02CCFD */  jal   func_800B33F4_ovl10
/* 1CEF3C 801DE1CC AD0C0098 */   sw    $t4, 0x98($t0)
/* 1CEF40 801DE1D0 8E690000 */  lw    $t1, ($s3)
/* 1CEF44 801DE1D4 3C10800F */  lui   $s0, %hi(D_800EA360) # $s0, 0x800f
/* 1CEF48 801DE1D8 2610A360 */  addiu $s0, %lo(D_800EA360) # addiu $s0, $s0, -0x5ca0
/* 1CEF4C 801DE1DC 8D2A0000 */  lw    $t2, ($t1)
/* 1CEF50 801DE1E0 000AC880 */  sll   $t9, $t2, 2
/* 1CEF54 801DE1E4 02195821 */  addu  $t3, $s0, $t9
/* 1CEF58 801DE1E8 8D620000 */  lw    $v0, ($t3)
/* 1CEF5C 801DE1EC 10400008 */  beqz  $v0, .L801DE210_ovl10
/* 1CEF60 801DE1F0 00000000 */   nop   
/* 1CEF64 801DE1F4 0C0287CC */  jal   func_800A1F30_ovl10
/* 1CEF68 801DE1F8 00402025 */   move  $a0, $v0
/* 1CEF6C 801DE1FC 8E6D0000 */  lw    $t5, ($s3)
/* 1CEF70 801DE200 8DAF0000 */  lw    $t7, ($t5)
/* 1CEF74 801DE204 000F7080 */  sll   $t6, $t7, 2
/* 1CEF78 801DE208 020EC021 */  addu  $t8, $s0, $t6
/* 1CEF7C 801DE20C AF000000 */  sw    $zero, ($t8)
.L801DE210_ovl10:
/* 1CEF80 801DE210 0C002DAF */  jal   func_8000B6BC
/* 1CEF84 801DE214 2404000A */   li    $a0, 10
/* 1CEF88 801DE218 8E6C0000 */  lw    $t4, ($s3)
/* 1CEF8C 801DE21C 3C0A800F */ lui $t2, %hi(D_800EC120)
/* 1CEF90 801DE220 3C10800F */  lui   $s0, %hi(D_800E98E0) # $s0, 0x800f
/* 1CEF94 801DE224 8D880000 */  lw    $t0, ($t4)
/* 1CEF98 801DE228 261098E0 */  addiu $s0, %lo(D_800E98E0) # addiu $s0, $s0, -0x6720
/* 1CEF9C 801DE22C 00084880 */  sll   $t1, $t0, 2
/* 1CEFA0 801DE230 01495021 */  addu  $t2, $t2, $t1
/* 1CEFA4 801DE234 8D4AC120 */ lw $t2, %lo(D_800EC120)($t2)
/* 1CEFA8 801DE238 000AC880 */  sll   $t9, $t2, 2
/* 1CEFAC 801DE23C 02195821 */  addu  $t3, $s0, $t9
/* 1CEFB0 801DE240 8D6D0000 */  lw    $t5, ($t3)
/* 1CEFB4 801DE244 15A0000E */  bnez  $t5, .L801DE280_ovl10
/* 1CEFB8 801DE248 00000000 */   nop   
.L801DE24C_ovl10:
/* 1CEFBC 801DE24C 0C002DAF */  jal   func_8000B6BC
/* 1CEFC0 801DE250 24040001 */   li    $a0, 1
/* 1CEFC4 801DE254 8E6F0000 */  lw    $t7, ($s3)
/* 1CEFC8 801DE258 3C0C800F */ lui $t4, %hi(D_800EC120)
/* 1CEFCC 801DE25C 8DEE0000 */  lw    $t6, ($t7)
/* 1CEFD0 801DE260 000EC080 */  sll   $t8, $t6, 2
/* 1CEFD4 801DE264 01986021 */  addu  $t4, $t4, $t8
/* 1CEFD8 801DE268 8D8CC120 */ lw $t4, %lo(D_800EC120)($t4)
/* 1CEFDC 801DE26C 000C4080 */  sll   $t0, $t4, 2
/* 1CEFE0 801DE270 02084821 */  addu  $t1, $s0, $t0
/* 1CEFE4 801DE274 8D2A0000 */  lw    $t2, ($t1)
/* 1CEFE8 801DE278 1140FFF4 */  beqz  $t2, .L801DE24C_ovl10
/* 1CEFEC 801DE27C 00000000 */   nop   
.L801DE280_ovl10:
/* 1CEFF0 801DE280 0C029D9E */  jal   func_800A7678
/* 1CEFF4 801DE284 240401DA */   li    $a0, 474
/* 1CEFF8 801DE288 3C040001 */  lui   $a0, (0x000102C3 >> 16) # lui $a0, 1
/* 1CEFFC 801DE28C 0C02A806 */  jal   func_800AA018_ovl10
/* 1CF000 801DE290 348402C3 */   ori   $a0, (0x000102C3 & 0xFFFF) # ori $a0, $a0, 0x2c3
/* 1CF004 801DE294 3C040001 */  lui   $a0, (0x000102C2 >> 16) # lui $a0, 1
/* 1CF008 801DE298 0C02A855 */  jal   func_800AA154_ovl10
/* 1CF00C 801DE29C 348402C2 */   ori   $a0, (0x000102C2 & 0xFFFF) # ori $a0, $a0, 0x2c2
/* 1CF010 801DE2A0 8E790000 */  lw    $t9, ($s3)
/* 1CF014 801DE2A4 3C10800E */  lui   $s0, %hi(D_800E0D50) # $s0, 0x800e
/* 1CF018 801DE2A8 26100D50 */  addiu $s0, %lo(D_800E0D50) # addiu $s0, $s0, 0xd50
/* 1CF01C 801DE2AC 8F220000 */  lw    $v0, ($t9)
/* 1CF020 801DE2B0 00025880 */  sll   $t3, $v0, 2
/* 1CF024 801DE2B4 020B6821 */  addu  $t5, $s0, $t3
/* 1CF028 801DE2B8 8DA50000 */  lw    $a1, ($t5)
/* 1CF02C 801DE2BC 0C03E60A */  jal   func_800F9828_ovl10
/* 1CF030 801DE2C0 00402025 */   move  $a0, $v0
/* 1CF034 801DE2C4 3C01801F */  li    $at, 0x801F0000 # -0.000000
/* 1CF038 801DE2C8 C42449C8 */  lwc1  $f4, %lo(D_801F49C8_ovl10)($at)
/* 1CF03C 801DE2CC 46040032 */  c.eq.s $f0, $f4
/* 1CF040 801DE2D0 00000000 */  nop   
/* 1CF044 801DE2D4 4502000C */  bc1fl .L801DE308_ovl10
/* 1CF048 801DE2D8 44803000 */   mtc1  $zero, $f6
/* 1CF04C 801DE2DC 8E6F0000 */  lw    $t7, ($s3)
/* 1CF050 801DE2E0 8DEE0000 */  lw    $t6, ($t7)
/* 1CF054 801DE2E4 000EC080 */  sll   $t8, $t6, 2
/* 1CF058 801DE2E8 02186021 */  addu  $t4, $s0, $t8
/* 1CF05C 801DE2EC 0C066D82 */  jal   func_8019B608_ovl10
/* 1CF060 801DE2F0 8D840000 */   lw    $a0, ($t4)
/* 1CF064 801DE2F4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1CF068 801DE2F8 4481C000 */  mtc1  $at, $f24
/* 1CF06C 801DE2FC 1000000F */  b     .L801DE33C_ovl10
/* 1CF070 801DE300 46000086 */   mov.s $f2, $f0
/* 1CF074 801DE304 44803000 */  mtc1  $zero, $f6
.L801DE308_ovl10:
/* 1CF078 801DE308 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1CF07C 801DE30C 4600303C */  c.lt.s $f6, $f0
/* 1CF080 801DE310 00000000 */  nop   
/* 1CF084 801DE314 45020006 */  bc1fl .L801DE330_ovl10
/* 1CF088 801DE318 44811000 */   mtc1  $at, $f2
/* 1CF08C 801DE31C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1CF090 801DE320 4481C000 */  mtc1  $at, $f24
/* 1CF094 801DE324 10000005 */  b     .L801DE33C_ovl10
/* 1CF098 801DE328 4600C086 */   mov.s $f2, $f24
/* 1CF09C 801DE32C 44811000 */  mtc1  $at, $f2
.L801DE330_ovl10:
/* 1CF0A0 801DE330 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1CF0A4 801DE334 4481C000 */  mtc1  $at, $f24
/* 1CF0A8 801DE338 00000000 */  nop   
.L801DE33C_ovl10:
/* 1CF0AC 801DE33C 8E680000 */  lw    $t0, ($s3)
/* 1CF0B0 801DE340 3C12800E */  lui   $s2, %hi(D_800E6A10) # $s2, 0x800e
/* 1CF0B4 801DE344 26526A10 */  addiu $s2, %lo(D_800E6A10) # addiu $s2, $s2, 0x6a10
/* 1CF0B8 801DE348 8D090000 */  lw    $t1, ($t0)
/* 1CF0BC 801DE34C 00095080 */  sll   $t2, $t1, 2
/* 1CF0C0 801DE350 024AC821 */  addu  $t9, $s2, $t2
/* 1CF0C4 801DE354 C7280000 */  lwc1  $f8, ($t9)
/* 1CF0C8 801DE358 46081032 */  c.eq.s $f2, $f8
/* 1CF0CC 801DE35C 00000000 */  nop   
/* 1CF0D0 801DE360 45030059 */  bc1tl .L801DE4C8_ovl10
/* 1CF0D4 801DE364 3C040001 */   lui   $a0, 1
/* 1CF0D8 801DE368 44806000 */  mtc1  $zero, $f12
/* 1CF0DC 801DE36C 0C02BB30 */  jal   func_800AECC0_ovl10
/* 1CF0E0 801DE370 00000000 */   nop   
/* 1CF0E4 801DE374 44806000 */  mtc1  $zero, $f12
/* 1CF0E8 801DE378 0C02BB48 */  jal   func_800AED20_ovl10
/* 1CF0EC 801DE37C 00000000 */   nop   
/* 1CF0F0 801DE380 8E6B0000 */  lw    $t3, ($s3)
/* 1CF0F4 801DE384 44805000 */  mtc1  $zero, $f10
/* 1CF0F8 801DE388 3C11800F */  lui   $s1, %hi(D_800E9020) # $s1, 0x800f
/* 1CF0FC 801DE38C 8D6D0000 */  lw    $t5, ($t3)
/* 1CF100 801DE390 26319020 */  addiu $s1, %lo(D_800E9020) # addiu $s1, $s1, -0x6fe0
/* 1CF104 801DE394 3C01801F */  lui   $at, %hi(D_801F49CC_ovl10) # $at, 0x801f
/* 1CF108 801DE398 000D7880 */  sll   $t7, $t5, 2
/* 1CF10C 801DE39C 022F7021 */  addu  $t6, $s1, $t7
/* 1CF110 801DE3A0 E5CA0000 */  swc1  $f10, ($t6)
/* 1CF114 801DE3A4 C43649CC */  lwc1  $f22, %lo(D_801F49CC_ovl10)($at)
/* 1CF118 801DE3A8 3C01801F */  lui   $at, %hi(D_801F49D0_ovl10) # $at, 0x801f
/* 1CF11C 801DE3AC C43449D0 */  lwc1  $f20, %lo(D_801F49D0_ovl10)($at)
/* 1CF120 801DE3B0 00008025 */  move  $s0, $zero
/* 1CF124 801DE3B4 8E780000 */  lw    $t8, ($s3)
.L801DE3B8_ovl10:
/* 1CF128 801DE3B8 8F030000 */  lw    $v1, ($t8)
/* 1CF12C 801DE3BC 00031880 */  sll   $v1, $v1, 2
/* 1CF130 801DE3C0 02436021 */  addu  $t4, $s2, $v1
/* 1CF134 801DE3C4 C5900000 */  lwc1  $f16, ($t4)
/* 1CF138 801DE3C8 02231021 */  addu  $v0, $s1, $v1
/* 1CF13C 801DE3CC 4610C032 */  c.eq.s $f24, $f16
/* 1CF140 801DE3D0 00000000 */  nop   
/* 1CF144 801DE3D4 45020004 */  bc1fl .L801DE3E8_ovl10
/* 1CF148 801DE3D8 4600B006 */   mov.s $f0, $f22
/* 1CF14C 801DE3DC 10000002 */  b     .L801DE3E8_ovl10
/* 1CF150 801DE3E0 4600A006 */   mov.s $f0, $f20
/* 1CF154 801DE3E4 4600B006 */  mov.s $f0, $f22
.L801DE3E8_ovl10:
/* 1CF158 801DE3E8 C4520000 */  lwc1  $f18, ($v0)
/* 1CF15C 801DE3EC 24040001 */  li    $a0, 1
/* 1CF160 801DE3F0 46009100 */  add.s $f4, $f18, $f0
/* 1CF164 801DE3F4 0C002DAF */  jal   func_8000B6BC
/* 1CF168 801DE3F8 E4440000 */   swc1  $f4, ($v0)
/* 1CF16C 801DE3FC 26100001 */  addiu $s0, $s0, 1
/* 1CF170 801DE400 24010005 */  li    $at, 5
/* 1CF174 801DE404 5601FFEC */  bnel  $s0, $at, .L801DE3B8_ovl10
/* 1CF178 801DE408 8E780000 */   lw    $t8, ($s3)
/* 1CF17C 801DE40C 8E630000 */  lw    $v1, ($s3)
/* 1CF180 801DE410 8C680000 */  lw    $t0, ($v1)
/* 1CF184 801DE414 00084880 */  sll   $t1, $t0, 2
/* 1CF188 801DE418 02492021 */  addu  $a0, $s2, $t1
/* 1CF18C 801DE41C C4860000 */  lwc1  $f6, ($a0)
/* 1CF190 801DE420 46003207 */  neg.s $f8, $f6
/* 1CF194 801DE424 E4880000 */  swc1  $f8, ($a0)
/* 1CF198 801DE428 8C6A0000 */  lw    $t2, ($v1)
/* 1CF19C 801DE42C 000AC880 */  sll   $t9, $t2, 2
/* 1CF1A0 801DE430 02391021 */  addu  $v0, $s1, $t9
/* 1CF1A4 801DE434 C44A0000 */  lwc1  $f10, ($v0)
/* 1CF1A8 801DE438 46005407 */  neg.s $f16, $f10
/* 1CF1AC 801DE43C E4500000 */  swc1  $f16, ($v0)
/* 1CF1B0 801DE440 8E6B0000 */  lw    $t3, ($s3)
.L801DE444_ovl10:
/* 1CF1B4 801DE444 8D630000 */  lw    $v1, ($t3)
/* 1CF1B8 801DE448 00031880 */  sll   $v1, $v1, 2
/* 1CF1BC 801DE44C 02436821 */  addu  $t5, $s2, $v1
/* 1CF1C0 801DE450 C5B20000 */  lwc1  $f18, ($t5)
/* 1CF1C4 801DE454 02231021 */  addu  $v0, $s1, $v1
/* 1CF1C8 801DE458 4612C032 */  c.eq.s $f24, $f18
/* 1CF1CC 801DE45C 00000000 */  nop   
/* 1CF1D0 801DE460 45020004 */  bc1fl .L801DE474_ovl10
/* 1CF1D4 801DE464 4600A006 */   mov.s $f0, $f20
/* 1CF1D8 801DE468 10000002 */  b     .L801DE474_ovl10
/* 1CF1DC 801DE46C 4600B006 */   mov.s $f0, $f22
/* 1CF1E0 801DE470 4600A006 */  mov.s $f0, $f20
.L801DE474_ovl10:
/* 1CF1E4 801DE474 C4440000 */  lwc1  $f4, ($v0)
/* 1CF1E8 801DE478 24040001 */  li    $a0, 1
/* 1CF1EC 801DE47C 46002180 */  add.s $f6, $f4, $f0
/* 1CF1F0 801DE480 0C002DAF */  jal   func_8000B6BC
/* 1CF1F4 801DE484 E4460000 */   swc1  $f6, ($v0)
/* 1CF1F8 801DE488 2610FFFF */  addiu $s0, $s0, -1
/* 1CF1FC 801DE48C 5600FFED */  bnezl $s0, .L801DE444_ovl10
/* 1CF200 801DE490 8E6B0000 */   lw    $t3, ($s3)
/* 1CF204 801DE494 8E6F0000 */  lw    $t7, ($s3)
/* 1CF208 801DE498 44804000 */  mtc1  $zero, $f8
/* 1CF20C 801DE49C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1CF210 801DE4A0 8DEE0000 */  lw    $t6, ($t7)
/* 1CF214 801DE4A4 000EC080 */  sll   $t8, $t6, 2
/* 1CF218 801DE4A8 02386021 */  addu  $t4, $s1, $t8
/* 1CF21C 801DE4AC E5880000 */  swc1  $f8, ($t4)
/* 1CF220 801DE4B0 0C02BB30 */  jal   func_800AECC0_ovl10
/* 1CF224 801DE4B4 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1CF228 801DE4B8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1CF22C 801DE4BC 0C02BB48 */  jal   func_800AED20_ovl10
/* 1CF230 801DE4C0 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1CF234 801DE4C4 3C040001 */  lui   $a0, (0x000102C5 >> 16) # lui $a0, 1
.L801DE4C8_ovl10:
/* 1CF238 801DE4C8 0C02A806 */  jal   func_800AA018_ovl10
/* 1CF23C 801DE4CC 348402C5 */   ori   $a0, (0x000102C5 & 0xFFFF) # ori $a0, $a0, 0x2c5
/* 1CF240 801DE4D0 3C040001 */  lui   $a0, (0x000102C4 >> 16) # lui $a0, 1
/* 1CF244 801DE4D4 0C02A806 */  jal   func_800AA018_ovl10
/* 1CF248 801DE4D8 348402C4 */   ori   $a0, (0x000102C4 & 0xFFFF) # ori $a0, $a0, 0x2c4
/* 1CF24C 801DE4DC 0C002DAF */  jal   func_8000B6BC
/* 1CF250 801DE4E0 24040005 */   li    $a0, 5
/* 1CF254 801DE4E4 8E680000 */  lw    $t0, ($s3)
/* 1CF258 801DE4E8 3C07800E */ lui $a3, %hi(D_800E25D0)
/* 1CF25C 801DE4EC 3C01800E */ lui $at, %hi(D_800E2790)
/* 1CF260 801DE4F0 8D030000 */  lw    $v1, ($t0)
/* 1CF264 801DE4F4 24040006 */  li    $a0, 6
/* 1CF268 801DE4F8 24050002 */  li    $a1, 2
/* 1CF26C 801DE4FC 00031880 */  sll   $v1, $v1, 2
/* 1CF270 801DE500 02434821 */  addu  $t1, $s2, $v1
/* 1CF274 801DE504 C52A0000 */  lwc1  $f10, ($t1)
/* 1CF278 801DE508 00E33821 */  addu  $a3, $a3, $v1
/* 1CF27C 801DE50C 00230821 */  addu  $at, $at, $v1
/* 1CF280 801DE510 460AC032 */  c.eq.s $f24, $f10
/* 1CF284 801DE514 2406000E */  li    $a2, 14
/* 1CF288 801DE518 45000003 */  bc1f  .L801DE528_ovl10
/* 1CF28C 801DE51C 00000000 */   nop   
/* 1CF290 801DE520 10000001 */  b     .L801DE528_ovl10
/* 1CF294 801DE524 2406000C */   li    $a2, 12
.L801DE528_ovl10:
/* 1CF298 801DE528 C4302790 */ lwc1 $f16, %lo(D_800E2790)($at)
/* 1CF29C 801DE52C 3C01800E */ lui $at, %hi(D_800E2950)
/* 1CF2A0 801DE530 00230821 */  addu  $at, $at, $v1
/* 1CF2A4 801DE534 C4322950 */ lwc1 $f18, %lo(D_800E2950)($at)
/* 1CF2A8 801DE538 8CE725D0 */ lw $a3, %lo(D_800E25D0)($a3)
/* 1CF2AC 801DE53C E7B00010 */  swc1  $f16, 0x10($sp)
/* 1CF2B0 801DE540 0C029FDD */  jal   func_800A7F74_ovl10
/* 1CF2B4 801DE544 E7B20014 */   swc1  $f18, 0x14($sp)
/* 1CF2B8 801DE548 0C029D9E */  jal   func_800A7678
/* 1CF2BC 801DE54C 240401D8 */   li    $a0, 472
/* 1CF2C0 801DE550 8E790000 */  lw    $t9, ($s3)
/* 1CF2C4 801DE554 3C01800F */ lui $at, %hi(D_800E9FE0)
/* 1CF2C8 801DE558 240A0001 */  li    $t2, 1
/* 1CF2CC 801DE55C 8F2B0000 */  lw    $t3, ($t9)
/* 1CF2D0 801DE560 000B6880 */  sll   $t5, $t3, 2
/* 1CF2D4 801DE564 002D0821 */  addu  $at, $at, $t5
/* 1CF2D8 801DE568 0C02BC9F */  jal   func_800AF27C_ovl10
/* 1CF2DC 801DE56C AC2A9FE0 */ sw $t2, %lo(D_800E9FE0)($at)
/* 1CF2E0 801DE570 3C040001 */  lui   $a0, (0x000102C7 >> 16) # lui $a0, 1
/* 1CF2E4 801DE574 0C02A806 */  jal   func_800AA018_ovl10
/* 1CF2E8 801DE578 348402C7 */   ori   $a0, (0x000102C7 & 0xFFFF) # ori $a0, $a0, 0x2c7
/* 1CF2EC 801DE57C 3C040001 */  lui   $a0, (0x000102C6 >> 16) # lui $a0, 1
/* 1CF2F0 801DE580 0C02A855 */  jal   func_800AA154_ovl10
/* 1CF2F4 801DE584 348402C6 */   ori   $a0, (0x000102C6 & 0xFFFF) # ori $a0, $a0, 0x2c6
/* 1CF2F8 801DE588 8E6E0000 */  lw    $t6, ($s3)
/* 1CF2FC 801DE58C 8FBF0044 */  lw    $ra, 0x44($sp)
/* 1CF300 801DE590 3C01800E */ lui $at, %hi(D_800DDC50)
/* 1CF304 801DE594 8DD80000 */  lw    $t8, ($t6)
/* 1CF308 801DE598 240F0002 */  li    $t7, 2
/* 1CF30C 801DE59C 8FB30040 */  lw    $s3, 0x40($sp)
/* 1CF310 801DE5A0 00186080 */  sll   $t4, $t8, 2
/* 1CF314 801DE5A4 002C0821 */  addu  $at, $at, $t4
/* 1CF318 801DE5A8 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1CF31C 801DE5AC D7B60020 */  ldc1  $f22, 0x20($sp)
/* 1CF320 801DE5B0 D7B80028 */  ldc1  $f24, 0x28($sp)
/* 1CF324 801DE5B4 8FB00034 */  lw    $s0, 0x34($sp)
/* 1CF328 801DE5B8 8FB10038 */  lw    $s1, 0x38($sp)
/* 1CF32C 801DE5BC 8FB2003C */  lw    $s2, 0x3c($sp)
/* 1CF330 801DE5C0 AC2FDC50 */ sw $t7, %lo(D_800DDC50)($at)
/* 1CF334 801DE5C4 03E00008 */  jr    $ra
/* 1CF338 801DE5C8 27BD0048 */   addiu $sp, $sp, 0x48
