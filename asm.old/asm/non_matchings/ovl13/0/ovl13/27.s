glabel func_801DF588_ovl13 # 27
/* 1F7508 801DF588 44866000 */  mtc1        $a2, $f12
/* 1F750C 801DF58C 14A0000E */  bnez        $a1, L801DF5C8_ovl13
/* 1F7510 801DF590 AFA40000 */   sw         $a0, 0x0($sp)
/* 1F7514 801DF594 4600610D */  trunc.w.s   $f4, $f12
/* 1F7518 801DF598 24010001 */  addiu       $at, $zero, 0x1
/* 1F751C 801DF59C 3C188005 */  lui         $t8, %hi(D_8004A7C4)
/* 1F7520 801DF5A0 440F2000 */  mfc1        $t7, $f4
/* 1F7524 801DF5A4 00000000 */  nop
/* 1F7528 801DF5A8 15E10007 */  bne         $t7, $at, L801DF5C8_ovl13
/* 1F752C 801DF5AC 00000000 */   nop
/* 1F7530 801DF5B0 8F18A7C4 */  lw          $t8, %lo(D_8004A7C4)($t8)
/* 1F7534 801DF5B4 3C01800F */  lui         $at, %hi(D_800E9FE0)
/* 1F7538 801DF5B8 8F190000 */  lw          $t9, 0x0($t8)
/* 1F753C 801DF5BC 00194080 */  sll         $t0, $t9, 2
/* 1F7540 801DF5C0 00280821 */  addu        $at, $at, $t0
/* 1F7544 801DF5C4 AC209FE0 */  sw          $zero, %lo(D_800E9FE0)($at)
glabel L801DF5C8_ovl13
/* 1F7548 801DF5C8 03E00008 */  jr          $ra
/* 1F754C 801DF5CC 00000000 */   nop
.type func_801DF588_ovl13, @function

.size func_801DF588_ovl13, . - func_801DF588_ovl13
