glabel func_80109504
/* 091F74 80109504 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 091F78 80109508 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 091F7C 8010950C 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 091F80 80109510 AFBF001C */  sw    $ra, 0x1c($sp)
/* 091F84 80109514 AFB10018 */  sw    $s1, 0x18($sp)
/* 091F88 80109518 AFB00014 */  sw    $s0, 0x14($sp)
/* 091F8C 8010951C C4840004 */  lwc1  $f4, 4($a0)
/* 091F90 80109520 C466000C */  lwc1  $f6, 0xc($v1)
/* 091F94 80109524 8CA20018 */  lw    $v0, 0x18($a1)
/* 091F98 80109528 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 091F9C 8010952C 46062200 */  add.s $f8, $f4, $f6
/* 091FA0 80109530 C4660010 */  lwc1  $f6, 0x10($v1)
/* 091FA4 80109534 00808025 */  move  $s0, $a0
/* 091FA8 80109538 00A08825 */  move  $s1, $a1
/* 091FAC 8010953C E7A80038 */  swc1  $f8, 0x38($sp)
/* 091FB0 80109540 C4900010 */  lwc1  $f16, 0x10($a0)
/* 091FB4 80109544 C48A0008 */  lwc1  $f10, 8($a0)
/* 091FB8 80109548 27A60038 */  addiu $a2, $sp, 0x38
/* 091FBC 8010954C 27A70020 */  addiu $a3, $sp, 0x20
/* 091FC0 80109550 46105480 */  add.s $f18, $f10, $f16
/* 091FC4 80109554 C4700004 */  lwc1  $f16, 4($v1)
/* 091FC8 80109558 E7B2003C */  swc1  $f18, 0x3c($sp)
/* 091FCC 8010955C C484000C */  lwc1  $f4, 0xc($a0)
/* 091FD0 80109560 46062200 */  add.s $f8, $f4, $f6
/* 091FD4 80109564 C4660008 */  lwc1  $f6, 8($v1)
/* 091FD8 80109568 E7A80040 */  swc1  $f8, 0x40($sp)
/* 091FDC 8010956C C48A0004 */  lwc1  $f10, 4($a0)
/* 091FE0 80109570 46105480 */  add.s $f18, $f10, $f16
/* 091FE4 80109574 44815000 */  mtc1  $at, $f10
/* 091FE8 80109578 E7B2002C */  swc1  $f18, 0x2c($sp)
/* 091FEC 8010957C C484000C */  lwc1  $f4, 0xc($a0)
/* 091FF0 80109580 C7B20038 */  lwc1  $f18, 0x38($sp)
/* 091FF4 80109584 46062200 */  add.s $f8, $f4, $f6
/* 091FF8 80109588 C7A4002C */  lwc1  $f4, 0x2c($sp)
/* 091FFC 8010958C E7A80034 */  swc1  $f8, 0x34($sp)
/* 092000 80109590 C4500004 */  lwc1  $f16, 4($v0)
/* 092004 80109594 46049181 */  sub.s $f6, $f18, $f4
/* 092008 80109598 C7B20034 */  lwc1  $f18, 0x34($sp)
/* 09200C 8010959C C4480000 */  lwc1  $f8, ($v0)
/* 092010 801095A0 46105003 */  div.s $f0, $f10, $f16
/* 092014 801095A4 C7B00040 */  lwc1  $f16, 0x40($sp)
/* 092018 801095A8 46064282 */  mul.s $f10, $f8, $f6
/* 09201C 801095AC 46128101 */  sub.s $f4, $f16, $f18
/* 092020 801095B0 C4480008 */  lwc1  $f8, 8($v0)
/* 092024 801095B4 46044182 */  mul.s $f6, $f8, $f4
/* 092028 801095B8 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 09202C 801095BC 46003402 */  mul.s $f16, $f6, $f0
/* 092030 801095C0 46105480 */  add.s $f18, $f10, $f16
/* 092034 801095C4 46089100 */  add.s $f4, $f18, $f8
/* 092038 801095C8 E7A40030 */  swc1  $f4, 0x30($sp)
/* 09203C 801095CC 8CA40030 */  lw    $a0, 0x30($a1)
/* 092040 801095D0 E7A00044 */  swc1  $f0, 0x44($sp)
/* 092044 801095D4 27A5002C */  addiu $a1, $sp, 0x2c
/* 092048 801095D8 0C0415F1 */  jal   func_801057C4
/* 09204C 801095DC AFA2004C */   sw    $v0, 0x4c($sp)
/* 092050 801095E0 C7A60038 */  lwc1  $f6, 0x38($sp)
/* 092054 801095E4 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 092058 801095E8 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 09205C 801095EC 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 092060 801095F0 460A3401 */  sub.s $f16, $f6, $f10
/* 092064 801095F4 C7A60028 */  lwc1  $f6, 0x28($sp)
/* 092068 801095F8 C472001C */  lwc1  $f18, 0x1c($v1)
/* 09206C 801095FC C7A40040 */  lwc1  $f4, 0x40($sp)
/* 092070 80109600 8FA2004C */  lw    $v0, 0x4c($sp)
/* 092074 80109604 46128202 */  mul.s $f8, $f16, $f18
/* 092078 80109608 46062281 */  sub.s $f10, $f4, $f6
/* 09207C 8010960C C4700020 */  lwc1  $f16, 0x20($v1)
/* 092080 80109610 44803000 */  mtc1  $zero, $f6
/* 092084 80109614 C7A00044 */  lwc1  $f0, 0x44($sp)
/* 092088 80109618 46105482 */  mul.s $f18, $f10, $f16
/* 09208C 8010961C C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 092090 80109620 46124100 */  add.s $f4, $f8, $f18
/* 092094 80109624 4606203C */  c.lt.s $f4, $f6
/* 092098 80109628 00000000 */  nop   
/* 09209C 8010962C 4502000B */  bc1fl .L8010965C_ovl2
/* 0920A0 80109630 C470002C */   lwc1  $f16, 0x2c($v1)
/* 0920A4 80109634 8E2E0000 */  lw    $t6, ($s1)
/* 0920A8 80109638 962A0000 */  lhu   $t2, ($s1)
/* 0920AC 8010963C 000E7CC2 */  srl   $t7, $t6, 0x13
/* 0920B0 80109640 31F9FFC7 */  andi  $t9, $t7, 0xffc7
/* 0920B4 80109644 001948C0 */  sll   $t1, $t9, 3
/* 0920B8 80109648 314B0007 */  andi  $t3, $t2, 7
/* 0920BC 8010964C 012B6025 */  or    $t4, $t1, $t3
/* 0920C0 80109650 10000022 */  b     .L801096DC_ovl2
/* 0920C4 80109654 A62C0000 */   sh    $t4, ($s1)
/* 0920C8 80109658 C470002C */  lwc1  $f16, 0x2c($v1)
.L8010965C_ovl2:
/* 0920CC 8010965C 3C018013 */  lui   $at, %hi(D_80128AA4) # $at, 0x8013
/* 0920D0 80109660 46105201 */  sub.s $f8, $f10, $f16
/* 0920D4 80109664 E6080004 */  swc1  $f8, 4($s0)
/* 0920D8 80109668 C4640030 */  lwc1  $f4, 0x30($v1)
/* 0920DC 8010966C C7B20028 */  lwc1  $f18, 0x28($sp)
/* 0920E0 80109670 C6100004 */  lwc1  $f16, 4($s0)
/* 0920E4 80109674 46049181 */  sub.s $f6, $f18, $f4
/* 0920E8 80109678 E606000C */  swc1  $f6, 0xc($s0)
/* 0920EC 8010967C C44A0000 */  lwc1  $f10, ($v0)
/* 0920F0 80109680 C604000C */  lwc1  $f4, 0xc($s0)
/* 0920F4 80109684 C4520008 */  lwc1  $f18, 8($v0)
/* 0920F8 80109688 46105202 */  mul.s $f8, $f10, $f16
/* 0920FC 8010968C C450000C */  lwc1  $f16, 0xc($v0)
/* 092100 80109690 46049182 */  mul.s $f6, $f18, $f4
/* 092104 80109694 46064280 */  add.s $f10, $f8, $f6
/* 092108 80109698 C6060014 */  lwc1  $f6, 0x14($s0)
/* 09210C 8010969C 46105480 */  add.s $f18, $f10, $f16
/* 092110 801096A0 C4308AA4 */  lwc1  $f16, %lo(D_80128AA4)($at)
/* 092114 801096A4 46009107 */  neg.s $f4, $f18
/* 092118 801096A8 46002202 */  mul.s $f8, $f4, $f0
/* 09211C 801096AC 46064281 */  sub.s $f10, $f8, $f6
/* 092120 801096B0 46105481 */  sub.s $f18, $f10, $f16
/* 092124 801096B4 E6120008 */  swc1  $f18, 8($s0)
/* 092128 801096B8 8E2D0000 */  lw    $t5, ($s1)
/* 09212C 801096BC 96290000 */  lhu   $t1, ($s1)
/* 092130 801096C0 000D74C2 */  srl   $t6, $t5, 0x13
/* 092134 801096C4 31CFFFC7 */  andi  $t7, $t6, 0xffc7
/* 092138 801096C8 35F90008 */  ori   $t9, $t7, 8
/* 09213C 801096CC 001950C0 */  sll   $t2, $t9, 3
/* 092140 801096D0 312B0007 */  andi  $t3, $t1, 7
/* 092144 801096D4 014B6025 */  or    $t4, $t2, $t3
/* 092148 801096D8 A62C0000 */  sh    $t4, ($s1)
.L801096DC_ovl2:
/* 09214C 801096DC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 092150 801096E0 8FB00014 */  lw    $s0, 0x14($sp)
/* 092154 801096E4 8FB10018 */  lw    $s1, 0x18($sp)
/* 092158 801096E8 03E00008 */  jr    $ra
/* 09215C 801096EC 27BD0050 */   addiu $sp, $sp, 0x50
.type func_80109504, @function
.size func_80109504, . - func_80109504
