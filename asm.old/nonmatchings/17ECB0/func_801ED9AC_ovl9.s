glabel func_801ED9AC_ovl9
/* 19B9FC 801ED9AC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 19BA00 801ED9B0 AFBF0034 */  sw         $ra, 0x34($sp)
/* 19BA04 801ED9B4 AFA40038 */  sw         $a0, 0x38($sp)
/* 19BA08 801ED9B8 AFB70030 */  sw         $s7, 0x30($sp)
/* 19BA0C 801ED9BC AFB6002C */  sw         $s6, 0x2C($sp)
/* 19BA10 801ED9C0 AFB50028 */  sw         $s5, 0x28($sp)
.L801ED9C4_ovl16:
/* 19BA14 801ED9C4 AFB40024 */  sw         $s4, 0x24($sp)
/* 19BA18 801ED9C8 AFB30020 */  sw         $s3, 0x20($sp)
/* 19BA1C 801ED9CC AFB2001C */  sw         $s2, 0x1C($sp)
/* 19BA20 801ED9D0 AFB10018 */  sw         $s1, 0x18($sp)
/* 19BA24 801ED9D4 AFB00014 */  sw         $s0, 0x14($sp)
/* 19BA28 801ED9D8 0C07B406 */  jal        func_801ED018_ovl9
/* 19BA2C 801ED9DC 24040004 */   addiu     $a0, $zero, 0x4
/* 19BA30 801ED9E0 10400005 */  beqz       $v0, .L801ED9F8_ovl16
/* 19BA34 801ED9E4 3C178005 */   lui       $s7, %hi(D_8004A7C4)
/* 19BA38 801ED9E8 26F7A7C4 */  addiu      $s7, $s7, %lo(D_8004A7C4)
/* 19BA3C 801ED9EC 8EEE0000 */  lw         $t6, 0x0($s7)
/* 19BA40 801ED9F0 0C067656 */  jal        func_8019D958_ovl7
/* 19BA44 801ED9F4 95C40002 */   lhu       $a0, 0x2($t6)
.L801ED9F8_ovl16:
/* 19BA48 801ED9F8 3C178005 */  lui        $s7, %hi(D_8004A7C4)
/* 19BA4C 801ED9FC 0C068CA0 */  jal        func_801A3280_ovl7
/* 19BA50 801EDA00 26F7A7C4 */   addiu     $s7, $s7, %lo(D_8004A7C4)
/* 19BA54 801EDA04 0C066ED6 */  jal        func_8019BB58_ovl7
/* 19BA58 801EDA08 00000000 */   nop
/* 19BA5C 801EDA0C 8EE50000 */  lw         $a1, 0x0($s7)
/* 19BA60 801EDA10 3C0F800B */  lui        $t7, %hi(func_800B72AC)
/* 19BA64 801EDA14 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 19BA68 801EDA18 8CB80000 */  lw         $t8, 0x0($a1)
/* 19BA6C 801EDA1C 25EF72AC */  addiu      $t7, $t7, %lo(func_800B72AC)
/* 19BA70 801EDA20 00002025 */  or         $a0, $zero, $zero
/* 19BA74 801EDA24 0018C880 */  sll        $t9, $t8, 2
/* 19BA78 801EDA28 00390821 */  addu       $at, $at, $t9
/* 19BA7C 801EDA2C AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
.L801EDA30_ovl16:
/* 19BA80 801EDA30 8CA80000 */  lw         $t0, 0x0($a1)
/* 19BA84 801EDA34 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 19BA88 801EDA38 00084880 */  sll        $t1, $t0, 2
/* 19BA8C 801EDA3C 00290821 */  addu       $at, $at, $t1
/* 19BA90 801EDA40 0C02BEED */  jal        func_800AFBB4
/* 19BA94 801EDA44 AC20DFD0 */   sw        $zero, %lo(D_800DDFD0)($at)
/* 19BA98 801EDA48 3C10800D */  lui        $s0, %hi(D_800D6B10)
/* 19BA9C 801EDA4C 26106B10 */  addiu      $s0, $s0, %lo(D_800D6B10)
/* 19BAA0 801EDA50 0C02BB30 */  jal        func_800AECC0
/* 19BAA4 801EDA54 C60C0000 */   lwc1      $f12, 0x0($s0)
/* 19BAA8 801EDA58 0C02BB48 */  jal        func_800AED20
/* 19BAAC 801EDA5C C60C0000 */   lwc1      $f12, 0x0($s0)
/* 19BAB0 801EDA60 0C02CCFD */  jal        func_800B33F4
.L801EDA64_ovl16:
/* 19BAB4 801EDA64 00000000 */   nop
/* 19BAB8 801EDA68 8EEA0000 */  lw         $t2, 0x0($s7)
/* 19BABC 801EDA6C 3C16800F */  lui        $s6, %hi(D_800E9C60)
/* 19BAC0 801EDA70 26D69C60 */  addiu      $s6, $s6, %lo(D_800E9C60)
/* 19BAC4 801EDA74 8D4B0000 */  lw         $t3, 0x0($t2)
/* 19BAC8 801EDA78 3C15800E */  lui        $s5, %hi(D_800E77A0)
/* 19BACC 801EDA7C 3C14800E */  lui        $s4, %hi(gEntitiesNextPosZArray)
/* 19BAD0 801EDA80 000B6080 */  sll        $t4, $t3, 2
/* 19BAD4 801EDA84 02CC6821 */  addu       $t5, $s6, $t4
/* 19BAD8 801EDA88 3C13800E */  lui        $s3, %hi(gEntitiesNextPosXArray)
/* 19BADC 801EDA8C 3C12800E */  lui        $s2, %hi(D_800E6BD0)
/* 19BAE0 801EDA90 3C11800E */  lui        $s1, %hi(D_800E5F90)
/* 19BAE4 801EDA94 3C10800F */  lui        $s0, %hi(D_800E8E60)
glabel func_801EDA98_ovl10
/* 19BAE8 801EDA98 ADA00000 */  sw         $zero, 0x0($t5)
/* 19BAEC 801EDA9C 26108E60 */  addiu      $s0, $s0, %lo(D_800E8E60)
glabel func_801EDAA0_ovl10
/* 19BAF0 801EDAA0 26315F90 */  addiu      $s1, $s1, %lo(D_800E5F90)
/* 19BAF4 801EDAA4 26526BD0 */  addiu      $s2, $s2, %lo(D_800E6BD0)
/* 19BAF8 801EDAA8 267325D0 */  addiu      $s3, $s3, %lo(gEntitiesNextPosXArray)
/* 19BAFC 801EDAAC 26942950 */  addiu      $s4, $s4, %lo(gEntitiesNextPosZArray)
/* 19BB00 801EDAB0 26B577A0 */  addiu      $s5, $s5, %lo(D_800E77A0)
.L801EDAB4_ovl9:
/* 19BB04 801EDAB4 0C006291 */  jal        random_soft_s32_range
/* 19BB08 801EDAB8 2404000C */   addiu     $a0, $zero, 0xC
/* 19BB0C 801EDABC 0C002DAF */  jal        finish_current_thread
/* 19BB10 801EDAC0 2444000C */   addiu     $a0, $v0, 0xC
/* 19BB14 801EDAC4 8EE50000 */  lw         $a1, 0x0($s7)
/* 19BB18 801EDAC8 8CA20000 */  lw         $v0, 0x0($a1)
/* 19BB1C 801EDACC 00021080 */  sll        $v0, $v0, 2
/* 19BB20 801EDAD0 02C27021 */  addu       $t6, $s6, $v0
/* 19BB24 801EDAD4 8DD80000 */  lw         $t8, 0x0($t6)
/* 19BB28 801EDAD8 1300FFF6 */  beqz       $t8, .L801EDAB4_ovl9
/* 19BB2C 801EDADC 00000000 */   nop
/* 19BB30 801EDAE0 8E2F0000 */  lw         $t7, 0x0($s1)
/* 19BB34 801EDAE4 0222C821 */  addu       $t9, $s1, $v0
/* 19BB38 801EDAE8 AF2F0000 */  sw         $t7, 0x0($t9)
/* 19BB3C 801EDAEC 8CA80000 */  lw         $t0, 0x0($a1)
/* 19BB40 801EDAF0 C6440000 */  lwc1       $f4, 0x0($s2)
/* 19BB44 801EDAF4 00084880 */  sll        $t1, $t0, 2
/* 19BB48 801EDAF8 02495021 */  addu       $t2, $s2, $t1
/* 19BB4C 801EDAFC E5440000 */  swc1       $f4, 0x0($t2)
/* 19BB50 801EDB00 8CAB0000 */  lw         $t3, 0x0($a1)
/* 19BB54 801EDB04 C6660000 */  lwc1       $f6, 0x0($s3)
/* 19BB58 801EDB08 000B6080 */  sll        $t4, $t3, 2
/* 19BB5C 801EDB0C 026C6821 */  addu       $t5, $s3, $t4
/* 19BB60 801EDB10 E5A60000 */  swc1       $f6, 0x0($t5)
/* 19BB64 801EDB14 8CAE0000 */  lw         $t6, 0x0($a1)
/* 19BB68 801EDB18 C6880000 */  lwc1       $f8, 0x0($s4)
/* 19BB6C 801EDB1C 000EC080 */  sll        $t8, $t6, 2
/* 19BB70 801EDB20 02987821 */  addu       $t7, $s4, $t8
/* 19BB74 801EDB24 E5E80000 */  swc1       $f8, 0x0($t7)
/* 19BB78 801EDB28 8CB90000 */  lw         $t9, 0x0($a1)
/* 19BB7C 801EDB2C 00194040 */  sll        $t0, $t9, 1
/* 19BB80 801EDB30 02A84821 */  addu       $t1, $s5, $t0
/* 19BB84 801EDB34 952A0000 */  lhu        $t2, 0x0($t1)
/* 19BB88 801EDB38 254BFFBE */  addiu      $t3, $t2, -0x42
/* 19BB8C 801EDB3C 2D610029 */  sltiu      $at, $t3, 0x29
/* 19BB90 801EDB40 1020FFDC */  beqz       $at, .L801EDAB4_ovl9
/* 19BB94 801EDB44 00000000 */   nop
/* 19BB98 801EDB48 000B5880 */  sll        $t3, $t3, 2
/* 19BB9C 801EDB4C 3C018022 */  lui        $at, %hi(jtbl_8021D3CC_ovl9)
/* 19BBA0 801EDB50 002B0821 */  addu       $at, $at, $t3
/* 19BBA4 801EDB54 8C2BD3CC */  lw         $t3, %lo(jtbl_8021D3CC_ovl9)($at)
/* 19BBA8 801EDB58 01600008 */  jr         $t3
/* 19BBAC 801EDB5C 00000000 */   nop
/* 19BBB0 801EDB60 2404005F */  addiu      $a0, $zero, 0x5F
.L801EDB64_ovl16:
/* 19BBB4 801EDB64 0C06775E */  jal        func_8019DD78_ovl7
/* 19BBB8 801EDB68 2405000D */   addiu     $a1, $zero, 0xD
/* 19BBBC 801EDB6C 00026080 */  sll        $t4, $v0, 2
/* 19BBC0 801EDB70 020C6821 */  addu       $t5, $s0, $t4
/* 19BBC4 801EDB74 1000FFCF */  b          .L801EDAB4_ovl9
/* 19BBC8 801EDB78 ADA00000 */   sw        $zero, 0x0($t5)
/* 19BBCC 801EDB7C 24040066 */  addiu      $a0, $zero, 0x66
.L801EDB80_ovl16:
/* 19BBD0 801EDB80 0C06775E */  jal        func_8019DD78_ovl7
/* 19BBD4 801EDB84 2405000D */   addiu     $a1, $zero, 0xD
/* 19BBD8 801EDB88 00027080 */  sll        $t6, $v0, 2
/* 19BBDC 801EDB8C 020EC021 */  addu       $t8, $s0, $t6
.L801EDB90_ovl16:
/* 19BBE0 801EDB90 1000FFC8 */  b          .L801EDAB4_ovl9
/* 19BBE4 801EDB94 AF000000 */   sw        $zero, 0x0($t8)
/* 19BBE8 801EDB98 2404006A */  addiu      $a0, $zero, 0x6A
/* 19BBEC 801EDB9C 0C06775E */  jal        func_8019DD78_ovl7
/* 19BBF0 801EDBA0 2405000D */   addiu     $a1, $zero, 0xD
/* 19BBF4 801EDBA4 00027880 */  sll        $t7, $v0, 2
.L801EDBA8_ovl16:
/* 19BBF8 801EDBA8 020FC821 */  addu       $t9, $s0, $t7
.L801EDBAC_ovl16:
/* 19BBFC 801EDBAC 1000FFC1 */  b          .L801EDAB4_ovl9
/* 19BC00 801EDBB0 AF200000 */   sw        $zero, 0x0($t9)
/* 19BC04 801EDBB4 00000000 */  nop
/* 19BC08 801EDBB8 00000000 */  nop
/* 19BC0C 801EDBBC 00000000 */  nop
/* 19BC10 801EDBC0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 19BC14 801EDBC4 8FB00014 */  lw         $s0, 0x14($sp)
/* 19BC18 801EDBC8 8FB10018 */  lw         $s1, 0x18($sp)
/* 19BC1C 801EDBCC 8FB2001C */  lw         $s2, 0x1C($sp)
/* 19BC20 801EDBD0 8FB30020 */  lw         $s3, 0x20($sp)
/* 19BC24 801EDBD4 8FB40024 */  lw         $s4, 0x24($sp)
/* 19BC28 801EDBD8 8FB50028 */  lw         $s5, 0x28($sp)
/* 19BC2C 801EDBDC 8FB6002C */  lw         $s6, 0x2C($sp)
/* 19BC30 801EDBE0 8FB70030 */  lw         $s7, 0x30($sp)
/* 19BC34 801EDBE4 03E00008 */  jr         $ra
/* 19BC38 801EDBE8 27BD0038 */   addiu     $sp, $sp, 0x38
