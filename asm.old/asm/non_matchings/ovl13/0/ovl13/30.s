glabel func_801E0A90_ovl13 # 30
/* 1F8A10 801E0A90 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 1F8A14 801E0A94 AFB10020 */  sw          $s1, 0x20($sp)
/* 1F8A18 801E0A98 3C118005 */  lui         $s1, %hi(D_8004A7C4)
/* 1F8A1C 801E0A9C 2631A7C4 */  addiu       $s1, $s1, %lo(D_8004A7C4)
/* 1F8A20 801E0AA0 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1F8A24 801E0AA4 AFBF0034 */  sw          $ra, 0x34($sp)
/* 1F8A28 801E0AA8 AFB50030 */  sw          $s5, 0x30($sp)
/* 1F8A2C 801E0AAC AFB4002C */  sw          $s4, 0x2C($sp)
/* 1F8A30 801E0AB0 AFB30028 */  sw          $s3, 0x28($sp)
/* 1F8A34 801E0AB4 AFB20024 */  sw          $s2, 0x24($sp)
/* 1F8A38 801E0AB8 AFB0001C */  sw          $s0, 0x1C($sp)
/* 1F8A3C 801E0ABC F7B40010 */  sdc1        $f20, 0x10($sp)
/* 1F8A40 801E0AC0 AFA40058 */  sw          $a0, 0x58($sp)
/* 1F8A44 801E0AC4 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F8A48 801E0AC8 3C14800E */  lui         $s4, %hi(D_800E1B50)
/* 1F8A4C 801E0ACC 24040002 */  addiu       $a0, $zero, 0x2
/* 1F8A50 801E0AD0 000FC080 */  sll         $t8, $t7, 2
/* 1F8A54 801E0AD4 0298A021 */  addu        $s4, $s4, $t8
/* 1F8A58 801E0AD8 8E941B50 */  lw          $s4, %lo(D_800E1B50)($s4)
/* 1F8A5C 801E0ADC 0C06783A */  jal         func_8019E0E8_ovl7
/* 1F8A60 801E0AE0 24050005 */   addiu      $a1, $zero, 0x5
/* 1F8A64 801E0AE4 8E300000 */  lw          $s0, 0x0($s1)
/* 1F8A68 801E0AE8 3C12800F */  lui         $s2, %hi(D_800EBF60)
/* 1F8A6C 801E0AEC 2652BF60 */  addiu       $s2, $s2, %lo(D_800EBF60)
/* 1F8A70 801E0AF0 8E190000 */  lw          $t9, 0x0($s0)
/* 1F8A74 801E0AF4 3C15800F */  lui         $s5, %hi(D_800E98E0)
/* 1F8A78 801E0AF8 26B598E0 */  addiu       $s5, $s5, %lo(D_800E98E0)
/* 1F8A7C 801E0AFC 00194080 */  sll         $t0, $t9, 2
/* 1F8A80 801E0B00 02484821 */  addu        $t1, $s2, $t0
/* 1F8A84 801E0B04 AD220000 */  sw          $v0, 0x0($t1)
/* 1F8A88 801E0B08 8E0B0000 */  lw          $t3, 0x0($s0)
/* 1F8A8C 801E0B0C 240A0001 */  addiu       $t2, $zero, 0x1
/* 1F8A90 801E0B10 3C01800D */  lui         $at, %hi(D_800D709C)
/* 1F8A94 801E0B14 000B6080 */  sll         $t4, $t3, 2
/* 1F8A98 801E0B18 024C6821 */  addu        $t5, $s2, $t4
/* 1F8A9C 801E0B1C 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F8AA0 801E0B20 3C19800B */  lui         $t9, %hi(D_800B7790)
/* 1F8AA4 801E0B24 27397790 */  addiu       $t9, $t9, %lo(D_800B7790)
/* 1F8AA8 801E0B28 000E7880 */  sll         $t7, $t6, 2
/* 1F8AAC 801E0B2C 02AFC021 */  addu        $t8, $s5, $t7
/* 1F8AB0 801E0B30 AF0A0000 */  sw          $t2, 0x0($t8)
/* 1F8AB4 801E0B34 AC20709C */  sw          $zero, %lo(D_800D709C)($at)
/* 1F8AB8 801E0B38 8E080000 */  lw          $t0, 0x0($s0)
/* 1F8ABC 801E0B3C 3C01800E */  lui         $at, %hi(D_800DEF90)
/* 1F8AC0 801E0B40 3C06800E */  lui         $a2, %hi(D_800DFBD0)
/* 1F8AC4 801E0B44 00084880 */  sll         $t1, $t0, 2
/* 1F8AC8 801E0B48 00290821 */  addu        $at, $at, $t1
/* 1F8ACC 801E0B4C AC39EF90 */  sw          $t9, %lo(D_800DEF90)($at)
/* 1F8AD0 801E0B50 8E0B0000 */  lw          $t3, 0x0($s0)
/* 1F8AD4 801E0B54 24C6FBD0 */  addiu       $a2, $a2, %lo(D_800DFBD0)
/* 1F8AD8 801E0B58 27A40044 */  addiu       $a0, $sp, 0x44
/* 1F8ADC 801E0B5C 000B6080 */  sll         $t4, $t3, 2
/* 1F8AE0 801E0B60 00CC6821 */  addu        $t5, $a2, $t4
/* 1F8AE4 801E0B64 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F8AE8 801E0B68 0C0291E5 */  jal         func_800A4794
/* 1F8AEC 801E0B6C 8DC50004 */   lw         $a1, 0x4($t6)
/* 1F8AF0 801E0B70 8E300000 */  lw          $s0, 0x0($s1)
/* 1F8AF4 801E0B74 C7A40044 */  lwc1        $f4, 0x44($sp)
/* 1F8AF8 801E0B78 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1F8AFC 801E0B7C 8E0F0000 */  lw          $t7, 0x0($s0)
/* 1F8B00 801E0B80 C7A60048 */  lwc1        $f6, 0x48($sp)
/* 1F8B04 801E0B84 3C13800E */  lui         $s3, %hi(gEntitiesNextPosYArray)
/* 1F8B08 801E0B88 000F5080 */  sll         $t2, $t7, 2
/* 1F8B0C 801E0B8C 002A0821 */  addu        $at, $at, $t2
/* 1F8B10 801E0B90 E42425D0 */  swc1        $f4, %lo(gEntitiesNextPosXArray)($at)
/* 1F8B14 801E0B94 8E180000 */  lw          $t8, 0x0($s0)
/* 1F8B18 801E0B98 26732790 */  addiu       $s3, $s3, %lo(gEntitiesNextPosYArray)
/* 1F8B1C 801E0B9C 3C01800E */  lui         $at, %hi(gEntitiesNextPosZArray)
/* 1F8B20 801E0BA0 00184080 */  sll         $t0, $t8, 2
/* 1F8B24 801E0BA4 0268C821 */  addu        $t9, $s3, $t0
/* 1F8B28 801E0BA8 E7260000 */  swc1        $f6, 0x0($t9)
/* 1F8B2C 801E0BAC 8E090000 */  lw          $t1, 0x0($s0)
/* 1F8B30 801E0BB0 C7A8004C */  lwc1        $f8, 0x4C($sp)
/* 1F8B34 801E0BB4 3C06800E */  lui         $a2, %hi(D_800DFBD0)
/* 1F8B38 801E0BB8 00095880 */  sll         $t3, $t1, 2
/* 1F8B3C 801E0BBC 002B0821 */  addu        $at, $at, $t3
/* 1F8B40 801E0BC0 E4282950 */  swc1        $f8, %lo(gEntitiesNextPosZArray)($at)
/* 1F8B44 801E0BC4 8E0C0000 */  lw          $t4, 0x0($s0)
/* 1F8B48 801E0BC8 24C6FBD0 */  addiu       $a2, $a2, %lo(D_800DFBD0)
/* 1F8B4C 801E0BCC 4480A000 */  mtc1        $zero, $f20
/* 1F8B50 801E0BD0 000C6880 */  sll         $t5, $t4, 2
/* 1F8B54 801E0BD4 00CD7021 */  addu        $t6, $a2, $t5
/* 1F8B58 801E0BD8 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F8B5C 801E0BDC 3C014270 */  lui         $at, (0x42700000 >> 16)
/* 1F8B60 801E0BE0 44815000 */  mtc1        $at, $f10
/* 1F8B64 801E0BE4 8DEA0004 */  lw          $t2, 0x4($t7)
/* 1F8B68 801E0BE8 4600A306 */  mov.s       $f12, $f20
/* 1F8B6C 801E0BEC E5540024 */  swc1        $f20, 0x24($t2)
/* 1F8B70 801E0BF0 8E380000 */  lw          $t8, 0x0($s1)
/* 1F8B74 801E0BF4 8F080000 */  lw          $t0, 0x0($t8)
/* 1F8B78 801E0BF8 0008C880 */  sll         $t9, $t0, 2
/* 1F8B7C 801E0BFC 00D94821 */  addu        $t1, $a2, $t9
/* 1F8B80 801E0C00 8D2B0000 */  lw          $t3, 0x0($t1)
/* 1F8B84 801E0C04 8D620004 */  lw          $v0, 0x4($t3)
/* 1F8B88 801E0C08 C4400024 */  lwc1        $f0, 0x24($v0)
/* 1F8B8C 801E0C0C E4400020 */  swc1        $f0, 0x20($v0)
/* 1F8B90 801E0C10 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1F8B94 801E0C14 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F8B98 801E0C18 000D7080 */  sll         $t6, $t5, 2
/* 1F8B9C 801E0C1C 00CE7821 */  addu        $t7, $a2, $t6
/* 1F8BA0 801E0C20 8DEA0000 */  lw          $t2, 0x0($t7)
/* 1F8BA4 801E0C24 8D580004 */  lw          $t8, 0x4($t2)
/* 1F8BA8 801E0C28 E700001C */  swc1        $f0, 0x1C($t8)
/* 1F8BAC 801E0C2C 8E280000 */  lw          $t0, 0x0($s1)
/* 1F8BB0 801E0C30 8D190000 */  lw          $t9, 0x0($t0)
/* 1F8BB4 801E0C34 00194880 */  sll         $t1, $t9, 2
/* 1F8BB8 801E0C38 00C95821 */  addu        $t3, $a2, $t1
/* 1F8BBC 801E0C3C 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F8BC0 801E0C40 8D8D0008 */  lw          $t5, 0x8($t4)
/* 1F8BC4 801E0C44 E5B40024 */  swc1        $f20, 0x24($t5)
/* 1F8BC8 801E0C48 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1F8BCC 801E0C4C 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F8BD0 801E0C50 000F5080 */  sll         $t2, $t7, 2
/* 1F8BD4 801E0C54 00CAC021 */  addu        $t8, $a2, $t2
/* 1F8BD8 801E0C58 8F080000 */  lw          $t0, 0x0($t8)
/* 1F8BDC 801E0C5C 8D030008 */  lw          $v1, 0x8($t0)
/* 1F8BE0 801E0C60 C4600024 */  lwc1        $f0, 0x24($v1)
/* 1F8BE4 801E0C64 E4600020 */  swc1        $f0, 0x20($v1)
/* 1F8BE8 801E0C68 8E390000 */  lw          $t9, 0x0($s1)
/* 1F8BEC 801E0C6C 8F290000 */  lw          $t1, 0x0($t9)
/* 1F8BF0 801E0C70 00095880 */  sll         $t3, $t1, 2
/* 1F8BF4 801E0C74 00CB6021 */  addu        $t4, $a2, $t3
/* 1F8BF8 801E0C78 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F8BFC 801E0C7C 8DAE0008 */  lw          $t6, 0x8($t5)
/* 1F8C00 801E0C80 E5C0001C */  swc1        $f0, 0x1C($t6)
/* 1F8C04 801E0C84 8E8F0080 */  lw          $t7, 0x80($s4)
/* 1F8C08 801E0C88 0C02BB48 */  jal         func_800AED20
/* 1F8C0C 801E0C8C E5EA0010 */   swc1       $f10, 0x10($t7)
/* 1F8C10 801E0C90 3C01800D */  lui         $at, %hi(D_800D6B10)
/* 1F8C14 801E0C94 C4306B10 */  lwc1        $f16, %lo(D_800D6B10)($at)
/* 1F8C18 801E0C98 3C013F00 */  lui         $at, (0x3F000000 >> 16)
/* 1F8C1C 801E0C9C 44819000 */  mtc1        $at, $f18
/* 1F8C20 801E0CA0 00000000 */  nop
/* 1F8C24 801E0CA4 46128302 */  mul.s       $f12, $f16, $f18
/* 1F8C28 801E0CA8 0C02BB30 */  jal         func_800AECC0
/* 1F8C2C 801E0CAC 00000000 */   nop
/* 1F8C30 801E0CB0 8E300000 */  lw          $s0, 0x0($s1)
/* 1F8C34 801E0CB4 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1F8C38 801E0CB8 240A0007 */  addiu       $t2, $zero, 0x7
/* 1F8C3C 801E0CBC 8E180000 */  lw          $t8, 0x0($s0)
/* 1F8C40 801E0CC0 3C0C800E */  lui         $t4, %hi(D_800E1B50)
/* 1F8C44 801E0CC4 3C19801E */  lui         $t9, %hi(D_801D93F0)
/* 1F8C48 801E0CC8 00184080 */  sll         $t0, $t8, 2
/* 1F8C4C 801E0CCC 00280821 */  addu        $at, $at, $t0
/* 1F8C50 801E0CD0 AC2ADFD0 */  sw          $t2, %lo(D_800DDFD0)($at)
/* 1F8C54 801E0CD4 8E090000 */  lw          $t1, 0x0($s0)
/* 1F8C58 801E0CD8 273993F0 */  addiu       $t9, $t9, %lo(D_801D93F0)
/* 1F8C5C 801E0CDC 3C04801E */  lui         $a0, %hi(D_801DAB18)
/* 1F8C60 801E0CE0 00095880 */  sll         $t3, $t1, 2
/* 1F8C64 801E0CE4 018B6021 */  addu        $t4, $t4, $t3
/* 1F8C68 801E0CE8 8D8C1B50 */  lw          $t4, %lo(D_800E1B50)($t4)
/* 1F8C6C 801E0CEC 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F8C70 801E0CF0 2484AB18 */  addiu       $a0, $a0, %lo(D_801DAB18)
/* 1F8C74 801E0CF4 AD99008C */  sw          $t9, 0x8C($t4)
/* 1F8C78 801E0CF8 8E2D0000 */  lw          $t5, 0x0($s1)
/* 1F8C7C 801E0CFC 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F8C80 801E0D00 000E7880 */  sll         $t7, $t6, 2
/* 1F8C84 801E0D04 002F0821 */  addu        $at, $at, $t7
/* 1F8C88 801E0D08 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F8C8C 801E0D0C AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F8C90 801E0D10 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F8C94 801E0D14 3C0B800E */  lui         $t3, %hi(D_800E1B50)
/* 1F8C98 801E0D18 3C01801E */  lui         $at, %hi(D_801E5D60_ovl13)
/* 1F8C9C 801E0D1C 8D480000 */  lw          $t0, 0x0($t2)
/* 1F8CA0 801E0D20 3C18801E */  lui         $t8, %hi(D_801DAE1C)
/* 1F8CA4 801E0D24 C4205D60 */  lwc1        $f0, %lo(D_801E5D60_ovl13)($at)
/* 1F8CA8 801E0D28 00084880 */  sll         $t1, $t0, 2
/* 1F8CAC 801E0D2C 01695821 */  addu        $t3, $t3, $t1
/* 1F8CB0 801E0D30 8D6B1B50 */  lw          $t3, %lo(D_800E1B50)($t3)
/* 1F8CB4 801E0D34 2718AE1C */  addiu       $t8, $t8, %lo(D_801DAE1C)
/* 1F8CB8 801E0D38 3C14800F */  lui         $s4, %hi(D_800E8920)
/* 1F8CBC 801E0D3C AD780098 */  sw          $t8, 0x98($t3)
/* 1F8CC0 801E0D40 8E300000 */  lw          $s0, 0x0($s1)
/* 1F8CC4 801E0D44 26948920 */  addiu       $s4, $s4, %lo(D_800E8920)
/* 1F8CC8 801E0D48 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F8CCC 801E0D4C 8E190000 */  lw          $t9, 0x0($s0)
/* 1F8CD0 801E0D50 3C02800E */  lui         $v0, %hi(D_800E3590)
/* 1F8CD4 801E0D54 24423590 */  addiu       $v0, $v0, %lo(D_800E3590)
/* 1F8CD8 801E0D58 00196080 */  sll         $t4, $t9, 2
/* 1F8CDC 801E0D5C 028C6821 */  addu        $t5, $s4, $t4
/* 1F8CE0 801E0D60 ADA00000 */  sw          $zero, 0x0($t5)
/* 1F8CE4 801E0D64 8E0E0000 */  lw          $t6, 0x0($s0)
/* 1F8CE8 801E0D68 44804000 */  mtc1        $zero, $f8
/* 1F8CEC 801E0D6C 000E7880 */  sll         $t7, $t6, 2
/* 1F8CF0 801E0D70 002F0821 */  addu        $at, $at, $t7
/* 1F8CF4 801E0D74 E4346690 */  swc1        $f20, %lo(D_800E6690)($at)
/* 1F8CF8 801E0D78 8E030000 */  lw          $v1, 0x0($s0)
/* 1F8CFC 801E0D7C 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F8D00 801E0D80 00031880 */  sll         $v1, $v1, 2
/* 1F8D04 801E0D84 00230821 */  addu        $at, $at, $v1
/* 1F8D08 801E0D88 C4246690 */  lwc1        $f4, %lo(D_800E6690)($at)
/* 1F8D0C 801E0D8C 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F8D10 801E0D90 00230821 */  addu        $at, $at, $v1
/* 1F8D14 801E0D94 E42464D0 */  swc1        $f4, %lo(D_800E64D0)($at)
/* 1F8D18 801E0D98 8E0A0000 */  lw          $t2, 0x0($s0)
/* 1F8D1C 801E0D9C 3C01800E */  lui         $at, %hi(D_800E6850)
/* 1F8D20 801E0DA0 000A4080 */  sll         $t0, $t2, 2
/* 1F8D24 801E0DA4 00280821 */  addu        $at, $at, $t0
/* 1F8D28 801E0DA8 E4206850 */  swc1        $f0, %lo(D_800E6850)($at)
/* 1F8D2C 801E0DAC 8E090000 */  lw          $t1, 0x0($s0)
/* 1F8D30 801E0DB0 3C01800E */  lui         $at, %hi(D_800E3050)
/* 1F8D34 801E0DB4 0009C080 */  sll         $t8, $t1, 2
/* 1F8D38 801E0DB8 00585821 */  addu        $t3, $v0, $t8
/* 1F8D3C 801E0DBC E5740000 */  swc1        $f20, 0x0($t3)
/* 1F8D40 801E0DC0 8E030000 */  lw          $v1, 0x0($s0)
/* 1F8D44 801E0DC4 00031880 */  sll         $v1, $v1, 2
/* 1F8D48 801E0DC8 0043C821 */  addu        $t9, $v0, $v1
/* 1F8D4C 801E0DCC C7260000 */  lwc1        $f6, 0x0($t9)
/* 1F8D50 801E0DD0 00230821 */  addu        $at, $at, $v1
/* 1F8D54 801E0DD4 E4263050 */  swc1        $f6, %lo(D_800E3050)($at)
/* 1F8D58 801E0DD8 8E0C0000 */  lw          $t4, 0x0($s0)
/* 1F8D5C 801E0DDC 3C01800E */  lui         $at, %hi(D_800E3AD0)
/* 1F8D60 801E0DE0 000C6880 */  sll         $t5, $t4, 2
/* 1F8D64 801E0DE4 002D0821 */  addu        $at, $at, $t5
/* 1F8D68 801E0DE8 E4203AD0 */  swc1        $f0, %lo(D_800E3AD0)($at)
/* 1F8D6C 801E0DEC 8E0E0000 */  lw          $t6, 0x0($s0)
/* 1F8D70 801E0DF0 3C01800E */  lui         $at, %hi(D_800E33D0)
/* 1F8D74 801E0DF4 000E7880 */  sll         $t7, $t6, 2
/* 1F8D78 801E0DF8 002F0821 */  addu        $at, $at, $t7
/* 1F8D7C 801E0DFC E43433D0 */  swc1        $f20, %lo(D_800E33D0)($at)
/* 1F8D80 801E0E00 8E0A0000 */  lw          $t2, 0x0($s0)
/* 1F8D84 801E0E04 3C01800E */  lui         $at, %hi(D_800E3910)
/* 1F8D88 801E0E08 000A4080 */  sll         $t0, $t2, 2
/* 1F8D8C 801E0E0C 00280821 */  addu        $at, $at, $t0
/* 1F8D90 801E0E10 E4343910 */  swc1        $f20, %lo(D_800E3910)($at)
/* 1F8D94 801E0E14 8E090000 */  lw          $t1, 0x0($s0)
/* 1F8D98 801E0E18 3C01800E */  lui         $at, %hi(D_800E3E50)
/* 1F8D9C 801E0E1C 0009C080 */  sll         $t8, $t1, 2
/* 1F8DA0 801E0E20 00380821 */  addu        $at, $at, $t8
/* 1F8DA4 801E0E24 E4203E50 */  swc1        $f0, %lo(D_800E3E50)($at)
/* 1F8DA8 801E0E28 8E0B0000 */  lw          $t3, 0x0($s0)
/* 1F8DAC 801E0E2C 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F8DB0 801E0E30 000BC880 */  sll         $t9, $t3, 2
/* 1F8DB4 801E0E34 00390821 */  addu        $at, $at, $t9
/* 1F8DB8 801E0E38 E4343750 */  swc1        $f20, %lo(D_800E3750)($at)
/* 1F8DBC 801E0E3C 8E0C0000 */  lw          $t4, 0x0($s0)
/* 1F8DC0 801E0E40 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1F8DC4 801E0E44 000C6880 */  sll         $t5, $t4, 2
/* 1F8DC8 801E0E48 002D0821 */  addu        $at, $at, $t5
/* 1F8DCC 801E0E4C E4203C90 */  swc1        $f0, %lo(D_800E3C90)($at)
/* 1F8DD0 801E0E50 3C01800D */  lui         $at, %hi(D_800D6E5C)
/* 1F8DD4 801E0E54 C42A6E5C */  lwc1        $f10, %lo(D_800D6E5C)($at)
/* 1F8DD8 801E0E58 460A4032 */  c.eq.s      $f8, $f10
/* 1F8DDC 801E0E5C 00000000 */  nop
/* 1F8DE0 801E0E60 45010007 */  bc1t        L801E0E80_ovl13
/* 1F8DE4 801E0E64 00000000 */   nop
/* 1F8DE8 801E0E68 8E0E0000 */  lw          $t6, 0x0($s0)
/* 1F8DEC 801E0E6C 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 1F8DF0 801E0E70 000E7880 */  sll         $t7, $t6, 2
/* 1F8DF4 801E0E74 002F0821 */  addu        $at, $at, $t7
/* 1F8DF8 801E0E78 0C02F047 */  jal         func_800BC11C
/* 1F8DFC 801E0E7C C42C7B20 */   lwc1       $f12, %lo(D_800E7B20)($at)
glabel L801E0E80_ovl13
/* 1F8E00 801E0E80 0C029D9E */  jal         play_sound
/* 1F8E04 801E0E84 240401E7 */   addiu      $a0, $zero, 0x1E7
/* 1F8E08 801E0E88 24040002 */  addiu       $a0, $zero, 0x2
/* 1F8E0C 801E0E8C 0C02ED1A */  jal         func_800BB468
/* 1F8E10 801E0E90 00002825 */   move       $a1, $zero
/* 1F8E14 801E0E94 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F8E18 801E0E98 3C05800E */  lui         $a1, %hi(gEntitiesNextPosXArray)
/* 1F8E1C 801E0E9C 3C07800E */  lui         $a3, %hi(gEntitiesNextPosZArray)
/* 1F8E20 801E0EA0 8D430000 */  lw          $v1, 0x0($t2)
/* 1F8E24 801E0EA4 24040002 */  addiu       $a0, $zero, 0x2
/* 1F8E28 801E0EA8 00031880 */  sll         $v1, $v1, 2
/* 1F8E2C 801E0EAC 00A32821 */  addu        $a1, $a1, $v1
/* 1F8E30 801E0EB0 02634021 */  addu        $t0, $s3, $v1
/* 1F8E34 801E0EB4 00E33821 */  addu        $a3, $a3, $v1
/* 1F8E38 801E0EB8 8CE72950 */  lw          $a3, %lo(gEntitiesNextPosZArray)($a3)
/* 1F8E3C 801E0EBC 8D060000 */  lw          $a2, 0x0($t0)
/* 1F8E40 801E0EC0 0C03F5D5 */  jal         func_800FD754
/* 1F8E44 801E0EC4 8CA525D0 */   lw         $a1, %lo(gEntitiesNextPosXArray)($a1)
/* 1F8E48 801E0EC8 8E290000 */  lw          $t1, 0x0($s1)
/* 1F8E4C 801E0ECC 3C05800E */  lui         $a1, %hi(gEntitiesNextPosXArray)
/* 1F8E50 801E0ED0 3C07800E */  lui         $a3, %hi(gEntitiesNextPosZArray)
/* 1F8E54 801E0ED4 8D230000 */  lw          $v1, 0x0($t1)
/* 1F8E58 801E0ED8 24040004 */  addiu       $a0, $zero, 0x4
/* 1F8E5C 801E0EDC 00031880 */  sll         $v1, $v1, 2
/* 1F8E60 801E0EE0 00A32821 */  addu        $a1, $a1, $v1
/* 1F8E64 801E0EE4 0263C021 */  addu        $t8, $s3, $v1
/* 1F8E68 801E0EE8 00E33821 */  addu        $a3, $a3, $v1
/* 1F8E6C 801E0EEC 8CE72950 */  lw          $a3, %lo(gEntitiesNextPosZArray)($a3)
/* 1F8E70 801E0EF0 8F060000 */  lw          $a2, 0x0($t8)
/* 1F8E74 801E0EF4 0C03F5D5 */  jal         func_800FD754
/* 1F8E78 801E0EF8 8CA525D0 */   lw         $a1, %lo(gEntitiesNextPosXArray)($a1)
/* 1F8E7C 801E0EFC 0C078DFA */  jal         func_801E37E8_ovl13
/* 1F8E80 801E0F00 8FA40058 */   lw         $a0, 0x58($sp)
/* 1F8E84 801E0F04 3C01800D */  lui         $at, %hi(D_800D7154)
/* 1F8E88 801E0F08 AC207154 */  sw          $zero, %lo(D_800D7154)($at)
/* 1F8E8C 801E0F0C 8E300000 */  lw          $s0, 0x0($s1)
/* 1F8E90 801E0F10 3C02800F */  lui         $v0, %hi(D_800EAFA0)
/* 1F8E94 801E0F14 2442AFA0 */  addiu       $v0, $v0, %lo(D_800EAFA0)
/* 1F8E98 801E0F18 8E0B0000 */  lw          $t3, 0x0($s0)
/* 1F8E9C 801E0F1C 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F8EA0 801E0F20 3C040001 */  lui         $a0, (0x10427 >> 16)
/* 1F8EA4 801E0F24 000BC880 */  sll         $t9, $t3, 2
/* 1F8EA8 801E0F28 00596021 */  addu        $t4, $v0, $t9
/* 1F8EAC 801E0F2C E5940000 */  swc1        $f20, 0x0($t4)
/* 1F8EB0 801E0F30 8E030000 */  lw          $v1, 0x0($s0)
/* 1F8EB4 801E0F34 34840427 */  ori         $a0, $a0, (0x10427 & 0xFFFF)
/* 1F8EB8 801E0F38 00031880 */  sll         $v1, $v1, 2
/* 1F8EBC 801E0F3C 00436821 */  addu        $t5, $v0, $v1
/* 1F8EC0 801E0F40 C5A00000 */  lwc1        $f0, 0x0($t5)
/* 1F8EC4 801E0F44 00230821 */  addu        $at, $at, $v1
/* 1F8EC8 801E0F48 E420ADE0 */  swc1        $f0, %lo(D_800EADE0)($at)
/* 1F8ECC 801E0F4C 8E0E0000 */  lw          $t6, 0x0($s0)
/* 1F8ED0 801E0F50 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1F8ED4 801E0F54 000E7880 */  sll         $t7, $t6, 2
/* 1F8ED8 801E0F58 002F0821 */  addu        $at, $at, $t7
/* 1F8EDC 801E0F5C 0C02A806 */  jal         func_800AA018
/* 1F8EE0 801E0F60 E420AC20 */   swc1       $f0, %lo(D_800EAC20)($at)
/* 1F8EE4 801E0F64 8E300000 */  lw          $s0, 0x0($s1)
/* 1F8EE8 801E0F68 3C01801E */  lui         $at, %hi(D_801E5D68_ovl13)
/* 1F8EEC 801E0F6C C4305D68 */  lwc1        $f16, %lo(D_801E5D68_ovl13)($at)
/* 1F8EF0 801E0F70 8E0A0000 */  lw          $t2, 0x0($s0)
/* 1F8EF4 801E0F74 3C02800E */  lui         $v0, %hi(D_800E3750)
/* 1F8EF8 801E0F78 24423750 */  addiu       $v0, $v0, %lo(D_800E3750)
/* 1F8EFC 801E0F7C 000A4080 */  sll         $t0, $t2, 2
/* 1F8F00 801E0F80 00484821 */  addu        $t1, $v0, $t0
/* 1F8F04 801E0F84 E5300000 */  swc1        $f16, 0x0($t1)
/* 1F8F08 801E0F88 8E180000 */  lw          $t8, 0x0($s0)
/* 1F8F0C 801E0F8C 3C014000 */  lui         $at, (0x40000000 >> 16)
/* 1F8F10 801E0F90 44819000 */  mtc1        $at, $f18
/* 1F8F14 801E0F94 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1F8F18 801E0F98 00185880 */  sll         $t3, $t8, 2
/* 1F8F1C 801E0F9C 002B0821 */  addu        $at, $at, $t3
/* 1F8F20 801E0FA0 E4323C90 */  swc1        $f18, %lo(D_800E3C90)($at)
/* 1F8F24 801E0FA4 8E190000 */  lw          $t9, 0x0($s0)
/* 1F8F28 801E0FA8 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F8F2C 801E0FAC 00196080 */  sll         $t4, $t9, 2
/* 1F8F30 801E0FB0 002C0821 */  addu        $at, $at, $t4
/* 1F8F34 801E0FB4 E4346690 */  swc1        $f20, %lo(D_800E6690)($at)
/* 1F8F38 801E0FB8 8E030000 */  lw          $v1, 0x0($s0)
/* 1F8F3C 801E0FBC 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F8F40 801E0FC0 00031880 */  sll         $v1, $v1, 2
/* 1F8F44 801E0FC4 00230821 */  addu        $at, $at, $v1
/* 1F8F48 801E0FC8 C4246690 */  lwc1        $f4, %lo(D_800E6690)($at)
/* 1F8F4C 801E0FCC 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F8F50 801E0FD0 00230821 */  addu        $at, $at, $v1
/* 1F8F54 801E0FD4 E42464D0 */  swc1        $f4, %lo(D_800E64D0)($at)
/* 1F8F58 801E0FD8 8E0D0000 */  lw          $t5, 0x0($s0)
/* 1F8F5C 801E0FDC 3C01801E */  lui         $at, %hi(D_801E5D6C_ovl13)
/* 1F8F60 801E0FE0 C4265D6C */  lwc1        $f6, %lo(D_801E5D6C_ovl13)($at)
/* 1F8F64 801E0FE4 3C01800E */  lui         $at, %hi(D_800E6850)
/* 1F8F68 801E0FE8 000D7080 */  sll         $t6, $t5, 2
/* 1F8F6C 801E0FEC 002E0821 */  addu        $at, $at, $t6
/* 1F8F70 801E0FF0 E4266850 */  swc1        $f6, %lo(D_800E6850)($at)
/* 1F8F74 801E0FF4 8E0F0000 */  lw          $t7, 0x0($s0)
/* 1F8F78 801E0FF8 3C01801E */  lui         $at, %hi(D_801E5D70_ovl13)
/* 1F8F7C 801E0FFC C4285D70 */  lwc1        $f8, %lo(D_801E5D70_ovl13)($at)
/* 1F8F80 801E1000 3C01800F */  lui         $at, %hi(D_800EAFA0)
/* 1F8F84 801E1004 000F5080 */  sll         $t2, $t7, 2
/* 1F8F88 801E1008 002A0821 */  addu        $at, $at, $t2
/* 1F8F8C 801E100C E428AFA0 */  swc1        $f8, %lo(D_800EAFA0)($at)
/* 1F8F90 801E1010 8E030000 */  lw          $v1, 0x0($s0)
/* 1F8F94 801E1014 00031880 */  sll         $v1, $v1, 2
/* 1F8F98 801E1018 02834021 */  addu        $t0, $s4, $v1
/* 1F8F9C 801E101C 8D090000 */  lw          $t1, 0x0($t0)
/* 1F8FA0 801E1020 5520000D */  bnel        $t1, $zero, L801E1058_ovl13
/* 1F8FA4 801E1024 0043C821 */   addu       $t9, $v0, $v1
glabel L801E1028_ovl13
/* 1F8FA8 801E1028 0C002DAF */  jal         finish_current_thread
/* 1F8FAC 801E102C 24040001 */   addiu      $a0, $zero, 0x1
/* 1F8FB0 801E1030 8E300000 */  lw          $s0, 0x0($s1)
/* 1F8FB4 801E1034 8E030000 */  lw          $v1, 0x0($s0)
/* 1F8FB8 801E1038 00031880 */  sll         $v1, $v1, 2
/* 1F8FBC 801E103C 0283C021 */  addu        $t8, $s4, $v1
/* 1F8FC0 801E1040 8F0B0000 */  lw          $t3, 0x0($t8)
/* 1F8FC4 801E1044 1160FFF8 */  beqz        $t3, L801E1028_ovl13
/* 1F8FC8 801E1048 00000000 */   nop
/* 1F8FCC 801E104C 3C02800E */  lui         $v0, %hi(D_800E3750)
/* 1F8FD0 801E1050 24423750 */  addiu       $v0, $v0, %lo(D_800E3750)
/* 1F8FD4 801E1054 0043C821 */  addu        $t9, $v0, $v1
glabel L801E1058_ovl13
/* 1F8FD8 801E1058 E7340000 */  swc1        $f20, 0x0($t9)
/* 1F8FDC 801E105C 8E030000 */  lw          $v1, 0x0($s0)
/* 1F8FE0 801E1060 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F8FE4 801E1064 24040002 */  addiu       $a0, $zero, 0x2
/* 1F8FE8 801E1068 00031880 */  sll         $v1, $v1, 2
/* 1F8FEC 801E106C 00436021 */  addu        $t4, $v0, $v1
/* 1F8FF0 801E1070 C58A0000 */  lwc1        $f10, 0x0($t4)
/* 1F8FF4 801E1074 00230821 */  addu        $at, $at, $v1
/* 1F8FF8 801E1078 E42A3210 */  swc1        $f10, %lo(D_800E3210)($at)
/* 1F8FFC 801E107C 8E0D0000 */  lw          $t5, 0x0($s0)
/* 1F9000 801E1080 3C01801E */  lui         $at, %hi(D_801E5D74_ovl13)
/* 1F9004 801E1084 C4305D74 */  lwc1        $f16, %lo(D_801E5D74_ovl13)($at)
/* 1F9008 801E1088 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1F900C 801E108C 000D7080 */  sll         $t6, $t5, 2
/* 1F9010 801E1090 002E0821 */  addu        $at, $at, $t6
/* 1F9014 801E1094 0C03EE45 */  jal         func_800FB914
/* 1F9018 801E1098 E4303C90 */   swc1       $f16, %lo(D_800E3C90)($at)
/* 1F901C 801E109C 8E300000 */  lw          $s0, 0x0($s1)
/* 1F9020 801E10A0 3C01800F */  lui         $at, %hi(D_800EAFA0)
/* 1F9024 801E10A4 3C03800D */  lui         $v1, %hi(D_800D70D8)
/* 1F9028 801E10A8 8E0F0000 */  lw          $t7, 0x0($s0)
/* 1F902C 801E10AC 246370D8 */  addiu       $v1, $v1, %lo(D_800D70D8)
/* 1F9030 801E10B0 24190001 */  addiu       $t9, $zero, 0x1
/* 1F9034 801E10B4 000F5080 */  sll         $t2, $t7, 2
/* 1F9038 801E10B8 002A0821 */  addu        $at, $at, $t2
/* 1F903C 801E10BC E434AFA0 */  swc1        $f20, %lo(D_800EAFA0)($at)
/* 1F9040 801E10C0 8E080000 */  lw          $t0, 0x0($s0)
/* 1F9044 801E10C4 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1F9048 801E10C8 24040014 */  addiu       $a0, $zero, 0x14
/* 1F904C 801E10CC 00084880 */  sll         $t1, $t0, 2
/* 1F9050 801E10D0 00290821 */  addu        $at, $at, $t1
/* 1F9054 801E10D4 C43225D0 */  lwc1        $f18, %lo(gEntitiesNextPosXArray)($at)
/* 1F9058 801E10D8 3C01800E */  lui         $at, %hi(gEntitiesNextPosZArray)
/* 1F905C 801E10DC E4720004 */  swc1        $f18, 0x4($v1)
/* 1F9060 801E10E0 8E180000 */  lw          $t8, 0x0($s0)
/* 1F9064 801E10E4 00185880 */  sll         $t3, $t8, 2
/* 1F9068 801E10E8 002B0821 */  addu        $at, $at, $t3
/* 1F906C 801E10EC C4242950 */  lwc1        $f4, %lo(gEntitiesNextPosZArray)($at)
/* 1F9070 801E10F0 3C01800D */  lui         $at, %hi(D_800D709C)
/* 1F9074 801E10F4 E4640008 */  swc1        $f4, 0x8($v1)
/* 1F9078 801E10F8 0C002DAF */  jal         finish_current_thread
/* 1F907C 801E10FC AC39709C */   sw         $t9, %lo(D_800D709C)($at)
/* 1F9080 801E1100 8E300000 */  lw          $s0, 0x0($s1)
/* 1F9084 801E1104 3C0F800E */  lui         $t7, %hi(D_800E0D50)
/* 1F9088 801E1108 240C0002 */  addiu       $t4, $zero, 0x2
/* 1F908C 801E110C 8E0D0000 */  lw          $t5, 0x0($s0)
/* 1F9090 801E1110 000D7080 */  sll         $t6, $t5, 2
/* 1F9094 801E1114 01EE7821 */  addu        $t7, $t7, $t6
/* 1F9098 801E1118 8DEF0D50 */  lw          $t7, %lo(D_800E0D50)($t7)
/* 1F909C 801E111C 000F5080 */  sll         $t2, $t7, 2
/* 1F90A0 801E1120 02AA4021 */  addu        $t0, $s5, $t2
/* 1F90A4 801E1124 AD0C0000 */  sw          $t4, 0x0($t0)
/* 1F90A8 801E1128 8E090000 */  lw          $t1, 0x0($s0)
/* 1F90AC 801E112C 0009C080 */  sll         $t8, $t1, 2
/* 1F90B0 801E1130 02585821 */  addu        $t3, $s2, $t8
/* 1F90B4 801E1134 8D790000 */  lw          $t9, 0x0($t3)
/* 1F90B8 801E1138 00196880 */  sll         $t5, $t9, 2
/* 1F90BC 801E113C 02AD7021 */  addu        $t6, $s5, $t5
/* 1F90C0 801E1140 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F90C4 801E1144 11E00016 */  beqz        $t7, L801E11A0_ovl13
/* 1F90C8 801E1148 00000000 */   nop
glabel L801E114C_ovl13
/* 1F90CC 801E114C 0C002DAF */  jal         finish_current_thread
/* 1F90D0 801E1150 24040001 */   addiu      $a0, $zero, 0x1
/* 1F90D4 801E1154 8E300000 */  lw          $s0, 0x0($s1)
/* 1F90D8 801E1158 8E030000 */  lw          $v1, 0x0($s0)
/* 1F90DC 801E115C 00031880 */  sll         $v1, $v1, 2
/* 1F90E0 801E1160 02435021 */  addu        $t2, $s2, $v1
/* 1F90E4 801E1164 8D4C0000 */  lw          $t4, 0x0($t2)
/* 1F90E8 801E1168 0263C021 */  addu        $t8, $s3, $v1
/* 1F90EC 801E116C 000C4080 */  sll         $t0, $t4, 2
/* 1F90F0 801E1170 02684821 */  addu        $t1, $s3, $t0
/* 1F90F4 801E1174 C5260000 */  lwc1        $f6, 0x0($t1)
/* 1F90F8 801E1178 E7060000 */  swc1        $f6, 0x0($t8)
/* 1F90FC 801E117C 8E0B0000 */  lw          $t3, 0x0($s0)
/* 1F9100 801E1180 000BC880 */  sll         $t9, $t3, 2
/* 1F9104 801E1184 02596821 */  addu        $t5, $s2, $t9
/* 1F9108 801E1188 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F910C 801E118C 000E7880 */  sll         $t7, $t6, 2
/* 1F9110 801E1190 02AF5021 */  addu        $t2, $s5, $t7
/* 1F9114 801E1194 8D4C0000 */  lw          $t4, 0x0($t2)
/* 1F9118 801E1198 1580FFEC */  bnez        $t4, L801E114C_ovl13
/* 1F911C 801E119C 00000000 */   nop
glabel L801E11A0_ovl13
/* 1F9120 801E11A0 0C02BE85 */  jal         func_800AFA14
/* 1F9124 801E11A4 00000000 */   nop
/* 1F9128 801E11A8 8FBF0034 */  lw          $ra, 0x34($sp)
/* 1F912C 801E11AC D7B40010 */  ldc1        $f20, 0x10($sp)
/* 1F9130 801E11B0 8FB0001C */  lw          $s0, 0x1C($sp)
/* 1F9134 801E11B4 8FB10020 */  lw          $s1, 0x20($sp)
/* 1F9138 801E11B8 8FB20024 */  lw          $s2, 0x24($sp)
/* 1F913C 801E11BC 8FB30028 */  lw          $s3, 0x28($sp)
/* 1F9140 801E11C0 8FB4002C */  lw          $s4, 0x2C($sp)
/* 1F9144 801E11C4 8FB50030 */  lw          $s5, 0x30($sp)
/* 1F9148 801E11C8 03E00008 */  jr          $ra
/* 1F914C 801E11CC 27BD0058 */   addiu      $sp, $sp, 0x58
.type func_801E0A90_ovl13, @function

.size func_801E0A90_ovl13, . - func_801E0A90_ovl13
.section .late_rodata
glabel D_801E5D60_ovl13
/* 1FDCE0 801E5D60 */ .word 0x477FFF00
/* 1FDCE4 801E5D64 */ .word 0x477FFF00

glabel D_801E5D68_ovl13
/* 1FDCE8 801E5D68 */ .word 0xBE4CCCCD

glabel D_801E5D6C_ovl13
/* 1FDCEC 801E5D6C */ .word 0x477FFF00

glabel D_801E5D70_ovl13
/* 1FDCF0 801E5D70 */ .word 0x3C8EFA35

glabel D_801E5D74_ovl13
/* 1FDCF4 801E5D74 */ .word 0x477FFF00

