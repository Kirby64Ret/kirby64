glabel func_801A2E64_ovl7
/* 148ED4 801A2E64 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 148ED8 801A2E68 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 148EDC 801A2E6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 148EE0 801A2E70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 148EE4 801A2E74 AFA40018 */  sw         $a0, 0x18($sp)
/* 148EE8 801A2E78 8DCF0000 */  lw         $t7, 0x0($t6)
/* 148EEC 801A2E7C 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 148EF0 801A2E80 000FC080 */  sll        $t8, $t7, 2
/* 148EF4 801A2E84 00581021 */  addu       $v0, $v0, $t8
/* 148EF8 801A2E88 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 148EFC 801A2E8C 8C430084 */  lw         $v1, 0x84($v0)
/* 148F00 801A2E90 0C068B1E */  jal        func_801A2C78_ovl7
/* 148F04 801A2E94 C46C0018 */   lwc1      $f12, 0x18($v1)
/* 148F08 801A2E98 10400055 */  beqz       $v0, .L801A2FF0_ovl7
/* 148F0C 801A2E9C 3C038005 */   lui       $v1, %hi(D_8004A7C4)
/* 148F10 801A2EA0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 148F14 801A2EA4 3C07800F */  lui        $a3, %hi(D_800E8AE0)
/* 148F18 801A2EA8 24E78AE0 */  addiu      $a3, $a3, %lo(D_800E8AE0)
/* 148F1C 801A2EAC 8C790000 */  lw         $t9, 0x0($v1)
/* 148F20 801A2EB0 2401FFFE */  addiu      $at, $zero, -0x2
/* 148F24 801A2EB4 3C06800E */  lui        $a2, %hi(gEntitiesNextPosYArray)
/* 148F28 801A2EB8 00194880 */  sll        $t1, $t9, 2
/* 148F2C 801A2EBC 00E92021 */  addu       $a0, $a3, $t1
/* 148F30 801A2EC0 8C8A0000 */  lw         $t2, 0x0($a0)
/* 148F34 801A2EC4 24C62790 */  addiu      $a2, $a2, %lo(gEntitiesNextPosYArray)
/* 148F38 801A2EC8 3C08800E */  lui        $t0, %hi(gEntitiesPosYArray)
/* 148F3C 801A2ECC 01415824 */  and        $t3, $t2, $at
/* 148F40 801A2ED0 AC8B0000 */  sw         $t3, 0x0($a0)
/* 148F44 801A2ED4 8C6C0000 */  lw         $t4, 0x0($v1)
/* 148F48 801A2ED8 3C01800F */  lui        $at, %hi(D_800E8920)
/* 148F4C 801A2EDC 25082CD0 */  addiu      $t0, $t0, %lo(gEntitiesPosYArray)
/* 148F50 801A2EE0 000C6880 */  sll        $t5, $t4, 2
/* 148F54 801A2EE4 002D0821 */  addu       $at, $at, $t5
/* 148F58 801A2EE8 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 148F5C 801A2EEC 8C6E0000 */  lw         $t6, 0x0($v1)
/* 148F60 801A2EF0 3C01801D */  lui        $at, %hi(D_801CDF98_ovl7)
/* 148F64 801A2EF4 C426DF98 */  lwc1       $f6, %lo(D_801CDF98_ovl7)($at)
/* 148F68 801A2EF8 000E7880 */  sll        $t7, $t6, 2
/* 148F6C 801A2EFC 00CF2821 */  addu       $a1, $a2, $t7
/* 148F70 801A2F00 C4A40000 */  lwc1       $f4, 0x0($a1)
/* 148F74 801A2F04 46062200 */  add.s      $f8, $f4, $f6
/* 148F78 801A2F08 E4A80000 */  swc1       $f8, 0x0($a1)
/* 148F7C 801A2F0C 8C620000 */  lw         $v0, 0x0($v1)
/* 148F80 801A2F10 00021080 */  sll        $v0, $v0, 2
/* 148F84 801A2F14 00C2C021 */  addu       $t8, $a2, $v0
/* 148F88 801A2F18 0102C821 */  addu       $t9, $t0, $v0
/* 148F8C 801A2F1C C7300000 */  lwc1       $f16, 0x0($t9)
/* 148F90 801A2F20 C70A0000 */  lwc1       $f10, 0x0($t8)
/* 148F94 801A2F24 00E24821 */  addu       $t1, $a3, $v0
/* 148F98 801A2F28 4610503C */  c.lt.s     $f10, $f16
/* 148F9C 801A2F2C 00000000 */  nop
/* 148FA0 801A2F30 45020030 */  bc1fl      .L801A2FF4_ovl7
/* 148FA4 801A2F34 8FBF0014 */   lw        $ra, 0x14($sp)
/* 148FA8 801A2F38 8D2A0000 */  lw         $t2, 0x0($t1)
/* 148FAC 801A2F3C 3C0C8013 */  lui        $t4, %hi(D_8012BCA0)
/* 148FB0 801A2F40 314B0002 */  andi       $t3, $t2, 0x2
/* 148FB4 801A2F44 5160002B */  beql       $t3, $zero, .L801A2FF4_ovl7
/* 148FB8 801A2F48 8FBF0014 */   lw        $ra, 0x14($sp)
/* 148FBC 801A2F4C 8D8CBCA0 */  lw         $t4, %lo(D_8012BCA0)($t4)
/* 148FC0 801A2F50 3C0F800E */  lui        $t7, %hi(D_800E6150)
/* 148FC4 801A2F54 01E27821 */  addu       $t7, $t7, $v0
/* 148FC8 801A2F58 000C6CC2 */  srl        $t5, $t4, 19
/* 148FCC 801A2F5C 31AE01C0 */  andi       $t6, $t5, 0x1C0
/* 148FD0 801A2F60 51C00024 */  beql       $t6, $zero, .L801A2FF4_ovl7
/* 148FD4 801A2F64 8FBF0014 */   lw        $ra, 0x14($sp)
/* 148FD8 801A2F68 8DEF6150 */  lw         $t7, %lo(D_800E6150)($t7)
/* 148FDC 801A2F6C 3C01800E */  lui        $at, %hi(D_800E5F90)
/* 148FE0 801A2F70 00220821 */  addu       $at, $at, $v0
/* 148FE4 801A2F74 AC2F5F90 */  sw         $t7, %lo(D_800E5F90)($at)
/* 148FE8 801A2F78 8C620000 */  lw         $v0, 0x0($v1)
/* 148FEC 801A2F7C 3C01800E */  lui        $at, %hi(D_800E6D90)
/* 148FF0 801A2F80 00021080 */  sll        $v0, $v0, 2
/* 148FF4 801A2F84 00220821 */  addu       $at, $at, $v0
/* 148FF8 801A2F88 C4326D90 */  lwc1       $f18, %lo(D_800E6D90)($at)
/* 148FFC 801A2F8C 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 149000 801A2F90 00220821 */  addu       $at, $at, $v0
/* 149004 801A2F94 E4326BD0 */  swc1       $f18, %lo(D_800E6BD0)($at)
/* 149008 801A2F98 8C620000 */  lw         $v0, 0x0($v1)
/* 14900C 801A2F9C 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* 149010 801A2FA0 00021080 */  sll        $v0, $v0, 2
/* 149014 801A2FA4 00220821 */  addu       $at, $at, $v0
/* 149018 801A2FA8 C4242B10 */  lwc1       $f4, %lo(gEntitiesPosXArray)($at)
/* 14901C 801A2FAC 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 149020 801A2FB0 00220821 */  addu       $at, $at, $v0
/* 149024 801A2FB4 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 149028 801A2FB8 8C620000 */  lw         $v0, 0x0($v1)
/* 14902C 801A2FBC 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
/* 149030 801A2FC0 00021080 */  sll        $v0, $v0, 2
/* 149034 801A2FC4 0102C021 */  addu       $t8, $t0, $v0
/* 149038 801A2FC8 C7060000 */  lwc1       $f6, 0x0($t8)
/* 14903C 801A2FCC 00C2C821 */  addu       $t9, $a2, $v0
/* 149040 801A2FD0 E7260000 */  swc1       $f6, 0x0($t9)
/* 149044 801A2FD4 8C620000 */  lw         $v0, 0x0($v1)
/* 149048 801A2FD8 00021080 */  sll        $v0, $v0, 2
/* 14904C 801A2FDC 00220821 */  addu       $at, $at, $v0
/* 149050 801A2FE0 C4282E90 */  lwc1       $f8, %lo(gEntitiesPosZArray)($at)
/* 149054 801A2FE4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 149058 801A2FE8 00220821 */  addu       $at, $at, $v0
/* 14905C 801A2FEC E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
.L801A2FF0_ovl7:
/* 149060 801A2FF0 8FBF0014 */  lw         $ra, 0x14($sp)
.L801A2FF4_ovl7:
/* 149064 801A2FF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 149068 801A2FF8 03E00008 */  jr         $ra
/* 14906C 801A2FFC 00000000 */   nop
