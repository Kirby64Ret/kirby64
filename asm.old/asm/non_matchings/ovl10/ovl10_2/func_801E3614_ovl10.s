glabel func_801E3614_ovl10
/* 1D4384 801E3614 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D4388 801E3618 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D438C 801E361C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1D4390 801E3620 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D4394 801E3624 AFA40020 */  sw    $a0, 0x20($sp)
/* 1D4398 801E3628 8DC20000 */  lw    $v0, ($t6)
/* 1D439C 801E362C 3C03800E */  lui   $v1, %hi(gEntitiesNextPosXArray) # $v1, 0x800e
/* 1D43A0 801E3630 246325D0 */  addiu $v1, %lo(gEntitiesNextPosXArray) # addiu $v1, $v1, 0x25d0
/* 1D43A4 801E3634 3C04800E */  lui   $a0, %hi(gEntitiesNextPosYArray) # $a0, 0x800e
/* 1D43A8 801E3638 00021080 */  sll   $v0, $v0, 2
/* 1D43AC 801E363C 24842790 */  addiu $a0, %lo(gEntitiesNextPosYArray) # addiu $a0, $a0, 0x2790
/* 1D43B0 801E3640 00627821 */  addu  $t7, $v1, $v0
/* 1D43B4 801E3644 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1D43B8 801E3648 C5E60000 */  lwc1  $f6, ($t7)
/* 1D43BC 801E364C C4640000 */  lwc1  $f4, ($v1)
/* 1D43C0 801E3650 44818000 */  mtc1  $at, $f16
/* 1D43C4 801E3654 C48A0000 */  lwc1  $f10, ($a0)
/* 1D43C8 801E3658 46062201 */  sub.s $f8, $f4, $f6
/* 1D43CC 801E365C 0082C021 */  addu  $t8, $a0, $v0
/* 1D43D0 801E3660 C7040000 */  lwc1  $f4, ($t8)
/* 1D43D4 801E3664 46105480 */  add.s $f18, $f10, $f16
/* 1D43D8 801E3668 44805000 */  mtc1  $zero, $f10
/* 1D43DC 801E366C 3C05800E */  lui   $a1, %hi(gEntitiesNextPosZArray) # $a1, 0x800e
/* 1D43E0 801E3670 24A52950 */  addiu $a1, %lo(gEntitiesNextPosZArray) # addiu $a1, $a1, 0x2950
/* 1D43E4 801E3674 46049001 */  sub.s $f0, $f18, $f4
/* 1D43E8 801E3678 E7A8001C */  swc1  $f8, 0x1c($sp)
/* 1D43EC 801E367C 00A2C821 */  addu  $t9, $a1, $v0
/* 1D43F0 801E3680 C7280000 */  lwc1  $f8, ($t9)
/* 1D43F4 801E3684 460A003C */  c.lt.s $f0, $f10
/* 1D43F8 801E3688 C4A60000 */  lwc1  $f6, ($a1)
/* 1D43FC 801E368C 45000008 */  bc1f  .L801E36B0_ovl10
/* 1D4400 801E3690 46083081 */   sub.s $f2, $f6, $f8
/* 1D4404 801E3694 46000402 */  mul.s $f16, $f0, $f0
/* 1D4408 801E3698 00000000 */  nop   
/* 1D440C 801E369C 46021482 */  mul.s $f18, $f2, $f2
/* 1D4410 801E36A0 0C00CAC8 */  jal   sqrtf
/* 1D4414 801E36A4 46128300 */   add.s $f12, $f16, $f18
/* 1D4418 801E36A8 10000007 */  b     .L801E36C8_ovl10
/* 1D441C 801E36AC 46000387 */   neg.s $f14, $f0
.L801E36B0_ovl10:
/* 1D4420 801E36B0 46000102 */  mul.s $f4, $f0, $f0
/* 1D4424 801E36B4 00000000 */  nop   
/* 1D4428 801E36B8 46021182 */  mul.s $f6, $f2, $f2
/* 1D442C 801E36BC 0C00CAC8 */  jal   sqrtf
/* 1D4430 801E36C0 46062300 */   add.s $f12, $f4, $f6
/* 1D4434 801E36C4 46000386 */  mov.s $f14, $f0
.L801E36C8_ovl10:
/* 1D4438 801E36C8 0C0061C3 */  jal   atan2f
/* 1D443C 801E36CC C7AC001C */   lwc1  $f12, 0x1c($sp)
/* 1D4440 801E36D0 3C01801F */  lui   $at, %hi(D_801F4A70_ovl10) # $at, 0x801f
/* 1D4444 801E36D4 C42C4A70 */  lwc1  $f12, %lo(D_801F4A70_ovl10)($at)
/* 1D4448 801E36D8 46000086 */  mov.s $f2, $f0
/* 1D444C 801E36DC 3C01801F */  lui   $at, %hi(D_801F4A74_ovl10) # $at, 0x801f
/* 1D4450 801E36E0 4600603C */  c.lt.s $f12, $f0
/* 1D4454 801E36E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D4458 801E36E8 45000007 */  bc1f  .L801E3708_ovl10
/* 1D445C 801E36EC 00000000 */   nop   
/* 1D4460 801E36F0 C4204A74 */  lwc1  $f0, %lo(D_801F4A74_ovl10)($at)
/* 1D4464 801E36F4 46001081 */  sub.s $f2, $f2, $f0
.L801E36F8_ovl10:
/* 1D4468 801E36F8 4602603C */  c.lt.s $f12, $f2
/* 1D446C 801E36FC 00000000 */  nop   
/* 1D4470 801E3700 4503FFFD */  bc1tl .L801E36F8_ovl10
/* 1D4474 801E3704 46001081 */   sub.s $f2, $f2, $f0
.L801E3708_ovl10:
/* 1D4478 801E3708 3C01801F */  lui   $at, %hi(D_801F4A78_ovl10) # $at, 0x801f
/* 1D447C 801E370C C4204A78 */  lwc1  $f0, %lo(D_801F4A78_ovl10)($at)
/* 1D4480 801E3710 3C01801F */  lui   $at, %hi(D_801F4A7C_ovl10) # $at, 0x801f
/* 1D4484 801E3714 C42C4A7C */  lwc1  $f12, %lo(D_801F4A7C_ovl10)($at)
/* 1D4488 801E3718 460C103C */  c.lt.s $f2, $f12
/* 1D448C 801E371C 00000000 */  nop   
/* 1D4490 801E3720 45020007 */  bc1fl .L801E3740_ovl10
/* 1D4494 801E3724 46001006 */   mov.s $f0, $f2
/* 1D4498 801E3728 46001080 */  add.s $f2, $f2, $f0
.L801E372C_ovl10:
/* 1D449C 801E372C 460C103C */  c.lt.s $f2, $f12
/* 1D44A0 801E3730 00000000 */  nop   
/* 1D44A4 801E3734 4503FFFD */  bc1tl .L801E372C_ovl10
/* 1D44A8 801E3738 46001080 */   add.s $f2, $f2, $f0
/* 1D44AC 801E373C 46001006 */  mov.s $f0, $f2
.L801E3740_ovl10:
/* 1D44B0 801E3740 03E00008 */  jr    $ra
/* 1D44B4 801E3744 27BD0020 */   addiu $sp, $sp, 0x20
.type func_801E3614_ovl10, @function
.size func_801E3614_ovl10, . - func_801E3614_ovl10
