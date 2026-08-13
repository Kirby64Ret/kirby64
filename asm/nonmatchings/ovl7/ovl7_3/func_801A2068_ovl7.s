nonmatching func_801A2068_ovl7, 0x334

glabel func_801A2068_ovl7
    /* 1480D8 801A2068 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 1480DC 801A206C 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 1480E0 801A2070 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 1480E4 801A2074 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1480E8 801A2078 8C430000 */  lw         $v1, 0x0($v0)
    /* 1480EC 801A207C 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
    /* 1480F0 801A2080 3C04800E */  lui        $a0, %hi(D_800E1B50)
    /* 1480F4 801A2084 00031880 */  sll        $v1, $v1, 2
    /* 1480F8 801A2088 01C37021 */  addu       $t6, $t6, $v1
    /* 1480FC 801A208C 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
    /* 148100 801A2090 00832021 */  addu       $a0, $a0, $v1
    /* 148104 801A2094 8C841B50 */  lw         $a0, %lo(D_800E1B50)($a0)
    /* 148108 801A2098 31CF0001 */  andi       $t7, $t6, 0x1
    /* 14810C 801A209C 11E00014 */  beqz       $t7, .L801A20F0_ovl7
    /* 148110 801A20A0 8C850084 */   lw        $a1, 0x84($a0)
    /* 148114 801A20A4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 148118 801A20A8 00230821 */  addu       $at, $at, $v1
    /* 14811C 801A20AC C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 148120 801A20B0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 148124 801A20B4 E7A4002C */  swc1       $f4, 0x2C($sp)
    /* 148128 801A20B8 8C580000 */  lw         $t8, 0x0($v0)
    /* 14812C 801A20BC C4A80014 */  lwc1       $f8, 0x14($a1)
    /* 148130 801A20C0 0018C880 */  sll        $t9, $t8, 2
    /* 148134 801A20C4 00390821 */  addu       $at, $at, $t9
    /* 148138 801A20C8 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 14813C 801A20CC 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 148140 801A20D0 46083280 */  add.s      $f10, $f6, $f8
    /* 148144 801A20D4 E7AA0030 */  swc1       $f10, 0x30($sp)
    /* 148148 801A20D8 8C480000 */  lw         $t0, 0x0($v0)
    /* 14814C 801A20DC 00084880 */  sll        $t1, $t0, 2
    /* 148150 801A20E0 00290821 */  addu       $at, $at, $t1
    /* 148154 801A20E4 C4302950 */  lwc1       $f16, %lo(gEntitiesNextPosZArray)($at)
    /* 148158 801A20E8 10000071 */  b          .L801A22B0_ovl7
    /* 14815C 801A20EC E7B00034 */   swc1      $f16, 0x34($sp)
  .L801A20F0_ovl7:
    /* 148160 801A20F0 3C0A800F */  lui        $t2, %hi(D_800E8920)
    /* 148164 801A20F4 01435021 */  addu       $t2, $t2, $v1
    /* 148168 801A20F8 8D4A8920 */  lw         $t2, %lo(D_800E8920)($t2)
    /* 14816C 801A20FC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 148170 801A2100 00230821 */  addu       $at, $at, $v1
    /* 148174 801A2104 15400014 */  bnez       $t2, .L801A2158_ovl7
    /* 148178 801A2108 00000000 */   nop
    /* 14817C 801A210C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 148180 801A2110 00230821 */  addu       $at, $at, $v1
    /* 148184 801A2114 C43225D0 */  lwc1       $f18, %lo(gEntitiesNextPosXArray)($at)
    /* 148188 801A2118 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 14818C 801A211C E7B2002C */  swc1       $f18, 0x2C($sp)
    /* 148190 801A2120 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 148194 801A2124 C4A60018 */  lwc1       $f6, 0x18($a1)
    /* 148198 801A2128 000B6080 */  sll        $t4, $t3, 2
    /* 14819C 801A212C 002C0821 */  addu       $at, $at, $t4
    /* 1481A0 801A2130 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* 1481A4 801A2134 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 1481A8 801A2138 46062200 */  add.s      $f8, $f4, $f6
    /* 1481AC 801A213C E7A80030 */  swc1       $f8, 0x30($sp)
    /* 1481B0 801A2140 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 1481B4 801A2144 000D7080 */  sll        $t6, $t5, 2
    /* 1481B8 801A2148 002E0821 */  addu       $at, $at, $t6
    /* 1481BC 801A214C C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* 1481C0 801A2150 10000057 */  b          .L801A22B0_ovl7
    /* 1481C4 801A2154 E7AA0034 */   swc1      $f10, 0x34($sp)
  .L801A2158_ovl7:
    /* 1481C8 801A2158 C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
    /* 1481CC 801A215C C4B20018 */  lwc1       $f18, 0x18($a1)
    /* 1481D0 801A2160 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 1481D4 801A2164 44813000 */  mtc1       $at, $f6
    /* 1481D8 801A2168 46128100 */  add.s      $f4, $f16, $f18
    /* 1481DC 801A216C 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 1481E0 801A2170 E7A40030 */  swc1       $f4, 0x30($sp)
    /* 1481E4 801A2174 8C430000 */  lw         $v1, 0x0($v0)
    /* 1481E8 801A2178 00031880 */  sll        $v1, $v1, 2
    /* 1481EC 801A217C 00230821 */  addu       $at, $at, $v1
    /* 1481F0 801A2180 C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
    /* 1481F4 801A2184 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* 1481F8 801A2188 00230821 */  addu       $at, $at, $v1
    /* 1481FC 801A218C 46083032 */  c.eq.s     $f6, $f8
    /* 148200 801A2190 00000000 */  nop
    /* 148204 801A2194 45000025 */  bc1f       .L801A222C_ovl7
    /* 148208 801A2198 00000000 */   nop
    /* 14820C 801A219C 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* 148210 801A21A0 00230821 */  addu       $at, $at, $v1
    /* 148214 801A21A4 C42C17D0 */  lwc1       $f12, %lo(D_800E17D0)($at)
    /* 148218 801A21A8 0C00B5B8 */  jal        sinf
    /* 14821C 801A21AC AFA50024 */   sw        $a1, 0x24($sp)
    /* 148220 801A21B0 8FA50024 */  lw         $a1, 0x24($sp)
    /* 148224 801A21B4 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 148228 801A21B8 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 14822C 801A21BC C4AA001C */  lwc1       $f10, 0x1C($a1)
    /* 148230 801A21C0 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 148234 801A21C4 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 148238 801A21C8 460A0402 */  mul.s      $f16, $f0, $f10
    /* 14823C 801A21CC 000FC080 */  sll        $t8, $t7, 2
    /* 148240 801A21D0 00380821 */  addu       $at, $at, $t8
    /* 148244 801A21D4 C43225D0 */  lwc1       $f18, %lo(gEntitiesNextPosXArray)($at)
    /* 148248 801A21D8 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* 14824C 801A21DC 46128100 */  add.s      $f4, $f16, $f18
    /* 148250 801A21E0 E7A4002C */  swc1       $f4, 0x2C($sp)
    /* 148254 801A21E4 8C590000 */  lw         $t9, 0x0($v0)
    /* 148258 801A21E8 00194080 */  sll        $t0, $t9, 2
    /* 14825C 801A21EC 00280821 */  addu       $at, $at, $t0
    /* 148260 801A21F0 0C00D604 */  jal        cosf
    /* 148264 801A21F4 C42C17D0 */   lwc1      $f12, %lo(D_800E17D0)($at)
    /* 148268 801A21F8 8FA50024 */  lw         $a1, 0x24($sp)
    /* 14826C 801A21FC 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 148270 801A2200 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 148274 801A2204 C4A6001C */  lwc1       $f6, 0x1C($a1)
    /* 148278 801A2208 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 14827C 801A220C 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 148280 801A2210 46060202 */  mul.s      $f8, $f0, $f6
    /* 148284 801A2214 000A5880 */  sll        $t3, $t2, 2
    /* 148288 801A2218 002B0821 */  addu       $at, $at, $t3
    /* 14828C 801A221C C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* 148290 801A2220 460A4400 */  add.s      $f16, $f8, $f10
    /* 148294 801A2224 10000022 */  b          .L801A22B0_ovl7
    /* 148298 801A2228 E7B00034 */   swc1      $f16, 0x34($sp)
  .L801A222C_ovl7:
    /* 14829C 801A222C C42C17D0 */  lwc1       $f12, %lo(D_800E17D0)($at)
    /* 1482A0 801A2230 0C00B5B8 */  jal        sinf
    /* 1482A4 801A2234 AFA50024 */   sw        $a1, 0x24($sp)
    /* 1482A8 801A2238 8FA50024 */  lw         $a1, 0x24($sp)
    /* 1482AC 801A223C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 1482B0 801A2240 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 1482B4 801A2244 C4B20020 */  lwc1       $f18, 0x20($a1)
    /* 1482B8 801A2248 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 1482BC 801A224C 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 1482C0 801A2250 46120102 */  mul.s      $f4, $f0, $f18
    /* 1482C4 801A2254 000C6880 */  sll        $t5, $t4, 2
    /* 1482C8 801A2258 002D0821 */  addu       $at, $at, $t5
    /* 1482CC 801A225C C42625D0 */  lwc1       $f6, %lo(gEntitiesNextPosXArray)($at)
    /* 1482D0 801A2260 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* 1482D4 801A2264 46062200 */  add.s      $f8, $f4, $f6
    /* 1482D8 801A2268 E7A8002C */  swc1       $f8, 0x2C($sp)
    /* 1482DC 801A226C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 1482E0 801A2270 000E7880 */  sll        $t7, $t6, 2
    /* 1482E4 801A2274 002F0821 */  addu       $at, $at, $t7
    /* 1482E8 801A2278 0C00D604 */  jal        cosf
    /* 1482EC 801A227C C42C17D0 */   lwc1      $f12, %lo(D_800E17D0)($at)
    /* 1482F0 801A2280 8FA50024 */  lw         $a1, 0x24($sp)
    /* 1482F4 801A2284 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 1482F8 801A2288 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 1482FC 801A228C C4AA0020 */  lwc1       $f10, 0x20($a1)
    /* 148300 801A2290 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 148304 801A2294 8F190000 */  lw         $t9, 0x0($t8)
    /* 148308 801A2298 460A0402 */  mul.s      $f16, $f0, $f10
    /* 14830C 801A229C 00194080 */  sll        $t0, $t9, 2
    /* 148310 801A22A0 00280821 */  addu       $at, $at, $t0
    /* 148314 801A22A4 C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
    /* 148318 801A22A8 46128100 */  add.s      $f4, $f16, $f18
    /* 14831C 801A22AC E7A40034 */  swc1       $f4, 0x34($sp)
  .L801A22B0_ovl7:
    /* 148320 801A22B0 27A4002C */  addiu      $a0, $sp, 0x2C
    /* 148324 801A22B4 0C0437E7 */  jal        func_8010DF9C
    /* 148328 801A22B8 AFA00038 */   sw        $zero, 0x38($sp)
    /* 14832C 801A22BC 10400019 */  beqz       $v0, .L801A2324_ovl7
    /* 148330 801A22C0 8FA50038 */   lw        $a1, 0x38($sp)
    /* 148334 801A22C4 24010001 */  addiu      $at, $zero, 0x1
    /* 148338 801A22C8 10410011 */  beq        $v0, $at, .L801A2310_ovl7
    /* 14833C 801A22CC 3C0D8013 */   lui       $t5, %hi(D_8012BCE0)
    /* 148340 801A22D0 24010002 */  addiu      $at, $zero, 0x2
    /* 148344 801A22D4 10410009 */  beq        $v0, $at, .L801A22FC_ovl7
    /* 148348 801A22D8 3C0B8013 */   lui       $t3, %hi(D_8012BCE0 + 0x4)
    /* 14834C 801A22DC 24010003 */  addiu      $at, $zero, 0x3
    /* 148350 801A22E0 14410010 */  bne        $v0, $at, .L801A2324_ovl7
    /* 148354 801A22E4 3C098013 */   lui       $t1, %hi(D_8012BCE0 + 0x8)
    /* 148358 801A22E8 8D29BCE8 */  lw         $t1, %lo(D_8012BCE0 + 0x8)($t1)
    /* 14835C 801A22EC 912A0004 */  lbu        $t2, 0x4($t1)
    /* 148360 801A22F0 11400002 */  beqz       $t2, .L801A22FC_ovl7
    /* 148364 801A22F4 00000000 */   nop
    /* 148368 801A22F8 24050001 */  addiu      $a1, $zero, 0x1
  .L801A22FC_ovl7:
    /* 14836C 801A22FC 8D6BBCE4 */  lw         $t3, %lo(D_8012BCE0 + 0x4)($t3)
    /* 148370 801A2300 916C0004 */  lbu        $t4, 0x4($t3)
    /* 148374 801A2304 11800002 */  beqz       $t4, .L801A2310_ovl7
    /* 148378 801A2308 00000000 */   nop
    /* 14837C 801A230C 34A50001 */  ori        $a1, $a1, 0x1
  .L801A2310_ovl7:
    /* 148380 801A2310 8DADBCE0 */  lw         $t5, %lo(D_8012BCE0)($t5)
    /* 148384 801A2314 91AE0004 */  lbu        $t6, 0x4($t5)
    /* 148388 801A2318 11C00002 */  beqz       $t6, .L801A2324_ovl7
    /* 14838C 801A231C 00000000 */   nop
    /* 148390 801A2320 34A50001 */  ori        $a1, $a1, 0x1
  .L801A2324_ovl7:
    /* 148394 801A2324 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* 148398 801A2328 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 14839C 801A232C 3C08800F */  lui        $t0, %hi(D_800E8AE0)
    /* 1483A0 801A2330 25088AE0 */  addiu      $t0, $t0, %lo(D_800E8AE0)
    /* 1483A4 801A2334 8DF80000 */  lw         $t8, 0x0($t7)
    /* 1483A8 801A2338 0018C880 */  sll        $t9, $t8, 2
    /* 1483AC 801A233C 03281021 */  addu       $v0, $t9, $t0
    /* 1483B0 801A2340 8C430000 */  lw         $v1, 0x0($v0)
    /* 1483B4 801A2344 30690001 */  andi       $t1, $v1, 0x1
    /* 1483B8 801A2348 11200009 */  beqz       $t1, .L801A2370_ovl7
    /* 1483BC 801A234C 00000000 */   nop
    /* 1483C0 801A2350 10A00005 */  beqz       $a1, .L801A2368_ovl7
    /* 1483C4 801A2354 346B0004 */   ori       $t3, $v1, 0x4
    /* 1483C8 801A2358 2401FFFB */  addiu      $at, $zero, -0x5
    /* 1483CC 801A235C 00615024 */  and        $t2, $v1, $at
    /* 1483D0 801A2360 1000000A */  b          .L801A238C_ovl7
    /* 1483D4 801A2364 AC4A0000 */   sw        $t2, 0x0($v0)
  .L801A2368_ovl7:
    /* 1483D8 801A2368 10000008 */  b          .L801A238C_ovl7
    /* 1483DC 801A236C AC4B0000 */   sw        $t3, 0x0($v0)
  .L801A2370_ovl7:
    /* 1483E0 801A2370 10A00004 */  beqz       $a1, .L801A2384_ovl7
    /* 1483E4 801A2374 2401FFFB */   addiu     $at, $zero, -0x5
    /* 1483E8 801A2378 346C0004 */  ori        $t4, $v1, 0x4
    /* 1483EC 801A237C 10000003 */  b          .L801A238C_ovl7
    /* 1483F0 801A2380 AC4C0000 */   sw        $t4, 0x0($v0)
  .L801A2384_ovl7:
    /* 1483F4 801A2384 00616824 */  and        $t5, $v1, $at
    /* 1483F8 801A2388 AC4D0000 */  sw         $t5, 0x0($v0)
  .L801A238C_ovl7:
    /* 1483FC 801A238C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 148400 801A2390 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 148404 801A2394 03E00008 */  jr         $ra
    /* 148408 801A2398 00000000 */   nop
endlabel func_801A2068_ovl7
.size func_801A2068_ovl7, . - func_801A2068_ovl7
