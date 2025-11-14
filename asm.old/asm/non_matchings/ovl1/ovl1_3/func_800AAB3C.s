glabel func_800AAB3C
/* 052D8C 800AAB3C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 052D90 800AAB40 44876000 */  mtc1  $a3, $f12
/* 052D94 800AAB44 C7A40040 */  lwc1  $f4, 0x40($sp)
/* 052D98 800AAB48 AFBF002C */  sw    $ra, 0x2c($sp)
/* 052D9C 800AAB4C 44076000 */  mfc1  $a3, $f12
/* 052DA0 800AAB50 AFB00028 */  sw    $s0, 0x28($sp)
/* 052DA4 800AAB54 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 052DA8 800AAB58 AFA40030 */  sw    $a0, 0x30($sp)
/* 052DAC 800AAB5C 0C02AA5B */  jal   func_800AA96C
/* 052DB0 800AAB60 E7A40010 */   swc1  $f4, 0x10($sp)
/* 052DB4 800AAB64 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 052DB8 800AAB68 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 052DBC 800AAB6C 8FA80030 */  lw    $t0, 0x30($sp)
/* 052DC0 800AAB70 3C19800E */  lui   $t9, 0x800e
/* 052DC4 800AAB74 8DCF0000 */  lw    $t7, ($t6)
/* 052DC8 800AAB78 8D090000 */  lw    $t1, ($t0)
/* 052DCC 800AAB7C 3C01800D */  lui   $at, %hi(D_800D5DE8) # $at, 0x800d
/* 052DD0 800AAB80 000FC080 */  sll   $t8, $t7, 2
/* 052DD4 800AAB84 0338C821 */  addu  $t9, $t9, $t8
/* 052DD8 800AAB88 8F39FBD0 */  lw    $t9, -0x430($t9)
/* 052DDC 800AAB8C 00095080 */  sll   $t2, $t1, 2
/* 052DE0 800AAB90 C4345DE8 */  lwc1  $f20, %lo(D_800D5DE8)($at)
/* 052DE4 800AAB94 032A5821 */  addu  $t3, $t9, $t2
/* 052DE8 800AAB98 8D700000 */  lw    $s0, ($t3)
/* 052DEC 800AAB9C C6060074 */  lwc1  $f6, 0x74($s0)
.L800AABA0_ovl1:
/* 052DF0 800AABA0 4606A032 */  c.eq.s $f20, $f6
/* 052DF4 800AABA4 00000000 */  nop   
/* 052DF8 800AABA8 45030006 */  bc1tl .L800AABC4_ovl1
/* 052DFC 800AABAC 8FBF002C */   lw    $ra, 0x2c($sp)
/* 052E00 800AABB0 0C002DAF */  jal   finish_current_thread
/* 052E04 800AABB4 24040001 */   li    $a0, 1
/* 052E08 800AABB8 1000FFF9 */  b     .L800AABA0_ovl1
/* 052E0C 800AABBC C6060074 */   lwc1  $f6, 0x74($s0)
/* 052E10 800AABC0 8FBF002C */  lw    $ra, 0x2c($sp)
.L800AABC4_ovl1:
/* 052E14 800AABC4 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 052E18 800AABC8 8FB00028 */  lw    $s0, 0x28($sp)
/* 052E1C 800AABCC 03E00008 */  jr    $ra
/* 052E20 800AABD0 27BD0030 */   addiu $sp, $sp, 0x30
.type func_800AAB3C, @function
.size func_800AAB3C, . - func_800AAB3C
