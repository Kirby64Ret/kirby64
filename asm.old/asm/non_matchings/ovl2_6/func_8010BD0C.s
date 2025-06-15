glabel func_8010BD0C
/* 09477C 8010BD0C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 094780 8010BD10 AFBF001C */  sw    $ra, 0x1c($sp)
/* 094784 8010BD14 AFB00018 */  sw    $s0, 0x18($sp)
/* 094788 8010BD18 8C8E0058 */  lw    $t6, 0x58($a0)
/* 09478C 8010BD1C 00808025 */  move  $s0, $a0
/* 094790 8010BD20 3C018013 */  lui   $at, %hi(D_8012BD44) # $at, 0x8013
/* 094794 8010BD24 3C048013 */  lui   $a0, %hi(D_8012BCA0) # $a0, 0x8013
/* 094798 8010BD28 2484BCA0 */  addiu $a0, %lo(D_8012BCA0) # addiu $a0, $a0, -0x4360
/* 09479C 8010BD2C 0C041486 */  jal   func_80105218
/* 0947A0 8010BD30 AC2EBD44 */   sw    $t6, %lo(D_8012BD44)($at)
/* 0947A4 8010BD34 0C0413EE */  jal   func_80104FB8
/* 0947A8 8010BD38 02002025 */   move  $a0, $s0
/* 0947AC 8010BD3C 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 0947B0 8010BD40 24A5BCA0 */  addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
/* 0947B4 8010BD44 0C041E28 */  jal   func_801078A0
/* 0947B8 8010BD48 02002025 */   move  $a0, $s0
/* 0947BC 8010BD4C 10400004 */  beqz  $v0, .L8010BD60_ovl2
/* 0947C0 8010BD50 02002025 */   move  $a0, $s0
/* 0947C4 8010BD54 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 0947C8 8010BD58 0C042493 */  jal   func_8010924C
/* 0947CC 8010BD5C 24A5BCA0 */   addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
.L8010BD60_ovl2:
/* 0947D0 8010BD60 3C0F8013 */  lui   $t7, %hi(D_8012BD40) # $t7, 0x8013
/* 0947D4 8010BD64 8DEFBD40 */  lw    $t7, %lo(D_8012BD40)($t7)
/* 0947D8 8010BD68 00001025 */  move  $v0, $zero
/* 0947DC 8010BD6C AE0F0058 */  sw    $t7, 0x58($s0)
/* 0947E0 8010BD70 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0947E4 8010BD74 8FB00018 */  lw    $s0, 0x18($sp)
/* 0947E8 8010BD78 27BD0020 */  addiu $sp, $sp, 0x20
/* 0947EC 8010BD7C 03E00008 */  jr    $ra
/* 0947F0 8010BD80 00000000 */   nop   
.type func_8010BD0C, @function
.size func_8010BD0C, . - func_8010BD0C
