glabel func_801E2E44_ovl16
/* 2190F4 801E2E44 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 2190F8 801E2E48 AFB3002C */  sw         $s3, 0x2C($sp)
glabel func_801E2E4C_ovl14
/* 2190FC 801E2E4C 3C138005 */  lui        $s3, %hi(D_8004A7C4)
/* 219100 801E2E50 2673A7C4 */  addiu      $s3, $s3, %lo(D_8004A7C4)
/* 219104 801E2E54 8E650000 */  lw         $a1, 0x0($s3)
/* 219108 801E2E58 AFBF0044 */  sw         $ra, 0x44($sp)
/* 21910C 801E2E5C AFBE0040 */  sw         $fp, 0x40($sp)
/* 219110 801E2E60 AFB7003C */  sw         $s7, 0x3C($sp)
.L801E2E64_ovl9:
/* 219114 801E2E64 AFB60038 */  sw         $s6, 0x38($sp)
/* 219118 801E2E68 AFB50034 */  sw         $s5, 0x34($sp)
/* 21911C 801E2E6C AFB40030 */  sw         $s4, 0x30($sp)
.L801E2E70_ovl13:
/* 219120 801E2E70 AFB20028 */  sw         $s2, 0x28($sp)
.L801E2E74_ovl13:
/* 219124 801E2E74 AFB10024 */  sw         $s1, 0x24($sp)
glabel func_801E2E78_ovl15
/* 219128 801E2E78 AFB00020 */  sw         $s0, 0x20($sp)
/* 21912C 801E2E7C F7B40018 */  sdc1       $f20, 0x18($sp)
.L801E2E80_ovl14:
/* 219130 801E2E80 AFA40048 */  sw         $a0, 0x48($sp)
/* 219134 801E2E84 8CAF0000 */  lw         $t7, 0x0($a1)
/* 219138 801E2E88 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 21913C 801E2E8C 240E000B */  addiu      $t6, $zero, 0xB
/* 219140 801E2E90 000FC080 */  sll        $t8, $t7, 2
/* 219144 801E2E94 00380821 */  addu       $at, $at, $t8
/* 219148 801E2E98 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 21914C 801E2E9C 8CB90000 */  lw         $t9, 0x0($a1)
glabel D_801E2EA0_ovl14
/* 219150 801E2EA0 4480A000 */  mtc1       $zero, $f20
/* 219154 801E2EA4 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 219158 801E2EA8 00194080 */  sll        $t0, $t9, 2
/* 21915C 801E2EAC 00280821 */  addu       $at, $at, $t0
/* 219160 801E2EB0 24040002 */  addiu      $a0, $zero, 0x2
/* 219164 801E2EB4 0C006291 */  jal        random_soft_s32_range
.L801E2EB8_ovl15:
/* 219168 801E2EB8 E434A6E0 */   swc1      $f20, %lo(D_800EA6E0)($at)
/* 21916C 801E2EBC 1040000A */  beqz       $v0, func_801E2EE8_ovl17
/* 219170 801E2EC0 3C15800F */   lui       $s5, %hi(D_800EAC20)
/* 219174 801E2EC4 8E650000 */  lw         $a1, 0x0($s3)
.L801E2EC8_ovl14:
/* 219178 801E2EC8 3C01801F */  lui        $at, %hi(func_801EFF24_ovl16 + 0x30)
/* 21917C 801E2ECC C424FF54 */  lwc1       $f4, %lo(func_801EFF24_ovl16 + 0x30)($at)
/* 219180 801E2ED0 8CA90000 */  lw         $t1, 0x0($a1)
/* 219184 801E2ED4 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 219188 801E2ED8 00095080 */  sll        $t2, $t1, 2
/* 21918C 801E2EDC 002A0821 */  addu       $at, $at, $t2
/* 219190 801E2EE0 10000009 */  b          func_801E2F08_ovl17
glabel D_801E2EE4_ovl14
/* 219194 801E2EE4 E424A8A0 */   swc1      $f4, %lo(D_800EA8A0)($at)
glabel func_801E2EE8_ovl17
/* 219198 801E2EE8 8E650000 */  lw         $a1, 0x0($s3)
/* 21919C 801E2EEC 3C01801F */  lui        $at, %hi(func_801EFF24_ovl16 + 0x34)
glabel func_801E2EF0_ovl10
/* 2191A0 801E2EF0 C426FF58 */  lwc1       $f6, %lo(func_801EFF24_ovl16 + 0x34)($at)
.L801E2EF4_ovl13:
/* 2191A4 801E2EF4 8CAB0000 */  lw         $t3, 0x0($a1)
/* 2191A8 801E2EF8 3C01800F */  lui        $at, %hi(D_800EA8A0)
glabel D_801E2EFC_ovl14
/* 2191AC 801E2EFC 000B6080 */  sll        $t4, $t3, 2
/* 2191B0 801E2F00 002C0821 */  addu       $at, $at, $t4
.L801E2F04_ovl9:
/* 2191B4 801E2F04 E426A8A0 */  swc1       $f6, %lo(D_800EA8A0)($at)
glabel func_801E2F08_ovl17
/* 2191B8 801E2F08 8CAD0000 */  lw         $t5, 0x0($a1)
glabel func_801E2F0C_ovl15
/* 2191BC 801E2F0C 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 2191C0 801E2F10 26B5AC20 */  addiu      $s5, $s5, %lo(D_800EAC20)
/* 2191C4 801E2F14 000D7880 */  sll        $t7, $t5, 2
/* 2191C8 801E2F18 002F0821 */  addu       $at, $at, $t7
/* 2191CC 801E2F1C E434AA60 */  swc1       $f20, %lo(D_800EAA60)($at)
/* 2191D0 801E2F20 8CAE0000 */  lw         $t6, 0x0($a1)
.L801E2F24_ovl15:
/* 2191D4 801E2F24 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L801E2F28_ovl15:
/* 2191D8 801E2F28 44814000 */  mtc1       $at, $f8
/* 2191DC 801E2F2C 000EC080 */  sll        $t8, $t6, 2
/* 2191E0 801E2F30 02B8C821 */  addu       $t9, $s5, $t8
/* 2191E4 801E2F34 E7280000 */  swc1       $f8, 0x0($t9)
/* 2191E8 801E2F38 8CA80000 */  lw         $t0, 0x0($a1)
/* 2191EC 801E2F3C 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 2191F0 801E2F40 3C14800F */  lui        $s4, %hi(D_800E98E0)
/* 2191F4 801E2F44 00084880 */  sll        $t1, $t0, 2
/* 2191F8 801E2F48 00290821 */  addu       $at, $at, $t1
/* 2191FC 801E2F4C AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
/* 219200 801E2F50 8CAA0000 */  lw         $t2, 0x0($a1)
/* 219204 801E2F54 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 219208 801E2F58 269498E0 */  addiu      $s4, $s4, %lo(D_800E98E0)
glabel func_801E2F5C_ovl15
/* 21920C 801E2F5C 000A5880 */  sll        $t3, $t2, 2
/* 219210 801E2F60 002B0821 */  addu       $at, $at, $t3
/* 219214 801E2F64 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
glabel func_801E2F68_ovl10
/* 219218 801E2F68 8CAC0000 */  lw         $t4, 0x0($a1)
/* 21921C 801E2F6C 3C10800F */  lui        $s0, %hi(D_800E9E20)
/* 219220 801E2F70 26109E20 */  addiu      $s0, $s0, %lo(D_800E9E20)
/* 219224 801E2F74 000C6880 */  sll        $t5, $t4, 2
/* 219228 801E2F78 028D7821 */  addu       $t7, $s4, $t5
/* 21922C 801E2F7C ADE00000 */  sw         $zero, 0x0($t7)
/* 219230 801E2F80 8CA40000 */  lw         $a0, 0x0($a1)
/* 219234 801E2F84 241E0096 */  addiu      $fp, $zero, 0x96
/* 219238 801E2F88 24170078 */  addiu      $s7, $zero, 0x78
/* 21923C 801E2F8C 00042080 */  sll        $a0, $a0, 2
/* 219240 801E2F90 02847021 */  addu       $t6, $s4, $a0
/* 219244 801E2F94 8DD80000 */  lw         $t8, 0x0($t6)
/* 219248 801E2F98 0204C821 */  addu       $t9, $s0, $a0
/* 21924C 801E2F9C 2416005A */  addiu      $s6, $zero, 0x5A
/* 219250 801E2FA0 AF380000 */  sw         $t8, 0x0($t9)
/* 219254 801E2FA4 8CA40000 */  lw         $a0, 0x0($a1)
/* 219258 801E2FA8 2412003C */  addiu      $s2, $zero, 0x3C
/* 21925C 801E2FAC 00042080 */  sll        $a0, $a0, 2
/* 219260 801E2FB0 02044021 */  addu       $t0, $s0, $a0
/* 219264 801E2FB4 8D090000 */  lw         $t1, 0x0($t0)
glabel func_801E2FB8_ovl17
/* 219268 801E2FB8 2921014A */  slti       $at, $t1, 0x14A
.L801E2FBC_ovl15:
/* 21926C 801E2FBC 10200062 */  beqz       $at, .L801E3148_ovl16
/* 219270 801E2FC0 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
/* 219274 801E2FC4 4481A000 */  mtc1       $at, $f20
/* 219278 801E2FC8 2411001E */  addiu      $s1, $zero, 0x1E
/* 21927C 801E2FCC 02841021 */  addu       $v0, $s4, $a0
.L801E2FD0_ovl16:
/* 219280 801E2FD0 8C4A0000 */  lw         $t2, 0x0($v0)
/* 219284 801E2FD4 254B0002 */  addiu      $t3, $t2, 0x2
glabel func_801E2FD8_ovl17
/* 219288 801E2FD8 0171001A */  div        $zero, $t3, $s1
/* 21928C 801E2FDC 00006010 */  mfhi       $t4
/* 219290 801E2FE0 AC4C0000 */  sw         $t4, 0x0($v0)
/* 219294 801E2FE4 8CA40000 */  lw         $a0, 0x0($a1)
/* 219298 801E2FE8 16200002 */  bnez       $s1, .L801E2FF4_ovl16
/* 21929C 801E2FEC 00000000 */   nop
/* 2192A0 801E2FF0 0007000D */  break      7
.L801E2FF4_ovl16:
/* 2192A4 801E2FF4 2401FFFF */  addiu      $at, $zero, -0x1
glabel func_801E2FF8_ovl15
/* 2192A8 801E2FF8 16210004 */  bne        $s1, $at, .L801E300C_ovl16
/* 2192AC 801E2FFC 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 2192B0 801E3000 15610002 */  bne        $t3, $at, .L801E300C_ovl16
/* 2192B4 801E3004 00000000 */   nop
/* 2192B8 801E3008 0006000D */  break      6
.L801E300C_ovl16:
/* 2192BC 801E300C 00042080 */  sll        $a0, $a0, 2
/* 2192C0 801E3010 02046821 */  addu       $t5, $s0, $a0
/* 2192C4 801E3014 8DA30000 */  lw         $v1, 0x0($t5)
.L801E3018_ovl13:
/* 2192C8 801E3018 24050007 */  addiu      $a1, $zero, 0x7
.L801E301C_ovl13:
/* 2192CC 801E301C 1060000F */  beqz       $v1, .L801E305C_ovl16
/* 2192D0 801E3020 00000000 */   nop
glabel func_801E3024_ovl17
/* 2192D4 801E3024 50710012 */  beql       $v1, $s1, .L801E3070_ovl16
glabel func_801E3028_ovl13
/* 2192D8 801E3028 24040032 */   addiu     $a0, $zero, 0x32
/* 2192DC 801E302C 1072000B */  beq        $v1, $s2, .L801E305C_ovl16
/* 2192E0 801E3030 00000000 */   nop
/* 2192E4 801E3034 5076000E */  beql       $v1, $s6, .L801E3070_ovl16
glabel func_801E3038_ovl15
/* 2192E8 801E3038 24040032 */   addiu     $a0, $zero, 0x32
/* 2192EC 801E303C 10770007 */  beq        $v1, $s7, .L801E305C_ovl16
/* 2192F0 801E3040 00000000 */   nop
/* 2192F4 801E3044 107E0009 */  beq        $v1, $fp, .L801E306C_ovl16
/* 2192F8 801E3048 240100F0 */   addiu     $at, $zero, 0xF0
/* 2192FC 801E304C 1061002D */  beq        $v1, $at, .L801E3104_ovl16
/* 219300 801E3050 02A45821 */   addu      $t3, $s5, $a0
.L801E3054_ovl14:
/* 219304 801E3054 1000002C */  b          .L801E3108_ovl17
/* 219308 801E3058 00000000 */   nop
.L801E305C_ovl16:
/* 21930C 801E305C 0C067829 */  jal        func_8019E0A4_ovl7
/* 219310 801E3060 24040005 */   addiu     $a0, $zero, 0x5
/* 219314 801E3064 10000028 */  b          .L801E3108_ovl17
/* 219318 801E3068 00000000 */   nop
.L801E306C_ovl16:
/* 21931C 801E306C 24040032 */  addiu      $a0, $zero, 0x32
.L801E3070_ovl16:
/* 219320 801E3070 0C06B30D */  jal        func_801ACC34_ovl7
/* 219324 801E3074 00002825 */   or        $a1, $zero, $zero
glabel func_801E3078_ovl15
/* 219328 801E3078 10400023 */  beqz       $v0, .L801E3108_ovl17
.L801E307C_ovl9:
/* 21932C 801E307C 00401825 */   or        $v1, $v0, $zero
/* 219330 801E3080 00021080 */  sll        $v0, $v0, 2
/* 219334 801E3084 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 219338 801E3088 00220821 */  addu       $at, $at, $v0
jtbl_801E308C_ovl14:
/* 21933C 801E308C 240F0001 */  addiu      $t7, $zero, 0x1
/* 219340 801E3090 AC2F8E60 */  sw         $t7, %lo(D_800E8E60)($at)
/* 219344 801E3094 8E650000 */  lw         $a1, 0x0($s3)
/* 219348 801E3098 3C01800E */  lui        $at, %hi(D_800E0D50)
glabel func_801E309C_ovl9
/* 21934C 801E309C 00220821 */  addu       $at, $at, $v0
/* 219350 801E30A0 8CAE0000 */  lw         $t6, 0x0($a1)
/* 219354 801E30A4 240401B7 */  addiu      $a0, $zero, 0x1B7
/* 219358 801E30A8 AC2E0D50 */  sw         $t6, %lo(D_800E0D50)($at)
/* 21935C 801E30AC 8CB80000 */  lw         $t8, 0x0($a1)
.L801E30B0_ovl17:
/* 219360 801E30B0 0018C880 */  sll        $t9, $t8, 2
/* 219364 801E30B4 02194021 */  addu       $t0, $s0, $t9
glabel func_801E30B8_ovl15
/* 219368 801E30B8 8D090000 */  lw         $t1, 0x0($t0)
glabel func_801E30BC_ovl17
/* 21936C 801E30BC 0132001A */  div        $zero, $t1, $s2
/* 219370 801E30C0 16400002 */  bnez       $s2, .L801E30CC_ovl16
/* 219374 801E30C4 00000000 */   nop
/* 219378 801E30C8 0007000D */  break      7
.L801E30CC_ovl16:
/* 21937C 801E30CC 2401FFFF */  addiu      $at, $zero, -0x1
/* 219380 801E30D0 16410004 */  bne        $s2, $at, .L801E30E4_ovl16
/* 219384 801E30D4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 219388 801E30D8 15210002 */  bne        $t1, $at, .L801E30E4_ovl16
/* 21938C 801E30DC 00000000 */   nop
/* 219390 801E30E0 0006000D */  break      6
.L801E30E4_ovl16:
/* 219394 801E30E4 3C01800F */  lui        $at, %hi(D_800EA1A0)
/* 219398 801E30E8 00220821 */  addu       $at, $at, $v0
.L801E30EC_ovl14:
/* 21939C 801E30EC 00005012 */  mflo       $t2
glabel D_801E30F0_ovl14
/* 2193A0 801E30F0 AC2AA1A0 */  sw         $t2, %lo(D_800EA1A0)($at)
glabel D_801E30F4_ovl14
/* 2193A4 801E30F4 0C029D9E */  jal        play_sound
glabel func_801E30F8_ovl15
/* 2193A8 801E30F8 00000000 */   nop
glabel D_801E30FC_ovl14
/* 2193AC 801E30FC 10000002 */  b          .L801E3108_ovl17
glabel D_801E3100_ovl14
/* 2193B0 801E3100 00000000 */   nop
.L801E3104_ovl16:
/* 2193B4 801E3104 E5740000 */  swc1       $f20, 0x0($t3)
.L801E3108_ovl17:
/* 2193B8 801E3108 0C002DAF */  jal        finish_current_thread
glabel D_801E310C_ovl14
/* 2193BC 801E310C 24040001 */   addiu     $a0, $zero, 0x1
glabel D_801E3110_ovl14
/* 2193C0 801E3110 8E650000 */  lw         $a1, 0x0($s3)
.L801E3114_ovl14:
/* 2193C4 801E3114 8CAC0000 */  lw         $t4, 0x0($a1)
glabel D_801E3118_ovl14
/* 2193C8 801E3118 000C6880 */  sll        $t5, $t4, 2
glabel D_801E311C_ovl14
/* 2193CC 801E311C 020D1021 */  addu       $v0, $s0, $t5
glabel D_801E3120_ovl14
/* 2193D0 801E3120 8C4F0000 */  lw         $t7, 0x0($v0)
glabel D_801E3124_ovl14
/* 2193D4 801E3124 25EE0001 */  addiu      $t6, $t7, 0x1
glabel D_801E3128_ovl14
/* 2193D8 801E3128 AC4E0000 */  sw         $t6, 0x0($v0)
glabel D_801E312C_ovl14
/* 2193DC 801E312C 8CA40000 */  lw         $a0, 0x0($a1)
glabel D_801E3130_ovl14
/* 2193E0 801E3130 00042080 */  sll        $a0, $a0, 2
glabel func_801E3134_ovl14
/* 2193E4 801E3134 0204C021 */  addu       $t8, $s0, $a0
/* 2193E8 801E3138 8F190000 */  lw         $t9, 0x0($t8)
/* 2193EC 801E313C 2B21014A */  slti       $at, $t9, 0x14A
/* 2193F0 801E3140 5420FFA3 */  bnel       $at, $zero, .L801E2FD0_ovl16
/* 2193F4 801E3144 02841021 */   addu      $v0, $s4, $a0
.L801E3148_ovl16:
/* 2193F8 801E3148 3C01800F */  lui        $at, %hi(D_800E9AA0)
.L801E314C_ovl17:
/* 2193FC 801E314C 00240821 */  addu       $at, $at, $a0
glabel D_801E3150_ovl14
/* 219400 801E3150 2408000A */  addiu      $t0, $zero, 0xA
/* 219404 801E3154 AC289AA0 */  sw         $t0, %lo(D_800E9AA0)($at)
/* 219408 801E3158 8CAA0000 */  lw         $t2, 0x0($a1)
/* 21940C 801E315C 8FBF0044 */  lw         $ra, 0x44($sp)
/* 219410 801E3160 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 219414 801E3164 000A5880 */  sll        $t3, $t2, 2
/* 219418 801E3168 002B0821 */  addu       $at, $at, $t3
/* 21941C 801E316C 2409000F */  addiu      $t1, $zero, 0xF
.L801E3170_ovl17:
/* 219420 801E3170 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 219424 801E3174 8FB00020 */  lw         $s0, 0x20($sp)
/* 219428 801E3178 8FB10024 */  lw         $s1, 0x24($sp)
/* 21942C 801E317C 8FB20028 */  lw         $s2, 0x28($sp)
/* 219430 801E3180 8FB3002C */  lw         $s3, 0x2C($sp)
/* 219434 801E3184 8FB40030 */  lw         $s4, 0x30($sp)
/* 219438 801E3188 8FB50034 */  lw         $s5, 0x34($sp)
/* 21943C 801E318C 8FB60038 */  lw         $s6, 0x38($sp)
/* 219440 801E3190 8FB7003C */  lw         $s7, 0x3C($sp)
/* 219444 801E3194 8FBE0040 */  lw         $fp, 0x40($sp)
/* 219448 801E3198 AC29DC50 */  sw         $t1, %lo(gEntityVtableIndexArray)($at)
.L801E319C_ovl10:
/* 21944C 801E319C 03E00008 */  jr         $ra
/* 219450 801E31A0 27BD0048 */   addiu     $sp, $sp, 0x48
