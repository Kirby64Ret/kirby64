glabel func_80117178
/* 09FBE8 80117178 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09FBEC 8011717C AFBF0014 */  sw    $ra, 0x14($sp)
/* 09FBF0 80117180 8C8E004C */  lw    $t6, 0x4c($a0)
/* 09FBF4 80117184 0C047891 */  jal   func_8011E244
/* 09FBF8 80117188 AFAE001C */   sw    $t6, 0x1c($sp)
/* 09FBFC 8011718C 8FAF001C */  lw    $t7, 0x1c($sp)
/* 09FC00 80117190 3C040006 */  lui   $a0, (0x0006009B >> 16) # lui $a0, 6
/* 09FC04 80117194 91F80000 */  lbu   $t8, ($t7)
/* 09FC08 80117198 54580012 */  bnel  $v0, $t8, .L801171E4_ovl2
/* 09FC0C 8011719C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 09FC10 801171A0 0C02A806 */  jal   func_800AA018
/* 09FC14 801171A4 3484009B */   ori   $a0, (0x0006009B & 0xFFFF) # ori $a0, $a0, 0x9b
/* 09FC18 801171A8 3C040006 */  lui   $a0, (0x0006009C >> 16) # lui $a0, 6
/* 09FC1C 801171AC 0C02A806 */  jal   func_800AA018
/* 09FC20 801171B0 3484009C */   ori   $a0, (0x0006009C & 0xFFFF) # ori $a0, $a0, 0x9c
/* 09FC24 801171B4 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 09FC28 801171B8 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 09FC2C 801171BC 3C198011 */  lui   $t9, %hi(func_80112B4C) # $t9, 0x8011
/* 09FC30 801171C0 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09FC34 801171C4 8D090000 */  lw    $t1, ($t0)
/* 09FC38 801171C8 27392B4C */  addiu $t9, %lo(func_80112B4C) # addiu $t9, $t9, 0x2b4c
/* 09FC3C 801171CC 2404004A */  li    $a0, 74
/* 09FC40 801171D0 00095080 */  sll   $t2, $t1, 2
/* 09FC44 801171D4 002A0821 */  addu  $at, $at, $t2
/* 09FC48 801171D8 0C047939 */  jal   func_8011E4E4
/* 09FC4C 801171DC AC39EF90 */ sw $t9, %lo(D_800DEF90)($at)
/* 09FC50 801171E0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801171E4_ovl2:
/* 09FC54 801171E4 27BD0020 */  addiu $sp, $sp, 0x20
/* 09FC58 801171E8 03E00008 */  jr    $ra
/* 09FC5C 801171EC 00000000 */   nop   
.type func_80117178, @function
.size func_80117178, . - func_80117178
