glabel func_8010D138
/* 095BA8 8010D138 27BDFF90 */  addiu $sp, $sp, -0x70
/* 095BAC 8010D13C AFBF002C */  sw    $ra, 0x2c($sp)
/* 095BB0 8010D140 AFB00028 */  sw    $s0, 0x28($sp)
/* 095BB4 8010D144 00808025 */  move  $s0, $a0
/* 095BB8 8010D148 0C0413EE */  jal   func_80104FB8
/* 095BBC 8010D14C AFA50074 */   sw    $a1, 0x74($sp)
/* 095BC0 8010D150 3C088013 */  lui   $t0, %hi(D_8012BD00) # $t0, 0x8013
/* 095BC4 8010D154 2508BD00 */  addiu $t0, %lo(D_8012BD00) # addiu $t0, $t0, -0x4300
/* 095BC8 8010D158 C506000C */  lwc1  $f6, 0xc($t0)
/* 095BCC 8010D15C C6040004 */  lwc1  $f4, 4($s0)
/* 095BD0 8010D160 C7AC0074 */  lwc1  $f12, 0x74($sp)
/* 095BD4 8010D164 C500001C */  lwc1  $f0, 0x1c($t0)
/* 095BD8 8010D168 46062200 */  add.s $f8, $f4, $f6
/* 095BDC 8010D16C C5060010 */  lwc1  $f6, 0x10($t0)
/* 095BE0 8010D170 C5020020 */  lwc1  $f2, 0x20($t0)
/* 095BE4 8010D174 27AE0064 */  addiu $t6, $sp, 0x64
/* 095BE8 8010D178 E7A80058 */  swc1  $f8, 0x58($sp)
/* 095BEC 8010D17C C6100010 */  lwc1  $f16, 0x10($s0)
/* 095BF0 8010D180 C60A0008 */  lwc1  $f10, 8($s0)
/* 095BF4 8010D184 27A40058 */  addiu $a0, $sp, 0x58
/* 095BF8 8010D188 27A5004C */  addiu $a1, $sp, 0x4c
/* 095BFC 8010D18C 46105480 */  add.s $f18, $f10, $f16
/* 095C00 8010D190 460C0282 */  mul.s $f10, $f0, $f12
/* 095C04 8010D194 C7B00058 */  lwc1  $f16, 0x58($sp)
/* 095C08 8010D198 27A60040 */  addiu $a2, $sp, 0x40
/* 095C0C 8010D19C E7B2005C */  swc1  $f18, 0x5c($sp)
/* 095C10 8010D1A0 C604000C */  lwc1  $f4, 0xc($s0)
/* 095C14 8010D1A4 AFA0001C */  sw    $zero, 0x1c($sp)
/* 095C18 8010D1A8 AFA00018 */  sw    $zero, 0x18($sp)
/* 095C1C 8010D1AC 46062200 */  add.s $f8, $f4, $f6
/* 095C20 8010D1B0 460C1182 */  mul.s $f6, $f2, $f12
/* 095C24 8010D1B4 C7A4005C */  lwc1  $f4, 0x5c($sp)
/* 095C28 8010D1B8 46105480 */  add.s $f18, $f10, $f16
/* 095C2C 8010D1BC E7A80060 */  swc1  $f8, 0x60($sp)
/* 095C30 8010D1C0 C7A80060 */  lwc1  $f8, 0x60($sp)
/* 095C34 8010D1C4 44808000 */  mtc1  $zero, $f16
/* 095C38 8010D1C8 E7B2004C */  swc1  $f18, 0x4c($sp)
/* 095C3C 8010D1CC 46083280 */  add.s $f10, $f6, $f8
/* 095C40 8010D1D0 AFA00014 */  sw    $zero, 0x14($sp)
/* 095C44 8010D1D4 AFAE0010 */  sw    $t6, 0x10($sp)
/* 095C48 8010D1D8 00003825 */  move  $a3, $zero
/* 095C4C 8010D1DC E7AA0054 */  swc1  $f10, 0x54($sp)
/* 095C50 8010D1E0 E7A00040 */  swc1  $f0, 0x40($sp)
/* 095C54 8010D1E4 E7A20048 */  swc1  $f2, 0x48($sp)
/* 095C58 8010D1E8 E7A40050 */  swc1  $f4, 0x50($sp)
/* 095C5C 8010D1EC 0C04108F */  jal   func_8010423C
/* 095C60 8010D1F0 E7B00044 */   swc1  $f16, 0x44($sp)
/* 095C64 8010D1F4 3C088013 */  lui   $t0, %hi(D_8012BD00) # $t0, 0x8013
/* 095C68 8010D1F8 1040000B */  beqz  $v0, .L8010D228_ovl2
/* 095C6C 8010D1FC 2508BD00 */   addiu $t0, %lo(D_8012BD00) # addiu $t0, $t0, -0x4300
/* 095C70 8010D200 C7B20064 */  lwc1  $f18, 0x64($sp)
/* 095C74 8010D204 C504002C */  lwc1  $f4, 0x2c($t0)
/* 095C78 8010D208 24020001 */  li    $v0, 1
/* 095C7C 8010D20C 46049181 */  sub.s $f6, $f18, $f4
/* 095C80 8010D210 E6060004 */  swc1  $f6, 4($s0)
/* 095C84 8010D214 C50A0030 */  lwc1  $f10, 0x30($t0)
/* 095C88 8010D218 C7A8006C */  lwc1  $f8, 0x6c($sp)
/* 095C8C 8010D21C 460A4401 */  sub.s $f16, $f8, $f10
/* 095C90 8010D220 1000007D */  b     .L8010D418_ovl2
/* 095C94 8010D224 E610000C */   swc1  $f16, 0xc($s0)
.L8010D228_ovl2:
/* 095C98 8010D228 C6120008 */  lwc1  $f18, 8($s0)
/* 095C9C 8010D22C C6040014 */  lwc1  $f4, 0x14($s0)
/* 095CA0 8010D230 27AF003C */  addiu $t7, $sp, 0x3c
/* 095CA4 8010D234 AFAF0014 */  sw    $t7, 0x14($sp)
/* 095CA8 8010D238 46049180 */  add.s $f6, $f18, $f4
/* 095CAC 8010D23C AFA00038 */  sw    $zero, 0x38($sp)
/* 095CB0 8010D240 AFA0001C */  sw    $zero, 0x1c($sp)
/* 095CB4 8010D244 AFA00018 */  sw    $zero, 0x18($sp)
/* 095CB8 8010D248 E7A6005C */  swc1  $f6, 0x5c($sp)
/* 095CBC 8010D24C C7A8005C */  lwc1  $f8, 0x5c($sp)
/* 095CC0 8010D250 AFA00010 */  sw    $zero, 0x10($sp)
/* 095CC4 8010D254 27A40058 */  addiu $a0, $sp, 0x58
/* 095CC8 8010D258 27A5004C */  addiu $a1, $sp, 0x4c
/* 095CCC 8010D25C 27A60040 */  addiu $a2, $sp, 0x40
/* 095CD0 8010D260 00003825 */  move  $a3, $zero
/* 095CD4 8010D264 0C04108F */  jal   func_8010423C
/* 095CD8 8010D268 E7A80050 */   swc1  $f8, 0x50($sp)
/* 095CDC 8010D26C 10400003 */  beqz  $v0, .L8010D27C_ovl2
/* 095CE0 8010D270 8FA30038 */   lw    $v1, 0x38($sp)
/* 095CE4 8010D274 10000015 */  b     .L8010D2CC_ovl2
/* 095CE8 8010D278 24030001 */   li    $v1, 1
.L8010D27C_ovl2:
/* 095CEC 8010D27C C60A0008 */  lwc1  $f10, 8($s0)
/* 095CF0 8010D280 C6100018 */  lwc1  $f16, 0x18($s0)
/* 095CF4 8010D284 27B8003C */  addiu $t8, $sp, 0x3c
/* 095CF8 8010D288 AFB80014 */  sw    $t8, 0x14($sp)
/* 095CFC 8010D28C 46105480 */  add.s $f18, $f10, $f16
/* 095D00 8010D290 AFA30038 */  sw    $v1, 0x38($sp)
/* 095D04 8010D294 AFA0001C */  sw    $zero, 0x1c($sp)
/* 095D08 8010D298 AFA00018 */  sw    $zero, 0x18($sp)
/* 095D0C 8010D29C E7B2005C */  swc1  $f18, 0x5c($sp)
/* 095D10 8010D2A0 C7A4005C */  lwc1  $f4, 0x5c($sp)
/* 095D14 8010D2A4 AFA00010 */  sw    $zero, 0x10($sp)
/* 095D18 8010D2A8 27A40058 */  addiu $a0, $sp, 0x58
/* 095D1C 8010D2AC 27A5004C */  addiu $a1, $sp, 0x4c
/* 095D20 8010D2B0 27A60040 */  addiu $a2, $sp, 0x40
/* 095D24 8010D2B4 00003825 */  move  $a3, $zero
/* 095D28 8010D2B8 0C04108F */  jal   func_8010423C
/* 095D2C 8010D2BC E7A40050 */   swc1  $f4, 0x50($sp)
/* 095D30 8010D2C0 10400002 */  beqz  $v0, .L8010D2CC_ovl2
/* 095D34 8010D2C4 8FA30038 */   lw    $v1, 0x38($sp)
/* 095D38 8010D2C8 24030001 */  li    $v1, 1
.L8010D2CC_ovl2:
/* 095D3C 8010D2CC 50600052 */  beql  $v1, $zero, .L8010D418_ovl2
/* 095D40 8010D2D0 00001025 */   move  $v0, $zero
/* 095D44 8010D2D4 C6060008 */  lwc1  $f6, 8($s0)
/* 095D48 8010D2D8 C6080010 */  lwc1  $f8, 0x10($s0)
/* 095D4C 8010D2DC 8FA4003C */  lw    $a0, 0x3c($sp)
/* 095D50 8010D2E0 27A50058 */  addiu $a1, $sp, 0x58
/* 095D54 8010D2E4 46083280 */  add.s $f10, $f6, $f8
/* 095D58 8010D2E8 27A6004C */  addiu $a2, $sp, 0x4c
/* 095D5C 8010D2EC 27A70064 */  addiu $a3, $sp, 0x64
/* 095D60 8010D2F0 E7AA005C */  swc1  $f10, 0x5c($sp)
/* 095D64 8010D2F4 C7B0005C */  lwc1  $f16, 0x5c($sp)
/* 095D68 8010D2F8 0C0415F1 */  jal   func_801057C4
/* 095D6C 8010D2FC E7B00050 */   swc1  $f16, 0x50($sp)
/* 095D70 8010D300 3C088013 */  lui   $t0, %hi(D_8012BD00) # $t0, 0x8013
/* 095D74 8010D304 10400043 */  beqz  $v0, .L8010D414_ovl2
/* 095D78 8010D308 2508BD00 */   addiu $t0, %lo(D_8012BD00) # addiu $t0, $t0, -0x4300
/* 095D7C 8010D30C C7A00058 */  lwc1  $f0, 0x58($sp)
/* 095D80 8010D310 C7A2004C */  lwc1  $f2, 0x4c($sp)
/* 095D84 8010D314 C7AC0064 */  lwc1  $f12, 0x64($sp)
/* 095D88 8010D318 4600103C */  c.lt.s $f2, $f0
/* 095D8C 8010D31C 00000000 */  nop   
/* 095D90 8010D320 4502000D */  bc1fl .L8010D358_ovl2
/* 095D94 8010D324 4600603C */   c.lt.s $f12, $f0
/* 095D98 8010D328 C7AC0064 */  lwc1  $f12, 0x64($sp)
/* 095D9C 8010D32C 460C003C */  c.lt.s $f0, $f12
/* 095DA0 8010D330 00000000 */  nop   
/* 095DA4 8010D334 45010005 */  bc1t  .L8010D34C_ovl2
/* 095DA8 8010D338 00000000 */   nop   
/* 095DAC 8010D33C 4602603C */  c.lt.s $f12, $f2
/* 095DB0 8010D340 00000000 */  nop   
/* 095DB4 8010D344 4502000E */  bc1fl .L8010D380_ovl2
/* 095DB8 8010D348 C7A00060 */   lwc1  $f0, 0x60($sp)
.L8010D34C_ovl2:
/* 095DBC 8010D34C 10000032 */  b     .L8010D418_ovl2
/* 095DC0 8010D350 00001025 */   move  $v0, $zero
/* 095DC4 8010D354 4600603C */  c.lt.s $f12, $f0
.L8010D358_ovl2:
/* 095DC8 8010D358 00000000 */  nop   
/* 095DCC 8010D35C 45010005 */  bc1t  .L8010D374_ovl2
/* 095DD0 8010D360 00000000 */   nop   
/* 095DD4 8010D364 460C103C */  c.lt.s $f2, $f12
/* 095DD8 8010D368 00000000 */  nop   
/* 095DDC 8010D36C 45020004 */  bc1fl .L8010D380_ovl2
/* 095DE0 8010D370 C7A00060 */   lwc1  $f0, 0x60($sp)
.L8010D374_ovl2:
/* 095DE4 8010D374 10000028 */  b     .L8010D418_ovl2
/* 095DE8 8010D378 00001025 */   move  $v0, $zero
/* 095DEC 8010D37C C7A00060 */  lwc1  $f0, 0x60($sp)
.L8010D380_ovl2:
/* 095DF0 8010D380 C7A20054 */  lwc1  $f2, 0x54($sp)
/* 095DF4 8010D384 C7AC006C */  lwc1  $f12, 0x6c($sp)
/* 095DF8 8010D388 4600103C */  c.lt.s $f2, $f0
/* 095DFC 8010D38C 00000000 */  nop   
/* 095E00 8010D390 4502000D */  bc1fl .L8010D3C8_ovl2
/* 095E04 8010D394 4600603C */   c.lt.s $f12, $f0
/* 095E08 8010D398 C7AC006C */  lwc1  $f12, 0x6c($sp)
/* 095E0C 8010D39C 460C003C */  c.lt.s $f0, $f12
/* 095E10 8010D3A0 00000000 */  nop   
/* 095E14 8010D3A4 45010005 */  bc1t  .L8010D3BC_ovl2
/* 095E18 8010D3A8 00000000 */   nop   
/* 095E1C 8010D3AC 4602603C */  c.lt.s $f12, $f2
/* 095E20 8010D3B0 00000000 */  nop   
/* 095E24 8010D3B4 4502000E */  bc1fl .L8010D3F0_ovl2
/* 095E28 8010D3B8 C7B20064 */   lwc1  $f18, 0x64($sp)
.L8010D3BC_ovl2:
/* 095E2C 8010D3BC 10000016 */  b     .L8010D418_ovl2
/* 095E30 8010D3C0 00001025 */   move  $v0, $zero
/* 095E34 8010D3C4 4600603C */  c.lt.s $f12, $f0
.L8010D3C8_ovl2:
/* 095E38 8010D3C8 00000000 */  nop   
/* 095E3C 8010D3CC 45010005 */  bc1t  .L8010D3E4_ovl2
/* 095E40 8010D3D0 00000000 */   nop   
/* 095E44 8010D3D4 460C103C */  c.lt.s $f2, $f12
/* 095E48 8010D3D8 00000000 */  nop   
/* 095E4C 8010D3DC 45020004 */  bc1fl .L8010D3F0_ovl2
/* 095E50 8010D3E0 C7B20064 */   lwc1  $f18, 0x64($sp)
.L8010D3E4_ovl2:
/* 095E54 8010D3E4 1000000C */  b     .L8010D418_ovl2
/* 095E58 8010D3E8 00001025 */   move  $v0, $zero
/* 095E5C 8010D3EC C7B20064 */  lwc1  $f18, 0x64($sp)
.L8010D3F0_ovl2:
/* 095E60 8010D3F0 C504002C */  lwc1  $f4, 0x2c($t0)
/* 095E64 8010D3F4 24020001 */  li    $v0, 1
/* 095E68 8010D3F8 46049181 */  sub.s $f6, $f18, $f4
/* 095E6C 8010D3FC E6060004 */  swc1  $f6, 4($s0)
/* 095E70 8010D400 C50A0030 */  lwc1  $f10, 0x30($t0)
/* 095E74 8010D404 C7A8006C */  lwc1  $f8, 0x6c($sp)
/* 095E78 8010D408 460A4401 */  sub.s $f16, $f8, $f10
/* 095E7C 8010D40C 10000002 */  b     .L8010D418_ovl2
/* 095E80 8010D410 E610000C */   swc1  $f16, 0xc($s0)
.L8010D414_ovl2:
/* 095E84 8010D414 00001025 */  move  $v0, $zero
.L8010D418_ovl2:
/* 095E88 8010D418 8FBF002C */  lw    $ra, 0x2c($sp)
/* 095E8C 8010D41C 8FB00028 */  lw    $s0, 0x28($sp)
/* 095E90 8010D420 27BD0070 */  addiu $sp, $sp, 0x70
/* 095E94 8010D424 03E00008 */  jr    $ra
/* 095E98 8010D428 00000000 */   nop   
.type func_8010D138, @function
.size func_8010D138, . - func_8010D138
