glabel func_8011A060
/* 0A2AD0 8011A060 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A2AD4 8011A064 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A2AD8 8011A068 8C8E0000 */  lw    $t6, ($a0)
/* 0A2ADC 8011A06C 3C18800E */ lui $t8, %hi(D_800E77A0)
/* 0A2AE0 8011A070 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0A2AE4 8011A074 000E7840 */  sll   $t7, $t6, 1
/* 0A2AE8 8011A078 030FC021 */  addu  $t8, $t8, $t7
/* 0A2AEC 8011A07C 971877A0 */ lhu $t8, %lo(D_800E77A0)($t8)
/* 0A2AF0 8011A080 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 0A2AF4 8011A084 8C690000 */  lw    $t1, ($v1)
/* 0A2AF8 8011A088 0018C8C0 */  sll   $t9, $t8, 3
/* 0A2AFC 8011A08C 3C088012 */  lui   $t0, %hi(D_80124E14) # $t0, 0x8012
/* 0A2B00 8011A090 0338C823 */  subu  $t9, $t9, $t8
/* 0A2B04 8011A094 0019C880 */  sll   $t9, $t9, 2
/* 0A2B08 8011A098 25084E14 */  addiu $t0, %lo(D_80124E14) # addiu $t0, $t0, 0x4e14
/* 0A2B0C 8011A09C 03281021 */  addu  $v0, $t9, $t0
/* 0A2B10 8011A0A0 AC640000 */  sw    $a0, ($v1)
/* 0A2B14 8011A0A4 AFA90018 */  sw    $t1, 0x18($sp)
/* 0A2B18 8011A0A8 8C440008 */  lw    $a0, 8($v0)
/* 0A2B1C 8011A0AC 0C02A806 */  jal   func_800AA018
/* 0A2B20 8011A0B0 AFA2001C */   sw    $v0, 0x1c($sp)
/* 0A2B24 8011A0B4 8FAA001C */  lw    $t2, 0x1c($sp)
/* 0A2B28 8011A0B8 0C02A806 */  jal   func_800AA018
/* 0A2B2C 8011A0BC 8D44000C */   lw    $a0, 0xc($t2)
/* 0A2B30 8011A0C0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0A2B34 8011A0C4 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 0A2B38 8011A0C8 8C4D0000 */  lw    $t5, ($v0)
/* 0A2B3C 8011A0CC 8FAB001C */  lw    $t3, 0x1c($sp)
/* 0A2B40 8011A0D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A2B44 8011A0D4 8DAE0000 */  lw    $t6, ($t5)
/* 0A2B48 8011A0D8 8D6C0014 */  lw    $t4, 0x14($t3)
/* 0A2B4C 8011A0DC 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A2B50 8011A0E0 000E7880 */  sll   $t7, $t6, 2
/* 0A2B54 8011A0E4 8FB80018 */  lw    $t8, 0x18($sp)
/* 0A2B58 8011A0E8 002F0821 */  addu  $at, $at, $t7
/* 0A2B5C 8011A0EC AC2CEF90 */ sw $t4, %lo(D_800DEF90)($at)
/* 0A2B60 8011A0F0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0A2B64 8011A0F4 03E00008 */  jr    $ra
/* 0A2B68 8011A0F8 AC580000 */   sw    $t8, ($v0)
.type func_8011A060, @function
.size func_8011A060, . - func_8011A060
