glabel func_801EDE50_ovl16
/* 224100 801EDE50 3C098005 */  lui        $t1, %hi(D_8004A7C4)
.L801EDE54_ovl10:
/* 224104 801EDE54 2529A7C4 */  addiu      $t1, $t1, %lo(D_8004A7C4)
/* 224108 801EDE58 8D230000 */  lw         $v1, 0x0($t1)
/* 22410C 801EDE5C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 224110 801EDE60 AFBF001C */  sw         $ra, 0x1C($sp)
/* 224114 801EDE64 AFA40068 */  sw         $a0, 0x68($sp)
/* 224118 801EDE68 8C680000 */  lw         $t0, 0x0($v1)
/* 22411C 801EDE6C 3C014370 */  lui        $at, (0x43700000 >> 16)
/* 224120 801EDE70 44811000 */  mtc1       $at, $f2
/* 224124 801EDE74 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 224128 801EDE78 00084080 */  sll        $t0, $t0, 2
/* 22412C 801EDE7C 00280821 */  addu       $at, $at, $t0
/* 224130 801EDE80 C4202790 */  lwc1       $f0, %lo(gEntitiesNextPosYArray)($at)
/* 224134 801EDE84 3C0E800E */  lui        $t6, %hi(D_800E1B50)
/* 224138 801EDE88 01C87021 */  addu       $t6, $t6, $t0
.L801EDE8C_ovl9:
/* 22413C 801EDE8C 4600103C */  c.lt.s     $f2, $f0
.L801EDE90_ovl9:
/* 224140 801EDE90 8DCE1B50 */  lw         $t6, %lo(D_800E1B50)($t6)
.L801EDE94_ovl10:
/* 224144 801EDE94 3C014220 */  lui        $at, (0x42200000 >> 16)
/* 224148 801EDE98 45010016 */  bc1t       .L801EDEF4_ovl16
/* 22414C 801EDE9C AFAE0064 */   sw        $t6, 0x64($sp)
/* 224150 801EDEA0 44812000 */  mtc1       $at, $f4
/* 224154 801EDEA4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 224158 801EDEA8 00280821 */  addu       $at, $at, $t0
/* 22415C 801EDEAC 4604003C */  c.lt.s     $f0, $f4
/* 224160 801EDEB0 00000000 */  nop
/* 224164 801EDEB4 4501000F */  bc1t       .L801EDEF4_ovl16
/* 224168 801EDEB8 00000000 */   nop
.L801EDEBC_ovl9:
/* 22416C 801EDEBC C42025D0 */  lwc1       $f0, %lo(gEntitiesNextPosXArray)($at)
/* 224170 801EDEC0 3C01C370 */  lui        $at, (0xC3700000 >> 16)
/* 224174 801EDEC4 44813000 */  mtc1       $at, $f6
/* 224178 801EDEC8 00000000 */  nop
/* 22417C 801EDECC 4606003C */  c.lt.s     $f0, $f6
/* 224180 801EDED0 00000000 */  nop
.L801EDED4_ovl9:
/* 224184 801EDED4 45010007 */  bc1t       .L801EDEF4_ovl16
/* 224188 801EDED8 00000000 */   nop
/* 22418C 801EDEDC 4600103C */  c.lt.s     $f2, $f0
/* 224190 801EDEE0 3C01800F */  lui        $at, %hi(D_800EA1A0)
.L801EDEE4_ovl10:
/* 224194 801EDEE4 00280821 */  addu       $at, $at, $t0
/* 224198 801EDEE8 240F0001 */  addiu      $t7, $zero, 0x1
/* 22419C 801EDEEC 45000005 */  bc1f       .L801EDF04_ovl16
/* 2241A0 801EDEF0 00000000 */   nop
.L801EDEF4_ovl16:
/* 2241A4 801EDEF4 3C01800F */  lui        $at, %hi(D_800EA1A0)
/* 2241A8 801EDEF8 00280821 */  addu       $at, $at, $t0
/* 2241AC 801EDEFC 10000002 */  b          .L801EDF08_ovl16
/* 2241B0 801EDF00 AC20A1A0 */   sw        $zero, %lo(D_800EA1A0)($at)
.L801EDF04_ovl16:
/* 2241B4 801EDF04 AC2FA1A0 */  sw         $t7, %lo(D_800EA1A0)($at)
.L801EDF08_ovl16:
/* 2241B8 801EDF08 8C780000 */  lw         $t8, 0x0($v1)
/* 2241BC 801EDF0C 3C07800E */  lui        $a3, %hi(D_800DFBD0)
/* 2241C0 801EDF10 24E7FBD0 */  addiu      $a3, $a3, %lo(D_800DFBD0)
/* 2241C4 801EDF14 0018C880 */  sll        $t9, $t8, 2
/* 2241C8 801EDF18 00F95021 */  addu       $t2, $a3, $t9
/* 2241CC 801EDF1C 8D4B0000 */  lw         $t3, 0x0($t2)
/* 2241D0 801EDF20 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 2241D4 801EDF24 44819000 */  mtc1       $at, $f18
/* 2241D8 801EDF28 8D62000C */  lw         $v0, 0xC($t3)
/* 2241DC 801EDF2C 8FAC0064 */  lw         $t4, 0x64($sp)
/* 2241E0 801EDF30 3C04800D */  lui        $a0, %hi(D_800D7098 + 0x10)
.L801EDF34_ovl10:
/* 2241E4 801EDF34 C4480044 */  lwc1       $f8, 0x44($v0)
/* 2241E8 801EDF38 C44A0040 */  lwc1       $f10, 0x40($v0)
/* 2241EC 801EDF3C 8D8D0080 */  lw         $t5, 0x80($t4)
/* 2241F0 801EDF40 24010001 */  addiu      $at, $zero, 0x1
/* 2241F4 801EDF44 460A4400 */  add.s      $f16, $f8, $f10
/* 2241F8 801EDF48 46128082 */  mul.s      $f2, $f16, $f18
/* 2241FC 801EDF4C E5A20010 */  swc1       $f2, 0x10($t5)
/* 224200 801EDF50 8C8470A8 */  lw         $a0, %lo(D_800D7098 + 0x10)($a0)
/* 224204 801EDF54 50800133 */  beql       $a0, $zero, .L801EE424_ovl16
glabel func_801EDF58_ovl10
/* 224208 801EDF58 8D2D0000 */   lw        $t5, 0x0($t1)
/* 22420C 801EDF5C 5481002D */  bnel       $a0, $at, .L801EE014_ovl16
/* 224210 801EDF60 2404001E */   addiu     $a0, $zero, 0x1E
/* 224214 801EDF64 8D2E0000 */  lw         $t6, 0x0($t1)
/* 224218 801EDF68 3C0A800F */  lui        $t2, %hi(D_800E98E0)
/* 22421C 801EDF6C 3C06800E */  lui        $a2, %hi(D_800E0D50)
.L801EDF70_ovl9:
/* 224220 801EDF70 8DC80000 */  lw         $t0, 0x0($t6)
/* 224224 801EDF74 3C0C801F */  lui        $t4, %hi(D_801EFDA0_ovl16)
/* 224228 801EDF78 27A40058 */  addiu      $a0, $sp, 0x58
/* 22422C 801EDF7C 00084080 */  sll        $t0, $t0, 2
/* 224230 801EDF80 01485021 */  addu       $t2, $t2, $t0
glabel func_801EDF84_ovl10
/* 224234 801EDF84 8D4A98E0 */  lw         $t2, %lo(D_800E98E0)($t2)
/* 224238 801EDF88 00C83021 */  addu       $a2, $a2, $t0
/* 22423C 801EDF8C 8CC60D50 */  lw         $a2, %lo(D_800E0D50)($a2)
/* 224240 801EDF90 000A5880 */  sll        $t3, $t2, 2
.L801EDF94_ovl9:
/* 224244 801EDF94 018B6021 */  addu       $t4, $t4, $t3
/* 224248 801EDF98 00067880 */  sll        $t7, $a2, 2
/* 22424C 801EDF9C 8D8CFDA0 */  lw         $t4, %lo(D_801EFDA0_ovl16)($t4)
/* 224250 801EDFA0 00EFC021 */  addu       $t8, $a3, $t7
/* 224254 801EDFA4 8F190000 */  lw         $t9, 0x0($t8)
/* 224258 801EDFA8 000C6880 */  sll        $t5, $t4, 2
/* 22425C 801EDFAC 032D7021 */  addu       $t6, $t9, $t5
/* 224260 801EDFB0 8DC50000 */  lw         $a1, 0x0($t6)
/* 224264 801EDFB4 0C02C8D0 */  jal        func_800B2340
/* 224268 801EDFB8 E7A20050 */   swc1      $f2, 0x50($sp)
/* 22426C 801EDFBC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 224270 801EDFC0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 224274 801EDFC4 C7A40058 */  lwc1       $f4, 0x58($sp)
/* 224278 801EDFC8 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 22427C 801EDFCC 8C6F0000 */  lw         $t7, 0x0($v1)
/* 224280 801EDFD0 C7A6005C */  lwc1       $f6, 0x5C($sp)
/* 224284 801EDFD4 C7A80060 */  lwc1       $f8, 0x60($sp)
/* 224288 801EDFD8 000FC080 */  sll        $t8, $t7, 2
/* 22428C 801EDFDC 00380821 */  addu       $at, $at, $t8
/* 224290 801EDFE0 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 224294 801EDFE4 8C6A0000 */  lw         $t2, 0x0($v1)
/* 224298 801EDFE8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 22429C 801EDFEC C7A20050 */  lwc1       $f2, 0x50($sp)
/* 2242A0 801EDFF0 000A5880 */  sll        $t3, $t2, 2
/* 2242A4 801EDFF4 002B0821 */  addu       $at, $at, $t3
/* 2242A8 801EDFF8 E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 2242AC 801EDFFC 8C6C0000 */  lw         $t4, 0x0($v1)
/* 2242B0 801EE000 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 2242B4 801EE004 000CC880 */  sll        $t9, $t4, 2
/* 2242B8 801EE008 00390821 */  addu       $at, $at, $t9
/* 2242BC 801EE00C E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 2242C0 801EE010 2404001E */  addiu      $a0, $zero, 0x1E
.L801EE014_ovl16:
/* 2242C4 801EE014 0C07BC69 */  jal        func_801EF1A4_ovl16
/* 2242C8 801EE018 E7A20050 */   swc1      $f2, 0x50($sp)
/* 2242CC 801EE01C 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 2242D0 801EE020 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 2242D4 801EE024 3C0E800F */  lui        $t6, %hi(D_800E9E20)
/* 2242D8 801EE028 3C0F800F */  lui        $t7, %hi(D_800E9AA0)
/* 2242DC 801EE02C 8DA80000 */  lw         $t0, 0x0($t5)
/* 2242E0 801EE030 C7A20050 */  lwc1       $f2, 0x50($sp)
/* 2242E4 801EE034 00084080 */  sll        $t0, $t0, 2
/* 2242E8 801EE038 01C87021 */  addu       $t6, $t6, $t0
/* 2242EC 801EE03C 8DCE9E20 */  lw         $t6, %lo(D_800E9E20)($t6)
/* 2242F0 801EE040 01E87821 */  addu       $t7, $t7, $t0
/* 2242F4 801EE044 15C00017 */  bnez       $t6, .L801EE0A4_ovl16
glabel func_801EE048_ovl10
/* 2242F8 801EE048 00000000 */   nop
/* 2242FC 801EE04C 8DEF9AA0 */  lw         $t7, %lo(D_800E9AA0)($t7)
glabel func_801EE050_ovl10
/* 224300 801EE050 24010001 */  addiu      $at, $zero, 0x1
/* 224304 801EE054 3C0C800E */  lui        $t4, %hi(D_800E1B50)
/* 224308 801EE058 15E10008 */  bne        $t7, $at, .L801EE07C_ovl16
/* 22430C 801EE05C 01886021 */   addu      $t4, $t4, $t0
/* 224310 801EE060 3C0A800E */  lui        $t2, %hi(D_800E1B50)
glabel func_801EE064_ovl9
/* 224314 801EE064 01485021 */  addu       $t2, $t2, $t0
/* 224318 801EE068 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
/* 22431C 801EE06C 3C18801E */  lui        $t8, %hi(func_801DA498_ovl9 + 0x10)
/* 224320 801EE070 2718A4A8 */  addiu      $t8, $t8, %lo(func_801DA498_ovl9 + 0x10)
/* 224324 801EE074 10000005 */  b          .L801EE08C_ovl16
/* 224328 801EE078 AD58008C */   sw        $t8, 0x8C($t2)
.L801EE07C_ovl16:
/* 22432C 801EE07C 8D8C1B50 */  lw         $t4, %lo(D_800E1B50)($t4)
/* 224330 801EE080 3C0B801E */  lui        $t3, %hi(D_801DA484)
/* 224334 801EE084 256BA484 */  addiu      $t3, $t3, %lo(D_801DA484)
/* 224338 801EE088 AD8B008C */  sw         $t3, 0x8C($t4)
.L801EE08C_ovl16:
/* 22433C 801EE08C 3C01420C */  lui        $at, (0x420C0000 >> 16)
/* 224340 801EE090 44815000 */  mtc1       $at, $f10
/* 224344 801EE094 00000000 */  nop
/* 224348 801EE098 460A1302 */  mul.s      $f12, $f2, $f10
/* 22434C 801EE09C 0C07BCBA */  jal        func_801EF2E8_ovl16
/* 224350 801EE0A0 00000000 */   nop
.L801EE0A4_ovl16:
/* 224354 801EE0A4 3C04800D */  lui        $a0, %hi(D_800D7098)
/* 224358 801EE0A8 24847098 */  addiu      $a0, $a0, %lo(D_800D7098)
/* 22435C 801EE0AC 8C990010 */  lw         $t9, 0x10($a0)
/* 224360 801EE0B0 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 224364 801EE0B4 2B210002 */  slti       $at, $t9, 0x2
/* 224368 801EE0B8 54200124 */  bnel       $at, $zero, .L801EE54C_ovl16
/* 22436C 801EE0BC 8FBF001C */   lw        $ra, 0x1C($sp)
/* 224370 801EE0C0 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 224374 801EE0C4 3C0E800F */  lui        $t6, %hi(D_800E9FE0)
/* 224378 801EE0C8 25CE9FE0 */  addiu      $t6, $t6, %lo(D_800E9FE0)
/* 22437C 801EE0CC 8DA80000 */  lw         $t0, 0x0($t5)
/* 224380 801EE0D0 3C0F800F */  lui        $t7, %hi(D_800E9AA0)
/* 224384 801EE0D4 00084080 */  sll        $t0, $t0, 2
/* 224388 801EE0D8 010E1821 */  addu       $v1, $t0, $t6
/* 22438C 801EE0DC 8C620000 */  lw         $v0, 0x0($v1)
/* 224390 801EE0E0 01E87821 */  addu       $t7, $t7, $t0
/* 224394 801EE0E4 144000CA */  bnez       $v0, func_801EE410_ovl16
/* 224398 801EE0E8 00000000 */   nop
/* 22439C 801EE0EC 8DEF9AA0 */  lw         $t7, %lo(D_800E9AA0)($t7)
/* 2243A0 801EE0F0 15E000C7 */  bnez       $t7, func_801EE410_ovl16
/* 2243A4 801EE0F4 00000000 */   nop
/* 2243A8 801EE0F8 8C850034 */  lw         $a1, 0x34($a0)
/* 2243AC 801EE0FC 3C03800E */  lui        $v1, %hi(gEntitiesNextPosXArray)
/* 2243B0 801EE100 246325D0 */  addiu      $v1, $v1, %lo(gEntitiesNextPosXArray)
/* 2243B4 801EE104 00052880 */  sll        $a1, $a1, 2
/* 2243B8 801EE108 3C02800E */  lui        $v0, %hi(gEntitiesNextPosYArray)
/* 2243BC 801EE10C 00655021 */  addu       $t2, $v1, $a1
/* 2243C0 801EE110 0068C021 */  addu       $t8, $v1, $t0
/* 2243C4 801EE114 C7100000 */  lwc1       $f16, 0x0($t8)
/* 2243C8 801EE118 C5520000 */  lwc1       $f18, 0x0($t2)
/* 2243CC 801EE11C 24422790 */  addiu      $v0, $v0, %lo(gEntitiesNextPosYArray)
/* 2243D0 801EE120 00485821 */  addu       $t3, $v0, $t0
/* 2243D4 801EE124 00456021 */  addu       $t4, $v0, $a1
/* 2243D8 801EE128 46128081 */  sub.s      $f2, $f16, $f18
/* 2243DC 801EE12C C5860000 */  lwc1       $f6, 0x0($t4)
/* 2243E0 801EE130 C5640000 */  lwc1       $f4, 0x0($t3)
/* 2243E4 801EE134 46021202 */  mul.s      $f8, $f2, $f2
/* 2243E8 801EE138 46062001 */  sub.s      $f0, $f4, $f6
/* 2243EC 801EE13C 46000282 */  mul.s      $f10, $f0, $f0
/* 2243F0 801EE140 0C00CAC8 */  jal        sqrtf
/* 2243F4 801EE144 460A4300 */   add.s     $f12, $f8, $f10
/* 2243F8 801EE148 3C014290 */  lui        $at, (0x42900000 >> 16)
/* 2243FC 801EE14C 44818000 */  mtc1       $at, $f16
/* 224400 801EE150 3C19800D */  lui        $t9, %hi(D_800D7098 + 0x34)
/* 224404 801EE154 4610003C */  c.lt.s     $f0, $f16
/* 224408 801EE158 00000000 */  nop
/* 22440C 801EE15C 450200FB */  bc1fl      .L801EE54C_ovl16
/* 224410 801EE160 8FBF001C */   lw        $ra, 0x1C($sp)
/* 224414 801EE164 8F3970CC */  lw         $t9, %lo(D_800D7098 + 0x34)($t9)
/* 224418 801EE168 3C0E800F */  lui        $t6, %hi(D_800E9AA0)
/* 22441C 801EE16C 24040036 */  addiu      $a0, $zero, 0x36
.L801EE170_ovl9:
/* 224420 801EE170 00196880 */  sll        $t5, $t9, 2
.L801EE174_ovl9:
/* 224424 801EE174 01CD7021 */  addu       $t6, $t6, $t5
/* 224428 801EE178 8DCE9AA0 */  lw         $t6, %lo(D_800E9AA0)($t6)
/* 22442C 801EE17C 15C00016 */  bnez       $t6, .L801EE1D8_ovl16
/* 224430 801EE180 00000000 */   nop
/* 224434 801EE184 0C06B30D */  jal        func_801ACC34_ovl7
/* 224438 801EE188 24050003 */   addiu     $a1, $zero, 0x3
/* 22443C 801EE18C 10400012 */  beqz       $v0, .L801EE1D8_ovl16
/* 224440 801EE190 00022080 */   sll       $a0, $v0, 2
/* 224444 801EE194 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 224448 801EE198 00240821 */  addu       $at, $at, $a0
/* 22444C 801EE19C 240F0001 */  addiu      $t7, $zero, 0x1
/* 224450 801EE1A0 3C03800D */  lui        $v1, %hi(D_800D7098 + 0x34)
/* 224454 801EE1A4 8C6370CC */  lw         $v1, %lo(D_800D7098 + 0x34)($v1)
/* 224458 801EE1A8 AC2F8E60 */  sw         $t7, %lo(D_800E8E60)($at)
/* 22445C 801EE1AC 3C01800E */  lui        $at, %hi(D_800E0D50)
/* 224460 801EE1B0 00240821 */  addu       $at, $at, $a0
/* 224464 801EE1B4 AC230D50 */  sw         $v1, %lo(D_800E0D50)($at)
/* 224468 801EE1B8 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 22446C 801EE1BC 00032880 */  sll        $a1, $v1, 2
/* 224470 801EE1C0 00250821 */  addu       $at, $at, $a1
/* 224474 801EE1C4 24180001 */  addiu      $t8, $zero, 0x1
/* 224478 801EE1C8 AC389AA0 */  sw         $t8, %lo(D_800E9AA0)($at)
/* 22447C 801EE1CC 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 224480 801EE1D0 00250821 */  addu       $at, $at, $a1
/* 224484 801EE1D4 AC229C60 */  sw         $v0, %lo(D_800E9C60)($at)
.L801EE1D8_ovl16:
/* 224488 801EE1D8 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 22448C 801EE1DC 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 224490 801EE1E0 3C05800D */  lui        $a1, %hi(D_800D7098 + 0x34)
/* 224494 801EE1E4 8CA570CC */  lw         $a1, %lo(D_800D7098 + 0x34)($a1)
/* 224498 801EE1E8 8C6A0000 */  lw         $t2, 0x0($v1)
/* 22449C 801EE1EC 3C06800E */  lui        $a2, %hi(gEntitiesNextPosXArray)
/* 2244A0 801EE1F0 24C625D0 */  addiu      $a2, $a2, %lo(gEntitiesNextPosXArray)
/* 2244A4 801EE1F4 00052880 */  sll        $a1, $a1, 2
/* 2244A8 801EE1F8 000A5880 */  sll        $t3, $t2, 2
/* 2244AC 801EE1FC 00CB6021 */  addu       $t4, $a2, $t3
/* 2244B0 801EE200 00C5C821 */  addu       $t9, $a2, $a1
/* 2244B4 801EE204 C7240000 */  lwc1       $f4, 0x0($t9)
/* 2244B8 801EE208 C5920000 */  lwc1       $f18, 0x0($t4)
/* 2244BC 801EE20C 3C02800E */  lui        $v0, %hi(gEntitiesNextPosYArray)
/* 2244C0 801EE210 24422790 */  addiu      $v0, $v0, %lo(gEntitiesNextPosYArray)
/* 2244C4 801EE214 46049181 */  sub.s      $f6, $f18, $f4
/* 2244C8 801EE218 0045C021 */  addu       $t8, $v0, $a1
.L801EE21C_ovl9:
/* 2244CC 801EE21C C70A0000 */  lwc1       $f10, 0x0($t8)
/* 2244D0 801EE220 44809000 */  mtc1       $zero, $f18
/* 2244D4 801EE224 E7A6003C */  swc1       $f6, 0x3C($sp)
/* 2244D8 801EE228 8C6D0000 */  lw         $t5, 0x0($v1)
/* 2244DC 801EE22C 27A4003C */  addiu      $a0, $sp, 0x3C
/* 2244E0 801EE230 000D7080 */  sll        $t6, $t5, 2
/* 2244E4 801EE234 004E7821 */  addu       $t7, $v0, $t6
.L801EE238_ovl9:
/* 2244E8 801EE238 C5E80000 */  lwc1       $f8, 0x0($t7)
/* 2244EC 801EE23C E7B20044 */  swc1       $f18, 0x44($sp)
/* 2244F0 801EE240 460A4401 */  sub.s      $f16, $f8, $f10
glabel func_801EE244_ovl10
/* 2244F4 801EE244 0C006328 */  jal        lbvector_Normalize
/* 2244F8 801EE248 E7B00040 */   swc1      $f16, 0x40($sp)
glabel func_801EE24C_ovl10
/* 2244FC 801EE24C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 224500 801EE250 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 224504 801EE254 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 224508 801EE258 27A40030 */  addiu      $a0, $sp, 0x30
/* 22450C 801EE25C 8C680000 */  lw         $t0, 0x0($v1)
/* 224510 801EE260 00084080 */  sll        $t0, $t0, 2
/* 224514 801EE264 00280821 */  addu       $at, $at, $t0
/* 224518 801EE268 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 22451C 801EE26C 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* 224520 801EE270 00280821 */  addu       $at, $at, $t0
/* 224524 801EE274 C4262B10 */  lwc1       $f6, %lo(gEntitiesPosXArray)($at)
/* 224528 801EE278 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 22452C 801EE27C 46062201 */  sub.s      $f8, $f4, $f6
/* 224530 801EE280 44802000 */  mtc1       $zero, $f4
/* 224534 801EE284 E7A80030 */  swc1       $f8, 0x30($sp)
.L801EE288_ovl9:
/* 224538 801EE288 8C680000 */  lw         $t0, 0x0($v1)
/* 22453C 801EE28C E7A40038 */  swc1       $f4, 0x38($sp)
/* 224540 801EE290 00084080 */  sll        $t0, $t0, 2
/* 224544 801EE294 00280821 */  addu       $at, $at, $t0
/* 224548 801EE298 C42A2790 */  lwc1       $f10, %lo(gEntitiesNextPosYArray)($at)
.L801EE29C_ovl9:
/* 22454C 801EE29C 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
/* 224550 801EE2A0 00280821 */  addu       $at, $at, $t0
/* 224554 801EE2A4 C4302CD0 */  lwc1       $f16, %lo(gEntitiesPosYArray)($at)
/* 224558 801EE2A8 46105481 */  sub.s      $f18, $f10, $f16
/* 22455C 801EE2AC 0C006328 */  jal        lbvector_Normalize
/* 224560 801EE2B0 E7B20034 */   swc1      $f18, 0x34($sp)
/* 224564 801EE2B4 27A40030 */  addiu      $a0, $sp, 0x30
/* 224568 801EE2B8 0C006576 */  jal        func_800195D8
/* 22456C 801EE2BC 27A5003C */   addiu     $a1, $sp, 0x3C
/* 224570 801EE2C0 C7AC0030 */  lwc1       $f12, 0x30($sp)
/* 224574 801EE2C4 C7AE0034 */  lwc1       $f14, 0x34($sp)
/* 224578 801EE2C8 0C0061C3 */  jal        atan2f
/* 22457C 801EE2CC 46006307 */   neg.s     $f12, $f12
/* 224580 801EE2D0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 224584 801EE2D4 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 224588 801EE2D8 3C04800F */  lui        $a0, %hi(D_800EA6E0)
/* 22458C 801EE2DC 2484A6E0 */  addiu      $a0, $a0, %lo(D_800EA6E0)
/* 224590 801EE2E0 8C6A0000 */  lw         $t2, 0x0($v1)
/* 224594 801EE2E4 3C01801F */  lui        $at, %hi(D_801F0100_ovl16)
glabel func_801EE2E8_ovl9
/* 224598 801EE2E8 C4220100 */  lwc1       $f2, %lo(D_801F0100_ovl16)($at)
/* 22459C 801EE2EC 000A5880 */  sll        $t3, $t2, 2
/* 2245A0 801EE2F0 008B6021 */  addu       $t4, $a0, $t3
/* 2245A4 801EE2F4 E5800000 */  swc1       $f0, 0x0($t4)
/* 2245A8 801EE2F8 8C790000 */  lw         $t9, 0x0($v1)
/* 2245AC 801EE2FC 3C01801F */  lui        $at, %hi(D_801F0104_ovl16)
/* 2245B0 801EE300 00196880 */  sll        $t5, $t9, 2
/* 2245B4 801EE304 008D1021 */  addu       $v0, $a0, $t5
/* 2245B8 801EE308 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 2245BC 801EE30C 460C103C */  c.lt.s     $f2, $f12
/* 2245C0 801EE310 00000000 */  nop
/* 2245C4 801EE314 4500000B */  bc1f       .L801EE344_ovl16
/* 2245C8 801EE318 00000000 */   nop
/* 2245CC 801EE31C 46026181 */  sub.s      $f6, $f12, $f2
.L801EE320_ovl16:
/* 2245D0 801EE320 E4460000 */  swc1       $f6, 0x0($v0)
/* 2245D4 801EE324 8C6E0000 */  lw         $t6, 0x0($v1)
/* 2245D8 801EE328 000E7880 */  sll        $t7, $t6, 2
/* 2245DC 801EE32C 008F1021 */  addu       $v0, $a0, $t7
/* 2245E0 801EE330 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 2245E4 801EE334 460C103C */  c.lt.s     $f2, $f12
/* 2245E8 801EE338 00000000 */  nop
/* 2245EC 801EE33C 4503FFF8 */  bc1tl      .L801EE320_ovl16
/* 2245F0 801EE340 46026181 */   sub.s     $f6, $f12, $f2
.L801EE344_ovl16:
/* 2245F4 801EE344 C4200104 */  lwc1       $f0, %lo(D_801F0104_ovl16)($at)
/* 2245F8 801EE348 4600603C */  c.lt.s     $f12, $f0
/* 2245FC 801EE34C 00000000 */  nop
/* 224600 801EE350 4500000B */  bc1f       .L801EE380_ovl16
/* 224604 801EE354 00000000 */   nop
/* 224608 801EE358 46026200 */  add.s      $f8, $f12, $f2
.L801EE35C_ovl16:
/* 22460C 801EE35C E4480000 */  swc1       $f8, 0x0($v0)
/* 224610 801EE360 8C780000 */  lw         $t8, 0x0($v1)
/* 224614 801EE364 00185080 */  sll        $t2, $t8, 2
/* 224618 801EE368 008A1021 */  addu       $v0, $a0, $t2
/* 22461C 801EE36C C44C0000 */  lwc1       $f12, 0x0($v0)
/* 224620 801EE370 4600603C */  c.lt.s     $f12, $f0
/* 224624 801EE374 00000000 */  nop
/* 224628 801EE378 4503FFF8 */  bc1tl      .L801EE35C_ovl16
/* 22462C 801EE37C 46026200 */   add.s     $f8, $f12, $f2
.L801EE380_ovl16:
/* 224630 801EE380 0C00B5B8 */  jal        sinf
/* 224634 801EE384 00000000 */   nop
/* 224638 801EE388 3C01C0C0 */  lui        $at, (0xC0C00000 >> 16)
/* 22463C 801EE38C 44815000 */  mtc1       $at, $f10
/* 224640 801EE390 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 224644 801EE394 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 224648 801EE398 460A0402 */  mul.s      $f16, $f0, $f10
/* 22464C 801EE39C 3C01800E */  lui        $at, %hi(D_800E3050)
/* 224650 801EE3A0 8C6B0000 */  lw         $t3, 0x0($v1)
/* 224654 801EE3A4 3C04800F */  lui        $a0, %hi(D_800EA6E0)
/* 224658 801EE3A8 2484A6E0 */  addiu      $a0, $a0, %lo(D_800EA6E0)
/* 22465C 801EE3AC 000B6080 */  sll        $t4, $t3, 2
/* 224660 801EE3B0 002C0821 */  addu       $at, $at, $t4
/* 224664 801EE3B4 E4303050 */  swc1       $f16, %lo(D_800E3050)($at)
/* 224668 801EE3B8 8C790000 */  lw         $t9, 0x0($v1)
/* 22466C 801EE3BC 00196880 */  sll        $t5, $t9, 2
/* 224670 801EE3C0 008D7021 */  addu       $t6, $a0, $t5
/* 224674 801EE3C4 0C00D604 */  jal        cosf
/* 224678 801EE3C8 C5CC0000 */   lwc1      $f12, 0x0($t6)
/* 22467C 801EE3CC 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 224680 801EE3D0 44819000 */  mtc1       $at, $f18
/* 224684 801EE3D4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 224688 801EE3D8 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 22468C 801EE3DC 46120102 */  mul.s      $f4, $f0, $f18
/* 224690 801EE3E0 3C01800E */  lui        $at, %hi(D_800E3210)
/* 224694 801EE3E4 8C6F0000 */  lw         $t7, 0x0($v1)
/* 224698 801EE3E8 240A000A */  addiu      $t2, $zero, 0xA
/* 22469C 801EE3EC 000FC080 */  sll        $t8, $t7, 2
/* 2246A0 801EE3F0 00380821 */  addu       $at, $at, $t8
/* 2246A4 801EE3F4 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* 2246A8 801EE3F8 8C6B0000 */  lw         $t3, 0x0($v1)
/* 2246AC 801EE3FC 3C01800F */  lui        $at, %hi(D_800E9FE0)
.L801EE400_ovl9:
/* 2246B0 801EE400 000B6080 */  sll        $t4, $t3, 2
.L801EE404_ovl9:
/* 2246B4 801EE404 002C0821 */  addu       $at, $at, $t4
glabel func_801EE408_ovl10
/* 2246B8 801EE408 1000004F */  b          .L801EE548_ovl16
/* 2246BC 801EE40C AC2A9FE0 */   sw        $t2, %lo(D_800E9FE0)($at)
glabel func_801EE410_ovl16
/* 2246C0 801EE410 1840004D */  blez       $v0, .L801EE548_ovl16
/* 2246C4 801EE414 2459FFFF */   addiu     $t9, $v0, -0x1
/* 2246C8 801EE418 1000004B */  b          .L801EE548_ovl16
/* 2246CC 801EE41C AC790000 */   sw        $t9, 0x0($v1)
/* 2246D0 801EE420 8D2D0000 */  lw         $t5, 0x0($t1)
.L801EE424_ovl16:
/* 2246D4 801EE424 3C0E800F */  lui        $t6, %hi(D_800E9E20)
/* 2246D8 801EE428 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* 2246DC 801EE42C 8DA80000 */  lw         $t0, 0x0($t5)
/* 2246E0 801EE430 24040006 */  addiu      $a0, $zero, 0x6
/* 2246E4 801EE434 24050002 */  addiu      $a1, $zero, 0x2
/* 2246E8 801EE438 00084080 */  sll        $t0, $t0, 2
/* 2246EC 801EE43C 01C87021 */  addu       $t6, $t6, $t0
/* 2246F0 801EE440 8DCE9E20 */  lw         $t6, %lo(D_800E9E20)($t6)
/* 2246F4 801EE444 00E83821 */  addu       $a3, $a3, $t0
/* 2246F8 801EE448 24060017 */  addiu      $a2, $zero, 0x17
/* 2246FC 801EE44C 15C00032 */  bnez       $t6, .L801EE518_ovl16
/* 224700 801EE450 3C01800E */   lui       $at, %hi(gEntitiesNextPosYArray)
/* 224704 801EE454 00280821 */  addu       $at, $at, $t0
/* 224708 801EE458 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 22470C 801EE45C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 224710 801EE460 00280821 */  addu       $at, $at, $t0
/* 224714 801EE464 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* 224718 801EE468 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 22471C 801EE46C E7A60010 */  swc1       $f6, 0x10($sp)
/* 224720 801EE470 0C029FDD */  jal        func_800A7F74
/* 224724 801EE474 E7A80014 */   swc1      $f8, 0x14($sp)
/* 224728 801EE478 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 22472C 801EE47C 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 224730 801EE480 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 224734 801EE484 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* 224738 801EE488 8DE80000 */  lw         $t0, 0x0($t7)
/* 22473C 801EE48C 24040006 */  addiu      $a0, $zero, 0x6
/* 224740 801EE490 24050002 */  addiu      $a1, $zero, 0x2
/* 224744 801EE494 00084080 */  sll        $t0, $t0, 2
/* 224748 801EE498 00280821 */  addu       $at, $at, $t0
/* 22474C 801EE49C C42A2790 */  lwc1       $f10, %lo(gEntitiesNextPosYArray)($at)
/* 224750 801EE4A0 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 224754 801EE4A4 00280821 */  addu       $at, $at, $t0
/* 224758 801EE4A8 C4302950 */  lwc1       $f16, %lo(gEntitiesNextPosZArray)($at)
/* 22475C 801EE4AC 00E83821 */  addu       $a3, $a3, $t0
/* 224760 801EE4B0 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 224764 801EE4B4 24060018 */  addiu      $a2, $zero, 0x18
/* 224768 801EE4B8 E7AA0010 */  swc1       $f10, 0x10($sp)
/* 22476C 801EE4BC 0C029FDD */  jal        func_800A7F74
/* 224770 801EE4C0 E7B00014 */   swc1      $f16, 0x14($sp)
/* 224774 801EE4C4 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 224778 801EE4C8 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 22477C 801EE4CC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 224780 801EE4D0 3C07800E */  lui        $a3, %hi(gEntitiesNextPosXArray)
/* 224784 801EE4D4 8F080000 */  lw         $t0, 0x0($t8)
/* 224788 801EE4D8 24040006 */  addiu      $a0, $zero, 0x6
/* 22478C 801EE4DC 24050002 */  addiu      $a1, $zero, 0x2
/* 224790 801EE4E0 00084080 */  sll        $t0, $t0, 2
/* 224794 801EE4E4 00280821 */  addu       $at, $at, $t0
/* 224798 801EE4E8 C4322790 */  lwc1       $f18, %lo(gEntitiesNextPosYArray)($at)
/* 22479C 801EE4EC 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 2247A0 801EE4F0 00280821 */  addu       $at, $at, $t0
/* 2247A4 801EE4F4 C4242950 */  lwc1       $f4, %lo(gEntitiesNextPosZArray)($at)
/* 2247A8 801EE4F8 00E83821 */  addu       $a3, $a3, $t0
/* 2247AC 801EE4FC 8CE725D0 */  lw         $a3, %lo(gEntitiesNextPosXArray)($a3)
/* 2247B0 801EE500 24060019 */  addiu      $a2, $zero, 0x19
/* 2247B4 801EE504 E7B20010 */  swc1       $f18, 0x10($sp)
/* 2247B8 801EE508 0C029FDD */  jal        func_800A7F74
.L801EE50C_ovl9:
/* 2247BC 801EE50C E7A40014 */   swc1      $f4, 0x14($sp)
/* 2247C0 801EE510 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 2247C4 801EE514 2529A7C4 */  addiu      $t1, $t1, %lo(D_8004A7C4)
.L801EE518_ovl16:
/* 2247C8 801EE518 8FAA0064 */  lw         $t2, 0x64($sp)
/* 2247CC 801EE51C 240B0001 */  addiu      $t3, $zero, 0x1
/* 2247D0 801EE520 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 2247D4 801EE524 A14B0040 */  sb         $t3, 0x40($t2)
/* 2247D8 801EE528 8D2C0000 */  lw         $t4, 0x0($t1)
/* 2247DC 801EE52C 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
/* 2247E0 801EE530 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
/* 2247E4 801EE534 8D990000 */  lw         $t9, 0x0($t4)
/* 2247E8 801EE538 00196880 */  sll        $t5, $t9, 2
/* 2247EC 801EE53C 008D2021 */  addu       $a0, $a0, $t5
/* 2247F0 801EE540 0C02C7B2 */  jal        assign_new_process_entry
/* 2247F4 801EE544 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
.L801EE548_ovl16:
/* 2247F8 801EE548 8FBF001C */  lw         $ra, 0x1C($sp)
.L801EE54C_ovl16:
/* 2247FC 801EE54C 27BD0068 */  addiu      $sp, $sp, 0x68
/* 224800 801EE550 03E00008 */  jr         $ra
/* 224804 801EE554 00000000 */   nop
