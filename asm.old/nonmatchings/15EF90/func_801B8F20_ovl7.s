glabel func_801B8F20_ovl7
/* 15EF90 801B8F20 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 15EF94 801B8F24 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 15EF98 801B8F28 8CAE0000 */  lw         $t6, 0x0($a1)
/* 15EF9C 801B8F2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 15EFA0 801B8F30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 15EFA4 801B8F34 AFA40018 */  sw         $a0, 0x18($sp)
/* 15EFA8 801B8F38 8DC30000 */  lw         $v1, 0x0($t6)
/* 15EFAC 801B8F3C 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 15EFB0 801B8F40 3C01800F */  lui        $at, %hi(D_800E8920)
/* 15EFB4 801B8F44 00031880 */  sll        $v1, $v1, 2
/* 15EFB8 801B8F48 00431021 */  addu       $v0, $v0, $v1
/* 15EFBC 801B8F4C 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 15EFC0 801B8F50 00230821 */  addu       $at, $at, $v1
/* 15EFC4 801B8F54 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 15EFC8 801B8F58 240FFFFF */  addiu      $t7, $zero, -0x1
/* 15EFCC 801B8F5C A04F0039 */  sb         $t7, 0x39($v0)
/* 15EFD0 801B8F60 8CA70000 */  lw         $a3, 0x0($a1)
/* 15EFD4 801B8F64 44806000 */  mtc1       $zero, $f12
/* 15EFD8 801B8F68 3C01800F */  lui        $at, %hi(D_800EB160)
/* 15EFDC 801B8F6C 8CF80000 */  lw         $t8, 0x0($a3)
/* 15EFE0 801B8F70 3C06800F */  lui        $a2, %hi(D_800EB320)
/* 15EFE4 801B8F74 24C6B320 */  addiu      $a2, $a2, %lo(D_800EB320)
/* 15EFE8 801B8F78 0018C880 */  sll        $t9, $t8, 2
/* 15EFEC 801B8F7C 00390821 */  addu       $at, $at, $t9
/* 15EFF0 801B8F80 E42CB160 */  swc1       $f12, %lo(D_800EB160)($at)
/* 15EFF4 801B8F84 8CEA0000 */  lw         $t2, 0x0($a3)
/* 15EFF8 801B8F88 3C09800E */  lui        $t1, %hi(D_800E7880)
/* 15EFFC 801B8F8C 25297880 */  addiu      $t1, $t1, %lo(D_800E7880)
/* 15F000 801B8F90 000A5880 */  sll        $t3, $t2, 2
/* 15F004 801B8F94 00CB6021 */  addu       $t4, $a2, $t3
/* 15F008 801B8F98 E58C0000 */  swc1       $f12, 0x0($t4)
/* 15F00C 801B8F9C 8CE80000 */  lw         $t0, 0x0($a3)
/* 15F010 801B8FA0 24010001 */  addiu      $at, $zero, 0x1
/* 15F014 801B8FA4 3C0E800F */  lui        $t6, %hi(D_800E98E0)
/* 15F018 801B8FA8 01286821 */  addu       $t5, $t1, $t0
/* 15F01C 801B8FAC 91A40000 */  lbu        $a0, 0x0($t5)
/* 15F020 801B8FB0 00081880 */  sll        $v1, $t0, 2
/* 15F024 801B8FB4 01C37021 */  addu       $t6, $t6, $v1
/* 15F028 801B8FB8 14810004 */  bne        $a0, $at, .L801B8FCC_ovl7
/* 15F02C 801B8FBC 00000000 */   nop
/* 15F030 801B8FC0 8DCE98E0 */  lw         $t6, %lo(D_800E98E0)($t6)
/* 15F034 801B8FC4 15C00003 */  bnez       $t6, .L801B8FD4_ovl7
/* 15F038 801B8FC8 00000000 */   nop
.L801B8FCC_ovl7:
/* 15F03C 801B8FCC 14800034 */  bnez       $a0, .L801B90A0_ovl7
/* 15F040 801B8FD0 00081880 */   sll       $v1, $t0, 2
.L801B8FD4_ovl7:
/* 15F044 801B8FD4 3C04800E */  lui        $a0, %hi(gEntitiesAngleZArray)
/* 15F048 801B8FD8 24844390 */  addiu      $a0, $a0, %lo(gEntitiesAngleZArray)
/* 15F04C 801B8FDC 3C01801D */  lui        $at, %hi(D_801CE3A4_ovl7)
/* 15F050 801B8FE0 00831021 */  addu       $v0, $a0, $v1
/* 15F054 801B8FE4 C422E3A4 */  lwc1       $f2, %lo(D_801CE3A4_ovl7)($at)
/* 15F058 801B8FE8 C4400000 */  lwc1       $f0, 0x0($v0)
/* 15F05C 801B8FEC 4600103C */  c.lt.s     $f2, $f0
/* 15F060 801B8FF0 00000000 */  nop
/* 15F064 801B8FF4 4502000C */  bc1fl      .L801B9028_ovl7
/* 15F068 801B8FF8 460C003C */   c.lt.s    $f0, $f12
/* 15F06C 801B8FFC 46020101 */  sub.s      $f4, $f0, $f2
.L801B9000_ovl7:
/* 15F070 801B9000 E4440000 */  swc1       $f4, 0x0($v0)
/* 15F074 801B9004 8CE30000 */  lw         $v1, 0x0($a3)
/* 15F078 801B9008 00031880 */  sll        $v1, $v1, 2
/* 15F07C 801B900C 00831021 */  addu       $v0, $a0, $v1
/* 15F080 801B9010 C4400000 */  lwc1       $f0, 0x0($v0)
/* 15F084 801B9014 4600103C */  c.lt.s     $f2, $f0
/* 15F088 801B9018 00000000 */  nop
/* 15F08C 801B901C 4503FFF8 */  bc1tl      .L801B9000_ovl7
/* 15F090 801B9020 46020101 */   sub.s     $f4, $f0, $f2
/* 15F094 801B9024 460C003C */  c.lt.s     $f0, $f12
.L801B9028_ovl7:
/* 15F098 801B9028 00000000 */  nop
/* 15F09C 801B902C 4502000C */  bc1fl      .L801B9060_ovl7
/* 15F0A0 801B9030 46001301 */   sub.s     $f12, $f2, $f0
/* 15F0A4 801B9034 46020180 */  add.s      $f6, $f0, $f2
.L801B9038_ovl7:
/* 15F0A8 801B9038 E4460000 */  swc1       $f6, 0x0($v0)
/* 15F0AC 801B903C 8CE30000 */  lw         $v1, 0x0($a3)
/* 15F0B0 801B9040 00031880 */  sll        $v1, $v1, 2
/* 15F0B4 801B9044 00831021 */  addu       $v0, $a0, $v1
/* 15F0B8 801B9048 C4400000 */  lwc1       $f0, 0x0($v0)
/* 15F0BC 801B904C 460C003C */  c.lt.s     $f0, $f12
/* 15F0C0 801B9050 00000000 */  nop
/* 15F0C4 801B9054 4503FFF8 */  bc1tl      .L801B9038_ovl7
/* 15F0C8 801B9058 46020180 */   add.s     $f6, $f0, $f2
/* 15F0CC 801B905C 46001301 */  sub.s      $f12, $f2, $f0
.L801B9060_ovl7:
/* 15F0D0 801B9060 3C02800F */  lui        $v0, %hi(D_800EA6E0)
/* 15F0D4 801B9064 2442A6E0 */  addiu      $v0, $v0, %lo(D_800EA6E0)
/* 15F0D8 801B9068 00437821 */  addu       $t7, $v0, $v1
/* 15F0DC 801B906C E5EC0000 */  swc1       $f12, 0x0($t7)
/* 15F0E0 801B9070 8CF80000 */  lw         $t8, 0x0($a3)
/* 15F0E4 801B9074 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 15F0E8 801B9078 44814000 */  mtc1       $at, $f8
/* 15F0EC 801B907C 0018C880 */  sll        $t9, $t8, 2
/* 15F0F0 801B9080 00D95021 */  addu       $t2, $a2, $t9
/* 15F0F4 801B9084 E54C0000 */  swc1       $f12, 0x0($t2)
/* 15F0F8 801B9088 8CEB0000 */  lw         $t3, 0x0($a3)
/* 15F0FC 801B908C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 15F100 801B9090 000B6080 */  sll        $t4, $t3, 2
/* 15F104 801B9094 002C0821 */  addu       $at, $at, $t4
/* 15F108 801B9098 1000000F */  b          .L801B90D8_ovl7
/* 15F10C 801B909C E4286A10 */   swc1      $f8, %lo(D_800E6A10)($at)
.L801B90A0_ovl7:
/* 15F110 801B90A0 3C01801D */  lui        $at, %hi(D_801CE3A8_ovl7)
/* 15F114 801B90A4 C42AE3A8 */  lwc1       $f10, %lo(D_801CE3A8_ovl7)($at)
/* 15F118 801B90A8 3C02800F */  lui        $v0, %hi(D_800EA6E0)
/* 15F11C 801B90AC 2442A6E0 */  addiu      $v0, $v0, %lo(D_800EA6E0)
/* 15F120 801B90B0 00436821 */  addu       $t5, $v0, $v1
/* 15F124 801B90B4 E5AA0000 */  swc1       $f10, 0x0($t5)
/* 15F128 801B90B8 8CE30000 */  lw         $v1, 0x0($a3)
/* 15F12C 801B90BC 3C04800E */  lui        $a0, %hi(gEntitiesAngleZArray)
/* 15F130 801B90C0 24844390 */  addiu      $a0, $a0, %lo(gEntitiesAngleZArray)
/* 15F134 801B90C4 00031880 */  sll        $v1, $v1, 2
/* 15F138 801B90C8 00437021 */  addu       $t6, $v0, $v1
/* 15F13C 801B90CC C5D00000 */  lwc1       $f16, 0x0($t6)
/* 15F140 801B90D0 00C37821 */  addu       $t7, $a2, $v1
/* 15F144 801B90D4 E5F00000 */  swc1       $f16, 0x0($t7)
.L801B90D8_ovl7:
/* 15F148 801B90D8 8CE80000 */  lw         $t0, 0x0($a3)
/* 15F14C 801B90DC 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 15F150 801B90E0 24050003 */  addiu      $a1, $zero, 0x3
/* 15F154 801B90E4 0128C021 */  addu       $t8, $t1, $t0
/* 15F158 801B90E8 93190000 */  lbu        $t9, 0x0($t8)
/* 15F15C 801B90EC 5320000C */  beql       $t9, $zero, .L801B9120_ovl7
/* 15F160 801B90F0 00087080 */   sll       $t6, $t0, 2
/* 15F164 801B90F4 44809000 */  mtc1       $zero, $f18
/* 15F168 801B90F8 00085080 */  sll        $t2, $t0, 2
/* 15F16C 801B90FC 008A5821 */  addu       $t3, $a0, $t2
/* 15F170 801B9100 E5720000 */  swc1       $f18, 0x0($t3)
/* 15F174 801B9104 8CEC0000 */  lw         $t4, 0x0($a3)
/* 15F178 801B9108 000C6880 */  sll        $t5, $t4, 2
/* 15F17C 801B910C 008D1021 */  addu       $v0, $a0, $t5
/* 15F180 801B9110 C4440000 */  lwc1       $f4, 0x0($v0)
/* 15F184 801B9114 E4440000 */  swc1       $f4, 0x0($v0)
/* 15F188 801B9118 8CE80000 */  lw         $t0, 0x0($a3)
/* 15F18C 801B911C 00087080 */  sll        $t6, $t0, 2
.L801B9120_ovl7:
/* 15F190 801B9120 002E0821 */  addu       $at, $at, $t6
/* 15F194 801B9124 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
/* 15F198 801B9128 8CEF0000 */  lw         $t7, 0x0($a3)
/* 15F19C 801B912C 3C06801D */  lui        $a2, %hi(D_801CD730_ovl7)
/* 15F1A0 801B9130 24C6D730 */  addiu      $a2, $a2, %lo(D_801CD730_ovl7)
/* 15F1A4 801B9134 012FC021 */  addu       $t8, $t1, $t7
/* 15F1A8 801B9138 0C02911F */  jal        call_virtual_function
/* 15F1AC 801B913C 93040000 */   lbu       $a0, 0x0($t8)
/* 15F1B0 801B9140 8FBF0014 */  lw         $ra, 0x14($sp)
/* 15F1B4 801B9144 27BD0018 */  addiu      $sp, $sp, 0x18
/* 15F1B8 801B9148 03E00008 */  jr         $ra
/* 15F1BC 801B914C 00000000 */   nop
