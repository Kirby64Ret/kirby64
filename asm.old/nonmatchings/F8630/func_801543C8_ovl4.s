glabel func_801543C8_ovl6
/* FB8F8 801543C8 27BDFF78 */  addiu      $sp, $sp, -0x88
/* FB8FC 801543CC AFB30044 */  sw         $s3, 0x44($sp)
/* FB900 801543D0 3C138005 */  lui        $s3, %hi(D_8004A7C4)
/* FB904 801543D4 2673A7C4 */  addiu      $s3, $s3, %lo(D_8004A7C4)
/* FB908 801543D8 8E6F0000 */  lw         $t7, 0x0($s3)
/* FB90C 801543DC AFBF005C */  sw         $ra, 0x5C($sp)
/* FB910 801543E0 AFBE0058 */  sw         $fp, 0x58($sp)
/* FB914 801543E4 AFB70054 */  sw         $s7, 0x54($sp)
/* FB918 801543E8 AFB60050 */  sw         $s6, 0x50($sp)
/* FB91C 801543EC AFB5004C */  sw         $s5, 0x4C($sp)
/* FB920 801543F0 AFB40048 */  sw         $s4, 0x48($sp)
/* FB924 801543F4 AFB20040 */  sw         $s2, 0x40($sp)
/* FB928 801543F8 AFB1003C */  sw         $s1, 0x3C($sp)
/* FB92C 801543FC AFB00038 */  sw         $s0, 0x38($sp)
.L80154400_ovl6:
/* FB930 80154400 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* FB934 80154404 F7B80028 */  sdc1       $f24, 0x28($sp)
/* FB938 80154408 F7B60020 */  sdc1       $f22, 0x20($sp)
/* FB93C 8015440C F7B40018 */  sdc1       $f20, 0x18($sp)
/* FB940 80154410 8DF80000 */  lw         $t8, 0x0($t7)
/* FB944 80154414 4480A000 */  mtc1       $zero, $f20
/* FB948 80154418 3C0E8015 */  lui        $t6, %hi(func_80154880_ovl4)
/* FB94C 8015441C 3C01800E */  lui        $at, %hi(D_800DF150)
/* FB950 80154420 0018C880 */  sll        $t9, $t8, 2
/* FB954 80154424 00390821 */  addu       $at, $at, $t9
glabel func_80154428_ovl3
/* FB958 80154428 25CE4880 */  addiu      $t6, $t6, %lo(func_80154880_ovl4)
/* FB95C 8015442C 24170001 */  addiu      $s7, $zero, 0x1
/* FB960 80154430 AC2EF150 */  sw         $t6, %lo(D_800DF150)($at)
/* FB964 80154434 0C02BB30 */  jal        func_800AECC0
.L80154438_ovl6:
/* FB968 80154438 4600A306 */   mov.s     $f12, $f20
/* FB96C 8015443C 0C02BB48 */  jal        func_800AED20
/* FB970 80154440 4600A306 */   mov.s     $f12, $f20
/* FB974 80154444 3C048016 */  lui        $a0, %hi(func_8015A92C_ovl3 + 0x10)
.L80154448_ovl6:
/* FB978 80154448 3C050001 */  lui        $a1, (0x1869F >> 16)
/* FB97C 8015444C 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* FB980 80154450 8C84A93C */  lw         $a0, %lo(func_8015A92C_ovl3 + 0x10)($a0)
/* FB984 80154454 0C02A619 */  jal        func_800A9864
/* FB988 80154458 24060010 */   addiu     $a2, $zero, 0x10
.L8015445C_ovl6:
/* FB98C 8015445C 3C088016 */  lui        $t0, %hi(D_8015C698_ovl4)
/* FB990 80154460 8D08C698 */  lw         $t0, %lo(D_8015C698_ovl4)($t0)
glabel func_80154464_ovl6
/* FB994 80154464 8E650000 */  lw         $a1, 0x0($s3)
/* FB998 80154468 3C02800F */  lui        $v0, %hi(D_800E9FE0)
/* FB99C 8015446C 00084880 */  sll        $t1, $t0, 2
/* FB9A0 80154470 8CAB0000 */  lw         $t3, 0x0($a1)
/* FB9A4 80154474 00491021 */  addu       $v0, $v0, $t1
/* FB9A8 80154478 8C429FE0 */  lw         $v0, %lo(D_800E9FE0)($v0)
/* FB9AC 8015447C 3C14800F */  lui        $s4, %hi(D_800E98E0)
/* FB9B0 80154480 269498E0 */  addiu      $s4, $s4, %lo(D_800E98E0)
/* FB9B4 80154484 000B6080 */  sll        $t4, $t3, 2
.L80154488_ovl6:
/* FB9B8 80154488 028C6821 */  addu       $t5, $s4, $t4
.L8015448C_ovl3:
/* FB9BC 8015448C 244A0001 */  addiu      $t2, $v0, 0x1
.L80154490_ovl3:
/* FB9C0 80154490 ADAA0000 */  sw         $t2, 0x0($t5)
/* FB9C4 80154494 3C018016 */  lui        $at, %hi(D_8015C510_ovl4)
/* FB9C8 80154498 C43AC510 */  lwc1       $f26, %lo(D_8015C510_ovl4)($at)
glabel func_8015449C_ovl3
/* FB9CC 8015449C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L801544A0_ovl6:
/* FB9D0 801544A0 4481C000 */  mtc1       $at, $f24
/* FB9D4 801544A4 3C018016 */  lui        $at, %hi(D_8015C514_ovl4)
/* FB9D8 801544A8 3C1E8016 */  lui        $fp, %hi(func_8015A92C_ovl3 + 0x14)
/* FB9DC 801544AC 3C16800D */  lui        $s6, %hi(D_800D6B98)
/* FB9E0 801544B0 3C12800E */  lui        $s2, %hi(gEntitiesScaleZArray)
/* FB9E4 801544B4 3C11800E */  lui        $s1, %hi(gEntitiesScaleYArray)
/* FB9E8 801544B8 3C10800E */  lui        $s0, %hi(gEntitiesScaleXArray)
/* FB9EC 801544BC 26104550 */  addiu      $s0, $s0, %lo(gEntitiesScaleXArray)
/* FB9F0 801544C0 26314710 */  addiu      $s1, $s1, %lo(gEntitiesScaleYArray)
/* FB9F4 801544C4 265248D0 */  addiu      $s2, $s2, %lo(gEntitiesScaleZArray)
/* FB9F8 801544C8 26D66B98 */  addiu      $s6, $s6, %lo(D_800D6B98)
/* FB9FC 801544CC 27DEA940 */  addiu      $fp, $fp, %lo(func_8015A92C_ovl3 + 0x14)
/* FBA00 801544D0 C436C514 */  lwc1       $f22, %lo(D_8015C514_ovl4)($at)
/* FBA04 801544D4 2415029A */  addiu      $s5, $zero, 0x29A
.L801544D8_ovl4:
/* FBA08 801544D8 8CA30000 */  lw         $v1, 0x0($a1)
/* FBA0C 801544DC 00031880 */  sll        $v1, $v1, 2
/* FBA10 801544E0 02833021 */  addu       $a2, $s4, $v1
/* FBA14 801544E4 8CC40000 */  lw         $a0, 0x0($a2)
glabel func_801544E8_ovl6
/* FBA18 801544E8 1082009E */  beq        $a0, $v0, .L80154764_ovl4
/* FBA1C 801544EC 00000000 */   nop
/* FBA20 801544F0 ACC20000 */  sw         $v0, 0x0($a2)
/* FBA24 801544F4 8CA30000 */  lw         $v1, 0x0($a1)
/* FBA28 801544F8 00031880 */  sll        $v1, $v1, 2
/* FBA2C 801544FC 02837821 */  addu       $t7, $s4, $v1
/* FBA30 80154500 8DE40000 */  lw         $a0, 0x0($t7)
/* FBA34 80154504 02031021 */  addu       $v0, $s0, $v1
/* FBA38 80154508 52A40004 */  beql       $s5, $a0, .L8015451C_ovl4
/* FBA3C 8015450C C4400000 */   lwc1      $f0, 0x0($v0)
/* FBA40 80154510 14800033 */  bnez       $a0, .L801545E0_ovl4
/* FBA44 80154514 00000000 */   nop
/* FBA48 80154518 C4400000 */  lwc1       $f0, 0x0($v0)
.L8015451C_ovl4:
/* FBA4C 8015451C 4600A03C */  c.lt.s     $f20, $f0
/* FBA50 80154520 00000000 */  nop
/* FBA54 80154524 4500008F */  bc1f       .L80154764_ovl4
/* FBA58 80154528 00000000 */   nop
/* FBA5C 8015452C 46160100 */  add.s      $f4, $f0, $f22
.L80154530_ovl4:
/* FBA60 80154530 E4440000 */  swc1       $f4, 0x0($v0)
/* FBA64 80154534 8CB80000 */  lw         $t8, 0x0($a1)
/* FBA68 80154538 00187080 */  sll        $t6, $t8, 2
/* FBA6C 8015453C 022E1821 */  addu       $v1, $s1, $t6
/* FBA70 80154540 C4660000 */  lwc1       $f6, 0x0($v1)
/* FBA74 80154544 46163200 */  add.s      $f8, $f6, $f22
/* FBA78 80154548 E4680000 */  swc1       $f8, 0x0($v1)
/* FBA7C 8015454C 8CB90000 */  lw         $t9, 0x0($a1)
/* FBA80 80154550 00194080 */  sll        $t0, $t9, 2
/* FBA84 80154554 02482021 */  addu       $a0, $s2, $t0
/* FBA88 80154558 C48A0000 */  lwc1       $f10, 0x0($a0)
/* FBA8C 8015455C 46165400 */  add.s      $f16, $f10, $f22
/* FBA90 80154560 E4900000 */  swc1       $f16, 0x0($a0)
/* FBA94 80154564 8CA90000 */  lw         $t1, 0x0($a1)
/* FBA98 80154568 00095880 */  sll        $t3, $t1, 2
/* FBA9C 8015456C 020B1021 */  addu       $v0, $s0, $t3
.L80154570_ovl6:
/* FBAA0 80154570 C4520000 */  lwc1       $f18, 0x0($v0)
/* FBAA4 80154574 4614903C */  c.lt.s     $f18, $f20
glabel func_80154578_ovl3
/* FBAA8 80154578 00000000 */  nop
/* FBAAC 8015457C 4500000A */  bc1f       .L801545A8_ovl6
.L80154580_ovl6:
/* FBAB0 80154580 00000000 */   nop
/* FBAB4 80154584 E4540000 */  swc1       $f20, 0x0($v0)
/* FBAB8 80154588 8CAC0000 */  lw         $t4, 0x0($a1)
/* FBABC 8015458C 000C5080 */  sll        $t2, $t4, 2
/* FBAC0 80154590 022A6821 */  addu       $t5, $s1, $t2
/* FBAC4 80154594 E5B40000 */  swc1       $f20, 0x0($t5)
/* FBAC8 80154598 8CAF0000 */  lw         $t7, 0x0($a1)
/* FBACC 8015459C 000FC080 */  sll        $t8, $t7, 2
/* FBAD0 801545A0 02587021 */  addu       $t6, $s2, $t8
/* FBAD4 801545A4 E5D40000 */  swc1       $f20, 0x0($t6)
.L801545A8_ovl6:
/* FBAD8 801545A8 0C002DAF */  jal        finish_current_thread
/* FBADC 801545AC 24040001 */   addiu     $a0, $zero, 0x1
/* FBAE0 801545B0 8E650000 */  lw         $a1, 0x0($s3)
/* FBAE4 801545B4 8CA30000 */  lw         $v1, 0x0($a1)
/* FBAE8 801545B8 00031880 */  sll        $v1, $v1, 2
/* FBAEC 801545BC 02031021 */  addu       $v0, $s0, $v1
/* FBAF0 801545C0 C4400000 */  lwc1       $f0, 0x0($v0)
/* FBAF4 801545C4 4600A03C */  c.lt.s     $f20, $f0
/* FBAF8 801545C8 00000000 */  nop
/* FBAFC 801545CC 4503FFD8 */  bc1tl      .L80154530_ovl4
/* FBB00 801545D0 46160100 */   add.s     $f4, $f0, $f22
/* FBB04 801545D4 0283C821 */  addu       $t9, $s4, $v1
/* FBB08 801545D8 10000062 */  b          .L80154764_ovl4
/* FBB0C 801545DC 8F240000 */   lw        $a0, 0x0($t9)
.L801545E0_ovl4:
/* FBB10 801545E0 12E00003 */  beqz       $s7, .L801545F0_ovl4
/* FBB14 801545E4 00000000 */   nop
/* FBB18 801545E8 10000036 */  b          .L801546C4_ovl4
/* FBB1C 801545EC 0000B825 */   or        $s7, $zero, $zero
.L801545F0_ovl4:
/* FBB20 801545F0 0C029D9E */  jal        play_sound
.L801545F4_ovl6:
/* FBB24 801545F4 24040277 */   addiu     $a0, $zero, 0x277
/* FBB28 801545F8 8E650000 */  lw         $a1, 0x0($s3)
/* FBB2C 801545FC 8CA30000 */  lw         $v1, 0x0($a1)
.L80154600_ovl6:
/* FBB30 80154600 00031880 */  sll        $v1, $v1, 2
/* FBB34 80154604 02031021 */  addu       $v0, $s0, $v1
.L80154608_ovl6:
/* FBB38 80154608 C4400000 */  lwc1       $f0, 0x0($v0)
.L8015460C_ovl6:
/* FBB3C 8015460C 4600A03C */  c.lt.s     $f20, $f0
/* FBB40 80154610 00000000 */  nop
/* FBB44 80154614 4502002C */  bc1fl      .L801546C8_ovl4
/* FBB48 80154618 02835821 */   addu      $t3, $s4, $v1
/* FBB4C 8015461C 46160100 */  add.s      $f4, $f0, $f22
.L80154620_ovl4:
/* FBB50 80154620 E4440000 */  swc1       $f4, 0x0($v0)
/* FBB54 80154624 8CA80000 */  lw         $t0, 0x0($a1)
glabel func_80154628_ovl6
/* FBB58 80154628 00084880 */  sll        $t1, $t0, 2
/* FBB5C 8015462C 02291821 */  addu       $v1, $s1, $t1
/* FBB60 80154630 C4660000 */  lwc1       $f6, 0x0($v1)
/* FBB64 80154634 46163200 */  add.s      $f8, $f6, $f22
/* FBB68 80154638 E4680000 */  swc1       $f8, 0x0($v1)
/* FBB6C 8015463C 8CAB0000 */  lw         $t3, 0x0($a1)
/* FBB70 80154640 000B6080 */  sll        $t4, $t3, 2
/* FBB74 80154644 024C2021 */  addu       $a0, $s2, $t4
glabel func_80154648_ovl3
/* FBB78 80154648 C48A0000 */  lwc1       $f10, 0x0($a0)
/* FBB7C 8015464C 46165400 */  add.s      $f16, $f10, $f22
/* FBB80 80154650 E4900000 */  swc1       $f16, 0x0($a0)
/* FBB84 80154654 8CAA0000 */  lw         $t2, 0x0($a1)
/* FBB88 80154658 000A6880 */  sll        $t5, $t2, 2
.L8015465C_ovl6:
/* FBB8C 8015465C 020D1021 */  addu       $v0, $s0, $t5
/* FBB90 80154660 C4520000 */  lwc1       $f18, 0x0($v0)
/* FBB94 80154664 4614903C */  c.lt.s     $f18, $f20
/* FBB98 80154668 00000000 */  nop
/* FBB9C 8015466C 4500000A */  bc1f       .L80154698_ovl4
/* FBBA0 80154670 00000000 */   nop
/* FBBA4 80154674 E4540000 */  swc1       $f20, 0x0($v0)
/* FBBA8 80154678 8CAF0000 */  lw         $t7, 0x0($a1)
/* FBBAC 8015467C 000FC080 */  sll        $t8, $t7, 2
/* FBBB0 80154680 02387021 */  addu       $t6, $s1, $t8
/* FBBB4 80154684 E5D40000 */  swc1       $f20, 0x0($t6)
/* FBBB8 80154688 8CB90000 */  lw         $t9, 0x0($a1)
/* FBBBC 8015468C 00194080 */  sll        $t0, $t9, 2
glabel func_80154690_ovl6
/* FBBC0 80154690 02484821 */  addu       $t1, $s2, $t0
/* FBBC4 80154694 E5340000 */  swc1       $f20, 0x0($t1)
.L80154698_ovl4:
/* FBBC8 80154698 0C002DAF */  jal        finish_current_thread
/* FBBCC 8015469C 24040001 */   addiu     $a0, $zero, 0x1
/* FBBD0 801546A0 8E650000 */  lw         $a1, 0x0($s3)
/* FBBD4 801546A4 8CA30000 */  lw         $v1, 0x0($a1)
/* FBBD8 801546A8 00031880 */  sll        $v1, $v1, 2
/* FBBDC 801546AC 02031021 */  addu       $v0, $s0, $v1
/* FBBE0 801546B0 C4400000 */  lwc1       $f0, 0x0($v0)
/* FBBE4 801546B4 4600A03C */  c.lt.s     $f20, $f0
/* FBBE8 801546B8 00000000 */  nop
/* FBBEC 801546BC 4503FFD8 */  bc1tl      .L80154620_ovl4
/* FBBF0 801546C0 46160100 */   add.s     $f4, $f0, $f22
.L801546C4_ovl4:
/* FBBF4 801546C4 02835821 */  addu       $t3, $s4, $v1
.L801546C8_ovl4:
/* FBBF8 801546C8 8D650000 */  lw         $a1, 0x0($t3)
/* FBBFC 801546CC 8EC40000 */  lw         $a0, 0x0($s6)
/* FBC00 801546D0 0C0550AE */  jal        func_801542B8_ovl4
/* FBC04 801546D4 24A5FFFF */   addiu     $a1, $a1, -0x1
glabel func_801546D8_ovl6
/* FBC08 801546D8 44050000 */  mfc1       $a1, $f0
/* FBC0C 801546DC 0C02A7E6 */  jal        func_800A9F98
/* FBC10 801546E0 8FC40004 */   lw        $a0, 0x4($fp)
/* FBC14 801546E4 8E6C0000 */  lw         $t4, 0x0($s3)
/* FBC18 801546E8 27A4007C */  addiu      $a0, $sp, 0x7C
/* FBC1C 801546EC 8EC50000 */  lw         $a1, 0x0($s6)
/* FBC20 801546F0 8D8A0000 */  lw         $t2, 0x0($t4)
/* FBC24 801546F4 000A6880 */  sll        $t5, $t2, 2
/* FBC28 801546F8 028D7821 */  addu       $t7, $s4, $t5
/* FBC2C 801546FC 8DE60000 */  lw         $a2, 0x0($t7)
/* FBC30 80154700 0C054911 */  jal        func_80152444_ovl4
/* FBC34 80154704 24C6FFFF */   addiu     $a2, $a2, -0x1
/* FBC38 80154708 8E650000 */  lw         $a1, 0x0($s3)
/* FBC3C 8015470C C7A4007C */  lwc1       $f4, 0x7C($sp)
/* FBC40 80154710 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* FBC44 80154714 8CB80000 */  lw         $t8, 0x0($a1)
/* FBC48 80154718 C7A60080 */  lwc1       $f6, 0x80($sp)
/* FBC4C 8015471C C7A80084 */  lwc1       $f8, 0x84($sp)
/* FBC50 80154720 00187080 */  sll        $t6, $t8, 2
/* FBC54 80154724 002E0821 */  addu       $at, $at, $t6
/* FBC58 80154728 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* FBC5C 8015472C 8CB90000 */  lw         $t9, 0x0($a1)
.L80154730_ovl6:
/* FBC60 80154730 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* FBC64 80154734 00194080 */  sll        $t0, $t9, 2
/* FBC68 80154738 00280821 */  addu       $at, $at, $t0
/* FBC6C 8015473C E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* FBC70 80154740 8CA90000 */  lw         $t1, 0x0($a1)
/* FBC74 80154744 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
glabel func_80154748_ovl6
/* FBC78 80154748 00095880 */  sll        $t3, $t1, 2
/* FBC7C 8015474C 002B0821 */  addu       $at, $at, $t3
.L80154750_ovl3:
/* FBC80 80154750 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* FBC84 80154754 8CA30000 */  lw         $v1, 0x0($a1)
/* FBC88 80154758 00031880 */  sll        $v1, $v1, 2
.L8015475C_ovl3:
/* FBC8C 8015475C 02836021 */  addu       $t4, $s4, $v1
/* FBC90 80154760 8D840000 */  lw         $a0, 0x0($t4)
.L80154764_ovl4:
/* FBC94 80154764 12A40027 */  beq        $s5, $a0, .L80154804_ovl4
/* FBC98 80154768 00000000 */   nop
/* FBC9C 8015476C 10800025 */  beqz       $a0, .L80154804_ovl4
/* FBCA0 80154770 02031021 */   addu      $v0, $s0, $v1
/* FBCA4 80154774 C4400000 */  lwc1       $f0, 0x0($v0)
/* FBCA8 80154778 4618003C */  c.lt.s     $f0, $f24
/* FBCAC 8015477C 00000000 */  nop
/* FBCB0 80154780 45000020 */  bc1f       .L80154804_ovl4
/* FBCB4 80154784 00000000 */   nop
/* FBCB8 80154788 461A0280 */  add.s      $f10, $f0, $f26
/* FBCBC 8015478C E44A0000 */  swc1       $f10, 0x0($v0)
/* FBCC0 80154790 8CAA0000 */  lw         $t2, 0x0($a1)
/* FBCC4 80154794 000A6880 */  sll        $t5, $t2, 2
/* FBCC8 80154798 022D1821 */  addu       $v1, $s1, $t5
/* FBCCC 8015479C C4700000 */  lwc1       $f16, 0x0($v1)
/* FBCD0 801547A0 461A8480 */  add.s      $f18, $f16, $f26
/* FBCD4 801547A4 E4720000 */  swc1       $f18, 0x0($v1)
/* FBCD8 801547A8 8CAF0000 */  lw         $t7, 0x0($a1)
/* FBCDC 801547AC 000FC080 */  sll        $t8, $t7, 2
/* FBCE0 801547B0 02582021 */  addu       $a0, $s2, $t8
/* FBCE4 801547B4 C4840000 */  lwc1       $f4, 0x0($a0)
/* FBCE8 801547B8 461A2180 */  add.s      $f6, $f4, $f26
/* FBCEC 801547BC E4860000 */  swc1       $f6, 0x0($a0)
/* FBCF0 801547C0 8CAE0000 */  lw         $t6, 0x0($a1)
/* FBCF4 801547C4 000EC880 */  sll        $t9, $t6, 2
/* FBCF8 801547C8 02191021 */  addu       $v0, $s0, $t9
.L801547CC_ovl6:
/* FBCFC 801547CC C4480000 */  lwc1       $f8, 0x0($v0)
/* FBD00 801547D0 4608C03C */  c.lt.s     $f24, $f8
/* FBD04 801547D4 00000000 */  nop
/* FBD08 801547D8 4500000A */  bc1f       .L80154804_ovl4
/* FBD0C 801547DC 00000000 */   nop
/* FBD10 801547E0 E4580000 */  swc1       $f24, 0x0($v0)
/* FBD14 801547E4 8CA80000 */  lw         $t0, 0x0($a1)
/* FBD18 801547E8 00084880 */  sll        $t1, $t0, 2
/* FBD1C 801547EC 02295821 */  addu       $t3, $s1, $t1
/* FBD20 801547F0 E5780000 */  swc1       $f24, 0x0($t3)
/* FBD24 801547F4 8CAC0000 */  lw         $t4, 0x0($a1)
/* FBD28 801547F8 000C5080 */  sll        $t2, $t4, 2
/* FBD2C 801547FC 024A6821 */  addu       $t5, $s2, $t2
/* FBD30 80154800 E5B80000 */  swc1       $f24, 0x0($t5)
.L80154804_ovl4:
/* FBD34 80154804 0C002DAF */  jal        finish_current_thread
/* FBD38 80154808 24040001 */   addiu     $a0, $zero, 0x1
/* FBD3C 8015480C 3C0F8016 */  lui        $t7, %hi(D_8015C698_ovl4)
glabel func_80154810_ovl6
/* FBD40 80154810 8DEFC698 */  lw         $t7, %lo(D_8015C698_ovl4)($t7)
/* FBD44 80154814 3C02800F */  lui        $v0, %hi(D_800E9FE0)
/* FBD48 80154818 8E650000 */  lw         $a1, 0x0($s3)
/* FBD4C 8015481C 000FC080 */  sll        $t8, $t7, 2
/* FBD50 80154820 00581021 */  addu       $v0, $v0, $t8
/* FBD54 80154824 1000FF2C */  b          .L801544D8_ovl4
/* FBD58 80154828 8C429FE0 */   lw        $v0, %lo(D_800E9FE0)($v0)
/* FBD5C 8015482C 00000000 */  nop
/* FBD60 80154830 00000000 */  nop
/* FBD64 80154834 00000000 */  nop
/* FBD68 80154838 00000000 */  nop
/* FBD6C 8015483C 00000000 */  nop
/* FBD70 80154840 8FBF005C */  lw         $ra, 0x5C($sp)
/* FBD74 80154844 D7B40018 */  ldc1       $f20, 0x18($sp)
/* FBD78 80154848 D7B60020 */  ldc1       $f22, 0x20($sp)
.L8015484C_ovl6:
/* FBD7C 8015484C D7B80028 */  ldc1       $f24, 0x28($sp)
/* FBD80 80154850 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* FBD84 80154854 8FB00038 */  lw         $s0, 0x38($sp)
glabel func_80154858_ovl6
/* FBD88 80154858 8FB1003C */  lw         $s1, 0x3C($sp)
/* FBD8C 8015485C 8FB20040 */  lw         $s2, 0x40($sp)
/* FBD90 80154860 8FB30044 */  lw         $s3, 0x44($sp)
/* FBD94 80154864 8FB40048 */  lw         $s4, 0x48($sp)
/* FBD98 80154868 8FB5004C */  lw         $s5, 0x4C($sp)
/* FBD9C 8015486C 8FB60050 */  lw         $s6, 0x50($sp)
/* FBDA0 80154870 8FB70054 */  lw         $s7, 0x54($sp)
/* FBDA4 80154874 8FBE0058 */  lw         $fp, 0x58($sp)
/* FBDA8 80154878 03E00008 */  jr         $ra
.L8015487C_ovl3:
/* FBDAC 8015487C 27BD0088 */   addiu     $sp, $sp, 0x88
