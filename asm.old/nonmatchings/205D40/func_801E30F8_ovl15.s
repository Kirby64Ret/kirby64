glabel func_801E30F8_ovl15
/* 20DC58 801E30F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
glabel D_801E30FC_ovl14
/* 20DC5C 801E30FC AFBF001C */  sw         $ra, 0x1C($sp)
glabel D_801E3100_ovl14
/* 20DC60 801E3100 AFB10018 */  sw         $s1, 0x18($sp)
.L801E3104_ovl16:
/* 20DC64 801E3104 AFB00014 */  sw         $s0, 0x14($sp)
.L801E3108_ovl17:
/* 20DC68 801E3108 0C066E6C */  jal        func_8019B9B0_ovl7
glabel D_801E310C_ovl14
/* 20DC6C 801E310C AFA40020 */   sw        $a0, 0x20($sp)
glabel D_801E3110_ovl14
/* 20DC70 801E3110 3C118005 */  lui        $s1, %hi(D_8004A7C4)
.L801E3114_ovl14:
/* 20DC74 801E3114 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
glabel D_801E3118_ovl14
/* 20DC78 801E3118 8E220000 */  lw         $v0, 0x0($s1)
glabel D_801E311C_ovl14
/* 20DC7C 801E311C 3C0E800B */  lui        $t6, %hi(func_800B7790)
glabel D_801E3120_ovl14
/* 20DC80 801E3120 3C01800E */  lui        $at, %hi(D_800DEF90)
glabel D_801E3124_ovl14
/* 20DC84 801E3124 8C4F0000 */  lw         $t7, 0x0($v0)
glabel D_801E3128_ovl14
/* 20DC88 801E3128 25CE7790 */  addiu      $t6, $t6, %lo(func_800B7790)
glabel D_801E312C_ovl14
/* 20DC8C 801E312C 3C19801E */  lui        $t9, %hi(func_801E3404_ovl15)
glabel D_801E3130_ovl14
/* 20DC90 801E3130 000FC080 */  sll        $t8, $t7, 2
glabel func_801E3134_ovl14
/* 20DC94 801E3134 00380821 */  addu       $at, $at, $t8
/* 20DC98 801E3138 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 20DC9C 801E313C 8C480000 */  lw         $t0, 0x0($v0)
/* 20DCA0 801E3140 3C01800E */  lui        $at, %hi(D_800DF150)
/* 20DCA4 801E3144 27393404 */  addiu      $t9, $t9, %lo(func_801E3404_ovl15)
.L801E3148_ovl16:
/* 20DCA8 801E3148 00084880 */  sll        $t1, $t0, 2
.L801E314C_ovl17:
/* 20DCAC 801E314C 00290821 */  addu       $at, $at, $t1
glabel D_801E3150_ovl14
/* 20DCB0 801E3150 AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
/* 20DCB4 801E3154 8C4B0000 */  lw         $t3, 0x0($v0)
/* 20DCB8 801E3158 3C0D800E */  lui        $t5, %hi(D_800E1B50)
/* 20DCBC 801E315C 3C0A801E */  lui        $t2, %hi(D_801DAF3C)
/* 20DCC0 801E3160 000B6080 */  sll        $t4, $t3, 2
/* 20DCC4 801E3164 01AC6821 */  addu       $t5, $t5, $t4
/* 20DCC8 801E3168 8DAD1B50 */  lw         $t5, %lo(D_800E1B50)($t5)
/* 20DCCC 801E316C 254AAF3C */  addiu      $t2, $t2, %lo(D_801DAF3C)
.L801E3170_ovl17:
/* 20DCD0 801E3170 3C040001 */  lui        $a0, (0x10090 >> 16)
/* 20DCD4 801E3174 34840090 */  ori        $a0, $a0, (0x10090 & 0xFFFF)
/* 20DCD8 801E3178 24050023 */  addiu      $a1, $zero, 0x23
/* 20DCDC 801E317C 24060010 */  addiu      $a2, $zero, 0x10
/* 20DCE0 801E3180 0C02A619 */  jal        func_800A9864
/* 20DCE4 801E3184 ADAA0098 */   sw        $t2, 0x98($t5)
/* 20DCE8 801E3188 8E2E0000 */  lw         $t6, 0x0($s1)
/* 20DCEC 801E318C 3C10800F */  lui        $s0, %hi(D_800E8920)
/* 20DCF0 801E3190 26108920 */  addiu      $s0, $s0, %lo(D_800E8920)
/* 20DCF4 801E3194 8DD80000 */  lw         $t8, 0x0($t6)
/* 20DCF8 801E3198 240F0001 */  addiu      $t7, $zero, 0x1
.L801E319C_ovl10:
/* 20DCFC 801E319C 00184080 */  sll        $t0, $t8, 2
/* 20DD00 801E31A0 0208C821 */  addu       $t9, $s0, $t0
glabel func_801E31A4_ovl16
/* 20DD04 801E31A4 0C02CCFD */  jal        func_800B33F4
/* 20DD08 801E31A8 AF2F0000 */   sw        $t7, 0x0($t9)
/* 20DD0C 801E31AC 8E290000 */  lw         $t1, 0x0($s1)
/* 20DD10 801E31B0 3C02800E */  lui        $v0, %hi(D_800E7880)
/* 20DD14 801E31B4 24010001 */  addiu      $at, $zero, 0x1
/* 20DD18 801E31B8 8D250000 */  lw         $a1, 0x0($t1)
/* 20DD1C 801E31BC 00451021 */  addu       $v0, $v0, $a1
.L801E31C0_ovl10:
/* 20DD20 801E31C0 90427880 */  lbu        $v0, %lo(D_800E7880)($v0)
/* 20DD24 801E31C4 5040000A */  beql       $v0, $zero, .L801E31F0_ovl15
/* 20DD28 801E31C8 00052080 */   sll       $a0, $a1, 2
/* 20DD2C 801E31CC 10410007 */  beq        $v0, $at, .L801E31EC_ovl15
/* 20DD30 801E31D0 24010002 */   addiu     $at, $zero, 0x2
/* 20DD34 801E31D4 1041000F */  beq        $v0, $at, .L801E3214_ovl15
/* 20DD38 801E31D8 24010003 */   addiu     $at, $zero, 0x3
/* 20DD3C 801E31DC 1041000D */  beq        $v0, $at, .L801E3214_ovl15
/* 20DD40 801E31E0 00000000 */   nop
/* 20DD44 801E31E4 1000000B */  b          .L801E3214_ovl15
/* 20DD48 801E31E8 00000000 */   nop
.L801E31EC_ovl15:
/* 20DD4C 801E31EC 00052080 */  sll        $a0, $a1, 2
.L801E31F0_ovl15:
/* 20DD50 801E31F0 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 20DD54 801E31F4 00240821 */  addu       $at, $at, $a0
/* 20DD58 801E31F8 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 20DD5C 801E31FC 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 20DD60 801E3200 44813000 */  mtc1       $at, $f6
/* 20DD64 801E3204 3C01800E */  lui        $at, %hi(D_800E3050)
.L801E3208_ovl17:
/* 20DD68 801E3208 00240821 */  addu       $at, $at, $a0
/* 20DD6C 801E320C 46062202 */  mul.s      $f8, $f4, $f6
.L801E3210_ovl17:
/* 20DD70 801E3210 E4283050 */  swc1       $f8, %lo(D_800E3050)($at)
.L801E3214_ovl15:
/* 20DD74 801E3214 0C002DAF */  jal        finish_current_thread
.L801E3218_ovl16:
/* 20DD78 801E3218 24040001 */   addiu     $a0, $zero, 0x1
/* 20DD7C 801E321C 0C02CCFD */  jal        func_800B33F4
/* 20DD80 801E3220 00000000 */   nop
.L801E3224_ovl9:
/* 20DD84 801E3224 8E220000 */  lw         $v0, 0x0($s1)
/* 20DD88 801E3228 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 20DD8C 801E322C 3C0D800E */  lui        $t5, %hi(D_800E7880)
/* 20DD90 801E3230 8C4B0000 */  lw         $t3, 0x0($v0)
/* 20DD94 801E3234 000B6080 */  sll        $t4, $t3, 2
/* 20DD98 801E3238 020C5021 */  addu       $t2, $s0, $t4
.L801E323C_ovl16:
/* 20DD9C 801E323C AD400000 */  sw         $zero, 0x0($t2)
/* 20DDA0 801E3240 8C440000 */  lw         $a0, 0x0($v0)
glabel func_801E3244_ovl10
/* 20DDA4 801E3244 00042080 */  sll        $a0, $a0, 2
/* 20DDA8 801E3248 00240821 */  addu       $at, $at, $a0
/* 20DDAC 801E324C C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
/* 20DDB0 801E3250 3C014080 */  lui        $at, (0x40800000 >> 16)
.L801E3254_ovl13:
/* 20DDB4 801E3254 44818000 */  mtc1       $at, $f16
/* 20DDB8 801E3258 3C01800E */  lui        $at, %hi(D_800E3050)
.L801E325C_ovl16:
/* 20DDBC 801E325C 00240821 */  addu       $at, $at, $a0
.L801E3260_ovl9:
/* 20DDC0 801E3260 46105482 */  mul.s      $f18, $f10, $f16
/* 20DDC4 801E3264 E4323050 */  swc1       $f18, %lo(D_800E3050)($at)
/* 20DDC8 801E3268 8C450000 */  lw         $a1, 0x0($v0)
glabel func_801E326C_ovl16
/* 20DDCC 801E326C 3C01801E */  lui        $at, %hi(func_801E6648_ovl9 + 0x7C)
/* 20DDD0 801E3270 01A56821 */  addu       $t5, $t5, $a1
/* 20DDD4 801E3274 91AD7880 */  lbu        $t5, %lo(D_800E7880)($t5)
.L801E3278_ovl16:
/* 20DDD8 801E3278 0005C080 */  sll        $t8, $a1, 2
.L801E327C_ovl17:
/* 20DDDC 801E327C 000D7080 */  sll        $t6, $t5, 2
/* 20DDE0 801E3280 002E0821 */  addu       $at, $at, $t6
glabel func_801E3284_ovl16
/* 20DDE4 801E3284 C42466C4 */  lwc1       $f4, %lo(func_801E6648_ovl9 + 0x7C)($at)
/* 20DDE8 801E3288 3C01800E */  lui        $at, %hi(D_800E3210)
glabel func_801E328C_ovl17
/* 20DDEC 801E328C 00380821 */  addu       $at, $at, $t8
/* 20DDF0 801E3290 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* 20DDF4 801E3294 8C480000 */  lw         $t0, 0x0($v0)
/* 20DDF8 801E3298 3C01801E */  lui        $at, %hi(func_801E68E0_ovl16)
/* 20DDFC 801E329C C42668E0 */  lwc1       $f6, %lo(func_801E68E0_ovl16)($at)
/* 20DE00 801E32A0 3C01800E */  lui        $at, %hi(D_800E3750)
/* 20DE04 801E32A4 00087880 */  sll        $t7, $t0, 2
/* 20DE08 801E32A8 002F0821 */  addu       $at, $at, $t7
/* 20DE0C 801E32AC E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* 20DE10 801E32B0 8C590000 */  lw         $t9, 0x0($v0)
/* 20DE14 801E32B4 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 20DE18 801E32B8 44814000 */  mtc1       $at, $f8
/* 20DE1C 801E32BC 3C01800E */  lui        $at, %hi(D_800E3C90)
.L801E32C0_ovl9:
/* 20DE20 801E32C0 00194880 */  sll        $t1, $t9, 2
/* 20DE24 801E32C4 00290821 */  addu       $at, $at, $t1
/* 20DE28 801E32C8 E4283C90 */  swc1       $f8, %lo(D_800E3C90)($at)
glabel func_801E32CC_ovl16
/* 20DE2C 801E32CC 8C4B0000 */  lw         $t3, 0x0($v0)
/* 20DE30 801E32D0 000B6080 */  sll        $t4, $t3, 2
/* 20DE34 801E32D4 020C1821 */  addu       $v1, $s0, $t4
/* 20DE38 801E32D8 8C6A0000 */  lw         $t2, 0x0($v1)
/* 20DE3C 801E32DC 5540000B */  bnel       $t2, $zero, .L801E330C_ovl15
/* 20DE40 801E32E0 AC600000 */   sw        $zero, 0x0($v1)
.L801E32E4_ovl15:
/* 20DE44 801E32E4 0C002DAF */  jal        finish_current_thread
.L801E32E8_ovl9:
/* 20DE48 801E32E8 24040001 */   addiu     $a0, $zero, 0x1
/* 20DE4C 801E32EC 8E220000 */  lw         $v0, 0x0($s1)
/* 20DE50 801E32F0 8C4D0000 */  lw         $t5, 0x0($v0)
/* 20DE54 801E32F4 000D7080 */  sll        $t6, $t5, 2
/* 20DE58 801E32F8 020E1821 */  addu       $v1, $s0, $t6
/* 20DE5C 801E32FC 8C780000 */  lw         $t8, 0x0($v1)
/* 20DE60 801E3300 1300FFF8 */  beqz       $t8, .L801E32E4_ovl15
/* 20DE64 801E3304 00000000 */   nop
/* 20DE68 801E3308 AC600000 */  sw         $zero, 0x0($v1)
.L801E330C_ovl15:
/* 20DE6C 801E330C 8C440000 */  lw         $a0, 0x0($v0)
/* 20DE70 801E3310 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 20DE74 801E3314 00042080 */  sll        $a0, $a0, 2
/* 20DE78 801E3318 00240821 */  addu       $at, $at, $a0
/* 20DE7C 801E331C C4206A10 */  lwc1       $f0, %lo(D_800E6A10)($at)
.L801E3320_ovl10:
/* 20DE80 801E3320 3C01800E */  lui        $at, %hi(D_800E3050)
glabel func_801E3324_ovl17
/* 20DE84 801E3324 00240821 */  addu       $at, $at, $a0
/* 20DE88 801E3328 46000280 */  add.s      $f10, $f0, $f0
/* 20DE8C 801E332C E42A3050 */  swc1       $f10, %lo(D_800E3050)($at)
/* 20DE90 801E3330 8C480000 */  lw         $t0, 0x0($v0)
/* 20DE94 801E3334 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 20DE98 801E3338 44818000 */  mtc1       $at, $f16
glabel func_801E333C_ovl9
/* 20DE9C 801E333C 3C01800E */  lui        $at, %hi(D_800E3210)
.L801E3340_ovl16:
/* 20DEA0 801E3340 00087880 */  sll        $t7, $t0, 2
/* 20DEA4 801E3344 002F0821 */  addu       $at, $at, $t7
/* 20DEA8 801E3348 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
/* 20DEAC 801E334C 8C590000 */  lw         $t9, 0x0($v0)
/* 20DEB0 801E3350 3C01801E */  lui        $at, %hi(.L801E68E4_ovl15)
/* 20DEB4 801E3354 C43268E4 */  lwc1       $f18, %lo(.L801E68E4_ovl15)($at)
/* 20DEB8 801E3358 3C01800E */  lui        $at, %hi(D_800E3750)
/* 20DEBC 801E335C 00194880 */  sll        $t1, $t9, 2
/* 20DEC0 801E3360 00290821 */  addu       $at, $at, $t1
.L801E3364_ovl16:
/* 20DEC4 801E3364 E4323750 */  swc1       $f18, %lo(D_800E3750)($at)
/* 20DEC8 801E3368 8C4B0000 */  lw         $t3, 0x0($v0)
/* 20DECC 801E336C 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 20DED0 801E3370 44812000 */  mtc1       $at, $f4
/* 20DED4 801E3374 3C01800E */  lui        $at, %hi(D_800E3C90)
.L801E3378_ovl10:
/* 20DED8 801E3378 000B6080 */  sll        $t4, $t3, 2
.L801E337C_ovl10:
/* 20DEDC 801E337C 002C0821 */  addu       $at, $at, $t4
.L801E3380_ovl9:
/* 20DEE0 801E3380 E4243C90 */  swc1       $f4, %lo(D_800E3C90)($at)
.L801E3384_ovl16:
/* 20DEE4 801E3384 8C4A0000 */  lw         $t2, 0x0($v0)
/* 20DEE8 801E3388 000A6880 */  sll        $t5, $t2, 2
/* 20DEEC 801E338C 020D7021 */  addu       $t6, $s0, $t5
/* 20DEF0 801E3390 8DD80000 */  lw         $t8, 0x0($t6)
.L801E3394_ovl16:
/* 20DEF4 801E3394 1700000A */  bnez       $t8, .L801E33C0_ovl15
/* 20DEF8 801E3398 00000000 */   nop
.L801E339C_ovl15:
/* 20DEFC 801E339C 0C002DAF */  jal        finish_current_thread
.L801E33A0_ovl16:
/* 20DF00 801E33A0 24040001 */   addiu     $a0, $zero, 0x1
/* 20DF04 801E33A4 8E280000 */  lw         $t0, 0x0($s1)
/* 20DF08 801E33A8 8D0F0000 */  lw         $t7, 0x0($t0)
glabel func_801E33AC_ovl16
/* 20DF0C 801E33AC 000FC880 */  sll        $t9, $t7, 2
/* 20DF10 801E33B0 02194821 */  addu       $t1, $s0, $t9
/* 20DF14 801E33B4 8D2B0000 */  lw         $t3, 0x0($t1)
/* 20DF18 801E33B8 1160FFF8 */  beqz       $t3, .L801E339C_ovl15
/* 20DF1C 801E33BC 00000000 */   nop
.L801E33C0_ovl15:
/* 20DF20 801E33C0 0C02CCFD */  jal        func_800B33F4
/* 20DF24 801E33C4 00000000 */   nop
/* 20DF28 801E33C8 44806000 */  mtc1       $zero, $f12
/* 20DF2C 801E33CC 0C02BB30 */  jal        func_800AECC0
/* 20DF30 801E33D0 00000000 */   nop
/* 20DF34 801E33D4 44806000 */  mtc1       $zero, $f12
/* 20DF38 801E33D8 0C02BB48 */  jal        func_800AED20
/* 20DF3C 801E33DC 00000000 */   nop
/* 20DF40 801E33E0 0C002DAF */  jal        finish_current_thread
.L801E33E4_ovl9:
/* 20DF44 801E33E4 2404001E */   addiu     $a0, $zero, 0x1E
/* 20DF48 801E33E8 0C06B3E1 */  jal        func_801ACF84_ovl7
/* 20DF4C 801E33EC 8FA40020 */   lw        $a0, 0x20($sp)
/* 20DF50 801E33F0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 20DF54 801E33F4 8FB00014 */  lw         $s0, 0x14($sp)
/* 20DF58 801E33F8 8FB10018 */  lw         $s1, 0x18($sp)
/* 20DF5C 801E33FC 03E00008 */  jr         $ra
/* 20DF60 801E3400 27BD0020 */   addiu     $sp, $sp, 0x20
