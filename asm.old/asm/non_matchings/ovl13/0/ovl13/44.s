glabel func_801E3028_ovl13 # 44
/* 1FAFA8 801E3028 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 1FAFAC 801E302C AFB20038 */  sw          $s2, 0x38($sp)
/* 1FAFB0 801E3030 3C128005 */  lui         $s2, %hi(D_8004A7C4)
/* 1FAFB4 801E3034 2652A7C4 */  addiu       $s2, $s2, %lo(D_8004A7C4)
/* 1FAFB8 801E3038 8E4E0000 */  lw          $t6, 0x0($s2)
/* 1FAFBC 801E303C AFBF003C */  sw          $ra, 0x3C($sp)
/* 1FAFC0 801E3040 AFB10034 */  sw          $s1, 0x34($sp)
/* 1FAFC4 801E3044 AFB00030 */  sw          $s0, 0x30($sp)
/* 1FAFC8 801E3048 F7B60028 */  sdc1        $f22, 0x28($sp)
/* 1FAFCC 801E304C F7B40020 */  sdc1        $f20, 0x20($sp)
/* 1FAFD0 801E3050 AFA40040 */  sw          $a0, 0x40($sp)
/* 1FAFD4 801E3054 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1FAFD8 801E3058 3C10800E */  lui         $s0, %hi(D_800E1B50)
/* 1FAFDC 801E305C 4480B000 */  mtc1        $zero, $f22
/* 1FAFE0 801E3060 26101B50 */  addiu       $s0, $s0, %lo(D_800E1B50)
/* 1FAFE4 801E3064 000FC080 */  sll         $t8, $t7, 2
/* 1FAFE8 801E3068 0218C821 */  addu        $t9, $s0, $t8
/* 1FAFEC 801E306C 8F310000 */  lw          $s1, 0x0($t9)
/* 1FAFF0 801E3070 0C02BB48 */  jal         func_800AED20
/* 1FAFF4 801E3074 4600B306 */   mov.s      $f12, $f22
/* 1FAFF8 801E3078 3C01800D */  lui         $at, %hi(D_800D6B10)
/* 1FAFFC 801E307C 0C02BB30 */  jal         func_800AECC0
/* 1FB000 801E3080 C42C6B10 */   lwc1       $f12, %lo(D_800D6B10)($at)
/* 1FB004 801E3084 8E430000 */  lw          $v1, 0x0($s2)
/* 1FB008 801E3088 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1FB00C 801E308C 2408000C */  addiu       $t0, $zero, 0xC
/* 1FB010 801E3090 8C690000 */  lw          $t1, 0x0($v1)
/* 1FB014 801E3094 3C0B801E */  lui         $t3, %hi(D_801D93F0)
/* 1FB018 801E3098 256B93F0 */  addiu       $t3, $t3, %lo(D_801D93F0)
/* 1FB01C 801E309C 00095080 */  sll         $t2, $t1, 2
/* 1FB020 801E30A0 002A0821 */  addu        $at, $at, $t2
/* 1FB024 801E30A4 AC28DFD0 */  sw          $t0, %lo(D_800DDFD0)($at)
/* 1FB028 801E30A8 8C6C0000 */  lw          $t4, 0x0($v1)
/* 1FB02C 801E30AC 3C04801E */  lui         $a0, %hi(D_801DAB04)
/* 1FB030 801E30B0 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1FB034 801E30B4 000C6880 */  sll         $t5, $t4, 2
/* 1FB038 801E30B8 020D7021 */  addu        $t6, $s0, $t5
/* 1FB03C 801E30BC 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1FB040 801E30C0 2484AB04 */  addiu       $a0, $a0, %lo(D_801DAB04)
/* 1FB044 801E30C4 ADEB008C */  sw          $t3, 0x8C($t7)
/* 1FB048 801E30C8 8E580000 */  lw          $t8, 0x0($s2)
/* 1FB04C 801E30CC 8F190000 */  lw          $t9, 0x0($t8)
/* 1FB050 801E30D0 00194880 */  sll         $t1, $t9, 2
/* 1FB054 801E30D4 00290821 */  addu        $at, $at, $t1
/* 1FB058 801E30D8 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1FB05C 801E30DC AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1FB060 801E30E0 8E4A0000 */  lw          $t2, 0x0($s2)
/* 1FB064 801E30E4 3C08801E */  lui         $t0, %hi(D_801DAE1C)
/* 1FB068 801E30E8 2508AE1C */  addiu       $t0, $t0, %lo(D_801DAE1C)
/* 1FB06C 801E30EC 8D4C0000 */  lw          $t4, 0x0($t2)
/* 1FB070 801E30F0 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1FB074 801E30F4 3C04800E */  lui         $a0, %hi(D_800E3910)
/* 1FB078 801E30F8 000C6880 */  sll         $t5, $t4, 2
/* 1FB07C 801E30FC 020D7021 */  addu        $t6, $s0, $t5
/* 1FB080 801E3100 8DCB0000 */  lw          $t3, 0x0($t6)
/* 1FB084 801E3104 24843910 */  addiu       $a0, $a0, %lo(D_800E3910)
/* 1FB088 801E3108 3C05800E */  lui         $a1, %hi(D_800E3590)
/* 1FB08C 801E310C AD680098 */  sw          $t0, 0x98($t3)
/* 1FB090 801E3110 8E430000 */  lw          $v1, 0x0($s2)
/* 1FB094 801E3114 24A53590 */  addiu       $a1, $a1, %lo(D_800E3590)
/* 1FB098 801E3118 3C06800E */  lui         $a2, %hi(D_800E3E50)
/* 1FB09C 801E311C 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1FB0A0 801E3120 24C63E50 */  addiu       $a2, $a2, %lo(D_800E3E50)
/* 1FB0A4 801E3124 44804000 */  mtc1        $zero, $f8
/* 1FB0A8 801E3128 000FC080 */  sll         $t8, $t7, 2
/* 1FB0AC 801E312C 00380821 */  addu        $at, $at, $t8
/* 1FB0B0 801E3130 AC208920 */  sw          $zero, %lo(D_800E8920)($at)
/* 1FB0B4 801E3134 8C790000 */  lw          $t9, 0x0($v1)
/* 1FB0B8 801E3138 3C01800E */  lui         $at, %hi(D_800E33D0)
/* 1FB0BC 801E313C 00194880 */  sll         $t1, $t9, 2
/* 1FB0C0 801E3140 00895021 */  addu        $t2, $a0, $t1
/* 1FB0C4 801E3144 E5560000 */  swc1        $f22, 0x0($t2)
/* 1FB0C8 801E3148 8C620000 */  lw          $v0, 0x0($v1)
/* 1FB0CC 801E314C 00021080 */  sll         $v0, $v0, 2
/* 1FB0D0 801E3150 00826021 */  addu        $t4, $a0, $v0
/* 1FB0D4 801E3154 C5800000 */  lwc1        $f0, 0x0($t4)
/* 1FB0D8 801E3158 00A26821 */  addu        $t5, $a1, $v0
/* 1FB0DC 801E315C E5A00000 */  swc1        $f0, 0x0($t5)
/* 1FB0E0 801E3160 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1FB0E4 801E3164 000E4080 */  sll         $t0, $t6, 2
/* 1FB0E8 801E3168 00280821 */  addu        $at, $at, $t0
/* 1FB0EC 801E316C E42033D0 */  swc1        $f0, %lo(D_800E33D0)($at)
/* 1FB0F0 801E3170 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1FB0F4 801E3174 3C01800E */  lui         $at, %hi(D_800E3050)
/* 1FB0F8 801E3178 000B7880 */  sll         $t7, $t3, 2
/* 1FB0FC 801E317C 002F0821 */  addu        $at, $at, $t7
/* 1FB100 801E3180 E4203050 */  swc1        $f0, %lo(D_800E3050)($at)
/* 1FB104 801E3184 8C780000 */  lw          $t8, 0x0($v1)
/* 1FB108 801E3188 3C01801E */  lui         $at, %hi(D_801E5DD8_ovl13)
/* 1FB10C 801E318C C4245DD8 */  lwc1        $f4, %lo(D_801E5DD8_ovl13)($at)
/* 1FB110 801E3190 0018C880 */  sll         $t9, $t8, 2
/* 1FB114 801E3194 00D94821 */  addu        $t1, $a2, $t9
/* 1FB118 801E3198 E5240000 */  swc1        $f4, 0x0($t1)
/* 1FB11C 801E319C 8C620000 */  lw          $v0, 0x0($v1)
/* 1FB120 801E31A0 3C01800E */  lui         $at, %hi(D_800E3AD0)
/* 1FB124 801E31A4 00021080 */  sll         $v0, $v0, 2
/* 1FB128 801E31A8 00C25021 */  addu        $t2, $a2, $v0
/* 1FB12C 801E31AC C5460000 */  lwc1        $f6, 0x0($t2)
/* 1FB130 801E31B0 00220821 */  addu        $at, $at, $v0
/* 1FB134 801E31B4 E4263AD0 */  swc1        $f6, %lo(D_800E3AD0)($at)
/* 1FB138 801E31B8 8C6C0000 */  lw          $t4, 0x0($v1)
/* 1FB13C 801E31BC 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1FB140 801E31C0 000C6880 */  sll         $t5, $t4, 2
/* 1FB144 801E31C4 002D0821 */  addu        $at, $at, $t5
/* 1FB148 801E31C8 E4366690 */  swc1        $f22, %lo(D_800E6690)($at)
/* 1FB14C 801E31CC 8C620000 */  lw          $v0, 0x0($v1)
/* 1FB150 801E31D0 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1FB154 801E31D4 00021080 */  sll         $v0, $v0, 2
/* 1FB158 801E31D8 00220821 */  addu        $at, $at, $v0
/* 1FB15C 801E31DC C4206690 */  lwc1        $f0, %lo(D_800E6690)($at)
/* 1FB160 801E31E0 00827021 */  addu        $t6, $a0, $v0
/* 1FB164 801E31E4 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1FB168 801E31E8 E5C00000 */  swc1        $f0, 0x0($t6)
/* 1FB16C 801E31EC 8C680000 */  lw          $t0, 0x0($v1)
/* 1FB170 801E31F0 00085880 */  sll         $t3, $t0, 2
/* 1FB174 801E31F4 002B0821 */  addu        $at, $at, $t3
/* 1FB178 801E31F8 E4203750 */  swc1        $f0, %lo(D_800E3750)($at)
/* 1FB17C 801E31FC 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1FB180 801E3200 3C01800D */  lui         $at, %hi(D_800D6E5C)
/* 1FB184 801E3204 000FC080 */  sll         $t8, $t7, 2
/* 1FB188 801E3208 00B8C821 */  addu        $t9, $a1, $t8
/* 1FB18C 801E320C E7200000 */  swc1        $f0, 0x0($t9)
/* 1FB190 801E3210 C42A6E5C */  lwc1        $f10, %lo(D_800D6E5C)($at)
/* 1FB194 801E3214 460A4032 */  c.eq.s      $f8, $f10
/* 1FB198 801E3218 00000000 */  nop
/* 1FB19C 801E321C 45010007 */  bc1t        L801E323C_ovl13
/* 1FB1A0 801E3220 00000000 */   nop
/* 1FB1A4 801E3224 8C690000 */  lw          $t1, 0x0($v1)
/* 1FB1A8 801E3228 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 1FB1AC 801E322C 00095080 */  sll         $t2, $t1, 2
/* 1FB1B0 801E3230 002A0821 */  addu        $at, $at, $t2
/* 1FB1B4 801E3234 0C02F047 */  jal         func_800BC11C
/* 1FB1B8 801E3238 C42C7B20 */   lwc1       $f12, %lo(D_800E7B20)($at)
glabel L801E323C_ovl13
/* 1FB1BC 801E323C 3C0C800D */  lui         $t4, %hi(D_800D6B54)
/* 1FB1C0 801E3240 8D8C6B54 */  lw          $t4, %lo(D_800D6B54)($t4)
/* 1FB1C4 801E3244 15800003 */  bnez        $t4, L801E3254_ovl13
/* 1FB1C8 801E3248 00000000 */   nop
/* 1FB1CC 801E324C 0C067C7B */  jal         func_8019F1EC_ovl7
/* 1FB1D0 801E3250 00000000 */   nop
glabel L801E3254_ovl13
/* 1FB1D4 801E3254 0C029D9E */  jal         play_sound
/* 1FB1D8 801E3258 240401E6 */   addiu      $a0, $zero, 0x1E6
/* 1FB1DC 801E325C 24040003 */  addiu       $a0, $zero, 0x3
/* 1FB1E0 801E3260 0C02ED1A */  jal         func_800BB468
/* 1FB1E4 801E3264 00002825 */   move       $a1, $zero
/* 1FB1E8 801E3268 8E2D0088 */  lw          $t5, 0x88($s1)
/* 1FB1EC 801E326C 4406B000 */  mfc1        $a2, $f22
/* 1FB1F0 801E3270 00002025 */  move        $a0, $zero
/* 1FB1F4 801E3274 8DAE0010 */  lw          $t6, 0x10($t5)
/* 1FB1F8 801E3278 24050002 */  addiu       $a1, $zero, 0x2
/* 1FB1FC 801E327C 8DC70000 */  lw          $a3, 0x0($t6)
/* 1FB200 801E3280 0C03F55C */  jal         func_800FD570
/* 1FB204 801E3284 E7B60010 */   swc1       $f22, 0x10($sp)
/* 1FB208 801E3288 8E280088 */  lw          $t0, 0x88($s1)
/* 1FB20C 801E328C 4406B000 */  mfc1        $a2, $f22
/* 1FB210 801E3290 00002025 */  move        $a0, $zero
/* 1FB214 801E3294 8D0B0010 */  lw          $t3, 0x10($t0)
/* 1FB218 801E3298 24050004 */  addiu       $a1, $zero, 0x4
/* 1FB21C 801E329C 8D670000 */  lw          $a3, 0x0($t3)
/* 1FB220 801E32A0 0C03F55C */  jal         func_800FD570
/* 1FB224 801E32A4 E7B60010 */   swc1       $f22, 0x10($sp)
/* 1FB228 801E32A8 8E430000 */  lw          $v1, 0x0($s2)
/* 1FB22C 801E32AC 3C01801E */  lui         $at, %hi(D_801E5DDC_ovl13)
/* 1FB230 801E32B0 C4205DDC */  lwc1        $f0, %lo(D_801E5DDC_ovl13)($at)
/* 1FB234 801E32B4 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1FB238 801E32B8 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1FB23C 801E32BC 000FC080 */  sll         $t8, $t7, 2
/* 1FB240 801E32C0 00380821 */  addu        $at, $at, $t8
/* 1FB244 801E32C4 E420AC20 */  swc1        $f0, %lo(D_800EAC20)($at)
/* 1FB248 801E32C8 8C790000 */  lw          $t9, 0x0($v1)
/* 1FB24C 801E32CC 3C01800F */  lui         $at, %hi(D_800EAFA0)
/* 1FB250 801E32D0 00194880 */  sll         $t1, $t9, 2
/* 1FB254 801E32D4 00290821 */  addu        $at, $at, $t1
/* 1FB258 801E32D8 E420AFA0 */  swc1        $f0, %lo(D_800EAFA0)($at)
/* 1FB25C 801E32DC 3C01800D */  lui         $at, %hi(D_800D6B10)
/* 1FB260 801E32E0 C4306B10 */  lwc1        $f16, %lo(D_800D6B10)($at)
/* 1FB264 801E32E4 3C013F00 */  lui         $at, (0x3F000000 >> 16)
/* 1FB268 801E32E8 44819000 */  mtc1        $at, $f18
/* 1FB26C 801E32EC 00000000 */  nop
/* 1FB270 801E32F0 46128302 */  mul.s       $f12, $f16, $f18
/* 1FB274 801E32F4 0C02BB30 */  jal         func_800AECC0
/* 1FB278 801E32F8 00000000 */   nop
/* 1FB27C 801E32FC 3C040001 */  lui         $a0, (0x10427 >> 16)
/* 1FB280 801E3300 0C02A806 */  jal         func_800AA018
/* 1FB284 801E3304 34840427 */   ori        $a0, $a0, (0x10427 & 0xFFFF)
/* 1FB288 801E3308 8E430000 */  lw          $v1, 0x0($s2)
/* 1FB28C 801E330C 3C01801E */  lui         $at, %hi(D_801E5DE0_ovl13)
/* 1FB290 801E3310 C4245DE0 */  lwc1        $f4, %lo(D_801E5DE0_ovl13)($at)
/* 1FB294 801E3314 8C6A0000 */  lw          $t2, 0x0($v1)
/* 1FB298 801E3318 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1FB29C 801E331C 8FA40040 */  lw          $a0, 0x40($sp)
/* 1FB2A0 801E3320 000A6080 */  sll         $t4, $t2, 2
/* 1FB2A4 801E3324 002C0821 */  addu        $at, $at, $t4
/* 1FB2A8 801E3328 E4243750 */  swc1        $f4, %lo(D_800E3750)($at)
/* 1FB2AC 801E332C 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1FB2B0 801E3330 3C0140C0 */  lui         $at, (0x40C00000 >> 16)
/* 1FB2B4 801E3334 44813000 */  mtc1        $at, $f6
/* 1FB2B8 801E3338 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1FB2BC 801E333C 000D7080 */  sll         $t6, $t5, 2
/* 1FB2C0 801E3340 002E0821 */  addu        $at, $at, $t6
/* 1FB2C4 801E3344 0C078DFA */  jal         func_801E37E8_ovl13
/* 1FB2C8 801E3348 E4263C90 */   swc1       $f6, %lo(D_800E3C90)($at)
/* 1FB2CC 801E334C 8E430000 */  lw          $v1, 0x0($s2)
/* 1FB2D0 801E3350 3C10800D */  lui         $s0, %hi(D_800D7118)
/* 1FB2D4 801E3354 26107118 */  addiu       $s0, $s0, %lo(D_800D7118)
/* 1FB2D8 801E3358 AE00003C */  sw          $zero, 0x3C($s0)
/* 1FB2DC 801E335C 8C680000 */  lw          $t0, 0x0($v1)
/* 1FB2E0 801E3360 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 1FB2E4 801E3364 24040002 */  addiu       $a0, $zero, 0x2
/* 1FB2E8 801E3368 00085880 */  sll         $t3, $t0, 2
/* 1FB2EC 801E336C 002B0821 */  addu        $at, $at, $t3
/* 1FB2F0 801E3370 E4367B20 */  swc1        $f22, %lo(D_800E7B20)($at)
/* 1FB2F4 801E3374 8C620000 */  lw          $v0, 0x0($v1)
/* 1FB2F8 801E3378 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1FB2FC 801E337C 00021080 */  sll         $v0, $v0, 2
/* 1FB300 801E3380 00220821 */  addu        $at, $at, $v0
/* 1FB304 801E3384 C42864D0 */  lwc1        $f8, %lo(D_800E64D0)($at)
/* 1FB308 801E3388 3C01801E */  lui         $at, %hi(D_801E5DE4_ovl13)
/* 1FB30C 801E338C C42A5DE4 */  lwc1        $f10, %lo(D_801E5DE4_ovl13)($at)
/* 1FB310 801E3390 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1FB314 801E3394 00220821 */  addu        $at, $at, $v0
/* 1FB318 801E3398 460A4402 */  mul.s       $f16, $f8, $f10
/* 1FB31C 801E339C 0C002DAF */  jal         finish_current_thread
/* 1FB320 801E33A0 E4306690 */   swc1       $f16, %lo(D_800E6690)($at)
/* 1FB324 801E33A4 0C078DFA */  jal         func_801E37E8_ovl13
/* 1FB328 801E33A8 8FA40040 */   lw         $a0, 0x40($sp)
/* 1FB32C 801E33AC AE00003C */  sw          $zero, 0x3C($s0)
/* 1FB330 801E33B0 0C002DAF */  jal         finish_current_thread
/* 1FB334 801E33B4 24040012 */   addiu      $a0, $zero, 0x12
/* 1FB338 801E33B8 8E430000 */  lw          $v1, 0x0($s2)
/* 1FB33C 801E33BC 3C01438C */  lui         $at, (0x438C0000 >> 16)
/* 1FB340 801E33C0 4481A000 */  mtc1        $at, $f20
/* 1FB344 801E33C4 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1FB348 801E33C8 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1FB34C 801E33CC 3C11800F */  lui         $s1, %hi(D_800EBBE0)
/* 1FB350 801E33D0 000FC080 */  sll         $t8, $t7, 2
/* 1FB354 801E33D4 00380821 */  addu        $at, $at, $t8
/* 1FB358 801E33D8 E4366690 */  swc1        $f22, %lo(D_800E6690)($at)
/* 1FB35C 801E33DC 8C620000 */  lw          $v0, 0x0($v1)
/* 1FB360 801E33E0 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1FB364 801E33E4 2631BBE0 */  addiu       $s1, $s1, %lo(D_800EBBE0)
/* 1FB368 801E33E8 00021080 */  sll         $v0, $v0, 2
/* 1FB36C 801E33EC 00220821 */  addu        $at, $at, $v0
/* 1FB370 801E33F0 C4326690 */  lwc1        $f18, %lo(D_800E6690)($at)
/* 1FB374 801E33F4 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1FB378 801E33F8 00220821 */  addu        $at, $at, $v0
/* 1FB37C 801E33FC E43264D0 */  swc1        $f18, %lo(D_800E64D0)($at)
/* 1FB380 801E3400 8C790000 */  lw          $t9, 0x0($v1)
/* 1FB384 801E3404 3C01801E */  lui         $at, %hi(D_801E5DE8_ovl13)
/* 1FB388 801E3408 C4245DE8 */  lwc1        $f4, %lo(D_801E5DE8_ovl13)($at)
/* 1FB38C 801E340C 3C01800E */  lui         $at, %hi(D_800E6850)
/* 1FB390 801E3410 00194880 */  sll         $t1, $t9, 2
/* 1FB394 801E3414 00290821 */  addu        $at, $at, $t1
/* 1FB398 801E3418 E4246850 */  swc1        $f4, %lo(D_800E6850)($at)
/* 1FB39C 801E341C 8C620000 */  lw          $v0, 0x0($v1)
/* 1FB3A0 801E3420 3C10800E */  lui         $s0, %hi(gEntitiesNextPosYArray)
/* 1FB3A4 801E3424 26102790 */  addiu       $s0, $s0, %lo(gEntitiesNextPosYArray)
/* 1FB3A8 801E3428 00021080 */  sll         $v0, $v0, 2
/* 1FB3AC 801E342C 02225021 */  addu        $t2, $s1, $v0
/* 1FB3B0 801E3430 8D4C0000 */  lw          $t4, 0x0($t2)
/* 1FB3B4 801E3434 02024021 */  addu        $t0, $s0, $v0
/* 1FB3B8 801E3438 C50A0000 */  lwc1        $f10, 0x0($t0)
/* 1FB3BC 801E343C 000C6880 */  sll         $t5, $t4, 2
/* 1FB3C0 801E3440 020D7021 */  addu        $t6, $s0, $t5
/* 1FB3C4 801E3444 C5C60000 */  lwc1        $f6, 0x0($t6)
/* 1FB3C8 801E3448 46143201 */  sub.s       $f8, $f6, $f20
/* 1FB3CC 801E344C 460A403C */  c.lt.s      $f8, $f10
/* 1FB3D0 801E3450 00000000 */  nop
/* 1FB3D4 801E3454 45000012 */  bc1f        L801E34A0_ovl13
/* 1FB3D8 801E3458 00000000 */   nop
glabel L801E345C_ovl13
/* 1FB3DC 801E345C 0C002DAF */  jal         finish_current_thread
/* 1FB3E0 801E3460 24040001 */   addiu      $a0, $zero, 0x1
/* 1FB3E4 801E3464 8E430000 */  lw          $v1, 0x0($s2)
/* 1FB3E8 801E3468 8C620000 */  lw          $v0, 0x0($v1)
/* 1FB3EC 801E346C 00021080 */  sll         $v0, $v0, 2
/* 1FB3F0 801E3470 02225821 */  addu        $t3, $s1, $v0
/* 1FB3F4 801E3474 8D6F0000 */  lw          $t7, 0x0($t3)
/* 1FB3F8 801E3478 02024821 */  addu        $t1, $s0, $v0
/* 1FB3FC 801E347C C5240000 */  lwc1        $f4, 0x0($t1)
/* 1FB400 801E3480 000FC080 */  sll         $t8, $t7, 2
/* 1FB404 801E3484 0218C821 */  addu        $t9, $s0, $t8
/* 1FB408 801E3488 C7300000 */  lwc1        $f16, 0x0($t9)
/* 1FB40C 801E348C 46148481 */  sub.s       $f18, $f16, $f20
/* 1FB410 801E3490 4604903C */  c.lt.s      $f18, $f4
/* 1FB414 801E3494 00000000 */  nop
/* 1FB418 801E3498 4501FFF0 */  bc1t        L801E345C_ovl13
/* 1FB41C 801E349C 00000000 */   nop
glabel L801E34A0_ovl13
/* 1FB420 801E34A0 3C0C800E */  lui         $t4, %hi(D_800E0D50)
/* 1FB424 801E34A4 01826021 */  addu        $t4, $t4, $v0
/* 1FB428 801E34A8 8D8C0D50 */  lw          $t4, %lo(D_800E0D50)($t4)
/* 1FB42C 801E34AC 3C01800F */  lui         $at, %hi(D_800E98E0)
/* 1FB430 801E34B0 240A0005 */  addiu       $t2, $zero, 0x5
/* 1FB434 801E34B4 000C6880 */  sll         $t5, $t4, 2
/* 1FB438 801E34B8 002D0821 */  addu        $at, $at, $t5
/* 1FB43C 801E34BC AC2A98E0 */  sw          $t2, %lo(D_800E98E0)($at)
/* 1FB440 801E34C0 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1FB444 801E34C4 3C05800F */  lui         $a1, %hi(D_800EAFA0)
/* 1FB448 801E34C8 24A5AFA0 */  addiu       $a1, $a1, %lo(D_800EAFA0)
/* 1FB44C 801E34CC 000E4080 */  sll         $t0, $t6, 2
/* 1FB450 801E34D0 00A85821 */  addu        $t3, $a1, $t0
/* 1FB454 801E34D4 E5760000 */  swc1        $f22, 0x0($t3)
/* 1FB458 801E34D8 8C620000 */  lw          $v0, 0x0($v1)
/* 1FB45C 801E34DC 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1FB460 801E34E0 24040002 */  addiu       $a0, $zero, 0x2
/* 1FB464 801E34E4 00021080 */  sll         $v0, $v0, 2
/* 1FB468 801E34E8 00A27821 */  addu        $t7, $a1, $v0
/* 1FB46C 801E34EC C5E60000 */  lwc1        $f6, 0x0($t7)
/* 1FB470 801E34F0 00220821 */  addu        $at, $at, $v0
/* 1FB474 801E34F4 E426AC20 */  swc1        $f6, %lo(D_800EAC20)($at)
/* 1FB478 801E34F8 8C780000 */  lw          $t8, 0x0($v1)
/* 1FB47C 801E34FC 3C01438C */  lui         $at, (0x438C0000 >> 16)
/* 1FB480 801E3500 44815000 */  mtc1        $at, $f10
/* 1FB484 801E3504 0018C880 */  sll         $t9, $t8, 2
/* 1FB488 801E3508 02394821 */  addu        $t1, $s1, $t9
/* 1FB48C 801E350C 8D2C0000 */  lw          $t4, 0x0($t1)
/* 1FB490 801E3510 3C01800D */  lui         $at, %hi(D_800D70D8)
/* 1FB494 801E3514 000C5080 */  sll         $t2, $t4, 2
/* 1FB498 801E3518 020A6821 */  addu        $t5, $s0, $t2
/* 1FB49C 801E351C C5A80000 */  lwc1        $f8, 0x0($t5)
/* 1FB4A0 801E3520 460A4400 */  add.s       $f16, $f8, $f10
/* 1FB4A4 801E3524 0C06F1E5 */  jal         func_801BC794_ovl7
/* 1FB4A8 801E3528 E43070D8 */   swc1       $f16, %lo(D_800D70D8)($at)
/* 1FB4AC 801E352C 3C07800E */  lui         $a3, %hi(D_800E0D50)
/* 1FB4B0 801E3530 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FB4B4 801E3534 10410025 */  beq         $v0, $at, L801E35CC_ovl13
/* 1FB4B8 801E3538 24E70D50 */   addiu      $a3, $a3, %lo(D_800E0D50)
/* 1FB4BC 801E353C 8E430000 */  lw          $v1, 0x0($s2)
/* 1FB4C0 801E3540 3C05800E */  lui         $a1, %hi(D_800E5F90)
/* 1FB4C4 801E3544 24A55F90 */  addiu       $a1, $a1, %lo(D_800E5F90)
/* 1FB4C8 801E3548 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1FB4CC 801E354C 00022080 */  sll         $a0, $v0, 2
/* 1FB4D0 801E3550 00A46021 */  addu        $t4, $a1, $a0
/* 1FB4D4 801E3554 000E4080 */  sll         $t0, $t6, 2
/* 1FB4D8 801E3558 00E85821 */  addu        $t3, $a3, $t0
/* 1FB4DC 801E355C 8D6F0000 */  lw          $t7, 0x0($t3)
/* 1FB4E0 801E3560 3C06800E */  lui         $a2, %hi(D_800E6BD0)
/* 1FB4E4 801E3564 24C66BD0 */  addiu       $a2, $a2, %lo(D_800E6BD0)
/* 1FB4E8 801E3568 000FC080 */  sll         $t8, $t7, 2
/* 1FB4EC 801E356C 00B8C821 */  addu        $t9, $a1, $t8
/* 1FB4F0 801E3570 8F290000 */  lw          $t1, 0x0($t9)
/* 1FB4F4 801E3574 00C4C021 */  addu        $t8, $a2, $a0
/* 1FB4F8 801E3578 3C014320 */  lui         $at, (0x43200000 >> 16)
/* 1FB4FC 801E357C AD890000 */  sw          $t1, 0x0($t4)
/* 1FB500 801E3580 8C6A0000 */  lw          $t2, 0x0($v1)
/* 1FB504 801E3584 44813000 */  mtc1        $at, $f6
/* 1FB508 801E3588 000A6880 */  sll         $t5, $t2, 2
/* 1FB50C 801E358C 00ED7021 */  addu        $t6, $a3, $t5
/* 1FB510 801E3590 8DC80000 */  lw          $t0, 0x0($t6)
/* 1FB514 801E3594 00085880 */  sll         $t3, $t0, 2
/* 1FB518 801E3598 00CB7821 */  addu        $t7, $a2, $t3
/* 1FB51C 801E359C C5F20000 */  lwc1        $f18, 0x0($t7)
/* 1FB520 801E35A0 02044021 */  addu        $t0, $s0, $a0
/* 1FB524 801E35A4 E7120000 */  swc1        $f18, 0x0($t8)
/* 1FB528 801E35A8 8C790000 */  lw          $t9, 0x0($v1)
/* 1FB52C 801E35AC 00194880 */  sll         $t1, $t9, 2
/* 1FB530 801E35B0 02296021 */  addu        $t4, $s1, $t1
/* 1FB534 801E35B4 8D8A0000 */  lw          $t2, 0x0($t4)
/* 1FB538 801E35B8 000A6880 */  sll         $t5, $t2, 2
/* 1FB53C 801E35BC 020D7021 */  addu        $t6, $s0, $t5
/* 1FB540 801E35C0 C5C40000 */  lwc1        $f4, 0x0($t6)
/* 1FB544 801E35C4 46062201 */  sub.s       $f8, $f4, $f6
/* 1FB548 801E35C8 E5080000 */  swc1        $f8, 0x0($t0)
glabel L801E35CC_ovl13
/* 1FB54C 801E35CC 0C02BE85 */  jal         func_800AFA14
/* 1FB550 801E35D0 00000000 */   nop
/* 1FB554 801E35D4 8FBF003C */  lw          $ra, 0x3C($sp)
/* 1FB558 801E35D8 D7B40020 */  ldc1        $f20, 0x20($sp)
/* 1FB55C 801E35DC D7B60028 */  ldc1        $f22, 0x28($sp)
/* 1FB560 801E35E0 8FB00030 */  lw          $s0, 0x30($sp)
/* 1FB564 801E35E4 8FB10034 */  lw          $s1, 0x34($sp)
/* 1FB568 801E35E8 8FB20038 */  lw          $s2, 0x38($sp)
/* 1FB56C 801E35EC 03E00008 */  jr          $ra
/* 1FB570 801E35F0 27BD0040 */   addiu      $sp, $sp, 0x40
.type func_801E3028_ovl13, @function

.size func_801E3028_ovl13, . - func_801E3028_ovl13
.section .late_rodata
glabel D_801E5DD8_ovl13
/* 1FDD58 801E5DD8 */ .word 0x477FFF00

glabel D_801E5DDC_ovl13
/* 1FDD5C 801E5DDC */ .word 0x3C8EFA35

glabel D_801E5DE0_ovl13
/* 1FDD60 801E5DE0 */ .word 0xBF19999A

glabel D_801E5DE4_ovl13
/* 1FDD64 801E5DE4 */ .word 0xBD4CCCCD

glabel D_801E5DE8_ovl13
/* 1FDD68 801E5DE8 */ .word 0x477FFF00

