nonmatching func_8015DA24_ovl5, 0x5A4

glabel func_8015DA24_ovl5
    /* 104E94 8015DA24 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 104E98 8015DA28 3C188019 */  lui        $t8, %hi(D_8018E1E8_ovl5)
    /* 104E9C 8015DA2C 2718E1E8 */  addiu      $t8, $t8, %lo(D_8018E1E8_ovl5)
    /* 104EA0 8015DA30 000578C0 */  sll        $t7, $a1, 3
    /* 104EA4 8015DA34 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 104EA8 8015DA38 AFB40030 */  sw         $s4, 0x30($sp)
    /* 104EAC 8015DA3C AFB3002C */  sw         $s3, 0x2C($sp)
    /* 104EB0 8015DA40 AFB20028 */  sw         $s2, 0x28($sp)
    /* 104EB4 8015DA44 AFB10024 */  sw         $s1, 0x24($sp)
    /* 104EB8 8015DA48 AFB00020 */  sw         $s0, 0x20($sp)
    /* 104EBC 8015DA4C AFA40060 */  sw         $a0, 0x60($sp)
    /* 104EC0 8015DA50 01F8C821 */  addu       $t9, $t7, $t8
    /* 104EC4 8015DA54 8F290000 */  lw         $t1, 0x0($t9)
    /* 104EC8 8015DA58 27AE0058 */  addiu      $t6, $sp, 0x58
    /* 104ECC 8015DA5C 3C128005 */  lui        $s2, %hi(omCurrentObj)
    /* 104ED0 8015DA60 ADC90000 */  sw         $t1, 0x0($t6)
    /* 104ED4 8015DA64 8F280004 */  lw         $t0, 0x4($t9)
    /* 104ED8 8015DA68 2652A7C4 */  addiu      $s2, $s2, %lo(omCurrentObj)
    /* 104EDC 8015DA6C 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 104EE0 8015DA70 ADC80004 */  sw         $t0, 0x4($t6)
    /* 104EE4 8015DA74 8E420000 */  lw         $v0, 0x0($s2)
    /* 104EE8 8015DA78 8FAE0058 */  lw         $t6, 0x58($sp)
    /* 104EEC 8015DA7C 3C108018 */  lui        $s0, %hi(D_801867CC_ovl5)
    /* 104EF0 8015DA80 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 104EF4 8015DA84 261067CC */  addiu      $s0, $s0, %lo(D_801867CC_ovl5)
    /* 104EF8 8015DA88 000EC8C0 */  sll        $t9, $t6, 3
    /* 104EFC 8015DA8C 000A5880 */  sll        $t3, $t2, 2
    /* 104F00 8015DA90 002B0821 */  addu       $at, $at, $t3
    /* 104F04 8015DA94 AC20F150 */  sw         $zero, %lo(D_800DF150)($at)
    /* 104F08 8015DA98 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 104F0C 8015DA9C 3C01800F */  lui        $at, %hi(D_800E9FE0)
    /* 104F10 8015DAA0 02194021 */  addu       $t0, $s0, $t9
    /* 104F14 8015DAA4 000C6880 */  sll        $t5, $t4, 2
    /* 104F18 8015DAA8 002D0821 */  addu       $at, $at, $t5
    /* 104F1C 8015DAAC AC209FE0 */  sw         $zero, %lo(D_800E9FE0)($at)
    /* 104F20 8015DAB0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 104F24 8015DAB4 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 104F28 8015DAB8 00A08825 */  or         $s1, $a1, $zero
    /* 104F2C 8015DABC 000FC080 */  sll        $t8, $t7, 2
    /* 104F30 8015DAC0 00380821 */  addu       $at, $at, $t8
    /* 104F34 8015DAC4 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
    /* 104F38 8015DAC8 0C02A806 */  jal        func_800AA018
    /* 104F3C 8015DACC 8D040000 */   lw        $a0, 0x0($t0)
    /* 104F40 8015DAD0 8FA90058 */  lw         $t1, 0x58($sp)
    /* 104F44 8015DAD4 000950C0 */  sll        $t2, $t1, 3
    /* 104F48 8015DAD8 020A5821 */  addu       $t3, $s0, $t2
    /* 104F4C 8015DADC 0C02A806 */  jal        func_800AA018
    /* 104F50 8015DAE0 8D640004 */   lw        $a0, 0x4($t3)
    /* 104F54 8015DAE4 0C02BC8C */  jal        func_800AF230
    /* 104F58 8015DAE8 00000000 */   nop
    /* 104F5C 8015DAEC 14400010 */  bnez       $v0, .L8015DB30_ovl5
    /* 104F60 8015DAF0 3C14800F */   lui       $s4, %hi(D_800EA520)
    /* 104F64 8015DAF4 2694A520 */  addiu      $s4, $s4, %lo(D_800EA520)
    /* 104F68 8015DAF8 24100008 */  addiu      $s0, $zero, 0x8
  .L8015DAFC_ovl5:
    /* 104F6C 8015DAFC 0C002DAF */  jal        ohSleep
    /* 104F70 8015DB00 24040001 */   addiu     $a0, $zero, 0x1
    /* 104F74 8015DB04 8E4C0000 */  lw         $t4, 0x0($s2)
    /* 104F78 8015DB08 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 104F7C 8015DB0C 000D7880 */  sll        $t7, $t5, 2
    /* 104F80 8015DB10 028FC021 */  addu       $t8, $s4, $t7
    /* 104F84 8015DB14 8F0E0000 */  lw         $t6, 0x0($t8)
    /* 104F88 8015DB18 560E0124 */  bnel       $s0, $t6, .L8015DFAC_ovl5
    /* 104F8C 8015DB1C 8FBF0034 */   lw        $ra, 0x34($sp)
    /* 104F90 8015DB20 0C02BC8C */  jal        func_800AF230
    /* 104F94 8015DB24 00000000 */   nop
    /* 104F98 8015DB28 1040FFF4 */  beqz       $v0, .L8015DAFC_ovl5
    /* 104F9C 8015DB2C 00000000 */   nop
  .L8015DB30_ovl5:
    /* 104FA0 8015DB30 8E480000 */  lw         $t0, 0x0($s2)
    /* 104FA4 8015DB34 3C14800F */  lui        $s4, %hi(D_800EA520)
    /* 104FA8 8015DB38 2694A520 */  addiu      $s4, $s4, %lo(D_800EA520)
    /* 104FAC 8015DB3C 8D090000 */  lw         $t1, 0x0($t0)
    /* 104FB0 8015DB40 24190009 */  addiu      $t9, $zero, 0x9
    /* 104FB4 8015DB44 3C0C8019 */  lui        $t4, %hi(D_8018E224_ovl5)
    /* 104FB8 8015DB48 00095080 */  sll        $t2, $t1, 2
    /* 104FBC 8015DB4C 028A5821 */  addu       $t3, $s4, $t2
    /* 104FC0 8015DB50 AD790000 */  sw         $t9, 0x0($t3)
    /* 104FC4 8015DB54 01916021 */  addu       $t4, $t4, $s1
    /* 104FC8 8015DB58 918CE224 */  lbu        $t4, %lo(D_8018E224_ovl5)($t4)
    /* 104FCC 8015DB5C 24010004 */  addiu      $at, $zero, 0x4
    /* 104FD0 8015DB60 00008025 */  or         $s0, $zero, $zero
    /* 104FD4 8015DB64 1581001A */  bne        $t4, $at, .L8015DBD0_ovl5
    /* 104FD8 8015DB68 00115080 */   sll       $t2, $s1, 2
    /* 104FDC 8015DB6C 2413000A */  addiu      $s3, $zero, 0xA
    /* 104FE0 8015DB70 02330019 */  multu      $s1, $s3
    /* 104FE4 8015DB74 3C0F8005 */  lui        $t7, %hi(gPlayerControllers)
    /* 104FE8 8015DB78 25EF8F20 */  addiu      $t7, $t7, %lo(gPlayerControllers)
    /* 104FEC 8015DB7C 2411001E */  addiu      $s1, $zero, 0x1E
    /* 104FF0 8015DB80 00006812 */  mflo       $t5
    /* 104FF4 8015DB84 01AF1021 */  addu       $v0, $t5, $t7
    /* 104FF8 8015DB88 94580000 */  lhu        $t8, 0x0($v0)
    /* 104FFC 8015DB8C 330E0400 */  andi       $t6, $t8, 0x400
    /* 105000 8015DB90 11C0000B */  beqz       $t6, .L8015DBC0_ovl5
    /* 105004 8015DB94 26100001 */   addiu     $s0, $s0, 0x1
  .L8015DB98_ovl5:
    /* 105008 8015DB98 24040001 */  addiu      $a0, $zero, 0x1
    /* 10500C 8015DB9C 0C002DAF */  jal        ohSleep
    /* 105010 8015DBA0 AFA20040 */   sw        $v0, 0x40($sp)
    /* 105014 8015DBA4 8FA20040 */  lw         $v0, 0x40($sp)
    /* 105018 8015DBA8 94480000 */  lhu        $t0, 0x0($v0)
    /* 10501C 8015DBAC 31090400 */  andi       $t1, $t0, 0x400
    /* 105020 8015DBB0 51200004 */  beql       $t1, $zero, .L8015DBC4_ovl5
    /* 105024 8015DBB4 8E420000 */   lw        $v0, 0x0($s2)
    /* 105028 8015DBB8 5611FFF7 */  bnel       $s0, $s1, .L8015DB98_ovl5
    /* 10502C 8015DBBC 26100001 */   addiu     $s0, $s0, 0x1
  .L8015DBC0_ovl5:
    /* 105030 8015DBC0 8E420000 */  lw         $v0, 0x0($s2)
  .L8015DBC4_ovl5:
    /* 105034 8015DBC4 8C430000 */  lw         $v1, 0x0($v0)
    /* 105038 8015DBC8 10000081 */  b          .L8015DDD0_ovl5
    /* 10503C 8015DBCC 00031880 */   sll       $v1, $v1, 2
  .L8015DBD0_ovl5:
    /* 105040 8015DBD0 01515023 */  subu       $t2, $t2, $s1
    /* 105044 8015DBD4 3C198019 */  lui        $t9, %hi(D_8018E228_ovl5)
    /* 105048 8015DBD8 2739E228 */  addiu      $t9, $t9, %lo(D_8018E228_ovl5)
    /* 10504C 8015DBDC 000A5080 */  sll        $t2, $t2, 2
    /* 105050 8015DBE0 01598021 */  addu       $s0, $t2, $t9
    /* 105054 8015DBE4 0C058678 */  jal        func_801619E0_ovl5
    /* 105058 8015DBE8 92040006 */   lbu       $a0, 0x6($s0)
    /* 10505C 8015DBEC 8E4B0000 */  lw         $t3, 0x0($s2)
    /* 105060 8015DBF0 3C11800E */  lui        $s1, %hi(gEntitiesNextPosXArray)
    /* 105064 8015DBF4 263125D0 */  addiu      $s1, $s1, %lo(gEntitiesNextPosXArray)
    /* 105068 8015DBF8 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 10506C 8015DBFC 000C6880 */  sll        $t5, $t4, 2
    /* 105070 8015DC00 022D7821 */  addu       $t7, $s1, $t5
    /* 105074 8015DC04 C5E40000 */  lwc1       $f4, 0x0($t7)
    /* 105078 8015DC08 4600203C */  c.lt.s     $f4, $f0
    /* 10507C 8015DC0C 00000000 */  nop
    /* 105080 8015DC10 4500000B */  bc1f       .L8015DC40_ovl5
    /* 105084 8015DC14 00000000 */   nop
    /* 105088 8015DC18 0C058678 */  jal        func_801619E0_ovl5
    /* 10508C 8015DC1C 92040006 */   lbu       $a0, 0x6($s0)
    /* 105090 8015DC20 8E420000 */  lw         $v0, 0x0($s2)
    /* 105094 8015DC24 8C430000 */  lw         $v1, 0x0($v0)
    /* 105098 8015DC28 00031880 */  sll        $v1, $v1, 2
    /* 10509C 8015DC2C 0223C021 */  addu       $t8, $s1, $v1
    /* 1050A0 8015DC30 C7060000 */  lwc1       $f6, 0x0($t8)
    /* 1050A4 8015DC34 46003081 */  sub.s      $f2, $f6, $f0
    /* 1050A8 8015DC38 10000009 */  b          .L8015DC60_ovl5
    /* 1050AC 8015DC3C 46001087 */   neg.s     $f2, $f2
  .L8015DC40_ovl5:
    /* 1050B0 8015DC40 0C058678 */  jal        func_801619E0_ovl5
    /* 1050B4 8015DC44 92040006 */   lbu       $a0, 0x6($s0)
    /* 1050B8 8015DC48 8E420000 */  lw         $v0, 0x0($s2)
    /* 1050BC 8015DC4C 8C430000 */  lw         $v1, 0x0($v0)
    /* 1050C0 8015DC50 00031880 */  sll        $v1, $v1, 2
    /* 1050C4 8015DC54 02237021 */  addu       $t6, $s1, $v1
    /* 1050C8 8015DC58 C5C80000 */  lwc1       $f8, 0x0($t6)
    /* 1050CC 8015DC5C 46004081 */  sub.s      $f2, $f8, $f0
  .L8015DC60_ovl5:
    /* 1050D0 8015DC60 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
    /* 1050D4 8015DC64 44815000 */  mtc1       $at, $f10
    /* 1050D8 8015DC68 00000000 */  nop
    /* 1050DC 8015DC6C 460A103C */  c.lt.s     $f2, $f10
    /* 1050E0 8015DC70 00000000 */  nop
    /* 1050E4 8015DC74 45020057 */  bc1fl      .L8015DDD4_ovl5
    /* 1050E8 8015DC78 2413000A */   addiu     $s3, $zero, 0xA
    /* 1050EC 8015DC7C 92080006 */  lbu        $t0, 0x6($s0)
    /* 1050F0 8015DC80 3C0A8019 */  lui        $t2, %hi(D_8018E050_ovl5)
    /* 1050F4 8015DC84 3C0143AF */  lui        $at, (0x43AF0000 >> 16)
    /* 1050F8 8015DC88 00084880 */  sll        $t1, $t0, 2
    /* 1050FC 8015DC8C 01495021 */  addu       $t2, $t2, $t1
    /* 105100 8015DC90 8D4AE050 */  lw         $t2, %lo(D_8018E050_ovl5)($t2)
    /* 105104 8015DC94 44818000 */  mtc1       $at, $f16
    /* 105108 8015DC98 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 10510C 8015DC9C 000AC880 */  sll        $t9, $t2, 2
    /* 105110 8015DCA0 00390821 */  addu       $at, $at, $t9
    /* 105114 8015DCA4 C4322790 */  lwc1       $f18, %lo(gEntitiesNextPosYArray)($at)
    /* 105118 8015DCA8 4612803C */  c.lt.s     $f16, $f18
    /* 10511C 8015DCAC 00000000 */  nop
    /* 105120 8015DCB0 45020048 */  bc1fl      .L8015DDD4_ovl5
    /* 105124 8015DCB4 2413000A */   addiu     $s3, $zero, 0xA
  .L8015DCB8_ovl5:
    /* 105128 8015DCB8 0C006291 */  jal        random_soft_s32_range
    /* 10512C 8015DCBC 24040010 */   addiu     $a0, $zero, 0x10
    /* 105130 8015DCC0 3C0B8019 */  lui        $t3, %hi(D_8018E258_ovl5)
    /* 105134 8015DCC4 916BE258 */  lbu        $t3, %lo(D_8018E258_ovl5)($t3)
    /* 105138 8015DCC8 3C0D8018 */  lui        $t5, %hi(D_8018691D_ovl5)
    /* 10513C 8015DCCC 000B6080 */  sll        $t4, $t3, 2
    /* 105140 8015DCD0 018B6023 */  subu       $t4, $t4, $t3
    /* 105144 8015DCD4 000C6040 */  sll        $t4, $t4, 1
    /* 105148 8015DCD8 01AC6821 */  addu       $t5, $t5, $t4
    /* 10514C 8015DCDC 91AD691D */  lbu        $t5, %lo(D_8018691D_ovl5)($t5)
    /* 105150 8015DCE0 004D082A */  slt        $at, $v0, $t5
    /* 105154 8015DCE4 10200005 */  beqz       $at, .L8015DCFC_ovl5
    /* 105158 8015DCE8 00000000 */   nop
    /* 10515C 8015DCEC 8E420000 */  lw         $v0, 0x0($s2)
    /* 105160 8015DCF0 8C430000 */  lw         $v1, 0x0($v0)
    /* 105164 8015DCF4 10000036 */  b          .L8015DDD0_ovl5
    /* 105168 8015DCF8 00031880 */   sll       $v1, $v1, 2
  .L8015DCFC_ovl5:
    /* 10516C 8015DCFC 0C002DAF */  jal        ohSleep
    /* 105170 8015DD00 24040001 */   addiu     $a0, $zero, 0x1
    /* 105174 8015DD04 0C058678 */  jal        func_801619E0_ovl5
    /* 105178 8015DD08 92040006 */   lbu       $a0, 0x6($s0)
    /* 10517C 8015DD0C 8E4F0000 */  lw         $t7, 0x0($s2)
    /* 105180 8015DD10 8DF80000 */  lw         $t8, 0x0($t7)
    /* 105184 8015DD14 00187080 */  sll        $t6, $t8, 2
    /* 105188 8015DD18 022E4021 */  addu       $t0, $s1, $t6
    /* 10518C 8015DD1C C5040000 */  lwc1       $f4, 0x0($t0)
    /* 105190 8015DD20 4600203C */  c.lt.s     $f4, $f0
    /* 105194 8015DD24 00000000 */  nop
    /* 105198 8015DD28 4500000B */  bc1f       .L8015DD58_ovl5
    /* 10519C 8015DD2C 00000000 */   nop
    /* 1051A0 8015DD30 0C058678 */  jal        func_801619E0_ovl5
    /* 1051A4 8015DD34 92040006 */   lbu       $a0, 0x6($s0)
    /* 1051A8 8015DD38 8E420000 */  lw         $v0, 0x0($s2)
    /* 1051AC 8015DD3C 8C430000 */  lw         $v1, 0x0($v0)
    /* 1051B0 8015DD40 00031880 */  sll        $v1, $v1, 2
    /* 1051B4 8015DD44 02234821 */  addu       $t1, $s1, $v1
    /* 1051B8 8015DD48 C5260000 */  lwc1       $f6, 0x0($t1)
    /* 1051BC 8015DD4C 46003081 */  sub.s      $f2, $f6, $f0
    /* 1051C0 8015DD50 10000009 */  b          .L8015DD78_ovl5
    /* 1051C4 8015DD54 46001087 */   neg.s     $f2, $f2
  .L8015DD58_ovl5:
    /* 1051C8 8015DD58 0C058678 */  jal        func_801619E0_ovl5
    /* 1051CC 8015DD5C 92040006 */   lbu       $a0, 0x6($s0)
    /* 1051D0 8015DD60 8E420000 */  lw         $v0, 0x0($s2)
    /* 1051D4 8015DD64 8C430000 */  lw         $v1, 0x0($v0)
    /* 1051D8 8015DD68 00031880 */  sll        $v1, $v1, 2
    /* 1051DC 8015DD6C 02235021 */  addu       $t2, $s1, $v1
    /* 1051E0 8015DD70 C5480000 */  lwc1       $f8, 0x0($t2)
    /* 1051E4 8015DD74 46004081 */  sub.s      $f2, $f8, $f0
  .L8015DD78_ovl5:
    /* 1051E8 8015DD78 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
    /* 1051EC 8015DD7C 44815000 */  mtc1       $at, $f10
    /* 1051F0 8015DD80 00000000 */  nop
    /* 1051F4 8015DD84 460A103C */  c.lt.s     $f2, $f10
    /* 1051F8 8015DD88 00000000 */  nop
    /* 1051FC 8015DD8C 45020011 */  bc1fl      .L8015DDD4_ovl5
    /* 105200 8015DD90 2413000A */   addiu     $s3, $zero, 0xA
    /* 105204 8015DD94 92190006 */  lbu        $t9, 0x6($s0)
    /* 105208 8015DD98 3C0C8019 */  lui        $t4, %hi(D_8018E050_ovl5)
    /* 10520C 8015DD9C 3C0143AF */  lui        $at, (0x43AF0000 >> 16)
    /* 105210 8015DDA0 00195880 */  sll        $t3, $t9, 2
    /* 105214 8015DDA4 018B6021 */  addu       $t4, $t4, $t3
    /* 105218 8015DDA8 8D8CE050 */  lw         $t4, %lo(D_8018E050_ovl5)($t4)
    /* 10521C 8015DDAC 44818000 */  mtc1       $at, $f16
    /* 105220 8015DDB0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 105224 8015DDB4 000C6880 */  sll        $t5, $t4, 2
    /* 105228 8015DDB8 002D0821 */  addu       $at, $at, $t5
    /* 10522C 8015DDBC C4322790 */  lwc1       $f18, %lo(gEntitiesNextPosYArray)($at)
    /* 105230 8015DDC0 4612803C */  c.lt.s     $f16, $f18
    /* 105234 8015DDC4 00000000 */  nop
    /* 105238 8015DDC8 4501FFBB */  bc1t       .L8015DCB8_ovl5
    /* 10523C 8015DDCC 00000000 */   nop
  .L8015DDD0_ovl5:
    /* 105240 8015DDD0 2413000A */  addiu      $s3, $zero, 0xA
  .L8015DDD4_ovl5:
    /* 105244 8015DDD4 02837821 */  addu       $t7, $s4, $v1
    /* 105248 8015DDD8 ADF30000 */  sw         $s3, 0x0($t7)
    /* 10524C 8015DDDC 8FB80058 */  lw         $t8, 0x58($sp)
    /* 105250 8015DDE0 8FAE0058 */  lw         $t6, 0x58($sp)
    /* 105254 8015DDE4 24010002 */  addiu      $at, $zero, 0x2
    /* 105258 8015DDE8 13000003 */  beqz       $t8, .L8015DDF8_ovl5
    /* 10525C 8015DDEC 000E40C0 */   sll       $t0, $t6, 3
    /* 105260 8015DDF0 1701001E */  bne        $t8, $at, .L8015DE6C_ovl5
    /* 105264 8015DDF4 3C10800E */   lui       $s0, %hi(D_800DE350)
  .L8015DDF8_ovl5:
    /* 105268 8015DDF8 3C108018 */  lui        $s0, %hi(D_801867EC_ovl5)
    /* 10526C 8015DDFC 261067EC */  addiu      $s0, $s0, %lo(D_801867EC_ovl5)
    /* 105270 8015DE00 02084821 */  addu       $t1, $s0, $t0
    /* 105274 8015DE04 0C02A806 */  jal        func_800AA018
    /* 105278 8015DE08 8D240000 */   lw        $a0, 0x0($t1)
    /* 10527C 8015DE0C 8FAA0058 */  lw         $t2, 0x58($sp)
    /* 105280 8015DE10 000AC8C0 */  sll        $t9, $t2, 3
    /* 105284 8015DE14 02195821 */  addu       $t3, $s0, $t9
    /* 105288 8015DE18 0C02A806 */  jal        func_800AA018
    /* 10528C 8015DE1C 8D640004 */   lw        $a0, 0x4($t3)
    /* 105290 8015DE20 0C02BC8C */  jal        func_800AF230
    /* 105294 8015DE24 00000000 */   nop
    /* 105298 8015DE28 54400051 */  bnel       $v0, $zero, .L8015DF70_ovl5
    /* 10529C 8015DE2C 8E420000 */   lw        $v0, 0x0($s2)
    /* 1052A0 8015DE30 8E4C0000 */  lw         $t4, 0x0($s2)
  .L8015DE34_ovl5:
    /* 1052A4 8015DE34 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 1052A8 8015DE38 000D7880 */  sll        $t7, $t5, 2
    /* 1052AC 8015DE3C 028FC021 */  addu       $t8, $s4, $t7
    /* 1052B0 8015DE40 8F0E0000 */  lw         $t6, 0x0($t8)
    /* 1052B4 8015DE44 566E0059 */  bnel       $s3, $t6, .L8015DFAC_ovl5
    /* 1052B8 8015DE48 8FBF0034 */   lw        $ra, 0x34($sp)
    /* 1052BC 8015DE4C 0C002DAF */  jal        ohSleep
    /* 1052C0 8015DE50 24040001 */   addiu     $a0, $zero, 0x1
    /* 1052C4 8015DE54 0C02BC8C */  jal        func_800AF230
    /* 1052C8 8015DE58 00000000 */   nop
    /* 1052CC 8015DE5C 5040FFF5 */  beql       $v0, $zero, .L8015DE34_ovl5
    /* 1052D0 8015DE60 8E4C0000 */   lw        $t4, 0x0($s2)
    /* 1052D4 8015DE64 10000042 */  b          .L8015DF70_ovl5
    /* 1052D8 8015DE68 8E420000 */   lw        $v0, 0x0($s2)
  .L8015DE6C_ovl5:
    /* 1052DC 8015DE6C 8C480000 */  lw         $t0, 0x0($v0)
    /* 1052E0 8015DE70 2610E350 */  addiu      $s0, $s0, %lo(D_800DE350)
    /* 1052E4 8015DE74 8FAC0058 */  lw         $t4, 0x58($sp)
    /* 1052E8 8015DE78 00084880 */  sll        $t1, $t0, 2
    /* 1052EC 8015DE7C 02095021 */  addu       $t2, $s0, $t1
    /* 1052F0 8015DE80 8D590000 */  lw         $t9, 0x0($t2)
    /* 1052F4 8015DE84 3C118018 */  lui        $s1, %hi(D_8018664C_ovl5)
    /* 1052F8 8015DE88 2631664C */  addiu      $s1, $s1, %lo(D_8018664C_ovl5)
    /* 1052FC 8015DE8C 8F2B003C */  lw         $t3, 0x3C($t9)
    /* 105300 8015DE90 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* 105304 8015DE94 000C68C0 */  sll        $t5, $t4, 3
    /* 105308 8015DE98 44812000 */  mtc1       $at, $f4
    /* 10530C 8015DE9C 022D7821 */  addu       $t7, $s1, $t5
    /* 105310 8015DEA0 3C078018 */  lui        $a3, %hi(D_8018662C_ovl5)
    /* 105314 8015DEA4 000CC080 */  sll        $t8, $t4, 2
    /* 105318 8015DEA8 00F83821 */  addu       $a3, $a3, $t8
    /* 10531C 8015DEAC 8DE50000 */  lw         $a1, 0x0($t7)
    /* 105320 8015DEB0 8D640010 */  lw         $a0, 0x10($t3)
    /* 105324 8015DEB4 8CE7662C */  lw         $a3, %lo(D_8018662C_ovl5)($a3)
    /* 105328 8015DEB8 24060000 */  addiu      $a2, $zero, 0x0
    /* 10532C 8015DEBC 0C02A927 */  jal        func_800AA49C
    /* 105330 8015DEC0 E7A40010 */   swc1      $f4, 0x10($sp)
    /* 105334 8015DEC4 8E4E0000 */  lw         $t6, 0x0($s2)
    /* 105338 8015DEC8 8DC80000 */  lw         $t0, 0x0($t6)
    /* 10533C 8015DECC 00084880 */  sll        $t1, $t0, 2
    /* 105340 8015DED0 02095021 */  addu       $t2, $s0, $t1
    /* 105344 8015DED4 8D590000 */  lw         $t9, 0x0($t2)
    /* 105348 8015DED8 8F2B003C */  lw         $t3, 0x3C($t9)
    /* 10534C 8015DEDC 0C02A8DA */  jal        func_800AA368
    /* 105350 8015DEE0 8D640010 */   lw        $a0, 0x10($t3)
    /* 105354 8015DEE4 54400015 */  bnel       $v0, $zero, .L8015DF3C_ovl5
    /* 105358 8015DEE8 8FAF0058 */   lw        $t7, 0x58($sp)
    /* 10535C 8015DEEC 8E4D0000 */  lw         $t5, 0x0($s2)
  .L8015DEF0_ovl5:
    /* 105360 8015DEF0 8DAF0000 */  lw         $t7, 0x0($t5)
    /* 105364 8015DEF4 000F6080 */  sll        $t4, $t7, 2
    /* 105368 8015DEF8 028CC021 */  addu       $t8, $s4, $t4
    /* 10536C 8015DEFC 8F0E0000 */  lw         $t6, 0x0($t8)
    /* 105370 8015DF00 566E002A */  bnel       $s3, $t6, .L8015DFAC_ovl5
    /* 105374 8015DF04 8FBF0034 */   lw        $ra, 0x34($sp)
    /* 105378 8015DF08 0C002DAF */  jal        ohSleep
    /* 10537C 8015DF0C 24040001 */   addiu     $a0, $zero, 0x1
    /* 105380 8015DF10 8E480000 */  lw         $t0, 0x0($s2)
    /* 105384 8015DF14 8D090000 */  lw         $t1, 0x0($t0)
    /* 105388 8015DF18 00095080 */  sll        $t2, $t1, 2
    /* 10538C 8015DF1C 020AC821 */  addu       $t9, $s0, $t2
    /* 105390 8015DF20 8F2B0000 */  lw         $t3, 0x0($t9)
    /* 105394 8015DF24 8D6D003C */  lw         $t5, 0x3C($t3)
    /* 105398 8015DF28 0C02A8DA */  jal        func_800AA368
    /* 10539C 8015DF2C 8DA40010 */   lw        $a0, 0x10($t5)
    /* 1053A0 8015DF30 5040FFEF */  beql       $v0, $zero, .L8015DEF0_ovl5
    /* 1053A4 8015DF34 8E4D0000 */   lw        $t5, 0x0($s2)
    /* 1053A8 8015DF38 8FAF0058 */  lw         $t7, 0x58($sp)
  .L8015DF3C_ovl5:
    /* 1053AC 8015DF3C 000F60C0 */  sll        $t4, $t7, 3
    /* 1053B0 8015DF40 022CC021 */  addu       $t8, $s1, $t4
    /* 1053B4 8015DF44 0C02A806 */  jal        func_800AA018
    /* 1053B8 8015DF48 8F040000 */   lw        $a0, 0x0($t8)
    /* 1053BC 8015DF4C 8FAE0058 */  lw         $t6, 0x58($sp)
    /* 1053C0 8015DF50 000E40C0 */  sll        $t0, $t6, 3
    /* 1053C4 8015DF54 02284821 */  addu       $t1, $s1, $t0
    /* 1053C8 8015DF58 8D240004 */  lw         $a0, 0x4($t1)
    /* 1053CC 8015DF5C 50800004 */  beql       $a0, $zero, .L8015DF70_ovl5
    /* 1053D0 8015DF60 8E420000 */   lw        $v0, 0x0($s2)
    /* 1053D4 8015DF64 0C02A806 */  jal        func_800AA018
    /* 1053D8 8015DF68 00000000 */   nop
    /* 1053DC 8015DF6C 8E420000 */  lw         $v0, 0x0($s2)
  .L8015DF70_ovl5:
    /* 1053E0 8015DF70 3C198016 */  lui        $t9, %hi(func_8015E850_ovl5)
    /* 1053E4 8015DF74 2739E850 */  addiu      $t9, $t9, %lo(func_8015E850_ovl5)
    /* 1053E8 8015DF78 8C430000 */  lw         $v1, 0x0($v0)
    /* 1053EC 8015DF7C 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 1053F0 8015DF80 00031880 */  sll        $v1, $v1, 2
    /* 1053F4 8015DF84 02832021 */  addu       $a0, $s4, $v1
    /* 1053F8 8015DF88 8C8A0000 */  lw         $t2, 0x0($a0)
    /* 1053FC 8015DF8C 566A0005 */  bnel       $s3, $t2, .L8015DFA4_ovl5
    /* 105400 8015DF90 00230821 */   addu      $at, $at, $v1
    /* 105404 8015DF94 AC800000 */  sw         $zero, 0x0($a0)
    /* 105408 8015DF98 8C430000 */  lw         $v1, 0x0($v0)
    /* 10540C 8015DF9C 00031880 */  sll        $v1, $v1, 2
    /* 105410 8015DFA0 00230821 */  addu       $at, $at, $v1
  .L8015DFA4_ovl5:
    /* 105414 8015DFA4 AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
    /* 105418 8015DFA8 8FBF0034 */  lw         $ra, 0x34($sp)
  .L8015DFAC_ovl5:
    /* 10541C 8015DFAC 8FB00020 */  lw         $s0, 0x20($sp)
    /* 105420 8015DFB0 8FB10024 */  lw         $s1, 0x24($sp)
    /* 105424 8015DFB4 8FB20028 */  lw         $s2, 0x28($sp)
    /* 105428 8015DFB8 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 10542C 8015DFBC 8FB40030 */  lw         $s4, 0x30($sp)
    /* 105430 8015DFC0 03E00008 */  jr         $ra
    /* 105434 8015DFC4 27BD0060 */   addiu     $sp, $sp, 0x60
endlabel func_8015DA24_ovl5
.size func_8015DA24_ovl5, . - func_8015DA24_ovl5
