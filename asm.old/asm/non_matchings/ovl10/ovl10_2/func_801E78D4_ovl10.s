glabel func_801E78D4_ovl10
/* 1D8644 801E78D4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D8648 801E78D8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D864C 801E78DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D8650 801E78E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D8654 801E78E4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D8658 801E78E8 8DC20000 */  lw    $v0, ($t6)
/* 1D865C 801E78EC 3C0F800F */ lui $t7, %hi(D_800E9E20)
/* 1D8660 801E78F0 3C03800F */  lui   $v1, %hi(D_800EA520) # $v1, 0x800f
/* 1D8664 801E78F4 00021080 */  sll   $v0, $v0, 2
/* 1D8668 801E78F8 01E27821 */  addu  $t7, $t7, $v0
/* 1D866C 801E78FC 8DEF9E20 */ lw $t7, %lo(D_800E9E20)($t7)
/* 1D8670 801E7900 2463A520 */  addiu $v1, %lo(D_800EA520) # addiu $v1, $v1, -0x5ae0
/* 1D8674 801E7904 0062C021 */  addu  $t8, $v1, $v0
/* 1D8678 801E7908 51E0001E */  beql  $t7, $zero, .L801E7984_ovl10
/* 1D867C 801E790C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D8680 801E7910 8F190000 */  lw    $t9, ($t8)
/* 1D8684 801E7914 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1D8688 801E7918 00194080 */  sll   $t0, $t9, 2
/* 1D868C 801E791C 00684821 */  addu  $t1, $v1, $t0
/* 1D8690 801E7920 8D2A0000 */  lw    $t2, ($t1)
/* 1D8694 801E7924 51400017 */  beql  $t2, $zero, .L801E7984_ovl10
/* 1D8698 801E7928 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D869C 801E792C 0C02BB30 */  jal   func_800AECC0
/* 1D86A0 801E7930 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1D86A4 801E7934 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1D86A8 801E7938 0C02BB48 */  jal   func_800AED20
/* 1D86AC 801E793C C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1D86B0 801E7940 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D86B4 801E7944 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D86B8 801E7948 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D86BC 801E794C 240B0001 */  li    $t3, 1
/* 1D86C0 801E7950 8C4C0000 */  lw    $t4, ($v0)
/* 1D86C4 801E7954 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D86C8 801E7958 3C05801E */  lui   $a1, %hi(D_801E75E4) # $a1, 0x801e
/* 1D86CC 801E795C 000C6880 */  sll   $t5, $t4, 2
/* 1D86D0 801E7960 002D0821 */  addu  $at, $at, $t5
/* 1D86D4 801E7964 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
/* 1D86D8 801E7968 8C4E0000 */  lw    $t6, ($v0)
/* 1D86DC 801E796C 24A575E4 */  addiu $a1, %lo(D_801E75E4) # addiu $a1, $a1, 0x75e4
/* 1D86E0 801E7970 000E7880 */  sll   $t7, $t6, 2
/* 1D86E4 801E7974 008F2021 */  addu  $a0, $a0, $t7
/* 1D86E8 801E7978 0C02C7B2 */  jal   assign_new_process_entry
/* 1D86EC 801E797C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1D86F0 801E7980 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E7984_ovl10:
/* 1D86F4 801E7984 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D86F8 801E7988 03E00008 */  jr    $ra
/* 1D86FC 801E798C 00000000 */   nop   
.type func_801E78D4_ovl10, @function
.size func_801E78D4_ovl10, . - func_801E78D4_ovl10
