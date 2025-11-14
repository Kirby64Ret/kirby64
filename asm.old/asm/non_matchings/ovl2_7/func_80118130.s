glabel func_80118130
/* 0A0BA0 80118130 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A0BA4 80118134 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A0BA8 80118138 0C044AD3 */  jal   func_80112B4C
/* 0A0BAC 8011813C AFA40018 */   sw    $a0, 0x18($sp)
/* 0A0BB0 80118140 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0A0BB4 80118144 3C19800E */ lui $t9, %hi(D_800DD8D0)
/* 0A0BB8 80118148 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0A0BBC 8011814C 8DCF0000 */  lw    $t7, ($t6)
/* 0A0BC0 80118150 000FC080 */  sll   $t8, $t7, 2
/* 0A0BC4 80118154 0338C821 */  addu  $t9, $t9, $t8
/* 0A0BC8 80118158 8F39D8D0 */ lw $t9, %lo(D_800DD8D0)($t9)
/* 0A0BCC 8011815C 00194040 */  sll   $t0, $t9, 1
/* 0A0BD0 80118160 0503000F */  bgezl $t0, .L801181A0_ovl2
/* 0A0BD4 80118164 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A0BD8 80118168 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0A0BDC 8011816C 3C098011 */  lui   $t1, %hi(func_80112B4C) # $t1, 0x8011
/* 0A0BE0 80118170 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A0BE4 80118174 8D4B0000 */  lw    $t3, ($t2)
/* 0A0BE8 80118178 25292B4C */  addiu $t1, %lo(func_80112B4C) # addiu $t1, $t1, 0x2b4c
/* 0A0BEC 8011817C 24040001 */  li    $a0, 1
/* 0A0BF0 80118180 000B6080 */  sll   $t4, $t3, 2
/* 0A0BF4 80118184 002C0821 */  addu  $at, $at, $t4
/* 0A0BF8 80118188 0C03EE45 */  jal   func_800FB914
/* 0A0BFC 8011818C AC29EF90 */ sw $t1, %lo(D_800DEF90)($at)
/* 0A0C00 80118190 00002025 */  move  $a0, $zero
/* 0A0C04 80118194 0C02ED1A */  jal   func_800BB468
/* 0A0C08 80118198 00002825 */   move  $a1, $zero
/* 0A0C0C 8011819C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801181A0_ovl2:
/* 0A0C10 801181A0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A0C14 801181A4 03E00008 */  jr    $ra
/* 0A0C18 801181A8 00000000 */   nop   
.type func_80118130, @function
.size func_80118130, . - func_80118130
