# .late_rodata
# glabel jtbl_800406BC
# .word L8000CBD0_ovl0
# .word L8000CABC_ovl0
# .word L8000C938_ovl0
# .word L8000C6A0_ovl0
# .word L8000C6A0_ovl0
# .word L8000C7A8_ovl0
# .word L8000C7A8_ovl0
# .word L8000C8C0_ovl0
# .word L8000C59C_ovl0
# .word L8000C59C_ovl0
# .word L8000C974_ovl0
# .word L8000C974_ovl0
# .word L8000CAFC_ovl0
# .word L8000CB88_ovl0
# .word L8000CA64_ovl0
# .word L8000CC58_ovl0
# .word L8000CCA4_ovl0
# .word L8000CD34_ovl0
.text
glabel func_8000C3D8
/* 00CFD8 8000C3D8 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 00CFDC 8000C3DC AFBF0054 */  sw    $ra, 0x54($sp)
/* 00CFE0 8000C3E0 AFBE0050 */  sw    $fp, 0x50($sp)
/* 00CFE4 8000C3E4 AFB7004C */  sw    $s7, 0x4c($sp)
/* 00CFE8 8000C3E8 AFB60048 */  sw    $s6, 0x48($sp)
/* 00CFEC 8000C3EC AFB50044 */  sw    $s5, 0x44($sp)
/* 00CFF0 8000C3F0 AFB40040 */  sw    $s4, 0x40($sp)
/* 00CFF4 8000C3F4 AFB3003C */  sw    $s3, 0x3c($sp)
/* 00CFF8 8000C3F8 AFB20038 */  sw    $s2, 0x38($sp)
/* 00CFFC 8000C3FC AFB10034 */  sw    $s1, 0x34($sp)
/* 00D000 8000C400 AFB00030 */  sw    $s0, 0x30($sp)
/* 00D004 8000C404 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 00D008 8000C408 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 00D00C 8000C40C F7B40018 */  sdc1  $f20, 0x18($sp)
/* 00D010 8000C410 3C018004 */  lui   $at, %hi(D_800406B0) # $at, 0x8004
/* 00D014 8000C414 C42406B0 */  lwc1  $f4, %lo(D_800406B0)($at)
/* 00D018 8000C418 C4800074 */  lwc1  $f0, 0x74($a0)
/* 00D01C 8000C41C 00809825 */  move  $s3, $a0
/* 00D020 8000C420 3C018004 */  lui   $at, %hi(D_800406B4) # $at, 0x8004
/* 00D024 8000C424 46002032 */  c.eq.s $f4, $f0
/* 00D028 8000C428 27B00088 */  addiu $s0, $sp, 0x88
/* 00D02C 8000C42C 27A200A8 */  addiu $v0, $sp, 0xa8
/* 00D030 8000C430 24160003 */  li    $s6, 3
/* 00D034 8000C434 45010269 */  bc1t  .L8000CDDC_ovl0
/* 00D038 8000C438 241E000E */   li    $fp, 14
/* 00D03C 8000C43C C42606B4 */  lwc1  $f6, %lo(D_800406B4)($at)
/* 00D040 8000C440 27B50080 */  addiu $s5, $sp, 0x80
/* 00D044 8000C444 2414000A */  li    $s4, 10
/* 00D048 8000C448 46003032 */  c.eq.s $f6, $f0
/* 00D04C 8000C44C 00000000 */  nop   
/* 00D050 8000C450 45020007 */  bc1fl .L8000C470_ovl0
/* 00D054 8000C454 C6620078 */   lwc1  $f2, 0x78($s3)
/* 00D058 8000C458 C488007C */  lwc1  $f8, 0x7c($a0)
/* 00D05C 8000C45C 4480B000 */  mtc1  $zero, $f22
/* 00D060 8000C460 46004287 */  neg.s $f10, $f8
/* 00D064 8000C464 10000010 */  b     .L8000C4A8_ovl0
/* 00D068 8000C468 E48A0074 */   swc1  $f10, 0x74($a0)
/* 00D06C 8000C46C C6620078 */  lwc1  $f2, 0x78($s3)
.L8000C470_ovl0:
/* 00D070 8000C470 C672007C */  lwc1  $f18, 0x7c($s3)
/* 00D074 8000C474 8E6E0004 */  lw    $t6, 4($s3)
/* 00D078 8000C478 46020401 */  sub.s $f16, $f0, $f2
/* 00D07C 8000C47C 4480B000 */  mtc1  $zero, $f22
/* 00D080 8000C480 46029100 */  add.s $f4, $f18, $f2
/* 00D084 8000C484 E6700074 */  swc1  $f16, 0x74($s3)
/* 00D088 8000C488 E664007C */  swc1  $f4, 0x7c($s3)
/* 00D08C 8000C48C C666007C */  lwc1  $f6, 0x7c($s3)
/* 00D090 8000C490 E5C60040 */  swc1  $f6, 0x40($t6)
/* 00D094 8000C494 C6680074 */  lwc1  $f8, 0x74($s3)
/* 00D098 8000C498 4608B03C */  c.lt.s $f22, $f8
/* 00D09C 8000C49C 00000000 */  nop   
/* 00D0A0 8000C4A0 4503024F */  bc1tl .L8000CDE0_ovl0
/* 00D0A4 8000C4A4 8FBF0054 */   lw    $ra, 0x54($sp)
.L8000C4A8_ovl0:
/* 00D0A8 8000C4A8 AFA00080 */  sw    $zero, 0x80($sp)
/* 00D0AC 8000C4AC AFA00084 */  sw    $zero, 0x84($sp)
.L8000C4B0_ovl0:
/* 00D0B0 8000C4B0 26100010 */  addiu $s0, $s0, 0x10
/* 00D0B4 8000C4B4 AE00FFF4 */  sw    $zero, -0xc($s0)
/* 00D0B8 8000C4B8 AE00FFF8 */  sw    $zero, -8($s0)
/* 00D0BC 8000C4BC AE00FFFC */  sw    $zero, -4($s0)
/* 00D0C0 8000C4C0 1602FFFB */  bne   $s0, $v0, .L8000C4B0_ovl0
/* 00D0C4 8000C4C4 AE00FFF0 */   sw    $zero, -0x10($s0)
/* 00D0C8 8000C4C8 8E62006C */  lw    $v0, 0x6c($s3)
/* 00D0CC 8000C4CC 5040000C */  beql  $v0, $zero, .L8000C500_ovl0
/* 00D0D0 8000C4D0 3C013F80 */   lui   $at, 0x3f80
/* 00D0D4 8000C4D4 90430004 */  lbu   $v1, 4($v0)
.L8000C4D8_ovl0:
/* 00D0D8 8000C4D8 18600005 */  blez  $v1, .L8000C4F0_ovl0
/* 00D0DC 8000C4DC 2861000B */   slti  $at, $v1, 0xb
/* 00D0E0 8000C4E0 10200003 */  beqz  $at, .L8000C4F0_ovl0
/* 00D0E4 8000C4E4 00037880 */   sll   $t7, $v1, 2
/* 00D0E8 8000C4E8 02AFC021 */  addu  $t8, $s5, $t7
/* 00D0EC 8000C4EC AF02FFFC */  sw    $v0, -4($t8)
.L8000C4F0_ovl0:
/* 00D0F0 8000C4F0 8C420000 */  lw    $v0, ($v0)
/* 00D0F4 8000C4F4 5440FFF8 */  bnezl $v0, .L8000C4D8_ovl0
/* 00D0F8 8000C4F8 90430004 */   lbu   $v1, 4($v0)
/* 00D0FC 8000C4FC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
.L8000C500_ovl0:
/* 00D100 8000C500 4481C000 */  mtc1  $at, $f24
/* 00D104 8000C504 27B50080 */  addiu $s5, $sp, 0x80
/* 00D108 8000C508 8E630070 */  lw    $v1, 0x70($s3)
.L8000C50C_ovl0:
/* 00D10C 8000C50C 54600019 */  bnezl $v1, .L8000C574_ovl0
/* 00D110 8000C510 8C700000 */   lw    $s0, ($v1)
/* 00D114 8000C514 8E62006C */  lw    $v0, 0x6c($s3)
/* 00D118 8000C518 C6600074 */  lwc1  $f0, 0x74($s3)
/* 00D11C 8000C51C 5040000E */  beql  $v0, $zero, .L8000C558_ovl0
/* 00D120 8000C520 8E680004 */   lw    $t0, 4($s3)
/* 00D124 8000C524 90590005 */  lbu   $t9, 5($v0)
.L8000C528_ovl0:
/* 00D128 8000C528 53200008 */  beql  $t9, $zero, .L8000C54C_ovl0
/* 00D12C 8000C52C 8C420000 */   lw    $v0, ($v0)
/* 00D130 8000C530 C6700078 */  lwc1  $f16, 0x78($s3)
/* 00D134 8000C534 C44A000C */  lwc1  $f10, 0xc($v0)
/* 00D138 8000C538 46008480 */  add.s $f18, $f16, $f0
/* 00D13C 8000C53C 46125100 */  add.s $f4, $f10, $f18
/* 00D140 8000C540 E444000C */  swc1  $f4, 0xc($v0)
/* 00D144 8000C544 C6600074 */  lwc1  $f0, 0x74($s3)
/* 00D148 8000C548 8C420000 */  lw    $v0, ($v0)
.L8000C54C_ovl0:
/* 00D14C 8000C54C 5440FFF6 */  bnezl $v0, .L8000C528_ovl0
/* 00D150 8000C550 90590005 */   lbu   $t9, 5($v0)
/* 00D154 8000C554 8E680004 */  lw    $t0, 4($s3)
.L8000C558_ovl0:
/* 00D158 8000C558 E660007C */  swc1  $f0, 0x7c($s3)
/* 00D15C 8000C55C 3C018004 */  lui   $at, %hi(D_800406B8) # $at, 0x8004
/* 00D160 8000C560 E5000040 */  swc1  $f0, 0x40($t0)
/* 00D164 8000C564 C42606B8 */  lwc1  $f6, %lo(D_800406B8)($at)
/* 00D168 8000C568 1000021C */  b     .L8000CDDC_ovl0
/* 00D16C 8000C56C E6660074 */   swc1  $f6, 0x74($s3)
/* 00D170 8000C570 8C700000 */  lw    $s0, ($v1)
.L8000C574_ovl0:
/* 00D174 8000C574 00101642 */  srl   $v0, $s0, 0x19
/* 00D178 8000C578 2C410012 */  sltiu $at, $v0, 0x12
/* 00D17C 8000C57C 10200212 */  beqz  $at, .L8000CDC8_ovl0
/* 00D180 8000C580 0040B825 */   move  $s7, $v0
/* 00D184 8000C584 00024880 */  sll   $t1, $v0, 2
/* 00D188 8000C588 3C018004 */  lui   $at, %hi(jtbl_800406BC)
/* 00D18C 8000C58C 00290821 */  addu  $at, $at, $t1
/* 00D190 8000C590 8C2906BC */  lw    $t1, %lo(jtbl_800406BC)($at)
/* 00D194 8000C594 01200008 */  jr    $t1
/* 00D198 8000C598 00000000 */   nop
.L8000C59C_ovl0:
/* 00D19C 8000C59C 320A7FFF */  andi  $t2, $s0, 0x7fff
/* 00D1A0 8000C5A0 448A4000 */  mtc1  $t2, $f8
/* 00D1A4 8000C5A4 001091C0 */  sll   $s2, $s0, 7
/* 00D1A8 8000C5A8 05410005 */  bgez  $t2, .L8000C5C0_ovl0
/* 00D1AC 8000C5AC 46804520 */   cvt.s.w $f20, $f8
/* 00D1B0 8000C5B0 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 00D1B4 8000C5B4 44818000 */  mtc1  $at, $f16
/* 00D1B8 8000C5B8 00000000 */  nop   
/* 00D1BC 8000C5BC 4610A500 */  add.s $f20, $f20, $f16
.L8000C5C0_ovl0:
/* 00D1C0 8000C5C0 246B0004 */  addiu $t3, $v1, 4
/* 00D1C4 8000C5C4 AE6B0070 */  sw    $t3, 0x70($s3)
/* 00D1C8 8000C5C8 00129582 */  srl   $s2, $s2, 0x16
/* 00D1CC 8000C5CC 00008825 */  move  $s1, $zero
.L8000C5D0_ovl0:
/* 00D1D0 8000C5D0 1240002B */  beqz  $s2, .L8000C680_ovl0
/* 00D1D4 8000C5D4 324C0001 */   andi  $t4, $s2, 1
/* 00D1D8 8000C5D8 11800026 */  beqz  $t4, .L8000C674_ovl0
/* 00D1DC 8000C5DC 00116880 */   sll   $t5, $s1, 2
/* 00D1E0 8000C5E0 02AD8021 */  addu  $s0, $s5, $t5
/* 00D1E4 8000C5E4 8E030000 */  lw    $v1, ($s0)
/* 00D1E8 8000C5E8 02602025 */  move  $a0, $s3
/* 00D1EC 8000C5EC 26250001 */  addiu $a1, $s1, 1
/* 00D1F0 8000C5F0 54600006 */  bnezl $v1, .L8000C60C_ovl0
/* 00D1F4 8000C5F4 C46A0014 */   lwc1  $f10, 0x14($v1)
/* 00D1F8 8000C5F8 0C0025F8 */  jal   HS64_AObjNew
/* 00D1FC 8000C5FC 30A500FF */   andi  $a1, $a1, 0xff
/* 00D200 8000C600 AE020000 */  sw    $v0, ($s0)
/* 00D204 8000C604 00401825 */  move  $v1, $v0
/* 00D208 8000C608 C46A0014 */  lwc1  $f10, 0x14($v1)
.L8000C60C_ovl0:
/* 00D20C 8000C60C 4616A032 */  c.eq.s $f20, $f22
/* 00D210 8000C610 E46A0010 */  swc1  $f10, 0x10($v1)
/* 00D214 8000C614 8E6E0070 */  lw    $t6, 0x70($s3)
/* 00D218 8000C618 8E0F0000 */  lw    $t7, ($s0)
/* 00D21C 8000C61C C5D20000 */  lwc1  $f18, ($t6)
/* 00D220 8000C620 E5F20014 */  swc1  $f18, 0x14($t7)
/* 00D224 8000C624 8E780070 */  lw    $t8, 0x70($s3)
/* 00D228 8000C628 27190004 */  addiu $t9, $t8, 4
/* 00D22C 8000C62C AE790070 */  sw    $t9, 0x70($s3)
/* 00D230 8000C630 8E030000 */  lw    $v1, ($s0)
/* 00D234 8000C634 C464001C */  lwc1  $f4, 0x1c($v1)
/* 00D238 8000C638 E4640018 */  swc1  $f4, 0x18($v1)
/* 00D23C 8000C63C 8E080000 */  lw    $t0, ($s0)
/* 00D240 8000C640 E516001C */  swc1  $f22, 0x1c($t0)
/* 00D244 8000C644 8E090000 */  lw    $t1, ($s0)
/* 00D248 8000C648 45010004 */  bc1t  .L8000C65C_ovl0
/* 00D24C 8000C64C A1360005 */   sb    $s6, 5($t1)
/* 00D250 8000C650 4614C183 */  div.s $f6, $f24, $f20
/* 00D254 8000C654 8E0A0000 */  lw    $t2, ($s0)
/* 00D258 8000C658 E5460008 */  swc1  $f6, 8($t2)
.L8000C65C_ovl0:
/* 00D25C 8000C65C C6680074 */  lwc1  $f8, 0x74($s3)
/* 00D260 8000C660 C66A0078 */  lwc1  $f10, 0x78($s3)
/* 00D264 8000C664 8E0B0000 */  lw    $t3, ($s0)
/* 00D268 8000C668 46004407 */  neg.s $f16, $f8
/* 00D26C 8000C66C 460A8481 */  sub.s $f18, $f16, $f10
/* 00D270 8000C670 E572000C */  swc1  $f18, 0xc($t3)
.L8000C674_ovl0:
/* 00D274 8000C674 26310001 */  addiu $s1, $s1, 1
/* 00D278 8000C678 1634FFD5 */  bne   $s1, $s4, .L8000C5D0_ovl0
/* 00D27C 8000C67C 00129042 */   srl   $s2, $s2, 1
.L8000C680_ovl0:
/* 00D280 8000C680 24010008 */  li    $at, 8
/* 00D284 8000C684 16E10004 */  bne   $s7, $at, .L8000C698_ovl0
/* 00D288 8000C688 00000000 */   nop   
/* 00D28C 8000C68C C6640074 */  lwc1  $f4, 0x74($s3)
/* 00D290 8000C690 46142180 */  add.s $f6, $f4, $f20
/* 00D294 8000C694 E6660074 */  swc1  $f6, 0x74($s3)
.L8000C698_ovl0:
/* 00D298 8000C698 100001CC */  b     .L8000CDCC_ovl0
/* 00D29C 8000C69C C6600074 */   lwc1  $f0, 0x74($s3)
.L8000C6A0_ovl0:
/* 00D2A0 8000C6A0 320C7FFF */  andi  $t4, $s0, 0x7fff
/* 00D2A4 8000C6A4 448C4000 */  mtc1  $t4, $f8
/* 00D2A8 8000C6A8 001091C0 */  sll   $s2, $s0, 7
/* 00D2AC 8000C6AC 05810005 */  bgez  $t4, .L8000C6C4_ovl0
/* 00D2B0 8000C6B0 46804520 */   cvt.s.w $f20, $f8
/* 00D2B4 8000C6B4 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 00D2B8 8000C6B8 44818000 */  mtc1  $at, $f16
/* 00D2BC 8000C6BC 00000000 */  nop   
/* 00D2C0 8000C6C0 4610A500 */  add.s $f20, $f20, $f16
.L8000C6C4_ovl0:
/* 00D2C4 8000C6C4 246D0004 */  addiu $t5, $v1, 4
/* 00D2C8 8000C6C8 AE6D0070 */  sw    $t5, 0x70($s3)
/* 00D2CC 8000C6CC 00129582 */  srl   $s2, $s2, 0x16
/* 00D2D0 8000C6D0 00008825 */  move  $s1, $zero
.L8000C6D4_ovl0:
/* 00D2D4 8000C6D4 1240002C */  beqz  $s2, .L8000C788_ovl0
/* 00D2D8 8000C6D8 324E0001 */   andi  $t6, $s2, 1
/* 00D2DC 8000C6DC 11C00027 */  beqz  $t6, .L8000C77C_ovl0
/* 00D2E0 8000C6E0 00117880 */   sll   $t7, $s1, 2
/* 00D2E4 8000C6E4 02AF8021 */  addu  $s0, $s5, $t7
/* 00D2E8 8000C6E8 8E030000 */  lw    $v1, ($s0)
/* 00D2EC 8000C6EC 02602025 */  move  $a0, $s3
/* 00D2F0 8000C6F0 26250001 */  addiu $a1, $s1, 1
/* 00D2F4 8000C6F4 54600006 */  bnezl $v1, .L8000C710_ovl0
/* 00D2F8 8000C6F8 C46A0014 */   lwc1  $f10, 0x14($v1)
/* 00D2FC 8000C6FC 0C0025F8 */  jal   HS64_AObjNew
/* 00D300 8000C700 30A500FF */   andi  $a1, $a1, 0xff
/* 00D304 8000C704 AE020000 */  sw    $v0, ($s0)
/* 00D308 8000C708 00401825 */  move  $v1, $v0
/* 00D30C 8000C70C C46A0014 */  lwc1  $f10, 0x14($v1)
.L8000C710_ovl0:
/* 00D310 8000C710 4616A032 */  c.eq.s $f20, $f22
/* 00D314 8000C714 240A0002 */  li    $t2, 2
/* 00D318 8000C718 E46A0010 */  swc1  $f10, 0x10($v1)
/* 00D31C 8000C71C 8E780070 */  lw    $t8, 0x70($s3)
/* 00D320 8000C720 8E190000 */  lw    $t9, ($s0)
/* 00D324 8000C724 C7120000 */  lwc1  $f18, ($t8)
/* 00D328 8000C728 E7320014 */  swc1  $f18, 0x14($t9)
/* 00D32C 8000C72C 8E680070 */  lw    $t0, 0x70($s3)
/* 00D330 8000C730 25090004 */  addiu $t1, $t0, 4
/* 00D334 8000C734 AE690070 */  sw    $t1, 0x70($s3)
/* 00D338 8000C738 8E0B0000 */  lw    $t3, ($s0)
/* 00D33C 8000C73C 45010007 */  bc1t  .L8000C75C_ovl0
/* 00D340 8000C740 A16A0005 */   sb    $t2, 5($t3)
/* 00D344 8000C744 8E030000 */  lw    $v1, ($s0)
/* 00D348 8000C748 C4640014 */  lwc1  $f4, 0x14($v1)
/* 00D34C 8000C74C C4660010 */  lwc1  $f6, 0x10($v1)
/* 00D350 8000C750 46062201 */  sub.s $f8, $f4, $f6
/* 00D354 8000C754 46144403 */  div.s $f16, $f8, $f20
/* 00D358 8000C758 E4700018 */  swc1  $f16, 0x18($v1)
.L8000C75C_ovl0:
/* 00D35C 8000C75C C66A0074 */  lwc1  $f10, 0x74($s3)
/* 00D360 8000C760 C6640078 */  lwc1  $f4, 0x78($s3)
/* 00D364 8000C764 8E0C0000 */  lw    $t4, ($s0)
/* 00D368 8000C768 46005487 */  neg.s $f18, $f10
/* 00D36C 8000C76C 46049181 */  sub.s $f6, $f18, $f4
/* 00D370 8000C770 E586000C */  swc1  $f6, 0xc($t4)
/* 00D374 8000C774 8E0D0000 */  lw    $t5, ($s0)
/* 00D378 8000C778 E5B6001C */  swc1  $f22, 0x1c($t5)
.L8000C77C_ovl0:
/* 00D37C 8000C77C 26310001 */  addiu $s1, $s1, 1
/* 00D380 8000C780 1634FFD4 */  bne   $s1, $s4, .L8000C6D4_ovl0
/* 00D384 8000C784 00129042 */   srl   $s2, $s2, 1
.L8000C788_ovl0:
/* 00D388 8000C788 24010003 */  li    $at, 3
/* 00D38C 8000C78C 16E10004 */  bne   $s7, $at, .L8000C7A0_ovl0
/* 00D390 8000C790 00000000 */   nop   
/* 00D394 8000C794 C6680074 */  lwc1  $f8, 0x74($s3)
/* 00D398 8000C798 46144400 */  add.s $f16, $f8, $f20
/* 00D39C 8000C79C E6700074 */  swc1  $f16, 0x74($s3)
.L8000C7A0_ovl0:
/* 00D3A0 8000C7A0 1000018A */  b     .L8000CDCC_ovl0
/* 00D3A4 8000C7A4 C6600074 */   lwc1  $f0, 0x74($s3)
.L8000C7A8_ovl0:
/* 00D3A8 8000C7A8 320E7FFF */  andi  $t6, $s0, 0x7fff
/* 00D3AC 8000C7AC 448E5000 */  mtc1  $t6, $f10
/* 00D3B0 8000C7B0 001091C0 */  sll   $s2, $s0, 7
/* 00D3B4 8000C7B4 05C10005 */  bgez  $t6, .L8000C7CC_ovl0
/* 00D3B8 8000C7B8 46805520 */   cvt.s.w $f20, $f10
/* 00D3BC 8000C7BC 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 00D3C0 8000C7C0 44819000 */  mtc1  $at, $f18
/* 00D3C4 8000C7C4 00000000 */  nop   
/* 00D3C8 8000C7C8 4612A500 */  add.s $f20, $f20, $f18
.L8000C7CC_ovl0:
/* 00D3CC 8000C7CC 246F0004 */  addiu $t7, $v1, 4
/* 00D3D0 8000C7D0 AE6F0070 */  sw    $t7, 0x70($s3)
/* 00D3D4 8000C7D4 00129582 */  srl   $s2, $s2, 0x16
/* 00D3D8 8000C7D8 00008825 */  move  $s1, $zero
.L8000C7DC_ovl0:
/* 00D3DC 8000C7DC 12400030 */  beqz  $s2, .L8000C8A0_ovl0
/* 00D3E0 8000C7E0 32580001 */   andi  $t8, $s2, 1
/* 00D3E4 8000C7E4 1300002B */  beqz  $t8, .L8000C894_ovl0
/* 00D3E8 8000C7E8 0011C880 */   sll   $t9, $s1, 2
/* 00D3EC 8000C7EC 02B98021 */  addu  $s0, $s5, $t9
/* 00D3F0 8000C7F0 8E030000 */  lw    $v1, ($s0)
/* 00D3F4 8000C7F4 02602025 */  move  $a0, $s3
/* 00D3F8 8000C7F8 26250001 */  addiu $a1, $s1, 1
/* 00D3FC 8000C7FC 54600006 */  bnezl $v1, .L8000C818_ovl0
/* 00D400 8000C800 C4640014 */   lwc1  $f4, 0x14($v1)
/* 00D404 8000C804 0C0025F8 */  jal   HS64_AObjNew
/* 00D408 8000C808 30A500FF */   andi  $a1, $a1, 0xff
/* 00D40C 8000C80C AE020000 */  sw    $v0, ($s0)
/* 00D410 8000C810 00401825 */  move  $v1, $v0
/* 00D414 8000C814 C4640014 */  lwc1  $f4, 0x14($v1)
.L8000C818_ovl0:
/* 00D418 8000C818 4616A032 */  c.eq.s $f20, $f22
/* 00D41C 8000C81C E4640010 */  swc1  $f4, 0x10($v1)
/* 00D420 8000C820 8E680070 */  lw    $t0, 0x70($s3)
/* 00D424 8000C824 8E090000 */  lw    $t1, ($s0)
/* 00D428 8000C828 C5060000 */  lwc1  $f6, ($t0)
/* 00D42C 8000C82C E5260014 */  swc1  $f6, 0x14($t1)
/* 00D430 8000C830 8E6A0070 */  lw    $t2, 0x70($s3)
/* 00D434 8000C834 254B0004 */  addiu $t3, $t2, 4
/* 00D438 8000C838 AE6B0070 */  sw    $t3, 0x70($s3)
/* 00D43C 8000C83C 8E030000 */  lw    $v1, ($s0)
/* 00D440 8000C840 C468001C */  lwc1  $f8, 0x1c($v1)
/* 00D444 8000C844 E4680018 */  swc1  $f8, 0x18($v1)
/* 00D448 8000C848 8E6C0070 */  lw    $t4, 0x70($s3)
/* 00D44C 8000C84C 8E0D0000 */  lw    $t5, ($s0)
/* 00D450 8000C850 C5900000 */  lwc1  $f16, ($t4)
/* 00D454 8000C854 E5B0001C */  swc1  $f16, 0x1c($t5)
/* 00D458 8000C858 8E6E0070 */  lw    $t6, 0x70($s3)
/* 00D45C 8000C85C 25CF0004 */  addiu $t7, $t6, 4
/* 00D460 8000C860 AE6F0070 */  sw    $t7, 0x70($s3)
/* 00D464 8000C864 8E180000 */  lw    $t8, ($s0)
/* 00D468 8000C868 45010004 */  bc1t  .L8000C87C_ovl0
/* 00D46C 8000C86C A3160005 */   sb    $s6, 5($t8)
/* 00D470 8000C870 4614C283 */  div.s $f10, $f24, $f20
/* 00D474 8000C874 8E190000 */  lw    $t9, ($s0)
/* 00D478 8000C878 E72A0008 */  swc1  $f10, 8($t9)
.L8000C87C_ovl0:
/* 00D47C 8000C87C C6720074 */  lwc1  $f18, 0x74($s3)
/* 00D480 8000C880 C6660078 */  lwc1  $f6, 0x78($s3)
/* 00D484 8000C884 8E080000 */  lw    $t0, ($s0)
/* 00D488 8000C888 46009107 */  neg.s $f4, $f18
/* 00D48C 8000C88C 46062201 */  sub.s $f8, $f4, $f6
/* 00D490 8000C890 E508000C */  swc1  $f8, 0xc($t0)
.L8000C894_ovl0:
/* 00D494 8000C894 26310001 */  addiu $s1, $s1, 1
/* 00D498 8000C898 1634FFD0 */  bne   $s1, $s4, .L8000C7DC_ovl0
/* 00D49C 8000C89C 00129042 */   srl   $s2, $s2, 1
.L8000C8A0_ovl0:
/* 00D4A0 8000C8A0 24010005 */  li    $at, 5
/* 00D4A4 8000C8A4 16E10004 */  bne   $s7, $at, .L8000C8B8_ovl0
/* 00D4A8 8000C8A8 00000000 */   nop   
/* 00D4AC 8000C8AC C6700074 */  lwc1  $f16, 0x74($s3)
/* 00D4B0 8000C8B0 46148280 */  add.s $f10, $f16, $f20
/* 00D4B4 8000C8B4 E66A0074 */  swc1  $f10, 0x74($s3)
.L8000C8B8_ovl0:
/* 00D4B8 8000C8B8 10000144 */  b     .L8000CDCC_ovl0
/* 00D4BC 8000C8BC C6600074 */   lwc1  $f0, 0x74($s3)
.L8000C8C0_ovl0:
/* 00D4C0 8000C8C0 001091C0 */  sll   $s2, $s0, 7
/* 00D4C4 8000C8C4 24690004 */  addiu $t1, $v1, 4
/* 00D4C8 8000C8C8 AE690070 */  sw    $t1, 0x70($s3)
/* 00D4CC 8000C8CC 00129582 */  srl   $s2, $s2, 0x16
/* 00D4D0 8000C8D0 00008825 */  move  $s1, $zero
.L8000C8D4_ovl0:
/* 00D4D4 8000C8D4 12400016 */  beqz  $s2, .L8000C930_ovl0
/* 00D4D8 8000C8D8 324A0001 */   andi  $t2, $s2, 1
/* 00D4DC 8000C8DC 11400011 */  beqz  $t2, .L8000C924_ovl0
/* 00D4E0 8000C8E0 00115880 */   sll   $t3, $s1, 2
/* 00D4E4 8000C8E4 02AB8021 */  addu  $s0, $s5, $t3
/* 00D4E8 8000C8E8 8E030000 */  lw    $v1, ($s0)
/* 00D4EC 8000C8EC 02602025 */  move  $a0, $s3
/* 00D4F0 8000C8F0 26250001 */  addiu $a1, $s1, 1
/* 00D4F4 8000C8F4 54600006 */  bnezl $v1, .L8000C910_ovl0
/* 00D4F8 8000C8F8 8E6C0070 */   lw    $t4, 0x70($s3)
/* 00D4FC 8000C8FC 0C0025F8 */  jal   HS64_AObjNew
/* 00D500 8000C900 30A500FF */   andi  $a1, $a1, 0xff
/* 00D504 8000C904 AE020000 */  sw    $v0, ($s0)
/* 00D508 8000C908 00401825 */  move  $v1, $v0
/* 00D50C 8000C90C 8E6C0070 */  lw    $t4, 0x70($s3)
.L8000C910_ovl0:
/* 00D510 8000C910 C5920000 */  lwc1  $f18, ($t4)
/* 00D514 8000C914 E472001C */  swc1  $f18, 0x1c($v1)
/* 00D518 8000C918 8E6D0070 */  lw    $t5, 0x70($s3)
/* 00D51C 8000C91C 25AE0004 */  addiu $t6, $t5, 4
/* 00D520 8000C920 AE6E0070 */  sw    $t6, 0x70($s3)
.L8000C924_ovl0:
/* 00D524 8000C924 26310001 */  addiu $s1, $s1, 1
/* 00D528 8000C928 1634FFEA */  bne   $s1, $s4, .L8000C8D4_ovl0
/* 00D52C 8000C92C 00129042 */   srl   $s2, $s2, 1
.L8000C930_ovl0:
/* 00D530 8000C930 10000126 */  b     .L8000CDCC_ovl0
/* 00D534 8000C934 C6600074 */   lwc1  $f0, 0x74($s3)
.L8000C938_ovl0:
/* 00D538 8000C938 320F7FFF */  andi  $t7, $s0, 0x7fff
/* 00D53C 8000C93C 448F3000 */  mtc1  $t7, $f6
/* 00D540 8000C940 C6640074 */  lwc1  $f4, 0x74($s3)
/* 00D544 8000C944 05E10005 */  bgez  $t7, .L8000C95C_ovl0
/* 00D548 8000C948 46803220 */   cvt.s.w $f8, $f6
/* 00D54C 8000C94C 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 00D550 8000C950 44818000 */  mtc1  $at, $f16
/* 00D554 8000C954 00000000 */  nop   
/* 00D558 8000C958 46104200 */  add.s $f8, $f8, $f16
.L8000C95C_ovl0:
/* 00D55C 8000C95C 46082280 */  add.s $f10, $f4, $f8
/* 00D560 8000C960 24780004 */  addiu $t8, $v1, 4
/* 00D564 8000C964 AE780070 */  sw    $t8, 0x70($s3)
/* 00D568 8000C968 E66A0074 */  swc1  $f10, 0x74($s3)
/* 00D56C 8000C96C 10000117 */  b     .L8000CDCC_ovl0
/* 00D570 8000C970 C6600074 */   lwc1  $f0, 0x74($s3)
.L8000C974_ovl0:
/* 00D574 8000C974 32197FFF */  andi  $t9, $s0, 0x7fff
/* 00D578 8000C978 44999000 */  mtc1  $t9, $f18
/* 00D57C 8000C97C 001091C0 */  sll   $s2, $s0, 7
/* 00D580 8000C980 07210005 */  bgez  $t9, .L8000C998_ovl0
/* 00D584 8000C984 46809520 */   cvt.s.w $f20, $f18
/* 00D588 8000C988 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 00D58C 8000C98C 44813000 */  mtc1  $at, $f6
/* 00D590 8000C990 00000000 */  nop   
/* 00D594 8000C994 4606A500 */  add.s $f20, $f20, $f6
.L8000C998_ovl0:
/* 00D598 8000C998 24680004 */  addiu $t0, $v1, 4
/* 00D59C 8000C99C AE680070 */  sw    $t0, 0x70($s3)
/* 00D5A0 8000C9A0 00129582 */  srl   $s2, $s2, 0x16
/* 00D5A4 8000C9A4 00008825 */  move  $s1, $zero
.L8000C9A8_ovl0:
/* 00D5A8 8000C9A8 12400026 */  beqz  $s2, .L8000CA44_ovl0
/* 00D5AC 8000C9AC 32490001 */   andi  $t1, $s2, 1
/* 00D5B0 8000C9B0 11200021 */  beqz  $t1, .L8000CA38_ovl0
/* 00D5B4 8000C9B4 00115080 */   sll   $t2, $s1, 2
/* 00D5B8 8000C9B8 02AA8021 */  addu  $s0, $s5, $t2
/* 00D5BC 8000C9BC 8E030000 */  lw    $v1, ($s0)
/* 00D5C0 8000C9C0 02602025 */  move  $a0, $s3
/* 00D5C4 8000C9C4 26250001 */  addiu $a1, $s1, 1
/* 00D5C8 8000C9C8 54600006 */  bnezl $v1, .L8000C9E4_ovl0
/* 00D5CC 8000C9CC C4700014 */   lwc1  $f16, 0x14($v1)
/* 00D5D0 8000C9D0 0C0025F8 */  jal   HS64_AObjNew
/* 00D5D4 8000C9D4 30A500FF */   andi  $a1, $a1, 0xff
/* 00D5D8 8000C9D8 AE020000 */  sw    $v0, ($s0)
/* 00D5DC 8000C9DC 00401825 */  move  $v1, $v0
/* 00D5E0 8000C9E0 C4700014 */  lwc1  $f16, 0x14($v1)
.L8000C9E4_ovl0:
/* 00D5E4 8000C9E4 240F0001 */  li    $t7, 1
/* 00D5E8 8000C9E8 E4700010 */  swc1  $f16, 0x10($v1)
/* 00D5EC 8000C9EC 8E6B0070 */  lw    $t3, 0x70($s3)
/* 00D5F0 8000C9F0 8E0C0000 */  lw    $t4, ($s0)
/* 00D5F4 8000C9F4 C5640000 */  lwc1  $f4, ($t3)
/* 00D5F8 8000C9F8 E5840014 */  swc1  $f4, 0x14($t4)
/* 00D5FC 8000C9FC 8E6D0070 */  lw    $t5, 0x70($s3)
/* 00D600 8000CA00 25AE0004 */  addiu $t6, $t5, 4
/* 00D604 8000CA04 AE6E0070 */  sw    $t6, 0x70($s3)
/* 00D608 8000CA08 8E180000 */  lw    $t8, ($s0)
/* 00D60C 8000CA0C A30F0005 */  sb    $t7, 5($t8)
/* 00D610 8000CA10 8E190000 */  lw    $t9, ($s0)
/* 00D614 8000CA14 E7340008 */  swc1  $f20, 8($t9)
/* 00D618 8000CA18 C6680074 */  lwc1  $f8, 0x74($s3)
/* 00D61C 8000CA1C C6720078 */  lwc1  $f18, 0x78($s3)
/* 00D620 8000CA20 8E080000 */  lw    $t0, ($s0)
/* 00D624 8000CA24 46004287 */  neg.s $f10, $f8
/* 00D628 8000CA28 46125181 */  sub.s $f6, $f10, $f18
/* 00D62C 8000CA2C E506000C */  swc1  $f6, 0xc($t0)
/* 00D630 8000CA30 8E090000 */  lw    $t1, ($s0)
/* 00D634 8000CA34 E536001C */  swc1  $f22, 0x1c($t1)
.L8000CA38_ovl0:
/* 00D638 8000CA38 26310001 */  addiu $s1, $s1, 1
/* 00D63C 8000CA3C 1634FFDA */  bne   $s1, $s4, .L8000C9A8_ovl0
/* 00D640 8000CA40 00129042 */   srl   $s2, $s2, 1
.L8000CA44_ovl0:
/* 00D644 8000CA44 2401000A */  li    $at, 10
/* 00D648 8000CA48 16E10004 */  bne   $s7, $at, .L8000CA5C_ovl0
/* 00D64C 8000CA4C 00000000 */   nop   
/* 00D650 8000CA50 C6700074 */  lwc1  $f16, 0x74($s3)
/* 00D654 8000CA54 46148100 */  add.s $f4, $f16, $f20
/* 00D658 8000CA58 E6640074 */  swc1  $f4, 0x74($s3)
.L8000CA5C_ovl0:
/* 00D65C 8000CA5C 100000DB */  b     .L8000CDCC_ovl0
/* 00D660 8000CA60 C6600074 */   lwc1  $f0, 0x74($s3)
.L8000CA64_ovl0:
/* 00D664 8000CA64 C6600074 */  lwc1  $f0, 0x74($s3)
/* 00D668 8000CA68 246A0004 */  addiu $t2, $v1, 4
/* 00D66C 8000CA6C AE6A0070 */  sw    $t2, 0x70($s3)
/* 00D670 8000CA70 8D4C0000 */  lw    $t4, ($t2)
/* 00D674 8000CA74 8E6D0004 */  lw    $t5, 4($s3)
/* 00D678 8000CA78 46000007 */  neg.s $f0, $f0
/* 00D67C 8000CA7C AE6C0070 */  sw    $t4, 0x70($s3)
/* 00D680 8000CA80 E660007C */  swc1  $f0, 0x7c($s3)
/* 00D684 8000CA84 E5A00040 */  swc1  $f0, 0x40($t5)
/* 00D688 8000CA88 926E0055 */  lbu   $t6, 0x55($s3)
/* 00D68C 8000CA8C 11C00009 */  beqz  $t6, .L8000CAB4_ovl0
/* 00D690 8000CA90 00000000 */   nop   
/* 00D694 8000CA94 8E6F0004 */  lw    $t7, 4($s3)
/* 00D698 8000CA98 02602025 */  move  $a0, $s3
/* 00D69C 8000CA9C 2405FFFE */  li    $a1, -2
/* 00D6A0 8000CAA0 8DE20048 */  lw    $v0, 0x48($t7)
/* 00D6A4 8000CAA4 10400003 */  beqz  $v0, .L8000CAB4_ovl0
/* 00D6A8 8000CAA8 00000000 */   nop   
/* 00D6AC 8000CAAC 0040F809 */  jalr  $v0
/* 00D6B0 8000CAB0 24060000 */  li    $a2, 0
.L8000CAB4_ovl0:
/* 00D6B4 8000CAB4 100000C5 */  b     .L8000CDCC_ovl0
/* 00D6B8 8000CAB8 C6600074 */   lwc1  $f0, 0x74($s3)
.L8000CABC_ovl0:
/* 00D6BC 8000CABC 24780004 */  addiu $t8, $v1, 4
/* 00D6C0 8000CAC0 92690055 */  lbu   $t1, 0x55($s3)
/* 00D6C4 8000CAC4 AE780070 */  sw    $t8, 0x70($s3)
/* 00D6C8 8000CAC8 8F080000 */  lw    $t0, ($t8)
/* 00D6CC 8000CACC 11200009 */  beqz  $t1, .L8000CAF4_ovl0
/* 00D6D0 8000CAD0 AE680070 */   sw    $t0, 0x70($s3)
/* 00D6D4 8000CAD4 8E6A0004 */  lw    $t2, 4($s3)
/* 00D6D8 8000CAD8 02602025 */  move  $a0, $s3
/* 00D6DC 8000CADC 2405FFFE */  li    $a1, -2
/* 00D6E0 8000CAE0 8D420048 */  lw    $v0, 0x48($t2)
/* 00D6E4 8000CAE4 10400003 */  beqz  $v0, .L8000CAF4_ovl0
/* 00D6E8 8000CAE8 00000000 */   nop   
/* 00D6EC 8000CAEC 0040F809 */  jalr  $v0
/* 00D6F0 8000CAF0 24060000 */  li    $a2, 0
.L8000CAF4_ovl0:
/* 00D6F4 8000CAF4 100000B5 */  b     .L8000CDCC_ovl0
/* 00D6F8 8000CAF8 C6600074 */   lwc1  $f0, 0x74($s3)
.L8000CAFC_ovl0:
/* 00D6FC 8000CAFC 320B7FFF */  andi  $t3, $s0, 0x7fff
/* 00D700 8000CB00 448B4000 */  mtc1  $t3, $f8
/* 00D704 8000CB04 001091C0 */  sll   $s2, $s0, 7
/* 00D708 8000CB08 05610005 */  bgez  $t3, .L8000CB20_ovl0
/* 00D70C 8000CB0C 46804520 */   cvt.s.w $f20, $f8
/* 00D710 8000CB10 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 00D714 8000CB14 44815000 */  mtc1  $at, $f10
/* 00D718 8000CB18 00000000 */  nop   
/* 00D71C 8000CB1C 460AA500 */  add.s $f20, $f20, $f10
.L8000CB20_ovl0:
/* 00D720 8000CB20 246C0004 */  addiu $t4, $v1, 4
/* 00D724 8000CB24 AE6C0070 */  sw    $t4, 0x70($s3)
/* 00D728 8000CB28 00129582 */  srl   $s2, $s2, 0x16
/* 00D72C 8000CB2C 00008825 */  move  $s1, $zero
.L8000CB30_ovl0:
/* 00D730 8000CB30 12400013 */  beqz  $s2, .L8000CB80_ovl0
/* 00D734 8000CB34 324D0001 */   andi  $t5, $s2, 1
/* 00D738 8000CB38 11A0000E */  beqz  $t5, .L8000CB74_ovl0
/* 00D73C 8000CB3C 00117080 */   sll   $t6, $s1, 2
/* 00D740 8000CB40 02AE8021 */  addu  $s0, $s5, $t6
/* 00D744 8000CB44 8E030000 */  lw    $v1, ($s0)
/* 00D748 8000CB48 02602025 */  move  $a0, $s3
/* 00D74C 8000CB4C 26250001 */  addiu $a1, $s1, 1
/* 00D750 8000CB50 54600006 */  bnezl $v1, .L8000CB6C_ovl0
/* 00D754 8000CB54 C472000C */   lwc1  $f18, 0xc($v1)
/* 00D758 8000CB58 0C0025F8 */  jal   HS64_AObjNew
/* 00D75C 8000CB5C 30A500FF */   andi  $a1, $a1, 0xff
/* 00D760 8000CB60 AE020000 */  sw    $v0, ($s0)
/* 00D764 8000CB64 00401825 */  move  $v1, $v0
/* 00D768 8000CB68 C472000C */  lwc1  $f18, 0xc($v1)
.L8000CB6C_ovl0:
/* 00D76C 8000CB6C 46149180 */  add.s $f6, $f18, $f20
/* 00D770 8000CB70 E466000C */  swc1  $f6, 0xc($v1)
.L8000CB74_ovl0:
/* 00D774 8000CB74 26310001 */  addiu $s1, $s1, 1
/* 00D778 8000CB78 1634FFED */  bne   $s1, $s4, .L8000CB30_ovl0
/* 00D77C 8000CB7C 00129042 */   srl   $s2, $s2, 1
.L8000CB80_ovl0:
/* 00D780 8000CB80 10000092 */  b     .L8000CDCC_ovl0
/* 00D784 8000CB84 C6600074 */   lwc1  $f0, 0x74($s3)
.L8000CB88_ovl0:
/* 00D788 8000CB88 246F0004 */  addiu $t7, $v1, 4
/* 00D78C 8000CB8C AE6F0070 */  sw    $t7, 0x70($s3)
/* 00D790 8000CB90 8FB8008C */  lw    $t8, 0x8c($sp)
/* 00D794 8000CB94 02602025 */  move  $a0, $s3
/* 00D798 8000CB98 57000005 */  bnezl $t8, .L8000CBB0_ovl0
/* 00D79C 8000CB9C 8E790070 */   lw    $t9, 0x70($s3)
/* 00D7A0 8000CBA0 0C0025F8 */  jal   HS64_AObjNew
/* 00D7A4 8000CBA4 24050004 */   li    $a1, 4
/* 00D7A8 8000CBA8 AFA2008C */  sw    $v0, 0x8c($sp)
/* 00D7AC 8000CBAC 8E790070 */  lw    $t9, 0x70($s3)
.L8000CBB0_ovl0:
/* 00D7B0 8000CBB0 8FA9008C */  lw    $t1, 0x8c($sp)
/* 00D7B4 8000CBB4 8F280000 */  lw    $t0, ($t9)
/* 00D7B8 8000CBB8 AD280020 */  sw    $t0, 0x20($t1)
/* 00D7BC 8000CBBC 8E6A0070 */  lw    $t2, 0x70($s3)
/* 00D7C0 8000CBC0 C6600074 */  lwc1  $f0, 0x74($s3)
/* 00D7C4 8000CBC4 254B0004 */  addiu $t3, $t2, 4
/* 00D7C8 8000CBC8 10000080 */  b     .L8000CDCC_ovl0
/* 00D7CC 8000CBCC AE6B0070 */   sw    $t3, 0x70($s3)
.L8000CBD0_ovl0:
/* 00D7D0 8000CBD0 8E62006C */  lw    $v0, 0x6c($s3)
/* 00D7D4 8000CBD4 C6600074 */  lwc1  $f0, 0x74($s3)
/* 00D7D8 8000CBD8 5040000E */  beql  $v0, $zero, .L8000CC14_ovl0
/* 00D7DC 8000CBDC 8E6D0004 */   lw    $t5, 4($s3)
/* 00D7E0 8000CBE0 904C0005 */  lbu   $t4, 5($v0)
.L8000CBE4_ovl0:
/* 00D7E4 8000CBE4 51800008 */  beql  $t4, $zero, .L8000CC08_ovl0
/* 00D7E8 8000CBE8 8C420000 */   lw    $v0, ($v0)
/* 00D7EC 8000CBEC C6640078 */  lwc1  $f4, 0x78($s3)
/* 00D7F0 8000CBF0 C450000C */  lwc1  $f16, 0xc($v0)
/* 00D7F4 8000CBF4 46002200 */  add.s $f8, $f4, $f0
/* 00D7F8 8000CBF8 46088280 */  add.s $f10, $f16, $f8
/* 00D7FC 8000CBFC E44A000C */  swc1  $f10, 0xc($v0)
/* 00D800 8000CC00 C6600074 */  lwc1  $f0, 0x74($s3)
/* 00D804 8000CC04 8C420000 */  lw    $v0, ($v0)
.L8000CC08_ovl0:
/* 00D808 8000CC08 5440FFF6 */  bnezl $v0, .L8000CBE4_ovl0
/* 00D80C 8000CC0C 904C0005 */   lbu   $t4, 5($v0)
/* 00D810 8000CC10 8E6D0004 */  lw    $t5, 4($s3)
.L8000CC14_ovl0:
/* 00D814 8000CC14 E660007C */  swc1  $f0, 0x7c($s3)
/* 00D818 8000CC18 3C018004 */  lui   $at, %hi(D_80040704) # $at, 0x8004
/* 00D81C 8000CC1C E5A00040 */  swc1  $f0, 0x40($t5)
/* 00D820 8000CC20 926E0055 */  lbu   $t6, 0x55($s3)
/* 00D824 8000CC24 C4320704 */  lwc1  $f18, %lo(D_80040704)($at)
/* 00D828 8000CC28 11C0006C */  beqz  $t6, .L8000CDDC_ovl0
/* 00D82C 8000CC2C E6720074 */   swc1  $f18, 0x74($s3)
/* 00D830 8000CC30 8E6F0004 */  lw    $t7, 4($s3)
/* 00D834 8000CC34 02602025 */  move  $a0, $s3
/* 00D838 8000CC38 2405FFFF */  li    $a1, -1
/* 00D83C 8000CC3C 8DE20048 */  lw    $v0, 0x48($t7)
/* 00D840 8000CC40 50400067 */  beql  $v0, $zero, .L8000CDE0_ovl0
/* 00D844 8000CC44 8FBF0054 */   lw    $ra, 0x54($sp)
/* 00D848 8000CC48 0040F809 */  jalr  $v0
/* 00D84C 8000CC4C 24060000 */  li    $a2, 0
/* 00D850 8000CC50 10000063 */  b     .L8000CDE0_ovl0
/* 00D854 8000CC54 8FBF0054 */   lw    $ra, 0x54($sp)
.L8000CC58_ovl0:
/* 00D858 8000CC58 0010C1C0 */  sll   $t8, $s0, 7
/* 00D85C 8000CC5C 0018CD82 */  srl   $t9, $t8, 0x16
/* 00D860 8000CC60 A2790054 */  sb    $t9, 0x54($s3)
/* 00D864 8000CC64 8C680000 */  lw    $t0, ($v1)
/* 00D868 8000CC68 C6660074 */  lwc1  $f6, 0x74($s3)
/* 00D86C 8000CC6C 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 00D870 8000CC70 31097FFF */  andi  $t1, $t0, 0x7fff
/* 00D874 8000CC74 44892000 */  mtc1  $t1, $f4
/* 00D878 8000CC78 05210004 */  bgez  $t1, .L8000CC8C_ovl0
/* 00D87C 8000CC7C 46802420 */   cvt.s.w $f16, $f4
/* 00D880 8000CC80 44814000 */  mtc1  $at, $f8
/* 00D884 8000CC84 00000000 */  nop   
/* 00D888 8000CC88 46088400 */  add.s $f16, $f16, $f8
.L8000CC8C_ovl0:
/* 00D88C 8000CC8C 46103280 */  add.s $f10, $f6, $f16
/* 00D890 8000CC90 246A0004 */  addiu $t2, $v1, 4
/* 00D894 8000CC94 AE6A0070 */  sw    $t2, 0x70($s3)
/* 00D898 8000CC98 E66A0074 */  swc1  $f10, 0x74($s3)
/* 00D89C 8000CC9C 1000004B */  b     .L8000CDCC_ovl0
/* 00D8A0 8000CCA0 C6600074 */   lwc1  $f0, 0x74($s3)
.L8000CCA4_ovl0:
/* 00D8A4 8000CCA4 8E6B0004 */  lw    $t3, 4($s3)
/* 00D8A8 8000CCA8 02602025 */  move  $a0, $s3
/* 00D8AC 8000CCAC 8D620048 */  lw    $v0, 0x48($t3)
/* 00D8B0 8000CCB0 50400012 */  beql  $v0, $zero, .L8000CCFC_ovl0
/* 00D8B4 8000CCB4 320D7FFF */   andi  $t5, $s0, 0x7fff
/* 00D8B8 8000CCB8 001019C0 */  sll   $v1, $s0, 7
/* 00D8BC 8000CCBC 00031D82 */  srl   $v1, $v1, 0x16
/* 00D8C0 8000CCC0 306C00FF */  andi  $t4, $v1, 0xff
/* 00D8C4 8000CCC4 448C9000 */  mtc1  $t4, $f18
/* 00D8C8 8000CCC8 00032A02 */  srl   $a1, $v1, 8
/* 00D8CC 8000CCCC 05810005 */  bgez  $t4, .L8000CCE4_ovl0
/* 00D8D0 8000CCD0 468094A0 */   cvt.s.w $f18, $f18
/* 00D8D4 8000CCD4 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 00D8D8 8000CCD8 44812000 */  mtc1  $at, $f4
/* 00D8DC 8000CCDC 00000000 */  nop   
/* 00D8E0 8000CCE0 46049480 */  add.s $f18, $f18, $f4
.L8000CCE4_ovl0:
/* 00D8E4 8000CCE4 44069000 */  mfc1  $a2, $f18
/* 00D8E8 8000CCE8 0040F809 */  jalr  $v0
/* 00D8EC 8000CCEC 00000000 */  nop   
/* 00D8F0 8000CCF0 8E630070 */  lw    $v1, 0x70($s3)
/* 00D8F4 8000CCF4 8C700000 */  lw    $s0, ($v1)
/* 00D8F8 8000CCF8 320D7FFF */  andi  $t5, $s0, 0x7fff
.L8000CCFC_ovl0:
/* 00D8FC 8000CCFC 448D3000 */  mtc1  $t5, $f6
/* 00D900 8000CD00 C6680074 */  lwc1  $f8, 0x74($s3)
/* 00D904 8000CD04 05A10005 */  bgez  $t5, .L8000CD1C_ovl0
/* 00D908 8000CD08 46803420 */   cvt.s.w $f16, $f6
/* 00D90C 8000CD0C 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 00D910 8000CD10 44815000 */  mtc1  $at, $f10
/* 00D914 8000CD14 00000000 */  nop   
/* 00D918 8000CD18 460A8400 */  add.s $f16, $f16, $f10
.L8000CD1C_ovl0:
/* 00D91C 8000CD1C 46104480 */  add.s $f18, $f8, $f16
/* 00D920 8000CD20 246E0004 */  addiu $t6, $v1, 4
/* 00D924 8000CD24 AE6E0070 */  sw    $t6, 0x70($s3)
/* 00D928 8000CD28 E6720074 */  swc1  $f18, 0x74($s3)
/* 00D92C 8000CD2C 10000027 */  b     .L8000CDCC_ovl0
/* 00D930 8000CD30 C6600074 */   lwc1  $f0, 0x74($s3)
.L8000CD34_ovl0:
/* 00D934 8000CD34 320F7FFF */  andi  $t7, $s0, 0x7fff
/* 00D938 8000CD38 448F3000 */  mtc1  $t7, $f6
/* 00D93C 8000CD3C 001091C0 */  sll   $s2, $s0, 7
/* 00D940 8000CD40 00129582 */  srl   $s2, $s2, 0x16
/* 00D944 8000CD44 C6640074 */  lwc1  $f4, 0x74($s3)
/* 00D948 8000CD48 05E10005 */  bgez  $t7, .L8000CD60_ovl0
/* 00D94C 8000CD4C 468032A0 */   cvt.s.w $f10, $f6
/* 00D950 8000CD50 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 00D954 8000CD54 44814000 */  mtc1  $at, $f8
/* 00D958 8000CD58 00000000 */  nop   
/* 00D95C 8000CD5C 46085280 */  add.s $f10, $f10, $f8
.L8000CD60_ovl0:
/* 00D960 8000CD60 460A2400 */  add.s $f16, $f4, $f10
/* 00D964 8000CD64 24780004 */  addiu $t8, $v1, 4
/* 00D968 8000CD68 AE780070 */  sw    $t8, 0x70($s3)
/* 00D96C 8000CD6C 24110004 */  li    $s1, 4
/* 00D970 8000CD70 E6700074 */  swc1  $f16, 0x74($s3)
.L8000CD74_ovl0:
/* 00D974 8000CD74 12400012 */  beqz  $s2, .L8000CDC0_ovl0
/* 00D978 8000CD78 32590001 */   andi  $t9, $s2, 1
/* 00D97C 8000CD7C 5320000E */  beql  $t9, $zero, .L8000CDB8_ovl0
/* 00D980 8000CD80 26310001 */   addiu $s1, $s1, 1
/* 00D984 8000CD84 8E680004 */  lw    $t0, 4($s3)
/* 00D988 8000CD88 02602025 */  move  $a0, $s3
/* 00D98C 8000CD8C 8D020048 */  lw    $v0, 0x48($t0)
/* 00D990 8000CD90 50400006 */  beql  $v0, $zero, .L8000CDAC_ovl0
/* 00D994 8000CD94 8E6A0070 */   lw    $t2, 0x70($s3)
/* 00D998 8000CD98 8E690070 */  lw    $t1, 0x70($s3)
/* 00D99C 8000CD9C 02202825 */  move  $a1, $s1
/* 00D9A0 8000CDA0 0040F809 */  jalr  $v0
/* 00D9A4 8000CDA4 8D260000 */  lw    $a2, ($t1)
/* 00D9A8 8000CDA8 8E6A0070 */  lw    $t2, 0x70($s3)
.L8000CDAC_ovl0:
/* 00D9AC 8000CDAC 254B0004 */  addiu $t3, $t2, 4
/* 00D9B0 8000CDB0 AE6B0070 */  sw    $t3, 0x70($s3)
/* 00D9B4 8000CDB4 26310001 */  addiu $s1, $s1, 1
.L8000CDB8_ovl0:
/* 00D9B8 8000CDB8 163EFFEE */  bne   $s1, $fp, .L8000CD74_ovl0
/* 00D9BC 8000CDBC 00129042 */   srl   $s2, $s2, 1
.L8000CDC0_ovl0:
/* 00D9C0 8000CDC0 10000002 */  b     .L8000CDCC_ovl0
/* 00D9C4 8000CDC4 C6600074 */   lwc1  $f0, 0x74($s3)
.L8000CDC8_ovl0:
/* 00D9C8 8000CDC8 C6600074 */  lwc1  $f0, 0x74($s3)
.L8000CDCC_ovl0:
/* 00D9CC 8000CDCC 4616003E */  c.le.s $f0, $f22
/* 00D9D0 8000CDD0 00000000 */  nop   
/* 00D9D4 8000CDD4 4503FDCD */  bc1tl .L8000C50C_ovl0
/* 00D9D8 8000CDD8 8E630070 */   lw    $v1, 0x70($s3)
.L8000CDDC_ovl0:
/* 00D9DC 8000CDDC 8FBF0054 */  lw    $ra, 0x54($sp)
.L8000CDE0_ovl0:
/* 00D9E0 8000CDE0 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 00D9E4 8000CDE4 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 00D9E8 8000CDE8 D7B80028 */  ldc1  $f24, 0x28($sp)
/* 00D9EC 8000CDEC 8FB00030 */  lw    $s0, 0x30($sp)
/* 00D9F0 8000CDF0 8FB10034 */  lw    $s1, 0x34($sp)
/* 00D9F4 8000CDF4 8FB20038 */  lw    $s2, 0x38($sp)
/* 00D9F8 8000CDF8 8FB3003C */  lw    $s3, 0x3c($sp)
/* 00D9FC 8000CDFC 8FB40040 */  lw    $s4, 0x40($sp)
/* 00DA00 8000CE00 8FB50044 */  lw    $s5, 0x44($sp)
/* 00DA04 8000CE04 8FB60048 */  lw    $s6, 0x48($sp)
/* 00DA08 8000CE08 8FB7004C */  lw    $s7, 0x4c($sp)
/* 00DA0C 8000CE0C 8FBE0050 */  lw    $fp, 0x50($sp)
/* 00DA10 8000CE10 03E00008 */  jr    $ra
/* 00DA14 8000CE14 27BD00A8 */   addiu $sp, $sp, 0xa8
