glabel func_801060C4
/* 08EB34 801060C4 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 08EB38 801060C8 AFB10034 */  sw    $s1, 0x34($sp)
/* 08EB3C 801060CC 3C118013 */  lui   $s1, %hi(D_8012BD00) # $s1, 0x8013
/* 08EB40 801060D0 2631BD00 */  addiu $s1, %lo(D_8012BD00) # addiu $s1, $s1, -0x4300
/* 08EB44 801060D4 AFBF003C */  sw    $ra, 0x3c($sp)
/* 08EB48 801060D8 AFB20038 */  sw    $s2, 0x38($sp)
/* 08EB4C 801060DC AFB00030 */  sw    $s0, 0x30($sp)
/* 08EB50 801060E0 C4840004 */  lwc1  $f4, 4($a0)
/* 08EB54 801060E4 C6260004 */  lwc1  $f6, 4($s1)
/* 08EB58 801060E8 00A08025 */  move  $s0, $a1
/* 08EB5C 801060EC 00809025 */  move  $s2, $a0
/* 08EB60 801060F0 46062200 */  add.s $f8, $f4, $f6
/* 08EB64 801060F4 27B90080 */  addiu $t9, $sp, 0x80
/* 08EB68 801060F8 27A8006C */  addiu $t0, $sp, 0x6c
/* 08EB6C 801060FC 27A9009C */  addiu $t1, $sp, 0x9c
/* 08EB70 80106100 E7A8008C */  swc1  $f8, 0x8c($sp)
/* 08EB74 80106104 C4840010 */  lwc1  $f4, 0x10($a0)
/* 08EB78 80106108 C48A0008 */  lwc1  $f10, 8($a0)
/* 08EB7C 8010610C 27AA0098 */  addiu $t2, $sp, 0x98
/* 08EB80 80106110 27AB0070 */  addiu $t3, $sp, 0x70
/* 08EB84 80106114 46045180 */  add.s $f6, $f10, $f4
/* 08EB88 80106118 C62A0008 */  lwc1  $f10, 8($s1)
/* 08EB8C 8010611C 3C07BF80 */  lui   $a3, 0xbf80
/* 08EB90 80106120 E7A60090 */  swc1  $f6, 0x90($sp)
/* 08EB94 80106124 C488000C */  lwc1  $f8, 0xc($a0)
/* 08EB98 80106128 3C048013 */  lui   $a0, %hi(D_8012BD34) # $a0, 0x8013
/* 08EB9C 8010612C 2484BD34 */  addiu $a0, %lo(D_8012BD34) # addiu $a0, $a0, -0x42cc
/* 08EBA0 80106130 460A4100 */  add.s $f4, $f8, $f10
/* 08EBA4 80106134 E7A40094 */  swc1  $f4, 0x94($sp)
/* 08EBA8 80106138 8CAE0024 */  lw    $t6, 0x24($a1)
/* 08EBAC 8010613C AFAE009C */  sw    $t6, 0x9c($sp)
/* 08EBB0 80106140 8CAF0020 */  lw    $t7, 0x20($a1)
/* 08EBB4 80106144 AFAF0098 */  sw    $t7, 0x98($sp)
/* 08EBB8 80106148 8CB8001C */  lw    $t8, 0x1c($a1)
/* 08EBBC 8010614C 27A5008C */  addiu $a1, $sp, 0x8c
/* 08EBC0 80106150 AFB80070 */  sw    $t8, 0x70($sp)
/* 08EBC4 80106154 8E060024 */  lw    $a2, 0x24($s0)
/* 08EBC8 80106158 AFAB0020 */  sw    $t3, 0x20($sp)
/* 08EBCC 8010615C AFAA001C */  sw    $t2, 0x1c($sp)
/* 08EBD0 80106160 AFA90018 */  sw    $t1, 0x18($sp)
/* 08EBD4 80106164 AFA80014 */  sw    $t0, 0x14($sp)
/* 08EBD8 80106168 0C04162E */  jal   func_801058B8
/* 08EBDC 8010616C AFB90010 */   sw    $t9, 0x10($sp)
/* 08EBE0 80106170 10400008 */  beqz  $v0, .L80106194_ovl2
/* 08EBE4 80106174 27A30080 */   addiu $v1, $sp, 0x80
/* 08EBE8 80106178 24010001 */  li    $at, 1
/* 08EBEC 8010617C 1041002F */  beq   $v0, $at, .L8010623C_ovl2
/* 08EBF0 80106180 24010002 */   li    $at, 2
/* 08EBF4 80106184 5041003F */  beql  $v0, $at, .L80106284_ovl2
/* 08EBF8 80106188 C7A6008C */   lwc1  $f6, 0x8c($sp)
/* 08EBFC 8010618C 10000081 */  b     .L80106394_ovl2
/* 08EC00 80106190 8FA8009C */   lw    $t0, 0x9c($sp)
.L80106194_ovl2:
/* 08EC04 80106194 C7A6008C */  lwc1  $f6, 0x8c($sp)
/* 08EC08 80106198 C7A80080 */  lwc1  $f8, 0x80($sp)
/* 08EC0C 8010619C C6240014 */  lwc1  $f4, 0x14($s1)
/* 08EC10 801061A0 46083281 */  sub.s $f10, $f6, $f8
/* 08EC14 801061A4 C7A80094 */  lwc1  $f8, 0x94($sp)
/* 08EC18 801061A8 46045182 */  mul.s $f6, $f10, $f4
/* 08EC1C 801061AC C7AA0088 */  lwc1  $f10, 0x88($sp)
/* 08EC20 801061B0 460A4101 */  sub.s $f4, $f8, $f10
/* 08EC24 801061B4 C6280018 */  lwc1  $f8, 0x18($s1)
/* 08EC28 801061B8 46082282 */  mul.s $f10, $f4, $f8
/* 08EC2C 801061BC 44804000 */  mtc1  $zero, $f8
/* 08EC30 801061C0 460A3100 */  add.s $f4, $f6, $f10
/* 08EC34 801061C4 4608203C */  c.lt.s $f4, $f8
/* 08EC38 801061C8 00000000 */  nop   
/* 08EC3C 801061CC 4502000B */  bc1fl .L801061FC_ovl2
/* 08EC40 801061D0 8C6D0000 */   lw    $t5, ($v1)
/* 08EC44 801061D4 8E0C0000 */  lw    $t4, ($s0)
/* 08EC48 801061D8 96080000 */  lhu   $t0, ($s0)
/* 08EC4C 801061DC 000C6CC2 */  srl   $t5, $t4, 0x13
/* 08EC50 801061E0 31AFFFF8 */  andi  $t7, $t5, 0xfff8
/* 08EC54 801061E4 000FC8C0 */  sll   $t9, $t7, 3
/* 08EC58 801061E8 31090007 */  andi  $t1, $t0, 7
/* 08EC5C 801061EC 03295025 */  or    $t2, $t9, $t1
/* 08EC60 801061F0 10000079 */  b     .L801063D8_ovl2
/* 08EC64 801061F4 A60A0000 */   sh    $t2, ($s0)
/* 08EC68 801061F8 8C6D0000 */  lw    $t5, ($v1)
.L801061FC_ovl2:
/* 08EC6C 801061FC 27AB0074 */  addiu $t3, $sp, 0x74
/* 08EC70 80106200 AD6D0000 */  sw    $t5, ($t3)
/* 08EC74 80106204 8C6C0004 */  lw    $t4, 4($v1)
/* 08EC78 80106208 AD6C0004 */  sw    $t4, 4($t3)
/* 08EC7C 8010620C 8C6D0008 */  lw    $t5, 8($v1)
/* 08EC80 80106210 AD6D0008 */  sw    $t5, 8($t3)
/* 08EC84 80106214 8E0E0000 */  lw    $t6, ($s0)
/* 08EC88 80106218 960B0000 */  lhu   $t3, ($s0)
/* 08EC8C 8010621C 000E7CC2 */  srl   $t7, $t6, 0x13
/* 08EC90 80106220 31F8FFF8 */  andi  $t8, $t7, 0xfff8
/* 08EC94 80106224 37190001 */  ori   $t9, $t8, 1
/* 08EC98 80106228 001950C0 */  sll   $t2, $t9, 3
/* 08EC9C 8010622C 316C0007 */  andi  $t4, $t3, 7
/* 08ECA0 80106230 014C6825 */  or    $t5, $t2, $t4
/* 08ECA4 80106234 10000056 */  b     .L80106390_ovl2
/* 08ECA8 80106238 A60D0000 */   sh    $t5, ($s0)
.L8010623C_ovl2:
/* 08ECAC 8010623C 8C780000 */  lw    $t8, ($v1)
/* 08ECB0 80106240 27AE0074 */  addiu $t6, $sp, 0x74
/* 08ECB4 80106244 ADD80000 */  sw    $t8, ($t6)
/* 08ECB8 80106248 8C6F0004 */  lw    $t7, 4($v1)
/* 08ECBC 8010624C ADCF0004 */  sw    $t7, 4($t6)
/* 08ECC0 80106250 8C780008 */  lw    $t8, 8($v1)
/* 08ECC4 80106254 ADD80008 */  sw    $t8, 8($t6)
/* 08ECC8 80106258 8E080000 */  lw    $t0, ($s0)
/* 08ECCC 8010625C 960E0000 */  lhu   $t6, ($s0)
/* 08ECD0 80106260 0008CCC2 */  srl   $t9, $t0, 0x13
/* 08ECD4 80106264 3329FFF8 */  andi  $t1, $t9, 0xfff8
/* 08ECD8 80106268 352A0001 */  ori   $t2, $t1, 1
/* 08ECDC 8010626C 000A68C0 */  sll   $t5, $t2, 3
/* 08ECE0 80106270 31CF0007 */  andi  $t7, $t6, 7
/* 08ECE4 80106274 01AFC025 */  or    $t8, $t5, $t7
/* 08ECE8 80106278 10000045 */  b     .L80106390_ovl2
/* 08ECEC 8010627C A6180000 */   sh    $t8, ($s0)
/* 08ECF0 80106280 C7A6008C */  lwc1  $f6, 0x8c($sp)
.L80106284_ovl2:
/* 08ECF4 80106284 C62A0034 */  lwc1  $f10, 0x34($s1)
/* 08ECF8 80106288 C7A40090 */  lwc1  $f4, 0x90($sp)
/* 08ECFC 8010628C C6280038 */  lwc1  $f8, 0x38($s1)
/* 08ED00 80106290 460A3381 */  sub.s $f14, $f6, $f10
/* 08ED04 80106294 C62A003C */  lwc1  $f10, 0x3c($s1)
/* 08ED08 80106298 C7A60094 */  lwc1  $f6, 0x94($sp)
/* 08ED0C 8010629C 46082401 */  sub.s $f16, $f4, $f8
/* 08ED10 801062A0 460E7102 */  mul.s $f4, $f14, $f14
/* 08ED14 801062A4 E7AE0060 */  swc1  $f14, 0x60($sp)
/* 08ED18 801062A8 460A3481 */  sub.s $f18, $f6, $f10
/* 08ED1C 801062AC 46108202 */  mul.s $f8, $f16, $f16
/* 08ED20 801062B0 E7B00064 */  swc1  $f16, 0x64($sp)
/* 08ED24 801062B4 46129282 */  mul.s $f10, $f18, $f18
/* 08ED28 801062B8 E7B20068 */  swc1  $f18, 0x68($sp)
/* 08ED2C 801062BC 46082180 */  add.s $f6, $f4, $f8
/* 08ED30 801062C0 0C00CAC8 */  jal   sqrtf
/* 08ED34 801062C4 460A3300 */   add.s $f12, $f6, $f10
/* 08ED38 801062C8 C7A2006C */  lwc1  $f2, 0x6c($sp)
/* 08ED3C 801062CC C7AE0060 */  lwc1  $f14, 0x60($sp)
/* 08ED40 801062D0 C7B00064 */  lwc1  $f16, 0x64($sp)
/* 08ED44 801062D4 46001083 */  div.s $f2, $f2, $f0
/* 08ED48 801062D8 C7A80080 */  lwc1  $f8, 0x80($sp)
/* 08ED4C 801062DC C7B20068 */  lwc1  $f18, 0x68($sp)
/* 08ED50 801062E0 8FA4009C */  lw    $a0, 0x9c($sp)
/* 08ED54 801062E4 27A50074 */  addiu $a1, $sp, 0x74
/* 08ED58 801062E8 27A60048 */  addiu $a2, $sp, 0x48
/* 08ED5C 801062EC 27A70054 */  addiu $a3, $sp, 0x54
/* 08ED60 801062F0 46027102 */  mul.s $f4, $f14, $f2
/* 08ED64 801062F4 E7A2006C */  swc1  $f2, 0x6c($sp)
/* 08ED68 801062F8 46028282 */  mul.s $f10, $f16, $f2
/* 08ED6C 801062FC 46082180 */  add.s $f6, $f4, $f8
/* 08ED70 80106300 46029202 */  mul.s $f8, $f18, $f2
/* 08ED74 80106304 C7A40084 */  lwc1  $f4, 0x84($sp)
/* 08ED78 80106308 E7A60074 */  swc1  $f6, 0x74($sp)
/* 08ED7C 8010630C 46045300 */  add.s $f12, $f10, $f4
/* 08ED80 80106310 C7AA0088 */  lwc1  $f10, 0x88($sp)
/* 08ED84 80106314 460A4100 */  add.s $f4, $f8, $f10
/* 08ED88 80106318 C6280014 */  lwc1  $f8, 0x14($s1)
/* 08ED8C 8010631C E7AC004C */  swc1  $f12, 0x4c($sp)
/* 08ED90 80106320 E7AC0078 */  swc1  $f12, 0x78($sp)
/* 08ED94 80106324 46083280 */  add.s $f10, $f6, $f8
/* 08ED98 80106328 C6260018 */  lwc1  $f6, 0x18($s1)
/* 08ED9C 8010632C E7A4007C */  swc1  $f4, 0x7c($sp)
/* 08EDA0 80106330 46062200 */  add.s $f8, $f4, $f6
/* 08EDA4 80106334 E7AA0048 */  swc1  $f10, 0x48($sp)
/* 08EDA8 80106338 0C0415F1 */  jal   func_801057C4
/* 08EDAC 8010633C E7A80050 */   swc1  $f8, 0x50($sp)
/* 08EDB0 80106340 50400014 */  beql  $v0, $zero, .L80106394_ovl2
/* 08EDB4 80106344 8FA8009C */   lw    $t0, 0x9c($sp)
/* 08EDB8 80106348 C7A00054 */  lwc1  $f0, 0x54($sp)
/* 08EDBC 8010634C C7A40074 */  lwc1  $f4, 0x74($sp)
/* 08EDC0 80106350 C6280014 */  lwc1  $f8, 0x14($s1)
/* 08EDC4 80106354 C7A2005C */  lwc1  $f2, 0x5c($sp)
/* 08EDC8 80106358 46002181 */  sub.s $f6, $f4, $f0
/* 08EDCC 8010635C 44805000 */  mtc1  $zero, $f10
/* 08EDD0 80106360 46083102 */  mul.s $f4, $f6, $f8
/* 08EDD4 80106364 C7A6007C */  lwc1  $f6, 0x7c($sp)
/* 08EDD8 80106368 46023201 */  sub.s $f8, $f6, $f2
/* 08EDDC 8010636C C6260018 */  lwc1  $f6, 0x18($s1)
/* 08EDE0 80106370 46064202 */  mul.s $f8, $f8, $f6
/* 08EDE4 80106374 46082180 */  add.s $f6, $f4, $f8
/* 08EDE8 80106378 4606503C */  c.lt.s $f10, $f6
/* 08EDEC 8010637C 00000000 */  nop   
/* 08EDF0 80106380 45020004 */  bc1fl .L80106394_ovl2
/* 08EDF4 80106384 8FA8009C */   lw    $t0, 0x9c($sp)
/* 08EDF8 80106388 E7A00074 */  swc1  $f0, 0x74($sp)
/* 08EDFC 8010638C E7A2007C */  swc1  $f2, 0x7c($sp)
.L80106390_ovl2:
/* 08EE00 80106390 8FA8009C */  lw    $t0, 0x9c($sp)
.L80106394_ovl2:
/* 08EE04 80106394 AE080024 */  sw    $t0, 0x24($s0)
/* 08EE08 80106398 8FB90098 */  lw    $t9, 0x98($sp)
/* 08EE0C 8010639C AE190020 */  sw    $t9, 0x20($s0)
/* 08EE10 801063A0 8FA90070 */  lw    $t1, 0x70($sp)
/* 08EE14 801063A4 AE09001C */  sw    $t1, 0x1c($s0)
/* 08EE18 801063A8 C6280024 */  lwc1  $f8, 0x24($s1)
/* 08EE1C 801063AC C7A40074 */  lwc1  $f4, 0x74($sp)
/* 08EE20 801063B0 46082281 */  sub.s $f10, $f4, $f8
/* 08EE24 801063B4 C6440010 */  lwc1  $f4, 0x10($s2)
/* 08EE28 801063B8 E64A0004 */  swc1  $f10, 4($s2)
/* 08EE2C 801063BC C7A60078 */  lwc1  $f6, 0x78($sp)
/* 08EE30 801063C0 46043201 */  sub.s $f8, $f6, $f4
/* 08EE34 801063C4 E6480008 */  swc1  $f8, 8($s2)
/* 08EE38 801063C8 C6260028 */  lwc1  $f6, 0x28($s1)
/* 08EE3C 801063CC C7AA007C */  lwc1  $f10, 0x7c($sp)
/* 08EE40 801063D0 46065101 */  sub.s $f4, $f10, $f6
/* 08EE44 801063D4 E644000C */  swc1  $f4, 0xc($s2)
.L801063D8_ovl2:
/* 08EE48 801063D8 8FBF003C */  lw    $ra, 0x3c($sp)
/* 08EE4C 801063DC 8FB00030 */  lw    $s0, 0x30($sp)
/* 08EE50 801063E0 8FB10034 */  lw    $s1, 0x34($sp)
/* 08EE54 801063E4 8FB20038 */  lw    $s2, 0x38($sp)
/* 08EE58 801063E8 03E00008 */  jr    $ra
/* 08EE5C 801063EC 27BD00A0 */   addiu $sp, $sp, 0xa0
