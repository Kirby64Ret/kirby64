glabel func_801E29E0_ovl13 # 42
/* 1FA960 801E29E0 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1FA964 801E29E4 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1FA968 801E29E8 8CE60000 */  lw          $a2, 0x0($a3)
/* 1FA96C 801E29EC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1FA970 801E29F0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1FA974 801E29F4 AFA40018 */  sw          $a0, 0x18($sp)
/* 1FA978 801E29F8 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FA97C 801E29FC 3C05800E */  lui         $a1, %hi(D_800E64D0)
/* 1FA980 801E2A00 24A564D0 */  addiu       $a1, $a1, %lo(D_800E64D0)
/* 1FA984 801E2A04 00031880 */  sll         $v1, $v1, 2
/* 1FA988 801E2A08 00A37021 */  addu        $t6, $a1, $v1
/* 1FA98C 801E2A0C 44806000 */  mtc1        $zero, $f12
/* 1FA990 801E2A10 C5C00000 */  lwc1        $f0, 0x0($t6)
/* 1FA994 801E2A14 3C08800E */  lui         $t0, %hi(D_800E6690)
/* 1FA998 801E2A18 3C0B800F */  lui         $t3, %hi(D_800E9E20)
/* 1FA99C 801E2A1C 46006032 */  c.eq.s      $f12, $f0
/* 1FA9A0 801E2A20 3C0F800E */  lui         $t7, %hi(D_800DFBD0)
/* 1FA9A4 801E2A24 25086690 */  addiu       $t0, $t0, %lo(D_800E6690)
/* 1FA9A8 801E2A28 256B9E20 */  addiu       $t3, $t3, %lo(D_800E9E20)
/* 1FA9AC 801E2A2C 45030014 */  bc1tl       L801E2A80_ovl13
/* 1FA9B0 801E2A30 01E37821 */   addu       $t7, $t7, $v1
/* 1FA9B4 801E2A34 4600603C */  c.lt.s      $f12, $f0
/* 1FA9B8 801E2A38 3C01C334 */  lui         $at, (0xC3340000 >> 16)
/* 1FA9BC 801E2A3C 45020006 */  bc1fl       L801E2A58_ovl13
/* 1FA9C0 801E2A40 44811000 */   mtc1       $at, $f2
/* 1FA9C4 801E2A44 3C014334 */  lui         $at, (0x43340000 >> 16)
/* 1FA9C8 801E2A48 44811000 */  mtc1        $at, $f2
/* 1FA9CC 801E2A4C 10000003 */  b           L801E2A5C_ovl13
/* 1FA9D0 801E2A50 00000000 */   nop
/* 1FA9D4 801E2A54 44811000 */  mtc1        $at, $f2
glabel L801E2A58_ovl13
/* 1FA9D8 801E2A58 00000000 */  nop
glabel L801E2A5C_ovl13
/* 1FA9DC 801E2A5C 3C01801E */  lui         $at, %hi(D_801E5DCC_ovl13)
/* 1FA9E0 801E2A60 C4245DCC */  lwc1        $f4, %lo(D_801E5DCC_ovl13)($at)
/* 1FA9E4 801E2A64 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1FA9E8 801E2A68 00230821 */  addu        $at, $at, $v1
/* 1FA9EC 801E2A6C 46022183 */  div.s       $f6, $f4, $f2
/* 1FA9F0 801E2A70 E426AC20 */  swc1        $f6, %lo(D_800EAC20)($at)
/* 1FA9F4 801E2A74 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FA9F8 801E2A78 00031880 */  sll         $v1, $v1, 2
/* 1FA9FC 801E2A7C 01E37821 */  addu        $t7, $t7, $v1
glabel L801E2A80_ovl13
/* 1FAA00 801E2A80 8DEFFBD0 */  lw          $t7, %lo(D_800DFBD0)($t7)
/* 1FAA04 801E2A84 3C01801E */  lui         $at, %hi(D_801E5DD0_ovl13)
/* 1FAA08 801E2A88 C4225DD0 */  lwc1        $f2, %lo(D_801E5DD0_ovl13)($at)
/* 1FAA0C 801E2A8C 8DE20004 */  lw          $v0, 0x4($t7)
/* 1FAA10 801E2A90 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1FAA14 801E2A94 00230821 */  addu        $at, $at, $v1
/* 1FAA18 801E2A98 C42AAC20 */  lwc1        $f10, %lo(D_800EAC20)($at)
/* 1FAA1C 801E2A9C C4480034 */  lwc1        $f8, 0x34($v0)
/* 1FAA20 801E2AA0 3C18800E */  lui         $t8, %hi(D_800DFBD0)
/* 1FAA24 801E2AA4 3C01801E */  lui         $at, %hi(D_801E5DD4_ovl13)
/* 1FAA28 801E2AA8 460A4400 */  add.s       $f16, $f8, $f10
/* 1FAA2C 801E2AAC E4500034 */  swc1        $f16, 0x34($v0)
/* 1FAA30 801E2AB0 8CE60000 */  lw          $a2, 0x0($a3)
/* 1FAA34 801E2AB4 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FAA38 801E2AB8 00031880 */  sll         $v1, $v1, 2
/* 1FAA3C 801E2ABC 0303C021 */  addu        $t8, $t8, $v1
/* 1FAA40 801E2AC0 8F18FBD0 */  lw          $t8, %lo(D_800DFBD0)($t8)
/* 1FAA44 801E2AC4 8F020004 */  lw          $v0, 0x4($t8)
/* 1FAA48 801E2AC8 C4400034 */  lwc1        $f0, 0x34($v0)
/* 1FAA4C 801E2ACC 4600103C */  c.lt.s      $f2, $f0
/* 1FAA50 801E2AD0 00000000 */  nop
/* 1FAA54 801E2AD4 4500000A */  bc1f        L801E2B00_ovl13
/* 1FAA58 801E2AD8 00000000 */   nop
/* 1FAA5C 801E2ADC E4420034 */  swc1        $f2, 0x34($v0)
/* 1FAA60 801E2AE0 8CE60000 */  lw          $a2, 0x0($a3)
/* 1FAA64 801E2AE4 3C19800E */  lui         $t9, %hi(D_800DFBD0)
/* 1FAA68 801E2AE8 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FAA6C 801E2AEC 00031880 */  sll         $v1, $v1, 2
/* 1FAA70 801E2AF0 0323C821 */  addu        $t9, $t9, $v1
/* 1FAA74 801E2AF4 8F39FBD0 */  lw          $t9, %lo(D_800DFBD0)($t9)
/* 1FAA78 801E2AF8 8F220004 */  lw          $v0, 0x4($t9)
/* 1FAA7C 801E2AFC C4400034 */  lwc1        $f0, 0x34($v0)
glabel L801E2B00_ovl13
/* 1FAA80 801E2B00 C4225DD4 */  lwc1        $f2, %lo(D_801E5DD4_ovl13)($at)
/* 1FAA84 801E2B04 4602003C */  c.lt.s      $f0, $f2
/* 1FAA88 801E2B08 00000000 */  nop
/* 1FAA8C 801E2B0C 45020006 */  bc1fl       L801E2B28_ovl13
/* 1FAA90 801E2B10 00681021 */   addu       $v0, $v1, $t0
/* 1FAA94 801E2B14 E4420034 */  swc1        $f2, 0x34($v0)
/* 1FAA98 801E2B18 8CE60000 */  lw          $a2, 0x0($a3)
/* 1FAA9C 801E2B1C 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FAAA0 801E2B20 00031880 */  sll         $v1, $v1, 2
/* 1FAAA4 801E2B24 00681021 */  addu        $v0, $v1, $t0
glabel L801E2B28_ovl13
/* 1FAAA8 801E2B28 C4400000 */  lwc1        $f0, 0x0($v0)
/* 1FAAAC 801E2B2C 00A35021 */  addu        $t2, $a1, $v1
/* 1FAAB0 801E2B30 3C014080 */  lui         $at, (0x40800000 >> 16)
/* 1FAAB4 801E2B34 460C003C */  c.lt.s      $f0, $f12
/* 1FAAB8 801E2B38 00000000 */  nop
/* 1FAABC 801E2B3C 4502001A */  bc1fl       L801E2BA8_ovl13
/* 1FAAC0 801E2B40 C54A0000 */   lwc1       $f10, 0x0($t2)
/* 1FAAC4 801E2B44 3C01C080 */  lui         $at, (0xC0800000 >> 16)
/* 1FAAC8 801E2B48 00A34821 */  addu        $t1, $a1, $v1
/* 1FAACC 801E2B4C C5240000 */  lwc1        $f4, 0x0($t1)
/* 1FAAD0 801E2B50 44819000 */  mtc1        $at, $f18
/* 1FAAD4 801E2B54 00000000 */  nop
/* 1FAAD8 801E2B58 4612203E */  c.le.s      $f4, $f18
/* 1FAADC 801E2B5C 00000000 */  nop
/* 1FAAE0 801E2B60 45020028 */  bc1fl       L801E2C04_ovl13
/* 1FAAE4 801E2B64 006B2021 */   addu       $a0, $v1, $t3
/* 1FAAE8 801E2B68 44803000 */  mtc1        $zero, $f6
/* 1FAAEC 801E2B6C 00000000 */  nop
/* 1FAAF0 801E2B70 4606003C */  c.lt.s      $f0, $f6
/* 1FAAF4 801E2B74 00000000 */  nop
/* 1FAAF8 801E2B78 45020007 */  bc1fl       L801E2B98_ovl13
/* 1FAAFC 801E2B7C E4400000 */   swc1       $f0, 0x0($v0)
/* 1FAB00 801E2B80 46000207 */  neg.s       $f8, $f0
/* 1FAB04 801E2B84 E4480000 */  swc1        $f8, 0x0($v0)
/* 1FAB08 801E2B88 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FAB0C 801E2B8C 1000001C */  b           L801E2C00_ovl13
/* 1FAB10 801E2B90 00031880 */   sll        $v1, $v1, 2
/* 1FAB14 801E2B94 E4400000 */  swc1        $f0, 0x0($v0)
glabel L801E2B98_ovl13
/* 1FAB18 801E2B98 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FAB1C 801E2B9C 10000018 */  b           L801E2C00_ovl13
/* 1FAB20 801E2BA0 00031880 */   sll        $v1, $v1, 2
/* 1FAB24 801E2BA4 C54A0000 */  lwc1        $f10, 0x0($t2)
glabel L801E2BA8_ovl13
/* 1FAB28 801E2BA8 44818000 */  mtc1        $at, $f16
/* 1FAB2C 801E2BAC 00000000 */  nop
/* 1FAB30 801E2BB0 460A803E */  c.le.s      $f16, $f10
/* 1FAB34 801E2BB4 00000000 */  nop
/* 1FAB38 801E2BB8 45020012 */  bc1fl       L801E2C04_ovl13
/* 1FAB3C 801E2BBC 006B2021 */   addu       $a0, $v1, $t3
/* 1FAB40 801E2BC0 44809000 */  mtc1        $zero, $f18
/* 1FAB44 801E2BC4 00000000 */  nop
/* 1FAB48 801E2BC8 4612003C */  c.lt.s      $f0, $f18
/* 1FAB4C 801E2BCC 00000000 */  nop
/* 1FAB50 801E2BD0 45020008 */  bc1fl       L801E2BF4_ovl13
/* 1FAB54 801E2BD4 46000207 */   neg.s      $f8, $f0
/* 1FAB58 801E2BD8 46000107 */  neg.s       $f4, $f0
/* 1FAB5C 801E2BDC 46002187 */  neg.s       $f6, $f4
/* 1FAB60 801E2BE0 E4460000 */  swc1        $f6, 0x0($v0)
/* 1FAB64 801E2BE4 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FAB68 801E2BE8 10000005 */  b           L801E2C00_ovl13
/* 1FAB6C 801E2BEC 00031880 */   sll        $v1, $v1, 2
/* 1FAB70 801E2BF0 46000207 */  neg.s       $f8, $f0
glabel L801E2BF4_ovl13
/* 1FAB74 801E2BF4 E4480000 */  swc1        $f8, 0x0($v0)
/* 1FAB78 801E2BF8 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FAB7C 801E2BFC 00031880 */  sll         $v1, $v1, 2
glabel L801E2C00_ovl13
/* 1FAB80 801E2C00 006B2021 */  addu        $a0, $v1, $t3
glabel L801E2C04_ovl13
/* 1FAB84 801E2C04 8C820000 */  lw          $v0, 0x0($a0)
/* 1FAB88 801E2C08 18400007 */  blez        $v0, L801E2C28_ovl13
/* 1FAB8C 801E2C0C 244CFFFF */   addiu      $t4, $v0, -0x1
/* 1FAB90 801E2C10 AC8C0000 */  sw          $t4, 0x0($a0)
/* 1FAB94 801E2C14 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FAB98 801E2C18 3C02800F */  lui         $v0, %hi(D_800E9E20)
/* 1FAB9C 801E2C1C 00031880 */  sll         $v1, $v1, 2
/* 1FABA0 801E2C20 00431021 */  addu        $v0, $v0, $v1
/* 1FABA4 801E2C24 8C429E20 */  lw          $v0, %lo(D_800E9E20)($v0)
glabel L801E2C28_ovl13
/* 1FABA8 801E2C28 1C40001C */  bgtz        $v0, L801E2C9C_ovl13
/* 1FABAC 801E2C2C 00000000 */   nop
/* 1FABB0 801E2C30 0C006291 */  jal         random_soft_s32_range
/* 1FABB4 801E2C34 24040008 */   addiu      $a0, $zero, 0x8
/* 1FABB8 801E2C38 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1FABBC 801E2C3C 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1FABC0 801E2C40 8CEE0000 */  lw          $t6, 0x0($a3)
/* 1FABC4 801E2C44 00026880 */  sll         $t5, $v0, 2
/* 1FABC8 801E2C48 3C01801E */  lui         $at, %hi(D_801E5B58_ovl13)
/* 1FABCC 801E2C4C 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1FABD0 801E2C50 002D0821 */  addu        $at, $at, $t5
/* 1FABD4 801E2C54 C42A5B58 */  lwc1        $f10, %lo(D_801E5B58_ovl13)($at)
/* 1FABD8 801E2C58 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1FABDC 801E2C5C 000FC080 */  sll         $t8, $t7, 2
/* 1FABE0 801E2C60 00380821 */  addu        $at, $at, $t8
/* 1FABE4 801E2C64 2404001F */  addiu       $a0, $zero, 0x1F
/* 1FABE8 801E2C68 0C006291 */  jal         random_soft_s32_range
/* 1FABEC 801E2C6C E42A3750 */   swc1       $f10, %lo(D_800E3750)($at)
/* 1FABF0 801E2C70 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1FABF4 801E2C74 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1FABF8 801E2C78 8CE60000 */  lw          $a2, 0x0($a3)
/* 1FABFC 801E2C7C 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 1FAC00 801E2C80 2459000F */  addiu       $t9, $v0, 0xF
/* 1FAC04 801E2C84 8CC80000 */  lw          $t0, 0x0($a2)
/* 1FAC08 801E2C88 00084880 */  sll         $t1, $t0, 2
/* 1FAC0C 801E2C8C 00290821 */  addu        $at, $at, $t1
/* 1FAC10 801E2C90 AC399E20 */  sw          $t9, %lo(D_800E9E20)($at)
/* 1FAC14 801E2C94 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FAC18 801E2C98 00031880 */  sll         $v1, $v1, 2
glabel L801E2C9C_ovl13
/* 1FAC1C 801E2C9C 3C0A800F */  lui         $t2, %hi(D_800EBBE0)
/* 1FAC20 801E2CA0 01435021 */  addu        $t2, $t2, $v1
/* 1FAC24 801E2CA4 8D4ABBE0 */  lw          $t2, %lo(D_800EBBE0)($t2)
/* 1FAC28 801E2CA8 3C02800E */  lui         $v0, %hi(gEntitiesNextPosYArray)
/* 1FAC2C 801E2CAC 24422790 */  addiu       $v0, $v0, %lo(gEntitiesNextPosYArray)
/* 1FAC30 801E2CB0 000A5880 */  sll         $t3, $t2, 2
/* 1FAC34 801E2CB4 004B6021 */  addu        $t4, $v0, $t3
/* 1FAC38 801E2CB8 3C014220 */  lui         $at, (0x42200000 >> 16)
/* 1FAC3C 801E2CBC 44818000 */  mtc1        $at, $f16
/* 1FAC40 801E2CC0 C5800000 */  lwc1        $f0, 0x0($t4)
/* 1FAC44 801E2CC4 00436821 */  addu        $t5, $v0, $v1
/* 1FAC48 801E2CC8 C5A20000 */  lwc1        $f2, 0x0($t5)
/* 1FAC4C 801E2CCC 46100480 */  add.s       $f18, $f0, $f16
/* 1FAC50 801E2CD0 3C0E800E */  lui         $t6, %hi(D_800E3750)
/* 1FAC54 801E2CD4 25CE3750 */  addiu       $t6, $t6, %lo(D_800E3750)
/* 1FAC58 801E2CD8 006E1021 */  addu        $v0, $v1, $t6
/* 1FAC5C 801E2CDC 4602903C */  c.lt.s      $f18, $f2
/* 1FAC60 801E2CE0 3C0142A0 */  lui         $at, (0x42A00000 >> 16)
/* 1FAC64 801E2CE4 3C04800E */  lui         $a0, %hi(D_800E0D50)
/* 1FAC68 801E2CE8 45020012 */  bc1fl       L801E2D34_ovl13
/* 1FAC6C 801E2CEC 44818000 */   mtc1       $at, $f16
/* 1FAC70 801E2CF0 C4400000 */  lwc1        $f0, 0x0($v0)
/* 1FAC74 801E2CF4 44802000 */  mtc1        $zero, $f4
/* 1FAC78 801E2CF8 00000000 */  nop
/* 1FAC7C 801E2CFC 4604003C */  c.lt.s      $f0, $f4
/* 1FAC80 801E2D00 00000000 */  nop
/* 1FAC84 801E2D04 45020006 */  bc1fl       L801E2D20_ovl13
/* 1FAC88 801E2D08 46000287 */   neg.s      $f10, $f0
/* 1FAC8C 801E2D0C 46000187 */  neg.s       $f6, $f0
/* 1FAC90 801E2D10 46003207 */  neg.s       $f8, $f6
/* 1FAC94 801E2D14 10000003 */  b           L801E2D24_ovl13
/* 1FAC98 801E2D18 E4480000 */   swc1       $f8, 0x0($v0)
/* 1FAC9C 801E2D1C 46000287 */  neg.s       $f10, $f0
glabel L801E2D20_ovl13
/* 1FACA0 801E2D20 E44A0000 */  swc1        $f10, 0x0($v0)
glabel L801E2D24_ovl13
/* 1FACA4 801E2D24 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FACA8 801E2D28 10000019 */  b           L801E2D90_ovl13
/* 1FACAC 801E2D2C 00031880 */   sll        $v1, $v1, 2
/* 1FACB0 801E2D30 44818000 */  mtc1        $at, $f16
glabel L801E2D34_ovl13
/* 1FACB4 801E2D34 3C0F800E */  lui         $t7, %hi(D_800E3750)
/* 1FACB8 801E2D38 25EF3750 */  addiu       $t7, $t7, %lo(D_800E3750)
/* 1FACBC 801E2D3C 46100481 */  sub.s       $f18, $f0, $f16
/* 1FACC0 801E2D40 006F1021 */  addu        $v0, $v1, $t7
/* 1FACC4 801E2D44 4612103C */  c.lt.s      $f2, $f18
/* 1FACC8 801E2D48 00000000 */  nop
/* 1FACCC 801E2D4C 45020011 */  bc1fl       L801E2D94_ovl13
/* 1FACD0 801E2D50 00832021 */   addu       $a0, $a0, $v1
/* 1FACD4 801E2D54 C4400000 */  lwc1        $f0, 0x0($v0)
/* 1FACD8 801E2D58 44802000 */  mtc1        $zero, $f4
/* 1FACDC 801E2D5C 00000000 */  nop
/* 1FACE0 801E2D60 4604003C */  c.lt.s      $f0, $f4
/* 1FACE4 801E2D64 00000000 */  nop
/* 1FACE8 801E2D68 45020007 */  bc1fl       L801E2D88_ovl13
/* 1FACEC 801E2D6C E4400000 */   swc1       $f0, 0x0($v0)
/* 1FACF0 801E2D70 46000187 */  neg.s       $f6, $f0
/* 1FACF4 801E2D74 E4460000 */  swc1        $f6, 0x0($v0)
/* 1FACF8 801E2D78 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FACFC 801E2D7C 10000004 */  b           L801E2D90_ovl13
/* 1FAD00 801E2D80 00031880 */   sll        $v1, $v1, 2
/* 1FAD04 801E2D84 E4400000 */  swc1        $f0, 0x0($v0)
glabel L801E2D88_ovl13
/* 1FAD08 801E2D88 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FAD0C 801E2D8C 00031880 */  sll         $v1, $v1, 2
glabel L801E2D90_ovl13
/* 1FAD10 801E2D90 00832021 */  addu        $a0, $a0, $v1
glabel L801E2D94_ovl13
/* 1FAD14 801E2D94 0C06769C */  jal         func_8019DA70_ovl7
/* 1FAD18 801E2D98 8C840D50 */   lw         $a0, %lo(D_800E0D50)($a0)
/* 1FAD1C 801E2D9C 44806000 */  mtc1        $zero, $f12
/* 1FAD20 801E2DA0 3C0142F0 */  lui         $at, (0x42F00000 >> 16)
/* 1FAD24 801E2DA4 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1FAD28 801E2DA8 460C003C */  c.lt.s      $f0, $f12
/* 1FAD2C 801E2DAC 44814000 */  mtc1        $at, $f8
/* 1FAD30 801E2DB0 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1FAD34 801E2DB4 45020004 */  bc1fl       L801E2DC8_ovl13
/* 1FAD38 801E2DB8 46000086 */   mov.s      $f2, $f0
/* 1FAD3C 801E2DBC 10000002 */  b           L801E2DC8_ovl13
/* 1FAD40 801E2DC0 46000087 */   neg.s      $f2, $f0
/* 1FAD44 801E2DC4 46000086 */  mov.s       $f2, $f0
glabel L801E2DC8_ovl13
/* 1FAD48 801E2DC8 4602403C */  c.lt.s      $f8, $f2
/* 1FAD4C 801E2DCC 00000000 */  nop
/* 1FAD50 801E2DD0 45020029 */  bc1fl       L801E2E78_ovl13
/* 1FAD54 801E2DD4 8CEE0000 */   lw         $t6, 0x0($a3)
/* 1FAD58 801E2DD8 44805000 */  mtc1        $zero, $f10
/* 1FAD5C 801E2DDC 00000000 */  nop
/* 1FAD60 801E2DE0 4600503C */  c.lt.s      $f10, $f0
/* 1FAD64 801E2DE4 00000000 */  nop
/* 1FAD68 801E2DE8 45020012 */  bc1fl       L801E2E34_ovl13
/* 1FAD6C 801E2DEC 8CEA0000 */   lw         $t2, 0x0($a3)
/* 1FAD70 801E2DF0 8CF80000 */  lw          $t8, 0x0($a3)
/* 1FAD74 801E2DF4 3C09800E */  lui         $t1, %hi(D_800E6690)
/* 1FAD78 801E2DF8 25296690 */  addiu       $t1, $t1, %lo(D_800E6690)
/* 1FAD7C 801E2DFC 8F080000 */  lw          $t0, 0x0($t8)
/* 1FAD80 801E2E00 0008C880 */  sll         $t9, $t0, 2
/* 1FAD84 801E2E04 03291021 */  addu        $v0, $t9, $t1
/* 1FAD88 801E2E08 C4400000 */  lwc1        $f0, 0x0($v0)
/* 1FAD8C 801E2E0C 460C003C */  c.lt.s      $f0, $f12
/* 1FAD90 801E2E10 00000000 */  nop
/* 1FAD94 801E2E14 45000004 */  bc1f        L801E2E28_ovl13
/* 1FAD98 801E2E18 00000000 */   nop
/* 1FAD9C 801E2E1C 46000407 */  neg.s       $f16, $f0
/* 1FADA0 801E2E20 10000014 */  b           L801E2E74_ovl13
/* 1FADA4 801E2E24 E4500000 */   swc1       $f16, 0x0($v0)
glabel L801E2E28_ovl13
/* 1FADA8 801E2E28 10000012 */  b           L801E2E74_ovl13
/* 1FADAC 801E2E2C E4400000 */   swc1       $f0, 0x0($v0)
/* 1FADB0 801E2E30 8CEA0000 */  lw          $t2, 0x0($a3)
glabel L801E2E34_ovl13
/* 1FADB4 801E2E34 3C0D800E */  lui         $t5, %hi(D_800E6690)
/* 1FADB8 801E2E38 25AD6690 */  addiu       $t5, $t5, %lo(D_800E6690)
/* 1FADBC 801E2E3C 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1FADC0 801E2E40 000B6080 */  sll         $t4, $t3, 2
/* 1FADC4 801E2E44 018D1021 */  addu        $v0, $t4, $t5
/* 1FADC8 801E2E48 C4400000 */  lwc1        $f0, 0x0($v0)
/* 1FADCC 801E2E4C 460C003C */  c.lt.s      $f0, $f12
/* 1FADD0 801E2E50 00000000 */  nop
/* 1FADD4 801E2E54 45020006 */  bc1fl       L801E2E70_ovl13
/* 1FADD8 801E2E58 46000187 */   neg.s      $f6, $f0
/* 1FADDC 801E2E5C 46000487 */  neg.s       $f18, $f0
/* 1FADE0 801E2E60 46009107 */  neg.s       $f4, $f18
/* 1FADE4 801E2E64 10000003 */  b           L801E2E74_ovl13
/* 1FADE8 801E2E68 E4440000 */   swc1       $f4, 0x0($v0)
/* 1FADEC 801E2E6C 46000187 */  neg.s       $f6, $f0
glabel L801E2E70_ovl13
/* 1FADF0 801E2E70 E4460000 */  swc1        $f6, 0x0($v0)
glabel L801E2E74_ovl13
/* 1FADF4 801E2E74 8CEE0000 */  lw          $t6, 0x0($a3)
glabel L801E2E78_ovl13
/* 1FADF8 801E2E78 3C02800E */  lui         $v0, %hi(D_800DFBD0)
/* 1FADFC 801E2E7C 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1FAE00 801E2E80 000FC080 */  sll         $t8, $t7, 2
/* 1FAE04 801E2E84 00581021 */  addu        $v0, $v0, $t8
/* 1FAE08 801E2E88 8C42FBD0 */  lw          $v0, %lo(D_800DFBD0)($v0)
/* 1FAE0C 801E2E8C 8C44005C */  lw          $a0, 0x5C($v0)
/* 1FAE10 801E2E90 8C450010 */  lw          $a1, 0x10($v0)
/* 1FAE14 801E2E94 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1FAE18 801E2E98 8C460018 */   lw         $a2, 0x18($v0)
/* 1FAE1C 801E2E9C 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1FAE20 801E2EA0 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1FAE24 801E2EA4 8CE60000 */  lw          $a2, 0x0($a3)
/* 1FAE28 801E2EA8 3C08800F */  lui         $t0, %hi(D_800E83E0)
/* 1FAE2C 801E2EAC 24010001 */  addiu       $at, $zero, 0x1
/* 1FAE30 801E2EB0 8CC30000 */  lw          $v1, 0x0($a2)
/* 1FAE34 801E2EB4 2419000E */  addiu       $t9, $zero, 0xE
/* 1FAE38 801E2EB8 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 1FAE3C 801E2EBC 00031880 */  sll         $v1, $v1, 2
/* 1FAE40 801E2EC0 01034021 */  addu        $t0, $t0, $v1
/* 1FAE44 801E2EC4 8D0883E0 */  lw          $t0, %lo(D_800E83E0)($t0)
/* 1FAE48 801E2EC8 1501000A */  bne         $t0, $at, L801E2EF4_ovl13
/* 1FAE4C 801E2ECC 3C01800E */   lui        $at, %hi(gEntityVtableIndexArray)
/* 1FAE50 801E2ED0 00230821 */  addu        $at, $at, $v1
/* 1FAE54 801E2ED4 AC39DC50 */  sw          $t9, %lo(gEntityVtableIndexArray)($at)
/* 1FAE58 801E2ED8 8CC90000 */  lw          $t1, 0x0($a2)
/* 1FAE5C 801E2EDC 3C05801E */  lui         $a1, %hi(func_801DB2D8_ovl13)
/* 1FAE60 801E2EE0 24A5B2D8 */  addiu       $a1, $a1, %lo(func_801DB2D8_ovl13)
/* 1FAE64 801E2EE4 00095080 */  sll         $t2, $t1, 2
/* 1FAE68 801E2EE8 008A2021 */  addu        $a0, $a0, $t2
/* 1FAE6C 801E2EEC 0C02C7B2 */  jal         assign_new_process_entry
/* 1FAE70 801E2EF0 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
glabel L801E2EF4_ovl13
/* 1FAE74 801E2EF4 0C078E56 */  jal         func_801E3958_ovl13
/* 1FAE78 801E2EF8 8FA40018 */   lw         $a0, 0x18($sp)
/* 1FAE7C 801E2EFC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1FAE80 801E2F00 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1FAE84 801E2F04 03E00008 */  jr          $ra
/* 1FAE88 801E2F08 00000000 */   nop
.type func_801E29E0_ovl13, @function

.size func_801E29E0_ovl13, . - func_801E29E0_ovl13
.section .late_rodata
glabel D_801E5DCC_ovl13
/* 1FDD4C 801E5DCC */ .word 0x40490FDB

glabel D_801E5DD0_ovl13
/* 1FDD50 801E5DD0 */ .word 0x407B53D2

glabel D_801E5DD4_ovl13
/* 1FDD54 801E5DD4 */ .word 0x4016CBE4

