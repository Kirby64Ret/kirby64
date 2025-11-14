glabel func_801DE148_ovl13 # 25
/* 1F60C8 801DE148 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 1F60CC 801DE14C AFB10020 */  sw          $s1, 0x20($sp)
/* 1F60D0 801DE150 3C118005 */  lui         $s1, %hi(D_8004A7C4)
/* 1F60D4 801DE154 2631A7C4 */  addiu       $s1, $s1, %lo(D_8004A7C4)
/* 1F60D8 801DE158 8E230000 */  lw          $v1, 0x0($s1)
/* 1F60DC 801DE15C AFBF002C */  sw          $ra, 0x2C($sp)
/* 1F60E0 801DE160 AFB30028 */  sw          $s3, 0x28($sp)
/* 1F60E4 801DE164 AFB20024 */  sw          $s2, 0x24($sp)
/* 1F60E8 801DE168 AFB0001C */  sw          $s0, 0x1C($sp)
/* 1F60EC 801DE16C F7B40010 */  sdc1        $f20, 0x10($sp)
/* 1F60F0 801DE170 AFA40040 */  sw          $a0, 0x40($sp)
/* 1F60F4 801DE174 8C700000 */  lw          $s0, 0x0($v1)
/* 1F60F8 801DE178 3C12800E */  lui         $s2, %hi(D_800E1B50)
/* 1F60FC 801DE17C 26521B50 */  addiu       $s2, $s2, %lo(D_800E1B50)
/* 1F6100 801DE180 00108080 */  sll         $s0, $s0, 2
/* 1F6104 801DE184 02507021 */  addu        $t6, $s2, $s0
/* 1F6108 801DE188 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F610C 801DE18C 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1F6110 801DE190 00300821 */  addu        $at, $at, $s0
/* 1F6114 801DE194 24180005 */  addiu       $t8, $zero, 0x5
/* 1F6118 801DE198 AC38DFD0 */  sw          $t8, %lo(D_800DDFD0)($at)
/* 1F611C 801DE19C AFAF003C */  sw          $t7, 0x3C($sp)
/* 1F6120 801DE1A0 8C680000 */  lw          $t0, 0x0($v1)
/* 1F6124 801DE1A4 3C19801E */  lui         $t9, %hi(D_801D93CC)
/* 1F6128 801DE1A8 273993CC */  addiu       $t9, $t9, %lo(D_801D93CC)
/* 1F612C 801DE1AC 00084880 */  sll         $t1, $t0, 2
/* 1F6130 801DE1B0 02495021 */  addu        $t2, $s2, $t1
/* 1F6134 801DE1B4 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1F6138 801DE1B8 3C04801E */  lui         $a0, %hi(D_801DAAF0)
/* 1F613C 801DE1BC 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F6140 801DE1C0 AD79008C */  sw          $t9, 0x8C($t3)
/* 1F6144 801DE1C4 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1F6148 801DE1C8 2484AAF0 */  addiu       $a0, $a0, %lo(D_801DAAF0)
/* 1F614C 801DE1CC 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F6150 801DE1D0 000D7080 */  sll         $t6, $t5, 2
/* 1F6154 801DE1D4 002E0821 */  addu        $at, $at, $t6
/* 1F6158 801DE1D8 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F615C 801DE1DC AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F6160 801DE1E0 8E380000 */  lw          $t8, 0x0($s1)
/* 1F6164 801DE1E4 3C0F801E */  lui         $t7, %hi(D_801DAD8C)
/* 1F6168 801DE1E8 25EFAD8C */  addiu       $t7, $t7, %lo(D_801DAD8C)
/* 1F616C 801DE1EC 8F080000 */  lw          $t0, 0x0($t8)
/* 1F6170 801DE1F0 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F6174 801DE1F4 00084880 */  sll         $t1, $t0, 2
/* 1F6178 801DE1F8 02495021 */  addu        $t2, $s2, $t1
/* 1F617C 801DE1FC 8D590000 */  lw          $t9, 0x0($t2)
/* 1F6180 801DE200 AF2F0098 */  sw          $t7, 0x98($t9)
/* 1F6184 801DE204 8E2B0000 */  lw          $t3, 0x0($s1)
/* 1F6188 801DE208 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F618C 801DE20C 000C6880 */  sll         $t5, $t4, 2
/* 1F6190 801DE210 002D0821 */  addu        $at, $at, $t5
/* 1F6194 801DE214 0C02CCFD */  jal         func_800B33F4
/* 1F6198 801DE218 AC208920 */   sw         $zero, %lo(D_800E8920)($at)
/* 1F619C 801DE21C 8E230000 */  lw          $v1, 0x0($s1)
/* 1F61A0 801DE220 4480A000 */  mtc1        $zero, $f20
/* 1F61A4 801DE224 3C02800F */  lui         $v0, %hi(D_800EAA60)
/* 1F61A8 801DE228 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1F61AC 801DE22C 2442AA60 */  addiu       $v0, $v0, %lo(D_800EAA60)
/* 1F61B0 801DE230 3C01800F */  lui         $at, %hi(D_800EA8A0)
/* 1F61B4 801DE234 000EC080 */  sll         $t8, $t6, 2
/* 1F61B8 801DE238 00584021 */  addu        $t0, $v0, $t8
/* 1F61BC 801DE23C E5140000 */  swc1        $f20, 0x0($t0)
/* 1F61C0 801DE240 8C700000 */  lw          $s0, 0x0($v1)
/* 1F61C4 801DE244 3C040001 */  lui         $a0, (0x10415 >> 16)
/* 1F61C8 801DE248 34840415 */  ori         $a0, $a0, (0x10415 & 0xFFFF)
/* 1F61CC 801DE24C 00108080 */  sll         $s0, $s0, 2
/* 1F61D0 801DE250 00504821 */  addu        $t1, $v0, $s0
/* 1F61D4 801DE254 C5240000 */  lwc1        $f4, 0x0($t1)
/* 1F61D8 801DE258 00300821 */  addu        $at, $at, $s0
/* 1F61DC 801DE25C 0C02A855 */  jal         func_800AA154
/* 1F61E0 801DE260 E424A8A0 */   swc1       $f4, %lo(D_800EA8A0)($at)
/* 1F61E4 801DE264 0C029D9E */  jal         play_sound
/* 1F61E8 801DE268 24040184 */   addiu      $a0, $zero, 0x184
/* 1F61EC 801DE26C 3C040001 */  lui         $a0, (0x10416 >> 16)
/* 1F61F0 801DE270 34840416 */  ori         $a0, $a0, (0x10416 & 0xFFFF)
/* 1F61F4 801DE274 0C02AA19 */  jal         func_800AA864
/* 1F61F8 801DE278 24050002 */   addiu      $a1, $zero, 0x2
/* 1F61FC 801DE27C 3C040001 */  lui         $a0, (0x10418 >> 16)
/* 1F6200 801DE280 0C02A855 */  jal         func_800AA154
/* 1F6204 801DE284 34840418 */   ori        $a0, $a0, (0x10418 & 0xFFFF)
/* 1F6208 801DE288 0C029D9E */  jal         play_sound
/* 1F620C 801DE28C 24040187 */   addiu      $a0, $zero, 0x187
/* 1F6210 801DE290 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F6214 801DE294 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F6218 801DE298 3C040001 */  lui         $a0, (0x1042A >> 16)
/* 1F621C 801DE29C 8D500000 */  lw          $s0, 0x0($t2)
/* 1F6220 801DE2A0 3484042A */  ori         $a0, $a0, (0x1042A & 0xFFFF)
/* 1F6224 801DE2A4 00108080 */  sll         $s0, $s0, 2
/* 1F6228 801DE2A8 00300821 */  addu        $at, $at, $s0
/* 1F622C 801DE2AC C4266A10 */  lwc1        $f6, %lo(D_800E6A10)($at)
/* 1F6230 801DE2B0 3C014140 */  lui         $at, (0x41400000 >> 16)
/* 1F6234 801DE2B4 44814000 */  mtc1        $at, $f8
/* 1F6238 801DE2B8 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F623C 801DE2BC 00300821 */  addu        $at, $at, $s0
/* 1F6240 801DE2C0 46083282 */  mul.s       $f10, $f6, $f8
/* 1F6244 801DE2C4 0C02A855 */  jal         func_800AA154
/* 1F6248 801DE2C8 E42A64D0 */   swc1       $f10, %lo(D_800E64D0)($at)
/* 1F624C 801DE2CC 8E2F0000 */  lw          $t7, 0x0($s1)
/* 1F6250 801DE2D0 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 1F6254 801DE2D4 44818000 */  mtc1        $at, $f16
/* 1F6258 801DE2D8 8DF90000 */  lw          $t9, 0x0($t7)
/* 1F625C 801DE2DC 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F6260 801DE2E0 00195880 */  sll         $t3, $t9, 2
/* 1F6264 801DE2E4 002B0821 */  addu        $at, $at, $t3
/* 1F6268 801DE2E8 C4326A10 */  lwc1        $f18, %lo(D_800E6A10)($at)
/* 1F626C 801DE2EC 46128032 */  c.eq.s      $f16, $f18
/* 1F6270 801DE2F0 00000000 */  nop
/* 1F6274 801DE2F4 45000003 */  bc1f        L801DE304_ovl13
/* 1F6278 801DE2F8 3C040001 */   lui        $a0, (0x10425 >> 16)
/* 1F627C 801DE2FC 10000003 */  b           L801DE30C_ovl13
/* 1F6280 801DE300 34840425 */   ori        $a0, $a0, (0x10425 & 0xFFFF)
glabel L801DE304_ovl13
/* 1F6284 801DE304 3C040001 */  lui         $a0, (0x10424 >> 16)
/* 1F6288 801DE308 34840424 */  ori         $a0, $a0, (0x10424 & 0xFFFF)
glabel L801DE30C_ovl13
/* 1F628C 801DE30C 0C02A806 */  jal         func_800AA018
/* 1F6290 801DE310 00000000 */   nop
/* 1F6294 801DE314 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1F6298 801DE318 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F629C 801DE31C 24040019 */  addiu       $a0, $zero, 0x19
/* 1F62A0 801DE320 8D900000 */  lw          $s0, 0x0($t4)
/* 1F62A4 801DE324 00108080 */  sll         $s0, $s0, 2
/* 1F62A8 801DE328 00300821 */  addu        $at, $at, $s0
/* 1F62AC 801DE32C C4246A10 */  lwc1        $f4, %lo(D_800E6A10)($at)
/* 1F62B0 801DE330 3C01801E */  lui         $at, %hi(D_801E5CE0_ovl13)
/* 1F62B4 801DE334 C4265CE0 */  lwc1        $f6, %lo(D_801E5CE0_ovl13)($at)
/* 1F62B8 801DE338 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F62BC 801DE33C 00300821 */  addu        $at, $at, $s0
/* 1F62C0 801DE340 46062202 */  mul.s       $f8, $f4, $f6
/* 1F62C4 801DE344 0C002DAF */  jal         finish_current_thread
/* 1F62C8 801DE348 E4286690 */   swc1       $f8, %lo(D_800E6690)($at)
/* 1F62CC 801DE34C 8E230000 */  lw          $v1, 0x0($s1)
/* 1F62D0 801DE350 3C02800E */  lui         $v0, %hi(D_800E6690)
/* 1F62D4 801DE354 24426690 */  addiu       $v0, $v0, %lo(D_800E6690)
/* 1F62D8 801DE358 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1F62DC 801DE35C 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F62E0 801DE360 000D7080 */  sll         $t6, $t5, 2
/* 1F62E4 801DE364 004EC021 */  addu        $t8, $v0, $t6
/* 1F62E8 801DE368 E7140000 */  swc1        $f20, 0x0($t8)
/* 1F62EC 801DE36C 8C700000 */  lw          $s0, 0x0($v1)
/* 1F62F0 801DE370 00108080 */  sll         $s0, $s0, 2
/* 1F62F4 801DE374 00504021 */  addu        $t0, $v0, $s0
/* 1F62F8 801DE378 C50A0000 */  lwc1        $f10, 0x0($t0)
/* 1F62FC 801DE37C 00300821 */  addu        $at, $at, $s0
/* 1F6300 801DE380 E42A64D0 */  swc1        $f10, %lo(D_800E64D0)($at)
/* 1F6304 801DE384 8C690000 */  lw          $t1, 0x0($v1)
/* 1F6308 801DE388 3C01801E */  lui         $at, %hi(D_801E5CE4_ovl13)
/* 1F630C 801DE38C C4305CE4 */  lwc1        $f16, %lo(D_801E5CE4_ovl13)($at)
/* 1F6310 801DE390 3C01800E */  lui         $at, %hi(D_800E6850)
/* 1F6314 801DE394 00095080 */  sll         $t2, $t1, 2
/* 1F6318 801DE398 002A0821 */  addu        $at, $at, $t2
/* 1F631C 801DE39C 0C02BC9F */  jal         func_800AF27C
/* 1F6320 801DE3A0 E4306850 */   swc1       $f16, %lo(D_800E6850)($at)
/* 1F6324 801DE3A4 8E2F0000 */  lw          $t7, 0x0($s1)
/* 1F6328 801DE3A8 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F632C 801DE3AC 3C13800E */  lui         $s3, %hi(D_800DFBD0)
/* 1F6330 801DE3B0 8DF00000 */  lw          $s0, 0x0($t7)
/* 1F6334 801DE3B4 2673FBD0 */  addiu       $s3, $s3, %lo(D_800DFBD0)
/* 1F6338 801DE3B8 3C040001 */  lui         $a0, (0x10414 >> 16)
/* 1F633C 801DE3BC 00108080 */  sll         $s0, $s0, 2
/* 1F6340 801DE3C0 00300821 */  addu        $at, $at, $s0
/* 1F6344 801DE3C4 C4326A10 */  lwc1        $f18, %lo(D_800E6A10)($at)
/* 1F6348 801DE3C8 3C01801E */  lui         $at, %hi(D_801E5CE8_ovl13)
/* 1F634C 801DE3CC C4245CE8 */  lwc1        $f4, %lo(D_801E5CE8_ovl13)($at)
/* 1F6350 801DE3D0 0270C821 */  addu        $t9, $s3, $s0
/* 1F6354 801DE3D4 8F2B0000 */  lw          $t3, 0x0($t9)
/* 1F6358 801DE3D8 46049182 */  mul.s       $f6, $f18, $f4
/* 1F635C 801DE3DC 34840414 */  ori         $a0, $a0, (0x10414 & 0xFFFF)
/* 1F6360 801DE3E0 8D6C0004 */  lw          $t4, 0x4($t3)
/* 1F6364 801DE3E4 0C02A806 */  jal         func_800AA018
/* 1F6368 801DE3E8 E5860034 */   swc1       $f6, 0x34($t4)
/* 1F636C 801DE3EC 8E230000 */  lw          $v1, 0x0($s1)
/* 1F6370 801DE3F0 3C01800F */  lui         $at, %hi(D_800EA8A0)
/* 1F6374 801DE3F4 2404000A */  addiu       $a0, $zero, 0xA
/* 1F6378 801DE3F8 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1F637C 801DE3FC 000D7080 */  sll         $t6, $t5, 2
/* 1F6380 801DE400 002E0821 */  addu        $at, $at, $t6
/* 1F6384 801DE404 E434A8A0 */  swc1        $f20, %lo(D_800EA8A0)($at)
/* 1F6388 801DE408 8C700000 */  lw          $s0, 0x0($v1)
/* 1F638C 801DE40C 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F6390 801DE410 00108080 */  sll         $s0, $s0, 2
/* 1F6394 801DE414 00300821 */  addu        $at, $at, $s0
/* 1F6398 801DE418 C4286A10 */  lwc1        $f8, %lo(D_800E6A10)($at)
/* 1F639C 801DE41C 3C014000 */  lui         $at, (0x40000000 >> 16)
/* 1F63A0 801DE420 44815000 */  mtc1        $at, $f10
/* 1F63A4 801DE424 3C01800F */  lui         $at, %hi(D_800EAA60)
/* 1F63A8 801DE428 00300821 */  addu        $at, $at, $s0
/* 1F63AC 801DE42C 460A4402 */  mul.s       $f16, $f8, $f10
/* 1F63B0 801DE430 0C002DAF */  jal         finish_current_thread
/* 1F63B4 801DE434 E430AA60 */   swc1       $f16, %lo(D_800EAA60)($at)
/* 1F63B8 801DE438 8E230000 */  lw          $v1, 0x0($s1)
/* 1F63BC 801DE43C 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F63C0 801DE440 24040014 */  addiu       $a0, $zero, 0x14
/* 1F63C4 801DE444 8C700000 */  lw          $s0, 0x0($v1)
/* 1F63C8 801DE448 00108080 */  sll         $s0, $s0, 2
/* 1F63CC 801DE44C 00300821 */  addu        $at, $at, $s0
/* 1F63D0 801DE450 C4326A10 */  lwc1        $f18, %lo(D_800E6A10)($at)
/* 1F63D4 801DE454 3C0141A0 */  lui         $at, (0x41A00000 >> 16)
/* 1F63D8 801DE458 44812000 */  mtc1        $at, $f4
/* 1F63DC 801DE45C 3C01800F */  lui         $at, %hi(D_800EA8A0)
/* 1F63E0 801DE460 00300821 */  addu        $at, $at, $s0
/* 1F63E4 801DE464 46049182 */  mul.s       $f6, $f18, $f4
/* 1F63E8 801DE468 E426A8A0 */  swc1        $f6, %lo(D_800EA8A0)($at)
/* 1F63EC 801DE46C 8C780000 */  lw          $t8, 0x0($v1)
/* 1F63F0 801DE470 3C01800F */  lui         $at, %hi(D_800EAA60)
/* 1F63F4 801DE474 00184080 */  sll         $t0, $t8, 2
/* 1F63F8 801DE478 00280821 */  addu        $at, $at, $t0
/* 1F63FC 801DE47C 0C002DAF */  jal         finish_current_thread
/* 1F6400 801DE480 E434AA60 */   swc1       $f20, %lo(D_800EAA60)($at)
/* 1F6404 801DE484 3C01800D */  lui         $at, %hi(D_800D6B10)
/* 1F6408 801DE488 C4286B10 */  lwc1        $f8, %lo(D_800D6B10)($at)
/* 1F640C 801DE48C 3C013E80 */  lui         $at, (0x3E800000 >> 16)
/* 1F6410 801DE490 44815000 */  mtc1        $at, $f10
/* 1F6414 801DE494 00000000 */  nop
/* 1F6418 801DE498 460A4302 */  mul.s       $f12, $f8, $f10
/* 1F641C 801DE49C 0C02BB30 */  jal         func_800AECC0
/* 1F6420 801DE4A0 00000000 */   nop
/* 1F6424 801DE4A4 0C006291 */  jal         random_soft_s32_range
/* 1F6428 801DE4A8 24040003 */   addiu      $a0, $zero, 0x3
/* 1F642C 801DE4AC 00022880 */  sll         $a1, $v0, 2
/* 1F6430 801DE4B0 3C01801E */  lui         $at, %hi(D_801E5BAC_ovl13)
/* 1F6434 801DE4B4 00250821 */  addu        $at, $at, $a1
/* 1F6438 801DE4B8 C4205BAC */  lwc1        $f0, %lo(D_801E5BAC_ovl13)($at)
/* 1F643C 801DE4BC 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 1F6440 801DE4C0 44818000 */  mtc1        $at, $f16
/* 1F6444 801DE4C4 8E230000 */  lw          $v1, 0x0($s1)
/* 1F6448 801DE4C8 3C01800F */  lui         $at, %hi(D_800EA8A0)
/* 1F644C 801DE4CC 46008083 */  div.s       $f2, $f16, $f0
/* 1F6450 801DE4D0 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6454 801DE4D4 3C06800E */  lui         $a2, %hi(D_800E6A10)
/* 1F6458 801DE4D8 24C66A10 */  addiu       $a2, $a2, %lo(D_800E6A10)
/* 1F645C 801DE4DC 00108080 */  sll         $s0, $s0, 2
/* 1F6460 801DE4E0 00300821 */  addu        $at, $at, $s0
/* 1F6464 801DE4E4 C432A8A0 */  lwc1        $f18, %lo(D_800EA8A0)($at)
/* 1F6468 801DE4E8 3C01800F */  lui         $at, %hi(D_800EAA60)
/* 1F646C 801DE4EC 00300821 */  addu        $at, $at, $s0
/* 1F6470 801DE4F0 00409025 */  move        $s2, $v0
/* 1F6474 801DE4F4 46000200 */  add.s       $f8, $f0, $f0
/* 1F6478 801DE4F8 46001087 */  neg.s       $f2, $f2
/* 1F647C 801DE4FC 46121102 */  mul.s       $f4, $f2, $f18
/* 1F6480 801DE500 E424AA60 */  swc1        $f4, %lo(D_800EAA60)($at)
/* 1F6484 801DE504 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6488 801DE508 3C01801E */  lui         $at, %hi(D_801E5CEC_ovl13)
/* 1F648C 801DE50C C4305CEC */  lwc1        $f16, %lo(D_801E5CEC_ovl13)($at)
/* 1F6490 801DE510 00108080 */  sll         $s0, $s0, 2
/* 1F6494 801DE514 00D04821 */  addu        $t1, $a2, $s0
/* 1F6498 801DE518 C5260000 */  lwc1        $f6, 0x0($t1)
/* 1F649C 801DE51C 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1F64A0 801DE520 00300821 */  addu        $at, $at, $s0
/* 1F64A4 801DE524 46083282 */  mul.s       $f10, $f6, $f8
/* 1F64A8 801DE528 46000187 */  neg.s       $f6, $f0
/* 1F64AC 801DE52C 460A8483 */  div.s       $f18, $f16, $f10
/* 1F64B0 801DE530 E432AC20 */  swc1        $f18, %lo(D_800EAC20)($at)
/* 1F64B4 801DE534 8C700000 */  lw          $s0, 0x0($v1)
/* 1F64B8 801DE538 3C01801E */  lui         $at, %hi(D_801E5BC4_ovl13)
/* 1F64BC 801DE53C 00250821 */  addu        $at, $at, $a1
/* 1F64C0 801DE540 00108080 */  sll         $s0, $s0, 2
/* 1F64C4 801DE544 00D05021 */  addu        $t2, $a2, $s0
/* 1F64C8 801DE548 C5440000 */  lwc1        $f4, 0x0($t2)
/* 1F64CC 801DE54C C4305BC4 */  lwc1        $f16, %lo(D_801E5BC4_ovl13)($at)
/* 1F64D0 801DE550 3C01800F */  lui         $at, %hi(D_800EAFA0)
/* 1F64D4 801DE554 46062202 */  mul.s       $f8, $f4, $f6
/* 1F64D8 801DE558 00300821 */  addu        $at, $at, $s0
/* 1F64DC 801DE55C 46088283 */  div.s       $f10, $f16, $f8
/* 1F64E0 801DE560 4600020D */  trunc.w.s   $f8, $f0
/* 1F64E4 801DE564 44044000 */  mfc1        $a0, $f8
/* 1F64E8 801DE568 E42AAFA0 */  swc1        $f10, %lo(D_800EAFA0)($at)
/* 1F64EC 801DE56C 3C01801E */  lui         $at, %hi(D_801E5BA0_ovl13)
/* 1F64F0 801DE570 00250821 */  addu        $at, $at, $a1
/* 1F64F4 801DE574 C4325BA0 */  lwc1        $f18, %lo(D_801E5BA0_ovl13)($at)
/* 1F64F8 801DE578 8C700000 */  lw          $s0, 0x0($v1)
/* 1F64FC 801DE57C 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F6500 801DE580 46121102 */  mul.s       $f4, $f2, $f18
/* 1F6504 801DE584 00108080 */  sll         $s0, $s0, 2
/* 1F6508 801DE588 00D07821 */  addu        $t7, $a2, $s0
/* 1F650C 801DE58C C5E60000 */  lwc1        $f6, 0x0($t7)
/* 1F6510 801DE590 00300821 */  addu        $at, $at, $s0
/* 1F6514 801DE594 46062402 */  mul.s       $f16, $f4, $f6
/* 1F6518 801DE598 0C002DAF */  jal         finish_current_thread
/* 1F651C 801DE59C E4306690 */   swc1       $f16, %lo(D_800E6690)($at)
/* 1F6520 801DE5A0 8E230000 */  lw          $v1, 0x0($s1)
/* 1F6524 801DE5A4 3C01800F */  lui         $at, %hi(D_800EA8A0)
/* 1F6528 801DE5A8 3C18800F */  lui         $t8, %hi(D_800EAFA0)
/* 1F652C 801DE5AC 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1F6530 801DE5B0 2718AFA0 */  addiu       $t8, $t8, %lo(D_800EAFA0)
/* 1F6534 801DE5B4 00122880 */  sll         $a1, $s2, 2
/* 1F6538 801DE5B8 000B6080 */  sll         $t4, $t3, 2
/* 1F653C 801DE5BC 002C0821 */  addu        $at, $at, $t4
/* 1F6540 801DE5C0 E434A8A0 */  swc1        $f20, %lo(D_800EA8A0)($at)
/* 1F6544 801DE5C4 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1F6548 801DE5C8 3C01801E */  lui         $at, %hi(D_801E5BAC_ovl13)
/* 1F654C 801DE5CC 00250821 */  addu        $at, $at, $a1
/* 1F6550 801DE5D0 000D7080 */  sll         $t6, $t5, 2
/* 1F6554 801DE5D4 01D81021 */  addu        $v0, $t6, $t8
/* 1F6558 801DE5D8 C44A0000 */  lwc1        $f10, 0x0($v0)
/* 1F655C 801DE5DC 46005487 */  neg.s       $f18, $f10
/* 1F6560 801DE5E0 E4520000 */  swc1        $f18, 0x0($v0)
/* 1F6564 801DE5E4 C4205BAC */  lwc1        $f0, %lo(D_801E5BAC_ovl13)($at)
/* 1F6568 801DE5E8 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 1F656C 801DE5EC 44812000 */  mtc1        $at, $f4
/* 1F6570 801DE5F0 3C01801E */  lui         $at, %hi(D_801E5BA0_ovl13)
/* 1F6574 801DE5F4 00250821 */  addu        $at, $at, $a1
/* 1F6578 801DE5F8 46002183 */  div.s       $f6, $f4, $f0
/* 1F657C 801DE5FC C4305BA0 */  lwc1        $f16, %lo(D_801E5BA0_ovl13)($at)
/* 1F6580 801DE600 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6584 801DE604 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F6588 801DE608 4600010D */  trunc.w.s   $f4, $f0
/* 1F658C 801DE60C 00108080 */  sll         $s0, $s0, 2
/* 1F6590 801DE610 00300821 */  addu        $at, $at, $s0
/* 1F6594 801DE614 C42A6A10 */  lwc1        $f10, %lo(D_800E6A10)($at)
/* 1F6598 801DE618 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F659C 801DE61C 00300821 */  addu        $at, $at, $s0
/* 1F65A0 801DE620 44042000 */  mfc1        $a0, $f4
/* 1F65A4 801DE624 46103202 */  mul.s       $f8, $f6, $f16
/* 1F65A8 801DE628 00000000 */  nop
/* 1F65AC 801DE62C 460A4482 */  mul.s       $f18, $f8, $f10
/* 1F65B0 801DE630 0C002DAF */  jal         finish_current_thread
/* 1F65B4 801DE634 E4326690 */   swc1       $f18, %lo(D_800E6690)($at)
/* 1F65B8 801DE638 8E230000 */  lw          $v1, 0x0($s1)
/* 1F65BC 801DE63C 3C02800E */  lui         $v0, %hi(D_800E6690)
/* 1F65C0 801DE640 24426690 */  addiu       $v0, $v0, %lo(D_800E6690)
/* 1F65C4 801DE644 8C690000 */  lw          $t1, 0x0($v1)
/* 1F65C8 801DE648 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F65CC 801DE64C 00095080 */  sll         $t2, $t1, 2
/* 1F65D0 801DE650 004A7821 */  addu        $t7, $v0, $t2
/* 1F65D4 801DE654 E5F40000 */  swc1        $f20, 0x0($t7)
/* 1F65D8 801DE658 8C700000 */  lw          $s0, 0x0($v1)
/* 1F65DC 801DE65C 00108080 */  sll         $s0, $s0, 2
/* 1F65E0 801DE660 0050C821 */  addu        $t9, $v0, $s0
/* 1F65E4 801DE664 C7260000 */  lwc1        $f6, 0x0($t9)
/* 1F65E8 801DE668 00300821 */  addu        $at, $at, $s0
/* 1F65EC 801DE66C E42664D0 */  swc1        $f6, %lo(D_800E64D0)($at)
/* 1F65F0 801DE670 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1F65F4 801DE674 3C01801E */  lui         $at, %hi(D_801E5CF0_ovl13)
/* 1F65F8 801DE678 C4305CF0 */  lwc1        $f16, %lo(D_801E5CF0_ovl13)($at)
/* 1F65FC 801DE67C 3C01800E */  lui         $at, %hi(D_800E6850)
/* 1F6600 801DE680 000B6080 */  sll         $t4, $t3, 2
/* 1F6604 801DE684 002C0821 */  addu        $at, $at, $t4
/* 1F6608 801DE688 E4306850 */  swc1        $f16, %lo(D_800E6850)($at)
/* 1F660C 801DE68C 3C01800D */  lui         $at, %hi(D_800D6B10)
/* 1F6610 801DE690 0C02BB30 */  jal         func_800AECC0
/* 1F6614 801DE694 C42C6B10 */   lwc1       $f12, %lo(D_800D6B10)($at)
/* 1F6618 801DE698 0C029D9E */  jal         play_sound
/* 1F661C 801DE69C 24040187 */   addiu      $a0, $zero, 0x187
/* 1F6620 801DE6A0 8E230000 */  lw          $v1, 0x0($s1)
/* 1F6624 801DE6A4 3C12800F */  lui         $s2, %hi(D_800EBBE0)
/* 1F6628 801DE6A8 2652BBE0 */  addiu       $s2, $s2, %lo(D_800EBBE0)
/* 1F662C 801DE6AC 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6630 801DE6B0 3C02800E */  lui         $v0, %hi(gEntitiesNextPosYArray)
/* 1F6634 801DE6B4 24422790 */  addiu       $v0, $v0, %lo(gEntitiesNextPosYArray)
/* 1F6638 801DE6B8 00108080 */  sll         $s0, $s0, 2
/* 1F663C 801DE6BC 02506821 */  addu        $t5, $s2, $s0
/* 1F6640 801DE6C0 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F6644 801DE6C4 3C014220 */  lui         $at, (0x42200000 >> 16)
/* 1F6648 801DE6C8 44815000 */  mtc1        $at, $f10
/* 1F664C 801DE6CC 000EC080 */  sll         $t8, $t6, 2
/* 1F6650 801DE6D0 00584021 */  addu        $t0, $v0, $t8
/* 1F6654 801DE6D4 C5080000 */  lwc1        $f8, 0x0($t0)
/* 1F6658 801DE6D8 00504821 */  addu        $t1, $v0, $s0
/* 1F665C 801DE6DC C5240000 */  lwc1        $f4, 0x0($t1)
/* 1F6660 801DE6E0 460A4480 */  add.s       $f18, $f8, $f10
/* 1F6664 801DE6E4 3C05800E */  lui         $a1, %hi(D_800E6A10)
/* 1F6668 801DE6E8 24A56A10 */  addiu       $a1, $a1, %lo(D_800E6A10)
/* 1F666C 801DE6EC 4604903C */  c.lt.s      $f18, $f4
/* 1F6670 801DE6F0 00000000 */  nop
/* 1F6674 801DE6F4 45000007 */  bc1f        L801DE714_ovl13
/* 1F6678 801DE6F8 3C01C000 */   lui        $at, (0xC0000000 >> 16)
/* 1F667C 801DE6FC 44813000 */  mtc1        $at, $f6
/* 1F6680 801DE700 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F6684 801DE704 00300821 */  addu        $at, $at, $s0
/* 1F6688 801DE708 E4263210 */  swc1        $f6, %lo(D_800E3210)($at)
/* 1F668C 801DE70C 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6690 801DE710 00108080 */  sll         $s0, $s0, 2
glabel L801DE714_ovl13
/* 1F6694 801DE714 00B05021 */  addu        $t2, $a1, $s0
/* 1F6698 801DE718 3C01C1A0 */  lui         $at, (0xC1A00000 >> 16)
/* 1F669C 801DE71C 44814000 */  mtc1        $at, $f8
/* 1F66A0 801DE720 C5500000 */  lwc1        $f16, 0x0($t2)
/* 1F66A4 801DE724 3C01800F */  lui         $at, %hi(D_800EA8A0)
/* 1F66A8 801DE728 00300821 */  addu        $at, $at, $s0
/* 1F66AC 801DE72C 46088282 */  mul.s       $f10, $f16, $f8
/* 1F66B0 801DE730 3C07800F */  lui         $a3, %hi(D_800EAA60)
/* 1F66B4 801DE734 24E7AA60 */  addiu       $a3, $a3, %lo(D_800EAA60)
/* 1F66B8 801DE738 3C06800F */  lui         $a2, %hi(D_800EAFA0)
/* 1F66BC 801DE73C 24C6AFA0 */  addiu       $a2, $a2, %lo(D_800EAFA0)
/* 1F66C0 801DE740 2404001E */  addiu       $a0, $zero, 0x1E
/* 1F66C4 801DE744 E42AA8A0 */  swc1        $f10, %lo(D_800EA8A0)($at)
/* 1F66C8 801DE748 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F66CC 801DE74C 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1F66D0 801DE750 000FC880 */  sll         $t9, $t7, 2
/* 1F66D4 801DE754 00F95821 */  addu        $t3, $a3, $t9
/* 1F66D8 801DE758 E5740000 */  swc1        $f20, 0x0($t3)
/* 1F66DC 801DE75C 8C6C0000 */  lw          $t4, 0x0($v1)
/* 1F66E0 801DE760 000C6880 */  sll         $t5, $t4, 2
/* 1F66E4 801DE764 00CD7021 */  addu        $t6, $a2, $t5
/* 1F66E8 801DE768 E5D40000 */  swc1        $f20, 0x0($t6)
/* 1F66EC 801DE76C 8C700000 */  lw          $s0, 0x0($v1)
/* 1F66F0 801DE770 00108080 */  sll         $s0, $s0, 2
/* 1F66F4 801DE774 00D0C021 */  addu        $t8, $a2, $s0
/* 1F66F8 801DE778 C7000000 */  lwc1        $f0, 0x0($t8)
/* 1F66FC 801DE77C 00300821 */  addu        $at, $at, $s0
/* 1F6700 801DE780 E420AC20 */  swc1        $f0, %lo(D_800EAC20)($at)
/* 1F6704 801DE784 8C680000 */  lw          $t0, 0x0($v1)
/* 1F6708 801DE788 3C013FC0 */  lui         $at, (0x3FC00000 >> 16)
/* 1F670C 801DE78C 44812000 */  mtc1        $at, $f4
/* 1F6710 801DE790 00084880 */  sll         $t1, $t0, 2
/* 1F6714 801DE794 00E95021 */  addu        $t2, $a3, $t1
/* 1F6718 801DE798 E5400000 */  swc1        $f0, 0x0($t2)
/* 1F671C 801DE79C 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F6720 801DE7A0 3C01801E */  lui         $at, %hi(D_801E5CF4_ovl13)
/* 1F6724 801DE7A4 000FC880 */  sll         $t9, $t7, 2
/* 1F6728 801DE7A8 02795821 */  addu        $t3, $s3, $t9
/* 1F672C 801DE7AC 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F6730 801DE7B0 8D8D0008 */  lw          $t5, 0x8($t4)
/* 1F6734 801DE7B4 E5A00038 */  swc1        $f0, 0x38($t5)
/* 1F6738 801DE7B8 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1F673C 801DE7BC C4305CF4 */  lwc1        $f16, %lo(D_801E5CF4_ovl13)($at)
/* 1F6740 801DE7C0 8DD00000 */  lw          $s0, 0x0($t6)
/* 1F6744 801DE7C4 00108080 */  sll         $s0, $s0, 2
/* 1F6748 801DE7C8 00B0C021 */  addu        $t8, $a1, $s0
/* 1F674C 801DE7CC C7120000 */  lwc1        $f18, 0x0($t8)
/* 1F6750 801DE7D0 02704021 */  addu        $t0, $s3, $s0
/* 1F6754 801DE7D4 8D090000 */  lw          $t1, 0x0($t0)
/* 1F6758 801DE7D8 46049182 */  mul.s       $f6, $f18, $f4
/* 1F675C 801DE7DC 8D2A0004 */  lw          $t2, 0x4($t1)
/* 1F6760 801DE7E0 46103202 */  mul.s       $f8, $f6, $f16
/* 1F6764 801DE7E4 0C002DAF */  jal         finish_current_thread
/* 1F6768 801DE7E8 E5480034 */   swc1       $f8, 0x34($t2)
/* 1F676C 801DE7EC 3C040001 */  lui         $a0, (0x10420 >> 16)
/* 1F6770 801DE7F0 0C02A806 */  jal         func_800AA018
/* 1F6774 801DE7F4 34840420 */   ori        $a0, $a0, (0x10420 & 0xFFFF)
/* 1F6778 801DE7F8 8E230000 */  lw          $v1, 0x0($s1)
/* 1F677C 801DE7FC 3C01800F */  lui         $at, %hi(D_800EA8A0)
/* 1F6780 801DE800 24040014 */  addiu       $a0, $zero, 0x14
/* 1F6784 801DE804 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6788 801DE808 00108080 */  sll         $s0, $s0, 2
/* 1F678C 801DE80C 00300821 */  addu        $at, $at, $s0
/* 1F6790 801DE810 C42AA8A0 */  lwc1        $f10, %lo(D_800EA8A0)($at)
/* 1F6794 801DE814 3C01801E */  lui         $at, %hi(D_801E5CF8_ovl13)
/* 1F6798 801DE818 C4325CF8 */  lwc1        $f18, %lo(D_801E5CF8_ovl13)($at)
/* 1F679C 801DE81C 3C01800F */  lui         $at, %hi(D_800EAA60)
/* 1F67A0 801DE820 00300821 */  addu        $at, $at, $s0
/* 1F67A4 801DE824 46125102 */  mul.s       $f4, $f10, $f18
/* 1F67A8 801DE828 E424AA60 */  swc1        $f4, %lo(D_800EAA60)($at)
/* 1F67AC 801DE82C 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F67B0 801DE830 3C01801E */  lui         $at, %hi(D_801E5CFC_ovl13)
/* 1F67B4 801DE834 C4265CFC */  lwc1        $f6, %lo(D_801E5CFC_ovl13)($at)
/* 1F67B8 801DE838 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F67BC 801DE83C 000FC880 */  sll         $t9, $t7, 2
/* 1F67C0 801DE840 00390821 */  addu        $at, $at, $t9
/* 1F67C4 801DE844 E426ADE0 */  swc1        $f6, %lo(D_800EADE0)($at)
/* 1F67C8 801DE848 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1F67CC 801DE84C 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F67D0 801DE850 000B6080 */  sll         $t4, $t3, 2
/* 1F67D4 801DE854 002C0821 */  addu        $at, $at, $t4
/* 1F67D8 801DE858 E4343210 */  swc1        $f20, %lo(D_800E3210)($at)
/* 1F67DC 801DE85C 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1F67E0 801DE860 3C01801E */  lui         $at, %hi(D_801E5D00_ovl13)
/* 1F67E4 801DE864 C4305D00 */  lwc1        $f16, %lo(D_801E5D00_ovl13)($at)
/* 1F67E8 801DE868 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F67EC 801DE86C 000D7080 */  sll         $t6, $t5, 2
/* 1F67F0 801DE870 002E0821 */  addu        $at, $at, $t6
/* 1F67F4 801DE874 0C002DAF */  jal         finish_current_thread
/* 1F67F8 801DE878 E4303750 */   swc1       $f16, %lo(D_800E3750)($at)
/* 1F67FC 801DE87C 8E380000 */  lw          $t8, 0x0($s1)
/* 1F6800 801DE880 3C01801E */  lui         $at, %hi(D_801E5D04_ovl13)
/* 1F6804 801DE884 C4285D04 */  lwc1        $f8, %lo(D_801E5D04_ovl13)($at)
/* 1F6808 801DE888 8F080000 */  lw          $t0, 0x0($t8)
/* 1F680C 801DE88C 3C01800F */  lui         $at, %hi(D_800EAFA0)
/* 1F6810 801DE890 3C02800E */  lui         $v0, %hi(gEntitiesNextPosYArray)
/* 1F6814 801DE894 00084880 */  sll         $t1, $t0, 2
/* 1F6818 801DE898 02695021 */  addu        $t2, $s3, $t1
/* 1F681C 801DE89C 8D4F0000 */  lw          $t7, 0x0($t2)
/* 1F6820 801DE8A0 24422790 */  addiu       $v0, $v0, %lo(gEntitiesNextPosYArray)
/* 1F6824 801DE8A4 8DF90008 */  lw          $t9, 0x8($t7)
/* 1F6828 801DE8A8 E7280030 */  swc1        $f8, 0x30($t9)
/* 1F682C 801DE8AC 8E230000 */  lw          $v1, 0x0($s1)
/* 1F6830 801DE8B0 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1F6834 801DE8B4 000B6080 */  sll         $t4, $t3, 2
/* 1F6838 801DE8B8 002C0821 */  addu        $at, $at, $t4
/* 1F683C 801DE8BC E434AFA0 */  swc1        $f20, %lo(D_800EAFA0)($at)
/* 1F6840 801DE8C0 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6844 801DE8C4 3C01800F */  lui         $at, %hi(D_800EAFA0)
/* 1F6848 801DE8C8 00108080 */  sll         $s0, $s0, 2
/* 1F684C 801DE8CC 00300821 */  addu        $at, $at, $s0
/* 1F6850 801DE8D0 C420AFA0 */  lwc1        $f0, %lo(D_800EAFA0)($at)
/* 1F6854 801DE8D4 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F6858 801DE8D8 00300821 */  addu        $at, $at, $s0
/* 1F685C 801DE8DC E420ADE0 */  swc1        $f0, %lo(D_800EADE0)($at)
/* 1F6860 801DE8E0 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1F6864 801DE8E4 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1F6868 801DE8E8 000D7080 */  sll         $t6, $t5, 2
/* 1F686C 801DE8EC 002E0821 */  addu        $at, $at, $t6
/* 1F6870 801DE8F0 E420AC20 */  swc1        $f0, %lo(D_800EAC20)($at)
/* 1F6874 801DE8F4 8C780000 */  lw          $t8, 0x0($v1)
/* 1F6878 801DE8F8 3C01800F */  lui         $at, %hi(D_800EAA60)
/* 1F687C 801DE8FC 00184080 */  sll         $t0, $t8, 2
/* 1F6880 801DE900 00280821 */  addu        $at, $at, $t0
/* 1F6884 801DE904 E420AA60 */  swc1        $f0, %lo(D_800EAA60)($at)
/* 1F6888 801DE908 8C690000 */  lw          $t1, 0x0($v1)
/* 1F688C 801DE90C 3C01800F */  lui         $at, %hi(D_800EA8A0)
/* 1F6890 801DE910 00095080 */  sll         $t2, $t1, 2
/* 1F6894 801DE914 002A0821 */  addu        $at, $at, $t2
/* 1F6898 801DE918 E420A8A0 */  swc1        $f0, %lo(D_800EA8A0)($at)
/* 1F689C 801DE91C 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F68A0 801DE920 3C014140 */  lui         $at, (0x41400000 >> 16)
/* 1F68A4 801DE924 44815000 */  mtc1        $at, $f10
/* 1F68A8 801DE928 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F68AC 801DE92C 000FC880 */  sll         $t9, $t7, 2
/* 1F68B0 801DE930 00390821 */  addu        $at, $at, $t9
/* 1F68B4 801DE934 E42A3210 */  swc1        $f10, %lo(D_800E3210)($at)
/* 1F68B8 801DE938 8C700000 */  lw          $s0, 0x0($v1)
/* 1F68BC 801DE93C 3C0143C8 */  lui         $at, (0x43C80000 >> 16)
/* 1F68C0 801DE940 44813000 */  mtc1        $at, $f6
/* 1F68C4 801DE944 00108080 */  sll         $s0, $s0, 2
/* 1F68C8 801DE948 02506021 */  addu        $t4, $s2, $s0
/* 1F68CC 801DE94C 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F68D0 801DE950 00505821 */  addu        $t3, $v0, $s0
/* 1F68D4 801DE954 C5720000 */  lwc1        $f18, 0x0($t3)
/* 1F68D8 801DE958 000D7080 */  sll         $t6, $t5, 2
/* 1F68DC 801DE95C 004EC021 */  addu        $t8, $v0, $t6
/* 1F68E0 801DE960 C7040000 */  lwc1        $f4, 0x0($t8)
/* 1F68E4 801DE964 46062400 */  add.s       $f16, $f4, $f6
/* 1F68E8 801DE968 4610903C */  c.lt.s      $f18, $f16
/* 1F68EC 801DE96C 00000000 */  nop
/* 1F68F0 801DE970 45020017 */  bc1fl       L801DE9D0_ovl13
/* 1F68F4 801DE974 02706021 */   addu       $t4, $s3, $s0
glabel L801DE978_ovl13
/* 1F68F8 801DE978 0C002DAF */  jal         finish_current_thread
/* 1F68FC 801DE97C 24040001 */   addiu      $a0, $zero, 0x1
/* 1F6900 801DE980 8E280000 */  lw          $t0, 0x0($s1)
/* 1F6904 801DE984 3C02800E */  lui         $v0, %hi(gEntitiesNextPosYArray)
/* 1F6908 801DE988 24422790 */  addiu       $v0, $v0, %lo(gEntitiesNextPosYArray)
/* 1F690C 801DE98C 8D100000 */  lw          $s0, 0x0($t0)
/* 1F6910 801DE990 3C0143C8 */  lui         $at, (0x43C80000 >> 16)
/* 1F6914 801DE994 44812000 */  mtc1        $at, $f4
/* 1F6918 801DE998 00108080 */  sll         $s0, $s0, 2
/* 1F691C 801DE99C 02505021 */  addu        $t2, $s2, $s0
/* 1F6920 801DE9A0 8D4F0000 */  lw          $t7, 0x0($t2)
/* 1F6924 801DE9A4 00504821 */  addu        $t1, $v0, $s0
/* 1F6928 801DE9A8 C5280000 */  lwc1        $f8, 0x0($t1)
/* 1F692C 801DE9AC 000FC880 */  sll         $t9, $t7, 2
/* 1F6930 801DE9B0 00595821 */  addu        $t3, $v0, $t9
/* 1F6934 801DE9B4 C56A0000 */  lwc1        $f10, 0x0($t3)
/* 1F6938 801DE9B8 46045180 */  add.s       $f6, $f10, $f4
/* 1F693C 801DE9BC 4606403C */  c.lt.s      $f8, $f6
/* 1F6940 801DE9C0 00000000 */  nop
/* 1F6944 801DE9C4 4501FFEC */  bc1t        L801DE978_ovl13
/* 1F6948 801DE9C8 00000000 */   nop
/* 1F694C 801DE9CC 02706021 */  addu        $t4, $s3, $s0
glabel L801DE9D0_ovl13
/* 1F6950 801DE9D0 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F6954 801DE9D4 3C07800E */  lui         $a3, %hi(D_800E3750)
/* 1F6958 801DE9D8 24E73750 */  addiu       $a3, $a3, %lo(D_800E3750)
/* 1F695C 801DE9DC 8DAE0004 */  lw          $t6, 0x4($t5)
/* 1F6960 801DE9E0 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F6964 801DE9E4 3C05800E */  lui         $a1, %hi(D_800E5F90)
/* 1F6968 801DE9E8 E5D4001C */  swc1        $f20, 0x1C($t6)
/* 1F696C 801DE9EC 8E230000 */  lw          $v1, 0x0($s1)
/* 1F6970 801DE9F0 24A55F90 */  addiu       $a1, $a1, %lo(D_800E5F90)
/* 1F6974 801DE9F4 3C06800E */  lui         $a2, %hi(D_800E6BD0)
/* 1F6978 801DE9F8 8C780000 */  lw          $t8, 0x0($v1)
/* 1F697C 801DE9FC 24C66BD0 */  addiu       $a2, $a2, %lo(D_800E6BD0)
/* 1F6980 801DEA00 24040003 */  addiu       $a0, $zero, 0x3
/* 1F6984 801DEA04 00184080 */  sll         $t0, $t8, 2
/* 1F6988 801DEA08 00E84821 */  addu        $t1, $a3, $t0
/* 1F698C 801DEA0C E5340000 */  swc1        $f20, 0x0($t1)
/* 1F6990 801DEA10 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6994 801DEA14 8FAB003C */  lw          $t3, 0x3C($sp)
/* 1F6998 801DEA18 3C18800E */  lui         $t8, %hi(D_800E6A10)
/* 1F699C 801DEA1C 00108080 */  sll         $s0, $s0, 2
/* 1F69A0 801DEA20 00F05021 */  addu        $t2, $a3, $s0
/* 1F69A4 801DEA24 C5520000 */  lwc1        $f18, 0x0($t2)
/* 1F69A8 801DEA28 00300821 */  addu        $at, $at, $s0
/* 1F69AC 801DEA2C 27186A10 */  addiu       $t8, $t8, %lo(D_800E6A10)
/* 1F69B0 801DEA30 E4323210 */  swc1        $f18, %lo(D_800E3210)($at)
/* 1F69B4 801DEA34 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F69B8 801DEA38 3C01801E */  lui         $at, %hi(D_801E5D08_ovl13)
/* 1F69BC 801DEA3C C4305D08 */  lwc1        $f16, %lo(D_801E5D08_ovl13)($at)
/* 1F69C0 801DEA40 3C01800E */  lui         $at, %hi(D_800E3C90)
/* 1F69C4 801DEA44 000FC880 */  sll         $t9, $t7, 2
/* 1F69C8 801DEA48 00390821 */  addu        $at, $at, $t9
/* 1F69CC 801DEA4C E4303C90 */  swc1        $f16, %lo(D_800E3C90)($at)
/* 1F69D0 801DEA50 8D6C0080 */  lw          $t4, 0x80($t3)
/* 1F69D4 801DEA54 E5940010 */  swc1        $f20, 0x10($t4)
/* 1F69D8 801DEA58 8E230000 */  lw          $v1, 0x0($s1)
/* 1F69DC 801DEA5C 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1F69E0 801DEA60 000D7080 */  sll         $t6, $t5, 2
/* 1F69E4 801DEA64 01D81021 */  addu        $v0, $t6, $t8
/* 1F69E8 801DEA68 C44A0000 */  lwc1        $f10, 0x0($v0)
/* 1F69EC 801DEA6C 46005107 */  neg.s       $f4, $f10
/* 1F69F0 801DEA70 E4440000 */  swc1        $f4, 0x0($v0)
/* 1F69F4 801DEA74 8C700000 */  lw          $s0, 0x0($v1)
/* 1F69F8 801DEA78 00108080 */  sll         $s0, $s0, 2
/* 1F69FC 801DEA7C 02504021 */  addu        $t0, $s2, $s0
/* 1F6A00 801DEA80 8D090000 */  lw          $t1, 0x0($t0)
/* 1F6A04 801DEA84 00B05821 */  addu        $t3, $a1, $s0
/* 1F6A08 801DEA88 00095080 */  sll         $t2, $t1, 2
/* 1F6A0C 801DEA8C 00AA7821 */  addu        $t7, $a1, $t2
/* 1F6A10 801DEA90 8DF90000 */  lw          $t9, 0x0($t7)
/* 1F6A14 801DEA94 AD790000 */  sw          $t9, 0x0($t3)
/* 1F6A18 801DEA98 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6A1C 801DEA9C 00108080 */  sll         $s0, $s0, 2
/* 1F6A20 801DEAA0 02506021 */  addu        $t4, $s2, $s0
/* 1F6A24 801DEAA4 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F6A28 801DEAA8 00D04021 */  addu        $t0, $a2, $s0
/* 1F6A2C 801DEAAC 000D7080 */  sll         $t6, $t5, 2
/* 1F6A30 801DEAB0 00CEC021 */  addu        $t8, $a2, $t6
/* 1F6A34 801DEAB4 C7080000 */  lwc1        $f8, 0x0($t8)
/* 1F6A38 801DEAB8 0C006291 */  jal         random_soft_s32_range
/* 1F6A3C 801DEABC E5080000 */   swc1       $f8, 0x0($t0)
/* 1F6A40 801DEAC0 8E290000 */  lw          $t1, 0x0($s1)
/* 1F6A44 801DEAC4 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F6A48 801DEAC8 0002C880 */  sll         $t9, $v0, 2
/* 1F6A4C 801DEACC 8D300000 */  lw          $s0, 0x0($t1)
/* 1F6A50 801DEAD0 3C0A800E */  lui         $t2, %hi(D_800E5F90)
/* 1F6A54 801DEAD4 3C0F800E */  lui         $t7, %hi(D_800E6BD0)
/* 1F6A58 801DEAD8 00108080 */  sll         $s0, $s0, 2
/* 1F6A5C 801DEADC 00300821 */  addu        $at, $at, $s0
/* 1F6A60 801DEAE0 C4266A10 */  lwc1        $f6, %lo(D_800E6A10)($at)
/* 1F6A64 801DEAE4 3C01801E */  lui         $at, %hi(D_801E5BB8_ovl13)
/* 1F6A68 801DEAE8 00390821 */  addu        $at, $at, $t9
/* 1F6A6C 801DEAEC C4325BB8 */  lwc1        $f18, %lo(D_801E5BB8_ovl13)($at)
/* 1F6A70 801DEAF0 25EF6BD0 */  addiu       $t7, $t7, %lo(D_800E6BD0)
/* 1F6A74 801DEAF4 254A5F90 */  addiu       $t2, $t2, %lo(D_800E5F90)
/* 1F6A78 801DEAF8 46123402 */  mul.s       $f16, $f6, $f18
/* 1F6A7C 801DEAFC 020A2021 */  addu        $a0, $s0, $t2
/* 1F6A80 801DEB00 020F2821 */  addu        $a1, $s0, $t7
/* 1F6A84 801DEB04 44068000 */  mfc1        $a2, $f16
/* 1F6A88 801DEB08 0C03E65D */  jal         func_800F9974
/* 1F6A8C 801DEB0C 00000000 */   nop
/* 1F6A90 801DEB10 8E2B0000 */  lw          $t3, 0x0($s1)
/* 1F6A94 801DEB14 3C014270 */  lui         $at, (0x42700000 >> 16)
/* 1F6A98 801DEB18 44811000 */  mtc1        $at, $f2
/* 1F6A9C 801DEB1C 8D700000 */  lw          $s0, 0x0($t3)
/* 1F6AA0 801DEB20 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F6AA4 801DEB24 4602A03C */  c.lt.s      $f20, $f2
/* 1F6AA8 801DEB28 00108080 */  sll         $s0, $s0, 2
/* 1F6AAC 801DEB2C 00300821 */  addu        $at, $at, $s0
/* 1F6AB0 801DEB30 C42A6A10 */  lwc1        $f10, %lo(D_800E6A10)($at)
/* 1F6AB4 801DEB34 3C01801E */  lui         $at, %hi(D_801E5D0C_ovl13)
/* 1F6AB8 801DEB38 C4245D0C */  lwc1        $f4, %lo(D_801E5D0C_ovl13)($at)
/* 1F6ABC 801DEB3C 02706021 */  addu        $t4, $s3, $s0
/* 1F6AC0 801DEB40 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F6AC4 801DEB44 46045202 */  mul.s       $f8, $f10, $f4
/* 1F6AC8 801DEB48 3C01801E */  lui         $at, %hi(D_801E5D10_ovl13)
/* 1F6ACC 801DEB4C 8DAE0004 */  lw          $t6, 0x4($t5)
/* 1F6AD0 801DEB50 4600A006 */  mov.s       $f0, $f20
/* 1F6AD4 801DEB54 E5C80034 */  swc1        $f8, 0x34($t6)
/* 1F6AD8 801DEB58 8E380000 */  lw          $t8, 0x0($s1)
/* 1F6ADC 801DEB5C C4265D10 */  lwc1        $f6, %lo(D_801E5D10_ovl13)($at)
/* 1F6AE0 801DEB60 8F080000 */  lw          $t0, 0x0($t8)
/* 1F6AE4 801DEB64 00084880 */  sll         $t1, $t0, 2
/* 1F6AE8 801DEB68 02695021 */  addu        $t2, $s3, $t1
/* 1F6AEC 801DEB6C 8D4F0000 */  lw          $t7, 0x0($t2)
/* 1F6AF0 801DEB70 8DF90008 */  lw          $t9, 0x8($t7)
/* 1F6AF4 801DEB74 45000011 */  bc1f        L801DEBBC_ovl13
/* 1F6AF8 801DEB78 E7260030 */   swc1       $f6, 0x30($t9)
/* 1F6AFC 801DEB7C 8FAB003C */  lw          $t3, 0x3C($sp)
glabel L801DEB80_ovl13
/* 1F6B00 801DEB80 24040001 */  addiu       $a0, $zero, 0x1
/* 1F6B04 801DEB84 8D6C0080 */  lw          $t4, 0x80($t3)
/* 1F6B08 801DEB88 E5800010 */  swc1        $f0, 0x10($t4)
/* 1F6B0C 801DEB8C 0C002DAF */  jal         finish_current_thread
/* 1F6B10 801DEB90 E7A00034 */   swc1       $f0, 0x34($sp)
/* 1F6B14 801DEB94 3C014270 */  lui         $at, (0x42700000 >> 16)
/* 1F6B18 801DEB98 44811000 */  mtc1        $at, $f2
/* 1F6B1C 801DEB9C 3C014000 */  lui         $at, (0x40000000 >> 16)
/* 1F6B20 801DEBA0 44819000 */  mtc1        $at, $f18
/* 1F6B24 801DEBA4 C7A00034 */  lwc1        $f0, 0x34($sp)
/* 1F6B28 801DEBA8 46120000 */  add.s       $f0, $f0, $f18
/* 1F6B2C 801DEBAC 4602003C */  c.lt.s      $f0, $f2
/* 1F6B30 801DEBB0 00000000 */  nop
/* 1F6B34 801DEBB4 4503FFF2 */  bc1tl       L801DEB80_ovl13
/* 1F6B38 801DEBB8 8FAB003C */   lw         $t3, 0x3C($sp)
glabel L801DEBBC_ovl13
/* 1F6B3C 801DEBBC 8FAD003C */  lw          $t5, 0x3C($sp)
/* 1F6B40 801DEBC0 3C040001 */  lui         $a0, (0x10419 >> 16)
/* 1F6B44 801DEBC4 34840419 */  ori         $a0, $a0, (0x10419 & 0xFFFF)
/* 1F6B48 801DEBC8 8DAE0080 */  lw          $t6, 0x80($t5)
/* 1F6B4C 801DEBCC 0C02A806 */  jal         func_800AA018
/* 1F6B50 801DEBD0 E5C20010 */   swc1       $f2, 0x10($t6)
/* 1F6B54 801DEBD4 8E230000 */  lw          $v1, 0x0($s1)
/* 1F6B58 801DEBD8 3C02800E */  lui         $v0, %hi(D_800E6690)
/* 1F6B5C 801DEBDC 24426690 */  addiu       $v0, $v0, %lo(D_800E6690)
/* 1F6B60 801DEBE0 8C780000 */  lw          $t8, 0x0($v1)
/* 1F6B64 801DEBE4 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F6B68 801DEBE8 24040187 */  addiu       $a0, $zero, 0x187
/* 1F6B6C 801DEBEC 00184080 */  sll         $t0, $t8, 2
/* 1F6B70 801DEBF0 00484821 */  addu        $t1, $v0, $t0
/* 1F6B74 801DEBF4 E5340000 */  swc1        $f20, 0x0($t1)
/* 1F6B78 801DEBF8 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6B7C 801DEBFC 00108080 */  sll         $s0, $s0, 2
/* 1F6B80 801DEC00 00505021 */  addu        $t2, $v0, $s0
/* 1F6B84 801DEC04 C5500000 */  lwc1        $f16, 0x0($t2)
/* 1F6B88 801DEC08 00300821 */  addu        $at, $at, $s0
/* 1F6B8C 801DEC0C E43064D0 */  swc1        $f16, %lo(D_800E64D0)($at)
/* 1F6B90 801DEC10 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F6B94 801DEC14 3C01801E */  lui         $at, %hi(D_801E5D14_ovl13)
/* 1F6B98 801DEC18 C42A5D14 */  lwc1        $f10, %lo(D_801E5D14_ovl13)($at)
/* 1F6B9C 801DEC1C 3C01800E */  lui         $at, %hi(D_800E6850)
/* 1F6BA0 801DEC20 000FC880 */  sll         $t9, $t7, 2
/* 1F6BA4 801DEC24 00390821 */  addu        $at, $at, $t9
/* 1F6BA8 801DEC28 E42A6850 */  swc1        $f10, %lo(D_800E6850)($at)
/* 1F6BAC 801DEC2C 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1F6BB0 801DEC30 3C01C140 */  lui         $at, (0xC1400000 >> 16)
/* 1F6BB4 801DEC34 44812000 */  mtc1        $at, $f4
/* 1F6BB8 801DEC38 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F6BBC 801DEC3C 000B6080 */  sll         $t4, $t3, 2
/* 1F6BC0 801DEC40 002C0821 */  addu        $at, $at, $t4
/* 1F6BC4 801DEC44 E4243210 */  swc1        $f4, %lo(D_800E3210)($at)
/* 1F6BC8 801DEC48 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1F6BCC 801DEC4C 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F6BD0 801DEC50 000D7080 */  sll         $t6, $t5, 2
/* 1F6BD4 801DEC54 002E0821 */  addu        $at, $at, $t6
/* 1F6BD8 801DEC58 0C029D9E */  jal         play_sound
/* 1F6BDC 801DEC5C E4343750 */   swc1       $f20, %lo(D_800E3750)($at)
/* 1F6BE0 801DEC60 8E380000 */  lw          $t8, 0x0($s1)
/* 1F6BE4 801DEC64 3C08800F */  lui         $t0, %hi(D_800E8920)
/* 1F6BE8 801DEC68 8F100000 */  lw          $s0, 0x0($t8)
/* 1F6BEC 801DEC6C 00108080 */  sll         $s0, $s0, 2
/* 1F6BF0 801DEC70 01104021 */  addu        $t0, $t0, $s0
/* 1F6BF4 801DEC74 8D088920 */  lw          $t0, %lo(D_800E8920)($t0)
/* 1F6BF8 801DEC78 1500000B */  bnez        $t0, L801DECA8_ovl13
/* 1F6BFC 801DEC7C 00000000 */   nop
glabel L801DEC80_ovl13
/* 1F6C00 801DEC80 0C002DAF */  jal         finish_current_thread
/* 1F6C04 801DEC84 24040001 */   addiu      $a0, $zero, 0x1
/* 1F6C08 801DEC88 8E290000 */  lw          $t1, 0x0($s1)
/* 1F6C0C 801DEC8C 3C0A800F */  lui         $t2, %hi(D_800E8920)
/* 1F6C10 801DEC90 8D300000 */  lw          $s0, 0x0($t1)
/* 1F6C14 801DEC94 00108080 */  sll         $s0, $s0, 2
/* 1F6C18 801DEC98 01505021 */  addu        $t2, $t2, $s0
/* 1F6C1C 801DEC9C 8D4A8920 */  lw          $t2, %lo(D_800E8920)($t2)
/* 1F6C20 801DECA0 1140FFF7 */  beqz        $t2, L801DEC80_ovl13
/* 1F6C24 801DECA4 00000000 */   nop
glabel L801DECA8_ovl13
/* 1F6C28 801DECA8 3C01800F */  lui         $at, %hi(D_800E9FE0)
/* 1F6C2C 801DECAC 00300821 */  addu        $at, $at, $s0
/* 1F6C30 801DECB0 240F0001 */  addiu       $t7, $zero, 0x1
/* 1F6C34 801DECB4 3C040001 */  lui         $a0, (0x1041A >> 16)
/* 1F6C38 801DECB8 AC2F9FE0 */  sw          $t7, %lo(D_800E9FE0)($at)
/* 1F6C3C 801DECBC 3484041A */  ori         $a0, $a0, (0x1041A & 0xFFFF)
/* 1F6C40 801DECC0 0C02A7E6 */  jal         func_800A9F98
/* 1F6C44 801DECC4 3C054080 */   lui        $a1, (0x40800000 >> 16)
/* 1F6C48 801DECC8 8E2B0000 */  lw          $t3, 0x0($s1)
/* 1F6C4C 801DECCC 3C19801E */  lui         $t9, %hi(func_801DF588_ovl13)
/* 1F6C50 801DECD0 3C01800E */  lui         $at, %hi(D_800DF310)
/* 1F6C54 801DECD4 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F6C58 801DECD8 2739F588 */  addiu       $t9, $t9, %lo(func_801DF588_ovl13)
/* 1F6C5C 801DECDC 000C6880 */  sll         $t5, $t4, 2
/* 1F6C60 801DECE0 002D0821 */  addu        $at, $at, $t5
/* 1F6C64 801DECE4 0C02CCFD */  jal         func_800B33F4
/* 1F6C68 801DECE8 AC39F310 */   sw         $t9, %lo(D_800DF310)($at)
/* 1F6C6C 801DECEC 0C03EE45 */  jal         func_800FB914
/* 1F6C70 801DECF0 24040001 */   addiu      $a0, $zero, 0x1
/* 1F6C74 801DECF4 0C029D9E */  jal         play_sound
/* 1F6C78 801DECF8 24040185 */   addiu      $a0, $zero, 0x185
/* 1F6C7C 801DECFC 00002025 */  move        $a0, $zero
/* 1F6C80 801DED00 0C02ED1A */  jal         func_800BB468
/* 1F6C84 801DED04 00002825 */   move       $a1, $zero
/* 1F6C88 801DED08 2404001C */  addiu       $a0, $zero, 0x1C
/* 1F6C8C 801DED0C 0C06B30D */  jal         func_801ACC34_ovl7
/* 1F6C90 801DED10 00002825 */   move       $a1, $zero
/* 1F6C94 801DED14 2404001C */  addiu       $a0, $zero, 0x1C
/* 1F6C98 801DED18 0C06B30D */  jal         func_801ACC34_ovl7
/* 1F6C9C 801DED1C 24050001 */   addiu      $a1, $zero, 0x1
/* 1F6CA0 801DED20 8E230000 */  lw          $v1, 0x0($s1)
/* 1F6CA4 801DED24 3C0E800F */  lui         $t6, %hi(D_800E9FE0)
/* 1F6CA8 801DED28 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6CAC 801DED2C 00108080 */  sll         $s0, $s0, 2
/* 1F6CB0 801DED30 01D07021 */  addu        $t6, $t6, $s0
/* 1F6CB4 801DED34 8DCE9FE0 */  lw          $t6, %lo(D_800E9FE0)($t6)
/* 1F6CB8 801DED38 51C0000C */  beql        $t6, $zero, L801DED6C_ovl13
/* 1F6CBC 801DED3C 3C0141A0 */   lui        $at, (0x41A00000 >> 16)
glabel L801DED40_ovl13
/* 1F6CC0 801DED40 0C002DAF */  jal         finish_current_thread
/* 1F6CC4 801DED44 24040001 */   addiu      $a0, $zero, 0x1
/* 1F6CC8 801DED48 8E230000 */  lw          $v1, 0x0($s1)
/* 1F6CCC 801DED4C 3C18800F */  lui         $t8, %hi(D_800E9FE0)
/* 1F6CD0 801DED50 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6CD4 801DED54 00108080 */  sll         $s0, $s0, 2
/* 1F6CD8 801DED58 0310C021 */  addu        $t8, $t8, $s0
/* 1F6CDC 801DED5C 8F189FE0 */  lw          $t8, %lo(D_800E9FE0)($t8)
/* 1F6CE0 801DED60 1700FFF7 */  bnez        $t8, L801DED40_ovl13
/* 1F6CE4 801DED64 00000000 */   nop
/* 1F6CE8 801DED68 3C0141A0 */  lui         $at, (0x41A00000 >> 16)
glabel L801DED6C_ovl13
/* 1F6CEC 801DED6C 44810000 */  mtc1        $at, $f0
/* 1F6CF0 801DED70 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F6CF4 801DED74 00300821 */  addu        $at, $at, $s0
/* 1F6CF8 801DED78 AC208920 */  sw          $zero, %lo(D_800E8920)($at)
/* 1F6CFC 801DED7C 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6D00 801DED80 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1F6D04 801DED84 24040014 */  addiu       $a0, $zero, 0x14
/* 1F6D08 801DED88 00108080 */  sll         $s0, $s0, 2
/* 1F6D0C 801DED8C 02704021 */  addu        $t0, $s3, $s0
/* 1F6D10 801DED90 8D090000 */  lw          $t1, 0x0($t0)
/* 1F6D14 801DED94 00300821 */  addu        $at, $at, $s0
/* 1F6D18 801DED98 8D2A0004 */  lw          $t2, 0x4($t1)
/* 1F6D1C 801DED9C C5480034 */  lwc1        $f8, 0x34($t2)
/* 1F6D20 801DEDA0 46004183 */  div.s       $f6, $f8, $f0
/* 1F6D24 801DEDA4 46003487 */  neg.s       $f18, $f6
/* 1F6D28 801DEDA8 E432AC20 */  swc1        $f18, %lo(D_800EAC20)($at)
/* 1F6D2C 801DEDAC 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6D30 801DEDB0 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F6D34 801DEDB4 00108080 */  sll         $s0, $s0, 2
/* 1F6D38 801DEDB8 02707821 */  addu        $t7, $s3, $s0
/* 1F6D3C 801DEDBC 8DEB0000 */  lw          $t3, 0x0($t7)
/* 1F6D40 801DEDC0 00300821 */  addu        $at, $at, $s0
/* 1F6D44 801DEDC4 8D6C0008 */  lw          $t4, 0x8($t3)
/* 1F6D48 801DEDC8 C5900030 */  lwc1        $f16, 0x30($t4)
/* 1F6D4C 801DEDCC 46008283 */  div.s       $f10, $f16, $f0
/* 1F6D50 801DEDD0 46005107 */  neg.s       $f4, $f10
/* 1F6D54 801DEDD4 E424ADE0 */  swc1        $f4, %lo(D_800EADE0)($at)
/* 1F6D58 801DEDD8 8C790000 */  lw          $t9, 0x0($v1)
/* 1F6D5C 801DEDDC 3C014100 */  lui         $at, (0x41000000 >> 16)
/* 1F6D60 801DEDE0 44814000 */  mtc1        $at, $f8
/* 1F6D64 801DEDE4 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F6D68 801DEDE8 00196880 */  sll         $t5, $t9, 2
/* 1F6D6C 801DEDEC 002D0821 */  addu        $at, $at, $t5
/* 1F6D70 801DEDF0 E4283210 */  swc1        $f8, %lo(D_800E3210)($at)
/* 1F6D74 801DEDF4 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6D78 801DEDF8 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F6D7C 801DEDFC 00108080 */  sll         $s0, $s0, 2
/* 1F6D80 801DEE00 00300821 */  addu        $at, $at, $s0
/* 1F6D84 801DEE04 C4266A10 */  lwc1        $f6, %lo(D_800E6A10)($at)
/* 1F6D88 801DEE08 3C01801E */  lui         $at, %hi(D_801E5D18_ovl13)
/* 1F6D8C 801DEE0C C4325D18 */  lwc1        $f18, %lo(D_801E5D18_ovl13)($at)
/* 1F6D90 801DEE10 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F6D94 801DEE14 00300821 */  addu        $at, $at, $s0
/* 1F6D98 801DEE18 46123402 */  mul.s       $f16, $f6, $f18
/* 1F6D9C 801DEE1C E4306690 */  swc1        $f16, %lo(D_800E6690)($at)
/* 1F6DA0 801DEE20 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1F6DA4 801DEE24 3C01801E */  lui         $at, %hi(D_801E5D1C_ovl13)
/* 1F6DA8 801DEE28 C42A5D1C */  lwc1        $f10, %lo(D_801E5D1C_ovl13)($at)
/* 1F6DAC 801DEE2C 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F6DB0 801DEE30 000EC080 */  sll         $t8, $t6, 2
/* 1F6DB4 801DEE34 00380821 */  addu        $at, $at, $t8
/* 1F6DB8 801DEE38 0C002DAF */  jal         finish_current_thread
/* 1F6DBC 801DEE3C E42A3750 */   swc1       $f10, %lo(D_800E3750)($at)
/* 1F6DC0 801DEE40 8E230000 */  lw          $v1, 0x0($s1)
/* 1F6DC4 801DEE44 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F6DC8 801DEE48 8C680000 */  lw          $t0, 0x0($v1)
/* 1F6DCC 801DEE4C 00084880 */  sll         $t1, $t0, 2
/* 1F6DD0 801DEE50 00290821 */  addu        $at, $at, $t1
/* 1F6DD4 801DEE54 E434ADE0 */  swc1        $f20, %lo(D_800EADE0)($at)
/* 1F6DD8 801DEE58 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6DDC 801DEE5C 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F6DE0 801DEE60 00108080 */  sll         $s0, $s0, 2
/* 1F6DE4 801DEE64 00300821 */  addu        $at, $at, $s0
/* 1F6DE8 801DEE68 C420ADE0 */  lwc1        $f0, %lo(D_800EADE0)($at)
/* 1F6DEC 801DEE6C 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1F6DF0 801DEE70 00300821 */  addu        $at, $at, $s0
/* 1F6DF4 801DEE74 E420AC20 */  swc1        $f0, %lo(D_800EAC20)($at)
/* 1F6DF8 801DEE78 8C6A0000 */  lw          $t2, 0x0($v1)
/* 1F6DFC 801DEE7C 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1F6E00 801DEE80 000A7880 */  sll         $t7, $t2, 2
/* 1F6E04 801DEE84 026F5821 */  addu        $t3, $s3, $t7
/* 1F6E08 801DEE88 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F6E0C 801DEE8C 8D990004 */  lw          $t9, 0x4($t4)
/* 1F6E10 801DEE90 E7200034 */  swc1        $f0, 0x34($t9)
/* 1F6E14 801DEE94 8E2D0000 */  lw          $t5, 0x0($s1)
/* 1F6E18 801DEE98 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F6E1C 801DEE9C 000EC080 */  sll         $t8, $t6, 2
/* 1F6E20 801DEEA0 02784021 */  addu        $t0, $s3, $t8
/* 1F6E24 801DEEA4 8D090000 */  lw          $t1, 0x0($t0)
/* 1F6E28 801DEEA8 8D2A0008 */  lw          $t2, 0x8($t1)
/* 1F6E2C 801DEEAC E5400030 */  swc1        $f0, 0x30($t2)
/* 1F6E30 801DEEB0 8E230000 */  lw          $v1, 0x0($s1)
/* 1F6E34 801DEEB4 8C700000 */  lw          $s0, 0x0($v1)
/* 1F6E38 801DEEB8 00108080 */  sll         $s0, $s0, 2
/* 1F6E3C 801DEEBC 00300821 */  addu        $at, $at, $s0
/* 1F6E40 801DEEC0 C4246A10 */  lwc1        $f4, %lo(D_800E6A10)($at)
/* 1F6E44 801DEEC4 3C01C080 */  lui         $at, (0xC0800000 >> 16)
/* 1F6E48 801DEEC8 44814000 */  mtc1        $at, $f8
/* 1F6E4C 801DEECC 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F6E50 801DEED0 00300821 */  addu        $at, $at, $s0
/* 1F6E54 801DEED4 46082182 */  mul.s       $f6, $f4, $f8
/* 1F6E58 801DEED8 E42664D0 */  swc1        $f6, %lo(D_800E64D0)($at)
/* 1F6E5C 801DEEDC 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F6E60 801DEEE0 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F6E64 801DEEE4 000F5880 */  sll         $t3, $t7, 2
/* 1F6E68 801DEEE8 002B0821 */  addu        $at, $at, $t3
/* 1F6E6C 801DEEEC E4343210 */  swc1        $f20, %lo(D_800E3210)($at)
/* 1F6E70 801DEEF0 8C6C0000 */  lw          $t4, 0x0($v1)
/* 1F6E74 801DEEF4 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F6E78 801DEEF8 000CC880 */  sll         $t9, $t4, 2
/* 1F6E7C 801DEEFC 00390821 */  addu        $at, $at, $t9
/* 1F6E80 801DEF00 E4346690 */  swc1        $f20, %lo(D_800E6690)($at)
/* 1F6E84 801DEF04 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1F6E88 801DEF08 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F6E8C 801DEF0C 000D7080 */  sll         $t6, $t5, 2
/* 1F6E90 801DEF10 002E0821 */  addu        $at, $at, $t6
/* 1F6E94 801DEF14 0C02BC9F */  jal         func_800AF27C
/* 1F6E98 801DEF18 E4343750 */   swc1       $f20, %lo(D_800E3750)($at)
/* 1F6E9C 801DEF1C 3C040001 */  lui         $a0, (0x10427 >> 16)
/* 1F6EA0 801DEF20 0C02A806 */  jal         func_800AA018
/* 1F6EA4 801DEF24 34840427 */   ori        $a0, $a0, (0x10427 & 0xFFFF)
/* 1F6EA8 801DEF28 8E380000 */  lw          $t8, 0x0($s1)
/* 1F6EAC 801DEF2C 8F080000 */  lw          $t0, 0x0($t8)
/* 1F6EB0 801DEF30 00084880 */  sll         $t1, $t0, 2
/* 1F6EB4 801DEF34 02495021 */  addu        $t2, $s2, $t1
/* 1F6EB8 801DEF38 0C06769C */  jal         func_8019DA70_ovl7
/* 1F6EBC 801DEF3C 8D440000 */   lw         $a0, 0x0($t2)
/* 1F6EC0 801DEF40 44809000 */  mtc1        $zero, $f18
/* 1F6EC4 801DEF44 00000000 */  nop
/* 1F6EC8 801DEF48 4612003C */  c.lt.s      $f0, $f18
/* 1F6ECC 801DEF4C 00000000 */  nop
/* 1F6ED0 801DEF50 4502000A */  bc1fl       L801DEF7C_ovl13
/* 1F6ED4 801DEF54 8E2D0000 */   lw         $t5, 0x0($s1)
/* 1F6ED8 801DEF58 8E2F0000 */  lw          $t7, 0x0($s1)
/* 1F6EDC 801DEF5C 8DEB0000 */  lw          $t3, 0x0($t7)
/* 1F6EE0 801DEF60 000B6080 */  sll         $t4, $t3, 2
/* 1F6EE4 801DEF64 024CC821 */  addu        $t9, $s2, $t4
/* 1F6EE8 801DEF68 0C06769C */  jal         func_8019DA70_ovl7
/* 1F6EEC 801DEF6C 8F240000 */   lw         $a0, 0x0($t9)
/* 1F6EF0 801DEF70 10000008 */  b           L801DEF94_ovl13
/* 1F6EF4 801DEF74 46000087 */   neg.s      $f2, $f0
/* 1F6EF8 801DEF78 8E2D0000 */  lw          $t5, 0x0($s1)
glabel L801DEF7C_ovl13
/* 1F6EFC 801DEF7C 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F6F00 801DEF80 000EC080 */  sll         $t8, $t6, 2
/* 1F6F04 801DEF84 02584021 */  addu        $t0, $s2, $t8
/* 1F6F08 801DEF88 0C06769C */  jal         func_8019DA70_ovl7
/* 1F6F0C 801DEF8C 8D040000 */   lw         $a0, 0x0($t0)
/* 1F6F10 801DEF90 46000086 */  mov.s       $f2, $f0
glabel L801DEF94_ovl13
/* 1F6F14 801DEF94 3C014348 */  lui         $at, (0x43480000 >> 16)
/* 1F6F18 801DEF98 44818000 */  mtc1        $at, $f16
/* 1F6F1C 801DEF9C 00000000 */  nop
/* 1F6F20 801DEFA0 4610103C */  c.lt.s      $f2, $f16
/* 1F6F24 801DEFA4 00000000 */  nop
/* 1F6F28 801DEFA8 45020026 */  bc1fl       L801DF044_ovl13
/* 1F6F2C 801DEFAC 8E2F0000 */   lw         $t7, 0x0($s1)
glabel L801DEFB0_ovl13
/* 1F6F30 801DEFB0 0C002DAF */  jal         finish_current_thread
/* 1F6F34 801DEFB4 24040001 */   addiu      $a0, $zero, 0x1
/* 1F6F38 801DEFB8 8E290000 */  lw          $t1, 0x0($s1)
/* 1F6F3C 801DEFBC 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1F6F40 801DEFC0 000A7880 */  sll         $t7, $t2, 2
/* 1F6F44 801DEFC4 024F5821 */  addu        $t3, $s2, $t7
/* 1F6F48 801DEFC8 0C06769C */  jal         func_8019DA70_ovl7
/* 1F6F4C 801DEFCC 8D640000 */   lw         $a0, 0x0($t3)
/* 1F6F50 801DEFD0 44805000 */  mtc1        $zero, $f10
/* 1F6F54 801DEFD4 00000000 */  nop
/* 1F6F58 801DEFD8 460A003C */  c.lt.s      $f0, $f10
/* 1F6F5C 801DEFDC 00000000 */  nop
/* 1F6F60 801DEFE0 4502000A */  bc1fl       L801DF00C_ovl13
/* 1F6F64 801DEFE4 8E380000 */   lw         $t8, 0x0($s1)
/* 1F6F68 801DEFE8 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1F6F6C 801DEFEC 8D990000 */  lw          $t9, 0x0($t4)
/* 1F6F70 801DEFF0 00196880 */  sll         $t5, $t9, 2
/* 1F6F74 801DEFF4 024D7021 */  addu        $t6, $s2, $t5
/* 1F6F78 801DEFF8 0C06769C */  jal         func_8019DA70_ovl7
/* 1F6F7C 801DEFFC 8DC40000 */   lw         $a0, 0x0($t6)
/* 1F6F80 801DF000 10000008 */  b           L801DF024_ovl13
/* 1F6F84 801DF004 46000087 */   neg.s      $f2, $f0
/* 1F6F88 801DF008 8E380000 */  lw          $t8, 0x0($s1)
glabel L801DF00C_ovl13
/* 1F6F8C 801DF00C 8F080000 */  lw          $t0, 0x0($t8)
/* 1F6F90 801DF010 00084880 */  sll         $t1, $t0, 2
/* 1F6F94 801DF014 02495021 */  addu        $t2, $s2, $t1
/* 1F6F98 801DF018 0C06769C */  jal         func_8019DA70_ovl7
/* 1F6F9C 801DF01C 8D440000 */   lw         $a0, 0x0($t2)
/* 1F6FA0 801DF020 46000086 */  mov.s       $f2, $f0
glabel L801DF024_ovl13
/* 1F6FA4 801DF024 3C014348 */  lui         $at, (0x43480000 >> 16)
/* 1F6FA8 801DF028 44812000 */  mtc1        $at, $f4
/* 1F6FAC 801DF02C 00000000 */  nop
/* 1F6FB0 801DF030 4604103C */  c.lt.s      $f2, $f4
/* 1F6FB4 801DF034 00000000 */  nop
/* 1F6FB8 801DF038 4501FFDD */  bc1t        L801DEFB0_ovl13
/* 1F6FBC 801DF03C 00000000 */   nop
/* 1F6FC0 801DF040 8E2F0000 */  lw          $t7, 0x0($s1)
glabel L801DF044_ovl13
/* 1F6FC4 801DF044 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F6FC8 801DF048 2404000A */  addiu       $a0, $zero, 0xA
/* 1F6FCC 801DF04C 8DF00000 */  lw          $s0, 0x0($t7)
/* 1F6FD0 801DF050 00108080 */  sll         $s0, $s0, 2
/* 1F6FD4 801DF054 00300821 */  addu        $at, $at, $s0
/* 1F6FD8 801DF058 C42864D0 */  lwc1        $f8, %lo(D_800E64D0)($at)
/* 1F6FDC 801DF05C 3C01801E */  lui         $at, %hi(D_801E5D20_ovl13)
/* 1F6FE0 801DF060 C4265D20 */  lwc1        $f6, %lo(D_801E5D20_ovl13)($at)
/* 1F6FE4 801DF064 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F6FE8 801DF068 00300821 */  addu        $at, $at, $s0
/* 1F6FEC 801DF06C 46064482 */  mul.s       $f18, $f8, $f6
/* 1F6FF0 801DF070 0C002DAF */  jal         finish_current_thread
/* 1F6FF4 801DF074 E4326690 */   swc1       $f18, %lo(D_800E6690)($at)
/* 1F6FF8 801DF078 0C02CD48 */  jal         func_800B3520
/* 1F6FFC 801DF07C 00000000 */   nop
/* 1F7000 801DF080 0C02BC9F */  jal         func_800AF27C
/* 1F7004 801DF084 00000000 */   nop
/* 1F7008 801DF088 8E2B0000 */  lw          $t3, 0x0($s1)
/* 1F700C 801DF08C 3C01800F */  lui         $at, %hi(D_800EAFA0)
/* 1F7010 801DF090 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F7014 801DF094 000CC880 */  sll         $t9, $t4, 2
/* 1F7018 801DF098 02796821 */  addu        $t5, $s3, $t9
/* 1F701C 801DF09C 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F7020 801DF0A0 8DD80004 */  lw          $t8, 0x4($t6)
/* 1F7024 801DF0A4 E7140024 */  swc1        $f20, 0x24($t8)
/* 1F7028 801DF0A8 8E280000 */  lw          $t0, 0x0($s1)
/* 1F702C 801DF0AC 8D090000 */  lw          $t1, 0x0($t0)
/* 1F7030 801DF0B0 00095080 */  sll         $t2, $t1, 2
/* 1F7034 801DF0B4 026A7821 */  addu        $t7, $s3, $t2
/* 1F7038 801DF0B8 8DEB0000 */  lw          $t3, 0x0($t7)
/* 1F703C 801DF0BC 8D620004 */  lw          $v0, 0x4($t3)
/* 1F7040 801DF0C0 C4420024 */  lwc1        $f2, 0x24($v0)
/* 1F7044 801DF0C4 E4420020 */  swc1        $f2, 0x20($v0)
/* 1F7048 801DF0C8 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1F704C 801DF0CC 8D990000 */  lw          $t9, 0x0($t4)
/* 1F7050 801DF0D0 00196880 */  sll         $t5, $t9, 2
/* 1F7054 801DF0D4 026D7021 */  addu        $t6, $s3, $t5
/* 1F7058 801DF0D8 8DD80000 */  lw          $t8, 0x0($t6)
/* 1F705C 801DF0DC 8F080004 */  lw          $t0, 0x4($t8)
/* 1F7060 801DF0E0 E502001C */  swc1        $f2, 0x1C($t0)
/* 1F7064 801DF0E4 8E290000 */  lw          $t1, 0x0($s1)
/* 1F7068 801DF0E8 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1F706C 801DF0EC 000A7880 */  sll         $t7, $t2, 2
/* 1F7070 801DF0F0 026F5821 */  addu        $t3, $s3, $t7
/* 1F7074 801DF0F4 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F7078 801DF0F8 8D990008 */  lw          $t9, 0x8($t4)
/* 1F707C 801DF0FC E7340024 */  swc1        $f20, 0x24($t9)
/* 1F7080 801DF100 8E2D0000 */  lw          $t5, 0x0($s1)
/* 1F7084 801DF104 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F7088 801DF108 000EC080 */  sll         $t8, $t6, 2
/* 1F708C 801DF10C 02784021 */  addu        $t0, $s3, $t8
/* 1F7090 801DF110 8D090000 */  lw          $t1, 0x0($t0)
/* 1F7094 801DF114 8D240008 */  lw          $a0, 0x8($t1)
/* 1F7098 801DF118 C4820024 */  lwc1        $f2, 0x24($a0)
/* 1F709C 801DF11C E4820020 */  swc1        $f2, 0x20($a0)
/* 1F70A0 801DF120 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1F70A4 801DF124 8D4F0000 */  lw          $t7, 0x0($t2)
/* 1F70A8 801DF128 000F5880 */  sll         $t3, $t7, 2
/* 1F70AC 801DF12C 026B6021 */  addu        $t4, $s3, $t3
/* 1F70B0 801DF130 8D990000 */  lw          $t9, 0x0($t4)
/* 1F70B4 801DF134 8F2D0008 */  lw          $t5, 0x8($t9)
/* 1F70B8 801DF138 E5A2001C */  swc1        $f2, 0x1C($t5)
/* 1F70BC 801DF13C 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1F70C0 801DF140 8DD80000 */  lw          $t8, 0x0($t6)
/* 1F70C4 801DF144 00184080 */  sll         $t0, $t8, 2
/* 1F70C8 801DF148 02684821 */  addu        $t1, $s3, $t0
/* 1F70CC 801DF14C 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1F70D0 801DF150 8D4F0004 */  lw          $t7, 0x4($t2)
/* 1F70D4 801DF154 E5F40038 */  swc1        $f20, 0x38($t7)
/* 1F70D8 801DF158 8E2B0000 */  lw          $t3, 0x0($s1)
/* 1F70DC 801DF15C 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F70E0 801DF160 000CC880 */  sll         $t9, $t4, 2
/* 1F70E4 801DF164 02796821 */  addu        $t5, $s3, $t9
/* 1F70E8 801DF168 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F70EC 801DF16C 8DC20004 */  lw          $v0, 0x4($t6)
/* 1F70F0 801DF170 C4420038 */  lwc1        $f2, 0x38($v0)
/* 1F70F4 801DF174 E4420034 */  swc1        $f2, 0x34($v0)
/* 1F70F8 801DF178 8E380000 */  lw          $t8, 0x0($s1)
/* 1F70FC 801DF17C 8F080000 */  lw          $t0, 0x0($t8)
/* 1F7100 801DF180 00084880 */  sll         $t1, $t0, 2
/* 1F7104 801DF184 02695021 */  addu        $t2, $s3, $t1
/* 1F7108 801DF188 8D4F0000 */  lw          $t7, 0x0($t2)
/* 1F710C 801DF18C 8DEB0004 */  lw          $t3, 0x4($t7)
/* 1F7110 801DF190 E5620030 */  swc1        $f2, 0x30($t3)
/* 1F7114 801DF194 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1F7118 801DF198 8D990000 */  lw          $t9, 0x0($t4)
/* 1F711C 801DF19C 00196880 */  sll         $t5, $t9, 2
/* 1F7120 801DF1A0 026D7021 */  addu        $t6, $s3, $t5
/* 1F7124 801DF1A4 8DD80000 */  lw          $t8, 0x0($t6)
/* 1F7128 801DF1A8 8F080008 */  lw          $t0, 0x8($t8)
/* 1F712C 801DF1AC E5140038 */  swc1        $f20, 0x38($t0)
/* 1F7130 801DF1B0 8E290000 */  lw          $t1, 0x0($s1)
/* 1F7134 801DF1B4 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1F7138 801DF1B8 000A7880 */  sll         $t7, $t2, 2
/* 1F713C 801DF1BC 026F5821 */  addu        $t3, $s3, $t7
/* 1F7140 801DF1C0 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F7144 801DF1C4 8D840008 */  lw          $a0, 0x8($t4)
/* 1F7148 801DF1C8 C4820038 */  lwc1        $f2, 0x38($a0)
/* 1F714C 801DF1CC E4820034 */  swc1        $f2, 0x34($a0)
/* 1F7150 801DF1D0 8E390000 */  lw          $t9, 0x0($s1)
/* 1F7154 801DF1D4 8F2D0000 */  lw          $t5, 0x0($t9)
/* 1F7158 801DF1D8 000D7080 */  sll         $t6, $t5, 2
/* 1F715C 801DF1DC 026EC021 */  addu        $t8, $s3, $t6
/* 1F7160 801DF1E0 8F080000 */  lw          $t0, 0x0($t8)
/* 1F7164 801DF1E4 8D090008 */  lw          $t1, 0x8($t0)
/* 1F7168 801DF1E8 24080001 */  addiu       $t0, $zero, 0x1
/* 1F716C 801DF1EC E5220030 */  swc1        $f2, 0x30($t1)
/* 1F7170 801DF1F0 8E230000 */  lw          $v1, 0x0($s1)
/* 1F7174 801DF1F4 8FBF002C */  lw          $ra, 0x2C($sp)
/* 1F7178 801DF1F8 8FB10020 */  lw          $s1, 0x20($sp)
/* 1F717C 801DF1FC 8C6A0000 */  lw          $t2, 0x0($v1)
/* 1F7180 801DF200 8FB30028 */  lw          $s3, 0x28($sp)
/* 1F7184 801DF204 8FB20024 */  lw          $s2, 0x24($sp)
/* 1F7188 801DF208 000A7880 */  sll         $t7, $t2, 2
/* 1F718C 801DF20C 002F0821 */  addu        $at, $at, $t7
/* 1F7190 801DF210 E434AFA0 */  swc1        $f20, %lo(D_800EAFA0)($at)
/* 1F7194 801DF214 8C700000 */  lw          $s0, 0x0($v1)
/* 1F7198 801DF218 3C01800F */  lui         $at, %hi(D_800EAFA0)
/* 1F719C 801DF21C D7B40010 */  ldc1        $f20, 0x10($sp)
/* 1F71A0 801DF220 00108080 */  sll         $s0, $s0, 2
/* 1F71A4 801DF224 00300821 */  addu        $at, $at, $s0
/* 1F71A8 801DF228 C420AFA0 */  lwc1        $f0, %lo(D_800EAFA0)($at)
/* 1F71AC 801DF22C 3C01800F */  lui         $at, %hi(D_800EADE0)
/* 1F71B0 801DF230 00300821 */  addu        $at, $at, $s0
/* 1F71B4 801DF234 E420ADE0 */  swc1        $f0, %lo(D_800EADE0)($at)
/* 1F71B8 801DF238 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1F71BC 801DF23C 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1F71C0 801DF240 8FB0001C */  lw          $s0, 0x1C($sp)
/* 1F71C4 801DF244 000B6080 */  sll         $t4, $t3, 2
/* 1F71C8 801DF248 002C0821 */  addu        $at, $at, $t4
/* 1F71CC 801DF24C E420AC20 */  swc1        $f0, %lo(D_800EAC20)($at)
/* 1F71D0 801DF250 8C790000 */  lw          $t9, 0x0($v1)
/* 1F71D4 801DF254 3C01800F */  lui         $at, %hi(D_800EAA60)
/* 1F71D8 801DF258 00196880 */  sll         $t5, $t9, 2
/* 1F71DC 801DF25C 002D0821 */  addu        $at, $at, $t5
/* 1F71E0 801DF260 E420AA60 */  swc1        $f0, %lo(D_800EAA60)($at)
/* 1F71E4 801DF264 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1F71E8 801DF268 3C01800F */  lui         $at, %hi(D_800EA8A0)
/* 1F71EC 801DF26C 000EC080 */  sll         $t8, $t6, 2
/* 1F71F0 801DF270 00380821 */  addu        $at, $at, $t8
/* 1F71F4 801DF274 E420A8A0 */  swc1        $f0, %lo(D_800EA8A0)($at)
/* 1F71F8 801DF278 8C690000 */  lw          $t1, 0x0($v1)
/* 1F71FC 801DF27C 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1F7200 801DF280 27BD0040 */  addiu       $sp, $sp, 0x40
/* 1F7204 801DF284 00095080 */  sll         $t2, $t1, 2
/* 1F7208 801DF288 002A0821 */  addu        $at, $at, $t2
/* 1F720C 801DF28C 03E00008 */  jr          $ra
/* 1F7210 801DF290 AC28DC50 */   sw         $t0, %lo(gEntityVtableIndexArray)($at)
.type func_801DE148_ovl13, @function

.size func_801DE148_ovl13, . - func_801DE148_ovl13
.section .late_rodata
glabel D_801E5CE0_ovl13
/* 1FDC60 801E5CE0 */ .word 0xBEF5C28F

glabel D_801E5CE4_ovl13
/* 1FDC64 801E5CE4 */ .word 0x477FFF00

glabel D_801E5CE8_ovl13
/* 1FDC68 801E5CE8 */ .word 0x3FC90FDB

glabel D_801E5CEC_ovl13
/* 1FDC6C 801E5CEC */ .word 0x40490FDB

glabel D_801E5CF0_ovl13
/* 1FDC70 801E5CF0 */ .word 0x477FFF00

glabel D_801E5CF4_ovl13
/* 1FDC74 801E5CF4 */ .word 0x40490FDB

glabel D_801E5CF8_ovl13
/* 1FDC78 801E5CF8 */ .word 0xBD4CCCCD

glabel D_801E5CFC_ovl13
/* 1FDC7C 801E5CFC */ .word 0xBDA0D97C

glabel D_801E5D00_ovl13
/* 1FDC80 801E5D00 */ .word 0x3F19999A

glabel D_801E5D04_ovl13
/* 1FDC84 801E5D04 */ .word 0xBFC90FDB

glabel D_801E5D08_ovl13
/* 1FDC88 801E5D08 */ .word 0x477FFF00

glabel D_801E5D0C_ovl13
/* 1FDC8C 801E5D0C */ .word 0xBFC90FDB

glabel D_801E5D10_ovl13
/* 1FDC90 801E5D10 */ .word 0x3FC90FDB

glabel D_801E5D14_ovl13
/* 1FDC94 801E5D14 */ .word 0x477FFF00

glabel D_801E5D18_ovl13
/* 1FDC98 801E5D18 */ .word 0xBE4CCCCD

glabel D_801E5D1C_ovl13
/* 1FDC9C 801E5D1C */ .word 0xBECCCCCD

glabel D_801E5D20_ovl13
/* 1FDCA0 801E5D20 */ .word 0xBDCCCCCD

