glabel func_8010A138
/* 092BA8 8010A138 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 092BAC 8010A13C AFBF001C */  sw    $ra, 0x1c($sp)
/* 092BB0 8010A140 AFB10018 */  sw    $s1, 0x18($sp)
/* 092BB4 8010A144 AFB00014 */  sw    $s0, 0x14($sp)
/* 092BB8 8010A148 8CAE0000 */  lw    $t6, ($a1)
/* 092BBC 8010A14C 00808025 */  move  $s0, $a0
/* 092BC0 8010A150 00A08825 */  move  $s1, $a1
/* 092BC4 8010A154 000E7CC2 */  srl   $t7, $t6, 0x13
/* 092BC8 8010A158 31F80008 */  andi  $t8, $t7, 8
/* 092BCC 8010A15C 1300000F */  beqz  $t8, .L8010A19C_ovl2
/* 092BD0 8010A160 3C038013 */   lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 092BD4 8010A164 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 092BD8 8010A168 C4640034 */  lwc1  $f4, 0x34($v1)
/* 092BDC 8010A16C C466002C */  lwc1  $f6, 0x2c($v1)
/* 092BE0 8010A170 46062201 */  sub.s $f8, $f4, $f6
/* 092BE4 8010A174 C4840010 */  lwc1  $f4, 0x10($a0)
/* 092BE8 8010A178 E4880004 */  swc1  $f8, 4($a0)
/* 092BEC 8010A17C C46A0038 */  lwc1  $f10, 0x38($v1)
/* 092BF0 8010A180 46045181 */  sub.s $f6, $f10, $f4
/* 092BF4 8010A184 E4860008 */  swc1  $f6, 8($a0)
/* 092BF8 8010A188 C46A0030 */  lwc1  $f10, 0x30($v1)
/* 092BFC 8010A18C C468003C */  lwc1  $f8, 0x3c($v1)
/* 092C00 8010A190 460A4101 */  sub.s $f4, $f8, $f10
/* 092C04 8010A194 10000046 */  b     .L8010A2B0_ovl2
/* 092C08 8010A198 E484000C */   swc1  $f4, 0xc($a0)
.L8010A19C_ovl2:
/* 092C0C 8010A19C C606003C */  lwc1  $f6, 0x3c($s0)
/* 092C10 8010A1A0 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 092C14 8010A1A4 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 092C18 8010A1A8 E7A6004C */  swc1  $f6, 0x4c($sp)
/* 092C1C 8010A1AC C608002C */  lwc1  $f8, 0x2c($s0)
/* 092C20 8010A1B0 C466002C */  lwc1  $f6, 0x2c($v1)
/* 092C24 8010A1B4 27A5004C */  addiu $a1, $sp, 0x4c
/* 092C28 8010A1B8 E7A80050 */  swc1  $f8, 0x50($sp)
/* 092C2C 8010A1BC C60A0040 */  lwc1  $f10, 0x40($s0)
/* 092C30 8010A1C0 27A60040 */  addiu $a2, $sp, 0x40
/* 092C34 8010A1C4 27A70034 */  addiu $a3, $sp, 0x34
/* 092C38 8010A1C8 E7AA0054 */  swc1  $f10, 0x54($sp)
/* 092C3C 8010A1CC C6040004 */  lwc1  $f4, 4($s0)
/* 092C40 8010A1D0 46062200 */  add.s $f8, $f4, $f6
/* 092C44 8010A1D4 E7A80040 */  swc1  $f8, 0x40($sp)
/* 092C48 8010A1D8 C6040010 */  lwc1  $f4, 0x10($s0)
/* 092C4C 8010A1DC C60A0008 */  lwc1  $f10, 8($s0)
/* 092C50 8010A1E0 46045180 */  add.s $f6, $f10, $f4
/* 092C54 8010A1E4 C46A0030 */  lwc1  $f10, 0x30($v1)
/* 092C58 8010A1E8 E7A60044 */  swc1  $f6, 0x44($sp)
/* 092C5C 8010A1EC C608000C */  lwc1  $f8, 0xc($s0)
/* 092C60 8010A1F0 460A4100 */  add.s $f4, $f8, $f10
/* 092C64 8010A1F4 E7A40048 */  swc1  $f4, 0x48($sp)
/* 092C68 8010A1F8 0C0415F1 */  jal   func_801057C4_ovl2
/* 092C6C 8010A1FC 8E240030 */   lw    $a0, 0x30($s1)
/* 092C70 8010A200 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 092C74 8010A204 1040002A */  beqz  $v0, .L8010A2B0_ovl2
/* 092C78 8010A208 2463BD00 */   addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 092C7C 8010A20C C7B0004C */  lwc1  $f16, 0x4c($sp)
/* 092C80 8010A210 C7A60034 */  lwc1  $f6, 0x34($sp)
/* 092C84 8010A214 C7B20054 */  lwc1  $f18, 0x54($sp)
/* 092C88 8010A218 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 092C8C 8010A21C 46103301 */  sub.s $f12, $f6, $f16
/* 092C90 8010A220 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* 092C94 8010A224 C7A40048 */  lwc1  $f4, 0x48($sp)
/* 092C98 8010A228 46124381 */  sub.s $f14, $f8, $f18
/* 092C9C 8010A22C 460C6202 */  mul.s $f8, $f12, $f12
/* 092CA0 8010A230 46105001 */  sub.s $f0, $f10, $f16
/* 092CA4 8010A234 460E7282 */  mul.s $f10, $f14, $f14
/* 092CA8 8010A238 46122081 */  sub.s $f2, $f4, $f18
/* 092CAC 8010A23C 460A4100 */  add.s $f4, $f8, $f10
/* 092CB0 8010A240 46000202 */  mul.s $f8, $f0, $f0
/* 092CB4 8010A244 00000000 */  nop   
/* 092CB8 8010A248 46021282 */  mul.s $f10, $f2, $f2
/* 092CBC 8010A24C 460A4200 */  add.s $f8, $f8, $f10
/* 092CC0 8010A250 4608203C */  c.lt.s $f4, $f8
/* 092CC4 8010A254 00000000 */  nop   
/* 092CC8 8010A258 4500000D */  bc1f  .L8010A290_ovl2
/* 092CCC 8010A25C 00000000 */   nop   
/* 092CD0 8010A260 C46A002C */  lwc1  $f10, 0x2c($v1)
/* 092CD4 8010A264 460A3101 */  sub.s $f4, $f6, $f10
/* 092CD8 8010A268 C6060010 */  lwc1  $f6, 0x10($s0)
/* 092CDC 8010A26C E6040004 */  swc1  $f4, 4($s0)
/* 092CE0 8010A270 C7A80038 */  lwc1  $f8, 0x38($sp)
/* 092CE4 8010A274 46064281 */  sub.s $f10, $f8, $f6
/* 092CE8 8010A278 E60A0008 */  swc1  $f10, 8($s0)
/* 092CEC 8010A27C C4680030 */  lwc1  $f8, 0x30($v1)
/* 092CF0 8010A280 C7A4003C */  lwc1  $f4, 0x3c($sp)
/* 092CF4 8010A284 46082181 */  sub.s $f6, $f4, $f8
/* 092CF8 8010A288 10000009 */  b     .L8010A2B0_ovl2
/* 092CFC 8010A28C E606000C */   swc1  $f6, 0xc($s0)
.L8010A290_ovl2:
/* 092D00 8010A290 8E390000 */  lw    $t9, ($s1)
/* 092D04 8010A294 962D0000 */  lhu   $t5, ($s1)
/* 092D08 8010A298 001944C2 */  srl   $t0, $t9, 0x13
/* 092D0C 8010A29C 310AFFC7 */  andi  $t2, $t0, 0xffc7
/* 092D10 8010A2A0 000A60C0 */  sll   $t4, $t2, 3
/* 092D14 8010A2A4 31AE0007 */  andi  $t6, $t5, 7
/* 092D18 8010A2A8 018E7825 */  or    $t7, $t4, $t6
/* 092D1C 8010A2AC A62F0000 */  sh    $t7, ($s1)
.L8010A2B0_ovl2:
/* 092D20 8010A2B0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 092D24 8010A2B4 8FB00014 */  lw    $s0, 0x14($sp)
/* 092D28 8010A2B8 8FB10018 */  lw    $s1, 0x18($sp)
/* 092D2C 8010A2BC 03E00008 */  jr    $ra
/* 092D30 8010A2C0 27BD0058 */   addiu $sp, $sp, 0x58
