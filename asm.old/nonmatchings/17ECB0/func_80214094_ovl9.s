glabel func_80214094_ovl9
/* 1C20E4 80214094 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1C20E8 80214098 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1C20EC 8021409C 3C05800E */  lui        $a1, %hi(gEntitiesAngleZArray)
/* 1C20F0 802140A0 24A54390 */  addiu      $a1, $a1, %lo(gEntitiesAngleZArray)
/* 1C20F4 802140A4 8C430000 */  lw         $v1, 0x0($v0)
/* 1C20F8 802140A8 3C018022 */  lui        $at, %hi(D_8021DDA0_ovl9)
/* 1C20FC 802140AC C422DDA0 */  lwc1       $f2, %lo(D_8021DDA0_ovl9)($at)
/* 1C2100 802140B0 00031880 */  sll        $v1, $v1, 2
/* 1C2104 802140B4 00A32021 */  addu       $a0, $a1, $v1
/* 1C2108 802140B8 C4800000 */  lwc1       $f0, 0x0($a0)
/* 1C210C 802140BC 44806000 */  mtc1       $zero, $f12
/* 1C2110 802140C0 3C018022 */  lui        $at, %hi(D_8021DDA4_ovl9)
/* 1C2114 802140C4 4600103C */  c.lt.s     $f2, $f0
/* 1C2118 802140C8 00000000 */  nop
/* 1C211C 802140CC 4502000C */  bc1fl      .L80214100_ovl9
/* 1C2120 802140D0 460C003C */   c.lt.s    $f0, $f12
/* 1C2124 802140D4 46020101 */  sub.s      $f4, $f0, $f2
.L802140D8_ovl9:
/* 1C2128 802140D8 E4840000 */  swc1       $f4, 0x0($a0)
/* 1C212C 802140DC 8C430000 */  lw         $v1, 0x0($v0)
/* 1C2130 802140E0 00031880 */  sll        $v1, $v1, 2
/* 1C2134 802140E4 00A32021 */  addu       $a0, $a1, $v1
/* 1C2138 802140E8 C4800000 */  lwc1       $f0, 0x0($a0)
/* 1C213C 802140EC 4600103C */  c.lt.s     $f2, $f0
/* 1C2140 802140F0 00000000 */  nop
/* 1C2144 802140F4 4503FFF8 */  bc1tl      .L802140D8_ovl9
/* 1C2148 802140F8 46020101 */   sub.s     $f4, $f0, $f2
/* 1C214C 802140FC 460C003C */  c.lt.s     $f0, $f12
.L80214100_ovl9:
/* 1C2150 80214100 00000000 */  nop
/* 1C2154 80214104 4500000B */  bc1f       .L80214134_ovl9
/* 1C2158 80214108 00000000 */   nop
/* 1C215C 8021410C 46020180 */  add.s      $f6, $f0, $f2
.L80214110_ovl9:
/* 1C2160 80214110 E4860000 */  swc1       $f6, 0x0($a0)
/* 1C2164 80214114 8C430000 */  lw         $v1, 0x0($v0)
/* 1C2168 80214118 00031880 */  sll        $v1, $v1, 2
/* 1C216C 8021411C 00A32021 */  addu       $a0, $a1, $v1
/* 1C2170 80214120 C4800000 */  lwc1       $f0, 0x0($a0)
/* 1C2174 80214124 460C003C */  c.lt.s     $f0, $f12
/* 1C2178 80214128 00000000 */  nop
/* 1C217C 8021412C 4503FFF8 */  bc1tl      .L80214110_ovl9
/* 1C2180 80214130 46020180 */   add.s     $f6, $f0, $f2
.L80214134_ovl9:
/* 1C2184 80214134 C428DDA4 */  lwc1       $f8, %lo(D_8021DDA4_ovl9)($at)
/* 1C2188 80214138 3C018022 */  lui        $at, %hi(D_8021DDA8_ovl9)
/* 1C218C 8021413C 4608003C */  c.lt.s     $f0, $f8
/* 1C2190 80214140 00000000 */  nop
/* 1C2194 80214144 45000005 */  bc1f       .L8021415C_ovl9
/* 1C2198 80214148 00000000 */   nop
/* 1C219C 8021414C 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1C21A0 80214150 00230821 */  addu       $at, $at, $v1
/* 1C21A4 80214154 1000004F */  b          .L80214294_ovl9
/* 1C21A8 80214158 AC2098E0 */   sw        $zero, %lo(D_800E98E0)($at)
.L8021415C_ovl9:
/* 1C21AC 8021415C C42ADDA8 */  lwc1       $f10, %lo(D_8021DDA8_ovl9)($at)
/* 1C21B0 80214160 240E0001 */  addiu      $t6, $zero, 0x1
/* 1C21B4 80214164 3C018022 */  lui        $at, %hi(D_8021DDAC_ovl9)
/* 1C21B8 80214168 460A003C */  c.lt.s     $f0, $f10
/* 1C21BC 8021416C 00000000 */  nop
/* 1C21C0 80214170 45000005 */  bc1f       .L80214188_ovl9
/* 1C21C4 80214174 00000000 */   nop
/* 1C21C8 80214178 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1C21CC 8021417C 00230821 */  addu       $at, $at, $v1
/* 1C21D0 80214180 10000044 */  b          .L80214294_ovl9
/* 1C21D4 80214184 AC2E98E0 */   sw        $t6, %lo(D_800E98E0)($at)
.L80214188_ovl9:
/* 1C21D8 80214188 C430DDAC */  lwc1       $f16, %lo(D_8021DDAC_ovl9)($at)
/* 1C21DC 8021418C 240F0002 */  addiu      $t7, $zero, 0x2
/* 1C21E0 80214190 3C018022 */  lui        $at, %hi(D_8021DDB0_ovl9)
/* 1C21E4 80214194 4610003C */  c.lt.s     $f0, $f16
/* 1C21E8 80214198 00000000 */  nop
/* 1C21EC 8021419C 45000005 */  bc1f       .L802141B4_ovl9
/* 1C21F0 802141A0 00000000 */   nop
/* 1C21F4 802141A4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1C21F8 802141A8 00230821 */  addu       $at, $at, $v1
/* 1C21FC 802141AC 10000039 */  b          .L80214294_ovl9
/* 1C2200 802141B0 AC2F98E0 */   sw        $t7, %lo(D_800E98E0)($at)
.L802141B4_ovl9:
/* 1C2204 802141B4 C432DDB0 */  lwc1       $f18, %lo(D_8021DDB0_ovl9)($at)
/* 1C2208 802141B8 24180003 */  addiu      $t8, $zero, 0x3
/* 1C220C 802141BC 3C018022 */  lui        $at, %hi(D_8021DDB4_ovl9)
/* 1C2210 802141C0 4612003C */  c.lt.s     $f0, $f18
/* 1C2214 802141C4 00000000 */  nop
/* 1C2218 802141C8 45000005 */  bc1f       .L802141E0_ovl9
/* 1C221C 802141CC 00000000 */   nop
/* 1C2220 802141D0 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1C2224 802141D4 00230821 */  addu       $at, $at, $v1
/* 1C2228 802141D8 1000002E */  b          .L80214294_ovl9
/* 1C222C 802141DC AC3898E0 */   sw        $t8, %lo(D_800E98E0)($at)
.L802141E0_ovl9:
/* 1C2230 802141E0 C424DDB4 */  lwc1       $f4, %lo(D_8021DDB4_ovl9)($at)
/* 1C2234 802141E4 24190004 */  addiu      $t9, $zero, 0x4
/* 1C2238 802141E8 3C018022 */  lui        $at, %hi(D_8021DDB8_ovl9)
/* 1C223C 802141EC 4604003C */  c.lt.s     $f0, $f4
/* 1C2240 802141F0 00000000 */  nop
/* 1C2244 802141F4 45000005 */  bc1f       .L8021420C_ovl9
/* 1C2248 802141F8 00000000 */   nop
/* 1C224C 802141FC 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1C2250 80214200 00230821 */  addu       $at, $at, $v1
/* 1C2254 80214204 10000023 */  b          .L80214294_ovl9
/* 1C2258 80214208 AC3998E0 */   sw        $t9, %lo(D_800E98E0)($at)
.L8021420C_ovl9:
/* 1C225C 8021420C C426DDB8 */  lwc1       $f6, %lo(D_8021DDB8_ovl9)($at)
/* 1C2260 80214210 24080005 */  addiu      $t0, $zero, 0x5
/* 1C2264 80214214 3C018022 */  lui        $at, %hi(D_8021DDBC_ovl9)
/* 1C2268 80214218 4606003C */  c.lt.s     $f0, $f6
/* 1C226C 8021421C 00000000 */  nop
/* 1C2270 80214220 45000005 */  bc1f       .L80214238_ovl9
/* 1C2274 80214224 00000000 */   nop
/* 1C2278 80214228 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1C227C 8021422C 00230821 */  addu       $at, $at, $v1
/* 1C2280 80214230 10000018 */  b          .L80214294_ovl9
/* 1C2284 80214234 AC2898E0 */   sw        $t0, %lo(D_800E98E0)($at)
.L80214238_ovl9:
/* 1C2288 80214238 C428DDBC */  lwc1       $f8, %lo(D_8021DDBC_ovl9)($at)
/* 1C228C 8021423C 24090006 */  addiu      $t1, $zero, 0x6
/* 1C2290 80214240 3C018022 */  lui        $at, %hi(D_8021DDC0_ovl9)
/* 1C2294 80214244 4608003C */  c.lt.s     $f0, $f8
/* 1C2298 80214248 00000000 */  nop
/* 1C229C 8021424C 45000005 */  bc1f       .L80214264_ovl9
/* 1C22A0 80214250 00000000 */   nop
/* 1C22A4 80214254 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1C22A8 80214258 00230821 */  addu       $at, $at, $v1
/* 1C22AC 8021425C 1000000D */  b          .L80214294_ovl9
/* 1C22B0 80214260 AC2998E0 */   sw        $t1, %lo(D_800E98E0)($at)
.L80214264_ovl9:
/* 1C22B4 80214264 C42ADDC0 */  lwc1       $f10, %lo(D_8021DDC0_ovl9)($at)
/* 1C22B8 80214268 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1C22BC 8021426C 240A0007 */  addiu      $t2, $zero, 0x7
/* 1C22C0 80214270 460A003C */  c.lt.s     $f0, $f10
/* 1C22C4 80214274 00230821 */  addu       $at, $at, $v1
/* 1C22C8 80214278 45000005 */  bc1f       .L80214290_ovl9
/* 1C22CC 8021427C 00000000 */   nop
/* 1C22D0 80214280 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1C22D4 80214284 00230821 */  addu       $at, $at, $v1
/* 1C22D8 80214288 10000002 */  b          .L80214294_ovl9
/* 1C22DC 8021428C AC2A98E0 */   sw        $t2, %lo(D_800E98E0)($at)
.L80214290_ovl9:
/* 1C22E0 80214290 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
.L80214294_ovl9:
/* 1C22E4 80214294 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1C22E8 80214298 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1C22EC 8021429C 44818000 */  mtc1       $at, $f16
/* 1C22F0 802142A0 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1C22F4 802142A4 000B6080 */  sll        $t4, $t3, 2
/* 1C22F8 802142A8 002C0821 */  addu       $at, $at, $t4
/* 1C22FC 802142AC E4306A10 */  swc1       $f16, %lo(D_800E6A10)($at)
/* 1C2300 802142B0 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1C2304 802142B4 000D7080 */  sll        $t6, $t5, 2
/* 1C2308 802142B8 00AE7821 */  addu       $t7, $a1, $t6
/* 1C230C 802142BC 03E00008 */  jr         $ra
/* 1C2310 802142C0 E5EC0000 */   swc1      $f12, 0x0($t7)
