nonmatching func_8016B754_ovl5, 0x75C

glabel func_8016B754_ovl5
    /* 112BC4 8016B754 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 112BC8 8016B758 AFB00020 */  sw         $s0, 0x20($sp)
    /* 112BCC 8016B75C 00808025 */  or         $s0, $a0, $zero
    /* 112BD0 8016B760 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 112BD4 8016B764 AFB7003C */  sw         $s7, 0x3C($sp)
    /* 112BD8 8016B768 AFB60038 */  sw         $s6, 0x38($sp)
    /* 112BDC 8016B76C 00A0B025 */  or         $s6, $a1, $zero
    /* 112BE0 8016B770 00C0B825 */  or         $s7, $a2, $zero
    /* 112BE4 8016B774 AFBE0040 */  sw         $fp, 0x40($sp)
    /* 112BE8 8016B778 AFB50034 */  sw         $s5, 0x34($sp)
    /* 112BEC 8016B77C AFB40030 */  sw         $s4, 0x30($sp)
    /* 112BF0 8016B780 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 112BF4 8016B784 AFB20028 */  sw         $s2, 0x28($sp)
    /* 112BF8 8016B788 AFB10024 */  sw         $s1, 0x24($sp)
    /* 112BFC 8016B78C F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 112C00 8016B790 AFA70094 */  sw         $a3, 0x94($sp)
    /* 112C04 8016B794 AFA00054 */  sw         $zero, 0x54($sp)
    /* 112C08 8016B798 0C029D9E */  jal        play_sound
    /* 112C0C 8016B79C 24040107 */   addiu     $a0, $zero, 0x107
    /* 112C10 8016B7A0 02C02025 */  or         $a0, $s6, $zero
    /* 112C14 8016B7A4 0C0596E1 */  jal        func_80165B84_ovl5
    /* 112C18 8016B7A8 02E02825 */   or        $a1, $s7, $zero
    /* 112C1C 8016B7AC 10400004 */  beqz       $v0, .L8016B7C0_ovl5
    /* 112C20 8016B7B0 3C0E8005 */   lui       $t6, %hi(omCurrentObj)
    /* 112C24 8016B7B4 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 112C28 8016B7B8 0C02C640 */  jal        func_800B1900
    /* 112C2C 8016B7BC 95C40002 */   lhu       $a0, 0x2($t6)
  .L8016B7C0_ovl5:
    /* 112C30 8016B7C0 12E0000A */  beqz       $s7, .L8016B7EC_ovl5
    /* 112C34 8016B7C4 24010001 */   addiu     $at, $zero, 0x1
    /* 112C38 8016B7C8 12E1000A */  beq        $s7, $at, .L8016B7F4_ovl5
    /* 112C3C 8016B7CC 24010002 */   addiu     $at, $zero, 0x2
    /* 112C40 8016B7D0 12E1000C */  beq        $s7, $at, .L8016B804_ovl5
    /* 112C44 8016B7D4 24140001 */   addiu     $s4, $zero, 0x1
    /* 112C48 8016B7D8 24010003 */  addiu      $at, $zero, 0x3
    /* 112C4C 8016B7DC 12E10007 */  beq        $s7, $at, .L8016B7FC_ovl5
    /* 112C50 8016B7E0 00000000 */   nop
    /* 112C54 8016B7E4 10000007 */  b          .L8016B804_ovl5
    /* 112C58 8016B7E8 8FB4007C */   lw        $s4, 0x7C($sp)
  .L8016B7EC_ovl5:
    /* 112C5C 8016B7EC 10000005 */  b          .L8016B804_ovl5
    /* 112C60 8016B7F0 24140008 */   addiu     $s4, $zero, 0x8
  .L8016B7F4_ovl5:
    /* 112C64 8016B7F4 10000003 */  b          .L8016B804_ovl5
    /* 112C68 8016B7F8 2414FFF8 */   addiu     $s4, $zero, -0x8
  .L8016B7FC_ovl5:
    /* 112C6C 8016B7FC 10000001 */  b          .L8016B804_ovl5
    /* 112C70 8016B800 2414FFFF */   addiu     $s4, $zero, -0x1
  .L8016B804_ovl5:
    /* 112C74 8016B804 02D4B021 */  addu       $s6, $s6, $s4
    /* 112C78 8016B808 0C059B52 */  jal        func_80166D48_ovl5
    /* 112C7C 8016B80C 02C02025 */   or        $a0, $s6, $zero
    /* 112C80 8016B810 10400004 */  beqz       $v0, .L8016B824_ovl5
    /* 112C84 8016B814 3C0F8005 */   lui       $t7, %hi(omCurrentObj)
    /* 112C88 8016B818 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 112C8C 8016B81C 0C02C640 */  jal        func_800B1900
    /* 112C90 8016B820 95E40002 */   lhu       $a0, 0x2($t7)
  .L8016B824_ovl5:
    /* 112C94 8016B824 3C040003 */  lui        $a0, (0x3009E >> 16)
    /* 112C98 8016B828 3C050001 */  lui        $a1, (0x1869F >> 16)
    /* 112C9C 8016B82C 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
    /* 112CA0 8016B830 3484009E */  ori        $a0, $a0, (0x3009E & 0xFFFF)
    /* 112CA4 8016B834 0C02A619 */  jal        func_800A9864
    /* 112CA8 8016B838 24060010 */   addiu     $a2, $zero, 0x10
    /* 112CAC 8016B83C 0C05A9A7 */  jal        func_8016A69C_ovl5
    /* 112CB0 8016B840 8FA40094 */   lw        $a0, 0x94($sp)
    /* 112CB4 8016B844 44822000 */  mtc1       $v0, $f4
    /* 112CB8 8016B848 3C040003 */  lui        $a0, (0x3008D >> 16)
    /* 112CBC 8016B84C 3484008D */  ori        $a0, $a0, (0x3008D & 0xFFFF)
    /* 112CC0 8016B850 46802120 */  cvt.s.w    $f4, $f4
    /* 112CC4 8016B854 44052000 */  mfc1       $a1, $f4
    /* 112CC8 8016B858 0C02A7E6 */  jal        func_800A9F98
    /* 112CCC 8016B85C 00000000 */   nop
    /* 112CD0 8016B860 0C00302B */  jal        animResetTextureAnimation
    /* 112CD4 8016B864 02002025 */   or        $a0, $s0, $zero
    /* 112CD8 8016B868 3C040003 */  lui        $a0, (0x3008E >> 16)
    /* 112CDC 8016B86C 0C02A806 */  jal        func_800AA018
    /* 112CE0 8016B870 3484008E */   ori       $a0, $a0, (0x3008E & 0xFFFF)
    /* 112CE4 8016B874 0C059631 */  jal        func_801658C4_ovl5
    /* 112CE8 8016B878 02C02025 */   or        $a0, $s6, $zero
    /* 112CEC 8016B87C 3C158019 */  lui        $s5, %hi(D_8018E2A0_ovl5)
    /* 112CF0 8016B880 26B5E2A0 */  addiu      $s5, $s5, %lo(D_8018E2A0_ovl5)
    /* 112CF4 8016B884 0016C080 */  sll        $t8, $s6, 2
    /* 112CF8 8016B888 02B8C821 */  addu       $t9, $s5, $t8
    /* 112CFC 8016B88C 8F260000 */  lw         $a2, 0x0($t9)
    /* 112D00 8016B890 27A40070 */  addiu      $a0, $sp, 0x70
    /* 112D04 8016B894 0C02C8D0 */  jal        func_800B2340
    /* 112D08 8016B898 00402825 */   or        $a1, $v0, $zero
    /* 112D0C 8016B89C 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 112D10 8016B8A0 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* 112D14 8016B8A4 C7A60070 */  lwc1       $f6, 0x70($sp)
    /* 112D18 8016B8A8 3C02800E */  lui        $v0, %hi(gEntitiesNextPosXArray)
    /* 112D1C 8016B8AC 8CE90000 */  lw         $t1, 0x0($a3)
    /* 112D20 8016B8B0 244225D0 */  addiu      $v0, $v0, %lo(gEntitiesNextPosXArray)
    /* 112D24 8016B8B4 44804000 */  mtc1       $zero, $f8
    /* 112D28 8016B8B8 00095080 */  sll        $t2, $t1, 2
    /* 112D2C 8016B8BC 004A5821 */  addu       $t3, $v0, $t2
    /* 112D30 8016B8C0 E5660000 */  swc1       $f6, 0x0($t3)
    /* 112D34 8016B8C4 8CEC0000 */  lw         $t4, 0x0($a3)
    /* 112D38 8016B8C8 3C03800E */  lui        $v1, %hi(gEntitiesNextPosYArray)
    /* 112D3C 8016B8CC 24632790 */  addiu      $v1, $v1, %lo(gEntitiesNextPosYArray)
    /* 112D40 8016B8D0 000C6880 */  sll        $t5, $t4, 2
    /* 112D44 8016B8D4 006D7021 */  addu       $t6, $v1, $t5
    /* 112D48 8016B8D8 E5C80000 */  swc1       $f8, 0x0($t6)
    /* 112D4C 8016B8DC 8CEF0000 */  lw         $t7, 0x0($a3)
    /* 112D50 8016B8E0 3C08800E */  lui        $t0, %hi(gEntitiesNextPosZArray)
    /* 112D54 8016B8E4 C7AA0078 */  lwc1       $f10, 0x78($sp)
    /* 112D58 8016B8E8 25082950 */  addiu      $t0, $t0, %lo(gEntitiesNextPosZArray)
    /* 112D5C 8016B8EC 000FC080 */  sll        $t8, $t7, 2
    /* 112D60 8016B8F0 0118C821 */  addu       $t9, $t0, $t8
    /* 112D64 8016B8F4 12E0000F */  beqz       $s7, .L8016B934_ovl5
    /* 112D68 8016B8F8 E72A0000 */   swc1      $f10, 0x0($t9)
    /* 112D6C 8016B8FC 24010001 */  addiu      $at, $zero, 0x1
    /* 112D70 8016B900 12E1001B */  beq        $s7, $at, .L8016B970_ovl5
    /* 112D74 8016B904 3C1E800E */   lui       $fp, %hi(gEntitiesAngleYArray)
    /* 112D78 8016B908 24010002 */  addiu      $at, $zero, 0x2
    /* 112D7C 8016B90C 12E10038 */  beq        $s7, $at, .L8016B9F0_ovl5
    /* 112D80 8016B910 3C1E800E */   lui       $fp, %hi(gEntitiesAngleYArray)
    /* 112D84 8016B914 24010003 */  addiu      $at, $zero, 0x3
    /* 112D88 8016B918 12E10025 */  beq        $s7, $at, .L8016B9B0_ovl5
    /* 112D8C 8016B91C 3C1E800E */   lui       $fp, %hi(gEntitiesAngleYArray)
    /* 112D90 8016B920 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
    /* 112D94 8016B924 4481A000 */  mtc1       $at, $f20
    /* 112D98 8016B928 3C1E800E */  lui        $fp, %hi(gEntitiesAngleYArray)
    /* 112D9C 8016B92C 1000003E */  b          .L8016BA28_ovl5
    /* 112DA0 8016B930 27DE41D0 */   addiu     $fp, $fp, %lo(gEntitiesAngleYArray)
  .L8016B934_ovl5:
    /* 112DA4 8016B934 8CE90000 */  lw         $t1, 0x0($a3)
    /* 112DA8 8016B938 44808000 */  mtc1       $zero, $f16
    /* 112DAC 8016B93C 3C1E800E */  lui        $fp, %hi(gEntitiesAngleYArray)
    /* 112DB0 8016B940 27DE41D0 */  addiu      $fp, $fp, %lo(gEntitiesAngleYArray)
    /* 112DB4 8016B944 00095080 */  sll        $t2, $t1, 2
    /* 112DB8 8016B948 03CA5821 */  addu       $t3, $fp, $t2
    /* 112DBC 8016B94C E5700000 */  swc1       $f16, 0x0($t3)
    /* 112DC0 8016B950 8CEC0000 */  lw         $t4, 0x0($a3)
    /* 112DC4 8016B954 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
    /* 112DC8 8016B958 4481A000 */  mtc1       $at, $f20
    /* 112DCC 8016B95C 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 112DD0 8016B960 000C6880 */  sll        $t5, $t4, 2
    /* 112DD4 8016B964 002D0821 */  addu       $at, $at, $t5
    /* 112DD8 8016B968 1000002F */  b          .L8016BA28_ovl5
    /* 112DDC 8016B96C E43433D0 */   swc1      $f20, %lo(D_800E33D0)($at)
  .L8016B970_ovl5:
    /* 112DE0 8016B970 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
    /* 112DE4 8016B974 4481A000 */  mtc1       $at, $f20
    /* 112DE8 8016B978 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 112DEC 8016B97C 3C018019 */  lui        $at, %hi(D_8018D754_ovl5)
    /* 112DF0 8016B980 C432D754 */  lwc1       $f18, %lo(D_8018D754_ovl5)($at)
    /* 112DF4 8016B984 27DE41D0 */  addiu      $fp, $fp, %lo(gEntitiesAngleYArray)
    /* 112DF8 8016B988 000E7880 */  sll        $t7, $t6, 2
    /* 112DFC 8016B98C 03CFC021 */  addu       $t8, $fp, $t7
    /* 112E00 8016B990 E7120000 */  swc1       $f18, 0x0($t8)
    /* 112E04 8016B994 8CF90000 */  lw         $t9, 0x0($a3)
    /* 112E08 8016B998 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 112E0C 8016B99C 4600A107 */  neg.s      $f4, $f20
    /* 112E10 8016B9A0 00194880 */  sll        $t1, $t9, 2
    /* 112E14 8016B9A4 00290821 */  addu       $at, $at, $t1
    /* 112E18 8016B9A8 1000001F */  b          .L8016BA28_ovl5
    /* 112E1C 8016B9AC E42433D0 */   swc1      $f4, %lo(D_800E33D0)($at)
  .L8016B9B0_ovl5:
    /* 112E20 8016B9B0 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
    /* 112E24 8016B9B4 4481A000 */  mtc1       $at, $f20
    /* 112E28 8016B9B8 8CEA0000 */  lw         $t2, 0x0($a3)
    /* 112E2C 8016B9BC 3C018019 */  lui        $at, %hi(D_8018D758_ovl5)
    /* 112E30 8016B9C0 C426D758 */  lwc1       $f6, %lo(D_8018D758_ovl5)($at)
    /* 112E34 8016B9C4 27DE41D0 */  addiu      $fp, $fp, %lo(gEntitiesAngleYArray)
    /* 112E38 8016B9C8 000A5880 */  sll        $t3, $t2, 2
    /* 112E3C 8016B9CC 03CB6021 */  addu       $t4, $fp, $t3
    /* 112E40 8016B9D0 E5860000 */  swc1       $f6, 0x0($t4)
    /* 112E44 8016B9D4 8CED0000 */  lw         $t5, 0x0($a3)
    /* 112E48 8016B9D8 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 112E4C 8016B9DC 4600A207 */  neg.s      $f8, $f20
    /* 112E50 8016B9E0 000D7080 */  sll        $t6, $t5, 2
    /* 112E54 8016B9E4 002E0821 */  addu       $at, $at, $t6
    /* 112E58 8016B9E8 1000000F */  b          .L8016BA28_ovl5
    /* 112E5C 8016B9EC E4283050 */   swc1      $f8, %lo(D_800E3050)($at)
  .L8016B9F0_ovl5:
    /* 112E60 8016B9F0 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
    /* 112E64 8016B9F4 4481A000 */  mtc1       $at, $f20
    /* 112E68 8016B9F8 8CEF0000 */  lw         $t7, 0x0($a3)
    /* 112E6C 8016B9FC 3C018019 */  lui        $at, %hi(D_8018D75C_ovl5)
    /* 112E70 8016BA00 C42AD75C */  lwc1       $f10, %lo(D_8018D75C_ovl5)($at)
    /* 112E74 8016BA04 27DE41D0 */  addiu      $fp, $fp, %lo(gEntitiesAngleYArray)
    /* 112E78 8016BA08 000FC080 */  sll        $t8, $t7, 2
    /* 112E7C 8016BA0C 03D8C821 */  addu       $t9, $fp, $t8
    /* 112E80 8016BA10 E72A0000 */  swc1       $f10, 0x0($t9)
    /* 112E84 8016BA14 8CE90000 */  lw         $t1, 0x0($a3)
    /* 112E88 8016BA18 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 112E8C 8016BA1C 00095080 */  sll        $t2, $t1, 2
    /* 112E90 8016BA20 002A0821 */  addu       $at, $at, $t2
    /* 112E94 8016BA24 E4343050 */  swc1       $f20, %lo(D_800E3050)($at)
  .L8016BA28_ovl5:
    /* 112E98 8016BA28 8CEB0000 */  lw         $t3, 0x0($a3)
    /* 112E9C 8016BA2C 02C09025 */  or         $s2, $s6, $zero
    /* 112EA0 8016BA30 000B6080 */  sll        $t4, $t3, 2
    /* 112EA4 8016BA34 004C6821 */  addu       $t5, $v0, $t4
    /* 112EA8 8016BA38 C5B00000 */  lwc1       $f16, 0x0($t5)
    /* 112EAC 8016BA3C 27AB0070 */  addiu      $t3, $sp, 0x70
    /* 112EB0 8016BA40 E7B00070 */  swc1       $f16, 0x70($sp)
    /* 112EB4 8016BA44 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 112EB8 8016BA48 000E7880 */  sll        $t7, $t6, 2
    /* 112EBC 8016BA4C 006FC021 */  addu       $t8, $v1, $t7
    /* 112EC0 8016BA50 C7120000 */  lwc1       $f18, 0x0($t8)
    /* 112EC4 8016BA54 E7B20074 */  swc1       $f18, 0x74($sp)
    /* 112EC8 8016BA58 8CF90000 */  lw         $t9, 0x0($a3)
    /* 112ECC 8016BA5C 00194880 */  sll        $t1, $t9, 2
    /* 112ED0 8016BA60 01095021 */  addu       $t2, $t0, $t1
    /* 112ED4 8016BA64 C5440000 */  lwc1       $f4, 0x0($t2)
    /* 112ED8 8016BA68 E7A40078 */  swc1       $f4, 0x78($sp)
    /* 112EDC 8016BA6C 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 112EE0 8016BA70 AFAD0000 */  sw         $t5, 0x0($sp)
    /* 112EE4 8016BA74 8D650004 */  lw         $a1, 0x4($t3)
    /* 112EE8 8016BA78 8FA40000 */  lw         $a0, 0x0($sp)
    /* 112EEC 8016BA7C AFA50004 */  sw         $a1, 0x4($sp)
    /* 112EF0 8016BA80 8D660008 */  lw         $a2, 0x8($t3)
    /* 112EF4 8016BA84 0C059815 */  jal        func_80166054_ovl5
    /* 112EF8 8016BA88 AFA60008 */   sw        $a2, 0x8($sp)
    /* 112EFC 8016BA8C 2401029A */  addiu      $at, $zero, 0x29A
    /* 112F00 8016BA90 14410005 */  bne        $v0, $at, .L8016BAA8_ovl5
    /* 112F04 8016BA94 0040B025 */   or        $s6, $v0, $zero
    /* 112F08 8016BA98 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 112F0C 8016BA9C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 112F10 8016BAA0 0C02C640 */  jal        func_800B1900
    /* 112F14 8016BAA4 95C40002 */   lhu       $a0, 0x2($t6)
  .L8016BAA8_ovl5:
    /* 112F18 8016BAA8 00167880 */  sll        $t7, $s6, 2
    /* 112F1C 8016BAAC 02AFC021 */  addu       $t8, $s5, $t7
    /* 112F20 8016BAB0 8F020000 */  lw         $v0, 0x0($t8)
    /* 112F24 8016BAB4 3C13800F */  lui        $s3, %hi(D_800E98E0)
    /* 112F28 8016BAB8 267398E0 */  addiu      $s3, $s3, %lo(D_800E98E0)
    /* 112F2C 8016BABC 00021080 */  sll        $v0, $v0, 2
    /* 112F30 8016BAC0 02624821 */  addu       $t1, $s3, $v0
    /* 112F34 8016BAC4 24190001 */  addiu      $t9, $zero, 0x1
    /* 112F38 8016BAC8 AD390000 */  sw         $t9, 0x0($t1)
    /* 112F3C 8016BACC 8FAA0094 */  lw         $t2, 0x94($sp)
    /* 112F40 8016BAD0 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 112F44 8016BAD4 00220821 */  addu       $at, $at, $v0
    /* 112F48 8016BAD8 02C08825 */  or         $s1, $s6, $zero
    /* 112F4C 8016BADC AC2A9AA0 */  sw         $t2, %lo(D_800E9AA0)($at)
  .L8016BAE0_ovl5:
    /* 112F50 8016BAE0 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 112F54 8016BAE4 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* 112F58 8016BAE8 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 112F5C 8016BAEC 27B90070 */  addiu      $t9, $sp, 0x70
    /* 112F60 8016BAF0 8CEB0000 */  lw         $t3, 0x0($a3)
    /* 112F64 8016BAF4 000B6080 */  sll        $t4, $t3, 2
    /* 112F68 8016BAF8 002C0821 */  addu       $at, $at, $t4
    /* 112F6C 8016BAFC C42625D0 */  lwc1       $f6, %lo(gEntitiesNextPosXArray)($at)
    /* 112F70 8016BB00 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 112F74 8016BB04 E7A60070 */  swc1       $f6, 0x70($sp)
    /* 112F78 8016BB08 8CED0000 */  lw         $t5, 0x0($a3)
    /* 112F7C 8016BB0C 000D7080 */  sll        $t6, $t5, 2
    /* 112F80 8016BB10 002E0821 */  addu       $at, $at, $t6
    /* 112F84 8016BB14 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
    /* 112F88 8016BB18 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 112F8C 8016BB1C E7A80074 */  swc1       $f8, 0x74($sp)
    /* 112F90 8016BB20 8CEF0000 */  lw         $t7, 0x0($a3)
    /* 112F94 8016BB24 000FC080 */  sll        $t8, $t7, 2
    /* 112F98 8016BB28 00380821 */  addu       $at, $at, $t8
    /* 112F9C 8016BB2C C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* 112FA0 8016BB30 E7AA0078 */  swc1       $f10, 0x78($sp)
    /* 112FA4 8016BB34 8F2A0000 */  lw         $t2, 0x0($t9)
    /* 112FA8 8016BB38 AFAA0000 */  sw         $t2, 0x0($sp)
    /* 112FAC 8016BB3C 8F250004 */  lw         $a1, 0x4($t9)
    /* 112FB0 8016BB40 8FA40000 */  lw         $a0, 0x0($sp)
    /* 112FB4 8016BB44 AFA50004 */  sw         $a1, 0x4($sp)
    /* 112FB8 8016BB48 8F260008 */  lw         $a2, 0x8($t9)
    /* 112FBC 8016BB4C 0C059815 */  jal        func_80166054_ovl5
    /* 112FC0 8016BB50 AFA60008 */   sw        $a2, 0x8($sp)
    /* 112FC4 8016BB54 2401029A */  addiu      $at, $zero, 0x29A
    /* 112FC8 8016BB58 1041008B */  beq        $v0, $at, .L8016BD88_ovl5
    /* 112FCC 8016BB5C 0040B025 */   or        $s6, $v0, $zero
    /* 112FD0 8016BB60 10510085 */  beq        $v0, $s1, .L8016BD78_ovl5
    /* 112FD4 8016BB64 00000000 */   nop
    /* 112FD8 8016BB68 0C05A9AC */  jal        func_8016A6B0_ovl5
    /* 112FDC 8016BB6C 00402025 */   or        $a0, $v0, $zero
    /* 112FE0 8016BB70 10400076 */  beqz       $v0, .L8016BD4C_ovl5
    /* 112FE4 8016BB74 00166880 */   sll       $t5, $s6, 2
    /* 112FE8 8016BB78 8FAB0054 */  lw         $t3, 0x54($sp)
    /* 112FEC 8016BB7C 02347021 */  addu       $t6, $s1, $s4
    /* 112FF0 8016BB80 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 112FF4 8016BB84 256C0001 */  addiu      $t4, $t3, 0x1
    /* 112FF8 8016BB88 29810003 */  slti       $at, $t4, 0x3
    /* 112FFC 8016BB8C 14200005 */  bnez       $at, .L8016BBA4_ovl5
    /* 113000 8016BB90 AFAC0054 */   sw        $t4, 0x54($sp)
    /* 113004 8016BB94 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* 113008 8016BB98 44810000 */  mtc1       $at, $f0
    /* 11300C 8016BB9C 1000000A */  b          .L8016BBC8_ovl5
    /* 113010 8016BBA0 00000000 */   nop
  .L8016BBA4_ovl5:
    /* 113014 8016BBA4 8FAD0054 */  lw         $t5, 0x54($sp)
    /* 113018 8016BBA8 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* 11301C 8016BBAC 44812000 */  mtc1       $at, $f4
    /* 113020 8016BBB0 448D8000 */  mtc1       $t5, $f16
    /* 113024 8016BBB4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 113028 8016BBB8 44814000 */  mtc1       $at, $f8
    /* 11302C 8016BBBC 468084A0 */  cvt.s.w    $f18, $f16
    /* 113030 8016BBC0 46049182 */  mul.s      $f6, $f18, $f4
    /* 113034 8016BBC4 46083000 */  add.s      $f0, $f6, $f8
  .L8016BBC8_ovl5:
    /* 113038 8016BBC8 124E000A */  beq        $s2, $t6, .L8016BBF4_ovl5
    /* 11303C 8016BBCC 02401025 */   or        $v0, $s2, $zero
    /* 113040 8016BBD0 02349021 */  addu       $s2, $s1, $s4
  .L8016BBD4_ovl5:
    /* 113044 8016BBD4 00027880 */  sll        $t7, $v0, 2
    /* 113048 8016BBD8 02AFC021 */  addu       $t8, $s5, $t7
    /* 11304C 8016BBDC 8F190000 */  lw         $t9, 0x0($t8)
    /* 113050 8016BBE0 00541021 */  addu       $v0, $v0, $s4
    /* 113054 8016BBE4 00194880 */  sll        $t1, $t9, 2
    /* 113058 8016BBE8 02695021 */  addu       $t2, $s3, $t1
    /* 11305C 8016BBEC 1452FFF9 */  bne        $v0, $s2, .L8016BBD4_ovl5
    /* 113060 8016BBF0 AD400000 */   sw        $zero, 0x0($t2)
  .L8016BBF4_ovl5:
    /* 113064 8016BBF4 12E0001E */  beqz       $s7, .L8016BC70_ovl5
    /* 113068 8016BBF8 3C018019 */   lui       $at, %hi(D_8018D760_ovl5)
    /* 11306C 8016BBFC 24010001 */  addiu      $at, $zero, 0x1
    /* 113070 8016BC00 12E1000A */  beq        $s7, $at, .L8016BC2C_ovl5
    /* 113074 8016BC04 3C078005 */   lui       $a3, %hi(omCurrentObj)
    /* 113078 8016BC08 24010002 */  addiu      $at, $zero, 0x2
    /* 11307C 8016BC0C 12E1002A */  beq        $s7, $at, .L8016BCB8_ovl5
    /* 113080 8016BC10 3C078005 */   lui       $a3, %hi(omCurrentObj)
    /* 113084 8016BC14 24010003 */  addiu      $at, $zero, 0x3
    /* 113088 8016BC18 12E1003A */  beq        $s7, $at, .L8016BD04_ovl5
    /* 11308C 8016BC1C 3C078005 */   lui       $a3, %hi(omCurrentObj)
    /* 113090 8016BC20 02C08825 */  or         $s1, $s6, $zero
    /* 113094 8016BC24 10000054 */  b          .L8016BD78_ovl5
    /* 113098 8016BC28 02C09025 */   or        $s2, $s6, $zero
  .L8016BC2C_ovl5:
    /* 11309C 8016BC2C 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* 1130A0 8016BC30 44805000 */  mtc1       $zero, $f10
    /* 1130A4 8016BC34 4600A402 */  mul.s      $f16, $f20, $f0
    /* 1130A8 8016BC38 8CEB0000 */  lw         $t3, 0x0($a3)
    /* 1130AC 8016BC3C 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 1130B0 8016BC40 0000B825 */  or         $s7, $zero, $zero
    /* 1130B4 8016BC44 000B6080 */  sll        $t4, $t3, 2
    /* 1130B8 8016BC48 03CC6821 */  addu       $t5, $fp, $t4
    /* 1130BC 8016BC4C E5AA0000 */  swc1       $f10, 0x0($t5)
    /* 1130C0 8016BC50 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 1130C4 8016BC54 24140008 */  addiu      $s4, $zero, 0x8
    /* 1130C8 8016BC58 02C08825 */  or         $s1, $s6, $zero
    /* 1130CC 8016BC5C 000E7880 */  sll        $t7, $t6, 2
    /* 1130D0 8016BC60 002F0821 */  addu       $at, $at, $t7
    /* 1130D4 8016BC64 E43033D0 */  swc1       $f16, %lo(D_800E33D0)($at)
    /* 1130D8 8016BC68 10000043 */  b          .L8016BD78_ovl5
    /* 1130DC 8016BC6C 02C09025 */   or        $s2, $s6, $zero
  .L8016BC70_ovl5:
    /* 1130E0 8016BC70 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* 1130E4 8016BC74 C432D760 */  lwc1       $f18, %lo(D_8018D760_ovl5)($at)
    /* 1130E8 8016BC78 4600A107 */  neg.s      $f4, $f20
    /* 1130EC 8016BC7C 8CF80000 */  lw         $t8, 0x0($a3)
    /* 1130F0 8016BC80 46002182 */  mul.s      $f6, $f4, $f0
    /* 1130F4 8016BC84 3C01800E */  lui        $at, %hi(D_800E33D0)
    /* 1130F8 8016BC88 0018C880 */  sll        $t9, $t8, 2
    /* 1130FC 8016BC8C 03D94821 */  addu       $t1, $fp, $t9
    /* 113100 8016BC90 E5320000 */  swc1       $f18, 0x0($t1)
    /* 113104 8016BC94 8CEA0000 */  lw         $t2, 0x0($a3)
    /* 113108 8016BC98 24170001 */  addiu      $s7, $zero, 0x1
    /* 11310C 8016BC9C 2414FFF8 */  addiu      $s4, $zero, -0x8
    /* 113110 8016BCA0 000A5880 */  sll        $t3, $t2, 2
    /* 113114 8016BCA4 002B0821 */  addu       $at, $at, $t3
    /* 113118 8016BCA8 E42633D0 */  swc1       $f6, %lo(D_800E33D0)($at)
    /* 11311C 8016BCAC 02C08825 */  or         $s1, $s6, $zero
    /* 113120 8016BCB0 10000031 */  b          .L8016BD78_ovl5
    /* 113124 8016BCB4 02C09025 */   or        $s2, $s6, $zero
  .L8016BCB8_ovl5:
    /* 113128 8016BCB8 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* 11312C 8016BCBC 3C018019 */  lui        $at, %hi(D_8018D764_ovl5)
    /* 113130 8016BCC0 C428D764 */  lwc1       $f8, %lo(D_8018D764_ovl5)($at)
    /* 113134 8016BCC4 8CEC0000 */  lw         $t4, 0x0($a3)
    /* 113138 8016BCC8 4600A287 */  neg.s      $f10, $f20
    /* 11313C 8016BCCC 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 113140 8016BCD0 000C6880 */  sll        $t5, $t4, 2
    /* 113144 8016BCD4 03CD7021 */  addu       $t6, $fp, $t5
    /* 113148 8016BCD8 46005402 */  mul.s      $f16, $f10, $f0
    /* 11314C 8016BCDC E5C80000 */  swc1       $f8, 0x0($t6)
    /* 113150 8016BCE0 8CEF0000 */  lw         $t7, 0x0($a3)
    /* 113154 8016BCE4 24170003 */  addiu      $s7, $zero, 0x3
    /* 113158 8016BCE8 2414FFFF */  addiu      $s4, $zero, -0x1
    /* 11315C 8016BCEC 000FC080 */  sll        $t8, $t7, 2
    /* 113160 8016BCF0 00380821 */  addu       $at, $at, $t8
    /* 113164 8016BCF4 E4303050 */  swc1       $f16, %lo(D_800E3050)($at)
    /* 113168 8016BCF8 02C08825 */  or         $s1, $s6, $zero
    /* 11316C 8016BCFC 1000001E */  b          .L8016BD78_ovl5
    /* 113170 8016BD00 02C09025 */   or        $s2, $s6, $zero
  .L8016BD04_ovl5:
    /* 113174 8016BD04 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* 113178 8016BD08 3C018019 */  lui        $at, %hi(D_8018D768_ovl5)
    /* 11317C 8016BD0C C432D768 */  lwc1       $f18, %lo(D_8018D768_ovl5)($at)
    /* 113180 8016BD10 8CF90000 */  lw         $t9, 0x0($a3)
    /* 113184 8016BD14 4600A102 */  mul.s      $f4, $f20, $f0
    /* 113188 8016BD18 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 11318C 8016BD1C 00194880 */  sll        $t1, $t9, 2
    /* 113190 8016BD20 03C95021 */  addu       $t2, $fp, $t1
    /* 113194 8016BD24 E5520000 */  swc1       $f18, 0x0($t2)
    /* 113198 8016BD28 8CEB0000 */  lw         $t3, 0x0($a3)
    /* 11319C 8016BD2C 24170002 */  addiu      $s7, $zero, 0x2
    /* 1131A0 8016BD30 24140001 */  addiu      $s4, $zero, 0x1
    /* 1131A4 8016BD34 000B6080 */  sll        $t4, $t3, 2
    /* 1131A8 8016BD38 002C0821 */  addu       $at, $at, $t4
    /* 1131AC 8016BD3C E4243050 */  swc1       $f4, %lo(D_800E3050)($at)
    /* 1131B0 8016BD40 02C08825 */  or         $s1, $s6, $zero
    /* 1131B4 8016BD44 1000000C */  b          .L8016BD78_ovl5
    /* 1131B8 8016BD48 02C09025 */   or        $s2, $s6, $zero
  .L8016BD4C_ovl5:
    /* 1131BC 8016BD4C 02AD7021 */  addu       $t6, $s5, $t5
    /* 1131C0 8016BD50 8DC20000 */  lw         $v0, 0x0($t6)
    /* 1131C4 8016BD54 240F0001 */  addiu      $t7, $zero, 0x1
    /* 1131C8 8016BD58 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 1131CC 8016BD5C 00021080 */  sll        $v0, $v0, 2
    /* 1131D0 8016BD60 0262C021 */  addu       $t8, $s3, $v0
    /* 1131D4 8016BD64 AF0F0000 */  sw         $t7, 0x0($t8)
    /* 1131D8 8016BD68 8FB90094 */  lw         $t9, 0x94($sp)
    /* 1131DC 8016BD6C 00220821 */  addu       $at, $at, $v0
    /* 1131E0 8016BD70 02C08825 */  or         $s1, $s6, $zero
    /* 1131E4 8016BD74 AC399AA0 */  sw         $t9, %lo(D_800E9AA0)($at)
  .L8016BD78_ovl5:
    /* 1131E8 8016BD78 0C002DAF */  jal        ohSleep
    /* 1131EC 8016BD7C 24040001 */   addiu     $a0, $zero, 0x1
    /* 1131F0 8016BD80 1000FF57 */  b          .L8016BAE0_ovl5
    /* 1131F4 8016BD84 00000000 */   nop
  .L8016BD88_ovl5:
    /* 1131F8 8016BD88 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* 1131FC 8016BD8C 8CE5A7C4 */  lw         $a1, %lo(omCurrentObj)($a3)
    /* 113200 8016BD90 44803000 */  mtc1       $zero, $f6
    /* 113204 8016BD94 3C03800E */  lui        $v1, %hi(D_800E3750)
    /* 113208 8016BD98 8CA90000 */  lw         $t1, 0x0($a1)
    /* 11320C 8016BD9C 24633750 */  addiu      $v1, $v1, %lo(D_800E3750)
    /* 113210 8016BDA0 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 113214 8016BDA4 00095080 */  sll        $t2, $t1, 2
    /* 113218 8016BDA8 006A5821 */  addu       $t3, $v1, $t2
    /* 11321C 8016BDAC E5660000 */  swc1       $f6, 0x0($t3)
    /* 113220 8016BDB0 8CA20000 */  lw         $v0, 0x0($a1)
    /* 113224 8016BDB4 02208025 */  or         $s0, $s1, $zero
    /* 113228 8016BDB8 00002025 */  or         $a0, $zero, $zero
    /* 11322C 8016BDBC 00021080 */  sll        $v0, $v0, 2
    /* 113230 8016BDC0 00626021 */  addu       $t4, $v1, $v0
    /* 113234 8016BDC4 C5880000 */  lwc1       $f8, 0x0($t4)
    /* 113238 8016BDC8 00220821 */  addu       $at, $at, $v0
    /* 11323C 8016BDCC E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
    /* 113240 8016BDD0 8CAD0000 */  lw         $t5, 0x0($a1)
    /* 113244 8016BDD4 3C018019 */  lui        $at, %hi(D_8018D76C_ovl5)
    /* 113248 8016BDD8 C42AD76C */  lwc1       $f10, %lo(D_8018D76C_ovl5)($at)
    /* 11324C 8016BDDC 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* 113250 8016BDE0 000D7080 */  sll        $t6, $t5, 2
    /* 113254 8016BDE4 002E0821 */  addu       $at, $at, $t6
    /* 113258 8016BDE8 0C02BEED */  jal        func_800AFBB4
    /* 11325C 8016BDEC E42A3C90 */   swc1      $f10, %lo(D_800E3C90)($at)
    /* 113260 8016BDF0 02347821 */  addu       $t7, $s1, $s4
    /* 113264 8016BDF4 124F001D */  beq        $s2, $t7, .L8016BE6C_ovl5
    /* 113268 8016BDF8 0240B025 */   or        $s6, $s2, $zero
    /* 11326C 8016BDFC 3C17800E */  lui        $s7, %hi(D_800DE350)
    /* 113270 8016BE00 26F7E350 */  addiu      $s7, $s7, %lo(D_800DE350)
    /* 113274 8016BE04 02149021 */  addu       $s2, $s0, $s4
    /* 113278 8016BE08 24110005 */  addiu      $s1, $zero, 0x5
    /* 11327C 8016BE0C 0016C080 */  sll        $t8, $s6, 2
  .L8016BE10_ovl5:
    /* 113280 8016BE10 02B8C821 */  addu       $t9, $s5, $t8
    /* 113284 8016BE14 8F220000 */  lw         $v0, 0x0($t9)
    /* 113288 8016BE18 44808000 */  mtc1       $zero, $f16
    /* 11328C 8016BE1C 240B0002 */  addiu      $t3, $zero, 0x2
    /* 113290 8016BE20 00021080 */  sll        $v0, $v0, 2
    /* 113294 8016BE24 02E24821 */  addu       $t1, $s7, $v0
    /* 113298 8016BE28 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 11329C 8016BE2C 02626021 */  addu       $t4, $s3, $v0
    /* 1132A0 8016BE30 00008025 */  or         $s0, $zero, $zero
    /* 1132A4 8016BE34 C5520040 */  lwc1       $f18, 0x40($t2)
    /* 1132A8 8016BE38 46128032 */  c.eq.s     $f16, $f18
    /* 1132AC 8016BE3C 00000000 */  nop
    /* 1132B0 8016BE40 45010002 */  bc1t       .L8016BE4C_ovl5
    /* 1132B4 8016BE44 00000000 */   nop
    /* 1132B8 8016BE48 AD8B0000 */  sw         $t3, 0x0($t4)
  .L8016BE4C_ovl5:
    /* 1132BC 8016BE4C 0C002DAF */  jal        ohSleep
    /* 1132C0 8016BE50 24040001 */   addiu     $a0, $zero, 0x1
    /* 1132C4 8016BE54 26100001 */  addiu      $s0, $s0, 0x1
    /* 1132C8 8016BE58 1611FFFC */  bne        $s0, $s1, .L8016BE4C_ovl5
    /* 1132CC 8016BE5C 00000000 */   nop
    /* 1132D0 8016BE60 02D4B021 */  addu       $s6, $s6, $s4
    /* 1132D4 8016BE64 56D2FFEA */  bnel       $s6, $s2, .L8016BE10_ovl5
    /* 1132D8 8016BE68 0016C080 */   sll       $t8, $s6, 2
  .L8016BE6C_ovl5:
    /* 1132DC 8016BE6C 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 1132E0 8016BE70 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 1132E4 8016BE74 0C02C640 */  jal        func_800B1900
    /* 1132E8 8016BE78 95A40002 */   lhu       $a0, 0x2($t5)
    /* 1132EC 8016BE7C 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 1132F0 8016BE80 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 1132F4 8016BE84 8FB00020 */  lw         $s0, 0x20($sp)
    /* 1132F8 8016BE88 8FB10024 */  lw         $s1, 0x24($sp)
    /* 1132FC 8016BE8C 8FB20028 */  lw         $s2, 0x28($sp)
    /* 113300 8016BE90 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 113304 8016BE94 8FB40030 */  lw         $s4, 0x30($sp)
    /* 113308 8016BE98 8FB50034 */  lw         $s5, 0x34($sp)
    /* 11330C 8016BE9C 8FB60038 */  lw         $s6, 0x38($sp)
    /* 113310 8016BEA0 8FB7003C */  lw         $s7, 0x3C($sp)
    /* 113314 8016BEA4 8FBE0040 */  lw         $fp, 0x40($sp)
    /* 113318 8016BEA8 03E00008 */  jr         $ra
    /* 11331C 8016BEAC 27BD0088 */   addiu     $sp, $sp, 0x88
endlabel func_8016B754_ovl5
.size func_8016B754_ovl5, . - func_8016B754_ovl5
