glabel func_801D1F30_ovl9
/* 17FF80 801D1F30 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 17FF84 801D1F34 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 17FF88 801D1F38 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 17FF8C 801D1F3C AFBF003C */  sw         $ra, 0x3C($sp)
/* 17FF90 801D1F40 AFBE0038 */  sw         $fp, 0x38($sp)
/* 17FF94 801D1F44 AFB70034 */  sw         $s7, 0x34($sp)
/* 17FF98 801D1F48 AFB60030 */  sw         $s6, 0x30($sp)
/* 17FF9C 801D1F4C AFB5002C */  sw         $s5, 0x2C($sp)
/* 17FFA0 801D1F50 AFB40028 */  sw         $s4, 0x28($sp)
/* 17FFA4 801D1F54 AFB30024 */  sw         $s3, 0x24($sp)
/* 17FFA8 801D1F58 AFB20020 */  sw         $s2, 0x20($sp)
/* 17FFAC 801D1F5C AFB1001C */  sw         $s1, 0x1C($sp)
/* 17FFB0 801D1F60 AFB00018 */  sw         $s0, 0x18($sp)
/* 17FFB4 801D1F64 8CA30000 */  lw         $v1, 0x0($a1)
/* 17FFB8 801D1F68 3C12800F */  lui        $s2, %hi(D_800E9AA0)
/* 17FFBC 801D1F6C 26529AA0 */  addiu      $s2, $s2, %lo(D_800E9AA0)
/* 17FFC0 801D1F70 00031880 */  sll        $v1, $v1, 2
/* 17FFC4 801D1F74 02437021 */  addu       $t6, $s2, $v1
/* 17FFC8 801D1F78 8DCF0000 */  lw         $t7, 0x0($t6)
/* 17FFCC 801D1F7C 24010001 */  addiu      $at, $zero, 0x1
/* 17FFD0 801D1F80 00808025 */  or         $s0, $a0, $zero
/* 17FFD4 801D1F84 15E10007 */  bne        $t7, $at, .L801D1FA4_ovl9
/* 17FFD8 801D1F88 00000000 */   nop
/* 17FFDC 801D1F8C 0C0743FD */  jal        func_801D0FF4_ovl9
/* 17FFE0 801D1F90 00002825 */   or        $a1, $zero, $zero
.L801D1F94_ovl8:
/* 17FFE4 801D1F94 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 17FFE8 801D1F98 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 17FFEC 801D1F9C 8CA30000 */  lw         $v1, 0x0($a1)
/* 17FFF0 801D1FA0 00031880 */  sll        $v1, $v1, 2
.L801D1FA4_ovl9:
/* 17FFF4 801D1FA4 3C18800B */  lui        $t8, %hi(func_800B6A2C)
/* 17FFF8 801D1FA8 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 17FFFC 801D1FAC 00230821 */  addu       $at, $at, $v1
/* 180000 801D1FB0 27186A2C */  addiu      $t8, $t8, %lo(func_800B6A2C)
/* 180004 801D1FB4 AC38EF90 */  sw         $t8, %lo(D_800DEF90)($at)
.L801D1FB8_ovl8:
/* 180008 801D1FB8 8CA80000 */  lw         $t0, 0x0($a1)
/* 18000C 801D1FBC 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 180010 801D1FC0 24190003 */  addiu      $t9, $zero, 0x3
/* 180014 801D1FC4 00084880 */  sll        $t1, $t0, 2
/* 180018 801D1FC8 00290821 */  addu       $at, $at, $t1
/* 18001C 801D1FCC AC39DFD0 */  sw         $t9, %lo(D_800DDFD0)($at)
/* 180020 801D1FD0 8CAB0000 */  lw         $t3, 0x0($a1)
/* 180024 801D1FD4 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 180028 801D1FD8 24421B50 */  addiu      $v0, $v0, %lo(D_800E1B50)
/* 18002C 801D1FDC 000B6080 */  sll        $t4, $t3, 2
/* 180030 801D1FE0 004C6821 */  addu       $t5, $v0, $t4
/* 180034 801D1FE4 8DAE0000 */  lw         $t6, 0x0($t5)
/* 180038 801D1FE8 3C0A801C */  lui        $t2, %hi(D_801C7F84)
/* 18003C 801D1FEC 254A7F84 */  addiu      $t2, $t2, %lo(D_801C7F84)
.L801D1FF0_ovl8:
/* 180040 801D1FF0 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 180044 801D1FF4 ADCA008C */  sw         $t2, 0x8C($t6)
/* 180048 801D1FF8 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 18004C 801D1FFC 3C0F801D */  lui        $t7, %hi(D_801CB620)
/* 180050 801D2000 25EFB620 */  addiu      $t7, $t7, %lo(D_801CB620)
/* 180054 801D2004 8F080000 */  lw         $t0, 0x0($t8)
/* 180058 801D2008 0008C880 */  sll        $t9, $t0, 2
.L801D200C_ovl8:
/* 18005C 801D200C 00594821 */  addu       $t1, $v0, $t9
/* 180060 801D2010 8D2B0000 */  lw         $t3, 0x0($t1)
.L801D2014_ovl8:
/* 180064 801D2014 0C02CD48 */  jal        func_800B3520
/* 180068 801D2018 AD6F0098 */   sw        $t7, 0x98($t3)
/* 18006C 801D201C 3C11800D */  lui        $s1, %hi(D_800D6B10)
/* 180070 801D2020 26316B10 */  addiu      $s1, $s1, %lo(D_800D6B10)
/* 180074 801D2024 0C02BB30 */  jal        func_800AECC0
/* 180078 801D2028 C62C0000 */   lwc1      $f12, 0x0($s1)
/* 18007C 801D202C 0C02BB48 */  jal        func_800AED20
/* 180080 801D2030 C62C0000 */   lwc1      $f12, 0x0($s1)
/* 180084 801D2034 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 180088 801D2038 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 18008C 801D203C 8C6D0000 */  lw         $t5, 0x0($v1)
glabel func_801D2040_ovl8
/* 180090 801D2040 3C01800F */  lui        $at, %hi(D_800E8920)
/* 180094 801D2044 240C0001 */  addiu      $t4, $zero, 0x1
/* 180098 801D2048 8DAA0000 */  lw         $t2, 0x0($t5)
/* 18009C 801D204C 44801000 */  mtc1       $zero, $f2
/* 1800A0 801D2050 3C040001 */  lui        $a0, (0x1000B >> 16)
/* 1800A4 801D2054 000A7080 */  sll        $t6, $t2, 2
/* 1800A8 801D2058 002E0821 */  addu       $at, $at, $t6
/* 1800AC 801D205C AC2C8920 */  sw         $t4, %lo(D_800E8920)($at)
/* 1800B0 801D2060 8E18003C */  lw         $t8, 0x3C($s0)
/* 1800B4 801D2064 3C01800F */  lui        $at, %hi(D_800E9020)
/* 1800B8 801D2068 3484000B */  ori        $a0, $a0, (0x1000B & 0xFFFF)
/* 1800BC 801D206C 8F080010 */  lw         $t0, 0x10($t8)
/* 1800C0 801D2070 E5020038 */  swc1       $f2, 0x38($t0)
/* 1800C4 801D2074 8E19003C */  lw         $t9, 0x3C($s0)
/* 1800C8 801D2078 8F220010 */  lw         $v0, 0x10($t9)
/* 1800CC 801D207C C4400038 */  lwc1       $f0, 0x38($v0)
/* 1800D0 801D2080 E4400034 */  swc1       $f0, 0x34($v0)
/* 1800D4 801D2084 8E09003C */  lw         $t1, 0x3C($s0)
/* 1800D8 801D2088 8D2F0010 */  lw         $t7, 0x10($t1)
/* 1800DC 801D208C E5E00030 */  swc1       $f0, 0x30($t7)
/* 1800E0 801D2090 8C650000 */  lw         $a1, 0x0($v1)
/* 1800E4 801D2094 8CAB0000 */  lw         $t3, 0x0($a1)
/* 1800E8 801D2098 000B6880 */  sll        $t5, $t3, 2
/* 1800EC 801D209C 002D0821 */  addu       $at, $at, $t5
/* 1800F0 801D20A0 E4229020 */  swc1       $f2, %lo(D_800E9020)($at)
/* 1800F4 801D20A4 8CAA0000 */  lw         $t2, 0x0($a1)
/* 1800F8 801D20A8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1800FC 801D20AC 44812000 */  mtc1       $at, $f4
.L801D20B0_ovl8:
/* 180100 801D20B0 000A6080 */  sll        $t4, $t2, 2
/* 180104 801D20B4 024C7021 */  addu       $t6, $s2, $t4
/* 180108 801D20B8 ADC00000 */  sw         $zero, 0x0($t6)
/* 18010C 801D20BC 8CB80000 */  lw         $t8, 0x0($a1)
/* 180110 801D20C0 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 180114 801D20C4 00184080 */  sll        $t0, $t8, 2
/* 180118 801D20C8 00280821 */  addu       $at, $at, $t0
/* 18011C 801D20CC C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
/* 180120 801D20D0 46062032 */  c.eq.s     $f4, $f6
.L801D20D4_ovl8:
/* 180124 801D20D4 00000000 */  nop
/* 180128 801D20D8 45000004 */  bc1f       .L801D20EC_ovl9
/* 18012C 801D20DC 00000000 */   nop
/* 180130 801D20E0 3C040001 */  lui        $a0, (0x1000C >> 16)
/* 180134 801D20E4 10000001 */  b          .L801D20EC_ovl9
/* 180138 801D20E8 3484000C */   ori       $a0, $a0, (0x1000C & 0xFFFF)
.L801D20EC_ovl9:
/* 18013C 801D20EC 0C02A7A9 */  jal        func_800A9EA4
/* 180140 801D20F0 00000000 */   nop
/* 180144 801D20F4 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 180148 801D20F8 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 18014C 801D20FC 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 180150 801D2100 44810000 */  mtc1       $at, $f0
/* 180154 801D2104 8CA30000 */  lw         $v1, 0x0($a1)
/* 180158 801D2108 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 18015C 801D210C 3C1E800E */  lui        $fp, %hi(D_800E7880)
/* 180160 801D2110 00031880 */  sll        $v1, $v1, 2
/* 180164 801D2114 00230821 */  addu       $at, $at, $v1
/* 180168 801D2118 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
/* 18016C 801D211C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 180170 801D2120 00230821 */  addu       $at, $at, $v1
/* 180174 801D2124 46004282 */  mul.s      $f10, $f8, $f0
/* 180178 801D2128 3C178022 */  lui        $s7, %hi(D_8021BB08_ovl9)
/* 18017C 801D212C 3C15800F */  lui        $s5, %hi(D_800E9C60)
/* 180180 801D2130 3C13800F */  lui        $s3, %hi(D_800E98E0)
/* 180184 801D2134 3C12800E */  lui        $s2, %hi(gEntitiesNextPosYArray)
/* 180188 801D2138 3C11800E */  lui        $s1, %hi(gEntitiesPosYArray)
/* 18018C 801D213C 3C10800E */  lui        $s0, %hi(gEntityVtableIndexArray)
/* 180190 801D2140 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
/* 180194 801D2144 8CB90000 */  lw         $t9, 0x0($a1)
/* 180198 801D2148 3C01800E */  lui        $at, %hi(D_800E6850)
/* 18019C 801D214C 2610DC50 */  addiu      $s0, $s0, %lo(gEntityVtableIndexArray)
/* 1801A0 801D2150 00194880 */  sll        $t1, $t9, 2
/* 1801A4 801D2154 00290821 */  addu       $at, $at, $t1
/* 1801A8 801D2158 26312CD0 */  addiu      $s1, $s1, %lo(gEntitiesPosYArray)
/* 1801AC 801D215C 26522790 */  addiu      $s2, $s2, %lo(gEntitiesNextPosYArray)
/* 1801B0 801D2160 267398E0 */  addiu      $s3, $s3, %lo(D_800E98E0)
/* 1801B4 801D2164 26B59C60 */  addiu      $s5, $s5, %lo(D_800E9C60)
/* 1801B8 801D2168 26F7BB08 */  addiu      $s7, $s7, %lo(D_8021BB08_ovl9)
/* 1801BC 801D216C 27DE7880 */  addiu      $fp, $fp, %lo(D_800E7880)
/* 1801C0 801D2170 241600C8 */  addiu      $s6, $zero, 0xC8
/* 1801C4 801D2174 2414003C */  addiu      $s4, $zero, 0x3C
/* 1801C8 801D2178 E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L801D217C_ovl9:
/* 1801CC 801D217C 0C002DAF */  jal        finish_current_thread
/* 1801D0 801D2180 24040001 */   addiu     $a0, $zero, 0x1
/* 1801D4 801D2184 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 1801D8 801D2188 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 1801DC 801D218C 8CA30000 */  lw         $v1, 0x0($a1)
/* 1801E0 801D2190 00031880 */  sll        $v1, $v1, 2
/* 1801E4 801D2194 02237821 */  addu       $t7, $s1, $v1
/* 1801E8 801D2198 02435821 */  addu       $t3, $s2, $v1
/* 1801EC 801D219C C5620000 */  lwc1       $f2, 0x0($t3)
/* 1801F0 801D21A0 C5E00000 */  lwc1       $f0, 0x0($t7)
/* 1801F4 801D21A4 46020032 */  c.eq.s     $f0, $f2
/* 1801F8 801D21A8 00000000 */  nop
/* 1801FC 801D21AC 45000012 */  bc1f       .L801D21F8_ovl9
/* 180200 801D21B0 02636821 */   addu      $t5, $s3, $v1
/* 180204 801D21B4 ADB40000 */  sw         $s4, 0x0($t5)
/* 180208 801D21B8 8CAA0000 */  lw         $t2, 0x0($a1)
/* 18020C 801D21BC 000A6080 */  sll        $t4, $t2, 2
/* 180210 801D21C0 02AC7021 */  addu       $t6, $s5, $t4
/* 180214 801D21C4 ADD60000 */  sw         $s6, 0x0($t6)
/* 180218 801D21C8 8CA20000 */  lw         $v0, 0x0($a1)
/* 18021C 801D21CC 03C2C021 */  addu       $t8, $fp, $v0
/* 180220 801D21D0 93080000 */  lbu        $t0, 0x0($t8)
/* 180224 801D21D4 00025880 */  sll        $t3, $v0, 2
/* 180228 801D21D8 020B6821 */  addu       $t5, $s0, $t3
/* 18022C 801D21DC 0008C880 */  sll        $t9, $t0, 2
/* 180230 801D21E0 02F94821 */  addu       $t1, $s7, $t9
/* 180234 801D21E4 8D2F0000 */  lw         $t7, 0x0($t1)
/* 180238 801D21E8 ADAF0000 */  sw         $t7, 0x0($t5)
/* 18023C 801D21EC 8CA30000 */  lw         $v1, 0x0($a1)
/* 180240 801D21F0 10000010 */  b          .L801D2234_ovl9
/* 180244 801D21F4 00031880 */   sll       $v1, $v1, 2
.L801D21F8_ovl9:
/* 180248 801D21F8 4602003C */  c.lt.s     $f0, $f2
/* 18024C 801D21FC 240A0003 */  addiu      $t2, $zero, 0x3
/* 180250 801D2200 02036021 */  addu       $t4, $s0, $v1
/* 180254 801D2204 4502000C */  bc1fl      .L801D2238_ovl9
/* 180258 801D2208 0203C821 */   addu      $t9, $s0, $v1
/* 18025C 801D220C AD8A0000 */  sw         $t2, 0x0($t4)
/* 180260 801D2210 8CAE0000 */  lw         $t6, 0x0($a1)
/* 180264 801D2214 3C08800E */  lui        $t0, %hi(D_800E6A10)
/* 180268 801D2218 25086A10 */  addiu      $t0, $t0, %lo(D_800E6A10)
/* 18026C 801D221C 000EC080 */  sll        $t8, $t6, 2
/* 180270 801D2220 03081021 */  addu       $v0, $t8, $t0
/* 180274 801D2224 C4500000 */  lwc1       $f16, 0x0($v0)
/* 180278 801D2228 46008487 */  neg.s      $f18, $f16
/* 18027C 801D222C 10000006 */  b          .L801D2248_ovl9
.L801D2230_ovl8:
/* 180280 801D2230 E4520000 */   swc1      $f18, 0x0($v0)
.L801D2234_ovl9:
/* 180284 801D2234 0203C821 */  addu       $t9, $s0, $v1
.L801D2238_ovl9:
/* 180288 801D2238 8F290000 */  lw         $t1, 0x0($t9)
glabel func_801D223C_ovl8
/* 18028C 801D223C 24010003 */  addiu      $at, $zero, 0x3
/* 180290 801D2240 1121FFCE */  beq        $t1, $at, .L801D217C_ovl9
/* 180294 801D2244 00000000 */   nop
.L801D2248_ovl9:
/* 180298 801D2248 8FBF003C */  lw         $ra, 0x3C($sp)
/* 18029C 801D224C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1802A0 801D2250 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1802A4 801D2254 8FB20020 */  lw         $s2, 0x20($sp)
/* 1802A8 801D2258 8FB30024 */  lw         $s3, 0x24($sp)
/* 1802AC 801D225C 8FB40028 */  lw         $s4, 0x28($sp)
/* 1802B0 801D2260 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1802B4 801D2264 8FB60030 */  lw         $s6, 0x30($sp)
/* 1802B8 801D2268 8FB70034 */  lw         $s7, 0x34($sp)
/* 1802BC 801D226C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 1802C0 801D2270 03E00008 */  jr         $ra
/* 1802C4 801D2274 27BD0040 */   addiu     $sp, $sp, 0x40
