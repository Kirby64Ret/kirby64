glabel func_801E36D8_ovl13 # 46
/* 1FB658 801E36D8 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 1FB65C 801E36DC 2463A7C4 */  addiu       $v1, $v1, %lo(D_8004A7C4)
/* 1FB660 801E36E0 8C620000 */  lw          $v0, 0x0($v1)
/* 1FB664 801E36E4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1FB668 801E36E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1FB66C 801E36EC AFA40018 */  sw          $a0, 0x18($sp)
/* 1FB670 801E36F0 8C4F0000 */  lw          $t7, 0x0($v0)
/* 1FB674 801E36F4 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1FB678 801E36F8 240E000E */  addiu       $t6, $zero, 0xE
/* 1FB67C 801E36FC 000FC080 */  sll         $t8, $t7, 2
/* 1FB680 801E3700 00380821 */  addu        $at, $at, $t8
/* 1FB684 801E3704 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 1FB688 801E3708 8C480000 */  lw          $t0, 0x0($v0)
/* 1FB68C 801E370C 3C04800E */  lui         $a0, %hi(D_800E1B50)
/* 1FB690 801E3710 24841B50 */  addiu       $a0, $a0, %lo(D_800E1B50)
/* 1FB694 801E3714 00084880 */  sll         $t1, $t0, 2
/* 1FB698 801E3718 00895021 */  addu        $t2, $a0, $t1
/* 1FB69C 801E371C 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1FB6A0 801E3720 3C19801E */  lui         $t9, %hi(D_801D93F0)
/* 1FB6A4 801E3724 273993F0 */  addiu       $t9, $t9, %lo(D_801D93F0)
/* 1FB6A8 801E3728 AD79008C */  sw          $t9, 0x8C($t3)
/* 1FB6AC 801E372C 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1FB6B0 801E3730 3C0C801E */  lui         $t4, %hi(D_801DAE1C)
/* 1FB6B4 801E3734 258CAE1C */  addiu       $t4, $t4, %lo(D_801DAE1C)
/* 1FB6B8 801E3738 8DAF0000 */  lw          $t7, 0x0($t5)
/* 1FB6BC 801E373C 000F7080 */  sll         $t6, $t7, 2
/* 1FB6C0 801E3740 008EC021 */  addu        $t8, $a0, $t6
/* 1FB6C4 801E3744 8F080000 */  lw          $t0, 0x0($t8)
/* 1FB6C8 801E3748 0C02CCFD */  jal         func_800B33F4
/* 1FB6CC 801E374C AD0C0098 */   sw         $t4, 0x98($t0)
/* 1FB6D0 801E3750 0C002DAF */  jal         finish_current_thread
/* 1FB6D4 801E3754 2404001E */   addiu      $a0, $zero, 0x1E
/* 1FB6D8 801E3758 0C03DB1E */  jal         func_800F6C78
/* 1FB6DC 801E375C 00000000 */   nop
/* 1FB6E0 801E3760 0C02BE85 */  jal         func_800AFA14
/* 1FB6E4 801E3764 00000000 */   nop
/* 1FB6E8 801E3768 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1FB6EC 801E376C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1FB6F0 801E3770 03E00008 */  jr          $ra
/* 1FB6F4 801E3774 00000000 */   nop
.type func_801E36D8_ovl13, @function

.size func_801E36D8_ovl13, . - func_801E36D8_ovl13
