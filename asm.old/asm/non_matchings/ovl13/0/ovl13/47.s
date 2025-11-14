glabel func_801E3778_ovl13 # 47
/* 1FB6F8 801E3778 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 1FB6FC 801E377C 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 1FB700 801E3780 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1FB704 801E3784 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1FB708 801E3788 AFA40018 */  sw          $a0, 0x18($sp)
/* 1FB70C 801E378C 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1FB710 801E3790 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1FB714 801E3794 000FC080 */  sll         $t8, $t7, 2
/* 1FB718 801E3798 00380821 */  addu        $at, $at, $t8
/* 1FB71C 801E379C 0C06835D */  jal         func_801A0D74_ovl7
/* 1FB720 801E37A0 AC208920 */   sw         $zero, %lo(D_800E8920)($at)
/* 1FB724 801E37A4 3C198005 */  lui         $t9, %hi(D_8004A7C4)
/* 1FB728 801E37A8 8F39A7C4 */  lw          $t9, %lo(D_8004A7C4)($t9)
/* 1FB72C 801E37AC 3C02800E */  lui         $v0, %hi(D_800DFBD0)
/* 1FB730 801E37B0 8F280000 */  lw          $t0, 0x0($t9)
/* 1FB734 801E37B4 00084880 */  sll         $t1, $t0, 2
/* 1FB738 801E37B8 00491021 */  addu        $v0, $v0, $t1
/* 1FB73C 801E37BC 8C42FBD0 */  lw          $v0, %lo(D_800DFBD0)($v0)
/* 1FB740 801E37C0 8C44005C */  lw          $a0, 0x5C($v0)
/* 1FB744 801E37C4 8C450010 */  lw          $a1, 0x10($v0)
/* 1FB748 801E37C8 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1FB74C 801E37CC 8C460018 */   lw         $a2, 0x18($v0)
/* 1FB750 801E37D0 0C078E56 */  jal         func_801E3958_ovl13
/* 1FB754 801E37D4 8FA40018 */   lw         $a0, 0x18($sp)
/* 1FB758 801E37D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1FB75C 801E37DC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1FB760 801E37E0 03E00008 */  jr          $ra
/* 1FB764 801E37E4 00000000 */   nop
.type func_801E3778_ovl13, @function

.size func_801E3778_ovl13, . - func_801E3778_ovl13
