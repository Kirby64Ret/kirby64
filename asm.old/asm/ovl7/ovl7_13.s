.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_801B8F20
/* 15EF90 801B8F20 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 15EF94 801B8F24 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 15EF98 801B8F28 8CAE0000 */  lw    $t6, ($a1)
/* 15EF9C 801B8F2C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15EFA0 801B8F30 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15EFA4 801B8F34 AFA40018 */  sw    $a0, 0x18($sp)
/* 15EFA8 801B8F38 8DC30000 */  lw    $v1, ($t6)
/* 15EFAC 801B8F3C 3C02800E */  lui   $v0, 0x800e
/* 15EFB0 801B8F40 3C01800F */  lui   $at, 0x800f
/* 15EFB4 801B8F44 00031880 */  sll   $v1, $v1, 2
/* 15EFB8 801B8F48 00431021 */  addu  $v0, $v0, $v1
/* 15EFBC 801B8F4C 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 15EFC0 801B8F50 00230821 */  addu  $at, $at, $v1
/* 15EFC4 801B8F54 AC208920 */  sw    $zero, -0x76e0($at)
/* 15EFC8 801B8F58 240FFFFF */  li    $t7, -1
/* 15EFCC 801B8F5C A04F0039 */  sb    $t7, 0x39($v0)
/* 15EFD0 801B8F60 8CA70000 */  lw    $a3, ($a1)
/* 15EFD4 801B8F64 44806000 */  mtc1  $zero, $f12
/* 15EFD8 801B8F68 3C01800F */  lui   $at, 0x800f
/* 15EFDC 801B8F6C 8CF80000 */  lw    $t8, ($a3)
/* 15EFE0 801B8F70 3C06800F */  lui   $a2, %hi(D_800EB320) # $a2, 0x800f
/* 15EFE4 801B8F74 24C6B320 */  addiu $a2, %lo(D_800EB320) # addiu $a2, $a2, -0x4ce0
/* 15EFE8 801B8F78 0018C880 */  sll   $t9, $t8, 2
/* 15EFEC 801B8F7C 00390821 */  addu  $at, $at, $t9
/* 15EFF0 801B8F80 E42CB160 */  swc1  $f12, -0x4ea0($at)
/* 15EFF4 801B8F84 8CEA0000 */  lw    $t2, ($a3)
/* 15EFF8 801B8F88 3C09800E */  lui   $t1, %hi(D_800E7880) # $t1, 0x800e
/* 15EFFC 801B8F8C 25297880 */  addiu $t1, %lo(D_800E7880) # addiu $t1, $t1, 0x7880
/* 15F000 801B8F90 000A5880 */  sll   $t3, $t2, 2
/* 15F004 801B8F94 00CB6021 */  addu  $t4, $a2, $t3
/* 15F008 801B8F98 E58C0000 */  swc1  $f12, ($t4)
/* 15F00C 801B8F9C 8CE80000 */  lw    $t0, ($a3)
/* 15F010 801B8FA0 24010001 */  li    $at, 1
/* 15F014 801B8FA4 3C0E800F */  lui   $t6, 0x800f
/* 15F018 801B8FA8 01286821 */  addu  $t5, $t1, $t0
/* 15F01C 801B8FAC 91A40000 */  lbu   $a0, ($t5)
/* 15F020 801B8FB0 00081880 */  sll   $v1, $t0, 2
/* 15F024 801B8FB4 01C37021 */  addu  $t6, $t6, $v1
/* 15F028 801B8FB8 14810004 */  bne   $a0, $at, .L801B8FCC_ovl7
/* 15F02C 801B8FBC 00000000 */   nop   
/* 15F030 801B8FC0 8DCE98E0 */  lw    $t6, -0x6720($t6)
/* 15F034 801B8FC4 15C00003 */  bnez  $t6, .L801B8FD4_ovl7
/* 15F038 801B8FC8 00000000 */   nop   
.L801B8FCC_ovl7:
/* 15F03C 801B8FCC 14800034 */  bnez  $a0, .L801B90A0_ovl7
/* 15F040 801B8FD0 00081880 */   sll   $v1, $t0, 2
.L801B8FD4_ovl7:
/* 15F044 801B8FD4 3C04800E */  lui   $a0, %hi(gEntitiesAngleZArray) # $a0, 0x800e
/* 15F048 801B8FD8 24844390 */  addiu $a0, %lo(gEntitiesAngleZArray) # addiu $a0, $a0, 0x4390
/* 15F04C 801B8FDC 3C01801D */  lui   $at, %hi(D_801CE3A4) # $at, 0x801d
/* 15F050 801B8FE0 00831021 */  addu  $v0, $a0, $v1
/* 15F054 801B8FE4 C422E3A4 */  lwc1  $f2, %lo(D_801CE3A4)($at)
/* 15F058 801B8FE8 C4400000 */  lwc1  $f0, ($v0)
/* 15F05C 801B8FEC 4600103C */  c.lt.s $f2, $f0
/* 15F060 801B8FF0 00000000 */  nop   
/* 15F064 801B8FF4 4502000C */  bc1fl .L801B9028_ovl7
/* 15F068 801B8FF8 460C003C */   c.lt.s $f0, $f12
/* 15F06C 801B8FFC 46020101 */  sub.s $f4, $f0, $f2
.L801B9000_ovl7:
/* 15F070 801B9000 E4440000 */  swc1  $f4, ($v0)
/* 15F074 801B9004 8CE30000 */  lw    $v1, ($a3)
/* 15F078 801B9008 00031880 */  sll   $v1, $v1, 2
/* 15F07C 801B900C 00831021 */  addu  $v0, $a0, $v1
/* 15F080 801B9010 C4400000 */  lwc1  $f0, ($v0)
/* 15F084 801B9014 4600103C */  c.lt.s $f2, $f0
/* 15F088 801B9018 00000000 */  nop   
/* 15F08C 801B901C 4503FFF8 */  bc1tl .L801B9000_ovl7
/* 15F090 801B9020 46020101 */   sub.s $f4, $f0, $f2
/* 15F094 801B9024 460C003C */  c.lt.s $f0, $f12
.L801B9028_ovl7:
/* 15F098 801B9028 00000000 */  nop   
/* 15F09C 801B902C 4502000C */  bc1fl .L801B9060_ovl7
/* 15F0A0 801B9030 46001301 */   sub.s $f12, $f2, $f0
/* 15F0A4 801B9034 46020180 */  add.s $f6, $f0, $f2
.L801B9038_ovl7:
/* 15F0A8 801B9038 E4460000 */  swc1  $f6, ($v0)
/* 15F0AC 801B903C 8CE30000 */  lw    $v1, ($a3)
/* 15F0B0 801B9040 00031880 */  sll   $v1, $v1, 2
/* 15F0B4 801B9044 00831021 */  addu  $v0, $a0, $v1
/* 15F0B8 801B9048 C4400000 */  lwc1  $f0, ($v0)
/* 15F0BC 801B904C 460C003C */  c.lt.s $f0, $f12
/* 15F0C0 801B9050 00000000 */  nop   
/* 15F0C4 801B9054 4503FFF8 */  bc1tl .L801B9038_ovl7
/* 15F0C8 801B9058 46020180 */   add.s $f6, $f0, $f2
/* 15F0CC 801B905C 46001301 */  sub.s $f12, $f2, $f0
.L801B9060_ovl7:
/* 15F0D0 801B9060 3C02800F */  lui   $v0, %hi(D_800EA6E0) # $v0, 0x800f
/* 15F0D4 801B9064 2442A6E0 */  addiu $v0, %lo(D_800EA6E0) # addiu $v0, $v0, -0x5920
/* 15F0D8 801B9068 00437821 */  addu  $t7, $v0, $v1
/* 15F0DC 801B906C E5EC0000 */  swc1  $f12, ($t7)
/* 15F0E0 801B9070 8CF80000 */  lw    $t8, ($a3)
/* 15F0E4 801B9074 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 15F0E8 801B9078 44814000 */  mtc1  $at, $f8
/* 15F0EC 801B907C 0018C880 */  sll   $t9, $t8, 2
/* 15F0F0 801B9080 00D95021 */  addu  $t2, $a2, $t9
/* 15F0F4 801B9084 E54C0000 */  swc1  $f12, ($t2)
/* 15F0F8 801B9088 8CEB0000 */  lw    $t3, ($a3)
/* 15F0FC 801B908C 3C01800E */  lui   $at, 0x800e
/* 15F100 801B9090 000B6080 */  sll   $t4, $t3, 2
/* 15F104 801B9094 002C0821 */  addu  $at, $at, $t4
/* 15F108 801B9098 1000000F */  b     .L801B90D8_ovl7
/* 15F10C 801B909C E4286A10 */   swc1  $f8, 0x6a10($at)
.L801B90A0_ovl7:
/* 15F110 801B90A0 3C01801D */  lui   $at, %hi(D_801CE3A8) # $at, 0x801d
/* 15F114 801B90A4 C42AE3A8 */  lwc1  $f10, %lo(D_801CE3A8)($at)
/* 15F118 801B90A8 3C02800F */  lui   $v0, %hi(D_800EA6E0) # $v0, 0x800f
/* 15F11C 801B90AC 2442A6E0 */  addiu $v0, %lo(D_800EA6E0) # addiu $v0, $v0, -0x5920
/* 15F120 801B90B0 00436821 */  addu  $t5, $v0, $v1
/* 15F124 801B90B4 E5AA0000 */  swc1  $f10, ($t5)
/* 15F128 801B90B8 8CE30000 */  lw    $v1, ($a3)
/* 15F12C 801B90BC 3C04800E */  lui   $a0, %hi(gEntitiesAngleZArray) # $a0, 0x800e
/* 15F130 801B90C0 24844390 */  addiu $a0, %lo(gEntitiesAngleZArray) # addiu $a0, $a0, 0x4390
/* 15F134 801B90C4 00031880 */  sll   $v1, $v1, 2
/* 15F138 801B90C8 00437021 */  addu  $t6, $v0, $v1
/* 15F13C 801B90CC C5D00000 */  lwc1  $f16, ($t6)
/* 15F140 801B90D0 00C37821 */  addu  $t7, $a2, $v1
/* 15F144 801B90D4 E5F00000 */  swc1  $f16, ($t7)
.L801B90D8_ovl7:
/* 15F148 801B90D8 8CE80000 */  lw    $t0, ($a3)
/* 15F14C 801B90DC 3C01800F */  lui   $at, 0x800f
/* 15F150 801B90E0 24050003 */  li    $a1, 3
/* 15F154 801B90E4 0128C021 */  addu  $t8, $t1, $t0
/* 15F158 801B90E8 93190000 */  lbu   $t9, ($t8)
/* 15F15C 801B90EC 5320000C */  beql  $t9, $zero, .L801B9120_ovl7
/* 15F160 801B90F0 00087080 */   sll   $t6, $t0, 2
/* 15F164 801B90F4 44809000 */  mtc1  $zero, $f18
/* 15F168 801B90F8 00085080 */  sll   $t2, $t0, 2
/* 15F16C 801B90FC 008A5821 */  addu  $t3, $a0, $t2
/* 15F170 801B9100 E5720000 */  swc1  $f18, ($t3)
/* 15F174 801B9104 8CEC0000 */  lw    $t4, ($a3)
/* 15F178 801B9108 000C6880 */  sll   $t5, $t4, 2
/* 15F17C 801B910C 008D1021 */  addu  $v0, $a0, $t5
/* 15F180 801B9110 C4440000 */  lwc1  $f4, ($v0)
/* 15F184 801B9114 E4440000 */  swc1  $f4, ($v0)
/* 15F188 801B9118 8CE80000 */  lw    $t0, ($a3)
/* 15F18C 801B911C 00087080 */  sll   $t6, $t0, 2
.L801B9120_ovl7:
/* 15F190 801B9120 002E0821 */  addu  $at, $at, $t6
/* 15F194 801B9124 AC209C60 */  sw    $zero, -0x63a0($at)
/* 15F198 801B9128 8CEF0000 */  lw    $t7, ($a3)
/* 15F19C 801B912C 3C06801D */  lui   $a2, %hi(D_801CD730) # $a2, 0x801d
/* 15F1A0 801B9130 24C6D730 */  addiu $a2, %lo(D_801CD730) # addiu $a2, $a2, -0x28d0
/* 15F1A4 801B9134 012FC021 */  addu  $t8, $t1, $t7
/* 15F1A8 801B9138 0C02911F */  jal   call_virtual_function
/* 15F1AC 801B913C 93040000 */   lbu   $a0, ($t8)
/* 15F1B0 801B9140 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15F1B4 801B9144 27BD0018 */  addiu $sp, $sp, 0x18
/* 15F1B8 801B9148 03E00008 */  jr    $ra
/* 15F1BC 801B914C 00000000 */   nop   
.type func_801B8F20, @function
.size func_801B8F20, . - func_801B8F20

glabel func_801B9150_ovl7
/* 15F1C0 801B9150 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 15F1C4 801B9154 AFB00030 */  sw    $s0, 0x30($sp)
/* 15F1C8 801B9158 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 15F1CC 801B915C 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 15F1D0 801B9160 8E020000 */  lw    $v0, ($s0)
/* 15F1D4 801B9164 AFBF0034 */  sw    $ra, 0x34($sp)
/* 15F1D8 801B9168 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 15F1DC 801B916C F7B60020 */  sdc1  $f22, 0x20($sp)
/* 15F1E0 801B9170 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 15F1E4 801B9174 AFA40038 */  sw    $a0, 0x38($sp)
/* 15F1E8 801B9178 8C4E0000 */  lw    $t6, ($v0)
/* 15F1EC 801B917C 3C01800E */  lui   $at, 0x800e
/* 15F1F0 801B9180 3C18800B */  lui   $t8, %hi(D_800B74B8) # $t8, 0x800b
/* 15F1F4 801B9184 000E7880 */  sll   $t7, $t6, 2
/* 15F1F8 801B9188 002F0821 */  addu  $at, $at, $t7
/* 15F1FC 801B918C AC20EDD0 */  sw    $zero, -0x1230($at)
/* 15F200 801B9190 8C590000 */  lw    $t9, ($v0)
/* 15F204 801B9194 3C01800E */  lui   $at, 0x800e
/* 15F208 801B9198 271874B8 */  addiu $t8, %lo(D_800B74B8) # addiu $t8, $t8, 0x74b8
/* 15F20C 801B919C 00194080 */  sll   $t0, $t9, 2
/* 15F210 801B91A0 00280821 */  addu  $at, $at, $t0
/* 15F214 801B91A4 AC38EF90 */  sw    $t8, -0x1070($at)
/* 15F218 801B91A8 8C490000 */  lw    $t1, ($v0)
/* 15F21C 801B91AC 3C01800E */  lui   $at, 0x800e
/* 15F220 801B91B0 3C04800E */  lui   $a0, 0x800e
/* 15F224 801B91B4 00095080 */  sll   $t2, $t1, 2
/* 15F228 801B91B8 002A0821 */  addu  $at, $at, $t2
/* 15F22C 801B91BC AC20F150 */  sw    $zero, -0xeb0($at)
/* 15F230 801B91C0 8C4B0000 */  lw    $t3, ($v0)
/* 15F234 801B91C4 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 15F238 801B91C8 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 15F23C 801B91CC 000B6080 */  sll   $t4, $t3, 2
/* 15F240 801B91D0 008C2021 */  addu  $a0, $a0, $t4
/* 15F244 801B91D4 0C02C7DA */  jal   func_800B1F68
/* 15F248 801B91D8 8C84EC10 */   lw    $a0, -0x13f0($a0)
/* 15F24C 801B91DC 00002025 */  move  $a0, $zero
/* 15F250 801B91E0 0C02BEED */  jal   func_800AFBB4
/* 15F254 801B91E4 8E050000 */   lw    $a1, ($s0)
/* 15F258 801B91E8 0C066ED6 */  jal   func_8019BB58_ovl7
/* 15F25C 801B91EC 00000000 */   nop   
/* 15F260 801B91F0 0C068CA0 */  jal   func_801A3280_ovl7
/* 15F264 801B91F4 00000000 */   nop   
/* 15F268 801B91F8 0C006291 */  jal   random_soft_s32_range
/* 15F26C 801B91FC 2404003C */   li    $a0, 60
/* 15F270 801B9200 0C002DAF */  jal   finish_current_thread
/* 15F274 801B9204 00402025 */   move  $a0, $v0
/* 15F278 801B9208 3C01801D */  lui   $at, %hi(D_801CE3AC) # $at, 0x801d
/* 15F27C 801B920C C438E3AC */  lwc1  $f24, %lo(D_801CE3AC)($at)
/* 15F280 801B9210 3C01801D */  lui   $at, %hi(D_801CE3B0) # $at, 0x801d
/* 15F284 801B9214 C436E3B0 */  lwc1  $f22, %lo(D_801CE3B0)($at)
/* 15F288 801B9218 3C01801D */  lui   $at, %hi(D_801CE3B4) # $at, 0x801d
/* 15F28C 801B921C 3C10800D */  lui   $s0, %hi(D_800D6B54) # $s0, 0x800d
/* 15F290 801B9220 26106B54 */  addiu $s0, %lo(D_800D6B54) # addiu $s0, $s0, 0x6b54
/* 15F294 801B9224 C434E3B4 */  lwc1  $f20, %lo(D_801CE3B4)($at)
/* 15F298 801B9228 4406C000 */  mfc1  $a2, $f24
.L801B922C_ovl7:
/* 15F29C 801B922C 4600A306 */  mov.s $f12, $f20
/* 15F2A0 801B9230 0C02CC2F */  jal   func_800B30BC
/* 15F2A4 801B9234 4600B386 */   mov.s $f14, $f22
/* 15F2A8 801B9238 10400006 */  beqz  $v0, .L801B9254_ovl7
/* 15F2AC 801B923C 00000000 */   nop   
/* 15F2B0 801B9240 8E0D0000 */  lw    $t5, ($s0)
/* 15F2B4 801B9244 15A00003 */  bnez  $t5, .L801B9254_ovl7
/* 15F2B8 801B9248 00000000 */   nop   
/* 15F2BC 801B924C 0C06E8CB */  jal   func_801BA32C_ovl7
/* 15F2C0 801B9250 00000000 */   nop   
.L801B9254_ovl7:
/* 15F2C4 801B9254 0C006291 */  jal   random_soft_s32_range
/* 15F2C8 801B9258 2404001E */   li    $a0, 30
/* 15F2CC 801B925C 0C002DAF */  jal   finish_current_thread
/* 15F2D0 801B9260 24440078 */   addiu $a0, $v0, 0x78
/* 15F2D4 801B9264 1000FFF1 */  b     .L801B922C_ovl7
/* 15F2D8 801B9268 4406C000 */   mfc1  $a2, $f24
/* 15F2DC 801B926C 00000000 */  nop   
/* 15F2E0 801B9270 00000000 */  nop   
/* 15F2E4 801B9274 00000000 */  nop   
/* 15F2E8 801B9278 00000000 */  nop   
/* 15F2EC 801B927C 00000000 */  nop   
/* 15F2F0 801B9280 8FBF0034 */  lw    $ra, 0x34($sp)
/* 15F2F4 801B9284 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 15F2F8 801B9288 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 15F2FC 801B928C D7B80028 */  ldc1  $f24, 0x28($sp)
/* 15F300 801B9290 8FB00030 */  lw    $s0, 0x30($sp)
/* 15F304 801B9294 03E00008 */  jr    $ra
/* 15F308 801B9298 27BD0038 */   addiu $sp, $sp, 0x38
.type func_801B9150_ovl7, @function
.size func_801B9150_ovl7, . - func_801B9150_ovl7

glabel func_801B929C_ovl7
/* 15F30C 801B929C 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 15F310 801B92A0 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 15F314 801B92A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15F318 801B92A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15F31C 801B92AC AFA40018 */  sw    $a0, 0x18($sp)
/* 15F320 801B92B0 8DF80000 */  lw    $t8, ($t7)
/* 15F324 801B92B4 3C0E801C */  lui   $t6, %hi(D_801B9498) # $t6, 0x801c
/* 15F328 801B92B8 3C01800E */  lui   $at, 0x800e
/* 15F32C 801B92BC 0018C880 */  sll   $t9, $t8, 2
/* 15F330 801B92C0 00390821 */  addu  $at, $at, $t9
/* 15F334 801B92C4 25CE9498 */  addiu $t6, %lo(D_801B9498) # addiu $t6, $t6, -0x6b68
/* 15F338 801B92C8 3C04801C */  lui   $a0, %hi(D_801B9424) # $a0, 0x801c
/* 15F33C 801B92CC AC2EF150 */  sw    $t6, -0xeb0($at)
/* 15F340 801B92D0 0C068354 */  jal   func_801A0D50
/* 15F344 801B92D4 24849424 */   addiu $a0, %lo(D_801B9424) # addiu $a0, $a0, -0x6bdc
/* 15F348 801B92D8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15F34C 801B92DC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15F350 801B92E0 3C01800F */  lui   $at, 0x800f
/* 15F354 801B92E4 24080014 */  li    $t0, 20
/* 15F358 801B92E8 8C490000 */  lw    $t1, ($v0)
/* 15F35C 801B92EC 00095080 */  sll   $t2, $t1, 2
/* 15F360 801B92F0 002A0821 */  addu  $at, $at, $t2
/* 15F364 801B92F4 AC289FE0 */  sw    $t0, -0x6020($at)
/* 15F368 801B92F8 8C4B0000 */  lw    $t3, ($v0)
/* 15F36C 801B92FC 3C01800F */  lui   $at, 0x800f
/* 15F370 801B9300 000B6080 */  sll   $t4, $t3, 2
/* 15F374 801B9304 002C0821 */  addu  $at, $at, $t4
/* 15F378 801B9308 C420A6E0 */  lwc1  $f0, -0x5920($at)
/* 15F37C 801B930C 3C01801D */  lui   $at, %hi(D_801CE3B8) # $at, 0x801d
/* 15F380 801B9310 C424E3B8 */  lwc1  $f4, %lo(D_801CE3B8)($at)
/* 15F384 801B9314 3C01801D */  lui   $at, %hi(D_801CE3BC) # $at, 0x801d
/* 15F388 801B9318 4600203E */  c.le.s $f4, $f0
/* 15F38C 801B931C 00000000 */  nop   
/* 15F390 801B9320 45000005 */  bc1f  .L801B9338_ovl7
/* 15F394 801B9324 00000000 */   nop   
/* 15F398 801B9328 C426E3BC */  lwc1  $f6, %lo(D_801CE3BC)($at)
/* 15F39C 801B932C 4606003E */  c.le.s $f0, $f6
/* 15F3A0 801B9330 00000000 */  nop   
/* 15F3A4 801B9334 4501000D */  bc1t  .L801B936C_ovl7
.L801B9338_ovl7:
/* 15F3A8 801B9338 3C01801D */   lui   $at, %hi(D_801CE3C0) # $at, 0x801d
/* 15F3AC 801B933C C428E3C0 */  lwc1  $f8, %lo(D_801CE3C0)($at)
/* 15F3B0 801B9340 3C01801D */  lui   $at, %hi(D_801CE3C4) # $at, 0x801d
/* 15F3B4 801B9344 3C04801D */  lui   $a0, 0x801d
/* 15F3B8 801B9348 4600403E */  c.le.s $f8, $f0
/* 15F3BC 801B934C 00000000 */  nop   
/* 15F3C0 801B9350 4500000B */  bc1f  .L801B9380_ovl7
/* 15F3C4 801B9354 00000000 */   nop   
/* 15F3C8 801B9358 C42AE3C4 */  lwc1  $f10, %lo(D_801CE3C4)($at)
/* 15F3CC 801B935C 460A003E */  c.le.s $f0, $f10
/* 15F3D0 801B9360 00000000 */  nop   
/* 15F3D4 801B9364 45000006 */  bc1f  .L801B9380_ovl7
/* 15F3D8 801B9368 00000000 */   nop   
.L801B936C_ovl7:
/* 15F3DC 801B936C 3C04801D */  lui   $a0, %hi(D_801CAD04) # $a0, 0x801d
/* 15F3E0 801B9370 0C068956 */  jal   func_801A2558_ovl7
/* 15F3E4 801B9374 2484AD04 */   addiu $a0, %lo(D_801CAD04) # addiu $a0, $a0, -0x52fc
/* 15F3E8 801B9378 10000003 */  b     .L801B9388_ovl7
/* 15F3EC 801B937C 00000000 */   nop   
.L801B9380_ovl7:
/* 15F3F0 801B9380 0C068956 */  jal   func_801A2558_ovl7
/* 15F3F4 801B9384 2484ACF0 */   addiu $a0, $a0, -0x5310
.L801B9388_ovl7:
/* 15F3F8 801B9388 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15F3FC 801B938C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15F400 801B9390 3C01800F */  lui   $at, 0x800f
/* 15F404 801B9394 3C18800F */  lui   $t8, 0x800f
/* 15F408 801B9398 8C4D0000 */  lw    $t5, ($v0)
/* 15F40C 801B939C 3C19800F */  lui   $t9, 0x800f
/* 15F410 801B93A0 240A0001 */  li    $t2, 1
/* 15F414 801B93A4 000D7880 */  sll   $t7, $t5, 2
/* 15F418 801B93A8 002F0821 */  addu  $at, $at, $t7
/* 15F41C 801B93AC AC208920 */  sw    $zero, -0x76e0($at)
/* 15F420 801B93B0 8C430000 */  lw    $v1, ($v0)
/* 15F424 801B93B4 3C01800E */  lui   $at, 0x800e
/* 15F428 801B93B8 00031880 */  sll   $v1, $v1, 2
/* 15F42C 801B93BC 0303C021 */  addu  $t8, $t8, $v1
/* 15F430 801B93C0 8F188AE0 */  lw    $t8, -0x7520($t8)
/* 15F434 801B93C4 0323C821 */  addu  $t9, $t9, $v1
/* 15F438 801B93C8 00230821 */  addu  $at, $at, $v1
/* 15F43C 801B93CC 330E0001 */  andi  $t6, $t8, 1
/* 15F440 801B93D0 11C0000D */  beqz  $t6, .L801B9408_ovl7
/* 15F444 801B93D4 00000000 */   nop   
/* 15F448 801B93D8 8F3998E0 */  lw    $t9, -0x6720($t9)
/* 15F44C 801B93DC 3C01800E */  lui   $at, 0x800e
/* 15F450 801B93E0 00230821 */  addu  $at, $at, $v1
/* 15F454 801B93E4 17200006 */  bnez  $t9, .L801B9400_ovl7
/* 15F458 801B93E8 24080005 */   li    $t0, 5
/* 15F45C 801B93EC 3C01800E */  lui   $at, 0x800e
/* 15F460 801B93F0 00230821 */  addu  $at, $at, $v1
/* 15F464 801B93F4 24090003 */  li    $t1, 3
/* 15F468 801B93F8 10000004 */  b     .L801B940C_ovl7
/* 15F46C 801B93FC AC29DC50 */   sw    $t1, -0x23b0($at)
.L801B9400_ovl7:
/* 15F470 801B9400 10000002 */  b     .L801B940C_ovl7
/* 15F474 801B9404 AC28DC50 */   sw    $t0, -0x23b0($at)
.L801B9408_ovl7:
/* 15F478 801B9408 AC2ADC50 */  sw    $t2, -0x23b0($at)
.L801B940C_ovl7:
/* 15F47C 801B940C 0C06E509 */  jal   D_801B9424_ovl7
/* 15F480 801B9410 8FA40018 */   lw    $a0, 0x18($sp)
/* 15F484 801B9414 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15F488 801B9418 27BD0018 */  addiu $sp, $sp, 0x18
/* 15F48C 801B941C 03E00008 */  jr    $ra
/* 15F490 801B9420 00000000 */   nop   
.type func_801B929C_ovl7, @function
.size func_801B929C_ovl7, . - func_801B929C_ovl7

glabel func_801B9424_ovl7
/* 15F494 801B9424 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 15F498 801B9428 AFB20020 */  sw    $s2, 0x20($sp)
/* 15F49C 801B942C AFB1001C */  sw    $s1, 0x1c($sp)
/* 15F4A0 801B9430 AFB00018 */  sw    $s0, 0x18($sp)
/* 15F4A4 801B9434 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 15F4A8 801B9438 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 15F4AC 801B943C 3C12801D */  lui   $s2, %hi(D_801CD73C) # $s2, 0x801d
/* 15F4B0 801B9440 AFBF0024 */  sw    $ra, 0x24($sp)
/* 15F4B4 801B9444 AFA40028 */  sw    $a0, 0x28($sp)
/* 15F4B8 801B9448 2652D73C */  addiu $s2, %lo(D_801CD73C) # addiu $s2, $s2, -0x28c4
/* 15F4BC 801B944C 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 15F4C0 801B9450 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 15F4C4 801B9454 8E2E0000 */  lw    $t6, ($s1)
.L801B9458_ovl7:
/* 15F4C8 801B9458 24050006 */  li    $a1, 6
/* 15F4CC 801B945C 02403025 */  move  $a2, $s2
/* 15F4D0 801B9460 8DCF0000 */  lw    $t7, ($t6)
/* 15F4D4 801B9464 000FC080 */  sll   $t8, $t7, 2
/* 15F4D8 801B9468 0218C821 */  addu  $t9, $s0, $t8
/* 15F4DC 801B946C 0C02911F */  jal   call_virtual_function
/* 15F4E0 801B9470 8F240000 */   lw    $a0, ($t9)
/* 15F4E4 801B9474 1000FFF8 */  b     .L801B9458_ovl7
/* 15F4E8 801B9478 8E2E0000 */   lw    $t6, ($s1)
/* 15F4EC 801B947C 00000000 */  nop   
/* 15F4F0 801B9480 8FBF0024 */  lw    $ra, 0x24($sp)
/* 15F4F4 801B9484 8FB00018 */  lw    $s0, 0x18($sp)
/* 15F4F8 801B9488 8FB1001C */  lw    $s1, 0x1c($sp)
/* 15F4FC 801B948C 8FB20020 */  lw    $s2, 0x20($sp)
/* 15F500 801B9490 03E00008 */  jr    $ra
/* 15F504 801B9494 27BD0028 */   addiu $sp, $sp, 0x28
.type func_801B9424_ovl7, @function
.size func_801B9424_ovl7, . - func_801B9424_ovl7

glabel func_801B9498_ovl7
/* 15F508 801B9498 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 15F50C 801B949C 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 15F510 801B94A0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15F514 801B94A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15F518 801B94A8 AFA40020 */  sw    $a0, 0x20($sp)
/* 15F51C 801B94AC 8CC20000 */  lw    $v0, ($a2)
/* 15F520 801B94B0 3C0E800F */  lui   $t6, 0x800f
/* 15F524 801B94B4 3C03800E */  lui   $v1, 0x800e
/* 15F528 801B94B8 00021080 */  sll   $v0, $v0, 2
/* 15F52C 801B94BC 01C27021 */  addu  $t6, $t6, $v0
/* 15F530 801B94C0 8DCE9E20 */  lw    $t6, -0x61e0($t6)
/* 15F534 801B94C4 00621821 */  addu  $v1, $v1, $v0
/* 15F538 801B94C8 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 15F53C 801B94CC 3C01800E */  lui   $at, 0x800e
/* 15F540 801B94D0 15C0004E */  bnez  $t6, .L801B960C_ovl7
/* 15F544 801B94D4 8C650084 */   lw    $a1, 0x84($v1)
/* 15F548 801B94D8 00220821 */  addu  $at, $at, $v0
/* 15F54C 801B94DC C42464D0 */  lwc1  $f4, 0x64d0($at)
/* 15F550 801B94E0 44803000 */  mtc1  $zero, $f6
/* 15F554 801B94E4 3C0F800E */  lui   $t7, %hi(D_800E6A10) # $t7, 0x800e
/* 15F558 801B94E8 25EF6A10 */  addiu $t7, %lo(D_800E6A10) # addiu $t7, $t7, 0x6a10
/* 15F55C 801B94EC 4606203C */  c.lt.s $f4, $f6
/* 15F560 801B94F0 004F1821 */  addu  $v1, $v0, $t7
/* 15F564 801B94F4 C4600000 */  lwc1  $f0, ($v1)
/* 15F568 801B94F8 3C18800F */  lui   $t8, %hi(D_800E9FE0) # $t8, 0x800f
/* 15F56C 801B94FC 45000008 */  bc1f  .L801B9520_ovl7
/* 15F570 801B9500 E7A00018 */   swc1  $f0, 0x18($sp)
/* 15F574 801B9504 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 15F578 801B9508 44814000 */  mtc1  $at, $f8
/* 15F57C 801B950C 00000000 */  nop   
/* 15F580 801B9510 46080282 */  mul.s $f10, $f0, $f8
/* 15F584 801B9514 E46A0000 */  swc1  $f10, ($v1)
/* 15F588 801B9518 8CC20000 */  lw    $v0, ($a2)
/* 15F58C 801B951C 00021080 */  sll   $v0, $v0, 2
.L801B9520_ovl7:
/* 15F590 801B9520 27189FE0 */  addiu $t8, %lo(D_800E9FE0) # addiu $t8, $t8, -0x6020
/* 15F594 801B9524 00581821 */  addu  $v1, $v0, $t8
/* 15F598 801B9528 8C640000 */  lw    $a0, ($v1)
/* 15F59C 801B952C 18800029 */  blez  $a0, .L801B95D4_ovl7
/* 15F5A0 801B9530 2499FFFF */   addiu $t9, $a0, -1
/* 15F5A4 801B9534 10A0002E */  beqz  $a1, .L801B95F0_ovl7
/* 15F5A8 801B9538 AC790000 */   sw    $t9, ($v1)
/* 15F5AC 801B953C 8CC80000 */  lw    $t0, ($a2)
/* 15F5B0 801B9540 3C02800E */  lui   $v0, %hi(D_800E0D50) # $v0, 0x800e
/* 15F5B4 801B9544 24420D50 */  addiu $v0, %lo(D_800E0D50) # addiu $v0, $v0, 0xd50
/* 15F5B8 801B9548 00084880 */  sll   $t1, $t0, 2
/* 15F5BC 801B954C 00495021 */  addu  $t2, $v0, $t1
/* 15F5C0 801B9550 8D4B0000 */  lw    $t3, ($t2)
/* 15F5C4 801B9554 3C01800E */  lui   $at, 0x800e
/* 15F5C8 801B9558 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 15F5CC 801B955C 000B6080 */  sll   $t4, $t3, 2
/* 15F5D0 801B9560 002C0821 */  addu  $at, $at, $t4
/* 15F5D4 801B9564 C43025D0 */  lwc1  $f16, 0x25d0($at)
/* 15F5D8 801B9568 3C01800E */  lui   $at, 0x800e
/* 15F5DC 801B956C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 15F5E0 801B9570 E4B00004 */  swc1  $f16, 4($a1)
/* 15F5E4 801B9574 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 15F5E8 801B9578 00A02025 */  move  $a0, $a1
/* 15F5EC 801B957C 8DAE0000 */  lw    $t6, ($t5)
/* 15F5F0 801B9580 000E7880 */  sll   $t7, $t6, 2
/* 15F5F4 801B9584 004FC021 */  addu  $t8, $v0, $t7
/* 15F5F8 801B9588 8F190000 */  lw    $t9, ($t8)
/* 15F5FC 801B958C 00194080 */  sll   $t0, $t9, 2
/* 15F600 801B9590 00280821 */  addu  $at, $at, $t0
/* 15F604 801B9594 C4322790 */  lwc1  $f18, 0x2790($at)
/* 15F608 801B9598 3C01800E */  lui   $at, 0x800e
/* 15F60C 801B959C E4B20008 */  swc1  $f18, 8($a1)
/* 15F610 801B95A0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 15F614 801B95A4 8D2A0000 */  lw    $t2, ($t1)
/* 15F618 801B95A8 000A5880 */  sll   $t3, $t2, 2
/* 15F61C 801B95AC 004B6021 */  addu  $t4, $v0, $t3
/* 15F620 801B95B0 8D8D0000 */  lw    $t5, ($t4)
/* 15F624 801B95B4 000D7080 */  sll   $t6, $t5, 2
/* 15F628 801B95B8 002E0821 */  addu  $at, $at, $t6
/* 15F62C 801B95BC C4242950 */  lwc1  $f4, 0x2950($at)
/* 15F630 801B95C0 0C04146B */  jal   func_801051AC
/* 15F634 801B95C4 E4A4000C */   swc1  $f4, 0xc($a1)
/* 15F638 801B95C8 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 15F63C 801B95CC 10000008 */  b     .L801B95F0_ovl7
/* 15F640 801B95D0 8CC6A7C4 */   lw    $a2, %lo(D_8004A7C4)($a2)
.L801B95D4_ovl7:
/* 15F644 801B95D4 0C06835D */  jal   func_801A0D74_ovl7
/* 15F648 801B95D8 8FA40020 */   lw    $a0, 0x20($sp)
/* 15F64C 801B95DC 44823000 */  mtc1  $v0, $f6
/* 15F650 801B95E0 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 15F654 801B95E4 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 15F658 801B95E8 46803220 */  cvt.s.w $f8, $f6
/* 15F65C 801B95EC E7A8001C */  swc1  $f8, 0x1c($sp)
.L801B95F0_ovl7:
/* 15F660 801B95F0 8CCF0000 */  lw    $t7, ($a2)
/* 15F664 801B95F4 C7AA0018 */  lwc1  $f10, 0x18($sp)
/* 15F668 801B95F8 3C01800E */  lui   $at, 0x800e
/* 15F66C 801B95FC 000FC080 */  sll   $t8, $t7, 2
/* 15F670 801B9600 00380821 */  addu  $at, $at, $t8
/* 15F674 801B9604 10000004 */  b     .L801B9618_ovl7
/* 15F678 801B9608 E42A6A10 */   swc1  $f10, 0x6a10($at)
.L801B960C_ovl7:
/* 15F67C 801B960C 44808000 */  mtc1  $zero, $f16
/* 15F680 801B9610 00000000 */  nop   
/* 15F684 801B9614 E7B0001C */  swc1  $f16, 0x1c($sp)
.L801B9618_ovl7:
/* 15F688 801B9618 0C06E890 */  jal   func_801BA240_ovl7
/* 15F68C 801B961C 8FA40020 */   lw    $a0, 0x20($sp)
/* 15F690 801B9620 C7B2001C */  lwc1  $f18, 0x1c($sp)
/* 15F694 801B9624 44802000 */  mtc1  $zero, $f4
/* 15F698 801B9628 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 15F69C 801B962C 46049032 */  c.eq.s $f18, $f4
/* 15F6A0 801B9630 00000000 */  nop   
/* 15F6A4 801B9634 4500000B */  bc1f  .L801B9664_ovl7
/* 15F6A8 801B9638 00000000 */   nop   
/* 15F6AC 801B963C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 15F6B0 801B9640 3C04800E */  lui   $a0, 0x800e
/* 15F6B4 801B9644 3C06801D */  lui   $a2, %hi(D_801CD754) # $a2, 0x801d
/* 15F6B8 801B9648 8F280000 */  lw    $t0, ($t9)
/* 15F6BC 801B964C 24C6D754 */  addiu $a2, %lo(D_801CD754) # addiu $a2, $a2, -0x28ac
/* 15F6C0 801B9650 24050006 */  li    $a1, 6
/* 15F6C4 801B9654 00084880 */  sll   $t1, $t0, 2
/* 15F6C8 801B9658 00892021 */  addu  $a0, $a0, $t1
/* 15F6CC 801B965C 0C02911F */  jal   call_virtual_function
/* 15F6D0 801B9660 8C84DFD0 */   lw    $a0, -0x2030($a0)
.L801B9664_ovl7:
/* 15F6D4 801B9664 0C06E7A0 */  jal   func_801B9E80_ovl7
/* 15F6D8 801B9668 8FA40020 */   lw    $a0, 0x20($sp)
/* 15F6DC 801B966C 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 15F6E0 801B9670 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 15F6E4 801B9674 3C0D800C */  lui   $t5, %hi(D_800BE4EC) # $t5, 0x800c
/* 15F6E8 801B9678 8DADE4EC */  lw    $t5, %lo(D_800BE4EC)($t5)
/* 15F6EC 801B967C 8D4B0000 */  lw    $t3, ($t2)
/* 15F6F0 801B9680 31AE0001 */  andi  $t6, $t5, 1
/* 15F6F4 801B9684 316C0001 */  andi  $t4, $t3, 1
/* 15F6F8 801B9688 558E0004 */  bnel  $t4, $t6, .L801B969C_ovl7
/* 15F6FC 801B968C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 15F700 801B9690 0C067CEC */  jal   func_8019F3B0_ovl7
/* 15F704 801B9694 00000000 */   nop   
/* 15F708 801B9698 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B969C_ovl7:
/* 15F70C 801B969C 27BD0020 */  addiu $sp, $sp, 0x20
/* 15F710 801B96A0 03E00008 */  jr    $ra
/* 15F714 801B96A4 00000000 */   nop   
.type func_801B9498_ovl7, @function
.size func_801B9498_ovl7, . - func_801B9498_ovl7

glabel func_801B96A8_ovl7
/* 15F718 801B96A8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15F71C 801B96AC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15F720 801B96B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15F724 801B96B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15F728 801B96B8 AFA40018 */  sw    $a0, 0x18($sp)
/* 15F72C 801B96BC 8DC20000 */  lw    $v0, ($t6)
/* 15F730 801B96C0 3C01800E */  lui   $at, 0x800e
/* 15F734 801B96C4 3C03800E */  lui   $v1, 0x800e
/* 15F738 801B96C8 00021080 */  sll   $v0, $v0, 2
/* 15F73C 801B96CC 00220821 */  addu  $at, $at, $v0
/* 15F740 801B96D0 00621821 */  addu  $v1, $v1, $v0
/* 15F744 801B96D4 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 15F748 801B96D8 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 15F74C 801B96DC 3C0F801D */  lui   $t7, %hi(D_801CC988) # $t7, 0x801d
/* 15F750 801B96E0 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 15F754 801B96E4 25EFC988 */  addiu $t7, %lo(D_801CC988) # addiu $t7, $t7, -0x3678
/* 15F758 801B96E8 44816000 */  mtc1  $at, $f12
/* 15F75C 801B96EC 0C066BC0 */  jal   func_8019AF00_ovl7
/* 15F760 801B96F0 AC6F0098 */   sw    $t7, 0x98($v1)
/* 15F764 801B96F4 0C002DAF */  jal   finish_current_thread
/* 15F768 801B96F8 24040016 */   li    $a0, 22
/* 15F76C 801B96FC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 15F770 801B9700 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 15F774 801B9704 3C01800E */  lui   $at, 0x800e
/* 15F778 801B9708 3C08800E */  lui   $t0, %hi(D_800E3C90) # $t0, 0x800e
/* 15F77C 801B970C 8C620000 */  lw    $v0, ($v1)
/* 15F780 801B9710 25083C90 */  addiu $t0, %lo(D_800E3C90) # addiu $t0, $t0, 0x3c90
/* 15F784 801B9714 44801000 */  mtc1  $zero, $f2
/* 15F788 801B9718 00021080 */  sll   $v0, $v0, 2
/* 15F78C 801B971C 00220821 */  addu  $at, $at, $v0
/* 15F790 801B9720 C4243210 */  lwc1  $f4, 0x3210($at)
/* 15F794 801B9724 3C01801D */  lui   $at, %hi(D_801CE3C8) # $at, 0x801d
/* 15F798 801B9728 C428E3C8 */  lwc1  $f8, %lo(D_801CE3C8)($at)
/* 15F79C 801B972C 46002187 */  neg.s $f6, $f4
/* 15F7A0 801B9730 3C01800E */  lui   $at, 0x800e
/* 15F7A4 801B9734 46083282 */  mul.s $f10, $f6, $f8
/* 15F7A8 801B9738 00220821 */  addu  $at, $at, $v0
/* 15F7AC 801B973C E42A3750 */  swc1  $f10, 0x3750($at)
/* 15F7B0 801B9740 8C780000 */  lw    $t8, ($v1)
/* 15F7B4 801B9744 0018C880 */  sll   $t9, $t8, 2
/* 15F7B8 801B9748 03282021 */  addu  $a0, $t9, $t0
/* 15F7BC 801B974C C4800000 */  lwc1  $f0, ($a0)
/* 15F7C0 801B9750 4602003C */  c.lt.s $f0, $f2
/* 15F7C4 801B9754 00000000 */  nop   
/* 15F7C8 801B9758 45020005 */  bc1fl .L801B9770_ovl7
/* 15F7CC 801B975C E4800000 */   swc1  $f0, ($a0)
/* 15F7D0 801B9760 46000407 */  neg.s $f16, $f0
/* 15F7D4 801B9764 10000002 */  b     .L801B9770_ovl7
/* 15F7D8 801B9768 E4900000 */   swc1  $f16, ($a0)
/* 15F7DC 801B976C E4800000 */  swc1  $f0, ($a0)
.L801B9770_ovl7:
/* 15F7E0 801B9770 8C620000 */  lw    $v0, ($v1)
/* 15F7E4 801B9774 3C01800E */  lui   $at, 0x800e
/* 15F7E8 801B9778 3C0B800E */  lui   $t3, %hi(D_800E6850) # $t3, 0x800e
/* 15F7EC 801B977C 00021080 */  sll   $v0, $v0, 2
/* 15F7F0 801B9780 00220821 */  addu  $at, $at, $v0
/* 15F7F4 801B9784 C43264D0 */  lwc1  $f18, 0x64d0($at)
/* 15F7F8 801B9788 3C01801D */  lui   $at, %hi(D_801CE3CC) # $at, 0x801d
/* 15F7FC 801B978C C426E3CC */  lwc1  $f6, %lo(D_801CE3CC)($at)
/* 15F800 801B9790 46009107 */  neg.s $f4, $f18
/* 15F804 801B9794 3C01800E */  lui   $at, 0x800e
/* 15F808 801B9798 46062202 */  mul.s $f8, $f4, $f6
/* 15F80C 801B979C 00220821 */  addu  $at, $at, $v0
/* 15F810 801B97A0 256B6850 */  addiu $t3, %lo(D_800E6850) # addiu $t3, $t3, 0x6850
/* 15F814 801B97A4 E4286690 */  swc1  $f8, 0x6690($at)
/* 15F818 801B97A8 8C690000 */  lw    $t1, ($v1)
/* 15F81C 801B97AC 00095080 */  sll   $t2, $t1, 2
/* 15F820 801B97B0 014B2021 */  addu  $a0, $t2, $t3
/* 15F824 801B97B4 C4800000 */  lwc1  $f0, ($a0)
/* 15F828 801B97B8 4602003C */  c.lt.s $f0, $f2
/* 15F82C 801B97BC 00000000 */  nop   
/* 15F830 801B97C0 45020005 */  bc1fl .L801B97D8_ovl7
/* 15F834 801B97C4 E4800000 */   swc1  $f0, ($a0)
/* 15F838 801B97C8 46000287 */  neg.s $f10, $f0
/* 15F83C 801B97CC 10000002 */  b     .L801B97D8_ovl7
/* 15F840 801B97D0 E48A0000 */   swc1  $f10, ($a0)
/* 15F844 801B97D4 E4800000 */  swc1  $f0, ($a0)
.L801B97D8_ovl7:
/* 15F848 801B97D8 0C002DAF */  jal   finish_current_thread
/* 15F84C 801B97DC 24040014 */   li    $a0, 20
/* 15F850 801B97E0 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 15F854 801B97E4 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 15F858 801B97E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15F85C 801B97EC 3C01800E */  lui   $at, 0x800e
/* 15F860 801B97F0 8DAE0000 */  lw    $t6, ($t5)
/* 15F864 801B97F4 240C0001 */  li    $t4, 1
/* 15F868 801B97F8 27BD0018 */  addiu $sp, $sp, 0x18
/* 15F86C 801B97FC 000E7880 */  sll   $t7, $t6, 2
/* 15F870 801B9800 002F0821 */  addu  $at, $at, $t7
/* 15F874 801B9804 03E00008 */  jr    $ra
/* 15F878 801B9808 AC2CDC50 */   sw    $t4, -0x23b0($at)
.type func_801B96A8_ovl7, @function
.size func_801B96A8_ovl7, . - func_801B96A8_ovl7

glabel func_801B980C_ovl7
/* 15F87C 801B980C 03E00008 */  jr    $ra
/* 15F880 801B9810 AFA40000 */   sw    $a0, ($sp)
.type func_801B980C_ovl7, @function
.size func_801B980C_ovl7, . - func_801B980C_ovl7

glabel func_801B9814_ovl7
/* 15F884 801B9814 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 15F888 801B9818 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 15F88C 801B981C 8CAE0000 */  lw    $t6, ($a1)
/* 15F890 801B9820 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15F894 801B9824 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15F898 801B9828 AFA40018 */  sw    $a0, 0x18($sp)
/* 15F89C 801B982C 8DC20000 */  lw    $v0, ($t6)
/* 15F8A0 801B9830 3C04800E */  lui   $a0, 0x800e
/* 15F8A4 801B9834 3C01800E */  lui   $at, 0x800e
/* 15F8A8 801B9838 00021080 */  sll   $v0, $v0, 2
/* 15F8AC 801B983C 00822021 */  addu  $a0, $a0, $v0
/* 15F8B0 801B9840 8C841B50 */  lw    $a0, 0x1b50($a0)
/* 15F8B4 801B9844 00220821 */  addu  $at, $at, $v0
/* 15F8B8 801B9848 240F0001 */  li    $t7, 1
/* 15F8BC 801B984C 3C18801D */  lui   $t8, %hi(D_801CC9AC) # $t8, 0x801d
/* 15F8C0 801B9850 AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 15F8C4 801B9854 2718C9AC */  addiu $t8, %lo(D_801CC9AC) # addiu $t8, $t8, -0x3654
/* 15F8C8 801B9858 AC980098 */  sw    $t8, 0x98($a0)
/* 15F8CC 801B985C 8CA30000 */  lw    $v1, ($a1)
/* 15F8D0 801B9860 3C01801D */  lui   $at, %hi(D_801CE3D0) # $at, 0x801d
/* 15F8D4 801B9864 C424E3D0 */  lwc1  $f4, %lo(D_801CE3D0)($at)
/* 15F8D8 801B9868 8C790000 */  lw    $t9, ($v1)
/* 15F8DC 801B986C 3C01800F */  lui   $at, 0x800f
/* 15F8E0 801B9870 44803000 */  mtc1  $zero, $f6
/* 15F8E4 801B9874 00194080 */  sll   $t0, $t9, 2
/* 15F8E8 801B9878 00280821 */  addu  $at, $at, $t0
/* 15F8EC 801B987C E424B320 */  swc1  $f4, -0x4ce0($at)
/* 15F8F0 801B9880 8C690000 */  lw    $t1, ($v1)
/* 15F8F4 801B9884 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 15F8F8 801B9888 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 15F8FC 801B988C 00095080 */  sll   $t2, $t1, 2
/* 15F900 801B9890 00CA5821 */  addu  $t3, $a2, $t2
/* 15F904 801B9894 E5660000 */  swc1  $f6, ($t3)
/* 15F908 801B9898 8C620000 */  lw    $v0, ($v1)
/* 15F90C 801B989C 3C01800E */  lui   $at, 0x800e
/* 15F910 801B98A0 3C0F800F */  lui   $t7, 0x800f
/* 15F914 801B98A4 00021080 */  sll   $v0, $v0, 2
/* 15F918 801B98A8 00C26021 */  addu  $t4, $a2, $v0
/* 15F91C 801B98AC C5880000 */  lwc1  $f8, ($t4)
/* 15F920 801B98B0 00220821 */  addu  $at, $at, $v0
/* 15F924 801B98B4 E42864D0 */  swc1  $f8, 0x64d0($at)
/* 15F928 801B98B8 8C6D0000 */  lw    $t5, ($v1)
/* 15F92C 801B98BC 3C01801D */  lui   $at, %hi(D_801CE3D4) # $at, 0x801d
/* 15F930 801B98C0 C42AE3D4 */  lwc1  $f10, %lo(D_801CE3D4)($at)
/* 15F934 801B98C4 3C01800E */  lui   $at, 0x800e
/* 15F938 801B98C8 000D7080 */  sll   $t6, $t5, 2
/* 15F93C 801B98CC 002E0821 */  addu  $at, $at, $t6
/* 15F940 801B98D0 E42A6850 */  swc1  $f10, 0x6850($at)
/* 15F944 801B98D4 8C620000 */  lw    $v0, ($v1)
/* 15F948 801B98D8 3C01801D */  lui   $at, 0x801d
/* 15F94C 801B98DC 00021080 */  sll   $v0, $v0, 2
/* 15F950 801B98E0 01E27821 */  addu  $t7, $t7, $v0
/* 15F954 801B98E4 8DEF8AE0 */  lw    $t7, -0x7520($t7)
/* 15F958 801B98E8 31F80001 */  andi  $t8, $t7, 1
/* 15F95C 801B98EC 1300000E */  beqz  $t8, .L801B9928_ovl7
/* 15F960 801B98F0 00000000 */   nop   
/* 15F964 801B98F4 3C01801D */  lui   $at, %hi(D_801CE3D8) # $at, 0x801d
/* 15F968 801B98F8 C430E3D8 */  lwc1  $f16, %lo(D_801CE3D8)($at)
/* 15F96C 801B98FC 3C01800E */  lui   $at, 0x800e
/* 15F970 801B9900 00220821 */  addu  $at, $at, $v0
/* 15F974 801B9904 E4303750 */  swc1  $f16, 0x3750($at)
/* 15F978 801B9908 8C790000 */  lw    $t9, ($v1)
/* 15F97C 801B990C 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 15F980 801B9910 44819000 */  mtc1  $at, $f18
/* 15F984 801B9914 3C01800E */  lui   $at, 0x800e
/* 15F988 801B9918 00194080 */  sll   $t0, $t9, 2
/* 15F98C 801B991C 00280821 */  addu  $at, $at, $t0
/* 15F990 801B9920 1000000C */  b     .L801B9954_ovl7
/* 15F994 801B9924 E4323C90 */   swc1  $f18, 0x3c90($at)
.L801B9928_ovl7:
/* 15F998 801B9928 C424E3DC */  lwc1  $f4, -0x1c24($at)
/* 15F99C 801B992C 3C01800E */  lui   $at, 0x800e
/* 15F9A0 801B9930 00220821 */  addu  $at, $at, $v0
/* 15F9A4 801B9934 E4243750 */  swc1  $f4, 0x3750($at)
/* 15F9A8 801B9938 8C690000 */  lw    $t1, ($v1)
/* 15F9AC 801B993C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 15F9B0 801B9940 44813000 */  mtc1  $at, $f6
/* 15F9B4 801B9944 3C01800E */  lui   $at, 0x800e
/* 15F9B8 801B9948 00095080 */  sll   $t2, $t1, 2
/* 15F9BC 801B994C 002A0821 */  addu  $at, $at, $t2
/* 15F9C0 801B9950 E4263C90 */  swc1  $f6, 0x3c90($at)
.L801B9954_ovl7:
/* 15F9C4 801B9954 0C02BE85 */  jal   func_800AFA14
/* 15F9C8 801B9958 00000000 */   nop   
/* 15F9CC 801B995C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15F9D0 801B9960 27BD0018 */  addiu $sp, $sp, 0x18
/* 15F9D4 801B9964 03E00008 */  jr    $ra
/* 15F9D8 801B9968 00000000 */   nop   
.type func_801B9814_ovl7, @function
.size func_801B9814_ovl7, . - func_801B9814_ovl7

glabel func_801B996C_ovl7
/* 15F9DC 801B996C 03E00008 */  jr    $ra
/* 15F9E0 801B9970 AFA40000 */   sw    $a0, ($sp)
.type func_801B996C_ovl7, @function
.size func_801B996C_ovl7, . - func_801B996C_ovl7

glabel func_801B9974_ovl7
/* 15F9E4 801B9974 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 15F9E8 801B9978 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 15F9EC 801B997C 8CAE0000 */  lw    $t6, ($a1)
/* 15F9F0 801B9980 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15F9F4 801B9984 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15F9F8 801B9988 AFA40018 */  sw    $a0, 0x18($sp)
/* 15F9FC 801B998C 8DC20000 */  lw    $v0, ($t6)
/* 15FA00 801B9990 3C03800E */  lui   $v1, 0x800e
/* 15FA04 801B9994 3C01800E */  lui   $at, 0x800e
/* 15FA08 801B9998 00021080 */  sll   $v0, $v0, 2
/* 15FA0C 801B999C 00621821 */  addu  $v1, $v1, $v0
/* 15FA10 801B99A0 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 15FA14 801B99A4 00220821 */  addu  $at, $at, $v0
/* 15FA18 801B99A8 240F0002 */  li    $t7, 2
/* 15FA1C 801B99AC 3C18801D */  lui   $t8, %hi(D_801CC964) # $t8, 0x801d
/* 15FA20 801B99B0 AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 15FA24 801B99B4 2718C964 */  addiu $t8, %lo(D_801CC964) # addiu $t8, $t8, -0x369c
/* 15FA28 801B99B8 AC780098 */  sw    $t8, 0x98($v1)
/* 15FA2C 801B99BC 8CB90000 */  lw    $t9, ($a1)
/* 15FA30 801B99C0 3C01800F */  lui   $at, 0x800f
/* 15FA34 801B99C4 3C040001 */  lui   $a0, (0x000100EF >> 16) # lui $a0, 1
/* 15FA38 801B99C8 8F280000 */  lw    $t0, ($t9)
/* 15FA3C 801B99CC 348400EF */  ori   $a0, (0x000100EF & 0xFFFF) # ori $a0, $a0, 0xef
/* 15FA40 801B99D0 00084880 */  sll   $t1, $t0, 2
/* 15FA44 801B99D4 00290821 */  addu  $at, $at, $t1
/* 15FA48 801B99D8 0C02A7A9 */  jal   func_800A9EA4
/* 15FA4C 801B99DC AC208920 */   sw    $zero, -0x76e0($at)
/* 15FA50 801B99E0 0C02BE85 */  jal   func_800AFA14
/* 15FA54 801B99E4 00000000 */   nop   
/* 15FA58 801B99E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15FA5C 801B99EC 27BD0018 */  addiu $sp, $sp, 0x18
/* 15FA60 801B99F0 03E00008 */  jr    $ra
/* 15FA64 801B99F4 00000000 */   nop   
.type func_801B9974_ovl7, @function
.size func_801B9974_ovl7, . - func_801B9974_ovl7

glabel func_801B99F8_ovl7
/* 15FA68 801B99F8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15FA6C 801B99FC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15FA70 801B9A00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15FA74 801B9A04 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15FA78 801B9A08 AFA40018 */  sw    $a0, 0x18($sp)
/* 15FA7C 801B9A0C 8DCF0000 */  lw    $t7, ($t6)
/* 15FA80 801B9A10 3C19800F */  lui   $t9, %hi(D_800EB320) # $t9, 0x800f
/* 15FA84 801B9A14 2739B320 */  addiu $t9, %lo(D_800EB320) # addiu $t9, $t9, -0x4ce0
/* 15FA88 801B9A18 000FC080 */  sll   $t8, $t7, 2
/* 15FA8C 801B9A1C 03191021 */  addu  $v0, $t8, $t9
/* 15FA90 801B9A20 C4400000 */  lwc1  $f0, ($v0)
/* 15FA94 801B9A24 44802000 */  mtc1  $zero, $f4
/* 15FA98 801B9A28 3C01801D */  lui   $at, %hi(D_801CE3E0) # $at, 0x801d
/* 15FA9C 801B9A2C 4600203C */  c.lt.s $f4, $f0
/* 15FAA0 801B9A30 00000000 */  nop   
/* 15FAA4 801B9A34 4500000B */  bc1f  .L801B9A64_ovl7
/* 15FAA8 801B9A38 00000000 */   nop   
/* 15FAAC 801B9A3C C426E3E0 */  lwc1  $f6, %lo(D_801CE3E0)($at)
/* 15FAB0 801B9A40 3C01801D */  lui   $at, %hi(D_801CE3E4) # $at, 0x801d
/* 15FAB4 801B9A44 4606003C */  c.lt.s $f0, $f6
/* 15FAB8 801B9A48 00000000 */  nop   
/* 15FABC 801B9A4C 45000005 */  bc1f  .L801B9A64_ovl7
/* 15FAC0 801B9A50 00000000 */   nop   
/* 15FAC4 801B9A54 C428E3E4 */  lwc1  $f8, %lo(D_801CE3E4)($at)
/* 15FAC8 801B9A58 46080280 */  add.s $f10, $f0, $f8
/* 15FACC 801B9A5C 10000030 */  b     .L801B9B20_ovl7
/* 15FAD0 801B9A60 E44A0000 */   swc1  $f10, ($v0)
.L801B9A64_ovl7:
/* 15FAD4 801B9A64 3C01801D */  lui   $at, %hi(D_801CE3E8) # $at, 0x801d
/* 15FAD8 801B9A68 C430E3E8 */  lwc1  $f16, %lo(D_801CE3E8)($at)
/* 15FADC 801B9A6C 3C01801D */  lui   $at, %hi(D_801CE3EC) # $at, 0x801d
/* 15FAE0 801B9A70 4600803E */  c.le.s $f16, $f0
/* 15FAE4 801B9A74 00000000 */  nop   
/* 15FAE8 801B9A78 4500000B */  bc1f  .L801B9AA8_ovl7
/* 15FAEC 801B9A7C 00000000 */   nop   
/* 15FAF0 801B9A80 C432E3EC */  lwc1  $f18, %lo(D_801CE3EC)($at)
/* 15FAF4 801B9A84 3C01801D */  lui   $at, %hi(D_801CE3F0) # $at, 0x801d
/* 15FAF8 801B9A88 4612003C */  c.lt.s $f0, $f18
/* 15FAFC 801B9A8C 00000000 */  nop   
/* 15FB00 801B9A90 45000005 */  bc1f  .L801B9AA8_ovl7
/* 15FB04 801B9A94 00000000 */   nop   
/* 15FB08 801B9A98 C424E3F0 */  lwc1  $f4, %lo(D_801CE3F0)($at)
/* 15FB0C 801B9A9C 46040180 */  add.s $f6, $f0, $f4
/* 15FB10 801B9AA0 1000001F */  b     .L801B9B20_ovl7
/* 15FB14 801B9AA4 E4460000 */   swc1  $f6, ($v0)
.L801B9AA8_ovl7:
/* 15FB18 801B9AA8 3C01801D */  lui   $at, %hi(D_801CE3F4) # $at, 0x801d
/* 15FB1C 801B9AAC C422E3F4 */  lwc1  $f2, %lo(D_801CE3F4)($at)
/* 15FB20 801B9AB0 3C01801D */  lui   $at, %hi(D_801CE3F8) # $at, 0x801d
/* 15FB24 801B9AB4 4600103E */  c.le.s $f2, $f0
/* 15FB28 801B9AB8 00000000 */  nop   
/* 15FB2C 801B9ABC 4500000B */  bc1f  .L801B9AEC_ovl7
/* 15FB30 801B9AC0 00000000 */   nop   
/* 15FB34 801B9AC4 C428E3F8 */  lwc1  $f8, %lo(D_801CE3F8)($at)
/* 15FB38 801B9AC8 3C01801D */  lui   $at, %hi(D_801CE3FC) # $at, 0x801d
/* 15FB3C 801B9ACC 4608003C */  c.lt.s $f0, $f8
/* 15FB40 801B9AD0 00000000 */  nop   
/* 15FB44 801B9AD4 45000005 */  bc1f  .L801B9AEC_ovl7
/* 15FB48 801B9AD8 00000000 */   nop   
/* 15FB4C 801B9ADC C42AE3FC */  lwc1  $f10, %lo(D_801CE3FC)($at)
/* 15FB50 801B9AE0 460A0401 */  sub.s $f16, $f0, $f10
/* 15FB54 801B9AE4 1000000E */  b     .L801B9B20_ovl7
/* 15FB58 801B9AE8 E4500000 */   swc1  $f16, ($v0)
.L801B9AEC_ovl7:
/* 15FB5C 801B9AEC 3C01801D */  lui   $at, %hi(D_801CE400) # $at, 0x801d
/* 15FB60 801B9AF0 C432E400 */  lwc1  $f18, %lo(D_801CE400)($at)
/* 15FB64 801B9AF4 4600903E */  c.le.s $f18, $f0
/* 15FB68 801B9AF8 00000000 */  nop   
/* 15FB6C 801B9AFC 45020009 */  bc1fl .L801B9B24_ovl7
/* 15FB70 801B9B00 3C014090 */   lui   $at, 0x4090
/* 15FB74 801B9B04 4602003C */  c.lt.s $f0, $f2
/* 15FB78 801B9B08 3C01801D */  lui   $at, 0x801d
/* 15FB7C 801B9B0C 45020005 */  bc1fl .L801B9B24_ovl7
/* 15FB80 801B9B10 3C014090 */   lui   $at, %hi(D_408FE404) # $at, 0x4090
/* 15FB84 801B9B14 C424E404 */  lwc1  $f4, %lo(D_408FE404)($at)
/* 15FB88 801B9B18 46040181 */  sub.s $f6, $f0, $f4
/* 15FB8C 801B9B1C E4460000 */  swc1  $f6, ($v0)
.L801B9B20_ovl7:
/* 15FB90 801B9B20 3C014090 */  li    $at, 0x40900000 # 4.500000
.L801B9B24_ovl7:
/* 15FB94 801B9B24 44816000 */  mtc1  $at, $f12
/* 15FB98 801B9B28 0C066BC0 */  jal   func_8019AF00_ovl7
/* 15FB9C 801B9B2C 00000000 */   nop   
/* 15FBA0 801B9B30 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15FBA4 801B9B34 27BD0018 */  addiu $sp, $sp, 0x18
/* 15FBA8 801B9B38 03E00008 */  jr    $ra
/* 15FBAC 801B9B3C 00000000 */   nop   
.type func_801B99F8_ovl7, @function
.size func_801B99F8_ovl7, . - func_801B99F8_ovl7

glabel func_801B9B40_ovl7
/* 15FBB0 801B9B40 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15FBB4 801B9B44 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15FBB8 801B9B48 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15FBBC 801B9B4C AFBF0014 */  sw    $ra, 0x14($sp)
/* 15FBC0 801B9B50 AFA40018 */  sw    $a0, 0x18($sp)
/* 15FBC4 801B9B54 8DC20000 */  lw    $v0, ($t6)
/* 15FBC8 801B9B58 3C03800E */  lui   $v1, 0x800e
/* 15FBCC 801B9B5C 3C01800E */  lui   $at, 0x800e
/* 15FBD0 801B9B60 00021080 */  sll   $v0, $v0, 2
/* 15FBD4 801B9B64 00621821 */  addu  $v1, $v1, $v0
/* 15FBD8 801B9B68 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 15FBDC 801B9B6C 00220821 */  addu  $at, $at, $v0
/* 15FBE0 801B9B70 240F0003 */  li    $t7, 3
/* 15FBE4 801B9B74 3C18801D */  lui   $t8, %hi(D_801CC964) # $t8, 0x801d
/* 15FBE8 801B9B78 AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 15FBEC 801B9B7C 2718C964 */  addiu $t8, %lo(D_801CC964) # addiu $t8, $t8, -0x369c
/* 15FBF0 801B9B80 3C040001 */  lui   $a0, (0x000100F0 >> 16) # lui $a0, 1
/* 15FBF4 801B9B84 348400F0 */  ori   $a0, (0x000100F0 & 0xFFFF) # ori $a0, $a0, 0xf0
/* 15FBF8 801B9B88 0C02A806 */  jal   func_800AA018
/* 15FBFC 801B9B8C AC780098 */   sw    $t8, 0x98($v1)
/* 15FC00 801B9B90 0C02BE85 */  jal   func_800AFA14
/* 15FC04 801B9B94 00000000 */   nop   
/* 15FC08 801B9B98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15FC0C 801B9B9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 15FC10 801B9BA0 03E00008 */  jr    $ra
/* 15FC14 801B9BA4 00000000 */   nop   
.type func_801B9B40_ovl7, @function
.size func_801B9B40_ovl7, . - func_801B9B40_ovl7

glabel func_801B9BA8_ovl7
/* 15FC18 801B9BA8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15FC1C 801B9BAC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15FC20 801B9BB0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 15FC24 801B9BB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15FC28 801B9BB8 8DCF0000 */  lw    $t7, ($t6)
/* 15FC2C 801B9BBC 3C19800E */  lui   $t9, 0x800e
/* 15FC30 801B9BC0 000FC080 */  sll   $t8, $t7, 2
/* 15FC34 801B9BC4 0338C821 */  addu  $t9, $t9, $t8
/* 15FC38 801B9BC8 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 15FC3C 801B9BCC 0C066D09 */  jal   func_8019B424_ovl7
/* 15FC40 801B9BD0 AFB9001C */   sw    $t9, 0x1c($sp)
/* 15FC44 801B9BD4 0C066FA7 */  jal   func_8019BE9C_ovl7
/* 15FC48 801B9BD8 24040006 */   li    $a0, 6
/* 15FC4C 801B9BDC 8FA8001C */  lw    $t0, 0x1c($sp)
/* 15FC50 801B9BE0 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 15FC54 801B9BE4 9109003C */  lbu   $t1, 0x3c($t0)
/* 15FC58 801B9BE8 55200019 */  bnezl $t1, .L801B9C50_ovl7
/* 15FC5C 801B9BEC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 15FC60 801B9BF0 44816000 */  mtc1  $at, $f12
/* 15FC64 801B9BF4 3C0143F0 */  li    $at, 0x43F00000 # 480.000000
/* 15FC68 801B9BF8 44817000 */  mtc1  $at, $f14
/* 15FC6C 801B9BFC 0C066A6B */  jal   func_8019A9AC_ovl7
/* 15FC70 801B9C00 00000000 */   nop   
/* 15FC74 801B9C04 24010003 */  li    $at, 3
/* 15FC78 801B9C08 14410010 */  bne   $v0, $at, .L801B9C4C_ovl7
/* 15FC7C 801B9C0C 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15FC80 801B9C10 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15FC84 801B9C14 3C01800E */  lui   $at, 0x800e
/* 15FC88 801B9C18 240A0004 */  li    $t2, 4
/* 15FC8C 801B9C1C 8C4B0000 */  lw    $t3, ($v0)
/* 15FC90 801B9C20 3C04800E */  lui   $a0, 0x800e
/* 15FC94 801B9C24 3C05801C */  lui   $a1, %hi(D_801B9424) # $a1, 0x801c
/* 15FC98 801B9C28 000B6080 */  sll   $t4, $t3, 2
/* 15FC9C 801B9C2C 002C0821 */  addu  $at, $at, $t4
/* 15FCA0 801B9C30 AC2ADC50 */  sw    $t2, -0x23b0($at)
/* 15FCA4 801B9C34 8C4D0000 */  lw    $t5, ($v0)
/* 15FCA8 801B9C38 24A59424 */  addiu $a1, %lo(D_801B9424) # addiu $a1, $a1, -0x6bdc
/* 15FCAC 801B9C3C 000D7080 */  sll   $t6, $t5, 2
/* 15FCB0 801B9C40 008E2021 */  addu  $a0, $a0, $t6
/* 15FCB4 801B9C44 0C02C7B2 */  jal   assign_new_process_entry
/* 15FCB8 801B9C48 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801B9C4C_ovl7:
/* 15FCBC 801B9C4C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801B9C50_ovl7:
/* 15FCC0 801B9C50 27BD0020 */  addiu $sp, $sp, 0x20
/* 15FCC4 801B9C54 03E00008 */  jr    $ra
/* 15FCC8 801B9C58 00000000 */   nop   
.type func_801B9BA8_ovl7, @function
.size func_801B9BA8_ovl7, . - func_801B9BA8_ovl7

glabel func_801B9C5C_ovl7
/* 15FCCC 801B9C5C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15FCD0 801B9C60 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15FCD4 801B9C64 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15FCD8 801B9C68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15FCDC 801B9C6C AFA40018 */  sw    $a0, 0x18($sp)
/* 15FCE0 801B9C70 8DC30000 */  lw    $v1, ($t6)
/* 15FCE4 801B9C74 3C02800E */  lui   $v0, 0x800e
/* 15FCE8 801B9C78 3C01800E */  lui   $at, 0x800e
/* 15FCEC 801B9C7C 00031880 */  sll   $v1, $v1, 2
/* 15FCF0 801B9C80 00431021 */  addu  $v0, $v0, $v1
/* 15FCF4 801B9C84 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 15FCF8 801B9C88 00230821 */  addu  $at, $at, $v1
/* 15FCFC 801B9C8C 240F0004 */  li    $t7, 4
/* 15FD00 801B9C90 3C18801D */  lui   $t8, %hi(D_801CC964) # $t8, 0x801d
/* 15FD04 801B9C94 AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 15FD08 801B9C98 2718C964 */  addiu $t8, %lo(D_801CC964) # addiu $t8, $t8, -0x369c
/* 15FD0C 801B9C9C 3C040001 */  lui   $a0, (0x000100EC >> 16) # lui $a0, 1
/* 15FD10 801B9CA0 348400EC */  ori   $a0, (0x000100EC & 0xFFFF) # ori $a0, $a0, 0xec
/* 15FD14 801B9CA4 0C02A806 */  jal   func_800AA018
/* 15FD18 801B9CA8 AC580098 */   sw    $t8, 0x98($v0)
/* 15FD1C 801B9CAC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15FD20 801B9CB0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15FD24 801B9CB4 44802000 */  mtc1  $zero, $f4
/* 15FD28 801B9CB8 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 15FD2C 801B9CBC 8C590000 */  lw    $t9, ($v0)
/* 15FD30 801B9CC0 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 15FD34 801B9CC4 3C01800E */  lui   $at, 0x800e
/* 15FD38 801B9CC8 00194080 */  sll   $t0, $t9, 2
/* 15FD3C 801B9CCC 00884821 */  addu  $t1, $a0, $t0
/* 15FD40 801B9CD0 E5240000 */  swc1  $f4, ($t1)
/* 15FD44 801B9CD4 8C430000 */  lw    $v1, ($v0)
/* 15FD48 801B9CD8 00031880 */  sll   $v1, $v1, 2
/* 15FD4C 801B9CDC 00835021 */  addu  $t2, $a0, $v1
/* 15FD50 801B9CE0 C5460000 */  lwc1  $f6, ($t2)
/* 15FD54 801B9CE4 00230821 */  addu  $at, $at, $v1
/* 15FD58 801B9CE8 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 15FD5C 801B9CEC 8C4B0000 */  lw    $t3, ($v0)
/* 15FD60 801B9CF0 3C01801D */  lui   $at, %hi(D_801CE408) # $at, 0x801d
/* 15FD64 801B9CF4 C428E408 */  lwc1  $f8, %lo(D_801CE408)($at)
/* 15FD68 801B9CF8 3C01800E */  lui   $at, 0x800e
/* 15FD6C 801B9CFC 000B6080 */  sll   $t4, $t3, 2
/* 15FD70 801B9D00 002C0821 */  addu  $at, $at, $t4
/* 15FD74 801B9D04 0C02BC9F */  jal   func_800AF27C
/* 15FD78 801B9D08 E4286850 */   swc1  $f8, 0x6850($at)
/* 15FD7C 801B9D0C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 15FD80 801B9D10 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 15FD84 801B9D14 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15FD88 801B9D18 3C01800E */  lui   $at, 0x800e
/* 15FD8C 801B9D1C 8DCF0000 */  lw    $t7, ($t6)
/* 15FD90 801B9D20 240D0005 */  li    $t5, 5
/* 15FD94 801B9D24 27BD0018 */  addiu $sp, $sp, 0x18
/* 15FD98 801B9D28 000FC080 */  sll   $t8, $t7, 2
/* 15FD9C 801B9D2C 00380821 */  addu  $at, $at, $t8
/* 15FDA0 801B9D30 03E00008 */  jr    $ra
/* 15FDA4 801B9D34 AC2DDC50 */   sw    $t5, -0x23b0($at)
.type func_801B9C5C_ovl7, @function
.size func_801B9C5C_ovl7, . - func_801B9C5C_ovl7

glabel func_801B9D38_ovl7
/* 15FDA8 801B9D38 03E00008 */  jr    $ra
/* 15FDAC 801B9D3C AFA40000 */   sw    $a0, ($sp)
.type func_801B9D38_ovl7, @function
.size func_801B9D38_ovl7, . - func_801B9D38_ovl7

glabel func_801B9D40_ovl7
/* 15FDB0 801B9D40 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 15FDB4 801B9D44 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 15FDB8 801B9D48 8CCE0000 */  lw    $t6, ($a2)
/* 15FDBC 801B9D4C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 15FDC0 801B9D50 AFBF0014 */  sw    $ra, 0x14($sp)
/* 15FDC4 801B9D54 AFA40018 */  sw    $a0, 0x18($sp)
/* 15FDC8 801B9D58 8DC20000 */  lw    $v0, ($t6)
/* 15FDCC 801B9D5C 3C03800E */  lui   $v1, 0x800e
/* 15FDD0 801B9D60 3C01800E */  lui   $at, 0x800e
/* 15FDD4 801B9D64 00021080 */  sll   $v0, $v0, 2
/* 15FDD8 801B9D68 00621821 */  addu  $v1, $v1, $v0
/* 15FDDC 801B9D6C 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 15FDE0 801B9D70 00220821 */  addu  $at, $at, $v0
/* 15FDE4 801B9D74 240F0005 */  li    $t7, 5
/* 15FDE8 801B9D78 3C18801D */  lui   $t8, %hi(D_801CC964) # $t8, 0x801d
/* 15FDEC 801B9D7C AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 15FDF0 801B9D80 2718C964 */  addiu $t8, %lo(D_801CC964) # addiu $t8, $t8, -0x369c
/* 15FDF4 801B9D84 AC780098 */  sw    $t8, 0x98($v1)
/* 15FDF8 801B9D88 8CC40000 */  lw    $a0, ($a2)
/* 15FDFC 801B9D8C 44802000 */  mtc1  $zero, $f4
/* 15FE00 801B9D90 3C01800F */  lui   $at, 0x800f
/* 15FE04 801B9D94 8C990000 */  lw    $t9, ($a0)
/* 15FE08 801B9D98 3C0B800E */  lui   $t3, %hi(D_800E6A10) # $t3, 0x800e
/* 15FE0C 801B9D9C 256B6A10 */  addiu $t3, %lo(D_800E6A10) # addiu $t3, $t3, 0x6a10
/* 15FE10 801B9DA0 00194080 */  sll   $t0, $t9, 2
/* 15FE14 801B9DA4 00280821 */  addu  $at, $at, $t0
/* 15FE18 801B9DA8 E424B160 */  swc1  $f4, -0x4ea0($at)
/* 15FE1C 801B9DAC 8C890000 */  lw    $t1, ($a0)
/* 15FE20 801B9DB0 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 15FE24 801B9DB4 44813000 */  mtc1  $at, $f6
/* 15FE28 801B9DB8 00095080 */  sll   $t2, $t1, 2
/* 15FE2C 801B9DBC 014B2821 */  addu  $a1, $t2, $t3
/* 15FE30 801B9DC0 C4A80000 */  lwc1  $f8, ($a1)
/* 15FE34 801B9DC4 3C01801D */  lui   $at, %hi(D_801CE40C) # $at, 0x801d
/* 15FE38 801B9DC8 46083032 */  c.eq.s $f6, $f8
/* 15FE3C 801B9DCC 00000000 */  nop   
/* 15FE40 801B9DD0 45020016 */  bc1fl .L801B9E2C_ovl7
/* 15FE44 801B9DD4 3C040001 */   lui   $a0, 1
/* 15FE48 801B9DD8 C420E40C */  lwc1  $f0, %lo(D_801CE40C)($at)
/* 15FE4C 801B9DDC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 15FE50 801B9DE0 44815000 */  mtc1  $at, $f10
/* 15FE54 801B9DE4 3C0E800F */  lui   $t6, %hi(D_800EB320) # $t6, 0x800f
/* 15FE58 801B9DE8 25CEB320 */  addiu $t6, %lo(D_800EB320) # addiu $t6, $t6, -0x4ce0
/* 15FE5C 801B9DEC E4AA0000 */  swc1  $f10, ($a1)
/* 15FE60 801B9DF0 8C8C0000 */  lw    $t4, ($a0)
/* 15FE64 801B9DF4 3C19800F */  lui   $t9, %hi(D_800EA6E0) # $t9, 0x800f
/* 15FE68 801B9DF8 2739A6E0 */  addiu $t9, %lo(D_800EA6E0) # addiu $t9, $t9, -0x5920
/* 15FE6C 801B9DFC 000C6880 */  sll   $t5, $t4, 2
/* 15FE70 801B9E00 01AE1021 */  addu  $v0, $t5, $t6
/* 15FE74 801B9E04 C4500000 */  lwc1  $f16, ($v0)
/* 15FE78 801B9E08 46100481 */  sub.s $f18, $f0, $f16
/* 15FE7C 801B9E0C E4520000 */  swc1  $f18, ($v0)
/* 15FE80 801B9E10 8C8F0000 */  lw    $t7, ($a0)
/* 15FE84 801B9E14 000FC080 */  sll   $t8, $t7, 2
/* 15FE88 801B9E18 03191821 */  addu  $v1, $t8, $t9
/* 15FE8C 801B9E1C C4640000 */  lwc1  $f4, ($v1)
/* 15FE90 801B9E20 46040181 */  sub.s $f6, $f0, $f4
/* 15FE94 801B9E24 E4660000 */  swc1  $f6, ($v1)
/* 15FE98 801B9E28 3C040001 */  lui   $a0, (0x000100EF >> 16) # lui $a0, 1
.L801B9E2C_ovl7:
/* 15FE9C 801B9E2C 0C02A806 */  jal   func_800AA018
/* 15FEA0 801B9E30 348400EF */   ori   $a0, (0x000100EF & 0xFFFF) # ori $a0, $a0, 0xef
/* 15FEA4 801B9E34 3C014090 */  li    $at, 0x40900000 # 4.500000
/* 15FEA8 801B9E38 44816000 */  mtc1  $at, $f12
/* 15FEAC 801B9E3C 0C066BC0 */  jal   func_8019AF00_ovl7
/* 15FEB0 801B9E40 00000000 */   nop   
/* 15FEB4 801B9E44 0C002DAF */  jal   finish_current_thread
/* 15FEB8 801B9E48 240400F0 */   li    $a0, 240
/* 15FEBC 801B9E4C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 15FEC0 801B9E50 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 15FEC4 801B9E54 8FBF0014 */  lw    $ra, 0x14($sp)
/* 15FEC8 801B9E58 3C01800E */  lui   $at, 0x800e
/* 15FECC 801B9E5C 8D2A0000 */  lw    $t2, ($t1)
/* 15FED0 801B9E60 24080002 */  li    $t0, 2
/* 15FED4 801B9E64 27BD0018 */  addiu $sp, $sp, 0x18
/* 15FED8 801B9E68 000A5880 */  sll   $t3, $t2, 2
/* 15FEDC 801B9E6C 002B0821 */  addu  $at, $at, $t3
/* 15FEE0 801B9E70 03E00008 */  jr    $ra
/* 15FEE4 801B9E74 AC28DC50 */   sw    $t0, -0x23b0($at)
.type func_801B9D40_ovl7, @function
.size func_801B9D40_ovl7, . - func_801B9D40_ovl7

glabel func_801B9E78_ovl7
/* 15FEE8 801B9E78 03E00008 */  jr    $ra
/* 15FEEC 801B9E7C AFA40000 */   sw    $a0, ($sp)
.type func_801B9E78_ovl7, @function
.size func_801B9E78_ovl7, . - func_801B9E78_ovl7

glabel func_801B9E80_ovl7
/* 15FEF0 801B9E80 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 15FEF4 801B9E84 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 15FEF8 801B9E88 3C06800F */  lui   $a2, %hi(D_800EA6E0) # $a2, 0x800f
/* 15FEFC 801B9E8C 24C6A6E0 */  addiu $a2, %lo(D_800EA6E0) # addiu $a2, $a2, -0x5920
/* 15FF00 801B9E90 8C430000 */  lw    $v1, ($v0)
/* 15FF04 801B9E94 3C01800F */  lui   $at, 0x800f
/* 15FF08 801B9E98 00031880 */  sll   $v1, $v1, 2
/* 15FF0C 801B9E9C 00C32821 */  addu  $a1, $a2, $v1
/* 15FF10 801B9EA0 00230821 */  addu  $at, $at, $v1
/* 15FF14 801B9EA4 C422B320 */  lwc1  $f2, -0x4ce0($at)
/* 15FF18 801B9EA8 C4A00000 */  lwc1  $f0, ($a1)
/* 15FF1C 801B9EAC 3C01801D */  lui   $at, %hi(D_801CE410) # $at, 0x801d
/* 15FF20 801B9EB0 4602003C */  c.lt.s $f0, $f2
/* 15FF24 801B9EB4 00000000 */  nop   
/* 15FF28 801B9EB8 45020005 */  bc1fl .L801B9ED0_ovl7
/* 15FF2C 801B9EBC 46020381 */   sub.s $f14, $f0, $f2
/* 15FF30 801B9EC0 46020381 */  sub.s $f14, $f0, $f2
/* 15FF34 801B9EC4 10000003 */  b     .L801B9ED4_ovl7
/* 15FF38 801B9EC8 46007307 */   neg.s $f12, $f14
/* 15FF3C 801B9ECC 46020381 */  sub.s $f14, $f0, $f2
.L801B9ED0_ovl7:
/* 15FF40 801B9ED0 46007306 */  mov.s $f12, $f14
.L801B9ED4_ovl7:
/* 15FF44 801B9ED4 C424E410 */  lwc1  $f4, %lo(D_801CE410)($at)
/* 15FF48 801B9ED8 3C01801D */  lui   $at, 0x801d
/* 15FF4C 801B9EDC 4604603C */  c.lt.s $f12, $f4
/* 15FF50 801B9EE0 00000000 */  nop   
/* 15FF54 801B9EE4 4500004F */  bc1f  .L801BA024_ovl7
/* 15FF58 801B9EE8 00000000 */   nop   
/* 15FF5C 801B9EEC 3C01801D */  lui   $at, %hi(D_801CE414) # $at, 0x801d
/* 15FF60 801B9EF0 C422E414 */  lwc1  $f2, %lo(D_801CE414)($at)
/* 15FF64 801B9EF4 3C01801D */  lui   $at, %hi(D_801CE418) # $at, 0x801d
/* 15FF68 801B9EF8 460E103C */  c.lt.s $f2, $f14
/* 15FF6C 801B9EFC 00000000 */  nop   
/* 15FF70 801B9F00 45000008 */  bc1f  .L801B9F24_ovl7
/* 15FF74 801B9F04 00000000 */   nop   
/* 15FF78 801B9F08 46020181 */  sub.s $f6, $f0, $f2
/* 15FF7C 801B9F0C E4A60000 */  swc1  $f6, ($a1)
/* 15FF80 801B9F10 8C4E0000 */  lw    $t6, ($v0)
/* 15FF84 801B9F14 000E7880 */  sll   $t7, $t6, 2
/* 15FF88 801B9F18 00CF2821 */  addu  $a1, $a2, $t7
/* 15FF8C 801B9F1C 1000008D */  b     .L801BA154_ovl7
/* 15FF90 801B9F20 C4A00000 */   lwc1  $f0, ($a1)
.L801B9F24_ovl7:
/* 15FF94 801B9F24 C42CE418 */  lwc1  $f12, %lo(D_801CE418)($at)
/* 15FF98 801B9F28 3C01801D */  lui   $at, %hi(D_801CE41C) # $at, 0x801d
/* 15FF9C 801B9F2C 460E603C */  c.lt.s $f12, $f14
/* 15FFA0 801B9F30 00000000 */  nop   
/* 15FFA4 801B9F34 45000008 */  bc1f  .L801B9F58_ovl7
/* 15FFA8 801B9F38 00000000 */   nop   
/* 15FFAC 801B9F3C 460C0201 */  sub.s $f8, $f0, $f12
/* 15FFB0 801B9F40 E4A80000 */  swc1  $f8, ($a1)
/* 15FFB4 801B9F44 8C580000 */  lw    $t8, ($v0)
/* 15FFB8 801B9F48 0018C880 */  sll   $t9, $t8, 2
/* 15FFBC 801B9F4C 00D92821 */  addu  $a1, $a2, $t9
/* 15FFC0 801B9F50 10000080 */  b     .L801BA154_ovl7
/* 15FFC4 801B9F54 C4A00000 */   lwc1  $f0, ($a1)
.L801B9F58_ovl7:
/* 15FFC8 801B9F58 C430E41C */  lwc1  $f16, %lo(D_801CE41C)($at)
/* 15FFCC 801B9F5C 3C01801D */  lui   $at, %hi(D_801CE420) # $at, 0x801d
/* 15FFD0 801B9F60 460E803E */  c.le.s $f16, $f14
/* 15FFD4 801B9F64 00000000 */  nop   
/* 15FFD8 801B9F68 45000008 */  bc1f  .L801B9F8C_ovl7
/* 15FFDC 801B9F6C 00000000 */   nop   
/* 15FFE0 801B9F70 46100281 */  sub.s $f10, $f0, $f16
/* 15FFE4 801B9F74 E4AA0000 */  swc1  $f10, ($a1)
/* 15FFE8 801B9F78 8C480000 */  lw    $t0, ($v0)
/* 15FFEC 801B9F7C 00084880 */  sll   $t1, $t0, 2
/* 15FFF0 801B9F80 00C92821 */  addu  $a1, $a2, $t1
/* 15FFF4 801B9F84 10000073 */  b     .L801BA154_ovl7
/* 15FFF8 801B9F88 C4A00000 */   lwc1  $f0, ($a1)
.L801B9F8C_ovl7:
/* 15FFFC 801B9F8C C432E420 */  lwc1  $f18, %lo(D_801CE420)($at)
/* 160000 801B9F90 3C01801D */  lui   $at, %hi(D_801CE424) # $at, 0x801d
/* 160004 801B9F94 4612703C */  c.lt.s $f14, $f18
/* 160008 801B9F98 00000000 */  nop   
/* 16000C 801B9F9C 45000008 */  bc1f  .L801B9FC0_ovl7
/* 160010 801B9FA0 00000000 */   nop   
/* 160014 801B9FA4 46020100 */  add.s $f4, $f0, $f2
/* 160018 801B9FA8 E4A40000 */  swc1  $f4, ($a1)
/* 16001C 801B9FAC 8C4A0000 */  lw    $t2, ($v0)
/* 160020 801B9FB0 000A5880 */  sll   $t3, $t2, 2
/* 160024 801B9FB4 00CB2821 */  addu  $a1, $a2, $t3
/* 160028 801B9FB8 10000066 */  b     .L801BA154_ovl7
/* 16002C 801B9FBC C4A00000 */   lwc1  $f0, ($a1)
.L801B9FC0_ovl7:
/* 160030 801B9FC0 C426E424 */  lwc1  $f6, %lo(D_801CE424)($at)
/* 160034 801B9FC4 3C01801D */  lui   $at, %hi(D_801CE42C) # $at, 0x801d
/* 160038 801B9FC8 4606703C */  c.lt.s $f14, $f6
/* 16003C 801B9FCC 00000000 */  nop   
/* 160040 801B9FD0 45000008 */  bc1f  .L801B9FF4_ovl7
/* 160044 801B9FD4 00000000 */   nop   
/* 160048 801B9FD8 460C0200 */  add.s $f8, $f0, $f12
/* 16004C 801B9FDC E4A80000 */  swc1  $f8, ($a1)
/* 160050 801B9FE0 8C4C0000 */  lw    $t4, ($v0)
/* 160054 801B9FE4 000C6880 */  sll   $t5, $t4, 2
/* 160058 801B9FE8 00CD2821 */  addu  $a1, $a2, $t5
/* 16005C 801B9FEC 10000059 */  b     .L801BA154_ovl7
/* 160060 801B9FF0 C4A00000 */   lwc1  $f0, ($a1)
.L801B9FF4_ovl7:
/* 160064 801B9FF4 C42AE428 */  lwc1  $f10, %lo(D_801CE428)($at)
/* 160068 801B9FF8 460A703E */  c.le.s $f14, $f10
/* 16006C 801B9FFC 00000000 */  nop   
/* 160070 801BA000 45000054 */  bc1f  .L801BA154_ovl7
/* 160074 801BA004 00000000 */   nop   
/* 160078 801BA008 46100480 */  add.s $f18, $f0, $f16
/* 16007C 801BA00C E4B20000 */  swc1  $f18, ($a1)
/* 160080 801BA010 8C4E0000 */  lw    $t6, ($v0)
/* 160084 801BA014 000E7880 */  sll   $t7, $t6, 2
/* 160088 801BA018 00CF2821 */  addu  $a1, $a2, $t7
/* 16008C 801BA01C 1000004D */  b     .L801BA154_ovl7
/* 160090 801BA020 C4A00000 */   lwc1  $f0, ($a1)
.L801BA024_ovl7:
/* 160094 801BA024 C422E42C */  lwc1  $f2, %lo(D_801CE42C)($at)
/* 160098 801BA028 3C01801D */  lui   $at, %hi(D_801CE430) # $at, 0x801d
/* 16009C 801BA02C 460E103C */  c.lt.s $f2, $f14
/* 1600A0 801BA030 00000000 */  nop   
/* 1600A4 801BA034 45000008 */  bc1f  .L801BA058_ovl7
/* 1600A8 801BA038 00000000 */   nop   
/* 1600AC 801BA03C 46020100 */  add.s $f4, $f0, $f2
/* 1600B0 801BA040 E4A40000 */  swc1  $f4, ($a1)
/* 1600B4 801BA044 8C580000 */  lw    $t8, ($v0)
/* 1600B8 801BA048 0018C880 */  sll   $t9, $t8, 2
/* 1600BC 801BA04C 00D92821 */  addu  $a1, $a2, $t9
/* 1600C0 801BA050 10000040 */  b     .L801BA154_ovl7
/* 1600C4 801BA054 C4A00000 */   lwc1  $f0, ($a1)
.L801BA058_ovl7:
/* 1600C8 801BA058 C42CE430 */  lwc1  $f12, %lo(D_801CE430)($at)
/* 1600CC 801BA05C 3C01801D */  lui   $at, %hi(D_801CE434) # $at, 0x801d
/* 1600D0 801BA060 460E603C */  c.lt.s $f12, $f14
/* 1600D4 801BA064 00000000 */  nop   
/* 1600D8 801BA068 45000008 */  bc1f  .L801BA08C_ovl7
/* 1600DC 801BA06C 00000000 */   nop   
/* 1600E0 801BA070 460C0180 */  add.s $f6, $f0, $f12
/* 1600E4 801BA074 E4A60000 */  swc1  $f6, ($a1)
/* 1600E8 801BA078 8C480000 */  lw    $t0, ($v0)
/* 1600EC 801BA07C 00084880 */  sll   $t1, $t0, 2
/* 1600F0 801BA080 00C92821 */  addu  $a1, $a2, $t1
/* 1600F4 801BA084 10000033 */  b     .L801BA154_ovl7
/* 1600F8 801BA088 C4A00000 */   lwc1  $f0, ($a1)
.L801BA08C_ovl7:
/* 1600FC 801BA08C C430E434 */  lwc1  $f16, %lo(D_801CE434)($at)
/* 160100 801BA090 3C01801D */  lui   $at, %hi(D_801CE438) # $at, 0x801d
/* 160104 801BA094 460E803E */  c.le.s $f16, $f14
/* 160108 801BA098 00000000 */  nop   
/* 16010C 801BA09C 45000008 */  bc1f  .L801BA0C0_ovl7
/* 160110 801BA0A0 00000000 */   nop   
/* 160114 801BA0A4 46100200 */  add.s $f8, $f0, $f16
/* 160118 801BA0A8 E4A80000 */  swc1  $f8, ($a1)
/* 16011C 801BA0AC 8C4A0000 */  lw    $t2, ($v0)
/* 160120 801BA0B0 000A5880 */  sll   $t3, $t2, 2
/* 160124 801BA0B4 00CB2821 */  addu  $a1, $a2, $t3
/* 160128 801BA0B8 10000026 */  b     .L801BA154_ovl7
/* 16012C 801BA0BC C4A00000 */   lwc1  $f0, ($a1)
.L801BA0C0_ovl7:
/* 160130 801BA0C0 C42AE438 */  lwc1  $f10, %lo(D_801CE438)($at)
/* 160134 801BA0C4 3C01801D */  lui   $at, %hi(D_801CE43C) # $at, 0x801d
/* 160138 801BA0C8 460A703C */  c.lt.s $f14, $f10
/* 16013C 801BA0CC 00000000 */  nop   
/* 160140 801BA0D0 45000008 */  bc1f  .L801BA0F4_ovl7
/* 160144 801BA0D4 00000000 */   nop   
/* 160148 801BA0D8 46020481 */  sub.s $f18, $f0, $f2
/* 16014C 801BA0DC E4B20000 */  swc1  $f18, ($a1)
/* 160150 801BA0E0 8C4C0000 */  lw    $t4, ($v0)
/* 160154 801BA0E4 000C6880 */  sll   $t5, $t4, 2
/* 160158 801BA0E8 00CD2821 */  addu  $a1, $a2, $t5
/* 16015C 801BA0EC 10000019 */  b     .L801BA154_ovl7
/* 160160 801BA0F0 C4A00000 */   lwc1  $f0, ($a1)
.L801BA0F4_ovl7:
/* 160164 801BA0F4 C424E43C */  lwc1  $f4, %lo(D_801CE43C)($at)
/* 160168 801BA0F8 3C01801D */  lui   $at, %hi(D_801CE440) # $at, 0x801d
/* 16016C 801BA0FC 4604703C */  c.lt.s $f14, $f4
/* 160170 801BA100 00000000 */  nop   
/* 160174 801BA104 45000008 */  bc1f  .L801BA128_ovl7
/* 160178 801BA108 00000000 */   nop   
/* 16017C 801BA10C 460C0181 */  sub.s $f6, $f0, $f12
/* 160180 801BA110 E4A60000 */  swc1  $f6, ($a1)
/* 160184 801BA114 8C4E0000 */  lw    $t6, ($v0)
/* 160188 801BA118 000E7880 */  sll   $t7, $t6, 2
/* 16018C 801BA11C 00CF2821 */  addu  $a1, $a2, $t7
/* 160190 801BA120 1000000C */  b     .L801BA154_ovl7
/* 160194 801BA124 C4A00000 */   lwc1  $f0, ($a1)
.L801BA128_ovl7:
/* 160198 801BA128 C428E440 */  lwc1  $f8, %lo(D_801CE440)($at)
/* 16019C 801BA12C 4608703E */  c.le.s $f14, $f8
/* 1601A0 801BA130 00000000 */  nop   
/* 1601A4 801BA134 45000007 */  bc1f  .L801BA154_ovl7
/* 1601A8 801BA138 00000000 */   nop   
/* 1601AC 801BA13C 46100281 */  sub.s $f10, $f0, $f16
/* 1601B0 801BA140 E4AA0000 */  swc1  $f10, ($a1)
/* 1601B4 801BA144 8C580000 */  lw    $t8, ($v0)
/* 1601B8 801BA148 0018C880 */  sll   $t9, $t8, 2
/* 1601BC 801BA14C 00D92821 */  addu  $a1, $a2, $t9
/* 1601C0 801BA150 C4A00000 */  lwc1  $f0, ($a1)
.L801BA154_ovl7:
/* 1601C4 801BA154 3C01801D */  lui   $at, %hi(D_801CE444) # $at, 0x801d
/* 1601C8 801BA158 C422E444 */  lwc1  $f2, %lo(D_801CE444)($at)
/* 1601CC 801BA15C 44806000 */  mtc1  $zero, $f12
/* 1601D0 801BA160 3C01801D */  lui   $at, %hi(D_801CE448) # $at, 0x801d
/* 1601D4 801BA164 4600103C */  c.lt.s $f2, $f0
/* 1601D8 801BA168 00000000 */  nop   
/* 1601DC 801BA16C 4502000C */  bc1fl .L801BA1A0_ovl7
/* 1601E0 801BA170 460C003C */   c.lt.s $f0, $f12
/* 1601E4 801BA174 46020481 */  sub.s $f18, $f0, $f2
.L801BA178_ovl7:
/* 1601E8 801BA178 E4B20000 */  swc1  $f18, ($a1)
/* 1601EC 801BA17C 8C480000 */  lw    $t0, ($v0)
/* 1601F0 801BA180 00084880 */  sll   $t1, $t0, 2
/* 1601F4 801BA184 00C92821 */  addu  $a1, $a2, $t1
/* 1601F8 801BA188 C4A00000 */  lwc1  $f0, ($a1)
/* 1601FC 801BA18C 4600103C */  c.lt.s $f2, $f0
/* 160200 801BA190 00000000 */  nop   
/* 160204 801BA194 4503FFF8 */  bc1tl .L801BA178_ovl7
/* 160208 801BA198 46020481 */   sub.s $f18, $f0, $f2
/* 16020C 801BA19C 460C003C */  c.lt.s $f0, $f12
.L801BA1A0_ovl7:
/* 160210 801BA1A0 00000000 */  nop   
/* 160214 801BA1A4 4500000B */  bc1f  .L801BA1D4_ovl7
/* 160218 801BA1A8 00000000 */   nop   
/* 16021C 801BA1AC 46020100 */  add.s $f4, $f0, $f2
.L801BA1B0_ovl7:
/* 160220 801BA1B0 E4A40000 */  swc1  $f4, ($a1)
/* 160224 801BA1B4 8C4A0000 */  lw    $t2, ($v0)
/* 160228 801BA1B8 000A5880 */  sll   $t3, $t2, 2
/* 16022C 801BA1BC 00CB2821 */  addu  $a1, $a2, $t3
/* 160230 801BA1C0 C4A00000 */  lwc1  $f0, ($a1)
/* 160234 801BA1C4 460C003C */  c.lt.s $f0, $f12
/* 160238 801BA1C8 00000000 */  nop   
/* 16023C 801BA1CC 4503FFF8 */  bc1tl .L801BA1B0_ovl7
/* 160240 801BA1D0 46020100 */   add.s $f4, $f0, $f2
.L801BA1D4_ovl7:
/* 160244 801BA1D4 C426E448 */  lwc1  $f6, %lo(D_801CE448)($at)
/* 160248 801BA1D8 8C8C003C */  lw    $t4, 0x3c($a0)
/* 16024C 801BA1DC 46060201 */  sub.s $f8, $f0, $f6
/* 160250 801BA1E0 8D8D0010 */  lw    $t5, 0x10($t4)
/* 160254 801BA1E4 03E00008 */  jr    $ra
/* 160258 801BA1E8 E5A80030 */   swc1  $f8, 0x30($t5)
.type func_801B9E80_ovl7, @function
.size func_801B9E80_ovl7, . - func_801B9E80_ovl7

glabel func_801BA1EC_ovl7
/* 16025C 801BA1EC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 160260 801BA1F0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 160264 801BA1F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 160268 801BA1F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 16026C 801BA1FC 8DCF0000 */  lw    $t7, ($t6)
/* 160270 801BA200 3C19800E */  lui   $t9, 0x800e
/* 160274 801BA204 000FC080 */  sll   $t8, $t7, 2
/* 160278 801BA208 0338C821 */  addu  $t9, $t9, $t8
/* 16027C 801BA20C 8F390D50 */  lw    $t9, 0xd50($t9)
/* 160280 801BA210 57200008 */  bnezl $t9, .L801BA234_ovl7
/* 160284 801BA214 8FBF0014 */   lw    $ra, 0x14($sp)
/* 160288 801BA218 8C88003C */  lw    $t0, 0x3c($a0)
/* 16028C 801BA21C 44802000 */  mtc1  $zero, $f4
/* 160290 801BA220 8D090010 */  lw    $t1, 0x10($t0)
/* 160294 801BA224 E5240030 */  swc1  $f4, 0x30($t1)
/* 160298 801BA228 0C0288C0 */  jal   func_800A2300
/* 16029C 801BA22C AC800048 */   sw    $zero, 0x48($a0)
/* 1602A0 801BA230 8FBF0014 */  lw    $ra, 0x14($sp)
.L801BA234_ovl7:
/* 1602A4 801BA234 27BD0018 */  addiu $sp, $sp, 0x18
/* 1602A8 801BA238 03E00008 */  jr    $ra
/* 1602AC 801BA23C 00000000 */   nop   
.type func_801BA1EC_ovl7, @function
.size func_801BA1EC_ovl7, . - func_801BA1EC_ovl7

glabel func_801BA240_ovl7
/* 1602B0 801BA240 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1602B4 801BA244 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1602B8 801BA248 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1602BC 801BA24C AFBF001C */  sw    $ra, 0x1c($sp)
/* 1602C0 801BA250 AFA40038 */  sw    $a0, 0x38($sp)
/* 1602C4 801BA254 8C620000 */  lw    $v0, ($v1)
/* 1602C8 801BA258 3C06800F */  lui   $a2, %hi(D_800E9C60) # $a2, 0x800f
/* 1602CC 801BA25C 24C69C60 */  addiu $a2, %lo(D_800E9C60) # addiu $a2, $a2, -0x63a0
/* 1602D0 801BA260 00021080 */  sll   $v0, $v0, 2
/* 1602D4 801BA264 3C0E800E */  lui   $t6, 0x800e
/* 1602D8 801BA268 01C27021 */  addu  $t6, $t6, $v0
/* 1602DC 801BA26C 00C22021 */  addu  $a0, $a2, $v0
/* 1602E0 801BA270 8DCEFBD0 */  lw    $t6, -0x430($t6)
/* 1602E4 801BA274 8C8F0000 */  lw    $t7, ($a0)
/* 1602E8 801BA278 8DC5000C */  lw    $a1, 0xc($t6)
/* 1602EC 801BA27C 25F80001 */  addiu $t8, $t7, 1
/* 1602F0 801BA280 AC980000 */  sw    $t8, ($a0)
/* 1602F4 801BA284 8C790000 */  lw    $t9, ($v1)
/* 1602F8 801BA288 24040003 */  li    $a0, 3
/* 1602FC 801BA28C 00194080 */  sll   $t0, $t9, 2
/* 160300 801BA290 00C84821 */  addu  $t1, $a2, $t0
/* 160304 801BA294 8D2A0000 */  lw    $t2, ($t1)
/* 160308 801BA298 2941000B */  slti  $at, $t2, 0xb
/* 16030C 801BA29C 54200020 */  bnezl $at, .L801BA320_ovl7
/* 160310 801BA2A0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 160314 801BA2A4 0C006291 */  jal   random_soft_s32_range
/* 160318 801BA2A8 AFA50028 */   sw    $a1, 0x28($sp)
/* 16031C 801BA2AC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 160320 801BA2B0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 160324 801BA2B4 3C06800F */  lui   $a2, %hi(D_800E9C60) # $a2, 0x800f
/* 160328 801BA2B8 24C69C60 */  addiu $a2, %lo(D_800E9C60) # addiu $a2, $a2, -0x63a0
/* 16032C 801BA2BC 8C6B0000 */  lw    $t3, ($v1)
/* 160330 801BA2C0 3C18800F */  lui   $t8, 0x800f
/* 160334 801BA2C4 8FA50028 */  lw    $a1, 0x28($sp)
/* 160338 801BA2C8 000B6080 */  sll   $t4, $t3, 2
/* 16033C 801BA2CC 00CC6821 */  addu  $t5, $a2, $t4
/* 160340 801BA2D0 ADA20000 */  sw    $v0, ($t5)
/* 160344 801BA2D4 8C6E0000 */  lw    $t6, ($v1)
/* 160348 801BA2D8 000E7880 */  sll   $t7, $t6, 2
/* 16034C 801BA2DC 030FC021 */  addu  $t8, $t8, $t7
/* 160350 801BA2E0 8F188AE0 */  lw    $t8, -0x7520($t8)
/* 160354 801BA2E4 33190001 */  andi  $t9, $t8, 1
/* 160358 801BA2E8 5320000D */  beql  $t9, $zero, .L801BA320_ovl7
/* 16035C 801BA2EC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 160360 801BA2F0 0C0291E5 */  jal   func_800A4794
/* 160364 801BA2F4 27A4002C */   addiu $a0, $sp, 0x2c
/* 160368 801BA2F8 C7A40030 */  lwc1  $f4, 0x30($sp)
/* 16036C 801BA2FC C7A60034 */  lwc1  $f6, 0x34($sp)
/* 160370 801BA300 24040003 */  li    $a0, 3
/* 160374 801BA304 24050002 */  li    $a1, 2
/* 160378 801BA308 2406003F */  li    $a2, 63
/* 16037C 801BA30C 8FA7002C */  lw    $a3, 0x2c($sp)
/* 160380 801BA310 E7A40010 */  swc1  $f4, 0x10($sp)
/* 160384 801BA314 0C029FDD */  jal   func_800A7F74
/* 160388 801BA318 E7A60014 */   swc1  $f6, 0x14($sp)
/* 16038C 801BA31C 8FBF001C */  lw    $ra, 0x1c($sp)
.L801BA320_ovl7:
/* 160390 801BA320 27BD0038 */  addiu $sp, $sp, 0x38
/* 160394 801BA324 03E00008 */  jr    $ra
/* 160398 801BA328 00000000 */   nop   
.type func_801BA240_ovl7, @function
.size func_801BA240_ovl7, . - func_801BA240_ovl7

glabel func_801BA32C_ovl7
/* 16039C 801BA32C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1603A0 801BA330 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1603A4 801BA334 24040017 */  li    $a0, 23
/* 1603A8 801BA338 2405001E */  li    $a1, 30
/* 1603AC 801BA33C 0C02BB02 */  jal   request_track_general
/* 1603B0 801BA340 24060050 */   li    $a2, 80
/* 1603B4 801BA344 2841003C */  slti  $at, $v0, 0x3c
/* 1603B8 801BA348 10200004 */  beqz  $at, .L801BA35C_ovl7
/* 1603BC 801BA34C 00403025 */   move  $a2, $v0
/* 1603C0 801BA350 2401FFFF */  li    $at, -1
/* 1603C4 801BA354 1441000B */  bne   $v0, $at, .L801BA384_ovl7
/* 1603C8 801BA358 3C07800E */   lui   $a3, %hi(gEntityVtableIndexArray) # $a3, 0x800e
.L801BA35C_ovl7:
/* 1603CC 801BA35C 3C04801D */  lui   $a0, %hi(D_801CE380) # $a0, 0x801d
/* 1603D0 801BA360 2484E380 */  addiu $a0, %lo(D_801CE380) # addiu $a0, $a0, -0x1c80
/* 1603D4 801BA364 00C02825 */  move  $a1, $a2
/* 1603D8 801BA368 0C02909C */  jal   print_error_stub
/* 1603DC 801BA36C AFA6001C */   sw    $a2, 0x1c($sp)
/* 1603E0 801BA370 8FA6001C */  lw    $a2, 0x1c($sp)
/* 1603E4 801BA374 0C02C640 */  jal   func_800B1900
/* 1603E8 801BA378 30C4FFFF */   andi  $a0, $a2, 0xffff
/* 1603EC 801BA37C 10000077 */  b     .L801BA55C_ovl7
/* 1603F0 801BA380 2402FFFF */   li    $v0, -1
.L801BA384_ovl7:
/* 1603F4 801BA384 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 1603F8 801BA388 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 1603FC 801BA38C 24E7DC50 */  addiu $a3, %lo(gEntityVtableIndexArray) # addiu $a3, $a3, -0x23b0
/* 160400 801BA390 00021880 */  sll   $v1, $v0, 2
/* 160404 801BA394 8C8E0000 */  lw    $t6, ($a0)
/* 160408 801BA398 3C01800E */  lui   $at, 0x800e
/* 16040C 801BA39C 00220821 */  addu  $at, $at, $v0
/* 160410 801BA3A0 000E7880 */  sll   $t7, $t6, 2
/* 160414 801BA3A4 00EFC021 */  addu  $t8, $a3, $t7
/* 160418 801BA3A8 8F190000 */  lw    $t9, ($t8)
/* 16041C 801BA3AC 00E37021 */  addu  $t6, $a3, $v1
/* 160420 801BA3B0 240F00FF */  li    $t7, 255
/* 160424 801BA3B4 ADD90000 */  sw    $t9, ($t6)
/* 160428 801BA3B8 A02F76C0 */  sb    $t7, 0x76c0($at)
/* 16042C 801BA3BC 8C980000 */  lw    $t8, ($a0)
/* 160430 801BA3C0 3C08800E */  lui   $t0, %hi(D_800E7730) # $t0, 0x800e
/* 160434 801BA3C4 25087730 */  addiu $t0, %lo(D_800E7730) # addiu $t0, $t0, 0x7730
/* 160438 801BA3C8 0118C821 */  addu  $t9, $t0, $t8
/* 16043C 801BA3CC 932E0000 */  lbu   $t6, ($t9)
/* 160440 801BA3D0 01027821 */  addu  $t7, $t0, $v0
/* 160444 801BA3D4 3C09800E */  lui   $t1, %hi(D_800E77A0) # $t1, 0x800e
/* 160448 801BA3D8 A1EE0000 */  sb    $t6, ($t7)
/* 16044C 801BA3DC 8C980000 */  lw    $t8, ($a0)
/* 160450 801BA3E0 252977A0 */  addiu $t1, %lo(D_800E77A0) # addiu $t1, $t1, 0x77a0
/* 160454 801BA3E4 3C01800E */  lui   $at, 0x800e
/* 160458 801BA3E8 0018C840 */  sll   $t9, $t8, 1
/* 16045C 801BA3EC 01397021 */  addu  $t6, $t1, $t9
/* 160460 801BA3F0 95CF0000 */  lhu   $t7, ($t6)
/* 160464 801BA3F4 0002C040 */  sll   $t8, $v0, 1
/* 160468 801BA3F8 0138C821 */  addu  $t9, $t1, $t8
/* 16046C 801BA3FC 240E0001 */  li    $t6, 1
/* 160470 801BA400 00220821 */  addu  $at, $at, $v0
/* 160474 801BA404 A72F0000 */  sh    $t7, ($t9)
/* 160478 801BA408 A02E7880 */  sb    $t6, 0x7880($at)
/* 16047C 801BA40C 8C980000 */  lw    $t8, ($a0)
/* 160480 801BA410 3C0A800E */  lui   $t2, %hi(D_800E5F90) # $t2, 0x800e
/* 160484 801BA414 254A5F90 */  addiu $t2, %lo(D_800E5F90) # addiu $t2, $t2, 0x5f90
/* 160488 801BA418 00187880 */  sll   $t7, $t8, 2
/* 16048C 801BA41C 014FC821 */  addu  $t9, $t2, $t7
/* 160490 801BA420 8F250000 */  lw    $a1, ($t9)
/* 160494 801BA424 3C01800E */  lui   $at, 0x800e
/* 160498 801BA428 00230821 */  addu  $at, $at, $v1
/* 16049C 801BA42C 01437021 */  addu  $t6, $t2, $v1
/* 1604A0 801BA430 AC256150 */  sw    $a1, 0x6150($at)
/* 1604A4 801BA434 ADC50000 */  sw    $a1, ($t6)
/* 1604A8 801BA438 8C980000 */  lw    $t8, ($a0)
/* 1604AC 801BA43C 3C0B800E */  lui   $t3, %hi(D_800E6BD0) # $t3, 0x800e
/* 1604B0 801BA440 256B6BD0 */  addiu $t3, %lo(D_800E6BD0) # addiu $t3, $t3, 0x6bd0
/* 1604B4 801BA444 00187880 */  sll   $t7, $t8, 2
/* 1604B8 801BA448 016FC821 */  addu  $t9, $t3, $t7
/* 1604BC 801BA44C C7200000 */  lwc1  $f0, ($t9)
/* 1604C0 801BA450 3C01800E */  lui   $at, 0x800e
/* 1604C4 801BA454 00230821 */  addu  $at, $at, $v1
/* 1604C8 801BA458 01637021 */  addu  $t6, $t3, $v1
/* 1604CC 801BA45C E4206D90 */  swc1  $f0, 0x6d90($at)
/* 1604D0 801BA460 E5C00000 */  swc1  $f0, ($t6)
/* 1604D4 801BA464 8C980000 */  lw    $t8, ($a0)
/* 1604D8 801BA468 3C0C800E */  lui   $t4, %hi(gEntitiesNextPosXArray) # $t4, 0x800e
/* 1604DC 801BA46C 258C25D0 */  addiu $t4, %lo(gEntitiesNextPosXArray) # addiu $t4, $t4, 0x25d0
/* 1604E0 801BA470 00187880 */  sll   $t7, $t8, 2
/* 1604E4 801BA474 018FC821 */  addu  $t9, $t4, $t7
/* 1604E8 801BA478 C7240000 */  lwc1  $f4, ($t9)
/* 1604EC 801BA47C 01837021 */  addu  $t6, $t4, $v1
/* 1604F0 801BA480 3C0D800E */  lui   $t5, %hi(gEntitiesPosXArray) # $t5, 0x800e
/* 1604F4 801BA484 E5C40000 */  swc1  $f4, ($t6)
/* 1604F8 801BA488 8C980000 */  lw    $t8, ($a0)
/* 1604FC 801BA48C 25AD2B10 */  addiu $t5, %lo(gEntitiesPosXArray) # addiu $t5, $t5, 0x2b10
/* 160500 801BA490 01A37021 */  addu  $t6, $t5, $v1
/* 160504 801BA494 00187880 */  sll   $t7, $t8, 2
/* 160508 801BA498 01AFC821 */  addu  $t9, $t5, $t7
/* 16050C 801BA49C C7260000 */  lwc1  $f6, ($t9)
/* 160510 801BA4A0 3C1F800E */  lui   $ra, %hi(gEntitiesNextPosYArray) # $ra, 0x800e
/* 160514 801BA4A4 27FF2790 */  addiu $ra, %lo(gEntitiesNextPosYArray) # addiu $ra, $ra, 0x2790
/* 160518 801BA4A8 E5C60000 */  swc1  $f6, ($t6)
/* 16051C 801BA4AC 8C980000 */  lw    $t8, ($a0)
/* 160520 801BA4B0 03E37021 */  addu  $t6, $ra, $v1
/* 160524 801BA4B4 3C01800F */  lui   $at, 0x800f
/* 160528 801BA4B8 00187880 */  sll   $t7, $t8, 2
/* 16052C 801BA4BC 03EFC821 */  addu  $t9, $ra, $t7
/* 160530 801BA4C0 C7280000 */  lwc1  $f8, ($t9)
/* 160534 801BA4C4 3C19800E */  lui   $t9, %hi(gEntitiesPosYArray) # $t9, 0x800e
/* 160538 801BA4C8 27392CD0 */  addiu $t9, %lo(gEntitiesPosYArray) # addiu $t9, $t9, 0x2cd0
/* 16053C 801BA4CC E5C80000 */  swc1  $f8, ($t6)
/* 160540 801BA4D0 8C980000 */  lw    $t8, ($a0)
/* 160544 801BA4D4 00230821 */  addu  $at, $at, $v1
/* 160548 801BA4D8 00C01025 */  move  $v0, $a2
/* 16054C 801BA4DC 00187880 */  sll   $t7, $t8, 2
/* 160550 801BA4E0 01F97021 */  addu  $t6, $t7, $t9
/* 160554 801BA4E4 C5CA0000 */  lwc1  $f10, ($t6)
/* 160558 801BA4E8 0079C021 */  addu  $t8, $v1, $t9
/* 16055C 801BA4EC 3C19800E */  lui   $t9, %hi(gEntitiesNextPosZArray) # $t9, 0x800e
/* 160560 801BA4F0 E70A0000 */  swc1  $f10, ($t8)
/* 160564 801BA4F4 8C8F0000 */  lw    $t7, ($a0)
/* 160568 801BA4F8 27392950 */  addiu $t9, %lo(gEntitiesNextPosZArray) # addiu $t9, $t9, 0x2950
/* 16056C 801BA4FC 000F7080 */  sll   $t6, $t7, 2
/* 160570 801BA500 01D9C021 */  addu  $t8, $t6, $t9
/* 160574 801BA504 C7100000 */  lwc1  $f16, ($t8)
/* 160578 801BA508 00797821 */  addu  $t7, $v1, $t9
/* 16057C 801BA50C 3C19800E */  lui   $t9, %hi(gEntitiesPosZArray) # $t9, 0x800e
/* 160580 801BA510 E5F00000 */  swc1  $f16, ($t7)
/* 160584 801BA514 8C8E0000 */  lw    $t6, ($a0)
/* 160588 801BA518 27392E90 */  addiu $t9, %lo(gEntitiesPosZArray) # addiu $t9, $t9, 0x2e90
/* 16058C 801BA51C 000EC080 */  sll   $t8, $t6, 2
/* 160590 801BA520 03197821 */  addu  $t7, $t8, $t9
/* 160594 801BA524 C5F20000 */  lwc1  $f18, ($t7)
/* 160598 801BA528 00797021 */  addu  $t6, $v1, $t9
/* 16059C 801BA52C 24180001 */  li    $t8, 1
/* 1605A0 801BA530 E5D20000 */  swc1  $f18, ($t6)
/* 1605A4 801BA534 AC3898E0 */  sw    $t8, -0x6720($at)
/* 1605A8 801BA538 8C8F0000 */  lw    $t7, ($a0)
/* 1605AC 801BA53C 3C03800E */  lui   $v1, %hi(gEntitiesAngleZArray) # $v1, 0x800e
/* 1605B0 801BA540 24634390 */  addiu $v1, %lo(gEntitiesAngleZArray) # addiu $v1, $v1, 0x4390
/* 1605B4 801BA544 000FC880 */  sll   $t9, $t7, 2
/* 1605B8 801BA548 00797021 */  addu  $t6, $v1, $t9
/* 1605BC 801BA54C C5C40000 */  lwc1  $f4, ($t6)
/* 1605C0 801BA550 0006C080 */  sll   $t8, $a2, 2
/* 1605C4 801BA554 00787821 */  addu  $t7, $v1, $t8
/* 1605C8 801BA558 E5E40000 */  swc1  $f4, ($t7)
.L801BA55C_ovl7:
/* 1605CC 801BA55C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1605D0 801BA560 27BD0020 */  addiu $sp, $sp, 0x20
/* 1605D4 801BA564 03E00008 */  jr    $ra
/* 1605D8 801BA568 00000000 */   nop   
.type func_801BA32C_ovl7, @function
.size func_801BA32C_ovl7, . - func_801BA32C_ovl7

glabel func_801BA56C_ovl7
/* 1605DC 801BA56C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1605E0 801BA570 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1605E4 801BA574 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1605E8 801BA578 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1605EC 801BA57C AFA40018 */  sw    $a0, 0x18($sp)
/* 1605F0 801BA580 8C4E0000 */  lw    $t6, ($v0)
/* 1605F4 801BA584 3C01800F */  lui   $at, 0x800f
/* 1605F8 801BA588 3C04800E */  lui   $a0, 0x800e
/* 1605FC 801BA58C 000E7880 */  sll   $t7, $t6, 2
/* 160600 801BA590 002F0821 */  addu  $at, $at, $t7
/* 160604 801BA594 AC208920 */  sw    $zero, -0x76e0($at)
/* 160608 801BA598 8C580000 */  lw    $t8, ($v0)
/* 16060C 801BA59C 3C06801D */  lui   $a2, %hi(D_801CD76C) # $a2, 0x801d
/* 160610 801BA5A0 24C6D76C */  addiu $a2, %lo(D_801CD76C) # addiu $a2, $a2, -0x2894
/* 160614 801BA5A4 00982021 */  addu  $a0, $a0, $t8
/* 160618 801BA5A8 90847880 */  lbu   $a0, 0x7880($a0)
/* 16061C 801BA5AC 0C02911F */  jal   call_virtual_function
/* 160620 801BA5B0 24050005 */   li    $a1, 5
/* 160624 801BA5B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 160628 801BA5B8 27BD0018 */  addiu $sp, $sp, 0x18
/* 16062C 801BA5BC 03E00008 */  jr    $ra
/* 160630 801BA5C0 00000000 */   nop   
.type func_801BA56C_ovl7, @function
.size func_801BA56C_ovl7, . - func_801BA56C_ovl7

glabel func_801BA5C4_ovl7
/* 160634 801BA5C4 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 160638 801BA5C8 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 16063C 801BA5CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 160640 801BA5D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 160644 801BA5D4 AFA40018 */  sw    $a0, 0x18($sp)
/* 160648 801BA5D8 8DF80000 */  lw    $t8, ($t7)
/* 16064C 801BA5DC 3C0E801C */  lui   $t6, %hi(D_801BA6B8) # $t6, 0x801c
/* 160650 801BA5E0 3C01800E */  lui   $at, 0x800e
/* 160654 801BA5E4 0018C880 */  sll   $t9, $t8, 2
/* 160658 801BA5E8 00390821 */  addu  $at, $at, $t9
/* 16065C 801BA5EC 25CEA6B8 */  addiu $t6, %lo(D_801BA6B8) # addiu $t6, $t6, -0x5948
/* 160660 801BA5F0 3C04801C */  lui   $a0, %hi(D_801BA648) # $a0, 0x801c
/* 160664 801BA5F4 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 160668 801BA5F8 0C068354 */  jal   func_801A0D50
/* 16066C 801BA5FC 2484A648 */   addiu $a0, %lo(D_801BA648) # addiu $a0, $a0, -0x59b8
/* 160670 801BA600 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 160674 801BA604 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 160678 801BA608 0C02BEED */  jal   func_800AFBB4
/* 16067C 801BA60C 24040001 */   li    $a0, 1
/* 160680 801BA610 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 160684 801BA614 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 160688 801BA618 3C01800E */  lui   $at, 0x800e
/* 16068C 801BA61C 24080002 */  li    $t0, 2
/* 160690 801BA620 8D2A0000 */  lw    $t2, ($t1)
/* 160694 801BA624 8FA40018 */  lw    $a0, 0x18($sp)
/* 160698 801BA628 000A5880 */  sll   $t3, $t2, 2
/* 16069C 801BA62C 002B0821 */  addu  $at, $at, $t3
/* 1606A0 801BA630 0C06E992 */  jal   D_801BA648_ovl7
/* 1606A4 801BA634 AC28DC50 */   sw    $t0, -0x23b0($at)
/* 1606A8 801BA638 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1606AC 801BA63C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1606B0 801BA640 03E00008 */  jr    $ra
/* 1606B4 801BA644 00000000 */   nop   
.type func_801BA5C4_ovl7, @function
.size func_801BA5C4_ovl7, . - func_801BA5C4_ovl7

glabel func_801BA648_ovl7
/* 1606B8 801BA648 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1606BC 801BA64C AFB20020 */  sw    $s2, 0x20($sp)
/* 1606C0 801BA650 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1606C4 801BA654 AFB00018 */  sw    $s0, 0x18($sp)
/* 1606C8 801BA658 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 1606CC 801BA65C 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1606D0 801BA660 3C12801D */  lui   $s2, %hi(D_801CD780) # $s2, 0x801d
/* 1606D4 801BA664 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1606D8 801BA668 AFA40028 */  sw    $a0, 0x28($sp)
/* 1606DC 801BA66C 2652D780 */  addiu $s2, %lo(D_801CD780) # addiu $s2, $s2, -0x2880
/* 1606E0 801BA670 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1606E4 801BA674 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 1606E8 801BA678 8E2E0000 */  lw    $t6, ($s1)
.L801BA67C_ovl7:
/* 1606EC 801BA67C 24050003 */  li    $a1, 3
/* 1606F0 801BA680 02403025 */  move  $a2, $s2
/* 1606F4 801BA684 8DCF0000 */  lw    $t7, ($t6)
/* 1606F8 801BA688 000FC080 */  sll   $t8, $t7, 2
/* 1606FC 801BA68C 0218C821 */  addu  $t9, $s0, $t8
/* 160700 801BA690 0C02911F */  jal   call_virtual_function
/* 160704 801BA694 8F240000 */   lw    $a0, ($t9)
/* 160708 801BA698 1000FFF8 */  b     .L801BA67C_ovl7
/* 16070C 801BA69C 8E2E0000 */   lw    $t6, ($s1)
/* 160710 801BA6A0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 160714 801BA6A4 8FB00018 */  lw    $s0, 0x18($sp)
/* 160718 801BA6A8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 16071C 801BA6AC 8FB20020 */  lw    $s2, 0x20($sp)
/* 160720 801BA6B0 03E00008 */  jr    $ra
/* 160724 801BA6B4 27BD0028 */   addiu $sp, $sp, 0x28
.type func_801BA648_ovl7, @function
.size func_801BA648_ovl7, . - func_801BA648_ovl7

glabel func_801BA6B8_ovl7
/* 160728 801BA6B8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 16072C 801BA6BC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 160730 801BA6C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 160734 801BA6C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 160738 801BA6C8 AFA40018 */  sw    $a0, 0x18($sp)
/* 16073C 801BA6CC 8DCF0000 */  lw    $t7, ($t6)
/* 160740 801BA6D0 3C04800E */  lui   $a0, 0x800e
/* 160744 801BA6D4 3C06801D */  lui   $a2, %hi(D_801CD78C) # $a2, 0x801d
/* 160748 801BA6D8 000FC080 */  sll   $t8, $t7, 2
/* 16074C 801BA6DC 00982021 */  addu  $a0, $a0, $t8
/* 160750 801BA6E0 8C84DFD0 */  lw    $a0, -0x2030($a0)
/* 160754 801BA6E4 24C6D78C */  addiu $a2, %lo(D_801CD78C) # addiu $a2, $a2, -0x2874
/* 160758 801BA6E8 0C02911F */  jal   call_virtual_function
/* 16075C 801BA6EC 24050003 */   li    $a1, 3
/* 160760 801BA6F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 160764 801BA6F4 27BD0018 */  addiu $sp, $sp, 0x18
/* 160768 801BA6F8 03E00008 */  jr    $ra
/* 16076C 801BA6FC 00000000 */   nop   
.type func_801BA6B8_ovl7, @function
.size func_801BA6B8_ovl7, . - func_801BA6B8_ovl7

glabel func_801BA700_ovl7
/* 160770 801BA700 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 160774 801BA704 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 160778 801BA708 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 16077C 801BA70C AFBF0014 */  sw    $ra, 0x14($sp)
/* 160780 801BA710 AFA40018 */  sw    $a0, 0x18($sp)
/* 160784 801BA714 8DCF0000 */  lw    $t7, ($t6)
/* 160788 801BA718 3C01800E */  lui   $at, 0x800e
/* 16078C 801BA71C 3C040001 */  lui   $a0, (0x00010145 >> 16) # lui $a0, 1
/* 160790 801BA720 000FC080 */  sll   $t8, $t7, 2
/* 160794 801BA724 00380821 */  addu  $at, $at, $t8
/* 160798 801BA728 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 16079C 801BA72C 0C02A806 */  jal   func_800AA018
/* 1607A0 801BA730 34840145 */   ori   $a0, (0x00010145 & 0xFFFF) # ori $a0, $a0, 0x145
/* 1607A4 801BA734 0C02CD48 */  jal   func_800B3520
/* 1607A8 801BA738 00000000 */   nop   
/* 1607AC 801BA73C 0C02BC9F */  jal   func_800AF27C
/* 1607B0 801BA740 00000000 */   nop   
/* 1607B4 801BA744 0C068FA0 */  jal   func_801A3E80
/* 1607B8 801BA748 8FA40018 */   lw    $a0, 0x18($sp)
/* 1607BC 801BA74C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1607C0 801BA750 27BD0018 */  addiu $sp, $sp, 0x18
/* 1607C4 801BA754 03E00008 */  jr    $ra
/* 1607C8 801BA758 00000000 */   nop   
.type func_801BA700_ovl7, @function
.size func_801BA700_ovl7, . - func_801BA700_ovl7

glabel func_801BA75C_ovl7
/* 1607CC 801BA75C 03E00008 */  jr    $ra
/* 1607D0 801BA760 AFA40000 */   sw    $a0, ($sp)
.type func_801BA75C_ovl7, @function
.size func_801BA75C_ovl7, . - func_801BA75C_ovl7

glabel func_801BA764_ovl7
/* 1607D4 801BA764 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1607D8 801BA768 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1607DC 801BA76C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1607E0 801BA770 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1607E4 801BA774 AFA40018 */  sw    $a0, 0x18($sp)
/* 1607E8 801BA778 8DC30000 */  lw    $v1, ($t6)
/* 1607EC 801BA77C 3C02800E */  lui   $v0, 0x800e
/* 1607F0 801BA780 3C01800E */  lui   $at, 0x800e
/* 1607F4 801BA784 00031880 */  sll   $v1, $v1, 2
/* 1607F8 801BA788 00431021 */  addu  $v0, $v0, $v1
/* 1607FC 801BA78C 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 160800 801BA790 00230821 */  addu  $at, $at, $v1
/* 160804 801BA794 240F0001 */  li    $t7, 1
/* 160808 801BA798 3C18801D */  lui   $t8, %hi(D_801CCBA4) # $t8, 0x801d
/* 16080C 801BA79C AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 160810 801BA7A0 2718CBA4 */  addiu $t8, %lo(D_801CCBA4) # addiu $t8, $t8, -0x345c
/* 160814 801BA7A4 3C040001 */  lui   $a0, (0x00010131 >> 16) # lui $a0, 1
/* 160818 801BA7A8 34840131 */  ori   $a0, (0x00010131 & 0xFFFF) # ori $a0, $a0, 0x131
/* 16081C 801BA7AC 0C02A806 */  jal   func_800AA018
/* 160820 801BA7B0 AC580098 */   sw    $t8, 0x98($v0)
/* 160824 801BA7B4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 160828 801BA7B8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 16082C 801BA7BC 44802000 */  mtc1  $zero, $f4
/* 160830 801BA7C0 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 160834 801BA7C4 8C590000 */  lw    $t9, ($v0)
/* 160838 801BA7C8 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 16083C 801BA7CC 3C01800E */  lui   $at, 0x800e
/* 160840 801BA7D0 00194080 */  sll   $t0, $t9, 2
/* 160844 801BA7D4 00884821 */  addu  $t1, $a0, $t0
/* 160848 801BA7D8 E5240000 */  swc1  $f4, ($t1)
/* 16084C 801BA7DC 8C430000 */  lw    $v1, ($v0)
/* 160850 801BA7E0 00031880 */  sll   $v1, $v1, 2
/* 160854 801BA7E4 00835021 */  addu  $t2, $a0, $v1
/* 160858 801BA7E8 C5460000 */  lwc1  $f6, ($t2)
/* 16085C 801BA7EC 00230821 */  addu  $at, $at, $v1
/* 160860 801BA7F0 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 160864 801BA7F4 8C4B0000 */  lw    $t3, ($v0)
/* 160868 801BA7F8 3C01801D */  lui   $at, %hi(D_801CE44C) # $at, 0x801d
/* 16086C 801BA7FC C428E44C */  lwc1  $f8, %lo(D_801CE44C)($at)
/* 160870 801BA800 3C01800E */  lui   $at, 0x800e
/* 160874 801BA804 000B6080 */  sll   $t4, $t3, 2
/* 160878 801BA808 002C0821 */  addu  $at, $at, $t4
/* 16087C 801BA80C E4286850 */  swc1  $f8, 0x6850($at)
/* 160880 801BA810 8C4D0000 */  lw    $t5, ($v0)
/* 160884 801BA814 3C01801D */  lui   $at, %hi(D_801CE450) # $at, 0x801d
/* 160888 801BA818 C42AE450 */  lwc1  $f10, %lo(D_801CE450)($at)
/* 16088C 801BA81C 3C01800E */  lui   $at, 0x800e
/* 160890 801BA820 000D7080 */  sll   $t6, $t5, 2
/* 160894 801BA824 002E0821 */  addu  $at, $at, $t6
/* 160898 801BA828 E42A3750 */  swc1  $f10, 0x3750($at)
/* 16089C 801BA82C 8C4F0000 */  lw    $t7, ($v0)
/* 1608A0 801BA830 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 1608A4 801BA834 44818000 */  mtc1  $at, $f16
/* 1608A8 801BA838 3C01800E */  lui   $at, 0x800e
/* 1608AC 801BA83C 000FC080 */  sll   $t8, $t7, 2
/* 1608B0 801BA840 00380821 */  addu  $at, $at, $t8
/* 1608B4 801BA844 0C02BC9F */  jal   func_800AF27C
/* 1608B8 801BA848 E4303C90 */   swc1  $f16, 0x3c90($at)
/* 1608BC 801BA84C 3C040001 */  lui   $a0, (0x0001012F >> 16) # lui $a0, 1
/* 1608C0 801BA850 0C02A806 */  jal   func_800AA018
/* 1608C4 801BA854 3484012F */   ori   $a0, (0x0001012F & 0xFFFF) # ori $a0, $a0, 0x12f
/* 1608C8 801BA858 0C02BE85 */  jal   func_800AFA14
/* 1608CC 801BA85C 00000000 */   nop   
/* 1608D0 801BA860 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1608D4 801BA864 27BD0018 */  addiu $sp, $sp, 0x18
/* 1608D8 801BA868 03E00008 */  jr    $ra
/* 1608DC 801BA86C 00000000 */   nop   
.type func_801BA764_ovl7, @function
.size func_801BA764_ovl7, . - func_801BA764_ovl7

glabel func_801BA870_ovl7
/* 1608E0 801BA870 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1608E4 801BA874 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1608E8 801BA878 0C06835D */  jal   func_801A0D74_ovl7
/* 1608EC 801BA87C 00000000 */   nop   
/* 1608F0 801BA880 0C06EE3B */  jal   func_801BB8EC_ovl7
/* 1608F4 801BA884 00000000 */   nop   
/* 1608F8 801BA888 0C067CEC */  jal   func_8019F3B0_ovl7
/* 1608FC 801BA88C 00000000 */   nop   
/* 160900 801BA890 8FBF0014 */  lw    $ra, 0x14($sp)
/* 160904 801BA894 27BD0018 */  addiu $sp, $sp, 0x18
/* 160908 801BA898 03E00008 */  jr    $ra
/* 16090C 801BA89C 00000000 */   nop   
.type func_801BA870_ovl7, @function
.size func_801BA870_ovl7, . - func_801BA870_ovl7

glabel func_801BA8A0_ovl7
/* 160910 801BA8A0 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 160914 801BA8A4 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 160918 801BA8A8 8CCE0000 */  lw    $t6, ($a2)
/* 16091C 801BA8AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 160920 801BA8B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 160924 801BA8B4 AFA40018 */  sw    $a0, 0x18($sp)
/* 160928 801BA8B8 8DC20000 */  lw    $v0, ($t6)
/* 16092C 801BA8BC 3C03800E */  lui   $v1, 0x800e
/* 160930 801BA8C0 3C01800E */  lui   $at, 0x800e
/* 160934 801BA8C4 00021080 */  sll   $v0, $v0, 2
/* 160938 801BA8C8 00621821 */  addu  $v1, $v1, $v0
/* 16093C 801BA8CC 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 160940 801BA8D0 00220821 */  addu  $at, $at, $v0
/* 160944 801BA8D4 240F0002 */  li    $t7, 2
/* 160948 801BA8D8 3C18801D */  lui   $t8, %hi(D_801CCB80) # $t8, 0x801d
/* 16094C 801BA8DC AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 160950 801BA8E0 2718CB80 */  addiu $t8, %lo(D_801CCB80) # addiu $t8, $t8, -0x3480
/* 160954 801BA8E4 AC780098 */  sw    $t8, 0x98($v1)
/* 160958 801BA8E8 8CC50000 */  lw    $a1, ($a2)
/* 16095C 801BA8EC 0C02BEED */  jal   func_800AFBB4
/* 160960 801BA8F0 24040001 */   li    $a0, 1
/* 160964 801BA8F4 3C040001 */  lui   $a0, (0x0001012B >> 16) # lui $a0, 1
/* 160968 801BA8F8 0C02A806 */  jal   func_800AA018
/* 16096C 801BA8FC 3484012B */   ori   $a0, (0x0001012B & 0xFFFF) # ori $a0, $a0, 0x12b
/* 160970 801BA900 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 160974 801BA904 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 160978 801BA908 3C19800E */  lui   $t9, 0x800e
/* 16097C 801BA90C 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 160980 801BA910 8C640000 */  lw    $a0, ($v1)
/* 160984 801BA914 0324C821 */  addu  $t9, $t9, $a0
/* 160988 801BA918 93397880 */  lbu   $t9, 0x7880($t9)
/* 16098C 801BA91C 00041080 */  sll   $v0, $a0, 2
/* 160990 801BA920 57200018 */  bnezl $t9, .L801BA984_ovl7
/* 160994 801BA924 44810000 */   mtc1  $at, $f0
/* 160998 801BA928 3C014060 */  li    $at, 0x40600000 # 3.500000
/* 16099C 801BA92C 44810000 */  mtc1  $at, $f0
/* 1609A0 801BA930 3C01800E */  lui   $at, 0x800e
/* 1609A4 801BA934 00041080 */  sll   $v0, $a0, 2
/* 1609A8 801BA938 00220821 */  addu  $at, $at, $v0
/* 1609AC 801BA93C C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 1609B0 801BA940 3C01800E */  lui   $at, 0x800e
/* 1609B4 801BA944 00220821 */  addu  $at, $at, $v0
/* 1609B8 801BA948 46002182 */  mul.s $f6, $f4, $f0
/* 1609BC 801BA94C 44801000 */  mtc1  $zero, $f2
/* 1609C0 801BA950 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 1609C4 801BA954 8C680000 */  lw    $t0, ($v1)
/* 1609C8 801BA958 3C01800E */  lui   $at, 0x800e
/* 1609CC 801BA95C 00084880 */  sll   $t1, $t0, 2
/* 1609D0 801BA960 00290821 */  addu  $at, $at, $t1
/* 1609D4 801BA964 E4226690 */  swc1  $f2, 0x6690($at)
/* 1609D8 801BA968 8C6A0000 */  lw    $t2, ($v1)
/* 1609DC 801BA96C 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 1609E0 801BA970 000A5880 */  sll   $t3, $t2, 2
/* 1609E4 801BA974 002B0821 */  addu  $at, $at, $t3
/* 1609E8 801BA978 10000014 */  b     .L801BA9CC_ovl7
/* 1609EC 801BA97C E4206850 */   swc1  $f0, 0x6850($at)
/* 1609F0 801BA980 44810000 */  mtc1  $at, $f0
.L801BA984_ovl7:
/* 1609F4 801BA984 3C01800E */  lui   $at, 0x800e
/* 1609F8 801BA988 00220821 */  addu  $at, $at, $v0
/* 1609FC 801BA98C C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 160A00 801BA990 3C01800E */  lui   $at, 0x800e
/* 160A04 801BA994 00220821 */  addu  $at, $at, $v0
/* 160A08 801BA998 46004282 */  mul.s $f10, $f8, $f0
/* 160A0C 801BA99C 44801000 */  mtc1  $zero, $f2
/* 160A10 801BA9A0 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 160A14 801BA9A4 8C6C0000 */  lw    $t4, ($v1)
/* 160A18 801BA9A8 3C01800E */  lui   $at, 0x800e
/* 160A1C 801BA9AC 000C6880 */  sll   $t5, $t4, 2
/* 160A20 801BA9B0 002D0821 */  addu  $at, $at, $t5
/* 160A24 801BA9B4 E4226690 */  swc1  $f2, 0x6690($at)
/* 160A28 801BA9B8 8C6E0000 */  lw    $t6, ($v1)
/* 160A2C 801BA9BC 3C01800E */  lui   $at, 0x800e
/* 160A30 801BA9C0 000E7880 */  sll   $t7, $t6, 2
/* 160A34 801BA9C4 002F0821 */  addu  $at, $at, $t7
/* 160A38 801BA9C8 E4206850 */  swc1  $f0, 0x6850($at)
.L801BA9CC_ovl7:
/* 160A3C 801BA9CC 8C780000 */  lw    $t8, ($v1)
/* 160A40 801BA9D0 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 160A44 801BA9D4 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 160A48 801BA9D8 0018C880 */  sll   $t9, $t8, 2
/* 160A4C 801BA9DC 00994021 */  addu  $t0, $a0, $t9
/* 160A50 801BA9E0 E5020000 */  swc1  $f2, ($t0)
/* 160A54 801BA9E4 8C620000 */  lw    $v0, ($v1)
/* 160A58 801BA9E8 3C01800E */  lui   $at, 0x800e
/* 160A5C 801BA9EC 00021080 */  sll   $v0, $v0, 2
/* 160A60 801BA9F0 00824821 */  addu  $t1, $a0, $v0
/* 160A64 801BA9F4 C5300000 */  lwc1  $f16, ($t1)
/* 160A68 801BA9F8 00220821 */  addu  $at, $at, $v0
/* 160A6C 801BA9FC E4303210 */  swc1  $f16, 0x3210($at)
/* 160A70 801BAA00 8C6A0000 */  lw    $t2, ($v1)
/* 160A74 801BAA04 3C01801D */  lui   $at, %hi(D_801CE454) # $at, 0x801d
/* 160A78 801BAA08 C432E454 */  lwc1  $f18, %lo(D_801CE454)($at)
/* 160A7C 801BAA0C 3C01800E */  lui   $at, 0x800e
/* 160A80 801BAA10 000A5880 */  sll   $t3, $t2, 2
/* 160A84 801BAA14 002B0821 */  addu  $at, $at, $t3
/* 160A88 801BAA18 E4323C90 */  swc1  $f18, 0x3c90($at)
/* 160A8C 801BAA1C 24040024 */  li    $a0, 36
.L801BAA20_ovl7:
/* 160A90 801BAA20 0C06B30D */  jal   func_801ACC34_ovl7
/* 160A94 801BAA24 00002825 */   move  $a1, $zero
/* 160A98 801BAA28 0C029D9E */  jal   play_sound
/* 160A9C 801BAA2C 24040169 */   li    $a0, 361
/* 160AA0 801BAA30 0C006291 */  jal   random_soft_s32_range
/* 160AA4 801BAA34 2404000A */   li    $a0, 10
/* 160AA8 801BAA38 0C002DAF */  jal   finish_current_thread
/* 160AAC 801BAA3C 24440023 */   addiu $a0, $v0, 0x23
/* 160AB0 801BAA40 1000FFF7 */  b     .L801BAA20_ovl7
/* 160AB4 801BAA44 24040024 */   li    $a0, 36
/* 160AB8 801BAA48 00000000 */  nop   
/* 160ABC 801BAA4C 00000000 */  nop   
/* 160AC0 801BAA50 00000000 */  nop   
/* 160AC4 801BAA54 00000000 */  nop   
/* 160AC8 801BAA58 00000000 */  nop   
/* 160ACC 801BAA5C 00000000 */  nop   
/* 160AD0 801BAA60 8FBF0014 */  lw    $ra, 0x14($sp)
/* 160AD4 801BAA64 27BD0018 */  addiu $sp, $sp, 0x18
/* 160AD8 801BAA68 03E00008 */  jr    $ra
/* 160ADC 801BAA6C 00000000 */   nop   
.type func_801BA8A0_ovl7, @function
.size func_801BA8A0_ovl7, . - func_801BA8A0_ovl7

glabel func_801BAA70_ovl7
/* 160AE0 801BAA70 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 160AE4 801BAA74 AFBF0014 */  sw    $ra, 0x14($sp)
/* 160AE8 801BAA78 0C06835D */  jal   func_801A0D74_ovl7
/* 160AEC 801BAA7C 00000000 */   nop   
/* 160AF0 801BAA80 0C067CEC */  jal   func_8019F3B0_ovl7
/* 160AF4 801BAA84 00000000 */   nop   
/* 160AF8 801BAA88 8FBF0014 */  lw    $ra, 0x14($sp)
/* 160AFC 801BAA8C 27BD0018 */  addiu $sp, $sp, 0x18
/* 160B00 801BAA90 03E00008 */  jr    $ra
/* 160B04 801BAA94 00000000 */   nop   
.type func_801BAA70_ovl7, @function
.size func_801BAA70_ovl7, . - func_801BAA70_ovl7

glabel func_801BAA98_ovl7
/* 160B08 801BAA98 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 160B0C 801BAA9C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 160B10 801BAAA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 160B14 801BAAA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 160B18 801BAAA8 AFA40018 */  sw    $a0, 0x18($sp)
/* 160B1C 801BAAAC 8DF80000 */  lw    $t8, ($t7)
/* 160B20 801BAAB0 3C0E801C */  lui   $t6, %hi(D_801BAB98) # $t6, 0x801c
/* 160B24 801BAAB4 3C01800E */  lui   $at, 0x800e
/* 160B28 801BAAB8 0018C880 */  sll   $t9, $t8, 2
/* 160B2C 801BAABC 00390821 */  addu  $at, $at, $t9
/* 160B30 801BAAC0 25CEAB98 */  addiu $t6, %lo(D_801BAB98) # addiu $t6, $t6, -0x5468
/* 160B34 801BAAC4 3C04801C */  lui   $a0, %hi(D_801BAB0C) # $a0, 0x801c
/* 160B38 801BAAC8 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 160B3C 801BAACC 0C068354 */  jal   func_801A0D50
/* 160B40 801BAAD0 2484AB0C */   addiu $a0, %lo(D_801BAB0C) # addiu $a0, $a0, -0x54f4
/* 160B44 801BAAD4 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 160B48 801BAAD8 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 160B4C 801BAADC 3C01800E */  lui   $at, 0x800e
/* 160B50 801BAAE0 24080003 */  li    $t0, 3
/* 160B54 801BAAE4 8D2A0000 */  lw    $t2, ($t1)
/* 160B58 801BAAE8 8FA40018 */  lw    $a0, 0x18($sp)
/* 160B5C 801BAAEC 000A5880 */  sll   $t3, $t2, 2
/* 160B60 801BAAF0 002B0821 */  addu  $at, $at, $t3
/* 160B64 801BAAF4 0C06EAC3 */  jal   D_801BAB0C_ovl7
/* 160B68 801BAAF8 AC28DC50 */   sw    $t0, -0x23b0($at)
/* 160B6C 801BAAFC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 160B70 801BAB00 27BD0018 */  addiu $sp, $sp, 0x18
/* 160B74 801BAB04 03E00008 */  jr    $ra
/* 160B78 801BAB08 00000000 */   nop   
.type func_801BAA98_ovl7, @function
.size func_801BAA98_ovl7, . - func_801BAA98_ovl7

glabel func_801BAB0C_ovl7
/* 160B7C 801BAB0C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 160B80 801BAB10 AFB20020 */  sw    $s2, 0x20($sp)
/* 160B84 801BAB14 AFB1001C */  sw    $s1, 0x1c($sp)
/* 160B88 801BAB18 AFB00018 */  sw    $s0, 0x18($sp)
/* 160B8C 801BAB1C 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 160B90 801BAB20 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 160B94 801BAB24 3C12801D */  lui   $s2, %hi(D_801CD798) # $s2, 0x801d
/* 160B98 801BAB28 AFBF0024 */  sw    $ra, 0x24($sp)
/* 160B9C 801BAB2C AFA40028 */  sw    $a0, 0x28($sp)
/* 160BA0 801BAB30 2652D798 */  addiu $s2, %lo(D_801CD798) # addiu $s2, $s2, -0x2868
/* 160BA4 801BAB34 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 160BA8 801BAB38 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 160BAC 801BAB3C 8E2E0000 */  lw    $t6, ($s1)
.L801BAB40_ovl7:
/* 160BB0 801BAB40 24050004 */  li    $a1, 4
/* 160BB4 801BAB44 02403025 */  move  $a2, $s2
/* 160BB8 801BAB48 8DCF0000 */  lw    $t7, ($t6)
/* 160BBC 801BAB4C 000FC080 */  sll   $t8, $t7, 2
/* 160BC0 801BAB50 0218C821 */  addu  $t9, $s0, $t8
/* 160BC4 801BAB54 0C02911F */  jal   call_virtual_function
/* 160BC8 801BAB58 8F240000 */   lw    $a0, ($t9)
/* 160BCC 801BAB5C 1000FFF8 */  b     .L801BAB40_ovl7
/* 160BD0 801BAB60 8E2E0000 */   lw    $t6, ($s1)
/* 160BD4 801BAB64 00000000 */  nop   
/* 160BD8 801BAB68 00000000 */  nop   
/* 160BDC 801BAB6C 00000000 */  nop   
/* 160BE0 801BAB70 00000000 */  nop   
/* 160BE4 801BAB74 00000000 */  nop   
/* 160BE8 801BAB78 00000000 */  nop   
/* 160BEC 801BAB7C 00000000 */  nop   
/* 160BF0 801BAB80 8FBF0024 */  lw    $ra, 0x24($sp)
/* 160BF4 801BAB84 8FB00018 */  lw    $s0, 0x18($sp)
/* 160BF8 801BAB88 8FB1001C */  lw    $s1, 0x1c($sp)
/* 160BFC 801BAB8C 8FB20020 */  lw    $s2, 0x20($sp)
/* 160C00 801BAB90 03E00008 */  jr    $ra
/* 160C04 801BAB94 27BD0028 */   addiu $sp, $sp, 0x28
.type func_801BAB0C_ovl7, @function
.size func_801BAB0C_ovl7, . - func_801BAB0C_ovl7

glabel func_801BAB98_ovl7
/* 160C08 801BAB98 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 160C0C 801BAB9C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 160C10 801BABA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 160C14 801BABA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 160C18 801BABA8 AFA40018 */  sw    $a0, 0x18($sp)
/* 160C1C 801BABAC 8DCF0000 */  lw    $t7, ($t6)
/* 160C20 801BABB0 3C04800E */  lui   $a0, 0x800e
/* 160C24 801BABB4 3C06801D */  lui   $a2, %hi(D_801CD7A8) # $a2, 0x801d
/* 160C28 801BABB8 000FC080 */  sll   $t8, $t7, 2
/* 160C2C 801BABBC 00982021 */  addu  $a0, $a0, $t8
/* 160C30 801BABC0 8C84DFD0 */  lw    $a0, -0x2030($a0)
/* 160C34 801BABC4 24C6D7A8 */  addiu $a2, %lo(D_801CD7A8) # addiu $a2, $a2, -0x2858
/* 160C38 801BABC8 0C02911F */  jal   call_virtual_function
/* 160C3C 801BABCC 24050004 */   li    $a1, 4
/* 160C40 801BABD0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 160C44 801BABD4 27BD0018 */  addiu $sp, $sp, 0x18
/* 160C48 801BABD8 03E00008 */  jr    $ra
/* 160C4C 801BABDC 00000000 */   nop   
.type func_801BAB98_ovl7, @function
.size func_801BAB98_ovl7, . - func_801BAB98_ovl7

glabel func_801BABE0_ovl7
/* 160C50 801BABE0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 160C54 801BABE4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 160C58 801BABE8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 160C5C 801BABEC AFBF0014 */  sw    $ra, 0x14($sp)
/* 160C60 801BABF0 AFA40018 */  sw    $a0, 0x18($sp)
/* 160C64 801BABF4 8DC20000 */  lw    $v0, ($t6)
/* 160C68 801BABF8 3C03800E */  lui   $v1, 0x800e
/* 160C6C 801BABFC 3C01800E */  lui   $at, 0x800e
/* 160C70 801BAC00 00021080 */  sll   $v0, $v0, 2
/* 160C74 801BAC04 00621821 */  addu  $v1, $v1, $v0
/* 160C78 801BAC08 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 160C7C 801BAC0C 00220821 */  addu  $at, $at, $v0
/* 160C80 801BAC10 240F0003 */  li    $t7, 3
/* 160C84 801BAC14 3C18801D */  lui   $t8, %hi(D_801CB470) # $t8, 0x801d
/* 160C88 801BAC18 AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 160C8C 801BAC1C 2718B470 */  addiu $t8, %lo(D_801CB470) # addiu $t8, $t8, -0x4b90
/* 160C90 801BAC20 0C02CD48 */  jal   func_800B3520
/* 160C94 801BAC24 AC780098 */   sw    $t8, 0x98($v1)
/* 160C98 801BAC28 0C02BE85 */  jal   func_800AFA14
/* 160C9C 801BAC2C 00000000 */   nop   
/* 160CA0 801BAC30 8FBF0014 */  lw    $ra, 0x14($sp)
/* 160CA4 801BAC34 27BD0018 */  addiu $sp, $sp, 0x18
/* 160CA8 801BAC38 03E00008 */  jr    $ra
/* 160CAC 801BAC3C 00000000 */   nop   
.type func_801BABE0_ovl7, @function
.size func_801BABE0_ovl7, . - func_801BABE0_ovl7

glabel func_801BAC40_ovl7
/* 160CB0 801BAC40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 160CB4 801BAC44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 160CB8 801BAC48 0C066E0D */  jal   func_8019B834_ovl7
/* 160CBC 801BAC4C AFA40018 */   sw    $a0, 0x18($sp)
/* 160CC0 801BAC50 1040001A */  beqz  $v0, .L801BACBC_ovl7
/* 160CC4 801BAC54 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 160CC8 801BAC58 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 160CCC 801BAC5C 3C18800E */  lui   $t8, %hi(D_800E6A10) # $t8, 0x800e
/* 160CD0 801BAC60 27186A10 */  addiu $t8, %lo(D_800E6A10) # addiu $t8, $t8, 0x6a10
/* 160CD4 801BAC64 8C4E0000 */  lw    $t6, ($v0)
/* 160CD8 801BAC68 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 160CDC 801BAC6C 44813000 */  mtc1  $at, $f6
/* 160CE0 801BAC70 000E7880 */  sll   $t7, $t6, 2
/* 160CE4 801BAC74 01F81821 */  addu  $v1, $t7, $t8
/* 160CE8 801BAC78 C4640000 */  lwc1  $f4, ($v1)
/* 160CEC 801BAC7C 3C01800E */  lui   $at, 0x800e
/* 160CF0 801BAC80 24190002 */  li    $t9, 2
/* 160CF4 801BAC84 46062202 */  mul.s $f8, $f4, $f6
/* 160CF8 801BAC88 3C04800E */  lui   $a0, 0x800e
/* 160CFC 801BAC8C 3C05801C */  lui   $a1, %hi(D_801BAB0C) # $a1, 0x801c
/* 160D00 801BAC90 24A5AB0C */  addiu $a1, %lo(D_801BAB0C) # addiu $a1, $a1, -0x54f4
/* 160D04 801BAC94 E4680000 */  swc1  $f8, ($v1)
/* 160D08 801BAC98 8C480000 */  lw    $t0, ($v0)
/* 160D0C 801BAC9C 00084880 */  sll   $t1, $t0, 2
/* 160D10 801BACA0 00290821 */  addu  $at, $at, $t1
/* 160D14 801BACA4 AC39DC50 */  sw    $t9, -0x23b0($at)
/* 160D18 801BACA8 8C4A0000 */  lw    $t2, ($v0)
/* 160D1C 801BACAC 000A5880 */  sll   $t3, $t2, 2
/* 160D20 801BACB0 008B2021 */  addu  $a0, $a0, $t3
/* 160D24 801BACB4 0C02C7B2 */  jal   assign_new_process_entry
/* 160D28 801BACB8 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801BACBC_ovl7:
/* 160D2C 801BACBC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 160D30 801BACC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 160D34 801BACC4 03E00008 */  jr    $ra
/* 160D38 801BACC8 00000000 */   nop   
.type func_801BAC40_ovl7, @function
.size func_801BAC40_ovl7, . - func_801BAC40_ovl7

glabel func_801BACCC_ovl7
/* 160D3C 801BACCC 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 160D40 801BACD0 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 160D44 801BACD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 160D48 801BACD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 160D4C 801BACDC AFA40018 */  sw    $a0, 0x18($sp)
/* 160D50 801BACE0 8DF80000 */  lw    $t8, ($t7)
/* 160D54 801BACE4 3C0E801C */  lui   $t6, %hi(D_801BADD8) # $t6, 0x801c
/* 160D58 801BACE8 3C01800E */  lui   $at, 0x800e
/* 160D5C 801BACEC 0018C880 */  sll   $t9, $t8, 2
/* 160D60 801BACF0 00390821 */  addu  $at, $at, $t9
/* 160D64 801BACF4 25CEADD8 */  addiu $t6, %lo(D_801BADD8) # addiu $t6, $t6, -0x5228
/* 160D68 801BACF8 3C04801C */  lui   $a0, %hi(D_801BAD50) # $a0, 0x801c
/* 160D6C 801BACFC AC2EF150 */  sw    $t6, -0xeb0($at)
/* 160D70 801BAD00 0C068354 */  jal   func_801A0D50
/* 160D74 801BAD04 2484AD50 */   addiu $a0, %lo(D_801BAD50) # addiu $a0, $a0, -0x52b0
/* 160D78 801BAD08 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 160D7C 801BAD0C 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 160D80 801BAD10 0C02BEED */  jal   func_800AFBB4
/* 160D84 801BAD14 24040001 */   li    $a0, 1
/* 160D88 801BAD18 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 160D8C 801BAD1C 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 160D90 801BAD20 3C01800E */  lui   $at, 0x800e
/* 160D94 801BAD24 24080002 */  li    $t0, 2
/* 160D98 801BAD28 8D2A0000 */  lw    $t2, ($t1)
/* 160D9C 801BAD2C 8FA40018 */  lw    $a0, 0x18($sp)
/* 160DA0 801BAD30 000A5880 */  sll   $t3, $t2, 2
/* 160DA4 801BAD34 002B0821 */  addu  $at, $at, $t3
/* 160DA8 801BAD38 0C06EB54 */  jal   D_801BAD50_ovl7
/* 160DAC 801BAD3C AC28DC50 */   sw    $t0, -0x23b0($at)
/* 160DB0 801BAD40 8FBF0014 */  lw    $ra, 0x14($sp)
/* 160DB4 801BAD44 27BD0018 */  addiu $sp, $sp, 0x18
/* 160DB8 801BAD48 03E00008 */  jr    $ra
/* 160DBC 801BAD4C 00000000 */   nop   
.type func_801BACCC_ovl7, @function
.size func_801BACCC_ovl7, . - func_801BACCC_ovl7

glabel func_801BAD50_ovl7
/* 160DC0 801BAD50 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 160DC4 801BAD54 AFB20020 */  sw    $s2, 0x20($sp)
/* 160DC8 801BAD58 AFB1001C */  sw    $s1, 0x1c($sp)
/* 160DCC 801BAD5C AFB00018 */  sw    $s0, 0x18($sp)
/* 160DD0 801BAD60 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 160DD4 801BAD64 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 160DD8 801BAD68 3C12801D */  lui   $s2, %hi(D_801CD7B8) # $s2, 0x801d
/* 160DDC 801BAD6C AFBF0024 */  sw    $ra, 0x24($sp)
/* 160DE0 801BAD70 AFA40028 */  sw    $a0, 0x28($sp)
/* 160DE4 801BAD74 2652D7B8 */  addiu $s2, %lo(D_801CD7B8) # addiu $s2, $s2, -0x2848
/* 160DE8 801BAD78 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 160DEC 801BAD7C 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 160DF0 801BAD80 8E2E0000 */  lw    $t6, ($s1)
.L801BAD84_ovl7:
/* 160DF4 801BAD84 24050006 */  li    $a1, 6
/* 160DF8 801BAD88 02403025 */  move  $a2, $s2
/* 160DFC 801BAD8C 8DCF0000 */  lw    $t7, ($t6)
/* 160E00 801BAD90 000FC080 */  sll   $t8, $t7, 2
/* 160E04 801BAD94 0218C821 */  addu  $t9, $s0, $t8
/* 160E08 801BAD98 0C02911F */  jal   call_virtual_function
/* 160E0C 801BAD9C 8F240000 */   lw    $a0, ($t9)
/* 160E10 801BADA0 1000FFF8 */  b     .L801BAD84_ovl7
/* 160E14 801BADA4 8E2E0000 */   lw    $t6, ($s1)
/* 160E18 801BADA8 00000000 */  nop   
/* 160E1C 801BADAC 00000000 */  nop   
/* 160E20 801BADB0 00000000 */  nop   
/* 160E24 801BADB4 00000000 */  nop   
/* 160E28 801BADB8 00000000 */  nop   
/* 160E2C 801BADBC 00000000 */  nop   
/* 160E30 801BADC0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 160E34 801BADC4 8FB00018 */  lw    $s0, 0x18($sp)
/* 160E38 801BADC8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 160E3C 801BADCC 8FB20020 */  lw    $s2, 0x20($sp)
/* 160E40 801BADD0 03E00008 */  jr    $ra
/* 160E44 801BADD4 27BD0028 */   addiu $sp, $sp, 0x28
.type func_801BAD50_ovl7, @function
.size func_801BAD50_ovl7, . - func_801BAD50_ovl7

glabel func_801BADD8_ovl7
/* 160E48 801BADD8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 160E4C 801BADDC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 160E50 801BADE0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 160E54 801BADE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 160E58 801BADE8 AFA40018 */  sw    $a0, 0x18($sp)
/* 160E5C 801BADEC 8DCF0000 */  lw    $t7, ($t6)
/* 160E60 801BADF0 3C04800E */  lui   $a0, 0x800e
/* 160E64 801BADF4 3C06801D */  lui   $a2, %hi(D_801CD7D0) # $a2, 0x801d
/* 160E68 801BADF8 000FC080 */  sll   $t8, $t7, 2
/* 160E6C 801BADFC 00982021 */  addu  $a0, $a0, $t8
/* 160E70 801BAE00 8C84DFD0 */  lw    $a0, -0x2030($a0)
/* 160E74 801BAE04 24C6D7D0 */  addiu $a2, %lo(D_801CD7D0) # addiu $a2, $a2, -0x2830
/* 160E78 801BAE08 0C02911F */  jal   call_virtual_function
/* 160E7C 801BAE0C 24050006 */   li    $a1, 6
/* 160E80 801BAE10 8FBF0014 */  lw    $ra, 0x14($sp)
/* 160E84 801BAE14 27BD0018 */  addiu $sp, $sp, 0x18
/* 160E88 801BAE18 03E00008 */  jr    $ra
/* 160E8C 801BAE1C 00000000 */   nop   
.type func_801BADD8_ovl7, @function
.size func_801BADD8_ovl7, . - func_801BADD8_ovl7

glabel func_801BAE20_ovl7
/* 160E90 801BAE20 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 160E94 801BAE24 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 160E98 801BAE28 8CCE0000 */  lw    $t6, ($a2)
/* 160E9C 801BAE2C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 160EA0 801BAE30 AFBF0014 */  sw    $ra, 0x14($sp)
/* 160EA4 801BAE34 AFA40018 */  sw    $a0, 0x18($sp)
/* 160EA8 801BAE38 8DC20000 */  lw    $v0, ($t6)
/* 160EAC 801BAE3C 3C03800E */  lui   $v1, 0x800e
/* 160EB0 801BAE40 3C01800E */  lui   $at, 0x800e
/* 160EB4 801BAE44 00021080 */  sll   $v0, $v0, 2
/* 160EB8 801BAE48 00621821 */  addu  $v1, $v1, $v0
/* 160EBC 801BAE4C 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 160EC0 801BAE50 00220821 */  addu  $at, $at, $v0
/* 160EC4 801BAE54 240F0002 */  li    $t7, 2
/* 160EC8 801BAE58 3C18801D */  lui   $t8, %hi(D_801CCB80) # $t8, 0x801d
/* 160ECC 801BAE5C AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 160ED0 801BAE60 2718CB80 */  addiu $t8, %lo(D_801CCB80) # addiu $t8, $t8, -0x3480
/* 160ED4 801BAE64 AC780098 */  sw    $t8, 0x98($v1)
/* 160ED8 801BAE68 8CC50000 */  lw    $a1, ($a2)
/* 160EDC 801BAE6C 0C02BEED */  jal   func_800AFBB4
/* 160EE0 801BAE70 24040001 */   li    $a0, 1
/* 160EE4 801BAE74 3C040001 */  lui   $a0, (0x0001012B >> 16) # lui $a0, 1
/* 160EE8 801BAE78 0C02A806 */  jal   func_800AA018
/* 160EEC 801BAE7C 3484012B */   ori   $a0, (0x0001012B & 0xFFFF) # ori $a0, $a0, 0x12b
/* 160EF0 801BAE80 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 160EF4 801BAE84 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 160EF8 801BAE88 3C19800E */  lui   $t9, 0x800e
/* 160EFC 801BAE8C 24010002 */  li    $at, 2
/* 160F00 801BAE90 8C640000 */  lw    $a0, ($v1)
/* 160F04 801BAE94 0324C821 */  addu  $t9, $t9, $a0
/* 160F08 801BAE98 93397880 */  lbu   $t9, 0x7880($t9)
/* 160F0C 801BAE9C 00041080 */  sll   $v0, $a0, 2
/* 160F10 801BAEA0 17210016 */  bne   $t9, $at, .L801BAEFC_ovl7
/* 160F14 801BAEA4 3C014060 */   li    $at, 0x40600000 # 3.500000
/* 160F18 801BAEA8 44810000 */  mtc1  $at, $f0
/* 160F1C 801BAEAC 3C01800E */  lui   $at, 0x800e
/* 160F20 801BAEB0 00041080 */  sll   $v0, $a0, 2
/* 160F24 801BAEB4 00220821 */  addu  $at, $at, $v0
/* 160F28 801BAEB8 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 160F2C 801BAEBC 3C01800E */  lui   $at, 0x800e
/* 160F30 801BAEC0 00220821 */  addu  $at, $at, $v0
/* 160F34 801BAEC4 46002182 */  mul.s $f6, $f4, $f0
/* 160F38 801BAEC8 44801000 */  mtc1  $zero, $f2
/* 160F3C 801BAECC E42664D0 */  swc1  $f6, 0x64d0($at)
/* 160F40 801BAED0 8C680000 */  lw    $t0, ($v1)
/* 160F44 801BAED4 3C01800E */  lui   $at, 0x800e
/* 160F48 801BAED8 00084880 */  sll   $t1, $t0, 2
/* 160F4C 801BAEDC 00290821 */  addu  $at, $at, $t1
/* 160F50 801BAEE0 E4226690 */  swc1  $f2, 0x6690($at)
/* 160F54 801BAEE4 8C6A0000 */  lw    $t2, ($v1)
/* 160F58 801BAEE8 3C01800E */  lui   $at, 0x800e
/* 160F5C 801BAEEC 000A5880 */  sll   $t3, $t2, 2
/* 160F60 801BAEF0 002B0821 */  addu  $at, $at, $t3
/* 160F64 801BAEF4 10000015 */  b     .L801BAF4C_ovl7
/* 160F68 801BAEF8 E4206850 */   swc1  $f0, 0x6850($at)
.L801BAEFC_ovl7:
/* 160F6C 801BAEFC 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 160F70 801BAF00 44810000 */  mtc1  $at, $f0
/* 160F74 801BAF04 3C01800E */  lui   $at, 0x800e
/* 160F78 801BAF08 00220821 */  addu  $at, $at, $v0
/* 160F7C 801BAF0C C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 160F80 801BAF10 3C01800E */  lui   $at, 0x800e
/* 160F84 801BAF14 00220821 */  addu  $at, $at, $v0
/* 160F88 801BAF18 46004282 */  mul.s $f10, $f8, $f0
/* 160F8C 801BAF1C 44801000 */  mtc1  $zero, $f2
/* 160F90 801BAF20 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 160F94 801BAF24 8C6C0000 */  lw    $t4, ($v1)
/* 160F98 801BAF28 3C01800E */  lui   $at, 0x800e
/* 160F9C 801BAF2C 000C6880 */  sll   $t5, $t4, 2
/* 160FA0 801BAF30 002D0821 */  addu  $at, $at, $t5
/* 160FA4 801BAF34 E4226690 */  swc1  $f2, 0x6690($at)
/* 160FA8 801BAF38 8C6E0000 */  lw    $t6, ($v1)
/* 160FAC 801BAF3C 3C01800E */  lui   $at, 0x800e
/* 160FB0 801BAF40 000E7880 */  sll   $t7, $t6, 2
/* 160FB4 801BAF44 002F0821 */  addu  $at, $at, $t7
/* 160FB8 801BAF48 E4206850 */  swc1  $f0, 0x6850($at)
.L801BAF4C_ovl7:
/* 160FBC 801BAF4C 8C780000 */  lw    $t8, ($v1)
/* 160FC0 801BAF50 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 160FC4 801BAF54 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 160FC8 801BAF58 0018C880 */  sll   $t9, $t8, 2
/* 160FCC 801BAF5C 00994021 */  addu  $t0, $a0, $t9
/* 160FD0 801BAF60 E5020000 */  swc1  $f2, ($t0)
/* 160FD4 801BAF64 8C620000 */  lw    $v0, ($v1)
/* 160FD8 801BAF68 3C01800E */  lui   $at, 0x800e
/* 160FDC 801BAF6C 00021080 */  sll   $v0, $v0, 2
/* 160FE0 801BAF70 00824821 */  addu  $t1, $a0, $v0
/* 160FE4 801BAF74 C5300000 */  lwc1  $f16, ($t1)
/* 160FE8 801BAF78 00220821 */  addu  $at, $at, $v0
/* 160FEC 801BAF7C E4303210 */  swc1  $f16, 0x3210($at)
/* 160FF0 801BAF80 8C6A0000 */  lw    $t2, ($v1)
/* 160FF4 801BAF84 3C01801D */  lui   $at, %hi(D_801CE458) # $at, 0x801d
/* 160FF8 801BAF88 C432E458 */  lwc1  $f18, %lo(D_801CE458)($at)
/* 160FFC 801BAF8C 3C01800E */  lui   $at, 0x800e
/* 161000 801BAF90 000A5880 */  sll   $t3, $t2, 2
/* 161004 801BAF94 002B0821 */  addu  $at, $at, $t3
/* 161008 801BAF98 0C02BE85 */  jal   func_800AFA14
/* 16100C 801BAF9C E4323C90 */   swc1  $f18, 0x3c90($at)
/* 161010 801BAFA0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 161014 801BAFA4 27BD0018 */  addiu $sp, $sp, 0x18
/* 161018 801BAFA8 03E00008 */  jr    $ra
/* 16101C 801BAFAC 00000000 */   nop   
.type func_801BAE20_ovl7, @function
.size func_801BAE20_ovl7, . - func_801BAE20_ovl7

glabel func_801BAFB0_ovl7
/* 161020 801BAFB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 161024 801BAFB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 161028 801BAFB8 0C06835D */  jal   func_801A0D74_ovl7
/* 16102C 801BAFBC 00000000 */   nop   
/* 161030 801BAFC0 1440003A */  bnez  $v0, .L801BB0AC_ovl7
/* 161034 801BAFC4 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 161038 801BAFC8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 16103C 801BAFCC 3C18800E */  lui   $t8, 0x800e
/* 161040 801BAFD0 24010002 */  li    $at, 2
/* 161044 801BAFD4 8DCF0000 */  lw    $t7, ($t6)
/* 161048 801BAFD8 030FC021 */  addu  $t8, $t8, $t7
/* 16104C 801BAFDC 93187880 */  lbu   $t8, 0x7880($t8)
/* 161050 801BAFE0 1701001A */  bne   $t8, $at, .L801BB04C_ovl7
/* 161054 801BAFE4 3C014320 */   li    $at, 0x43200000 # 160.000000
/* 161058 801BAFE8 44816000 */  mtc1  $at, $f12
/* 16105C 801BAFEC 3C0143C8 */  li    $at, 0x43C80000 # 400.000000
/* 161060 801BAFF0 44817000 */  mtc1  $at, $f14
/* 161064 801BAFF4 0C066A6B */  jal   func_8019A9AC_ovl7
/* 161068 801BAFF8 00000000 */   nop   
/* 16106C 801BAFFC 24010002 */  li    $at, 2
/* 161070 801BB000 1441002A */  bne   $v0, $at, .L801BB0AC_ovl7
/* 161074 801BB004 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 161078 801BB008 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 16107C 801BB00C 3C01800E */  lui   $at, 0x800e
/* 161080 801BB010 24190003 */  li    $t9, 3
/* 161084 801BB014 8C480000 */  lw    $t0, ($v0)
/* 161088 801BB018 3C04800E */  lui   $a0, 0x800e
/* 16108C 801BB01C 3C05801C */  lui   $a1, %hi(D_801BAD50) # $a1, 0x801c
/* 161090 801BB020 00084880 */  sll   $t1, $t0, 2
/* 161094 801BB024 00290821 */  addu  $at, $at, $t1
/* 161098 801BB028 AC39DC50 */  sw    $t9, -0x23b0($at)
/* 16109C 801BB02C 8C4A0000 */  lw    $t2, ($v0)
/* 1610A0 801BB030 24A5AD50 */  addiu $a1, %lo(D_801BAD50) # addiu $a1, $a1, -0x52b0
/* 1610A4 801BB034 000A5880 */  sll   $t3, $t2, 2
/* 1610A8 801BB038 008B2021 */  addu  $a0, $a0, $t3
/* 1610AC 801BB03C 0C02C7B2 */  jal   assign_new_process_entry
/* 1610B0 801BB040 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1610B4 801BB044 10000019 */  b     .L801BB0AC_ovl7
/* 1610B8 801BB048 00000000 */   nop   
.L801BB04C_ovl7:
/* 1610BC 801BB04C 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 1610C0 801BB050 44816000 */  mtc1  $at, $f12
/* 1610C4 801BB054 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1610C8 801BB058 44817000 */  mtc1  $at, $f14
/* 1610CC 801BB05C 0C066A6B */  jal   func_8019A9AC_ovl7
/* 1610D0 801BB060 00000000 */   nop   
/* 1610D4 801BB064 24010002 */  li    $at, 2
/* 1610D8 801BB068 14410010 */  bne   $v0, $at, .L801BB0AC_ovl7
/* 1610DC 801BB06C 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1610E0 801BB070 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1610E4 801BB074 3C01800E */  lui   $at, 0x800e
/* 1610E8 801BB078 240C0003 */  li    $t4, 3
/* 1610EC 801BB07C 8C4D0000 */  lw    $t5, ($v0)
/* 1610F0 801BB080 3C04800E */  lui   $a0, 0x800e
/* 1610F4 801BB084 3C05801C */  lui   $a1, %hi(D_801BAD50) # $a1, 0x801c
/* 1610F8 801BB088 000D7080 */  sll   $t6, $t5, 2
/* 1610FC 801BB08C 002E0821 */  addu  $at, $at, $t6
/* 161100 801BB090 AC2CDC50 */  sw    $t4, -0x23b0($at)
/* 161104 801BB094 8C4F0000 */  lw    $t7, ($v0)
/* 161108 801BB098 24A5AD50 */  addiu $a1, %lo(D_801BAD50) # addiu $a1, $a1, -0x52b0
/* 16110C 801BB09C 000FC080 */  sll   $t8, $t7, 2
/* 161110 801BB0A0 00982021 */  addu  $a0, $a0, $t8
/* 161114 801BB0A4 0C02C7B2 */  jal   assign_new_process_entry
/* 161118 801BB0A8 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801BB0AC_ovl7:
/* 16111C 801BB0AC 0C067CEC */  jal   func_8019F3B0_ovl7
/* 161120 801BB0B0 00000000 */   nop   
/* 161124 801BB0B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 161128 801BB0B8 27BD0018 */  addiu $sp, $sp, 0x18
/* 16112C 801BB0BC 03E00008 */  jr    $ra
/* 161130 801BB0C0 00000000 */   nop   
.type func_801BAFB0_ovl7, @function
.size func_801BAFB0_ovl7, . - func_801BAFB0_ovl7

glabel func_801BB0C4_ovl7
/* 161134 801BB0C4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 161138 801BB0C8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 16113C 801BB0CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 161140 801BB0D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 161144 801BB0D4 AFA40018 */  sw    $a0, 0x18($sp)
/* 161148 801BB0D8 8DC30000 */  lw    $v1, ($t6)
/* 16114C 801BB0DC 3C02800E */  lui   $v0, 0x800e
/* 161150 801BB0E0 3C01800E */  lui   $at, 0x800e
/* 161154 801BB0E4 00031880 */  sll   $v1, $v1, 2
/* 161158 801BB0E8 00431021 */  addu  $v0, $v0, $v1
/* 16115C 801BB0EC 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 161160 801BB0F0 00230821 */  addu  $at, $at, $v1
/* 161164 801BB0F4 240F0003 */  li    $t7, 3
/* 161168 801BB0F8 3C18801D */  lui   $t8, %hi(D_801CCBC8) # $t8, 0x801d
/* 16116C 801BB0FC AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 161170 801BB100 2718CBC8 */  addiu $t8, %lo(D_801CCBC8) # addiu $t8, $t8, -0x3438
/* 161174 801BB104 3C040001 */  lui   $a0, (0x0001012B >> 16) # lui $a0, 1
/* 161178 801BB108 3484012B */  ori   $a0, (0x0001012B & 0xFFFF) # ori $a0, $a0, 0x12b
/* 16117C 801BB10C 0C02A7A9 */  jal   func_800A9EA4
/* 161180 801BB110 AC580098 */   sw    $t8, 0x98($v0)
/* 161184 801BB114 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 161188 801BB118 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 16118C 801BB11C 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 161190 801BB120 44816000 */  mtc1  $at, $f12
/* 161194 801BB124 8C430000 */  lw    $v1, ($v0)
/* 161198 801BB128 3C01800E */  lui   $at, 0x800e
/* 16119C 801BB12C 44801000 */  mtc1  $zero, $f2
/* 1611A0 801BB130 00031880 */  sll   $v1, $v1, 2
/* 1611A4 801BB134 00230821 */  addu  $at, $at, $v1
/* 1611A8 801BB138 C4206A10 */  lwc1  $f0, 0x6a10($at)
/* 1611AC 801BB13C 3C01800E */  lui   $at, 0x800e
/* 1611B0 801BB140 00230821 */  addu  $at, $at, $v1
/* 1611B4 801BB144 46000100 */  add.s $f4, $f0, $f0
/* 1611B8 801BB148 24040005 */  li    $a0, 5
/* 1611BC 801BB14C E42464D0 */  swc1  $f4, 0x64d0($at)
/* 1611C0 801BB150 8C590000 */  lw    $t9, ($v0)
/* 1611C4 801BB154 3C01800E */  lui   $at, 0x800e
/* 1611C8 801BB158 00194080 */  sll   $t0, $t9, 2
/* 1611CC 801BB15C 00280821 */  addu  $at, $at, $t0
/* 1611D0 801BB160 E4226690 */  swc1  $f2, 0x6690($at)
/* 1611D4 801BB164 8C490000 */  lw    $t1, ($v0)
/* 1611D8 801BB168 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1611DC 801BB16C 44813000 */  mtc1  $at, $f6
/* 1611E0 801BB170 3C01800E */  lui   $at, 0x800e
/* 1611E4 801BB174 00095080 */  sll   $t2, $t1, 2
/* 1611E8 801BB178 002A0821 */  addu  $at, $at, $t2
/* 1611EC 801BB17C E4266850 */  swc1  $f6, 0x6850($at)
/* 1611F0 801BB180 8C4B0000 */  lw    $t3, ($v0)
/* 1611F4 801BB184 3C01800E */  lui   $at, 0x800e
/* 1611F8 801BB188 000B6080 */  sll   $t4, $t3, 2
/* 1611FC 801BB18C 002C0821 */  addu  $at, $at, $t4
/* 161200 801BB190 E42C3210 */  swc1  $f12, 0x3210($at)
/* 161204 801BB194 8C4D0000 */  lw    $t5, ($v0)
/* 161208 801BB198 3C01800E */  lui   $at, 0x800e
/* 16120C 801BB19C 000D7080 */  sll   $t6, $t5, 2
/* 161210 801BB1A0 002E0821 */  addu  $at, $at, $t6
/* 161214 801BB1A4 E4223750 */  swc1  $f2, 0x3750($at)
/* 161218 801BB1A8 8C4F0000 */  lw    $t7, ($v0)
/* 16121C 801BB1AC 3C01800E */  lui   $at, 0x800e
/* 161220 801BB1B0 000FC080 */  sll   $t8, $t7, 2
/* 161224 801BB1B4 00380821 */  addu  $at, $at, $t8
/* 161228 801BB1B8 0C002DAF */  jal   finish_current_thread
/* 16122C 801BB1BC E42C3C90 */   swc1  $f12, 0x3c90($at)
/* 161230 801BB1C0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 161234 801BB1C4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 161238 801BB1C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 16123C 801BB1CC 3C01800E */  lui   $at, 0x800e
/* 161240 801BB1D0 8D090000 */  lw    $t1, ($t0)
/* 161244 801BB1D4 24190004 */  li    $t9, 4
/* 161248 801BB1D8 27BD0018 */  addiu $sp, $sp, 0x18
/* 16124C 801BB1DC 00095080 */  sll   $t2, $t1, 2
/* 161250 801BB1E0 002A0821 */  addu  $at, $at, $t2
/* 161254 801BB1E4 03E00008 */  jr    $ra
/* 161258 801BB1E8 AC39DC50 */   sw    $t9, -0x23b0($at)
.type func_801BB0C4_ovl7, @function
.size func_801BB0C4_ovl7, . - func_801BB0C4_ovl7

glabel func_801BB1EC_ovl7
/* 16125C 801BB1EC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 161260 801BB1F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 161264 801BB1F4 0C06835D */  jal   func_801A0D74_ovl7
/* 161268 801BB1F8 00000000 */   nop   
/* 16126C 801BB1FC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 161270 801BB200 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 161274 801BB204 3C19800E */  lui   $t9, 0x800e
/* 161278 801BB208 3C01801D */  lui   $at, %hi(D_801CE45C) # $at, 0x801d
/* 16127C 801BB20C 8DCF0000 */  lw    $t7, ($t6)
/* 161280 801BB210 C426E45C */  lwc1  $f6, %lo(D_801CE45C)($at)
/* 161284 801BB214 000FC080 */  sll   $t8, $t7, 2
/* 161288 801BB218 0338C821 */  addu  $t9, $t9, $t8
/* 16128C 801BB21C 8F39E350 */  lw    $t9, -0x1cb0($t9)
/* 161290 801BB220 8F28003C */  lw    $t0, 0x3c($t9)
/* 161294 801BB224 8D020010 */  lw    $v0, 0x10($t0)
/* 161298 801BB228 C4440030 */  lwc1  $f4, 0x30($v0)
/* 16129C 801BB22C 46062200 */  add.s $f8, $f4, $f6
/* 1612A0 801BB230 0C067CEC */  jal   func_8019F3B0_ovl7
/* 1612A4 801BB234 E4480030 */   swc1  $f8, 0x30($v0)
/* 1612A8 801BB238 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1612AC 801BB23C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1612B0 801BB240 03E00008 */  jr    $ra
/* 1612B4 801BB244 00000000 */   nop   
.type func_801BB1EC_ovl7, @function
.size func_801BB1EC_ovl7, . - func_801BB1EC_ovl7

glabel func_801BB248_ovl7
/* 1612B8 801BB248 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 1612BC 801BB24C 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 1612C0 801BB250 8CAE0000 */  lw    $t6, ($a1)
/* 1612C4 801BB254 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1612C8 801BB258 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1612CC 801BB25C AFA40018 */  sw    $a0, 0x18($sp)
/* 1612D0 801BB260 8DC30000 */  lw    $v1, ($t6)
/* 1612D4 801BB264 3C0140B0 */  li    $at, 0x40B00000 # 5.500000
/* 1612D8 801BB268 3C04800E */  lui   $a0, 0x800e
/* 1612DC 801BB26C 00031880 */  sll   $v1, $v1, 2
/* 1612E0 801BB270 44810000 */  mtc1  $at, $f0
/* 1612E4 801BB274 00832021 */  addu  $a0, $a0, $v1
/* 1612E8 801BB278 8C841B50 */  lw    $a0, 0x1b50($a0)
/* 1612EC 801BB27C 3C01800E */  lui   $at, 0x800e
/* 1612F0 801BB280 00230821 */  addu  $at, $at, $v1
/* 1612F4 801BB284 240F0004 */  li    $t7, 4
/* 1612F8 801BB288 3C18801D */  lui   $t8, %hi(D_801CCBEC) # $t8, 0x801d
/* 1612FC 801BB28C AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 161300 801BB290 2718CBEC */  addiu $t8, %lo(D_801CCBEC) # addiu $t8, $t8, -0x3414
/* 161304 801BB294 AC980098 */  sw    $t8, 0x98($a0)
/* 161308 801BB298 8CA20000 */  lw    $v0, ($a1)
/* 16130C 801BB29C 3C01800E */  lui   $at, 0x800e
/* 161310 801BB2A0 44801000 */  mtc1  $zero, $f2
/* 161314 801BB2A4 8C430000 */  lw    $v1, ($v0)
/* 161318 801BB2A8 00031880 */  sll   $v1, $v1, 2
/* 16131C 801BB2AC 00230821 */  addu  $at, $at, $v1
/* 161320 801BB2B0 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 161324 801BB2B4 3C01800E */  lui   $at, 0x800e
/* 161328 801BB2B8 00230821 */  addu  $at, $at, $v1
/* 16132C 801BB2BC 46002182 */  mul.s $f6, $f4, $f0
/* 161330 801BB2C0 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 161334 801BB2C4 8C590000 */  lw    $t9, ($v0)
/* 161338 801BB2C8 3C01800E */  lui   $at, 0x800e
/* 16133C 801BB2CC 00194080 */  sll   $t0, $t9, 2
/* 161340 801BB2D0 00280821 */  addu  $at, $at, $t0
/* 161344 801BB2D4 E4226690 */  swc1  $f2, 0x6690($at)
/* 161348 801BB2D8 8C490000 */  lw    $t1, ($v0)
/* 16134C 801BB2DC 3C01800E */  lui   $at, 0x800e
/* 161350 801BB2E0 00095080 */  sll   $t2, $t1, 2
/* 161354 801BB2E4 002A0821 */  addu  $at, $at, $t2
/* 161358 801BB2E8 E4206850 */  swc1  $f0, 0x6850($at)
/* 16135C 801BB2EC 8C4B0000 */  lw    $t3, ($v0)
/* 161360 801BB2F0 3C01C0F0 */  li    $at, 0xC0F00000 # -7.500000
/* 161364 801BB2F4 44814000 */  mtc1  $at, $f8
/* 161368 801BB2F8 3C01800E */  lui   $at, 0x800e
/* 16136C 801BB2FC 000B6080 */  sll   $t4, $t3, 2
/* 161370 801BB300 002C0821 */  addu  $at, $at, $t4
/* 161374 801BB304 E4283210 */  swc1  $f8, 0x3210($at)
/* 161378 801BB308 8C4D0000 */  lw    $t5, ($v0)
/* 16137C 801BB30C 3C01800E */  lui   $at, 0x800e
/* 161380 801BB310 000D7080 */  sll   $t6, $t5, 2
/* 161384 801BB314 002E0821 */  addu  $at, $at, $t6
/* 161388 801BB318 E4223750 */  swc1  $f2, 0x3750($at)
/* 16138C 801BB31C 8C4F0000 */  lw    $t7, ($v0)
/* 161390 801BB320 3C0140F0 */  li    $at, 0x40F00000 # 7.500000
/* 161394 801BB324 44815000 */  mtc1  $at, $f10
/* 161398 801BB328 3C01800E */  lui   $at, 0x800e
/* 16139C 801BB32C 000FC080 */  sll   $t8, $t7, 2
/* 1613A0 801BB330 00380821 */  addu  $at, $at, $t8
/* 1613A4 801BB334 0C02BE85 */  jal   func_800AFA14
/* 1613A8 801BB338 E42A3C90 */   swc1  $f10, 0x3c90($at)
/* 1613AC 801BB33C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1613B0 801BB340 27BD0018 */  addiu $sp, $sp, 0x18
/* 1613B4 801BB344 03E00008 */  jr    $ra
/* 1613B8 801BB348 00000000 */   nop   
.type func_801BB248_ovl7, @function
.size func_801BB248_ovl7, . - func_801BB248_ovl7

glabel func_801BB34C_ovl7
/* 1613BC 801BB34C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1613C0 801BB350 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1613C4 801BB354 0C06835D */  jal   func_801A0D74_ovl7
/* 1613C8 801BB358 00000000 */   nop   
/* 1613CC 801BB35C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1613D0 801BB360 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1613D4 801BB364 3C19800E */  lui   $t9, 0x800e
/* 1613D8 801BB368 3C01801D */  lui   $at, %hi(D_801CE460) # $at, 0x801d
/* 1613DC 801BB36C 8DCF0000 */  lw    $t7, ($t6)
/* 1613E0 801BB370 C424E460 */  lwc1  $f4, %lo(D_801CE460)($at)
/* 1613E4 801BB374 3C01801D */  lui   $at, %hi(D_801CE464) # $at, 0x801d
/* 1613E8 801BB378 000FC080 */  sll   $t8, $t7, 2
/* 1613EC 801BB37C 0338C821 */  addu  $t9, $t9, $t8
/* 1613F0 801BB380 8F39E350 */  lw    $t9, -0x1cb0($t9)
/* 1613F4 801BB384 3C040001 */  lui   $a0, (0x0001012F >> 16) # lui $a0, 1
/* 1613F8 801BB388 8F28003C */  lw    $t0, 0x3c($t9)
/* 1613FC 801BB38C 8D020010 */  lw    $v0, 0x10($t0)
/* 161400 801BB390 C4400030 */  lwc1  $f0, 0x30($v0)
/* 161404 801BB394 4604003C */  c.lt.s $f0, $f4
/* 161408 801BB398 00000000 */  nop   
/* 16140C 801BB39C 45000005 */  bc1f  .L801BB3B4_ovl7
/* 161410 801BB3A0 00000000 */   nop   
/* 161414 801BB3A4 C426E464 */  lwc1  $f6, %lo(D_801CE464)($at)
/* 161418 801BB3A8 46060200 */  add.s $f8, $f0, $f6
/* 16141C 801BB3AC 10000003 */  b     .L801BB3BC_ovl7
/* 161420 801BB3B0 E4480030 */   swc1  $f8, 0x30($v0)
.L801BB3B4_ovl7:
/* 161424 801BB3B4 0C02A7A9 */  jal   func_800A9EA4
/* 161428 801BB3B8 3484012F */   ori   $a0, (0x0001012F & 0xFFFF) # ori $a0, $a0, 0x12f
.L801BB3BC_ovl7:
/* 16142C 801BB3BC 0C067CEC */  jal   func_8019F3B0_ovl7
/* 161430 801BB3C0 00000000 */   nop   
/* 161434 801BB3C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 161438 801BB3C8 27BD0018 */  addiu $sp, $sp, 0x18
/* 16143C 801BB3CC 03E00008 */  jr    $ra
/* 161440 801BB3D0 00000000 */   nop   
.type func_801BB34C_ovl7, @function
.size func_801BB34C_ovl7, . - func_801BB34C_ovl7

glabel func_801BB3D4_ovl7
/* 161444 801BB3D4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 161448 801BB3D8 AFB00020 */  sw    $s0, 0x20($sp)
/* 16144C 801BB3DC 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 161450 801BB3E0 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 161454 801BB3E4 8E0E0000 */  lw    $t6, ($s0)
/* 161458 801BB3E8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 16145C 801BB3EC F7B40018 */  sdc1  $f20, 0x18($sp)
/* 161460 801BB3F0 AFA40028 */  sw    $a0, 0x28($sp)
/* 161464 801BB3F4 8DC20000 */  lw    $v0, ($t6)
/* 161468 801BB3F8 3C03800E */  lui   $v1, 0x800e
/* 16146C 801BB3FC 3C01800E */  lui   $at, 0x800e
/* 161470 801BB400 00021080 */  sll   $v0, $v0, 2
/* 161474 801BB404 00621821 */  addu  $v1, $v1, $v0
/* 161478 801BB408 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 16147C 801BB40C 00220821 */  addu  $at, $at, $v0
/* 161480 801BB410 240F0005 */  li    $t7, 5
/* 161484 801BB414 3C18801D */  lui   $t8, %hi(D_801CCB80) # $t8, 0x801d
/* 161488 801BB418 AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 16148C 801BB41C 2718CB80 */  addiu $t8, %lo(D_801CCB80) # addiu $t8, $t8, -0x3480
/* 161490 801BB420 AC780098 */  sw    $t8, 0x98($v1)
/* 161494 801BB424 8E190000 */  lw    $t9, ($s0)
/* 161498 801BB428 3C01800F */  lui   $at, 0x800f
/* 16149C 801BB42C 3C040001 */  lui   $a0, (0x0001012B >> 16) # lui $a0, 1
/* 1614A0 801BB430 8F280000 */  lw    $t0, ($t9)
/* 1614A4 801BB434 3484012B */  ori   $a0, (0x0001012B & 0xFFFF) # ori $a0, $a0, 0x12b
/* 1614A8 801BB438 00084880 */  sll   $t1, $t0, 2
/* 1614AC 801BB43C 00290821 */  addu  $at, $at, $t1
/* 1614B0 801BB440 0C02A806 */  jal   func_800AA018
/* 1614B4 801BB444 AC208920 */   sw    $zero, -0x76e0($at)
/* 1614B8 801BB448 8E0A0000 */  lw    $t2, ($s0)
/* 1614BC 801BB44C 3C0D800E */  lui   $t5, 0x800e
/* 1614C0 801BB450 44806000 */  mtc1  $zero, $f12
/* 1614C4 801BB454 8D4B0000 */  lw    $t3, ($t2)
/* 1614C8 801BB458 3C18800E */  lui   $t8, 0x800e
/* 1614CC 801BB45C 24010002 */  li    $at, 2
/* 1614D0 801BB460 000B6080 */  sll   $t4, $t3, 2
/* 1614D4 801BB464 01AC6821 */  addu  $t5, $t5, $t4
/* 1614D8 801BB468 8DADE350 */  lw    $t5, -0x1cb0($t5)
/* 1614DC 801BB46C 8DAE003C */  lw    $t6, 0x3c($t5)
/* 1614E0 801BB470 8DCF0010 */  lw    $t7, 0x10($t6)
/* 1614E4 801BB474 E5EC0030 */  swc1  $f12, 0x30($t7)
/* 1614E8 801BB478 8E030000 */  lw    $v1, ($s0)
/* 1614EC 801BB47C 8C640000 */  lw    $a0, ($v1)
/* 1614F0 801BB480 0304C021 */  addu  $t8, $t8, $a0
/* 1614F4 801BB484 93187880 */  lbu   $t8, 0x7880($t8)
/* 1614F8 801BB488 00041080 */  sll   $v0, $a0, 2
/* 1614FC 801BB48C 17010016 */  bne   $t8, $at, .L801BB4E8_ovl7
/* 161500 801BB490 3C014060 */   li    $at, 0x40600000 # 3.500000
/* 161504 801BB494 44810000 */  mtc1  $at, $f0
/* 161508 801BB498 3C01800E */  lui   $at, 0x800e
/* 16150C 801BB49C 00041080 */  sll   $v0, $a0, 2
/* 161510 801BB4A0 00220821 */  addu  $at, $at, $v0
/* 161514 801BB4A4 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 161518 801BB4A8 3C01800E */  lui   $at, 0x800e
/* 16151C 801BB4AC 00220821 */  addu  $at, $at, $v0
/* 161520 801BB4B0 46002182 */  mul.s $f6, $f4, $f0
/* 161524 801BB4B4 4480A000 */  mtc1  $zero, $f20
/* 161528 801BB4B8 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 16152C 801BB4BC 8C790000 */  lw    $t9, ($v1)
/* 161530 801BB4C0 3C01800E */  lui   $at, 0x800e
/* 161534 801BB4C4 00194080 */  sll   $t0, $t9, 2
/* 161538 801BB4C8 00280821 */  addu  $at, $at, $t0
/* 16153C 801BB4CC E4346690 */  swc1  $f20, 0x6690($at)
/* 161540 801BB4D0 8C690000 */  lw    $t1, ($v1)
/* 161544 801BB4D4 3C01800E */  lui   $at, 0x800e
/* 161548 801BB4D8 00095080 */  sll   $t2, $t1, 2
/* 16154C 801BB4DC 002A0821 */  addu  $at, $at, $t2
/* 161550 801BB4E0 10000015 */  b     .L801BB538_ovl7
/* 161554 801BB4E4 E4206850 */   swc1  $f0, 0x6850($at)
.L801BB4E8_ovl7:
/* 161558 801BB4E8 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 16155C 801BB4EC 44810000 */  mtc1  $at, $f0
/* 161560 801BB4F0 3C01800E */  lui   $at, 0x800e
/* 161564 801BB4F4 00220821 */  addu  $at, $at, $v0
/* 161568 801BB4F8 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 16156C 801BB4FC 3C01800E */  lui   $at, 0x800e
/* 161570 801BB500 00220821 */  addu  $at, $at, $v0
/* 161574 801BB504 46004282 */  mul.s $f10, $f8, $f0
/* 161578 801BB508 4480A000 */  mtc1  $zero, $f20
/* 16157C 801BB50C E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 161580 801BB510 8C6B0000 */  lw    $t3, ($v1)
/* 161584 801BB514 3C01800E */  lui   $at, 0x800e
/* 161588 801BB518 000B6080 */  sll   $t4, $t3, 2
/* 16158C 801BB51C 002C0821 */  addu  $at, $at, $t4
/* 161590 801BB520 E4346690 */  swc1  $f20, 0x6690($at)
/* 161594 801BB524 8C6D0000 */  lw    $t5, ($v1)
/* 161598 801BB528 3C01800E */  lui   $at, 0x800e
/* 16159C 801BB52C 000D7080 */  sll   $t6, $t5, 2
/* 1615A0 801BB530 002E0821 */  addu  $at, $at, $t6
/* 1615A4 801BB534 E4206850 */  swc1  $f0, 0x6850($at)
.L801BB538_ovl7:
/* 1615A8 801BB538 8C6F0000 */  lw    $t7, ($v1)
/* 1615AC 801BB53C 3C10800E */  lui   $s0, %hi(D_800E3210) # $s0, 0x800e
/* 1615B0 801BB540 26103210 */  addiu $s0, %lo(D_800E3210) # addiu $s0, $s0, 0x3210
/* 1615B4 801BB544 000FC080 */  sll   $t8, $t7, 2
/* 1615B8 801BB548 02182021 */  addu  $a0, $s0, $t8
/* 1615BC 801BB54C C4900000 */  lwc1  $f16, ($a0)
/* 1615C0 801BB550 3C01801D */  lui   $at, %hi(D_801CE468) # $at, 0x801d
/* 1615C4 801BB554 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 1615C8 801BB558 46008487 */  neg.s $f18, $f16
/* 1615CC 801BB55C 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 1615D0 801BB560 E4920000 */  swc1  $f18, ($a0)
/* 1615D4 801BB564 8C790000 */  lw    $t9, ($v1)
/* 1615D8 801BB568 C424E468 */  lwc1  $f4, %lo(D_801CE468)($at)
/* 1615DC 801BB56C 3C01800E */  lui   $at, 0x800e
/* 1615E0 801BB570 00194080 */  sll   $t0, $t9, 2
/* 1615E4 801BB574 00A84821 */  addu  $t1, $a1, $t0
/* 1615E8 801BB578 E5240000 */  swc1  $f4, ($t1)
/* 1615EC 801BB57C 8C620000 */  lw    $v0, ($v1)
/* 1615F0 801BB580 00021080 */  sll   $v0, $v0, 2
/* 1615F4 801BB584 02025021 */  addu  $t2, $s0, $v0
/* 1615F8 801BB588 C5400000 */  lwc1  $f0, ($t2)
/* 1615FC 801BB58C 00220821 */  addu  $at, $at, $v0
/* 161600 801BB590 460C003C */  c.lt.s $f0, $f12
/* 161604 801BB594 00000000 */  nop   
/* 161608 801BB598 45020004 */  bc1fl .L801BB5AC_ovl7
/* 16160C 801BB59C 46000086 */   mov.s $f2, $f0
/* 161610 801BB5A0 10000002 */  b     .L801BB5AC_ovl7
/* 161614 801BB5A4 46000087 */   neg.s $f2, $f0
/* 161618 801BB5A8 46000086 */  mov.s $f2, $f0
.L801BB5AC_ovl7:
/* 16161C 801BB5AC 460C103C */  c.lt.s $f2, $f12
/* 161620 801BB5B0 00000000 */  nop   
/* 161624 801BB5B4 4502000D */  bc1fl .L801BB5EC_ovl7
/* 161628 801BB5B8 460C003C */   c.lt.s $f0, $f12
/* 16162C 801BB5BC 460C003C */  c.lt.s $f0, $f12
/* 161630 801BB5C0 3C01800E */  lui   $at, 0x800e
/* 161634 801BB5C4 00220821 */  addu  $at, $at, $v0
/* 161638 801BB5C8 45020004 */  bc1fl .L801BB5DC_ovl7
/* 16163C 801BB5CC 46000086 */   mov.s $f2, $f0
/* 161640 801BB5D0 10000002 */  b     .L801BB5DC_ovl7
/* 161644 801BB5D4 46000087 */   neg.s $f2, $f0
/* 161648 801BB5D8 46000086 */  mov.s $f2, $f0
.L801BB5DC_ovl7:
/* 16164C 801BB5DC 46001187 */  neg.s $f6, $f2
/* 161650 801BB5E0 10000009 */  b     .L801BB608_ovl7
/* 161654 801BB5E4 E4263C90 */   swc1  $f6, 0x3c90($at)
/* 161658 801BB5E8 460C003C */  c.lt.s $f0, $f12
.L801BB5EC_ovl7:
/* 16165C 801BB5EC 00000000 */  nop   
/* 161660 801BB5F0 45020004 */  bc1fl .L801BB604_ovl7
/* 161664 801BB5F4 46000086 */   mov.s $f2, $f0
/* 161668 801BB5F8 10000002 */  b     .L801BB604_ovl7
/* 16166C 801BB5FC 46000087 */   neg.s $f2, $f0
/* 161670 801BB600 46000086 */  mov.s $f2, $f0
.L801BB604_ovl7:
/* 161674 801BB604 E4223C90 */  swc1  $f2, 0x3c90($at)
.L801BB608_ovl7:
/* 161678 801BB608 8C620000 */  lw    $v0, ($v1)
/* 16167C 801BB60C 00021080 */  sll   $v0, $v0, 2
/* 161680 801BB610 02025821 */  addu  $t3, $s0, $v0
/* 161684 801BB614 C5680000 */  lwc1  $f8, ($t3)
/* 161688 801BB618 4614403C */  c.lt.s $f8, $f20
/* 16168C 801BB61C 00000000 */  nop   
/* 161690 801BB620 45000010 */  bc1f  .L801BB664_ovl7
/* 161694 801BB624 00A26021 */   addu  $t4, $a1, $v0
/* 161698 801BB628 E5940000 */  swc1  $f20, ($t4)
/* 16169C 801BB62C 8C620000 */  lw    $v0, ($v1)
/* 1616A0 801BB630 3C01801D */  lui   $at, %hi(D_801CE46C) # $at, 0x801d
/* 1616A4 801BB634 00021080 */  sll   $v0, $v0, 2
/* 1616A8 801BB638 00A26821 */  addu  $t5, $a1, $v0
/* 1616AC 801BB63C C5AA0000 */  lwc1  $f10, ($t5)
/* 1616B0 801BB640 02027021 */  addu  $t6, $s0, $v0
/* 1616B4 801BB644 E5CA0000 */  swc1  $f10, ($t6)
/* 1616B8 801BB648 8C6F0000 */  lw    $t7, ($v1)
/* 1616BC 801BB64C C430E46C */  lwc1  $f16, %lo(D_801CE46C)($at)
/* 1616C0 801BB650 3C01800E */  lui   $at, 0x800e
/* 1616C4 801BB654 000FC080 */  sll   $t8, $t7, 2
/* 1616C8 801BB658 00380821 */  addu  $at, $at, $t8
/* 1616CC 801BB65C 10000008 */  b     .L801BB680_ovl7
/* 1616D0 801BB660 E4303C90 */   swc1  $f16, 0x3c90($at)
.L801BB664_ovl7:
/* 1616D4 801BB664 0C002DAF */  jal   finish_current_thread
/* 1616D8 801BB668 24040001 */   li    $a0, 1
/* 1616DC 801BB66C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1616E0 801BB670 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 1616E4 801BB674 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 1616E8 801BB678 1000FFE3 */  b     .L801BB608_ovl7
/* 1616EC 801BB67C 8C63A7C4 */   lw    $v1, %lo(D_8004A7C4)($v1)
.L801BB680_ovl7:
/* 1616F0 801BB680 0C02BE85 */  jal   func_800AFA14
/* 1616F4 801BB684 00000000 */   nop   
/* 1616F8 801BB688 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1616FC 801BB68C D7B40018 */  ldc1  $f20, 0x18($sp)
/* 161700 801BB690 8FB00020 */  lw    $s0, 0x20($sp)
/* 161704 801BB694 03E00008 */  jr    $ra
/* 161708 801BB698 27BD0028 */   addiu $sp, $sp, 0x28
.type func_801BB3D4_ovl7, @function
.size func_801BB3D4_ovl7, . - func_801BB3D4_ovl7

glabel func_801BB69C_ovl7
/* 16170C 801BB69C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 161710 801BB6A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 161714 801BB6A4 0C06835D */  jal   func_801A0D74_ovl7
/* 161718 801BB6A8 00000000 */   nop   
/* 16171C 801BB6AC 0C067CEC */  jal   func_8019F3B0_ovl7
/* 161720 801BB6B0 00000000 */   nop   
/* 161724 801BB6B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 161728 801BB6B8 27BD0018 */  addiu $sp, $sp, 0x18
/* 16172C 801BB6BC 03E00008 */  jr    $ra
/* 161730 801BB6C0 00000000 */   nop   
.type func_801BB69C_ovl7, @function
.size func_801BB69C_ovl7, . - func_801BB69C_ovl7

glabel func_801BB6C4_ovl7
/* 161734 801BB6C4 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 161738 801BB6C8 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 16173C 801BB6CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 161740 801BB6D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 161744 801BB6D4 AFA40018 */  sw    $a0, 0x18($sp)
/* 161748 801BB6D8 8DF80000 */  lw    $t8, ($t7)
/* 16174C 801BB6DC 3C0E801C */  lui   $t6, %hi(D_801BB7B8) # $t6, 0x801c
/* 161750 801BB6E0 3C01800E */  lui   $at, 0x800e
/* 161754 801BB6E4 0018C880 */  sll   $t9, $t8, 2
/* 161758 801BB6E8 00390821 */  addu  $at, $at, $t9
/* 16175C 801BB6EC 25CEB7B8 */  addiu $t6, %lo(D_801BB7B8) # addiu $t6, $t6, -0x4848
/* 161760 801BB6F0 3C04801C */  lui   $a0, %hi(D_801BB738) # $a0, 0x801c
/* 161764 801BB6F4 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 161768 801BB6F8 0C068354 */  jal   func_801A0D50
/* 16176C 801BB6FC 2484B738 */   addiu $a0, %lo(D_801BB738) # addiu $a0, $a0, -0x48c8
/* 161770 801BB700 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 161774 801BB704 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 161778 801BB708 3C01800E */  lui   $at, 0x800e
/* 16177C 801BB70C 24080006 */  li    $t0, 6
/* 161780 801BB710 8D2A0000 */  lw    $t2, ($t1)
/* 161784 801BB714 8FA40018 */  lw    $a0, 0x18($sp)
/* 161788 801BB718 000A5880 */  sll   $t3, $t2, 2
/* 16178C 801BB71C 002B0821 */  addu  $at, $at, $t3
/* 161790 801BB720 0C06EDCE */  jal   D_801BB738_ovl7
/* 161794 801BB724 AC28DC50 */   sw    $t0, -0x23b0($at)
/* 161798 801BB728 8FBF0014 */  lw    $ra, 0x14($sp)
/* 16179C 801BB72C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1617A0 801BB730 03E00008 */  jr    $ra
/* 1617A4 801BB734 00000000 */   nop   
.type func_801BB6C4_ovl7, @function
.size func_801BB6C4_ovl7, . - func_801BB6C4_ovl7

glabel func_801BB738_ovl7
/* 1617A8 801BB738 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1617AC 801BB73C AFB20020 */  sw    $s2, 0x20($sp)
/* 1617B0 801BB740 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1617B4 801BB744 AFB00018 */  sw    $s0, 0x18($sp)
/* 1617B8 801BB748 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 1617BC 801BB74C 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1617C0 801BB750 3C12801D */  lui   $s2, %hi(D_801CD7E8) # $s2, 0x801d
/* 1617C4 801BB754 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1617C8 801BB758 AFA40028 */  sw    $a0, 0x28($sp)
/* 1617CC 801BB75C 2652D7E8 */  addiu $s2, %lo(D_801CD7E8) # addiu $s2, $s2, -0x2818
/* 1617D0 801BB760 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1617D4 801BB764 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 1617D8 801BB768 8E2E0000 */  lw    $t6, ($s1)
.L801BB76C_ovl7:
/* 1617DC 801BB76C 24050007 */  li    $a1, 7
/* 1617E0 801BB770 02403025 */  move  $a2, $s2
/* 1617E4 801BB774 8DCF0000 */  lw    $t7, ($t6)
/* 1617E8 801BB778 000FC080 */  sll   $t8, $t7, 2
/* 1617EC 801BB77C 0218C821 */  addu  $t9, $s0, $t8
/* 1617F0 801BB780 0C02911F */  jal   call_virtual_function
/* 1617F4 801BB784 8F240000 */   lw    $a0, ($t9)
/* 1617F8 801BB788 1000FFF8 */  b     .L801BB76C_ovl7
/* 1617FC 801BB78C 8E2E0000 */   lw    $t6, ($s1)
/* 161800 801BB790 00000000 */  nop   
/* 161804 801BB794 00000000 */  nop   
/* 161808 801BB798 00000000 */  nop   
/* 16180C 801BB79C 00000000 */  nop   
/* 161810 801BB7A0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 161814 801BB7A4 8FB00018 */  lw    $s0, 0x18($sp)
/* 161818 801BB7A8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 16181C 801BB7AC 8FB20020 */  lw    $s2, 0x20($sp)
/* 161820 801BB7B0 03E00008 */  jr    $ra
/* 161824 801BB7B4 27BD0028 */   addiu $sp, $sp, 0x28
.type func_801BB738_ovl7, @function
.size func_801BB738_ovl7, . - func_801BB738_ovl7

glabel func_801BB7B8_ovl7
/* 161828 801BB7B8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 16182C 801BB7BC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 161830 801BB7C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 161834 801BB7C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 161838 801BB7C8 AFA40018 */  sw    $a0, 0x18($sp)
/* 16183C 801BB7CC 8DCF0000 */  lw    $t7, ($t6)
/* 161840 801BB7D0 3C04800E */  lui   $a0, 0x800e
/* 161844 801BB7D4 3C06801D */  lui   $a2, %hi(D_801CD804) # $a2, 0x801d
/* 161848 801BB7D8 000FC080 */  sll   $t8, $t7, 2
/* 16184C 801BB7DC 00982021 */  addu  $a0, $a0, $t8
/* 161850 801BB7E0 8C84DFD0 */  lw    $a0, -0x2030($a0)
/* 161854 801BB7E4 24C6D804 */  addiu $a2, %lo(D_801CD804) # addiu $a2, $a2, -0x27fc
/* 161858 801BB7E8 0C02911F */  jal   call_virtual_function
/* 16185C 801BB7EC 24050007 */   li    $a1, 7
/* 161860 801BB7F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 161864 801BB7F4 27BD0018 */  addiu $sp, $sp, 0x18
/* 161868 801BB7F8 03E00008 */  jr    $ra
/* 16186C 801BB7FC 00000000 */   nop   
.type func_801BB7B8_ovl7, @function
.size func_801BB7B8_ovl7, . - func_801BB7B8_ovl7

glabel func_801BB800_ovl7
/* 161870 801BB800 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 161874 801BB804 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 161878 801BB808 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 16187C 801BB80C AFBF0014 */  sw    $ra, 0x14($sp)
/* 161880 801BB810 AFA40018 */  sw    $a0, 0x18($sp)
/* 161884 801BB814 8DC20000 */  lw    $v0, ($t6)
/* 161888 801BB818 3C03800E */  lui   $v1, 0x800e
/* 16188C 801BB81C 3C01800E */  lui   $at, 0x800e
/* 161890 801BB820 00021080 */  sll   $v0, $v0, 2
/* 161894 801BB824 00621821 */  addu  $v1, $v1, $v0
/* 161898 801BB828 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 16189C 801BB82C 00220821 */  addu  $at, $at, $v0
/* 1618A0 801BB830 240F0006 */  li    $t7, 6
/* 1618A4 801BB834 3C18801D */  lui   $t8, %hi(D_801CB470) # $t8, 0x801d
/* 1618A8 801BB838 AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 1618AC 801BB83C 2718B470 */  addiu $t8, %lo(D_801CB470) # addiu $t8, $t8, -0x4b90
/* 1618B0 801BB840 0C02CD48 */  jal   func_800B3520
/* 1618B4 801BB844 AC780098 */   sw    $t8, 0x98($v1)
/* 1618B8 801BB848 0C02BE85 */  jal   func_800AFA14
/* 1618BC 801BB84C 00000000 */   nop   
/* 1618C0 801BB850 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1618C4 801BB854 27BD0018 */  addiu $sp, $sp, 0x18
/* 1618C8 801BB858 03E00008 */  jr    $ra
/* 1618CC 801BB85C 00000000 */   nop   
.type func_801BB800_ovl7, @function
.size func_801BB800_ovl7, . - func_801BB800_ovl7

glabel func_801BB860_ovl7
/* 1618D0 801BB860 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1618D4 801BB864 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1618D8 801BB868 0C066E0D */  jal   func_8019B834_ovl7
/* 1618DC 801BB86C AFA40018 */   sw    $a0, 0x18($sp)
/* 1618E0 801BB870 1040001A */  beqz  $v0, .L801BB8DC_ovl7
/* 1618E4 801BB874 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1618E8 801BB878 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1618EC 801BB87C 3C18800E */  lui   $t8, %hi(D_800E6A10) # $t8, 0x800e
/* 1618F0 801BB880 27186A10 */  addiu $t8, %lo(D_800E6A10) # addiu $t8, $t8, 0x6a10
/* 1618F4 801BB884 8C4E0000 */  lw    $t6, ($v0)
/* 1618F8 801BB888 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1618FC 801BB88C 44813000 */  mtc1  $at, $f6
/* 161900 801BB890 000E7880 */  sll   $t7, $t6, 2
/* 161904 801BB894 01F81821 */  addu  $v1, $t7, $t8
/* 161908 801BB898 C4640000 */  lwc1  $f4, ($v1)
/* 16190C 801BB89C 3C01800E */  lui   $at, 0x800e
/* 161910 801BB8A0 24190002 */  li    $t9, 2
/* 161914 801BB8A4 46062202 */  mul.s $f8, $f4, $f6
/* 161918 801BB8A8 3C04800E */  lui   $a0, 0x800e
/* 16191C 801BB8AC 3C05801C */  lui   $a1, %hi(D_801BB738) # $a1, 0x801c
/* 161920 801BB8B0 24A5B738 */  addiu $a1, %lo(D_801BB738) # addiu $a1, $a1, -0x48c8
/* 161924 801BB8B4 E4680000 */  swc1  $f8, ($v1)
/* 161928 801BB8B8 8C480000 */  lw    $t0, ($v0)
/* 16192C 801BB8BC 00084880 */  sll   $t1, $t0, 2
/* 161930 801BB8C0 00290821 */  addu  $at, $at, $t1
/* 161934 801BB8C4 AC39DC50 */  sw    $t9, -0x23b0($at)
/* 161938 801BB8C8 8C4A0000 */  lw    $t2, ($v0)
/* 16193C 801BB8CC 000A5880 */  sll   $t3, $t2, 2
/* 161940 801BB8D0 008B2021 */  addu  $a0, $a0, $t3
/* 161944 801BB8D4 0C02C7B2 */  jal   assign_new_process_entry
/* 161948 801BB8D8 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801BB8DC_ovl7:
/* 16194C 801BB8DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 161950 801BB8E0 27BD0018 */  addiu $sp, $sp, 0x18
/* 161954 801BB8E4 03E00008 */  jr    $ra
/* 161958 801BB8E8 00000000 */   nop   
.type func_801BB860_ovl7, @function
.size func_801BB860_ovl7, . - func_801BB860_ovl7

glabel func_801BB8EC_ovl7
/* 16195C 801BB8EC 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 161960 801BB8F0 2484A7C4 */  addiu $a0, %lo(D_8004A7C4) # addiu $a0, $a0, -0x583c
/* 161964 801BB8F4 8C8E0000 */  lw    $t6, ($a0)
/* 161968 801BB8F8 3C03800E */  lui   $v1, %hi(D_800DE350) # $v1, 0x800e
/* 16196C 801BB8FC 2463E350 */  addiu $v1, %lo(D_800DE350) # addiu $v1, $v1, -0x1cb0
/* 161970 801BB900 8DCF0000 */  lw    $t7, ($t6)
/* 161974 801BB904 3C01801D */  lui   $at, %hi(D_801CE470) # $at, 0x801d
/* 161978 801BB908 C424E470 */  lwc1  $f4, %lo(D_801CE470)($at)
/* 16197C 801BB90C 000FC080 */  sll   $t8, $t7, 2
/* 161980 801BB910 0078C821 */  addu  $t9, $v1, $t8
/* 161984 801BB914 8F280000 */  lw    $t0, ($t9)
/* 161988 801BB918 3C01801D */  lui   $at, %hi(D_801CE474) # $at, 0x801d
/* 16198C 801BB91C 8D09003C */  lw    $t1, 0x3c($t0)
/* 161990 801BB920 8D220010 */  lw    $v0, 0x10($t1)
/* 161994 801BB924 C4400030 */  lwc1  $f0, 0x30($v0)
/* 161998 801BB928 4600203C */  c.lt.s $f4, $f0
/* 16199C 801BB92C 00000000 */  nop   
/* 1619A0 801BB930 45010007 */  bc1t  .L801BB950_ovl7
/* 1619A4 801BB934 00000000 */   nop   
/* 1619A8 801BB938 C426E474 */  lwc1  $f6, %lo(D_801CE474)($at)
/* 1619AC 801BB93C 3C01801D */  lui   $at, 0x801d
/* 1619B0 801BB940 4606003C */  c.lt.s $f0, $f6
/* 1619B4 801BB944 00000000 */  nop   
/* 1619B8 801BB948 4500000F */  bc1f  .L801BB988_ovl7
/* 1619BC 801BB94C 00000000 */   nop   
.L801BB950_ovl7:
/* 1619C0 801BB950 3C01801D */  lui   $at, %hi(D_801CE478) # $at, 0x801d
/* 1619C4 801BB954 C428E478 */  lwc1  $f8, %lo(D_801CE478)($at)
/* 1619C8 801BB958 44808000 */  mtc1  $zero, $f16
/* 1619CC 801BB95C 46080280 */  add.s $f10, $f0, $f8
/* 1619D0 801BB960 E44A0030 */  swc1  $f10, 0x30($v0)
/* 1619D4 801BB964 8C8A0000 */  lw    $t2, ($a0)
/* 1619D8 801BB968 8D4B0000 */  lw    $t3, ($t2)
/* 1619DC 801BB96C 000B6080 */  sll   $t4, $t3, 2
/* 1619E0 801BB970 006C6821 */  addu  $t5, $v1, $t4
/* 1619E4 801BB974 8DAE0000 */  lw    $t6, ($t5)
/* 1619E8 801BB978 8DCF003C */  lw    $t7, 0x3c($t6)
/* 1619EC 801BB97C 8DF80010 */  lw    $t8, 0x10($t7)
/* 1619F0 801BB980 03E00008 */  jr    $ra
/* 1619F4 801BB984 E7100034 */   swc1  $f16, 0x34($t8)

.L801BB988_ovl7:
/* 1619F8 801BB988 C432E47C */  lwc1  $f18, -0x1b84($at)
/* 1619FC 801BB98C 3C01801D */  lui   $at, %hi(D_801CE480) # $at, 0x801d
/* 161A00 801BB990 E4520030 */  swc1  $f18, 0x30($v0)
/* 161A04 801BB994 8C990000 */  lw    $t9, ($a0)
/* 161A08 801BB998 C426E480 */  lwc1  $f6, %lo(D_801CE480)($at)
/* 161A0C 801BB99C 8F280000 */  lw    $t0, ($t9)
/* 161A10 801BB9A0 00084880 */  sll   $t1, $t0, 2
/* 161A14 801BB9A4 00695021 */  addu  $t2, $v1, $t1
/* 161A18 801BB9A8 8D4B0000 */  lw    $t3, ($t2)
/* 161A1C 801BB9AC 8D6C003C */  lw    $t4, 0x3c($t3)
/* 161A20 801BB9B0 8D820010 */  lw    $v0, 0x10($t4)
/* 161A24 801BB9B4 C4440034 */  lwc1  $f4, 0x34($v0)
/* 161A28 801BB9B8 46062200 */  add.s $f8, $f4, $f6
/* 161A2C 801BB9BC E4480034 */  swc1  $f8, 0x34($v0)
/* 161A30 801BB9C0 03E00008 */  jr    $ra
/* 161A34 801BB9C4 00000000 */   nop   
.type func_801BB8EC_ovl7, @function
.size func_801BB8EC_ovl7, . - func_801BB8EC_ovl7

glabel func_801BB9C8_ovl7
/* 161A38 801BB9C8 00000000 */  nop   
/* 161A3C 801BB9CC 00000000 */  nop   
.type func_801BB9C8_ovl7, @function
.size func_801BB9C8_ovl7, . - func_801BB9C8_ovl7
