glabel func_801DFEC8_ovl16
/* 216178 801DFEC8 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 21617C 801DFECC 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
.L801DFED0_ovl12:
/* 216180 801DFED0 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* 216184 801DFED4 3C01C120 */  lui        $at, (0xC1200000 >> 16)
glabel func_801DFED8_ovl12
/* 216188 801DFED8 8DC20000 */  lw         $v0, 0x0($t6)
/* 21618C 801DFEDC 44812000 */  mtc1       $at, $f4
/* 216190 801DFEE0 3C18800F */  lui        $t8, %hi(D_800E9E20)
/* 216194 801DFEE4 00021080 */  sll        $v0, $v0, 2
/* 216198 801DFEE8 01E27821 */  addu       $t7, $t7, $v0
/* 21619C 801DFEEC 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
/* 2161A0 801DFEF0 27189E20 */  addiu      $t8, $t8, %lo(D_800E9E20)
/* 2161A4 801DFEF4 8DE30024 */  lw         $v1, 0x24($t7)
/* 2161A8 801DFEF8 C4600020 */  lwc1       $f0, 0x20($v1)
/* 2161AC 801DFEFC 4600203C */  c.lt.s     $f4, $f0
/* 2161B0 801DFF00 00000000 */  nop
/* 2161B4 801DFF04 45000007 */  bc1f       .L801DFF24_ovl16
/* 2161B8 801DFF08 00000000 */   nop
/* 2161BC 801DFF0C 00581821 */  addu       $v1, $v0, $t8
/* 2161C0 801DFF10 8C790000 */  lw         $t9, 0x0($v1)
glabel func_801DFF14_ovl15
/* 2161C4 801DFF14 2401FFFD */  addiu      $at, $zero, -0x3
/* 2161C8 801DFF18 03214024 */  and        $t0, $t9, $at
/* 2161CC 801DFF1C 03E00008 */  jr         $ra
/* 2161D0 801DFF20 AC680000 */   sw        $t0, 0x0($v1)
.L801DFF24_ovl16:
/* 2161D4 801DFF24 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 2161D8 801DFF28 00220821 */  addu       $at, $at, $v0
/* 2161DC 801DFF2C C426A6E0 */  lwc1       $f6, %lo(D_800EA6E0)($at)
/* 2161E0 801DFF30 46060201 */  sub.s      $f8, $f0, $f6
/* 2161E4 801DFF34 E4680020 */  swc1       $f8, 0x20($v1)
/* 2161E8 801DFF38 03E00008 */  jr         $ra
/* 2161EC 801DFF3C 00000000 */   nop
