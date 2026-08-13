nonmatching func_8017BA34_ovl5, 0x4A4

glabel func_8017BA34_ovl5
    /* 122EA4 8017BA34 27BDFF60 */  addiu      $sp, $sp, -0xA0
    /* 122EA8 8017BA38 AFB1002C */  sw         $s1, 0x2C($sp)
    /* 122EAC 8017BA3C 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* 122EB0 8017BA40 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* 122EB4 8017BA44 8E220000 */  lw         $v0, 0x0($s1)
    /* 122EB8 8017BA48 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 122EBC 8017BA4C AFBE0048 */  sw         $fp, 0x48($sp)
    /* 122EC0 8017BA50 AFB70044 */  sw         $s7, 0x44($sp)
    /* 122EC4 8017BA54 AFB60040 */  sw         $s6, 0x40($sp)
    /* 122EC8 8017BA58 AFB5003C */  sw         $s5, 0x3C($sp)
    /* 122ECC 8017BA5C AFB40038 */  sw         $s4, 0x38($sp)
    /* 122ED0 8017BA60 AFB30034 */  sw         $s3, 0x34($sp)
    /* 122ED4 8017BA64 AFB20030 */  sw         $s2, 0x30($sp)
    /* 122ED8 8017BA68 AFB00028 */  sw         $s0, 0x28($sp)
    /* 122EDC 8017BA6C F7B60020 */  sdc1       $f22, 0x20($sp)
    /* 122EE0 8017BA70 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 122EE4 8017BA74 AFA400A0 */  sw         $a0, 0xA0($sp)
    /* 122EE8 8017BA78 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 122EEC 8017BA7C 3C16800F */  lui        $s6, %hi(D_800E98E0)
    /* 122EF0 8017BA80 26D698E0 */  addiu      $s6, $s6, %lo(D_800E98E0)
    /* 122EF4 8017BA84 000E7880 */  sll        $t7, $t6, 2
    /* 122EF8 8017BA88 02CFC021 */  addu       $t8, $s6, $t7
    /* 122EFC 8017BA8C AF000000 */  sw         $zero, 0x0($t8)
    /* 122F00 8017BA90 00061880 */  sll        $v1, $a2, 2
    /* 122F04 8017BA94 00054100 */  sll        $t0, $a1, 4
    /* 122F08 8017BA98 8C590000 */  lw         $t9, 0x0($v0)
    /* 122F0C 8017BA9C 00A08025 */  or         $s0, $a1, $zero
    /* 122F10 8017BAA0 01034821 */  addu       $t1, $t0, $v1
    /* 122F14 8017BAA4 3C018019 */  lui        $at, %hi(D_8018ED50_ovl5)
    /* 122F18 8017BAA8 3C048019 */  lui        $a0, %hi(D_80189190_ovl5)
    /* 122F1C 8017BAAC 00C0A825 */  or         $s5, $a2, $zero
    /* 122F20 8017BAB0 00290821 */  addu       $at, $at, $t1
    /* 122F24 8017BAB4 00832021 */  addu       $a0, $a0, $v1
    /* 122F28 8017BAB8 3C050001 */  lui        $a1, (0x1869F >> 16)
    /* 122F2C 8017BABC AFA00064 */  sw         $zero, 0x64($sp)
    /* 122F30 8017BAC0 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
    /* 122F34 8017BAC4 8C849190 */  lw         $a0, %lo(D_80189190_ovl5)($a0)
    /* 122F38 8017BAC8 24060010 */  addiu      $a2, $zero, 0x10
    /* 122F3C 8017BACC AFA3005C */  sw         $v1, 0x5C($sp)
    /* 122F40 8017BAD0 0C02A619 */  jal        func_800A9864
    /* 122F44 8017BAD4 AC39ED50 */   sw        $t9, %lo(D_8018ED50_ovl5)($at)
    /* 122F48 8017BAD8 02002025 */  or         $a0, $s0, $zero
    /* 122F4C 8017BADC 0C05EE7D */  jal        func_8017B9F4_ovl5
    /* 122F50 8017BAE0 02A02825 */   or        $a1, $s5, $zero
    /* 122F54 8017BAE4 3C068019 */  lui        $a2, %hi(D_8018ED3C_ovl5)
    /* 122F58 8017BAE8 0040F025 */  or         $fp, $v0, $zero
    /* 122F5C 8017BAEC 8CC6ED3C */  lw         $a2, %lo(D_8018ED3C_ovl5)($a2)
    /* 122F60 8017BAF0 27A40090 */  addiu      $a0, $sp, 0x90
    /* 122F64 8017BAF4 0C02C8D0 */  jal        func_800B2340
    /* 122F68 8017BAF8 00402825 */   or        $a1, $v0, $zero
    /* 122F6C 8017BAFC 3C068019 */  lui        $a2, %hi(D_8018ED3C_ovl5)
    /* 122F70 8017BB00 8CC6ED3C */  lw         $a2, %lo(D_8018ED3C_ovl5)($a2)
    /* 122F74 8017BB04 27A40084 */  addiu      $a0, $sp, 0x84
    /* 122F78 8017BB08 0C02C9B6 */  jal        func_800B26D8
    /* 122F7C 8017BB0C 03C02825 */   or        $a1, $fp, $zero
    /* 122F80 8017BB10 3C068019 */  lui        $a2, %hi(D_8018ED3C_ovl5)
    /* 122F84 8017BB14 8CC6ED3C */  lw         $a2, %lo(D_8018ED3C_ovl5)($a2)
    /* 122F88 8017BB18 27A40078 */  addiu      $a0, $sp, 0x78
    /* 122F8C 8017BB1C 0C02CA4A */  jal        func_800B2928
    /* 122F90 8017BB20 03C02825 */   or        $a1, $fp, $zero
    /* 122F94 8017BB24 8E220000 */  lw         $v0, 0x0($s1)
    /* 122F98 8017BB28 C7A40090 */  lwc1       $f4, 0x90($sp)
    /* 122F9C 8017BB2C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 122FA0 8017BB30 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 122FA4 8017BB34 C7A60094 */  lwc1       $f6, 0x94($sp)
    /* 122FA8 8017BB38 C7A80098 */  lwc1       $f8, 0x98($sp)
    /* 122FAC 8017BB3C 000A5880 */  sll        $t3, $t2, 2
    /* 122FB0 8017BB40 002B0821 */  addu       $at, $at, $t3
    /* 122FB4 8017BB44 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 122FB8 8017BB48 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 122FBC 8017BB4C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 122FC0 8017BB50 C7AA0084 */  lwc1       $f10, 0x84($sp)
    /* 122FC4 8017BB54 000C6880 */  sll        $t5, $t4, 2
    /* 122FC8 8017BB58 002D0821 */  addu       $at, $at, $t5
    /* 122FCC 8017BB5C E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 122FD0 8017BB60 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 122FD4 8017BB64 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 122FD8 8017BB68 C7B00088 */  lwc1       $f16, 0x88($sp)
    /* 122FDC 8017BB6C 000E7880 */  sll        $t7, $t6, 2
    /* 122FE0 8017BB70 002F0821 */  addu       $at, $at, $t7
    /* 122FE4 8017BB74 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 122FE8 8017BB78 8C580000 */  lw         $t8, 0x0($v0)
    /* 122FEC 8017BB7C 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* 122FF0 8017BB80 C7B2008C */  lwc1       $f18, 0x8C($sp)
    /* 122FF4 8017BB84 00184080 */  sll        $t0, $t8, 2
    /* 122FF8 8017BB88 00280821 */  addu       $at, $at, $t0
    /* 122FFC 8017BB8C E42A4010 */  swc1       $f10, %lo(gEntitiesAngleXArray)($at)
    /* 123000 8017BB90 8C590000 */  lw         $t9, 0x0($v0)
    /* 123004 8017BB94 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 123008 8017BB98 C7A40078 */  lwc1       $f4, 0x78($sp)
    /* 12300C 8017BB9C 00194880 */  sll        $t1, $t9, 2
    /* 123010 8017BBA0 00290821 */  addu       $at, $at, $t1
    /* 123014 8017BBA4 E43041D0 */  swc1       $f16, %lo(gEntitiesAngleYArray)($at)
    /* 123018 8017BBA8 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 12301C 8017BBAC 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
    /* 123020 8017BBB0 3C12800E */  lui        $s2, %hi(gEntitiesScaleXArray)
    /* 123024 8017BBB4 000A5880 */  sll        $t3, $t2, 2
    /* 123028 8017BBB8 002B0821 */  addu       $at, $at, $t3
    /* 12302C 8017BBBC E4324390 */  swc1       $f18, %lo(gEntitiesAngleZArray)($at)
    /* 123030 8017BBC0 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 123034 8017BBC4 26524550 */  addiu      $s2, $s2, %lo(gEntitiesScaleXArray)
    /* 123038 8017BBC8 3C13800E */  lui        $s3, %hi(gEntitiesScaleYArray)
    /* 12303C 8017BBCC 000C6880 */  sll        $t5, $t4, 2
    /* 123040 8017BBD0 024D7021 */  addu       $t6, $s2, $t5
    /* 123044 8017BBD4 E5C40000 */  swc1       $f4, 0x0($t6)
    /* 123048 8017BBD8 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 12304C 8017BBDC C7A6007C */  lwc1       $f6, 0x7C($sp)
    /* 123050 8017BBE0 26734710 */  addiu      $s3, $s3, %lo(gEntitiesScaleYArray)
    /* 123054 8017BBE4 000FC080 */  sll        $t8, $t7, 2
    /* 123058 8017BBE8 02784021 */  addu       $t0, $s3, $t8
    /* 12305C 8017BBEC E5060000 */  swc1       $f6, 0x0($t0)
    /* 123060 8017BBF0 8C590000 */  lw         $t9, 0x0($v0)
    /* 123064 8017BBF4 C7A80080 */  lwc1       $f8, 0x80($sp)
    /* 123068 8017BBF8 3C14800E */  lui        $s4, %hi(gEntitiesScaleZArray)
    /* 12306C 8017BBFC 269448D0 */  addiu      $s4, $s4, %lo(gEntitiesScaleZArray)
    /* 123070 8017BC00 00194880 */  sll        $t1, $t9, 2
    /* 123074 8017BC04 02895021 */  addu       $t2, $s4, $t1
    /* 123078 8017BC08 3C0B8019 */  lui        $t3, %hi(D_8018ED04_ovl5)
    /* 12307C 8017BC0C E5480000 */  swc1       $f8, 0x0($t2)
    /* 123080 8017BC10 8D6BED04 */  lw         $t3, %lo(D_8018ED04_ovl5)($t3)
    /* 123084 8017BC14 24010001 */  addiu      $at, $zero, 0x1
    /* 123088 8017BC18 3C0E8019 */  lui        $t6, %hi(D_8018ED18_ovl5)
    /* 12308C 8017BC1C 1561009E */  bne        $t3, $at, .L8017BE98_ovl5
    /* 123090 8017BC20 00106080 */   sll       $t4, $s0, 2
    /* 123094 8017BC24 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* 123098 8017BC28 25CEED18 */  addiu      $t6, $t6, %lo(D_8018ED18_ovl5)
    /* 12309C 8017BC2C 4481B000 */  mtc1       $at, $f22
    /* 1230A0 8017BC30 018EB821 */  addu       $s7, $t4, $t6
    /* 1230A4 8017BC34 AFAC0060 */  sw         $t4, 0x60($sp)
    /* 1230A8 8017BC38 8FAF0064 */  lw         $t7, 0x64($sp)
  .L8017BC3C_ovl5:
    /* 1230AC 8017BC3C 8FB80060 */  lw         $t8, 0x60($sp)
    /* 1230B0 8017BC40 3C088019 */  lui        $t0, %hi(D_8018ED90_ovl5)
    /* 1230B4 8017BC44 15E00032 */  bnez       $t7, .L8017BD10_ovl5
    /* 1230B8 8017BC48 01184021 */   addu      $t0, $t0, $t8
    /* 1230BC 8017BC4C 8D08ED90 */  lw         $t0, %lo(D_8018ED90_ovl5)($t0)
    /* 1230C0 8017BC50 3C09800F */  lui        $t1, %hi(D_800EA1A0)
    /* 1230C4 8017BC54 0008C880 */  sll        $t9, $t0, 2
    /* 1230C8 8017BC58 01394821 */  addu       $t1, $t1, $t9
    /* 1230CC 8017BC5C 8D29A1A0 */  lw         $t1, %lo(D_800EA1A0)($t1)
    /* 1230D0 8017BC60 5120002C */  beql       $t1, $zero, .L8017BD14_ovl5
    /* 1230D4 8017BC64 8EF80000 */   lw        $t8, 0x0($s7)
    /* 1230D8 8017BC68 8EEB0000 */  lw         $t3, 0x0($s7)
    /* 1230DC 8017BC6C 240A0001 */  addiu      $t2, $zero, 0x1
    /* 1230E0 8017BC70 AFAA0064 */  sw         $t2, 0x64($sp)
    /* 1230E4 8017BC74 16AB0007 */  bne        $s5, $t3, .L8017BC94_ovl5
    /* 1230E8 8017BC78 001560C0 */   sll       $t4, $s5, 3
    /* 1230EC 8017BC7C 3C048019 */  lui        $a0, %hi(D_801891B0_ovl5)
    /* 1230F0 8017BC80 008C2021 */  addu       $a0, $a0, $t4
    /* 1230F4 8017BC84 0C02A806 */  jal        func_800AA018
    /* 1230F8 8017BC88 8C8491B0 */   lw        $a0, %lo(D_801891B0_ovl5)($a0)
    /* 1230FC 8017BC8C 10000021 */  b          .L8017BD14_ovl5
    /* 123100 8017BC90 8EF80000 */   lw        $t8, 0x0($s7)
  .L8017BC94_ovl5:
    /* 123104 8017BC94 8E2D0000 */  lw         $t5, 0x0($s1)
    /* 123108 8017BC98 24100004 */  addiu      $s0, $zero, 0x4
    /* 12310C 8017BC9C 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 123110 8017BCA0 000E7880 */  sll        $t7, $t6, 2
    /* 123114 8017BCA4 024FC021 */  addu       $t8, $s2, $t7
    /* 123118 8017BCA8 C7000000 */  lwc1       $f0, 0x0($t8)
    /* 12311C 8017BCAC 46160503 */  div.s      $f20, $f0, $f22
    /* 123120 8017BCB0 44905000 */  mtc1       $s0, $f10
  .L8017BCB4_ovl5:
    /* 123124 8017BCB4 8E220000 */  lw         $v0, 0x0($s1)
    /* 123128 8017BCB8 24040001 */  addiu      $a0, $zero, 0x1
    /* 12312C 8017BCBC 46805420 */  cvt.s.w    $f16, $f10
    /* 123130 8017BCC0 8C480000 */  lw         $t0, 0x0($v0)
    /* 123134 8017BCC4 0008C880 */  sll        $t9, $t0, 2
    /* 123138 8017BCC8 02594821 */  addu       $t1, $s2, $t9
    /* 12313C 8017BCCC 46148002 */  mul.s      $f0, $f16, $f20
    /* 123140 8017BCD0 E5200000 */  swc1       $f0, 0x0($t1)
    /* 123144 8017BCD4 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 123148 8017BCD8 000A5880 */  sll        $t3, $t2, 2
    /* 12314C 8017BCDC 026B6021 */  addu       $t4, $s3, $t3
    /* 123150 8017BCE0 E5800000 */  swc1       $f0, 0x0($t4)
    /* 123154 8017BCE4 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 123158 8017BCE8 000D7080 */  sll        $t6, $t5, 2
    /* 12315C 8017BCEC 028E7821 */  addu       $t7, $s4, $t6
    /* 123160 8017BCF0 0C002DAF */  jal        ohSleep
    /* 123164 8017BCF4 E5E00000 */   swc1      $f0, 0x0($t7)
    /* 123168 8017BCF8 2610FFFF */  addiu      $s0, $s0, -0x1
    /* 12316C 8017BCFC 0603FFED */  bgezl      $s0, .L8017BCB4_ovl5
    /* 123170 8017BD00 44905000 */   mtc1      $s0, $f10
    /* 123174 8017BD04 00002025 */  or         $a0, $zero, $zero
    /* 123178 8017BD08 0C02BEED */  jal        func_800AFBB4
    /* 12317C 8017BD0C 8E250000 */   lw        $a1, 0x0($s1)
  .L8017BD10_ovl5:
    /* 123180 8017BD10 8EF80000 */  lw         $t8, 0x0($s7)
  .L8017BD14_ovl5:
    /* 123184 8017BD14 16B80005 */  bne        $s5, $t8, .L8017BD2C_ovl5
    /* 123188 8017BD18 00000000 */   nop
    /* 12318C 8017BD1C 0C02BDE8 */  jal        func_800AF7A0
    /* 123190 8017BD20 2404002E */   addiu     $a0, $zero, 0x2E
    /* 123194 8017BD24 10000004 */  b          .L8017BD38_ovl5
    /* 123198 8017BD28 8E280000 */   lw        $t0, 0x0($s1)
  .L8017BD2C_ovl5:
    /* 12319C 8017BD2C 0C02BDE8 */  jal        func_800AF7A0
    /* 1231A0 8017BD30 2404002F */   addiu     $a0, $zero, 0x2F
    /* 1231A4 8017BD34 8E280000 */  lw         $t0, 0x0($s1)
  .L8017BD38_ovl5:
    /* 1231A8 8017BD38 8D190000 */  lw         $t9, 0x0($t0)
    /* 1231AC 8017BD3C 00194880 */  sll        $t1, $t9, 2
    /* 1231B0 8017BD40 02C95021 */  addu       $t2, $s6, $t1
    /* 1231B4 8017BD44 8D420000 */  lw         $v0, 0x0($t2)
    /* 1231B8 8017BD48 1040001B */  beqz       $v0, .L8017BDB8_ovl5
    /* 1231BC 8017BD4C 244CFFFF */   addiu     $t4, $v0, -0x1
    /* 1231C0 8017BD50 448C9000 */  mtc1       $t4, $f18
    /* 1231C4 8017BD54 8FAB005C */  lw         $t3, 0x5C($sp)
    /* 1231C8 8017BD58 3C048019 */  lui        $a0, %hi(D_801891A0_ovl5)
    /* 1231CC 8017BD5C 468094A0 */  cvt.s.w    $f18, $f18
    /* 1231D0 8017BD60 008B2021 */  addu       $a0, $a0, $t3
    /* 1231D4 8017BD64 8C8491A0 */  lw         $a0, %lo(D_801891A0_ovl5)($a0)
    /* 1231D8 8017BD68 44059000 */  mfc1       $a1, $f18
    /* 1231DC 8017BD6C 0C02A7E6 */  jal        func_800A9F98
    /* 1231E0 8017BD70 00000000 */   nop
    /* 1231E4 8017BD74 8E2D0000 */  lw         $t5, 0x0($s1)
    /* 1231E8 8017BD78 24010001 */  addiu      $at, $zero, 0x1
    /* 1231EC 8017BD7C 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 1231F0 8017BD80 000E7880 */  sll        $t7, $t6, 2
    /* 1231F4 8017BD84 02CFC021 */  addu       $t8, $s6, $t7
    /* 1231F8 8017BD88 8F080000 */  lw         $t0, 0x0($t8)
    /* 1231FC 8017BD8C 15010003 */  bne        $t0, $at, .L8017BD9C_ovl5
    /* 123200 8017BD90 00000000 */   nop
    /* 123204 8017BD94 0C0038C9 */  jal        animUpdateModelTreeAnimation
    /* 123208 8017BD98 8FA400A0 */   lw        $a0, 0xA0($sp)
  .L8017BD9C_ovl5:
    /* 12320C 8017BD9C 0C00302B */  jal        animResetTextureAnimation
    /* 123210 8017BDA0 8FA400A0 */   lw        $a0, 0xA0($sp)
    /* 123214 8017BDA4 8E390000 */  lw         $t9, 0x0($s1)
    /* 123218 8017BDA8 8F290000 */  lw         $t1, 0x0($t9)
    /* 12321C 8017BDAC 00095080 */  sll        $t2, $t1, 2
    /* 123220 8017BDB0 02CA5821 */  addu       $t3, $s6, $t2
    /* 123224 8017BDB4 AD600000 */  sw         $zero, 0x0($t3)
  .L8017BDB8_ovl5:
    /* 123228 8017BDB8 3C068019 */  lui        $a2, %hi(D_8018ED3C_ovl5)
    /* 12322C 8017BDBC 8CC6ED3C */  lw         $a2, %lo(D_8018ED3C_ovl5)($a2)
    /* 123230 8017BDC0 27A40090 */  addiu      $a0, $sp, 0x90
    /* 123234 8017BDC4 0C02C8D0 */  jal        func_800B2340
    /* 123238 8017BDC8 03C02825 */   or        $a1, $fp, $zero
    /* 12323C 8017BDCC 3C068019 */  lui        $a2, %hi(D_8018ED3C_ovl5)
    /* 123240 8017BDD0 8CC6ED3C */  lw         $a2, %lo(D_8018ED3C_ovl5)($a2)
    /* 123244 8017BDD4 27A40084 */  addiu      $a0, $sp, 0x84
    /* 123248 8017BDD8 0C02C9B6 */  jal        func_800B26D8
    /* 12324C 8017BDDC 03C02825 */   or        $a1, $fp, $zero
    /* 123250 8017BDE0 8E220000 */  lw         $v0, 0x0($s1)
    /* 123254 8017BDE4 C7A40090 */  lwc1       $f4, 0x90($sp)
    /* 123258 8017BDE8 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 12325C 8017BDEC 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 123260 8017BDF0 C7A60094 */  lwc1       $f6, 0x94($sp)
    /* 123264 8017BDF4 C7A80098 */  lwc1       $f8, 0x98($sp)
    /* 123268 8017BDF8 000C6880 */  sll        $t5, $t4, 2
    /* 12326C 8017BDFC 002D0821 */  addu       $at, $at, $t5
    /* 123270 8017BE00 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 123274 8017BE04 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 123278 8017BE08 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 12327C 8017BE0C C7AA0084 */  lwc1       $f10, 0x84($sp)
    /* 123280 8017BE10 000E7880 */  sll        $t7, $t6, 2
    /* 123284 8017BE14 002F0821 */  addu       $at, $at, $t7
    /* 123288 8017BE18 E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 12328C 8017BE1C 8C580000 */  lw         $t8, 0x0($v0)
    /* 123290 8017BE20 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 123294 8017BE24 C7B00088 */  lwc1       $f16, 0x88($sp)
    /* 123298 8017BE28 00184080 */  sll        $t0, $t8, 2
    /* 12329C 8017BE2C 00280821 */  addu       $at, $at, $t0
    /* 1232A0 8017BE30 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 1232A4 8017BE34 8C590000 */  lw         $t9, 0x0($v0)
    /* 1232A8 8017BE38 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* 1232AC 8017BE3C C7B2008C */  lwc1       $f18, 0x8C($sp)
    /* 1232B0 8017BE40 00194880 */  sll        $t1, $t9, 2
    /* 1232B4 8017BE44 00290821 */  addu       $at, $at, $t1
    /* 1232B8 8017BE48 E42A4010 */  swc1       $f10, %lo(gEntitiesAngleXArray)($at)
    /* 1232BC 8017BE4C 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 1232C0 8017BE50 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 1232C4 8017BE54 24040001 */  addiu      $a0, $zero, 0x1
    /* 1232C8 8017BE58 000A5880 */  sll        $t3, $t2, 2
    /* 1232CC 8017BE5C 002B0821 */  addu       $at, $at, $t3
    /* 1232D0 8017BE60 E43041D0 */  swc1       $f16, %lo(gEntitiesAngleYArray)($at)
    /* 1232D4 8017BE64 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 1232D8 8017BE68 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
    /* 1232DC 8017BE6C 000C6880 */  sll        $t5, $t4, 2
    /* 1232E0 8017BE70 002D0821 */  addu       $at, $at, $t5
    /* 1232E4 8017BE74 0C002DAF */  jal        ohSleep
    /* 1232E8 8017BE78 E4324390 */   swc1      $f18, %lo(gEntitiesAngleZArray)($at)
    /* 1232EC 8017BE7C 3C0E8019 */  lui        $t6, %hi(D_8018ED04_ovl5)
    /* 1232F0 8017BE80 8DCEED04 */  lw         $t6, %lo(D_8018ED04_ovl5)($t6)
    /* 1232F4 8017BE84 24010001 */  addiu      $at, $zero, 0x1
    /* 1232F8 8017BE88 51C1FF6C */  beql       $t6, $at, .L8017BC3C_ovl5
    /* 1232FC 8017BE8C 8FAF0064 */   lw        $t7, 0x64($sp)
    /* 123300 8017BE90 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 123304 8017BE94 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
  .L8017BE98_ovl5:
    /* 123308 8017BE98 0C02C640 */  jal        func_800B1900
    /* 12330C 8017BE9C 94440002 */   lhu       $a0, 0x2($v0)
    /* 123310 8017BEA0 8FBF004C */  lw         $ra, 0x4C($sp)
    /* 123314 8017BEA4 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 123318 8017BEA8 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* 12331C 8017BEAC 8FB00028 */  lw         $s0, 0x28($sp)
    /* 123320 8017BEB0 8FB1002C */  lw         $s1, 0x2C($sp)
    /* 123324 8017BEB4 8FB20030 */  lw         $s2, 0x30($sp)
    /* 123328 8017BEB8 8FB30034 */  lw         $s3, 0x34($sp)
    /* 12332C 8017BEBC 8FB40038 */  lw         $s4, 0x38($sp)
    /* 123330 8017BEC0 8FB5003C */  lw         $s5, 0x3C($sp)
    /* 123334 8017BEC4 8FB60040 */  lw         $s6, 0x40($sp)
    /* 123338 8017BEC8 8FB70044 */  lw         $s7, 0x44($sp)
    /* 12333C 8017BECC 8FBE0048 */  lw         $fp, 0x48($sp)
    /* 123340 8017BED0 03E00008 */  jr         $ra
    /* 123344 8017BED4 27BD00A0 */   addiu     $sp, $sp, 0xA0
endlabel func_8017BA34_ovl5
.size func_8017BA34_ovl5, . - func_8017BA34_ovl5
