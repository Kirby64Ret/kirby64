glabel func_801E326C_ovl16
/* 1D3FDC 801E326C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1D3FE0 801E3270 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 1D3FE4 801E3274 8C620000 */  lw         $v0, 0x0($v1)
.L801E3278_ovl16:
/* 1D3FE8 801E3278 27BDFFD8 */  addiu      $sp, $sp, -0x28
.L801E327C_ovl17:
/* 1D3FEC 801E327C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D3FF0 801E3280 AFA40028 */  sw         $a0, 0x28($sp)
glabel func_801E3284_ovl16
/* 1D3FF4 801E3284 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1D3FF8 801E3288 3C0E801E */  lui        $t6, %hi(func_801E3748_ovl16)
glabel func_801E328C_ovl17
/* 1D3FFC 801E328C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1D4000 801E3290 000FC080 */  sll        $t8, $t7, 2
/* 1D4004 801E3294 00380821 */  addu       $at, $at, $t8
/* 1D4008 801E3298 25CE3748 */  addiu      $t6, $t6, %lo(func_801E3748_ovl16)
/* 1D400C 801E329C AC2EF150 */  sw         $t6, %lo(D_800DF150)($at)
/* 1D4010 801E32A0 8C480000 */  lw         $t0, 0x0($v0)
/* 1D4014 801E32A4 3C0A800E */  lui        $t2, %hi(D_800E1B50)
/* 1D4018 801E32A8 3C19801D */  lui        $t9, %hi(D_801CB4DC_ovl7)
/* 1D401C 801E32AC 00084880 */  sll        $t1, $t0, 2
/* 1D4020 801E32B0 01495021 */  addu       $t2, $t2, $t1
/* 1D4024 801E32B4 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
/* 1D4028 801E32B8 2739B4DC */  addiu      $t9, $t9, %lo(D_801CB4DC_ovl7)
/* 1D402C 801E32BC 3C01800F */  lui        $at, %hi(D_800E8920)
.L801E32C0_ovl9:
/* 1D4030 801E32C0 AD590098 */  sw         $t9, 0x98($t2)
/* 1D4034 801E32C4 8C6B0000 */  lw         $t3, 0x0($v1)
/* 1D4038 801E32C8 3C040001 */  lui        $a0, (0x1008C >> 16)
glabel func_801E32CC_ovl16
/* 1D403C 801E32CC 3484008C */  ori        $a0, $a0, (0x1008C & 0xFFFF)
/* 1D4040 801E32D0 8D6C0000 */  lw         $t4, 0x0($t3)
/* 1D4044 801E32D4 24050023 */  addiu      $a1, $zero, 0x23
/* 1D4048 801E32D8 24060010 */  addiu      $a2, $zero, 0x10
/* 1D404C 801E32DC 000C6880 */  sll        $t5, $t4, 2
/* 1D4050 801E32E0 002D0821 */  addu       $at, $at, $t5
.L801E32E4_ovl15:
/* 1D4054 801E32E4 0C02A619 */  jal        func_800A9864
.L801E32E8_ovl9:
/* 1D4058 801E32E8 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 1D405C 801E32EC 0C02CCFD */  jal        func_800B33F4
/* 1D4060 801E32F0 00000000 */   nop
/* 1D4064 801E32F4 0C078D14 */  jal        func_801E3450_ovl10
/* 1D4068 801E32F8 8FA40028 */   lw        $a0, 0x28($sp)
/* 1D406C 801E32FC 44802000 */  mtc1       $zero, $f4
/* 1D4070 801E3300 46000386 */  mov.s      $f14, $f0
/* 1D4074 801E3304 4604003C */  c.lt.s     $f0, $f4
/* 1D4078 801E3308 00000000 */  nop
.L801E330C_ovl15:
/* 1D407C 801E330C 45020004 */  bc1fl      .L801E3320_ovl10
/* 1D4080 801E3310 46000306 */   mov.s     $f12, $f0
/* 1D4084 801E3314 10000002 */  b          .L801E3320_ovl10
/* 1D4088 801E3318 46000307 */   neg.s     $f12, $f0
/* 1D408C 801E331C 46000306 */  mov.s      $f12, $f0
.L801E3320_ovl10:
/* 1D4090 801E3320 0C00B5B8 */  jal        sinf
glabel func_801E3324_ovl17
/* 1D4094 801E3324 E7AE001C */   swc1      $f14, 0x1C($sp)
/* 1D4098 801E3328 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 1D409C 801E332C 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 1D40A0 801E3330 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 1D40A4 801E3334 44813000 */  mtc1       $at, $f6
/* 1D40A8 801E3338 8DE20000 */  lw         $v0, 0x0($t7)
glabel func_801E333C_ovl9
/* 1D40AC 801E333C 3C01800E */  lui        $at, %hi(D_800E6A10)
.L801E3340_ovl16:
/* 1D40B0 801E3340 46060202 */  mul.s      $f8, $f0, $f6
/* 1D40B4 801E3344 00021080 */  sll        $v0, $v0, 2
/* 1D40B8 801E3348 00220821 */  addu       $at, $at, $v0
/* 1D40BC 801E334C C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
/* 1D40C0 801E3350 C7AE001C */  lwc1       $f14, 0x1C($sp)
/* 1D40C4 801E3354 44809000 */  mtc1       $zero, $f18
/* 1D40C8 801E3358 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1D40CC 801E335C 460A4402 */  mul.s      $f16, $f8, $f10
/* 1D40D0 801E3360 4612703C */  c.lt.s     $f14, $f18
.L801E3364_ovl16:
/* 1D40D4 801E3364 00220821 */  addu       $at, $at, $v0
/* 1D40D8 801E3368 45000003 */  bc1f       .L801E3378_ovl10
/* 1D40DC 801E336C E43064D0 */   swc1      $f16, %lo(D_800E64D0)($at)
/* 1D40E0 801E3370 10000002 */  b          .L801E337C_ovl10
/* 1D40E4 801E3374 46007307 */   neg.s     $f12, $f14
.L801E3378_ovl10:
/* 1D40E8 801E3378 46007306 */  mov.s      $f12, $f14
.L801E337C_ovl10:
/* 1D40EC 801E337C 0C00D604 */  jal        cosf
.L801E3380_ovl9:
/* 1D40F0 801E3380 00000000 */   nop
.L801E3384_ovl16:
/* 1D40F4 801E3384 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 1D40F8 801E3388 44812000 */  mtc1       $at, $f4
/* 1D40FC 801E338C 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1D4100 801E3390 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
.L801E3394_ovl16:
/* 1D4104 801E3394 46040182 */  mul.s      $f6, $f0, $f4
/* 1D4108 801E3398 3C01800E */  lui        $at, %hi(D_800E3210)
.L801E339C_ovl15:
/* 1D410C 801E339C 8DD80000 */  lw         $t8, 0x0($t6)
.L801E33A0_ovl16:
/* 1D4110 801E33A0 2404001E */  addiu      $a0, $zero, 0x1E
/* 1D4114 801E33A4 00184080 */  sll        $t0, $t8, 2
/* 1D4118 801E33A8 00280821 */  addu       $at, $at, $t0
glabel func_801E33AC_ovl16
/* 1D411C 801E33AC 0C002DAF */  jal        finish_current_thread
/* 1D4120 801E33B0 E4263210 */   swc1      $f6, %lo(D_800E3210)($at)
/* 1D4124 801E33B4 0C02CCFD */  jal        func_800B33F4
/* 1D4128 801E33B8 00000000 */   nop
/* 1D412C 801E33BC 0C002DAF */  jal        finish_current_thread
.L801E33C0_ovl15:
/* 1D4130 801E33C0 2404000A */   addiu     $a0, $zero, 0xA
/* 1D4134 801E33C4 0C078D85 */  jal        func_801E3614_ovl10
/* 1D4138 801E33C8 8FA40028 */   lw        $a0, 0x28($sp)
/* 1D413C 801E33CC 46000306 */  mov.s      $f12, $f0
/* 1D4140 801E33D0 0C00B5B8 */  jal        sinf
/* 1D4144 801E33D4 E7A0001C */   swc1      $f0, 0x1C($sp)
/* 1D4148 801E33D8 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 1D414C 801E33DC 44814000 */  mtc1       $at, $f8
/* 1D4150 801E33E0 3C098005 */  lui        $t1, %hi(D_8004A7C4)
.L801E33E4_ovl9:
/* 1D4154 801E33E4 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 1D4158 801E33E8 46080282 */  mul.s      $f10, $f0, $f8
/* 1D415C 801E33EC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1D4160 801E33F0 8D390000 */  lw         $t9, 0x0($t1)
/* 1D4164 801E33F4 C7AC001C */  lwc1       $f12, 0x1C($sp)
/* 1D4168 801E33F8 00195080 */  sll        $t2, $t9, 2
/* 1D416C 801E33FC 002A0821 */  addu       $at, $at, $t2
/* 1D4170 801E3400 0C00D604 */  jal        cosf
glabel func_801E3404_ovl15
/* 1D4174 801E3404 E42A64D0 */   swc1      $f10, %lo(D_800E64D0)($at)
/* 1D4178 801E3408 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 1D417C 801E340C 44818000 */  mtc1       $at, $f16
/* 1D4180 801E3410 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 1D4184 801E3414 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 1D4188 801E3418 46100482 */  mul.s      $f18, $f0, $f16
/* 1D418C 801E341C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1D4190 801E3420 8D6C0000 */  lw         $t4, 0x0($t3)
/* 1D4194 801E3424 2404001E */  addiu      $a0, $zero, 0x1E
/* 1D4198 801E3428 000C6880 */  sll        $t5, $t4, 2
/* 1D419C 801E342C 002D0821 */  addu       $at, $at, $t5
glabel func_801E3430_ovl9
/* 1D41A0 801E3430 0C002DAF */  jal        finish_current_thread
/* 1D41A4 801E3434 E4323210 */   swc1      $f18, %lo(D_800E3210)($at)
/* 1D41A8 801E3438 0C06B3E1 */  jal        func_801ACF84_ovl7
glabel func_801E343C_ovl17
/* 1D41AC 801E343C 8FA40028 */   lw        $a0, 0x28($sp)
/* 1D41B0 801E3440 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D41B4 801E3444 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1D41B8 801E3448 03E00008 */  jr         $ra
/* 1D41BC 801E344C 00000000 */   nop
