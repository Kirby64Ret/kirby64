glabel func_801ED2CC_ovl10
/* 1DE03C 801ED2CC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1DE040 801ED2D0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1DE044 801ED2D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1DE048 801ED2D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1DE04C 801ED2DC AFA40018 */  sw         $a0, 0x18($sp)
/* 1DE050 801ED2E0 8C430000 */  lw         $v1, 0x0($v0)
/* 1DE054 801ED2E4 3C0E800B */  lui        $t6, %hi(func_800B79F4)
/* 1DE058 801ED2E8 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1DE05C 801ED2EC 00031880 */  sll        $v1, $v1, 2
/* 1DE060 801ED2F0 00230821 */  addu       $at, $at, $v1
.L801ED2F4_ovl16:
/* 1DE064 801ED2F4 25CE79F4 */  addiu      $t6, $t6, %lo(func_800B79F4)
/* 1DE068 801ED2F8 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 1DE06C 801ED2FC 8C580000 */  lw         $t8, 0x0($v0)
/* 1DE070 801ED300 3C05800E */  lui        $a1, %hi(D_800E1B50)
/* 1DE074 801ED304 00A32821 */  addu       $a1, $a1, $v1
/* 1DE078 801ED308 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1DE07C 801ED30C 0018C880 */  sll        $t9, $t8, 2
/* 1DE080 801ED310 8CA51B50 */  lw         $a1, %lo(D_800E1B50)($a1)
/* 1DE084 801ED314 00390821 */  addu       $at, $at, $t9
/* 1DE088 801ED318 240F0005 */  addiu      $t7, $zero, 0x5
/* 1DE08C 801ED31C 3C08801F */  lui        $t0, %hi(func_801F40C8_ovl9 + 0x80)
/* 1DE090 801ED320 AC2FDFD0 */  sw         $t7, %lo(D_800DDFD0)($at)
/* 1DE094 801ED324 25084148 */  addiu      $t0, $t0, %lo(func_801F40C8_ovl9 + 0x80)
/* 1DE098 801ED328 3C040001 */  lui        $a0, (0x1025A >> 16)
/* 1DE09C 801ED32C 3484025A */  ori        $a0, $a0, (0x1025A & 0xFFFF)
/* 1DE0A0 801ED330 0C02A806 */  jal        func_800AA018
/* 1DE0A4 801ED334 ACA80098 */   sw        $t0, 0x98($a1)
glabel func_801ED338_ovl16
/* 1DE0A8 801ED338 3C040001 */  lui        $a0, (0x1025B >> 16)
/* 1DE0AC 801ED33C 0C02A806 */  jal        func_800AA018
/* 1DE0B0 801ED340 3484025B */   ori       $a0, $a0, (0x1025B & 0xFFFF)
/* 1DE0B4 801ED344 0C02CD48 */  jal        func_800B3520
/* 1DE0B8 801ED348 00000000 */   nop
/* 1DE0BC 801ED34C 0C029D9E */  jal        play_sound
/* 1DE0C0 801ED350 240401F5 */   addiu     $a0, $zero, 0x1F5
/* 1DE0C4 801ED354 0C03EE45 */  jal        func_800FB914
/* 1DE0C8 801ED358 24040001 */   addiu     $a0, $zero, 0x1
/* 1DE0CC 801ED35C 0C02BC9F */  jal        func_800AF27C
.L801ED360_ovl9:
/* 1DE0D0 801ED360 00000000 */   nop
/* 1DE0D4 801ED364 3C040001 */  lui        $a0, (0x10262 >> 16)
/* 1DE0D8 801ED368 0C02A806 */  jal        func_800AA018
/* 1DE0DC 801ED36C 34840262 */   ori       $a0, $a0, (0x10262 & 0xFFFF)
/* 1DE0E0 801ED370 3C040001 */  lui        $a0, (0x10263 >> 16)
/* 1DE0E4 801ED374 0C02A806 */  jal        func_800AA018
/* 1DE0E8 801ED378 34840263 */   ori       $a0, $a0, (0x10263 & 0xFFFF)
/* 1DE0EC 801ED37C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1DE0F0 801ED380 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1DE0F4 801ED384 3C014100 */  lui        $at, (0x41000000 >> 16)
.L801ED388_ovl9:
/* 1DE0F8 801ED388 44810000 */  mtc1       $at, $f0
/* 1DE0FC 801ED38C 8C430000 */  lw         $v1, 0x0($v0)
/* 1DE100 801ED390 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1DE104 801ED394 240401EC */  addiu      $a0, $zero, 0x1EC
.L801ED398_ovl9:
/* 1DE108 801ED398 00031880 */  sll        $v1, $v1, 2
/* 1DE10C 801ED39C 00230821 */  addu       $at, $at, $v1
/* 1DE110 801ED3A0 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 1DE114 801ED3A4 3C01C020 */  lui        $at, (0xC0200000 >> 16)
/* 1DE118 801ED3A8 44813000 */  mtc1       $at, $f6
/* 1DE11C 801ED3AC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1DE120 801ED3B0 00230821 */  addu       $at, $at, $v1
/* 1DE124 801ED3B4 46062202 */  mul.s      $f8, $f4, $f6
/* 1DE128 801ED3B8 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
glabel func_801ED3BC_ovl16
/* 1DE12C 801ED3BC 8C490000 */  lw         $t1, 0x0($v0)
/* 1DE130 801ED3C0 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1DE134 801ED3C4 00095080 */  sll        $t2, $t1, 2
/* 1DE138 801ED3C8 002A0821 */  addu       $at, $at, $t2
/* 1DE13C 801ED3CC E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 1DE140 801ED3D0 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1DE144 801ED3D4 3C01801F */  lui        $at, %hi(func_801F4BBC_ovl10)
/* 1DE148 801ED3D8 C42A4BBC */  lwc1       $f10, %lo(func_801F4BBC_ovl10)($at)
/* 1DE14C 801ED3DC 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1DE150 801ED3E0 000B6080 */  sll        $t4, $t3, 2
/* 1DE154 801ED3E4 002C0821 */  addu       $at, $at, $t4
/* 1DE158 801ED3E8 E42A3750 */  swc1       $f10, %lo(D_800E3750)($at)
/* 1DE15C 801ED3EC 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1DE160 801ED3F0 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1DE164 801ED3F4 000D7080 */  sll        $t6, $t5, 2
/* 1DE168 801ED3F8 002E0821 */  addu       $at, $at, $t6
/* 1DE16C 801ED3FC E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
glabel func_801ED400_ovl16
/* 1DE170 801ED400 8C580000 */  lw         $t8, 0x0($v0)
/* 1DE174 801ED404 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1DE178 801ED408 00187880 */  sll        $t7, $t8, 2
/* 1DE17C 801ED40C 002F0821 */  addu       $at, $at, $t7
/* 1DE180 801ED410 0C029D9E */  jal        play_sound
/* 1DE184 801ED414 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 1DE188 801ED418 0C02BC9F */  jal        func_800AF27C
/* 1DE18C 801ED41C 00000000 */   nop
/* 1DE190 801ED420 3C040001 */  lui        $a0, (0x10260 >> 16)
/* 1DE194 801ED424 0C02A806 */  jal        func_800AA018
/* 1DE198 801ED428 34840260 */   ori       $a0, $a0, (0x10260 & 0xFFFF)
/* 1DE19C 801ED42C 3C040001 */  lui        $a0, (0x10261 >> 16)
/* 1DE1A0 801ED430 0C02A806 */  jal        func_800AA018
/* 1DE1A4 801ED434 34840261 */   ori       $a0, $a0, (0x10261 & 0xFFFF)
/* 1DE1A8 801ED438 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1DE1AC 801ED43C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1DE1B0 801ED440 3C014100 */  lui        $at, (0x41000000 >> 16)
glabel func_801ED444_ovl16
/* 1DE1B4 801ED444 44810000 */  mtc1       $at, $f0
/* 1DE1B8 801ED448 8C430000 */  lw         $v1, 0x0($v0)
/* 1DE1BC 801ED44C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1DE1C0 801ED450 240401EC */  addiu      $a0, $zero, 0x1EC
/* 1DE1C4 801ED454 00031880 */  sll        $v1, $v1, 2
/* 1DE1C8 801ED458 00230821 */  addu       $at, $at, $v1
/* 1DE1CC 801ED45C C4306A10 */  lwc1       $f16, %lo(D_800E6A10)($at)
/* 1DE1D0 801ED460 3C01C020 */  lui        $at, (0xC0200000 >> 16)
.L801ED464_ovl9:
/* 1DE1D4 801ED464 44819000 */  mtc1       $at, $f18
/* 1DE1D8 801ED468 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1DE1DC 801ED46C 00230821 */  addu       $at, $at, $v1
/* 1DE1E0 801ED470 46128102 */  mul.s      $f4, $f16, $f18
/* 1DE1E4 801ED474 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* 1DE1E8 801ED478 8C590000 */  lw         $t9, 0x0($v0)
/* 1DE1EC 801ED47C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1DE1F0 801ED480 00194080 */  sll        $t0, $t9, 2
/* 1DE1F4 801ED484 00280821 */  addu       $at, $at, $t0
/* 1DE1F8 801ED488 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 1DE1FC 801ED48C 8C490000 */  lw         $t1, 0x0($v0)
/* 1DE200 801ED490 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 1DE204 801ED494 44813000 */  mtc1       $at, $f6
/* 1DE208 801ED498 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1DE20C 801ED49C 00095080 */  sll        $t2, $t1, 2
/* 1DE210 801ED4A0 002A0821 */  addu       $at, $at, $t2
/* 1DE214 801ED4A4 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* 1DE218 801ED4A8 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1DE21C 801ED4AC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1DE220 801ED4B0 000B6080 */  sll        $t4, $t3, 2
/* 1DE224 801ED4B4 002C0821 */  addu       $at, $at, $t4
/* 1DE228 801ED4B8 E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
/* 1DE22C 801ED4BC 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1DE230 801ED4C0 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1DE234 801ED4C4 000D7080 */  sll        $t6, $t5, 2
/* 1DE238 801ED4C8 002E0821 */  addu       $at, $at, $t6
/* 1DE23C 801ED4CC 0C029D9E */  jal        play_sound
/* 1DE240 801ED4D0 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 1DE244 801ED4D4 0C002DAF */  jal        finish_current_thread
/* 1DE248 801ED4D8 24040010 */   addiu     $a0, $zero, 0x10
.L801ED4DC_ovl9:
/* 1DE24C 801ED4DC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1DE250 801ED4E0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1DE254 801ED4E4 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 1DE258 801ED4E8 44814000 */  mtc1       $at, $f8
/* 1DE25C 801ED4EC 8C580000 */  lw         $t8, 0x0($v0)
/* 1DE260 801ED4F0 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1DE264 801ED4F4 240401EC */  addiu      $a0, $zero, 0x1EC
/* 1DE268 801ED4F8 00187880 */  sll        $t7, $t8, 2
/* 1DE26C 801ED4FC 002F0821 */  addu       $at, $at, $t7
/* 1DE270 801ED500 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 1DE274 801ED504 8C590000 */  lw         $t9, 0x0($v0)
/* 1DE278 801ED508 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1DE27C 801ED50C 00194080 */  sll        $t0, $t9, 2
/* 1DE280 801ED510 00280821 */  addu       $at, $at, $t0
/* 1DE284 801ED514 0C029D9E */  jal        play_sound
/* 1DE288 801ED518 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 1DE28C 801ED51C 0C02BC9F */  jal        func_800AF27C
/* 1DE290 801ED520 00000000 */   nop
.L801ED524_ovl9:
/* 1DE294 801ED524 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 1DE298 801ED528 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 1DE29C 801ED52C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1DE2A0 801ED530 8D230000 */  lw         $v1, 0x0($t1)
/* 1DE2A4 801ED534 00031880 */  sll        $v1, $v1, 2
/* 1DE2A8 801ED538 00230821 */  addu       $at, $at, $v1
/* 1DE2AC 801ED53C C4206A10 */  lwc1       $f0, %lo(D_800E6A10)($at)
/* 1DE2B0 801ED540 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1DE2B4 801ED544 44815000 */  mtc1       $at, $f10
/* 1DE2B8 801ED548 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 1DE2BC 801ED54C 00230821 */  addu       $at, $at, $v1
.L801ED550_ovl16:
/* 1DE2C0 801ED550 46005032 */  c.eq.s     $f10, $f0
.L801ED554_ovl16:
/* 1DE2C4 801ED554 00000000 */  nop
/* 1DE2C8 801ED558 45020007 */  bc1fl      .L801ED578_ovl10
/* 1DE2CC 801ED55C 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
/* 1DE2D0 801ED560 44808000 */  mtc1       $zero, $f16
/* 1DE2D4 801ED564 C43225D0 */  lwc1       $f18, %lo(gEntitiesNextPosXArray)($at)
/* 1DE2D8 801ED568 4612803C */  c.lt.s     $f16, $f18
/* 1DE2DC 801ED56C 00000000 */  nop
/* 1DE2E0 801ED570 4501000E */  bc1t       .L801ED5AC_ovl10
/* 1DE2E4 801ED574 3C01BF80 */   lui       $at, (0xBF800000 >> 16)
.L801ED578_ovl10:
/* 1DE2E8 801ED578 44812000 */  mtc1       $at, $f4
/* 1DE2EC 801ED57C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 1DE2F0 801ED580 00230821 */  addu       $at, $at, $v1
/* 1DE2F4 801ED584 46002032 */  c.eq.s     $f4, $f0
/* 1DE2F8 801ED588 00000000 */  nop
/* 1DE2FC 801ED58C 45020044 */  bc1fl      .L801ED6A0_ovl10
/* 1DE300 801ED590 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1DE304 801ED594 C42625D0 */  lwc1       $f6, %lo(gEntitiesNextPosXArray)($at)
/* 1DE308 801ED598 44804000 */  mtc1       $zero, $f8
/* 1DE30C 801ED59C 00000000 */  nop
/* 1DE310 801ED5A0 4608303C */  c.lt.s     $f6, $f8
.L801ED5A4_ovl16:
/* 1DE314 801ED5A4 00000000 */  nop
.L801ED5A8_ovl16:
/* 1DE318 801ED5A8 4500003C */  bc1f       .L801ED69C_ovl10
.L801ED5AC_ovl10:
/* 1DE31C 801ED5AC 3C040001 */   lui       $a0, (0x10260 >> 16)
/* 1DE320 801ED5B0 0C02A806 */  jal        func_800AA018
/* 1DE324 801ED5B4 34840260 */   ori       $a0, $a0, (0x10260 & 0xFFFF)
/* 1DE328 801ED5B8 3C040001 */  lui        $a0, (0x10261 >> 16)
/* 1DE32C 801ED5BC 0C02A806 */  jal        func_800AA018
/* 1DE330 801ED5C0 34840261 */   ori       $a0, $a0, (0x10261 & 0xFFFF)
/* 1DE334 801ED5C4 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1DE338 801ED5C8 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1DE33C 801ED5CC 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 1DE340 801ED5D0 44815000 */  mtc1       $at, $f10
.L801ED5D4_ovl9:
/* 1DE344 801ED5D4 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1DE348 801ED5D8 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1DE34C 801ED5DC 240401EC */  addiu      $a0, $zero, 0x1EC
/* 1DE350 801ED5E0 000A5880 */  sll        $t3, $t2, 2
/* 1DE354 801ED5E4 002B0821 */  addu       $at, $at, $t3
/* 1DE358 801ED5E8 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
.L801ED5EC_ovl9:
/* 1DE35C 801ED5EC 8C4C0000 */  lw         $t4, 0x0($v0)
.L801ED5F0_ovl16:
/* 1DE360 801ED5F0 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
.L801ED5F4_ovl16:
/* 1DE364 801ED5F4 44818000 */  mtc1       $at, $f16
/* 1DE368 801ED5F8 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1DE36C 801ED5FC 000C6880 */  sll        $t5, $t4, 2
/* 1DE370 801ED600 002D0821 */  addu       $at, $at, $t5
/* 1DE374 801ED604 E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
/* 1DE378 801ED608 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1DE37C 801ED60C 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 1DE380 801ED610 44819000 */  mtc1       $at, $f18
.L801ED614_ovl9:
/* 1DE384 801ED614 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1DE388 801ED618 000EC080 */  sll        $t8, $t6, 2
.L801ED61C_ovl16:
/* 1DE38C 801ED61C 00380821 */  addu       $at, $at, $t8
/* 1DE390 801ED620 E4323C90 */  swc1       $f18, %lo(D_800E3C90)($at)
/* 1DE394 801ED624 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1DE398 801ED628 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1DE39C 801ED62C 000FC880 */  sll        $t9, $t7, 2
/* 1DE3A0 801ED630 00390821 */  addu       $at, $at, $t9
glabel func_801ED634_ovl16
/* 1DE3A4 801ED634 0C029D9E */  jal        play_sound
/* 1DE3A8 801ED638 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 1DE3AC 801ED63C 0C002DAF */  jal        finish_current_thread
/* 1DE3B0 801ED640 24040010 */   addiu     $a0, $zero, 0x10
/* 1DE3B4 801ED644 3C028005 */  lui        $v0, %hi(D_8004A7C4)
glabel func_801ED648_ovl9
/* 1DE3B8 801ED648 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1DE3BC 801ED64C 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 1DE3C0 801ED650 44812000 */  mtc1       $at, $f4
/* 1DE3C4 801ED654 8C480000 */  lw         $t0, 0x0($v0)
/* 1DE3C8 801ED658 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1DE3CC 801ED65C 240401EC */  addiu      $a0, $zero, 0x1EC
/* 1DE3D0 801ED660 00084880 */  sll        $t1, $t0, 2
/* 1DE3D4 801ED664 00290821 */  addu       $at, $at, $t1
/* 1DE3D8 801ED668 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* 1DE3DC 801ED66C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1DE3E0 801ED670 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1DE3E4 801ED674 000A5880 */  sll        $t3, $t2, 2
/* 1DE3E8 801ED678 002B0821 */  addu       $at, $at, $t3
/* 1DE3EC 801ED67C 0C029D9E */  jal        play_sound
/* 1DE3F0 801ED680 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 1DE3F4 801ED684 0C02BC9F */  jal        func_800AF27C
/* 1DE3F8 801ED688 00000000 */   nop
/* 1DE3FC 801ED68C 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 1DE400 801ED690 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
.L801ED694_ovl9:
/* 1DE404 801ED694 8D830000 */  lw         $v1, 0x0($t4)
/* 1DE408 801ED698 00031880 */  sll        $v1, $v1, 2
.L801ED69C_ovl10:
/* 1DE40C 801ED69C 8FBF0014 */  lw         $ra, 0x14($sp)
.L801ED6A0_ovl10:
/* 1DE410 801ED6A0 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1DE414 801ED6A4 00230821 */  addu       $at, $at, $v1
/* 1DE418 801ED6A8 240D0006 */  addiu      $t5, $zero, 0x6
/* 1DE41C 801ED6AC AC2DDC50 */  sw         $t5, %lo(gEntityVtableIndexArray)($at)
/* 1DE420 801ED6B0 03E00008 */  jr         $ra
/* 1DE424 801ED6B4 27BD0018 */   addiu     $sp, $sp, 0x18
