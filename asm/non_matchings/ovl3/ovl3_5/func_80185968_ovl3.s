glabel func_80185968_ovl3
/* 0E63A8 80185968 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E63AC 8018596C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0E63B0 80185970 0C054E61 */  jal   func_80153984_ovl3
/* 0E63B4 80185974 AFA40018 */   sw    $a0, 0x18($sp)
/* 0E63B8 80185978 0C0485EE */  jal   func_801217B8_ovl3
/* 0E63BC 8018597C 00000000 */   nop   
/* 0E63C0 80185980 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0E63C4 80185984 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0E63C8 80185988 8C6E0030 */  lw    $t6, 0x30($v1)
/* 0E63CC 8018598C 51C00006 */  beql  $t6, $zero, .L801859A8_ovl3
/* 0E63D0 80185990 8C6F00A0 */   lw    $t7, 0xa0($v1)
/* 0E63D4 80185994 0C04759F */  jal   func_8011D67C_ovl3
/* 0E63D8 80185998 00000000 */   nop   
/* 0E63DC 8018599C 1000003C */  b     .L80185A90_ovl3
/* 0E63E0 801859A0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0E63E4 801859A4 8C6F00A0 */  lw    $t7, 0xa0($v1)
.L801859A8_ovl3:
/* 0E63E8 801859A8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0E63EC 801859AC 51E00038 */  beql  $t7, $zero, .L80185A90_ovl3
/* 0E63F0 801859B0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0E63F4 801859B4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0E63F8 801859B8 3C08800F */  lui   $t0, %hi(D_800E9720) # $t0, 0x800f
/* 0E63FC 801859BC 25089720 */  addiu $t0, %lo(D_800E9720) # addiu $t0, $t0, -0x68e0
/* 0E6400 801859C0 8C580000 */  lw    $t8, ($v0)
/* 0E6404 801859C4 00002825 */  move  $a1, $zero
/* 0E6408 801859C8 0018C880 */  sll   $t9, $t8, 2
/* 0E640C 801859CC 03281821 */  addu  $v1, $t9, $t0
/* 0E6410 801859D0 8C640000 */  lw    $a0, ($v1)
/* 0E6414 801859D4 1480000F */  bnez  $a0, .L80185A14_ovl3
/* 0E6418 801859D8 248AFFFF */   addiu $t2, $a0, -1
/* 0E641C 801859DC 3C048019 */  lui   $a0, %hi(D_801953CC) # $a0, 0x8019
/* 0E6420 801859E0 0C055127 */  jal   func_8015449C_ovl3
/* 0E6424 801859E4 248453CC */   addiu $a0, %lo(D_801953CC) # addiu $a0, $a0, 0x53cc
/* 0E6428 801859E8 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0E642C 801859EC 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0E6430 801859F0 3C048019 */  lui   $a0, %hi(D_80191B54) # $a0, 0x8019
/* 0E6434 801859F4 24841B54 */  addiu $a0, %lo(D_80191B54) # addiu $a0, $a0, 0x1b54
/* 0E6438 801859F8 0C044681 */  jal   func_80111A04_ovl3
/* 0E643C 801859FC 8D250000 */   lw    $a1, ($t1)
/* 0E6440 80185A00 0C044713 */  jal   func_80111C4C_ovl3
/* 0E6444 80185A04 00402025 */   move  $a0, $v0
/* 0E6448 80185A08 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0E644C 80185A0C 10000002 */  b     .L80185A18_ovl3
/* 0E6450 80185A10 8C42A7C4 */   lw    $v0, %lo(D_8004A7C4)($v0)
.L80185A14_ovl3:
/* 0E6454 80185A14 AC6A0000 */  sw    $t2, ($v1)
.L80185A18_ovl3:
/* 0E6458 80185A18 8C4B0000 */  lw    $t3, ($v0)
/* 0E645C 80185A1C 3C0D800F */  lui   $t5, 0x800f
/* 0E6460 80185A20 3C048019 */  lui   $a0, %hi(D_801953E8) # $a0, 0x8019
/* 0E6464 80185A24 000B6080 */  sll   $t4, $t3, 2
/* 0E6468 80185A28 01AC6821 */  addu  $t5, $t5, $t4
/* 0E646C 80185A2C 8DAD9560 */  lw    $t5, -0x6aa0($t5)
/* 0E6470 80185A30 248453E8 */  addiu $a0, %lo(D_801953E8) # addiu $a0, $a0, 0x53e8
/* 0E6474 80185A34 51A00016 */  beql  $t5, $zero, .L80185A90_ovl3
/* 0E6478 80185A38 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0E647C 80185A3C 0C055127 */  jal   func_8015449C_ovl3
/* 0E6480 80185A40 00002825 */   move  $a1, $zero
/* 0E6484 80185A44 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0E6488 80185A48 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0E648C 80185A4C 3C048019 */  lui   $a0, %hi(D_80191BBC) # $a0, 0x8019
/* 0E6490 80185A50 24841BBC */  addiu $a0, %lo(D_80191BBC) # addiu $a0, $a0, 0x1bbc
/* 0E6494 80185A54 0C044681 */  jal   func_80111A04_ovl3
/* 0E6498 80185A58 8DC50000 */   lw    $a1, ($t6)
/* 0E649C 80185A5C 0C044713 */  jal   func_80111C4C_ovl3
/* 0E64A0 80185A60 00402025 */   move  $a0, $v0
/* 0E64A4 80185A64 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0E64A8 80185A68 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0E64AC 80185A6C 3C08800F */  lui   $t0, %hi(D_800E9560) # $t0, 0x800f
/* 0E64B0 80185A70 25089560 */  addiu $t0, %lo(D_800E9560) # addiu $t0, $t0, -0x6aa0
/* 0E64B4 80185A74 8DF80000 */  lw    $t8, ($t7)
/* 0E64B8 80185A78 0018C880 */  sll   $t9, $t8, 2
/* 0E64BC 80185A7C 03281021 */  addu  $v0, $t9, $t0
/* 0E64C0 80185A80 8C490000 */  lw    $t1, ($v0)
/* 0E64C4 80185A84 252AFFFF */  addiu $t2, $t1, -1
/* 0E64C8 80185A88 AC4A0000 */  sw    $t2, ($v0)
/* 0E64CC 80185A8C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80185A90_ovl3:
/* 0E64D0 80185A90 27BD0018 */  addiu $sp, $sp, 0x18
/* 0E64D4 80185A94 03E00008 */  jr    $ra
/* 0E64D8 80185A98 00000000 */   nop   
