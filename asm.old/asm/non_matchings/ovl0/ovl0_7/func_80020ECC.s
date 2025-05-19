glabel func_80020ECC
/* 021ACC 80020ECC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 021AD0 80020ED0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 021AD4 80020ED4 3C048005 */  lui   $a0, %hi(gThreadInitializedMQ) # $a0, 0x8005
/* 021AD8 80020ED8 24848A08 */  addiu $a0, %lo(gThreadInitializedMQ) # addiu $a0, $a0, -0x75f8
/* 021ADC 80020EDC 00002825 */  move  $a1, $zero
/* 021AE0 80020EE0 0C00B540 */  jal   osRecvMesg
/* 021AE4 80020EE4 00003025 */   move  $a2, $zero
/* 021AE8 80020EE8 240E0001 */  li    $t6, 1
/* 021AEC 80020EEC 3C018004 */  lui   $at, %hi(D_8003F330) # $at, 0x8004
/* 021AF0 80020EF0 3C048005 */  lui   $a0, %hi(gThreadInitializedMQ) # $a0, 0x8005
/* 021AF4 80020EF4 AC2EF330 */  sw    $t6, %lo(D_8003F330)($at)
/* 021AF8 80020EF8 24848A08 */  addiu $a0, %lo(gThreadInitializedMQ) # addiu $a0, $a0, -0x75f8
/* 021AFC 80020EFC 00002825 */  move  $a1, $zero
/* 021B00 80020F00 0C00B540 */  jal   osRecvMesg
/* 021B04 80020F04 24060001 */   li    $a2, 1
/* 021B08 80020F08 8FBF0014 */  lw    $ra, 0x14($sp)
/* 021B0C 80020F0C 27BD0018 */  addiu $sp, $sp, 0x18
/* 021B10 80020F10 03E00008 */  jr    $ra
/* 021B14 80020F14 00000000 */   nop   
.type func_80020ECC, @function

/* 021B18 80020F18 00000000 */  nop   
/* 021B1C 80020F1C 00000000 */  nop   
/* 021B20 80020F20 00000000 */  nop   
/* 021B24 80020F24 00000000 */  nop   
/* 021B28 80020F28 00000000 */  nop   
/* 021B2C 80020F2C 00000000 */  nop   
/* 021B30 80020F30 00000000 */  nop   
/* 021B34 80020F34 00000000 */  nop   
/* 021B38 80020F38 00000000 */  nop   
.type func_80020ECC, @function
.size func_80020ECC, . - func_80020ECC
