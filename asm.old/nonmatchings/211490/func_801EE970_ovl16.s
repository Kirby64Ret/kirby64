glabel func_801EE970_ovl16
/* 224C20 801EE970 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 224C24 801EE974 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 224C28 801EE978 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 224C2C 801EE97C AFBF001C */  sw         $ra, 0x1C($sp)
/* 224C30 801EE980 AFA40068 */  sw         $a0, 0x68($sp)
.L801EE984_ovl9:
/* 224C34 801EE984 8DC80000 */  lw         $t0, 0x0($t6)
/* 224C38 801EE988 3C0F800E */  lui        $t7, %hi(D_800E1B50)
/* 224C3C 801EE98C 3C18800D */  lui        $t8, %hi(D_800D7098 + 0x10)
glabel func_801EE990_ovl10
/* 224C40 801EE990 00084080 */  sll        $t0, $t0, 2
/* 224C44 801EE994 8F1870A8 */  lw         $t8, %lo(D_800D7098 + 0x10)($t8)
/* 224C48 801EE998 01E87821 */  addu       $t7, $t7, $t0
/* 224C4C 801EE99C 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
/* 224C50 801EE9A0 3C0D800F */  lui        $t5, %hi(D_800E9C60)
/* 224C54 801EE9A4 1300011A */  beqz       $t8, .L801EEE10_ovl16
/* 224C58 801EE9A8 AFAF0064 */   sw        $t7, 0x64($sp)
/* 224C5C 801EE9AC 3C19800F */  lui        $t9, %hi(D_800E9E20)
/* 224C60 801EE9B0 0328C821 */  addu       $t9, $t9, $t0
/* 224C64 801EE9B4 8F399E20 */  lw         $t9, %lo(D_800E9E20)($t9)
/* 224C68 801EE9B8 3C09800E */  lui        $t1, %hi(D_800E0D50)
/* 224C6C 801EE9BC 01284821 */  addu       $t1, $t1, $t0
/* 224C70 801EE9C0 13200025 */  beqz       $t9, .L801EEA58_ovl16
/* 224C74 801EE9C4 3C0B800E */   lui       $t3, %hi(D_800DFBD0)
/* 224C78 801EE9C8 3C0C800F */  lui        $t4, %hi(D_800E98E0)
/* 224C7C 801EE9CC 01886021 */  addu       $t4, $t4, $t0
/* 224C80 801EE9D0 8D8C98E0 */  lw         $t4, %lo(D_800E98E0)($t4)
/* 224C84 801EE9D4 8D290D50 */  lw         $t1, %lo(D_800E0D50)($t1)
/* 224C88 801EE9D8 3C0E801F */  lui        $t6, %hi(func_801EFDAC_ovl9 + 0x34)
/* 224C8C 801EE9DC 000C6880 */  sll        $t5, $t4, 2
/* 224C90 801EE9E0 01CD7021 */  addu       $t6, $t6, $t5
/* 224C94 801EE9E4 00095080 */  sll        $t2, $t1, 2
/* 224C98 801EE9E8 8DCEFDE0 */  lw         $t6, %lo(func_801EFDAC_ovl9 + 0x34)($t6)
/* 224C9C 801EE9EC 016A5821 */  addu       $t3, $t3, $t2
/* 224CA0 801EE9F0 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
/* 224CA4 801EE9F4 000E7880 */  sll        $t7, $t6, 2
/* 224CA8 801EE9F8 27A40058 */  addiu      $a0, $sp, 0x58
/* 224CAC 801EE9FC 016FC021 */  addu       $t8, $t3, $t7
/* 224CB0 801EEA00 0C0291E5 */  jal        func_800A4794
/* 224CB4 801EEA04 8F050000 */   lw        $a1, 0x0($t8)
/* 224CB8 801EEA08 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 224CBC 801EEA0C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 224CC0 801EEA10 C7A40058 */  lwc1       $f4, 0x58($sp)
.L801EEA14_ovl9:
/* 224CC4 801EEA14 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 224CC8 801EEA18 8C790000 */  lw         $t9, 0x0($v1)
/* 224CCC 801EEA1C C7A6005C */  lwc1       $f6, 0x5C($sp)
/* 224CD0 801EEA20 C7A80060 */  lwc1       $f8, 0x60($sp)
/* 224CD4 801EEA24 00194880 */  sll        $t1, $t9, 2
.L801EEA28_ovl10:
/* 224CD8 801EEA28 00290821 */  addu       $at, $at, $t1
.L801EEA2C_ovl9:
/* 224CDC 801EEA2C E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 224CE0 801EEA30 8C6A0000 */  lw         $t2, 0x0($v1)
/* 224CE4 801EEA34 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 224CE8 801EEA38 000A6080 */  sll        $t4, $t2, 2
/* 224CEC 801EEA3C 002C0821 */  addu       $at, $at, $t4
/* 224CF0 801EEA40 E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 224CF4 801EEA44 8C6D0000 */  lw         $t5, 0x0($v1)
/* 224CF8 801EEA48 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 224CFC 801EEA4C 000D7080 */  sll        $t6, $t5, 2
/* 224D00 801EEA50 002E0821 */  addu       $at, $at, $t6
/* 224D04 801EEA54 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
.L801EEA58_ovl16:
/* 224D08 801EEA58 0C07BC69 */  jal        func_801EF1A4_ovl16
/* 224D0C 801EEA5C 2404000F */   addiu     $a0, $zero, 0xF
/* 224D10 801EEA60 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 224D14 801EEA64 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 224D18 801EEA68 3C0F800F */  lui        $t7, %hi(D_800E9AA0)
/* 224D1C 801EEA6C 24010001 */  addiu      $at, $zero, 0x1
.L801EEA70_ovl10:
/* 224D20 801EEA70 8D680000 */  lw         $t0, 0x0($t3)
/* 224D24 801EEA74 3C0A800E */  lui        $t2, %hi(D_800E1B50)
/* 224D28 801EEA78 3C19800E */  lui        $t9, %hi(D_800E1B50)
/* 224D2C 801EEA7C 00084080 */  sll        $t0, $t0, 2
.L801EEA80_ovl10:
/* 224D30 801EEA80 01E87821 */  addu       $t7, $t7, $t0
/* 224D34 801EEA84 8DEF9AA0 */  lw         $t7, %lo(D_800E9AA0)($t7)
/* 224D38 801EEA88 01485021 */  addu       $t2, $t2, $t0
/* 224D3C 801EEA8C 0328C821 */  addu       $t9, $t9, $t0
/* 224D40 801EEA90 15E10005 */  bne        $t7, $at, .L801EEAA8_ovl16
/* 224D44 801EEA94 3C18801E */   lui       $t8, %hi(func_801DA498_ovl9 + 0x7C)
/* 224D48 801EEA98 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
/* 224D4C 801EEA9C 2718A514 */  addiu      $t8, $t8, %lo(func_801DA498_ovl9 + 0x7C)
/* 224D50 801EEAA0 10000005 */  b          .L801EEAB8_ovl16
/* 224D54 801EEAA4 AF38008C */   sw        $t8, 0x8C($t9)
.L801EEAA8_ovl16:
/* 224D58 801EEAA8 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
/* 224D5C 801EEAAC 3C09801E */  lui        $t1, %hi(func_801DA498_ovl9 + 0x58)
/* 224D60 801EEAB0 2529A4F0 */  addiu      $t1, $t1, %lo(func_801DA498_ovl9 + 0x58)
/* 224D64 801EEAB4 AD49008C */  sw         $t1, 0x8C($t2)
.L801EEAB8_ovl16:
/* 224D68 801EEAB8 0C0680ED */  jal        func_801A03B4_ovl7
/* 224D6C 801EEABC 00000000 */   nop
/* 224D70 801EEAC0 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 224D74 801EEAC4 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 224D78 801EEAC8 3C0D800F */  lui        $t5, %hi(D_800E9FE0)
/* 224D7C 801EEACC 25AD9FE0 */  addiu      $t5, $t5, %lo(D_800E9FE0)
/* 224D80 801EEAD0 8D880000 */  lw         $t0, 0x0($t4)
/* 224D84 801EEAD4 3C02800E */  lui        $v0, %hi(gEntitiesNextPosXArray)
/* 224D88 801EEAD8 244225D0 */  addiu      $v0, $v0, %lo(gEntitiesNextPosXArray)
/* 224D8C 801EEADC 00084080 */  sll        $t0, $t0, 2
/* 224D90 801EEAE0 010D2021 */  addu       $a0, $t0, $t5
/* 224D94 801EEAE4 8C830000 */  lw         $v1, 0x0($a0)
.L801EEAE8_ovl9:
/* 224D98 801EEAE8 00487021 */  addu       $t6, $v0, $t0
/* 224D9C 801EEAEC 3C05800D */  lui        $a1, %hi(D_800D7098 + 0x34)
/* 224DA0 801EEAF0 146000C3 */  bnez       $v1, .L801EEE00_ovl16
/* 224DA4 801EEAF4 00000000 */   nop
/* 224DA8 801EEAF8 8CA570CC */  lw         $a1, %lo(D_800D7098 + 0x34)($a1)
/* 224DAC 801EEAFC 3C03800E */  lui        $v1, %hi(gEntitiesNextPosYArray)
/* 224DB0 801EEB00 C5CA0000 */  lwc1       $f10, 0x0($t6)
/* 224DB4 801EEB04 00052880 */  sll        $a1, $a1, 2
/* 224DB8 801EEB08 00455821 */  addu       $t3, $v0, $a1
/* 224DBC 801EEB0C C5700000 */  lwc1       $f16, 0x0($t3)
/* 224DC0 801EEB10 24632790 */  addiu      $v1, $v1, %lo(gEntitiesNextPosYArray)
/* 224DC4 801EEB14 00687821 */  addu       $t7, $v1, $t0
/* 224DC8 801EEB18 0065C021 */  addu       $t8, $v1, $a1
/* 224DCC 801EEB1C 46105001 */  sub.s      $f0, $f10, $f16
.L801EEB20_ovl10:
/* 224DD0 801EEB20 C7040000 */  lwc1       $f4, 0x0($t8)
/* 224DD4 801EEB24 C5F20000 */  lwc1       $f18, 0x0($t7)
/* 224DD8 801EEB28 46000182 */  mul.s      $f6, $f0, $f0
/* 224DDC 801EEB2C 46049081 */  sub.s      $f2, $f18, $f4
glabel func_801EEB30_ovl10
/* 224DE0 801EEB30 46021202 */  mul.s      $f8, $f2, $f2
.L801EEB34_ovl9:
/* 224DE4 801EEB34 0C00CAC8 */  jal        sqrtf
/* 224DE8 801EEB38 46083300 */   add.s     $f12, $f6, $f8
/* 224DEC 801EEB3C 3C014250 */  lui        $at, (0x42500000 >> 16)
/* 224DF0 801EEB40 44815000 */  mtc1       $at, $f10
/* 224DF4 801EEB44 3C19800D */  lui        $t9, %hi(D_800D7098 + 0x34)
/* 224DF8 801EEB48 460A003C */  c.lt.s     $f0, $f10
/* 224DFC 801EEB4C 00000000 */  nop
/* 224E00 801EEB50 450200F5 */  bc1fl      .L801EEF28_ovl16
/* 224E04 801EEB54 8FBF001C */   lw        $ra, 0x1C($sp)
/* 224E08 801EEB58 8F3970CC */  lw         $t9, %lo(D_800D7098 + 0x34)($t9)
/* 224E0C 801EEB5C 3C0A800F */  lui        $t2, %hi(D_800E9AA0)
/* 224E10 801EEB60 24040036 */  addiu      $a0, $zero, 0x36
/* 224E14 801EEB64 00194880 */  sll        $t1, $t9, 2
/* 224E18 801EEB68 01495021 */  addu       $t2, $t2, $t1
.L801EEB6C_ovl10:
/* 224E1C 801EEB6C 8D4A9AA0 */  lw         $t2, %lo(D_800E9AA0)($t2)
/* 224E20 801EEB70 15400015 */  bnez       $t2, .L801EEBC8_ovl16
.L801EEB74_ovl9:
/* 224E24 801EEB74 00000000 */   nop
/* 224E28 801EEB78 0C06B30D */  jal        func_801ACC34_ovl7
/* 224E2C 801EEB7C 24050003 */   addiu     $a1, $zero, 0x3
/* 224E30 801EEB80 10400011 */  beqz       $v0, .L801EEBC8_ovl16
/* 224E34 801EEB84 24060001 */   addiu     $a2, $zero, 0x1
/* 224E38 801EEB88 00022080 */  sll        $a0, $v0, 2
/* 224E3C 801EEB8C 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 224E40 801EEB90 00240821 */  addu       $at, $at, $a0
/* 224E44 801EEB94 3C03800D */  lui        $v1, %hi(D_800D7098 + 0x34)
/* 224E48 801EEB98 8C6370CC */  lw         $v1, %lo(D_800D7098 + 0x34)($v1)
/* 224E4C 801EEB9C AC268E60 */  sw         $a2, %lo(D_800E8E60)($at)
/* 224E50 801EEBA0 3C01800E */  lui        $at, %hi(D_800E0D50)
/* 224E54 801EEBA4 00240821 */  addu       $at, $at, $a0
/* 224E58 801EEBA8 AC230D50 */  sw         $v1, %lo(D_800E0D50)($at)
/* 224E5C 801EEBAC 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 224E60 801EEBB0 00032880 */  sll        $a1, $v1, 2
/* 224E64 801EEBB4 00250821 */  addu       $at, $at, $a1
/* 224E68 801EEBB8 AC269AA0 */  sw         $a2, %lo(D_800E9AA0)($at)
/* 224E6C 801EEBBC 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 224E70 801EEBC0 00250821 */  addu       $at, $at, $a1
/* 224E74 801EEBC4 AC229C60 */  sw         $v0, %lo(D_800E9C60)($at)
.L801EEBC8_ovl16:
/* 224E78 801EEBC8 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 224E7C 801EEBCC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
.L801EEBD0_ovl10:
/* 224E80 801EEBD0 3C05800D */  lui        $a1, %hi(D_800D7098 + 0x34)
/* 224E84 801EEBD4 8CA570CC */  lw         $a1, %lo(D_800D7098 + 0x34)($a1)
/* 224E88 801EEBD8 8C6C0000 */  lw         $t4, 0x0($v1)
/* 224E8C 801EEBDC 3C02800E */  lui        $v0, %hi(gEntitiesNextPosXArray)
/* 224E90 801EEBE0 244225D0 */  addiu      $v0, $v0, %lo(gEntitiesNextPosXArray)
/* 224E94 801EEBE4 00052880 */  sll        $a1, $a1, 2
/* 224E98 801EEBE8 000C6880 */  sll        $t5, $t4, 2
/* 224E9C 801EEBEC 004D7021 */  addu       $t6, $v0, $t5
/* 224EA0 801EEBF0 00455821 */  addu       $t3, $v0, $a1
/* 224EA4 801EEBF4 C5720000 */  lwc1       $f18, 0x0($t3)
/* 224EA8 801EEBF8 C5D00000 */  lwc1       $f16, 0x0($t6)
/* 224EAC 801EEBFC 3C06800E */  lui        $a2, %hi(gEntitiesNextPosYArray)
/* 224EB0 801EEC00 24C62790 */  addiu      $a2, $a2, %lo(gEntitiesNextPosYArray)
/* 224EB4 801EEC04 46128101 */  sub.s      $f4, $f16, $f18
/* 224EB8 801EEC08 00C54821 */  addu       $t1, $a2, $a1
/* 224EBC 801EEC0C C5280000 */  lwc1       $f8, 0x0($t1)
.L801EEC10_ovl10:
/* 224EC0 801EEC10 44808000 */  mtc1       $zero, $f16
/* 224EC4 801EEC14 E7A4003C */  swc1       $f4, 0x3C($sp)
/* 224EC8 801EEC18 8C6F0000 */  lw         $t7, 0x0($v1)
/* 224ECC 801EEC1C 27A4003C */  addiu      $a0, $sp, 0x3C
/* 224ED0 801EEC20 000FC080 */  sll        $t8, $t7, 2
/* 224ED4 801EEC24 00D8C821 */  addu       $t9, $a2, $t8
glabel func_801EEC28_ovl9
/* 224ED8 801EEC28 C7260000 */  lwc1       $f6, 0x0($t9)
/* 224EDC 801EEC2C E7B00044 */  swc1       $f16, 0x44($sp)
/* 224EE0 801EEC30 46083281 */  sub.s      $f10, $f6, $f8
/* 224EE4 801EEC34 0C006328 */  jal        lbvector_Normalize
/* 224EE8 801EEC38 E7AA0040 */   swc1      $f10, 0x40($sp)
/* 224EEC 801EEC3C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 224EF0 801EEC40 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 224EF4 801EEC44 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 224EF8 801EEC48 27A40030 */  addiu      $a0, $sp, 0x30
/* 224EFC 801EEC4C 8C680000 */  lw         $t0, 0x0($v1)
/* 224F00 801EEC50 00084080 */  sll        $t0, $t0, 2
.L801EEC54_ovl10:
/* 224F04 801EEC54 00280821 */  addu       $at, $at, $t0
/* 224F08 801EEC58 C43225D0 */  lwc1       $f18, %lo(gEntitiesNextPosXArray)($at)
/* 224F0C 801EEC5C 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* 224F10 801EEC60 00280821 */  addu       $at, $at, $t0
/* 224F14 801EEC64 C4242B10 */  lwc1       $f4, %lo(gEntitiesPosXArray)($at)
/* 224F18 801EEC68 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 224F1C 801EEC6C 46049181 */  sub.s      $f6, $f18, $f4
/* 224F20 801EEC70 44809000 */  mtc1       $zero, $f18
/* 224F24 801EEC74 E7A60030 */  swc1       $f6, 0x30($sp)
.L801EEC78_ovl10:
/* 224F28 801EEC78 8C680000 */  lw         $t0, 0x0($v1)
/* 224F2C 801EEC7C E7B20038 */  swc1       $f18, 0x38($sp)
/* 224F30 801EEC80 00084080 */  sll        $t0, $t0, 2
/* 224F34 801EEC84 00280821 */  addu       $at, $at, $t0
/* 224F38 801EEC88 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* 224F3C 801EEC8C 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
/* 224F40 801EEC90 00280821 */  addu       $at, $at, $t0
/* 224F44 801EEC94 C42A2CD0 */  lwc1       $f10, %lo(gEntitiesPosYArray)($at)
/* 224F48 801EEC98 460A4401 */  sub.s      $f16, $f8, $f10
/* 224F4C 801EEC9C 0C006328 */  jal        lbvector_Normalize
/* 224F50 801EECA0 E7B00034 */   swc1      $f16, 0x34($sp)
/* 224F54 801EECA4 27A40030 */  addiu      $a0, $sp, 0x30
/* 224F58 801EECA8 0C006576 */  jal        func_800195D8
/* 224F5C 801EECAC 27A5003C */   addiu     $a1, $sp, 0x3C
/* 224F60 801EECB0 C7AC0030 */  lwc1       $f12, 0x30($sp)
.L801EECB4_ovl10:
/* 224F64 801EECB4 C7AE0034 */  lwc1       $f14, 0x34($sp)
/* 224F68 801EECB8 0C0061C3 */  jal        atan2f
/* 224F6C 801EECBC 46006307 */   neg.s     $f12, $f12
/* 224F70 801EECC0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 224F74 801EECC4 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 224F78 801EECC8 3C04800F */  lui        $a0, %hi(D_800EA6E0)
/* 224F7C 801EECCC 2484A6E0 */  addiu      $a0, $a0, %lo(D_800EA6E0)
/* 224F80 801EECD0 8C6A0000 */  lw         $t2, 0x0($v1)
/* 224F84 801EECD4 3C01801F */  lui        $at, %hi(D_801F0110_ovl16)
/* 224F88 801EECD8 C4220110 */  lwc1       $f2, %lo(D_801F0110_ovl16)($at)
/* 224F8C 801EECDC 000A6080 */  sll        $t4, $t2, 2
/* 224F90 801EECE0 008C6821 */  addu       $t5, $a0, $t4
/* 224F94 801EECE4 E5A00000 */  swc1       $f0, 0x0($t5)
/* 224F98 801EECE8 8C6E0000 */  lw         $t6, 0x0($v1)
/* 224F9C 801EECEC 3C01801F */  lui        $at, %hi(D_801F0114_ovl16)
/* 224FA0 801EECF0 000E5880 */  sll        $t3, $t6, 2
/* 224FA4 801EECF4 008B1021 */  addu       $v0, $a0, $t3
/* 224FA8 801EECF8 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 224FAC 801EECFC 460C103C */  c.lt.s     $f2, $f12
/* 224FB0 801EED00 00000000 */  nop
/* 224FB4 801EED04 4500000B */  bc1f       .L801EED34_ovl16
/* 224FB8 801EED08 00000000 */   nop
/* 224FBC 801EED0C 46026101 */  sub.s      $f4, $f12, $f2
.L801EED10_ovl16:
/* 224FC0 801EED10 E4440000 */  swc1       $f4, 0x0($v0)
/* 224FC4 801EED14 8C6F0000 */  lw         $t7, 0x0($v1)
/* 224FC8 801EED18 000FC080 */  sll        $t8, $t7, 2
/* 224FCC 801EED1C 00981021 */  addu       $v0, $a0, $t8
/* 224FD0 801EED20 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 224FD4 801EED24 460C103C */  c.lt.s     $f2, $f12
/* 224FD8 801EED28 00000000 */  nop
/* 224FDC 801EED2C 4503FFF8 */  bc1tl      .L801EED10_ovl16
/* 224FE0 801EED30 46026101 */   sub.s     $f4, $f12, $f2
.L801EED34_ovl16:
/* 224FE4 801EED34 C4200114 */  lwc1       $f0, %lo(D_801F0114_ovl16)($at)
/* 224FE8 801EED38 4600603C */  c.lt.s     $f12, $f0
/* 224FEC 801EED3C 00000000 */  nop
/* 224FF0 801EED40 4500000B */  bc1f       .L801EED70_ovl16
/* 224FF4 801EED44 00000000 */   nop
/* 224FF8 801EED48 46026180 */  add.s      $f6, $f12, $f2
.L801EED4C_ovl16:
/* 224FFC 801EED4C E4460000 */  swc1       $f6, 0x0($v0)
/* 225000 801EED50 8C790000 */  lw         $t9, 0x0($v1)
/* 225004 801EED54 00194880 */  sll        $t1, $t9, 2
/* 225008 801EED58 00891021 */  addu       $v0, $a0, $t1
/* 22500C 801EED5C C44C0000 */  lwc1       $f12, 0x0($v0)
/* 225010 801EED60 4600603C */  c.lt.s     $f12, $f0
/* 225014 801EED64 00000000 */  nop
/* 225018 801EED68 4503FFF8 */  bc1tl      .L801EED4C_ovl16
/* 22501C 801EED6C 46026180 */   add.s     $f6, $f12, $f2
.L801EED70_ovl16:
/* 225020 801EED70 0C00B5B8 */  jal        sinf
/* 225024 801EED74 00000000 */   nop
/* 225028 801EED78 3C01C080 */  lui        $at, (0xC0800000 >> 16)
/* 22502C 801EED7C 44814000 */  mtc1       $at, $f8
.L801EED80_ovl9:
/* 225030 801EED80 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 225034 801EED84 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 225038 801EED88 46080282 */  mul.s      $f10, $f0, $f8
.L801EED8C_ovl9:
/* 22503C 801EED8C 3C01800E */  lui        $at, %hi(D_800E3050)
/* 225040 801EED90 8C6A0000 */  lw         $t2, 0x0($v1)
/* 225044 801EED94 3C04800F */  lui        $a0, %hi(D_800EA6E0)
/* 225048 801EED98 2484A6E0 */  addiu      $a0, $a0, %lo(D_800EA6E0)
/* 22504C 801EED9C 000A6080 */  sll        $t4, $t2, 2
/* 225050 801EEDA0 002C0821 */  addu       $at, $at, $t4
/* 225054 801EEDA4 E42A3050 */  swc1       $f10, %lo(D_800E3050)($at)
/* 225058 801EEDA8 8C6D0000 */  lw         $t5, 0x0($v1)
/* 22505C 801EEDAC 000D7080 */  sll        $t6, $t5, 2
/* 225060 801EEDB0 008E5821 */  addu       $t3, $a0, $t6
/* 225064 801EEDB4 0C00D604 */  jal        cosf
/* 225068 801EEDB8 C56C0000 */   lwc1      $f12, 0x0($t3)
/* 22506C 801EEDBC 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 225070 801EEDC0 44818000 */  mtc1       $at, $f16
/* 225074 801EEDC4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 225078 801EEDC8 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 22507C 801EEDCC 46100482 */  mul.s      $f18, $f0, $f16
/* 225080 801EEDD0 3C01800E */  lui        $at, %hi(D_800E3210)
/* 225084 801EEDD4 8C6F0000 */  lw         $t7, 0x0($v1)
/* 225088 801EEDD8 2419000A */  addiu      $t9, $zero, 0xA
/* 22508C 801EEDDC 000FC080 */  sll        $t8, $t7, 2
/* 225090 801EEDE0 00380821 */  addu       $at, $at, $t8
/* 225094 801EEDE4 E4323210 */  swc1       $f18, %lo(D_800E3210)($at)
/* 225098 801EEDE8 8C690000 */  lw         $t1, 0x0($v1)
/* 22509C 801EEDEC 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 2250A0 801EEDF0 00095080 */  sll        $t2, $t1, 2
/* 2250A4 801EEDF4 002A0821 */  addu       $at, $at, $t2
/* 2250A8 801EEDF8 1000004A */  b          .L801EEF24_ovl16
/* 2250AC 801EEDFC AC399FE0 */   sw        $t9, %lo(D_800E9FE0)($at)
.L801EEE00_ovl16:
/* 2250B0 801EEE00 18600048 */  blez       $v1, .L801EEF24_ovl16
/* 2250B4 801EEE04 246CFFFF */   addiu     $t4, $v1, -0x1
/* 2250B8 801EEE08 10000046 */  b          .L801EEF24_ovl16
/* 2250BC 801EEE0C AC8C0000 */   sw        $t4, 0x0($a0)
.L801EEE10_ovl16:
/* 2250C0 801EEE10 01A86821 */  addu       $t5, $t5, $t0
/* 2250C4 801EEE14 8DAD9C60 */  lw         $t5, %lo(D_800E9C60)($t5)
/* 2250C8 801EEE18 24040006 */  addiu      $a0, $zero, 0x6
/* 2250CC 801EEE1C 24050002 */  addiu      $a1, $zero, 0x2
/* 2250D0 801EEE20 11A00011 */  beqz       $t5, .L801EEE68_ovl16
.L801EEE24_ovl10:
/* 2250D4 801EEE24 24060017 */   addiu     $a2, $zero, 0x17
/* 2250D8 801EEE28 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
.L801EEE2C_ovl10:
/* 2250DC 801EEE2C 00280821 */  addu       $at, $at, $t0
.L801EEE30_ovl10:
/* 2250E0 801EEE30 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
/* 2250E4 801EEE34 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 2250E8 801EEE38 00280821 */  addu       $at, $at, $t0
/* 2250EC 801EEE3C C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
/* 2250F0 801EEE40 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
glabel func_801EEE44_ovl10
/* 2250F4 801EEE44 00E83821 */  addu       $a3, $a3, $t0
/* 2250F8 801EEE48 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 2250FC 801EEE4C E7A40010 */  swc1       $f4, 0x10($sp)
/* 225100 801EEE50 0C029FDD */  jal        func_800A7F74
/* 225104 801EEE54 E7A60014 */   swc1      $f6, 0x14($sp)
/* 225108 801EEE58 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 22510C 801EEE5C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 225110 801EEE60 8DC80000 */  lw         $t0, 0x0($t6)
/* 225114 801EEE64 00084080 */  sll        $t0, $t0, 2
.L801EEE68_ovl16:
/* 225118 801EEE68 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 22511C 801EEE6C 00280821 */  addu       $at, $at, $t0
/* 225120 801EEE70 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* 225124 801EEE74 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 225128 801EEE78 00280821 */  addu       $at, $at, $t0
/* 22512C 801EEE7C C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
/* 225130 801EEE80 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* 225134 801EEE84 00E83821 */  addu       $a3, $a3, $t0
/* 225138 801EEE88 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 22513C 801EEE8C 24040006 */  addiu      $a0, $zero, 0x6
/* 225140 801EEE90 24050002 */  addiu      $a1, $zero, 0x2
/* 225144 801EEE94 24060015 */  addiu      $a2, $zero, 0x15
/* 225148 801EEE98 E7A80010 */  swc1       $f8, 0x10($sp)
/* 22514C 801EEE9C 0C029FDD */  jal        func_800A7F74
/* 225150 801EEEA0 E7AA0014 */   swc1      $f10, 0x14($sp)
/* 225154 801EEEA4 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 225158 801EEEA8 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 22515C 801EEEAC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 225160 801EEEB0 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* 225164 801EEEB4 8D680000 */  lw         $t0, 0x0($t3)
/* 225168 801EEEB8 24040006 */  addiu      $a0, $zero, 0x6
/* 22516C 801EEEBC 24050002 */  addiu      $a1, $zero, 0x2
.L801EEEC0_ovl10:
/* 225170 801EEEC0 00084080 */  sll        $t0, $t0, 2
.L801EEEC4_ovl10:
/* 225174 801EEEC4 00280821 */  addu       $at, $at, $t0
.L801EEEC8_ovl9:
/* 225178 801EEEC8 C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
/* 22517C 801EEECC 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 225180 801EEED0 00280821 */  addu       $at, $at, $t0
glabel func_801EEED4_ovl10
/* 225184 801EEED4 C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
/* 225188 801EEED8 00E83821 */  addu       $a3, $a3, $t0
/* 22518C 801EEEDC 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 225190 801EEEE0 24060016 */  addiu      $a2, $zero, 0x16
/* 225194 801EEEE4 E7B00010 */  swc1       $f16, 0x10($sp)
/* 225198 801EEEE8 0C029FDD */  jal        func_800A7F74
/* 22519C 801EEEEC E7B20014 */   swc1      $f18, 0x14($sp)
/* 2251A0 801EEEF0 8FB80064 */  lw         $t8, 0x64($sp)
/* 2251A4 801EEEF4 240F0001 */  addiu      $t7, $zero, 0x1
/* 2251A8 801EEEF8 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 2251AC 801EEEFC A30F0040 */  sb         $t7, 0x40($t8)
/* 2251B0 801EEF00 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 2251B4 801EEF04 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 2251B8 801EEF08 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
/* 2251BC 801EEF0C 8D390000 */  lw         $t9, 0x0($t1)
/* 2251C0 801EEF10 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
/* 2251C4 801EEF14 00195080 */  sll        $t2, $t9, 2
/* 2251C8 801EEF18 008A2021 */  addu       $a0, $a0, $t2
/* 2251CC 801EEF1C 0C02C7B2 */  jal        assign_new_process_entry
/* 2251D0 801EEF20 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
.L801EEF24_ovl16:
/* 2251D4 801EEF24 8FBF001C */  lw         $ra, 0x1C($sp)
.L801EEF28_ovl16:
/* 2251D8 801EEF28 27BD0068 */  addiu      $sp, $sp, 0x68
/* 2251DC 801EEF2C 03E00008 */  jr         $ra
/* 2251E0 801EEF30 00000000 */   nop
