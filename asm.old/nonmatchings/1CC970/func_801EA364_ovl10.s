glabel func_801EA364_ovl10
/* 1DB0D4 801EA364 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1DB0D8 801EA368 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1DB0DC 801EA36C 0C006291 */  jal        random_soft_s32_range
/* 1DB0E0 801EA370 24040002 */   addiu     $a0, $zero, 0x2
/* 1DB0E4 801EA374 1440000C */  bnez       $v0, .L801EA3A8_ovl10
/* 1DB0E8 801EA378 3C038005 */   lui       $v1, %hi(D_8004A7C4)
/* 1DB0EC 801EA37C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1DB0F0 801EA380 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1DB0F4 801EA384 3C04800E */  lui        $a0, %hi(D_800E6A10)
/* 1DB0F8 801EA388 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 1DB0FC 801EA38C 8C6E0000 */  lw         $t6, 0x0($v1)
/* 1DB100 801EA390 44812000 */  mtc1       $at, $f4
/* 1DB104 801EA394 24846A10 */  addiu      $a0, $a0, %lo(D_800E6A10)
/* 1DB108 801EA398 000E7880 */  sll        $t7, $t6, 2
/* 1DB10C 801EA39C 008FC021 */  addu       $t8, $a0, $t7
/* 1DB110 801EA3A0 1000000A */  b          .L801EA3CC_ovl10
/* 1DB114 801EA3A4 E7040000 */   swc1      $f4, 0x0($t8)
.L801EA3A8_ovl10:
/* 1DB118 801EA3A8 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1DB11C 801EA3AC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1DB120 801EA3B0 44813000 */  mtc1       $at, $f6
/* 1DB124 801EA3B4 8C790000 */  lw         $t9, 0x0($v1)
/* 1DB128 801EA3B8 3C04800E */  lui        $a0, %hi(D_800E6A10)
/* 1DB12C 801EA3BC 24846A10 */  addiu      $a0, $a0, %lo(D_800E6A10)
/* 1DB130 801EA3C0 00194080 */  sll        $t0, $t9, 2
/* 1DB134 801EA3C4 00884821 */  addu       $t1, $a0, $t0
/* 1DB138 801EA3C8 E5260000 */  swc1       $f6, 0x0($t1)
.L801EA3CC_ovl10:
/* 1DB13C 801EA3CC 8C6A0000 */  lw         $t2, 0x0($v1)
/* 1DB140 801EA3D0 3C01800F */  lui        $at, %hi(D_800E9720)
/* 1DB144 801EA3D4 3C0C800E */  lui        $t4, %hi(D_800E5F90)
/* 1DB148 801EA3D8 000A5880 */  sll        $t3, $t2, 2
/* 1DB14C 801EA3DC 002B0821 */  addu       $at, $at, $t3
/* 1DB150 801EA3E0 AC209720 */  sw         $zero, %lo(D_800E9720)($at)
/* 1DB154 801EA3E4 8C620000 */  lw         $v0, 0x0($v1)
/* 1DB158 801EA3E8 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1DB15C 801EA3EC 00021080 */  sll        $v0, $v0, 2
/* 1DB160 801EA3F0 01826021 */  addu       $t4, $t4, $v0
/* 1DB164 801EA3F4 8D8C5F90 */  lw         $t4, %lo(D_800E5F90)($t4)
/* 1DB168 801EA3F8 00220821 */  addu       $at, $at, $v0
/* 1DB16C 801EA3FC AC2C98E0 */  sw         $t4, %lo(D_800E98E0)($at)
/* 1DB170 801EA400 8C620000 */  lw         $v0, 0x0($v1)
/* 1DB174 801EA404 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 1DB178 801EA408 00021080 */  sll        $v0, $v0, 2
.L801EA40C_ovl9:
/* 1DB17C 801EA40C 00220821 */  addu       $at, $at, $v0
/* 1DB180 801EA410 C4286BD0 */  lwc1       $f8, %lo(D_800E6BD0)($at)
/* 1DB184 801EA414 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 1DB188 801EA418 00220821 */  addu       $at, $at, $v0
.L801EA41C_ovl9:
/* 1DB18C 801EA41C E428A6E0 */  swc1       $f8, %lo(D_800EA6E0)($at)
/* 1DB190 801EA420 8C6D0000 */  lw         $t5, 0x0($v1)
/* 1DB194 801EA424 3C01801F */  lui        $at, %hi(func_801F4B30_ovl10 + 0x30)
/* 1DB198 801EA428 C42A4B60 */  lwc1       $f10, %lo(func_801F4B30_ovl10 + 0x30)($at)
/* 1DB19C 801EA42C 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 1DB1A0 801EA430 000D7080 */  sll        $t6, $t5, 2
/* 1DB1A4 801EA434 002E0821 */  addu       $at, $at, $t6
/* 1DB1A8 801EA438 E42AAA60 */  swc1       $f10, %lo(D_800EAA60)($at)
/* 1DB1AC 801EA43C 8C6F0000 */  lw         $t7, 0x0($v1)
/* 1DB1B0 801EA440 3C014334 */  lui        $at, (0x43340000 >> 16)
.L801EA444_ovl9:
/* 1DB1B4 801EA444 44818000 */  mtc1       $at, $f16
/* 1DB1B8 801EA448 3C01800F */  lui        $at, %hi(D_800EAC20)
/* 1DB1BC 801EA44C 000FC080 */  sll        $t8, $t7, 2
/* 1DB1C0 801EA450 00380821 */  addu       $at, $at, $t8
/* 1DB1C4 801EA454 E430AC20 */  swc1       $f16, %lo(D_800EAC20)($at)
.L801EA458_ovl9:
/* 1DB1C8 801EA458 8C620000 */  lw         $v0, 0x0($v1)
/* 1DB1CC 801EA45C 3C01801F */  lui        $at, %hi(func_801F4B30_ovl10 + 0x34)
/* 1DB1D0 801EA460 C4244B64 */  lwc1       $f4, %lo(func_801F4B30_ovl10 + 0x34)($at)
/* 1DB1D4 801EA464 00021080 */  sll        $v0, $v0, 2
/* 1DB1D8 801EA468 0082C821 */  addu       $t9, $a0, $v0
/* 1DB1DC 801EA46C C7320000 */  lwc1       $f18, 0x0($t9)
.L801EA470_ovl9:
/* 1DB1E0 801EA470 3C01800F */  lui        $at, %hi(D_800EADE0)
/* 1DB1E4 801EA474 00220821 */  addu       $at, $at, $v0
/* 1DB1E8 801EA478 46049182 */  mul.s      $f6, $f18, $f4
/* 1DB1EC 801EA47C E426ADE0 */  swc1       $f6, %lo(D_800EADE0)($at)
/* 1DB1F0 801EA480 8C620000 */  lw         $v0, 0x0($v1)
/* 1DB1F4 801EA484 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
.L801EA488_ovl9:
/* 1DB1F8 801EA488 00021080 */  sll        $v0, $v0, 2
/* 1DB1FC 801EA48C 00220821 */  addu       $at, $at, $v0
/* 1DB200 801EA490 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* 1DB204 801EA494 3C014234 */  lui        $at, (0x42340000 >> 16)
/* 1DB208 801EA498 44815000 */  mtc1       $at, $f10
/* 1DB20C 801EA49C 3C01800F */  lui        $at, %hi(D_800EAFA0)
/* 1DB210 801EA4A0 00220821 */  addu       $at, $at, $v0
/* 1DB214 801EA4A4 460A4401 */  sub.s      $f16, $f8, $f10
/* 1DB218 801EA4A8 0C07A930 */  jal        func_801EA4C0_ovl10
/* 1DB21C 801EA4AC E430AFA0 */   swc1      $f16, %lo(D_800EAFA0)($at)
/* 1DB220 801EA4B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1DB224 801EA4B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1DB228 801EA4B8 03E00008 */  jr         $ra
/* 1DB22C 801EA4BC 00000000 */   nop
