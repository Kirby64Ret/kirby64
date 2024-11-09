glabel func_800A04B8
/* 048708 800A04B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04870C 800A04BC AFB10018 */  sw    $s1, 0x18($sp)
/* 048710 800A04C0 3C11800D */  lui   $s1, %hi(D_800D6A08) # $s1, 0x800d
/* 048714 800A04C4 AFB00014 */  sw    $s0, 0x14($sp)
/* 048718 800A04C8 3C03800D */  lui   $v1, %hi(D_800D6A0C) # $v1, 0x800d
/* 04871C 800A04CC 24636A0C */  addiu $v1, %lo(D_800D6A0C) # addiu $v1, $v1, 0x6a0c
/* 048720 800A04D0 26316A08 */  addiu $s1, %lo(D_800D6A08) # addiu $s1, $s1, 0x6a08
/* 048724 800A04D4 2490FFFF */  addiu $s0, $a0, -1
/* 048728 800A04D8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04872C 800A04DC AE200000 */  sw    $zero, ($s1)
/* 048730 800A04E0 0600000E */  bltz  $s0, .L800A051C_ovl1
/* 048734 800A04E4 AC600000 */   sw    $zero, ($v1)
.L800A04E8_ovl1:
/* 048738 800A04E8 24040078 */  li    $a0, 120
/* 04873C 800A04EC 0C001500 */  jal   alloc_with_alignment
/* 048740 800A04F0 24050004 */   li    $a1, 4
/* 048744 800A04F4 54400004 */  bnezl $v0, .L800A0508_ovl1
/* 048748 800A04F8 8E2F0000 */   lw    $t7, ($s1)
/* 04874C 800A04FC 10000011 */  b     .L800A0544_ovl1
/* 048750 800A0500 00001025 */   move  $v0, $zero
/* 048754 800A0504 8E2F0000 */  lw    $t7, ($s1)
.L800A0508_ovl1:
/* 048758 800A0508 2610FFFF */  addiu $s0, $s0, -1
/* 04875C 800A050C 3C01800D */  lui   $at, %hi(D_800D6A08) # $at, 0x800d
/* 048760 800A0510 AC4F0000 */  sw    $t7, ($v0)
/* 048764 800A0514 0601FFF4 */  bgez  $s0, .L800A04E8_ovl1
/* 048768 800A0518 AC226A08 */   sw    $v0, %lo(D_800D6A08)($at)
.L800A051C_ovl1:
/* 04876C 800A051C 3C01800D */  lui   $at, %hi(D_800D6AE2) # $at, 0x800d
/* 048770 800A0520 A4206AE2 */  sh    $zero, %lo(D_800D6AE2)($at)
/* 048774 800A0524 3C01800D */  lui   $at, %hi(D_800D6AE8) # $at, 0x800d
/* 048778 800A0528 3C05800A */  lui   $a1, %hi(D_800A09AC) # $a1, 0x800a
/* 04877C 800A052C A4206AE8 */  sh    $zero, %lo(D_800D6AE8)($at)
/* 048780 800A0530 24A509AC */  addiu $a1, %lo(D_800A09AC) # addiu $a1, $a1, 0x9ac
/* 048784 800A0534 2404FFF9 */  li    $a0, -7
/* 048788 800A0538 00003025 */  move  $a2, $zero
/* 04878C 800A053C 0C002860 */  jal   func_8000A180
/* 048790 800A0540 3C078000 */   lui   $a3, 0x8000
.L800A0544_ovl1:
/* 048794 800A0544 8FBF001C */  lw    $ra, 0x1c($sp)
/* 048798 800A0548 8FB00014 */  lw    $s0, 0x14($sp)
/* 04879C 800A054C 8FB10018 */  lw    $s1, 0x18($sp)
/* 0487A0 800A0550 03E00008 */  jr    $ra
/* 0487A4 800A0554 27BD0020 */   addiu $sp, $sp, 0x20
.type func_800A04B8, @function
.size func_800A04B8, . - func_800A04B8
