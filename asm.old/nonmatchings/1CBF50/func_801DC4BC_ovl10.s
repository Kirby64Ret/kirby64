glabel func_801DC4BC_ovl11
/* 1CD22C 801DC4BC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1CD230 801DC4C0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1CD234 801DC4C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CD238 801DC4C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CD23C 801DC4CC AFA40018 */  sw         $a0, 0x18($sp)
/* 1CD240 801DC4D0 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1CD244 801DC4D4 3C06800E */  lui        $a2, %hi(D_800E6A10)
/* 1CD248 801DC4D8 24C66A10 */  addiu      $a2, $a2, %lo(D_800E6A10)
/* 1CD24C 801DC4DC 000E7880 */  sll        $t7, $t6, 2
.L801DC4E0_ovl11:
/* 1CD250 801DC4E0 00CF2821 */  addu       $a1, $a2, $t7
/* 1CD254 801DC4E4 C4A40000 */  lwc1       $f4, 0x0($a1)
/* 1CD258 801DC4E8 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 1CD25C 801DC4EC 44815000 */  mtc1       $at, $f10
.L801DC4F0_ovl16:
/* 1CD260 801DC4F0 46002187 */  neg.s      $f6, $f4
.L801DC4F4_ovl16:
/* 1CD264 801DC4F4 3C01800E */  lui        $at, %hi(D_800E64D0)
glabel func_801DC4F8_ovl9
/* 1CD268 801DC4F8 E4A60000 */  swc1       $f6, 0x0($a1)
/* 1CD26C 801DC4FC 8C430000 */  lw         $v1, 0x0($v0)
/* 1CD270 801DC500 24040006 */  addiu      $a0, $zero, 0x6
.L801DC504_ovl11:
/* 1CD274 801DC504 00031880 */  sll        $v1, $v1, 2
/* 1CD278 801DC508 00C3C021 */  addu       $t8, $a2, $v1
/* 1CD27C 801DC50C C7080000 */  lwc1       $f8, 0x0($t8)
/* 1CD280 801DC510 00230821 */  addu       $at, $at, $v1
.L801DC514_ovl16:
/* 1CD284 801DC514 460A4402 */  mul.s      $f16, $f8, $f10
.L801DC518_ovl14:
/* 1CD288 801DC518 0C002DAF */  jal        finish_current_thread
/* 1CD28C 801DC51C E43064D0 */   swc1      $f16, %lo(D_800E64D0)($at)
.L801DC520_ovl14:
/* 1CD290 801DC520 0C02CCFD */  jal        func_800B33F4
/* 1CD294 801DC524 00000000 */   nop
/* 1CD298 801DC528 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1CD29C 801DC52C 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1CD2A0 801DC530 2404007D */  addiu      $a0, $zero, 0x7D
.L801DC534_ovl15:
/* 1CD2A4 801DC534 0C02C67D */  jal        func_800B19F4
.L801DC538_ovl11:
/* 1CD2A8 801DC538 8F250000 */   lw        $a1, 0x0($t9)
/* 1CD2AC 801DC53C 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 1CD2B0 801DC540 8CA5A7C4 */  lw         $a1, %lo(D_8004A7C4)($a1)
/* 1CD2B4 801DC544 0C02BEED */  jal        func_800AFBB4
/* 1CD2B8 801DC548 00002025 */   or        $a0, $zero, $zero
.L801DC54C_ovl13:
/* 1CD2BC 801DC54C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
.L801DC550_ovl11:
/* 1CD2C0 801DC550 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1CD2C4 801DC554 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1CD2C8 801DC558 8C480000 */  lw         $t0, 0x0($v0)
/* 1CD2CC 801DC55C 00084880 */  sll        $t1, $t0, 2
/* 1CD2D0 801DC560 00290821 */  addu       $at, $at, $t1
.L801DC564_ovl12:
/* 1CD2D4 801DC564 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
/* 1CD2D8 801DC568 8C4A0000 */  lw         $t2, 0x0($v0)
.L801DC56C_ovl11:
/* 1CD2DC 801DC56C 3C01800E */  lui        $at, %hi(D_800DF150)
.L801DC570_ovl16:
/* 1CD2E0 801DC570 000A5880 */  sll        $t3, $t2, 2
.L801DC574_ovl16:
/* 1CD2E4 801DC574 002B0821 */  addu       $at, $at, $t3
/* 1CD2E8 801DC578 0C068CA0 */  jal        func_801A3280_ovl7
/* 1CD2EC 801DC57C AC20F150 */   sw        $zero, %lo(D_800DF150)($at)
/* 1CD2F0 801DC580 0C02BE85 */  jal        func_800AFA14
.L801DC584_ovl15:
/* 1CD2F4 801DC584 00000000 */   nop
.L801DC588_ovl12:
/* 1CD2F8 801DC588 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1CD2FC 801DC58C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1CD300 801DC590 03E00008 */  jr         $ra
glabel func_801DC594_ovl16
/* 1CD304 801DC594 00000000 */   nop
