glabel func_80161610_ovl5
/* 108A80 80161610 00047080 */  sll        $t6, $a0, 2
/* 108A84 80161614 3C028019 */  lui        $v0, %hi(D_8018E030_ovl5)
/* 108A88 80161618 004E1021 */  addu       $v0, $v0, $t6
/* 108A8C 8016161C 8C42E030 */  lw         $v0, %lo(D_8018E030_ovl5)($v0)
/* 108A90 80161620 3C0F800E */  lui        $t7, %hi(gEntitiesNextPosXArray)
/* 108A94 80161624 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 108A98 80161628 00021880 */  sll        $v1, $v0, 2
/* 108A9C 8016162C 00230821 */  addu       $at, $at, $v1
/* 108AA0 80161630 25EF25D0 */  addiu      $t7, $t7, %lo(gEntitiesNextPosXArray)
.L80161634_ovl3:
/* 108AA4 80161634 C420AA60 */  lwc1       $f0, %lo(D_800EAA60)($at)
/* 108AA8 80161638 44804000 */  mtc1       $zero, $f8
/* 108AAC 8016163C 006F2821 */  addu       $a1, $v1, $t7
/* 108AB0 80161640 C4A40000 */  lwc1       $f4, 0x0($a1)
/* 108AB4 80161644 4608003C */  c.lt.s     $f0, $f8
/* 108AB8 80161648 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 108ABC 8016164C 46002180 */  add.s      $f6, $f4, $f0
/* 108AC0 80161650 00230821 */  addu       $at, $at, $v1
/* 108AC4 80161654 4500000B */  bc1f       .L80161684_ovl5
/* 108AC8 80161658 E4A60000 */   swc1      $f6, 0x0($a1)
/* 108ACC 8016165C 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 108AD0 80161660 00230821 */  addu       $at, $at, $v1
/* 108AD4 80161664 C420A6E0 */  lwc1       $f0, %lo(D_800EA6E0)($at)
/* 108AD8 80161668 C4AA0000 */  lwc1       $f10, 0x0($a1)
/* 108ADC 8016166C 4600503E */  c.le.s     $f10, $f0
/* 108AE0 80161670 00000000 */  nop
/* 108AE4 80161674 4500000A */  bc1f       .L801616A0_ovl5
/* 108AE8 80161678 00000000 */   nop
.L8016167C_ovl3:
/* 108AEC 8016167C 03E00008 */  jr         $ra
/* 108AF0 80161680 E4A00000 */   swc1      $f0, 0x0($a1)
.L80161684_ovl5:
/* 108AF4 80161684 C420A6E0 */  lwc1       $f0, %lo(D_800EA6E0)($at)
/* 108AF8 80161688 C4B00000 */  lwc1       $f16, 0x0($a1)
.L8016168C_ovl3:
/* 108AFC 8016168C 4610003E */  c.le.s     $f0, $f16
/* 108B00 80161690 00000000 */  nop
/* 108B04 80161694 45000002 */  bc1f       .L801616A0_ovl5
/* 108B08 80161698 00000000 */   nop
/* 108B0C 8016169C E4A00000 */  swc1       $f0, 0x0($a1)
.L801616A0_ovl5:
/* 108B10 801616A0 03E00008 */  jr         $ra
/* 108B14 801616A4 00000000 */   nop
