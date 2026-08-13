nonmatching func_800A8EC0, 0x1C8

glabel func_800A8EC0
    /* 51110 800A8EC0 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 51114 800A8EC4 3C02800D */  lui        $v0, %hi(D_800D6E68)
    /* 51118 800A8EC8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 5111C 800A8ECC 00803825 */  or         $a3, $a0, $zero
    /* 51120 800A8ED0 2405FFFF */  addiu      $a1, $zero, -0x1
    /* 51124 800A8ED4 24426E68 */  addiu      $v0, $v0, %lo(D_800D6E68)
    /* 51128 800A8ED8 00001825 */  or         $v1, $zero, $zero
  .L800A8EDC:
    /* 5112C 800A8EDC 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 51130 800A8EE0 54EE0003 */  bnel       $a3, $t6, .L800A8EF0
    /* 51134 800A8EE4 24630001 */   addiu     $v1, $v1, 0x1
    /* 51138 800A8EE8 00602825 */  or         $a1, $v1, $zero
    /* 5113C 800A8EEC 24630001 */  addiu      $v1, $v1, 0x1
  .L800A8EF0:
    /* 51140 800A8EF0 28610003 */  slti       $at, $v1, 0x3
    /* 51144 800A8EF4 1420FFF9 */  bnez       $at, .L800A8EDC
    /* 51148 800A8EF8 24420004 */   addiu     $v0, $v0, 0x4
    /* 5114C 800A8EFC 2401FFFF */  addiu      $at, $zero, -0x1
    /* 51150 800A8F00 10A10012 */  beq        $a1, $at, .L800A8F4C
    /* 51154 800A8F04 3C06800D */   lui       $a2, %hi(D_800D6E68)
    /* 51158 800A8F08 3C06800D */  lui        $a2, %hi(D_800D6E68)
    /* 5115C 800A8F0C 24C66E68 */  addiu      $a2, $a2, %lo(D_800D6E68)
    /* 51160 800A8F10 24020002 */  addiu      $v0, $zero, 0x2
    /* 51164 800A8F14 24030002 */  addiu      $v1, $zero, 0x2
  .L800A8F18:
    /* 51168 800A8F18 10A30007 */  beq        $a1, $v1, .L800A8F38
    /* 5116C 800A8F1C 00037880 */   sll       $t7, $v1, 2
    /* 51170 800A8F20 00CFC021 */  addu       $t8, $a2, $t7
    /* 51174 800A8F24 8F190000 */  lw         $t9, 0x0($t8)
    /* 51178 800A8F28 00024080 */  sll        $t0, $v0, 2
    /* 5117C 800A8F2C 00C84821 */  addu       $t1, $a2, $t0
    /* 51180 800A8F30 2442FFFF */  addiu      $v0, $v0, -0x1
    /* 51184 800A8F34 AD390000 */  sw         $t9, 0x0($t1)
  .L800A8F38:
    /* 51188 800A8F38 2463FFFF */  addiu      $v1, $v1, -0x1
    /* 5118C 800A8F3C 0461FFF6 */  bgez       $v1, .L800A8F18
    /* 51190 800A8F40 00000000 */   nop
    /* 51194 800A8F44 10000015 */  b          .L800A8F9C
    /* 51198 800A8F48 ACC70000 */   sw        $a3, 0x0($a2)
  .L800A8F4C:
    /* 5119C 800A8F4C 24C66E68 */  addiu      $a2, $a2, %lo(D_800D6E68)
    /* 511A0 800A8F50 8CC40008 */  lw         $a0, 0x8($a2)
    /* 511A4 800A8F54 24050003 */  addiu      $a1, $zero, 0x3
    /* 511A8 800A8F58 10800006 */  beqz       $a0, .L800A8F74
    /* 511AC 800A8F5C 00000000 */   nop
    /* 511B0 800A8F60 0C02A359 */  jal        func_800A8D64
    /* 511B4 800A8F64 AFA70030 */   sw        $a3, 0x30($sp)
    /* 511B8 800A8F68 3C06800D */  lui        $a2, %hi(D_800D6E68)
    /* 511BC 800A8F6C 24C66E68 */  addiu      $a2, $a2, %lo(D_800D6E68)
    /* 511C0 800A8F70 8FA70030 */  lw         $a3, 0x30($sp)
  .L800A8F74:
    /* 511C4 800A8F74 3C02800D */  lui        $v0, %hi(D_800D6E6C)
    /* 511C8 800A8F78 3C03800D */  lui        $v1, %hi(D_800D6E68)
    /* 511CC 800A8F7C 24636E68 */  addiu      $v1, $v1, %lo(D_800D6E68)
    /* 511D0 800A8F80 24426E6C */  addiu      $v0, $v0, %lo(D_800D6E6C)
  .L800A8F84:
    /* 511D4 800A8F84 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 511D8 800A8F88 2442FFFC */  addiu      $v0, $v0, -0x4
    /* 511DC 800A8F8C 0043082B */  sltu       $at, $v0, $v1
    /* 511E0 800A8F90 1020FFFC */  beqz       $at, .L800A8F84
    /* 511E4 800A8F94 AC4A0008 */   sw        $t2, 0x8($v0)
    /* 511E8 800A8F98 ACC70000 */  sw         $a3, 0x0($a2)
  .L800A8F9C:
    /* 511EC 800A8F9C 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 511F0 800A8FA0 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 511F4 800A8FA4 00075C02 */  srl        $t3, $a3, 16
    /* 511F8 800A8FA8 000B6080 */  sll        $t4, $t3, 2
    /* 511FC 800A8FAC 8C780000 */  lw         $t8, 0x0($v1)
    /* 51200 800A8FB0 3C0D800D */  lui        $t5, %hi(D_800D00C4)
    /* 51204 800A8FB4 01AC6821 */  addu       $t5, $t5, $t4
    /* 51208 800A8FB8 8DAD00C4 */  lw         $t5, %lo(D_800D00C4)($t5)
    /* 5120C 800A8FBC 30EEFFFF */  andi       $t6, $a3, 0xFFFF
    /* 51210 800A8FC0 3C01800E */  lui        $at, %hi(D_800E02D0)
    /* 51214 800A8FC4 00184080 */  sll        $t0, $t8, 2
    /* 51218 800A8FC8 000E7880 */  sll        $t7, $t6, 2
    /* 5121C 800A8FCC 00280821 */  addu       $at, $at, $t0
    /* 51220 800A8FD0 AC2702D0 */  sw         $a3, %lo(D_800E02D0)($at)
    /* 51224 800A8FD4 01AF3021 */  addu       $a2, $t5, $t7
    /* 51228 800A8FD8 8CC20000 */  lw         $v0, 0x0($a2)
    /* 5122C 800A8FDC 00E02025 */  or         $a0, $a3, $zero
    /* 51230 800A8FE0 24050003 */  addiu      $a1, $zero, 0x3
    /* 51234 800A8FE4 10400007 */  beqz       $v0, .L800A9004
    /* 51238 800A8FE8 00000000 */   nop
    /* 5123C 800A8FEC 8C790000 */  lw         $t9, 0x0($v1)
    /* 51240 800A8FF0 3C01800E */  lui        $at, %hi(gSegment4StartArray)
    /* 51244 800A8FF4 00194880 */  sll        $t1, $t9, 2
    /* 51248 800A8FF8 00290821 */  addu       $at, $at, $t1
    /* 5124C 800A8FFC 1000000C */  b          .L800A9030
    /* 51250 800A9000 AC22F4D0 */   sw        $v0, %lo(gSegment4StartArray)($at)
  .L800A9004:
    /* 51254 800A9004 0C02A494 */  jal        func_800A9250
    /* 51258 800A9008 AFA60018 */   sw        $a2, 0x18($sp)
    /* 5125C 800A900C 8FA60018 */  lw         $a2, 0x18($sp)
    /* 51260 800A9010 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 51264 800A9014 3C01800E */  lui        $at, %hi(gSegment4StartArray)
    /* 51268 800A9018 ACC20000 */  sw         $v0, 0x0($a2)
    /* 5126C 800A901C 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 51270 800A9020 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 51274 800A9024 000A5880 */  sll        $t3, $t2, 2
    /* 51278 800A9028 002B0821 */  addu       $at, $at, $t3
    /* 5127C 800A902C AC22F4D0 */  sw         $v0, %lo(gSegment4StartArray)($at)
  .L800A9030:
    /* 51280 800A9030 0C02A759 */  jal        func_800A9D64
    /* 51284 800A9034 8C640000 */   lw        $a0, 0x0($v1)
    /* 51288 800A9038 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* 5128C 800A903C 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* 51290 800A9040 0C02A679 */  jal        func_800A99E4
    /* 51294 800A9044 8D840000 */   lw        $a0, 0x0($t4)
    /* 51298 800A9048 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 5129C 800A904C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 512A0 800A9050 0C02A68B */  jal        func_800A9A2C
    /* 512A4 800A9054 8DC40000 */   lw        $a0, 0x0($t6)
    /* 512A8 800A9058 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 512AC 800A905C 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 512B0 800A9060 3C04800E */  lui        $a0, %hi(gSegment4StartArray)
    /* 512B4 800A9064 8DAF0000 */  lw         $t7, 0x0($t5)
    /* 512B8 800A9068 000FC080 */  sll        $t8, $t7, 2
    /* 512BC 800A906C 00982021 */  addu       $a0, $a0, $t8
    /* 512C0 800A9070 0C02A592 */  jal        func_800A9648
    /* 512C4 800A9074 8C84F4D0 */   lw        $a0, %lo(gSegment4StartArray)($a0)
    /* 512C8 800A9078 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 512CC 800A907C 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 512D0 800A9080 03E00008 */  jr         $ra
    /* 512D4 800A9084 00000000 */   nop
endlabel func_800A8EC0
.size func_800A8EC0, . - func_800A8EC0
