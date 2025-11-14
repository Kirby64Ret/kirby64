glabel func_800A5F94
/* 04E1E4 800A5F94 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 04E1E8 800A5F98 AFB10028 */  sw    $s1, 0x28($sp)
/* 04E1EC 800A5F9C 3C0E800E */  lui   $t6, %hi(gEntitiesAngleXArray) # $t6, 0x800e
/* 04E1F0 800A5FA0 25CE4010 */  addiu $t6, %lo(gEntitiesAngleXArray) # addiu $t6, $t6, 0x4010
/* 04E1F4 800A5FA4 00048880 */  sll   $s1, $a0, 2
/* 04E1F8 800A5FA8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04E1FC 800A5FAC AFB00024 */  sw    $s0, 0x24($sp)
/* 04E200 800A5FB0 022E1021 */  addu  $v0, $s1, $t6
/* 04E204 800A5FB4 00A08025 */  move  $s0, $a1
/* 04E208 800A5FB8 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 04E20C 800A5FBC F7B40010 */  sdc1  $f20, 0x10($sp)
/* 04E210 800A5FC0 C44C0000 */  lwc1  $f12, ($v0)
/* 04E214 800A5FC4 0C0296D9 */  jal   func_800A5B64
/* 04E218 800A5FC8 AFA20030 */   sw    $v0, 0x30($sp)
/* 04E21C 800A5FCC 8FA20030 */  lw    $v0, 0x30($sp)
/* 04E220 800A5FD0 46000506 */  mov.s $f20, $f0
/* 04E224 800A5FD4 0C0296F7 */  jal   func_800A5BDC
/* 04E228 800A5FD8 C44C0000 */   lwc1  $f12, ($v0)
/* 04E22C 800A5FDC 3C0F800E */  lui   $t7, %hi(gEntitiesAngleYArray) # $t7, 0x800e
/* 04E230 800A5FE0 25EF41D0 */  addiu $t7, %lo(gEntitiesAngleYArray) # addiu $t7, $t7, 0x41d0
/* 04E234 800A5FE4 022F1021 */  addu  $v0, $s1, $t7
/* 04E238 800A5FE8 46000586 */  mov.s $f22, $f0
/* 04E23C 800A5FEC C44C0000 */  lwc1  $f12, ($v0)
/* 04E240 800A5FF0 0C0296D9 */  jal   func_800A5B64
/* 04E244 800A5FF4 AFA20030 */   sw    $v0, 0x30($sp)
/* 04E248 800A5FF8 8FA20030 */  lw    $v0, 0x30($sp)
/* 04E24C 800A5FFC E7A00048 */  swc1  $f0, 0x48($sp)
/* 04E250 800A6000 0C0296F7 */  jal   func_800A5BDC
/* 04E254 800A6004 C44C0000 */   lwc1  $f12, ($v0)
/* 04E258 800A6008 3C18800E */  lui   $t8, %hi(gEntitiesAngleZArray) # $t8, 0x800e
/* 04E25C 800A600C 27184390 */  addiu $t8, %lo(gEntitiesAngleZArray) # addiu $t8, $t8, 0x4390
/* 04E260 800A6010 02381021 */  addu  $v0, $s1, $t8
/* 04E264 800A6014 C44C0000 */  lwc1  $f12, ($v0)
/* 04E268 800A6018 AFA20030 */  sw    $v0, 0x30($sp)
/* 04E26C 800A601C 0C0296D9 */  jal   func_800A5B64
/* 04E270 800A6020 E7A0003C */   swc1  $f0, 0x3c($sp)
/* 04E274 800A6024 8FA20030 */  lw    $v0, 0x30($sp)
/* 04E278 800A6028 E7A00044 */  swc1  $f0, 0x44($sp)
/* 04E27C 800A602C 0C0296F7 */  jal   func_800A5BDC
/* 04E280 800A6030 C44C0000 */   lwc1  $f12, ($v0)
/* 04E284 800A6034 C7AE003C */  lwc1  $f14, 0x3c($sp)
/* 04E288 800A6038 C7A20044 */  lwc1  $f2, 0x44($sp)
/* 04E28C 800A603C 3C19800E */  lui   $t9, %hi(gEntitiesScaleXArray) # $t9, 0x800e
/* 04E290 800A6040 46007102 */  mul.s $f4, $f14, $f0
/* 04E294 800A6044 27394550 */  addiu $t9, %lo(gEntitiesScaleXArray) # addiu $t9, $t9, 0x4550
/* 04E298 800A6048 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 04E29C 800A604C 46027182 */  mul.s $f6, $f14, $f2
/* 04E2A0 800A6050 02391021 */  addu  $v0, $s1, $t9
/* 04E2A4 800A6054 44819000 */  mtc1  $at, $f18
/* 04E2A8 800A6058 3C08800E */  lui   $t0, %hi(gEntitiesScaleYArray) # $t0, 0x800e
/* 04E2AC 800A605C E6040000 */  swc1  $f4, ($s0)
/* 04E2B0 800A6060 3C09800E */  lui   $t1, %hi(gEntitiesScaleZArray) # $t1, 0x800e
/* 04E2B4 800A6064 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 04E2B8 800A6068 E6060004 */  swc1  $f6, 4($s0)
/* 04E2BC 800A606C C7A80048 */  lwc1  $f8, 0x48($sp)
/* 04E2C0 800A6070 25084710 */  addiu $t0, %lo(gEntitiesScaleYArray) # addiu $t0, $t0, 0x4710
/* 04E2C4 800A6074 252948D0 */  addiu $t1, %lo(gEntitiesScaleZArray) # addiu $t1, $t1, 0x48d0
/* 04E2C8 800A6078 46004287 */  neg.s $f10, $f8
/* 04E2CC 800A607C 00310821 */  addu  $at, $at, $s1
/* 04E2D0 800A6080 E60A0008 */  swc1  $f10, 8($s0)
/* 04E2D4 800A6084 C7A40048 */  lwc1  $f4, 0x48($sp)
/* 04E2D8 800A6088 4604A302 */  mul.s $f12, $f20, $f4
/* 04E2DC 800A608C 00000000 */  nop   
/* 04E2E0 800A6090 46006182 */  mul.s $f6, $f12, $f0
/* 04E2E4 800A6094 00000000 */  nop   
/* 04E2E8 800A6098 4602B202 */  mul.s $f8, $f22, $f2
/* 04E2EC 800A609C 46083281 */  sub.s $f10, $f6, $f8
/* 04E2F0 800A60A0 46026102 */  mul.s $f4, $f12, $f2
/* 04E2F4 800A60A4 00000000 */  nop   
/* 04E2F8 800A60A8 4600B182 */  mul.s $f6, $f22, $f0
/* 04E2FC 800A60AC E60A000C */  swc1  $f10, 0xc($s0)
/* 04E300 800A60B0 460EA282 */  mul.s $f10, $f20, $f14
/* 04E304 800A60B4 46062200 */  add.s $f8, $f4, $f6
/* 04E308 800A60B8 E60A0014 */  swc1  $f10, 0x14($s0)
/* 04E30C 800A60BC E6080010 */  swc1  $f8, 0x10($s0)
/* 04E310 800A60C0 C7A40048 */  lwc1  $f4, 0x48($sp)
/* 04E314 800A60C4 4604B302 */  mul.s $f12, $f22, $f4
/* 04E318 800A60C8 00000000 */  nop   
/* 04E31C 800A60CC 46006182 */  mul.s $f6, $f12, $f0
/* 04E320 800A60D0 00000000 */  nop   
/* 04E324 800A60D4 4602A202 */  mul.s $f8, $f20, $f2
/* 04E328 800A60D8 46083280 */  add.s $f10, $f6, $f8
/* 04E32C 800A60DC 46026102 */  mul.s $f4, $f12, $f2
/* 04E330 800A60E0 00000000 */  nop   
/* 04E334 800A60E4 4600A182 */  mul.s $f6, $f20, $f0
/* 04E338 800A60E8 E60A0018 */  swc1  $f10, 0x18($s0)
/* 04E33C 800A60EC 460EB282 */  mul.s $f10, $f22, $f14
/* 04E340 800A60F0 46062201 */  sub.s $f8, $f4, $f6
/* 04E344 800A60F4 E60A0020 */  swc1  $f10, 0x20($s0)
/* 04E348 800A60F8 E608001C */  swc1  $f8, 0x1c($s0)
/* 04E34C 800A60FC C4500000 */  lwc1  $f16, ($v0)
/* 04E350 800A6100 46109032 */  c.eq.s $f18, $f16
/* 04E354 800A6104 00000000 */  nop   
/* 04E358 800A6108 4501000C */  bc1t  .L800A613C_ovl1
/* 04E35C 800A610C 00000000 */   nop   
/* 04E360 800A6110 C6040000 */  lwc1  $f4, ($s0)
/* 04E364 800A6114 C6080004 */  lwc1  $f8, 4($s0)
/* 04E368 800A6118 46102182 */  mul.s $f6, $f4, $f16
/* 04E36C 800A611C E6060000 */  swc1  $f6, ($s0)
/* 04E370 800A6120 C44A0000 */  lwc1  $f10, ($v0)
/* 04E374 800A6124 C6060008 */  lwc1  $f6, 8($s0)
/* 04E378 800A6128 460A4102 */  mul.s $f4, $f8, $f10
/* 04E37C 800A612C E6040004 */  swc1  $f4, 4($s0)
/* 04E380 800A6130 C4480000 */  lwc1  $f8, ($v0)
/* 04E384 800A6134 46083282 */  mul.s $f10, $f6, $f8
/* 04E388 800A6138 E60A0008 */  swc1  $f10, 8($s0)
.L800A613C_ovl1:
/* 04E38C 800A613C 02281021 */  addu  $v0, $s1, $t0
/* 04E390 800A6140 C4400000 */  lwc1  $f0, ($v0)
/* 04E394 800A6144 46009032 */  c.eq.s $f18, $f0
/* 04E398 800A6148 00000000 */  nop   
/* 04E39C 800A614C 4503000D */  bc1tl .L800A6184_ovl1
/* 04E3A0 800A6150 02291021 */   addu  $v0, $s1, $t1
/* 04E3A4 800A6154 C604000C */  lwc1  $f4, 0xc($s0)
/* 04E3A8 800A6158 C6080010 */  lwc1  $f8, 0x10($s0)
/* 04E3AC 800A615C 46002182 */  mul.s $f6, $f4, $f0
/* 04E3B0 800A6160 E606000C */  swc1  $f6, 0xc($s0)
/* 04E3B4 800A6164 C44A0000 */  lwc1  $f10, ($v0)
/* 04E3B8 800A6168 C6060014 */  lwc1  $f6, 0x14($s0)
/* 04E3BC 800A616C 460A4102 */  mul.s $f4, $f8, $f10
/* 04E3C0 800A6170 E6040010 */  swc1  $f4, 0x10($s0)
/* 04E3C4 800A6174 C4480000 */  lwc1  $f8, ($v0)
/* 04E3C8 800A6178 46083282 */  mul.s $f10, $f6, $f8
/* 04E3CC 800A617C E60A0014 */  swc1  $f10, 0x14($s0)
/* 04E3D0 800A6180 02291021 */  addu  $v0, $s1, $t1
.L800A6184_ovl1:
/* 04E3D4 800A6184 C4400000 */  lwc1  $f0, ($v0)
/* 04E3D8 800A6188 46009032 */  c.eq.s $f18, $f0
/* 04E3DC 800A618C 00000000 */  nop   
/* 04E3E0 800A6190 4501000C */  bc1t  .L800A61C4_ovl1
/* 04E3E4 800A6194 00000000 */   nop   
/* 04E3E8 800A6198 C6040018 */  lwc1  $f4, 0x18($s0)
/* 04E3EC 800A619C C608001C */  lwc1  $f8, 0x1c($s0)
/* 04E3F0 800A61A0 46002182 */  mul.s $f6, $f4, $f0
/* 04E3F4 800A61A4 E6060018 */  swc1  $f6, 0x18($s0)
/* 04E3F8 800A61A8 C44A0000 */  lwc1  $f10, ($v0)
/* 04E3FC 800A61AC C6060020 */  lwc1  $f6, 0x20($s0)
/* 04E400 800A61B0 460A4102 */  mul.s $f4, $f8, $f10
/* 04E404 800A61B4 E604001C */  swc1  $f4, 0x1c($s0)
/* 04E408 800A61B8 C4480000 */  lwc1  $f8, ($v0)
/* 04E40C 800A61BC 46083282 */  mul.s $f10, $f6, $f8
/* 04E410 800A61C0 E60A0020 */  swc1  $f10, 0x20($s0)
.L800A61C4_ovl1:
/* 04E414 800A61C4 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 04E418 800A61C8 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 04E41C 800A61CC 00310821 */  addu  $at, $at, $s1
/* 04E420 800A61D0 E6040024 */  swc1  $f4, 0x24($s0)
/* 04E424 800A61D4 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 04E428 800A61D8 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 04E42C 800A61DC 00310821 */  addu  $at, $at, $s1
/* 04E430 800A61E0 E6060028 */  swc1  $f6, 0x28($s0)
/* 04E434 800A61E4 C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 04E438 800A61E8 E608002C */  swc1  $f8, 0x2c($s0)
/* 04E43C 800A61EC 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04E440 800A61F0 8FB10028 */  lw    $s1, 0x28($sp)
/* 04E444 800A61F4 8FB00024 */  lw    $s0, 0x24($sp)
/* 04E448 800A61F8 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 04E44C 800A61FC D7B40010 */  ldc1  $f20, 0x10($sp)
/* 04E450 800A6200 03E00008 */  jr    $ra
/* 04E454 800A6204 27BD0050 */   addiu $sp, $sp, 0x50
.type func_800A5F94, @function
.size func_800A5F94, . - func_800A5F94
