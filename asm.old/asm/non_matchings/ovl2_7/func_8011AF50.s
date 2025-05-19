glabel func_8011AF50
/* 0A39C0 8011AF50 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A39C4 8011AF54 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A39C8 8011AF58 8C8E004C */  lw    $t6, 0x4c($a0)
/* 0A39CC 8011AF5C 0C047891 */  jal   func_8011E244
/* 0A39D0 8011AF60 AFAE001C */   sw    $t6, 0x1c($sp)
/* 0A39D4 8011AF64 8FAF001C */  lw    $t7, 0x1c($sp)
/* 0A39D8 8011AF68 91F80000 */  lbu   $t8, ($t7)
/* 0A39DC 8011AF6C 5458000D */  bnel  $v0, $t8, .L8011AFA4_ovl2
/* 0A39E0 8011AF70 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A39E4 8011AF74 0C047939 */  jal   func_8011E4E4
/* 0A39E8 8011AF78 24040053 */   li    $a0, 83
/* 0A39EC 8011AF7C 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0A39F0 8011AF80 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0A39F4 8011AF84 3C198012 */  lui   $t9, %hi(D_8011AE6C) # $t9, 0x8012
/* 0A39F8 8011AF88 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A39FC 8011AF8C 8D090000 */  lw    $t1, ($t0)
/* 0A3A00 8011AF90 2739AE6C */  addiu $t9, %lo(D_8011AE6C) # addiu $t9, $t9, -0x5194
/* 0A3A04 8011AF94 00095080 */  sll   $t2, $t1, 2
/* 0A3A08 8011AF98 002A0821 */  addu  $at, $at, $t2
/* 0A3A0C 8011AF9C AC39EF90 */ sw $t9, %lo(D_800DEF90)($at)
/* 0A3A10 8011AFA0 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011AFA4_ovl2:
/* 0A3A14 8011AFA4 27BD0020 */  addiu $sp, $sp, 0x20
/* 0A3A18 8011AFA8 03E00008 */  jr    $ra
/* 0A3A1C 8011AFAC 00000000 */   nop   
.type func_8011AF50, @function
.size func_8011AF50, . - func_8011AF50
