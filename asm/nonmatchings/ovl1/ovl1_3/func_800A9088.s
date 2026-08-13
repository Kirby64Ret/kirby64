nonmatching func_800A9088, 0x1C8

glabel func_800A9088
    /* 512D8 800A9088 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 512DC 800A908C 3C02800D */  lui        $v0, %hi(D_800D6E78)
    /* 512E0 800A9090 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 512E4 800A9094 00803825 */  or         $a3, $a0, $zero
    /* 512E8 800A9098 2405FFFF */  addiu      $a1, $zero, -0x1
    /* 512EC 800A909C 24426E78 */  addiu      $v0, $v0, %lo(D_800D6E78)
    /* 512F0 800A90A0 00001825 */  or         $v1, $zero, $zero
  .L800A90A4:
    /* 512F4 800A90A4 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 512F8 800A90A8 54EE0003 */  bnel       $a3, $t6, .L800A90B8
    /* 512FC 800A90AC 24630001 */   addiu     $v1, $v1, 0x1
    /* 51300 800A90B0 00602825 */  or         $a1, $v1, $zero
    /* 51304 800A90B4 24630001 */  addiu      $v1, $v1, 0x1
  .L800A90B8:
    /* 51308 800A90B8 28610003 */  slti       $at, $v1, 0x3
    /* 5130C 800A90BC 1420FFF9 */  bnez       $at, .L800A90A4
    /* 51310 800A90C0 24420004 */   addiu     $v0, $v0, 0x4
    /* 51314 800A90C4 2401FFFF */  addiu      $at, $zero, -0x1
    /* 51318 800A90C8 10A10012 */  beq        $a1, $at, .L800A9114
    /* 5131C 800A90CC 3C06800D */   lui       $a2, %hi(D_800D6E78)
    /* 51320 800A90D0 3C06800D */  lui        $a2, %hi(D_800D6E78)
    /* 51324 800A90D4 24C66E78 */  addiu      $a2, $a2, %lo(D_800D6E78)
    /* 51328 800A90D8 24020002 */  addiu      $v0, $zero, 0x2
    /* 5132C 800A90DC 24030002 */  addiu      $v1, $zero, 0x2
  .L800A90E0:
    /* 51330 800A90E0 10A30007 */  beq        $a1, $v1, .L800A9100
    /* 51334 800A90E4 00037880 */   sll       $t7, $v1, 2
    /* 51338 800A90E8 00CFC021 */  addu       $t8, $a2, $t7
    /* 5133C 800A90EC 8F190000 */  lw         $t9, 0x0($t8)
    /* 51340 800A90F0 00024080 */  sll        $t0, $v0, 2
    /* 51344 800A90F4 00C84821 */  addu       $t1, $a2, $t0
    /* 51348 800A90F8 2442FFFF */  addiu      $v0, $v0, -0x1
    /* 5134C 800A90FC AD390000 */  sw         $t9, 0x0($t1)
  .L800A9100:
    /* 51350 800A9100 2463FFFF */  addiu      $v1, $v1, -0x1
    /* 51354 800A9104 0461FFF6 */  bgez       $v1, .L800A90E0
    /* 51358 800A9108 00000000 */   nop
    /* 5135C 800A910C 10000015 */  b          .L800A9164
    /* 51360 800A9110 ACC70000 */   sw        $a3, 0x0($a2)
  .L800A9114:
    /* 51364 800A9114 24C66E78 */  addiu      $a2, $a2, %lo(D_800D6E78)
    /* 51368 800A9118 8CC40008 */  lw         $a0, 0x8($a2)
    /* 5136C 800A911C 24050003 */  addiu      $a1, $zero, 0x3
    /* 51370 800A9120 10800006 */  beqz       $a0, .L800A913C
    /* 51374 800A9124 00000000 */   nop
    /* 51378 800A9128 0C02A359 */  jal        func_800A8D64
    /* 5137C 800A912C AFA70038 */   sw        $a3, 0x38($sp)
    /* 51380 800A9130 3C06800D */  lui        $a2, %hi(D_800D6E78)
    /* 51384 800A9134 24C66E78 */  addiu      $a2, $a2, %lo(D_800D6E78)
    /* 51388 800A9138 8FA70038 */  lw         $a3, 0x38($sp)
  .L800A913C:
    /* 5138C 800A913C 3C02800D */  lui        $v0, %hi(D_800D6E7C)
    /* 51390 800A9140 3C03800D */  lui        $v1, %hi(D_800D6E78)
    /* 51394 800A9144 24636E78 */  addiu      $v1, $v1, %lo(D_800D6E78)
    /* 51398 800A9148 24426E7C */  addiu      $v0, $v0, %lo(D_800D6E7C)
  .L800A914C:
    /* 5139C 800A914C 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 513A0 800A9150 2442FFFC */  addiu      $v0, $v0, -0x4
    /* 513A4 800A9154 0043082B */  sltu       $at, $v0, $v1
    /* 513A8 800A9158 1020FFFC */  beqz       $at, .L800A914C
    /* 513AC 800A915C AC4A0008 */   sw        $t2, 0x8($v0)
    /* 513B0 800A9160 ACC70000 */  sw         $a3, 0x0($a2)
  .L800A9164:
    /* 513B4 800A9164 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 513B8 800A9168 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 513BC 800A916C 00075C02 */  srl        $t3, $a3, 16
    /* 513C0 800A9170 000B6080 */  sll        $t4, $t3, 2
    /* 513C4 800A9174 8C780000 */  lw         $t8, 0x0($v1)
    /* 513C8 800A9178 3C0D800D */  lui        $t5, %hi(D_800D00C4)
    /* 513CC 800A917C 01AC6821 */  addu       $t5, $t5, $t4
    /* 513D0 800A9180 8DAD00C4 */  lw         $t5, %lo(D_800D00C4)($t5)
    /* 513D4 800A9184 30EEFFFF */  andi       $t6, $a3, 0xFFFF
    /* 513D8 800A9188 3C01800E */  lui        $at, %hi(D_800E02D0)
    /* 513DC 800A918C 00184080 */  sll        $t0, $t8, 2
    /* 513E0 800A9190 000E7880 */  sll        $t7, $t6, 2
    /* 513E4 800A9194 00280821 */  addu       $at, $at, $t0
    /* 513E8 800A9198 AC2702D0 */  sw         $a3, %lo(D_800E02D0)($at)
    /* 513EC 800A919C 01AF3021 */  addu       $a2, $t5, $t7
    /* 513F0 800A91A0 8CC40000 */  lw         $a0, 0x0($a2)
    /* 513F4 800A91A4 24050003 */  addiu      $a1, $zero, 0x3
    /* 513F8 800A91A8 50800009 */  beql       $a0, $zero, .L800A91D0
    /* 513FC 800A91AC 00E02025 */   or        $a0, $a3, $zero
    /* 51400 800A91B0 8C790000 */  lw         $t9, 0x0($v1)
    /* 51404 800A91B4 3C01800E */  lui        $at, %hi(gSegment4StartArray)
    /* 51408 800A91B8 AFA4001C */  sw         $a0, 0x1C($sp)
    /* 5140C 800A91BC 00194880 */  sll        $t1, $t9, 2
    /* 51410 800A91C0 00290821 */  addu       $at, $at, $t1
    /* 51414 800A91C4 1000000E */  b          .L800A9200
    /* 51418 800A91C8 AC24F4D0 */   sw        $a0, %lo(gSegment4StartArray)($at)
    /* 5141C 800A91CC 00E02025 */  or         $a0, $a3, $zero
  .L800A91D0:
    /* 51420 800A91D0 0C02A494 */  jal        func_800A9250
    /* 51424 800A91D4 AFA60020 */   sw        $a2, 0x20($sp)
    /* 51428 800A91D8 8FA60020 */  lw         $a2, 0x20($sp)
    /* 5142C 800A91DC 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 51430 800A91E0 3C01800E */  lui        $at, %hi(gSegment4StartArray)
    /* 51434 800A91E4 ACC20000 */  sw         $v0, 0x0($a2)
    /* 51438 800A91E8 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 5143C 800A91EC 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 51440 800A91F0 AFA2001C */  sw         $v0, 0x1C($sp)
    /* 51444 800A91F4 000A5880 */  sll        $t3, $t2, 2
    /* 51448 800A91F8 002B0821 */  addu       $at, $at, $t3
    /* 5144C 800A91FC AC22F4D0 */  sw         $v0, %lo(gSegment4StartArray)($at)
  .L800A9200:
    /* 51450 800A9200 0C02A759 */  jal        func_800A9D64
    /* 51454 800A9204 8C640000 */   lw        $a0, 0x0($v1)
    /* 51458 800A9208 8FAC001C */  lw         $t4, 0x1C($sp)
    /* 5145C 800A920C 24050010 */  addiu      $a1, $zero, 0x10
    /* 51460 800A9210 0C02BE6E */  jal        func_800AF9B8
    /* 51464 800A9214 9584000A */   lhu       $a0, 0xA($t4)
    /* 51468 800A9218 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 5146C 800A921C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 51470 800A9220 0C02A679 */  jal        func_800A99E4
    /* 51474 800A9224 8DC40000 */   lw        $a0, 0x0($t6)
    /* 51478 800A9228 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 5147C 800A922C 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 51480 800A9230 0C02A68B */  jal        func_800A9A2C
    /* 51484 800A9234 8DA40000 */   lw        $a0, 0x0($t5)
    /* 51488 800A9238 0C02A592 */  jal        func_800A9648
    /* 5148C 800A923C 8FA4001C */   lw        $a0, 0x1C($sp)
    /* 51490 800A9240 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 51494 800A9244 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 51498 800A9248 03E00008 */  jr         $ra
    /* 5149C 800A924C 00000000 */   nop
endlabel func_800A9088
.size func_800A9088, . - func_800A9088
