glabel func_801058B8
/* 08E328 801058B8 27BDFE98 */  addiu $sp, $sp, -0x168
/* 08E32C 801058BC AFBF007C */  sw    $ra, 0x7c($sp)
/* 08E330 801058C0 AFB70078 */  sw    $s7, 0x78($sp)
/* 08E334 801058C4 AFB60074 */  sw    $s6, 0x74($sp)
/* 08E338 801058C8 AFB50070 */  sw    $s5, 0x70($sp)
/* 08E33C 801058CC AFB4006C */  sw    $s4, 0x6c($sp)
/* 08E340 801058D0 AFB30068 */  sw    $s3, 0x68($sp)
/* 08E344 801058D4 AFB20064 */  sw    $s2, 0x64($sp)
/* 08E348 801058D8 AFB10060 */  sw    $s1, 0x60($sp)
/* 08E34C 801058DC AFB0005C */  sw    $s0, 0x5c($sp)
/* 08E350 801058E0 F7BE0050 */  sdc1  $f30, 0x50($sp)
/* 08E354 801058E4 F7BC0048 */  sdc1  $f28, 0x48($sp)
/* 08E358 801058E8 F7BA0040 */  sdc1  $f26, 0x40($sp)
/* 08E35C 801058EC F7B80038 */  sdc1  $f24, 0x38($sp)
/* 08E360 801058F0 F7B60030 */  sdc1  $f22, 0x30($sp)
/* 08E364 801058F4 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 08E368 801058F8 AFA70174 */  sw    $a3, 0x174($sp)
/* 08E36C 801058FC C4860000 */  lwc1  $f6, ($a0)
/* 08E370 80105900 C4A40000 */  lwc1  $f4, ($a1)
/* 08E374 80105904 C48A0004 */  lwc1  $f10, 4($a0)
/* 08E378 80105908 C4A80004 */  lwc1  $f8, 4($a1)
/* 08E37C 8010590C 46062001 */  sub.s $f0, $f4, $f6
/* 08E380 80105910 C4860008 */  lwc1  $f6, 8($a0)
/* 08E384 80105914 C4A40008 */  lwc1  $f4, 8($a1)
/* 08E388 80105918 460A4081 */  sub.s $f2, $f8, $f10
/* 08E38C 8010591C 46000202 */  mul.s $f8, $f0, $f0
/* 08E390 80105920 00809025 */  move  $s2, $a0
/* 08E394 80105924 46062381 */  sub.s $f14, $f4, $f6
/* 08E398 80105928 46021282 */  mul.s $f10, $f2, $f2
/* 08E39C 8010592C 00A0A025 */  move  $s4, $a1
/* 08E3A0 80105930 00C0A825 */  move  $s5, $a2
/* 08E3A4 80105934 460E7182 */  mul.s $f6, $f14, $f14
/* 08E3A8 80105938 460A4100 */  add.s $f4, $f8, $f10
/* 08E3AC 8010593C 0C00CAC8 */  jal   sqrtf
/* 08E3B0 80105940 46062300 */   add.s $f12, $f4, $f6
/* 08E3B4 80105944 4480D000 */  mtc1  $zero, $f26
/* 08E3B8 80105948 46000706 */  mov.s $f28, $f0
/* 08E3BC 8010594C 8FA30178 */  lw    $v1, 0x178($sp)
/* 08E3C0 80105950 461A0032 */  c.eq.s $f0, $f26
/* 08E3C4 80105954 00000000 */  nop   
/* 08E3C8 80105958 4502000A */  bc1fl .L80105984_ovl2
/* 08E3CC 8010595C 8E590000 */   lw    $t9, ($s2)
/* 08E3D0 80105960 8E4F0000 */  lw    $t7, ($s2)
/* 08E3D4 80105964 00001025 */  move  $v0, $zero
/* 08E3D8 80105968 AC6F0000 */  sw    $t7, ($v1)
/* 08E3DC 8010596C 8E4E0004 */  lw    $t6, 4($s2)
/* 08E3E0 80105970 AC6E0004 */  sw    $t6, 4($v1)
/* 08E3E4 80105974 8E4F0008 */  lw    $t7, 8($s2)
/* 08E3E8 80105978 100001C1 */  b     .L80106080_ovl2
/* 08E3EC 8010597C AC6F0008 */   sw    $t7, 8($v1)
/* 08E3F0 80105980 8E590000 */  lw    $t9, ($s2)
.L80105984_ovl2:
/* 08E3F4 80105984 27B7014C */  addiu $s7, $sp, 0x14c
/* 08E3F8 80105988 27B60140 */  addiu $s6, $sp, 0x140
/* 08E3FC 8010598C AEF90000 */  sw    $t9, ($s7)
/* 08E400 80105990 8E580004 */  lw    $t8, 4($s2)
/* 08E404 80105994 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 08E408 80105998 02A08025 */  move  $s0, $s5
/* 08E40C 8010599C AEF80004 */  sw    $t8, 4($s7)
/* 08E410 801059A0 8E590008 */  lw    $t9, 8($s2)
/* 08E414 801059A4 02A09825 */  move  $s3, $s5
/* 08E418 801059A8 02A08825 */  move  $s1, $s5
/* 08E41C 801059AC AEF90008 */  sw    $t9, 8($s7)
/* 08E420 801059B0 8E890000 */  lw    $t1, ($s4)
/* 08E424 801059B4 3C128013 */  lui   $s2, %hi(D_8012BD00) # $s2, 0x8013
/* 08E428 801059B8 4481F000 */  mtc1  $at, $f30
/* 08E42C 801059BC AEC90000 */  sw    $t1, ($s6)
/* 08E430 801059C0 8E880004 */  lw    $t0, 4($s4)
/* 08E434 801059C4 2652BD00 */  addiu $s2, %lo(D_8012BD00) # addiu $s2, $s2, -0x4300
/* 08E438 801059C8 27B500EC */  addiu $s5, $sp, 0xec
/* 08E43C 801059CC AEC80004 */  sw    $t0, 4($s6)
/* 08E440 801059D0 8E890008 */  lw    $t1, 8($s4)
/* 08E444 801059D4 27B40134 */  addiu $s4, $sp, 0x134
/* 08E448 801059D8 AEC90008 */  sw    $t1, 8($s6)
/* 08E44C 801059DC AFA00110 */  sw    $zero, 0x110($sp)
.L801059E0_ovl2:
/* 08E450 801059E0 C7A80140 */  lwc1  $f8, 0x140($sp)
/* 08E454 801059E4 C64A0014 */  lwc1  $f10, 0x14($s2)
/* 08E458 801059E8 C7A60144 */  lwc1  $f6, 0x144($sp)
/* 08E45C 801059EC 02202025 */  move  $a0, $s1
/* 08E460 801059F0 460A4100 */  add.s $f4, $f8, $f10
/* 08E464 801059F4 C64A0018 */  lwc1  $f10, 0x18($s2)
/* 08E468 801059F8 C7A80148 */  lwc1  $f8, 0x148($sp)
/* 08E46C 801059FC 27A50104 */  addiu $a1, $sp, 0x104
/* 08E470 80105A00 E7A40104 */  swc1  $f4, 0x104($sp)
/* 08E474 80105A04 460A4100 */  add.s $f4, $f8, $f10
/* 08E478 80105A08 02C03025 */  move  $a2, $s6
/* 08E47C 80105A0C 02803825 */  move  $a3, $s4
/* 08E480 80105A10 E7A60108 */  swc1  $f6, 0x108($sp)
/* 08E484 80105A14 0C0415F1 */  jal   func_801057C4
/* 08E488 80105A18 E7A4010C */   swc1  $f4, 0x10c($sp)
/* 08E48C 80105A1C 10400005 */  beqz  $v0, .L80105A34_ovl2
/* 08E490 80105A20 02E02025 */   move  $a0, $s7
/* 08E494 80105A24 C7B0013C */  lwc1  $f16, 0x13c($sp)
/* 08E498 80105A28 C7B20134 */  lwc1  $f18, 0x134($sp)
/* 08E49C 80105A2C E7B00148 */  swc1  $f16, 0x148($sp)
/* 08E4A0 80105A30 E7B20140 */  swc1  $f18, 0x140($sp)
.L80105A34_ovl2:
/* 08E4A4 80105A34 27AA0130 */  addiu $t2, $sp, 0x130
/* 08E4A8 80105A38 27AB0120 */  addiu $t3, $sp, 0x120
/* 08E4AC 80105A3C 27AC0118 */  addiu $t4, $sp, 0x118
/* 08E4B0 80105A40 AFAC0020 */  sw    $t4, 0x20($sp)
/* 08E4B4 80105A44 AFAB001C */  sw    $t3, 0x1c($sp)
/* 08E4B8 80105A48 AFAA0018 */  sw    $t2, 0x18($sp)
/* 08E4BC 80105A4C 02C02825 */  move  $a1, $s6
/* 08E4C0 80105A50 02003025 */  move  $a2, $s0
/* 08E4C4 80105A54 02603825 */  move  $a3, $s3
/* 08E4C8 80105A58 AFA00010 */  sw    $zero, 0x10($sp)
/* 08E4CC 80105A5C 0C041148 */  jal   func_80104520
/* 08E4D0 80105A60 AFB40014 */   sw    $s4, 0x14($sp)
/* 08E4D4 80105A64 10400151 */  beqz  $v0, .L80105FAC_ovl2
/* 08E4D8 80105A68 C7B20134 */   lwc1  $f18, 0x134($sp)
/* 08E4DC 80105A6C C7A6014C */  lwc1  $f6, 0x14c($sp)
/* 08E4E0 80105A70 C7A80138 */  lwc1  $f8, 0x138($sp)
/* 08E4E4 80105A74 C7AA0150 */  lwc1  $f10, 0x150($sp)
/* 08E4E8 80105A78 46069001 */  sub.s $f0, $f18, $f6
/* 08E4EC 80105A7C C7B0013C */  lwc1  $f16, 0x13c($sp)
/* 08E4F0 80105A80 C7A40154 */  lwc1  $f4, 0x154($sp)
/* 08E4F4 80105A84 460A4601 */  sub.s $f24, $f8, $f10
/* 08E4F8 80105A88 46000182 */  mul.s $f6, $f0, $f0
/* 08E4FC 80105A8C 46000506 */  mov.s $f20, $f0
/* 08E500 80105A90 46048581 */  sub.s $f22, $f16, $f4
/* 08E504 80105A94 4618C202 */  mul.s $f8, $f24, $f24
/* 08E508 80105A98 46083280 */  add.s $f10, $f6, $f8
/* 08E50C 80105A9C 4616B102 */  mul.s $f4, $f22, $f22
/* 08E510 80105AA0 0C00CAC8 */  jal   sqrtf
/* 08E514 80105AA4 46045300 */   add.s $f12, $f10, $f4
/* 08E518 80105AA8 4600E03E */  c.le.s $f28, $f0
/* 08E51C 80105AAC E7A000F4 */  swc1  $f0, 0xf4($sp)
/* 08E520 80105AB0 8FA90130 */  lw    $t1, 0x130($sp)
/* 08E524 80105AB4 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 08E528 80105AB8 4500001C */  bc1f  .L80105B2C_ovl2
/* 08E52C 80105ABC 240E0001 */   li    $t6, 1
/* 08E530 80105AC0 4600E083 */  div.s $f2, $f28, $f0
/* 08E534 80105AC4 C7A8014C */  lwc1  $f8, 0x14c($sp)
/* 08E538 80105AC8 8FA30178 */  lw    $v1, 0x178($sp)
/* 08E53C 80105ACC 4602A182 */  mul.s $f6, $f20, $f2
/* 08E540 80105AD0 46083280 */  add.s $f10, $f6, $f8
/* 08E544 80105AD4 4602C102 */  mul.s $f4, $f24, $f2
/* 08E548 80105AD8 E46A0000 */  swc1  $f10, ($v1)
/* 08E54C 80105ADC C7A60150 */  lwc1  $f6, 0x150($sp)
/* 08E550 80105AE0 4602B282 */  mul.s $f10, $f22, $f2
/* 08E554 80105AE4 46062200 */  add.s $f8, $f4, $f6
/* 08E558 80105AE8 E4680004 */  swc1  $f8, 4($v1)
/* 08E55C 80105AEC C7A40154 */  lwc1  $f4, 0x154($sp)
/* 08E560 80105AF0 46045180 */  add.s $f6, $f10, $f4
/* 08E564 80105AF4 E4660008 */  swc1  $f6, 8($v1)
/* 08E568 80105AF8 8FAD0110 */  lw    $t5, 0x110($sp)
/* 08E56C 80105AFC 8FAE0180 */  lw    $t6, 0x180($sp)
/* 08E570 80105B00 11A00008 */  beqz  $t5, .L80105B24_ovl2
/* 08E574 80105B04 00000000 */   nop   
/* 08E578 80105B08 ADD10000 */  sw    $s1, ($t6)
/* 08E57C 80105B0C 8FB80184 */  lw    $t8, 0x184($sp)
/* 08E580 80105B10 8FAF011C */  lw    $t7, 0x11c($sp)
/* 08E584 80105B14 AF0F0000 */  sw    $t7, ($t8)
/* 08E588 80105B18 8FA80188 */  lw    $t0, 0x188($sp)
/* 08E58C 80105B1C 8FB90114 */  lw    $t9, 0x114($sp)
/* 08E590 80105B20 AD190000 */  sw    $t9, ($t0)
.L80105B24_ovl2:
/* 08E594 80105B24 10000156 */  b     .L80106080_ovl2
/* 08E598 80105B28 00001025 */   move  $v0, $zero
.L80105B2C_ovl2:
/* 08E59C 80105B2C C52C0004 */  lwc1  $f12, 4($t1)
/* 08E5A0 80105B30 44814000 */  mtc1  $at, $f8
/* 08E5A4 80105B34 C7AA0140 */  lwc1  $f10, 0x140($sp)
/* 08E5A8 80105B38 461A603C */  c.lt.s $f12, $f26
/* 08E5AC 80105B3C C7A4014C */  lwc1  $f4, 0x14c($sp)
/* 08E5B0 80105B40 C7A60144 */  lwc1  $f6, 0x144($sp)
/* 08E5B4 80105B44 45020004 */  bc1fl .L80105B58_ovl2
/* 08E5B8 80105B48 46006086 */   mov.s $f2, $f12
/* 08E5BC 80105B4C 10000002 */  b     .L80105B58_ovl2
/* 08E5C0 80105B50 46006087 */   neg.s $f2, $f12
/* 08E5C4 80105B54 46006086 */  mov.s $f2, $f12
.L80105B58_ovl2:
/* 08E5C8 80105B58 4608103E */  c.le.s $f2, $f8
/* 08E5CC 80105B5C C7A80150 */  lwc1  $f8, 0x150($sp)
/* 08E5D0 80105B60 45030103 */  bc1tl .L80105F70_ovl2
/* 08E5D4 80105B64 8E8B0000 */   lw    $t3, ($s4)
/* 08E5D8 80105B68 46045001 */  sub.s $f0, $f10, $f4
/* 08E5DC 80105B6C C7A40154 */  lwc1  $f4, 0x154($sp)
/* 08E5E0 80105B70 C7AA0148 */  lwc1  $f10, 0x148($sp)
/* 08E5E4 80105B74 46083601 */  sub.s $f24, $f6, $f8
/* 08E5E8 80105B78 46000182 */  mul.s $f6, $f0, $f0
/* 08E5EC 80105B7C 46000506 */  mov.s $f20, $f0
/* 08E5F0 80105B80 46045581 */  sub.s $f22, $f10, $f4
/* 08E5F4 80105B84 4618C202 */  mul.s $f8, $f24, $f24
/* 08E5F8 80105B88 46083280 */  add.s $f10, $f6, $f8
/* 08E5FC 80105B8C 4616B102 */  mul.s $f4, $f22, $f22
/* 08E600 80105B90 0C00CAC8 */  jal   sqrtf
/* 08E604 80105B94 46045300 */   add.s $f12, $f10, $f4
/* 08E608 80105B98 C7A40150 */  lwc1  $f4, 0x150($sp)
/* 08E60C 80105B9C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 08E610 80105BA0 C7B00174 */  lwc1  $f16, 0x174($sp)
/* 08E614 80105BA4 E7A400E4 */  swc1  $f4, 0xe4($sp)
/* 08E618 80105BA8 44812000 */  mtc1  $at, $f4
/* 08E61C 80105BAC C6460014 */  lwc1  $f6, 0x14($s2)
/* 08E620 80105BB0 C7A8014C */  lwc1  $f8, 0x14c($sp)
/* 08E624 80105BB4 46002083 */  div.s $f2, $f4, $f0
/* 08E628 80105BB8 27A400E0 */  addiu $a0, $sp, 0xe0
/* 08E62C 80105BBC 27A500D4 */  addiu $a1, $sp, 0xd4
/* 08E630 80105BC0 00003025 */  move  $a2, $zero
/* 08E634 80105BC4 46103302 */  mul.s $f12, $f6, $f16
/* 08E638 80105BC8 C6460018 */  lwc1  $f6, 0x18($s2)
/* 08E63C 80105BCC 00003825 */  move  $a3, $zero
/* 08E640 80105BD0 AFA00010 */  sw    $zero, 0x10($sp)
/* 08E644 80105BD4 46103382 */  mul.s $f14, $f6, $f16
/* 08E648 80105BD8 AFB50014 */  sw    $s5, 0x14($sp)
/* 08E64C 80105BDC AFA00018 */  sw    $zero, 0x18($sp)
/* 08E650 80105BE0 AFA0001C */  sw    $zero, 0x1c($sp)
/* 08E654 80105BE4 46086280 */  add.s $f10, $f12, $f8
/* 08E658 80105BE8 C7A80154 */  lwc1  $f8, 0x154($sp)
/* 08E65C 80105BEC 4602A182 */  mul.s $f6, $f20, $f2
/* 08E660 80105BF0 E7AA00E0 */  swc1  $f10, 0xe0($sp)
/* 08E664 80105BF4 46087280 */  add.s $f10, $f14, $f8
/* 08E668 80105BF8 C7A80140 */  lwc1  $f8, 0x140($sp)
/* 08E66C 80105BFC E7AA00E8 */  swc1  $f10, 0xe8($sp)
/* 08E670 80105C00 46083280 */  add.s $f10, $f6, $f8
/* 08E674 80105C04 4602C182 */  mul.s $f6, $f24, $f2
/* 08E678 80105C08 C7A80144 */  lwc1  $f8, 0x144($sp)
/* 08E67C 80105C0C 460C5100 */  add.s $f4, $f10, $f12
/* 08E680 80105C10 46083280 */  add.s $f10, $f6, $f8
/* 08E684 80105C14 E7A400D4 */  swc1  $f4, 0xd4($sp)
/* 08E688 80105C18 4602B102 */  mul.s $f4, $f22, $f2
/* 08E68C 80105C1C C7A60148 */  lwc1  $f6, 0x148($sp)
/* 08E690 80105C20 E7AA00D8 */  swc1  $f10, 0xd8($sp)
/* 08E694 80105C24 46062200 */  add.s $f8, $f4, $f6
/* 08E698 80105C28 460E4280 */  add.s $f10, $f8, $f14
/* 08E69C 80105C2C 0C040FA8 */  jal   func_80103EA0
/* 08E6A0 80105C30 E7AA00DC */   swc1  $f10, 0xdc($sp)
/* 08E6A4 80105C34 10400031 */  beqz  $v0, .L80105CFC_ovl2
/* 08E6A8 80105C38 8FAA00EC */   lw    $t2, 0xec($sp)
/* 08E6AC 80105C3C C5440000 */  lwc1  $f4, ($t2)
/* 08E6B0 80105C40 C7A60134 */  lwc1  $f6, 0x134($sp)
/* 08E6B4 80105C44 C54A0004 */  lwc1  $f10, 4($t2)
/* 08E6B8 80105C48 46062202 */  mul.s $f8, $f4, $f6
/* 08E6BC 80105C4C C7A40138 */  lwc1  $f4, 0x138($sp)
/* 08E6C0 80105C50 46045182 */  mul.s $f6, $f10, $f4
/* 08E6C4 80105C54 C5440008 */  lwc1  $f4, 8($t2)
/* 08E6C8 80105C58 46064280 */  add.s $f10, $f8, $f6
/* 08E6CC 80105C5C C7A8013C */  lwc1  $f8, 0x13c($sp)
/* 08E6D0 80105C60 46082182 */  mul.s $f6, $f4, $f8
/* 08E6D4 80105C64 C548000C */  lwc1  $f8, 0xc($t2)
/* 08E6D8 80105C68 46065100 */  add.s $f4, $f10, $f6
/* 08E6DC 80105C6C 46082000 */  add.s $f0, $f4, $f8
/* 08E6E0 80105C70 461A003C */  c.lt.s $f0, $f26
/* 08E6E4 80105C74 00000000 */  nop   
/* 08E6E8 80105C78 45020004 */  bc1fl .L80105C8C_ovl2
/* 08E6EC 80105C7C 46000086 */   mov.s $f2, $f0
/* 08E6F0 80105C80 10000002 */  b     .L80105C8C_ovl2
/* 08E6F4 80105C84 46000087 */   neg.s $f2, $f0
/* 08E6F8 80105C88 46000086 */  mov.s $f2, $f0
.L80105C8C_ovl2:
/* 08E6FC 80105C8C 461E103C */  c.lt.s $f2, $f30
/* 08E700 80105C90 00000000 */  nop   
/* 08E704 80105C94 4502001A */  bc1fl .L80105D00_ovl2
/* 08E708 80105C98 C7A40174 */   lwc1  $f4, 0x174($sp)
/* 08E70C 80105C9C 8FA30178 */  lw    $v1, 0x178($sp)
/* 08E710 80105CA0 8E8C0000 */  lw    $t4, ($s4)
/* 08E714 80105CA4 AC6C0000 */  sw    $t4, ($v1)
/* 08E718 80105CA8 8E8B0004 */  lw    $t3, 4($s4)
/* 08E71C 80105CAC AC6B0004 */  sw    $t3, 4($v1)
/* 08E720 80105CB0 8E8C0008 */  lw    $t4, 8($s4)
/* 08E724 80105CB4 AC6C0008 */  sw    $t4, 8($v1)
/* 08E728 80105CB8 C7AA00F4 */  lwc1  $f10, 0xf4($sp)
/* 08E72C 80105CBC 8FAD017C */  lw    $t5, 0x17c($sp)
/* 08E730 80105CC0 460AE181 */  sub.s $f6, $f28, $f10
/* 08E734 80105CC4 E5A60000 */  swc1  $f6, ($t5)
/* 08E738 80105CC8 8FAE0110 */  lw    $t6, 0x110($sp)
/* 08E73C 80105CCC 8FAF0180 */  lw    $t7, 0x180($sp)
/* 08E740 80105CD0 11C00008 */  beqz  $t6, .L80105CF4_ovl2
/* 08E744 80105CD4 00000000 */   nop   
/* 08E748 80105CD8 ADF10000 */  sw    $s1, ($t7)
/* 08E74C 80105CDC 8FB90184 */  lw    $t9, 0x184($sp)
/* 08E750 80105CE0 8FB8011C */  lw    $t8, 0x11c($sp)
/* 08E754 80105CE4 AF380000 */  sw    $t8, ($t9)
/* 08E758 80105CE8 8FA90188 */  lw    $t1, 0x188($sp)
/* 08E75C 80105CEC 8FA80114 */  lw    $t0, 0x114($sp)
/* 08E760 80105CF0 AD280000 */  sw    $t0, ($t1)
.L80105CF4_ovl2:
/* 08E764 80105CF4 100000E2 */  b     .L80106080_ovl2
/* 08E768 80105CF8 24020001 */   li    $v0, 1
.L80105CFC_ovl2:
/* 08E76C 80105CFC C7A40174 */  lwc1  $f4, 0x174($sp)
.L80105D00_ovl2:
/* 08E770 80105D00 00001825 */  move  $v1, $zero
/* 08E774 80105D04 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 08E778 80105D08 4604D03C */  c.lt.s $f26, $f4
/* 08E77C 80105D0C 27A400C0 */  addiu $a0, $sp, 0xc0
/* 08E780 80105D10 27A500B4 */  addiu $a1, $sp, 0xb4
/* 08E784 80105D14 00003025 */  move  $a2, $zero
/* 08E788 80105D18 45000005 */  bc1f  .L80105D30_ovl2
/* 08E78C 80105D1C 00003825 */   move  $a3, $zero
/* 08E790 80105D20 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 08E794 80105D24 44810000 */  mtc1  $at, $f0
/* 08E798 80105D28 10000004 */  b     .L80105D3C_ovl2
/* 08E79C 80105D2C C6480014 */   lwc1  $f8, 0x14($s2)
.L80105D30_ovl2:
/* 08E7A0 80105D30 44810000 */  mtc1  $at, $f0
/* 08E7A4 80105D34 00000000 */  nop   
/* 08E7A8 80105D38 C6480014 */  lwc1  $f8, 0x14($s2)
.L80105D3C_ovl2:
/* 08E7AC 80105D3C C7B20134 */  lwc1  $f18, 0x134($sp)
/* 08E7B0 80105D40 4618D03C */  c.lt.s $f26, $f24
/* 08E7B4 80105D44 46004282 */  mul.s $f10, $f8, $f0
/* 08E7B8 80105D48 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 08E7BC 80105D4C 46125180 */  add.s $f6, $f10, $f18
/* 08E7C0 80105D50 45000003 */  bc1f  .L80105D60_ovl2
/* 08E7C4 80105D54 E7A600C0 */   swc1  $f6, 0xc0($sp)
/* 08E7C8 80105D58 10000003 */  b     .L80105D68_ovl2
/* 08E7CC 80105D5C 4600F086 */   mov.s $f2, $f30
.L80105D60_ovl2:
/* 08E7D0 80105D60 44811000 */  mtc1  $at, $f2
/* 08E7D4 80105D64 00000000 */  nop   
.L80105D68_ovl2:
/* 08E7D8 80105D68 C6580018 */  lwc1  $f24, 0x18($s2)
/* 08E7DC 80105D6C C656001C */  lwc1  $f22, 0x1c($s2)
/* 08E7E0 80105D70 C6540020 */  lwc1  $f20, 0x20($s2)
/* 08E7E4 80105D74 4600C602 */  mul.s $f24, $f24, $f0
/* 08E7E8 80105D78 C7B0013C */  lwc1  $f16, 0x13c($sp)
/* 08E7EC 80105D7C C7AE0138 */  lwc1  $f14, 0x138($sp)
/* 08E7F0 80105D80 4600B582 */  mul.s $f22, $f22, $f0
/* 08E7F4 80105D84 AFA00010 */  sw    $zero, 0x10($sp)
/* 08E7F8 80105D88 460E1380 */  add.s $f14, $f2, $f14
/* 08E7FC 80105D8C 4600A502 */  mul.s $f20, $f20, $f0
/* 08E800 80105D90 AFB50014 */  sw    $s5, 0x14($sp)
/* 08E804 80105D94 4610C600 */  add.s $f24, $f24, $f16
/* 08E808 80105D98 E7AE00B8 */  swc1  $f14, 0xb8($sp)
/* 08E80C 80105D9C E7AE00C4 */  swc1  $f14, 0xc4($sp)
/* 08E810 80105DA0 4612B580 */  add.s $f22, $f22, $f18
/* 08E814 80105DA4 E7B800C8 */  swc1  $f24, 0xc8($sp)
/* 08E818 80105DA8 AFA00018 */  sw    $zero, 0x18($sp)
/* 08E81C 80105DAC 4610A400 */  add.s $f16, $f20, $f16
/* 08E820 80105DB0 E7B600B4 */  swc1  $f22, 0xb4($sp)
/* 08E824 80105DB4 AFA0001C */  sw    $zero, 0x1c($sp)
/* 08E828 80105DB8 AFA300AC */  sw    $v1, 0xac($sp)
/* 08E82C 80105DBC 0C04108F */  jal   func_8010423C
/* 08E830 80105DC0 E7B000BC */   swc1  $f16, 0xbc($sp)
/* 08E834 80105DC4 1040001B */  beqz  $v0, .L80105E34_ovl2
/* 08E838 80105DC8 8FA300AC */   lw    $v1, 0xac($sp)
/* 08E83C 80105DCC 8FAA00EC */  lw    $t2, 0xec($sp)
/* 08E840 80105DD0 C7A60134 */  lwc1  $f6, 0x134($sp)
/* 08E844 80105DD4 C54A0000 */  lwc1  $f10, ($t2)
/* 08E848 80105DD8 C5480004 */  lwc1  $f8, 4($t2)
/* 08E84C 80105DDC 46065102 */  mul.s $f4, $f10, $f6
/* 08E850 80105DE0 C7AA0138 */  lwc1  $f10, 0x138($sp)
/* 08E854 80105DE4 460A4182 */  mul.s $f6, $f8, $f10
/* 08E858 80105DE8 C54A0008 */  lwc1  $f10, 8($t2)
/* 08E85C 80105DEC 46062200 */  add.s $f8, $f4, $f6
/* 08E860 80105DF0 C7A4013C */  lwc1  $f4, 0x13c($sp)
/* 08E864 80105DF4 46045182 */  mul.s $f6, $f10, $f4
/* 08E868 80105DF8 C544000C */  lwc1  $f4, 0xc($t2)
/* 08E86C 80105DFC 46064280 */  add.s $f10, $f8, $f6
/* 08E870 80105E00 46045000 */  add.s $f0, $f10, $f4
/* 08E874 80105E04 461A003C */  c.lt.s $f0, $f26
/* 08E878 80105E08 00000000 */  nop   
/* 08E87C 80105E0C 45020004 */  bc1fl .L80105E20_ovl2
/* 08E880 80105E10 46000086 */   mov.s $f2, $f0
/* 08E884 80105E14 10000002 */  b     .L80105E20_ovl2
/* 08E888 80105E18 46000087 */   neg.s $f2, $f0
/* 08E88C 80105E1C 46000086 */  mov.s $f2, $f0
.L80105E20_ovl2:
/* 08E890 80105E20 461E103C */  c.lt.s $f2, $f30
/* 08E894 80105E24 00000000 */  nop   
/* 08E898 80105E28 45000002 */  bc1f  .L80105E34_ovl2
/* 08E89C 80105E2C 00000000 */   nop   
/* 08E8A0 80105E30 24030001 */  li    $v1, 1
.L80105E34_ovl2:
/* 08E8A4 80105E34 14600019 */  bnez  $v1, .L80105E9C_ovl2
/* 08E8A8 80105E38 00000000 */   nop   
/* 08E8AC 80105E3C 8FA30178 */  lw    $v1, 0x178($sp)
/* 08E8B0 80105E40 8E8C0000 */  lw    $t4, ($s4)
/* 08E8B4 80105E44 AC6C0000 */  sw    $t4, ($v1)
/* 08E8B8 80105E48 8E8B0004 */  lw    $t3, 4($s4)
/* 08E8BC 80105E4C AC6B0004 */  sw    $t3, 4($v1)
/* 08E8C0 80105E50 8E8C0008 */  lw    $t4, 8($s4)
/* 08E8C4 80105E54 AC6C0008 */  sw    $t4, 8($v1)
/* 08E8C8 80105E58 C7A800F4 */  lwc1  $f8, 0xf4($sp)
/* 08E8CC 80105E5C 8FAD017C */  lw    $t5, 0x17c($sp)
/* 08E8D0 80105E60 4608E181 */  sub.s $f6, $f28, $f8
/* 08E8D4 80105E64 E5A60000 */  swc1  $f6, ($t5)
/* 08E8D8 80105E68 8FAE0110 */  lw    $t6, 0x110($sp)
/* 08E8DC 80105E6C 8FAF0180 */  lw    $t7, 0x180($sp)
/* 08E8E0 80105E70 11C00008 */  beqz  $t6, .L80105E94_ovl2
/* 08E8E4 80105E74 00000000 */   nop   
/* 08E8E8 80105E78 ADF10000 */  sw    $s1, ($t7)
/* 08E8EC 80105E7C 8FB90184 */  lw    $t9, 0x184($sp)
/* 08E8F0 80105E80 8FB8011C */  lw    $t8, 0x11c($sp)
/* 08E8F4 80105E84 AF380000 */  sw    $t8, ($t9)
/* 08E8F8 80105E88 8FA90188 */  lw    $t1, 0x188($sp)
/* 08E8FC 80105E8C 8FA80114 */  lw    $t0, 0x114($sp)
/* 08E900 80105E90 AD280000 */  sw    $t0, ($t1)
.L80105E94_ovl2:
/* 08E904 80105E94 1000007A */  b     .L80106080_ovl2
/* 08E908 80105E98 24020002 */   li    $v0, 2
.L80105E9C_ovl2:
/* 08E90C 80105E9C 12300031 */  beq   $s1, $s0, .L80105F64_ovl2
/* 08E910 80105EA0 00000000 */   nop   
/* 08E914 80105EA4 C6000000 */  lwc1  $f0, ($s0)
/* 08E918 80105EA8 C6220000 */  lwc1  $f2, ($s1)
/* 08E91C 80105EAC 46020032 */  c.eq.s $f0, $f2
/* 08E920 80105EB0 00000000 */  nop   
/* 08E924 80105EB4 45020014 */  bc1fl .L80105F08_ovl2
/* 08E928 80105EB8 C608000C */   lwc1  $f8, 0xc($s0)
/* 08E92C 80105EBC C60A0004 */  lwc1  $f10, 4($s0)
/* 08E930 80105EC0 C6240004 */  lwc1  $f4, 4($s1)
/* 08E934 80105EC4 46045032 */  c.eq.s $f10, $f4
/* 08E938 80105EC8 00000000 */  nop   
/* 08E93C 80105ECC 4502000E */  bc1fl .L80105F08_ovl2
/* 08E940 80105ED0 C608000C */   lwc1  $f8, 0xc($s0)
/* 08E944 80105ED4 C6080008 */  lwc1  $f8, 8($s0)
/* 08E948 80105ED8 C6260008 */  lwc1  $f6, 8($s1)
/* 08E94C 80105EDC 46064032 */  c.eq.s $f8, $f6
/* 08E950 80105EE0 00000000 */  nop   
/* 08E954 80105EE4 45020008 */  bc1fl .L80105F08_ovl2
/* 08E958 80105EE8 C608000C */   lwc1  $f8, 0xc($s0)
/* 08E95C 80105EEC C60A000C */  lwc1  $f10, 0xc($s0)
/* 08E960 80105EF0 C624000C */  lwc1  $f4, 0xc($s1)
/* 08E964 80105EF4 46045032 */  c.eq.s $f10, $f4
/* 08E968 80105EF8 00000000 */  nop   
/* 08E96C 80105EFC 45010019 */  bc1t  .L80105F64_ovl2
/* 08E970 80105F00 00000000 */   nop   
/* 08E974 80105F04 C608000C */  lwc1  $f8, 0xc($s0)
.L80105F08_ovl2:
/* 08E978 80105F08 C62A000C */  lwc1  $f10, 0xc($s1)
/* 08E97C 80105F0C 46004187 */  neg.s $f6, $f8
/* 08E980 80105F10 460A3032 */  c.eq.s $f6, $f10
/* 08E984 80105F14 00000000 */  nop   
/* 08E988 80105F18 45020012 */  bc1fl .L80105F64_ovl2
/* 08E98C 80105F1C 02009825 */   move  $s3, $s0
/* 08E990 80105F20 C6280004 */  lwc1  $f8, 4($s1)
/* 08E994 80105F24 C6060004 */  lwc1  $f6, 4($s0)
/* 08E998 80105F28 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 08E99C 80105F2C 44812000 */  mtc1  $at, $f4
/* 08E9A0 80105F30 46064282 */  mul.s $f10, $f8, $f6
/* 08E9A4 80105F34 00000000 */  nop   
/* 08E9A8 80105F38 46001202 */  mul.s $f8, $f2, $f0
/* 08E9AC 80105F3C 460A4180 */  add.s $f6, $f8, $f10
/* 08E9B0 80105F40 C60A0008 */  lwc1  $f10, 8($s0)
/* 08E9B4 80105F44 C6280008 */  lwc1  $f8, 8($s1)
/* 08E9B8 80105F48 460A4202 */  mul.s $f8, $f8, $f10
/* 08E9BC 80105F4C 46083280 */  add.s $f10, $f6, $f8
/* 08E9C0 80105F50 460A2032 */  c.eq.s $f4, $f10
/* 08E9C4 80105F54 00000000 */  nop   
/* 08E9C8 80105F58 45010002 */  bc1t  .L80105F64_ovl2
/* 08E9CC 80105F5C 00000000 */   nop   
/* 08E9D0 80105F60 02009825 */  move  $s3, $s0
.L80105F64_ovl2:
/* 08E9D4 80105F64 1000FE9E */  b     .L801059E0_ovl2
/* 08E9D8 80105F68 8FB00130 */   lw    $s0, 0x130($sp)
/* 08E9DC 80105F6C 8E8B0000 */  lw    $t3, ($s4)
.L80105F70_ovl2:
/* 08E9E0 80105F70 8FB00130 */  lw    $s0, 0x130($sp)
/* 08E9E4 80105F74 8E8A0004 */  lw    $t2, 4($s4)
/* 08E9E8 80105F78 AEEB0000 */  sw    $t3, ($s7)
/* 08E9EC 80105F7C 8E8B0008 */  lw    $t3, 8($s4)
/* 08E9F0 80105F80 AEEA0004 */  sw    $t2, 4($s7)
/* 08E9F4 80105F84 02209825 */  move  $s3, $s1
/* 08E9F8 80105F88 AEEB0008 */  sw    $t3, 8($s7)
/* 08E9FC 80105F8C 8FAC0120 */  lw    $t4, 0x120($sp)
/* 08EA00 80105F90 8FAD0118 */  lw    $t5, 0x118($sp)
/* 08EA04 80105F94 4600E701 */  sub.s $f28, $f28, $f0
/* 08EA08 80105F98 AFAE0110 */  sw    $t6, 0x110($sp)
/* 08EA0C 80105F9C 02008825 */  move  $s1, $s0
/* 08EA10 80105FA0 AFAC011C */  sw    $t4, 0x11c($sp)
/* 08EA14 80105FA4 1000FE8E */  b     .L801059E0_ovl2
/* 08EA18 80105FA8 AFAD0114 */   sw    $t5, 0x114($sp)
.L80105FAC_ovl2:
/* 08EA1C 80105FAC C7A60140 */  lwc1  $f6, 0x140($sp)
/* 08EA20 80105FB0 C7A8014C */  lwc1  $f8, 0x14c($sp)
/* 08EA24 80105FB4 C7A40144 */  lwc1  $f4, 0x144($sp)
/* 08EA28 80105FB8 C7AA0150 */  lwc1  $f10, 0x150($sp)
/* 08EA2C 80105FBC 46083001 */  sub.s $f0, $f6, $f8
/* 08EA30 80105FC0 C7A80154 */  lwc1  $f8, 0x154($sp)
/* 08EA34 80105FC4 C7A60148 */  lwc1  $f6, 0x148($sp)
/* 08EA38 80105FC8 460A2581 */  sub.s $f22, $f4, $f10
/* 08EA3C 80105FCC 46000102 */  mul.s $f4, $f0, $f0
/* 08EA40 80105FD0 46000506 */  mov.s $f20, $f0
/* 08EA44 80105FD4 46083601 */  sub.s $f24, $f6, $f8
/* 08EA48 80105FD8 4616B282 */  mul.s $f10, $f22, $f22
/* 08EA4C 80105FDC 460A2180 */  add.s $f6, $f4, $f10
/* 08EA50 80105FE0 4618C202 */  mul.s $f8, $f24, $f24
/* 08EA54 80105FE4 0C00CAC8 */  jal   sqrtf
/* 08EA58 80105FE8 46083300 */   add.s $f12, $f6, $f8
/* 08EA5C 80105FEC 4600E03E */  c.le.s $f28, $f0
/* 08EA60 80105FF0 8FA30178 */  lw    $v1, 0x178($sp)
/* 08EA64 80105FF4 00001025 */  move  $v0, $zero
/* 08EA68 80105FF8 45020011 */  bc1fl .L80106040_ovl2
/* 08EA6C 80105FFC 8ED80000 */   lw    $t8, ($s6)
/* 08EA70 80106000 4600E083 */  div.s $f2, $f28, $f0
/* 08EA74 80106004 C7AA014C */  lwc1  $f10, 0x14c($sp)
/* 08EA78 80106008 8FA30178 */  lw    $v1, 0x178($sp)
/* 08EA7C 8010600C 4602A102 */  mul.s $f4, $f20, $f2
/* 08EA80 80106010 460A2180 */  add.s $f6, $f4, $f10
/* 08EA84 80106014 4602B202 */  mul.s $f8, $f22, $f2
/* 08EA88 80106018 E4660000 */  swc1  $f6, ($v1)
/* 08EA8C 8010601C C7A40150 */  lwc1  $f4, 0x150($sp)
/* 08EA90 80106020 4602C182 */  mul.s $f6, $f24, $f2
/* 08EA94 80106024 46044280 */  add.s $f10, $f8, $f4
/* 08EA98 80106028 E46A0004 */  swc1  $f10, 4($v1)
/* 08EA9C 8010602C C7A80154 */  lwc1  $f8, 0x154($sp)
/* 08EAA0 80106030 46083100 */  add.s $f4, $f6, $f8
/* 08EAA4 80106034 10000007 */  b     .L80106054_ovl2
/* 08EAA8 80106038 E4640008 */   swc1  $f4, 8($v1)
/* 08EAAC 8010603C 8ED80000 */  lw    $t8, ($s6)
.L80106040_ovl2:
/* 08EAB0 80106040 AC780000 */  sw    $t8, ($v1)
/* 08EAB4 80106044 8ECF0004 */  lw    $t7, 4($s6)
/* 08EAB8 80106048 AC6F0004 */  sw    $t7, 4($v1)
/* 08EABC 8010604C 8ED80008 */  lw    $t8, 8($s6)
/* 08EAC0 80106050 AC780008 */  sw    $t8, 8($v1)
.L80106054_ovl2:
/* 08EAC4 80106054 8FB90110 */  lw    $t9, 0x110($sp)
/* 08EAC8 80106058 8FA80180 */  lw    $t0, 0x180($sp)
/* 08EACC 8010605C 13200008 */  beqz  $t9, .L80106080_ovl2
/* 08EAD0 80106060 00000000 */   nop   
/* 08EAD4 80106064 AD110000 */  sw    $s1, ($t0)
/* 08EAD8 80106068 8FAA0184 */  lw    $t2, 0x184($sp)
/* 08EADC 8010606C 8FA9011C */  lw    $t1, 0x11c($sp)
/* 08EAE0 80106070 AD490000 */  sw    $t1, ($t2)
/* 08EAE4 80106074 8FAC0188 */  lw    $t4, 0x188($sp)
/* 08EAE8 80106078 8FAB0114 */  lw    $t3, 0x114($sp)
/* 08EAEC 8010607C AD8B0000 */  sw    $t3, ($t4)
.L80106080_ovl2:
/* 08EAF0 80106080 8FBF007C */  lw    $ra, 0x7c($sp)
/* 08EAF4 80106084 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 08EAF8 80106088 D7B60030 */  ldc1  $f22, 0x30($sp)
/* 08EAFC 8010608C D7B80038 */  ldc1  $f24, 0x38($sp)
/* 08EB00 80106090 D7BA0040 */  ldc1  $f26, 0x40($sp)
/* 08EB04 80106094 D7BC0048 */  ldc1  $f28, 0x48($sp)
/* 08EB08 80106098 D7BE0050 */  ldc1  $f30, 0x50($sp)
/* 08EB0C 8010609C 8FB0005C */  lw    $s0, 0x5c($sp)
/* 08EB10 801060A0 8FB10060 */  lw    $s1, 0x60($sp)
/* 08EB14 801060A4 8FB20064 */  lw    $s2, 0x64($sp)
/* 08EB18 801060A8 8FB30068 */  lw    $s3, 0x68($sp)
/* 08EB1C 801060AC 8FB4006C */  lw    $s4, 0x6c($sp)
/* 08EB20 801060B0 8FB50070 */  lw    $s5, 0x70($sp)
/* 08EB24 801060B4 8FB60074 */  lw    $s6, 0x74($sp)
/* 08EB28 801060B8 8FB70078 */  lw    $s7, 0x78($sp)
/* 08EB2C 801060BC 03E00008 */  jr    $ra
/* 08EB30 801060C0 27BD0168 */   addiu $sp, $sp, 0x168
.type func_801058B8, @function
.size func_801058B8, . - func_801058B8