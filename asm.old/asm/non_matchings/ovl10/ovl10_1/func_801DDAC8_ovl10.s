glabel func_801DDAC8_ovl10
/* 1CE838 801DDAC8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1CE83C 801DDACC AFBF0024 */  sw    $ra, 0x24($sp)
/* 1CE840 801DDAD0 AFA40028 */  sw    $a0, 0x28($sp)
/* 1CE844 801DDAD4 AFB20020 */  sw    $s2, 0x20($sp)
/* 1CE848 801DDAD8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1CE84C 801DDADC AFB00018 */  sw    $s0, 0x18($sp)
/* 1CE850 801DDAE0 0C006291 */  jal   random_soft_s32_range
/* 1CE854 801DDAE4 24040006 */   li    $a0, 6
/* 1CE858 801DDAE8 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1CE85C 801DDAEC 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1CE860 801DDAF0 8E230000 */  lw    $v1, ($s1)
/* 1CE864 801DDAF4 3C10800F */  lui   $s0, %hi(D_800E9AA0) # $s0, 0x800f
/* 1CE868 801DDAF8 3C12801F */  lui   $s2, %hi(D_801F42F0_ovl10) # $s2, 0x801f
/* 1CE86C 801DDAFC 8C6E0000 */  lw    $t6, ($v1)
/* 1CE870 801DDB00 265242F0 */  addiu $s2, %lo(D_801F42F0_ovl10) # addiu $s2, $s2, 0x42f0
/* 1CE874 801DDB04 26109AA0 */  addiu $s0, %lo(D_800E9AA0) # addiu $s0, $s0, -0x6560
/* 1CE878 801DDB08 0002C080 */  sll   $t8, $v0, 2
/* 1CE87C 801DDB0C 000E7880 */  sll   $t7, $t6, 2
/* 1CE880 801DDB10 020F2021 */  addu  $a0, $s0, $t7
/* 1CE884 801DDB14 0258C821 */  addu  $t9, $s2, $t8
/* 1CE888 801DDB18 8F250000 */  lw    $a1, ($t9)
/* 1CE88C 801DDB1C 8C880000 */  lw    $t0, ($a0)
/* 1CE890 801DDB20 5505000E */  bnel  $t0, $a1, .L801DDB5C_ovl10
/* 1CE894 801DDB24 AC850000 */   sw    $a1, ($a0)
.L801DDB28_ovl10:
/* 1CE898 801DDB28 0C006291 */  jal   random_soft_s32_range
/* 1CE89C 801DDB2C 24040006 */   li    $a0, 6
/* 1CE8A0 801DDB30 8E230000 */  lw    $v1, ($s1)
/* 1CE8A4 801DDB34 00025880 */  sll   $t3, $v0, 2
/* 1CE8A8 801DDB38 024B6021 */  addu  $t4, $s2, $t3
/* 1CE8AC 801DDB3C 8C690000 */  lw    $t1, ($v1)
/* 1CE8B0 801DDB40 8D850000 */  lw    $a1, ($t4)
/* 1CE8B4 801DDB44 00095080 */  sll   $t2, $t1, 2
/* 1CE8B8 801DDB48 020A2021 */  addu  $a0, $s0, $t2
/* 1CE8BC 801DDB4C 8C8D0000 */  lw    $t5, ($a0)
/* 1CE8C0 801DDB50 11A5FFF5 */  beq   $t5, $a1, .L801DDB28_ovl10
/* 1CE8C4 801DDB54 00000000 */   nop   
/* 1CE8C8 801DDB58 AC850000 */  sw    $a1, ($a0)
.L801DDB5C_ovl10:
/* 1CE8CC 801DDB5C 8C6E0000 */  lw    $t6, ($v1)
/* 1CE8D0 801DDB60 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1CE8D4 801DDB64 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1CE8D8 801DDB68 000E7880 */  sll   $t7, $t6, 2
/* 1CE8DC 801DDB6C 002F0821 */  addu  $at, $at, $t7
/* 1CE8E0 801DDB70 8FB00018 */  lw    $s0, 0x18($sp)
/* 1CE8E4 801DDB74 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1CE8E8 801DDB78 8FB20020 */  lw    $s2, 0x20($sp)
/* 1CE8EC 801DDB7C AC25DC50 */ sw $a1, %lo(gEntityVtableIndexArray)($at)
/* 1CE8F0 801DDB80 03E00008 */  jr    $ra
/* 1CE8F4 801DDB84 27BD0028 */   addiu $sp, $sp, 0x28
.type func_801DDAC8_ovl10, @function
.size func_801DDAC8_ovl10, . - func_801DDAC8_ovl10
