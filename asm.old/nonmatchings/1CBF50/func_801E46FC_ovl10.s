glabel func_801E46FC_ovl10
/* 1D546C 801E46FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D5470 801E4700 44866000 */  mtc1       $a2, $f12
/* 1D5474 801E4704 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D5478 801E4708 14A00012 */  bnez       $a1, func_801E4754_ovl16
/* 1D547C 801E470C AFA40018 */   sw        $a0, 0x18($sp)
/* 1D5480 801E4710 4600610D */  trunc.w.s  $f4, $f12
/* 1D5484 801E4714 24010002 */  addiu      $at, $zero, 0x2
/* 1D5488 801E4718 440F2000 */  mfc1       $t7, $f4
/* 1D548C 801E471C 00000000 */  nop
/* 1D5490 801E4720 55E1000D */  bnel       $t7, $at, .L801E4758_ovl10
.L801E4724_ovl9:
/* 1D5494 801E4724 8FBF0014 */   lw        $ra, 0x14($sp)
.L801E4728_ovl9:
/* 1D5498 801E4728 44806000 */  mtc1       $zero, $f12
/* 1D549C 801E472C 0C02BB30 */  jal        func_800AECC0
/* 1D54A0 801E4730 00000000 */   nop
/* 1D54A4 801E4734 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1D54A8 801E4738 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1D54AC 801E473C 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1D54B0 801E4740 24180001 */  addiu      $t8, $zero, 0x1
/* 1D54B4 801E4744 8F280000 */  lw         $t0, 0x0($t9)
/* 1D54B8 801E4748 00084880 */  sll        $t1, $t0, 2
/* 1D54BC 801E474C 00290821 */  addu       $at, $at, $t1
/* 1D54C0 801E4750 AC389E20 */  sw         $t8, %lo(D_800E9E20)($at)
glabel func_801E4754_ovl16
/* 1D54C4 801E4754 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E4758_ovl10:
/* 1D54C8 801E4758 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D54CC 801E475C 03E00008 */  jr         $ra
/* 1D54D0 801E4760 00000000 */   nop
