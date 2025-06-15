glabel func_801E6AB4_ovl10
/* 1D7824 801E6AB4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1D7828 801E6AB8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1D782C 801E6ABC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D7830 801E6AC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D7834 801E6AC4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D7838 801E6AC8 8C620000 */  lw    $v0, ($v1)
/* 1D783C 801E6ACC 3C01800E */ lui $at, %hi(D_800E3750)
/* 1D7840 801E6AD0 44801000 */  mtc1  $zero, $f2
/* 1D7844 801E6AD4 00021080 */  sll   $v0, $v0, 2
/* 1D7848 801E6AD8 00220821 */  addu  $at, $at, $v0
/* 1D784C 801E6ADC C4243750 */ lwc1 $f4, %lo(D_800E3750)($at)
/* 1D7850 801E6AE0 3C01800E */ lui $at, %hi(D_800E3210)
/* 1D7854 801E6AE4 00220821 */  addu  $at, $at, $v0
/* 1D7858 801E6AE8 46041032 */  c.eq.s $f2, $f4
/* 1D785C 801E6AEC 3C0F800F */ lui $t7, %hi(D_800E9E20)
/* 1D7860 801E6AF0 24180001 */  li    $t8, 1
/* 1D7864 801E6AF4 45030015 */  bc1tl .L801E6B4C_ovl10
/* 1D7868 801E6AF8 01E27821 */   addu  $t7, $t7, $v0
/* 1D786C 801E6AFC C4203210 */ lwc1 $f0, %lo(D_800E3210)($at)
/* 1D7870 801E6B00 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 1D7874 801E6B04 44813000 */  mtc1  $at, $f6
/* 1D7878 801E6B08 4602003C */  c.lt.s $f0, $f2
/* 1D787C 801E6B0C 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D7880 801E6B10 00220821 */  addu  $at, $at, $v0
/* 1D7884 801E6B14 240E0001 */  li    $t6, 1
/* 1D7888 801E6B18 45020004 */  bc1fl .L801E6B2C_ovl10
/* 1D788C 801E6B1C 46000086 */   mov.s $f2, $f0
/* 1D7890 801E6B20 10000002 */  b     .L801E6B2C_ovl10
/* 1D7894 801E6B24 46000087 */   neg.s $f2, $f0
/* 1D7898 801E6B28 46000086 */  mov.s $f2, $f0
.L801E6B2C_ovl10:
/* 1D789C 801E6B2C 4606103C */  c.lt.s $f2, $f6
/* 1D78A0 801E6B30 00000000 */  nop   
/* 1D78A4 801E6B34 45020005 */  bc1fl .L801E6B4C_ovl10
/* 1D78A8 801E6B38 01E27821 */   addu  $t7, $t7, $v0
/* 1D78AC 801E6B3C AC2E9E20 */ sw $t6, %lo(D_800E9E20)($at)
/* 1D78B0 801E6B40 8C620000 */  lw    $v0, ($v1)
/* 1D78B4 801E6B44 00021080 */  sll   $v0, $v0, 2
/* 1D78B8 801E6B48 01E27821 */  addu  $t7, $t7, $v0
.L801E6B4C_ovl10:
/* 1D78BC 801E6B4C 8DEF9E20 */ lw $t7, %lo(D_800E9E20)($t7)
/* 1D78C0 801E6B50 24060002 */  li    $a2, 2
/* 1D78C4 801E6B54 3C01800F */ lui $at, %hi(D_800E8920)
/* 1D78C8 801E6B58 14CF000F */  bne   $a2, $t7, .L801E6B98_ovl10
/* 1D78CC 801E6B5C 00220821 */   addu  $at, $at, $v0
/* 1D78D0 801E6B60 AC388920 */ sw $t8, %lo(D_800E8920)($at)
/* 1D78D4 801E6B64 8C790000 */  lw    $t9, ($v1)
/* 1D78D8 801E6B68 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D78DC 801E6B6C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D78E0 801E6B70 00194080 */  sll   $t0, $t9, 2
/* 1D78E4 801E6B74 00280821 */  addu  $at, $at, $t0
/* 1D78E8 801E6B78 AC26DC50 */ sw $a2, %lo(gEntityVtableIndexArray)($at)
/* 1D78EC 801E6B7C 8C690000 */  lw    $t1, ($v1)
/* 1D78F0 801E6B80 3C05801E */  lui   $a1, %hi(D_801E63FC) # $a1, 0x801e
/* 1D78F4 801E6B84 24A563FC */  addiu $a1, %lo(D_801E63FC) # addiu $a1, $a1, 0x63fc
/* 1D78F8 801E6B88 00095080 */  sll   $t2, $t1, 2
/* 1D78FC 801E6B8C 008A2021 */  addu  $a0, $a0, $t2
/* 1D7900 801E6B90 0C02C7B2 */  jal   assign_new_process_entry
/* 1D7904 801E6B94 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E6B98_ovl10:
/* 1D7908 801E6B98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D790C 801E6B9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D7910 801E6BA0 03E00008 */  jr    $ra
/* 1D7914 801E6BA4 00000000 */   nop   
.type func_801E6AB4_ovl10, @function
.size func_801E6AB4_ovl10, . - func_801E6AB4_ovl10
