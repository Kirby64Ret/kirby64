glabel func_801D47D4_ovl9
/* 182824 801D47D4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 182828 801D47D8 AFBF006C */  sw         $ra, 0x6C($sp)
/* 18282C 801D47DC AFBE0068 */  sw         $fp, 0x68($sp)
/* 182830 801D47E0 AFB70064 */  sw         $s7, 0x64($sp)
/* 182834 801D47E4 AFB60060 */  sw         $s6, 0x60($sp)
/* 182838 801D47E8 AFB5005C */  sw         $s5, 0x5C($sp)
/* 18283C 801D47EC AFB40058 */  sw         $s4, 0x58($sp)
/* 182840 801D47F0 AFB30054 */  sw         $s3, 0x54($sp)
/* 182844 801D47F4 AFB20050 */  sw         $s2, 0x50($sp)
/* 182848 801D47F8 AFB1004C */  sw         $s1, 0x4C($sp)
/* 18284C 801D47FC AFB00048 */  sw         $s0, 0x48($sp)
/* 182850 801D4800 F7BE0040 */  sdc1       $f30, 0x40($sp)
/* 182854 801D4804 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* 182858 801D4808 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 18285C 801D480C F7B80028 */  sdc1       $f24, 0x28($sp)
/* 182860 801D4810 F7B60020 */  sdc1       $f22, 0x20($sp)
.L801D4814_ovl8:
/* 182864 801D4814 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 182868 801D4818 0C068CA0 */  jal        func_801A3280_ovl7
/* 18286C 801D481C AFA40070 */   sw        $a0, 0x70($sp)
/* 182870 801D4820 3C138005 */  lui        $s3, %hi(D_8004A7C4)
/* 182874 801D4824 2673A7C4 */  addiu      $s3, $s3, %lo(D_8004A7C4)
/* 182878 801D4828 8E6F0000 */  lw         $t7, 0x0($s3)
/* 18287C 801D482C 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 182880 801D4830 240E0002 */  addiu      $t6, $zero, 0x2
/* 182884 801D4834 8DF80000 */  lw         $t8, 0x0($t7)
/* 182888 801D4838 3C040001 */  lui        $a0, (0x1001F >> 16)
/* 18288C 801D483C 3484001F */  ori        $a0, $a0, (0x1001F & 0xFFFF)
/* 182890 801D4840 0018C880 */  sll        $t9, $t8, 2
/* 182894 801D4844 00390821 */  addu       $at, $at, $t9
.L801D4848_ovl8:
/* 182898 801D4848 0C02A7A9 */  jal        func_800A9EA4
/* 18289C 801D484C AC2EDFD0 */   sw        $t6, %lo(D_800DDFD0)($at)
/* 1828A0 801D4850 8E710000 */  lw         $s1, 0x0($s3)
/* 1828A4 801D4854 4480B000 */  mtc1       $zero, $f22
/* 1828A8 801D4858 3C14800F */  lui        $s4, %hi(D_800EAFA0)
/* 1828AC 801D485C 8E280000 */  lw         $t0, 0x0($s1)
/* 1828B0 801D4860 2694AFA0 */  addiu      $s4, $s4, %lo(D_800EAFA0)
/* 1828B4 801D4864 3C018022 */  lui        $at, %hi(D_8021CE94_ovl9)
/* 1828B8 801D4868 00084880 */  sll        $t1, $t0, 2
/* 1828BC 801D486C 02895021 */  addu       $t2, $s4, $t1
/* 1828C0 801D4870 3C1E800E */  lui        $fp, %hi(gEntitiesNextPosYArray)
/* 1828C4 801D4874 3C17800E */  lui        $s7, %hi(D_800E6BD0)
/* 1828C8 801D4878 3C16800E */  lui        $s6, %hi(D_800E5F90)
/* 1828CC 801D487C 3C15800F */  lui        $s5, %hi(D_800EB160)
/* 1828D0 801D4880 3C12800F */  lui        $s2, %hi(D_800EB320)
/* 1828D4 801D4884 E5560000 */  swc1       $f22, 0x0($t2)
/* 1828D8 801D4888 C434CE94 */  lwc1       $f20, %lo(D_8021CE94_ovl9)($at)
/* 1828DC 801D488C 2652B320 */  addiu      $s2, $s2, %lo(D_800EB320)
/* 1828E0 801D4890 26B5B160 */  addiu      $s5, $s5, %lo(D_800EB160)
/* 1828E4 801D4894 26D65F90 */  addiu      $s6, $s6, %lo(D_800E5F90)
/* 1828E8 801D4898 26F76BD0 */  addiu      $s7, $s7, %lo(D_800E6BD0)
/* 1828EC 801D489C 27DE2790 */  addiu      $fp, $fp, %lo(gEntitiesNextPosYArray)
.L801D48A0_ovl9:
/* 1828F0 801D48A0 8E2B0000 */  lw         $t3, 0x0($s1)
/* 1828F4 801D48A4 000B6080 */  sll        $t4, $t3, 2
/* 1828F8 801D48A8 024C6821 */  addu       $t5, $s2, $t4
/* 1828FC 801D48AC 0C00B5B8 */  jal        sinf
/* 182900 801D48B0 C5AC0000 */   lwc1      $f12, 0x0($t5)
/* 182904 801D48B4 8E6F0000 */  lw         $t7, 0x0($s3)
/* 182908 801D48B8 8DF00000 */  lw         $s0, 0x0($t7)
/* 18290C 801D48BC 00108080 */  sll        $s0, $s0, 2
/* 182910 801D48C0 0290C021 */  addu       $t8, $s4, $s0
/* 182914 801D48C4 02B07021 */  addu       $t6, $s5, $s0
/* 182918 801D48C8 C5C60000 */  lwc1       $f6, 0x0($t6)
/* 18291C 801D48CC C7040000 */  lwc1       $f4, 0x0($t8)
/* 182920 801D48D0 0250C821 */  addu       $t9, $s2, $s0
/* 182924 801D48D4 C72C0000 */  lwc1       $f12, 0x0($t9)
/* 182928 801D48D8 46062202 */  mul.s      $f8, $f4, $f6
/* 18292C 801D48DC 00000000 */  nop
/* 182930 801D48E0 46004782 */  mul.s      $f30, $f8, $f0
/* 182934 801D48E4 0C00D604 */  jal        cosf
/* 182938 801D48E8 00000000 */   nop
/* 18293C 801D48EC 8E710000 */  lw         $s1, 0x0($s3)
/* 182940 801D48F0 3C03800E */  lui        $v1, %hi(D_800E7880)
/* 182944 801D48F4 24010005 */  addiu      $at, $zero, 0x5
/* 182948 801D48F8 8E220000 */  lw         $v0, 0x0($s1)
/* 18294C 801D48FC 00028080 */  sll        $s0, $v0, 2
/* 182950 801D4900 02904021 */  addu       $t0, $s4, $s0
/* 182954 801D4904 02B04821 */  addu       $t1, $s5, $s0
/* 182958 801D4908 C5300000 */  lwc1       $f16, 0x0($t1)
/* 18295C 801D490C C50A0000 */  lwc1       $f10, 0x0($t0)
/* 182960 801D4910 00621821 */  addu       $v1, $v1, $v0
/* 182964 801D4914 90637880 */  lbu        $v1, %lo(D_800E7880)($v1)
/* 182968 801D4918 46105482 */  mul.s      $f18, $f10, $f16
/* 18296C 801D491C 02501021 */  addu       $v0, $s2, $s0
/* 182970 801D4920 46009702 */  mul.s      $f28, $f18, $f0
/* 182974 801D4924 10610005 */  beq        $v1, $at, .L801D493C_ovl9
/* 182978 801D4928 24010006 */   addiu     $at, $zero, 0x6
/* 18297C 801D492C 1061000B */  beq        $v1, $at, .L801D495C_ovl9
/* 182980 801D4930 02501021 */   addu      $v0, $s2, $s0
/* 182984 801D4934 10000011 */  b          .L801D497C_ovl9
/* 182988 801D4938 02501021 */   addu      $v0, $s2, $s0
.L801D493C_ovl9:
/* 18298C 801D493C 3C018022 */  lui        $at, %hi(D_8021CE98_ovl9)
/* 182990 801D4940 C426CE98 */  lwc1       $f6, %lo(D_8021CE98_ovl9)($at)
/* 182994 801D4944 C4440000 */  lwc1       $f4, 0x0($v0)
/* 182998 801D4948 46062200 */  add.s      $f8, $f4, $f6
/* 18299C 801D494C E4480000 */  swc1       $f8, 0x0($v0)
/* 1829A0 801D4950 8E300000 */  lw         $s0, 0x0($s1)
/* 1829A4 801D4954 10000008 */  b          .L801D4978_ovl9
/* 1829A8 801D4958 00108080 */   sll       $s0, $s0, 2
.L801D495C_ovl9:
/* 1829AC 801D495C 3C018022 */  lui        $at, %hi(D_8021CE9C_ovl9)
/* 1829B0 801D4960 C430CE9C */  lwc1       $f16, %lo(D_8021CE9C_ovl9)($at)
/* 1829B4 801D4964 C44A0000 */  lwc1       $f10, 0x0($v0)
/* 1829B8 801D4968 46105481 */  sub.s      $f18, $f10, $f16
/* 1829BC 801D496C E4520000 */  swc1       $f18, 0x0($v0)
/* 1829C0 801D4970 8E300000 */  lw         $s0, 0x0($s1)
/* 1829C4 801D4974 00108080 */  sll        $s0, $s0, 2
.L801D4978_ovl9:
/* 1829C8 801D4978 02501021 */  addu       $v0, $s2, $s0
.L801D497C_ovl9:
/* 1829CC 801D497C C44C0000 */  lwc1       $f12, 0x0($v0)
/* 1829D0 801D4980 460CA03E */  c.le.s     $f20, $f12
/* 1829D4 801D4984 00000000 */  nop
/* 1829D8 801D4988 4502000C */  bc1fl      .L801D49BC_ovl9
/* 1829DC 801D498C 4616603C */   c.lt.s    $f12, $f22
/* 1829E0 801D4990 46146101 */  sub.s      $f4, $f12, $f20
.L801D4994_ovl9:
/* 1829E4 801D4994 E4440000 */  swc1       $f4, 0x0($v0)
/* 1829E8 801D4998 8E2A0000 */  lw         $t2, 0x0($s1)
/* 1829EC 801D499C 000A5880 */  sll        $t3, $t2, 2
/* 1829F0 801D49A0 024B1021 */  addu       $v0, $s2, $t3
/* 1829F4 801D49A4 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 1829F8 801D49A8 460CA03E */  c.le.s     $f20, $f12
/* 1829FC 801D49AC 00000000 */  nop
/* 182A00 801D49B0 4503FFF8 */  bc1tl      .L801D4994_ovl9
/* 182A04 801D49B4 46146101 */   sub.s     $f4, $f12, $f20
/* 182A08 801D49B8 4616603C */  c.lt.s     $f12, $f22
.L801D49BC_ovl9:
/* 182A0C 801D49BC 00000000 */  nop
/* 182A10 801D49C0 4500000B */  bc1f       .L801D49F0_ovl9
/* 182A14 801D49C4 00000000 */   nop
/* 182A18 801D49C8 46146180 */  add.s      $f6, $f12, $f20
.L801D49CC_ovl9:
/* 182A1C 801D49CC E4460000 */  swc1       $f6, 0x0($v0)
/* 182A20 801D49D0 8E2C0000 */  lw         $t4, 0x0($s1)
/* 182A24 801D49D4 000C6880 */  sll        $t5, $t4, 2
/* 182A28 801D49D8 024D1021 */  addu       $v0, $s2, $t5
/* 182A2C 801D49DC C44C0000 */  lwc1       $f12, 0x0($v0)
/* 182A30 801D49E0 4616603C */  c.lt.s     $f12, $f22
/* 182A34 801D49E4 00000000 */  nop
/* 182A38 801D49E8 4503FFF8 */  bc1tl      .L801D49CC_ovl9
/* 182A3C 801D49EC 46146180 */   add.s     $f6, $f12, $f20
.L801D49F0_ovl9:
/* 182A40 801D49F0 0C00B5B8 */  jal        sinf
/* 182A44 801D49F4 00000000 */   nop
/* 182A48 801D49F8 8E6F0000 */  lw         $t7, 0x0($s3)
/* 182A4C 801D49FC 8DF00000 */  lw         $s0, 0x0($t7)
/* 182A50 801D4A00 00108080 */  sll        $s0, $s0, 2
/* 182A54 801D4A04 0290C021 */  addu       $t8, $s4, $s0
/* 182A58 801D4A08 02B07021 */  addu       $t6, $s5, $s0
/* 182A5C 801D4A0C C5CA0000 */  lwc1       $f10, 0x0($t6)
/* 182A60 801D4A10 C7080000 */  lwc1       $f8, 0x0($t8)
/* 182A64 801D4A14 0250C821 */  addu       $t9, $s2, $s0
.L801D4A18_ovl8:
/* 182A68 801D4A18 C72C0000 */  lwc1       $f12, 0x0($t9)
/* 182A6C 801D4A1C 460A4402 */  mul.s      $f16, $f8, $f10
/* 182A70 801D4A20 00000000 */  nop
/* 182A74 801D4A24 46008602 */  mul.s      $f24, $f16, $f0
/* 182A78 801D4A28 0C00D604 */  jal        cosf
.L801D4A2C_ovl8:
/* 182A7C 801D4A2C 00000000 */   nop
/* 182A80 801D4A30 8E710000 */  lw         $s1, 0x0($s3)
/* 182A84 801D4A34 3C0A800F */  lui        $t2, %hi(D_800E98E0)
/* 182A88 801D4A38 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 182A8C 801D4A3C 8E300000 */  lw         $s0, 0x0($s1)
/* 182A90 801D4A40 4406F000 */  mfc1       $a2, $f30
/* 182A94 801D4A44 00108080 */  sll        $s0, $s0, 2
/* 182A98 801D4A48 01505021 */  addu       $t2, $t2, $s0
/* 182A9C 801D4A4C 8D4A98E0 */  lw         $t2, %lo(D_800E98E0)($t2)
/* 182AA0 801D4A50 02904021 */  addu       $t0, $s4, $s0
/* 182AA4 801D4A54 02B04821 */  addu       $t1, $s5, $s0
/* 182AA8 801D4A58 C5240000 */  lwc1       $f4, 0x0($t1)
.L801D4A5C_ovl8:
/* 182AAC 801D4A5C C5120000 */  lwc1       $f18, 0x0($t0)
/* 182AB0 801D4A60 02D05821 */  addu       $t3, $s6, $s0
/* 182AB4 801D4A64 AD6A0000 */  sw         $t2, 0x0($t3)
/* 182AB8 801D4A68 8E300000 */  lw         $s0, 0x0($s1)
/* 182ABC 801D4A6C 46049182 */  mul.s      $f6, $f18, $f4
/* 182AC0 801D4A70 00108080 */  sll        $s0, $s0, 2
/* 182AC4 801D4A74 00300821 */  addu       $at, $at, $s0
/* 182AC8 801D4A78 C428A6E0 */  lwc1       $f8, %lo(D_800EA6E0)($at)
/* 182ACC 801D4A7C 02F06021 */  addu       $t4, $s7, $s0
/* 182AD0 801D4A80 3C01800F */  lui        $at, %hi(D_800EAA60)
.L801D4A84_ovl8:
/* 182AD4 801D4A84 E5880000 */  swc1       $f8, 0x0($t4)
/* 182AD8 801D4A88 8E300000 */  lw         $s0, 0x0($s1)
/* 182ADC 801D4A8C 46003682 */  mul.s      $f26, $f6, $f0
/* 182AE0 801D4A90 00108080 */  sll        $s0, $s0, 2
/* 182AE4 801D4A94 00300821 */  addu       $at, $at, $s0
/* 182AE8 801D4A98 C42AAA60 */  lwc1       $f10, %lo(D_800EAA60)($at)
/* 182AEC 801D4A9C 03D06821 */  addu       $t5, $fp, $s0
/* 182AF0 801D4AA0 E5AA0000 */  swc1       $f10, 0x0($t5)
/* 182AF4 801D4AA4 8E300000 */  lw         $s0, 0x0($s1)
/* 182AF8 801D4AA8 00108080 */  sll        $s0, $s0, 2
/* 182AFC 801D4AAC 02D02021 */  addu       $a0, $s6, $s0
/* 182B00 801D4AB0 0C03E65D */  jal        func_800F9974
/* 182B04 801D4AB4 02F02821 */   addu      $a1, $s7, $s0
/* 182B08 801D4AB8 8E710000 */  lw         $s1, 0x0($s3)
/* 182B0C 801D4ABC 3C01800E */  lui        $at, %hi(D_800E6150)
/* 182B10 801D4AC0 461EC201 */  sub.s      $f8, $f24, $f30
/* 182B14 801D4AC4 8E2F0000 */  lw         $t7, 0x0($s1)
/* 182B18 801D4AC8 24040001 */  addiu      $a0, $zero, 0x1
/* 182B1C 801D4ACC 461CD281 */  sub.s      $f10, $f26, $f28
/* 182B20 801D4AD0 000FC080 */  sll        $t8, $t7, 2
/* 182B24 801D4AD4 03D81021 */  addu       $v0, $fp, $t8
/* 182B28 801D4AD8 C4500000 */  lwc1       $f16, 0x0($v0)
/* 182B2C 801D4ADC 461C8480 */  add.s      $f18, $f16, $f28
/* 182B30 801D4AE0 E4520000 */  swc1       $f18, 0x0($v0)
/* 182B34 801D4AE4 8E300000 */  lw         $s0, 0x0($s1)
/* 182B38 801D4AE8 00108080 */  sll        $s0, $s0, 2
/* 182B3C 801D4AEC 02D07021 */  addu       $t6, $s6, $s0
/* 182B40 801D4AF0 8DD90000 */  lw         $t9, 0x0($t6)
/* 182B44 801D4AF4 00300821 */  addu       $at, $at, $s0
/* 182B48 801D4AF8 AC396150 */  sw         $t9, %lo(D_800E6150)($at)
/* 182B4C 801D4AFC 8E300000 */  lw         $s0, 0x0($s1)
/* 182B50 801D4B00 3C01800E */  lui        $at, %hi(D_800E6D90)
/* 182B54 801D4B04 00108080 */  sll        $s0, $s0, 2
/* 182B58 801D4B08 02F04021 */  addu       $t0, $s7, $s0
.L801D4B0C_ovl8:
/* 182B5C 801D4B0C C5040000 */  lwc1       $f4, 0x0($t0)
/* 182B60 801D4B10 00300821 */  addu       $at, $at, $s0
/* 182B64 801D4B14 E4246D90 */  swc1       $f4, %lo(D_800E6D90)($at)
.L801D4B18_ovl8:
/* 182B68 801D4B18 8E300000 */  lw         $s0, 0x0($s1)
/* 182B6C 801D4B1C 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
/* 182B70 801D4B20 00108080 */  sll        $s0, $s0, 2
/* 182B74 801D4B24 03D04821 */  addu       $t1, $fp, $s0
/* 182B78 801D4B28 C5260000 */  lwc1       $f6, 0x0($t1)
/* 182B7C 801D4B2C 00300821 */  addu       $at, $at, $s0
/* 182B80 801D4B30 E4262CD0 */  swc1       $f6, %lo(gEntitiesPosYArray)($at)
/* 182B84 801D4B34 8E2A0000 */  lw         $t2, 0x0($s1)
/* 182B88 801D4B38 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 182B8C 801D4B3C 000A5880 */  sll        $t3, $t2, 2
/* 182B90 801D4B40 002B0821 */  addu       $at, $at, $t3
/* 182B94 801D4B44 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 182B98 801D4B48 8E2C0000 */  lw         $t4, 0x0($s1)
/* 182B9C 801D4B4C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 182BA0 801D4B50 000C6880 */  sll        $t5, $t4, 2
/* 182BA4 801D4B54 002D0821 */  addu       $at, $at, $t5
/* 182BA8 801D4B58 0C002DAF */  jal        finish_current_thread
/* 182BAC 801D4B5C E42A3210 */   swc1      $f10, %lo(D_800E3210)($at)
/* 182BB0 801D4B60 1000FF4F */  b          .L801D48A0_ovl9
/* 182BB4 801D4B64 8E710000 */   lw        $s1, 0x0($s3)
/* 182BB8 801D4B68 00000000 */  nop
/* 182BBC 801D4B6C 00000000 */  nop
/* 182BC0 801D4B70 00000000 */  nop
/* 182BC4 801D4B74 00000000 */  nop
/* 182BC8 801D4B78 00000000 */  nop
/* 182BCC 801D4B7C 00000000 */  nop
/* 182BD0 801D4B80 8FBF006C */  lw         $ra, 0x6C($sp)
.L801D4B84_ovl8:
/* 182BD4 801D4B84 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 182BD8 801D4B88 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 182BDC 801D4B8C D7B80028 */  ldc1       $f24, 0x28($sp)
/* 182BE0 801D4B90 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 182BE4 801D4B94 D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 182BE8 801D4B98 D7BE0040 */  ldc1       $f30, 0x40($sp)
/* 182BEC 801D4B9C 8FB00048 */  lw         $s0, 0x48($sp)
/* 182BF0 801D4BA0 8FB1004C */  lw         $s1, 0x4C($sp)
/* 182BF4 801D4BA4 8FB20050 */  lw         $s2, 0x50($sp)
/* 182BF8 801D4BA8 8FB30054 */  lw         $s3, 0x54($sp)
.L801D4BAC_ovl8:
/* 182BFC 801D4BAC 8FB40058 */  lw         $s4, 0x58($sp)
/* 182C00 801D4BB0 8FB5005C */  lw         $s5, 0x5C($sp)
/* 182C04 801D4BB4 8FB60060 */  lw         $s6, 0x60($sp)
/* 182C08 801D4BB8 8FB70064 */  lw         $s7, 0x64($sp)
/* 182C0C 801D4BBC 8FBE0068 */  lw         $fp, 0x68($sp)
/* 182C10 801D4BC0 03E00008 */  jr         $ra
/* 182C14 801D4BC4 27BD0070 */   addiu     $sp, $sp, 0x70
