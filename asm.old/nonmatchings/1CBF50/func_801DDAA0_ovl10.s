glabel func_801DDAA0_ovl10
/* 1CE810 801DDAA0 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 1CE814 801DDAA4 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 1CE818 801DDAA8 AFA40000 */  sw         $a0, 0x0($sp)
/* 1CE81C 801DDAAC 3C01800F */  lui        $at, %hi(D_800EA520)
.L801DDAB0_ovl14:
/* 1CE820 801DDAB0 8DF80000 */  lw         $t8, 0x0($t7)
/* 1CE824 801DDAB4 240E0005 */  addiu      $t6, $zero, 0x5
.L801DDAB8_ovl15:
/* 1CE828 801DDAB8 0018C880 */  sll        $t9, $t8, 2
/* 1CE82C 801DDABC 00390821 */  addu       $at, $at, $t9
/* 1CE830 801DDAC0 03E00008 */  jr         $ra
.L801DDAC4_ovl13:
/* 1CE834 801DDAC4 AC2EA520 */   sw        $t6, %lo(D_800EA520)($at)
