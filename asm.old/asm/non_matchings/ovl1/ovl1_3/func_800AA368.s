glabel func_800AA368
/* 0525B8 800AA368 3C01800D */  lui   $at, %hi(D_800D5DDC) # $at, 0x800d
/* 0525BC 800AA36C C4245DDC */  lwc1  $f4, %lo(D_800D5DDC)($at)
/* 0525C0 800AA370 C4860074 */  lwc1  $f6, 0x74($a0)
/* 0525C4 800AA374 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 0525C8 800AA378 46062032 */  c.eq.s $f4, $f6
/* 0525CC 800AA37C 00000000 */  nop   
/* 0525D0 800AA380 45020019 */  bc1fl .L800AA3E8_ovl1
/* 0525D4 800AA384 00001025 */   move  $v0, $zero
/* 0525D8 800AA388 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 0525DC 800AA38C 3C06800E */  lui   $a2, %hi(D_800DFA10) # $a2, 0x800e
/* 0525E0 800AA390 24C6FA10 */  addiu $a2, %lo(D_800DFA10) # addiu $a2, $a2, -0x5f0
/* 0525E4 800AA394 8C850000 */  lw    $a1, ($a0)
/* 0525E8 800AA398 3C01800E */  lui   $at, 0x800e
/* 0525EC 800AA39C 24020001 */  li    $v0, 1
/* 0525F0 800AA3A0 00052880 */  sll   $a1, $a1, 2
/* 0525F4 800AA3A4 00C57021 */  addu  $t6, $a2, $a1
/* 0525F8 800AA3A8 8DC30000 */  lw    $v1, ($t6)
/* 0525FC 800AA3AC 00250821 */  addu  $at, $at, $a1
/* 052600 800AA3B0 AC23F4D0 */  sw    $v1, -0xb30($at)
/* 052604 800AA3B4 8C980000 */  lw    $t8, ($a0)
/* 052608 800AA3B8 8C6F0000 */  lw    $t7, ($v1)
/* 05260C 800AA3BC 3C01800E */  lui   $at, 0x800e
/* 052610 800AA3C0 0018C880 */  sll   $t9, $t8, 2
/* 052614 800AA3C4 00D94021 */  addu  $t0, $a2, $t9
/* 052618 800AA3C8 AD0F0000 */  sw    $t7, ($t0)
/* 05261C 800AA3CC 8C8A0000 */  lw    $t2, ($a0)
/* 052620 800AA3D0 8C690004 */  lw    $t1, 4($v1)
/* 052624 800AA3D4 000A5880 */  sll   $t3, $t2, 2
/* 052628 800AA3D8 002B0821 */  addu  $at, $at, $t3
/* 05262C 800AA3DC 03E00008 */  jr    $ra
/* 052630 800AA3E0 AC29FD90 */   sw    $t1, -0x270($at)
/* 052634 800AA3E4 00001025 */  move  $v0, $zero
.L800AA3E8_ovl1:
/* 052638 800AA3E8 03E00008 */  jr    $ra
/* 05263C 800AA3EC 00000000 */   nop   
.type func_800AA368, @function
.size func_800AA368, . - func_800AA368
