glabel func_8022C3BC_ovl19
/* 24CACC 8022C3BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 24CAD0 8022C3C0 AFB00018 */  sw         $s0, 0x18($sp)
/* 24CAD4 8022C3C4 3C108013 */  lui        $s0, %hi(gKirbyState)
/* 24CAD8 8022C3C8 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 24CADC 8022C3CC 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
/* 24CAE0 8022C3D0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 24CAE4 8022C3D4 44816000 */  mtc1       $at, $f12
/* 24CAE8 8022C3D8 AFA40020 */  sw         $a0, 0x20($sp)
/* 24CAEC 8022C3DC 0C02BB30 */  jal        func_800AECC0
/* 24CAF0 8022C3E0 AE000030 */   sw        $zero, 0x30($s0)
/* 24CAF4 8022C3E4 3C014080 */  lui        $at, (0x40800000 >> 16)
/* 24CAF8 8022C3E8 44816000 */  mtc1       $at, $f12
/* 24CAFC 8022C3EC 0C02BB48 */  jal        func_800AED20
/* 24CB00 8022C3F0 00000000 */   nop
/* 24CB04 8022C3F4 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 24CB08 8022C3F8 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 24CB0C 8022C3FC 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 24CB10 8022C400 240E000B */  addiu      $t6, $zero, 0xB
/* 24CB14 8022C404 8C4F0000 */  lw         $t7, 0x0($v0)
/* 24CB18 8022C408 3C198019 */  lui        $t9, %hi(D_80192F64)
/* 24CB1C 8022C40C 27392F64 */  addiu      $t9, $t9, %lo(D_80192F64)
/* 24CB20 8022C410 000FC080 */  sll        $t8, $t7, 2
/* 24CB24 8022C414 00380821 */  addu       $at, $at, $t8
/* 24CB28 8022C418 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 24CB2C 8022C41C 8C480000 */  lw         $t0, 0x0($v0)
/* 24CB30 8022C420 3C01800E */  lui        $at, %hi(D_800E0490)
/* 24CB34 8022C424 3C0A8019 */  lui        $t2, %hi(D_801923DC)
/* 24CB38 8022C428 00084880 */  sll        $t1, $t0, 2
/* 24CB3C 8022C42C 00290821 */  addu       $at, $at, $t1
/* 24CB40 8022C430 AC390490 */  sw         $t9, %lo(D_800E0490)($at)
/* 24CB44 8022C434 254A23DC */  addiu      $t2, $t2, %lo(D_801923DC)
/* 24CB48 8022C438 AE0A015C */  sw         $t2, 0x15C($s0)
/* 24CB4C 8022C43C 0C04783A */  jal        func_8011E0E8
/* 24CB50 8022C440 A2000007 */   sb        $zero, 0x7($s0)
/* 24CB54 8022C444 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 24CB58 8022C448 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 24CB5C 8022C44C 44802000 */  mtc1       $zero, $f4
/* 24CB60 8022C450 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* 24CB64 8022C454 8D6C0000 */  lw         $t4, 0x0($t3)
/* 24CB68 8022C458 240F0001 */  addiu      $t7, $zero, 0x1
/* 24CB6C 8022C45C 24040046 */  addiu      $a0, $zero, 0x46
/* 24CB70 8022C460 000C6880 */  sll        $t5, $t4, 2
/* 24CB74 8022C464 002D0821 */  addu       $at, $at, $t5
/* 24CB78 8022C468 E4244010 */  swc1       $f4, %lo(gEntitiesAngleXArray)($at)
/* 24CB7C 8022C46C 0C029D9E */  jal        play_sound
/* 24CB80 8022C470 A60F0068 */   sh        $t7, 0x68($s0)
/* 24CB84 8022C474 8E030140 */  lw         $v1, 0x140($s0)
/* 24CB88 8022C478 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 24CB8C 8022C47C 00002025 */  or         $a0, $zero, $zero
/* 24CB90 8022C480 10600003 */  beqz       $v1, .L8022C490_ovl19
/* 24CB94 8022C484 00000000 */   nop
/* 24CB98 8022C488 1000000B */  b          .L8022C4B8_ovl19
/* 24CB9C 8022C48C A60300D4 */   sh        $v1, 0xD4($s0)
.L8022C490_ovl19:
/* 24CBA0 8022C490 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 24CBA4 8022C494 3C09800F */  lui        $t1, %hi(D_800E83E0)
/* 24CBA8 8022C498 3C0100FF */  lui        $at, (0xFF0000 >> 16)
/* 24CBAC 8022C49C 8F080000 */  lw         $t0, 0x0($t8)
/* 24CBB0 8022C4A0 0008C880 */  sll        $t9, $t0, 2
/* 24CBB4 8022C4A4 01394821 */  addu       $t1, $t1, $t9
/* 24CBB8 8022C4A8 8D2983E0 */  lw         $t1, %lo(D_800E83E0)($t1)
/* 24CBBC 8022C4AC 01215024 */  and        $t2, $t1, $at
/* 24CBC0 8022C4B0 000A5C03 */  sra        $t3, $t2, 16
/* 24CBC4 8022C4B4 A60B00D4 */  sh         $t3, 0xD4($s0)
.L8022C4B8_ovl19:
/* 24CBC8 8022C4B8 0C02ED1A */  jal        func_800BB468
/* 24CBCC 8022C4BC 00002825 */   or        $a1, $zero, $zero
/* 24CBD0 8022C4C0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 24CBD4 8022C4C4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 24CBD8 8022C4C8 3C0C800F */  lui        $t4, %hi(D_800E83E0)
/* 24CBDC 8022C4CC 3C05800E */  lui        $a1, %hi(D_800E3750)
/* 24CBE0 8022C4D0 8C430000 */  lw         $v1, 0x0($v0)
/* 24CBE4 8022C4D4 00031880 */  sll        $v1, $v1, 2
/* 24CBE8 8022C4D8 01836021 */  addu       $t4, $t4, $v1
/* 24CBEC 8022C4DC 8D8C83E0 */  lw         $t4, %lo(D_800E83E0)($t4)
/* 24CBF0 8022C4E0 51800073 */  beql       $t4, $zero, .L8022C6B0_ovl19
/* 24CBF4 8022C4E4 44809000 */   mtc1      $zero, $f18
/* 24CBF8 8022C4E8 860D00D4 */  lh         $t5, 0xD4($s0)
/* 24CBFC 8022C4EC 29A10002 */  slti       $at, $t5, 0x2
/* 24CC00 8022C4F0 5020006F */  beql       $at, $zero, .L8022C6B0_ovl19
/* 24CC04 8022C4F4 44809000 */   mtc1      $zero, $f18
/* 24CC08 8022C4F8 44803000 */  mtc1       $zero, $f6
/* 24CC0C 8022C4FC 3C01800E */  lui        $at, %hi(D_800E3750)
/* 24CC10 8022C500 00230821 */  addu       $at, $at, $v1
/* 24CC14 8022C504 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
/* 24CC18 8022C508 8C430000 */  lw         $v1, 0x0($v0)
/* 24CC1C 8022C50C 3C01800E */  lui        $at, %hi(D_800E3750)
/* 24CC20 8022C510 3C050002 */  lui        $a1, (0x20069 >> 16)
/* 24CC24 8022C514 00031880 */  sll        $v1, $v1, 2
/* 24CC28 8022C518 00230821 */  addu       $at, $at, $v1
/* 24CC2C 8022C51C C4283750 */  lwc1       $f8, %lo(D_800E3750)($at)
/* 24CC30 8022C520 3C01800E */  lui        $at, %hi(D_800E3210)
/* 24CC34 8022C524 00230821 */  addu       $at, $at, $v1
/* 24CC38 8022C528 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* 24CC3C 8022C52C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 24CC40 8022C530 3C018023 */  lui        $at, %hi(D_8022F9F4_ovl19)
/* 24CC44 8022C534 C42AF9F4 */  lwc1       $f10, %lo(D_8022F9F4_ovl19)($at)
/* 24CC48 8022C538 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 24CC4C 8022C53C 000F7080 */  sll        $t6, $t7, 2
/* 24CC50 8022C540 002E0821 */  addu       $at, $at, $t6
/* 24CC54 8022C544 E42A3C90 */  swc1       $f10, %lo(D_800E3C90)($at)
/* 24CC58 8022C548 92040006 */  lbu        $a0, 0x6($s0)
/* 24CC5C 8022C54C 2401000B */  addiu      $at, $zero, 0xB
/* 24CC60 8022C550 34A50069 */  ori        $a1, $a1, (0x20069 & 0xFFFF)
/* 24CC64 8022C554 10810003 */  beq        $a0, $at, .L8022C564_ovl19
/* 24CC68 8022C558 3C064040 */   lui       $a2, (0x40400000 >> 16)
/* 24CC6C 8022C55C 2401000A */  addiu      $at, $zero, 0xA
/* 24CC70 8022C560 14810005 */  bne        $a0, $at, .L8022C578_ovl19
.L8022C564_ovl19:
/* 24CC74 8022C564 3C040002 */   lui       $a0, (0x2037A >> 16)
/* 24CC78 8022C568 0C02A9E3 */  jal        func_800AA78C
/* 24CC7C 8022C56C 3484037A */   ori       $a0, $a0, (0x2037A & 0xFFFF)
/* 24CC80 8022C570 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 24CC84 8022C574 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
.L8022C578_ovl19:
/* 24CC88 8022C578 8C580000 */  lw         $t8, 0x0($v0)
/* 24CC8C 8022C57C 3C19800E */  lui        $t9, %hi(D_800DFBD0)
/* 24CC90 8022C580 00184080 */  sll        $t0, $t8, 2
/* 24CC94 8022C584 0328C821 */  addu       $t9, $t9, $t0
/* 24CC98 8022C588 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
/* 24CC9C 8022C58C 0C048A84 */  jal        func_80122A10
/* 24CCA0 8022C590 8F240008 */   lw        $a0, 0x8($t9)
/* 24CCA4 8022C594 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 24CCA8 8022C598 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 24CCAC 8022C59C 3C09800F */  lui        $t1, %hi(D_800E83E0 + 0x1C0)
/* 24CCB0 8022C5A0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 24CCB4 8022C5A4 8C430000 */  lw         $v1, 0x0($v0)
/* 24CCB8 8022C5A8 44818000 */  mtc1       $at, $f16
/* 24CCBC 8022C5AC 44806000 */  mtc1       $zero, $f12
/* 24CCC0 8022C5B0 00031880 */  sll        $v1, $v1, 2
/* 24CCC4 8022C5B4 01234821 */  addu       $t1, $t1, $v1
/* 24CCC8 8022C5B8 8D2985A0 */  lw         $t1, %lo(D_800E83E0 + 0x1C0)($t1)
/* 24CCCC 8022C5BC 3C040002 */  lui        $a0, (0x2037A >> 16)
/* 24CCD0 8022C5C0 3C050002 */  lui        $a1, (0x2037B >> 16)
/* 24CCD4 8022C5C4 44899000 */  mtc1       $t1, $f18
/* 24CCD8 8022C5C8 3C01C100 */  lui        $at, (0xC1000000 >> 16)
/* 24CCDC 8022C5CC 34A5037B */  ori        $a1, $a1, (0x2037B & 0xFFFF)
/* 24CCE0 8022C5D0 46809120 */  cvt.s.w    $f4, $f18
/* 24CCE4 8022C5D4 3484037A */  ori        $a0, $a0, (0x2037A & 0xFFFF)
/* 24CCE8 8022C5D8 46048032 */  c.eq.s     $f16, $f4
/* 24CCEC 8022C5DC 00000000 */  nop
/* 24CCF0 8022C5E0 45020007 */  bc1fl      .L8022C600_ovl19
/* 24CCF4 8022C5E4 44810000 */   mtc1      $at, $f0
/* 24CCF8 8022C5E8 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 24CCFC 8022C5EC 44810000 */  mtc1       $at, $f0
/* 24CD00 8022C5F0 3C018023 */  lui        $at, %hi(D_8022F9F8_ovl19)
/* 24CD04 8022C5F4 10000004 */  b          .L8022C608_ovl19
/* 24CD08 8022C5F8 C422F9F8 */   lwc1      $f2, %lo(D_8022F9F8_ovl19)($at)
/* 24CD0C 8022C5FC 44810000 */  mtc1       $at, $f0
.L8022C600_ovl19:
/* 24CD10 8022C600 3C018023 */  lui        $at, %hi(D_8022F9FC_ovl19)
/* 24CD14 8022C604 C422F9FC */  lwc1       $f2, %lo(D_8022F9FC_ovl19)($at)
.L8022C608_ovl19:
/* 24CD18 8022C608 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24CD1C 8022C60C 00230821 */  addu       $at, $at, $v1
/* 24CD20 8022C610 E42064D0 */  swc1       $f0, %lo(D_800E64D0)($at)
/* 24CD24 8022C614 8C4A0000 */  lw         $t2, 0x0($v0)
/* 24CD28 8022C618 460C003C */  c.lt.s     $f0, $f12
/* 24CD2C 8022C61C 3C01800E */  lui        $at, %hi(D_800E6690)
/* 24CD30 8022C620 000A5880 */  sll        $t3, $t2, 2
/* 24CD34 8022C624 002B0821 */  addu       $at, $at, $t3
/* 24CD38 8022C628 45000008 */  bc1f       .L8022C64C_ovl19
/* 24CD3C 8022C62C E4226690 */   swc1      $f2, %lo(D_800E6690)($at)
/* 24CD40 8022C630 8C4C0000 */  lw         $t4, 0x0($v0)
/* 24CD44 8022C634 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24CD48 8022C638 46000187 */  neg.s      $f6, $f0
/* 24CD4C 8022C63C 000C6880 */  sll        $t5, $t4, 2
/* 24CD50 8022C640 002D0821 */  addu       $at, $at, $t5
/* 24CD54 8022C644 10000006 */  b          .L8022C660_ovl19
/* 24CD58 8022C648 E4266850 */   swc1      $f6, %lo(D_800E6850)($at)
.L8022C64C_ovl19:
/* 24CD5C 8022C64C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 24CD60 8022C650 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24CD64 8022C654 000F7080 */  sll        $t6, $t7, 2
/* 24CD68 8022C658 002E0821 */  addu       $at, $at, $t6
/* 24CD6C 8022C65C E4206850 */  swc1       $f0, %lo(D_800E6850)($at)
.L8022C660_ovl19:
/* 24CD70 8022C660 0C048C3A */  jal        func_801230E8
/* 24CD74 8022C664 24060001 */   addiu     $a2, $zero, 0x1
/* 24CD78 8022C668 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 24CD7C 8022C66C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 24CD80 8022C670 3C018023 */  lui        $at, %hi(D_8022FA00_ovl19)
/* 24CD84 8022C674 C428FA00 */  lwc1       $f8, %lo(D_8022FA00_ovl19)($at)
/* 24CD88 8022C678 8C580000 */  lw         $t8, 0x0($v0)
/* 24CD8C 8022C67C 3C01800E */  lui        $at, %hi(D_800E3750)
/* 24CD90 8022C680 00184080 */  sll        $t0, $t8, 2
/* 24CD94 8022C684 00280821 */  addu       $at, $at, $t0
/* 24CD98 8022C688 E4283750 */  swc1       $f8, %lo(D_800E3750)($at)
/* 24CD9C 8022C68C 8C590000 */  lw         $t9, 0x0($v0)
/* 24CDA0 8022C690 3C014180 */  lui        $at, (0x41800000 >> 16)
/* 24CDA4 8022C694 44815000 */  mtc1       $at, $f10
/* 24CDA8 8022C698 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 24CDAC 8022C69C 00194880 */  sll        $t1, $t9, 2
/* 24CDB0 8022C6A0 00290821 */  addu       $at, $at, $t1
/* 24CDB4 8022C6A4 1000007A */  b          .L8022C890_ovl19
/* 24CDB8 8022C6A8 E42A3C90 */   swc1      $f10, %lo(D_800E3C90)($at)
/* 24CDBC 8022C6AC 44809000 */  mtc1       $zero, $f18
.L8022C6B0_ovl19:
/* 24CDC0 8022C6B0 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* 24CDC4 8022C6B4 00A35021 */  addu       $t2, $a1, $v1
/* 24CDC8 8022C6B8 E5520000 */  swc1       $f18, 0x0($t2)
/* 24CDCC 8022C6BC 8C430000 */  lw         $v1, 0x0($v0)
/* 24CDD0 8022C6C0 3C01800E */  lui        $at, %hi(D_800E3210)
/* 24CDD4 8022C6C4 3C19800E */  lui        $t9, %hi(D_800DFBD0)
/* 24CDD8 8022C6C8 00031880 */  sll        $v1, $v1, 2
/* 24CDDC 8022C6CC 00A35821 */  addu       $t3, $a1, $v1
/* 24CDE0 8022C6D0 C5700000 */  lwc1       $f16, 0x0($t3)
/* 24CDE4 8022C6D4 00230821 */  addu       $at, $at, $v1
/* 24CDE8 8022C6D8 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
/* 24CDEC 8022C6DC 8C4C0000 */  lw         $t4, 0x0($v0)
/* 24CDF0 8022C6E0 3C018023 */  lui        $at, %hi(D_8022FA04_ovl19)
/* 24CDF4 8022C6E4 C424FA04 */  lwc1       $f4, %lo(D_8022FA04_ovl19)($at)
/* 24CDF8 8022C6E8 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 24CDFC 8022C6EC 000C6880 */  sll        $t5, $t4, 2
/* 24CE00 8022C6F0 002D0821 */  addu       $at, $at, $t5
/* 24CE04 8022C6F4 E4243C90 */  swc1       $f4, %lo(D_800E3C90)($at)
/* 24CE08 8022C6F8 8C4F0000 */  lw         $t7, 0x0($v0)
/* 24CE0C 8022C6FC 3C01800F */  lui        $at, %hi(D_800E8920)
/* 24CE10 8022C700 000F7080 */  sll        $t6, $t7, 2
/* 24CE14 8022C704 002E0821 */  addu       $at, $at, $t6
/* 24CE18 8022C708 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 24CE1C 8022C70C 8C580000 */  lw         $t8, 0x0($v0)
/* 24CE20 8022C710 00184080 */  sll        $t0, $t8, 2
/* 24CE24 8022C714 0328C821 */  addu       $t9, $t9, $t0
/* 24CE28 8022C718 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
/* 24CE2C 8022C71C 0C048A84 */  jal        func_80122A10
/* 24CE30 8022C720 8F240008 */   lw        $a0, 0x8($t9)
/* 24CE34 8022C724 8E030140 */  lw         $v1, 0x140($s0)
/* 24CE38 8022C728 3C014190 */  lui        $at, (0x41900000 >> 16)
/* 24CE3C 8022C72C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 24CE40 8022C730 00034BC0 */  sll        $t1, $v1, 15
/* 24CE44 8022C734 05230007 */  bgezl      $t1, .L8022C754_ovl19
/* 24CE48 8022C738 44811000 */   mtc1      $at, $f2
/* 24CE4C 8022C73C 3C014190 */  lui        $at, (0x41900000 >> 16)
/* 24CE50 8022C740 44811000 */  mtc1       $at, $f2
/* 24CE54 8022C744 44800000 */  mtc1       $zero, $f0
/* 24CE58 8022C748 10000004 */  b          .L8022C75C_ovl19
/* 24CE5C 8022C74C 00000000 */   nop
/* 24CE60 8022C750 44811000 */  mtc1       $at, $f2
.L8022C754_ovl19:
/* 24CE64 8022C754 00000000 */  nop
/* 24CE68 8022C758 46001006 */  mov.s      $f0, $f2
.L8022C75C_ovl19:
/* 24CE6C 8022C75C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 24CE70 8022C760 3C01800E */  lui        $at, %hi(D_800E3210)
/* 24CE74 8022C764 44806000 */  mtc1       $zero, $f12
/* 24CE78 8022C768 8C4A0000 */  lw         $t2, 0x0($v0)
/* 24CE7C 8022C76C 00034B40 */  sll        $t1, $v1, 13
/* 24CE80 8022C770 460C103C */  c.lt.s     $f2, $f12
/* 24CE84 8022C774 000A5880 */  sll        $t3, $t2, 2
/* 24CE88 8022C778 002B0821 */  addu       $at, $at, $t3
/* 24CE8C 8022C77C E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 24CE90 8022C780 8C4C0000 */  lw         $t4, 0x0($v0)
/* 24CE94 8022C784 3C018023 */  lui        $at, %hi(D_8022FA08_ovl19)
/* 24CE98 8022C788 C426FA08 */  lwc1       $f6, %lo(D_8022FA08_ovl19)($at)
/* 24CE9C 8022C78C 3C01800E */  lui        $at, %hi(D_800E3750)
/* 24CEA0 8022C790 000C6880 */  sll        $t5, $t4, 2
/* 24CEA4 8022C794 002D0821 */  addu       $at, $at, $t5
/* 24CEA8 8022C798 45000008 */  bc1f       .L8022C7BC_ovl19
/* 24CEAC 8022C79C E4263750 */   swc1      $f6, %lo(D_800E3750)($at)
/* 24CEB0 8022C7A0 8C4F0000 */  lw         $t7, 0x0($v0)
/* 24CEB4 8022C7A4 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 24CEB8 8022C7A8 46001207 */  neg.s      $f8, $f2
/* 24CEBC 8022C7AC 000F7080 */  sll        $t6, $t7, 2
/* 24CEC0 8022C7B0 002E0821 */  addu       $at, $at, $t6
/* 24CEC4 8022C7B4 10000006 */  b          .L8022C7D0_ovl19
/* 24CEC8 8022C7B8 E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
.L8022C7BC_ovl19:
/* 24CECC 8022C7BC 8C580000 */  lw         $t8, 0x0($v0)
/* 24CED0 8022C7C0 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 24CED4 8022C7C4 00184080 */  sll        $t0, $t8, 2
/* 24CED8 8022C7C8 00280821 */  addu       $at, $at, $t0
/* 24CEDC 8022C7CC E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
.L8022C7D0_ovl19:
/* 24CEE0 8022C7D0 3C01000C */  lui        $at, (0xC0000 >> 16)
/* 24CEE4 8022C7D4 0061C824 */  and        $t9, $v1, $at
/* 24CEE8 8022C7D8 13200023 */  beqz       $t9, .L8022C868_ovl19
/* 24CEEC 8022C7DC 00000000 */   nop
/* 24CEF0 8022C7E0 05210005 */  bgez       $t1, .L8022C7F8_ovl19
/* 24CEF4 8022C7E4 3C0140A0 */   lui       $at, (0x40A00000 >> 16)
/* 24CEF8 8022C7E8 3C01C0A0 */  lui        $at, (0xC0A00000 >> 16)
/* 24CEFC 8022C7EC 44810000 */  mtc1       $at, $f0
/* 24CF00 8022C7F0 10000004 */  b          .L8022C804_ovl19
/* 24CF04 8022C7F4 8C4A0000 */   lw        $t2, 0x0($v0)
.L8022C7F8_ovl19:
/* 24CF08 8022C7F8 44810000 */  mtc1       $at, $f0
/* 24CF0C 8022C7FC 00000000 */  nop
/* 24CF10 8022C800 8C4A0000 */  lw         $t2, 0x0($v0)
.L8022C804_ovl19:
/* 24CF14 8022C804 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24CF18 8022C808 460C003C */  c.lt.s     $f0, $f12
/* 24CF1C 8022C80C 000A5880 */  sll        $t3, $t2, 2
/* 24CF20 8022C810 002B0821 */  addu       $at, $at, $t3
/* 24CF24 8022C814 E42064D0 */  swc1       $f0, %lo(D_800E64D0)($at)
/* 24CF28 8022C818 8C4C0000 */  lw         $t4, 0x0($v0)
/* 24CF2C 8022C81C 44805000 */  mtc1       $zero, $f10
/* 24CF30 8022C820 3C01800E */  lui        $at, %hi(D_800E6690)
/* 24CF34 8022C824 000C6880 */  sll        $t5, $t4, 2
/* 24CF38 8022C828 002D0821 */  addu       $at, $at, $t5
/* 24CF3C 8022C82C 45000008 */  bc1f       .L8022C850_ovl19
/* 24CF40 8022C830 E42A6690 */   swc1      $f10, %lo(D_800E6690)($at)
/* 24CF44 8022C834 8C4F0000 */  lw         $t7, 0x0($v0)
/* 24CF48 8022C838 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24CF4C 8022C83C 46000487 */  neg.s      $f18, $f0
/* 24CF50 8022C840 000F7080 */  sll        $t6, $t7, 2
/* 24CF54 8022C844 002E0821 */  addu       $at, $at, $t6
/* 24CF58 8022C848 10000009 */  b          .L8022C870_ovl19
/* 24CF5C 8022C84C E4326850 */   swc1      $f18, %lo(D_800E6850)($at)
.L8022C850_ovl19:
/* 24CF60 8022C850 8C580000 */  lw         $t8, 0x0($v0)
/* 24CF64 8022C854 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24CF68 8022C858 00184080 */  sll        $t0, $t8, 2
/* 24CF6C 8022C85C 00280821 */  addu       $at, $at, $t0
/* 24CF70 8022C860 10000003 */  b          .L8022C870_ovl19
/* 24CF74 8022C864 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
.L8022C868_ovl19:
/* 24CF78 8022C868 0C04828A */  jal        func_80120A28
/* 24CF7C 8022C86C 00000000 */   nop
.L8022C870_ovl19:
/* 24CF80 8022C870 3C040002 */  lui        $a0, (0x2037A >> 16)
/* 24CF84 8022C874 3C050002 */  lui        $a1, (0x2037B >> 16)
/* 24CF88 8022C878 34A5037B */  ori        $a1, $a1, (0x2037B & 0xFFFF)
/* 24CF8C 8022C87C 3484037A */  ori        $a0, $a0, (0x2037A & 0xFFFF)
/* 24CF90 8022C880 0C048C3A */  jal        func_801230E8
/* 24CF94 8022C884 24060001 */   addiu     $a2, $zero, 0x1
/* 24CF98 8022C888 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 24CF9C 8022C88C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
.L8022C890_ovl19:
/* 24CFA0 8022C890 8C590000 */  lw         $t9, 0x0($v0)
/* 24CFA4 8022C894 44808000 */  mtc1       $zero, $f16
/* 24CFA8 8022C898 3C04800E */  lui        $a0, %hi(D_800E6690)
/* 24CFAC 8022C89C 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
/* 24CFB0 8022C8A0 00194880 */  sll        $t1, $t9, 2
/* 24CFB4 8022C8A4 00895021 */  addu       $t2, $a0, $t1
/* 24CFB8 8022C8A8 E5500000 */  swc1       $f16, 0x0($t2)
/* 24CFBC 8022C8AC 8C430000 */  lw         $v1, 0x0($v0)
/* 24CFC0 8022C8B0 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24CFC4 8022C8B4 00031880 */  sll        $v1, $v1, 2
/* 24CFC8 8022C8B8 00835821 */  addu       $t3, $a0, $v1
/* 24CFCC 8022C8BC C5640000 */  lwc1       $f4, 0x0($t3)
/* 24CFD0 8022C8C0 00230821 */  addu       $at, $at, $v1
/* 24CFD4 8022C8C4 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* 24CFD8 8022C8C8 8C4C0000 */  lw         $t4, 0x0($v0)
/* 24CFDC 8022C8CC 3C018023 */  lui        $at, %hi(D_8022FA0C_ovl19)
/* 24CFE0 8022C8D0 C426FA0C */  lwc1       $f6, %lo(D_8022FA0C_ovl19)($at)
/* 24CFE4 8022C8D4 3C01800E */  lui        $at, %hi(D_800E6850)
/* 24CFE8 8022C8D8 000C6880 */  sll        $t5, $t4, 2
/* 24CFEC 8022C8DC 002D0821 */  addu       $at, $at, $t5
/* 24CFF0 8022C8E0 E4266850 */  swc1       $f6, %lo(D_800E6850)($at)
/* 24CFF4 8022C8E4 8E0F0030 */  lw         $t7, 0x30($s0)
/* 24CFF8 8022C8E8 A6000068 */  sh         $zero, 0x68($s0)
/* 24CFFC 8022C8EC 25EE0001 */  addiu      $t6, $t7, 0x1
/* 24D000 8022C8F0 0C02BE85 */  jal        func_800AFA14
/* 24D004 8022C8F4 AE0E0030 */   sw        $t6, 0x30($s0)
/* 24D008 8022C8F8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 24D00C 8022C8FC 8FB00018 */  lw         $s0, 0x18($sp)
/* 24D010 8022C900 27BD0020 */  addiu      $sp, $sp, 0x20
/* 24D014 8022C904 03E00008 */  jr         $ra
/* 24D018 8022C908 00000000 */   nop
