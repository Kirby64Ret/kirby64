glabel func_802071AC_ovl9
/* 1B51FC 802071AC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1B5200 802071B0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1B5204 802071B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B5208 802071B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B520C 802071BC 8DC20000 */  lw         $v0, 0x0($t6)
/* 1B5210 802071C0 3C03800F */  lui        $v1, %hi(D_800EA520)
/* 1B5214 802071C4 24010001 */  addiu      $at, $zero, 0x1
/* 1B5218 802071C8 00021080 */  sll        $v0, $v0, 2
/* 1B521C 802071CC 00621821 */  addu       $v1, $v1, $v0
/* 1B5220 802071D0 8C63A520 */  lw         $v1, %lo(D_800EA520)($v1)
/* 1B5224 802071D4 10610007 */  beq        $v1, $at, .L802071F4_ovl9
/* 1B5228 802071D8 24010002 */   addiu     $at, $zero, 0x2
/* 1B522C 802071DC 1061000F */  beq        $v1, $at, .L8020721C_ovl9
/* 1B5230 802071E0 24010003 */   addiu     $at, $zero, 0x3
/* 1B5234 802071E4 10610017 */  beq        $v1, $at, .L80207244_ovl9
/* 1B5238 802071E8 3C048022 */   lui       $a0, %hi(D_8021DA20_ovl9)
/* 1B523C 802071EC 1000001F */  b          .L8020726C_ovl9
/* 1B5240 802071F0 00000000 */   nop
.L802071F4_ovl9:
/* 1B5244 802071F4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1B5248 802071F8 00220821 */  addu       $at, $at, $v0
/* 1B524C 802071FC C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
/* 1B5250 80207200 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
/* 1B5254 80207204 44813000 */  mtc1       $at, $f6
/* 1B5258 80207208 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 1B525C 8020720C 00220821 */  addu       $at, $at, $v0
/* 1B5260 80207210 46062201 */  sub.s      $f8, $f4, $f6
/* 1B5264 80207214 10000024 */  b          .L802072A8_ovl9
/* 1B5268 80207218 E428A8A0 */   swc1      $f8, %lo(D_800EA8A0)($at)
.L8020721C_ovl9:
/* 1B526C 8020721C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1B5270 80207220 00220821 */  addu       $at, $at, $v0
/* 1B5274 80207224 C42A2790 */  lwc1       $f10, %lo(gEntitiesNextPosYArray)($at)
/* 1B5278 80207228 3C01430C */  lui        $at, (0x430C0000 >> 16)
/* 1B527C 8020722C 44818000 */  mtc1       $at, $f16
/* 1B5280 80207230 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 1B5284 80207234 00220821 */  addu       $at, $at, $v0
/* 1B5288 80207238 46105481 */  sub.s      $f18, $f10, $f16
/* 1B528C 8020723C 1000001A */  b          .L802072A8_ovl9
/* 1B5290 80207240 E432A8A0 */   swc1      $f18, %lo(D_800EA8A0)($at)
.L80207244_ovl9:
/* 1B5294 80207244 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1B5298 80207248 00220821 */  addu       $at, $at, $v0
/* 1B529C 8020724C C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
/* 1B52A0 80207250 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 1B52A4 80207254 44813000 */  mtc1       $at, $f6
/* 1B52A8 80207258 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 1B52AC 8020725C 00220821 */  addu       $at, $at, $v0
/* 1B52B0 80207260 46062201 */  sub.s      $f8, $f4, $f6
/* 1B52B4 80207264 10000010 */  b          .L802072A8_ovl9
/* 1B52B8 80207268 E428A8A0 */   swc1      $f8, %lo(D_800EA8A0)($at)
.L8020726C_ovl9:
/* 1B52BC 8020726C 0C02909C */  jal        print_error_stub
/* 1B52C0 80207270 2484DA20 */   addiu     $a0, $a0, %lo(D_8021DA20_ovl9)
/* 1B52C4 80207274 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 1B52C8 80207278 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 1B52CC 8020727C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 1B52D0 80207280 8DE20000 */  lw         $v0, 0x0($t7)
/* 1B52D4 80207284 00021080 */  sll        $v0, $v0, 2
/* 1B52D8 80207288 00220821 */  addu       $at, $at, $v0
/* 1B52DC 8020728C C42A2790 */  lwc1       $f10, %lo(gEntitiesNextPosYArray)($at)
/* 1B52E0 80207290 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 1B52E4 80207294 44818000 */  mtc1       $at, $f16
/* 1B52E8 80207298 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 1B52EC 8020729C 00220821 */  addu       $at, $at, $v0
/* 1B52F0 802072A0 46105481 */  sub.s      $f18, $f10, $f16
/* 1B52F4 802072A4 E432A8A0 */  swc1       $f18, %lo(D_800EA8A0)($at)
.L802072A8_ovl9:
/* 1B52F8 802072A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B52FC 802072AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B5300 802072B0 03E00008 */  jr         $ra
/* 1B5304 802072B4 00000000 */   nop
/* 1B5308 802072B8 00000000 */  nop
/* 1B530C 802072BC 00000000 */  nop
