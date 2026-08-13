nonmatching func_801DEB1C_ovl12, 0x1B8

glabel func_801DEB1C_ovl12
    /* 1EEE5C 801DEB1C 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 1EEE60 801DEB20 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 1EEE64 801DEB24 8CC30000 */  lw         $v1, 0x0($a2)
    /* 1EEE68 801DEB28 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 1EEE6C 801DEB2C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EEE70 801DEB30 8C620000 */  lw         $v0, 0x0($v1)
    /* 1EEE74 801DEB34 3C07800E */  lui        $a3, %hi(D_800E5F90)
    /* 1EEE78 801DEB38 24E75F90 */  addiu      $a3, $a3, %lo(D_800E5F90)
    /* 1EEE7C 801DEB3C 8CEE0000 */  lw         $t6, 0x0($a3)
    /* 1EEE80 801DEB40 3C05800E */  lui        $a1, %hi(D_800E1B50)
    /* 1EEE84 801DEB44 00021080 */  sll        $v0, $v0, 2
    /* 1EEE88 801DEB48 00A22821 */  addu       $a1, $a1, $v0
    /* 1EEE8C 801DEB4C 8CA51B50 */  lw         $a1, %lo(D_800E1B50)($a1)
    /* 1EEE90 801DEB50 00E27821 */  addu       $t7, $a3, $v0
    /* 1EEE94 801DEB54 ADEE0000 */  sw         $t6, 0x0($t7)
    /* 1EEE98 801DEB58 8C780000 */  lw         $t8, 0x0($v1)
    /* 1EEE9C 801DEB5C 3C013F40 */  lui        $at, (0x3F400000 >> 16)
    /* 1EEEA0 801DEB60 44812000 */  mtc1       $at, $f4
    /* 1EEEA4 801DEB64 3C01800F */  lui        $at, %hi(D_800EB320)
    /* 1EEEA8 801DEB68 0018C880 */  sll        $t9, $t8, 2
    /* 1EEEAC 801DEB6C 00390821 */  addu       $at, $at, $t9
    /* 1EEEB0 801DEB70 E424B320 */  swc1       $f4, %lo(D_800EB320)($at)
    /* 1EEEB4 801DEB74 8C620000 */  lw         $v0, 0x0($v1)
    /* 1EEEB8 801DEB78 3C01800E */  lui        $at, %hi(D_800E6BD0)
    /* 1EEEBC 801DEB7C 3C04800E */  lui        $a0, %hi(D_800DE350)
    /* 1EEEC0 801DEB80 00021080 */  sll        $v0, $v0, 2
    /* 1EEEC4 801DEB84 00220821 */  addu       $at, $at, $v0
    /* 1EEEC8 801DEB88 C4266BD0 */  lwc1       $f6, %lo(D_800E6BD0)($at)
    /* 1EEECC 801DEB8C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 1EEED0 801DEB90 00220821 */  addu       $at, $at, $v0
    /* 1EEED4 801DEB94 C42825D0 */  lwc1       $f8, %lo(gEntitiesNextPosXArray)($at)
    /* 1EEED8 801DEB98 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 1EEEDC 801DEB9C 00220821 */  addu       $at, $at, $v0
    /* 1EEEE0 801DEBA0 C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* 1EEEE4 801DEBA4 00822021 */  addu       $a0, $a0, $v0
    /* 1EEEE8 801DEBA8 8C84E350 */  lw         $a0, %lo(D_800DE350)($a0)
    /* 1EEEEC 801DEBAC AFA50034 */  sw         $a1, 0x34($sp)
    /* 1EEEF0 801DEBB0 E7A60030 */  swc1       $f6, 0x30($sp)
    /* 1EEEF4 801DEBB4 E7A80018 */  swc1       $f8, 0x18($sp)
    /* 1EEEF8 801DEBB8 0C03E39B */  jal        func_800F8E6C
    /* 1EEEFC 801DEBBC E7AA0020 */   swc1      $f10, 0x20($sp)
    /* 1EEF00 801DEBC0 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 1EEF04 801DEBC4 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 1EEF08 801DEBC8 8CC90000 */  lw         $t1, 0x0($a2)
    /* 1EEF0C 801DEBCC 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
    /* 1EEF10 801DEBD0 24E725D0 */  addiu      $a3, $a3, %lo(gEntitiesNextPosXArray)
    /* 1EEF14 801DEBD4 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 1EEF18 801DEBD8 8FA50034 */  lw         $a1, 0x34($sp)
    /* 1EEF1C 801DEBDC 3C08800E */  lui        $t0, %hi(gEntitiesNextPosZArray)
    /* 1EEF20 801DEBE0 000A5880 */  sll        $t3, $t2, 2
    /* 1EEF24 801DEBE4 00EB6021 */  addu       $t4, $a3, $t3
    /* 1EEF28 801DEBE8 C5900000 */  lwc1       $f16, 0x0($t4)
    /* 1EEF2C 801DEBEC 25082950 */  addiu      $t0, $t0, %lo(gEntitiesNextPosZArray)
    /* 1EEF30 801DEBF0 44806000 */  mtc1       $zero, $f12
    /* 1EEF34 801DEBF4 E4B00000 */  swc1       $f16, 0x0($a1)
    /* 1EEF38 801DEBF8 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 1EEF3C 801DEBFC C4A40000 */  lwc1       $f4, 0x0($a1)
    /* 1EEF40 801DEC00 3C04800F */  lui        $a0, %hi(D_800EB320)
    /* 1EEF44 801DEC04 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 1EEF48 801DEC08 2484B320 */  addiu      $a0, $a0, %lo(D_800EB320)
    /* 1EEF4C 801DEC0C 46046001 */  sub.s      $f0, $f12, $f4
    /* 1EEF50 801DEC10 000E7880 */  sll        $t7, $t6, 2
    /* 1EEF54 801DEC14 010FC021 */  addu       $t8, $t0, $t7
    /* 1EEF58 801DEC18 C7120000 */  lwc1       $f18, 0x0($t8)
    /* 1EEF5C 801DEC1C 3C01800E */  lui        $at, %hi(D_800E2090)
    /* 1EEF60 801DEC20 44802000 */  mtc1       $zero, $f4
    /* 1EEF64 801DEC24 E4B20008 */  swc1       $f18, 0x8($a1)
    /* 1EEF68 801DEC28 8CC30000 */  lw         $v1, 0x0($a2)
    /* 1EEF6C 801DEC2C C4A60008 */  lwc1       $f6, 0x8($a1)
    /* 1EEF70 801DEC30 8C620000 */  lw         $v0, 0x0($v1)
    /* 1EEF74 801DEC34 46066081 */  sub.s      $f2, $f12, $f6
    /* 1EEF78 801DEC38 C7A60030 */  lwc1       $f6, 0x30($sp)
    /* 1EEF7C 801DEC3C 00021080 */  sll        $v0, $v0, 2
    /* 1EEF80 801DEC40 0082C821 */  addu       $t9, $a0, $v0
    /* 1EEF84 801DEC44 C7280000 */  lwc1       $f8, 0x0($t9)
    /* 1EEF88 801DEC48 00220821 */  addu       $at, $at, $v0
    /* 1EEF8C 801DEC4C 46004282 */  mul.s      $f10, $f8, $f0
    /* 1EEF90 801DEC50 C7A80018 */  lwc1       $f8, 0x18($sp)
    /* 1EEF94 801DEC54 E42A2090 */  swc1       $f10, %lo(D_800E2090)($at)
    /* 1EEF98 801DEC58 8C620000 */  lw         $v0, 0x0($v1)
    /* 1EEF9C 801DEC5C 3C01800E */  lui        $at, %hi(D_800E2410)
    /* 1EEFA0 801DEC60 00021080 */  sll        $v0, $v0, 2
    /* 1EEFA4 801DEC64 00824821 */  addu       $t1, $a0, $v0
    /* 1EEFA8 801DEC68 C5300000 */  lwc1       $f16, 0x0($t1)
    /* 1EEFAC 801DEC6C 00220821 */  addu       $at, $at, $v0
    /* 1EEFB0 801DEC70 46028482 */  mul.s      $f18, $f16, $f2
    /* 1EEFB4 801DEC74 E4322410 */  swc1       $f18, %lo(D_800E2410)($at)
    /* 1EEFB8 801DEC78 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 1EEFBC 801DEC7C 3C01800E */  lui        $at, %hi(D_800E2250)
    /* 1EEFC0 801DEC80 000A5880 */  sll        $t3, $t2, 2
    /* 1EEFC4 801DEC84 002B0821 */  addu       $at, $at, $t3
    /* 1EEFC8 801DEC88 E4242250 */  swc1       $f4, %lo(D_800E2250)($at)
    /* 1EEFCC 801DEC8C 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 1EEFD0 801DEC90 3C01800E */  lui        $at, %hi(D_800E6BD0)
    /* 1EEFD4 801DEC94 000C6880 */  sll        $t5, $t4, 2
    /* 1EEFD8 801DEC98 002D0821 */  addu       $at, $at, $t5
    /* 1EEFDC 801DEC9C E4266BD0 */  swc1       $f6, %lo(D_800E6BD0)($at)
    /* 1EEFE0 801DECA0 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 1EEFE4 801DECA4 000E7880 */  sll        $t7, $t6, 2
    /* 1EEFE8 801DECA8 00EFC021 */  addu       $t8, $a3, $t7
    /* 1EEFEC 801DECAC E7080000 */  swc1       $f8, 0x0($t8)
    /* 1EEFF0 801DECB0 8C790000 */  lw         $t9, 0x0($v1)
    /* 1EEFF4 801DECB4 C7AA0020 */  lwc1       $f10, 0x20($sp)
    /* 1EEFF8 801DECB8 00194880 */  sll        $t1, $t9, 2
    /* 1EEFFC 801DECBC 01095021 */  addu       $t2, $t0, $t1
    /* 1EF000 801DECC0 E54A0000 */  swc1       $f10, 0x0($t2)
    /* 1EF004 801DECC4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1EF008 801DECC8 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 1EF00C 801DECCC 03E00008 */  jr         $ra
    /* 1EF010 801DECD0 00000000 */   nop
endlabel func_801DEB1C_ovl12
.size func_801DEB1C_ovl12, . - func_801DEB1C_ovl12
