glabel func_801DD184_ovl13 # 13
/* 1F5104 801DD184 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 1F5108 801DD188 AFBF0024 */  sw          $ra, 0x24($sp)
/* 1F510C 801DD18C 44806000 */  mtc1        $zero, $f12
/* 1F5110 801DD190 AFB20020 */  sw          $s2, 0x20($sp)
/* 1F5114 801DD194 AFB1001C */  sw          $s1, 0x1C($sp)
/* 1F5118 801DD198 AFB00018 */  sw          $s0, 0x18($sp)
/* 1F511C 801DD19C 0C02BB48 */  jal         func_800AED20
/* 1F5120 801DD1A0 AFA40028 */   sw         $a0, 0x28($sp)
/* 1F5124 801DD1A4 3C01800D */  lui         $at, %hi(D_800D6B10)
/* 1F5128 801DD1A8 0C02BB30 */  jal         func_800AECC0
/* 1F512C 801DD1AC C42C6B10 */   lwc1       $f12, %lo(D_800D6B10)($at)
/* 1F5130 801DD1B0 3C128005 */  lui         $s2, %hi(D_8004A7C4)
/* 1F5134 801DD1B4 2652A7C4 */  addiu       $s2, $s2, %lo(D_8004A7C4)
/* 1F5138 801DD1B8 8E430000 */  lw          $v1, 0x0($s2)
/* 1F513C 801DD1BC 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1F5140 801DD1C0 3C02800E */  lui         $v0, %hi(D_800E1B50)
/* 1F5144 801DD1C4 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1F5148 801DD1C8 24421B50 */  addiu       $v0, $v0, %lo(D_800E1B50)
/* 1F514C 801DD1CC 3C18801E */  lui         $t8, %hi(D_801D9384)
/* 1F5150 801DD1D0 000E7880 */  sll         $t7, $t6, 2
/* 1F5154 801DD1D4 002F0821 */  addu        $at, $at, $t7
/* 1F5158 801DD1D8 AC20DFD0 */  sw          $zero, %lo(D_800DDFD0)($at)
/* 1F515C 801DD1DC 8C790000 */  lw          $t9, 0x0($v1)
/* 1F5160 801DD1E0 27189384 */  addiu       $t8, $t8, %lo(D_801D9384)
/* 1F5164 801DD1E4 3C0B801E */  lui         $t3, %hi(D_801DAE1C)
/* 1F5168 801DD1E8 00194080 */  sll         $t0, $t9, 2
/* 1F516C 801DD1EC 00484821 */  addu        $t1, $v0, $t0
/* 1F5170 801DD1F0 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1F5174 801DD1F4 256BAE1C */  addiu       $t3, $t3, %lo(D_801DAE1C)
/* 1F5178 801DD1F8 AD58008C */  sw          $t8, 0x8C($t2)
/* 1F517C 801DD1FC 8E4C0000 */  lw          $t4, 0x0($s2)
/* 1F5180 801DD200 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F5184 801DD204 000D7080 */  sll         $t6, $t5, 2
/* 1F5188 801DD208 004E7821 */  addu        $t7, $v0, $t6
/* 1F518C 801DD20C 8DF90000 */  lw          $t9, 0x0($t7)
/* 1F5190 801DD210 0C02CCFD */  jal         func_800B33F4
/* 1F5194 801DD214 AF2B0098 */   sw         $t3, 0x98($t9)
/* 1F5198 801DD218 0C006291 */  jal         random_soft_s32_range
/* 1F519C 801DD21C 24040003 */   addiu      $a0, $zero, 0x3
/* 1F51A0 801DD220 8E430000 */  lw          $v1, 0x0($s2)
/* 1F51A4 801DD224 3C01800F */  lui         $at, %hi(D_800EA1A0)
/* 1F51A8 801DD228 3C11800E */  lui         $s1, %hi(D_800E64D0)
/* 1F51AC 801DD22C 8C680000 */  lw          $t0, 0x0($v1)
/* 1F51B0 801DD230 263164D0 */  addiu       $s1, $s1, %lo(D_800E64D0)
/* 1F51B4 801DD234 3C10800E */  lui         $s0, %hi(D_800E3210)
/* 1F51B8 801DD238 00084880 */  sll         $t1, $t0, 2
/* 1F51BC 801DD23C 00290821 */  addu        $at, $at, $t1
/* 1F51C0 801DD240 AC22A1A0 */  sw          $v0, %lo(D_800EA1A0)($at)
/* 1F51C4 801DD244 8C780000 */  lw          $t8, 0x0($v1)
/* 1F51C8 801DD248 3C014320 */  lui         $at, (0x43200000 >> 16)
/* 1F51CC 801DD24C 44812000 */  mtc1        $at, $f4
/* 1F51D0 801DD250 00185080 */  sll         $t2, $t8, 2
/* 1F51D4 801DD254 022A6021 */  addu        $t4, $s1, $t2
/* 1F51D8 801DD258 E5840000 */  swc1        $f4, 0x0($t4)
/* 1F51DC 801DD25C 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1F51E0 801DD260 3C0142A0 */  lui         $at, (0x42A00000 >> 16)
/* 1F51E4 801DD264 44813000 */  mtc1        $at, $f6
/* 1F51E8 801DD268 26103210 */  addiu       $s0, $s0, %lo(D_800E3210)
/* 1F51EC 801DD26C 000D7080 */  sll         $t6, $t5, 2
/* 1F51F0 801DD270 020E7821 */  addu        $t7, $s0, $t6
/* 1F51F4 801DD274 24040001 */  addiu       $a0, $zero, 0x1
/* 1F51F8 801DD278 0C002DAF */  jal         finish_current_thread
/* 1F51FC 801DD27C E5E60000 */   swc1       $f6, 0x0($t7)
/* 1F5200 801DD280 8E430000 */  lw          $v1, 0x0($s2)
/* 1F5204 801DD284 44804000 */  mtc1        $zero, $f8
/* 1F5208 801DD288 3C040001 */  lui         $a0, (0x10412 >> 16)
/* 1F520C 801DD28C 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1F5210 801DD290 34840412 */  ori         $a0, $a0, (0x10412 & 0xFFFF)
/* 1F5214 801DD294 3C054040 */  lui         $a1, (0x40400000 >> 16)
/* 1F5218 801DD298 000BC880 */  sll         $t9, $t3, 2
/* 1F521C 801DD29C 02194021 */  addu        $t0, $s0, $t9
/* 1F5220 801DD2A0 E5080000 */  swc1        $f8, 0x0($t0)
/* 1F5224 801DD2A4 8C620000 */  lw          $v0, 0x0($v1)
/* 1F5228 801DD2A8 00021080 */  sll         $v0, $v0, 2
/* 1F522C 801DD2AC 02024821 */  addu        $t1, $s0, $v0
/* 1F5230 801DD2B0 C52A0000 */  lwc1        $f10, 0x0($t1)
/* 1F5234 801DD2B4 0222C021 */  addu        $t8, $s1, $v0
/* 1F5238 801DD2B8 0C02A7E6 */  jal         func_800A9F98
/* 1F523C 801DD2BC E70A0000 */   swc1       $f10, 0x0($t8)
/* 1F5240 801DD2C0 3C040001 */  lui         $a0, (0x10427 >> 16)
/* 1F5244 801DD2C4 0C02A806 */  jal         func_800AA018
/* 1F5248 801DD2C8 34840427 */   ori        $a0, $a0, (0x10427 & 0xFFFF)
/* 1F524C 801DD2CC 0C002DAF */  jal         finish_current_thread
/* 1F5250 801DD2D0 2404001E */   addiu      $a0, $zero, 0x1E
/* 1F5254 801DD2D4 8E4A0000 */  lw          $t2, 0x0($s2)
/* 1F5258 801DD2D8 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 1F525C 801DD2DC 8D4C0000 */  lw          $t4, 0x0($t2)
/* 1F5260 801DD2E0 000C6880 */  sll         $t5, $t4, 2
/* 1F5264 801DD2E4 002D0821 */  addu        $at, $at, $t5
/* 1F5268 801DD2E8 C4307B20 */  lwc1        $f16, %lo(D_800E7B20)($at)
/* 1F526C 801DD2EC 4600848D */  trunc.w.s   $f18, $f16
/* 1F5270 801DD2F0 44049000 */  mfc1        $a0, $f18
/* 1F5274 801DD2F4 0C02F07F */  jal         func_800BC1FC
/* 1F5278 801DD2F8 00000000 */   nop
/* 1F527C 801DD2FC 0C002DAF */  jal         finish_current_thread
/* 1F5280 801DD300 24040030 */   addiu      $a0, $zero, 0x30
/* 1F5284 801DD304 8E4F0000 */  lw          $t7, 0x0($s2)
/* 1F5288 801DD308 3C11800E */  lui         $s1, %hi(D_800E0D50)
/* 1F528C 801DD30C 26310D50 */  addiu       $s1, $s1, %lo(D_800E0D50)
/* 1F5290 801DD310 8DEB0000 */  lw          $t3, 0x0($t7)
/* 1F5294 801DD314 3C10800F */  lui         $s0, %hi(D_800E98E0)
/* 1F5298 801DD318 261098E0 */  addiu       $s0, $s0, %lo(D_800E98E0)
/* 1F529C 801DD31C 000BC880 */  sll         $t9, $t3, 2
/* 1F52A0 801DD320 02394021 */  addu        $t0, $s1, $t9
/* 1F52A4 801DD324 8D090000 */  lw          $t1, 0x0($t0)
/* 1F52A8 801DD328 0009C080 */  sll         $t8, $t1, 2
/* 1F52AC 801DD32C 02185021 */  addu        $t2, $s0, $t8
/* 1F52B0 801DD330 8D4C0000 */  lw          $t4, 0x0($t2)
/* 1F52B4 801DD334 1580000D */  bnez        $t4, L801DD36C_ovl13
/* 1F52B8 801DD338 00000000 */   nop
glabel L801DD33C_ovl13
/* 1F52BC 801DD33C 0C002DAF */  jal         finish_current_thread
/* 1F52C0 801DD340 24040001 */   addiu      $a0, $zero, 0x1
/* 1F52C4 801DD344 8E4D0000 */  lw          $t5, 0x0($s2)
/* 1F52C8 801DD348 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F52CC 801DD34C 000E7880 */  sll         $t7, $t6, 2
/* 1F52D0 801DD350 022F5821 */  addu        $t3, $s1, $t7
/* 1F52D4 801DD354 8D790000 */  lw          $t9, 0x0($t3)
/* 1F52D8 801DD358 00194080 */  sll         $t0, $t9, 2
/* 1F52DC 801DD35C 02084821 */  addu        $t1, $s0, $t0
/* 1F52E0 801DD360 8D380000 */  lw          $t8, 0x0($t1)
/* 1F52E4 801DD364 1300FFF5 */  beqz        $t8, L801DD33C_ovl13
/* 1F52E8 801DD368 00000000 */   nop
glabel L801DD36C_ovl13
/* 1F52EC 801DD36C 0C02BC9F */  jal         func_800AF27C
/* 1F52F0 801DD370 00000000 */   nop
/* 1F52F4 801DD374 8E4C0000 */  lw          $t4, 0x0($s2)
/* 1F52F8 801DD378 8FBF0024 */  lw          $ra, 0x24($sp)
/* 1F52FC 801DD37C 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1F5300 801DD380 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F5304 801DD384 240A0001 */  addiu       $t2, $zero, 0x1
/* 1F5308 801DD388 8FB20020 */  lw          $s2, 0x20($sp)
/* 1F530C 801DD38C 000D7080 */  sll         $t6, $t5, 2
/* 1F5310 801DD390 002E0821 */  addu        $at, $at, $t6
/* 1F5314 801DD394 8FB00018 */  lw          $s0, 0x18($sp)
/* 1F5318 801DD398 8FB1001C */  lw          $s1, 0x1C($sp)
/* 1F531C 801DD39C AC2ADC50 */  sw          $t2, %lo(gEntityVtableIndexArray)($at)
/* 1F5320 801DD3A0 03E00008 */  jr          $ra
/* 1F5324 801DD3A4 27BD0028 */   addiu      $sp, $sp, 0x28
.type func_801DD184_ovl13, @function

.size func_801DD184_ovl13, . - func_801DD184_ovl13
