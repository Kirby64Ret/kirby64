glabel func_800AEFFC
/* 05724C 800AEFFC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 057250 800AF000 AFB40028 */  sw    $s4, 0x28($sp)
/* 057254 800AF004 AFB20020 */  sw    $s2, 0x20($sp)
/* 057258 800AF008 AFB1001C */  sw    $s1, 0x1c($sp)
/* 05725C 800AF00C AFB30024 */  sw    $s3, 0x24($sp)
/* 057260 800AF010 AFB00018 */  sw    $s0, 0x18($sp)
/* 057264 800AF014 3C11800E */  lui   $s1, %hi(D_800DD8D0) # $s1, 0x800e
/* 057268 800AF018 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 05726C 800AF01C 3C143FFF */  lui   $s4, (0x3FFFFFFF >> 16) # lui $s4, 0x3fff
/* 057270 800AF020 3090FFFF */  andi  $s0, $a0, 0xffff
/* 057274 800AF024 AFBF002C */  sw    $ra, 0x2c($sp)
/* 057278 800AF028 AFA40030 */  sw    $a0, 0x30($sp)
/* 05727C 800AF02C 3694FFFF */  ori   $s4, (0x3FFFFFFF & 0xFFFF) # ori $s4, $s4, 0xffff
/* 057280 800AF030 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 057284 800AF034 2631D8D0 */  addiu $s1, %lo(D_800DD8D0) # addiu $s1, $s1, -0x2730
/* 057288 800AF038 3C13C000 */  lui   $s3, 0xc000
/* 05728C 800AF03C 8E4E0000 */  lw    $t6, ($s2)
.L800AF040_ovl1:
/* 057290 800AF040 8DCF0000 */  lw    $t7, ($t6)
/* 057294 800AF044 000FC080 */  sll   $t8, $t7, 2
/* 057298 800AF048 02381021 */  addu  $v0, $s1, $t8
/* 05729C 800AF04C 8C430000 */  lw    $v1, ($v0)
/* 0572A0 800AF050 0073C824 */  and   $t9, $v1, $s3
/* 0572A4 800AF054 13200005 */  beqz  $t9, .L800AF06C_ovl1
/* 0572A8 800AF058 00744024 */   and   $t0, $v1, $s4
/* 0572AC 800AF05C 2610FFFF */  addiu $s0, $s0, -1
/* 0572B0 800AF060 3210FFFF */  andi  $s0, $s0, 0xffff
/* 0572B4 800AF064 12000005 */  beqz  $s0, .L800AF07C_ovl1
/* 0572B8 800AF068 AC480000 */   sw    $t0, ($v0)
.L800AF06C_ovl1:
/* 0572BC 800AF06C 0C002DAF */  jal   finish_current_thread
/* 0572C0 800AF070 24040001 */   li    $a0, 1
/* 0572C4 800AF074 1000FFF2 */  b     .L800AF040_ovl1
/* 0572C8 800AF078 8E4E0000 */   lw    $t6, ($s2)
.L800AF07C_ovl1:
/* 0572CC 800AF07C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0572D0 800AF080 8FB00018 */  lw    $s0, 0x18($sp)
/* 0572D4 800AF084 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0572D8 800AF088 8FB20020 */  lw    $s2, 0x20($sp)
/* 0572DC 800AF08C 8FB30024 */  lw    $s3, 0x24($sp)
/* 0572E0 800AF090 8FB40028 */  lw    $s4, 0x28($sp)
/* 0572E4 800AF094 03E00008 */  jr    $ra
/* 0572E8 800AF098 27BD0030 */   addiu $sp, $sp, 0x30
.type func_800AEFFC, @function
.size func_800AEFFC, . - func_800AEFFC
