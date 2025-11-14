glabel func_80021CB4
/* 0228B4 80021CB4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0228B8 80021CB8 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0228BC 80021CBC AFA40040 */  sw    $a0, 0x40($sp)
/* 0228C0 80021CC0 AFA50044 */  sw    $a1, 0x44($sp)
/* 0228C4 80021CC4 AFA60048 */  sw    $a2, 0x48($sp)
/* 0228C8 80021CC8 0C002DA2 */  jal   func_8000B688
/* 0228CC 80021CCC 2404FFFE */   li    $a0, -2
/* 0228D0 80021CD0 10400003 */  beqz  $v0, .L80021CE0_ovl0
/* 0228D4 80021CD4 2404FFFE */   li    $a0, -2
/* 0228D8 80021CD8 10000012 */  b     .L80021D24_ovl0
/* 0228DC 80021CDC 00001025 */   move  $v0, $zero
.L80021CE0_ovl0:
/* 0228E0 80021CE0 8FAF0048 */  lw    $t7, 0x48($sp)
/* 0228E4 80021CE4 3C0E8002 */  lui   $t6, %hi(D_80021764) # $t6, 0x8002
/* 0228E8 80021CE8 25CE1764 */  addiu $t6, %lo(D_80021764) # addiu $t6, $t6, 0x1764
/* 0228EC 80021CEC 3C058001 */  lui   $a1, %hi(D_8000B6B4) # $a1, 0x8001
/* 0228F0 80021CF0 24A5B6B4 */  addiu $a1, %lo(D_8000B6B4) # addiu $a1, $a1, -0x494c
/* 0228F4 80021CF4 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0228F8 80021CF8 8FA60040 */  lw    $a2, 0x40($sp)
/* 0228FC 80021CFC 8FA70044 */  lw    $a3, 0x44($sp)
/* 022900 80021D00 AFA00018 */  sw    $zero, 0x18($sp)
/* 022904 80021D04 AFA0001C */  sw    $zero, 0x1c($sp)
/* 022908 80021D08 AFA00020 */  sw    $zero, 0x20($sp)
/* 02290C 80021D0C AFA00024 */  sw    $zero, 0x24($sp)
/* 022910 80021D10 AFA00028 */  sw    $zero, 0x28($sp)
/* 022914 80021D14 AFA0002C */  sw    $zero, 0x2c($sp)
/* 022918 80021D18 AFA00030 */  sw    $zero, 0x30($sp)
/* 02291C 80021D1C 0C002F4F */  jal   func_8000BD3C
/* 022920 80021D20 AFAF0014 */   sw    $t7, 0x14($sp)
.L80021D24_ovl0:
/* 022924 80021D24 8FBF003C */  lw    $ra, 0x3c($sp)
/* 022928 80021D28 27BD0040 */  addiu $sp, $sp, 0x40
/* 02292C 80021D2C 03E00008 */  jr    $ra
/* 022930 80021D30 00000000 */   nop   
.type func_80021CB4, @function
.size func_80021CB4, . - func_80021CB4
