glabel func_80001924
/* 002524 80001924 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 002528 80001928 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00252C 8000192C 0C00C534 */  jal   osGetCount
/* 002530 80001930 AFA40020 */   sw    $a0, 0x20($sp)
/* 002534 80001934 3C038005 */  lui   $v1, %hi(D_80048B8C) # $v1, 0x8005
/* 002538 80001938 8C638B8C */  lw    $v1, %lo(D_80048B8C)($v1)
/* 00253C 8000193C 3C018005 */  lui   $at, %hi(D_80048C70) # $at, 0x8005
/* 002540 80001940 AC228C70 */  sw    $v0, %lo(D_80048C70)($at)
/* 002544 80001944 1060000F */  beqz  $v1, .L80001984_ovl0
/* 002548 80001948 8FA40020 */   lw    $a0, 0x20($sp)
/* 00254C 8000194C 8C6E0008 */  lw    $t6, 8($v1)
/* 002550 80001950 24010002 */  li    $at, 2
/* 002554 80001954 55C1000C */  bnel  $t6, $at, .L80001988_ovl0
/* 002558 80001958 24840028 */   addiu $a0, $a0, 0x28
/* 00255C 8000195C 0C00C1A8 */  jal   osSpTaskYield
/* 002560 80001960 00000000 */   nop   
/* 002564 80001964 3C188005 */  lui   $t8, %hi(D_80048B8C) # $t8, 0x8005
/* 002568 80001968 8F188B8C */  lw    $t8, %lo(D_80048B8C)($t8)
/* 00256C 8000196C 240F0004 */  li    $t7, 4
/* 002570 80001970 24190003 */  li    $t9, 3
/* 002574 80001974 AF0F0008 */  sw    $t7, 8($t8)
/* 002578 80001978 8FA80020 */  lw    $t0, 0x20($sp)
/* 00257C 8000197C 10000009 */  b     .L800019A4_ovl0
/* 002580 80001980 AD190008 */   sw    $t9, 8($t0)
.L80001984_ovl0:
/* 002584 80001984 24840028 */  addiu $a0, $a0, 0x28
.L80001988_ovl0:
/* 002588 80001988 0C00B66F */  jal   osSpTaskLoad
/* 00258C 8000198C AFA4001C */   sw    $a0, 0x1c($sp)
/* 002590 80001990 0C00B6D3 */  jal   osSpTaskStartGo
/* 002594 80001994 8FA4001C */   lw    $a0, 0x1c($sp)
/* 002598 80001998 8FAA0020 */  lw    $t2, 0x20($sp)
/* 00259C 8000199C 24090002 */  li    $t1, 2
/* 0025A0 800019A0 AD490008 */  sw    $t1, 8($t2)
.L800019A4_ovl0:
/* 0025A4 800019A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0025A8 800019A8 8FAB0020 */  lw    $t3, 0x20($sp)
/* 0025AC 800019AC 3C018005 */  lui   $at, 0x8005
/* 0025B0 800019B0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0025B4 800019B4 03E00008 */  jr    $ra
/* 0025B8 800019B8 AC2B8B90 */   sw    $t3, -0x7470($at)
