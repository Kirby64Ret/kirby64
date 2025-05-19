glabel func_801EB744_ovl10
/* 1DC4B4 801EB744 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DC4B8 801EB748 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DC4BC 801EB74C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DC4C0 801EB750 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DC4C4 801EB754 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DC4C8 801EB758 8C620000 */  lw    $v0, ($v1)
/* 1DC4CC 801EB75C 3C0E800F */  lui   $t6, %hi(D_800E9E20) # $t6, 0x800f
/* 1DC4D0 801EB760 25CE9E20 */  addiu $t6, %lo(D_800E9E20) # addiu $t6, $t6, -0x61e0
/* 1DC4D4 801EB764 00021080 */  sll   $v0, $v0, 2
/* 1DC4D8 801EB768 004E2021 */  addu  $a0, $v0, $t6
/* 1DC4DC 801EB76C 8C8F0000 */  lw    $t7, ($a0)
/* 1DC4E0 801EB770 24060002 */  li    $a2, 2
/* 1DC4E4 801EB774 3C08800F */ lui $t0, %hi(D_800E8920)
/* 1DC4E8 801EB778 14CF000E */  bne   $a2, $t7, .L801EB7B4_ovl10
/* 1DC4EC 801EB77C 01024021 */   addu  $t0, $t0, $v0
/* 1DC4F0 801EB780 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DC4F4 801EB784 00220821 */  addu  $at, $at, $v0
/* 1DC4F8 801EB788 AC26DC50 */ sw $a2, %lo(gEntityVtableIndexArray)($at)
/* 1DC4FC 801EB78C 8C780000 */  lw    $t8, ($v1)
/* 1DC500 801EB790 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1DC504 801EB794 3C05801F */  lui   $a1, %hi(D_801EA784) # $a1, 0x801f
/* 1DC508 801EB798 0018C880 */  sll   $t9, $t8, 2
/* 1DC50C 801EB79C 00992021 */  addu  $a0, $a0, $t9
/* 1DC510 801EB7A0 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1DC514 801EB7A4 0C02C7B2 */  jal   assign_new_process_entry
/* 1DC518 801EB7A8 24A5A784 */   addiu $a1, %lo(D_801EA784) # addiu $a1, $a1, -0x587c
/* 1DC51C 801EB7AC 10000024 */  b     .L801EB840_ovl10
/* 1DC520 801EB7B0 8FBF0014 */   lw    $ra, 0x14($sp)
.L801EB7B4_ovl10:
/* 1DC524 801EB7B4 8D088920 */ lw $t0, %lo(D_800E8920)($t0)
/* 1DC528 801EB7B8 3C01800E */ lui $at, %hi(D_800E3750)
/* 1DC52C 801EB7BC 00220821 */  addu  $at, $at, $v0
/* 1DC530 801EB7C0 5500001F */  bnezl $t0, .L801EB840_ovl10
/* 1DC534 801EB7C4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1DC538 801EB7C8 44807000 */  mtc1  $zero, $f14
/* 1DC53C 801EB7CC C4223750 */ lwc1 $f2, %lo(D_800E3750)($at)
/* 1DC540 801EB7D0 3C01800E */ lui $at, %hi(D_800E3210)
/* 1DC544 801EB7D4 00220821 */  addu  $at, $at, $v0
/* 1DC548 801EB7D8 46027032 */  c.eq.s $f14, $f2
/* 1DC54C 801EB7DC 00000000 */  nop   
/* 1DC550 801EB7E0 45030017 */  bc1tl .L801EB840_ovl10
/* 1DC554 801EB7E4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1DC558 801EB7E8 C4203210 */ lwc1 $f0, %lo(D_800E3210)($at)
/* 1DC55C 801EB7EC 24090001 */  li    $t1, 1
/* 1DC560 801EB7F0 460E003C */  c.lt.s $f0, $f14
/* 1DC564 801EB7F4 00000000 */  nop   
/* 1DC568 801EB7F8 45020004 */  bc1fl .L801EB80C_ovl10
/* 1DC56C 801EB7FC 46000306 */   mov.s $f12, $f0
/* 1DC570 801EB800 10000002 */  b     .L801EB80C_ovl10
/* 1DC574 801EB804 46000307 */   neg.s $f12, $f0
/* 1DC578 801EB808 46000306 */  mov.s $f12, $f0
.L801EB80C_ovl10:
/* 1DC57C 801EB80C 460E103C */  c.lt.s $f2, $f14
/* 1DC580 801EB810 00000000 */  nop   
/* 1DC584 801EB814 45020004 */  bc1fl .L801EB828_ovl10
/* 1DC588 801EB818 46001006 */   mov.s $f0, $f2
/* 1DC58C 801EB81C 10000002 */  b     .L801EB828_ovl10
/* 1DC590 801EB820 46001007 */   neg.s $f0, $f2
/* 1DC594 801EB824 46001006 */  mov.s $f0, $f2
.L801EB828_ovl10:
/* 1DC598 801EB828 4600603C */  c.lt.s $f12, $f0
/* 1DC59C 801EB82C 00000000 */  nop   
/* 1DC5A0 801EB830 45020003 */  bc1fl .L801EB840_ovl10
/* 1DC5A4 801EB834 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1DC5A8 801EB838 AC890000 */  sw    $t1, ($a0)
/* 1DC5AC 801EB83C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801EB840_ovl10:
/* 1DC5B0 801EB840 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DC5B4 801EB844 03E00008 */  jr    $ra
/* 1DC5B8 801EB848 00000000 */   nop   
.type func_801EB744_ovl10, @function
.size func_801EB744_ovl10, . - func_801EB744_ovl10
