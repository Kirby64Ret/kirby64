glabel func_801DD018_ovl14 # 28
/* 1FFC08 801DD018 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 1FFC0C 801DD01C AFB10018 */  sw          $s1, 0x18($sp)
/* 1FFC10 801DD020 3C118005 */  lui         $s1, %hi(D_8004A7C4)
/* 1FFC14 801DD024 2631A7C4 */  addiu       $s1, $s1, %lo(D_8004A7C4)
/* 1FFC18 801DD028 8E2E0000 */  lw          $t6, 0x0($s1)
/* 1FFC1C 801DD02C AFBF001C */  sw          $ra, 0x1C($sp)
/* 1FFC20 801DD030 AFB00014 */  sw          $s0, 0x14($sp)
/* 1FFC24 801DD034 AFA40030 */  sw          $a0, 0x30($sp)
/* 1FFC28 801DD038 8DC20000 */  lw          $v0, 0x0($t6)
/* 1FFC2C 801DD03C 3C03800E */  lui         $v1, %hi(D_800E1B50)
/* 1FFC30 801DD040 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1FFC34 801DD044 00021080 */  sll         $v0, $v0, 2
/* 1FFC38 801DD048 00621821 */  addu        $v1, $v1, $v0
/* 1FFC3C 801DD04C 8C631B50 */  lw          $v1, %lo(D_800E1B50)($v1)
/* 1FFC40 801DD050 00220821 */  addu        $at, $at, $v0
/* 1FFC44 801DD054 3C0F801D */  lui         $t7, %hi(D_801CB470)
/* 1FFC48 801DD058 AC20DFD0 */  sw          $zero, %lo(D_800DDFD0)($at)
/* 1FFC4C 801DD05C 25EFB470 */  addiu       $t7, $t7, %lo(D_801CB470)
/* 1FFC50 801DD060 44806000 */  mtc1        $zero, $f12
/* 1FFC54 801DD064 AC6F0098 */  sw          $t7, 0x98($v1)
/* 1FFC58 801DD068 0C077D60 */  jal         func_801DF580_ovl14
/* 1FFC5C 801DD06C AFA3002C */   sw         $v1, 0x2C($sp)
/* 1FFC60 801DD070 3C040001 */  lui         $a0, (0x10449 >> 16)
/* 1FFC64 801DD074 0C02A806 */  jal         func_800AA018
/* 1FFC68 801DD078 34840449 */   ori        $a0, $a0, (0x10449 & 0xFFFF)
/* 1FFC6C 801DD07C 3C040001 */  lui         $a0, (0x1044A >> 16)
/* 1FFC70 801DD080 0C02A806 */  jal         func_800AA018
/* 1FFC74 801DD084 3484044A */   ori        $a0, $a0, (0x1044A & 0xFFFF)
/* 1FFC78 801DD088 44806000 */  mtc1        $zero, $f12
/* 1FFC7C 801DD08C 0C02BB30 */  jal         func_800AECC0
/* 1FFC80 801DD090 00000000 */   nop
/* 1FFC84 801DD094 44806000 */  mtc1        $zero, $f12
/* 1FFC88 801DD098 0C02BB48 */  jal         func_800AED20
/* 1FFC8C 801DD09C 00000000 */   nop
/* 1FFC90 801DD0A0 0C0772C0 */  jal         func_801DCB00_ovl14
/* 1FFC94 801DD0A4 00002025 */   move       $a0, $zero
/* 1FFC98 801DD0A8 0C029D9E */  jal         play_sound
/* 1FFC9C 801DD0AC 240401CD */   addiu      $a0, $zero, 0x1CD
/* 1FFCA0 801DD0B0 8E380000 */  lw          $t8, 0x0($s1)
/* 1FFCA4 801DD0B4 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 1FFCA8 801DD0B8 24040014 */  addiu       $a0, $zero, 0x14
/* 1FFCAC 801DD0BC 8F190000 */  lw          $t9, 0x0($t8)
/* 1FFCB0 801DD0C0 00194080 */  sll         $t0, $t9, 2
/* 1FFCB4 801DD0C4 00280821 */  addu        $at, $at, $t0
/* 1FFCB8 801DD0C8 0C002DAF */  jal         finish_current_thread
/* 1FFCBC 801DD0CC AC209E20 */   sw         $zero, %lo(D_800E9E20)($at)
/* 1FFCC0 801DD0D0 3C10800D */  lui         $s0, %hi(D_800D6B10)
/* 1FFCC4 801DD0D4 26106B10 */  addiu       $s0, $s0, %lo(D_800D6B10)
/* 1FFCC8 801DD0D8 0C02BB30 */  jal         func_800AECC0
/* 1FFCCC 801DD0DC C60C0000 */   lwc1       $f12, 0x0($s0)
/* 1FFCD0 801DD0E0 0C02BB48 */  jal         func_800AED20
/* 1FFCD4 801DD0E4 C60C0000 */   lwc1       $f12, 0x0($s0)
/* 1FFCD8 801DD0E8 0C029D9E */  jal         play_sound
/* 1FFCDC 801DD0EC 24040190 */   addiu      $a0, $zero, 0x190
/* 1FFCE0 801DD0F0 0C002DAF */  jal         finish_current_thread
/* 1FFCE4 801DD0F4 24040005 */   addiu      $a0, $zero, 0x5
/* 1FFCE8 801DD0F8 8E2A0000 */  lw          $t2, 0x0($s1)
/* 1FFCEC 801DD0FC 3C01800F */  lui         $at, %hi(D_800E9AA0)
/* 1FFCF0 801DD100 24090004 */  addiu       $t1, $zero, 0x4
/* 1FFCF4 801DD104 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1FFCF8 801DD108 24040019 */  addiu       $a0, $zero, 0x19
/* 1FFCFC 801DD10C 000B6080 */  sll         $t4, $t3, 2
/* 1FFD00 801DD110 002C0821 */  addu        $at, $at, $t4
/* 1FFD04 801DD114 0C002DAF */  jal         finish_current_thread
/* 1FFD08 801DD118 AC299AA0 */   sw         $t1, %lo(D_800E9AA0)($at)
/* 1FFD0C 801DD11C 8E250000 */  lw          $a1, 0x0($s1)
/* 1FFD10 801DD120 3C01800F */  lui         $at, %hi(D_800E9AA0)
/* 1FFD14 801DD124 240D0002 */  addiu       $t5, $zero, 0x2
/* 1FFD18 801DD128 8CAE0000 */  lw          $t6, 0x0($a1)
/* 1FFD1C 801DD12C 3C02801E */  lui         $v0, %hi(D_801D9CCC)
/* 1FFD20 801DD130 24429CCC */  addiu       $v0, $v0, %lo(D_801D9CCC)
/* 1FFD24 801DD134 000E7880 */  sll         $t7, $t6, 2
/* 1FFD28 801DD138 002F0821 */  addu        $at, $at, $t7
/* 1FFD2C 801DD13C AC2D9AA0 */  sw          $t5, %lo(D_800E9AA0)($at)
/* 1FFD30 801DD140 8CB80000 */  lw          $t8, 0x0($a1)
/* 1FFD34 801DD144 3C01800F */  lui         $at, %hi(D_800EA360)
/* 1FFD38 801DD148 AFA20020 */  sw          $v0, 0x20($sp)
/* 1FFD3C 801DD14C 0018C880 */  sll         $t9, $t8, 2
/* 1FFD40 801DD150 00390821 */  addu        $at, $at, $t9
/* 1FFD44 801DD154 0C02BC9F */  jal         func_800AF27C
/* 1FFD48 801DD158 AC22A360 */   sw         $v0, %lo(D_800EA360)($at)
/* 1FFD4C 801DD15C 3C040001 */  lui         $a0, (0x10455 >> 16)
/* 1FFD50 801DD160 0C02A806 */  jal         func_800AA018
/* 1FFD54 801DD164 34840455 */   ori        $a0, $a0, (0x10455 & 0xFFFF)
/* 1FFD58 801DD168 8E250000 */  lw          $a1, 0x0($s1)
/* 1FFD5C 801DD16C 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1FFD60 801DD170 2404000A */  addiu       $a0, $zero, 0xA
/* 1FFD64 801DD174 8CA80000 */  lw          $t0, 0x0($a1)
/* 1FFD68 801DD178 00085080 */  sll         $t2, $t0, 2
/* 1FFD6C 801DD17C 002A0821 */  addu        $at, $at, $t2
/* 1FFD70 801DD180 AC208920 */  sw          $zero, %lo(D_800E8920)($at)
/* 1FFD74 801DD184 8CA20000 */  lw          $v0, 0x0($a1)
/* 1FFD78 801DD188 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1FFD7C 801DD18C 00021080 */  sll         $v0, $v0, 2
/* 1FFD80 801DD190 00220821 */  addu        $at, $at, $v0
/* 1FFD84 801DD194 C4246A10 */  lwc1        $f4, %lo(D_800E6A10)($at)
/* 1FFD88 801DD198 3C01801E */  lui         $at, %hi(D_801E30A0_ovl14)
/* 1FFD8C 801DD19C C42630A0 */  lwc1        $f6, %lo(D_801E30A0_ovl14)($at)
/* 1FFD90 801DD1A0 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1FFD94 801DD1A4 00220821 */  addu        $at, $at, $v0
/* 1FFD98 801DD1A8 46062202 */  mul.s       $f8, $f4, $f6
/* 1FFD9C 801DD1AC 0C002DAF */  jal         finish_current_thread
/* 1FFDA0 801DD1B0 E4286690 */   swc1       $f8, %lo(D_800E6690)($at)
/* 1FFDA4 801DD1B4 8E250000 */  lw          $a1, 0x0($s1)
/* 1FFDA8 801DD1B8 44805000 */  mtc1        $zero, $f10
/* 1FFDAC 801DD1BC 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1FFDB0 801DD1C0 8CAB0000 */  lw          $t3, 0x0($a1)
/* 1FFDB4 801DD1C4 3C10800F */  lui         $s0, %hi(D_800E98E0)
/* 1FFDB8 801DD1C8 261098E0 */  addiu       $s0, $s0, %lo(D_800E98E0)
/* 1FFDBC 801DD1CC 000B4880 */  sll         $t1, $t3, 2
/* 1FFDC0 801DD1D0 00290821 */  addu        $at, $at, $t1
/* 1FFDC4 801DD1D4 E42A6690 */  swc1        $f10, %lo(D_800E6690)($at)
/* 1FFDC8 801DD1D8 8CA20000 */  lw          $v0, 0x0($a1)
/* 1FFDCC 801DD1DC 3C01800E */  lui         $at, %hi(gEntitiesNextPosYArray)
/* 1FFDD0 801DD1E0 00021080 */  sll         $v0, $v0, 2
/* 1FFDD4 801DD1E4 00220821 */  addu        $at, $at, $v0
/* 1FFDD8 801DD1E8 C4302790 */  lwc1        $f16, %lo(gEntitiesNextPosYArray)($at)
/* 1FFDDC 801DD1EC 3C0141A0 */  lui         $at, (0x41A00000 >> 16)
/* 1FFDE0 801DD1F0 44819000 */  mtc1        $at, $f18
/* 1FFDE4 801DD1F4 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 1FFDE8 801DD1F8 00220821 */  addu        $at, $at, $v0
/* 1FFDEC 801DD1FC 46128100 */  add.s       $f4, $f16, $f18
/* 1FFDF0 801DD200 E424A6E0 */  swc1        $f4, %lo(D_800EA6E0)($at)
/* 1FFDF4 801DD204 8CAC0000 */  lw          $t4, 0x0($a1)
/* 1FFDF8 801DD208 000C7080 */  sll         $t6, $t4, 2
/* 1FFDFC 801DD20C 020E6821 */  addu        $t5, $s0, $t6
/* 1FFE00 801DD210 ADA00000 */  sw          $zero, 0x0($t5)
/* 1FFE04 801DD214 8CA20000 */  lw          $v0, 0x0($a1)
/* 1FFE08 801DD218 00021080 */  sll         $v0, $v0, 2
/* 1FFE0C 801DD21C 02027821 */  addu        $t7, $s0, $v0
/* 1FFE10 801DD220 8DF80000 */  lw          $t8, 0x0($t7)
/* 1FFE14 801DD224 2B010136 */  slti        $at, $t8, 0x136
/* 1FFE18 801DD228 10200062 */  beqz        $at, .L801DD3B4
.L801DD22C:
/* 1FFE1C 801DD22C 3C01800E */   lui        $at, %hi(D_800E6A10)
/* 1FFE20 801DD230 00220821 */  addu        $at, $at, $v0
/* 1FFE24 801DD234 C4266A10 */  lwc1        $f6, %lo(D_800E6A10)($at)
/* 1FFE28 801DD238 3C01801E */  lui         $at, %hi(D_801E30A4_ovl14)
/* 1FFE2C 801DD23C C42830A4 */  lwc1        $f8, %lo(D_801E30A4_ovl14)($at)
/* 1FFE30 801DD240 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1FFE34 801DD244 00220821 */  addu        $at, $at, $v0
/* 1FFE38 801DD248 46083282 */  mul.s       $f10, $f6, $f8
/* 1FFE3C 801DD24C E42A64D0 */  swc1        $f10, %lo(D_800E64D0)($at)
/* 1FFE40 801DD250 8CA20000 */  lw          $v0, 0x0($a1)
/* 1FFE44 801DD254 24010005 */  addiu       $at, $zero, 0x5
/* 1FFE48 801DD258 00021080 */  sll         $v0, $v0, 2
/* 1FFE4C 801DD25C 0202C821 */  addu        $t9, $s0, $v0
/* 1FFE50 801DD260 8F230000 */  lw          $v1, 0x0($t9)
/* 1FFE54 801DD264 5461000B */  bnel        $v1, $at, .L801DD294
/* 1FFE58 801DD268 24010037 */   addiu      $at, $zero, 0x37
/* 1FFE5C 801DD26C 0C0772C0 */  jal         func_801DCB00_ovl14
/* 1FFE60 801DD270 24040001 */   addiu      $a0, $zero, 0x1
/* 1FFE64 801DD274 0C029D9E */  jal         play_sound
/* 1FFE68 801DD278 240401CD */   addiu      $a0, $zero, 0x1CD
/* 1FFE6C 801DD27C 8E250000 */  lw          $a1, 0x0($s1)
/* 1FFE70 801DD280 8CA20000 */  lw          $v0, 0x0($a1)
/* 1FFE74 801DD284 00021080 */  sll         $v0, $v0, 2
/* 1FFE78 801DD288 02024021 */  addu        $t0, $s0, $v0
/* 1FFE7C 801DD28C 8D030000 */  lw          $v1, 0x0($t0)
/* 1FFE80 801DD290 24010037 */  addiu       $at, $zero, 0x37
.L801DD294:
/* 1FFE84 801DD294 5461000B */  bnel        $v1, $at, .L801DD2C4
/* 1FFE88 801DD298 24010069 */   addiu      $at, $zero, 0x69
/* 1FFE8C 801DD29C 0C0772C0 */  jal         func_801DCB00_ovl14
/* 1FFE90 801DD2A0 24040002 */   addiu      $a0, $zero, 0x2
/* 1FFE94 801DD2A4 0C029D9E */  jal         play_sound
/* 1FFE98 801DD2A8 240401CD */   addiu      $a0, $zero, 0x1CD
/* 1FFE9C 801DD2AC 8E250000 */  lw          $a1, 0x0($s1)
/* 1FFEA0 801DD2B0 8CA20000 */  lw          $v0, 0x0($a1)
/* 1FFEA4 801DD2B4 00021080 */  sll         $v0, $v0, 2
/* 1FFEA8 801DD2B8 02025021 */  addu        $t2, $s0, $v0
/* 1FFEAC 801DD2BC 8D430000 */  lw          $v1, 0x0($t2)
/* 1FFEB0 801DD2C0 24010069 */  addiu       $at, $zero, 0x69
.L801DD2C4:
/* 1FFEB4 801DD2C4 5461000B */  bnel        $v1, $at, .L801DD2F4
/* 1FFEB8 801DD2C8 2401000A */   addiu      $at, $zero, 0xA
/* 1FFEBC 801DD2CC 0C0772C0 */  jal         func_801DCB00_ovl14
/* 1FFEC0 801DD2D0 24040003 */   addiu      $a0, $zero, 0x3
/* 1FFEC4 801DD2D4 0C029D9E */  jal         play_sound
/* 1FFEC8 801DD2D8 240401CD */   addiu      $a0, $zero, 0x1CD
/* 1FFECC 801DD2DC 8E250000 */  lw          $a1, 0x0($s1)
/* 1FFED0 801DD2E0 8CA20000 */  lw          $v0, 0x0($a1)
/* 1FFED4 801DD2E4 00021080 */  sll         $v0, $v0, 2
/* 1FFED8 801DD2E8 02025821 */  addu        $t3, $s0, $v0
/* 1FFEDC 801DD2EC 8D630000 */  lw          $v1, 0x0($t3)
/* 1FFEE0 801DD2F0 2401000A */  addiu       $at, $zero, 0xA
.L801DD2F4:
/* 1FFEE4 801DD2F4 14610006 */  bne         $v1, $at, .L801DD310
/* 1FFEE8 801DD2F8 24090001 */   addiu      $t1, $zero, 0x1
/* 1FFEEC 801DD2FC 3C01800F */  lui         $at, %hi(D_800E9C60)
/* 1FFEF0 801DD300 00220821 */  addu        $at, $at, $v0
/* 1FFEF4 801DD304 AC299C60 */  sw          $t1, %lo(D_800E9C60)($at)
/* 1FFEF8 801DD308 8CA20000 */  lw          $v0, 0x0($a1)
/* 1FFEFC 801DD30C 00021080 */  sll         $v0, $v0, 2
.L801DD310:
/* 1FFF00 801DD310 3C01C320 */  lui         $at, (0xC3200000 >> 16)
/* 1FFF04 801DD314 44818000 */  mtc1        $at, $f16
/* 1FFF08 801DD318 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1FFF0C 801DD31C 00220821 */  addu        $at, $at, $v0
/* 1FFF10 801DD320 C43225D0 */  lwc1        $f18, %lo(gEntitiesNextPosXArray)($at)
/* 1FFF14 801DD324 3C0C800E */  lui         $t4, %hi(gEntitiesNextPosYArray)
/* 1FFF18 801DD328 258C2790 */  addiu       $t4, $t4, %lo(gEntitiesNextPosYArray)
/* 1FFF1C 801DD32C 4612803C */  c.lt.s      $f16, $f18
/* 1FFF20 801DD330 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 1FFF24 801DD334 00220821 */  addu        $at, $at, $v0
/* 1FFF28 801DD338 004C1821 */  addu        $v1, $v0, $t4
/* 1FFF2C 801DD33C 4500000D */  bc1f        .L801DD374
/* 1FFF30 801DD340 00000000 */   nop
/* 1FFF34 801DD344 C4600000 */  lwc1        $f0, 0x0($v1)
/* 1FFF38 801DD348 C424A6E0 */  lwc1        $f4, %lo(D_800EA6E0)($at)
/* 1FFF3C 801DD34C 3C0140A0 */  lui         $at, (0x40A00000 >> 16)
/* 1FFF40 801DD350 4604003C */  c.lt.s      $f0, $f4
/* 1FFF44 801DD354 00000000 */  nop
/* 1FFF48 801DD358 45000006 */  bc1f        .L801DD374
/* 1FFF4C 801DD35C 00000000 */   nop
/* 1FFF50 801DD360 44813000 */  mtc1        $at, $f6
/* 1FFF54 801DD364 00002025 */  move        $a0, $zero
/* 1FFF58 801DD368 46060200 */  add.s       $f8, $f0, $f6
/* 1FFF5C 801DD36C 0C03EE45 */  jal         func_800FB914
/* 1FFF60 801DD370 E4680000 */   swc1       $f8, 0x0($v1)
.L801DD374:
/* 1FFF64 801DD374 0C002DAF */  jal         finish_current_thread
/* 1FFF68 801DD378 24040001 */   addiu      $a0, $zero, 0x1
/* 1FFF6C 801DD37C 8E250000 */  lw          $a1, 0x0($s1)
/* 1FFF70 801DD380 8CAE0000 */  lw          $t6, 0x0($a1)
/* 1FFF74 801DD384 000E6880 */  sll         $t5, $t6, 2
/* 1FFF78 801DD388 020D1821 */  addu        $v1, $s0, $t5
/* 1FFF7C 801DD38C 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1FFF80 801DD390 25F80001 */  addiu       $t8, $t7, 0x1
/* 1FFF84 801DD394 AC780000 */  sw          $t8, 0x0($v1)
/* 1FFF88 801DD398 8CA20000 */  lw          $v0, 0x0($a1)
/* 1FFF8C 801DD39C 00021080 */  sll         $v0, $v0, 2
/* 1FFF90 801DD3A0 0202C821 */  addu        $t9, $s0, $v0
/* 1FFF94 801DD3A4 8F280000 */  lw          $t0, 0x0($t9)
/* 1FFF98 801DD3A8 29010136 */  slti        $at, $t0, 0x136
/* 1FFF9C 801DD3AC 1420FF9F */  bnez        $at, .L801DD22C
/* 1FFFA0 801DD3B0 00000000 */   nop
.L801DD3B4:
/* 1FFFA4 801DD3B4 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 1FFFA8 801DD3B8 00220821 */  addu        $at, $at, $v0
/* 1FFFAC 801DD3BC C42A6A10 */  lwc1        $f10, %lo(D_800E6A10)($at)
/* 1FFFB0 801DD3C0 3C01801E */  lui         $at, %hi(D_801E30A8_ovl14)
/* 1FFFB4 801DD3C4 C43030A8 */  lwc1        $f16, %lo(D_801E30A8_ovl14)($at)
/* 1FFFB8 801DD3C8 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1FFFBC 801DD3CC 00220821 */  addu        $at, $at, $v0
/* 1FFFC0 801DD3D0 46105482 */  mul.s       $f18, $f10, $f16
/* 1FFFC4 801DD3D4 E4326690 */  swc1        $f18, %lo(D_800E6690)($at)
/* 1FFFC8 801DD3D8 8CAA0000 */  lw          $t2, 0x0($a1)
/* 1FFFCC 801DD3DC 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 1FFFD0 801DD3E0 000A5880 */  sll         $t3, $t2, 2
/* 1FFFD4 801DD3E4 002B0821 */  addu        $at, $at, $t3
/* 1FFFD8 801DD3E8 C4247B20 */  lwc1        $f4, %lo(D_800E7B20)($at)
/* 1FFFDC 801DD3EC 4600218D */  trunc.w.s   $f6, $f4
/* 1FFFE0 801DD3F0 44043000 */  mfc1        $a0, $f6
/* 1FFFE4 801DD3F4 0C02F07F */  jal         func_800BC1FC
/* 1FFFE8 801DD3F8 00000000 */   nop
/* 1FFFEC 801DD3FC 0C002DAF */  jal         finish_current_thread
/* 1FFFF0 801DD400 2404000A */   addiu      $a0, $zero, 0xA
/* 1FFFF4 801DD404 8E250000 */  lw          $a1, 0x0($s1)
/* 1FFFF8 801DD408 44804000 */  mtc1        $zero, $f8
/* 1FFFFC 801DD40C 3C01800E */  lui         $at, %hi(D_800E6690)
/* 200000 801DD410 8CAC0000 */  lw          $t4, 0x0($a1)
/* 200004 801DD414 8FAD002C */  lw          $t5, 0x2C($sp)
/* 200008 801DD418 000C7080 */  sll         $t6, $t4, 2
/* 20000C 801DD41C 002E0821 */  addu        $at, $at, $t6
/* 200010 801DD420 E4286690 */  swc1        $f8, %lo(D_800E6690)($at)
/* 200014 801DD424 8CA20000 */  lw          $v0, 0x0($a1)
/* 200018 801DD428 3C01800E */  lui         $at, %hi(D_800E6690)
/* 20001C 801DD42C 00021080 */  sll         $v0, $v0, 2
/* 200020 801DD430 00220821 */  addu        $at, $at, $v0
/* 200024 801DD434 C42A6690 */  lwc1        $f10, %lo(D_800E6690)($at)
/* 200028 801DD438 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 20002C 801DD43C 00220821 */  addu        $at, $at, $v0
/* 200030 801DD440 E42A64D0 */  swc1        $f10, %lo(D_800E64D0)($at)
/* 200034 801DD444 8DAF0088 */  lw          $t7, 0x88($t5)
/* 200038 801DD448 0C068956 */  jal         func_801A2558_ovl7
/* 20003C 801DD44C 8DE40010 */   lw         $a0, 0x10($t7)
/* 200040 801DD450 8E390000 */  lw          $t9, 0x0($s1)
/* 200044 801DD454 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 200048 801DD458 24180001 */  addiu       $t8, $zero, 0x1
/* 20004C 801DD45C 8F280000 */  lw          $t0, 0x0($t9)
/* 200050 801DD460 2404003C */  addiu       $a0, $zero, 0x3C
/* 200054 801DD464 00085080 */  sll         $t2, $t0, 2
/* 200058 801DD468 002A0821 */  addu        $at, $at, $t2
/* 20005C 801DD46C 0C002DAF */  jal         finish_current_thread
/* 200060 801DD470 AC389E20 */   sw         $t8, %lo(D_800E9E20)($at)
/* 200064 801DD474 8E250000 */  lw          $a1, 0x0($s1)
/* 200068 801DD478 3C01800F */  lui         $at, %hi(D_800E9AA0)
/* 20006C 801DD47C 240B0003 */  addiu       $t3, $zero, 0x3
/* 200070 801DD480 8CA90000 */  lw          $t1, 0x0($a1)
/* 200074 801DD484 8FAE0020 */  lw          $t6, 0x20($sp)
/* 200078 801DD488 00096080 */  sll         $t4, $t1, 2
/* 20007C 801DD48C 002C0821 */  addu        $at, $at, $t4
/* 200080 801DD490 AC2B9AA0 */  sw          $t3, %lo(D_800E9AA0)($at)
/* 200084 801DD494 8CAD0000 */  lw          $t5, 0x0($a1)
/* 200088 801DD498 3C01800F */  lui         $at, %hi(D_800EA360)
/* 20008C 801DD49C 000D7880 */  sll         $t7, $t5, 2
/* 200090 801DD4A0 002F0821 */  addu        $at, $at, $t7
/* 200094 801DD4A4 0C02BC9F */  jal         func_800AF27C
/* 200098 801DD4A8 AC2EA360 */   sw         $t6, %lo(D_800EA360)($at)
/* 20009C 801DD4AC 0C077B49 */  jal         func_801DED24_ovl14
/* 2000A0 801DD4B0 00000000 */   nop
/* 2000A4 801DD4B4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 2000A8 801DD4B8 8FB00014 */  lw          $s0, 0x14($sp)
/* 2000AC 801DD4BC 8FB10018 */  lw          $s1, 0x18($sp)
/* 2000B0 801DD4C0 03E00008 */  jr          $ra
/* 2000B4 801DD4C4 27BD0030 */   addiu      $sp, $sp, 0x30
.type func_801DD018_ovl14, @function
.size func_801DD018_ovl14, . - func_801DD018_ovl14
