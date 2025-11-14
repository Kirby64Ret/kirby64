glabel func_8011A0FC
/* 0A2B6C 8011A0FC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A2B70 8011A100 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A2B74 8011A104 AFA40020 */  sw    $a0, 0x20($sp)
/* 0A2B78 8011A108 8C8F004C */  lw    $t7, 0x4c($a0)
/* 0A2B7C 8011A10C 0C047891 */  jal   func_8011E244
/* 0A2B80 8011A110 AFAF001C */   sw    $t7, 0x1c($sp)
/* 0A2B84 8011A114 8FB8001C */  lw    $t8, 0x1c($sp)
/* 0A2B88 8011A118 93190000 */  lbu   $t9, ($t8)
/* 0A2B8C 8011A11C 54590013 */  bnel  $v0, $t9, .L8011A16C_ovl2
/* 0A2B90 8011A120 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A2B94 8011A124 0C046818 */  jal   func_8011A060
/* 0A2B98 8011A128 8FA40020 */   lw    $a0, 0x20($sp)
/* 0A2B9C 8011A12C 8FA8001C */  lw    $t0, 0x1c($sp)
/* 0A2BA0 8011A130 3C0B8013 */ lui $t3, %hi(D_8012DA01)
/* 0A2BA4 8011A134 3C04800E */ lui $a0, %hi(D_800DE350)
/* 0A2BA8 8011A138 91090000 */  lbu   $t1, ($t0)
/* 0A2BAC 8011A13C 00095080 */  sll   $t2, $t1, 2
/* 0A2BB0 8011A140 01495023 */  subu  $t2, $t2, $t1
/* 0A2BB4 8011A144 000A50C0 */  sll   $t2, $t2, 3
/* 0A2BB8 8011A148 01495023 */  subu  $t2, $t2, $t1
/* 0A2BBC 8011A14C 000A50C0 */  sll   $t2, $t2, 3
/* 0A2BC0 8011A150 016A5821 */  addu  $t3, $t3, $t2
/* 0A2BC4 8011A154 916BDA01 */ lbu $t3, %lo(D_8012DA01)($t3)
/* 0A2BC8 8011A158 000B6080 */  sll   $t4, $t3, 2
/* 0A2BCC 8011A15C 008C2021 */  addu  $a0, $a0, $t4
/* 0A2BD0 8011A160 0C046818 */  jal   func_8011A060
/* 0A2BD4 8011A164 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 0A2BD8 8011A168 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011A16C_ovl2:
/* 0A2BDC 8011A16C 27BD0020 */  addiu $sp, $sp, 0x20
/* 0A2BE0 8011A170 03E00008 */  jr    $ra
/* 0A2BE4 8011A174 00000000 */   nop   
.type func_8011A0FC, @function
.size func_8011A0FC, . - func_8011A0FC
