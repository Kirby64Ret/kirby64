glabel func_800A6E64
/* 04F0B4 800A6E64 3C01800D */  lui   $at, %hi(D_800D79B0) # $at, 0x800d
/* 04F0B8 800A6E68 AC2079B0 */  sw    $zero, %lo(D_800D79B0)($at)
/* 04F0BC 800A6E6C 3C01800D */  lui   $at, %hi(D_800D79D8) # $at, 0x800d
/* 04F0C0 800A6E70 AC2079D8 */  sw    $zero, %lo(D_800D79D8)($at)
/* 04F0C4 800A6E74 3C0E800C */  lui   $t6, %hi(D_800BF8F0) # $t6, 0x800c
/* 04F0C8 800A6E78 8DCEF8F0 */  lw    $t6, %lo(D_800BF8F0)($t6)
/* 04F0CC 800A6E7C 3C01800D */  lui   $at, %hi(D_800D7A00) # $at, 0x800d
/* 04F0D0 800A6E80 AC207A00 */  sw    $zero, %lo(D_800D7A00)($at)
/* 04F0D4 800A6E84 3C01800D */  lui   $at, %hi(D_800D79B4) # $at, 0x800d
/* 04F0D8 800A6E88 ADC00000 */  sw    $zero, ($t6)
/* 04F0DC 800A6E8C AC2079B4 */  sw    $zero, %lo(D_800D79B4)($at)
/* 04F0E0 800A6E90 3C01800D */  lui   $at, %hi(D_800D79DC) # $at, 0x800d
/* 04F0E4 800A6E94 3C0F800C */  lui   $t7, %hi(D_800BF8F4) # $t7, 0x800c
/* 04F0E8 800A6E98 8DEFF8F4 */  lw    $t7, %lo(D_800BF8F4)($t7)
/* 04F0EC 800A6E9C AC2079DC */  sw    $zero, %lo(D_800D79DC)($at)
/* 04F0F0 800A6EA0 3C01800D */  lui   $at, %hi(D_800D7A04) # $at, 0x800d
/* 04F0F4 800A6EA4 AC207A04 */  sw    $zero, %lo(D_800D7A04)($at)
/* 04F0F8 800A6EA8 3C03800D */  lui   $v1, %hi(D_800D79B8) # $v1, 0x800d
/* 04F0FC 800A6EAC 3C04800D */  lui   $a0, %hi(D_800D79E0) # $a0, 0x800d
/* 04F100 800A6EB0 3C05800D */  lui   $a1, %hi(D_800D7A08) # $a1, 0x800d
/* 04F104 800A6EB4 3C06800C */  lui   $a2, %hi(D_800BF8F8) # $a2, 0x800c
/* 04F108 800A6EB8 3C02800C */  lui   $v0, %hi(D_800BF918) # $v0, 0x800c
/* 04F10C 800A6EBC 2442F918 */  addiu $v0, %lo(D_800BF918) # addiu $v0, $v0, -0x6e8
/* 04F110 800A6EC0 24C6F8F8 */  addiu $a2, %lo(D_800BF8F8) # addiu $a2, $a2, -0x708
/* 04F114 800A6EC4 24A57A08 */  addiu $a1, %lo(D_800D7A08) # addiu $a1, $a1, 0x7a08
/* 04F118 800A6EC8 248479E0 */  addiu $a0, %lo(D_800D79E0) # addiu $a0, $a0, 0x79e0
/* 04F11C 800A6ECC 246379B8 */  addiu $v1, %lo(D_800D79B8) # addiu $v1, $v1, 0x79b8
/* 04F120 800A6ED0 ADE00000 */  sw    $zero, ($t7)
.L800A6ED4_ovl1:
/* 04F124 800A6ED4 8CD80000 */  lw    $t8, ($a2)
/* 04F128 800A6ED8 AC600000 */  sw    $zero, ($v1)
/* 04F12C 800A6EDC AC800000 */  sw    $zero, ($a0)
/* 04F130 800A6EE0 ACA00000 */  sw    $zero, ($a1)
/* 04F134 800A6EE4 AF000000 */  sw    $zero, ($t8)
/* 04F138 800A6EE8 8CD90004 */  lw    $t9, 4($a2)
/* 04F13C 800A6EEC ACA00004 */  sw    $zero, 4($a1)
/* 04F140 800A6EF0 AC800004 */  sw    $zero, 4($a0)
/* 04F144 800A6EF4 AC600004 */  sw    $zero, 4($v1)
/* 04F148 800A6EF8 AF200000 */  sw    $zero, ($t9)
/* 04F14C 800A6EFC 8CC80008 */  lw    $t0, 8($a2)
/* 04F150 800A6F00 ACA00008 */  sw    $zero, 8($a1)
/* 04F154 800A6F04 AC800008 */  sw    $zero, 8($a0)
/* 04F158 800A6F08 AC600008 */  sw    $zero, 8($v1)
/* 04F15C 800A6F0C AD000000 */  sw    $zero, ($t0)
/* 04F160 800A6F10 8CC9000C */  lw    $t1, 0xc($a2)
/* 04F164 800A6F14 ACA0000C */  sw    $zero, 0xc($a1)
/* 04F168 800A6F18 AC80000C */  sw    $zero, 0xc($a0)
/* 04F16C 800A6F1C AC60000C */  sw    $zero, 0xc($v1)
/* 04F170 800A6F20 24C60010 */  addiu $a2, $a2, 0x10
/* 04F174 800A6F24 24630010 */  addiu $v1, $v1, 0x10
/* 04F178 800A6F28 24840010 */  addiu $a0, $a0, 0x10
/* 04F17C 800A6F2C 24A50010 */  addiu $a1, $a1, 0x10
/* 04F180 800A6F30 14C2FFE8 */  bne   $a2, $v0, .L800A6ED4_ovl1
/* 04F184 800A6F34 AD200000 */   sw    $zero, ($t1)
/* 04F188 800A6F38 03E00008 */  jr    $ra
/* 04F18C 800A6F3C 00000000 */   nop   
.type func_800A6E64, @function
.size func_800A6E64, . - func_800A6E64
