glabel func_800BD7FC
/* 065A4C 800BD7FC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 065A50 800BD800 AFB1001C */  sw    $s1, 0x1c($sp)
/* 065A54 800BD804 3C11800D */  lui   $s1, %hi(D_800D6EBC) # $s1, 0x800d
/* 065A58 800BD808 26316EBC */  addiu $s1, %lo(D_800D6EBC) # addiu $s1, $s1, 0x6ebc
/* 065A5C 800BD80C 8E2E0000 */  lw    $t6, ($s1)
/* 065A60 800BD810 AFBF0024 */  sw    $ra, 0x24($sp)
/* 065A64 800BD814 AFB20020 */  sw    $s2, 0x20($sp)
/* 065A68 800BD818 25CFFFFF */  addiu $t7, $t6, -1
/* 065A6C 800BD81C AFB00018 */  sw    $s0, 0x18($sp)
/* 065A70 800BD820 1DE0003C */  bgtz  $t7, .L800BD914_ovl1
/* 065A74 800BD824 AE2F0000 */   sw    $t7, ($s1)
/* 065A78 800BD828 3C12800F */  lui   $s2, %hi(D_800F4D10) # $s2, 0x800f
/* 065A7C 800BD82C 26524D10 */  addiu $s2, %lo(D_800F4D10) # addiu $s2, $s2, 0x4d10
/* 065A80 800BD830 8E430000 */  lw    $v1, ($s2)
/* 065A84 800BD834 3C05800D */  lui   $a1, %hi(gKirbyStars) # $a1, 0x800d
/* 065A88 800BD838 AE200000 */  sw    $zero, ($s1)
/* 065A8C 800BD83C 1060001A */  beqz  $v1, .L800BD8A8_ovl1
/* 065A90 800BD840 24A56E60 */   addiu $a1, %lo(gKirbyStars) # addiu $a1, $a1, 0x6e60
.L800BD844_ovl1:
/* 065A94 800BD844 24620001 */  addiu $v0, $v1, 1
/* 065A98 800BD848 0002C880 */  sll   $t9, $v0, 2
/* 065A9C 800BD84C 3C08800D */ lui $t0, %hi(D_800D55D0)
/* 065AA0 800BD850 01194021 */  addu  $t0, $t0, $t9
/* 065AA4 800BD854 AE420000 */  sw    $v0, ($s2)
/* 065AA8 800BD858 8D0455D0 */ lw $a0, %lo(D_800D55D0)($t0)
/* 065AAC 800BD85C 04810004 */  bgez  $a0, .L800BD870_ovl1
/* 065AB0 800BD860 AE240000 */   sw    $a0, ($s1)
/* 065AB4 800BD864 AE400000 */  sw    $zero, ($s2)
/* 065AB8 800BD868 1000002A */  b     .L800BD914_ovl1
/* 065ABC 800BD86C AE200000 */   sw    $zero, ($s1)
.L800BD870_ovl1:
/* 065AC0 800BD870 2881000A */  slti  $at, $a0, 0xa
/* 065AC4 800BD874 14200002 */  bnez  $at, .L800BD880_ovl1
/* 065AC8 800BD878 00008825 */   move  $s1, $zero
/* 065ACC 800BD87C 24110001 */  li    $s1, 1
.L800BD880_ovl1:
/* 065AD0 800BD880 00008025 */  move  $s0, $zero
/* 065AD4 800BD884 2412001E */  li    $s2, 30
/* 065AD8 800BD888 02002025 */  move  $a0, $s0
.L800BD88C_ovl1:
/* 065ADC 800BD88C 0C02F4DD */  jal   draw_star_segments
/* 065AE0 800BD890 02202825 */   move  $a1, $s1
/* 065AE4 800BD894 26100001 */  addiu $s0, $s0, 1
/* 065AE8 800BD898 5612FFFC */  bnel  $s0, $s2, .L800BD88C_ovl1
/* 065AEC 800BD89C 02002025 */   move  $a0, $s0
/* 065AF0 800BD8A0 1000001D */  b     .L800BD918_ovl1
/* 065AF4 800BD8A4 8FBF0024 */   lw    $ra, 0x24($sp)
.L800BD8A8_ovl1:
/* 065AF8 800BD8A8 3C10800D */  lui   $s0, %hi(D_800D6E98) # $s0, 0x800d
/* 065AFC 800BD8AC 26106E98 */  addiu $s0, %lo(D_800D6E98) # addiu $s0, $s0, 0x6e98
/* 065B00 800BD8B0 8E030000 */  lw    $v1, ($s0)
/* 065B04 800BD8B4 8CA20000 */  lw    $v0, ($a1)
/* 065B08 800BD8B8 24690001 */  addiu $t1, $v1, 1
/* 065B0C 800BD8BC 10430015 */  beq   $v0, $v1, .L800BD914_ovl1
/* 065B10 800BD8C0 2921001E */   slti  $at, $t1, 0x1e
/* 065B14 800BD8C4 1420000B */  bnez  $at, .L800BD8F4_ovl1
/* 065B18 800BD8C8 AE090000 */   sw    $t1, ($s0)
/* 065B1C 800BD8CC 244BFFE2 */  addiu $t3, $v0, -0x1e
/* 065B20 800BD8D0 AE400000 */  sw    $zero, ($s2)
/* 065B24 800BD8D4 ACAB0000 */  sw    $t3, ($a1)
/* 065B28 800BD8D8 AE000000 */  sw    $zero, ($s0)
/* 065B2C 800BD8DC 0C029D9E */  jal   play_sound
/* 065B30 800BD8E0 24040001 */   li    $a0, 1
/* 065B34 800BD8E4 0C02F096 */  jal   change_kirby_lives
/* 065B38 800BD8E8 24040001 */   li    $a0, 1
/* 065B3C 800BD8EC 1000FFD5 */  b     .L800BD844_ovl1
/* 065B40 800BD8F0 8E430000 */   lw    $v1, ($s2)
.L800BD8F4_ovl1:
/* 065B44 800BD8F4 240C0003 */  li    $t4, 3
/* 065B48 800BD8F8 AE2C0000 */  sw    $t4, ($s1)
/* 065B4C 800BD8FC 0C029D9E */  jal   play_sound
/* 065B50 800BD900 24040117 */   li    $a0, 279
/* 065B54 800BD904 8E040000 */  lw    $a0, ($s0)
/* 065B58 800BD908 24050001 */  li    $a1, 1
/* 065B5C 800BD90C 0C02F4DD */  jal   draw_star_segments
/* 065B60 800BD910 2484FFFF */   addiu $a0, $a0, -1
.L800BD914_ovl1:
/* 065B64 800BD914 8FBF0024 */  lw    $ra, 0x24($sp)
.L800BD918_ovl1:
/* 065B68 800BD918 8FB00018 */  lw    $s0, 0x18($sp)
/* 065B6C 800BD91C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 065B70 800BD920 8FB20020 */  lw    $s2, 0x20($sp)
/* 065B74 800BD924 03E00008 */  jr    $ra
/* 065B78 800BD928 27BD0028 */   addiu $sp, $sp, 0x28
.type func_800BD7FC, @function
.size func_800BD7FC, . - func_800BD7FC
