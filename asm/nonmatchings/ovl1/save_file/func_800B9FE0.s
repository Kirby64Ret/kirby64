nonmatching func_800B9FE0, 0x2A4

glabel func_800B9FE0
    /* 62230 800B9FE0 27BDFF58 */  addiu      $sp, $sp, -0xA8
    /* 62234 800B9FE4 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 62238 800B9FE8 AFB30020 */  sw         $s3, 0x20($sp)
    /* 6223C 800B9FEC AFB2001C */  sw         $s2, 0x1C($sp)
    /* 62240 800B9FF0 AFB00014 */  sw         $s0, 0x14($sp)
    /* 62244 800B9FF4 AFA400A8 */  sw         $a0, 0xA8($sp)
    /* 62248 800B9FF8 3C05800D */  lui        $a1, %hi(D_800D6C10)
    /* 6224C 800B9FFC 3C02800D */  lui        $v0, %hi(saveCurrentWorld)
    /* 62250 800BA000 AFB10018 */  sw         $s1, 0x18($sp)
    /* 62254 800BA004 00009025 */  or         $s2, $zero, $zero
    /* 62258 800BA008 24426B90 */  addiu      $v0, $v0, %lo(saveCurrentWorld)
    /* 6225C 800BA00C 24A56C10 */  addiu      $a1, $a1, %lo(D_800D6C10)
    /* 62260 800BA010 240400FF */  addiu      $a0, $zero, 0xFF
    /* 62264 800BA014 00008025 */  or         $s0, $zero, $zero
    /* 62268 800BA018 27B3003C */  addiu      $s3, $sp, 0x3C
    /* 6226C 800BA01C 241F0008 */  addiu      $ra, $zero, 0x8
    /* 62270 800BA020 27A3003C */  addiu      $v1, $sp, 0x3C
    /* 62274 800BA024 240D0007 */  addiu      $t5, $zero, 0x7
    /* 62278 800BA028 240C0006 */  addiu      $t4, $zero, 0x6
    /* 6227C 800BA02C 240B0005 */  addiu      $t3, $zero, 0x5
    /* 62280 800BA030 240A0004 */  addiu      $t2, $zero, 0x4
    /* 62284 800BA034 24090003 */  addiu      $t1, $zero, 0x3
    /* 62288 800BA038 24080002 */  addiu      $t0, $zero, 0x2
    /* 6228C 800BA03C 24070051 */  addiu      $a3, $zero, 0x51
    /* 62290 800BA040 24060001 */  addiu      $a2, $zero, 0x1
  .L800BA044:
    /* 62294 800BA044 90AE0000 */  lbu        $t6, 0x0($a1)
    /* 62298 800BA048 24630001 */  addiu      $v1, $v1, 0x1
    /* 6229C 800BA04C A064FFFF */  sb         $a0, -0x1($v1)
    /* 622A0 800BA050 55C00031 */  bnel       $t6, $zero, .L800BA118
    /* 622A4 800BA054 26100001 */   addiu     $s0, $s0, 0x1
    /* 622A8 800BA058 52000004 */  beql       $s0, $zero, .L800BA06C
    /* 622AC 800BA05C 8C4F0000 */   lw        $t7, 0x0($v0)
    /* 622B0 800BA060 16060004 */  bne        $s0, $a2, .L800BA074
    /* 622B4 800BA064 00000000 */   nop
    /* 622B8 800BA068 8C4F0000 */  lw         $t7, 0x0($v0)
  .L800BA06C:
    /* 622BC 800BA06C 59E0002A */  blezl      $t7, .L800BA118
    /* 622C0 800BA070 26100001 */   addiu     $s0, $s0, 0x1
  .L800BA074:
    /* 622C4 800BA074 16080005 */  bne        $s0, $t0, .L800BA08C
    /* 622C8 800BA078 00000000 */   nop
    /* 622CC 800BA07C 8C580000 */  lw         $t8, 0x0($v0)
    /* 622D0 800BA080 2B010002 */  slti       $at, $t8, 0x2
    /* 622D4 800BA084 54200024 */  bnel       $at, $zero, .L800BA118
    /* 622D8 800BA088 26100001 */   addiu     $s0, $s0, 0x1
  .L800BA08C:
    /* 622DC 800BA08C 16090005 */  bne        $s0, $t1, .L800BA0A4
    /* 622E0 800BA090 00000000 */   nop
    /* 622E4 800BA094 8C590000 */  lw         $t9, 0x0($v0)
    /* 622E8 800BA098 2B210003 */  slti       $at, $t9, 0x3
    /* 622EC 800BA09C 5420001E */  bnel       $at, $zero, .L800BA118
    /* 622F0 800BA0A0 26100001 */   addiu     $s0, $s0, 0x1
  .L800BA0A4:
    /* 622F4 800BA0A4 160A0005 */  bne        $s0, $t2, .L800BA0BC
    /* 622F8 800BA0A8 00000000 */   nop
    /* 622FC 800BA0AC 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 62300 800BA0B0 29C10004 */  slti       $at, $t6, 0x4
    /* 62304 800BA0B4 54200018 */  bnel       $at, $zero, .L800BA118
    /* 62308 800BA0B8 26100001 */   addiu     $s0, $s0, 0x1
  .L800BA0BC:
    /* 6230C 800BA0BC 520B0004 */  beql       $s0, $t3, .L800BA0D0
    /* 62310 800BA0C0 8C4F0000 */   lw        $t7, 0x0($v0)
    /* 62314 800BA0C4 160C0005 */  bne        $s0, $t4, .L800BA0DC
    /* 62318 800BA0C8 00000000 */   nop
    /* 6231C 800BA0CC 8C4F0000 */  lw         $t7, 0x0($v0)
  .L800BA0D0:
    /* 62320 800BA0D0 29E10005 */  slti       $at, $t7, 0x5
    /* 62324 800BA0D4 54200010 */  bnel       $at, $zero, .L800BA118
    /* 62328 800BA0D8 26100001 */   addiu     $s0, $s0, 0x1
  .L800BA0DC:
    /* 6232C 800BA0DC 160D0005 */  bne        $s0, $t5, .L800BA0F4
    /* 62330 800BA0E0 00000000 */   nop
    /* 62334 800BA0E4 8C580000 */  lw         $t8, 0x0($v0)
    /* 62338 800BA0E8 2B010006 */  slti       $at, $t8, 0x6
    /* 6233C 800BA0EC 5420000A */  bnel       $at, $zero, .L800BA118
    /* 62340 800BA0F0 26100001 */   addiu     $s0, $s0, 0x1
  .L800BA0F4:
    /* 62344 800BA0F4 161F0005 */  bne        $s0, $ra, .L800BA10C
    /* 62348 800BA0F8 02727021 */   addu      $t6, $s3, $s2
    /* 6234C 800BA0FC 8C590000 */  lw         $t9, 0x0($v0)
    /* 62350 800BA100 2B210007 */  slti       $at, $t9, 0x7
    /* 62354 800BA104 54200004 */  bnel       $at, $zero, .L800BA118
    /* 62358 800BA108 26100001 */   addiu     $s0, $s0, 0x1
  .L800BA10C:
    /* 6235C 800BA10C A1D00000 */  sb         $s0, 0x0($t6)
    /* 62360 800BA110 26520001 */  addiu      $s2, $s2, 0x1
    /* 62364 800BA114 26100001 */  addiu      $s0, $s0, 0x1
  .L800BA118:
    /* 62368 800BA118 1607FFCA */  bne        $s0, $a3, .L800BA044
    /* 6236C 800BA11C 24A50001 */   addiu     $a1, $a1, 0x1
    /* 62370 800BA120 16400003 */  bnez       $s2, .L800BA130
    /* 62374 800BA124 3C02800D */   lui       $v0, %hi(D_800D515C)
    /* 62378 800BA128 1000004F */  b          .L800BA268
    /* 6237C 800BA12C 00001025 */   or        $v0, $zero, $zero
  .L800BA130:
    /* 62380 800BA130 2442515C */  addiu      $v0, $v0, %lo(D_800D515C)
  .L800BA134:
    /* 62384 800BA134 C4440000 */  lwc1       $f4, 0x0($v0)
    /* 62388 800BA138 4600218D */  trunc.w.s  $f6, $f4
    /* 6238C 800BA13C 44183000 */  mfc1       $t8, $f6
    /* 62390 800BA140 00000000 */  nop
    /* 62394 800BA144 0258082A */  slt        $at, $s2, $t8
    /* 62398 800BA148 50200004 */  beql       $at, $zero, .L800BA15C
    /* 6239C 800BA14C 44924000 */   mtc1      $s2, $f8
    /* 623A0 800BA150 1000FFF8 */  b          .L800BA134
    /* 623A4 800BA154 24420008 */   addiu     $v0, $v0, 0x8
    /* 623A8 800BA158 44924000 */  mtc1       $s2, $f8
  .L800BA15C:
    /* 623AC 800BA15C C4420004 */  lwc1       $f2, 0x4($v0)
    /* 623B0 800BA160 44802000 */  mtc1       $zero, $f4
    /* 623B4 800BA164 46804020 */  cvt.s.w    $f0, $f8
    /* 623B8 800BA168 00008025 */  or         $s0, $zero, $zero
    /* 623BC 800BA16C 46022032 */  c.eq.s     $f4, $f2
    /* 623C0 800BA170 46020282 */  mul.s      $f10, $f0, $f2
    /* 623C4 800BA174 460A0400 */  add.s      $f16, $f0, $f10
    /* 623C8 800BA178 4600848D */  trunc.w.s  $f18, $f16
    /* 623CC 800BA17C 44129000 */  mfc1       $s2, $f18
    /* 623D0 800BA180 45010002 */  bc1t       .L800BA18C
    /* 623D4 800BA184 00000000 */   nop
    /* 623D8 800BA188 26520001 */  addiu      $s2, $s2, 0x1
  .L800BA18C:
    /* 623DC 800BA18C 0C006291 */  jal        random_soft_s32_range
    /* 623E0 800BA190 02402025 */   or        $a0, $s2, $zero
    /* 623E4 800BA194 00408825 */  or         $s1, $v0, $zero
    /* 623E8 800BA198 0C006291 */  jal        random_soft_s32_range
    /* 623EC 800BA19C 02402025 */   or        $a0, $s2, $zero
    /* 623F0 800BA1A0 02622021 */  addu       $a0, $s3, $v0
    /* 623F4 800BA1A4 908E0000 */  lbu        $t6, 0x0($a0)
    /* 623F8 800BA1A8 02711821 */  addu       $v1, $s3, $s1
    /* 623FC 800BA1AC 90650000 */  lbu        $a1, 0x0($v1)
    /* 62400 800BA1B0 26100001 */  addiu      $s0, $s0, 0x1
    /* 62404 800BA1B4 24010016 */  addiu      $at, $zero, 0x16
    /* 62408 800BA1B8 A06E0000 */  sb         $t6, 0x0($v1)
    /* 6240C 800BA1BC 1601FFF3 */  bne        $s0, $at, .L800BA18C
    /* 62410 800BA1C0 A0850000 */   sb        $a1, 0x0($a0)
    /* 62414 800BA1C4 0C006291 */  jal        random_soft_s32_range
    /* 62418 800BA1C8 02402025 */   or        $a0, $s2, $zero
    /* 6241C 800BA1CC 02627821 */  addu       $t7, $s3, $v0
    /* 62420 800BA1D0 91F00000 */  lbu        $s0, 0x0($t7)
    /* 62424 800BA1D4 240100FF */  addiu      $at, $zero, 0xFF
    /* 62428 800BA1D8 8FA400A8 */  lw         $a0, 0xA8($sp)
    /* 6242C 800BA1DC 16010003 */  bne        $s0, $at, .L800BA1EC
    /* 62430 800BA1E0 24180001 */   addiu     $t8, $zero, 0x1
    /* 62434 800BA1E4 10000020 */  b          .L800BA268
    /* 62438 800BA1E8 00001025 */   or        $v0, $zero, $zero
  .L800BA1EC:
    /* 6243C 800BA1EC 0004C880 */  sll        $t9, $a0, 2
    /* 62440 800BA1F0 3C01800D */  lui        $at, %hi(D_800D6C10)
    /* 62444 800BA1F4 0324C823 */  subu       $t9, $t9, $a0
    /* 62448 800BA1F8 00300821 */  addu       $at, $at, $s0
    /* 6244C 800BA1FC 0019C880 */  sll        $t9, $t9, 2
    /* 62450 800BA200 A0386C10 */  sb         $t8, %lo(D_800D6C10)($at)
    /* 62454 800BA204 0324C823 */  subu       $t9, $t9, $a0
    /* 62458 800BA208 0019C8C0 */  sll        $t9, $t9, 3
    /* 6245C 800BA20C 06010003 */  bgez       $s0, .L800BA21C
    /* 62460 800BA210 00107083 */   sra       $t6, $s0, 2
    /* 62464 800BA214 26010003 */  addiu      $at, $s0, 0x3
    /* 62468 800BA218 00017083 */  sra        $t6, $at, 2
  .L800BA21C:
    /* 6246C 800BA21C 032E7821 */  addu       $t7, $t9, $t6
    /* 62470 800BA220 3C18800F */  lui        $t8, %hi(gSaveBuffer1)
    /* 62474 800BA224 2718C9F8 */  addiu      $t8, $t8, %lo(gSaveBuffer1)
    /* 62478 800BA228 01F81021 */  addu       $v0, $t7, $t8
    /* 6247C 800BA22C 9059002E */  lbu        $t9, 0x2E($v0)
    /* 62480 800BA230 06010004 */  bgez       $s0, .L800BA244
    /* 62484 800BA234 320E0003 */   andi      $t6, $s0, 0x3
    /* 62488 800BA238 11C00002 */  beqz       $t6, .L800BA244
    /* 6248C 800BA23C 00000000 */   nop
    /* 62490 800BA240 25CEFFFC */  addiu      $t6, $t6, -0x4
  .L800BA244:
    /* 62494 800BA244 000E7840 */  sll        $t7, $t6, 1
    /* 62498 800BA248 24180001 */  addiu      $t8, $zero, 0x1
    /* 6249C 800BA24C 01F87004 */  sllv       $t6, $t8, $t7
    /* 624A0 800BA250 032EC025 */  or         $t8, $t9, $t6
    /* 624A4 800BA254 0C02E3F2 */  jal        saveSetFileChecksum
    /* 624A8 800BA258 A058002E */   sb        $t8, 0x2E($v0)
    /* 624AC 800BA25C 0C02E247 */  jal        func_800B891C
    /* 624B0 800BA260 8FA400A8 */   lw        $a0, 0xA8($sp)
    /* 624B4 800BA264 26020001 */  addiu      $v0, $s0, 0x1
  .L800BA268:
    /* 624B8 800BA268 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 624BC 800BA26C 8FB00014 */  lw         $s0, 0x14($sp)
    /* 624C0 800BA270 8FB10018 */  lw         $s1, 0x18($sp)
    /* 624C4 800BA274 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 624C8 800BA278 8FB30020 */  lw         $s3, 0x20($sp)
    /* 624CC 800BA27C 03E00008 */  jr         $ra
    /* 624D0 800BA280 27BD00A8 */   addiu     $sp, $sp, 0xA8
endlabel func_800B9FE0
.size func_800B9FE0, . - func_800B9FE0
