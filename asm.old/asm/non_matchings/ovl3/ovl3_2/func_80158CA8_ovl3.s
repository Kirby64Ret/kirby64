glabel func_80158CA8_ovl3
/* 0B96E8 80158CA8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0B96EC 80158CAC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0B96F0 80158CB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B96F4 80158CB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B96F8 80158CB8 AFA40018 */  sw    $a0, 0x18($sp)
/* 0B96FC 80158CBC 8C4E0000 */  lw    $t6, ($v0)
/* 0B9700 80158CC0 44802000 */  mtc1  $zero, $f4
/* 0B9704 80158CC4 3C07800E */  lui   $a3, %hi(D_800E3750) # $a3, 0x800e
/* 0B9708 80158CC8 24E73750 */  addiu $a3, %lo(D_800E3750) # addiu $a3, $a3, 0x3750
/* 0B970C 80158CCC 000E7880 */  sll   $t7, $t6, 2
/* 0B9710 80158CD0 00EFC021 */  addu  $t8, $a3, $t7
/* 0B9714 80158CD4 E7040000 */  swc1  $f4, ($t8)
/* 0B9718 80158CD8 8C430000 */  lw    $v1, ($v0)
/* 0B971C 80158CDC 3C01800E */  lui   $at, 0x800e
/* 0B9720 80158CE0 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0B9724 80158CE4 00031880 */  sll   $v1, $v1, 2
/* 0B9728 80158CE8 00E3C821 */  addu  $t9, $a3, $v1
/* 0B972C 80158CEC C7260000 */  lwc1  $f6, ($t9)
/* 0B9730 80158CF0 00230821 */  addu  $at, $at, $v1
/* 0B9734 80158CF4 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0B9738 80158CF8 E4263210 */  swc1  $f6, 0x3210($at)
/* 0B973C 80158CFC 8C4A0000 */  lw    $t2, ($v0)
/* 0B9740 80158D00 3C018019 */  lui   $at, %hi(D_80196F70) # $at, 0x8019
/* 0B9744 80158D04 C4286F70 */  lwc1  $f8, %lo(D_80196F70)($at)
/* 0B9748 80158D08 3C01800E */  lui   $at, 0x800e
/* 0B974C 80158D0C 000A5880 */  sll   $t3, $t2, 2
/* 0B9750 80158D10 002B0821 */  addu  $at, $at, $t3
/* 0B9754 80158D14 E4283C90 */  swc1  $f8, 0x3c90($at)
/* 0B9758 80158D18 2408FFFF */  li    $t0, -1
/* 0B975C 80158D1C A0C0000C */  sb    $zero, 0xc($a2)
/* 0B9760 80158D20 ACC80000 */  sw    $t0, ($a2)
/* 0B9764 80158D24 3C01800D */  lui   $at, %hi(D_800D6FB2) # $at, 0x800d
/* 0B9768 80158D28 240C0001 */  li    $t4, 1
/* 0B976C 80158D2C A42C6FB2 */  sh    $t4, %lo(D_800D6FB2)($at)
/* 0B9770 80158D30 ACC80044 */  sw    $t0, 0x44($a2)
/* 0B9774 80158D34 8C4D0000 */  lw    $t5, ($v0)
/* 0B9778 80158D38 3C01800E */  lui   $at, 0x800e
/* 0B977C 80158D3C 3C09800E */  lui   $t1, %hi(D_800E6D90) # $t1, 0x800e
/* 0B9780 80158D40 000D7080 */  sll   $t6, $t5, 2
/* 0B9784 80158D44 002E0821 */  addu  $at, $at, $t6
/* 0B9788 80158D48 AC205F90 */  sw    $zero, 0x5f90($at)
/* 0B978C 80158D4C 8C4F0000 */  lw    $t7, ($v0)
/* 0B9790 80158D50 3C018019 */  lui   $at, %hi(D_80196F74) # $at, 0x8019
/* 0B9794 80158D54 C42A6F74 */  lwc1  $f10, %lo(D_80196F74)($at)
/* 0B9798 80158D58 25296D90 */  addiu $t1, %lo(D_800E6D90) # addiu $t1, $t1, 0x6d90
/* 0B979C 80158D5C 000FC080 */  sll   $t8, $t7, 2
/* 0B97A0 80158D60 0138C821 */  addu  $t9, $t1, $t8
/* 0B97A4 80158D64 E72A0000 */  swc1  $f10, ($t9)
/* 0B97A8 80158D68 8C430000 */  lw    $v1, ($v0)
/* 0B97AC 80158D6C 3C01800E */  lui   $at, 0x800e
/* 0B97B0 80158D70 3C04800E */  lui   $a0, 0x800e
/* 0B97B4 80158D74 00031880 */  sll   $v1, $v1, 2
/* 0B97B8 80158D78 01235021 */  addu  $t2, $t1, $v1
/* 0B97BC 80158D7C C5500000 */  lwc1  $f16, ($t2)
/* 0B97C0 80158D80 00230821 */  addu  $at, $at, $v1
/* 0B97C4 80158D84 3C058022 */  lui   $a1, %hi(D_8022785C) # $a1, 0x8022
/* 0B97C8 80158D88 E4306BD0 */  swc1  $f16, 0x6bd0($at)
/* 0B97CC 80158D8C 8C4B0000 */  lw    $t3, ($v0)
/* 0B97D0 80158D90 24A5785C */  addiu $a1, %lo(D_8022785C) # addiu $a1, $a1, 0x785c
/* 0B97D4 80158D94 000B6080 */  sll   $t4, $t3, 2
/* 0B97D8 80158D98 008C2021 */  addu  $a0, $a0, $t4
/* 0B97DC 80158D9C 0C02C7B2 */  jal   assign_new_process_entry
/* 0B97E0 80158DA0 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 0B97E4 80158DA4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B97E8 80158DA8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B97EC 80158DAC 03E00008 */  jr    $ra
/* 0B97F0 80158DB0 00000000 */   nop   
.type func_80158CA8_ovl3, @function
.size func_80158CA8_ovl3, . - func_80158CA8_ovl3
