glabel func_801DECAC_ovl14 # 45
/* 20189C 801DECAC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 2018A0 801DECB0 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 2018A4 801DECB4 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 2018A8 801DECB8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 2018AC 801DECBC AFA40038 */  sw          $a0, 0x38($sp)
/* 2018B0 801DECC0 0C044554 */  jal         func_80111550
/* 2018B4 801DECC4 8DC40000 */   lw         $a0, 0x0($t6)
/* 2018B8 801DECC8 3C0F8005 */  lui         $t7, %hi(D_8004A7C4)
/* 2018BC 801DECCC 8DEFA7C4 */  lw          $t7, %lo(D_8004A7C4)($t7)
/* 2018C0 801DECD0 3C04801E */  lui         $a0, %hi(D_801D9DC8)
/* 2018C4 801DECD4 24849DC8 */  addiu       $a0, $a0, %lo(D_801D9DC8)
/* 2018C8 801DECD8 0C044722 */  jal         func_80111C88
/* 2018CC 801DECDC 8DE50000 */   lw         $a1, 0x0($t7)
/* 2018D0 801DECE0 0C0447B3 */  jal         func_80111ECC
/* 2018D4 801DECE4 00402025 */   move       $a0, $v0
/* 2018D8 801DECE8 0C044054 */  jal         func_80110150
/* 2018DC 801DECEC 27A40018 */   addiu      $a0, $sp, 0x18
/* 2018E0 801DECF0 10400007 */  beqz        $v0, .L801DED10
/* 2018E4 801DECF4 8FA40024 */   lw         $a0, 0x24($sp)
/* 2018E8 801DECF8 00002825 */  move        $a1, $zero
/* 2018EC 801DECFC 00003025 */  move        $a2, $zero
/* 2018F0 801DED00 0C05A50C */  jal         func_80169430_ovl3
/* 2018F4 801DED04 24070010 */   addiu      $a3, $zero, 0x10
/* 2018F8 801DED08 10000002 */  b           .L801DED14
/* 2018FC 801DED0C 24020001 */   addiu      $v0, $zero, 0x1
.L801DED10:
/* 201900 801DED10 00001025 */  move        $v0, $zero
.L801DED14:
/* 201904 801DED14 8FBF0014 */  lw          $ra, 0x14($sp)
/* 201908 801DED18 27BD0038 */  addiu       $sp, $sp, 0x38
/* 20190C 801DED1C 03E00008 */  jr          $ra
/* 201910 801DED20 00000000 */   nop
.type func_801DECAC_ovl14, @function
.size func_801DECAC_ovl14, . - func_801DECAC_ovl14
