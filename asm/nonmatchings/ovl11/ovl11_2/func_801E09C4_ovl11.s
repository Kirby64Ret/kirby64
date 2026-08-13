nonmatching func_801E09C4_ovl11, 0x130

glabel func_801E09C4_ovl11
    /* 1EB284 801E09C4 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 1EB288 801E09C8 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 1EB28C 801E09CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EB290 801E09D0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EB294 801E09D4 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1EB298 801E09D8 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 1EB29C 801E09DC 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 1EB2A0 801E09E0 44800000 */  mtc1       $zero, $f0
    /* 1EB2A4 801E09E4 000E7880 */  sll        $t7, $t6, 2
    /* 1EB2A8 801E09E8 002F0821 */  addu       $at, $at, $t7
    /* 1EB2AC 801E09EC AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* 1EB2B0 801E09F0 8C620000 */  lw         $v0, 0x0($v1)
    /* 1EB2B4 801E09F4 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 1EB2B8 801E09F8 00021080 */  sll        $v0, $v0, 2
    /* 1EB2BC 801E09FC 00220821 */  addu       $at, $at, $v0
    /* 1EB2C0 801E0A00 C4243050 */  lwc1       $f4, %lo(D_800E3050)($at)
    /* 1EB2C4 801E0A04 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 1EB2C8 801E0A08 00220821 */  addu       $at, $at, $v0
    /* 1EB2CC 801E0A0C 46040032 */  c.eq.s     $f0, $f4
    /* 1EB2D0 801E0A10 00000000 */  nop
    /* 1EB2D4 801E0A14 45000028 */  bc1f       .L801E0AB8_ovl11
    /* 1EB2D8 801E0A18 00000000 */   nop
    /* 1EB2DC 801E0A1C C42633D0 */  lwc1       $f6, %lo(D_800E33D0)($at)
    /* 1EB2E0 801E0A20 3C01800E */  lui        $at, %hi(D_800E3590)
    /* 1EB2E4 801E0A24 00220821 */  addu       $at, $at, $v0
    /* 1EB2E8 801E0A28 46060032 */  c.eq.s     $f0, $f6
    /* 1EB2EC 801E0A2C 00000000 */  nop
    /* 1EB2F0 801E0A30 45000021 */  bc1f       .L801E0AB8_ovl11
    /* 1EB2F4 801E0A34 00000000 */   nop
    /* 1EB2F8 801E0A38 C4283590 */  lwc1       $f8, %lo(D_800E3590)($at)
    /* 1EB2FC 801E0A3C 3C01800E */  lui        $at, %hi(D_800E3910)
    /* 1EB300 801E0A40 00220821 */  addu       $at, $at, $v0
    /* 1EB304 801E0A44 46080032 */  c.eq.s     $f0, $f8
    /* 1EB308 801E0A48 00000000 */  nop
    /* 1EB30C 801E0A4C 4500001A */  bc1f       .L801E0AB8_ovl11
    /* 1EB310 801E0A50 00000000 */   nop
    /* 1EB314 801E0A54 C42A3910 */  lwc1       $f10, %lo(D_800E3910)($at)
    /* 1EB318 801E0A58 3C04800E */  lui        $a0, %hi(D_800E3750)
    /* 1EB31C 801E0A5C 460A0032 */  c.eq.s     $f0, $f10
    /* 1EB320 801E0A60 00000000 */  nop
    /* 1EB324 801E0A64 45000014 */  bc1f       .L801E0AB8_ovl11
    /* 1EB328 801E0A68 00000000 */   nop
    /* 1EB32C 801E0A6C 44808000 */  mtc1       $zero, $f16
    /* 1EB330 801E0A70 24843750 */  addiu      $a0, $a0, %lo(D_800E3750)
    /* 1EB334 801E0A74 0082C021 */  addu       $t8, $a0, $v0
    /* 1EB338 801E0A78 E7100000 */  swc1       $f16, 0x0($t8)
    /* 1EB33C 801E0A7C 8C620000 */  lw         $v0, 0x0($v1)
    /* 1EB340 801E0A80 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 1EB344 801E0A84 00021080 */  sll        $v0, $v0, 2
    /* 1EB348 801E0A88 0082C821 */  addu       $t9, $a0, $v0
    /* 1EB34C 801E0A8C C7320000 */  lwc1       $f18, 0x0($t9)
    /* 1EB350 801E0A90 00220821 */  addu       $at, $at, $v0
    /* 1EB354 801E0A94 E4323210 */  swc1       $f18, %lo(D_800E3210)($at)
    /* 1EB358 801E0A98 8C680000 */  lw         $t0, 0x0($v1)
    /* 1EB35C 801E0A9C 3C01801E */  lui        $at, %hi(D_801E0C50_ovl11)
    /* 1EB360 801E0AA0 C4240C50 */  lwc1       $f4, %lo(D_801E0C50_ovl11)($at)
    /* 1EB364 801E0AA4 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* 1EB368 801E0AA8 00084880 */  sll        $t1, $t0, 2
    /* 1EB36C 801E0AAC 00290821 */  addu       $at, $at, $t1
    /* 1EB370 801E0AB0 1000000C */  b          .L801E0AE4_ovl11
    /* 1EB374 801E0AB4 E4243C90 */   swc1      $f4, %lo(D_800E3C90)($at)
  .L801E0AB8_ovl11:
    /* 1EB378 801E0AB8 3C0A800E */  lui        $t2, %hi(D_800E3210)
    /* 1EB37C 801E0ABC 254A3210 */  addiu      $t2, $t2, %lo(D_800E3210)
    /* 1EB380 801E0AC0 004A1821 */  addu       $v1, $v0, $t2
    /* 1EB384 801E0AC4 C4660000 */  lwc1       $f6, 0x0($v1)
    /* 1EB388 801E0AC8 3C01801E */  lui        $at, %hi(D_801E0C54_ovl11)
    /* 1EB38C 801E0ACC C42A0C54 */  lwc1       $f10, %lo(D_801E0C54_ovl11)($at)
    /* 1EB390 801E0AD0 46003207 */  neg.s      $f8, $f6
    /* 1EB394 801E0AD4 240401D9 */  addiu      $a0, $zero, 0x1D9
    /* 1EB398 801E0AD8 460A4402 */  mul.s      $f16, $f8, $f10
    /* 1EB39C 801E0ADC 0C029D9E */  jal        play_sound
    /* 1EB3A0 801E0AE0 E4700000 */   swc1      $f16, 0x0($v1)
  .L801E0AE4_ovl11:
    /* 1EB3A4 801E0AE4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EB3A8 801E0AE8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EB3AC 801E0AEC 03E00008 */  jr         $ra
    /* 1EB3B0 801E0AF0 00000000 */   nop
endlabel func_801E09C4_ovl11
.size func_801E09C4_ovl11, . - func_801E09C4_ovl11
    /* 1EB3B4 801E0AF4 00000000 */  nop
    /* 1EB3B8 801E0AF8 00000000 */  nop
    /* 1EB3BC 801E0AFC 00000000 */  nop
