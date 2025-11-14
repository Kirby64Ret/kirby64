glabel func_800A9A2C
/* 051C7C 800A9A2C 00047080 */  sll   $t6, $a0, 2
/* 051C80 800A9A30 3C02800E */  lui   $v0, 0x800e
/* 051C84 800A9A34 004E1021 */  addu  $v0, $v0, $t6
/* 051C88 800A9A38 8C42F4D0 */  lw    $v0, -0xb30($v0)
/* 051C8C 800A9A3C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 051C90 800A9A40 AFBF0014 */  sw    $ra, 0x14($sp)
/* 051C94 800A9A44 8C43001C */  lw    $v1, 0x1c($v0)
/* 051C98 800A9A48 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 051C9C 800A9A4C 14600009 */  bnez  $v1, .L800A9A74_ovl1
/* 051CA0 800A9A50 00032080 */   sll   $a0, $v1, 2
/* 051CA4 800A9A54 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 051CA8 800A9A58 3C01800E */  lui   $at, 0x800e
/* 051CAC 800A9A5C 240FFFFF */  li    $t7, -1
/* 051CB0 800A9A60 8F190000 */  lw    $t9, ($t8)
/* 051CB4 800A9A64 00194080 */  sll   $t0, $t9, 2
/* 051CB8 800A9A68 00280821 */  addu  $at, $at, $t0
/* 051CBC 800A9A6C 1000000A */  b     .L800A9A98_ovl1
/* 051CC0 800A9A70 AC2FFBD0 */   sw    $t7, -0x430($at)
.L800A9A74_ovl1:
/* 051CC4 800A9A74 0C02A0D6 */  jal   func_800A8358
/* 051CC8 800A9A78 34840001 */   ori   $a0, $a0, 1
/* 051CCC 800A9A7C 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 051CD0 800A9A80 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 051CD4 800A9A84 3C01800E */  lui   $at, 0x800e
/* 051CD8 800A9A88 8D2A0000 */  lw    $t2, ($t1)
/* 051CDC 800A9A8C 000A5880 */  sll   $t3, $t2, 2
/* 051CE0 800A9A90 002B0821 */  addu  $at, $at, $t3
/* 051CE4 800A9A94 AC22FBD0 */  sw    $v0, -0x430($at)
.L800A9A98_ovl1:
/* 051CE8 800A9A98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 051CEC 800A9A9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 051CF0 800A9AA0 03E00008 */  jr    $ra
/* 051CF4 800A9AA4 00000000 */   nop   
.type func_800A9A2C, @function
.size func_800A9A2C, . - func_800A9A2C
