glabel func_800AB040
/* 053290 800AB040 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 053294 800AB044 248EFFF6 */  addiu $t6, $a0, -0xa
/* 053298 800AB048 AFB00020 */  sw    $s0, 0x20($sp)
/* 05329C 800AB04C 000E7843 */  sra   $t7, $t6, 1
/* 0532A0 800AB050 000FC080 */  sll   $t8, $t7, 2
/* 0532A4 800AB054 3C10800D */  lui   $s0, 0x800d
/* 0532A8 800AB058 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0532AC 800AB05C 02188021 */  addu  $s0, $s0, $t8
/* 0532B0 800AB060 3C01800D */  lui   $at, %hi(D_800D5DF8) # $at, 0x800d
/* 0532B4 800AB064 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0532B8 800AB068 8E1079D8 */  lw    $s0, 0x79d8($s0)
/* 0532BC 800AB06C C4345DF8 */  lwc1  $f20, %lo(D_800D5DF8)($at)
/* 0532C0 800AB070 C6040074 */  lwc1  $f4, 0x74($s0)
.L800AB074_ovl1:
/* 0532C4 800AB074 4604A032 */  c.eq.s $f20, $f4
/* 0532C8 800AB078 00000000 */  nop   
/* 0532CC 800AB07C 45030006 */  bc1tl .L800AB098_ovl1
/* 0532D0 800AB080 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0532D4 800AB084 0C002DAF */  jal   finish_current_thread
/* 0532D8 800AB088 24040001 */   li    $a0, 1
/* 0532DC 800AB08C 1000FFF9 */  b     .L800AB074_ovl1
/* 0532E0 800AB090 C6040074 */   lwc1  $f4, 0x74($s0)
/* 0532E4 800AB094 8FBF0024 */  lw    $ra, 0x24($sp)
.L800AB098_ovl1:
/* 0532E8 800AB098 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0532EC 800AB09C 8FB00020 */  lw    $s0, 0x20($sp)
/* 0532F0 800AB0A0 03E00008 */  jr    $ra
/* 0532F4 800AB0A4 27BD0028 */   addiu $sp, $sp, 0x28
.type func_800AB040, @function
.size func_800AB040, . - func_800AB040
