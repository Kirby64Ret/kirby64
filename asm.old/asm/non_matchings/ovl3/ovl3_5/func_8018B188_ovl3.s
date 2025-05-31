glabel func_8018B188_ovl3
/* 0EBBC8 8018B188 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0EBBCC 8018B18C 44866000 */  mtc1  $a2, $f12
/* 0EBBD0 8018B190 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0EBBD4 8018B194 14A00020 */  bnez  $a1, .L8018B218_ovl3
/* 0EBBD8 8018B198 AFA40018 */   sw    $a0, 0x18($sp)
/* 0EBBDC 8018B19C 44802000 */  mtc1  $zero, $f4
/* 0EBBE0 8018B1A0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0EBBE4 8018B1A4 46046032 */  c.eq.s $f12, $f4
/* 0EBBE8 8018B1A8 00000000 */  nop   
/* 0EBBEC 8018B1AC 4503001B */  bc1tl .L8018B21C_ovl3
/* 0EBBF0 8018B1B0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0EBBF4 8018B1B4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0EBBF8 8018B1B8 3C01800F */ lui $at, %hi(D_800EA520)
/* 0EBBFC 8018B1BC 240E0001 */  li    $t6, 1
/* 0EBC00 8018B1C0 8DF80000 */  lw    $t8, ($t7)
/* 0EBC04 8018B1C4 24040012 */  li    $a0, 18
/* 0EBC08 8018B1C8 0018C880 */  sll   $t9, $t8, 2
/* 0EBC0C 8018B1CC 00390821 */  addu  $at, $at, $t9
/* 0EBC10 8018B1D0 0C05A4F1 */  jal   func_801693C4_ovl3
/* 0EBC14 8018B1D4 AC2EA520 */ sw $t6, %lo(D_800EA520)($at)
/* 0EBC18 8018B1D8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0EBC1C 8018B1DC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0EBC20 8018B1E0 3C04800F */  lui   $a0, %hi(D_800EBBE0) # $a0, 0x800f
/* 0EBC24 8018B1E4 2484BBE0 */  addiu $a0, %lo(D_800EBBE0) # addiu $a0, $a0, -0x4420
/* 0EBC28 8018B1E8 8C680000 */  lw    $t0, ($v1)
/* 0EBC2C 8018B1EC 3C01800F */ lui $at, %hi(D_800EC2E0)
/* 0EBC30 8018B1F0 00084880 */  sll   $t1, $t0, 2
/* 0EBC34 8018B1F4 00895021 */  addu  $t2, $a0, $t1
/* 0EBC38 8018B1F8 AD420000 */  sw    $v0, ($t2)
/* 0EBC3C 8018B1FC 8C6B0000 */  lw    $t3, ($v1)
/* 0EBC40 8018B200 000B6080 */  sll   $t4, $t3, 2
/* 0EBC44 8018B204 008C6821 */  addu  $t5, $a0, $t4
/* 0EBC48 8018B208 8DAF0000 */  lw    $t7, ($t5)
/* 0EBC4C 8018B20C 000FC080 */  sll   $t8, $t7, 2
/* 0EBC50 8018B210 00380821 */  addu  $at, $at, $t8
/* 0EBC54 8018B214 AC20C2E0 */ sw $zero, %lo(D_800EC2E0)($at)
.L8018B218_ovl3:
/* 0EBC58 8018B218 8FBF0014 */  lw    $ra, 0x14($sp)
.L8018B21C_ovl3:
/* 0EBC5C 8018B21C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0EBC60 8018B220 03E00008 */  jr    $ra
/* 0EBC64 8018B224 00000000 */   nop   
.type func_8018B188_ovl3, @function
.size func_8018B188_ovl3, . - func_8018B188_ovl3
