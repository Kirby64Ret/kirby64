glabel func_801E7760_ovl10
/* 1D84D0 801E7760 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1D84D4 801E7764 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1D84D8 801E7768 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D84DC 801E776C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D84E0 801E7770 8DC30000 */  lw         $v1, 0x0($t6)
/* 1D84E4 801E7774 3C0F800F */  lui        $t7, %hi(D_800E9C60)
/* 1D84E8 801E7778 00002825 */  or         $a1, $zero, $zero
/* 1D84EC 801E777C 00031880 */  sll        $v1, $v1, 2
/* 1D84F0 801E7780 01E37821 */  addu       $t7, $t7, $v1
.L801E7784_ovl9:
/* 1D84F4 801E7784 8DEF9C60 */  lw         $t7, %lo(D_800E9C60)($t7)
/* 1D84F8 801E7788 11E00008 */  beqz       $t7, .L801E77AC_ovl10
/* 1D84FC 801E778C 00000000 */   nop
/* 1D8500 801E7790 0C06835D */  jal        func_801A0D74_ovl7
/* 1D8504 801E7794 00000000 */   nop
/* 1D8508 801E7798 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 1D850C 801E779C 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
.L801E77A0_ovl9:
/* 1D8510 801E77A0 00402825 */  or         $a1, $v0, $zero
/* 1D8514 801E77A4 8F030000 */  lw         $v1, 0x0($t8)
/* 1D8518 801E77A8 00031880 */  sll        $v1, $v1, 2
.L801E77AC_ovl10:
/* 1D851C 801E77AC 14A0000B */  bnez       $a1, .L801E77DC_ovl10
/* 1D8520 801E77B0 3C04800E */   lui       $a0, %hi(D_800DDFD0)
/* 1D8524 801E77B4 00832021 */  addu       $a0, $a0, $v1
/* 1D8528 801E77B8 3C06801F */  lui        $a2, %hi(D_801F454C_ovl10)
/* 1D852C 801E77BC 24C6454C */  addiu      $a2, $a2, %lo(D_801F454C_ovl10)
/* 1D8530 801E77C0 8C84DFD0 */  lw         $a0, %lo(D_800DDFD0)($a0)
/* 1D8534 801E77C4 0C02911F */  jal        call_virtual_function
/* 1D8538 801E77C8 24050003 */   addiu     $a1, $zero, 0x3
/* 1D853C 801E77CC 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1D8540 801E77D0 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1D8544 801E77D4 8F230000 */  lw         $v1, 0x0($t9)
/* 1D8548 801E77D8 00031880 */  sll        $v1, $v1, 2
.L801E77DC_ovl10:
/* 1D854C 801E77DC 3C08800F */  lui        $t0, %hi(D_800E9C60)
/* 1D8550 801E77E0 01034021 */  addu       $t0, $t0, $v1
/* 1D8554 801E77E4 8D089C60 */  lw         $t0, %lo(D_800E9C60)($t0)
.L801E77E8_ovl16:
/* 1D8558 801E77E8 51000004 */  beql       $t0, $zero, .L801E77FC_ovl10
/* 1D855C 801E77EC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1D8560 801E77F0 0C07980C */  jal        func_801E6030_ovl10
/* 1D8564 801E77F4 00000000 */   nop
/* 1D8568 801E77F8 8FBF0014 */  lw         $ra, 0x14($sp)
.L801E77FC_ovl10:
/* 1D856C 801E77FC 27BD0018 */  addiu      $sp, $sp, 0x18
.L801E7800_ovl16:
/* 1D8570 801E7800 03E00008 */  jr         $ra
/* 1D8574 801E7804 00000000 */   nop
