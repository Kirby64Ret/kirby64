glabel func_8016F240_ovl5
/* CFC80 8016F240 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* CFC84 8016F244 3C0F8019 */  lui        $t7, %hi(cmd_8016F240)
.L8016F248_ovl5:
/* CFC88 8016F248 AFBF0014 */  sw         $ra, 0x14($sp)
/* CFC8C 8016F24C AFA40038 */  sw         $a0, 0x38($sp)
/* CFC90 8016F250 25EF6C6C */  addiu      $t7, $t7, %lo(cmd_8016F240)
/* CFC94 8016F254 8DF90000 */  lw         $t9, 0x0($t7)
/* CFC98 8016F258 27AE0030 */  addiu      $t6, $sp, 0x30
/* CFC9C 8016F25C ADD90000 */  sw         $t9, 0x0($t6)
/* CFCA0 8016F260 99F90006 */  lwr        $t9, 0x6($t7)
/* CFCA4 8016F264 0C054E61 */  jal        func_80153984_ovl3
/* CFCA8 8016F268 B9D90006 */   swr       $t9, 0x6($t6)
/* CFCAC 8016F26C 0C0473D6 */  jal        func_8011CF58
/* CFCB0 8016F270 00000000 */   nop
/* CFCB4 8016F274 0C0547A5 */  jal        ovl3_process_command_string
.L8016F278_ovl5:
/* CFCB8 8016F278 27A40030 */   addiu     $a0, $sp, 0x30
.L8016F27C_ovl5:
/* CFCBC 8016F27C 144000F2 */  bnez       $v0, .L8016F648_ovl3
.L8016F280_ovl5:
/* CFCC0 8016F280 3C018013 */   lui       $at, %hi(D_8012E7C5 + 0x2)
/* CFCC4 8016F284 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CFCC8 8016F288 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CFCCC 8016F28C 90E60017 */  lbu        $a2, 0x17($a3)
/* CFCD0 8016F290 3C19800F */  lui        $t9, %hi(D_800E8920)
/* CFCD4 8016F294 10C00005 */  beqz       $a2, .L8016F2AC_ovl3
/* CFCD8 8016F298 00000000 */   nop
/* CFCDC 8016F29C 90EA000B */  lbu        $t2, 0xB($a3)
/* CFCE0 8016F2A0 24090002 */  addiu      $t1, $zero, 0x2
.L8016F2A4_ovl5:
/* CFCE4 8016F2A4 512A00EC */  beql       $t1, $t2, .L8016F658_ovl3
/* CFCE8 8016F2A8 8CEB00FC */   lw        $t3, 0xFC($a3)
.L8016F2AC_ovl3:
/* CFCEC 8016F2AC 14C00011 */  bnez       $a2, .L8016F2F4_ovl3
/* CFCF0 8016F2B0 24090002 */   addiu     $t1, $zero, 0x2
/* CFCF4 8016F2B4 3C0B800D */  lui        $t3, %hi(gKirbyController + 0x2)
/* CFCF8 8016F2B8 956B6FEA */  lhu        $t3, %lo(gKirbyController + 0x2)($t3)
/* CFCFC 8016F2BC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* CFD00 8016F2C0 316C8000 */  andi       $t4, $t3, 0x8000
/* CFD04 8016F2C4 1180000B */  beqz       $t4, .L8016F2F4_ovl3
/* CFD08 8016F2C8 00000000 */   nop
/* CFD0C 8016F2CC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* CFD10 8016F2D0 3C08800F */  lui        $t0, %hi(D_800E9560)
/* CFD14 8016F2D4 25089560 */  addiu      $t0, $t0, %lo(D_800E9560)
/* CFD18 8016F2D8 8C6D0000 */  lw         $t5, 0x0($v1)
/* CFD1C 8016F2DC 000D7080 */  sll        $t6, $t5, 2
/* CFD20 8016F2E0 010E7821 */  addu       $t7, $t0, $t6
/* CFD24 8016F2E4 ADE90000 */  sw         $t1, 0x0($t7)
/* CFD28 8016F2E8 8C620000 */  lw         $v0, 0x0($v1)
/* CFD2C 8016F2EC 1000000E */  b          .L8016F328_ovl3
glabel func_8016F2F0_ovl5
/* CFD30 8016F2F0 00021080 */   sll       $v0, $v0, 2
.L8016F2F4_ovl3:
/* CFD34 8016F2F4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* CFD38 8016F2F8 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* CFD3C 8016F2FC 3C08800F */  lui        $t0, %hi(D_800E9560)
/* CFD40 8016F300 25089560 */  addiu      $t0, $t0, %lo(D_800E9560)
/* CFD44 8016F304 8C620000 */  lw         $v0, 0x0($v1)
/* CFD48 8016F308 00021080 */  sll        $v0, $v0, 2
/* CFD4C 8016F30C 01022021 */  addu       $a0, $t0, $v0
/* CFD50 8016F310 8C850000 */  lw         $a1, 0x0($a0)
/* CFD54 8016F314 10A00004 */  beqz       $a1, .L8016F328_ovl3
/* CFD58 8016F318 24B8FFFF */   addiu     $t8, $a1, -0x1
/* CFD5C 8016F31C AC980000 */  sw         $t8, 0x0($a0)
/* CFD60 8016F320 8C620000 */  lw         $v0, 0x0($v1)
/* CFD64 8016F324 00021080 */  sll        $v0, $v0, 2
.L8016F328_ovl3:
/* CFD68 8016F328 0322C821 */  addu       $t9, $t9, $v0
/* CFD6C 8016F32C 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
/* CFD70 8016F330 13200068 */  beqz       $t9, .L8016F4D4_ovl3
/* CFD74 8016F334 00000000 */   nop
/* CFD78 8016F338 44802000 */  mtc1       $zero, $f4
/* CFD7C 8016F33C 3C09800E */  lui        $t1, %hi(D_800E3750)
/* CFD80 8016F340 25293750 */  addiu      $t1, $t1, %lo(D_800E3750)
/* CFD84 8016F344 01225021 */  addu       $t2, $t1, $v0
/* CFD88 8016F348 E5440000 */  swc1       $f4, 0x0($t2)
/* CFD8C 8016F34C 8C620000 */  lw         $v0, 0x0($v1)
/* CFD90 8016F350 3C01800E */  lui        $at, %hi(D_800E3210)
/* CFD94 8016F354 3C0E800D */  lui        $t6, %hi(D_800D6B54)
/* CFD98 8016F358 00021080 */  sll        $v0, $v0, 2
/* CFD9C 8016F35C 01225821 */  addu       $t3, $t1, $v0
/* CFDA0 8016F360 C5660000 */  lwc1       $f6, 0x0($t3)
/* CFDA4 8016F364 00220821 */  addu       $at, $at, $v0
/* CFDA8 8016F368 8DCE6B54 */  lw         $t6, %lo(D_800D6B54)($t6)
/* CFDAC 8016F36C E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* CFDB0 8016F370 8C6C0000 */  lw         $t4, 0x0($v1)
/* CFDB4 8016F374 3C018019 */  lui        $at, %hi(D_80197384_ovl3)
/* CFDB8 8016F378 C4287384 */  lwc1       $f8, %lo(D_80197384_ovl3)($at)
/* CFDBC 8016F37C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* CFDC0 8016F380 000C6880 */  sll        $t5, $t4, 2
/* CFDC4 8016F384 002D0821 */  addu       $at, $at, $t5
/* CFDC8 8016F388 15C0000B */  bnez       $t6, .L8016F3B8_ovl3
/* CFDCC 8016F38C E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
/* CFDD0 8016F390 0C029D9E */  jal        play_sound
/* CFDD4 8016F394 24040149 */   addiu     $a0, $zero, 0x149
/* CFDD8 8016F398 3C08800F */  lui        $t0, %hi(D_800E9560)
/* CFDDC 8016F39C 3C068013 */  lui        $a2, %hi(D_8012E7D7)
/* CFDE0 8016F3A0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* CFDE4 8016F3A4 3C078013 */  lui        $a3, %hi(gKirbyState)
glabel func_8016F3A8_ovl5
/* CFDE8 8016F3A8 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CFDEC 8016F3AC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* CFDF0 8016F3B0 90C6E7D7 */  lbu        $a2, %lo(D_8012E7D7)($a2)
/* CFDF4 8016F3B4 25089560 */  addiu      $t0, $t0, %lo(D_800E9560)
.L8016F3B8_ovl3:
/* CFDF8 8016F3B8 10C00005 */  beqz       $a2, .L8016F3D0_ovl3
/* CFDFC 8016F3BC 3C01800E */   lui       $at, %hi(D_800E64D0)
/* CFE00 8016F3C0 8C6F0000 */  lw         $t7, 0x0($v1)
glabel func_8016F3C4_ovl5
/* CFE04 8016F3C4 000FC080 */  sll        $t8, $t7, 2
/* CFE08 8016F3C8 0118C821 */  addu       $t9, $t0, $t8
/* CFE0C 8016F3CC AF200000 */  sw         $zero, 0x0($t9)
.L8016F3D0_ovl3:
/* CFE10 8016F3D0 8C620000 */  lw         $v0, 0x0($v1)
/* CFE14 8016F3D4 00021080 */  sll        $v0, $v0, 2
/* CFE18 8016F3D8 01025021 */  addu       $t2, $t0, $v0
/* CFE1C 8016F3DC 8D4B0000 */  lw         $t3, 0x0($t2)
/* CFE20 8016F3E0 00220821 */  addu       $at, $at, $v0
/* CFE24 8016F3E4 51600009 */  beql       $t3, $zero, func_8016F40C_ovl5
glabel func_8016F3E8_ovl5
/* CFE28 8016F3E8 44805000 */   mtc1      $zero, $f10
/* CFE2C 8016F3EC 0C048AD0 */  jal        func_80122B40
/* CFE30 8016F3F0 00000000 */   nop
/* CFE34 8016F3F4 24040003 */  addiu      $a0, $zero, 0x3
/* CFE38 8016F3F8 0C048BDB */  jal        set_kirby_action_1
/* CFE3C 8016F3FC 24050005 */   addiu     $a1, $zero, 0x5
/* CFE40 8016F400 10000092 */  b          .L8016F64C_ovl3
/* CFE44 8016F404 00000000 */   nop
/* CFE48 8016F408 44805000 */  mtc1       $zero, $f10
glabel func_8016F40C_ovl5
/* CFE4C 8016F40C C43064D0 */  lwc1       $f16, %lo(D_800E64D0)($at)
/* CFE50 8016F410 46105032 */  c.eq.s     $f10, $f16
/* CFE54 8016F414 00000000 */  nop
/* CFE58 8016F418 4502001B */  bc1fl      .L8016F488_ovl3
/* CFE5C 8016F41C 90F80007 */   lbu       $t8, 0x7($a3)
/* CFE60 8016F420 14C00013 */  bnez       $a2, .L8016F470_ovl3
/* CFE64 8016F424 A0E00007 */   sb        $zero, 0x7($a3)
/* CFE68 8016F428 3C0C800D */  lui        $t4, %hi(D_800D6F58 + 0x54)
/* CFE6C 8016F42C 8D8C6FAC */  lw         $t4, %lo(D_800D6F58 + 0x54)($t4)
/* CFE70 8016F430 3C0D800D */  lui        $t5, %hi(gKirbyController)
/* CFE74 8016F434 5580000F */  bnel       $t4, $zero, .L8016F474_ovl3
/* CFE78 8016F438 24040007 */   addiu     $a0, $zero, 0x7
/* CFE7C 8016F43C 95AD6FE8 */  lhu        $t5, %lo(gKirbyController)($t5)
/* CFE80 8016F440 31AE0400 */  andi       $t6, $t5, 0x400
/* CFE84 8016F444 51C0000B */  beql       $t6, $zero, .L8016F474_ovl3
/* CFE88 8016F448 24040007 */   addiu     $a0, $zero, 0x7
/* CFE8C 8016F44C 90EF0004 */  lbu        $t7, 0x4($a3)
/* CFE90 8016F450 24010001 */  addiu      $at, $zero, 0x1
/* CFE94 8016F454 2404000B */  addiu      $a0, $zero, 0xB
/* CFE98 8016F458 55E10006 */  bnel       $t7, $at, .L8016F474_ovl3
/* CFE9C 8016F45C 24040007 */   addiu     $a0, $zero, 0x7
/* CFEA0 8016F460 0C048BDB */  jal        set_kirby_action_1
/* CFEA4 8016F464 24050010 */   addiu     $a1, $zero, 0x10
/* CFEA8 8016F468 10000078 */  b          .L8016F64C_ovl3
/* CFEAC 8016F46C 00000000 */   nop
.L8016F470_ovl3:
/* CFEB0 8016F470 24040007 */  addiu      $a0, $zero, 0x7
.L8016F474_ovl3:
/* CFEB4 8016F474 0C048BDB */  jal        set_kirby_action_1
/* CFEB8 8016F478 24050007 */   addiu     $a1, $zero, 0x7
/* CFEBC 8016F47C 10000073 */  b          .L8016F64C_ovl3
/* CFEC0 8016F480 00000000 */   nop
/* CFEC4 8016F484 90F80007 */  lbu        $t8, 0x7($a3)
.L8016F488_ovl3:
/* CFEC8 8016F488 ACE00044 */  sw         $zero, 0x44($a3)
/* CFECC 8016F48C 24040002 */  addiu      $a0, $zero, 0x2
/* CFED0 8016F490 57000009 */  bnel       $t8, $zero, .L8016F4B8_ovl3
/* CFED4 8016F494 44800000 */   mtc1      $zero, $f0
/* CFED8 8016F498 0C048AD0 */  jal        func_80122B40
/* CFEDC 8016F49C 00000000 */   nop
/* CFEE0 8016F4A0 24040001 */  addiu      $a0, $zero, 0x1
/* CFEE4 8016F4A4 0C048BDB */  jal        set_kirby_action_1
/* CFEE8 8016F4A8 24050003 */   addiu     $a1, $zero, 0x3
/* CFEEC 8016F4AC 10000005 */  b          .L8016F4C4_ovl5
/* CFEF0 8016F4B0 00000000 */   nop
/* CFEF4 8016F4B4 44800000 */  mtc1       $zero, $f0
.L8016F4B8_ovl3:
/* CFEF8 8016F4B8 24050004 */  addiu      $a1, $zero, 0x4
/* CFEFC 8016F4BC 0C048BDB */  jal        set_kirby_action_1
/* CFF00 8016F4C0 E4E00038 */   swc1      $f0, 0x38($a3)
.L8016F4C4_ovl5:
/* CFF04 8016F4C4 0C048BEC */  jal        func_80122FB0
/* CFF08 8016F4C8 24040001 */   addiu     $a0, $zero, 0x1
/* CFF0C 8016F4CC 1000005F */  b          .L8016F64C_ovl3
/* CFF10 8016F4D0 00000000 */   nop
.L8016F4D4_ovl3:
/* CFF14 8016F4D4 3C19800F */  lui        $t9, %hi(D_800E83E0)
/* CFF18 8016F4D8 0322C821 */  addu       $t9, $t9, $v0
/* CFF1C 8016F4DC 8F3983E0 */  lw         $t9, %lo(D_800E83E0)($t9)
/* CFF20 8016F4E0 3C0B8000 */  lui        $t3, (0x80000000 >> 16)
/* CFF24 8016F4E4 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* CFF28 8016F4E8 332AFFFF */  andi       $t2, $t9, 0xFFFF
.L8016F4EC_ovl5:
/* CFF2C 8016F4EC 152A0026 */  bne        $t1, $t2, .L8016F588_ovl3
/* CFF30 8016F4F0 24040005 */   addiu     $a0, $zero, 0x5
/* CFF34 8016F4F4 AC2BC2E0 */  sw         $t3, %lo(D_800EC2E0)($at)
/* CFF38 8016F4F8 A0E00007 */  sb         $zero, 0x7($a3)
/* CFF3C 8016F4FC 8C620000 */  lw         $v0, 0x0($v1)
/* CFF40 8016F500 3C0C800F */  lui        $t4, %hi(D_800E8AE0)
/* CFF44 8016F504 3C014080 */  lui        $at, (0x40800000 >> 16)
/* CFF48 8016F508 00021080 */  sll        $v0, $v0, 2
/* CFF4C 8016F50C 01826021 */  addu       $t4, $t4, $v0
.L8016F510_ovl5:
/* CFF50 8016F510 8D8C8AE0 */  lw         $t4, %lo(D_800E8AE0)($t4)
/* CFF54 8016F514 3C09800E */  lui        $t1, %hi(D_800E3750)
/* CFF58 8016F518 318D0006 */  andi       $t5, $t4, 0x6
/* CFF5C 8016F51C 55A00008 */  bnel       $t5, $zero, .L8016F540_ovl5
/* CFF60 8016F520 44812000 */   mtc1      $at, $f4
/* CFF64 8016F524 3C014100 */  lui        $at, (0x41000000 >> 16)
/* CFF68 8016F528 44819000 */  mtc1       $at, $f18
/* CFF6C 8016F52C 3C01800E */  lui        $at, %hi(D_800E3210)
/* CFF70 8016F530 00220821 */  addu       $at, $at, $v0
/* CFF74 8016F534 10000005 */  b          .L8016F54C_ovl3
/* CFF78 8016F538 E4323210 */   swc1      $f18, %lo(D_800E3210)($at)
/* CFF7C 8016F53C 44812000 */  mtc1       $at, $f4
.L8016F540_ovl5:
/* CFF80 8016F540 3C01800E */  lui        $at, %hi(D_800E3210)
/* CFF84 8016F544 00220821 */  addu       $at, $at, $v0
/* CFF88 8016F548 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
.L8016F54C_ovl3:
/* CFF8C 8016F54C 8C6E0000 */  lw         $t6, 0x0($v1)
/* CFF90 8016F550 44800000 */  mtc1       $zero, $f0
/* CFF94 8016F554 25293750 */  addiu      $t1, $t1, %lo(D_800E3750)
.L8016F558_ovl5:
/* CFF98 8016F558 000E7880 */  sll        $t7, $t6, 2
/* CFF9C 8016F55C 012FC021 */  addu       $t8, $t1, $t7
/* CFFA0 8016F560 E7000000 */  swc1       $f0, 0x0($t8)
/* CFFA4 8016F564 8C790000 */  lw         $t9, 0x0($v1)
/* CFFA8 8016F568 3C01800E */  lui        $at, %hi(D_800E3C90)
/* CFFAC 8016F56C 24050005 */  addiu      $a1, $zero, 0x5
/* CFFB0 8016F570 00195080 */  sll        $t2, $t9, 2
/* CFFB4 8016F574 002A0821 */  addu       $at, $at, $t2
/* CFFB8 8016F578 0C048BDB */  jal        set_kirby_action_1
/* CFFBC 8016F57C E4203C90 */   swc1      $f0, %lo(D_800E3C90)($at)
/* CFFC0 8016F580 10000032 */  b          .L8016F64C_ovl3
/* CFFC4 8016F584 00000000 */   nop
.L8016F588_ovl3:
/* CFFC8 8016F588 0C05E44C */  jal        func_80179130_ovl3
/* CFFCC 8016F58C 00000000 */   nop
/* CFFD0 8016F590 10400006 */  beqz       $v0, .L8016F5AC_ovl3
/* CFFD4 8016F594 3C038005 */   lui       $v1, %hi(D_8004A7C4)
/* CFFD8 8016F598 3C018013 */  lui        $at, %hi(D_8012E7C5 + 0x2)
/* CFFDC 8016F59C 3C078013 */  lui        $a3, %hi(gKirbyState)
.L8016F5A0_ovl5:
/* CFFE0 8016F5A0 A020E7C7 */  sb         $zero, %lo(D_8012E7C5 + 0x2)($at)
/* CFFE4 8016F5A4 1000002B */  b          .L8016F654_ovl3
/* CFFE8 8016F5A8 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
.L8016F5AC_ovl3:
/* CFFEC 8016F5AC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* CFFF0 8016F5B0 3C0B800F */  lui        $t3, %hi(D_800E8AE0)
/* CFFF4 8016F5B4 3C09800E */  lui        $t1, %hi(D_800E3750)
.L8016F5B8_ovl5:
/* CFFF8 8016F5B8 8C620000 */  lw         $v0, 0x0($v1)
/* CFFFC 8016F5BC 25293750 */  addiu      $t1, $t1, %lo(D_800E3750)
/* D0000 8016F5C0 3C018019 */  lui        $at, %hi(D_80197388_ovl3)
/* D0004 8016F5C4 00021080 */  sll        $v0, $v0, 2
/* D0008 8016F5C8 01625821 */  addu       $t3, $t3, $v0
/* D000C 8016F5CC 8D6B8AE0 */  lw         $t3, %lo(D_800E8AE0)($t3)
/* D0010 8016F5D0 316C0006 */  andi       $t4, $t3, 0x6
/* D0014 8016F5D4 1180000C */  beqz       $t4, .L8016F608_ovl5
/* D0018 8016F5D8 00000000 */   nop
/* D001C 8016F5DC C4267388 */  lwc1       $f6, %lo(D_80197388_ovl3)($at)
/* D0020 8016F5E0 01226821 */  addu       $t5, $t1, $v0
/* D0024 8016F5E4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* D0028 8016F5E8 E5A60000 */  swc1       $f6, 0x0($t5)
/* D002C 8016F5EC 8C6E0000 */  lw         $t6, 0x0($v1)
/* D0030 8016F5F0 44814000 */  mtc1       $at, $f8
/* D0034 8016F5F4 3C01800E */  lui        $at, %hi(D_800E3C90)
/* D0038 8016F5F8 000E7880 */  sll        $t7, $t6, 2
/* D003C 8016F5FC 002F0821 */  addu       $at, $at, $t7
/* D0040 8016F600 10000012 */  b          .L8016F64C_ovl3
/* D0044 8016F604 E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
.L8016F608_ovl5:
/* D0048 8016F608 3C188013 */  lui        $t8, %hi(gKirbyState + 0x4)
/* D004C 8016F60C 9318E7C4 */  lbu        $t8, %lo(gKirbyState + 0x4)($t8)
/* D0050 8016F610 1700000E */  bnez       $t8, .L8016F64C_ovl3
/* D0054 8016F614 3C19800F */   lui       $t9, %hi(D_800E9720)
/* D0058 8016F618 27399720 */  addiu      $t9, $t9, %lo(D_800E9720)
/* D005C 8016F61C 00591821 */  addu       $v1, $v0, $t9
.L8016F620_ovl5:
/* D0060 8016F620 8C640000 */  lw         $a0, 0x0($v1)
/* D0064 8016F624 2C850001 */  sltiu      $a1, $a0, 0x1
/* D0068 8016F628 248AFFFF */  addiu      $t2, $a0, -0x1
/* D006C 8016F62C 10A00007 */  beqz       $a1, .L8016F64C_ovl3
/* D0070 8016F630 AC6A0000 */   sw        $t2, 0x0($v1)
/* D0074 8016F634 24040008 */  addiu      $a0, $zero, 0x8
/* D0078 8016F638 0C048BDB */  jal        set_kirby_action_1
/* D007C 8016F63C 24050008 */   addiu     $a1, $zero, 0x8
/* D0080 8016F640 10000002 */  b          .L8016F64C_ovl3
/* D0084 8016F644 00000000 */   nop
.L8016F648_ovl3:
/* D0088 8016F648 A020E7C7 */  sb         $zero, %lo(D_8012E7C5 + 0x2)($at)
.L8016F64C_ovl3:
/* D008C 8016F64C 3C078013 */  lui        $a3, %hi(gKirbyState)
/* D0090 8016F650 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L8016F654_ovl3:
/* D0094 8016F654 8CEB00FC */  lw         $t3, 0xFC($a3)
.L8016F658_ovl3:
/* D0098 8016F658 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* D009C 8016F65C 15600005 */  bnez       $t3, .L8016F674_ovl3
/* D00A0 8016F660 00000000 */   nop
/* D00A4 8016F664 0C047B5A */  jal        func_8011ED68
/* D00A8 8016F668 00000000 */   nop
/* D00AC 8016F66C 10000018 */  b          .L8016F6D0_ovl3
.L8016F670_ovl5:
/* D00B0 8016F670 8FBF0014 */   lw        $ra, 0x14($sp)
.L8016F674_ovl3:
/* D00B4 8016F674 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* D00B8 8016F678 44805000 */  mtc1       $zero, $f10
/* D00BC 8016F67C 3C04800E */  lui        $a0, %hi(D_800E6690)
/* D00C0 8016F680 8C6C0000 */  lw         $t4, 0x0($v1)
/* D00C4 8016F684 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
.L8016F688_ovl5:
/* D00C8 8016F688 3C01800E */  lui        $at, %hi(D_800E64D0)
/* D00CC 8016F68C 000C6880 */  sll        $t5, $t4, 2
/* D00D0 8016F690 008D7021 */  addu       $t6, $a0, $t5
/* D00D4 8016F694 E5CA0000 */  swc1       $f10, 0x0($t6)
/* D00D8 8016F698 8C620000 */  lw         $v0, 0x0($v1)
/* D00DC 8016F69C 00021080 */  sll        $v0, $v0, 2
/* D00E0 8016F6A0 00827821 */  addu       $t7, $a0, $v0
/* D00E4 8016F6A4 C5F00000 */  lwc1       $f16, 0x0($t7)
/* D00E8 8016F6A8 00220821 */  addu       $at, $at, $v0
/* D00EC 8016F6AC E43064D0 */  swc1       $f16, %lo(D_800E64D0)($at)
/* D00F0 8016F6B0 8C780000 */  lw         $t8, 0x0($v1)
/* D00F4 8016F6B4 3C018019 */  lui        $at, %hi(D_8019738C_ovl3)
/* D00F8 8016F6B8 C432738C */  lwc1       $f18, %lo(D_8019738C_ovl3)($at)
/* D00FC 8016F6BC 3C01800E */  lui        $at, %hi(D_800E6850)
/* D0100 8016F6C0 0018C880 */  sll        $t9, $t8, 2
/* D0104 8016F6C4 00390821 */  addu       $at, $at, $t9
/* D0108 8016F6C8 E4326850 */  swc1       $f18, %lo(D_800E6850)($at)
/* D010C 8016F6CC 8FBF0014 */  lw         $ra, 0x14($sp)
.L8016F6D0_ovl3:
/* D0110 8016F6D0 27BD0038 */  addiu      $sp, $sp, 0x38
/* D0114 8016F6D4 03E00008 */  jr         $ra
/* D0118 8016F6D8 00000000 */   nop
