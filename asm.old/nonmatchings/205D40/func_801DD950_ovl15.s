glabel func_801DD950_ovl15
/* 2084B0 801DD950 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 2084B4 801DD954 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 2084B8 801DD958 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2084BC 801DD95C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2084C0 801DD960 AFA40018 */  sw         $a0, 0x18($sp)
glabel func_801DD964_ovl17
/* 2084C4 801DD964 8C6E0000 */  lw         $t6, 0x0($v1)
/* 2084C8 801DD968 3C01800E */  lui        $at, %hi(D_800DDFD0)
glabel func_801DD96C_ovl14
/* 2084CC 801DD96C 24040001 */  addiu      $a0, $zero, 0x1
/* 2084D0 801DD970 000E7880 */  sll        $t7, $t6, 2
/* 2084D4 801DD974 002F0821 */  addu       $at, $at, $t7
/* 2084D8 801DD978 AC24DFD0 */  sw         $a0, %lo(D_800DDFD0)($at)
/* 2084DC 801DD97C 8C780000 */  lw         $t8, 0x0($v1)
/* 2084E0 801DD980 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 2084E4 801DD984 44802000 */  mtc1       $zero, $f4
/* 2084E8 801DD988 0018C880 */  sll        $t9, $t8, 2
/* 2084EC 801DD98C 00390821 */  addu       $at, $at, $t9
/* 2084F0 801DD990 AC24DC50 */  sw         $a0, %lo(gEntityVtableIndexArray)($at)
.L801DD994_ovl14:
/* 2084F4 801DD994 8C680000 */  lw         $t0, 0x0($v1)
/* 2084F8 801DD998 3C01800F */  lui        $at, %hi(D_800EAC20)
/* 2084FC 801DD99C 3C05800D */  lui        $a1, %hi(D_800D7098)
/* 208500 801DD9A0 00084880 */  sll        $t1, $t0, 2
/* 208504 801DD9A4 00290821 */  addu       $at, $at, $t1
/* 208508 801DD9A8 24A57098 */  addiu      $a1, $a1, %lo(D_800D7098)
.L801DD9AC_ovl10:
/* 20850C 801DD9AC E424AC20 */  swc1       $f4, %lo(D_800EAC20)($at)
/* 208510 801DD9B0 8CA20020 */  lw         $v0, 0x20($a1)
/* 208514 801DD9B4 10400007 */  beqz       $v0, .L801DD9D4_ovl15
/* 208518 801DD9B8 00000000 */   nop
.L801DD9BC_ovl16:
/* 20851C 801DD9BC 1044001A */  beq        $v0, $a0, .L801DDA28_ovl15
.L801DD9C0_ovl13:
/* 208520 801DD9C0 24010002 */   addiu     $at, $zero, 0x2
.L801DD9C4_ovl13:
/* 208524 801DD9C4 5041003C */  beql       $v0, $at, .L801DDAB8_ovl15
glabel func_801DD9C8_ovl11
/* 208528 801DD9C8 8CB8001C */   lw        $t8, 0x1C($a1)
/* 20852C 801DD9CC 1000003A */  b          .L801DDAB8_ovl15
/* 208530 801DD9D0 8CB8001C */   lw        $t8, 0x1C($a1)
.L801DD9D4_ovl15:
/* 208534 801DD9D4 0C006291 */  jal        random_soft_s32_range
/* 208538 801DD9D8 24040002 */   addiu     $a0, $zero, 0x2
.L801DD9DC_ovl9:
/* 20853C 801DD9DC 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 208540 801DD9E0 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
.L801DD9E4_ovl14:
/* 208544 801DD9E4 3C06800F */  lui        $a2, %hi(D_800E9C60)
/* 208548 801DD9E8 24C69C60 */  addiu      $a2, $a2, %lo(D_800E9C60)
.L801DD9EC_ovl9:
/* 20854C 801DD9EC 8C6A0000 */  lw         $t2, 0x0($v1)
/* 208550 801DD9F0 3C05800D */  lui        $a1, %hi(D_800D7098)
/* 208554 801DD9F4 24A57098 */  addiu      $a1, $a1, %lo(D_800D7098)
/* 208558 801DD9F8 000A5880 */  sll        $t3, $t2, 2
glabel func_801DD9FC_ovl16
/* 20855C 801DD9FC 00CB6021 */  addu       $t4, $a2, $t3
/* 208560 801DDA00 AD820000 */  sw         $v0, 0x0($t4)
.L801DDA04_ovl14:
/* 208564 801DDA04 8C6D0000 */  lw         $t5, 0x0($v1)
/* 208568 801DDA08 8CB90020 */  lw         $t9, 0x20($a1)
/* 20856C 801DDA0C 000D7080 */  sll        $t6, $t5, 2
.L801DDA10_ovl9:
/* 208570 801DDA10 00CE7821 */  addu       $t7, $a2, $t6
/* 208574 801DDA14 8DF80000 */  lw         $t8, 0x0($t7)
/* 208578 801DDA18 27280001 */  addiu      $t0, $t9, 0x1
/* 20857C 801DDA1C ACA80020 */  sw         $t0, 0x20($a1)
/* 208580 801DDA20 10000033 */  b          .L801DDAF0_ovl15
.L801DDA24_ovl14:
/* 208584 801DDA24 ACB8001C */   sw        $t8, 0x1C($a1)
.L801DDA28_ovl15:
/* 208588 801DDA28 0C006291 */  jal        random_soft_s32_range
/* 20858C 801DDA2C 24040004 */   addiu     $a0, $zero, 0x4
glabel func_801DDA30_ovl13
/* 208590 801DDA30 3C05800D */  lui        $a1, %hi(D_800D7098)
/* 208594 801DDA34 1440000B */  bnez       $v0, .L801DDA64_ovl15
/* 208598 801DDA38 24A57098 */   addiu     $a1, $a1, %lo(D_800D7098)
/* 20859C 801DDA3C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
.L801DDA40_ovl11:
/* 2085A0 801DDA40 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 2085A4 801DDA44 3C06800F */  lui        $a2, %hi(D_800E9C60)
/* 2085A8 801DDA48 8CA9001C */  lw         $t1, 0x1C($a1)
glabel func_801DDA4C_ovl14
/* 2085AC 801DDA4C 8C6A0000 */  lw         $t2, 0x0($v1)
/* 2085B0 801DDA50 24C69C60 */  addiu      $a2, $a2, %lo(D_800E9C60)
/* 2085B4 801DDA54 000A5880 */  sll        $t3, $t2, 2
.L801DDA58_ovl9:
/* 2085B8 801DDA58 00CB6021 */  addu       $t4, $a2, $t3
/* 2085BC 801DDA5C 1000000C */  b          .L801DDA90_ovl15
/* 2085C0 801DDA60 AD890000 */   sw        $t1, 0x0($t4)
.L801DDA64_ovl15:
/* 2085C4 801DDA64 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 2085C8 801DDA68 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
.L801DDA6C_ovl14:
/* 2085CC 801DDA6C 8CAD001C */  lw         $t5, 0x1C($a1)
/* 2085D0 801DDA70 3C06800F */  lui        $a2, %hi(D_800E9C60)
/* 2085D4 801DDA74 8C780000 */  lw         $t8, 0x0($v1)
glabel func_801DDA78_ovl12
/* 2085D8 801DDA78 24C69C60 */  addiu      $a2, $a2, %lo(D_800E9C60)
/* 2085DC 801DDA7C 01A07027 */  not        $t6, $t5
/* 2085E0 801DDA80 0018C880 */  sll        $t9, $t8, 2
/* 2085E4 801DDA84 00D94021 */  addu       $t0, $a2, $t9
.L801DDA88_ovl9:
/* 2085E8 801DDA88 31CF0001 */  andi       $t7, $t6, 0x1
.L801DDA8C_ovl10:
/* 2085EC 801DDA8C AD0F0000 */  sw         $t7, 0x0($t0)
.L801DDA90_ovl15:
/* 2085F0 801DDA90 8C6A0000 */  lw         $t2, 0x0($v1)
.L801DDA94_ovl10:
/* 2085F4 801DDA94 8CAD0020 */  lw         $t5, 0x20($a1)
glabel func_801DDA98_ovl16
/* 2085F8 801DDA98 000A5880 */  sll        $t3, $t2, 2
/* 2085FC 801DDA9C 00CB4821 */  addu       $t1, $a2, $t3
glabel func_801DDAA0_ovl10
/* 208600 801DDAA0 8D2C0000 */  lw         $t4, 0x0($t1)
/* 208604 801DDAA4 25AE0001 */  addiu      $t6, $t5, 0x1
/* 208608 801DDAA8 ACAE0020 */  sw         $t6, 0x20($a1)
/* 20860C 801DDAAC 10000010 */  b          .L801DDAF0_ovl15
.L801DDAB0_ovl14:
/* 208610 801DDAB0 ACAC001C */   sw        $t4, 0x1C($a1)
/* 208614 801DDAB4 8CB8001C */  lw         $t8, 0x1C($a1)
.L801DDAB8_ovl15:
/* 208618 801DDAB8 8C680000 */  lw         $t0, 0x0($v1)
/* 20861C 801DDABC 3C06800F */  lui        $a2, %hi(D_800E9C60)
/* 208620 801DDAC0 24C69C60 */  addiu      $a2, $a2, %lo(D_800E9C60)
.L801DDAC4_ovl13:
/* 208624 801DDAC4 0300C827 */  not        $t9, $t8
glabel func_801DDAC8_ovl10
/* 208628 801DDAC8 00085080 */  sll        $t2, $t0, 2
/* 20862C 801DDACC 00CA5821 */  addu       $t3, $a2, $t2
.L801DDAD0_ovl14:
/* 208630 801DDAD0 332F0001 */  andi       $t7, $t9, 0x1
/* 208634 801DDAD4 AD6F0000 */  sw         $t7, 0x0($t3)
/* 208638 801DDAD8 8C690000 */  lw         $t1, 0x0($v1)
glabel func_801DDADC_ovl13
/* 20863C 801DDADC 00096080 */  sll        $t4, $t1, 2
/* 208640 801DDAE0 00CC6821 */  addu       $t5, $a2, $t4
/* 208644 801DDAE4 8DAE0000 */  lw         $t6, 0x0($t5)
glabel func_801DDAE8_ovl12
/* 208648 801DDAE8 ACA40020 */  sw         $a0, 0x20($a1)
/* 20864C 801DDAEC ACAE001C */  sw         $t6, 0x1C($a1)
.L801DDAF0_ovl15:
/* 208650 801DDAF0 8C780000 */  lw         $t8, 0x0($v1)
/* 208654 801DDAF4 3C05801E */  lui        $a1, %hi(.L801E654C_ovl16)
/* 208658 801DDAF8 24040004 */  addiu      $a0, $zero, 0x4
/* 20865C 801DDAFC 0018C880 */  sll        $t9, $t8, 2
/* 208660 801DDB00 00D94021 */  addu       $t0, $a2, $t9
/* 208664 801DDB04 8D0A0000 */  lw         $t2, 0x0($t0)
/* 208668 801DDB08 000A7880 */  sll        $t7, $t2, 2
/* 20866C 801DDB0C 00AF2821 */  addu       $a1, $a1, $t7
/* 208670 801DDB10 0C067829 */  jal        func_8019E0A4_ovl7
/* 208674 801DDB14 8CA5654C */   lw        $a1, %lo(.L801E654C_ovl16)($a1)
/* 208678 801DDB18 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 20867C 801DDB1C C4266B10 */  lwc1       $f6, %lo(D_800D6B10)($at)
/* 208680 801DDB20 3C01801E */  lui        $at, %hi(.L801E6834_ovl15)
/* 208684 801DDB24 C4286834 */  lwc1       $f8, %lo(.L801E6834_ovl15)($at)
.L801DDB28_ovl10:
/* 208688 801DDB28 46083302 */  mul.s      $f12, $f6, $f8
/* 20868C 801DDB2C 0C02BB30 */  jal        func_800AECC0
.L801DDB30_ovl12:
/* 208690 801DDB30 00000000 */   nop
/* 208694 801DDB34 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 208698 801DDB38 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 20869C 801DDB3C 3C06800F */  lui        $a2, %hi(D_800E9C60)
/* 2086A0 801DDB40 24C69C60 */  addiu      $a2, $a2, %lo(D_800E9C60)
/* 2086A4 801DDB44 8D690000 */  lw         $t1, 0x0($t3)
/* 2086A8 801DDB48 3C04801E */  lui        $a0, %hi(D_801E6544_ovl15)
/* 2086AC 801DDB4C 00096080 */  sll        $t4, $t1, 2
.L801DDB50_ovl9:
/* 2086B0 801DDB50 00CC6821 */  addu       $t5, $a2, $t4
.L801DDB54_ovl13:
/* 2086B4 801DDB54 8DAE0000 */  lw         $t6, 0x0($t5)
/* 2086B8 801DDB58 000EC080 */  sll        $t8, $t6, 2
.L801DDB5C_ovl10:
/* 2086BC 801DDB5C 00982021 */  addu       $a0, $a0, $t8
/* 2086C0 801DDB60 0C02A806 */  jal        func_800AA018
.L801DDB64_ovl16:
/* 2086C4 801DDB64 8C846544 */   lw        $a0, %lo(D_801E6544_ovl15)($a0)
/* 2086C8 801DDB68 0C002DAF */  jal        finish_current_thread
/* 2086CC 801DDB6C 2404002D */   addiu     $a0, $zero, 0x2D
/* 2086D0 801DDB70 0C029D9E */  jal        play_sound
.L801DDB74_ovl16:
/* 2086D4 801DDB74 240401A4 */   addiu     $a0, $zero, 0x1A4
/* 2086D8 801DDB78 24040004 */  addiu      $a0, $zero, 0x4
/* 2086DC 801DDB7C 0C067829 */  jal        func_8019E0A4_ovl7
/* 2086E0 801DDB80 24050009 */   addiu     $a1, $zero, 0x9
.L801DDB84_ovl9:
/* 2086E4 801DDB84 0C02BC9F */  jal        func_800AF27C
glabel func_801DDB88_ovl10
/* 2086E8 801DDB88 00000000 */   nop
glabel func_801DDB8C_ovl17
/* 2086EC 801DDB8C 3C01800D */  lui        $at, %hi(D_800D6B10)
.L801DDB90_ovl9:
/* 2086F0 801DDB90 0C02BB30 */  jal        func_800AECC0
.L801DDB94_ovl12:
/* 2086F4 801DDB94 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 2086F8 801DDB98 8FBF0014 */  lw         $ra, 0x14($sp)
glabel func_801DDB9C_ovl11
/* 2086FC 801DDB9C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 208700 801DDBA0 03E00008 */  jr         $ra
glabel func_801DDBA4_ovl11
/* 208704 801DDBA4 00000000 */   nop
