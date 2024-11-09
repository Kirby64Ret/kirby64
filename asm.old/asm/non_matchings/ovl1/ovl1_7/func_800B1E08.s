glabel func_800B1E08
/* 05A058 800B1E08 3C0F800E */  lui   $t7, %hi(D_800DD8D0) # $t7, 0x800e
/* 05A05C 800B1E0C 25EFD8D0 */  addiu $t7, %lo(D_800DD8D0) # addiu $t7, $t7, -0x2730
/* 05A060 800B1E10 00067080 */  sll   $t6, $a2, 2
/* 05A064 800B1E14 01CF1821 */  addu  $v1, $t6, $t7
/* 05A068 800B1E18 8C620000 */  lw    $v0, ($v1)
/* 05A06C 800B1E1C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 05A070 800B1E20 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05A074 800B1E24 00443824 */  and   $a3, $v0, $a0
/* 05A078 800B1E28 AFA50034 */  sw    $a1, 0x34($sp)
/* 05A07C 800B1E2C 10E00011 */  beqz  $a3, .L800B1E74_ovl1
/* 05A080 800B1E30 00004025 */   move  $t0, $zero
/* 05A084 800B1E34 00042A00 */  sll   $a1, $a0, 8
/* 05A088 800B1E38 0045C024 */  and   $t8, $v0, $a1
/* 05A08C 800B1E3C 1700000D */  bnez  $t8, .L800B1E74_ovl1
/* 05A090 800B1E40 8FB90034 */   lw    $t9, 0x34($sp)
/* 05A094 800B1E44 13200007 */  beqz  $t9, .L800B1E64_ovl1
/* 05A098 800B1E48 03202025 */   move  $a0, $t9
/* 05A09C 800B1E4C AFA30028 */  sw    $v1, 0x28($sp)
/* 05A0A0 800B1E50 0C002DF0 */  jal   func_8000B7C0_ovl1
/* 05A0A4 800B1E54 AFA5001C */   sw    $a1, 0x1c($sp)
/* 05A0A8 800B1E58 8FA30028 */  lw    $v1, 0x28($sp)
/* 05A0AC 800B1E5C 8FA5001C */  lw    $a1, 0x1c($sp)
/* 05A0B0 800B1E60 8C620000 */  lw    $v0, ($v1)
.L800B1E64_ovl1:
/* 05A0B4 800B1E64 00454825 */  or    $t1, $v0, $a1
/* 05A0B8 800B1E68 AC690000 */  sw    $t1, ($v1)
/* 05A0BC 800B1E6C 10000011 */  b     .L800B1EB4_ovl1
/* 05A0C0 800B1E70 24080001 */   li    $t0, 1
.L800B1E74_ovl1:
/* 05A0C4 800B1E74 14E0000F */  bnez  $a3, .L800B1EB4_ovl1
/* 05A0C8 800B1E78 00042A00 */   sll   $a1, $a0, 8
/* 05A0CC 800B1E7C 00455024 */  and   $t2, $v0, $a1
/* 05A0D0 800B1E80 1140000C */  beqz  $t2, .L800B1EB4_ovl1
/* 05A0D4 800B1E84 8FAB0034 */   lw    $t3, 0x34($sp)
/* 05A0D8 800B1E88 11600007 */  beqz  $t3, .L800B1EA8_ovl1
/* 05A0DC 800B1E8C 01602025 */   move  $a0, $t3
/* 05A0E0 800B1E90 AFA30028 */  sw    $v1, 0x28($sp)
/* 05A0E4 800B1E94 0C002DF6 */  jal   func_8000B7D8_ovl1
/* 05A0E8 800B1E98 AFA5001C */   sw    $a1, 0x1c($sp)
/* 05A0EC 800B1E9C 8FA30028 */  lw    $v1, 0x28($sp)
/* 05A0F0 800B1EA0 8FA5001C */  lw    $a1, 0x1c($sp)
/* 05A0F4 800B1EA4 8C620000 */  lw    $v0, ($v1)
.L800B1EA8_ovl1:
/* 05A0F8 800B1EA8 00456026 */  xor   $t4, $v0, $a1
/* 05A0FC 800B1EAC AC6C0000 */  sw    $t4, ($v1)
/* 05A100 800B1EB0 24080002 */  li    $t0, 2
.L800B1EB4_ovl1:
/* 05A104 800B1EB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 05A108 800B1EB8 27BD0030 */  addiu $sp, $sp, 0x30
/* 05A10C 800B1EBC 01001025 */  move  $v0, $t0
/* 05A110 800B1EC0 03E00008 */  jr    $ra
/* 05A114 800B1EC4 00000000 */   nop   
.type func_800B1E08, @function
.size func_800B1E08, . - func_800B1E08
