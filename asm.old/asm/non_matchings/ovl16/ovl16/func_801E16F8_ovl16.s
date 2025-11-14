glabel func_801E16F8_ovl16
/* 2179A8 801E16F8 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 2179AC 801E16FC 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 2179B0 801E1700 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 2179B4 801E1704 AFBF0014 */  sw    $ra, 0x14($sp)
/* 2179B8 801E1708 AFA40018 */  sw    $a0, 0x18($sp)
/* 2179BC 801E170C 8DF80000 */  lw    $t8, ($t7)
/* 2179C0 801E1710 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 2179C4 801E1714 240E0006 */  li    $t6, 6
/* 2179C8 801E1718 0018C880 */  sll   $t9, $t8, 2
/* 2179CC 801E171C 00390821 */  addu  $at, $at, $t9
/* 2179D0 801E1720 3C040001 */  lui   $a0, (0x00010489 >> 16) # lui $a0, 1
/* 2179D4 801E1724 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 2179D8 801E1728 0C02A7A9 */  jal   func_800A9EA4
/* 2179DC 801E172C 34840489 */   ori   $a0, (0x00010489 & 0xFFFF) # ori $a0, $a0, 0x489
/* 2179E0 801E1730 3C040001 */  lui   $a0, (0x00010488 >> 16) # lui $a0, 1
/* 2179E4 801E1734 0C02A7A9 */  jal   func_800A9EA4
/* 2179E8 801E1738 34840488 */   ori   $a0, (0x00010488 & 0xFFFF) # ori $a0, $a0, 0x488
/* 2179EC 801E173C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 2179F0 801E1740 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 2179F4 801E1744 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 2179F8 801E1748 44810000 */  mtc1  $at, $f0
/* 2179FC 801E174C 8C620000 */  lw    $v0, ($v1)
/* 217A00 801E1750 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 217A04 801E1754 2404001E */  li    $a0, 30
/* 217A08 801E1758 00021080 */  sll   $v0, $v0, 2
/* 217A0C 801E175C 00220821 */  addu  $at, $at, $v0
/* 217A10 801E1760 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 217A14 801E1764 3C01800E */ lui $at, %hi(D_800E3050)
/* 217A18 801E1768 00220821 */  addu  $at, $at, $v0
/* 217A1C 801E176C 46002187 */  neg.s $f6, $f4
/* 217A20 801E1770 46003203 */  div.s $f8, $f6, $f0
/* 217A24 801E1774 E4283050 */ swc1 $f8, %lo(D_800E3050)($at)
/* 217A28 801E1778 8C620000 */  lw    $v0, ($v1)
/* 217A2C 801E177C 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 217A30 801E1780 44815000 */  mtc1  $at, $f10
/* 217A34 801E1784 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 217A38 801E1788 00021080 */  sll   $v0, $v0, 2
/* 217A3C 801E178C 00220821 */  addu  $at, $at, $v0
/* 217A40 801E1790 C4302790 */ lwc1 $f16, %lo(gEntitiesNextPosYArray)($at)
/* 217A44 801E1794 3C01800E */ lui $at, %hi(D_800E3210)
/* 217A48 801E1798 00220821 */  addu  $at, $at, $v0
/* 217A4C 801E179C 46105481 */  sub.s $f18, $f10, $f16
/* 217A50 801E17A0 46009103 */  div.s $f4, $f18, $f0
/* 217A54 801E17A4 0C002DAF */  jal   finish_current_thread
/* 217A58 801E17A8 E4243210 */ swc1 $f4, %lo(D_800E3210)($at)
/* 217A5C 801E17AC 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 217A60 801E17B0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 217A64 801E17B4 3C01800D */  lui   $at, %hi(D_800D70A8) # $at, 0x800d
/* 217A68 801E17B8 AC2070A8 */  sw    $zero, %lo(D_800D70A8)($at)
/* 217A6C 801E17BC 8D2A0000 */  lw    $t2, ($t1)
/* 217A70 801E17C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 217A74 801E17C4 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 217A78 801E17C8 000A5880 */  sll   $t3, $t2, 2
/* 217A7C 801E17CC 002B0821 */  addu  $at, $at, $t3
/* 217A80 801E17D0 24080021 */  li    $t0, 33
/* 217A84 801E17D4 AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
/* 217A88 801E17D8 03E00008 */  jr    $ra
/* 217A8C 801E17DC 27BD0018 */   addiu $sp, $sp, 0x18
.type func_801E16F8_ovl16, @function
.size func_801E16F8_ovl16, . - func_801E16F8_ovl16
