glabel func_801154F0
/* 09DF60 801154F0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09DF64 801154F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09DF68 801154F8 8C8E0000 */  lw    $t6, ($a0)
/* 09DF6C 801154FC 3C18800E */ lui $t8, %hi(D_800E77A0)
/* 09DF70 80115500 3C088012 */  lui   $t0, %hi(D_80124E14) # $t0, 0x8012
/* 09DF74 80115504 000E7840 */  sll   $t7, $t6, 1
/* 09DF78 80115508 030FC021 */  addu  $t8, $t8, $t7
/* 09DF7C 8011550C 971877A0 */ lhu $t8, %lo(D_800E77A0)($t8)
/* 09DF80 80115510 25084E14 */  addiu $t0, %lo(D_80124E14) # addiu $t0, $t0, 0x4e14
/* 09DF84 80115514 24040017 */  li    $a0, 23
/* 09DF88 80115518 0018C8C0 */  sll   $t9, $t8, 3
/* 09DF8C 8011551C 0338C823 */  subu  $t9, $t9, $t8
/* 09DF90 80115520 0019C880 */  sll   $t9, $t9, 2
/* 09DF94 80115524 03284821 */  addu  $t1, $t9, $t0
/* 09DF98 80115528 0C02BE60 */  jal   func_800AF980
/* 09DF9C 8011552C AFA9001C */   sw    $t1, 0x1c($sp)
/* 09DFA0 80115530 8FAA001C */  lw    $t2, 0x1c($sp)
/* 09DFA4 80115534 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 09DFA8 80115538 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 09DFAC 8011553C 24060010 */  li    $a2, 16
/* 09DFB0 80115540 0C02A619 */  jal   func_800A9864
/* 09DFB4 80115544 8D440004 */   lw    $a0, 4($t2)
/* 09DFB8 80115548 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 09DFBC 8011554C 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 09DFC0 80115550 8FAB001C */  lw    $t3, 0x1c($sp)
/* 09DFC4 80115554 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09DFC8 80115558 8DAE0000 */  lw    $t6, ($t5)
/* 09DFCC 8011555C 8D6C0010 */  lw    $t4, 0x10($t3)
/* 09DFD0 80115560 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09DFD4 80115564 000E7880 */  sll   $t7, $t6, 2
/* 09DFD8 80115568 002F0821 */  addu  $at, $at, $t7
/* 09DFDC 8011556C 27BD0020 */  addiu $sp, $sp, 0x20
/* 09DFE0 80115570 03E00008 */  jr    $ra
/* 09DFE4 80115574 AC2CEF90 */ sw $t4, %lo(D_800DEF90)($at)
.type func_801154F0, @function
.size func_801154F0, . - func_801154F0
