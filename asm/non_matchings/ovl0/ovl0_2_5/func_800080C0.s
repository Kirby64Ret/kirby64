glabel func_800080C0
/* 008CC0 800080C0 8C860018 */  lw    $a2, 0x18($a0)
/* 008CC4 800080C4 3C098005 */  lui   $t1, %hi(D_8004A5F8) # $t1, 0x8005
/* 008CC8 800080C8 2529A5F8 */  addiu $t1, %lo(D_8004A5F8) # addiu $t1, $t1, -0x5a08
/* 008CCC 800080CC 8C870010 */  lw    $a3, 0x10($a0)
/* 008CD0 800080D0 00C01025 */  move  $v0, $a2
/* 008CD4 800080D4 90C5000C */  lbu   $a1, 0xc($a2)
.L800080D8_ovl0:
/* 008CD8 800080D8 10C00012 */  beqz  $a2, .L80008124_ovl0
/* 008CDC 800080DC 24A8FFFF */   addiu $t0, $a1, -1
/* 008CE0 800080E0 8CC3001C */  lw    $v1, 0x1c($a2)
.L800080E4_ovl0:
/* 008CE4 800080E4 5060000D */  beql  $v1, $zero, .L8000811C_ovl0
/* 008CE8 800080E8 8CC60008 */   lw    $a2, 8($a2)
/* 008CEC 800080EC 8C6E0010 */  lw    $t6, 0x10($v1)
.L800080F0_ovl0:
/* 008CF0 800080F0 54EE0007 */  bnel  $a3, $t6, .L80008110_ovl0
/* 008CF4 800080F4 8C630004 */   lw    $v1, 4($v1)
/* 008CF8 800080F8 8C6F0008 */  lw    $t7, 8($v1)
/* 008CFC 800080FC AC8F0008 */  sw    $t7, 8($a0)
/* 008D00 80008100 AC640008 */  sw    $a0, 8($v1)
/* 008D04 80008104 10000015 */  b     .L8000815C_ovl0
/* 008D08 80008108 AC83000C */   sw    $v1, 0xc($a0)
/* 008D0C 8000810C 8C630004 */  lw    $v1, 4($v1)
.L80008110_ovl0:
/* 008D10 80008110 5460FFF7 */  bnezl $v1, .L800080F0_ovl0
/* 008D14 80008114 8C6E0010 */   lw    $t6, 0x10($v1)
/* 008D18 80008118 8CC60008 */  lw    $a2, 8($a2)
.L8000811C_ovl0:
/* 008D1C 8000811C 54C0FFF1 */  bnezl $a2, .L800080E4_ovl0
/* 008D20 80008120 8CC3001C */   lw    $v1, 0x1c($a2)
.L80008124_ovl0:
/* 008D24 80008124 10A00005 */  beqz  $a1, .L8000813C_ovl0
/* 008D28 80008128 0008C080 */   sll   $t8, $t0, 2
/* 008D2C 8000812C 0138C821 */  addu  $t9, $t1, $t8
/* 008D30 80008130 8F260000 */  lw    $a2, ($t9)
/* 008D34 80008134 1000FFE8 */  b     .L800080D8_ovl0
/* 008D38 80008138 01002825 */   move  $a1, $t0
.L8000813C_ovl0:
/* 008D3C 8000813C 3C0B8005 */  lui   $t3, %hi(D_8004A560) # $t3, 0x8005
/* 008D40 80008140 256BA560 */  addiu $t3, %lo(D_8004A560) # addiu $t3, $t3, -0x5aa0
/* 008D44 80008144 00075080 */  sll   $t2, $a3, 2
/* 008D48 80008148 014B1821 */  addu  $v1, $t2, $t3
/* 008D4C 8000814C 8C6C0000 */  lw    $t4, ($v1)
/* 008D50 80008150 AC8C0008 */  sw    $t4, 8($a0)
/* 008D54 80008154 AC640000 */  sw    $a0, ($v1)
/* 008D58 80008158 AC80000C */  sw    $zero, 0xc($a0)
.L8000815C_ovl0:
/* 008D5C 8000815C 8C830008 */  lw    $v1, 8($a0)
/* 008D60 80008160 50600003 */  beql  $v1, $zero, .L80008170_ovl0
/* 008D64 80008164 8C43001C */   lw    $v1, 0x1c($v0)
/* 008D68 80008168 AC64000C */  sw    $a0, 0xc($v1)
/* 008D6C 8000816C 8C43001C */  lw    $v1, 0x1c($v0)
.L80008170_ovl0:
/* 008D70 80008170 50600004 */  beql  $v1, $zero, .L80008184_ovl0
/* 008D74 80008174 AC440018 */   sw    $a0, 0x18($v0)
/* 008D78 80008178 10000002 */  b     .L80008184_ovl0
/* 008D7C 8000817C AC640000 */   sw    $a0, ($v1)
/* 008D80 80008180 AC440018 */  sw    $a0, 0x18($v0)
.L80008184_ovl0:
/* 008D84 80008184 8C4D001C */  lw    $t5, 0x1c($v0)
/* 008D88 80008188 AC800000 */  sw    $zero, ($a0)
/* 008D8C 8000818C AC8D0004 */  sw    $t5, 4($a0)
/* 008D90 80008190 03E00008 */  jr    $ra
/* 008D94 80008194 AC44001C */   sw    $a0, 0x1c($v0)
.type func_800080C0, @function
.size func_800080C0, . - func_800080C0
