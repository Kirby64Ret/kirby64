glabel func_801DD730_ovl11
/* 1E7FF0 801DD730 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E7FF4 801DD734 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E7FF8 801DD738 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E7FFC 801DD73C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E8000 801DD740 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E8004 801DD744 8C4E0000 */  lw    $t6, ($v0)
/* 1E8008 801DD748 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1E800C 801DD74C 24080006 */  li    $t0, 6
/* 1E8010 801DD750 000E7880 */  sll   $t7, $t6, 2
/* 1E8014 801DD754 002F0821 */  addu  $at, $at, $t7
/* 1E8018 801DD758 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1E801C 801DD75C 8C580000 */  lw    $t8, ($v0)
/* 1E8020 801DD760 3C01800F */ lui $at, %hi(D_800E9FE0)
/* 1E8024 801DD764 3C040001 */  lui   $a0, (0x000103EE >> 16) # lui $a0, 1
/* 1E8028 801DD768 0018C880 */  sll   $t9, $t8, 2
/* 1E802C 801DD76C 00390821 */  addu  $at, $at, $t9
/* 1E8030 801DD770 AC209FE0 */ sw $zero, %lo(D_800E9FE0)($at)
/* 1E8034 801DD774 8C490000 */  lw    $t1, ($v0)
/* 1E8038 801DD778 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1E803C 801DD77C 348403EE */  ori   $a0, (0x000103EE & 0xFFFF) # ori $a0, $a0, 0x3ee
/* 1E8040 801DD780 00095080 */  sll   $t2, $t1, 2
/* 1E8044 801DD784 002A0821 */  addu  $at, $at, $t2
/* 1E8048 801DD788 0C02A806 */  jal   func_800AA018
/* 1E804C 801DD78C AC28DFD0 */ sw $t0, %lo(D_800DDFD0)($at)
/* 1E8050 801DD790 3C040001 */  lui   $a0, (0x000103ED >> 16) # lui $a0, 1
/* 1E8054 801DD794 348403ED */  ori   $a0, (0x000103ED & 0xFFFF) # ori $a0, $a0, 0x3ed
/* 1E8058 801DD798 0C02AA19 */  jal   func_800AA864
/* 1E805C 801DD79C 24050001 */   li    $a1, 1
/* 1E8060 801DD7A0 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 1E8064 801DD7A4 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 1E8068 801DD7A8 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1E806C 801DD7AC 240B0001 */  li    $t3, 1
/* 1E8070 801DD7B0 8D8D0000 */  lw    $t5, ($t4)
/* 1E8074 801DD7B4 000D7080 */  sll   $t6, $t5, 2
/* 1E8078 801DD7B8 002E0821 */  addu  $at, $at, $t6
/* 1E807C 801DD7BC 0C02BE85 */  jal   func_800AFA14
/* 1E8080 801DD7C0 AC2B9E20 */ sw $t3, %lo(D_800E9E20)($at)
/* 1E8084 801DD7C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E8088 801DD7C8 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E808C 801DD7CC 03E00008 */  jr    $ra
/* 1E8090 801DD7D0 00000000 */   nop   
.type func_801DD730_ovl11, @function
.size func_801DD730_ovl11, . - func_801DD730_ovl11
