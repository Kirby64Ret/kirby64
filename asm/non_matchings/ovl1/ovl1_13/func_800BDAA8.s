glabel func_800BDAA8
/* 065CF8 800BDAA8 3C02800D */  lui   $v0, %hi(D_800D6E90) # $v0, 0x800d
/* 065CFC 800BDAAC 3C0E800D */  lui   $t6, %hi(D_800D6EA8) # $t6, 0x800d
/* 065D00 800BDAB0 8DCE6EA8 */  lw    $t6, %lo(D_800D6EA8)($t6)
/* 065D04 800BDAB4 8C426E90 */  lw    $v0, %lo(D_800D6E90)($v0)
/* 065D08 800BDAB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 065D0C 800BDABC AFBF0014 */  sw    $ra, 0x14($sp)
/* 065D10 800BDAC0 11C20010 */  beq   $t6, $v0, .L800BDB04_ovl1
/* 065D14 800BDAC4 240400E4 */   li    $a0, 228
/* 065D18 800BDAC8 00027840 */  sll   $t7, $v0, 1
/* 065D1C 800BDACC 3C05800D */ lui $a1, %hi(D_800D55F8)
/* 065D20 800BDAD0 00AF2821 */  addu  $a1, $a1, $t7
/* 065D24 800BDAD4 0C02F518 */  jal   func_800BD460
/* 065D28 800BDAD8 90A555F8 */ lbu $a1, %lo(D_800D55F8)($a1)
/* 065D2C 800BDADC 3C18800D */  lui   $t8, %hi(D_800D6E90) # $t8, 0x800d
/* 065D30 800BDAE0 8F186E90 */  lw    $t8, %lo(D_800D6E90)($t8)
/* 065D34 800BDAE4 3C05800D */ lui $a1, %hi(D_800D55F9)
/* 065D38 800BDAE8 24040108 */  li    $a0, 264
/* 065D3C 800BDAEC 0018C840 */  sll   $t9, $t8, 1
/* 065D40 800BDAF0 00B92821 */  addu  $a1, $a1, $t9
/* 065D44 800BDAF4 0C02F518 */  jal   func_800BD460
/* 065D48 800BDAF8 90A555F9 */ lbu $a1, %lo(D_800D55F9)($a1)
/* 065D4C 800BDAFC 3C02800D */  lui   $v0, %hi(D_800D6E90) # $v0, 0x800d
/* 065D50 800BDB00 8C426E90 */  lw    $v0, %lo(D_800D6E90)($v0)
.L800BDB04_ovl1:
/* 065D54 800BDB04 8FBF0014 */  lw    $ra, 0x14($sp)
/* 065D58 800BDB08 3C01800D */  lui   $at, %hi(D_800D6EA8) # $at, 0x800d
/* 065D5C 800BDB0C AC226EA8 */  sw    $v0, %lo(D_800D6EA8)($at)
/* 065D60 800BDB10 03E00008 */  jr    $ra
/* 065D64 800BDB14 27BD0018 */   addiu $sp, $sp, 0x18
.type func_800BDAA8, @function
.size func_800BDAA8, . - func_800BDAA8
