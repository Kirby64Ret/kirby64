glabel func_8011A198
/* 0A2C08 8011A198 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A2C0C 8011A19C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A2C10 8011A1A0 AFA40020 */  sw    $a0, 0x20($sp)
/* 0A2C14 8011A1A4 8C8F004C */  lw    $t7, 0x4c($a0)
/* 0A2C18 8011A1A8 0C047891 */  jal   func_8011E244
/* 0A2C1C 8011A1AC AFAF001C */   sw    $t7, 0x1c($sp)
/* 0A2C20 8011A1B0 8FB8001C */  lw    $t8, 0x1c($sp)
/* 0A2C24 8011A1B4 93190000 */  lbu   $t9, ($t8)
/* 0A2C28 8011A1B8 54590013 */  bnel  $v0, $t9, .L8011A208_ovl2
/* 0A2C2C 8011A1BC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A2C30 8011A1C0 0C046818 */  jal   func_8011A060
/* 0A2C34 8011A1C4 8FA40020 */   lw    $a0, 0x20($sp)
/* 0A2C38 8011A1C8 8FA8001C */  lw    $t0, 0x1c($sp)
/* 0A2C3C 8011A1CC 3C0B8013 */ lui $t3, %hi(D_8012D891)
/* 0A2C40 8011A1D0 3C04800E */ lui $a0, %hi(D_800DE350)
/* 0A2C44 8011A1D4 91090000 */  lbu   $t1, ($t0)
/* 0A2C48 8011A1D8 00095080 */  sll   $t2, $t1, 2
/* 0A2C4C 8011A1DC 01495023 */  subu  $t2, $t2, $t1
/* 0A2C50 8011A1E0 000A50C0 */  sll   $t2, $t2, 3
/* 0A2C54 8011A1E4 01495023 */  subu  $t2, $t2, $t1
/* 0A2C58 8011A1E8 000A50C0 */  sll   $t2, $t2, 3
/* 0A2C5C 8011A1EC 016A5821 */  addu  $t3, $t3, $t2
/* 0A2C60 8011A1F0 916BD891 */ lbu $t3, %lo(D_8012D891)($t3)
/* 0A2C64 8011A1F4 000B6080 */  sll   $t4, $t3, 2
/* 0A2C68 8011A1F8 008C2021 */  addu  $a0, $a0, $t4
/* 0A2C6C 8011A1FC 0C046818 */  jal   func_8011A060
/* 0A2C70 8011A200 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 0A2C74 8011A204 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011A208_ovl2:
/* 0A2C78 8011A208 27BD0020 */  addiu $sp, $sp, 0x20
/* 0A2C7C 8011A20C 03E00008 */  jr    $ra
/* 0A2C80 8011A210 00000000 */   nop   
.type func_8011A198, @function
.size func_8011A198, . - func_8011A198
