glabel func_801DF548_ovl11
/* 1E9E08 801DF548 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1E9E0C 801DF54C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1E9E10 801DF550 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E9E14 801DF554 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E9E18 801DF558 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E9E1C 801DF55C 8C650000 */  lw    $a1, ($v1)
/* 1E9E20 801DF560 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1E9E24 801DF564 3C0F800F */ lui $t7, %hi(D_800EA520)
/* 1E9E28 801DF568 00052880 */  sll   $a1, $a1, 2
/* 1E9E2C 801DF56C 01C57021 */  addu  $t6, $t6, $a1
/* 1E9E30 801DF570 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1E9E34 801DF574 01E57821 */  addu  $t7, $t7, $a1
/* 1E9E38 801DF578 51C0000C */  beql  $t6, $zero, .L801DF5AC_ovl11
/* 1E9E3C 801DF57C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E9E40 801DF580 8DEFA520 */ lw $t7, %lo(D_800EA520)($t7)
/* 1E9E44 801DF584 3C19800F */  lui   $t9, %hi(D_800E9AA0) # $t9, 0x800f
/* 1E9E48 801DF588 27399AA0 */  addiu $t9, %lo(D_800E9AA0) # addiu $t9, $t9, -0x6560
/* 1E9E4C 801DF58C 000FC080 */  sll   $t8, $t7, 2
/* 1E9E50 801DF590 03191021 */  addu  $v0, $t8, $t9
/* 1E9E54 801DF594 8C480000 */  lw    $t0, ($v0)
/* 1E9E58 801DF598 25090001 */  addiu $t1, $t0, 1
/* 1E9E5C 801DF59C AC490000 */  sw    $t1, ($v0)
/* 1E9E60 801DF5A0 0C067656 */  jal   func_8019D958_ovl11
/* 1E9E64 801DF5A4 94640002 */   lhu   $a0, 2($v1)
/* 1E9E68 801DF5A8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DF5AC_ovl11:
/* 1E9E6C 801DF5AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E9E70 801DF5B0 03E00008 */  jr    $ra
/* 1E9E74 801DF5B4 00000000 */   nop   
.type func_801DF548_ovl11, @function
.size func_801DF548_ovl11, . - func_801DF548_ovl11
