glabel func_801DB870_ovl13 # 4
/* 1F37F0 801DB870 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 1F37F4 801DB874 AFB30054 */  sw          $s3, 0x54($sp)
/* 1F37F8 801DB878 3C138005 */  lui         $s3, %hi(D_8004A7C4)
/* 1F37FC 801DB87C 2673A7C4 */  addiu       $s3, $s3, %lo(D_8004A7C4)
/* 1F3800 801DB880 8E6E0000 */  lw          $t6, 0x0($s3)
/* 1F3804 801DB884 AFBF006C */  sw          $ra, 0x6C($sp)
/* 1F3808 801DB888 AFBE0068 */  sw          $fp, 0x68($sp)
/* 1F380C 801DB88C AFB70064 */  sw          $s7, 0x64($sp)
/* 1F3810 801DB890 AFB60060 */  sw          $s6, 0x60($sp)
/* 1F3814 801DB894 AFB5005C */  sw          $s5, 0x5C($sp)
/* 1F3818 801DB898 AFB40058 */  sw          $s4, 0x58($sp)
/* 1F381C 801DB89C AFB20050 */  sw          $s2, 0x50($sp)
/* 1F3820 801DB8A0 AFB1004C */  sw          $s1, 0x4C($sp)
/* 1F3824 801DB8A4 AFB00048 */  sw          $s0, 0x48($sp)
/* 1F3828 801DB8A8 F7BE0040 */  sdc1        $f30, 0x40($sp)
/* 1F382C 801DB8AC F7BC0038 */  sdc1        $f28, 0x38($sp)
/* 1F3830 801DB8B0 F7BA0030 */  sdc1        $f26, 0x30($sp)
/* 1F3834 801DB8B4 F7B80028 */  sdc1        $f24, 0x28($sp)
/* 1F3838 801DB8B8 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 1F383C 801DB8BC F7B40018 */  sdc1        $f20, 0x18($sp)
/* 1F3840 801DB8C0 AFA40070 */  sw          $a0, 0x70($sp)
/* 1F3844 801DB8C4 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F3848 801DB8C8 3C10800E */  lui         $s0, %hi(D_800E0D50)
/* 1F384C 801DB8CC 000FC080 */  sll         $t8, $t7, 2
/* 1F3850 801DB8D0 02188021 */  addu        $s0, $s0, $t8
/* 1F3854 801DB8D4 0C066ED6 */  jal         func_8019BB58_ovl7
/* 1F3858 801DB8D8 8E100D50 */   lw         $s0, %lo(D_800E0D50)($s0)
/* 1F385C 801DB8DC 8E710000 */  lw          $s1, 0x0($s3)
/* 1F3860 801DB8E0 3C19800B */  lui         $t9, %hi(D_800B7138)
/* 1F3864 801DB8E4 3C01800E */  lui         $at, %hi(D_800DEF90)
/* 1F3868 801DB8E8 8E280000 */  lw          $t0, 0x0($s1)
/* 1F386C 801DB8EC 27397138 */  addiu       $t9, $t9, %lo(D_800B7138)
/* 1F3870 801DB8F0 3C0A801E */  lui         $t2, %hi(func_801DC788_ovl13)
/* 1F3874 801DB8F4 00084880 */  sll         $t1, $t0, 2
/* 1F3878 801DB8F8 00290821 */  addu        $at, $at, $t1
/* 1F387C 801DB8FC AC39EF90 */  sw          $t9, %lo(D_800DEF90)($at)
/* 1F3880 801DB900 8E2B0000 */  lw          $t3, 0x0($s1)
/* 1F3884 801DB904 3C01800E */  lui         $at, %hi(D_800DF150)
/* 1F3888 801DB908 254AC788 */  addiu       $t2, $t2, %lo(func_801DC788_ovl13)
/* 1F388C 801DB90C 000B6080 */  sll         $t4, $t3, 2
/* 1F3890 801DB910 002C0821 */  addu        $at, $at, $t4
/* 1F3894 801DB914 AC2AF150 */  sw          $t2, %lo(D_800DF150)($at)
/* 1F3898 801DB918 8E2D0000 */  lw          $t5, 0x0($s1)
/* 1F389C 801DB91C 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray5)
/* 1F38A0 801DB920 3C05800B */  lui         $a1, %hi(D_800B1434)
/* 1F38A4 801DB924 000D7080 */  sll         $t6, $t5, 2
/* 1F38A8 801DB928 008E2021 */  addu        $a0, $a0, $t6
/* 1F38AC 801DB92C 8C84EC10 */  lw          $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 1F38B0 801DB930 0C02C7DA */  jal         func_800B1F68
/* 1F38B4 801DB934 24A51434 */   addiu      $a1, $a1, %lo(D_800B1434)
/* 1F38B8 801DB938 8E6F0000 */  lw          $t7, 0x0($s3)
/* 1F38BC 801DB93C 24040071 */  addiu       $a0, $zero, 0x71
/* 1F38C0 801DB940 0C02C67D */  jal         func_800B19F4
/* 1F38C4 801DB944 8DE50000 */   lw         $a1, 0x0($t7)
/* 1F38C8 801DB948 00002025 */  move        $a0, $zero
/* 1F38CC 801DB94C 0C02BEED */  jal         func_800AFBB4
/* 1F38D0 801DB950 8E650000 */   lw         $a1, 0x0($s3)
/* 1F38D4 801DB954 0C044A6B */  jal         func_801129AC
/* 1F38D8 801DB958 00000000 */   nop
/* 1F38DC 801DB95C 0C044A77 */  jal         func_801129DC
/* 1F38E0 801DB960 00000000 */   nop
/* 1F38E4 801DB964 8E780000 */  lw          $t8, 0x0($s3)
/* 1F38E8 801DB968 3C04801E */  lui         $a0, %hi(D_801DAAB4)
/* 1F38EC 801DB96C 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F38F0 801DB970 8F080000 */  lw          $t0, 0x0($t8)
/* 1F38F4 801DB974 2484AAB4 */  addiu       $a0, $a0, %lo(D_801DAAB4)
/* 1F38F8 801DB978 0008C880 */  sll         $t9, $t0, 2
/* 1F38FC 801DB97C 00390821 */  addu        $at, $at, $t9
/* 1F3900 801DB980 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F3904 801DB984 AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F3908 801DB988 0C02CCFD */  jal         func_800B33F4
/* 1F390C 801DB98C 00000000 */   nop
/* 1F3910 801DB990 8E710000 */  lw          $s1, 0x0($s3)
/* 1F3914 801DB994 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 1F3918 801DB998 44812000 */  mtc1        $at, $f4
/* 1F391C 801DB99C 8E290000 */  lw          $t1, 0x0($s1)
/* 1F3920 801DB9A0 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F3924 801DB9A4 3C048000 */  lui         $a0, (0x80000002 >> 16)
/* 1F3928 801DB9A8 00095880 */  sll         $t3, $t1, 2
/* 1F392C 801DB9AC 002B0821 */  addu        $at, $at, $t3
/* 1F3930 801DB9B0 E4246A10 */  swc1        $f4, %lo(D_800E6A10)($at)
/* 1F3934 801DB9B4 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F3938 801DB9B8 3C01800F */  lui         $at, %hi(D_800E98E0)
/* 1F393C 801DB9BC 34840002 */  ori         $a0, $a0, (0x80000002 & 0xFFFF)
/* 1F3940 801DB9C0 000A6080 */  sll         $t4, $t2, 2
/* 1F3944 801DB9C4 002C0821 */  addu        $at, $at, $t4
/* 1F3948 801DB9C8 AC2098E0 */  sw          $zero, %lo(D_800E98E0)($at)
/* 1F394C 801DB9CC 8E2D0000 */  lw          $t5, 0x0($s1)
/* 1F3950 801DB9D0 3C01800F */  lui         $at, %hi(D_800E9AA0)
/* 1F3954 801DB9D4 000D7080 */  sll         $t6, $t5, 2
/* 1F3958 801DB9D8 002E0821 */  addu        $at, $at, $t6
/* 1F395C 801DB9DC 0C03E905 */  jal         func_800FA414
/* 1F3960 801DB9E0 AC209AA0 */   sw         $zero, %lo(D_800E9AA0)($at)
/* 1F3964 801DB9E4 8E6F0000 */  lw          $t7, 0x0($s3)
/* 1F3968 801DB9E8 3C018013 */  lui         $at, %hi(D_80129138)
/* 1F396C 801DB9EC 3C19800F */  lui         $t9, %hi(D_800E98E0)
/* 1F3970 801DB9F0 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F3974 801DB9F4 273998E0 */  addiu       $t9, $t9, %lo(D_800E98E0)
/* 1F3978 801DB9F8 00104080 */  sll         $t0, $s0, 2
/* 1F397C 801DB9FC AC389138 */  sw          $t8, %lo(D_80129138)($at)
/* 1F3980 801DBA00 3C01801E */  lui         $at, %hi(D_801E5C50_ovl13)
/* 1F3984 801DBA04 C43E5C50 */  lwc1        $f30, %lo(D_801E5C50_ovl13)($at)
/* 1F3988 801DBA08 3C01801E */  lui         $at, %hi(D_801E5C54_ovl13)
/* 1F398C 801DBA0C 0119A821 */  addu        $s5, $t0, $t9
/* 1F3990 801DBA10 3C1E800E */  lui         $fp, %hi(D_800E64D0)
/* 1F3994 801DBA14 3C17800E */  lui         $s7, %hi(D_800E6690)
/* 1F3998 801DBA18 3C14800E */  lui         $s4, %hi(gEntitiesNextPosYArray)
/* 1F399C 801DBA1C 4480E000 */  mtc1        $zero, $f28
/* 1F39A0 801DBA20 26942790 */  addiu       $s4, $s4, %lo(gEntitiesNextPosYArray)
/* 1F39A4 801DBA24 26F76690 */  addiu       $s7, $s7, %lo(D_800E6690)
/* 1F39A8 801DBA28 27DE64D0 */  addiu       $fp, $fp, %lo(D_800E64D0)
/* 1F39AC 801DBA2C 8EA20000 */  lw          $v0, 0x0($s5)
/* 1F39B0 801DBA30 C43A5C54 */  lwc1        $f26, %lo(D_801E5C54_ovl13)($at)
/* 1F39B4 801DBA34 24160001 */  addiu       $s6, $zero, 0x1
glabel L801DBA38_ovl13
/* 1F39B8 801DBA38 2C410008 */  sltiu       $at, $v0, 0x8
glabel L801DBA3C_ovl13
/* 1F39BC 801DBA3C 10200337 */  beqz        $at, L801DC71C_ovl13
/* 1F39C0 801DBA40 00024880 */   sll        $t1, $v0, 2
glabel L801DBA44_ovl13
/* 1F39C4 801DBA44 3C01801E */  lui         $at, %hi(jtbl_801E5C58_ovl13)
/* 1F39C8 801DBA48 00290821 */  addu        $at, $at, $t1
/* 1F39CC 801DBA4C 8C295C58 */  lw          $t1, %lo(jtbl_801E5C58_ovl13)($at)
/* 1F39D0 801DBA50 01200008 */  jr          $t1
/* 1F39D4 801DBA54 00000000 */   nop
glabel L801DBA58_ovl13
/* 1F39D8 801DBA58 8E710000 */  lw          $s1, 0x0($s3)
/* 1F39DC 801DBA5C 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F39E0 801DBA60 3C04801E */  lui         $a0, %hi(D_801DAAB4)
/* 1F39E4 801DBA64 8E2B0000 */  lw          $t3, 0x0($s1)
/* 1F39E8 801DBA68 2484AAB4 */  addiu       $a0, $a0, %lo(D_801DAAB4)
/* 1F39EC 801DBA6C 000B5080 */  sll         $t2, $t3, 2
/* 1F39F0 801DBA70 002A0821 */  addu        $at, $at, $t2
/* 1F39F4 801DBA74 AC208920 */  sw          $zero, %lo(D_800E8920)($at)
/* 1F39F8 801DBA78 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1F39FC 801DBA7C 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F3A00 801DBA80 000C6880 */  sll         $t5, $t4, 2
/* 1F3A04 801DBA84 002D0821 */  addu        $at, $at, $t5
/* 1F3A08 801DBA88 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F3A0C 801DBA8C AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F3A10 801DBA90 8E6F0000 */  lw          $t7, 0x0($s3)
/* 1F3A14 801DBA94 3C19800E */  lui         $t9, %hi(D_800E1B50)
/* 1F3A18 801DBA98 3C0E801E */  lui         $t6, %hi(D_801DADB0)
/* 1F3A1C 801DBA9C 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F3A20 801DBAA0 25CEADB0 */  addiu       $t6, $t6, %lo(D_801DADB0)
/* 1F3A24 801DBAA4 3C01C000 */  lui         $at, (0xC0000000 >> 16)
/* 1F3A28 801DBAA8 00184080 */  sll         $t0, $t8, 2
/* 1F3A2C 801DBAAC 0328C821 */  addu        $t9, $t9, $t0
/* 1F3A30 801DBAB0 8F391B50 */  lw          $t9, %lo(D_800E1B50)($t9)
/* 1F3A34 801DBAB4 44813000 */  mtc1        $at, $f6
/* 1F3A38 801DBAB8 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F3A3C 801DBABC AF2E0098 */  sw          $t6, 0x98($t9)
/* 1F3A40 801DBAC0 8E710000 */  lw          $s1, 0x0($s3)
/* 1F3A44 801DBAC4 3C0D800F */  lui         $t5, %hi(D_800E8920)
/* 1F3A48 801DBAC8 8E290000 */  lw          $t1, 0x0($s1)
/* 1F3A4C 801DBACC 00095880 */  sll         $t3, $t1, 2
/* 1F3A50 801DBAD0 002B0821 */  addu        $at, $at, $t3
/* 1F3A54 801DBAD4 E4263210 */  swc1        $f6, %lo(D_800E3210)($at)
/* 1F3A58 801DBAD8 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F3A5C 801DBADC 000A6080 */  sll         $t4, $t2, 2
/* 1F3A60 801DBAE0 01AC6821 */  addu        $t5, $t5, $t4
/* 1F3A64 801DBAE4 8DAD8920 */  lw          $t5, %lo(D_800E8920)($t5)
/* 1F3A68 801DBAE8 55A0000C */  bnel        $t5, $zero, L801DBB1C_ovl13
/* 1F3A6C 801DBAEC AEB60000 */   sw         $s6, 0x0($s5)
glabel L801DBAF0_ovl13
/* 1F3A70 801DBAF0 0C002DAF */  jal         finish_current_thread
/* 1F3A74 801DBAF4 02C02025 */   move       $a0, $s6
/* 1F3A78 801DBAF8 8E710000 */  lw          $s1, 0x0($s3)
/* 1F3A7C 801DBAFC 3C08800F */  lui         $t0, %hi(D_800E8920)
/* 1F3A80 801DBB00 8E2F0000 */  lw          $t7, 0x0($s1)
/* 1F3A84 801DBB04 000FC080 */  sll         $t8, $t7, 2
/* 1F3A88 801DBB08 01184021 */  addu        $t0, $t0, $t8
/* 1F3A8C 801DBB0C 8D088920 */  lw          $t0, %lo(D_800E8920)($t0)
/* 1F3A90 801DBB10 1100FFF7 */  beqz        $t0, L801DBAF0_ovl13
/* 1F3A94 801DBB14 00000000 */   nop
/* 1F3A98 801DBB18 AEB60000 */  sw          $s6, 0x0($s5)
glabel L801DBB1C_ovl13
/* 1F3A9C 801DBB1C 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1F3AA0 801DBB20 3C03800E */  lui         $v1, %hi(D_800E3750)
/* 1F3AA4 801DBB24 24633750 */  addiu       $v1, $v1, %lo(D_800E3750)
/* 1F3AA8 801DBB28 000EC880 */  sll         $t9, $t6, 2
/* 1F3AAC 801DBB2C 00794821 */  addu        $t1, $v1, $t9
/* 1F3AB0 801DBB30 E53C0000 */  swc1        $f28, 0x0($t1)
/* 1F3AB4 801DBB34 8E300000 */  lw          $s0, 0x0($s1)
/* 1F3AB8 801DBB38 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F3ABC 801DBB3C 00108080 */  sll         $s0, $s0, 2
/* 1F3AC0 801DBB40 00705821 */  addu        $t3, $v1, $s0
/* 1F3AC4 801DBB44 C5680000 */  lwc1        $f8, 0x0($t3)
/* 1F3AC8 801DBB48 00300821 */  addu        $at, $at, $s0
/* 1F3ACC 801DBB4C E4283210 */  swc1        $f8, %lo(D_800E3210)($at)
/* 1F3AD0 801DBB50 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F3AD4 801DBB54 3C01801E */  lui         $at, %hi(D_801E5C78_ovl13)
/* 1F3AD8 801DBB58 C42A5C78 */  lwc1        $f10, %lo(D_801E5C78_ovl13)($at)
/* 1F3ADC 801DBB5C 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1F3AE0 801DBB60 000A6080 */  sll         $t4, $t2, 2
/* 1F3AE4 801DBB64 002C0821 */  addu        $at, $at, $t4
/* 1F3AE8 801DBB68 E42A3C90 */  swc1        $f10, %lo(D_800E3C90)($at)
/* 1F3AEC 801DBB6C 1000FFB2 */  b           L801DBA38_ovl13
/* 1F3AF0 801DBB70 8EA20000 */   lw         $v0, 0x0($s5)
glabel L801DBB74_ovl13
/* 1F3AF4 801DBB74 8E6D0000 */  lw          $t5, 0x0($s3)
/* 1F3AF8 801DBB78 3C04801E */  lui         $a0, %hi(D_801DAAB4)
/* 1F3AFC 801DBB7C 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F3B00 801DBB80 8DAF0000 */  lw          $t7, 0x0($t5)
/* 1F3B04 801DBB84 2484AAB4 */  addiu       $a0, $a0, %lo(D_801DAAB4)
/* 1F3B08 801DBB88 000FC080 */  sll         $t8, $t7, 2
/* 1F3B0C 801DBB8C 00380821 */  addu        $at, $at, $t8
/* 1F3B10 801DBB90 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F3B14 801DBB94 AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F3B18 801DBB98 8E6E0000 */  lw          $t6, 0x0($s3)
/* 1F3B1C 801DBB9C 3C0B800E */  lui         $t3, %hi(D_800E1B50)
/* 1F3B20 801DBBA0 3C08801E */  lui         $t0, %hi(D_801DADD4)
/* 1F3B24 801DBBA4 8DD90000 */  lw          $t9, 0x0($t6)
/* 1F3B28 801DBBA8 2508ADD4 */  addiu       $t0, $t0, %lo(D_801DADD4)
/* 1F3B2C 801DBBAC 00194880 */  sll         $t1, $t9, 2
/* 1F3B30 801DBBB0 01695821 */  addu        $t3, $t3, $t1
/* 1F3B34 801DBBB4 8D6B1B50 */  lw          $t3, %lo(D_800E1B50)($t3)
/* 1F3B38 801DBBB8 AD680098 */  sw          $t0, 0x98($t3)
/* 1F3B3C 801DBBBC 8EAA0000 */  lw          $t2, 0x0($s5)
/* 1F3B40 801DBBC0 56CA0007 */  bnel        $s6, $t2, L801DBBE0_ovl13
/* 1F3B44 801DBBC4 8E6D0000 */   lw         $t5, 0x0($s3)
glabel L801DBBC8_ovl13
/* 1F3B48 801DBBC8 0C002DAF */  jal         finish_current_thread
/* 1F3B4C 801DBBCC 02C02025 */   move       $a0, $s6
/* 1F3B50 801DBBD0 8EAC0000 */  lw          $t4, 0x0($s5)
/* 1F3B54 801DBBD4 12CCFFFC */  beq         $s6, $t4, L801DBBC8_ovl13
/* 1F3B58 801DBBD8 00000000 */   nop
/* 1F3B5C 801DBBDC 8E6D0000 */  lw          $t5, 0x0($s3)
glabel L801DBBE0_ovl13
/* 1F3B60 801DBBE0 3C01801E */  lui         $at, %hi(D_801E5C7C_ovl13)
/* 1F3B64 801DBBE4 C4325C7C */  lwc1        $f18, %lo(D_801E5C7C_ovl13)($at)
/* 1F3B68 801DBBE8 8DAF0000 */  lw          $t7, 0x0($t5)
/* 1F3B6C 801DBBEC 2410000A */  addiu       $s0, $zero, 0xA
/* 1F3B70 801DBBF0 000FC080 */  sll         $t8, $t7, 2
/* 1F3B74 801DBBF4 03D87021 */  addu        $t6, $fp, $t8
/* 1F3B78 801DBBF8 C5D00000 */  lwc1        $f16, 0x0($t6)
/* 1F3B7C 801DBBFC 46128582 */  mul.s       $f22, $f16, $f18
/* 1F3B80 801DBC00 00000000 */  nop
/* 1F3B84 801DBC04 44902000 */  mtc1        $s0, $f4
glabel L801DBC08_ovl13
/* 1F3B88 801DBC08 8E790000 */  lw          $t9, 0x0($s3)
/* 1F3B8C 801DBC0C 02C02025 */  move        $a0, $s6
/* 1F3B90 801DBC10 468021A0 */  cvt.s.w     $f6, $f4
/* 1F3B94 801DBC14 8F290000 */  lw          $t1, 0x0($t9)
/* 1F3B98 801DBC18 00094080 */  sll         $t0, $t1, 2
/* 1F3B9C 801DBC1C 03C85821 */  addu        $t3, $fp, $t0
/* 1F3BA0 801DBC20 46163202 */  mul.s       $f8, $f6, $f22
/* 1F3BA4 801DBC24 0C002DAF */  jal         finish_current_thread
/* 1F3BA8 801DBC28 E5680000 */   swc1       $f8, 0x0($t3)
/* 1F3BAC 801DBC2C 2610FFFF */  addiu       $s0, $s0, -0x1
/* 1F3BB0 801DBC30 5600FFF5 */  bnel        $s0, $zero, L801DBC08_ovl13
/* 1F3BB4 801DBC34 44902000 */   mtc1       $s0, $f4
/* 1F3BB8 801DBC38 8E710000 */  lw          $s1, 0x0($s3)
/* 1F3BBC 801DBC3C 3C01801E */  lui         $at, %hi(D_801E5C80_ovl13)
/* 1F3BC0 801DBC40 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F3BC4 801DBC44 000A6080 */  sll         $t4, $t2, 2
/* 1F3BC8 801DBC48 02EC6821 */  addu        $t5, $s7, $t4
/* 1F3BCC 801DBC4C E5BC0000 */  swc1        $f28, 0x0($t5)
/* 1F3BD0 801DBC50 8E300000 */  lw          $s0, 0x0($s1)
/* 1F3BD4 801DBC54 00108080 */  sll         $s0, $s0, 2
/* 1F3BD8 801DBC58 02F07821 */  addu        $t7, $s7, $s0
/* 1F3BDC 801DBC5C C5EA0000 */  lwc1        $f10, 0x0($t7)
/* 1F3BE0 801DBC60 03D0C021 */  addu        $t8, $fp, $s0
/* 1F3BE4 801DBC64 E70A0000 */  swc1        $f10, 0x0($t8)
/* 1F3BE8 801DBC68 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1F3BEC 801DBC6C C4305C80 */  lwc1        $f16, %lo(D_801E5C80_ovl13)($at)
/* 1F3BF0 801DBC70 3C01800E */  lui         $at, %hi(D_800E6850)
/* 1F3BF4 801DBC74 000EC880 */  sll         $t9, $t6, 2
/* 1F3BF8 801DBC78 00390821 */  addu        $at, $at, $t9
/* 1F3BFC 801DBC7C E4306850 */  swc1        $f16, %lo(D_800E6850)($at)
/* 1F3C00 801DBC80 1000FF6D */  b           L801DBA38_ovl13
/* 1F3C04 801DBC84 8EA20000 */   lw         $v0, 0x0($s5)
glabel L801DBC88_ovl13
/* 1F3C08 801DBC88 8E710000 */  lw          $s1, 0x0($s3)
/* 1F3C0C 801DBC8C 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F3C10 801DBC90 3C0B801E */  lui         $t3, %hi(D_801DAAC8)
/* 1F3C14 801DBC94 8E290000 */  lw          $t1, 0x0($s1)
/* 1F3C18 801DBC98 256BAAC8 */  addiu       $t3, $t3, %lo(D_801DAAC8)
/* 1F3C1C 801DBC9C 3C04801E */  lui         $a0, %hi(D_801DAAC8)
/* 1F3C20 801DBCA0 00094080 */  sll         $t0, $t1, 2
/* 1F3C24 801DBCA4 00280821 */  addu        $at, $at, $t0
/* 1F3C28 801DBCA8 AC208920 */  sw          $zero, %lo(D_800E8920)($at)
/* 1F3C2C 801DBCAC 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F3C30 801DBCB0 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F3C34 801DBCB4 2484AAC8 */  addiu       $a0, $a0, %lo(D_801DAAC8)
/* 1F3C38 801DBCB8 000A6080 */  sll         $t4, $t2, 2
/* 1F3C3C 801DBCBC 002C0821 */  addu        $at, $at, $t4
/* 1F3C40 801DBCC0 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F3C44 801DBCC4 AC2B0490 */   sw         $t3, %lo(D_800E0490)($at)
/* 1F3C48 801DBCC8 8E6F0000 */  lw          $t7, 0x0($s3)
/* 1F3C4C 801DBCCC 3C19800E */  lui         $t9, %hi(D_800E1B50)
/* 1F3C50 801DBCD0 3C0D801E */  lui         $t5, %hi(D_801DAD8C)
/* 1F3C54 801DBCD4 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F3C58 801DBCD8 25ADAD8C */  addiu       $t5, $t5, %lo(D_801DAD8C)
/* 1F3C5C 801DBCDC 3C02800E */  lui         $v0, %hi(D_800E3910)
/* 1F3C60 801DBCE0 00187080 */  sll         $t6, $t8, 2
/* 1F3C64 801DBCE4 032EC821 */  addu        $t9, $t9, $t6
/* 1F3C68 801DBCE8 8F391B50 */  lw          $t9, %lo(D_800E1B50)($t9)
/* 1F3C6C 801DBCEC 24423910 */  addiu       $v0, $v0, %lo(D_800E3910)
/* 1F3C70 801DBCF0 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F3C74 801DBCF4 AF2D0098 */  sw          $t5, 0x98($t9)
/* 1F3C78 801DBCF8 8E710000 */  lw          $s1, 0x0($s3)
/* 1F3C7C 801DBCFC 3C03800E */  lui         $v1, %hi(D_800E3E50)
/* 1F3C80 801DBD00 24633E50 */  addiu       $v1, $v1, %lo(D_800E3E50)
/* 1F3C84 801DBD04 8E290000 */  lw          $t1, 0x0($s1)
/* 1F3C88 801DBD08 24040186 */  addiu       $a0, $zero, 0x186
/* 1F3C8C 801DBD0C 00094080 */  sll         $t0, $t1, 2
/* 1F3C90 801DBD10 00485021 */  addu        $t2, $v0, $t0
/* 1F3C94 801DBD14 E55C0000 */  swc1        $f28, 0x0($t2)
/* 1F3C98 801DBD18 8E300000 */  lw          $s0, 0x0($s1)
/* 1F3C9C 801DBD1C 00108080 */  sll         $s0, $s0, 2
/* 1F3CA0 801DBD20 00505821 */  addu        $t3, $v0, $s0
/* 1F3CA4 801DBD24 C5600000 */  lwc1        $f0, 0x0($t3)
/* 1F3CA8 801DBD28 00300821 */  addu        $at, $at, $s0
/* 1F3CAC 801DBD2C E4203750 */  swc1        $f0, %lo(D_800E3750)($at)
/* 1F3CB0 801DBD30 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1F3CB4 801DBD34 3C01800E */  lui         $at, %hi(D_800E3590)
/* 1F3CB8 801DBD38 000C7880 */  sll         $t7, $t4, 2
/* 1F3CBC 801DBD3C 002F0821 */  addu        $at, $at, $t7
/* 1F3CC0 801DBD40 E4203590 */  swc1        $f0, %lo(D_800E3590)($at)
/* 1F3CC4 801DBD44 8E380000 */  lw          $t8, 0x0($s1)
/* 1F3CC8 801DBD48 3C01800E */  lui         $at, %hi(D_800E33D0)
/* 1F3CCC 801DBD4C 00187080 */  sll         $t6, $t8, 2
/* 1F3CD0 801DBD50 002E0821 */  addu        $at, $at, $t6
/* 1F3CD4 801DBD54 E42033D0 */  swc1        $f0, %lo(D_800E33D0)($at)
/* 1F3CD8 801DBD58 8E2D0000 */  lw          $t5, 0x0($s1)
/* 1F3CDC 801DBD5C 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F3CE0 801DBD60 000DC880 */  sll         $t9, $t5, 2
/* 1F3CE4 801DBD64 00390821 */  addu        $at, $at, $t9
/* 1F3CE8 801DBD68 E4203210 */  swc1        $f0, %lo(D_800E3210)($at)
/* 1F3CEC 801DBD6C 8E290000 */  lw          $t1, 0x0($s1)
/* 1F3CF0 801DBD70 3C01800E */  lui         $at, %hi(D_800E3050)
/* 1F3CF4 801DBD74 00094080 */  sll         $t0, $t1, 2
/* 1F3CF8 801DBD78 00280821 */  addu        $at, $at, $t0
/* 1F3CFC 801DBD7C E4203050 */  swc1        $f0, %lo(D_800E3050)($at)
/* 1F3D00 801DBD80 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F3D04 801DBD84 3C01801E */  lui         $at, %hi(D_801E5C84_ovl13)
/* 1F3D08 801DBD88 C4325C84 */  lwc1        $f18, %lo(D_801E5C84_ovl13)($at)
/* 1F3D0C 801DBD8C 000A5880 */  sll         $t3, $t2, 2
/* 1F3D10 801DBD90 006B6021 */  addu        $t4, $v1, $t3
/* 1F3D14 801DBD94 E5920000 */  swc1        $f18, 0x0($t4)
/* 1F3D18 801DBD98 8E300000 */  lw          $s0, 0x0($s1)
/* 1F3D1C 801DBD9C 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1F3D20 801DBDA0 00108080 */  sll         $s0, $s0, 2
/* 1F3D24 801DBDA4 00707821 */  addu        $t7, $v1, $s0
/* 1F3D28 801DBDA8 C5E20000 */  lwc1        $f2, 0x0($t7)
/* 1F3D2C 801DBDAC 00300821 */  addu        $at, $at, $s0
/* 1F3D30 801DBDB0 E4223C90 */  swc1        $f2, %lo(D_800E3C90)($at)
/* 1F3D34 801DBDB4 8E380000 */  lw          $t8, 0x0($s1)
/* 1F3D38 801DBDB8 3C01800E */  lui         $at, %hi(D_800E3AD0)
/* 1F3D3C 801DBDBC 00187080 */  sll         $t6, $t8, 2
/* 1F3D40 801DBDC0 002E0821 */  addu        $at, $at, $t6
/* 1F3D44 801DBDC4 0C029D9E */  jal         play_sound
/* 1F3D48 801DBDC8 E4223AD0 */   swc1       $f2, %lo(D_800E3AD0)($at)
/* 1F3D4C 801DBDCC 0C03EE45 */  jal         func_800FB914
/* 1F3D50 801DBDD0 24040004 */   addiu      $a0, $zero, 0x4
/* 1F3D54 801DBDD4 0C002DAF */  jal         finish_current_thread
/* 1F3D58 801DBDD8 24040014 */   addiu      $a0, $zero, 0x14
/* 1F3D5C 801DBDDC 3C01800D */  lui         $at, %hi(D_800D7098)
/* 1F3D60 801DBDE0 AC367098 */  sw          $s6, %lo(D_800D7098)($at)
/* 1F3D64 801DBDE4 0C002DAF */  jal         finish_current_thread
/* 1F3D68 801DBDE8 02C02025 */   move       $a0, $s6
/* 1F3D6C 801DBDEC 3C01800D */  lui         $at, %hi(D_800D6B10)
/* 1F3D70 801DBDF0 3C058013 */  lui         $a1, %hi(D_801290D0)
/* 1F3D74 801DBDF4 8CA590D0 */  lw          $a1, %lo(D_801290D0)($a1)
/* 1F3D78 801DBDF8 0C02BB60 */  jal         func_800AED80
/* 1F3D7C 801DBDFC C42C6B10 */   lwc1       $f12, %lo(D_800D6B10)($at)
/* 1F3D80 801DBE00 0C03EE45 */  jal         func_800FB914
/* 1F3D84 801DBE04 24040005 */   addiu      $a0, $zero, 0x5
/* 1F3D88 801DBE08 0C002DAF */  jal         finish_current_thread
/* 1F3D8C 801DBE0C 240400C8 */   addiu      $a0, $zero, 0xC8
/* 1F3D90 801DBE10 8E6D0000 */  lw          $t5, 0x0($s3)
/* 1F3D94 801DBE14 3C04800E */  lui         $a0, %hi(D_800E0D50)
/* 1F3D98 801DBE18 8DB90000 */  lw          $t9, 0x0($t5)
/* 1F3D9C 801DBE1C 00194880 */  sll         $t1, $t9, 2
/* 1F3DA0 801DBE20 00892021 */  addu        $a0, $a0, $t1
/* 1F3DA4 801DBE24 0C06769C */  jal         func_8019DA70_ovl7
/* 1F3DA8 801DBE28 8C840D50 */   lw         $a0, %lo(D_800E0D50)($a0)
/* 1F3DAC 801DBE2C 4600E03C */  c.lt.s      $f28, $f0
/* 1F3DB0 801DBE30 00000000 */  nop
/* 1F3DB4 801DBE34 4502000B */  bc1fl       L801DBE64_ovl13
/* 1F3DB8 801DBE38 8E710000 */   lw         $s1, 0x0($s3)
/* 1F3DBC 801DBE3C 8E710000 */  lw          $s1, 0x0($s3)
/* 1F3DC0 801DBE40 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 1F3DC4 801DBE44 44812000 */  mtc1        $at, $f4
/* 1F3DC8 801DBE48 8E280000 */  lw          $t0, 0x0($s1)
/* 1F3DCC 801DBE4C 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F3DD0 801DBE50 00085080 */  sll         $t2, $t0, 2
/* 1F3DD4 801DBE54 002A0821 */  addu        $at, $at, $t2
/* 1F3DD8 801DBE58 10000009 */  b           L801DBE80_ovl13
/* 1F3DDC 801DBE5C E4246A10 */   swc1       $f4, %lo(D_800E6A10)($at)
/* 1F3DE0 801DBE60 8E710000 */  lw          $s1, 0x0($s3)
glabel L801DBE64_ovl13
/* 1F3DE4 801DBE64 3C01BF80 */  lui         $at, (0xBF800000 >> 16)
/* 1F3DE8 801DBE68 44813000 */  mtc1        $at, $f6
/* 1F3DEC 801DBE6C 8E2B0000 */  lw          $t3, 0x0($s1)
/* 1F3DF0 801DBE70 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F3DF4 801DBE74 000B6080 */  sll         $t4, $t3, 2
/* 1F3DF8 801DBE78 002C0821 */  addu        $at, $at, $t4
/* 1F3DFC 801DBE7C E4266A10 */  swc1        $f6, %lo(D_800E6A10)($at)
glabel L801DBE80_ovl13
/* 1F3E00 801DBE80 8E300000 */  lw          $s0, 0x0($s1)
/* 1F3E04 801DBE84 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F3E08 801DBE88 00108080 */  sll         $s0, $s0, 2
/* 1F3E0C 801DBE8C 00300821 */  addu        $at, $at, $s0
/* 1F3E10 801DBE90 C4286A10 */  lwc1        $f8, %lo(D_800E6A10)($at)
/* 1F3E14 801DBE94 3C01801E */  lui         $at, %hi(D_801E5C88_ovl13)
/* 1F3E18 801DBE98 C42A5C88 */  lwc1        $f10, %lo(D_801E5C88_ovl13)($at)
/* 1F3E1C 801DBE9C 02F07821 */  addu        $t7, $s7, $s0
/* 1F3E20 801DBEA0 3C014000 */  lui         $at, (0x40000000 >> 16)
/* 1F3E24 801DBEA4 460A4402 */  mul.s       $f16, $f8, $f10
/* 1F3E28 801DBEA8 44819000 */  mtc1        $at, $f18
/* 1F3E2C 801DBEAC 3C01800E */  lui         $at, %hi(D_800E6850)
/* 1F3E30 801DBEB0 E5F00000 */  swc1        $f16, 0x0($t7)
/* 1F3E34 801DBEB4 8E380000 */  lw          $t8, 0x0($s1)
/* 1F3E38 801DBEB8 00187080 */  sll         $t6, $t8, 2
/* 1F3E3C 801DBEBC 002E0821 */  addu        $at, $at, $t6
/* 1F3E40 801DBEC0 E4326850 */  swc1        $f18, %lo(D_800E6850)($at)
/* 1F3E44 801DBEC4 8E2D0000 */  lw          $t5, 0x0($s1)
/* 1F3E48 801DBEC8 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F3E4C 801DBECC 000DC880 */  sll         $t9, $t5, 2
/* 1F3E50 801DBED0 00390821 */  addu        $at, $at, $t9
/* 1F3E54 801DBED4 E43C3210 */  swc1        $f28, %lo(D_800E3210)($at)
/* 1F3E58 801DBED8 8E290000 */  lw          $t1, 0x0($s1)
/* 1F3E5C 801DBEDC 3C01801E */  lui         $at, %hi(D_801E5C8C_ovl13)
/* 1F3E60 801DBEE0 C4245C8C */  lwc1        $f4, %lo(D_801E5C8C_ovl13)($at)
/* 1F3E64 801DBEE4 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F3E68 801DBEE8 00094080 */  sll         $t0, $t1, 2
/* 1F3E6C 801DBEEC 00280821 */  addu        $at, $at, $t0
/* 1F3E70 801DBEF0 E4243750 */  swc1        $f4, %lo(D_800E3750)($at)
/* 1F3E74 801DBEF4 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F3E78 801DBEF8 3C014000 */  lui         $at, (0x40000000 >> 16)
/* 1F3E7C 801DBEFC 44813000 */  mtc1        $at, $f6
/* 1F3E80 801DBF00 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1F3E84 801DBF04 000A5880 */  sll         $t3, $t2, 2
/* 1F3E88 801DBF08 002B0821 */  addu        $at, $at, $t3
/* 1F3E8C 801DBF0C E4263C90 */  swc1        $f6, %lo(D_800E3C90)($at)
/* 1F3E90 801DBF10 8E300000 */  lw          $s0, 0x0($s1)
/* 1F3E94 801DBF14 3C01801E */  lui         $at, %hi(D_801E5C90_ovl13)
/* 1F3E98 801DBF18 C4285C90 */  lwc1        $f8, %lo(D_801E5C90_ovl13)($at)
/* 1F3E9C 801DBF1C 00108080 */  sll         $s0, $s0, 2
/* 1F3EA0 801DBF20 02906021 */  addu        $t4, $s4, $s0
/* 1F3EA4 801DBF24 C5800000 */  lwc1        $f0, 0x0($t4)
/* 1F3EA8 801DBF28 4608003C */  c.lt.s      $f0, $f8
/* 1F3EAC 801DBF2C 00000000 */  nop
/* 1F3EB0 801DBF30 4502006F */  bc1fl       L801DC0F0_ovl13
/* 1F3EB4 801DBF34 2419FFFD */   addiu      $t9, $zero, -0x3
/* 1F3EB8 801DBF38 461E003C */  c.lt.s      $f0, $f30
glabel L801DBF3C_ovl13
/* 1F3EBC 801DBF3C 3C013FC0 */  lui         $at, (0x3FC00000 >> 16)
/* 1F3EC0 801DBF40 44815000 */  mtc1        $at, $f10
/* 1F3EC4 801DBF44 3C01800F */  lui         $at, %hi(D_800EA520)
/* 1F3EC8 801DBF48 45000004 */  bc1f        L801DBF5C_ovl13
/* 1F3ECC 801DBF4C 461E0501 */   sub.s      $f20, $f0, $f30
/* 1F3ED0 801DBF50 461E0501 */  sub.s       $f20, $f0, $f30
/* 1F3ED4 801DBF54 10000001 */  b           L801DBF5C_ovl13
/* 1F3ED8 801DBF58 4600A507 */   neg.s      $f20, $f20
glabel L801DBF5C_ovl13
/* 1F3EDC 801DBF5C 460AA03C */  c.lt.s      $f20, $f10
/* 1F3EE0 801DBF60 00300821 */  addu        $at, $at, $s0
/* 1F3EE4 801DBF64 3C04800E */  lui         $a0, %hi(D_800E0D50)
/* 1F3EE8 801DBF68 45000005 */  bc1f        L801DBF80_ovl13
/* 1F3EEC 801DBF6C 00000000 */   nop
/* 1F3EF0 801DBF70 3C01800F */  lui         $at, %hi(D_800EA520)
/* 1F3EF4 801DBF74 00300821 */  addu        $at, $at, $s0
/* 1F3EF8 801DBF78 10000002 */  b           L801DBF84_ovl13
/* 1F3EFC 801DBF7C AC36A520 */   sw         $s6, %lo(D_800EA520)($at)
glabel L801DBF80_ovl13
/* 1F3F00 801DBF80 AC20A520 */  sw          $zero, %lo(D_800EA520)($at)
glabel L801DBF84_ovl13
/* 1F3F04 801DBF84 8E300000 */  lw          $s0, 0x0($s1)
/* 1F3F08 801DBF88 00108080 */  sll         $s0, $s0, 2
/* 1F3F0C 801DBF8C 03D07821 */  addu        $t7, $fp, $s0
/* 1F3F10 801DBF90 C5F00000 */  lwc1        $f16, 0x0($t7)
/* 1F3F14 801DBF94 02F0C021 */  addu        $t8, $s7, $s0
/* 1F3F18 801DBF98 00902021 */  addu        $a0, $a0, $s0
/* 1F3F1C 801DBF9C 4610E032 */  c.eq.s      $f28, $f16
/* 1F3F20 801DBFA0 00000000 */  nop
/* 1F3F24 801DBFA4 45000006 */  bc1f        L801DBFC0_ovl13
/* 1F3F28 801DBFA8 00000000 */   nop
/* 1F3F2C 801DBFAC C7120000 */  lwc1        $f18, 0x0($t8)
/* 1F3F30 801DBFB0 4612E032 */  c.eq.s      $f28, $f18
/* 1F3F34 801DBFB4 00000000 */  nop
/* 1F3F38 801DBFB8 45010038 */  bc1t        L801DC09C_ovl13
/* 1F3F3C 801DBFBC 00000000 */   nop
glabel L801DBFC0_ovl13
/* 1F3F40 801DBFC0 0C06769C */  jal         func_8019DA70_ovl7
/* 1F3F44 801DBFC4 8C840D50 */   lw         $a0, %lo(D_800E0D50)($a0)
/* 1F3F48 801DBFC8 44802000 */  mtc1        $zero, $f4
/* 1F3F4C 801DBFCC 3C014090 */  lui         $at, (0x40900000 >> 16)
/* 1F3F50 801DBFD0 44814000 */  mtc1        $at, $f8
/* 1F3F54 801DBFD4 4604003C */  c.lt.s      $f0, $f4
/* 1F3F58 801DBFD8 46000086 */  mov.s       $f2, $f0
/* 1F3F5C 801DBFDC 3C01801E */  lui         $at, %hi(D_801E5C94_ovl13)
/* 1F3F60 801DBFE0 45000003 */  bc1f        L801DBFF0_ovl13
/* 1F3F64 801DBFE4 00000000 */   nop
/* 1F3F68 801DBFE8 10000001 */  b           L801DBFF0_ovl13
/* 1F3F6C 801DBFEC 46000087 */   neg.s      $f2, $f0
glabel L801DBFF0_ovl13
/* 1F3F70 801DBFF0 8E6E0000 */  lw          $t6, 0x0($s3)
/* 1F3F74 801DBFF4 44803000 */  mtc1        $zero, $f6
/* 1F3F78 801DBFF8 8DD00000 */  lw          $s0, 0x0($t6)
/* 1F3F7C 801DBFFC 00108080 */  sll         $s0, $s0, 2
/* 1F3F80 801DC000 03D06821 */  addu        $t5, $fp, $s0
/* 1F3F84 801DC004 C5A00000 */  lwc1        $f0, 0x0($t5)
/* 1F3F88 801DC008 4606003C */  c.lt.s      $f0, $f6
/* 1F3F8C 801DC00C 46000506 */  mov.s       $f20, $f0
/* 1F3F90 801DC010 45000003 */  bc1f        L801DC020_ovl13
/* 1F3F94 801DC014 00000000 */   nop
/* 1F3F98 801DC018 10000001 */  b           L801DC020_ovl13
/* 1F3F9C 801DC01C 46000507 */   neg.s      $f20, $f0
glabel L801DC020_ovl13
/* 1F3FA0 801DC020 4608A282 */  mul.s       $f10, $f20, $f8
/* 1F3FA4 801DC024 460A103C */  c.lt.s      $f2, $f10
/* 1F3FA8 801DC028 00000000 */  nop
/* 1F3FAC 801DC02C 4500001B */  bc1f        L801DC09C_ovl13
/* 1F3FB0 801DC030 00000000 */   nop
/* 1F3FB4 801DC034 C4305C94 */  lwc1        $f16, %lo(D_801E5C94_ovl13)($at)
/* 1F3FB8 801DC038 02F0C821 */  addu        $t9, $s7, $s0
/* 1F3FBC 801DC03C 2404000A */  addiu       $a0, $zero, 0xA
/* 1F3FC0 801DC040 46100482 */  mul.s       $f18, $f0, $f16
/* 1F3FC4 801DC044 0C002DAF */  jal         finish_current_thread
/* 1F3FC8 801DC048 E7320000 */   swc1       $f18, 0x0($t9)
/* 1F3FCC 801DC04C 8E710000 */  lw          $s1, 0x0($s3)
/* 1F3FD0 801DC050 3C01801E */  lui         $at, %hi(D_801E5C98_ovl13)
/* 1F3FD4 801DC054 8E290000 */  lw          $t1, 0x0($s1)
/* 1F3FD8 801DC058 00094080 */  sll         $t0, $t1, 2
/* 1F3FDC 801DC05C 02E85021 */  addu        $t2, $s7, $t0
/* 1F3FE0 801DC060 E55C0000 */  swc1        $f28, 0x0($t2)
/* 1F3FE4 801DC064 8E300000 */  lw          $s0, 0x0($s1)
/* 1F3FE8 801DC068 00108080 */  sll         $s0, $s0, 2
/* 1F3FEC 801DC06C 02F05821 */  addu        $t3, $s7, $s0
/* 1F3FF0 801DC070 C5640000 */  lwc1        $f4, 0x0($t3)
/* 1F3FF4 801DC074 03D06021 */  addu        $t4, $fp, $s0
/* 1F3FF8 801DC078 E5840000 */  swc1        $f4, 0x0($t4)
/* 1F3FFC 801DC07C 8E2F0000 */  lw          $t7, 0x0($s1)
/* 1F4000 801DC080 C4265C98 */  lwc1        $f6, %lo(D_801E5C98_ovl13)($at)
/* 1F4004 801DC084 3C01800E */  lui         $at, %hi(D_800E6850)
/* 1F4008 801DC088 000FC080 */  sll         $t8, $t7, 2
/* 1F400C 801DC08C 00380821 */  addu        $at, $at, $t8
/* 1F4010 801DC090 E4266850 */  swc1        $f6, %lo(D_800E6850)($at)
/* 1F4014 801DC094 8E300000 */  lw          $s0, 0x0($s1)
/* 1F4018 801DC098 00108080 */  sll         $s0, $s0, 2
glabel L801DC09C_ovl13
/* 1F401C 801DC09C 3C0E800F */  lui         $t6, %hi(D_800EA520)
/* 1F4020 801DC0A0 01D07021 */  addu        $t6, $t6, $s0
/* 1F4024 801DC0A4 8DCEA520 */  lw          $t6, %lo(D_800EA520)($t6)
/* 1F4028 801DC0A8 11C00003 */  beqz        $t6, L801DC0B8_ovl13
/* 1F402C 801DC0AC 00000000 */   nop
/* 1F4030 801DC0B0 0C03EE45 */  jal         func_800FB914
/* 1F4034 801DC0B4 24040004 */   addiu      $a0, $zero, 0x4
glabel L801DC0B8_ovl13
/* 1F4038 801DC0B8 0C002DAF */  jal         finish_current_thread
/* 1F403C 801DC0BC 02C02025 */   move       $a0, $s6
/* 1F4040 801DC0C0 8E710000 */  lw          $s1, 0x0($s3)
/* 1F4044 801DC0C4 3C01801E */  lui         $at, %hi(D_801E5C9C_ovl13)
/* 1F4048 801DC0C8 C4285C9C */  lwc1        $f8, %lo(D_801E5C9C_ovl13)($at)
/* 1F404C 801DC0CC 8E300000 */  lw          $s0, 0x0($s1)
/* 1F4050 801DC0D0 00108080 */  sll         $s0, $s0, 2
/* 1F4054 801DC0D4 02906821 */  addu        $t5, $s4, $s0
/* 1F4058 801DC0D8 C5A00000 */  lwc1        $f0, 0x0($t5)
/* 1F405C 801DC0DC 4608003C */  c.lt.s      $f0, $f8
/* 1F4060 801DC0E0 00000000 */  nop
/* 1F4064 801DC0E4 4503FF95 */  bc1tl       L801DBF3C_ovl13
/* 1F4068 801DC0E8 461E003C */   c.lt.s     $f0, $f30
/* 1F406C 801DC0EC 2419FFFD */  addiu       $t9, $zero, -0x3
glabel L801DC0F0_ovl13
/* 1F4070 801DC0F0 44995000 */  mtc1        $t9, $f10
/* 1F4074 801DC0F4 00002025 */  move        $a0, $zero
/* 1F4078 801DC0F8 0C03EE45 */  jal         func_800FB914
/* 1F407C 801DC0FC 46805520 */   cvt.s.w    $f20, $f10
/* 1F4080 801DC100 0C02CD48 */  jal         func_800B3520
/* 1F4084 801DC104 00000000 */   nop
/* 1F4088 801DC108 24090003 */  addiu       $t1, $zero, 0x3
/* 1F408C 801DC10C AEA90000 */  sw          $t1, 0x0($s5)
/* 1F4090 801DC110 3C088013 */  lui         $t0, %hi(D_801290D0)
/* 1F4094 801DC114 8D0890D0 */  lw          $t0, %lo(D_801290D0)($t0)
/* 1F4098 801DC118 3C0B800E */  lui         $t3, %hi(D_800DFBD0)
/* 1F409C 801DC11C 00085080 */  sll         $t2, $t0, 2
/* 1F40A0 801DC120 016A5821 */  addu        $t3, $t3, $t2
/* 1F40A4 801DC124 8D6BFBD0 */  lw          $t3, %lo(D_800DFBD0)($t3)
/* 1F40A8 801DC128 8D6C0008 */  lw          $t4, 0x8($t3)
/* 1F40AC 801DC12C E5940020 */  swc1        $f20, 0x20($t4)
/* 1F40B0 801DC130 1000FE41 */  b           L801DBA38_ovl13
/* 1F40B4 801DC134 8EA20000 */   lw         $v0, 0x0($s5)
glabel L801DC138_ovl13
/* 1F40B8 801DC138 3C014000 */  lui         $at, (0x40000000 >> 16)
/* 1F40BC 801DC13C 44818000 */  mtc1        $at, $f16
/* 1F40C0 801DC140 3C01800F */  lui         $at, %hi(D_800EC9E4)
/* 1F40C4 801DC144 E430C9E4 */  swc1        $f16, %lo(D_800EC9E4)($at)
/* 1F40C8 801DC148 8E6F0000 */  lw          $t7, 0x0($s3)
/* 1F40CC 801DC14C 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 1F40D0 801DC150 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F40D4 801DC154 00187080 */  sll         $t6, $t8, 2
/* 1F40D8 801DC158 002E0821 */  addu        $at, $at, $t6
/* 1F40DC 801DC15C E430A6E0 */  swc1        $f16, %lo(D_800EA6E0)($at)
/* 1F40E0 801DC160 24010003 */  addiu       $at, $zero, 0x3
/* 1F40E4 801DC164 5441FE35 */  bnel        $v0, $at, L801DBA3C_ovl13
/* 1F40E8 801DC168 2C410008 */   sltiu      $at, $v0, 0x8
glabel L801DC16C_ovl13
/* 1F40EC 801DC16C 0C002DAF */  jal         finish_current_thread
/* 1F40F0 801DC170 02C02025 */   move       $a0, $s6
/* 1F40F4 801DC174 8EA20000 */  lw          $v0, 0x0($s5)
/* 1F40F8 801DC178 24010003 */  addiu       $at, $zero, 0x3
/* 1F40FC 801DC17C 1041FFFB */  beq         $v0, $at, L801DC16C_ovl13
/* 1F4100 801DC180 00000000 */   nop
/* 1F4104 801DC184 1000FE2D */  b           L801DBA3C_ovl13
/* 1F4108 801DC188 2C410008 */   sltiu      $at, $v0, 0x8
glabel L801DC18C_ovl13
/* 1F410C 801DC18C 8E710000 */  lw          $s1, 0x0($s3)
/* 1F4110 801DC190 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 1F4114 801DC194 44819000 */  mtc1        $at, $f18
/* 1F4118 801DC198 8E2D0000 */  lw          $t5, 0x0($s1)
/* 1F411C 801DC19C 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F4120 801DC1A0 3C04801E */  lui         $a0, %hi(D_801DAAC8)
/* 1F4124 801DC1A4 000DC880 */  sll         $t9, $t5, 2
/* 1F4128 801DC1A8 00390821 */  addu        $at, $at, $t9
/* 1F412C 801DC1AC E4326A10 */  swc1        $f18, %lo(D_800E6A10)($at)
/* 1F4130 801DC1B0 8E290000 */  lw          $t1, 0x0($s1)
/* 1F4134 801DC1B4 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F4138 801DC1B8 2484AAC8 */  addiu       $a0, $a0, %lo(D_801DAAC8)
/* 1F413C 801DC1BC 00094080 */  sll         $t0, $t1, 2
/* 1F4140 801DC1C0 00280821 */  addu        $at, $at, $t0
/* 1F4144 801DC1C4 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F4148 801DC1C8 AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F414C 801DC1CC 8E6B0000 */  lw          $t3, 0x0($s3)
/* 1F4150 801DC1D0 3C18800E */  lui         $t8, %hi(D_800E1B50)
/* 1F4154 801DC1D4 3C014000 */  lui         $at, (0x40000000 >> 16)
/* 1F4158 801DC1D8 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F415C 801DC1DC 44812000 */  mtc1        $at, $f4
/* 1F4160 801DC1E0 3C0A801E */  lui         $t2, %hi(D_801DAD8C)
/* 1F4164 801DC1E4 000C7880 */  sll         $t7, $t4, 2
/* 1F4168 801DC1E8 030FC021 */  addu        $t8, $t8, $t7
/* 1F416C 801DC1EC 8F181B50 */  lw          $t8, %lo(D_800E1B50)($t8)
/* 1F4170 801DC1F0 254AAD8C */  addiu       $t2, $t2, %lo(D_801DAD8C)
/* 1F4174 801DC1F4 3C01800F */  lui         $at, %hi(D_800EC9E4)
/* 1F4178 801DC1F8 AF0A0098 */  sw          $t2, 0x98($t8)
/* 1F417C 801DC1FC E424C9E4 */  swc1        $f4, %lo(D_800EC9E4)($at)
/* 1F4180 801DC200 8E6E0000 */  lw          $t6, 0x0($s3)
/* 1F4184 801DC204 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 1F4188 801DC208 8DCD0000 */  lw          $t5, 0x0($t6)
/* 1F418C 801DC20C 000DC880 */  sll         $t9, $t5, 2
/* 1F4190 801DC210 00390821 */  addu        $at, $at, $t9
/* 1F4194 801DC214 E424A6E0 */  swc1        $f4, %lo(D_800EA6E0)($at)
/* 1F4198 801DC218 8EA20000 */  lw          $v0, 0x0($s5)
/* 1F419C 801DC21C 24010004 */  addiu       $at, $zero, 0x4
/* 1F41A0 801DC220 5441FE06 */  bnel        $v0, $at, L801DBA3C_ovl13
/* 1F41A4 801DC224 2C410008 */   sltiu      $at, $v0, 0x8
/* 1F41A8 801DC228 8E690000 */  lw          $t1, 0x0($s3)
glabel L801DC22C_ovl13
/* 1F41AC 801DC22C 3C08800F */  lui         $t0, %hi(D_800E9AA0)
/* 1F41B0 801DC230 3C0B800E */  lui         $t3, %hi(D_800E0D50)
/* 1F41B4 801DC234 8D300000 */  lw          $s0, 0x0($t1)
/* 1F41B8 801DC238 00108080 */  sll         $s0, $s0, 2
/* 1F41BC 801DC23C 01104021 */  addu        $t0, $t0, $s0
/* 1F41C0 801DC240 8D089AA0 */  lw          $t0, %lo(D_800E9AA0)($t0)
/* 1F41C4 801DC244 01705821 */  addu        $t3, $t3, $s0
/* 1F41C8 801DC248 150000B3 */  bnez        $t0, L801DC518_ovl13
/* 1F41CC 801DC24C 00000000 */   nop
/* 1F41D0 801DC250 8D6B0D50 */  lw          $t3, %lo(D_800E0D50)($t3)
/* 1F41D4 801DC254 3C0F800F */  lui         $t7, %hi(D_800EBBE0)
/* 1F41D8 801DC258 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 1F41DC 801DC25C 000B6080 */  sll         $t4, $t3, 2
/* 1F41E0 801DC260 01EC7821 */  addu        $t7, $t7, $t4
/* 1F41E4 801DC264 8DEFBBE0 */  lw          $t7, %lo(D_800EBBE0)($t7)
/* 1F41E8 801DC268 000F5080 */  sll         $t2, $t7, 2
/* 1F41EC 801DC26C 002A0821 */  addu        $at, $at, $t2
/* 1F41F0 801DC270 C4267B20 */  lwc1        $f6, %lo(D_800E7B20)($at)
/* 1F41F4 801DC274 4606E03C */  c.lt.s      $f28, $f6
/* 1F41F8 801DC278 00000000 */  nop
/* 1F41FC 801DC27C 450000A6 */  bc1f        L801DC518_ovl13
/* 1F4200 801DC280 00000000 */   nop
/* 1F4204 801DC284 0C006291 */  jal         random_soft_s32_range
/* 1F4208 801DC288 24040003 */   addiu      $a0, $zero, 0x3
/* 1F420C 801DC28C 00023080 */  sll         $a2, $v0, 2
/* 1F4210 801DC290 3C04801E */  lui         $a0, %hi(D_801E5B14_ovl13)
/* 1F4214 801DC294 3C05801E */  lui         $a1, %hi(D_801E5B24_ovl13)
/* 1F4218 801DC298 00A62821 */  addu        $a1, $a1, $a2
/* 1F421C 801DC29C 00862021 */  addu        $a0, $a0, $a2
/* 1F4220 801DC2A0 00408025 */  move        $s0, $v0
/* 1F4224 801DC2A4 8C845B14 */  lw          $a0, %lo(D_801E5B14_ovl13)($a0)
/* 1F4228 801DC2A8 0C077706 */  jal         func_801DDC18_ovl13
/* 1F422C 801DC2AC 8CA55B24 */   lw         $a1, %lo(D_801E5B24_ovl13)($a1)
/* 1F4230 801DC2B0 2401FFFF */  addiu       $at, $zero, -0x1
/* 1F4234 801DC2B4 10410098 */  beq         $v0, $at, L801DC518_ovl13
/* 1F4238 801DC2B8 00409025 */   move       $s2, $v0
/* 1F423C 801DC2BC 1200000A */  beqz        $s0, L801DC2E8_ovl13
/* 1F4240 801DC2C0 24010002 */   addiu      $at, $zero, 0x2
/* 1F4244 801DC2C4 12160008 */  beq         $s0, $s6, L801DC2E8_ovl13
/* 1F4248 801DC2C8 00023080 */   sll        $a2, $v0, 2
/* 1F424C 801DC2CC 12010006 */  beq         $s0, $at, L801DC2E8_ovl13
/* 1F4250 801DC2D0 3C0F800F */   lui        $t7, %hi(D_800E8AE0)
/* 1F4254 801DC2D4 24010003 */  addiu       $at, $zero, 0x3
/* 1F4258 801DC2D8 1201001C */  beq         $s0, $at, L801DC34C_ovl13
/* 1F425C 801DC2DC 25EF8AE0 */   addiu      $t7, $t7, %lo(D_800E8AE0)
/* 1F4260 801DC2E0 1000008D */  b           L801DC518_ovl13
/* 1F4264 801DC2E4 00000000 */   nop
glabel L801DC2E8_ovl13
/* 1F4268 801DC2E8 0C006291 */  jal         random_soft_s32_range
/* 1F426C 801DC2EC 24040002 */   addiu      $a0, $zero, 0x2
/* 1F4270 801DC2F0 3C18800E */  lui         $t8, %hi(D_800E5F90)
/* 1F4274 801DC2F4 3C0E800E */  lui         $t6, %hi(D_800E6BD0)
/* 1F4278 801DC2F8 00026880 */  sll         $t5, $v0, 2
/* 1F427C 801DC2FC 3C06801E */  lui         $a2, %hi(D_801E5B34_ovl13)
/* 1F4280 801DC300 00CD3021 */  addu        $a2, $a2, $t5
/* 1F4284 801DC304 25CE6BD0 */  addiu       $t6, $t6, %lo(D_800E6BD0)
/* 1F4288 801DC308 27185F90 */  addiu       $t8, $t8, %lo(D_800E5F90)
/* 1F428C 801DC30C 00128080 */  sll         $s0, $s2, 2
/* 1F4290 801DC310 02182021 */  addu        $a0, $s0, $t8
/* 1F4294 801DC314 020E2821 */  addu        $a1, $s0, $t6
/* 1F4298 801DC318 0C03E65D */  jal         func_800F9974
/* 1F429C 801DC31C 8CC65B34 */   lw         $a2, %lo(D_801E5B34_ovl13)($a2)
/* 1F42A0 801DC320 8E790000 */  lw          $t9, 0x0($s3)
/* 1F42A4 801DC324 3C0143A0 */  lui         $at, (0x43A00000 >> 16)
/* 1F42A8 801DC328 44815000 */  mtc1        $at, $f10
/* 1F42AC 801DC32C 8F290000 */  lw          $t1, 0x0($t9)
/* 1F42B0 801DC330 02906021 */  addu        $t4, $s4, $s0
/* 1F42B4 801DC334 00094080 */  sll         $t0, $t1, 2
/* 1F42B8 801DC338 02885821 */  addu        $t3, $s4, $t0
/* 1F42BC 801DC33C C5680000 */  lwc1        $f8, 0x0($t3)
/* 1F42C0 801DC340 460A4400 */  add.s       $f16, $f8, $f10
/* 1F42C4 801DC344 10000074 */  b           L801DC518_ovl13
/* 1F42C8 801DC348 E5900000 */   swc1       $f16, 0x0($t4)
glabel L801DC34C_ovl13
/* 1F42CC 801DC34C 3C01800F */  lui         $at, %hi(D_800E8E60)
/* 1F42D0 801DC350 00260821 */  addu        $at, $at, $a2
/* 1F42D4 801DC354 AC368E60 */  sw          $s6, %lo(D_800E8E60)($at)
/* 1F42D8 801DC358 00CF2021 */  addu        $a0, $a2, $t7
/* 1F42DC 801DC35C 8C8A0000 */  lw          $t2, 0x0($a0)
/* 1F42E0 801DC360 8E710000 */  lw          $s1, 0x0($s3)
/* 1F42E4 801DC364 3C05800E */  lui         $a1, %hi(D_800E17D0)
/* 1F42E8 801DC368 35580001 */  ori         $t8, $t2, 0x1
/* 1F42EC 801DC36C AC980000 */  sw          $t8, 0x0($a0)
/* 1F42F0 801DC370 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1F42F4 801DC374 24A517D0 */  addiu       $a1, $a1, %lo(D_800E17D0)
/* 1F42F8 801DC378 00A61821 */  addu        $v1, $a1, $a2
/* 1F42FC 801DC37C 000E6880 */  sll         $t5, $t6, 2
/* 1F4300 801DC380 00ADC821 */  addu        $t9, $a1, $t5
/* 1F4304 801DC384 C7320000 */  lwc1        $f18, 0x0($t9)
/* 1F4308 801DC388 E4720000 */  swc1        $f18, 0x0($v1)
/* 1F430C 801DC38C C4600000 */  lwc1        $f0, 0x0($v1)
/* 1F4310 801DC390 4600D03E */  c.le.s      $f26, $f0
/* 1F4314 801DC394 00000000 */  nop
/* 1F4318 801DC398 45020009 */  bc1fl       L801DC3C0_ovl13
/* 1F431C 801DC39C 461C003C */   c.lt.s     $f0, $f28
/* 1F4320 801DC3A0 461A0101 */  sub.s       $f4, $f0, $f26
glabel L801DC3A4_ovl13
/* 1F4324 801DC3A4 E4640000 */  swc1        $f4, 0x0($v1)
/* 1F4328 801DC3A8 C4600000 */  lwc1        $f0, 0x0($v1)
/* 1F432C 801DC3AC 4600D03E */  c.le.s      $f26, $f0
/* 1F4330 801DC3B0 00000000 */  nop
/* 1F4334 801DC3B4 4503FFFB */  bc1tl       L801DC3A4_ovl13
/* 1F4338 801DC3B8 461A0101 */   sub.s      $f4, $f0, $f26
/* 1F433C 801DC3BC 461C003C */  c.lt.s      $f0, $f28
glabel L801DC3C0_ovl13
/* 1F4340 801DC3C0 00000000 */  nop
/* 1F4344 801DC3C4 45020009 */  bc1fl       L801DC3EC_ovl13
/* 1F4348 801DC3C8 8E290000 */   lw         $t1, 0x0($s1)
/* 1F434C 801DC3CC 461A0180 */  add.s       $f6, $f0, $f26
glabel L801DC3D0_ovl13
/* 1F4350 801DC3D0 E4660000 */  swc1        $f6, 0x0($v1)
/* 1F4354 801DC3D4 C4600000 */  lwc1        $f0, 0x0($v1)
/* 1F4358 801DC3D8 461C003C */  c.lt.s      $f0, $f28
/* 1F435C 801DC3DC 00000000 */  nop
/* 1F4360 801DC3E0 4503FFFB */  bc1tl       L801DC3D0_ovl13
/* 1F4364 801DC3E4 461A0180 */   add.s      $f6, $f0, $f26
/* 1F4368 801DC3E8 8E290000 */  lw          $t1, 0x0($s1)
glabel L801DC3EC_ovl13
/* 1F436C 801DC3EC 3C01800E */  lui         $at, %hi(D_800E17D0)
/* 1F4370 801DC3F0 24040007 */  addiu       $a0, $zero, 0x7
/* 1F4374 801DC3F4 00094080 */  sll         $t0, $t1, 2
/* 1F4378 801DC3F8 00280821 */  addu        $at, $at, $t0
/* 1F437C 801DC3FC C42817D0 */  lwc1        $f8, %lo(D_800E17D0)($at)
/* 1F4380 801DC400 3C01801E */  lui         $at, %hi(D_801E5CA0_ovl13)
/* 1F4384 801DC404 C42A5CA0 */  lwc1        $f10, %lo(D_801E5CA0_ovl13)($at)
/* 1F4388 801DC408 0C006291 */  jal         random_soft_s32_range
/* 1F438C 801DC40C 460A4580 */   add.s      $f22, $f8, $f10
/* 1F4390 801DC410 00025880 */  sll         $t3, $v0, 2
/* 1F4394 801DC414 3C01801E */  lui         $at, %hi(D_801E5B3C_ovl13)
/* 1F4398 801DC418 002B0821 */  addu        $at, $at, $t3
/* 1F439C 801DC41C C4305B3C */  lwc1        $f16, %lo(D_801E5B3C_ovl13)($at)
/* 1F43A0 801DC420 4610B580 */  add.s       $f22, $f22, $f16
/* 1F43A4 801DC424 0C00D604 */  jal         cosf
/* 1F43A8 801DC428 4600B306 */   mov.s      $f12, $f22
/* 1F43AC 801DC42C 461C0032 */  c.eq.s      $f0, $f28
/* 1F43B0 801DC430 3C01801E */  lui         $at, %hi(D_801E5CA4_ovl13)
/* 1F43B4 801DC434 45000003 */  bc1f        L801DC444_ovl13
/* 1F43B8 801DC438 00000000 */   nop
/* 1F43BC 801DC43C 10000004 */  b           L801DC450_ovl13
/* 1F43C0 801DC440 C4345CA4 */   lwc1       $f20, %lo(D_801E5CA4_ovl13)($at)
glabel L801DC444_ovl13
/* 1F43C4 801DC444 0C00D604 */  jal         cosf
/* 1F43C8 801DC448 4600B306 */   mov.s      $f12, $f22
/* 1F43CC 801DC44C 46000506 */  mov.s       $f20, $f0
glabel L801DC450_ovl13
/* 1F43D0 801DC450 0C00B5B8 */  jal         sinf
/* 1F43D4 801DC454 4600B306 */   mov.s      $f12, $f22
/* 1F43D8 801DC458 3C01C3C8 */  lui         $at, (0xC3C80000 >> 16)
/* 1F43DC 801DC45C 44819000 */  mtc1        $at, $f18
/* 1F43E0 801DC460 8E6C0000 */  lw          $t4, 0x0($s3)
/* 1F43E4 801DC464 3C02800E */  lui         $v0, %hi(gEntitiesNextPosXArray)
/* 1F43E8 801DC468 46149603 */  div.s       $f24, $f18, $f20
/* 1F43EC 801DC46C 8D8F0000 */  lw          $t7, 0x0($t4)
/* 1F43F0 801DC470 244225D0 */  addiu       $v0, $v0, %lo(gEntitiesNextPosXArray)
/* 1F43F4 801DC474 00128080 */  sll         $s0, $s2, 2
/* 1F43F8 801DC478 000F5080 */  sll         $t2, $t7, 2
/* 1F43FC 801DC47C 004AC021 */  addu        $t8, $v0, $t2
/* 1F4400 801DC480 C7060000 */  lwc1        $f6, 0x0($t8)
/* 1F4404 801DC484 00507021 */  addu        $t6, $v0, $s0
/* 1F4408 801DC488 4600B306 */  mov.s       $f12, $f22
/* 1F440C 801DC48C 46180102 */  mul.s       $f4, $f0, $f24
/* 1F4410 801DC490 46062200 */  add.s       $f8, $f4, $f6
/* 1F4414 801DC494 0C00D604 */  jal         cosf
/* 1F4418 801DC498 E5C80000 */   swc1       $f8, 0x0($t6)
/* 1F441C 801DC49C 8E710000 */  lw          $s1, 0x0($s3)
/* 1F4420 801DC4A0 46180282 */  mul.s       $f10, $f0, $f24
/* 1F4424 801DC4A4 3C02800E */  lui         $v0, %hi(gEntitiesNextPosZArray)
/* 1F4428 801DC4A8 8E2D0000 */  lw          $t5, 0x0($s1)
/* 1F442C 801DC4AC 24422950 */  addiu       $v0, $v0, %lo(gEntitiesNextPosZArray)
/* 1F4430 801DC4B0 00504021 */  addu        $t0, $v0, $s0
/* 1F4434 801DC4B4 000DC880 */  sll         $t9, $t5, 2
/* 1F4438 801DC4B8 00594821 */  addu        $t1, $v0, $t9
/* 1F443C 801DC4BC C5300000 */  lwc1        $f16, 0x0($t1)
/* 1F4440 801DC4C0 3C0143A0 */  lui         $at, (0x43A00000 >> 16)
/* 1F4444 801DC4C4 44813000 */  mtc1        $at, $f6
/* 1F4448 801DC4C8 46105480 */  add.s       $f18, $f10, $f16
/* 1F444C 801DC4CC 02905021 */  addu        $t2, $s4, $s0
/* 1F4450 801DC4D0 3C01800E */  lui         $at, %hi(D_800E17D0)
/* 1F4454 801DC4D4 E5120000 */  swc1        $f18, 0x0($t0)
/* 1F4458 801DC4D8 8E2B0000 */  lw          $t3, 0x0($s1)
/* 1F445C 801DC4DC 000B6080 */  sll         $t4, $t3, 2
/* 1F4460 801DC4E0 028C7821 */  addu        $t7, $s4, $t4
/* 1F4464 801DC4E4 C5E40000 */  lwc1        $f4, 0x0($t7)
/* 1F4468 801DC4E8 46062200 */  add.s       $f8, $f4, $f6
/* 1F446C 801DC4EC E5480000 */  swc1        $f8, 0x0($t2)
/* 1F4470 801DC4F0 8E380000 */  lw          $t8, 0x0($s1)
/* 1F4474 801DC4F4 00187080 */  sll         $t6, $t8, 2
/* 1F4478 801DC4F8 002E0821 */  addu        $at, $at, $t6
/* 1F447C 801DC4FC C42A17D0 */  lwc1        $f10, %lo(D_800E17D0)($at)
/* 1F4480 801DC500 3C01801E */  lui         $at, %hi(D_801E5CA8_ovl13)
/* 1F4484 801DC504 C4305CA8 */  lwc1        $f16, %lo(D_801E5CA8_ovl13)($at)
/* 1F4488 801DC508 3C01800E */  lui         $at, %hi(gEntitiesAngleYArray)
/* 1F448C 801DC50C 00300821 */  addu        $at, $at, $s0
/* 1F4490 801DC510 46105481 */  sub.s       $f18, $f10, $f16
/* 1F4494 801DC514 E43241D0 */  swc1        $f18, %lo(gEntitiesAngleYArray)($at)
glabel L801DC518_ovl13
/* 1F4498 801DC518 0C077233 */  jal         func_801DC8CC_ovl13
/* 1F449C 801DC51C 8FA40070 */   lw         $a0, 0x70($sp)
/* 1F44A0 801DC520 0C002DAF */  jal         finish_current_thread
/* 1F44A4 801DC524 02C02025 */   move       $a0, $s6
/* 1F44A8 801DC528 8EA20000 */  lw          $v0, 0x0($s5)
/* 1F44AC 801DC52C 24010004 */  addiu       $at, $zero, 0x4
/* 1F44B0 801DC530 5041FF3E */  beql        $v0, $at, L801DC22C_ovl13
/* 1F44B4 801DC534 8E690000 */   lw         $t1, 0x0($s3)
/* 1F44B8 801DC538 1000FD40 */  b           L801DBA3C_ovl13
/* 1F44BC 801DC53C 2C410008 */   sltiu      $at, $v0, 0x8
glabel L801DC540_ovl13
/* 1F44C0 801DC540 24010005 */  addiu       $at, $zero, 0x5
/* 1F44C4 801DC544 5441FD3D */  bnel        $v0, $at, L801DBA3C_ovl13
/* 1F44C8 801DC548 2C410008 */   sltiu      $at, $v0, 0x8
glabel L801DC54C_ovl13
/* 1F44CC 801DC54C 0C077233 */  jal         func_801DC8CC_ovl13
/* 1F44D0 801DC550 8FA40070 */   lw         $a0, 0x70($sp)
/* 1F44D4 801DC554 0C002DAF */  jal         finish_current_thread
/* 1F44D8 801DC558 02C02025 */   move       $a0, $s6
/* 1F44DC 801DC55C 8EA20000 */  lw          $v0, 0x0($s5)
/* 1F44E0 801DC560 24010005 */  addiu       $at, $zero, 0x5
/* 1F44E4 801DC564 1041FFF9 */  beq         $v0, $at, L801DC54C_ovl13
/* 1F44E8 801DC568 00000000 */   nop
/* 1F44EC 801DC56C 1000FD33 */  b           L801DBA3C_ovl13
/* 1F44F0 801DC570 2C410008 */   sltiu      $at, $v0, 0x8
glabel L801DC574_ovl13
/* 1F44F4 801DC574 8E6D0000 */  lw          $t5, 0x0($s3)
/* 1F44F8 801DC578 3C04801E */  lui         $a0, %hi(D_801DAAC8)
/* 1F44FC 801DC57C 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F4500 801DC580 8DB90000 */  lw          $t9, 0x0($t5)
/* 1F4504 801DC584 2484AAC8 */  addiu       $a0, $a0, %lo(D_801DAAC8)
/* 1F4508 801DC588 00194880 */  sll         $t1, $t9, 2
/* 1F450C 801DC58C 00290821 */  addu        $at, $at, $t1
/* 1F4510 801DC590 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F4514 801DC594 AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F4518 801DC598 8E6B0000 */  lw          $t3, 0x0($s3)
/* 1F451C 801DC59C 3C0A800E */  lui         $t2, %hi(D_800E1B50)
/* 1F4520 801DC5A0 3C08801E */  lui         $t0, %hi(D_801DAD8C)
/* 1F4524 801DC5A4 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F4528 801DC5A8 2508AD8C */  addiu       $t0, $t0, %lo(D_801DAD8C)
/* 1F452C 801DC5AC 000C7880 */  sll         $t7, $t4, 2
/* 1F4530 801DC5B0 014F5021 */  addu        $t2, $t2, $t7
/* 1F4534 801DC5B4 8D4A1B50 */  lw          $t2, %lo(D_800E1B50)($t2)
/* 1F4538 801DC5B8 0C02CCFD */  jal         func_800B33F4
/* 1F453C 801DC5BC AD480098 */   sw         $t0, 0x98($t2)
/* 1F4540 801DC5C0 8E710000 */  lw          $s1, 0x0($s3)
/* 1F4544 801DC5C4 3C02800F */  lui         $v0, %hi(D_800EC9E4)
/* 1F4548 801DC5C8 2442C9E4 */  addiu       $v0, $v0, %lo(D_800EC9E4)
/* 1F454C 801DC5CC E45C0000 */  swc1        $f28, 0x0($v0)
/* 1F4550 801DC5D0 8E380000 */  lw          $t8, 0x0($s1)
/* 1F4554 801DC5D4 C4440000 */  lwc1        $f4, 0x0($v0)
/* 1F4558 801DC5D8 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 1F455C 801DC5DC 00187080 */  sll         $t6, $t8, 2
/* 1F4560 801DC5E0 002E0821 */  addu        $at, $at, $t6
/* 1F4564 801DC5E4 E424A6E0 */  swc1        $f4, %lo(D_800EA6E0)($at)
/* 1F4568 801DC5E8 8E2D0000 */  lw          $t5, 0x0($s1)
/* 1F456C 801DC5EC 3C014000 */  lui         $at, (0x40000000 >> 16)
/* 1F4570 801DC5F0 44813000 */  mtc1        $at, $f6
/* 1F4574 801DC5F4 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F4578 801DC5F8 000DC880 */  sll         $t9, $t5, 2
/* 1F457C 801DC5FC 00390821 */  addu        $at, $at, $t9
/* 1F4580 801DC600 E4263210 */  swc1        $f6, %lo(D_800E3210)($at)
/* 1F4584 801DC604 8E300000 */  lw          $s0, 0x0($s1)
/* 1F4588 801DC608 3C01800D */  lui         $at, %hi(D_800D70D8)
/* 1F458C 801DC60C C42A70D8 */  lwc1        $f10, %lo(D_800D70D8)($at)
/* 1F4590 801DC610 00108080 */  sll         $s0, $s0, 2
/* 1F4594 801DC614 02904821 */  addu        $t1, $s4, $s0
/* 1F4598 801DC618 C5280000 */  lwc1        $f8, 0x0($t1)
/* 1F459C 801DC61C 460A403C */  c.lt.s      $f8, $f10
/* 1F45A0 801DC620 00000000 */  nop
/* 1F45A4 801DC624 4500000E */  bc1f        L801DC660_ovl13
/* 1F45A8 801DC628 00000000 */   nop
glabel L801DC62C_ovl13
/* 1F45AC 801DC62C 0C002DAF */  jal         finish_current_thread
/* 1F45B0 801DC630 02C02025 */   move       $a0, $s6
/* 1F45B4 801DC634 8E6B0000 */  lw          $t3, 0x0($s3)
/* 1F45B8 801DC638 3C01800D */  lui         $at, %hi(D_800D70D8)
/* 1F45BC 801DC63C C43270D8 */  lwc1        $f18, %lo(D_800D70D8)($at)
/* 1F45C0 801DC640 8D700000 */  lw          $s0, 0x0($t3)
/* 1F45C4 801DC644 00108080 */  sll         $s0, $s0, 2
/* 1F45C8 801DC648 02906021 */  addu        $t4, $s4, $s0
/* 1F45CC 801DC64C C5900000 */  lwc1        $f16, 0x0($t4)
/* 1F45D0 801DC650 4612803C */  c.lt.s      $f16, $f18
/* 1F45D4 801DC654 00000000 */  nop
/* 1F45D8 801DC658 4501FFF4 */  bc1t        L801DC62C_ovl13
/* 1F45DC 801DC65C 00000000 */   nop
glabel L801DC660_ovl13
/* 1F45E0 801DC660 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F45E4 801DC664 00300821 */  addu        $at, $at, $s0
/* 1F45E8 801DC668 C4243210 */  lwc1        $f4, %lo(D_800E3210)($at)
/* 1F45EC 801DC66C 3C01801E */  lui         $at, %hi(D_801E5CAC_ovl13)
/* 1F45F0 801DC670 C4265CAC */  lwc1        $f6, %lo(D_801E5CAC_ovl13)($at)
/* 1F45F4 801DC674 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F45F8 801DC678 00300821 */  addu        $at, $at, $s0
/* 1F45FC 801DC67C 46062202 */  mul.s       $f8, $f4, $f6
/* 1F4600 801DC680 2404000A */  addiu       $a0, $zero, 0xA
/* 1F4604 801DC684 0C002DAF */  jal         finish_current_thread
/* 1F4608 801DC688 E4283750 */   swc1       $f8, %lo(D_800E3750)($at)
/* 1F460C 801DC68C 8E710000 */  lw          $s1, 0x0($s3)
/* 1F4610 801DC690 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F4614 801DC694 24020007 */  addiu       $v0, $zero, 0x7
/* 1F4618 801DC698 8E2F0000 */  lw          $t7, 0x0($s1)
/* 1F461C 801DC69C 000F4080 */  sll         $t0, $t7, 2
/* 1F4620 801DC6A0 00280821 */  addu        $at, $at, $t0
/* 1F4624 801DC6A4 E43C3750 */  swc1        $f28, %lo(D_800E3750)($at)
/* 1F4628 801DC6A8 8E300000 */  lw          $s0, 0x0($s1)
/* 1F462C 801DC6AC 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F4630 801DC6B0 00108080 */  sll         $s0, $s0, 2
/* 1F4634 801DC6B4 00300821 */  addu        $at, $at, $s0
/* 1F4638 801DC6B8 C42A3750 */  lwc1        $f10, %lo(D_800E3750)($at)
/* 1F463C 801DC6BC 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F4640 801DC6C0 00300821 */  addu        $at, $at, $s0
/* 1F4644 801DC6C4 E42A3210 */  swc1        $f10, %lo(D_800E3210)($at)
/* 1F4648 801DC6C8 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F464C 801DC6CC 3C01801E */  lui         $at, %hi(D_801E5CB0_ovl13)
/* 1F4650 801DC6D0 C4305CB0 */  lwc1        $f16, %lo(D_801E5CB0_ovl13)($at)
/* 1F4654 801DC6D4 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1F4658 801DC6D8 000AC080 */  sll         $t8, $t2, 2
/* 1F465C 801DC6DC 00380821 */  addu        $at, $at, $t8
/* 1F4660 801DC6E0 E4303C90 */  swc1        $f16, %lo(D_800E3C90)($at)
/* 1F4664 801DC6E4 1000FCD4 */  b           L801DBA38_ovl13
/* 1F4668 801DC6E8 AEA20000 */   sw         $v0, 0x0($s5)
glabel L801DC6EC_ovl13
/* 1F466C 801DC6EC 24010007 */  addiu       $at, $zero, 0x7
/* 1F4670 801DC6F0 5441FCD2 */  bnel        $v0, $at, L801DBA3C_ovl13
/* 1F4674 801DC6F4 2C410008 */   sltiu      $at, $v0, 0x8
glabel L801DC6F8_ovl13
/* 1F4678 801DC6F8 0C002DAF */  jal         finish_current_thread
/* 1F467C 801DC6FC 02C02025 */   move       $a0, $s6
/* 1F4680 801DC700 8EA20000 */  lw          $v0, 0x0($s5)
/* 1F4684 801DC704 24010007 */  addiu       $at, $zero, 0x7
/* 1F4688 801DC708 1041FFFB */  beq         $v0, $at, L801DC6F8_ovl13
/* 1F468C 801DC70C 00000000 */   nop
/* 1F4690 801DC710 2C410008 */  sltiu       $at, $v0, 0x8
/* 1F4694 801DC714 5420FCCB */  bnel        $at, $zero, L801DBA44_ovl13
/* 1F4698 801DC718 00024880 */   sll        $t1, $v0, 2
glabel L801DC71C_ovl13
/* 1F469C 801DC71C 0C02BE85 */  jal         func_800AFA14
/* 1F46A0 801DC720 00000000 */   nop
/* 1F46A4 801DC724 1000FCC4 */  b           L801DBA38_ovl13
/* 1F46A8 801DC728 8EA20000 */   lw         $v0, 0x0($s5)
/* 1F46AC 801DC72C 00000000 */  nop
/* 1F46B0 801DC730 00000000 */  nop
/* 1F46B4 801DC734 00000000 */  nop
/* 1F46B8 801DC738 00000000 */  nop
/* 1F46BC 801DC73C 00000000 */  nop
/* 1F46C0 801DC740 8FBF006C */  lw          $ra, 0x6C($sp)
/* 1F46C4 801DC744 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 1F46C8 801DC748 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 1F46CC 801DC74C D7B80028 */  ldc1        $f24, 0x28($sp)
/* 1F46D0 801DC750 D7BA0030 */  ldc1        $f26, 0x30($sp)
/* 1F46D4 801DC754 D7BC0038 */  ldc1        $f28, 0x38($sp)
/* 1F46D8 801DC758 D7BE0040 */  ldc1        $f30, 0x40($sp)
/* 1F46DC 801DC75C 8FB00048 */  lw          $s0, 0x48($sp)
/* 1F46E0 801DC760 8FB1004C */  lw          $s1, 0x4C($sp)
/* 1F46E4 801DC764 8FB20050 */  lw          $s2, 0x50($sp)
/* 1F46E8 801DC768 8FB30054 */  lw          $s3, 0x54($sp)
/* 1F46EC 801DC76C 8FB40058 */  lw          $s4, 0x58($sp)
/* 1F46F0 801DC770 8FB5005C */  lw          $s5, 0x5C($sp)
/* 1F46F4 801DC774 8FB60060 */  lw          $s6, 0x60($sp)
/* 1F46F8 801DC778 8FB70064 */  lw          $s7, 0x64($sp)
/* 1F46FC 801DC77C 8FBE0068 */  lw          $fp, 0x68($sp)
/* 1F4700 801DC780 03E00008 */  jr          $ra
/* 1F4704 801DC784 27BD0070 */   addiu      $sp, $sp, 0x70
.type func_801DB870_ovl13, @function

.size func_801DB870_ovl13, . - func_801DB870_ovl13
.section .late_rodata
glabel D_801E5C50_ovl13
/* 1FDBD0 801E5C50 */ .word 0x4415C000

glabel D_801E5C54_ovl13
/* 1FDBD4 801E5C54 */ .word 0x40C90FDB

glabel jtbl_801E5C58_ovl13
/* 1FDBD8 801E5C58 */ .word L801DBA58_ovl13
/* 1FDBDC 801E5C5C */ .word L801DBB74_ovl13
/* 1FDBE0 801E5C60 */ .word L801DBC88_ovl13
/* 1FDBE4 801E5C64 */ .word L801DC138_ovl13
/* 1FDBE8 801E5C68 */ .word L801DC18C_ovl13
/* 1FDBEC 801E5C6C */ .word L801DC540_ovl13
/* 1FDBF0 801E5C70 */ .word L801DC574_ovl13
/* 1FDBF4 801E5C74 */ .word L801DC6EC_ovl13

glabel D_801E5C78_ovl13
/* 1FDBF8 801E5C78 */ .word 0x477FFF00

glabel D_801E5C7C_ovl13
/* 1FDBFC 801E5C7C */ .word 0x3DCCCCCD

glabel D_801E5C80_ovl13
/* 1FDC00 801E5C80 */ .word 0x477FFF00

glabel D_801E5C84_ovl13
/* 1FDC04 801E5C84 */ .word 0x477FFF00

glabel D_801E5C88_ovl13
/* 1FDC08 801E5C88 */ .word 0x3DCCCCCD

glabel D_801E5C8C_ovl13
/* 1FDC0C 801E5C8C */ .word 0x3DCCCCCD

glabel D_801E5C90_ovl13
/* 1FDC10 801E5C90 */ .word 0x4495C000

glabel D_801E5C94_ovl13
/* 1FDC14 801E5C94 */ .word 0xBDCCCCCD

glabel D_801E5C98_ovl13
/* 1FDC18 801E5C98 */ .word 0x477FFF00

glabel D_801E5C9C_ovl13
/* 1FDC1C 801E5C9C */ .word 0x4495C000

glabel D_801E5CA0_ovl13
/* 1FDC20 801E5CA0 */ .word 0x3FC90FDB

glabel D_801E5CA4_ovl13
/* 1FDC24 801E5CA4 */ .word 0x3727C5AC

glabel D_801E5CA8_ovl13
/* 1FDC28 801E5CA8 */ .word 0x3FC90FDB

glabel D_801E5CAC_ovl13
/* 1FDC2C 801E5CAC */ .word 0xBDCCCCCD

glabel D_801E5CB0_ovl13
/* 1FDC30 801E5CB0 */ .word 0x477FFF00

