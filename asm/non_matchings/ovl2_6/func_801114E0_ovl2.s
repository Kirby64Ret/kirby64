glabel func_801114E0_ovl2
/* 099F50 801114E0 3C028013 */  lui   $v0, %hi(D_8012D0C0) # $v0, 0x8013
/* 099F54 801114E4 2442D0C0 */  addiu $v0, %lo(D_8012D0C0) # addiu $v0, $v0, -0x2f40
/* 099F58 801114E8 240E0050 */  li    $t6, 80
/* 099F5C 801114EC AC4E0000 */  sw    $t6, ($v0)
/* 099F60 801114F0 3C018013 */  lui   $at, %hi(D_8012D580) # $at, 0x8013
/* 099F64 801114F4 AC2ED580 */  sw    $t6, %lo(D_8012D580)($at)
/* 099F68 801114F8 3C038013 */  lui   $v1, %hi(D_8012D58C) # $v1, 0x8013
/* 099F6C 801114FC 3C048013 */  lui   $a0, %hi(D_8012D588) # $a0, 0x8013
/* 099F70 80111500 2484D588 */  addiu $a0, %lo(D_8012D588) # addiu $a0, $a0, -0x2a78
/* 099F74 80111504 2463D58C */  addiu $v1, %lo(D_8012D58C) # addiu $v1, $v1, -0x2a74
/* 099F78 80111508 AC600000 */  sw    $zero, ($v1)
/* 099F7C 8011150C AC800000 */  sw    $zero, ($a0)
/* 099F80 80111510 3C018013 */  lui   $at, %hi(D_8012D584) # $at, 0x8013
/* 099F84 80111514 AC20D584 */  sw    $zero, %lo(D_8012D584)($at)
/* 099F88 80111518 3C018013 */  lui   $at, %hi(D_8012D918) # $at, 0x8013
/* 099F8C 8011151C AC20D918 */  sw    $zero, %lo(D_8012D918)($at)
/* 099F90 80111520 3C08FF80 */  lui   $t0, (0xFF800080 >> 16) # lui $t0, 0xff80
/* 099F94 80111524 35080080 */  ori   $t0, (0xFF800080 & 0xFFFF) # ori $t0, $t0, 0x80
/* 099F98 80111528 3C018013 */  lui   $at, 0x8013
/* 099F9C 8011152C 03E00008 */  jr    $ra
/* 099FA0 80111530 AC28D924 */   sw    $t0, -0x26dc($at)
