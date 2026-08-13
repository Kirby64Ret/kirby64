nonmatching func_8015FB78_ovl5, 0x288

glabel func_8015FB78_ovl5
    /* 106FE8 8015FB78 00047080 */  sll        $t6, $a0, 2
    /* 106FEC 8015FB7C 01C47023 */  subu       $t6, $t6, $a0
    /* 106FF0 8015FB80 000E7080 */  sll        $t6, $t6, 2
    /* 106FF4 8015FB84 3C0F8019 */  lui        $t7, %hi(D_8018E22E_ovl5)
    /* 106FF8 8015FB88 01EE7821 */  addu       $t7, $t7, $t6
    /* 106FFC 8015FB8C 91EFE22E */  lbu        $t7, %lo(D_8018E22E_ovl5)($t7)
    /* 107000 8015FB90 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 107004 8015FB94 3C198019 */  lui        $t9, %hi(D_8018E050_ovl5)
    /* 107008 8015FB98 000FC080 */  sll        $t8, $t7, 2
    /* 10700C 8015FB9C 0338C821 */  addu       $t9, $t9, $t8
    /* 107010 8015FBA0 8F39E050 */  lw         $t9, %lo(D_8018E050_ovl5)($t9)
    /* 107014 8015FBA4 AFB10018 */  sw         $s1, 0x18($sp)
    /* 107018 8015FBA8 AFB00014 */  sw         $s0, 0x14($sp)
    /* 10701C 8015FBAC 00808825 */  or         $s1, $a0, $zero
    /* 107020 8015FBB0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 107024 8015FBB4 00008025 */  or         $s0, $zero, $zero
    /* 107028 8015FBB8 27A30024 */  addiu      $v1, $sp, 0x24
    /* 10702C 8015FBBC AFB9002C */  sw         $t9, 0x2C($sp)
  .L8015FBC0_ovl5:
    /* 107030 8015FBC0 12300009 */  beq        $s1, $s0, .L8015FBE8_ovl5
    /* 107034 8015FBC4 02202025 */   or        $a0, $s1, $zero
    /* 107038 8015FBC8 02002825 */  or         $a1, $s0, $zero
    /* 10703C 8015FBCC 0C0584B4 */  jal        func_801612D0_ovl5
    /* 107040 8015FBD0 AFA30020 */   sw        $v1, 0x20($sp)
    /* 107044 8015FBD4 10400004 */  beqz       $v0, .L8015FBE8_ovl5
    /* 107048 8015FBD8 8FA30020 */   lw        $v1, 0x20($sp)
    /* 10704C 8015FBDC 24080001 */  addiu      $t0, $zero, 0x1
    /* 107050 8015FBE0 10000002 */  b          .L8015FBEC_ovl5
    /* 107054 8015FBE4 A0680000 */   sb        $t0, 0x0($v1)
  .L8015FBE8_ovl5:
    /* 107058 8015FBE8 A0600000 */  sb         $zero, 0x0($v1)
  .L8015FBEC_ovl5:
    /* 10705C 8015FBEC 26100001 */  addiu      $s0, $s0, 0x1
    /* 107060 8015FBF0 2A010004 */  slti       $at, $s0, 0x4
    /* 107064 8015FBF4 1420FFF2 */  bnez       $at, .L8015FBC0_ovl5
    /* 107068 8015FBF8 24630001 */   addiu     $v1, $v1, 0x1
    /* 10706C 8015FBFC 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 107070 8015FC00 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 107074 8015FC04 8FAD002C */  lw         $t5, 0x2C($sp)
    /* 107078 8015FC08 3C02800E */  lui        $v0, %hi(gEntitiesNextPosXArray)
    /* 10707C 8015FC0C 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 107080 8015FC10 244225D0 */  addiu      $v0, $v0, %lo(gEntitiesNextPosXArray)
    /* 107084 8015FC14 000D7080 */  sll        $t6, $t5, 2
    /* 107088 8015FC18 000A5880 */  sll        $t3, $t2, 2
    /* 10708C 8015FC1C 004B6021 */  addu       $t4, $v0, $t3
    /* 107090 8015FC20 004E7821 */  addu       $t7, $v0, $t6
    /* 107094 8015FC24 C5E40000 */  lwc1       $f4, 0x0($t7)
    /* 107098 8015FC28 C5800000 */  lwc1       $f0, 0x0($t4)
    /* 10709C 8015FC2C 93B80024 */  lbu        $t8, 0x24($sp)
    /* 1070A0 8015FC30 93AC0024 */  lbu        $t4, 0x24($sp)
    /* 1070A4 8015FC34 4600203C */  c.lt.s     $f4, $f0
    /* 1070A8 8015FC38 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1070AC 8015FC3C 45000036 */  bc1f       .L8015FD18_ovl5
    /* 1070B0 8015FC40 00000000 */   nop
    /* 1070B4 8015FC44 1300000B */  beqz       $t8, .L8015FC74_ovl5
    /* 1070B8 8015FC48 3C198019 */   lui       $t9, %hi(D_8018E030_ovl5)
    /* 1070BC 8015FC4C 8F39E030 */  lw         $t9, %lo(D_8018E030_ovl5)($t9)
    /* 1070C0 8015FC50 00194080 */  sll        $t0, $t9, 2
    /* 1070C4 8015FC54 00484821 */  addu       $t1, $v0, $t0
    /* 1070C8 8015FC58 C5260000 */  lwc1       $f6, 0x0($t1)
    /* 1070CC 8015FC5C 4606003C */  c.lt.s     $f0, $f6
    /* 1070D0 8015FC60 00000000 */  nop
    /* 1070D4 8015FC64 45020004 */  bc1fl      .L8015FC78_ovl5
    /* 1070D8 8015FC68 93AA0025 */   lbu       $t2, 0x25($sp)
    /* 1070DC 8015FC6C 10000060 */  b          .L8015FDF0_ovl5
    /* 1070E0 8015FC70 24020001 */   addiu     $v0, $zero, 0x1
  .L8015FC74_ovl5:
    /* 1070E4 8015FC74 93AA0025 */  lbu        $t2, 0x25($sp)
  .L8015FC78_ovl5:
    /* 1070E8 8015FC78 3C0B8019 */  lui        $t3, %hi(D_8018E034_ovl5)
    /* 1070EC 8015FC7C 93AE0026 */  lbu        $t6, 0x26($sp)
    /* 1070F0 8015FC80 1140000B */  beqz       $t2, .L8015FCB0_ovl5
    /* 1070F4 8015FC84 00000000 */   nop
    /* 1070F8 8015FC88 8D6BE034 */  lw         $t3, %lo(D_8018E034_ovl5)($t3)
    /* 1070FC 8015FC8C 000B6080 */  sll        $t4, $t3, 2
    /* 107100 8015FC90 004C6821 */  addu       $t5, $v0, $t4
    /* 107104 8015FC94 C5A80000 */  lwc1       $f8, 0x0($t5)
    /* 107108 8015FC98 4608003C */  c.lt.s     $f0, $f8
    /* 10710C 8015FC9C 00000000 */  nop
    /* 107110 8015FCA0 45000003 */  bc1f       .L8015FCB0_ovl5
    /* 107114 8015FCA4 00000000 */   nop
    /* 107118 8015FCA8 10000051 */  b          .L8015FDF0_ovl5
    /* 10711C 8015FCAC 24020001 */   addiu     $v0, $zero, 0x1
  .L8015FCB0_ovl5:
    /* 107120 8015FCB0 11C0000B */  beqz       $t6, .L8015FCE0_ovl5
    /* 107124 8015FCB4 3C0F8019 */   lui       $t7, %hi(D_8018E038_ovl5)
    /* 107128 8015FCB8 8DEFE038 */  lw         $t7, %lo(D_8018E038_ovl5)($t7)
    /* 10712C 8015FCBC 000FC080 */  sll        $t8, $t7, 2
    /* 107130 8015FCC0 0058C821 */  addu       $t9, $v0, $t8
    /* 107134 8015FCC4 C72A0000 */  lwc1       $f10, 0x0($t9)
    /* 107138 8015FCC8 460A003C */  c.lt.s     $f0, $f10
    /* 10713C 8015FCCC 00000000 */  nop
    /* 107140 8015FCD0 45020004 */  bc1fl      .L8015FCE4_ovl5
    /* 107144 8015FCD4 93A80027 */   lbu       $t0, 0x27($sp)
    /* 107148 8015FCD8 10000045 */  b          .L8015FDF0_ovl5
    /* 10714C 8015FCDC 24020001 */   addiu     $v0, $zero, 0x1
  .L8015FCE0_ovl5:
    /* 107150 8015FCE0 93A80027 */  lbu        $t0, 0x27($sp)
  .L8015FCE4_ovl5:
    /* 107154 8015FCE4 3C098019 */  lui        $t1, %hi(D_8018E03C_ovl5)
    /* 107158 8015FCE8 51000041 */  beql       $t0, $zero, .L8015FDF0_ovl5
    /* 10715C 8015FCEC 00001025 */   or        $v0, $zero, $zero
    /* 107160 8015FCF0 8D29E03C */  lw         $t1, %lo(D_8018E03C_ovl5)($t1)
    /* 107164 8015FCF4 00095080 */  sll        $t2, $t1, 2
    /* 107168 8015FCF8 004A5821 */  addu       $t3, $v0, $t2
    /* 10716C 8015FCFC C5700000 */  lwc1       $f16, 0x0($t3)
    /* 107170 8015FD00 4610003C */  c.lt.s     $f0, $f16
    /* 107174 8015FD04 00000000 */  nop
    /* 107178 8015FD08 45020039 */  bc1fl      .L8015FDF0_ovl5
    /* 10717C 8015FD0C 00001025 */   or        $v0, $zero, $zero
    /* 107180 8015FD10 10000037 */  b          .L8015FDF0_ovl5
    /* 107184 8015FD14 24020001 */   addiu     $v0, $zero, 0x1
  .L8015FD18_ovl5:
    /* 107188 8015FD18 1180000B */  beqz       $t4, .L8015FD48_ovl5
    /* 10718C 8015FD1C 3C0D8019 */   lui       $t5, %hi(D_8018E030_ovl5)
    /* 107190 8015FD20 8DADE030 */  lw         $t5, %lo(D_8018E030_ovl5)($t5)
    /* 107194 8015FD24 000D7080 */  sll        $t6, $t5, 2
    /* 107198 8015FD28 004E7821 */  addu       $t7, $v0, $t6
    /* 10719C 8015FD2C C5F20000 */  lwc1       $f18, 0x0($t7)
    /* 1071A0 8015FD30 4600903C */  c.lt.s     $f18, $f0
    /* 1071A4 8015FD34 00000000 */  nop
    /* 1071A8 8015FD38 45020004 */  bc1fl      .L8015FD4C_ovl5
    /* 1071AC 8015FD3C 93B80025 */   lbu       $t8, 0x25($sp)
    /* 1071B0 8015FD40 1000002B */  b          .L8015FDF0_ovl5
    /* 1071B4 8015FD44 24020001 */   addiu     $v0, $zero, 0x1
  .L8015FD48_ovl5:
    /* 1071B8 8015FD48 93B80025 */  lbu        $t8, 0x25($sp)
  .L8015FD4C_ovl5:
    /* 1071BC 8015FD4C 3C198019 */  lui        $t9, %hi(D_8018E034_ovl5)
    /* 1071C0 8015FD50 93AA0026 */  lbu        $t2, 0x26($sp)
    /* 1071C4 8015FD54 1300000B */  beqz       $t8, .L8015FD84_ovl5
    /* 1071C8 8015FD58 00000000 */   nop
    /* 1071CC 8015FD5C 8F39E034 */  lw         $t9, %lo(D_8018E034_ovl5)($t9)
    /* 1071D0 8015FD60 00194080 */  sll        $t0, $t9, 2
    /* 1071D4 8015FD64 00484821 */  addu       $t1, $v0, $t0
    /* 1071D8 8015FD68 C5240000 */  lwc1       $f4, 0x0($t1)
    /* 1071DC 8015FD6C 4600203C */  c.lt.s     $f4, $f0
    /* 1071E0 8015FD70 00000000 */  nop
    /* 1071E4 8015FD74 45000003 */  bc1f       .L8015FD84_ovl5
    /* 1071E8 8015FD78 00000000 */   nop
    /* 1071EC 8015FD7C 1000001C */  b          .L8015FDF0_ovl5
    /* 1071F0 8015FD80 24020001 */   addiu     $v0, $zero, 0x1
  .L8015FD84_ovl5:
    /* 1071F4 8015FD84 1140000B */  beqz       $t2, .L8015FDB4_ovl5
    /* 1071F8 8015FD88 3C0B8019 */   lui       $t3, %hi(D_8018E038_ovl5)
    /* 1071FC 8015FD8C 8D6BE038 */  lw         $t3, %lo(D_8018E038_ovl5)($t3)
    /* 107200 8015FD90 000B6080 */  sll        $t4, $t3, 2
    /* 107204 8015FD94 004C6821 */  addu       $t5, $v0, $t4
    /* 107208 8015FD98 C5A60000 */  lwc1       $f6, 0x0($t5)
    /* 10720C 8015FD9C 4600303C */  c.lt.s     $f6, $f0
    /* 107210 8015FDA0 00000000 */  nop
    /* 107214 8015FDA4 45020004 */  bc1fl      .L8015FDB8_ovl5
    /* 107218 8015FDA8 93AE0027 */   lbu       $t6, 0x27($sp)
    /* 10721C 8015FDAC 10000010 */  b          .L8015FDF0_ovl5
    /* 107220 8015FDB0 24020001 */   addiu     $v0, $zero, 0x1
  .L8015FDB4_ovl5:
    /* 107224 8015FDB4 93AE0027 */  lbu        $t6, 0x27($sp)
  .L8015FDB8_ovl5:
    /* 107228 8015FDB8 3C0F8019 */  lui        $t7, %hi(D_8018E03C_ovl5)
    /* 10722C 8015FDBC 51C0000C */  beql       $t6, $zero, .L8015FDF0_ovl5
    /* 107230 8015FDC0 00001025 */   or        $v0, $zero, $zero
    /* 107234 8015FDC4 8DEFE03C */  lw         $t7, %lo(D_8018E03C_ovl5)($t7)
    /* 107238 8015FDC8 000FC080 */  sll        $t8, $t7, 2
    /* 10723C 8015FDCC 0058C821 */  addu       $t9, $v0, $t8
    /* 107240 8015FDD0 C7280000 */  lwc1       $f8, 0x0($t9)
    /* 107244 8015FDD4 4600403C */  c.lt.s     $f8, $f0
    /* 107248 8015FDD8 00000000 */  nop
    /* 10724C 8015FDDC 45020004 */  bc1fl      .L8015FDF0_ovl5
    /* 107250 8015FDE0 00001025 */   or        $v0, $zero, $zero
    /* 107254 8015FDE4 10000002 */  b          .L8015FDF0_ovl5
    /* 107258 8015FDE8 24020001 */   addiu     $v0, $zero, 0x1
    /* 10725C 8015FDEC 00001025 */  or         $v0, $zero, $zero
  .L8015FDF0_ovl5:
    /* 107260 8015FDF0 8FB00014 */  lw         $s0, 0x14($sp)
    /* 107264 8015FDF4 8FB10018 */  lw         $s1, 0x18($sp)
    /* 107268 8015FDF8 03E00008 */  jr         $ra
    /* 10726C 8015FDFC 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_8015FB78_ovl5
.size func_8015FB78_ovl5, . - func_8015FB78_ovl5
