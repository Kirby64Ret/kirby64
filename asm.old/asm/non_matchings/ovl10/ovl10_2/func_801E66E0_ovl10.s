glabel func_801E66E0_ovl10
/* 1D7450 801E66E0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D7454 801E66E4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D7458 801E66E8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D745C 801E66EC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D7460 801E66F0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D7464 801E66F4 8DC20000 */  lw    $v0, ($t6)
/* 1D7468 801E66F8 3C0F800F */ lui $t7, %hi(D_800E9E20)
/* 1D746C 801E66FC 3C03800F */  lui   $v1, %hi(D_800EA520) # $v1, 0x800f
/* 1D7470 801E6700 00021080 */  sll   $v0, $v0, 2
/* 1D7474 801E6704 01E27821 */  addu  $t7, $t7, $v0
/* 1D7478 801E6708 8DEF9E20 */ lw $t7, %lo(D_800E9E20)($t7)
/* 1D747C 801E670C 2463A520 */  addiu $v1, %lo(D_800EA520) # addiu $v1, $v1, -0x5ae0
/* 1D7480 801E6710 0062C021 */  addu  $t8, $v1, $v0
/* 1D7484 801E6714 51E0001E */  beql  $t7, $zero, .L801E6790_ovl10
/* 1D7488 801E6718 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D748C 801E671C 8F190000 */  lw    $t9, ($t8)
/* 1D7490 801E6720 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1D7494 801E6724 00194080 */  sll   $t0, $t9, 2
/* 1D7498 801E6728 00684821 */  addu  $t1, $v1, $t0
/* 1D749C 801E672C 8D2A0000 */  lw    $t2, ($t1)
/* 1D74A0 801E6730 51400017 */  beql  $t2, $zero, .L801E6790_ovl10
/* 1D74A4 801E6734 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D74A8 801E6738 0C02BB30 */  jal   func_800AECC0
/* 1D74AC 801E673C C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1D74B0 801E6740 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1D74B4 801E6744 0C02BB48 */  jal   func_800AED20
/* 1D74B8 801E6748 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1D74BC 801E674C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D74C0 801E6750 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D74C4 801E6754 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D74C8 801E6758 240B0001 */  li    $t3, 1
/* 1D74CC 801E675C 8C4C0000 */  lw    $t4, ($v0)
/* 1D74D0 801E6760 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D74D4 801E6764 3C05801E */  lui   $a1, %hi(D_801E63FC) # $a1, 0x801e
/* 1D74D8 801E6768 000C6880 */  sll   $t5, $t4, 2
/* 1D74DC 801E676C 002D0821 */  addu  $at, $at, $t5
/* 1D74E0 801E6770 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
/* 1D74E4 801E6774 8C4E0000 */  lw    $t6, ($v0)
/* 1D74E8 801E6778 24A563FC */  addiu $a1, %lo(D_801E63FC) # addiu $a1, $a1, 0x63fc
/* 1D74EC 801E677C 000E7880 */  sll   $t7, $t6, 2
/* 1D74F0 801E6780 008F2021 */  addu  $a0, $a0, $t7
/* 1D74F4 801E6784 0C02C7B2 */  jal   assign_new_process_entry
/* 1D74F8 801E6788 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1D74FC 801E678C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E6790_ovl10:
/* 1D7500 801E6790 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D7504 801E6794 03E00008 */  jr    $ra
/* 1D7508 801E6798 00000000 */   nop   
.type func_801E66E0_ovl10, @function
.size func_801E66E0_ovl10, . - func_801E66E0_ovl10
