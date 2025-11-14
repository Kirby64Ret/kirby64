glabel func_801153B8
/* 09DE28 801153B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09DE2C 801153BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 09DE30 801153C0 8C8E0000 */  lw    $t6, ($a0)
/* 09DE34 801153C4 3C18800E */ lui $t8, %hi(D_800E77A0)
/* 09DE38 801153C8 3C088012 */  lui   $t0, %hi(D_80124E14) # $t0, 0x8012
/* 09DE3C 801153CC 000E7840 */  sll   $t7, $t6, 1
/* 09DE40 801153D0 030FC021 */  addu  $t8, $t8, $t7
/* 09DE44 801153D4 971877A0 */ lhu $t8, %lo(D_800E77A0)($t8)
/* 09DE48 801153D8 25084E14 */  addiu $t0, %lo(D_80124E14) # addiu $t0, $t0, 0x4e14
/* 09DE4C 801153DC 24040017 */  li    $a0, 23
/* 09DE50 801153E0 0018C8C0 */  sll   $t9, $t8, 3
/* 09DE54 801153E4 0338C823 */  subu  $t9, $t9, $t8
/* 09DE58 801153E8 0019C880 */  sll   $t9, $t9, 2
/* 09DE5C 801153EC 03284821 */  addu  $t1, $t9, $t0
/* 09DE60 801153F0 0C02BE60 */  jal   func_800AF980
/* 09DE64 801153F4 AFA9001C */   sw    $t1, 0x1c($sp)
/* 09DE68 801153F8 8FAA001C */  lw    $t2, 0x1c($sp)
/* 09DE6C 801153FC 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 09DE70 80115400 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 09DE74 80115404 24060010 */  li    $a2, 16
/* 09DE78 80115408 0C02A619 */  jal   func_800A9864
/* 09DE7C 8011540C 8D440004 */   lw    $a0, 4($t2)
/* 09DE80 80115410 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 09DE84 80115414 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 09DE88 80115418 8FAB001C */  lw    $t3, 0x1c($sp)
/* 09DE8C 8011541C 3C01800E */ lui $at, %hi(D_800DEF90)
/* 09DE90 80115420 8DAE0000 */  lw    $t6, ($t5)
/* 09DE94 80115424 8D6C0010 */  lw    $t4, 0x10($t3)
/* 09DE98 80115428 00002025 */  move  $a0, $zero
/* 09DE9C 8011542C 000E7880 */  sll   $t7, $t6, 2
/* 09DEA0 80115430 002F0821 */  addu  $at, $at, $t7
/* 09DEA4 80115434 0C00236A */  jal   func_80008DA8
/* 09DEA8 80115438 AC2CEF90 */ sw $t4, %lo(D_800DEF90)($at)
/* 09DEAC 8011543C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09DEB0 80115440 27BD0020 */  addiu $sp, $sp, 0x20
/* 09DEB4 80115444 03E00008 */  jr    $ra
/* 09DEB8 80115448 00000000 */   nop   
.type func_801153B8, @function
.size func_801153B8, . - func_801153B8
