glabel func_800A9F98
/* 0521E8 800A9F98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0521EC 800A9F9C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0521F0 800A9FA0 0C02A6D2 */  jal   func_800A9B48
/* 0521F4 800A9FA4 AFA5001C */   sw    $a1, 0x1c($sp)
/* 0521F8 800A9FA8 1040000D */  beqz  $v0, .L800A9FE0_ovl1
/* 0521FC 800A9FAC C7A0001C */   lwc1  $f0, 0x1c($sp)
/* 052200 800A9FB0 3C0E8005 */ lui $t6, %hi(D_8004A7C4)
/* 052204 800A9FB4 8DCEA7C4 */ lw $t6, %lo(D_8004A7C4)($t6)
/* 052208 800A9FB8 3C19800E */ lui $t9, %hi(D_800DF850)
/* 05220C 800A9FBC 44050000 */  mfc1  $a1, $f0
/* 052210 800A9FC0 8DCF0000 */  lw    $t7, ($t6)
/* 052214 800A9FC4 000FC080 */  sll   $t8, $t7, 2
/* 052218 800A9FC8 0338C821 */  addu  $t9, $t9, $t8
/* 05221C 800A9FCC 8F39F850 */ lw $t9, %lo(D_800DF850)($t9)
/* 052220 800A9FD0 0C02BBAD */  jal   func_800AEEB4
/* 052224 800A9FD4 8F240000 */   lw    $a0, ($t9)
/* 052228 800A9FD8 1000000C */  b     .L800AA00C_ovl1
/* 05222C 800A9FDC 8FBF0014 */   lw    $ra, 0x14($sp)
.L800A9FE0_ovl1:
/* 052230 800A9FE0 3C088005 */ lui $t0, %hi(D_8004A7C4)
/* 052234 800A9FE4 8D08A7C4 */ lw $t0, %lo(D_8004A7C4)($t0)
/* 052238 800A9FE8 3C0B800E */ lui $t3, %hi(D_800DF690)
/* 05223C 800A9FEC 44050000 */  mfc1  $a1, $f0
/* 052240 800A9FF0 8D090000 */  lw    $t1, ($t0)
/* 052244 800A9FF4 00095080 */  sll   $t2, $t1, 2
/* 052248 800A9FF8 016A5821 */  addu  $t3, $t3, $t2
/* 05224C 800A9FFC 8D6BF690 */ lw $t3, %lo(D_800DF690)($t3)
/* 052250 800AA000 0C02BB88 */  jal   func_800AEE20
/* 052254 800AA004 8D640000 */   lw    $a0, ($t3)
/* 052258 800AA008 8FBF0014 */  lw    $ra, 0x14($sp)
.L800AA00C_ovl1:
/* 05225C 800AA00C 27BD0018 */  addiu $sp, $sp, 0x18
/* 052260 800AA010 03E00008 */  jr    $ra
/* 052264 800AA014 00000000 */   nop   
.type func_800A9F98, @function
.size func_800A9F98, . - func_800A9F98
