glabel func_800FA92C
/* 08339C 800FA92C 27BDFF90 */  addiu $sp, $sp, -0x70
/* 0833A0 800FA930 3C0E800D */  lui   $t6, %hi(D_800D799C) # $t6, 0x800d
/* 0833A4 800FA934 8DCE799C */  lw    $t6, %lo(D_800D799C)($t6)
/* 0833A8 800FA938 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0833AC 800FA93C AFB00018 */  sw    $s0, 0x18($sp)
/* 0833B0 800FA940 AFA40070 */  sw    $a0, 0x70($sp)
/* 0833B4 800FA944 8DCF003C */  lw    $t7, 0x3c($t6)
/* 0833B8 800FA948 AFA00064 */  sw    $zero, 0x64($sp)
/* 0833BC 800FA94C 3C018013 */  lui   $at, %hi(D_80128800) # $at, 0x8013
/* 0833C0 800FA950 AFAF006C */  sw    $t7, 0x6c($sp)
/* 0833C4 800FA954 C4228800 */  lwc1  $f2, %lo(D_80128800)($at)
/* 0833C8 800FA958 C4C40000 */  lwc1  $f4, ($a2)
/* 0833CC 800FA95C C4C60004 */  lwc1  $f6, 4($a2)
/* 0833D0 800FA960 C4C80008 */  lwc1  $f8, 8($a2)
/* 0833D4 800FA964 E4C40018 */  swc1  $f4, 0x18($a2)
/* 0833D8 800FA968 E4C6001C */  swc1  $f6, 0x1c($a2)
/* 0833DC 800FA96C E4C80020 */  swc1  $f8, 0x20($a2)
/* 0833E0 800FA970 C4A00048 */  lwc1  $f0, 0x48($a1)
/* 0833E4 800FA974 00C08025 */  move  $s0, $a2
/* 0833E8 800FA978 00A03825 */  move  $a3, $a1
/* 0833EC 800FA97C 46001032 */  c.eq.s $f2, $f0
/* 0833F0 800FA980 00001025 */  move  $v0, $zero
/* 0833F4 800FA984 45030003 */  bc1tl .L800FA994_ovl2
/* 0833F8 800FA988 C4E0004C */   lwc1  $f0, 0x4c($a3)
/* 0833FC 800FA98C E4C00018 */  swc1  $f0, 0x18($a2)
/* 083400 800FA990 C4E0004C */  lwc1  $f0, 0x4c($a3)
.L800FA994_ovl2:
/* 083404 800FA994 46001032 */  c.eq.s $f2, $f0
/* 083408 800FA998 00000000 */  nop   
/* 08340C 800FA99C 45030005 */  bc1tl .L800FA9B4_ovl2
/* 083410 800FA9A0 C4E00050 */   lwc1  $f0, 0x50($a3)
/* 083414 800FA9A4 C4EA0014 */  lwc1  $f10, 0x14($a3)
/* 083418 800FA9A8 460A0480 */  add.s $f18, $f0, $f10
/* 08341C 800FA9AC E612001C */  swc1  $f18, 0x1c($s0)
/* 083420 800FA9B0 C4E00050 */  lwc1  $f0, 0x50($a3)
.L800FA9B4_ovl2:
/* 083424 800FA9B4 46001032 */  c.eq.s $f2, $f0
/* 083428 800FA9B8 00000000 */  nop   
/* 08342C 800FA9BC 45030003 */  bc1tl .L800FA9CC_ovl2
/* 083430 800FA9C0 90F8001D */   lbu   $t8, 0x1d($a3)
/* 083434 800FA9C4 E6000020 */  swc1  $f0, 0x20($s0)
/* 083438 800FA9C8 90F8001D */  lbu   $t8, 0x1d($a3)
.L800FA9CC_ovl2:
/* 08343C 800FA9CC 53000053 */  beql  $t8, $zero, .L800FAB1C_ovl2
/* 083440 800FA9D0 90EA001C */   lbu   $t2, 0x1c($a3)
/* 083444 800FA9D4 8E190030 */  lw    $t9, 0x30($s0)
/* 083448 800FA9D8 8E080038 */  lw    $t0, 0x38($s0)
/* 08344C 800FA9DC 27A4004C */  addiu $a0, $sp, 0x4c
/* 083450 800FA9E0 02002825 */  move  $a1, $s0
/* 083454 800FA9E4 03284825 */  or    $t1, $t9, $t0
/* 083458 800FA9E8 1120004B */  beqz  $t1, .L800FAB18_ovl2
/* 08345C 800FA9EC 26060024 */   addiu $a2, $s0, 0x24
/* 083460 800FA9F0 AFA20068 */  sw    $v0, 0x68($sp)
/* 083464 800FA9F4 AFA60028 */  sw    $a2, 0x28($sp)
/* 083468 800FA9F8 0C00637B */  jal   lbvector_Diff
/* 08346C 800FA9FC AFA70074 */   sw    $a3, 0x74($sp)
/* 083470 800FAA00 C7A0004C */  lwc1  $f0, 0x4c($sp)
/* 083474 800FAA04 C7AC0054 */  lwc1  $f12, 0x54($sp)
/* 083478 800FAA08 0C0061C3 */  jal   atan2f
/* 08347C 800FAA0C 46000387 */   neg.s $f14, $f0
/* 083480 800FAA10 3C018013 */  lui   $at, %hi(D_80128804) # $at, 0x8013
/* 083484 800FAA14 C4248804 */  lwc1  $f4, %lo(D_80128804)($at)
/* 083488 800FAA18 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 08348C 800FAA1C 44814000 */  mtc1  $at, $f8
/* 083490 800FAA20 46040183 */  div.s $f6, $f0, $f4
/* 083494 800FAA24 44805000 */  mtc1  $zero, $f10
/* 083498 800FAA28 3C0143B4 */  li    $at, 0x43B40000 # 360.000000
/* 08349C 800FAA2C 8FA20068 */  lw    $v0, 0x68($sp)
/* 0834A0 800FAA30 8FA70074 */  lw    $a3, 0x74($sp)
/* 0834A4 800FAA34 C7AE0054 */  lwc1  $f14, 0x54($sp)
/* 0834A8 800FAA38 46083302 */  mul.s $f12, $f6, $f8
/* 0834AC 800FAA3C 460A603C */  c.lt.s $f12, $f10
/* 0834B0 800FAA40 46006086 */  mov.s $f2, $f12
/* 0834B4 800FAA44 45020005 */  bc1fl .L800FAA5C_ovl2
/* 0834B8 800FAA48 C4E00040 */   lwc1  $f0, 0x40($a3)
/* 0834BC 800FAA4C 44819000 */  mtc1  $at, $f18
/* 0834C0 800FAA50 00000000 */  nop   
/* 0834C4 800FAA54 46126080 */  add.s $f2, $f12, $f18
/* 0834C8 800FAA58 C4E00040 */  lwc1  $f0, 0x40($a3)
.L800FAA5C_ovl2:
/* 0834CC 800FAA5C 4600103C */  c.lt.s $f2, $f0
/* 0834D0 800FAA60 00000000 */  nop   
/* 0834D4 800FAA64 45020004 */  bc1fl .L800FAA78_ovl2
/* 0834D8 800FAA68 C4E00044 */   lwc1  $f0, 0x44($a3)
/* 0834DC 800FAA6C 46000086 */  mov.s $f2, $f0
/* 0834E0 800FAA70 24020001 */  li    $v0, 1
/* 0834E4 800FAA74 C4E00044 */  lwc1  $f0, 0x44($a3)
.L800FAA78_ovl2:
/* 0834E8 800FAA78 4602003C */  c.lt.s $f0, $f2
/* 0834EC 800FAA7C 00000000 */  nop   
/* 0834F0 800FAA80 45000003 */  bc1f  .L800FAA90_ovl2
/* 0834F4 800FAA84 00000000 */   nop   
/* 0834F8 800FAA88 46000086 */  mov.s $f2, $f0
/* 0834FC 800FAA8C 34420002 */  ori   $v0, $v0, 2
.L800FAA90_ovl2:
/* 083500 800FAA90 10400021 */  beqz  $v0, .L800FAB18_ovl2
/* 083504 800FAA94 C7A0004C */   lwc1  $f0, 0x4c($sp)
/* 083508 800FAA98 460E7102 */  mul.s $f4, $f14, $f14
/* 08350C 800FAA9C AFA70074 */  sw    $a3, 0x74($sp)
/* 083510 800FAAA0 E7A2003C */  swc1  $f2, 0x3c($sp)
/* 083514 800FAAA4 46000182 */  mul.s $f6, $f0, $f0
/* 083518 800FAAA8 0C00CAC8 */  jal   sqrtf
/* 08351C 800FAAAC 46062300 */   add.s $f12, $f4, $f6
/* 083520 800FAAB0 3C018013 */  lui   $at, %hi(D_80128808) # $at, 0x8013
/* 083524 800FAAB4 C7A2003C */  lwc1  $f2, 0x3c($sp)
/* 083528 800FAAB8 C42A8808 */  lwc1  $f10, %lo(D_80128808)($at)
/* 08352C 800FAABC 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 083530 800FAAC0 44812000 */  mtc1  $at, $f4
/* 083534 800FAAC4 460A1482 */  mul.s $f18, $f2, $f10
/* 083538 800FAAC8 44806000 */  mtc1  $zero, $f12
/* 08353C 800FAACC 8FA5006C */  lw    $a1, 0x6c($sp)
/* 083540 800FAAD0 46000207 */  neg.s $f8, $f0
/* 083544 800FAAD4 27A4004C */  addiu $a0, $sp, 0x4c
/* 083548 800FAAD8 E7A8004C */  swc1  $f8, 0x4c($sp)
/* 08354C 800FAADC E7AC0050 */  swc1  $f12, 0x50($sp)
/* 083550 800FAAE0 46049183 */  div.s $f6, $f18, $f4
/* 083554 800FAAE4 E7AC0054 */  swc1  $f12, 0x54($sp)
/* 083558 800FAAE8 24A50054 */  addiu $a1, $a1, 0x54
/* 08355C 800FAAEC 44063000 */  mfc1  $a2, $f6
/* 083560 800FAAF0 0C00647E */  jal   func_800191F8_ovl2
/* 083564 800FAAF4 00000000 */   nop   
/* 083568 800FAAF8 27A4004C */  addiu $a0, $sp, 0x4c
/* 08356C 800FAAFC 0C00635F */  jal   lbvector_Add
/* 083570 800FAB00 8FA50028 */   lw    $a1, 0x28($sp)
/* 083574 800FAB04 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 083578 800FAB08 8FA70074 */  lw    $a3, 0x74($sp)
/* 08357C 800FAB0C E6080018 */  swc1  $f8, 0x18($s0)
/* 083580 800FAB10 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 083584 800FAB14 E60A0020 */  swc1  $f10, 0x20($s0)
.L800FAB18_ovl2:
/* 083588 800FAB18 90EA001C */  lbu   $t2, 0x1c($a3)
.L800FAB1C_ovl2:
/* 08358C 800FAB1C 51400051 */  beql  $t2, $zero, .L800FAC64_ovl2
/* 083590 800FAB20 8FBF001C */   lw    $ra, 0x1c($sp)
/* 083594 800FAB24 8E0B0034 */  lw    $t3, 0x34($s0)
/* 083598 800FAB28 27A4004C */  addiu $a0, $sp, 0x4c
/* 08359C 800FAB2C 26050018 */  addiu $a1, $s0, 0x18
/* 0835A0 800FAB30 1160004B */  beqz  $t3, .L800FAC60_ovl2
/* 0835A4 800FAB34 26060024 */   addiu $a2, $s0, 0x24
/* 0835A8 800FAB38 0C00637B */  jal   lbvector_Diff
/* 0835AC 800FAB3C AFA70074 */   sw    $a3, 0x74($sp)
/* 0835B0 800FAB40 C7AE0054 */  lwc1  $f14, 0x54($sp)
/* 0835B4 800FAB44 C7A0004C */  lwc1  $f0, 0x4c($sp)
/* 0835B8 800FAB48 460E7482 */  mul.s $f18, $f14, $f14
/* 0835BC 800FAB4C 00000000 */  nop   
/* 0835C0 800FAB50 46000102 */  mul.s $f4, $f0, $f0
/* 0835C4 800FAB54 0C00CAC8 */  jal   sqrtf
/* 0835C8 800FAB58 46049300 */   add.s $f12, $f18, $f4
/* 0835CC 800FAB5C 46000306 */  mov.s $f12, $f0
/* 0835D0 800FAB60 0C0061C3 */  jal   atan2f
/* 0835D4 800FAB64 C7AE0050 */   lwc1  $f14, 0x50($sp)
/* 0835D8 800FAB68 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 0835DC 800FAB6C 44818000 */  mtc1  $at, $f16
/* 0835E0 800FAB70 3C018013 */  lui   $at, %hi(D_8012880C) # $at, 0x8013
/* 0835E4 800FAB74 C426880C */  lwc1  $f6, %lo(D_8012880C)($at)
/* 0835E8 800FAB78 8FA70074 */  lw    $a3, 0x74($sp)
/* 0835EC 800FAB7C 240C0001 */  li    $t4, 1
/* 0835F0 800FAB80 46060203 */  div.s $f8, $f0, $f6
/* 0835F4 800FAB84 C4EE0038 */  lwc1  $f14, 0x38($a3)
/* 0835F8 800FAB88 27A5004C */  addiu $a1, $sp, 0x4c
/* 0835FC 800FAB8C 27A60040 */  addiu $a2, $sp, 0x40
/* 083600 800FAB90 46104282 */  mul.s $f10, $f8, $f16
/* 083604 800FAB94 460A8301 */  sub.s $f12, $f16, $f10
/* 083608 800FAB98 460E603C */  c.lt.s $f12, $f14
/* 08360C 800FAB9C 00000000 */  nop   
/* 083610 800FABA0 45020004 */  bc1fl .L800FABB4_ovl2
/* 083614 800FABA4 C4E0003C */   lwc1  $f0, 0x3c($a3)
/* 083618 800FABA8 46007306 */  mov.s $f12, $f14
/* 08361C 800FABAC AFAC0064 */  sw    $t4, 0x64($sp)
/* 083620 800FABB0 C4E0003C */  lwc1  $f0, 0x3c($a3)
.L800FABB4_ovl2:
/* 083624 800FABB4 8FAD0064 */  lw    $t5, 0x64($sp)
/* 083628 800FABB8 460C003C */  c.lt.s $f0, $f12
/* 08362C 800FABBC 35AE0002 */  ori   $t6, $t5, 2
/* 083630 800FABC0 45020004 */  bc1fl .L800FABD4_ovl2
/* 083634 800FABC4 8FAF0064 */   lw    $t7, 0x64($sp)
/* 083638 800FABC8 46000306 */  mov.s $f12, $f0
/* 08363C 800FABCC AFAE0064 */  sw    $t6, 0x64($sp)
/* 083640 800FABD0 8FAF0064 */  lw    $t7, 0x64($sp)
.L800FABD4_ovl2:
/* 083644 800FABD4 51E00023 */  beql  $t7, $zero, .L800FAC64_ovl2
/* 083648 800FABD8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 08364C 800FABDC 44809000 */  mtc1  $zero, $f18
/* 083650 800FABE0 8FA4006C */  lw    $a0, 0x6c($sp)
/* 083654 800FABE4 E7AC0038 */  swc1  $f12, 0x38($sp)
/* 083658 800FABE8 E7B20050 */  swc1  $f18, 0x50($sp)
/* 08365C 800FABEC 0C0065D0 */  jal   vec3_normalized_cross_product
/* 083660 800FABF0 24840054 */   addiu $a0, $a0, 0x54
/* 083664 800FABF4 3C0142B4 */  li    $at, 0x42B40000 # 90.000000
/* 083668 800FABF8 C7AC0038 */  lwc1  $f12, 0x38($sp)
/* 08366C 800FABFC 44812000 */  mtc1  $at, $f4
/* 083670 800FAC00 3C018013 */  lui   $at, %hi(D_80128810) # $at, 0x8013
/* 083674 800FAC04 C4288810 */  lwc1  $f8, %lo(D_80128810)($at)
/* 083678 800FAC08 46046181 */  sub.s $f6, $f12, $f4
/* 08367C 800FAC0C 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 083680 800FAC10 44819000 */  mtc1  $at, $f18
/* 083684 800FAC14 27A4004C */  addiu $a0, $sp, 0x4c
/* 083688 800FAC18 46083282 */  mul.s $f10, $f6, $f8
/* 08368C 800FAC1C 27A50040 */  addiu $a1, $sp, 0x40
/* 083690 800FAC20 46125103 */  div.s $f4, $f10, $f18
/* 083694 800FAC24 44062000 */  mfc1  $a2, $f4
/* 083698 800FAC28 0C00647E */  jal   func_800191F8_ovl2
/* 08369C 800FAC2C 00000000 */   nop   
/* 0836A0 800FAC30 C6060024 */  lwc1  $f6, 0x24($s0)
/* 0836A4 800FAC34 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 0836A8 800FAC38 C6120028 */  lwc1  $f18, 0x28($s0)
/* 0836AC 800FAC3C 46083280 */  add.s $f10, $f6, $f8
/* 0836B0 800FAC40 C608002C */  lwc1  $f8, 0x2c($s0)
/* 0836B4 800FAC44 E60A0018 */  swc1  $f10, 0x18($s0)
/* 0836B8 800FAC48 C7A40050 */  lwc1  $f4, 0x50($sp)
/* 0836BC 800FAC4C 46049181 */  sub.s $f6, $f18, $f4
/* 0836C0 800FAC50 E606001C */  swc1  $f6, 0x1c($s0)
/* 0836C4 800FAC54 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 0836C8 800FAC58 460A4480 */  add.s $f18, $f8, $f10
/* 0836CC 800FAC5C E6120020 */  swc1  $f18, 0x20($s0)
.L800FAC60_ovl2:
/* 0836D0 800FAC60 8FBF001C */  lw    $ra, 0x1c($sp)
.L800FAC64_ovl2:
/* 0836D4 800FAC64 8FB00018 */  lw    $s0, 0x18($sp)
/* 0836D8 800FAC68 27BD0070 */  addiu $sp, $sp, 0x70
/* 0836DC 800FAC6C 03E00008 */  jr    $ra
/* 0836E0 800FAC70 00000000 */   nop   
