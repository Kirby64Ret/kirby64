glabel func_801F29D0_ovl9
/* 1A0A20 801F29D0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1A0A24 801F29D4 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1A0A28 801F29D8 3C0E800F */  lui        $t6, %hi(D_800E9AA0)
/* 1A0A2C 801F29DC 25CE9AA0 */  addiu      $t6, $t6, %lo(D_800E9AA0)
/* 1A0A30 801F29E0 8C640000 */  lw         $a0, 0x0($v1)
/* 1A0A34 801F29E4 3C07800E */  lui        $a3, %hi(D_800E6A10)
/* 1A0A38 801F29E8 24E76A10 */  addiu      $a3, $a3, %lo(D_800E6A10)
/* 1A0A3C 801F29EC 00042080 */  sll        $a0, $a0, 2
/* 1A0A40 801F29F0 008E2821 */  addu       $a1, $a0, $t6
/* 1A0A44 801F29F4 8CA20000 */  lw         $v0, 0x0($a1)
/* 1A0A48 801F29F8 00E47821 */  addu       $t7, $a3, $a0
/* 1A0A4C 801F29FC C5E00000 */  lwc1       $f0, 0x0($t7)
/* 1A0A50 801F2A00 1040005D */  beqz       $v0, .L801F2B78_ovl9
/* 1A0A54 801F2A04 3C08800F */   lui       $t0, %hi(D_800E9C60)
/* 1A0A58 801F2A08 25089C60 */  addiu      $t0, $t0, %lo(D_800E9C60)
/* 1A0A5C 801F2A0C 0104C021 */  addu       $t8, $t0, $a0
/* 1A0A60 801F2A10 8F190000 */  lw         $t9, 0x0($t8)
/* 1A0A64 801F2A14 03223021 */  addu       $a2, $t9, $v0
/* 1A0A68 801F2A18 28C100B4 */  slti       $at, $a2, 0xB4
/* 1A0A6C 801F2A1C 10200025 */  beqz       $at, .L801F2AB4_ovl9
/* 1A0A70 801F2A20 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 1A0A74 801F2A24 44812000 */  mtc1       $at, $f4
/* 1A0A78 801F2A28 00000000 */  nop
/* 1A0A7C 801F2A2C 46040032 */  c.eq.s     $f0, $f4
/* 1A0A80 801F2A30 00000000 */  nop
/* 1A0A84 801F2A34 45020011 */  bc1fl      .L801F2A7C_ovl9
/* 1A0A88 801F2A38 44825000 */   mtc1      $v0, $f10
/* 1A0A8C 801F2A3C 44823000 */  mtc1       $v0, $f6
/* 1A0A90 801F2A40 3C018022 */  lui        $at, %hi(D_8021D8F0_ovl9)
/* 1A0A94 801F2A44 C42AD8F0 */  lwc1       $f10, %lo(D_8021D8F0_ovl9)($at)
/* 1A0A98 801F2A48 46803220 */  cvt.s.w    $f8, $f6
/* 1A0A9C 801F2A4C 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 1A0AA0 801F2A50 44819000 */  mtc1       $at, $f18
/* 1A0AA4 801F2A54 3C09800F */  lui        $t1, %hi(D_800E9020)
/* 1A0AA8 801F2A58 25299020 */  addiu      $t1, $t1, %lo(D_800E9020)
/* 1A0AAC 801F2A5C 00892821 */  addu       $a1, $a0, $t1
/* 1A0AB0 801F2A60 460A4402 */  mul.s      $f16, $f8, $f10
/* 1A0AB4 801F2A64 C4A60000 */  lwc1       $f6, 0x0($a1)
/* 1A0AB8 801F2A68 46128103 */  div.s      $f4, $f16, $f18
/* 1A0ABC 801F2A6C 46043201 */  sub.s      $f8, $f6, $f4
/* 1A0AC0 801F2A70 1000003D */  b          .L801F2B68_ovl9
/* 1A0AC4 801F2A74 E4A80000 */   swc1      $f8, 0x0($a1)
/* 1A0AC8 801F2A78 44825000 */  mtc1       $v0, $f10
.L801F2A7C_ovl9:
/* 1A0ACC 801F2A7C 3C018022 */  lui        $at, %hi(D_8021D8F4_ovl9)
/* 1A0AD0 801F2A80 C432D8F4 */  lwc1       $f18, %lo(D_8021D8F4_ovl9)($at)
/* 1A0AD4 801F2A84 46805420 */  cvt.s.w    $f16, $f10
/* 1A0AD8 801F2A88 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 1A0ADC 801F2A8C 44812000 */  mtc1       $at, $f4
/* 1A0AE0 801F2A90 3C0A800F */  lui        $t2, %hi(D_800E9020)
/* 1A0AE4 801F2A94 254A9020 */  addiu      $t2, $t2, %lo(D_800E9020)
/* 1A0AE8 801F2A98 008A2821 */  addu       $a1, $a0, $t2
/* 1A0AEC 801F2A9C 46128182 */  mul.s      $f6, $f16, $f18
/* 1A0AF0 801F2AA0 C4AA0000 */  lwc1       $f10, 0x0($a1)
/* 1A0AF4 801F2AA4 46043203 */  div.s      $f8, $f6, $f4
/* 1A0AF8 801F2AA8 46085400 */  add.s      $f16, $f10, $f8
/* 1A0AFC 801F2AAC 1000002E */  b          .L801F2B68_ovl9
/* 1A0B00 801F2AB0 E4B00000 */   swc1      $f16, 0x0($a1)
.L801F2AB4_ovl9:
/* 1A0B04 801F2AB4 ACA00000 */  sw         $zero, 0x0($a1)
/* 1A0B08 801F2AB8 8C6C0000 */  lw         $t4, 0x0($v1)
/* 1A0B0C 801F2ABC 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1A0B10 801F2AC0 240B0001 */  addiu      $t3, $zero, 0x1
/* 1A0B14 801F2AC4 000C6880 */  sll        $t5, $t4, 2
/* 1A0B18 801F2AC8 002D0821 */  addu       $at, $at, $t5
/* 1A0B1C 801F2ACC AC2B9E20 */  sw         $t3, %lo(D_800E9E20)($at)
/* 1A0B20 801F2AD0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1A0B24 801F2AD4 44819000 */  mtc1       $at, $f18
/* 1A0B28 801F2AD8 3C18800E */  lui        $t8, %hi(D_800E17D0)
/* 1A0B2C 801F2ADC 3C0A800E */  lui        $t2, %hi(D_800E17D0)
/* 1A0B30 801F2AE0 46120032 */  c.eq.s     $f0, $f18
/* 1A0B34 801F2AE4 271817D0 */  addiu      $t8, $t8, %lo(D_800E17D0)
/* 1A0B38 801F2AE8 254A17D0 */  addiu      $t2, $t2, %lo(D_800E17D0)
/* 1A0B3C 801F2AEC 4502000B */  bc1fl      .L801F2B1C_ovl9
/* 1A0B40 801F2AF0 8C790000 */   lw        $t9, 0x0($v1)
/* 1A0B44 801F2AF4 8C6E0000 */  lw         $t6, 0x0($v1)
/* 1A0B48 801F2AF8 3C018022 */  lui        $at, %hi(D_8021D8F8_ovl9)
/* 1A0B4C 801F2AFC C424D8F8 */  lwc1       $f4, %lo(D_8021D8F8_ovl9)($at)
/* 1A0B50 801F2B00 000E7880 */  sll        $t7, $t6, 2
/* 1A0B54 801F2B04 01F81021 */  addu       $v0, $t7, $t8
/* 1A0B58 801F2B08 C4460000 */  lwc1       $f6, 0x0($v0)
/* 1A0B5C 801F2B0C 46043280 */  add.s      $f10, $f6, $f4
/* 1A0B60 801F2B10 10000009 */  b          .L801F2B38_ovl9
/* 1A0B64 801F2B14 E44A0000 */   swc1      $f10, 0x0($v0)
/* 1A0B68 801F2B18 8C790000 */  lw         $t9, 0x0($v1)
.L801F2B1C_ovl9:
/* 1A0B6C 801F2B1C 3C018022 */  lui        $at, %hi(D_8021D8FC_ovl9)
/* 1A0B70 801F2B20 C430D8FC */  lwc1       $f16, %lo(D_8021D8FC_ovl9)($at)
/* 1A0B74 801F2B24 00194880 */  sll        $t1, $t9, 2
/* 1A0B78 801F2B28 012A1021 */  addu       $v0, $t1, $t2
/* 1A0B7C 801F2B2C C4480000 */  lwc1       $f8, 0x0($v0)
/* 1A0B80 801F2B30 46104481 */  sub.s      $f18, $f8, $f16
/* 1A0B84 801F2B34 E4520000 */  swc1       $f18, 0x0($v0)
.L801F2B38_ovl9:
/* 1A0B88 801F2B38 8C6C0000 */  lw         $t4, 0x0($v1)
/* 1A0B8C 801F2B3C 44803000 */  mtc1       $zero, $f6
/* 1A0B90 801F2B40 3C01800F */  lui        $at, %hi(D_800E9020)
/* 1A0B94 801F2B44 000C5880 */  sll        $t3, $t4, 2
/* 1A0B98 801F2B48 002B0821 */  addu       $at, $at, $t3
/* 1A0B9C 801F2B4C E4269020 */  swc1       $f6, %lo(D_800E9020)($at)
/* 1A0BA0 801F2B50 8C6D0000 */  lw         $t5, 0x0($v1)
/* 1A0BA4 801F2B54 000D7080 */  sll        $t6, $t5, 2
/* 1A0BA8 801F2B58 00EE1021 */  addu       $v0, $a3, $t6
/* 1A0BAC 801F2B5C C4440000 */  lwc1       $f4, 0x0($v0)
/* 1A0BB0 801F2B60 46002287 */  neg.s      $f10, $f4
/* 1A0BB4 801F2B64 E44A0000 */  swc1       $f10, 0x0($v0)
.L801F2B68_ovl9:
/* 1A0BB8 801F2B68 8C6F0000 */  lw         $t7, 0x0($v1)
/* 1A0BBC 801F2B6C 000FC080 */  sll        $t8, $t7, 2
/* 1A0BC0 801F2B70 0118C821 */  addu       $t9, $t0, $t8
/* 1A0BC4 801F2B74 AF260000 */  sw         $a2, 0x0($t9)
.L801F2B78_ovl9:
/* 1A0BC8 801F2B78 03E00008 */  jr         $ra
/* 1A0BCC 801F2B7C 00000000 */   nop
