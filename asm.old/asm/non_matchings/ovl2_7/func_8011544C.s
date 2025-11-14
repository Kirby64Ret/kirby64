glabel func_8011544C
/* 09DEBC 8011544C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09DEC0 80115450 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09DEC4 80115454 AFA40020 */  sw    $a0, 0x20($sp)
/* 09DEC8 80115458 8C8F0000 */  lw    $t7, ($a0)
/* 09DECC 8011545C 3C19800E */ lui $t9, %hi(D_800E77A0)
/* 09DED0 80115460 3C098012 */  lui   $t1, %hi(D_80124E14) # $t1, 0x8012
/* 09DED4 80115464 000FC040 */  sll   $t8, $t7, 1
/* 09DED8 80115468 0338C821 */  addu  $t9, $t9, $t8
/* 09DEDC 8011546C 973977A0 */ lhu $t9, %lo(D_800E77A0)($t9)
/* 09DEE0 80115470 25294E14 */  addiu $t1, %lo(D_80124E14) # addiu $t1, $t1, 0x4e14
/* 09DEE4 80115474 24040017 */  li    $a0, 23
/* 09DEE8 80115478 001940C0 */  sll   $t0, $t9, 3
/* 09DEEC 8011547C 01194023 */  subu  $t0, $t0, $t9
/* 09DEF0 80115480 00084080 */  sll   $t0, $t0, 2
/* 09DEF4 80115484 01095021 */  addu  $t2, $t0, $t1
/* 09DEF8 80115488 0C02BE60 */  jal   func_800AF980
/* 09DEFC 8011548C AFAA001C */   sw    $t2, 0x1c($sp)
/* 09DF00 80115490 8FAB001C */  lw    $t3, 0x1c($sp)
/* 09DF04 80115494 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 09DF08 80115498 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 09DF0C 8011549C 24060010 */  li    $a2, 16
/* 09DF10 801154A0 0C02A619 */  jal   func_800A9864
/* 09DF14 801154A4 8D640004 */   lw    $a0, 4($t3)
/* 09DF18 801154A8 8FA40020 */  lw    $a0, 0x20($sp)
/* 09DF1C 801154AC 0C044CC0 */  jal   func_80113300
/* 09DF20 801154B0 24050001 */   li    $a1, 1
/* 09DF24 801154B4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 09DF28 801154B8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 09DF2C 801154BC 8FAC001C */  lw    $t4, 0x1c($sp)
/* 09DF30 801154C0 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09DF34 801154C4 8DCF0000 */  lw    $t7, ($t6)
/* 09DF38 801154C8 8D8D0010 */  lw    $t5, 0x10($t4)
/* 09DF3C 801154CC 00002025 */  move  $a0, $zero
/* 09DF40 801154D0 000FC080 */  sll   $t8, $t7, 2
/* 09DF44 801154D4 00380821 */  addu  $at, $at, $t8
/* 09DF48 801154D8 0C00236A */  jal   func_80008DA8
/* 09DF4C 801154DC AC2DEF90 */ sw $t5, %lo(D_800DEF90)($at)
/* 09DF50 801154E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09DF54 801154E4 27BD0020 */  addiu $sp, $sp, 0x20
/* 09DF58 801154E8 03E00008 */  jr    $ra
/* 09DF5C 801154EC 00000000 */   nop   
.type func_8011544C, @function
.size func_8011544C, . - func_8011544C
