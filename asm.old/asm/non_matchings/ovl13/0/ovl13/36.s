glabel func_801E19AC_ovl13 # 36
/* 1F992C 801E19AC 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1F9930 801E19B0 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1F9934 801E19B4 8CE60000 */  lw          $a2, 0x0($a3)
/* 1F9938 801E19B8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F993C 801E19BC AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F9940 801E19C0 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F9944 801E19C4 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9948 801E19C8 3C05800E */  lui         $a1, %hi(D_800E64D0)
/* 1F994C 801E19CC 24A564D0 */  addiu       $a1, $a1, %lo(D_800E64D0)
/* 1F9950 801E19D0 00031880 */  sll         $v1, $v1, 2
/* 1F9954 801E19D4 00A37021 */  addu        $t6, $a1, $v1
/* 1F9958 801E19D8 44806000 */  mtc1        $zero, $f12
/* 1F995C 801E19DC C5C00000 */  lwc1        $f0, 0x0($t6)
/* 1F9960 801E19E0 3C08800E */  lui         $t0, %hi(D_800E6690)
/* 1F9964 801E19E4 3C0B800F */  lui         $t3, %hi(D_800E9E20)
/* 1F9968 801E19E8 46006032 */  c.eq.s      $f12, $f0
/* 1F996C 801E19EC 3C0F800E */  lui         $t7, %hi(D_800DFBD0)
/* 1F9970 801E19F0 25086690 */  addiu       $t0, $t0, %lo(D_800E6690)
/* 1F9974 801E19F4 256B9E20 */  addiu       $t3, $t3, %lo(D_800E9E20)
/* 1F9978 801E19F8 45030014 */  bc1tl       L801E1A4C_ovl13
/* 1F997C 801E19FC 01E37821 */   addu       $t7, $t7, $v1
/* 1F9980 801E1A00 4600603C */  c.lt.s      $f12, $f0
/* 1F9984 801E1A04 3C01C334 */  lui         $at, (0xC3340000 >> 16)
/* 1F9988 801E1A08 45020006 */  bc1fl       L801E1A24_ovl13
/* 1F998C 801E1A0C 44811000 */   mtc1       $at, $f2
/* 1F9990 801E1A10 3C014334 */  lui         $at, (0x43340000 >> 16)
/* 1F9994 801E1A14 44811000 */  mtc1        $at, $f2
/* 1F9998 801E1A18 10000003 */  b           L801E1A28_ovl13
/* 1F999C 801E1A1C 00000000 */   nop
/* 1F99A0 801E1A20 44811000 */  mtc1        $at, $f2
glabel L801E1A24_ovl13
/* 1F99A4 801E1A24 00000000 */  nop
glabel L801E1A28_ovl13
/* 1F99A8 801E1A28 3C01801E */  lui         $at, %hi(D_801E5D90_ovl13)
/* 1F99AC 801E1A2C C4245D90 */  lwc1        $f4, %lo(D_801E5D90_ovl13)($at)
/* 1F99B0 801E1A30 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1F99B4 801E1A34 00230821 */  addu        $at, $at, $v1
/* 1F99B8 801E1A38 46022183 */  div.s       $f6, $f4, $f2
/* 1F99BC 801E1A3C E426AC20 */  swc1        $f6, %lo(D_800EAC20)($at)
/* 1F99C0 801E1A40 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F99C4 801E1A44 00031880 */  sll         $v1, $v1, 2
/* 1F99C8 801E1A48 01E37821 */  addu        $t7, $t7, $v1
glabel L801E1A4C_ovl13
/* 1F99CC 801E1A4C 8DEFFBD0 */  lw          $t7, %lo(D_800DFBD0)($t7)
/* 1F99D0 801E1A50 3C01801E */  lui         $at, %hi(D_801E5D94_ovl13)
/* 1F99D4 801E1A54 C4225D94 */  lwc1        $f2, %lo(D_801E5D94_ovl13)($at)
/* 1F99D8 801E1A58 8DE20004 */  lw          $v0, 0x4($t7)
/* 1F99DC 801E1A5C 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1F99E0 801E1A60 00230821 */  addu        $at, $at, $v1
/* 1F99E4 801E1A64 C42AAC20 */  lwc1        $f10, %lo(D_800EAC20)($at)
/* 1F99E8 801E1A68 C4480034 */  lwc1        $f8, 0x34($v0)
/* 1F99EC 801E1A6C 3C18800E */  lui         $t8, %hi(D_800DFBD0)
/* 1F99F0 801E1A70 3C01801E */  lui         $at, %hi(D_801E5D98_ovl13)
/* 1F99F4 801E1A74 460A4400 */  add.s       $f16, $f8, $f10
/* 1F99F8 801E1A78 E4500034 */  swc1        $f16, 0x34($v0)
/* 1F99FC 801E1A7C 8CE60000 */  lw          $a2, 0x0($a3)
/* 1F9A00 801E1A80 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9A04 801E1A84 00031880 */  sll         $v1, $v1, 2
/* 1F9A08 801E1A88 0303C021 */  addu        $t8, $t8, $v1
/* 1F9A0C 801E1A8C 8F18FBD0 */  lw          $t8, %lo(D_800DFBD0)($t8)
/* 1F9A10 801E1A90 8F020004 */  lw          $v0, 0x4($t8)
/* 1F9A14 801E1A94 C4400034 */  lwc1        $f0, 0x34($v0)
/* 1F9A18 801E1A98 4600103C */  c.lt.s      $f2, $f0
/* 1F9A1C 801E1A9C 00000000 */  nop
/* 1F9A20 801E1AA0 4500000A */  bc1f        L801E1ACC_ovl13
/* 1F9A24 801E1AA4 00000000 */   nop
/* 1F9A28 801E1AA8 E4420034 */  swc1        $f2, 0x34($v0)
/* 1F9A2C 801E1AAC 8CE60000 */  lw          $a2, 0x0($a3)
/* 1F9A30 801E1AB0 3C19800E */  lui         $t9, %hi(D_800DFBD0)
/* 1F9A34 801E1AB4 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9A38 801E1AB8 00031880 */  sll         $v1, $v1, 2
/* 1F9A3C 801E1ABC 0323C821 */  addu        $t9, $t9, $v1
/* 1F9A40 801E1AC0 8F39FBD0 */  lw          $t9, %lo(D_800DFBD0)($t9)
/* 1F9A44 801E1AC4 8F220004 */  lw          $v0, 0x4($t9)
/* 1F9A48 801E1AC8 C4400034 */  lwc1        $f0, 0x34($v0)
glabel L801E1ACC_ovl13
/* 1F9A4C 801E1ACC C4225D98 */  lwc1        $f2, %lo(D_801E5D98_ovl13)($at)
/* 1F9A50 801E1AD0 4602003C */  c.lt.s      $f0, $f2
/* 1F9A54 801E1AD4 00000000 */  nop
/* 1F9A58 801E1AD8 45020006 */  bc1fl       L801E1AF4_ovl13
/* 1F9A5C 801E1ADC 00681021 */   addu       $v0, $v1, $t0
/* 1F9A60 801E1AE0 E4420034 */  swc1        $f2, 0x34($v0)
/* 1F9A64 801E1AE4 8CE60000 */  lw          $a2, 0x0($a3)
/* 1F9A68 801E1AE8 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9A6C 801E1AEC 00031880 */  sll         $v1, $v1, 2
/* 1F9A70 801E1AF0 00681021 */  addu        $v0, $v1, $t0
glabel L801E1AF4_ovl13
/* 1F9A74 801E1AF4 C4400000 */  lwc1        $f0, 0x0($v0)
/* 1F9A78 801E1AF8 00A35021 */  addu        $t2, $a1, $v1
/* 1F9A7C 801E1AFC 3C014080 */  lui         $at, (0x40800000 >> 16)
/* 1F9A80 801E1B00 460C003C */  c.lt.s      $f0, $f12
/* 1F9A84 801E1B04 00000000 */  nop
/* 1F9A88 801E1B08 4502001A */  bc1fl       L801E1B74_ovl13
/* 1F9A8C 801E1B0C C54A0000 */   lwc1       $f10, 0x0($t2)
/* 1F9A90 801E1B10 3C01C080 */  lui         $at, (0xC0800000 >> 16)
/* 1F9A94 801E1B14 00A34821 */  addu        $t1, $a1, $v1
/* 1F9A98 801E1B18 C5240000 */  lwc1        $f4, 0x0($t1)
/* 1F9A9C 801E1B1C 44819000 */  mtc1        $at, $f18
/* 1F9AA0 801E1B20 00000000 */  nop
/* 1F9AA4 801E1B24 4612203E */  c.le.s      $f4, $f18
/* 1F9AA8 801E1B28 00000000 */  nop
/* 1F9AAC 801E1B2C 45020028 */  bc1fl       L801E1BD0_ovl13
/* 1F9AB0 801E1B30 006B2021 */   addu       $a0, $v1, $t3
/* 1F9AB4 801E1B34 44803000 */  mtc1        $zero, $f6
/* 1F9AB8 801E1B38 00000000 */  nop
/* 1F9ABC 801E1B3C 4606003C */  c.lt.s      $f0, $f6
/* 1F9AC0 801E1B40 00000000 */  nop
/* 1F9AC4 801E1B44 45020007 */  bc1fl       L801E1B64_ovl13
/* 1F9AC8 801E1B48 E4400000 */   swc1       $f0, 0x0($v0)
/* 1F9ACC 801E1B4C 46000207 */  neg.s       $f8, $f0
/* 1F9AD0 801E1B50 E4480000 */  swc1        $f8, 0x0($v0)
/* 1F9AD4 801E1B54 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9AD8 801E1B58 1000001C */  b           L801E1BCC_ovl13
/* 1F9ADC 801E1B5C 00031880 */   sll        $v1, $v1, 2
/* 1F9AE0 801E1B60 E4400000 */  swc1        $f0, 0x0($v0)
glabel L801E1B64_ovl13
/* 1F9AE4 801E1B64 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9AE8 801E1B68 10000018 */  b           L801E1BCC_ovl13
/* 1F9AEC 801E1B6C 00031880 */   sll        $v1, $v1, 2
/* 1F9AF0 801E1B70 C54A0000 */  lwc1        $f10, 0x0($t2)
glabel L801E1B74_ovl13
/* 1F9AF4 801E1B74 44818000 */  mtc1        $at, $f16
/* 1F9AF8 801E1B78 00000000 */  nop
/* 1F9AFC 801E1B7C 460A803E */  c.le.s      $f16, $f10
/* 1F9B00 801E1B80 00000000 */  nop
/* 1F9B04 801E1B84 45020012 */  bc1fl       L801E1BD0_ovl13
/* 1F9B08 801E1B88 006B2021 */   addu       $a0, $v1, $t3
/* 1F9B0C 801E1B8C 44809000 */  mtc1        $zero, $f18
/* 1F9B10 801E1B90 00000000 */  nop
/* 1F9B14 801E1B94 4612003C */  c.lt.s      $f0, $f18
/* 1F9B18 801E1B98 00000000 */  nop
/* 1F9B1C 801E1B9C 45020008 */  bc1fl       L801E1BC0_ovl13
/* 1F9B20 801E1BA0 46000207 */   neg.s      $f8, $f0
/* 1F9B24 801E1BA4 46000107 */  neg.s       $f4, $f0
/* 1F9B28 801E1BA8 46002187 */  neg.s       $f6, $f4
/* 1F9B2C 801E1BAC E4460000 */  swc1        $f6, 0x0($v0)
/* 1F9B30 801E1BB0 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9B34 801E1BB4 10000005 */  b           L801E1BCC_ovl13
/* 1F9B38 801E1BB8 00031880 */   sll        $v1, $v1, 2
/* 1F9B3C 801E1BBC 46000207 */  neg.s       $f8, $f0
glabel L801E1BC0_ovl13
/* 1F9B40 801E1BC0 E4480000 */  swc1        $f8, 0x0($v0)
/* 1F9B44 801E1BC4 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9B48 801E1BC8 00031880 */  sll         $v1, $v1, 2
glabel L801E1BCC_ovl13
/* 1F9B4C 801E1BCC 006B2021 */  addu        $a0, $v1, $t3
glabel L801E1BD0_ovl13
/* 1F9B50 801E1BD0 8C820000 */  lw          $v0, 0x0($a0)
/* 1F9B54 801E1BD4 18400007 */  blez        $v0, L801E1BF4_ovl13
/* 1F9B58 801E1BD8 244CFFFF */   addiu      $t4, $v0, -0x1
/* 1F9B5C 801E1BDC AC8C0000 */  sw          $t4, 0x0($a0)
/* 1F9B60 801E1BE0 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9B64 801E1BE4 3C02800F */  lui         $v0, %hi(D_800E9E20)
/* 1F9B68 801E1BE8 00031880 */  sll         $v1, $v1, 2
/* 1F9B6C 801E1BEC 00431021 */  addu        $v0, $v0, $v1
/* 1F9B70 801E1BF0 8C429E20 */  lw          $v0, %lo(D_800E9E20)($v0)
glabel L801E1BF4_ovl13
/* 1F9B74 801E1BF4 1C40001C */  bgtz        $v0, L801E1C68_ovl13
/* 1F9B78 801E1BF8 00000000 */   nop
/* 1F9B7C 801E1BFC 0C006291 */  jal         random_soft_s32_range
/* 1F9B80 801E1C00 24040008 */   addiu      $a0, $zero, 0x8
/* 1F9B84 801E1C04 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1F9B88 801E1C08 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1F9B8C 801E1C0C 8CEE0000 */  lw          $t6, 0x0($a3)
/* 1F9B90 801E1C10 00026880 */  sll         $t5, $v0, 2
/* 1F9B94 801E1C14 3C01801E */  lui         $at, %hi(D_801E5B58_ovl13)
/* 1F9B98 801E1C18 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F9B9C 801E1C1C 002D0821 */  addu        $at, $at, $t5
/* 1F9BA0 801E1C20 C42A5B58 */  lwc1        $f10, %lo(D_801E5B58_ovl13)($at)
/* 1F9BA4 801E1C24 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F9BA8 801E1C28 000FC080 */  sll         $t8, $t7, 2
/* 1F9BAC 801E1C2C 00380821 */  addu        $at, $at, $t8
/* 1F9BB0 801E1C30 2404001F */  addiu       $a0, $zero, 0x1F
/* 1F9BB4 801E1C34 0C006291 */  jal         random_soft_s32_range
/* 1F9BB8 801E1C38 E42A3750 */   swc1       $f10, %lo(D_800E3750)($at)
/* 1F9BBC 801E1C3C 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1F9BC0 801E1C40 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1F9BC4 801E1C44 8CE60000 */  lw          $a2, 0x0($a3)
/* 1F9BC8 801E1C48 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 1F9BCC 801E1C4C 2459000F */  addiu       $t9, $v0, 0xF
/* 1F9BD0 801E1C50 8CC80000 */  lw          $t0, 0x0($a2)
/* 1F9BD4 801E1C54 00084880 */  sll         $t1, $t0, 2
/* 1F9BD8 801E1C58 00290821 */  addu        $at, $at, $t1
/* 1F9BDC 801E1C5C AC399E20 */  sw          $t9, %lo(D_800E9E20)($at)
/* 1F9BE0 801E1C60 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9BE4 801E1C64 00031880 */  sll         $v1, $v1, 2
glabel L801E1C68_ovl13
/* 1F9BE8 801E1C68 3C0A800F */  lui         $t2, %hi(D_800EBBE0)
/* 1F9BEC 801E1C6C 01435021 */  addu        $t2, $t2, $v1
/* 1F9BF0 801E1C70 8D4ABBE0 */  lw          $t2, %lo(D_800EBBE0)($t2)
/* 1F9BF4 801E1C74 3C02800E */  lui         $v0, %hi(gEntitiesNextPosYArray)
/* 1F9BF8 801E1C78 24422790 */  addiu       $v0, $v0, %lo(gEntitiesNextPosYArray)
/* 1F9BFC 801E1C7C 000A5880 */  sll         $t3, $t2, 2
/* 1F9C00 801E1C80 004B6021 */  addu        $t4, $v0, $t3
/* 1F9C04 801E1C84 3C014220 */  lui         $at, (0x42200000 >> 16)
/* 1F9C08 801E1C88 44818000 */  mtc1        $at, $f16
/* 1F9C0C 801E1C8C C5800000 */  lwc1        $f0, 0x0($t4)
/* 1F9C10 801E1C90 00436821 */  addu        $t5, $v0, $v1
/* 1F9C14 801E1C94 C5A20000 */  lwc1        $f2, 0x0($t5)
/* 1F9C18 801E1C98 46100480 */  add.s       $f18, $f0, $f16
/* 1F9C1C 801E1C9C 3C0E800E */  lui         $t6, %hi(D_800E3750)
/* 1F9C20 801E1CA0 25CE3750 */  addiu       $t6, $t6, %lo(D_800E3750)
/* 1F9C24 801E1CA4 006E1021 */  addu        $v0, $v1, $t6
/* 1F9C28 801E1CA8 4602903C */  c.lt.s      $f18, $f2
/* 1F9C2C 801E1CAC 3C0142A0 */  lui         $at, (0x42A00000 >> 16)
/* 1F9C30 801E1CB0 3C04800E */  lui         $a0, %hi(D_800E0D50)
/* 1F9C34 801E1CB4 45020012 */  bc1fl       L801E1D00_ovl13
/* 1F9C38 801E1CB8 44818000 */   mtc1       $at, $f16
/* 1F9C3C 801E1CBC C4400000 */  lwc1        $f0, 0x0($v0)
/* 1F9C40 801E1CC0 44802000 */  mtc1        $zero, $f4
/* 1F9C44 801E1CC4 00000000 */  nop
/* 1F9C48 801E1CC8 4604003C */  c.lt.s      $f0, $f4
/* 1F9C4C 801E1CCC 00000000 */  nop
/* 1F9C50 801E1CD0 45020006 */  bc1fl       L801E1CEC_ovl13
/* 1F9C54 801E1CD4 46000287 */   neg.s      $f10, $f0
/* 1F9C58 801E1CD8 46000187 */  neg.s       $f6, $f0
/* 1F9C5C 801E1CDC 46003207 */  neg.s       $f8, $f6
/* 1F9C60 801E1CE0 10000003 */  b           L801E1CF0_ovl13
/* 1F9C64 801E1CE4 E4480000 */   swc1       $f8, 0x0($v0)
/* 1F9C68 801E1CE8 46000287 */  neg.s       $f10, $f0
glabel L801E1CEC_ovl13
/* 1F9C6C 801E1CEC E44A0000 */  swc1        $f10, 0x0($v0)
glabel L801E1CF0_ovl13
/* 1F9C70 801E1CF0 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9C74 801E1CF4 10000019 */  b           L801E1D5C_ovl13
/* 1F9C78 801E1CF8 00031880 */   sll        $v1, $v1, 2
/* 1F9C7C 801E1CFC 44818000 */  mtc1        $at, $f16
glabel L801E1D00_ovl13
/* 1F9C80 801E1D00 3C0F800E */  lui         $t7, %hi(D_800E3750)
/* 1F9C84 801E1D04 25EF3750 */  addiu       $t7, $t7, %lo(D_800E3750)
/* 1F9C88 801E1D08 46100481 */  sub.s       $f18, $f0, $f16
/* 1F9C8C 801E1D0C 006F1021 */  addu        $v0, $v1, $t7
/* 1F9C90 801E1D10 4612103C */  c.lt.s      $f2, $f18
/* 1F9C94 801E1D14 00000000 */  nop
/* 1F9C98 801E1D18 45020011 */  bc1fl       L801E1D60_ovl13
/* 1F9C9C 801E1D1C 00832021 */   addu       $a0, $a0, $v1
/* 1F9CA0 801E1D20 C4400000 */  lwc1        $f0, 0x0($v0)
/* 1F9CA4 801E1D24 44802000 */  mtc1        $zero, $f4
/* 1F9CA8 801E1D28 00000000 */  nop
/* 1F9CAC 801E1D2C 4604003C */  c.lt.s      $f0, $f4
/* 1F9CB0 801E1D30 00000000 */  nop
/* 1F9CB4 801E1D34 45020007 */  bc1fl       L801E1D54_ovl13
/* 1F9CB8 801E1D38 E4400000 */   swc1       $f0, 0x0($v0)
/* 1F9CBC 801E1D3C 46000187 */  neg.s       $f6, $f0
/* 1F9CC0 801E1D40 E4460000 */  swc1        $f6, 0x0($v0)
/* 1F9CC4 801E1D44 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9CC8 801E1D48 10000004 */  b           L801E1D5C_ovl13
/* 1F9CCC 801E1D4C 00031880 */   sll        $v1, $v1, 2
/* 1F9CD0 801E1D50 E4400000 */  swc1        $f0, 0x0($v0)
glabel L801E1D54_ovl13
/* 1F9CD4 801E1D54 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9CD8 801E1D58 00031880 */  sll         $v1, $v1, 2
glabel L801E1D5C_ovl13
/* 1F9CDC 801E1D5C 00832021 */  addu        $a0, $a0, $v1
glabel L801E1D60_ovl13
/* 1F9CE0 801E1D60 0C06769C */  jal         func_8019DA70_ovl7
/* 1F9CE4 801E1D64 8C840D50 */   lw         $a0, %lo(D_800E0D50)($a0)
/* 1F9CE8 801E1D68 44806000 */  mtc1        $zero, $f12
/* 1F9CEC 801E1D6C 3C0142F0 */  lui         $at, (0x42F00000 >> 16)
/* 1F9CF0 801E1D70 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1F9CF4 801E1D74 460C003C */  c.lt.s      $f0, $f12
/* 1F9CF8 801E1D78 44814000 */  mtc1        $at, $f8
/* 1F9CFC 801E1D7C 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1F9D00 801E1D80 45020004 */  bc1fl       L801E1D94_ovl13
/* 1F9D04 801E1D84 46000086 */   mov.s      $f2, $f0
/* 1F9D08 801E1D88 10000002 */  b           L801E1D94_ovl13
/* 1F9D0C 801E1D8C 46000087 */   neg.s      $f2, $f0
/* 1F9D10 801E1D90 46000086 */  mov.s       $f2, $f0
glabel L801E1D94_ovl13
/* 1F9D14 801E1D94 4602403C */  c.lt.s      $f8, $f2
/* 1F9D18 801E1D98 00000000 */  nop
/* 1F9D1C 801E1D9C 45020029 */  bc1fl       L801E1E44_ovl13
/* 1F9D20 801E1DA0 8CEE0000 */   lw         $t6, 0x0($a3)
/* 1F9D24 801E1DA4 44805000 */  mtc1        $zero, $f10
/* 1F9D28 801E1DA8 00000000 */  nop
/* 1F9D2C 801E1DAC 4600503C */  c.lt.s      $f10, $f0
/* 1F9D30 801E1DB0 00000000 */  nop
/* 1F9D34 801E1DB4 45020012 */  bc1fl       L801E1E00_ovl13
/* 1F9D38 801E1DB8 8CEA0000 */   lw         $t2, 0x0($a3)
/* 1F9D3C 801E1DBC 8CF80000 */  lw          $t8, 0x0($a3)
/* 1F9D40 801E1DC0 3C09800E */  lui         $t1, %hi(D_800E6690)
/* 1F9D44 801E1DC4 25296690 */  addiu       $t1, $t1, %lo(D_800E6690)
/* 1F9D48 801E1DC8 8F080000 */  lw          $t0, 0x0($t8)
/* 1F9D4C 801E1DCC 0008C880 */  sll         $t9, $t0, 2
/* 1F9D50 801E1DD0 03291021 */  addu        $v0, $t9, $t1
/* 1F9D54 801E1DD4 C4400000 */  lwc1        $f0, 0x0($v0)
/* 1F9D58 801E1DD8 460C003C */  c.lt.s      $f0, $f12
/* 1F9D5C 801E1DDC 00000000 */  nop
/* 1F9D60 801E1DE0 45000004 */  bc1f        L801E1DF4_ovl13
/* 1F9D64 801E1DE4 00000000 */   nop
/* 1F9D68 801E1DE8 46000407 */  neg.s       $f16, $f0
/* 1F9D6C 801E1DEC 10000014 */  b           L801E1E40_ovl13
/* 1F9D70 801E1DF0 E4500000 */   swc1       $f16, 0x0($v0)
glabel L801E1DF4_ovl13
/* 1F9D74 801E1DF4 10000012 */  b           L801E1E40_ovl13
/* 1F9D78 801E1DF8 E4400000 */   swc1       $f0, 0x0($v0)
/* 1F9D7C 801E1DFC 8CEA0000 */  lw          $t2, 0x0($a3)
glabel L801E1E00_ovl13
/* 1F9D80 801E1E00 3C0D800E */  lui         $t5, %hi(D_800E6690)
/* 1F9D84 801E1E04 25AD6690 */  addiu       $t5, $t5, %lo(D_800E6690)
/* 1F9D88 801E1E08 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1F9D8C 801E1E0C 000B6080 */  sll         $t4, $t3, 2
/* 1F9D90 801E1E10 018D1021 */  addu        $v0, $t4, $t5
/* 1F9D94 801E1E14 C4400000 */  lwc1        $f0, 0x0($v0)
/* 1F9D98 801E1E18 460C003C */  c.lt.s      $f0, $f12
/* 1F9D9C 801E1E1C 00000000 */  nop
/* 1F9DA0 801E1E20 45020006 */  bc1fl       L801E1E3C_ovl13
/* 1F9DA4 801E1E24 46000187 */   neg.s      $f6, $f0
/* 1F9DA8 801E1E28 46000487 */  neg.s       $f18, $f0
/* 1F9DAC 801E1E2C 46009107 */  neg.s       $f4, $f18
/* 1F9DB0 801E1E30 10000003 */  b           L801E1E40_ovl13
/* 1F9DB4 801E1E34 E4440000 */   swc1       $f4, 0x0($v0)
/* 1F9DB8 801E1E38 46000187 */  neg.s       $f6, $f0
glabel L801E1E3C_ovl13
/* 1F9DBC 801E1E3C E4460000 */  swc1        $f6, 0x0($v0)
glabel L801E1E40_ovl13
/* 1F9DC0 801E1E40 8CEE0000 */  lw          $t6, 0x0($a3)
glabel L801E1E44_ovl13
/* 1F9DC4 801E1E44 3C02800E */  lui         $v0, %hi(D_800DFBD0)
/* 1F9DC8 801E1E48 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F9DCC 801E1E4C 000FC080 */  sll         $t8, $t7, 2
/* 1F9DD0 801E1E50 00581021 */  addu        $v0, $v0, $t8
/* 1F9DD4 801E1E54 8C42FBD0 */  lw          $v0, %lo(D_800DFBD0)($v0)
/* 1F9DD8 801E1E58 8C44005C */  lw          $a0, 0x5C($v0)
/* 1F9DDC 801E1E5C 8C450010 */  lw          $a1, 0x10($v0)
/* 1F9DE0 801E1E60 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1F9DE4 801E1E64 8C460018 */   lw         $a2, 0x18($v0)
/* 1F9DE8 801E1E68 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1F9DEC 801E1E6C 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1F9DF0 801E1E70 8CE60000 */  lw          $a2, 0x0($a3)
/* 1F9DF4 801E1E74 3C08800F */  lui         $t0, %hi(D_800E83E0)
/* 1F9DF8 801E1E78 24010001 */  addiu       $at, $zero, 0x1
/* 1F9DFC 801E1E7C 8CC30000 */  lw          $v1, 0x0($a2)
/* 1F9E00 801E1E80 2419000E */  addiu       $t9, $zero, 0xE
/* 1F9E04 801E1E84 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 1F9E08 801E1E88 00031880 */  sll         $v1, $v1, 2
/* 1F9E0C 801E1E8C 01034021 */  addu        $t0, $t0, $v1
/* 1F9E10 801E1E90 8D0883E0 */  lw          $t0, %lo(D_800E83E0)($t0)
/* 1F9E14 801E1E94 1501000A */  bne         $t0, $at, L801E1EC0_ovl13
/* 1F9E18 801E1E98 3C01800E */   lui        $at, %hi(gEntityVtableIndexArray)
/* 1F9E1C 801E1E9C 00230821 */  addu        $at, $at, $v1
/* 1F9E20 801E1EA0 AC39DC50 */  sw          $t9, %lo(gEntityVtableIndexArray)($at)
/* 1F9E24 801E1EA4 8CC90000 */  lw          $t1, 0x0($a2)
/* 1F9E28 801E1EA8 3C05801E */  lui         $a1, %hi(func_801DB2D8_ovl13)
/* 1F9E2C 801E1EAC 24A5B2D8 */  addiu       $a1, $a1, %lo(func_801DB2D8_ovl13)
/* 1F9E30 801E1EB0 00095080 */  sll         $t2, $t1, 2
/* 1F9E34 801E1EB4 008A2021 */  addu        $a0, $a0, $t2
/* 1F9E38 801E1EB8 0C02C7B2 */  jal         assign_new_process_entry
/* 1F9E3C 801E1EBC 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
glabel L801E1EC0_ovl13
/* 1F9E40 801E1EC0 0C078E56 */  jal         func_801E3958_ovl13
/* 1F9E44 801E1EC4 8FA40018 */   lw         $a0, 0x18($sp)
/* 1F9E48 801E1EC8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F9E4C 801E1ECC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F9E50 801E1ED0 03E00008 */  jr          $ra
/* 1F9E54 801E1ED4 00000000 */   nop
.type func_801E19AC_ovl13, @function

.size func_801E19AC_ovl13, . - func_801E19AC_ovl13
.section .late_rodata
glabel D_801E5D90_ovl13
/* 1FDD10 801E5D90 */ .word 0x40490FDB

glabel D_801E5D94_ovl13
/* 1FDD14 801E5D94 */ .word 0x407B53D2

glabel D_801E5D98_ovl13
/* 1FDD18 801E5D98 */ .word 0x4016CBE4

