glabel func_800BD6E0
/* 065930 800BD6E0 3C0E800D */  lui   $t6, %hi(D_800D6E8C) # $t6, 0x800d
/* 065934 800BD6E4 8DCE6E8C */  lw    $t6, %lo(D_800D6E8C)($t6)
/* 065938 800BD6E8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 06593C 800BD6EC 24070001 */  li    $a3, 1
/* 065940 800BD6F0 14EE0014 */  bne   $a3, $t6, .L800BD744_ovl1
/* 065944 800BD6F4 AFBF0014 */   sw    $ra, 0x14($sp)
/* 065948 800BD6F8 3C0F800D */  lui   $t7, %hi(D_800D6EC0) # $t7, 0x800d
/* 06594C 800BD6FC 8DEF6EC0 */  lw    $t7, %lo(D_800D6EC0)($t7)
/* 065950 800BD700 15E00010 */  bnez  $t7, .L800BD744_ovl1
/* 065954 800BD704 00000000 */   nop   
/* 065958 800BD708 0C03E158 */  jal   func_800F8560
/* 06595C 800BD70C 00000000 */   nop   
/* 065960 800BD710 24010003 */  li    $at, 3
/* 065964 800BD714 1041000B */  beq   $v0, $at, .L800BD744_ovl1
/* 065968 800BD718 3C18800D */   lui   $t8, %hi(D_800D6B24) # $t8, 0x800d
/* 06596C 800BD71C 8F186B24 */  lw    $t8, %lo(D_800D6B24)($t8)
/* 065970 800BD720 17000008 */  bnez  $t8, .L800BD744_ovl1
/* 065974 800BD724 00000000 */   nop   
/* 065978 800BD728 0C029D9E */  jal   play_sound
/* 06597C 800BD72C 240400EC */   li    $a0, 236
/* 065980 800BD730 3C02800D */  lui   $v0, %hi(D_800D6EC0) # $v0, 0x800d
/* 065984 800BD734 24426EC0 */  addiu $v0, %lo(D_800D6EC0) # addiu $v0, $v0, 0x6ec0
/* 065988 800BD738 8C590000 */  lw    $t9, ($v0)
/* 06598C 800BD73C 27280001 */  addiu $t0, $t9, 1
/* 065990 800BD740 AC480000 */  sw    $t0, ($v0)
.L800BD744_ovl1:
/* 065994 800BD744 3C06800D */  lui   $a2, %hi(D_800D6EA4) # $a2, 0x800d
/* 065998 800BD748 24C66EA4 */  addiu $a2, %lo(D_800D6EA4) # addiu $a2, $a2, 0x6ea4
/* 06599C 800BD74C 3C04800D */  lui   $a0, %hi(D_800D6E8C) # $a0, 0x800d
/* 0659A0 800BD750 8C846E8C */  lw    $a0, %lo(D_800D6E8C)($a0)
/* 0659A4 800BD754 8CC30000 */  lw    $v1, ($a2)
/* 0659A8 800BD758 3C05800D */  lui   $a1, %hi(D_800D6EB4) # $a1, 0x800d
/* 0659AC 800BD75C 24070001 */  li    $a3, 1
/* 0659B0 800BD760 14640005 */  bne   $v1, $a0, .L800BD778_ovl1
/* 0659B4 800BD764 24A56EB4 */   addiu $a1, %lo(D_800D6EB4) # addiu $a1, $a1, 0x6eb4
/* 0659B8 800BD768 3C05800D */  lui   $a1, %hi(D_800D6EB4) # $a1, 0x800d
/* 0659BC 800BD76C 24A56EB4 */  addiu $a1, %lo(D_800D6EB4) # addiu $a1, $a1, 0x6eb4
/* 0659C0 800BD770 1000001E */  b     .L800BD7EC_ovl1
/* 0659C4 800BD774 ACA00000 */   sw    $zero, ($a1)
.L800BD778_ovl1:
/* 0659C8 800BD778 8CA90000 */  lw    $t1, ($a1)
/* 0659CC 800BD77C 25220001 */  addiu $v0, $t1, 1
/* 0659D0 800BD780 28410005 */  slti  $at, $v0, 5
/* 0659D4 800BD784 14200003 */  bnez  $at, .L800BD794_ovl1
/* 0659D8 800BD788 ACA20000 */   sw    $v0, ($a1)
/* 0659DC 800BD78C ACA70000 */  sw    $a3, ($a1)
/* 0659E0 800BD790 00E01025 */  move  $v0, $a3
.L800BD794_ovl1:
/* 0659E4 800BD794 14E20015 */  bne   $a3, $v0, .L800BD7EC_ovl1
/* 0659E8 800BD798 0083082A */   slt   $at, $a0, $v1
/* 0659EC 800BD79C 10200004 */  beqz  $at, .L800BD7B0_ovl1
/* 0659F0 800BD7A0 00002825 */   move  $a1, $zero
/* 0659F4 800BD7A4 2464FFFF */  addiu $a0, $v1, -1
/* 0659F8 800BD7A8 1000000E */  b     .L800BD7E4_ovl1
/* 0659FC 800BD7AC ACC40000 */   sw    $a0, ($a2)
.L800BD7B0_ovl1:
/* 065A00 800BD7B0 0C029D9E */  jal   play_sound
/* 065A04 800BD7B4 240400D3 */   li    $a0, 211
/* 065A08 800BD7B8 3C06800D */  lui   $a2, %hi(D_800D6EA4) # $a2, 0x800d
/* 065A0C 800BD7BC 24C66EA4 */  addiu $a2, %lo(D_800D6EA4) # addiu $a2, $a2, 0x6ea4
/* 065A10 800BD7C0 8CCB0000 */  lw    $t3, ($a2)
/* 065A14 800BD7C4 24050001 */  li    $a1, 1
/* 065A18 800BD7C8 256C0001 */  addiu $t4, $t3, 1
/* 065A1C 800BD7CC 29810002 */  slti  $at, $t4, 2
/* 065A20 800BD7D0 ACCC0000 */  sw    $t4, ($a2)
/* 065A24 800BD7D4 14200003 */  bnez  $at, .L800BD7E4_ovl1
/* 065A28 800BD7D8 2584FFFF */   addiu $a0, $t4, -1
/* 065A2C 800BD7DC 3C01800D */  lui   $at, %hi(D_800D6EC0) # $at, 0x800d
/* 065A30 800BD7E0 AC206EC0 */  sw    $zero, %lo(D_800D6EC0)($at)
.L800BD7E4_ovl1:
/* 065A34 800BD7E4 0C02F43A */  jal   draw_hp_segment
/* 065A38 800BD7E8 00000000 */   nop   
.L800BD7EC_ovl1:
/* 065A3C 800BD7EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 065A40 800BD7F0 27BD0018 */  addiu $sp, $sp, 0x18
/* 065A44 800BD7F4 03E00008 */  jr    $ra
/* 065A48 800BD7F8 00000000 */   nop   
.type func_800BD6E0, @function
.size func_800BD6E0, . - func_800BD6E0
