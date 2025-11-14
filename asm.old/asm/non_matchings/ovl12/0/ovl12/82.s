glabel func_801DEB1C_ovl12 # 82
/* 00391C 801DEB1C 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 003920 801DEB20 24C6A7C4 */  addiu       $a2, $a2, %lo(D_8004A7C4)
/* 003924 801DEB24 8CC30000 */  lw          $v1, 0x0($a2)
/* 003928 801DEB28 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00392C 801DEB2C AFBF0014 */  sw          $ra, 0x14($sp)
/* 003930 801DEB30 8C620000 */  lw          $v0, 0x0($v1)
/* 003934 801DEB34 3C07800E */  lui         $a3, %hi(D_800E5F90)
/* 003938 801DEB38 24E75F90 */  addiu       $a3, $a3, %lo(D_800E5F90)
/* 00393C 801DEB3C 8CEE0000 */  lw          $t6, 0x0($a3)
/* 003940 801DEB40 3C05800E */  lui         $a1, %hi(D_800E1B50)
/* 003944 801DEB44 00021080 */  sll         $v0, $v0, 2
/* 003948 801DEB48 00A22821 */  addu        $a1, $a1, $v0
/* 00394C 801DEB4C 8CA51B50 */  lw          $a1, %lo(D_800E1B50)($a1)
/* 003950 801DEB50 00E27821 */  addu        $t7, $a3, $v0
/* 003954 801DEB54 ADEE0000 */  sw          $t6, 0x0($t7)
/* 003958 801DEB58 8C780000 */  lw          $t8, 0x0($v1)
/* 00395C 801DEB5C 3C013F40 */  lui         $at, (0x3F400000 >> 16)
/* 003960 801DEB60 44812000 */  mtc1        $at, $f4
/* 003964 801DEB64 3C01800F */  lui         $at, %hi(D_800EB320)
/* 003968 801DEB68 0018C880 */  sll         $t9, $t8, 2
/* 00396C 801DEB6C 00390821 */  addu        $at, $at, $t9
/* 003970 801DEB70 E424B320 */  swc1        $f4, %lo(D_800EB320)($at)
/* 003974 801DEB74 8C620000 */  lw          $v0, 0x0($v1)
/* 003978 801DEB78 3C01800E */  lui         $at, %hi(D_800E6BD0)
/* 00397C 801DEB7C 3C04800E */  lui         $a0, %hi(D_800DE350)
/* 003980 801DEB80 00021080 */  sll         $v0, $v0, 2
/* 003984 801DEB84 00220821 */  addu        $at, $at, $v0
/* 003988 801DEB88 C4266BD0 */  lwc1        $f6, %lo(D_800E6BD0)($at)
/* 00398C 801DEB8C 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 003990 801DEB90 00220821 */  addu        $at, $at, $v0
/* 003994 801DEB94 C42825D0 */  lwc1        $f8, %lo(gEntitiesNextPosXArray)($at)
/* 003998 801DEB98 3C01800E */  lui         $at, %hi(gEntitiesNextPosZArray)
/* 00399C 801DEB9C 00220821 */  addu        $at, $at, $v0
/* 0039A0 801DEBA0 C42A2950 */  lwc1        $f10, %lo(gEntitiesNextPosZArray)($at)
/* 0039A4 801DEBA4 00822021 */  addu        $a0, $a0, $v0
/* 0039A8 801DEBA8 8C84E350 */  lw          $a0, %lo(D_800DE350)($a0)
/* 0039AC 801DEBAC AFA50034 */  sw          $a1, 0x34($sp)
/* 0039B0 801DEBB0 E7A60030 */  swc1        $f6, 0x30($sp)
/* 0039B4 801DEBB4 E7A80018 */  swc1        $f8, 0x18($sp)
/* 0039B8 801DEBB8 0C03E39B */  jal         func_800F8E6C
/* 0039BC 801DEBBC E7AA0020 */   swc1       $f10, 0x20($sp)
/* 0039C0 801DEBC0 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 0039C4 801DEBC4 24C6A7C4 */  addiu       $a2, $a2, %lo(D_8004A7C4)
/* 0039C8 801DEBC8 8CC90000 */  lw          $t1, 0x0($a2)
/* 0039CC 801DEBCC 3C07800E */  lui         $a3, %hi(gEntitiesNextPosXArray)
/* 0039D0 801DEBD0 24E725D0 */  addiu       $a3, $a3, %lo(gEntitiesNextPosXArray)
/* 0039D4 801DEBD4 8D2A0000 */  lw          $t2, 0x0($t1)
/* 0039D8 801DEBD8 8FA50034 */  lw          $a1, 0x34($sp)
/* 0039DC 801DEBDC 3C08800E */  lui         $t0, %hi(gEntitiesNextPosZArray)
/* 0039E0 801DEBE0 000A5880 */  sll         $t3, $t2, 2
/* 0039E4 801DEBE4 00EB6021 */  addu        $t4, $a3, $t3
/* 0039E8 801DEBE8 C5900000 */  lwc1        $f16, 0x0($t4)
/* 0039EC 801DEBEC 25082950 */  addiu       $t0, $t0, %lo(gEntitiesNextPosZArray)
/* 0039F0 801DEBF0 44806000 */  mtc1        $zero, $f12
/* 0039F4 801DEBF4 E4B00000 */  swc1        $f16, 0x0($a1)
/* 0039F8 801DEBF8 8CCD0000 */  lw          $t5, 0x0($a2)
/* 0039FC 801DEBFC C4A40000 */  lwc1        $f4, 0x0($a1)
/* 003A00 801DEC00 3C04800F */  lui         $a0, %hi(D_800EB320)
/* 003A04 801DEC04 8DAE0000 */  lw          $t6, 0x0($t5)
/* 003A08 801DEC08 2484B320 */  addiu       $a0, $a0, %lo(D_800EB320)
/* 003A0C 801DEC0C 46046001 */  sub.s       $f0, $f12, $f4
/* 003A10 801DEC10 000E7880 */  sll         $t7, $t6, 2
/* 003A14 801DEC14 010FC021 */  addu        $t8, $t0, $t7
/* 003A18 801DEC18 C7120000 */  lwc1        $f18, 0x0($t8)
/* 003A1C 801DEC1C 3C01800E */  lui         $at, %hi(D_800E2090)
/* 003A20 801DEC20 44802000 */  mtc1        $zero, $f4
/* 003A24 801DEC24 E4B20008 */  swc1        $f18, 0x8($a1)
/* 003A28 801DEC28 8CC30000 */  lw          $v1, 0x0($a2)
/* 003A2C 801DEC2C C4A60008 */  lwc1        $f6, 0x8($a1)
/* 003A30 801DEC30 8C620000 */  lw          $v0, 0x0($v1)
/* 003A34 801DEC34 46066081 */  sub.s       $f2, $f12, $f6
/* 003A38 801DEC38 C7A60030 */  lwc1        $f6, 0x30($sp)
/* 003A3C 801DEC3C 00021080 */  sll         $v0, $v0, 2
/* 003A40 801DEC40 0082C821 */  addu        $t9, $a0, $v0
/* 003A44 801DEC44 C7280000 */  lwc1        $f8, 0x0($t9)
/* 003A48 801DEC48 00220821 */  addu        $at, $at, $v0
/* 003A4C 801DEC4C 46004282 */  mul.s       $f10, $f8, $f0
/* 003A50 801DEC50 C7A80018 */  lwc1        $f8, 0x18($sp)
/* 003A54 801DEC54 E42A2090 */  swc1        $f10, %lo(D_800E2090)($at)
/* 003A58 801DEC58 8C620000 */  lw          $v0, 0x0($v1)
/* 003A5C 801DEC5C 3C01800E */  lui         $at, %hi(D_800E2410)
/* 003A60 801DEC60 00021080 */  sll         $v0, $v0, 2
/* 003A64 801DEC64 00824821 */  addu        $t1, $a0, $v0
/* 003A68 801DEC68 C5300000 */  lwc1        $f16, 0x0($t1)
/* 003A6C 801DEC6C 00220821 */  addu        $at, $at, $v0
/* 003A70 801DEC70 46028482 */  mul.s       $f18, $f16, $f2
/* 003A74 801DEC74 E4322410 */  swc1        $f18, %lo(D_800E2410)($at)
/* 003A78 801DEC78 8C6A0000 */  lw          $t2, 0x0($v1)
/* 003A7C 801DEC7C 3C01800E */  lui         $at, %hi(D_800E2250)
/* 003A80 801DEC80 000A5880 */  sll         $t3, $t2, 2
/* 003A84 801DEC84 002B0821 */  addu        $at, $at, $t3
/* 003A88 801DEC88 E4242250 */  swc1        $f4, %lo(D_800E2250)($at)
/* 003A8C 801DEC8C 8C6C0000 */  lw          $t4, 0x0($v1)
/* 003A90 801DEC90 3C01800E */  lui         $at, %hi(D_800E6BD0)
/* 003A94 801DEC94 000C6880 */  sll         $t5, $t4, 2
/* 003A98 801DEC98 002D0821 */  addu        $at, $at, $t5
/* 003A9C 801DEC9C E4266BD0 */  swc1        $f6, %lo(D_800E6BD0)($at)
/* 003AA0 801DECA0 8C6E0000 */  lw          $t6, 0x0($v1)
/* 003AA4 801DECA4 000E7880 */  sll         $t7, $t6, 2
/* 003AA8 801DECA8 00EFC021 */  addu        $t8, $a3, $t7
/* 003AAC 801DECAC E7080000 */  swc1        $f8, 0x0($t8)
/* 003AB0 801DECB0 8C790000 */  lw          $t9, 0x0($v1)
/* 003AB4 801DECB4 C7AA0020 */  lwc1        $f10, 0x20($sp)
/* 003AB8 801DECB8 00194880 */  sll         $t1, $t9, 2
/* 003ABC 801DECBC 01095021 */  addu        $t2, $t0, $t1
/* 003AC0 801DECC0 E54A0000 */  swc1        $f10, 0x0($t2)
/* 003AC4 801DECC4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 003AC8 801DECC8 27BD0038 */  addiu       $sp, $sp, 0x38
/* 003ACC 801DECCC 03E00008 */  jr          $ra
/* 003AD0 801DECD0 00000000 */   nop
.type func_801DEB1C_ovl12, @function
.size func_801DEB1C_ovl12, . - func_801DEB1C_ovl12
