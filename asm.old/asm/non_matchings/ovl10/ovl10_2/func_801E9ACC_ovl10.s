glabel func_801E9ACC_ovl10
/* 1DA83C 801E9ACC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DA840 801E9AD0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DA844 801E9AD4 0C006291 */  jal   random_soft_s32_range
/* 1DA848 801E9AD8 24040003 */   li    $a0, 3
/* 1DA84C 801E9ADC 24010002 */  li    $at, 2
/* 1DA850 801E9AE0 14410003 */  bne   $v0, $at, .L801E9AF0_ovl10
/* 1DA854 801E9AE4 3C058005 */   lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 1DA858 801E9AE8 10000002 */  b     .L801E9AF4_ovl10
/* 1DA85C 801E9AEC 24020001 */   li    $v0, 1
.L801E9AF0_ovl10:
/* 1DA860 801E9AF0 00001025 */  move  $v0, $zero
.L801E9AF4_ovl10:
/* 1DA864 801E9AF4 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 1DA868 801E9AF8 3C0E800F */  lui   $t6, %hi(D_800E9560) # $t6, 0x800f
/* 1DA86C 801E9AFC 25CE9560 */  addiu $t6, %lo(D_800E9560) # addiu $t6, $t6, -0x6aa0
/* 1DA870 801E9B00 8CA40000 */  lw    $a0, ($a1)
/* 1DA874 801E9B04 3C07800F */  lui   $a3, %hi(D_800E9FE0) # $a3, 0x800f
/* 1DA878 801E9B08 24E79FE0 */  addiu $a3, %lo(D_800E9FE0) # addiu $a3, $a3, -0x6020
/* 1DA87C 801E9B0C 00042080 */  sll   $a0, $a0, 2
/* 1DA880 801E9B10 008E3021 */  addu  $a2, $a0, $t6
/* 1DA884 801E9B14 8CCF0000 */  lw    $t7, ($a2)
/* 1DA888 801E9B18 00E4C021 */  addu  $t8, $a3, $a0
/* 1DA88C 801E9B1C 144F000A */  bne   $v0, $t7, .L801E9B48_ovl10
/* 1DA890 801E9B20 00000000 */   nop   
/* 1DA894 801E9B24 8F190000 */  lw    $t9, ($t8)
/* 1DA898 801E9B28 24430001 */  addiu $v1, $v0, 1
/* 1DA89C 801E9B2C 28610002 */  slti  $at, $v1, 2
/* 1DA8A0 801E9B30 14590005 */  bne   $v0, $t9, .L801E9B48_ovl10
/* 1DA8A4 801E9B34 00000000 */   nop   
/* 1DA8A8 801E9B38 14200003 */  bnez  $at, .L801E9B48_ovl10
/* 1DA8AC 801E9B3C 00601025 */   move  $v0, $v1
/* 1DA8B0 801E9B40 10000001 */  b     .L801E9B48_ovl10
/* 1DA8B4 801E9B44 00001025 */   move  $v0, $zero
.L801E9B48_ovl10:
/* 1DA8B8 801E9B48 3C07800F */  lui   $a3, %hi(D_800E9FE0) # $a3, 0x800f
/* 1DA8BC 801E9B4C 24E79FE0 */  addiu $a3, %lo(D_800E9FE0) # addiu $a3, $a3, -0x6020
/* 1DA8C0 801E9B50 00E44021 */  addu  $t0, $a3, $a0
/* 1DA8C4 801E9B54 8D090000 */  lw    $t1, ($t0)
/* 1DA8C8 801E9B58 ACC90000 */  sw    $t1, ($a2)
/* 1DA8CC 801E9B5C 8CAA0000 */  lw    $t2, ($a1)
/* 1DA8D0 801E9B60 000A5880 */  sll   $t3, $t2, 2
/* 1DA8D4 801E9B64 00EB6021 */  addu  $t4, $a3, $t3
/* 1DA8D8 801E9B68 AD820000 */  sw    $v0, ($t4)
/* 1DA8DC 801E9B6C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DA8E0 801E9B70 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DA8E4 801E9B74 03E00008 */  jr    $ra
/* 1DA8E8 801E9B78 00000000 */   nop   
.type func_801E9ACC_ovl10, @function
.size func_801E9ACC_ovl10, . - func_801E9ACC_ovl10
