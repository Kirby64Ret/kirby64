nonmatching func_800F6E30, 0x33C

glabel func_800F6E30
    /* 7F8A0 800F6E30 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 7F8A4 800F6E34 AFB60038 */  sw         $s6, 0x38($sp)
    /* 7F8A8 800F6E38 3C168005 */  lui        $s6, %hi(omCurrentObj)
    /* 7F8AC 800F6E3C 26D6A7C4 */  addiu      $s6, $s6, %lo(omCurrentObj)
    /* 7F8B0 800F6E40 8ECE0000 */  lw         $t6, 0x0($s6)
    /* 7F8B4 800F6E44 AFBF0044 */  sw         $ra, 0x44($sp)
    /* 7F8B8 800F6E48 AFBE0040 */  sw         $fp, 0x40($sp)
    /* 7F8BC 800F6E4C AFB7003C */  sw         $s7, 0x3C($sp)
    /* 7F8C0 800F6E50 AFB50034 */  sw         $s5, 0x34($sp)
    /* 7F8C4 800F6E54 AFB40030 */  sw         $s4, 0x30($sp)
    /* 7F8C8 800F6E58 AFB3002C */  sw         $s3, 0x2C($sp)
    /* 7F8CC 800F6E5C AFB20028 */  sw         $s2, 0x28($sp)
    /* 7F8D0 800F6E60 AFB10024 */  sw         $s1, 0x24($sp)
    /* 7F8D4 800F6E64 AFB00020 */  sw         $s0, 0x20($sp)
    /* 7F8D8 800F6E68 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 7F8DC 800F6E6C AFA40048 */  sw         $a0, 0x48($sp)
    /* 7F8E0 800F6E70 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 7F8E4 800F6E74 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 7F8E8 800F6E78 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 7F8EC 800F6E7C 000FC080 */  sll        $t8, $t7, 2
    /* 7F8F0 800F6E80 00982021 */  addu       $a0, $a0, $t8
    /* 7F8F4 800F6E84 8C84EC10 */  lw         $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 7F8F8 800F6E88 0C02C7DA */  jal        setProcessMain
    /* 7F8FC 800F6E8C 24A51434 */   addiu     $a1, $a1, %lo(procMainStub)
    /* 7F900 800F6E90 8EC80000 */  lw         $t0, 0x0($s6)
    /* 7F904 800F6E94 3C19800F */  lui        $t9, %hi(func_800F6E04)
    /* 7F908 800F6E98 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 7F90C 800F6E9C 8D090000 */  lw         $t1, 0x0($t0)
    /* 7F910 800F6EA0 27396E04 */  addiu      $t9, $t9, %lo(func_800F6E04)
    /* 7F914 800F6EA4 24040018 */  addiu      $a0, $zero, 0x18
    /* 7F918 800F6EA8 00095080 */  sll        $t2, $t1, 2
    /* 7F91C 800F6EAC 002A0821 */  addu       $at, $at, $t2
    /* 7F920 800F6EB0 0C02BE60 */  jal        func_800AF980
    /* 7F924 800F6EB4 AC39EF90 */   sw        $t9, %lo(D_800DEF90)($at)
    /* 7F928 800F6EB8 8ECC0000 */  lw         $t4, 0x0($s6)
    /* 7F92C 800F6EBC 3C0B800F */  lui        $t3, %hi(func_800F7258)
    /* 7F930 800F6EC0 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 7F934 800F6EC4 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 7F938 800F6EC8 3C0F8013 */  lui        $t7, %hi(D_801290D8)
    /* 7F93C 800F6ECC 8DEF90D8 */  lw         $t7, %lo(D_801290D8)($t7)
    /* 7F940 800F6ED0 000D7080 */  sll        $t6, $t5, 2
    /* 7F944 800F6ED4 002E0821 */  addu       $at, $at, $t6
    /* 7F948 800F6ED8 256B7258 */  addiu      $t3, $t3, %lo(func_800F7258)
    /* 7F94C 800F6EDC AC2BF150 */  sw         $t3, %lo(D_800DF150)($at)
    /* 7F950 800F6EE0 24050026 */  addiu      $a1, $zero, 0x26
    /* 7F954 800F6EE4 24060010 */  addiu      $a2, $zero, 0x10
    /* 7F958 800F6EE8 0C02A619 */  jal        func_800A9864
    /* 7F95C 800F6EEC 8DE40000 */   lw        $a0, 0x0($t7)
    /* 7F960 800F6EF0 3C188013 */  lui        $t8, %hi(D_801290D0)
    /* 7F964 800F6EF4 8F1890D0 */  lw         $t8, %lo(D_801290D0)($t8)
    /* 7F968 800F6EF8 3C04800E */  lui        $a0, %hi(D_800DFA10)
    /* 7F96C 800F6EFC 00184080 */  sll        $t0, $t8, 2
    /* 7F970 800F6F00 00882021 */  addu       $a0, $a0, $t0
    /* 7F974 800F6F04 0C028954 */  jal        func_800A2550
    /* 7F978 800F6F08 8C84FA10 */   lw        $a0, %lo(D_800DFA10)($a0)
    /* 7F97C 800F6F0C 3C05800D */  lui        $a1, %hi(gameTicksPerDraw)
    /* 7F980 800F6F10 8CA56B10 */  lw         $a1, %lo(gameTicksPerDraw)($a1)
    /* 7F984 800F6F14 0C02CC1C */  jal        func_800B3070
    /* 7F988 800F6F18 24040010 */   addiu     $a0, $zero, 0x10
    /* 7F98C 800F6F1C 8EC90000 */  lw         $t1, 0x0($s6)
    /* 7F990 800F6F20 3C02800E */  lui        $v0, %hi(gSegment4StartArray)
    /* 7F994 800F6F24 00008825 */  or         $s1, $zero, $zero
    /* 7F998 800F6F28 8D230000 */  lw         $v1, 0x0($t1)
    /* 7F99C 800F6F2C 00009025 */  or         $s2, $zero, $zero
    /* 7F9A0 800F6F30 00031880 */  sll        $v1, $v1, 2
    /* 7F9A4 800F6F34 00431021 */  addu       $v0, $v0, $v1
    /* 7F9A8 800F6F38 8C42F4D0 */  lw         $v0, %lo(gSegment4StartArray)($v0)
    /* 7F9AC 800F6F3C 8C440014 */  lw         $a0, 0x14($v0)
    /* 7F9B0 800F6F40 10800077 */  beqz       $a0, .L800F7120
    /* 7F9B4 800F6F44 00000000 */   nop
    /* 7F9B8 800F6F48 10800075 */  beqz       $a0, .L800F7120
    /* 7F9BC 800F6F4C 00009825 */   or        $s3, $zero, $zero
    /* 7F9C0 800F6F50 3C1E800C */  lui        $fp, %hi(D_800BE504)
    /* 7F9C4 800F6F54 4480A000 */  mtc1       $zero, $f20
    /* 7F9C8 800F6F58 27DEE504 */  addiu      $fp, $fp, %lo(D_800BE504)
    /* 7F9CC 800F6F5C 0000A025 */  or         $s4, $zero, $zero
    /* 7F9D0 800F6F60 24170002 */  addiu      $s7, $zero, 0x2
    /* 7F9D4 800F6F64 24150001 */  addiu      $s5, $zero, 0x1
    /* 7F9D8 800F6F68 8C590018 */  lw         $t9, 0x18($v0)
  .L800F6F6C:
    /* 7F9DC 800F6F6C 03345021 */  addu       $t2, $t9, $s4
    /* 7F9E0 800F6F70 8D500000 */  lw         $s0, 0x0($t2)
    /* 7F9E4 800F6F74 0C02A53D */  jal        func_800A94F4
    /* 7F9E8 800F6F78 02002025 */   or        $a0, $s0, $zero
    /* 7F9EC 800F6F7C 8C430004 */  lw         $v1, 0x4($v0)
    /* 7F9F0 800F6F80 00403025 */  or         $a2, $v0, $zero
    /* 7F9F4 800F6F84 10600007 */  beqz       $v1, .L800F6FA4
    /* 7F9F8 800F6F88 00000000 */   nop
    /* 7F9FC 800F6F8C 10750021 */  beq        $v1, $s5, .L800F7014
    /* 7FA00 800F6F90 00000000 */   nop
    /* 7FA04 800F6F94 1077003B */  beq        $v1, $s7, .L800F7084
    /* 7FA08 800F6F98 3C048000 */   lui       $a0, (0x8000000D >> 16)
    /* 7FA0C 800F6F9C 10000055 */  b          .L800F70F4
    /* 7FA10 800F6FA0 8ECC0000 */   lw        $t4, 0x0($s6)
  .L800F6FA4:
    /* 7FA14 800F6FA4 16400018 */  bnez       $s2, .L800F7008
    /* 7FA18 800F6FA8 3C018013 */   lui       $at, %hi(D_8012E7B0)
    /* 7FA1C 800F6FAC 8EC20000 */  lw         $v0, 0x0($s6)
    /* 7FA20 800F6FB0 3C03800E */  lui        $v1, %hi(D_800DF690)
    /* 7FA24 800F6FB4 2463F690 */  addiu      $v1, $v1, %lo(D_800DF690)
    /* 7FA28 800F6FB8 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 7FA2C 800F6FBC 3C01800E */  lui        $at, %hi(D_800DFF50)
    /* 7FA30 800F6FC0 4405A000 */  mfc1       $a1, $f20
    /* 7FA34 800F6FC4 000C6880 */  sll        $t5, $t4, 2
    /* 7FA38 800F6FC8 006D5821 */  addu       $t3, $v1, $t5
    /* 7FA3C 800F6FCC AD660000 */  sw         $a2, 0x0($t3)
    /* 7FA40 800F6FD0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 7FA44 800F6FD4 000E7880 */  sll        $t7, $t6, 2
    /* 7FA48 800F6FD8 002F0821 */  addu       $at, $at, $t7
    /* 7FA4C 800F6FDC AC30FF50 */  sw         $s0, %lo(D_800DFF50)($at)
    /* 7FA50 800F6FE0 8C580000 */  lw         $t8, 0x0($v0)
    /* 7FA54 800F6FE4 00184080 */  sll        $t0, $t8, 2
    /* 7FA58 800F6FE8 00684821 */  addu       $t1, $v1, $t0
    /* 7FA5C 800F6FEC 8D390000 */  lw         $t9, 0x0($t1)
    /* 7FA60 800F6FF0 0C02BB88 */  jal        func_800AEE20
    /* 7FA64 800F6FF4 8F240000 */   lw        $a0, 0x0($t9)
    /* 7FA68 800F6FF8 3C018013 */  lui        $at, %hi(D_8012E7B0)
    /* 7FA6C 800F6FFC AC20E7B0 */  sw         $zero, %lo(D_8012E7B0)($at)
    /* 7FA70 800F7000 1000003B */  b          .L800F70F0
    /* 7FA74 800F7004 26520001 */   addiu     $s2, $s2, 0x1
  .L800F7008:
    /* 7FA78 800F7008 AC22E7B0 */  sw         $v0, %lo(D_8012E7B0)($at)
    /* 7FA7C 800F700C 10000038 */  b          .L800F70F0
    /* 7FA80 800F7010 26520001 */   addiu     $s2, $s2, 0x1
  .L800F7014:
    /* 7FA84 800F7014 16200018 */  bnez       $s1, .L800F7078
    /* 7FA88 800F7018 3C018013 */   lui       $at, %hi(D_8012E7B4)
    /* 7FA8C 800F701C 8EC20000 */  lw         $v0, 0x0($s6)
    /* 7FA90 800F7020 3C03800E */  lui        $v1, %hi(D_800DF850)
    /* 7FA94 800F7024 2463F850 */  addiu      $v1, $v1, %lo(D_800DF850)
    /* 7FA98 800F7028 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 7FA9C 800F702C 3C01800E */  lui        $at, %hi(D_800E0110)
    /* 7FAA0 800F7030 4405A000 */  mfc1       $a1, $f20
    /* 7FAA4 800F7034 000A6080 */  sll        $t4, $t2, 2
    /* 7FAA8 800F7038 006C6821 */  addu       $t5, $v1, $t4
    /* 7FAAC 800F703C ADA60000 */  sw         $a2, 0x0($t5)
    /* 7FAB0 800F7040 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 7FAB4 800F7044 000B7080 */  sll        $t6, $t3, 2
    /* 7FAB8 800F7048 002E0821 */  addu       $at, $at, $t6
    /* 7FABC 800F704C AC300110 */  sw         $s0, %lo(D_800E0110)($at)
    /* 7FAC0 800F7050 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 7FAC4 800F7054 000FC080 */  sll        $t8, $t7, 2
    /* 7FAC8 800F7058 00784021 */  addu       $t0, $v1, $t8
    /* 7FACC 800F705C 8D090000 */  lw         $t1, 0x0($t0)
    /* 7FAD0 800F7060 0C02BBAD */  jal        func_800AEEB4
    /* 7FAD4 800F7064 8D240000 */   lw        $a0, 0x0($t1)
    /* 7FAD8 800F7068 3C018013 */  lui        $at, %hi(D_8012E7B4)
    /* 7FADC 800F706C AC20E7B4 */  sw         $zero, %lo(D_8012E7B4)($at)
    /* 7FAE0 800F7070 1000001F */  b          .L800F70F0
    /* 7FAE4 800F7074 26310001 */   addiu     $s1, $s1, 0x1
  .L800F7078:
    /* 7FAE8 800F7078 AC22E7B4 */  sw         $v0, %lo(D_8012E7B4)($at)
    /* 7FAEC 800F707C 1000001C */  b          .L800F70F0
    /* 7FAF0 800F7080 26310001 */   addiu     $s1, $s1, 0x1
  .L800F7084:
    /* 7FAF4 800F7084 0C03E905 */  jal        func_800FA414
    /* 7FAF8 800F7088 3484000D */   ori       $a0, $a0, (0x8000000D & 0xFFFF)
    /* 7FAFC 800F708C 4406A000 */  mfc1       $a2, $f20
    /* 7FB00 800F7090 24040010 */  addiu      $a0, $zero, 0x10
    /* 7FB04 800F7094 0C02ABCD */  jal        func_800AAF34
    /* 7FB08 800F7098 02002825 */   or        $a1, $s0, $zero
    /* 7FB0C 800F709C 0C044A6B */  jal        func_801129AC
    /* 7FB10 800F70A0 00000000 */   nop
    /* 7FB14 800F70A4 0C044A77 */  jal        func_801129DC
    /* 7FB18 800F70A8 00000000 */   nop
    /* 7FB1C 800F70AC 3C02800C */  lui        $v0, %hi(D_800BE500)
    /* 7FB20 800F70B0 8C42E500 */  lw         $v0, %lo(D_800BE500)($v0)
    /* 7FB24 800F70B4 56A20007 */  bnel       $s5, $v0, .L800F70D4
    /* 7FB28 800F70B8 24010003 */   addiu     $at, $zero, 0x3
    /* 7FB2C 800F70BC 8FD90000 */  lw         $t9, 0x0($fp)
    /* 7FB30 800F70C0 3C01800D */  lui        $at, %hi(D_800D6E44)
    /* 7FB34 800F70C4 57200003 */  bnel       $t9, $zero, .L800F70D4
    /* 7FB38 800F70C8 24010003 */   addiu     $at, $zero, 0x3
    /* 7FB3C 800F70CC AC356E44 */  sw         $s5, %lo(D_800D6E44)($at)
    /* 7FB40 800F70D0 24010003 */  addiu      $at, $zero, 0x3
  .L800F70D4:
    /* 7FB44 800F70D4 54410007 */  bnel       $v0, $at, .L800F70F4
    /* 7FB48 800F70D8 8ECC0000 */   lw        $t4, 0x0($s6)
    /* 7FB4C 800F70DC 8FCA0000 */  lw         $t2, 0x0($fp)
    /* 7FB50 800F70E0 3C01800D */  lui        $at, %hi(D_800D6E44)
    /* 7FB54 800F70E4 55400003 */  bnel       $t2, $zero, .L800F70F4
    /* 7FB58 800F70E8 8ECC0000 */   lw        $t4, 0x0($s6)
    /* 7FB5C 800F70EC AC376E44 */  sw         $s7, %lo(D_800D6E44)($at)
  .L800F70F0:
    /* 7FB60 800F70F0 8ECC0000 */  lw         $t4, 0x0($s6)
  .L800F70F4:
    /* 7FB64 800F70F4 3C02800E */  lui        $v0, %hi(gSegment4StartArray)
    /* 7FB68 800F70F8 26730001 */  addiu      $s3, $s3, 0x1
    /* 7FB6C 800F70FC 8D830000 */  lw         $v1, 0x0($t4)
    /* 7FB70 800F7100 26940004 */  addiu      $s4, $s4, 0x4
    /* 7FB74 800F7104 00031880 */  sll        $v1, $v1, 2
    /* 7FB78 800F7108 00431021 */  addu       $v0, $v0, $v1
    /* 7FB7C 800F710C 8C42F4D0 */  lw         $v0, %lo(gSegment4StartArray)($v0)
    /* 7FB80 800F7110 8C4D0014 */  lw         $t5, 0x14($v0)
    /* 7FB84 800F7114 026D082B */  sltu       $at, $s3, $t5
    /* 7FB88 800F7118 5420FF94 */  bnel       $at, $zero, .L800F6F6C
    /* 7FB8C 800F711C 8C590018 */   lw        $t9, 0x18($v0)
  .L800F7120:
    /* 7FB90 800F7120 3C0B800F */  lui        $t3, %hi(func_800F6E0C)
    /* 7FB94 800F7124 3C01800E */  lui        $at, %hi(D_800DF310)
    /* 7FB98 800F7128 00230821 */  addu       $at, $at, $v1
    /* 7FB9C 800F712C 256B6E0C */  addiu      $t3, $t3, %lo(func_800F6E0C)
    /* 7FBA0 800F7130 0C02BE85 */  jal        curObjSleepForever
    /* 7FBA4 800F7134 AC2BF310 */   sw        $t3, %lo(D_800DF310)($at)
    /* 7FBA8 800F7138 8FBF0044 */  lw         $ra, 0x44($sp)
    /* 7FBAC 800F713C D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 7FBB0 800F7140 8FB00020 */  lw         $s0, 0x20($sp)
    /* 7FBB4 800F7144 8FB10024 */  lw         $s1, 0x24($sp)
    /* 7FBB8 800F7148 8FB20028 */  lw         $s2, 0x28($sp)
    /* 7FBBC 800F714C 8FB3002C */  lw         $s3, 0x2C($sp)
    /* 7FBC0 800F7150 8FB40030 */  lw         $s4, 0x30($sp)
    /* 7FBC4 800F7154 8FB50034 */  lw         $s5, 0x34($sp)
    /* 7FBC8 800F7158 8FB60038 */  lw         $s6, 0x38($sp)
    /* 7FBCC 800F715C 8FB7003C */  lw         $s7, 0x3C($sp)
    /* 7FBD0 800F7160 8FBE0040 */  lw         $fp, 0x40($sp)
    /* 7FBD4 800F7164 03E00008 */  jr         $ra
    /* 7FBD8 800F7168 27BD0048 */   addiu     $sp, $sp, 0x48
endlabel func_800F6E30
.size func_800F6E30, . - func_800F6E30
