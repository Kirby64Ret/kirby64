glabel func_8021B848_ovl9
/* 1C9898 8021B848 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1C989C 8021B84C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1C98A0 8021B850 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1C98A4 8021B854 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1C98A8 8021B858 8DC20000 */  lw    $v0, ($t6)
/* 1C98AC 8021B85C 3C0F800F */ lui $t7, %hi(D_800E9E20)
/* 1C98B0 8021B860 3C18800F */  lui   $t8, %hi(D_800E9720) # $t8, 0x800f
/* 1C98B4 8021B864 00021080 */  sll   $v0, $v0, 2
/* 1C98B8 8021B868 01E27821 */  addu  $t7, $t7, $v0
/* 1C98BC 8021B86C 8DEF9E20 */ lw $t7, %lo(D_800E9E20)($t7)
/* 1C98C0 8021B870 27189720 */  addiu $t8, %lo(D_800E9720) # addiu $t8, $t8, -0x68e0
/* 1C98C4 8021B874 00802825 */  move  $a1, $a0
/* 1C98C8 8021B878 11E00009 */  beqz  $t7, .L8021B8A0_ovl9
/* 1C98CC 8021B87C 00581821 */   addu  $v1, $v0, $t8
/* 1C98D0 8021B880 8C640000 */  lw    $a0, ($v1)
/* 1C98D4 8021B884 14800005 */  bnez  $a0, .L8021B89C_ovl9
/* 1C98D8 8021B888 2499FFFF */   addiu $t9, $a0, -1
/* 1C98DC 8021B88C 0C086E2C */  jal   func_8021B8B0_ovl9
/* 1C98E0 8021B890 00A02025 */   move  $a0, $a1
/* 1C98E4 8021B894 10000003 */  b     .L8021B8A4_ovl9
/* 1C98E8 8021B898 8FBF0014 */   lw    $ra, 0x14($sp)
.L8021B89C_ovl9:
/* 1C98EC 8021B89C AC790000 */  sw    $t9, ($v1)
.L8021B8A0_ovl9:
/* 1C98F0 8021B8A0 8FBF0014 */  lw    $ra, 0x14($sp)
.L8021B8A4_ovl9:
/* 1C98F4 8021B8A4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1C98F8 8021B8A8 03E00008 */  jr    $ra
/* 1C98FC 8021B8AC 00000000 */   nop   
.type func_8021B848_ovl9, @function
.size func_8021B848_ovl9, . - func_8021B848_ovl9
