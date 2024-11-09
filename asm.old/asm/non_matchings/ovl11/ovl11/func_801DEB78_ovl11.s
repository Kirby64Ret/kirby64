glabel func_801DEB78_ovl11
/* 1E9438 801DEB78 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1E943C 801DEB7C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1E9440 801DEB80 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1E9444 801DEB84 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1E9448 801DEB88 AFA40028 */  sw    $a0, 0x28($sp)
/* 1E944C 801DEB8C 8DCF0000 */  lw    $t7, ($t6)
/* 1E9450 801DEB90 3C02800E */ lui $v0, %hi(D_800E1B50)
/* 1E9454 801DEB94 24190001 */  li    $t9, 1
/* 1E9458 801DEB98 000FC080 */  sll   $t8, $t7, 2
/* 1E945C 801DEB9C 00581021 */  addu  $v0, $v0, $t8
/* 1E9460 801DEBA0 8C421B50 */ lw $v0, %lo(D_800E1B50)($v0)
/* 1E9464 801DEBA4 3C018000 */  lui   $at, 0x8000
/* 1E9468 801DEBA8 8C430094 */  lw    $v1, 0x94($v0)
/* 1E946C 801DEBAC A0590040 */  sb    $t9, 0x40($v0)
/* 1E9470 801DEBB0 8C65001C */  lw    $a1, 0x1c($v1)
/* 1E9474 801DEBB4 10A10005 */  beq   $a1, $at, .L801DEBCC_ovl11
/* 1E9478 801DEBB8 00A02025 */   move  $a0, $a1
/* 1E947C 801DEBBC 0C029D9E */  jal   play_sound
/* 1E9480 801DEBC0 AFA20024 */   sw    $v0, 0x24($sp)
/* 1E9484 801DEBC4 8FA20024 */  lw    $v0, 0x24($sp)
/* 1E9488 801DEBC8 8C430094 */  lw    $v1, 0x94($v0)
.L801DEBCC_ovl11:
/* 1E948C 801DEBCC 8C480088 */  lw    $t0, 0x88($v0)
/* 1E9490 801DEBD0 44800000 */  mtc1  $zero, $f0
/* 1E9494 801DEBD4 8C650018 */  lw    $a1, 0x18($v1)
/* 1E9498 801DEBD8 8D090010 */  lw    $t1, 0x10($t0)
/* 1E949C 801DEBDC 44060000 */  mfc1  $a2, $f0
/* 1E94A0 801DEBE0 00002025 */  move  $a0, $zero
/* 1E94A4 801DEBE4 8D270000 */  lw    $a3, ($t1)
/* 1E94A8 801DEBE8 0C03F55C */  jal   func_800FD570
/* 1E94AC 801DEBEC E7A00010 */   swc1  $f0, 0x10($sp)
/* 1E94B0 801DEBF0 0C068FA0 */  jal   D_801A3E80_ovl11
/* 1E94B4 801DEBF4 8FA40028 */   lw    $a0, 0x28($sp)
/* 1E94B8 801DEBF8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1E94BC 801DEBFC 27BD0028 */  addiu $sp, $sp, 0x28
/* 1E94C0 801DEC00 03E00008 */  jr    $ra
/* 1E94C4 801DEC04 00000000 */   nop   
.type func_801DEB78_ovl11, @function
.size func_801DEB78_ovl11, . - func_801DEB78_ovl11
