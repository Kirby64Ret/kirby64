glabel func_801DCDD4_ovl10
/* 1CDB44 801DCDD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CDB48 801DCDD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CDB4C 801DCDDC 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 1CDB50 801DCDE0 AFA40018 */  sw         $a0, 0x18($sp)
/* 1CDB54 801DCDE4 0C02BB30 */  jal        func_800AECC0
/* 1CDB58 801DCDE8 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
.L801DCDEC_ovl14:
/* 1CDB5C 801DCDEC 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 1CDB60 801DCDF0 0C02BB48 */  jal        func_800AED20
.L801DCDF4_ovl12:
/* 1CDB64 801DCDF4 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 1CDB68 801DCDF8 3C038005 */  lui        $v1, %hi(D_8004A7C4)
glabel func_801DCDFC_ovl12
/* 1CDB6C 801DCDFC 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 1CDB70 801DCE00 8C620000 */  lw         $v0, 0x0($v1)
glabel func_801DCE04_ovl11
/* 1CDB74 801DCE04 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1CDB78 801DCE08 240E0002 */  addiu      $t6, $zero, 0x2
.L801DCE0C_ovl9:
/* 1CDB7C 801DCE0C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1CDB80 801DCE10 3C04800E */  lui        $a0, %hi(D_800E1B50)
/* 1CDB84 801DCE14 24841B50 */  addiu      $a0, $a0, %lo(D_800E1B50)
/* 1CDB88 801DCE18 000FC080 */  sll        $t8, $t7, 2
glabel func_801DCE1C_ovl14
/* 1CDB8C 801DCE1C 00380821 */  addu       $at, $at, $t8
/* 1CDB90 801DCE20 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 1CDB94 801DCE24 8C480000 */  lw         $t0, 0x0($v0)
.L801DCE28_ovl17:
/* 1CDB98 801DCE28 3C19801F */  lui        $t9, %hi(func_801F39E4_ovl9 + 0x10)
/* 1CDB9C 801DCE2C 273939F4 */  addiu      $t9, $t9, %lo(func_801F39E4_ovl9 + 0x10)
/* 1CDBA0 801DCE30 00084880 */  sll        $t1, $t0, 2
.L801DCE34_ovl9:
/* 1CDBA4 801DCE34 00895021 */  addu       $t2, $a0, $t1
.L801DCE38_ovl11:
/* 1CDBA8 801DCE38 8D4B0000 */  lw         $t3, 0x0($t2)
.L801DCE3C_ovl11:
/* 1CDBAC 801DCE3C 3C0C801F */  lui        $t4, %hi(D_801F4094_ovl10)
/* 1CDBB0 801DCE40 258C4094 */  addiu      $t4, $t4, %lo(D_801F4094_ovl10)
glabel func_801DCE44_ovl17
/* 1CDBB4 801DCE44 AD79008C */  sw         $t9, 0x8C($t3)
glabel func_801DCE48_ovl12
/* 1CDBB8 801DCE48 8C6D0000 */  lw         $t5, 0x0($v1)
/* 1CDBBC 801DCE4C 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1CDBC0 801DCE50 24090001 */  addiu      $t1, $zero, 0x1
/* 1CDBC4 801DCE54 8DAF0000 */  lw         $t7, 0x0($t5)
.L801DCE58_ovl17:
/* 1CDBC8 801DCE58 000F7080 */  sll        $t6, $t7, 2
.L801DCE5C_ovl15:
/* 1CDBCC 801DCE5C 008EC021 */  addu       $t8, $a0, $t6
/* 1CDBD0 801DCE60 8F080000 */  lw         $t0, 0x0($t8)
.L801DCE64_ovl12:
/* 1CDBD4 801DCE64 AD0C0098 */  sw         $t4, 0x98($t0)
.L801DCE68_ovl14:
/* 1CDBD8 801DCE68 8C6A0000 */  lw         $t2, 0x0($v1)
glabel func_801DCE6C_ovl12
/* 1CDBDC 801DCE6C 8D590000 */  lw         $t9, 0x0($t2)
/* 1CDBE0 801DCE70 00195880 */  sll        $t3, $t9, 2
.L801DCE74_ovl17:
/* 1CDBE4 801DCE74 002B0821 */  addu       $at, $at, $t3
/* 1CDBE8 801DCE78 0C02CCFD */  jal        func_800B33F4
/* 1CDBEC 801DCE7C AC298920 */   sw        $t1, %lo(D_800E8920)($at)
/* 1CDBF0 801DCE80 3C040001 */  lui        $a0, (0x102E1 >> 16)
/* 1CDBF4 801DCE84 0C02A806 */  jal        func_800AA018
/* 1CDBF8 801DCE88 348402E1 */   ori       $a0, $a0, (0x102E1 & 0xFFFF)
/* 1CDBFC 801DCE8C 3C040001 */  lui        $a0, (0x102E0 >> 16)
/* 1CDC00 801DCE90 0C02A806 */  jal        func_800AA018
/* 1CDC04 801DCE94 348402E0 */   ori       $a0, $a0, (0x102E0 & 0xFFFF)
/* 1CDC08 801DCE98 0C002DAF */  jal        finish_current_thread
glabel func_801DCE9C_ovl13
/* 1CDC0C 801DCE9C 2404001E */   addiu     $a0, $zero, 0x1E
/* 1CDC10 801DCEA0 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 1CDC14 801DCEA4 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 1CDC18 801DCEA8 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 1CDC1C 801DCEAC 8DAF0000 */  lw         $t7, 0x0($t5)
/* 1CDC20 801DCEB0 000F7080 */  sll        $t6, $t7, 2
/* 1CDC24 801DCEB4 002E0821 */  addu       $at, $at, $t6
/* 1CDC28 801DCEB8 C4247B20 */  lwc1       $f4, %lo(D_800E7B20)($at)
/* 1CDC2C 801DCEBC 4600218D */  trunc.w.s  $f6, $f4
glabel func_801DCEC0_ovl14
/* 1CDC30 801DCEC0 44043000 */  mfc1       $a0, $f6
/* 1CDC34 801DCEC4 0C02F07F */  jal        func_800BC1FC
/* 1CDC38 801DCEC8 00000000 */   nop
/* 1CDC3C 801DCECC 0C002DAF */  jal        finish_current_thread
/* 1CDC40 801DCED0 24040030 */   addiu     $a0, $zero, 0x30
/* 1CDC44 801DCED4 0C02BC9F */  jal        func_800AF27C
.L801DCED8_ovl17:
/* 1CDC48 801DCED8 00000000 */   nop
/* 1CDC4C 801DCEDC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1CDC50 801DCEE0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1CDC54 801DCEE4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1CDC58 801DCEE8 2403FFFF */  addiu      $v1, $zero, -0x1
.L801DCEEC_ovl16:
/* 1CDC5C 801DCEEC 8C4C0000 */  lw         $t4, 0x0($v0)
.L801DCEF0_ovl16:
/* 1CDC60 801DCEF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1CDC64 801DCEF4 240D0002 */  addiu      $t5, $zero, 0x2
/* 1CDC68 801DCEF8 000C4080 */  sll        $t0, $t4, 2
/* 1CDC6C 801DCEFC 00280821 */  addu       $at, $at, $t0
/* 1CDC70 801DCF00 AC2398E0 */  sw         $v1, %lo(D_800E98E0)($at)
/* 1CDC74 801DCF04 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1CDC78 801DCF08 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 1CDC7C 801DCF0C 000AC880 */  sll        $t9, $t2, 2
/* 1CDC80 801DCF10 00390821 */  addu       $at, $at, $t9
/* 1CDC84 801DCF14 AC239AA0 */  sw         $v1, %lo(D_800E9AA0)($at)
/* 1CDC88 801DCF18 8C490000 */  lw         $t1, 0x0($v0)
/* 1CDC8C 801DCF1C 3C01800F */  lui        $at, %hi(D_800EA360)
/* 1CDC90 801DCF20 00095880 */  sll        $t3, $t1, 2
/* 1CDC94 801DCF24 002B0821 */  addu       $at, $at, $t3
/* 1CDC98 801DCF28 AC20A360 */  sw         $zero, %lo(D_800EA360)($at)
.L801DCF2C_ovl14:
/* 1CDC9C 801DCF2C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1CDCA0 801DCF30 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1CDCA4 801DCF34 27BD0018 */  addiu      $sp, $sp, 0x18
.L801DCF38_ovl17:
/* 1CDCA8 801DCF38 000F7080 */  sll        $t6, $t7, 2
/* 1CDCAC 801DCF3C 002E0821 */  addu       $at, $at, $t6
/* 1CDCB0 801DCF40 03E00008 */  jr         $ra
/* 1CDCB4 801DCF44 AC2DDC50 */   sw        $t5, %lo(gEntityVtableIndexArray)($at)
