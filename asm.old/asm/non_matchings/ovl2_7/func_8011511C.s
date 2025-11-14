glabel func_8011511C
/* 09DB8C 8011511C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09DB90 80115120 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09DB94 80115124 8C8E0000 */  lw    $t6, ($a0)
/* 09DB98 80115128 3C18800E */ lui $t8, %hi(D_800E77A0)
/* 09DB9C 8011512C 3C088012 */  lui   $t0, %hi(D_80124E14) # $t0, 0x8012
/* 09DBA0 80115130 000E7840 */  sll   $t7, $t6, 1
/* 09DBA4 80115134 030FC021 */  addu  $t8, $t8, $t7
/* 09DBA8 80115138 971877A0 */ lhu $t8, %lo(D_800E77A0)($t8)
/* 09DBAC 8011513C 25084E14 */  addiu $t0, %lo(D_80124E14) # addiu $t0, $t0, 0x4e14
/* 09DBB0 80115140 24040017 */  li    $a0, 23
/* 09DBB4 80115144 0018C8C0 */  sll   $t9, $t8, 3
/* 09DBB8 80115148 0338C823 */  subu  $t9, $t9, $t8
/* 09DBBC 8011514C 0019C880 */  sll   $t9, $t9, 2
/* 09DBC0 80115150 03284821 */  addu  $t1, $t9, $t0
/* 09DBC4 80115154 0C02BE60 */  jal   func_800AF980
/* 09DBC8 80115158 AFA9001C */   sw    $t1, 0x1c($sp)
/* 09DBCC 8011515C 8FAA001C */  lw    $t2, 0x1c($sp)
/* 09DBD0 80115160 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 09DBD4 80115164 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 09DBD8 80115168 24060010 */  li    $a2, 16
/* 09DBDC 8011516C 0C02A619 */  jal   func_800A9864
/* 09DBE0 80115170 8D440004 */   lw    $a0, 4($t2)
/* 09DBE4 80115174 8FAB001C */  lw    $t3, 0x1c($sp)
/* 09DBE8 80115178 0C02A806 */  jal   func_800AA018
/* 09DBEC 8011517C 8D64000C */   lw    $a0, 0xc($t3)
/* 09DBF0 80115180 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 09DBF4 80115184 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 09DBF8 80115188 8FAC001C */  lw    $t4, 0x1c($sp)
/* 09DBFC 8011518C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09DC00 80115190 8DCF0000 */  lw    $t7, ($t6)
/* 09DC04 80115194 8D8D0010 */  lw    $t5, 0x10($t4)
/* 09DC08 80115198 00002025 */  move  $a0, $zero
/* 09DC0C 8011519C 000FC080 */  sll   $t8, $t7, 2
/* 09DC10 801151A0 00380821 */  addu  $at, $at, $t8
/* 09DC14 801151A4 0C00236A */  jal   func_80008DA8
/* 09DC18 801151A8 AC2DEF90 */ sw $t5, %lo(D_800DEF90)($at)
/* 09DC1C 801151AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09DC20 801151B0 27BD0020 */  addiu $sp, $sp, 0x20
/* 09DC24 801151B4 03E00008 */  jr    $ra
/* 09DC28 801151B8 00000000 */   nop   
.type func_8011511C, @function
.size func_8011511C, . - func_8011511C
