glabel func_8001F2E0
/* 01FEE0 8001F2E0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 01FEE4 8001F2E4 AFB10024 */  sw    $s1, 0x24($sp)
/* 01FEE8 8001F2E8 3C118009 */  lui   $s1, %hi(D_800964A0) # $s1, 0x8009
/* 01FEEC 8001F2EC 263164A0 */  addiu $s1, %lo(D_800964A0) # addiu $s1, $s1, 0x64a0
/* 01FEF0 8001F2F0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 01FEF4 8001F2F4 AFB20028 */  sw    $s2, 0x28($sp)
/* 01FEF8 8001F2F8 AFB00020 */  sw    $s0, 0x20($sp)
/* 01FEFC 8001F2FC 8E240000 */  lw    $a0, ($s1)
/* 01FF00 8001F300 0C00BA2C */  jal   bzero
/* 01FF04 8001F304 8E250004 */   lw    $a1, 4($s1)
/* 01FF08 8001F308 3C128009 */  lui   $s2, %hi(D_80095DC8) # $s2, 0x8009
/* 01FF0C 8001F30C 26525DC8 */  addiu $s2, %lo(D_80095DC8) # addiu $s2, $s2, 0x5dc8
/* 01FF10 8001F310 02402025 */  move  $a0, $s2
/* 01FF14 8001F314 8E250000 */  lw    $a1, ($s1)
/* 01FF18 8001F318 0C0078E8 */  jal   func_8001E3A0
/* 01FF1C 8001F31C 8E260004 */   lw    $a2, 4($s1)
/* 01FF20 8001F320 8E220020 */  lw    $v0, 0x20($s1)
/* 01FF24 8001F324 3C018000 */  lui   $at, 0x8000
/* 01FF28 8001F328 00002025 */  move  $a0, $zero
/* 01FF2C 8001F32C 0041082B */  sltu  $at, $v0, $at
/* 01FF30 8001F330 14200004 */  bnez  $at, .L8001F344_ovl0
/* 01FF34 8001F334 00002825 */   move  $a1, $zero
/* 01FF38 8001F338 3C018009 */  lui   $at, %hi(D_80096470) # $at, 0x8009
/* 01FF3C 8001F33C 10000013 */  b     .L8001F38C_ovl0
/* 01FF40 8001F340 AC226470 */   sw    $v0, %lo(D_80096470)($at)
.L8001F344_ovl0:
/* 01FF44 8001F344 8E2E0024 */  lw    $t6, 0x24($s1)
/* 01FF48 8001F348 02403025 */  move  $a2, $s2
/* 01FF4C 8001F34C 24070001 */  li    $a3, 1
/* 01FF50 8001F350 01C28023 */  subu  $s0, $t6, $v0
/* 01FF54 8001F354 0C0078F5 */  jal   func_8001E3D4
/* 01FF58 8001F358 AFB00010 */   sw    $s0, 0x10($sp)
/* 01FF5C 8001F35C AFA20048 */  sw    $v0, 0x48($sp)
/* 01FF60 8001F360 8E240020 */  lw    $a0, 0x20($s1)
/* 01FF64 8001F364 00402825 */  move  $a1, $v0
/* 01FF68 8001F368 0C0079C9 */  jal   func_8001E724
/* 01FF6C 8001F36C 02003025 */   move  $a2, $s0
/* 01FF70 8001F370 8FB00048 */  lw    $s0, 0x48($sp)
/* 01FF74 8001F374 8E250028 */  lw    $a1, 0x28($s1)
/* 01FF78 8001F378 0C007924 */  jal   func_8001E490
/* 01FF7C 8001F37C 02002025 */   move  $a0, $s0
/* 01FF80 8001F380 8E0F0004 */  lw    $t7, 4($s0)
/* 01FF84 8001F384 3C018009 */  lui   $at, %hi(D_80096470) # $at, 0x8009
/* 01FF88 8001F388 AC2F6470 */  sw    $t7, %lo(D_80096470)($at)
.L8001F38C_ovl0:
/* 01FF8C 8001F38C 8E220014 */  lw    $v0, 0x14($s1)
/* 01FF90 8001F390 3C018000 */  lui   $at, 0x8000
/* 01FF94 8001F394 00002025 */  move  $a0, $zero
/* 01FF98 8001F398 0041082B */  sltu  $at, $v0, $at
/* 01FF9C 8001F39C 14200004 */  bnez  $at, .L8001F3B0_ovl0
/* 01FFA0 8001F3A0 00002825 */   move  $a1, $zero
/* 01FFA4 8001F3A4 3C018009 */  lui   $at, %hi(D_80096468) # $at, 0x8009
/* 01FFA8 8001F3A8 10000013 */  b     .L8001F3F8_ovl0
/* 01FFAC 8001F3AC AC226468 */   sw    $v0, %lo(D_80096468)($at)
.L8001F3B0_ovl0:
/* 01FFB0 8001F3B0 8E380018 */  lw    $t8, 0x18($s1)
/* 01FFB4 8001F3B4 02403025 */  move  $a2, $s2
/* 01FFB8 8001F3B8 24070001 */  li    $a3, 1
/* 01FFBC 8001F3BC 03028023 */  subu  $s0, $t8, $v0
/* 01FFC0 8001F3C0 0C0078F5 */  jal   func_8001E3D4
/* 01FFC4 8001F3C4 AFB00010 */   sw    $s0, 0x10($sp)
/* 01FFC8 8001F3C8 AFA20048 */  sw    $v0, 0x48($sp)
/* 01FFCC 8001F3CC 8E240014 */  lw    $a0, 0x14($s1)
/* 01FFD0 8001F3D0 00402825 */  move  $a1, $v0
/* 01FFD4 8001F3D4 0C0079C9 */  jal   func_8001E724
/* 01FFD8 8001F3D8 02003025 */   move  $a2, $s0
/* 01FFDC 8001F3DC 8FB00048 */  lw    $s0, 0x48($sp)
/* 01FFE0 8001F3E0 8E25001C */  lw    $a1, 0x1c($s1)
/* 01FFE4 8001F3E4 0C007924 */  jal   func_8001E490
/* 01FFE8 8001F3E8 02002025 */   move  $a0, $s0
/* 01FFEC 8001F3EC 8E190004 */  lw    $t9, 4($s0)
/* 01FFF0 8001F3F0 3C018009 */  lui   $at, %hi(D_80096468) # $at, 0x8009
/* 01FFF4 8001F3F4 AC396468 */  sw    $t9, %lo(D_80096468)($at)
.L8001F3F8_ovl0:
/* 01FFF8 8001F3F8 8E22002C */  lw    $v0, 0x2c($s1)
/* 01FFFC 8001F3FC 3C018000 */  lui   $at, 0x8000
/* 020000 8001F400 3C098009 */  lui   $t1, %hi(D_80096474) # $t1, 0x8009
/* 020004 8001F404 0041082B */  sltu  $at, $v0, $at
/* 020008 8001F408 14200003 */  bnez  $at, .L8001F418_ovl0
/* 02000C 8001F40C 25296474 */   addiu $t1, %lo(D_80096474) # addiu $t1, $t1, 0x6474
/* 020010 8001F410 1000002A */  b     .L8001F4BC_ovl0
/* 020014 8001F414 AD220000 */   sw    $v0, ($t1)
.L8001F418_ovl0:
/* 020018 8001F418 240A0004 */  li    $t2, 4
/* 02001C 8001F41C AFAA0010 */  sw    $t2, 0x10($sp)
/* 020020 8001F420 00002025 */  move  $a0, $zero
/* 020024 8001F424 00002825 */  move  $a1, $zero
/* 020028 8001F428 02403025 */  move  $a2, $s2
/* 02002C 8001F42C 0C0078F5 */  jal   func_8001E3D4
/* 020030 8001F430 24070001 */   li    $a3, 1
/* 020034 8001F434 3C098009 */  lui   $t1, %hi(D_80096474) # $t1, 0x8009
/* 020038 8001F438 25296474 */  addiu $t1, %lo(D_80096474) # addiu $t1, $t1, 0x6474
/* 02003C 8001F43C AD220000 */  sw    $v0, ($t1)
/* 020040 8001F440 8E24002C */  lw    $a0, 0x2c($s1)
/* 020044 8001F444 00402825 */  move  $a1, $v0
/* 020048 8001F448 0C0079C9 */  jal   func_8001E724
/* 02004C 8001F44C 24060004 */   li    $a2, 4
/* 020050 8001F450 3C098009 */  lui   $t1, %hi(D_80096474) # $t1, 0x8009
/* 020054 8001F454 25296474 */  addiu $t1, %lo(D_80096474) # addiu $t1, $t1, 0x6474
/* 020058 8001F458 8D2B0000 */  lw    $t3, ($t1)
/* 02005C 8001F45C 00002025 */  move  $a0, $zero
/* 020060 8001F460 00002825 */  move  $a1, $zero
/* 020064 8001F464 85620002 */  lh    $v0, 2($t3)
/* 020068 8001F468 02403025 */  move  $a2, $s2
/* 02006C 8001F46C 24070001 */  li    $a3, 1
/* 020070 8001F470 000210C0 */  sll   $v0, $v0, 3
/* 020074 8001F474 24420004 */  addiu $v0, $v0, 4
/* 020078 8001F478 00408025 */  move  $s0, $v0
/* 02007C 8001F47C 0C0078F5 */  jal   func_8001E3D4
/* 020080 8001F480 AFA20010 */   sw    $v0, 0x10($sp)
/* 020084 8001F484 3C098009 */  lui   $t1, %hi(D_80096474) # $t1, 0x8009
/* 020088 8001F488 25296474 */  addiu $t1, %lo(D_80096474) # addiu $t1, $t1, 0x6474
/* 02008C 8001F48C AD220000 */  sw    $v0, ($t1)
/* 020090 8001F490 8E24002C */  lw    $a0, 0x2c($s1)
/* 020094 8001F494 00402825 */  move  $a1, $v0
/* 020098 8001F498 0C0079C9 */  jal   func_8001E724
/* 02009C 8001F49C 02003025 */   move  $a2, $s0
/* 0200A0 8001F4A0 3C098009 */  lui   $t1, %hi(D_80096474) # $t1, 0x8009
/* 0200A4 8001F4A4 25296474 */  addiu $t1, %lo(D_80096474) # addiu $t1, $t1, 0x6474
/* 0200A8 8001F4A8 8D240000 */  lw    $a0, ($t1)
/* 0200AC 8001F4AC 0C007914 */  jal   func_8001E450
/* 0200B0 8001F4B0 8E25002C */   lw    $a1, 0x2c($s1)
/* 0200B4 8001F4B4 3C098009 */  lui   $t1, %hi(D_80096474) # $t1, 0x8009
/* 0200B8 8001F4B8 25296474 */  addiu $t1, %lo(D_80096474) # addiu $t1, $t1, 0x6474
.L8001F4BC_ovl0:
/* 0200BC 8001F4BC 8D240000 */  lw    $a0, ($t1)
/* 0200C0 8001F4C0 00004025 */  move  $t0, $zero
/* 0200C4 8001F4C4 00008025 */  move  $s0, $zero
/* 0200C8 8001F4C8 848C0002 */  lh    $t4, 2($a0)
/* 0200CC 8001F4CC 19800013 */  blez  $t4, .L8001F51C_ovl0
/* 0200D0 8001F4D0 00002825 */   move  $a1, $zero
/* 0200D4 8001F4D4 00801025 */  move  $v0, $a0
.L8001F4D8_ovl0:
/* 0200D8 8001F4D8 8C430008 */  lw    $v1, 8($v0)
/* 0200DC 8001F4DC 306D0001 */  andi  $t5, $v1, 1
/* 0200E0 8001F4E0 006D7021 */  addu  $t6, $v1, $t5
/* 0200E4 8001F4E4 AC4E0008 */  sw    $t6, 8($v0)
/* 0200E8 8001F4E8 8D240000 */  lw    $a0, ($t1)
/* 0200EC 8001F4EC 00851021 */  addu  $v0, $a0, $a1
/* 0200F0 8001F4F0 8C430008 */  lw    $v1, 8($v0)
/* 0200F4 8001F4F4 0203082A */  slt   $at, $s0, $v1
/* 0200F8 8001F4F8 50200003 */  beql  $at, $zero, .L8001F508_ovl0
/* 0200FC 8001F4FC 848F0002 */   lh    $t7, 2($a0)
/* 020100 8001F500 00608025 */  move  $s0, $v1
/* 020104 8001F504 848F0002 */  lh    $t7, 2($a0)
.L8001F508_ovl0:
/* 020108 8001F508 25080001 */  addiu $t0, $t0, 1
/* 02010C 8001F50C 24A50008 */  addiu $a1, $a1, 8
/* 020110 8001F510 010F082A */  slt   $at, $t0, $t7
/* 020114 8001F514 1420FFF0 */  bnez  $at, .L8001F4D8_ovl0
/* 020118 8001F518 24420008 */   addiu $v0, $v0, 8
.L8001F51C_ovl0:
/* 02011C 8001F51C 3C038009 */  lui   $v1, %hi(D_80096484) # $v1, 0x8009
/* 020120 8001F520 24636484 */  addiu $v1, %lo(D_80096484) # addiu $v1, $v1, 0x6484
.L8001F524_ovl0:
/* 020124 8001F524 00002025 */  move  $a0, $zero
/* 020128 8001F528 00002825 */  move  $a1, $zero
/* 02012C 8001F52C 02403025 */  move  $a2, $s2
/* 020130 8001F530 24070001 */  li    $a3, 1
/* 020134 8001F534 AFB00010 */  sw    $s0, 0x10($sp)
/* 020138 8001F538 0C0078F5 */  jal   func_8001E3D4
/* 02013C 8001F53C AFA30030 */   sw    $v1, 0x30($sp)
/* 020140 8001F540 8FA30030 */  lw    $v1, 0x30($sp)
/* 020144 8001F544 3C188009 */  lui   $t8, %hi(D_80096488) # $t8, 0x8009
/* 020148 8001F548 27186488 */  addiu $t8, %lo(D_80096488) # addiu $t8, $t8, 0x6488
/* 02014C 8001F54C 24630004 */  addiu $v1, $v1, 4
/* 020150 8001F550 0078082B */  sltu  $at, $v1, $t8
/* 020154 8001F554 1420FFF3 */  bnez  $at, .L8001F524_ovl0
/* 020158 8001F558 AC62FFFC */   sw    $v0, -4($v1)
/* 02015C 8001F55C 34198000 */  li    $t9, 32768
/* 020160 8001F560 AFB90010 */  sw    $t9, 0x10($sp)
/* 020164 8001F564 00002025 */  move  $a0, $zero
/* 020168 8001F568 00002825 */  move  $a1, $zero
/* 02016C 8001F56C 02403025 */  move  $a2, $s2
/* 020170 8001F570 0C0078F5 */  jal   func_8001E3D4
/* 020174 8001F574 24070001 */   li    $a3, 1
/* 020178 8001F578 3C108009 */  lui   $s0, %hi(D_80096450) # $s0, 0x8009
/* 02017C 8001F57C 26106450 */  addiu $s0, %lo(D_80096450) # addiu $s0, $s0, 0x6450
/* 020180 8001F580 340A8000 */  li    $t2, 32768
/* 020184 8001F584 AE020000 */  sw    $v0, ($s0)
/* 020188 8001F588 AFAA0010 */  sw    $t2, 0x10($sp)
/* 02018C 8001F58C 00002025 */  move  $a0, $zero
/* 020190 8001F590 00002825 */  move  $a1, $zero
/* 020194 8001F594 02403025 */  move  $a2, $s2
/* 020198 8001F598 0C0078F5 */  jal   func_8001E3D4
/* 02019C 8001F59C 24070001 */   li    $a3, 1
/* 0201A0 8001F5A0 240B0068 */  li    $t3, 104
/* 0201A4 8001F5A4 AE020004 */  sw    $v0, 4($s0)
/* 0201A8 8001F5A8 AFAB0010 */  sw    $t3, 0x10($sp)
/* 0201AC 8001F5AC 00002025 */  move  $a0, $zero
/* 0201B0 8001F5B0 00002825 */  move  $a1, $zero
/* 0201B4 8001F5B4 02403025 */  move  $a2, $s2
/* 0201B8 8001F5B8 0C0078F5 */  jal   func_8001E3D4
/* 0201BC 8001F5BC 24070001 */   li    $a3, 1
/* 0201C0 8001F5C0 3C108009 */  lui   $s0, %hi(D_80096460) # $s0, 0x8009
/* 0201C4 8001F5C4 26106460 */  addiu $s0, %lo(D_80096460) # addiu $s0, $s0, 0x6460
/* 0201C8 8001F5C8 240C0068 */  li    $t4, 104
/* 0201CC 8001F5CC AE020000 */  sw    $v0, ($s0)
/* 0201D0 8001F5D0 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0201D4 8001F5D4 00002025 */  move  $a0, $zero
/* 0201D8 8001F5D8 00002825 */  move  $a1, $zero
/* 0201DC 8001F5DC 02403025 */  move  $a2, $s2
/* 0201E0 8001F5E0 0C0078F5 */  jal   func_8001E3D4
/* 0201E4 8001F5E4 24070001 */   li    $a3, 1
/* 0201E8 8001F5E8 240D0E60 */  li    $t5, 3680
/* 0201EC 8001F5EC AE020004 */  sw    $v0, 4($s0)
/* 0201F0 8001F5F0 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0201F4 8001F5F4 00002025 */  move  $a0, $zero
/* 0201F8 8001F5F8 00002825 */  move  $a1, $zero
/* 0201FC 8001F5FC 02403025 */  move  $a2, $s2
/* 020200 8001F600 0C0078F5 */  jal   func_8001E3D4
/* 020204 8001F604 24070001 */   li    $a3, 1
/* 020208 8001F608 3C108009 */  lui   $s0, %hi(D_80096440) # $s0, 0x8009
/* 02020C 8001F60C 26106440 */  addiu $s0, %lo(D_80096440) # addiu $s0, $s0, 0x6440
/* 020210 8001F610 240E0E60 */  li    $t6, 3680
/* 020214 8001F614 AE020000 */  sw    $v0, ($s0)
/* 020218 8001F618 AFAE0010 */  sw    $t6, 0x10($sp)
/* 02021C 8001F61C 00002025 */  move  $a0, $zero
/* 020220 8001F620 00002825 */  move  $a1, $zero
/* 020224 8001F624 02403025 */  move  $a2, $s2
/* 020228 8001F628 0C0078F5 */  jal   func_8001E3D4
/* 02022C 8001F62C 24070001 */   li    $a3, 1
/* 020230 8001F630 240F0E60 */  li    $t7, 3680
/* 020234 8001F634 AE020004 */  sw    $v0, 4($s0)
/* 020238 8001F638 AFAF0010 */  sw    $t7, 0x10($sp)
/* 02023C 8001F63C 00002025 */  move  $a0, $zero
/* 020240 8001F640 00002825 */  move  $a1, $zero
/* 020244 8001F644 02403025 */  move  $a2, $s2
/* 020248 8001F648 0C0078F5 */  jal   func_8001E3D4
/* 02024C 8001F64C 24070001 */   li    $a3, 1
/* 020250 8001F650 8E230050 */  lw    $v1, 0x50($s1)
/* 020254 8001F654 3C018000 */  lui   $at, 0x8000
/* 020258 8001F658 AE020008 */  sw    $v0, 8($s0)
/* 02025C 8001F65C 0061082B */  sltu  $at, $v1, $at
/* 020260 8001F660 10200015 */  beqz  $at, .L8001F6B8_ovl0
/* 020264 8001F664 00002025 */   move  $a0, $zero
/* 020268 8001F668 8E380054 */  lw    $t8, 0x54($s1)
/* 02026C 8001F66C 00002825 */  move  $a1, $zero
/* 020270 8001F670 02403025 */  move  $a2, $s2
/* 020274 8001F674 03038023 */  subu  $s0, $t8, $v1
/* 020278 8001F678 AFB00010 */  sw    $s0, 0x10($sp)
/* 02027C 8001F67C 0C0078F5 */  jal   func_8001E3D4
/* 020280 8001F680 24070001 */   li    $a3, 1
/* 020284 8001F684 8E240050 */  lw    $a0, 0x50($s1)
/* 020288 8001F688 00402825 */  move  $a1, $v0
/* 02028C 8001F68C 02003025 */  move  $a2, $s0
/* 020290 8001F690 0C0079C9 */  jal   func_8001E724
/* 020294 8001F694 AFA2003C */   sw    $v0, 0x3c($sp)
/* 020298 8001F698 8FA3003C */  lw    $v1, 0x3c($sp)
/* 02029C 8001F69C 3C018004 */  lui   $at, %hi(D_8003F394) # $at, 0x8004
/* 0202A0 8001F6A0 8C6A0000 */  lw    $t2, ($v1)
/* 0202A4 8001F6A4 246B0004 */  addiu $t3, $v1, 4
/* 0202A8 8001F6A8 A62A004C */  sh    $t2, 0x4c($s1)
/* 0202AC 8001F6AC A42AF39C */  sh    $t2, %lo(D_8003F39C)($at)
/* 0202B0 8001F6B0 AE2B0044 */  sw    $t3, 0x44($s1)
/* 0202B4 8001F6B4 AC2BF394 */  sw    $t3, %lo(D_8003F394)($at)
.L8001F6B8_ovl0:
/* 0202B8 8001F6B8 8E220058 */  lw    $v0, 0x58($s1)
/* 0202BC 8001F6BC 3C018000 */  lui   $at, 0x8000
/* 0202C0 8001F6C0 00002025 */  move  $a0, $zero
/* 0202C4 8001F6C4 0041082B */  sltu  $at, $v0, $at
/* 0202C8 8001F6C8 10200023 */  beqz  $at, .L8001F758_ovl0
/* 0202CC 8001F6CC 00002825 */   move  $a1, $zero
/* 0202D0 8001F6D0 8E2D005C */  lw    $t5, 0x5c($s1)
/* 0202D4 8001F6D4 02403025 */  move  $a2, $s2
/* 0202D8 8001F6D8 24070001 */  li    $a3, 1
/* 0202DC 8001F6DC 01A28023 */  subu  $s0, $t5, $v0
/* 0202E0 8001F6E0 0C0078F5 */  jal   func_8001E3D4
/* 0202E4 8001F6E4 AFB00010 */   sw    $s0, 0x10($sp)
/* 0202E8 8001F6E8 8E240058 */  lw    $a0, 0x58($s1)
/* 0202EC 8001F6EC 00402825 */  move  $a1, $v0
/* 0202F0 8001F6F0 02003025 */  move  $a2, $s0
/* 0202F4 8001F6F4 0C0079C9 */  jal   func_8001E724
/* 0202F8 8001F6F8 AFA20038 */   sw    $v0, 0x38($sp)
/* 0202FC 8001F6FC 8FA70038 */  lw    $a3, 0x38($sp)
/* 020300 8001F700 3C018004 */  lui   $at, %hi(D_8003F390) # $at, 0x8004
/* 020304 8001F704 00004025 */  move  $t0, $zero
/* 020308 8001F708 8CEE0000 */  lw    $t6, ($a3)
/* 02030C 8001F70C 24EF0004 */  addiu $t7, $a3, 4
/* 020310 8001F710 A62E004A */  sh    $t6, 0x4a($s1)
/* 020314 8001F714 31C2FFFF */  andi  $v0, $t6, 0xffff
/* 020318 8001F718 A422F39A */  sh    $v0, %lo(D_8003F39A)($at)
/* 02031C 8001F71C AE2F0040 */  sw    $t7, 0x40($s1)
/* 020320 8001F720 1840000D */  blez  $v0, .L8001F758_ovl0
/* 020324 8001F724 AC2FF390 */   sw    $t7, %lo(D_8003F390)($at)
/* 020328 8001F728 00001025 */  move  $v0, $zero
/* 02032C 8001F72C 8E390040 */  lw    $t9, 0x40($s1)
.L8001F730_ovl0:
/* 020330 8001F730 25080001 */  addiu $t0, $t0, 1
/* 020334 8001F734 03221821 */  addu  $v1, $t9, $v0
/* 020338 8001F738 8C6A0000 */  lw    $t2, ($v1)
/* 02033C 8001F73C 24420004 */  addiu $v0, $v0, 4
/* 020340 8001F740 01475821 */  addu  $t3, $t2, $a3
/* 020344 8001F744 AC6B0000 */  sw    $t3, ($v1)
/* 020348 8001F748 962C004A */  lhu   $t4, 0x4a($s1)
/* 02034C 8001F74C 010C082A */  slt   $at, $t0, $t4
/* 020350 8001F750 5420FFF7 */  bnezl $at, .L8001F730_ovl0
/* 020354 8001F754 8E390040 */   lw    $t9, 0x40($s1)
.L8001F758_ovl0:
/* 020358 8001F758 8E220060 */  lw    $v0, 0x60($s1)
/* 02035C 8001F75C 3C018000 */  lui   $at, 0x8000
/* 020360 8001F760 00002025 */  move  $a0, $zero
/* 020364 8001F764 0041082B */  sltu  $at, $v0, $at
/* 020368 8001F768 10200026 */  beqz  $at, .L8001F804_ovl0
/* 02036C 8001F76C 00002825 */   move  $a1, $zero
/* 020370 8001F770 8E2D0064 */  lw    $t5, 0x64($s1)
/* 020374 8001F774 02403025 */  move  $a2, $s2
/* 020378 8001F778 24070001 */  li    $a3, 1
/* 02037C 8001F77C 01A28023 */  subu  $s0, $t5, $v0
/* 020380 8001F780 AFB00010 */  sw    $s0, 0x10($sp)
/* 020384 8001F784 00004025 */  move  $t0, $zero
/* 020388 8001F788 0C0078F5 */  jal   func_8001E3D4
/* 02038C 8001F78C AFA00044 */   sw    $zero, 0x44($sp)
/* 020390 8001F790 8E240060 */  lw    $a0, 0x60($s1)
/* 020394 8001F794 00402825 */  move  $a1, $v0
/* 020398 8001F798 02003025 */  move  $a2, $s0
/* 02039C 8001F79C 0C0079C9 */  jal   func_8001E724
/* 0203A0 8001F7A0 AFA20034 */   sw    $v0, 0x34($sp)
/* 0203A4 8001F7A4 8FA70034 */  lw    $a3, 0x34($sp)
/* 0203A8 8001F7A8 3C038004 */  lui   $v1, %hi(D_8003F350) # $v1, 0x8004
/* 0203AC 8001F7AC 2463F350 */  addiu $v1, %lo(D_8003F350) # addiu $v1, $v1, -0xcb0
/* 0203B0 8001F7B0 8CEE0000 */  lw    $t6, ($a3)
/* 0203B4 8001F7B4 24EF0004 */  addiu $t7, $a3, 4
/* 0203B8 8001F7B8 8FA80044 */  lw    $t0, 0x44($sp)
/* 0203BC 8001F7BC 31C2FFFF */  andi  $v0, $t6, 0xffff
/* 0203C0 8001F7C0 A4620048 */  sh    $v0, 0x48($v1)
/* 0203C4 8001F7C4 AE2F003C */  sw    $t7, 0x3c($s1)
/* 0203C8 8001F7C8 AC6F003C */  sw    $t7, 0x3c($v1)
/* 0203CC 8001F7CC 1840000D */  blez  $v0, .L8001F804_ovl0
/* 0203D0 8001F7D0 A62E0048 */   sh    $t6, 0x48($s1)
/* 0203D4 8001F7D4 00001025 */  move  $v0, $zero
/* 0203D8 8001F7D8 8E39003C */  lw    $t9, 0x3c($s1)
.L8001F7DC_ovl0:
/* 0203DC 8001F7DC 25080001 */  addiu $t0, $t0, 1
/* 0203E0 8001F7E0 03221821 */  addu  $v1, $t9, $v0
/* 0203E4 8001F7E4 8C6A0000 */  lw    $t2, ($v1)
/* 0203E8 8001F7E8 24420004 */  addiu $v0, $v0, 4
/* 0203EC 8001F7EC 01475821 */  addu  $t3, $t2, $a3
/* 0203F0 8001F7F0 AC6B0000 */  sw    $t3, ($v1)
/* 0203F4 8001F7F4 962C0048 */  lhu   $t4, 0x48($s1)
/* 0203F8 8001F7F8 010C082A */  slt   $at, $t0, $t4
/* 0203FC 8001F7FC 5420FFF7 */  bnezl $at, .L8001F7DC_ovl0
/* 020400 8001F800 8E39003C */   lw    $t9, 0x3c($s1)
.L8001F804_ovl0:
/* 020404 8001F804 8FBF002C */  lw    $ra, 0x2c($sp)
/* 020408 8001F808 8FB00020 */  lw    $s0, 0x20($sp)
/* 02040C 8001F80C 8FB10024 */  lw    $s1, 0x24($sp)
/* 020410 8001F810 8FB20028 */  lw    $s2, 0x28($sp)
/* 020414 8001F814 03E00008 */  jr    $ra
/* 020418 8001F818 27BD0050 */   addiu $sp, $sp, 0x50
