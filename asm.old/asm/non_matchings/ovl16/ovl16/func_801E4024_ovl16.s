glabel func_801E4024_ovl16
/* 21A2D4 801E4024 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 21A2D8 801E4028 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 21A2DC 801E402C AFA40000 */  sw    $a0, ($sp)
/* 21A2E0 801E4030 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 21A2E4 801E4034 8C4F0000 */  lw    $t7, ($v0)
/* 21A2E8 801E4038 240E000F */  li    $t6, 15
/* 21A2EC 801E403C 24190021 */  li    $t9, 33
/* 21A2F0 801E4040 000FC080 */  sll   $t8, $t7, 2
/* 21A2F4 801E4044 00380821 */  addu  $at, $at, $t8
/* 21A2F8 801E4048 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 21A2FC 801E404C 3C01800D */  lui   $at, %hi(D_800D70A8) # $at, 0x800d
/* 21A300 801E4050 AC2070A8 */  sw    $zero, %lo(D_800D70A8)($at)
/* 21A304 801E4054 8C480000 */  lw    $t0, ($v0)
/* 21A308 801E4058 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 21A30C 801E405C 00084880 */  sll   $t1, $t0, 2
/* 21A310 801E4060 00290821 */  addu  $at, $at, $t1
/* 21A314 801E4064 03E00008 */  jr    $ra
/* 21A318 801E4068 AC39DC50 */ sw $t9, %lo(gEntityVtableIndexArray)($at)
.type func_801E4024_ovl16, @function
.size func_801E4024_ovl16, . - func_801E4024_ovl16
