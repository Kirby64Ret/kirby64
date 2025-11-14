glabel func_801E72C4_ovl16
/* 21D574 801E72C4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 21D578 801E72C8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 21D57C 801E72CC AFA40000 */  sw    $a0, ($sp)
/* 21D580 801E72D0 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 21D584 801E72D4 8C4F0000 */  lw    $t7, ($v0)
/* 21D588 801E72D8 240E0018 */  li    $t6, 24
/* 21D58C 801E72DC 24190021 */  li    $t9, 33
/* 21D590 801E72E0 000FC080 */  sll   $t8, $t7, 2
/* 21D594 801E72E4 00380821 */  addu  $at, $at, $t8
/* 21D598 801E72E8 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 21D59C 801E72EC 3C01800D */  lui   $at, %hi(D_800D70A8) # $at, 0x800d
/* 21D5A0 801E72F0 AC2070A8 */  sw    $zero, %lo(D_800D70A8)($at)
/* 21D5A4 801E72F4 8C480000 */  lw    $t0, ($v0)
/* 21D5A8 801E72F8 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 21D5AC 801E72FC 00084880 */  sll   $t1, $t0, 2
/* 21D5B0 801E7300 00290821 */  addu  $at, $at, $t1
/* 21D5B4 801E7304 03E00008 */  jr    $ra
/* 21D5B8 801E7308 AC39DC50 */ sw $t9, %lo(gEntityVtableIndexArray)($at)
.type func_801E72C4_ovl16, @function
.size func_801E72C4_ovl16, . - func_801E72C4_ovl16
