glabel func_801DB684_ovl14
/* 1E5F44 801DB684 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1E5F48 801DB688 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1E5F4C 801DB68C 3C0E800E */  lui        $t6, %hi(D_800E4C50)
/* 1E5F50 801DB690 25CE4C50 */  addiu      $t6, $t6, %lo(D_800E4C50)
/* 1E5F54 801DB694 8C640000 */  lw         $a0, 0x0($v1)
glabel func_801DB698_ovl16
/* 1E5F58 801DB698 44807000 */  mtc1       $zero, $f14
.L801DB69C_ovl15:
/* 1E5F5C 801DB69C 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 1E5F60 801DB6A0 00042080 */  sll        $a0, $a0, 2
/* 1E5F64 801DB6A4 008E2821 */  addu       $a1, $a0, $t6
/* 1E5F68 801DB6A8 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 1E5F6C 801DB6AC 00001025 */  or         $v0, $zero, $zero
/* 1E5F70 801DB6B0 00240821 */  addu       $at, $at, $a0
/* 1E5F74 801DB6B4 460E003C */  c.lt.s     $f0, $f14
/* 1E5F78 801DB6B8 3C18800E */  lui        $t8, %hi(D_800E4C50)
/* 1E5F7C 801DB6BC 45020004 */  bc1fl      .L801DB6D0_ovl11
.L801DB6C0_ovl15:
/* 1E5F80 801DB6C0 46000086 */   mov.s     $f2, $f0
/* 1E5F84 801DB6C4 10000002 */  b          .L801DB6D0_ovl11
.L801DB6C8_ovl12:
/* 1E5F88 801DB6C8 46000087 */   neg.s     $f2, $f0
.L801DB6CC_ovl10:
/* 1E5F8C 801DB6CC 46000086 */  mov.s      $f2, $f0
.L801DB6D0_ovl11:
/* 1E5F90 801DB6D0 C420A8A0 */  lwc1       $f0, %lo(D_800EA8A0)($at)
/* 1E5F94 801DB6D4 3C01801E */  lui        $at, %hi(func_801E0BF8_ovl9 + 0x1C)
glabel func_801DB6D8_ovl12
/* 1E5F98 801DB6D8 4600103C */  c.lt.s     $f2, $f0
glabel func_801DB6DC_ovl9
/* 1E5F9C 801DB6DC 00000000 */  nop
/* 1E5FA0 801DB6E0 45020024 */  bc1fl      .L801DB774_ovl11
.L801DB6E4_ovl15:
/* 1E5FA4 801DB6E4 460E603C */   c.lt.s    $f12, $f14
/* 1E5FA8 801DB6E8 460E603C */  c.lt.s     $f12, $f14
/* 1E5FAC 801DB6EC 3C01801E */  lui        $at, %hi(func_801E0BF8_ovl9 + 0x18)
/* 1E5FB0 801DB6F0 240F0001 */  addiu      $t7, $zero, 0x1
.L801DB6F4_ovl10:
/* 1E5FB4 801DB6F4 45020004 */  bc1fl      .L801DB708_ovl15
/* 1E5FB8 801DB6F8 46006086 */   mov.s     $f2, $f12
/* 1E5FBC 801DB6FC 10000002 */  b          .L801DB708_ovl15
/* 1E5FC0 801DB700 46006087 */   neg.s     $f2, $f12
.L801DB704_ovl10:
/* 1E5FC4 801DB704 46006086 */  mov.s      $f2, $f12
.L801DB708_ovl15:
/* 1E5FC8 801DB708 C4240C10 */  lwc1       $f4, %lo(func_801E0BF8_ovl9 + 0x18)($at)
/* 1E5FCC 801DB70C 3C01800F */  lui        $at, %hi(D_800EA520)
.L801DB710_ovl17:
/* 1E5FD0 801DB710 00240821 */  addu       $at, $at, $a0
/* 1E5FD4 801DB714 4602203C */  c.lt.s     $f4, $f2
/* 1E5FD8 801DB718 00000000 */  nop
/* 1E5FDC 801DB71C 4500000B */  bc1f       .L801DB74C_ovl11
/* 1E5FE0 801DB720 00000000 */   nop
.L801DB724_ovl16:
/* 1E5FE4 801DB724 460E603C */  c.lt.s     $f12, $f14
.L801DB728_ovl15:
/* 1E5FE8 801DB728 3C01800F */  lui        $at, %hi(D_800EA520)
glabel func_801DB72C_ovl12
/* 1E5FEC 801DB72C 24020001 */  addiu      $v0, $zero, 0x1
/* 1E5FF0 801DB730 00240821 */  addu       $at, $at, $a0
/* 1E5FF4 801DB734 45000003 */  bc1f       .L801DB744_ovl16
/* 1E5FF8 801DB738 00000000 */   nop
.L801DB73C_ovl13:
/* 1E5FFC 801DB73C 10000001 */  b          .L801DB744_ovl16
.L801DB740_ovl17:
/* 1E6000 801DB740 2402FFFF */   addiu     $v0, $zero, -0x1
.L801DB744_ovl16:
/* 1E6004 801DB744 10000002 */  b          .L801DB750_ovl11
/* 1E6008 801DB748 AC2FA520 */   sw        $t7, %lo(D_800EA520)($at)
.L801DB74C_ovl11:
/* 1E600C 801DB74C AC20A520 */  sw         $zero, %lo(D_800EA520)($at)
.L801DB750_ovl11:
/* 1E6010 801DB750 8C640000 */  lw         $a0, 0x0($v1)
/* 1E6014 801DB754 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 1E6018 801DB758 27184C50 */  addiu      $t8, $t8, %lo(D_800E4C50)
/* 1E601C 801DB75C 00042080 */  sll        $a0, $a0, 2
/* 1E6020 801DB760 00240821 */  addu       $at, $at, $a0
/* 1E6024 801DB764 C420A8A0 */  lwc1       $f0, %lo(D_800EA8A0)($at)
.L801DB768_ovl17:
/* 1E6028 801DB768 10000013 */  b          .L801DB7B8_ovl11
.L801DB76C_ovl17:
/* 1E602C 801DB76C 00982821 */   addu      $a1, $a0, $t8
glabel func_801DB770_ovl15
/* 1E6030 801DB770 460E603C */  c.lt.s     $f12, $f14
.L801DB774_ovl11:
/* 1E6034 801DB774 00000000 */  nop
/* 1E6038 801DB778 45020004 */  bc1fl      .L801DB78C_ovl11
/* 1E603C 801DB77C 46006086 */   mov.s     $f2, $f12
glabel func_801DB780_ovl14
/* 1E6040 801DB780 10000002 */  b          .L801DB78C_ovl11
/* 1E6044 801DB784 46006087 */   neg.s     $f2, $f12
glabel func_801DB788_ovl14
/* 1E6048 801DB788 46006086 */  mov.s      $f2, $f12
.L801DB78C_ovl11:
/* 1E604C 801DB78C C4260C14 */  lwc1       $f6, %lo(func_801E0BF8_ovl9 + 0x1C)($at)
/* 1E6050 801DB790 4602303C */  c.lt.s     $f6, $f2
/* 1E6054 801DB794 00000000 */  nop
/* 1E6058 801DB798 45020008 */  bc1fl      .L801DB7BC_ovl11
/* 1E605C 801DB79C 44824000 */   mtc1      $v0, $f8
.L801DB7A0_ovl9:
/* 1E6060 801DB7A0 460E603C */  c.lt.s     $f12, $f14
/* 1E6064 801DB7A4 24020001 */  addiu      $v0, $zero, 0x1
glabel func_801DB7A8_ovl13
/* 1E6068 801DB7A8 45000003 */  bc1f       .L801DB7B8_ovl11
/* 1E606C 801DB7AC 00000000 */   nop
/* 1E6070 801DB7B0 10000001 */  b          .L801DB7B8_ovl11
/* 1E6074 801DB7B4 2402FFFF */   addiu     $v0, $zero, -0x1
.L801DB7B8_ovl11:
/* 1E6078 801DB7B8 44824000 */  mtc1       $v0, $f8
.L801DB7BC_ovl11:
/* 1E607C 801DB7BC 00000000 */  nop
/* 1E6080 801DB7C0 468042A0 */  cvt.s.w    $f10, $f8
/* 1E6084 801DB7C4 460A0402 */  mul.s      $f16, $f0, $f10
/* 1E6088 801DB7C8 03E00008 */  jr         $ra
/* 1E608C 801DB7CC E4B00000 */   swc1      $f16, 0x0($a1)
